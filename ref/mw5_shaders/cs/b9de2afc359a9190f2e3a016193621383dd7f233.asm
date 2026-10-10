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
; shader hash: a5e51a2c50a91544e4b73147a0d648c5
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
;                                   texture     u32          2d      T3             t8     1
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
;                                   texture     f32          2d     T23             t4     1
;                                       UAV     f32          2d      U0             u0     1
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
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2D<vector<float, 3> >" = type { <3 x float> }
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %56 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.i32 %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59, !dx.controlflow.hints !48

; <label>:59                                      ; preds = %0
  %60 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %61 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %62 = shl i32 %36, 2
  %63 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.i32 %63, 0
  %65 = and i32 %64, 65535
  %66 = lshr i32 %64, 16
  %67 = shl nuw nsw i32 %65, 4
  %68 = shl nuw nsw i32 %66, 4
  %69 = or i32 %67, %61
  %70 = or i32 %68, %60
  br label %71

; <label>:71                                      ; preds = %59, %0
  %72 = phi i32 [ %65, %59 ], [ %36, %0 ]
  %73 = phi i32 [ %66, %59 ], [ %37, %0 ]
  %74 = phi i32 [ %69, %59 ], [ 0, %0 ]
  %75 = phi i32 [ %70, %59 ], [ 0, %0 ]
  %76 = uitofp i32 %74 to float
  %77 = uitofp i32 %75 to float
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 3
  %81 = fmul fast float %79, %76
  %82 = fmul fast float %80, %77
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %74, i32 %75, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = fcmp fast olt float %84, -1.000000e+00
  %86 = fcmp fast ogt float %84, -1.000000e+00
  %87 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.f32 %87, 1
  %89 = select i1 %86, float %88, float 1.000000e+00
  %90 = fadd fast float %84, 1.000000e+00
  %91 = fmul fast float %89, %90
  %92 = call float @dx.op.unary.f32(i32 6, float %91)  ; FAbs(value)
  %93 = extractvalue %dx.types.CBufRet.f32 %87, 3
  %94 = fcmp fast ult float %92, %93
  br i1 %94, label %96, label %95, !dx.controlflow.hints !49

; <label>:95                                      ; preds = %71
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %74, i32 %75, i32 undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5739

; <label>:96                                      ; preds = %71
  %97 = fmul fast float %81, 2.000000e+00
  %98 = fmul fast float %82, 2.000000e+00
  %99 = fsub fast float 1.000000e+00, %97
  %100 = fsub fast float 1.000000e+00, %98
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = select i1 %85, float %102, float %106
  %110 = select i1 %85, float %103, float %107
  %111 = select i1 %85, float %104, float %108
  %112 = fmul fast float %109, %99
  %113 = fmul fast float %110, %99
  %114 = fmul fast float %111, %99
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 1
  %118 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = select i1 %85, float %116, float %120
  %124 = select i1 %85, float %117, float %121
  %125 = select i1 %85, float %118, float %122
  %126 = fmul fast float %123, %100
  %127 = fmul fast float %124, %100
  %128 = fmul fast float %125, %100
  %129 = fadd fast float %126, %112
  %130 = fadd fast float %127, %113
  %131 = fadd fast float %128, %114
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = select i1 %85, float %133, float %137
  %141 = select i1 %85, float %134, float %138
  %142 = select i1 %85, float %135, float %139
  %143 = fadd fast float %129, %140
  %144 = fadd fast float %130, %141
  %145 = fadd fast float %131, %142
  %146 = fmul fast float %143, %92
  %147 = fmul fast float %144, %92
  %148 = fmul fast float %145, %92
  %149 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %74, i32 %75, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 8
  %152 = and i32 %150, 255
  %153 = and i32 %151, 255
  %154 = uitofp i32 %152 to float
  %155 = uitofp i32 %153 to float
  %156 = fmul fast float %154, 0x3F80101020000000
  %157 = fmul fast float %155, 0x3F80101020000000
  %158 = fadd fast float %156, -1.000000e+00
  %159 = fadd fast float %157, -1.000000e+00
  %160 = call float @dx.op.unary.f32(i32 6, float %158)  ; FAbs(value)
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %163 = fsub fast float %161, %162
  %164 = fsub fast float -0.000000e+00, %163
  %165 = call float @dx.op.binary.f32(i32 35, float %164, float 0.000000e+00)  ; FMax(a,b)
  %166 = fcmp fast ogt float %158, 0.000000e+00
  %167 = fsub fast float -0.000000e+00, %165
  %168 = select i1 %166, float %167, float %165
  %169 = fadd fast float %168, %158
  %170 = fcmp fast ogt float %159, 0.000000e+00
  %171 = select i1 %170, float %167, float %165
  %172 = fadd fast float %171, %159
  %173 = call float @dx.op.dot3.f32(i32 55, float %169, float %172, float %163, float %169, float %172, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %174 = call float @dx.op.unary.f32(i32 25, float %173)  ; Rsqrt(value)
  %175 = fmul fast float %169, %174
  %176 = fmul fast float %172, %174
  %177 = fmul fast float %174, %163
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %182 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float %175, float %176, float %177)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %184 = fsub fast float 1.000000e+00, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %187 = fsub fast float -0.000000e+00, %182
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %186, %188
  %190 = fsub fast float %184, %189
  %191 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %192 = fmul fast float %190, %191
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 0
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %197 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = extractvalue %dx.types.CBufRet.f32 %198, 1
  %201 = extractvalue %dx.types.CBufRet.f32 %198, 2
  %202 = extractvalue %dx.types.CBufRet.f32 %198, 3
  %203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.f32 %203, 0
  %205 = extractvalue %dx.types.CBufRet.f32 %203, 1
  %206 = extractvalue %dx.types.CBufRet.f32 %203, 2
  %207 = extractvalue %dx.types.CBufRet.f32 %203, 3
  %208 = fmul fast float %194, %146
  %209 = call float @dx.op.tertiary.f32(i32 46, float %147, float %195, float %208)  ; FMad(a,b,c)
  %210 = call float @dx.op.tertiary.f32(i32 46, float %148, float %196, float %209)  ; FMad(a,b,c)
  %211 = fadd fast float %210, %197
  %212 = fmul fast float %199, %146
  %213 = call float @dx.op.tertiary.f32(i32 46, float %147, float %200, float %212)  ; FMad(a,b,c)
  %214 = call float @dx.op.tertiary.f32(i32 46, float %148, float %201, float %213)  ; FMad(a,b,c)
  %215 = fadd fast float %214, %202
  %216 = fmul fast float %204, %146
  %217 = call float @dx.op.tertiary.f32(i32 46, float %147, float %205, float %216)  ; FMad(a,b,c)
  %218 = call float @dx.op.tertiary.f32(i32 46, float %148, float %206, float %217)  ; FMad(a,b,c)
  %219 = fadd fast float %218, %207
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = fmul fast float %221, 0x3FE3C6EF40000000
  %223 = frem fast float %76, 2.560000e+02
  %224 = frem fast float %77, 2.560000e+02
  %225 = fptoui float %223 to i32
  %226 = fptoui float %224 to i32
  %227 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 2
  %229 = fadd fast float %228, %222
  %230 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %233 = fcmp fast une float %232, 0.000000e+00
  br i1 %233, label %234, label %3097, !dx.controlflow.hints !50

; <label>:234                                     ; preds = %96
  %235 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %236 = fptoui float %235 to i32
  %237 = add i32 %236, 15
  %238 = lshr i32 %237, 4
  %239 = mul i32 %238, %73
  %240 = add i32 %239, %72
  %241 = shl i32 %240, 3
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = lshr i32 %243, 28
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %421, !dx.controlflow.hints !51

; <label>:246                                     ; preds = %234
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = fmul fast float %248, %192
  %252 = fadd fast float %250, %219
  %253 = fadd fast float %252, %251
  %254 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %257 = fmul fast float %256, %211
  %258 = fmul fast float %256, %215
  %259 = fadd fast float %257, %254
  %260 = fadd fast float %258, %255
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = call float @dx.op.binary.f32(i32 35, float %253, float 0.000000e+00)  ; FMax(a,b)
  %267 = fadd fast float %266, 0x3F10000000000000
  %268 = fcmp fast oeq float %265, 0.000000e+00
  br i1 %268, label %269, label %336, !dx.controlflow.hints !52

; <label>:269                                     ; preds = %246
  %270 = extractvalue %dx.types.CBufRet.f32 %261, 1
  %271 = extractvalue %dx.types.CBufRet.f32 %261, 0
  %272 = fmul fast float %259, %271
  %273 = fmul fast float %260, %270
  %274 = fadd fast float %272, 5.000000e-01
  %275 = call float @dx.op.unary.f32(i32 27, float %274)  ; Round_ni(value)
  %276 = fadd fast float %273, 5.000000e-01
  %277 = call float @dx.op.unary.f32(i32 27, float %276)  ; Round_ni(value)
  %278 = fsub fast float %274, %275
  %279 = fsub fast float %276, %277
  %280 = fadd fast float %275, -5.000000e-01
  %281 = fadd fast float %277, -5.000000e-01
  %282 = fmul fast float %278, 2.000000e+00
  %283 = fsub fast float 3.000000e+00, %282
  %284 = fadd fast float %282, 1.000000e+00
  %285 = fsub fast float 2.000000e+00, %278
  %286 = bitcast float %283 to i32
  %287 = sub nsw i32 2129859010, %286
  %288 = bitcast i32 %287 to float
  %289 = fmul fast float %288, %285
  %290 = fadd fast float %289, -1.000000e+00
  %291 = bitcast float %284 to i32
  %292 = sub nsw i32 2129859010, %291
  %293 = bitcast i32 %292 to float
  %294 = fmul fast float %293, %278
  %295 = fadd fast float %294, 1.000000e+00
  %296 = fmul fast float %279, 2.000000e+00
  %297 = fsub fast float 3.000000e+00, %296
  %298 = fadd fast float %296, 1.000000e+00
  %299 = fsub fast float 2.000000e+00, %279
  %300 = bitcast float %297 to i32
  %301 = sub nsw i32 2129859010, %300
  %302 = bitcast i32 %301 to float
  %303 = fmul fast float %302, %299
  %304 = fadd fast float %303, -1.000000e+00
  %305 = bitcast float %298 to i32
  %306 = sub nsw i32 2129859010, %305
  %307 = bitcast i32 %306 to float
  %308 = fmul fast float %307, %279
  %309 = fadd fast float %308, 1.000000e+00
  %310 = fadd fast float %290, %280
  %311 = fmul fast float %310, %262
  %312 = fadd fast float %304, %281
  %313 = fmul fast float %312, %263
  %314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %311, float %313, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = fmul fast float %315, %283
  %317 = fadd fast float %295, %280
  %318 = fmul fast float %317, %262
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %318, float %313, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fmul fast float %320, %284
  %322 = fadd fast float %309, %281
  %323 = fmul fast float %322, %263
  %324 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %311, float %323, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = fmul fast float %325, %283
  %327 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %318, float %323, float undef, float undef, i32 0, i32 0, i32 undef, float %267)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = fmul fast float %328, %284
  %330 = fadd fast float %329, %326
  %331 = fmul fast float %330, %298
  %332 = fadd fast float %321, %316
  %333 = fmul fast float %332, %297
  %334 = fadd fast float %333, %331
  %335 = fmul fast float %334, 6.250000e-02
  br label %4568

; <label>:336                                     ; preds = %246
  %337 = fmul fast float %230, 0x401921FB60000000
  %338 = call float @dx.op.unary.f32(i32 13, float %337)  ; Sin(value)
  %339 = call float @dx.op.unary.f32(i32 12, float %337)  ; Cos(value)
  %340 = fsub fast float -0.000000e+00, %338
  br label %341

; <label>:341                                     ; preds = %390, %336
  %342 = phi float [ 0.000000e+00, %336 ], [ %385, %390 ]
  %343 = phi float [ 0.000000e+00, %336 ], [ %387, %390 ]
  %344 = phi i32 [ 0, %336 ], [ %391, %390 ]
  %345 = mul i32 %344, 2
  %346 = add i32 0, %345
  %347 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %346
  %348 = load float, float* %347, align 4
  %349 = mul i32 %344, 2
  %350 = add i32 1, %349
  %351 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %350
  %352 = load float, float* %351, align 4
  %353 = fmul fast float %348, %339
  %354 = call float @dx.op.tertiary.f32(i32 46, float %352, float %340, float %353)  ; FMad(a,b,c)
  %355 = fmul fast float %348, %338
  %356 = call float @dx.op.tertiary.f32(i32 46, float %352, float %339, float %355)  ; FMad(a,b,c)
  %357 = fmul fast float %354, %265
  %358 = fmul fast float %356, %265
  %359 = fadd fast float %357, %259
  %360 = fadd fast float %358, %260
  %361 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %29, float %359, float %360, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %362, float* %366, align 4
  %367 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %363, float* %367, align 4
  %368 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %364, float* %368, align 4
  %369 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %365, float* %369, align 4
  %370 = fsub fast float %362, %267
  %371 = fcmp fast olt float %370, 0.000000e+00
  %372 = select i1 %371, float 0.000000e+00, float 1.000000e+00
  %373 = fadd fast float %372, %342
  %374 = fmul fast float %372, %370
  %375 = fadd fast float %374, %343
  br label %376

; <label>:376                                     ; preds = %376, %341
  %377 = phi i32 [ 1, %341 ], [ %388, %376 ]
  %378 = phi float [ %375, %341 ], [ %387, %376 ]
  %379 = phi float [ %373, %341 ], [ %385, %376 ]
  %380 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %377
  %381 = load float, float* %380, align 4, !tbaa !53
  %382 = fsub fast float %381, %267
  %383 = fcmp fast olt float %382, 0.000000e+00
  %384 = select i1 %383, float 0.000000e+00, float 1.000000e+00
  %385 = fadd fast float %384, %379
  %386 = fmul fast float %384, %382
  %387 = fadd fast float %386, %378
  %388 = add nuw nsw i32 %377, 1
  %389 = icmp eq i32 %388, 4
  br i1 %389, label %390, label %376, !llvm.loop !57

; <label>:390                                     ; preds = %376
  %391 = add nuw nsw i32 %344, 1
  %392 = icmp eq i32 %391, 8
  br i1 %392, label %393, label %341, !llvm.loop !59

; <label>:393                                     ; preds = %390
  %394 = fdiv fast float 1.000000e+00, %385
  %395 = fmul fast float %394, %387
  %396 = fdiv fast float 1.000000e+00, %267
  %397 = fmul fast float %395, %396
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = call float @dx.op.binary.f32(i32 35, float %398, float 0.000000e+00)  ; FMax(a,b)
  %400 = fmul fast float %385, 3.125000e-02
  %401 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %402 = fmul fast float %401, 2.000000e+00
  %403 = fadd fast float %402, -1.000000e+00
  %404 = fcmp fast ogt float %403, 0.000000e+00
  %405 = fcmp fast olt float %403, 0.000000e+00
  %406 = zext i1 %404 to i32
  %407 = zext i1 %405 to i32
  %408 = sub nsw i32 %406, %407
  %409 = sitofp i32 %408 to float
  %410 = fmul fast float %409, %403
  %411 = fsub fast float 1.000000e+00, %410
  %412 = fmul fast float %411, %411
  %413 = fmul fast float %412, %411
  %414 = fsub fast float %411, %413
  %415 = fmul fast float %414, %399
  %416 = fsub fast float 1.000000e+00, %413
  %417 = fsub fast float %416, %415
  %418 = fmul fast float %409, 5.000000e-01
  %419 = fmul fast float %418, %417
  %420 = fsub fast float 5.000000e-01, %419
  br label %4568

; <label>:421                                     ; preds = %234
  %422 = icmp eq i32 %244, 1
  br i1 %422, label %423, label %598, !dx.controlflow.hints !60

; <label>:423                                     ; preds = %421
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %428 = fmul fast float %425, %192
  %429 = fadd fast float %427, %219
  %430 = fadd fast float %429, %428
  %431 = extractvalue %dx.types.CBufRet.f32 %424, 0
  %432 = extractvalue %dx.types.CBufRet.f32 %424, 1
  %433 = extractvalue %dx.types.CBufRet.f32 %424, 3
  %434 = fmul fast float %433, %211
  %435 = fmul fast float %433, %215
  %436 = fadd fast float %434, %431
  %437 = fadd fast float %435, %432
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 3
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 1
  %443 = call float @dx.op.binary.f32(i32 35, float %430, float 0.000000e+00)  ; FMax(a,b)
  %444 = fadd fast float %443, 0x3F10000000000000
  %445 = fcmp fast oeq float %442, 0.000000e+00
  br i1 %445, label %446, label %513, !dx.controlflow.hints !52

; <label>:446                                     ; preds = %423
  %447 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %448 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %449 = fmul fast float %436, %448
  %450 = fmul fast float %437, %447
  %451 = fadd fast float %449, 5.000000e-01
  %452 = call float @dx.op.unary.f32(i32 27, float %451)  ; Round_ni(value)
  %453 = fadd fast float %450, 5.000000e-01
  %454 = call float @dx.op.unary.f32(i32 27, float %453)  ; Round_ni(value)
  %455 = fsub fast float %451, %452
  %456 = fsub fast float %453, %454
  %457 = fadd fast float %452, -5.000000e-01
  %458 = fadd fast float %454, -5.000000e-01
  %459 = fmul fast float %455, 2.000000e+00
  %460 = fsub fast float 3.000000e+00, %459
  %461 = fadd fast float %459, 1.000000e+00
  %462 = fsub fast float 2.000000e+00, %455
  %463 = bitcast float %460 to i32
  %464 = sub nsw i32 2129859010, %463
  %465 = bitcast i32 %464 to float
  %466 = fmul fast float %465, %462
  %467 = fadd fast float %466, -1.000000e+00
  %468 = bitcast float %461 to i32
  %469 = sub nsw i32 2129859010, %468
  %470 = bitcast i32 %469 to float
  %471 = fmul fast float %470, %455
  %472 = fadd fast float %471, 1.000000e+00
  %473 = fmul fast float %456, 2.000000e+00
  %474 = fsub fast float 3.000000e+00, %473
  %475 = fadd fast float %473, 1.000000e+00
  %476 = fsub fast float 2.000000e+00, %456
  %477 = bitcast float %474 to i32
  %478 = sub nsw i32 2129859010, %477
  %479 = bitcast i32 %478 to float
  %480 = fmul fast float %479, %476
  %481 = fadd fast float %480, -1.000000e+00
  %482 = bitcast float %475 to i32
  %483 = sub nsw i32 2129859010, %482
  %484 = bitcast i32 %483 to float
  %485 = fmul fast float %484, %456
  %486 = fadd fast float %485, 1.000000e+00
  %487 = fadd fast float %467, %457
  %488 = fmul fast float %487, %439
  %489 = fadd fast float %481, %458
  %490 = fmul fast float %489, %440
  %491 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %488, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = fmul fast float %492, %460
  %494 = fadd fast float %472, %457
  %495 = fmul fast float %494, %439
  %496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %495, float %490, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = fmul fast float %497, %461
  %499 = fadd fast float %486, %458
  %500 = fmul fast float %499, %440
  %501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %488, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = fmul fast float %502, %460
  %504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %495, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float %444)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = fmul fast float %505, %461
  %507 = fadd fast float %506, %503
  %508 = fmul fast float %507, %475
  %509 = fadd fast float %498, %493
  %510 = fmul fast float %509, %474
  %511 = fadd fast float %510, %508
  %512 = fmul fast float %511, 6.250000e-02
  br label %4568

; <label>:513                                     ; preds = %423
  %514 = fmul fast float %230, 0x401921FB60000000
  %515 = call float @dx.op.unary.f32(i32 13, float %514)  ; Sin(value)
  %516 = call float @dx.op.unary.f32(i32 12, float %514)  ; Cos(value)
  %517 = fsub fast float -0.000000e+00, %515
  br label %518

; <label>:518                                     ; preds = %567, %513
  %519 = phi float [ 0.000000e+00, %513 ], [ %562, %567 ]
  %520 = phi float [ 0.000000e+00, %513 ], [ %564, %567 ]
  %521 = phi i32 [ 0, %513 ], [ %568, %567 ]
  %522 = mul i32 %521, 2
  %523 = add i32 0, %522
  %524 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %523
  %525 = load float, float* %524, align 4
  %526 = mul i32 %521, 2
  %527 = add i32 1, %526
  %528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = fmul fast float %525, %516
  %531 = call float @dx.op.tertiary.f32(i32 46, float %529, float %517, float %530)  ; FMad(a,b,c)
  %532 = fmul fast float %525, %515
  %533 = call float @dx.op.tertiary.f32(i32 46, float %529, float %516, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %531, %442
  %535 = fmul fast float %533, %442
  %536 = fadd fast float %534, %436
  %537 = fadd fast float %535, %437
  %538 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %29, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = extractvalue %dx.types.ResRet.f32 %538, 3
  %543 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %539, float* %543, align 4
  %544 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %540, float* %544, align 4
  %545 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %541, float* %545, align 4
  %546 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %542, float* %546, align 4
  %547 = fsub fast float %539, %444
  %548 = fcmp fast olt float %547, 0.000000e+00
  %549 = select i1 %548, float 0.000000e+00, float 1.000000e+00
  %550 = fadd fast float %549, %519
  %551 = fmul fast float %549, %547
  %552 = fadd fast float %551, %520
  br label %553

; <label>:553                                     ; preds = %553, %518
  %554 = phi i32 [ 1, %518 ], [ %565, %553 ]
  %555 = phi float [ %552, %518 ], [ %564, %553 ]
  %556 = phi float [ %550, %518 ], [ %562, %553 ]
  %557 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %554
  %558 = load float, float* %557, align 4, !tbaa !53
  %559 = fsub fast float %558, %444
  %560 = fcmp fast olt float %559, 0.000000e+00
  %561 = select i1 %560, float 0.000000e+00, float 1.000000e+00
  %562 = fadd fast float %561, %556
  %563 = fmul fast float %561, %559
  %564 = fadd fast float %563, %555
  %565 = add nuw nsw i32 %554, 1
  %566 = icmp eq i32 %565, 4
  br i1 %566, label %567, label %553, !llvm.loop !57

; <label>:567                                     ; preds = %553
  %568 = add nuw nsw i32 %521, 1
  %569 = icmp eq i32 %568, 8
  br i1 %569, label %570, label %518, !llvm.loop !59

; <label>:570                                     ; preds = %567
  %571 = fdiv fast float 1.000000e+00, %562
  %572 = fmul fast float %571, %564
  %573 = fdiv fast float 1.000000e+00, %444
  %574 = fmul fast float %572, %573
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = call float @dx.op.binary.f32(i32 35, float %575, float 0.000000e+00)  ; FMax(a,b)
  %577 = fmul fast float %562, 3.125000e-02
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fmul fast float %578, 2.000000e+00
  %580 = fadd fast float %579, -1.000000e+00
  %581 = fcmp fast ogt float %580, 0.000000e+00
  %582 = fcmp fast olt float %580, 0.000000e+00
  %583 = zext i1 %581 to i32
  %584 = zext i1 %582 to i32
  %585 = sub nsw i32 %583, %584
  %586 = sitofp i32 %585 to float
  %587 = fmul fast float %586, %580
  %588 = fsub fast float 1.000000e+00, %587
  %589 = fmul fast float %588, %588
  %590 = fmul fast float %589, %588
  %591 = fsub fast float %588, %590
  %592 = fmul fast float %591, %576
  %593 = fsub fast float 1.000000e+00, %590
  %594 = fsub fast float %593, %592
  %595 = fmul fast float %586, 5.000000e-01
  %596 = fmul fast float %595, %594
  %597 = fsub fast float 5.000000e-01, %596
  br label %4568

; <label>:598                                     ; preds = %421
  %599 = icmp eq i32 %244, 2
  br i1 %599, label %600, label %775, !dx.controlflow.hints !61

; <label>:600                                     ; preds = %598
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %605 = fmul fast float %602, %192
  %606 = fadd fast float %604, %219
  %607 = fadd fast float %606, %605
  %608 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %610 = extractvalue %dx.types.CBufRet.f32 %601, 3
  %611 = fmul fast float %610, %211
  %612 = fmul fast float %610, %215
  %613 = fadd fast float %611, %608
  %614 = fadd fast float %612, %609
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %615, 3
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %620 = call float @dx.op.binary.f32(i32 35, float %607, float 0.000000e+00)  ; FMax(a,b)
  %621 = fadd fast float %620, 0x3F10000000000000
  %622 = fcmp fast oeq float %619, 0.000000e+00
  br i1 %622, label %623, label %690, !dx.controlflow.hints !52

; <label>:623                                     ; preds = %600
  %624 = extractvalue %dx.types.CBufRet.f32 %615, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %626 = fmul fast float %613, %625
  %627 = fmul fast float %614, %624
  %628 = fadd fast float %626, 5.000000e-01
  %629 = call float @dx.op.unary.f32(i32 27, float %628)  ; Round_ni(value)
  %630 = fadd fast float %627, 5.000000e-01
  %631 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %632 = fsub fast float %628, %629
  %633 = fsub fast float %630, %631
  %634 = fadd fast float %629, -5.000000e-01
  %635 = fadd fast float %631, -5.000000e-01
  %636 = fmul fast float %632, 2.000000e+00
  %637 = fsub fast float 3.000000e+00, %636
  %638 = fadd fast float %636, 1.000000e+00
  %639 = fsub fast float 2.000000e+00, %632
  %640 = bitcast float %637 to i32
  %641 = sub nsw i32 2129859010, %640
  %642 = bitcast i32 %641 to float
  %643 = fmul fast float %642, %639
  %644 = fadd fast float %643, -1.000000e+00
  %645 = bitcast float %638 to i32
  %646 = sub nsw i32 2129859010, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %647, %632
  %649 = fadd fast float %648, 1.000000e+00
  %650 = fmul fast float %633, 2.000000e+00
  %651 = fsub fast float 3.000000e+00, %650
  %652 = fadd fast float %650, 1.000000e+00
  %653 = fsub fast float 2.000000e+00, %633
  %654 = bitcast float %651 to i32
  %655 = sub nsw i32 2129859010, %654
  %656 = bitcast i32 %655 to float
  %657 = fmul fast float %656, %653
  %658 = fadd fast float %657, -1.000000e+00
  %659 = bitcast float %652 to i32
  %660 = sub nsw i32 2129859010, %659
  %661 = bitcast i32 %660 to float
  %662 = fmul fast float %661, %633
  %663 = fadd fast float %662, 1.000000e+00
  %664 = fadd fast float %644, %634
  %665 = fmul fast float %664, %616
  %666 = fadd fast float %658, %635
  %667 = fmul fast float %666, %617
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %665, float %667, float undef, float undef, i32 0, i32 0, i32 undef, float %621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  %670 = fmul fast float %669, %637
  %671 = fadd fast float %649, %634
  %672 = fmul fast float %671, %616
  %673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %672, float %667, float undef, float undef, i32 0, i32 0, i32 undef, float %621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = fmul fast float %674, %638
  %676 = fadd fast float %663, %635
  %677 = fmul fast float %676, %617
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %665, float %677, float undef, float undef, i32 0, i32 0, i32 undef, float %621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = fmul fast float %679, %637
  %681 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %672, float %677, float undef, float undef, i32 0, i32 0, i32 undef, float %621)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = fmul fast float %682, %638
  %684 = fadd fast float %683, %680
  %685 = fmul fast float %684, %652
  %686 = fadd fast float %675, %670
  %687 = fmul fast float %686, %651
  %688 = fadd fast float %687, %685
  %689 = fmul fast float %688, 6.250000e-02
  br label %4568

; <label>:690                                     ; preds = %600
  %691 = fmul fast float %230, 0x401921FB60000000
  %692 = call float @dx.op.unary.f32(i32 13, float %691)  ; Sin(value)
  %693 = call float @dx.op.unary.f32(i32 12, float %691)  ; Cos(value)
  %694 = fsub fast float -0.000000e+00, %692
  br label %695

; <label>:695                                     ; preds = %744, %690
  %696 = phi float [ 0.000000e+00, %690 ], [ %739, %744 ]
  %697 = phi float [ 0.000000e+00, %690 ], [ %741, %744 ]
  %698 = phi i32 [ 0, %690 ], [ %745, %744 ]
  %699 = mul i32 %698, 2
  %700 = add i32 0, %699
  %701 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %700
  %702 = load float, float* %701, align 4
  %703 = mul i32 %698, 2
  %704 = add i32 1, %703
  %705 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %704
  %706 = load float, float* %705, align 4
  %707 = fmul fast float %702, %693
  %708 = call float @dx.op.tertiary.f32(i32 46, float %706, float %694, float %707)  ; FMad(a,b,c)
  %709 = fmul fast float %702, %692
  %710 = call float @dx.op.tertiary.f32(i32 46, float %706, float %693, float %709)  ; FMad(a,b,c)
  %711 = fmul fast float %708, %619
  %712 = fmul fast float %710, %619
  %713 = fadd fast float %711, %613
  %714 = fadd fast float %712, %614
  %715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %29, float %713, float %714, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = extractvalue %dx.types.ResRet.f32 %715, 3
  %720 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %716, float* %720, align 4
  %721 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %717, float* %721, align 4
  %722 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %718, float* %722, align 4
  %723 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %719, float* %723, align 4
  %724 = fsub fast float %716, %621
  %725 = fcmp fast olt float %724, 0.000000e+00
  %726 = select i1 %725, float 0.000000e+00, float 1.000000e+00
  %727 = fadd fast float %726, %696
  %728 = fmul fast float %726, %724
  %729 = fadd fast float %728, %697
  br label %730

; <label>:730                                     ; preds = %730, %695
  %731 = phi i32 [ 1, %695 ], [ %742, %730 ]
  %732 = phi float [ %729, %695 ], [ %741, %730 ]
  %733 = phi float [ %727, %695 ], [ %739, %730 ]
  %734 = getelementptr [4 x float], [4 x float]* %53, i32 0, i32 %731
  %735 = load float, float* %734, align 4, !tbaa !53
  %736 = fsub fast float %735, %621
  %737 = fcmp fast olt float %736, 0.000000e+00
  %738 = select i1 %737, float 0.000000e+00, float 1.000000e+00
  %739 = fadd fast float %738, %733
  %740 = fmul fast float %738, %736
  %741 = fadd fast float %740, %732
  %742 = add nuw nsw i32 %731, 1
  %743 = icmp eq i32 %742, 4
  br i1 %743, label %744, label %730, !llvm.loop !57

; <label>:744                                     ; preds = %730
  %745 = add nuw nsw i32 %698, 1
  %746 = icmp eq i32 %745, 8
  br i1 %746, label %747, label %695, !llvm.loop !59

; <label>:747                                     ; preds = %744
  %748 = fdiv fast float 1.000000e+00, %739
  %749 = fmul fast float %748, %741
  %750 = fdiv fast float 1.000000e+00, %621
  %751 = fmul fast float %749, %750
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %753 = call float @dx.op.binary.f32(i32 35, float %752, float 0.000000e+00)  ; FMax(a,b)
  %754 = fmul fast float %739, 3.125000e-02
  %755 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %756 = fmul fast float %755, 2.000000e+00
  %757 = fadd fast float %756, -1.000000e+00
  %758 = fcmp fast ogt float %757, 0.000000e+00
  %759 = fcmp fast olt float %757, 0.000000e+00
  %760 = zext i1 %758 to i32
  %761 = zext i1 %759 to i32
  %762 = sub nsw i32 %760, %761
  %763 = sitofp i32 %762 to float
  %764 = fmul fast float %763, %757
  %765 = fsub fast float 1.000000e+00, %764
  %766 = fmul fast float %765, %765
  %767 = fmul fast float %766, %765
  %768 = fsub fast float %765, %767
  %769 = fmul fast float %768, %753
  %770 = fsub fast float 1.000000e+00, %767
  %771 = fsub fast float %770, %769
  %772 = fmul fast float %763, 5.000000e-01
  %773 = fmul fast float %772, %771
  %774 = fsub fast float 5.000000e-01, %773
  br label %4568

; <label>:775                                     ; preds = %598
  %776 = icmp eq i32 %244, 12
  br i1 %776, label %777, label %952, !dx.controlflow.hints !62

; <label>:777                                     ; preds = %775
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %782 = fmul fast float %779, %192
  %783 = fadd fast float %781, %219
  %784 = fadd fast float %783, %782
  %785 = extractvalue %dx.types.CBufRet.f32 %778, 0
  %786 = extractvalue %dx.types.CBufRet.f32 %778, 1
  %787 = extractvalue %dx.types.CBufRet.f32 %778, 3
  %788 = fmul fast float %787, %211
  %789 = fmul fast float %787, %215
  %790 = fadd fast float %788, %785
  %791 = fadd fast float %789, %786
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %792, 3
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = call float @dx.op.binary.f32(i32 35, float %784, float 0.000000e+00)  ; FMax(a,b)
  %798 = fadd fast float %797, 0x3F10000000000000
  %799 = fcmp fast oeq float %796, 0.000000e+00
  br i1 %799, label %800, label %867, !dx.controlflow.hints !52

; <label>:800                                     ; preds = %777
  %801 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %802 = extractvalue %dx.types.CBufRet.f32 %792, 0
  %803 = fmul fast float %790, %802
  %804 = fmul fast float %791, %801
  %805 = fadd fast float %803, 5.000000e-01
  %806 = call float @dx.op.unary.f32(i32 27, float %805)  ; Round_ni(value)
  %807 = fadd fast float %804, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 27, float %807)  ; Round_ni(value)
  %809 = fsub fast float %805, %806
  %810 = fsub fast float %807, %808
  %811 = fadd fast float %806, -5.000000e-01
  %812 = fadd fast float %808, -5.000000e-01
  %813 = fmul fast float %809, 2.000000e+00
  %814 = fsub fast float 3.000000e+00, %813
  %815 = fadd fast float %813, 1.000000e+00
  %816 = fsub fast float 2.000000e+00, %809
  %817 = bitcast float %814 to i32
  %818 = sub nsw i32 2129859010, %817
  %819 = bitcast i32 %818 to float
  %820 = fmul fast float %819, %816
  %821 = fadd fast float %820, -1.000000e+00
  %822 = bitcast float %815 to i32
  %823 = sub nsw i32 2129859010, %822
  %824 = bitcast i32 %823 to float
  %825 = fmul fast float %824, %809
  %826 = fadd fast float %825, 1.000000e+00
  %827 = fmul fast float %810, 2.000000e+00
  %828 = fsub fast float 3.000000e+00, %827
  %829 = fadd fast float %827, 1.000000e+00
  %830 = fsub fast float 2.000000e+00, %810
  %831 = bitcast float %828 to i32
  %832 = sub nsw i32 2129859010, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %833, %830
  %835 = fadd fast float %834, -1.000000e+00
  %836 = bitcast float %829 to i32
  %837 = sub nsw i32 2129859010, %836
  %838 = bitcast i32 %837 to float
  %839 = fmul fast float %838, %810
  %840 = fadd fast float %839, 1.000000e+00
  %841 = fadd fast float %821, %811
  %842 = fmul fast float %841, %793
  %843 = fadd fast float %835, %812
  %844 = fmul fast float %843, %794
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %842, float %844, float undef, float undef, i32 0, i32 0, i32 undef, float %798)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = fmul fast float %846, %814
  %848 = fadd fast float %826, %811
  %849 = fmul fast float %848, %793
  %850 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %849, float %844, float undef, float undef, i32 0, i32 0, i32 undef, float %798)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = fmul fast float %851, %815
  %853 = fadd fast float %840, %812
  %854 = fmul fast float %853, %794
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %842, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float %798)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = fmul fast float %856, %814
  %858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %849, float %854, float undef, float undef, i32 0, i32 0, i32 undef, float %798)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = fmul fast float %859, %815
  %861 = fadd fast float %860, %857
  %862 = fmul fast float %861, %829
  %863 = fadd fast float %852, %847
  %864 = fmul fast float %863, %828
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, 6.250000e-02
  br label %4568

; <label>:867                                     ; preds = %777
  %868 = fmul fast float %230, 0x401921FB60000000
  %869 = call float @dx.op.unary.f32(i32 13, float %868)  ; Sin(value)
  %870 = call float @dx.op.unary.f32(i32 12, float %868)  ; Cos(value)
  %871 = fsub fast float -0.000000e+00, %869
  br label %872

; <label>:872                                     ; preds = %921, %867
  %873 = phi float [ 0.000000e+00, %867 ], [ %916, %921 ]
  %874 = phi float [ 0.000000e+00, %867 ], [ %918, %921 ]
  %875 = phi i32 [ 0, %867 ], [ %922, %921 ]
  %876 = mul i32 %875, 2
  %877 = add i32 0, %876
  %878 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %877
  %879 = load float, float* %878, align 4
  %880 = mul i32 %875, 2
  %881 = add i32 1, %880
  %882 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %881
  %883 = load float, float* %882, align 4
  %884 = fmul fast float %879, %870
  %885 = call float @dx.op.tertiary.f32(i32 46, float %883, float %871, float %884)  ; FMad(a,b,c)
  %886 = fmul fast float %879, %869
  %887 = call float @dx.op.tertiary.f32(i32 46, float %883, float %870, float %886)  ; FMad(a,b,c)
  %888 = fmul fast float %885, %796
  %889 = fmul fast float %887, %796
  %890 = fadd fast float %888, %790
  %891 = fadd fast float %889, %791
  %892 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %29, float %890, float %891, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = extractvalue %dx.types.ResRet.f32 %892, 3
  %897 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %893, float* %897, align 4
  %898 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %894, float* %898, align 4
  %899 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %895, float* %899, align 4
  %900 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %896, float* %900, align 4
  %901 = fsub fast float %893, %798
  %902 = fcmp fast olt float %901, 0.000000e+00
  %903 = select i1 %902, float 0.000000e+00, float 1.000000e+00
  %904 = fadd fast float %903, %873
  %905 = fmul fast float %903, %901
  %906 = fadd fast float %905, %874
  br label %907

; <label>:907                                     ; preds = %907, %872
  %908 = phi i32 [ 1, %872 ], [ %919, %907 ]
  %909 = phi float [ %906, %872 ], [ %918, %907 ]
  %910 = phi float [ %904, %872 ], [ %916, %907 ]
  %911 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %908
  %912 = load float, float* %911, align 4, !tbaa !53
  %913 = fsub fast float %912, %798
  %914 = fcmp fast olt float %913, 0.000000e+00
  %915 = select i1 %914, float 0.000000e+00, float 1.000000e+00
  %916 = fadd fast float %915, %910
  %917 = fmul fast float %915, %913
  %918 = fadd fast float %917, %909
  %919 = add nuw nsw i32 %908, 1
  %920 = icmp eq i32 %919, 4
  br i1 %920, label %921, label %907, !llvm.loop !57

; <label>:921                                     ; preds = %907
  %922 = add nuw nsw i32 %875, 1
  %923 = icmp eq i32 %922, 8
  br i1 %923, label %924, label %872, !llvm.loop !59

; <label>:924                                     ; preds = %921
  %925 = fdiv fast float 1.000000e+00, %916
  %926 = fmul fast float %925, %918
  %927 = fdiv fast float 1.000000e+00, %798
  %928 = fmul fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = call float @dx.op.binary.f32(i32 35, float %929, float 0.000000e+00)  ; FMax(a,b)
  %931 = fmul fast float %916, 3.125000e-02
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fmul fast float %932, 2.000000e+00
  %934 = fadd fast float %933, -1.000000e+00
  %935 = fcmp fast ogt float %934, 0.000000e+00
  %936 = fcmp fast olt float %934, 0.000000e+00
  %937 = zext i1 %935 to i32
  %938 = zext i1 %936 to i32
  %939 = sub nsw i32 %937, %938
  %940 = sitofp i32 %939 to float
  %941 = fmul fast float %940, %934
  %942 = fsub fast float 1.000000e+00, %941
  %943 = fmul fast float %942, %942
  %944 = fmul fast float %943, %942
  %945 = fsub fast float %942, %944
  %946 = fmul fast float %945, %930
  %947 = fsub fast float 1.000000e+00, %944
  %948 = fsub fast float %947, %946
  %949 = fmul fast float %940, 5.000000e-01
  %950 = fmul fast float %949, %948
  %951 = fsub fast float 5.000000e-01, %950
  br label %4568

; <label>:952                                     ; preds = %775
  %953 = icmp eq i32 %244, 13
  br i1 %953, label %954, label %1624, !dx.controlflow.hints !63

; <label>:954                                     ; preds = %952
  %955 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %956 = fcmp fast une float %955, 0.000000e+00
  br i1 %956, label %957, label %4568, !dx.controlflow.hints !64

; <label>:957                                     ; preds = %954
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %962 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %973 = fmul fast float %959, %146
  %974 = call float @dx.op.tertiary.f32(i32 46, float %147, float %960, float %973)  ; FMad(a,b,c)
  %975 = call float @dx.op.tertiary.f32(i32 46, float %148, float %961, float %974)  ; FMad(a,b,c)
  %976 = fadd fast float %975, %962
  %977 = fmul fast float %964, %146
  %978 = call float @dx.op.tertiary.f32(i32 46, float %147, float %965, float %977)  ; FMad(a,b,c)
  %979 = call float @dx.op.tertiary.f32(i32 46, float %148, float %966, float %978)  ; FMad(a,b,c)
  %980 = fadd fast float %979, %967
  %981 = fmul fast float %969, %146
  %982 = call float @dx.op.tertiary.f32(i32 46, float %147, float %970, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float %148, float %971, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %972
  %985 = fcmp fast oge float %976, 1.000000e+00
  %986 = fcmp fast oge float %980, 1.000000e+00
  %987 = or i1 %985, %986
  %988 = fcmp fast olt float %976, 0.000000e+00
  %989 = fcmp fast olt float %980, 0.000000e+00
  %990 = or i1 %988, %989
  %991 = or i1 %987, %990
  br i1 %991, label %4568, label %992, !dx.controlflow.hints !65

; <label>:992                                     ; preds = %957
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = extractvalue %dx.types.CBufRet.f32 %993, 1
  %996 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.i32 %999, 2
  %1001 = uitofp i32 %1000 to float
  %1002 = extractvalue %dx.types.CBufRet.i32 %999, 3
  %1003 = uitofp i32 %1002 to float
  %1004 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %1005 = fmul fast float %1004, 2.000000e+00
  %1006 = fsub fast float %976, %994
  %1007 = fsub fast float %980, %995
  %1008 = fmul fast float %1005, %1006
  %1009 = fmul fast float %1005, %1007
  %1010 = fdiv fast float 1.000000e+00, %181
  %1011 = fmul fast float %1009, %1010
  %1012 = call float @dx.op.unary.f32(i32 6, float %1011)  ; FAbs(value)
  %1013 = fmul fast float %996, %148
  %1014 = fmul fast float %1013, %1005
  %1015 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1016 = call float @dx.op.unary.f32(i32 6, float %1008)  ; FAbs(value)
  %1017 = call float @dx.op.binary.f32(i32 35, float %1015, float %1012)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1019 = fmul fast float %1018, 2.000000e+00
  %1020 = call float @dx.op.unary.f32(i32 23, float %1019)  ; Log(value)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1020, float %1001)  ; FMax(a,b)
  %1022 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1023 = fadd fast float %1022, 0xBFEA666660000000
  %1024 = fmul fast float %1023, 8.000000e+00
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = call float @dx.op.unary.f32(i32 27, float %1021)  ; Round_ni(value)
  %1027 = fadd fast float %1026, %1025
  %1028 = call float @dx.op.binary.f32(i32 36, float %1027, float %1003)  ; FMin(a,b)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1030 = fsub fast float -0.000000e+00, %1029
  %1031 = call float @dx.op.unary.f32(i32 21, float %1030)  ; Exp(value)
  %1032 = fmul fast float %1031, %1005
  %1033 = fmul fast float %1032, %976
  %1034 = fmul fast float %1032, %980
  %1035 = fmul fast float %1033, 5.000000e-01
  %1036 = fmul fast float %1034, 5.000000e-01
  %1037 = fadd fast float %1035, 5.000000e-01
  %1038 = fadd fast float %1036, 5.000000e-01
  %1039 = fmul fast float %1033, 2.500000e-01
  %1040 = fmul fast float %1034, 2.500000e-01
  %1041 = fadd fast float %1039, 5.000000e-01
  %1042 = fadd fast float %1040, 5.000000e-01
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 536870911
  %1046 = lshr i32 %1045, 9
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, %976
  %1049 = fmul fast float %1047, %980
  %1050 = call float @dx.op.unary.f32(i32 22, float %1048)  ; Frc(value)
  %1051 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1052 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1053 = fcmp fast une float %1052, 0.000000e+00
  br i1 %1053, label %1054, label %1152, !dx.controlflow.hints !66

; <label>:1054                                    ; preds = %992
  %1055 = call float @dx.op.unary.f32(i32 21, float %1026)  ; Exp(value)
  %1056 = fmul fast float %1055, 1.953125e-03
  %1057 = fcmp fast olt float %1050, %1056
  %1058 = fcmp fast olt float %1051, %1056
  %1059 = or i1 %1057, %1058
  %1060 = fsub fast float 1.000000e+00, %1056
  %1061 = fcmp fast ogt float %1050, %1060
  %1062 = fcmp fast ogt float %1051, %1060
  %1063 = or i1 %1061, %1062
  %1064 = or i1 %1059, %1063
  br i1 %1064, label %1065, label %1231, !dx.controlflow.hints !67

; <label>:1065                                    ; preds = %1054
  %1066 = fmul fast float %998, 5.000000e-01
  %1067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.i32 %1067, 0
  %1069 = fmul fast float %980, 3.530000e+02
  %1070 = uitofp i32 %1045 to float
  %1071 = fmul fast float %1069, %1070
  %1072 = fmul fast float %976, 6.130000e+02
  %1073 = fadd fast float %1071, %1072
  %1074 = fptoui float %1073 to i32
  %1075 = add i32 %1068, %1074
  %1076 = mul i32 %1075, -63
  %1077 = lshr i32 %1076, 17
  %1078 = xor i32 %1077, %1076
  %1079 = mul i32 %1078, -511
  %1080 = mul i32 %1078, -8176
  %1081 = xor i32 %1079, %1080
  %1082 = mul i32 %1081, -7
  %1083 = mul i32 %1081, -7168
  %1084 = xor i32 %1082, %1083
  %1085 = lshr i32 %1084, 15
  %1086 = xor i32 %1085, %1082
  %1087 = and i32 %1086, 15
  %1088 = mul i32 %1087, 2
  %1089 = add i32 0, %1088
  %1090 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1089
  %1091 = load float, float* %1090, align 4
  %1092 = mul i32 %1087, 2
  %1093 = add i32 1, %1092
  %1094 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1093
  %1095 = load float, float* %1094, align 4
  %1096 = fmul fast float %980, 2.770000e+02
  %1097 = fmul fast float %1096, %1070
  %1098 = fmul fast float %976, 5.990000e+02
  %1099 = fadd fast float %1097, %1098
  %1100 = fptoui float %1099 to i32
  %1101 = mul i32 %1100, -63
  %1102 = lshr i32 %1101, 17
  %1103 = xor i32 %1102, %1101
  %1104 = mul i32 %1103, -511
  %1105 = mul i32 %1103, -8176
  %1106 = xor i32 %1104, %1105
  %1107 = mul i32 %1106, -7
  %1108 = mul i32 %1106, -7168
  %1109 = xor i32 %1107, %1108
  %1110 = lshr i32 %1109, 15
  %1111 = xor i32 %1110, %1107
  %1112 = and i32 %1111, 63
  %1113 = mul i32 %1112, 2
  %1114 = add i32 0, %1113
  %1115 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1114
  %1116 = load float, float* %1115, align 4
  %1117 = mul i32 %1112, 2
  %1118 = add i32 1, %1117
  %1119 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1118
  %1120 = load float, float* %1119, align 4
  %1121 = call float @dx.op.dot2.f32(i32 54, float %1091, float %1095, float %1116, float %1120)  ; Dot2(ax,ay,bx,by)
  %1122 = fsub fast float -0.000000e+00, %1116
  %1123 = call float @dx.op.dot2.f32(i32 54, float %1091, float %1095, float %1122, float %1120)  ; Dot2(ax,ay,bx,by)
  %1124 = fmul fast float %1121, %1066
  %1125 = fmul fast float %1123, %1066
  %1126 = fdiv fast float 2.000000e+00, %1032
  %1127 = fmul fast float %1055, 9.765625e-04
  %1128 = fcmp fast olt float %1050, %1127
  %1129 = fcmp fast olt float %1051, %1127
  %1130 = or i1 %1128, %1129
  %1131 = fsub fast float 1.000000e+00, %1127
  %1132 = fcmp fast ogt float %1050, %1131
  %1133 = fcmp fast ogt float %1051, %1131
  %1134 = or i1 %1132, %1133
  %1135 = or i1 %1130, %1134
  %1136 = fmul fast float %1124, 2.000000e+00
  br i1 %1135, label %1137, label %1141, !dx.controlflow.hints !68

; <label>:1137                                    ; preds = %1065
  %1138 = fmul fast float %1125, 2.000000e+00
  %1139 = fadd fast float %1136, %1037
  %1140 = fadd fast float %1138, %1038
  br label %1141

; <label>:1141                                    ; preds = %1137, %1065
  %1142 = phi float [ %1139, %1137 ], [ %1037, %1065 ]
  %1143 = phi float [ %1140, %1137 ], [ %1038, %1065 ]
  %1144 = phi i32 [ 3, %1137 ], [ 2, %1065 ]
  %1145 = fadd fast float %1124, %1041
  %1146 = fadd fast float %1125, %1042
  %1147 = fmul fast float %1136, %1126
  %1148 = fmul fast float %1126, 2.000000e+00
  %1149 = fmul fast float %1148, %1125
  %1150 = fadd fast float %1147, %976
  %1151 = fadd fast float %1149, %980
  br label %1231

; <label>:1152                                    ; preds = %992
  %1153 = call float @dx.op.unary.f32(i32 21, float %1029)  ; Exp(value)
  %1154 = fmul fast float %1153, 9.765625e-04
  %1155 = fcmp fast olt float %1050, %1154
  %1156 = fcmp fast olt float %1051, %1154
  %1157 = or i1 %1155, %1156
  %1158 = fsub fast float 1.000000e+00, %1154
  %1159 = fcmp fast ogt float %1050, %1158
  %1160 = fcmp fast ogt float %1051, %1158
  %1161 = or i1 %1159, %1160
  %1162 = or i1 %1157, %1161
  br i1 %1162, label %1163, label %1231, !dx.controlflow.hints !69

; <label>:1163                                    ; preds = %1152
  %1164 = fmul fast float %998, 5.000000e-01
  %1165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.i32 %1165, 0
  %1167 = fmul fast float %980, 3.530000e+02
  %1168 = uitofp i32 %1045 to float
  %1169 = fmul fast float %1167, %1168
  %1170 = fmul fast float %976, 6.130000e+02
  %1171 = fadd fast float %1169, %1170
  %1172 = fptoui float %1171 to i32
  %1173 = add i32 %1166, %1172
  %1174 = mul i32 %1173, -63
  %1175 = lshr i32 %1174, 17
  %1176 = xor i32 %1175, %1174
  %1177 = mul i32 %1176, -511
  %1178 = mul i32 %1176, -8176
  %1179 = xor i32 %1177, %1178
  %1180 = mul i32 %1179, -7
  %1181 = mul i32 %1179, -7168
  %1182 = xor i32 %1180, %1181
  %1183 = lshr i32 %1182, 15
  %1184 = xor i32 %1183, %1180
  %1185 = and i32 %1184, 15
  %1186 = mul i32 %1185, 2
  %1187 = add i32 0, %1186
  %1188 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1187
  %1189 = load float, float* %1188, align 4
  %1190 = mul i32 %1185, 2
  %1191 = add i32 1, %1190
  %1192 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1191
  %1193 = load float, float* %1192, align 4
  %1194 = fmul fast float %980, 2.770000e+02
  %1195 = fmul fast float %1194, %1168
  %1196 = fmul fast float %976, 5.990000e+02
  %1197 = fadd fast float %1195, %1196
  %1198 = fptoui float %1197 to i32
  %1199 = mul i32 %1198, -63
  %1200 = lshr i32 %1199, 17
  %1201 = xor i32 %1200, %1199
  %1202 = mul i32 %1201, -511
  %1203 = mul i32 %1201, -8176
  %1204 = xor i32 %1202, %1203
  %1205 = mul i32 %1204, -7
  %1206 = mul i32 %1204, -7168
  %1207 = xor i32 %1205, %1206
  %1208 = lshr i32 %1207, 15
  %1209 = xor i32 %1208, %1205
  %1210 = and i32 %1209, 63
  %1211 = mul i32 %1210, 2
  %1212 = add i32 0, %1211
  %1213 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1212
  %1214 = load float, float* %1213, align 4
  %1215 = mul i32 %1210, 2
  %1216 = add i32 1, %1215
  %1217 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1216
  %1218 = load float, float* %1217, align 4
  %1219 = call float @dx.op.dot2.f32(i32 54, float %1189, float %1193, float %1214, float %1218)  ; Dot2(ax,ay,bx,by)
  %1220 = fsub fast float -0.000000e+00, %1214
  %1221 = call float @dx.op.dot2.f32(i32 54, float %1189, float %1193, float %1220, float %1218)  ; Dot2(ax,ay,bx,by)
  %1222 = fmul fast float %1219, %1164
  %1223 = fmul fast float %1221, %1164
  %1224 = fadd fast float %1222, %1037
  %1225 = fadd fast float %1223, %1038
  %1226 = fdiv fast float 2.000000e+00, %1032
  %1227 = fmul fast float %1226, %1222
  %1228 = fmul fast float %1223, %1226
  %1229 = fadd fast float %1227, %976
  %1230 = fadd fast float %1228, %980
  br label %1231

; <label>:1231                                    ; preds = %1163, %1152, %1141, %1054
  %1232 = phi float [ %1145, %1141 ], [ %1041, %1054 ], [ %1041, %1163 ], [ %1041, %1152 ]
  %1233 = phi float [ %1146, %1141 ], [ %1042, %1054 ], [ %1042, %1163 ], [ %1042, %1152 ]
  %1234 = phi float [ %1142, %1141 ], [ %1037, %1054 ], [ %1224, %1163 ], [ %1037, %1152 ]
  %1235 = phi float [ %1143, %1141 ], [ %1038, %1054 ], [ %1225, %1163 ], [ %1038, %1152 ]
  %1236 = phi i32 [ %1144, %1141 ], [ 0, %1054 ], [ 1, %1163 ], [ 0, %1152 ]
  %1237 = phi float [ %1150, %1141 ], [ %976, %1054 ], [ %1229, %1163 ], [ %976, %1152 ]
  %1238 = phi float [ %1151, %1141 ], [ %980, %1054 ], [ %1230, %1163 ], [ %980, %1152 ]
  %1239 = fsub fast float %1003, %1001
  %1240 = fptoui float %1239 to i32
  %1241 = add i32 %1240, 320
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %1241)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1245 = fcmp fast une float %1028, %1003
  %1246 = fsub fast float %1237, %1243
  %1247 = fsub fast float %1238, %1244
  %1248 = call float @dx.op.unary.f32(i32 6, float %1246)  ; FAbs(value)
  %1249 = call float @dx.op.unary.f32(i32 6, float %1247)  ; FAbs(value)
  %1250 = fmul fast float %1248, %1032
  %1251 = fmul fast float %1249, %1032
  %1252 = fcmp fast olt float %1250, 1.000000e+00
  %1253 = fcmp fast olt float %1251, 1.000000e+00
  %1254 = and i1 %1252, %1253
  %1255 = or i1 %1245, %1254
  br i1 %1255, label %1256, label %4568, !dx.controlflow.hints !70

; <label>:1256                                    ; preds = %1231
  %1257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.i32 %1257, 2
  %1259 = sitofp i32 %1258 to float
  %1260 = fsub fast float %1028, %1259
  %1261 = call float @dx.op.unary.f32(i32 27, float %1260)  ; Round_ni(value)
  %1262 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1263 = icmp eq i32 %1236, 0
  %1264 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1265 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  br i1 %1263, label %1336, label %1266, !dx.controlflow.hints !71

; <label>:1266                                    ; preds = %1256
  %1267 = and i32 %1236, 1
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1282, label %1269, !dx.controlflow.hints !72

; <label>:1269                                    ; preds = %1266
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = fmul fast float %1264, %1271
  %1273 = fmul fast float %1265, %1271
  %1274 = fptoui float %1272 to i32
  %1275 = fptoui float %1273 to i32
  %1276 = fptoui float %1261 to i32
  %1277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1274, i32 %1275, i32 %1276, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.ResRet.f32 %1277, 3
  br label %1288

; <label>:1282                                    ; preds = %1266
  %1283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1264, float %1265, float %1261, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = extractvalue %dx.types.ResRet.f32 %1283, 3
  br label %1288

; <label>:1288                                    ; preds = %1282, %1269
  %1289 = phi float [ %1278, %1269 ], [ %1284, %1282 ]
  %1290 = phi float [ %1279, %1269 ], [ %1285, %1282 ]
  %1291 = phi float [ %1280, %1269 ], [ %1286, %1282 ]
  %1292 = phi float [ %1281, %1269 ], [ %1287, %1282 ]
  %1293 = fcmp fast ogt float %1262, 0.000000e+00
  br i1 %1293, label %1294, label %1364, !dx.controlflow.hints !73

; <label>:1294                                    ; preds = %1288
  %1295 = and i32 %1236, 2
  %1296 = icmp eq i32 %1295, 0
  %1297 = fadd fast float %1261, 1.000000e+00
  %1298 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1299 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  br i1 %1296, label %1313, label %1300, !dx.controlflow.hints !74

; <label>:1300                                    ; preds = %1294
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = fmul fast float %1298, %1302
  %1304 = fmul fast float %1299, %1302
  %1305 = fptoui float %1303 to i32
  %1306 = fptoui float %1304 to i32
  %1307 = fptoui float %1297 to i32
  %1308 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1305, i32 %1306, i32 %1307, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  br label %1319

; <label>:1313                                    ; preds = %1294
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1298, float %1299, float %1297, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = extractvalue %dx.types.ResRet.f32 %1314, 3
  br label %1319

; <label>:1319                                    ; preds = %1313, %1300
  %1320 = phi float [ %1309, %1300 ], [ %1315, %1313 ]
  %1321 = phi float [ %1310, %1300 ], [ %1316, %1313 ]
  %1322 = phi float [ %1311, %1300 ], [ %1317, %1313 ]
  %1323 = phi float [ %1312, %1300 ], [ %1318, %1313 ]
  %1324 = fsub fast float %1320, %1289
  %1325 = fsub fast float %1321, %1290
  %1326 = fsub fast float %1322, %1291
  %1327 = fsub fast float %1323, %1292
  %1328 = fmul fast float %1324, %1262
  %1329 = fmul fast float %1325, %1262
  %1330 = fmul fast float %1326, %1262
  %1331 = fmul fast float %1327, %1262
  %1332 = fadd fast float %1328, %1289
  %1333 = fadd fast float %1329, %1290
  %1334 = fadd fast float %1330, %1291
  %1335 = fadd fast float %1331, %1292
  br label %1364

; <label>:1336                                    ; preds = %1256
  %1337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1264, float %1265, float %1261, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = extractvalue %dx.types.ResRet.f32 %1337, 3
  %1342 = fcmp fast ogt float %1262, 0.000000e+00
  br i1 %1342, label %1343, label %1364, !dx.controlflow.hints !75

; <label>:1343                                    ; preds = %1336
  %1344 = fadd fast float %1261, 1.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1346 = call float @dx.op.unary.f32(i32 22, float %1233)  ; Frc(value)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %1345, float %1346, float %1344, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = extractvalue %dx.types.ResRet.f32 %1347, 3
  %1352 = fsub fast float %1348, %1338
  %1353 = fsub fast float %1349, %1339
  %1354 = fsub fast float %1350, %1340
  %1355 = fsub fast float %1351, %1341
  %1356 = fmul fast float %1352, %1262
  %1357 = fmul fast float %1353, %1262
  %1358 = fmul fast float %1354, %1262
  %1359 = fmul fast float %1355, %1262
  %1360 = fadd fast float %1356, %1338
  %1361 = fadd fast float %1357, %1339
  %1362 = fadd fast float %1358, %1340
  %1363 = fadd fast float %1359, %1341
  br label %1364

; <label>:1364                                    ; preds = %1343, %1336, %1319, %1288
  %1365 = phi float [ %1332, %1319 ], [ %1289, %1288 ], [ %1360, %1343 ], [ %1338, %1336 ]
  %1366 = phi float [ %1333, %1319 ], [ %1290, %1288 ], [ %1361, %1343 ], [ %1339, %1336 ]
  %1367 = phi float [ %1334, %1319 ], [ %1291, %1288 ], [ %1362, %1343 ], [ %1340, %1336 ]
  %1368 = phi float [ %1335, %1319 ], [ %1292, %1288 ], [ %1363, %1343 ], [ %1341, %1336 ]
  %1369 = fadd fast float %1365, -5.000000e-01
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fmul fast float %1369, 0xBFD5555560000000
  %1372 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1370, float %1371)  ; FMad(a,b,c)
  %1373 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1366, float 0.000000e+00)  ; FMad(a,b,c)
  %1374 = fadd fast float %1373, %1368
  %1375 = fmul fast float %1369, -7.500000e-01
  %1376 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1370, float %1375)  ; FMad(a,b,c)
  %1377 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1366, float 0.000000e+00)  ; FMad(a,b,c)
  %1378 = fadd fast float %1377, %1368
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1385 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1386 = fsub fast float %1382, %1372
  %1387 = fsub fast float %1383, %1374
  %1388 = fsub fast float %1384, %1376
  %1389 = fsub fast float %1385, %1378
  %1390 = fmul fast float %1386, %1380
  %1391 = fmul fast float %1387, %1380
  %1392 = fmul fast float %1388, %1380
  %1393 = fmul fast float %1389, %1380
  %1394 = fadd fast float %1390, %1372
  %1395 = fadd fast float %1391, %1374
  %1396 = fadd fast float %1392, %1376
  %1397 = fadd fast float %1393, %1378
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 536870911
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, %1237
  %1403 = fmul fast float %1401, %1238
  %1404 = fptoui float %1402 to i32
  %1405 = fptoui float %1403 to i32
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 31
  %1409 = lshr i32 %1404, %1408
  %1410 = lshr i32 %1405, %1408
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 31
  %1414 = shl i32 1, %1413
  %1415 = call i32 @dx.op.binary.i32(i32 40, i32 %1414, i32 4)  ; UMin(a,b)
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = extractvalue %dx.types.ResRet.i32 %1416, 1
  %1419 = icmp eq i32 %1415, 0
  br i1 %1419, label %1461, label %1420

; <label>:1420                                    ; preds = %1364
  br label %1421

; <label>:1421                                    ; preds = %1449, %1420
  %1422 = phi i32 [ %1452, %1449 ], [ 0, %1420 ]
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = lshr i32 %1424, 16
  %1426 = and i32 %1425, 31
  %1427 = shl i32 %1410, %1426
  %1428 = add i32 %1427, %1409
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 31
  %1432 = shl i32 %1428, %1431
  %1433 = add i32 %1432, %1422
  %1434 = shl i32 %1433, 2
  %1435 = add i32 %1434, 32
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = icmp slt i32 %1437, 0
  %1439 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1422
  %1440 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1422
  %1441 = bitcast float* %1439 to i32*
  %1442 = bitcast float* %1440 to i32*
  br i1 %1438, label %1443, label %1449, !dx.controlflow.hints !76

; <label>:1443                                    ; preds = %1421
  %1444 = and i32 %1437, 1073741823
  %1445 = add nuw nsw i32 %1444, 20
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.i32 %1446, 1
  br label %1449

; <label>:1449                                    ; preds = %1443, %1421
  %1450 = phi i32 [ %1447, %1443 ], [ %1417, %1421 ]
  %1451 = phi i32 [ %1448, %1443 ], [ %1418, %1421 ]
  store i32 %1450, i32* %1441, align 4
  store i32 %1451, i32* %1442, align 4
  %1452 = add nuw i32 %1422, 1
  %1453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.i32 %1453, 2
  %1455 = icmp eq i32 %1454, 0
  %1456 = icmp ugt i32 %1437, -1073741825
  %1457 = and i1 %1456, %1455
  %1458 = icmp ult i32 %1452, %1415
  %1459 = and i1 %1457, %1458
  br i1 %1459, label %1421, label %1460, !dx.controlflow.hints !77

; <label>:1460                                    ; preds = %1449
  br label %1461

; <label>:1461                                    ; preds = %1460, %1364
  %1462 = phi i32 [ 0, %1364 ], [ %1452, %1460 ]
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 2
  %1465 = fptoui float %1464 to i32
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1518, label %1467

; <label>:1467                                    ; preds = %1461
  br label %1468

; <label>:1468                                    ; preds = %1513, %1467
  %1469 = phi i32 [ %1514, %1513 ], [ %1462, %1467 ]
  %1470 = phi i32 [ %1515, %1513 ], [ 0, %1467 ]
  %1471 = lshr i32 %1470, 2
  %1472 = and i32 %1470, 3
  %1473 = add nuw nsw i32 %1471, 83
  %1474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %1473)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.i32 %1474, 0
  %1476 = extractvalue %dx.types.CBufRet.i32 %1474, 1
  %1477 = extractvalue %dx.types.CBufRet.i32 %1474, 2
  %1478 = extractvalue %dx.types.CBufRet.i32 %1474, 3
  %1479 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %1475, i32* %1479, align 4
  %1480 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %1476, i32* %1480, align 4
  %1481 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %1477, i32* %1481, align 4
  %1482 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %1478, i32* %1482, align 4
  %1483 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %1472
  %1484 = load i32, i32* %1483, align 4, !tbaa !78
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = lshr i32 %1486, 16
  %1488 = and i32 %1487, 31
  %1489 = shl i32 %1410, %1488
  %1490 = add i32 %1489, %1409
  %1491 = shl i32 %1490, 2
  %1492 = add i32 %1491, %1484
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1513, label %1496, !dx.controlflow.hints !80

; <label>:1496                                    ; preds = %1468
  %1497 = icmp slt i32 %1494, 0
  %1498 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1469
  %1499 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1469
  %1500 = bitcast float* %1498 to i32*
  %1501 = bitcast float* %1499 to i32*
  br i1 %1497, label %1502, label %1509, !dx.controlflow.hints !81

; <label>:1502                                    ; preds = %1496
  %1503 = and i32 %1494, 1073741823
  %1504 = add i32 %1484, 20
  %1505 = add i32 %1504, %1503
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.i32 %1506, 1
  br label %1509

; <label>:1509                                    ; preds = %1502, %1496
  %1510 = phi i32 [ %1507, %1502 ], [ %1417, %1496 ]
  %1511 = phi i32 [ %1508, %1502 ], [ %1418, %1496 ]
  store i32 %1510, i32* %1500, align 4
  store i32 %1511, i32* %1501, align 4
  %1512 = add i32 %1469, 1
  br label %1513

; <label>:1513                                    ; preds = %1509, %1468
  %1514 = phi i32 [ %1469, %1468 ], [ %1512, %1509 ]
  %1515 = add nuw i32 %1470, 1
  %1516 = icmp eq i32 %1515, %1465
  br i1 %1516, label %1517, label %1468

; <label>:1517                                    ; preds = %1513
  br label %1518

; <label>:1518                                    ; preds = %1517, %1461
  %1519 = phi i32 [ %1462, %1461 ], [ %1514, %1517 ]
  %1520 = icmp eq i32 %1519, 1
  %1521 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  %1522 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  br i1 %1520, label %1523, label %1526, !dx.controlflow.hints !82

; <label>:1523                                    ; preds = %1518
  %1524 = load float, float* %1521, align 4
  %1525 = load float, float* %1522, align 4
  br label %1553

; <label>:1526                                    ; preds = %1518
  %1527 = load float, float* %1521, align 4
  %1528 = load float, float* %1522, align 4
  %1529 = fdiv fast float 1.000000e+00, %1528
  %1530 = fsub fast float %1527, %1529
  %1531 = icmp ugt i32 %1519, 1
  br i1 %1531, label %1532, label %1548

; <label>:1532                                    ; preds = %1526
  br label %1533

; <label>:1533                                    ; preds = %1533, %1532
  %1534 = phi float [ %1543, %1533 ], [ %1530, %1532 ]
  %1535 = phi float [ %1544, %1533 ], [ %1527, %1532 ]
  %1536 = phi i32 [ %1545, %1533 ], [ 1, %1532 ]
  %1537 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1536
  %1538 = load float, float* %1537, align 4
  %1539 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1536
  %1540 = load float, float* %1539, align 4
  %1541 = fdiv fast float 1.000000e+00, %1540
  %1542 = fsub fast float %1538, %1541
  %1543 = call float @dx.op.binary.f32(i32 36, float %1534, float %1542)  ; FMin(a,b)
  %1544 = call float @dx.op.binary.f32(i32 35, float %1535, float %1538)  ; FMax(a,b)
  %1545 = add nuw i32 %1536, 1
  %1546 = icmp eq i32 %1545, %1519
  br i1 %1546, label %1547, label %1533

; <label>:1547                                    ; preds = %1533
  br label %1548

; <label>:1548                                    ; preds = %1547, %1526
  %1549 = phi float [ %1530, %1526 ], [ %1543, %1547 ]
  %1550 = phi float [ %1527, %1526 ], [ %1544, %1547 ]
  %1551 = fsub fast float %1550, %1549
  %1552 = fdiv fast float 1.000000e+00, %1551
  br label %1553

; <label>:1553                                    ; preds = %1548, %1523
  %1554 = phi float [ %1524, %1523 ], [ %1550, %1548 ]
  %1555 = phi float [ %1525, %1523 ], [ %1552, %1548 ]
  %1556 = fadd fast float %984, %1554
  %1557 = fmul fast float %1556, %1555
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1559 = fmul fast float %1558, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1394, %1394
  %1562 = fsub fast float %1395, %1561
  %1563 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1562)  ; FMax(a,b)
  %1564 = fdiv fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1395, %1394
  %1566 = fsub fast float %1396, %1565
  %1567 = fsub fast float %1560, %1394
  %1568 = fmul fast float %1560, %1560
  %1569 = fsub fast float %1568, %1395
  %1570 = fmul fast float %1564, %1566
  %1571 = fmul fast float %1570, %1567
  %1572 = fsub fast float %1569, %1571
  %1573 = fmul fast float %1395, %1395
  %1574 = fsub fast float %1397, %1573
  %1575 = fmul fast float %1566, %1566
  %1576 = fmul fast float %1575, %1564
  %1577 = fsub fast float %1574, %1576
  %1578 = fdiv fast float %1572, %1577
  %1579 = fmul fast float %1578, %1566
  %1580 = fsub fast float %1567, %1579
  %1581 = fmul fast float %1580, %1564
  %1582 = fmul fast float %1581, %1394
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = fmul fast float %1578, %1395
  %1585 = fsub fast float %1583, %1584
  %1586 = fmul fast float %1581, %1581
  %1587 = fmul fast float %1578, 4.000000e+00
  %1588 = fmul fast float %1587, %1585
  %1589 = fsub fast float %1586, %1588
  %1590 = call float @dx.op.unary.f32(i32 24, float %1589)  ; Sqrt(value)
  %1591 = fcmp fast oge float %1581, 0.000000e+00
  %1592 = fsub fast float -0.000000e+00, %1590
  %1593 = select i1 %1591, float %1592, float %1590
  %1594 = fsub fast float %1593, %1581
  %1595 = fdiv fast float %1594, %1578
  %1596 = fdiv fast float %1585, %1594
  %1597 = fmul fast float %1595, 5.000000e-01
  %1598 = fmul fast float %1596, 2.000000e+00
  %1599 = select i1 %1591, float %1597, float %1598
  %1600 = select i1 %1591, float %1598, float %1597
  %1601 = call float @dx.op.binary.f32(i32 35, float %1599, float %1600)  ; FMax(a,b)
  %1602 = call float @dx.op.binary.f32(i32 36, float %1599, float %1600)  ; FMin(a,b)
  %1603 = fcmp fast ogt float %1560, %1601
  %1604 = fsub fast float %1560, %1602
  %1605 = fsub fast float %1560, %1601
  %1606 = fsub fast float %1601, %1602
  %1607 = select i1 %1603, float %1605, float %1606
  %1608 = fmul float %1604, %1607
  %1609 = select i1 %1603, float %1602, float %1560
  %1610 = fcmp fast ogt float %1560, %1602
  %1611 = fmul fast float %1609, %1601
  %1612 = fadd fast float %1609, %1601
  %1613 = fmul fast float %1612, %1394
  %1614 = fadd fast float %1611, %1395
  %1615 = fsub fast float %1614, %1613
  %1616 = fdiv fast float %1615, %1608
  %1617 = select i1 %1610, float %1616, float 0.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = select i1 %1603, float %1618, float %1617
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1379, 3
  %1622 = fmul fast float %1621, %1620
  %1623 = fsub fast float 1.000000e+00, %1622
  br label %4568

; <label>:1624                                    ; preds = %952
  %1625 = icmp eq i32 %244, 11
  br i1 %1625, label %4568, label %1626, !dx.controlflow.hints !83

; <label>:1626                                    ; preds = %1624
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 3
  %1631 = fmul fast float %1630, %211
  %1632 = fmul fast float %1630, %215
  %1633 = fadd fast float %1631, %1628
  %1634 = fadd fast float %1632, %1629
  %1635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.CBufRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.CBufRet.f32 %1635, 3
  %1639 = fmul fast float %1638, %211
  %1640 = fmul fast float %1638, %215
  %1641 = fadd fast float %1639, %1636
  %1642 = fadd fast float %1640, %1637
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 1
  %1645 = fsub fast float %1644, %219
  %1646 = extractvalue %dx.types.CBufRet.f32 %1643, 2
  %1647 = fmul fast float %1645, %1646
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  br i1 %85, label %1710, label %1650, !dx.controlflow.hints !84

; <label>:1650                                    ; preds = %1626
  %1651 = extractvalue %dx.types.CBufRet.f32 %1635, 2
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1654 = fadd fast float %1653, %1651
  %1655 = fcmp fast ogt float %1654, 0.000000e+00
  br i1 %1655, label %1656, label %1680, !dx.controlflow.hints !85

; <label>:1656                                    ; preds = %1650
  %1657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.f32 %1657, 0
  %1659 = extractvalue %dx.types.CBufRet.f32 %1657, 1
  %1660 = fsub fast float %1641, %1658
  %1661 = fsub fast float %1642, %1659
  %1662 = fcmp fast olt float %1660, 0.000000e+00
  %1663 = fcmp fast olt float %1661, 0.000000e+00
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.CBufRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.CBufRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.CBufRet.f32 %1664, 3
  %1669 = select i1 %1662, float %1665, float %1667
  %1670 = select i1 %1663, float %1666, float %1668
  %1671 = fmul fast float %1669, %1660
  %1672 = fmul fast float %1670, %1661
  %1673 = call float @dx.op.unary.f32(i32 6, float %1671)  ; FAbs(value)
  %1674 = call float @dx.op.unary.f32(i32 6, float %1672)  ; FAbs(value)
  %1675 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %1676 = call float @dx.op.binary.f32(i32 35, float %1673, float %1674)  ; FMax(a,b)
  %1677 = fsub fast float %1675, %1676
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1678, %1649
  br label %1680

; <label>:1680                                    ; preds = %1656, %1650
  %1681 = phi float [ %1679, %1656 ], [ 0.000000e+00, %1650 ]
  %1682 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1683 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1684 = fadd fast float %1683, %1682
  %1685 = fcmp fast ogt float %1684, 0.000000e+00
  br i1 %1685, label %1686, label %1710, !dx.controlflow.hints !86

; <label>:1686                                    ; preds = %1680
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1690 = fsub fast float %1633, %1688
  %1691 = fsub fast float %1634, %1689
  %1692 = fcmp fast olt float %1690, 0.000000e+00
  %1693 = fcmp fast olt float %1691, 0.000000e+00
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1697 = extractvalue %dx.types.CBufRet.f32 %1694, 2
  %1698 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1699 = select i1 %1692, float %1695, float %1697
  %1700 = select i1 %1693, float %1696, float %1698
  %1701 = fmul fast float %1699, %1690
  %1702 = fmul fast float %1700, %1691
  %1703 = call float @dx.op.unary.f32(i32 6, float %1701)  ; FAbs(value)
  %1704 = call float @dx.op.unary.f32(i32 6, float %1702)  ; FAbs(value)
  %1705 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %1706 = call float @dx.op.binary.f32(i32 35, float %1703, float %1704)  ; FMax(a,b)
  %1707 = fsub fast float %1705, %1706
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fmul fast float %1708, %1649
  br label %1710

; <label>:1710                                    ; preds = %1686, %1680, %1626
  %1711 = phi float [ 0.000000e+00, %1626 ], [ %1709, %1686 ], [ 0.000000e+00, %1680 ]
  %1712 = phi float [ 0.000000e+00, %1626 ], [ %1681, %1686 ], [ %1681, %1680 ]
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = fmul fast float %1714, %92
  %1717 = fadd fast float %1716, %1715
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = fsub fast float %211, %1720
  %1723 = fsub fast float %215, %1721
  %1724 = fcmp fast olt float %1722, 0.000000e+00
  %1725 = fcmp fast olt float %1723, 0.000000e+00
  %1726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1727 = extractvalue %dx.types.CBufRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.CBufRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.CBufRet.f32 %1726, 2
  %1730 = extractvalue %dx.types.CBufRet.f32 %1726, 3
  %1731 = select i1 %1724, float %1727, float %1729
  %1732 = select i1 %1725, float %1728, float %1730
  %1733 = fmul fast float %1731, %1722
  %1734 = fmul fast float %1732, %1723
  %1735 = call float @dx.op.unary.f32(i32 6, float %1733)  ; FAbs(value)
  %1736 = call float @dx.op.unary.f32(i32 6, float %1734)  ; FAbs(value)
  %1737 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %1738 = call float @dx.op.binary.f32(i32 35, float %1735, float %1736)  ; FMax(a,b)
  %1739 = fsub fast float %1737, %1738
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = call float @dx.op.binary.f32(i32 36, float %1740, float %1718)  ; FMin(a,b)
  %1742 = fmul fast float %1741, %1649
  %1743 = fsub fast float %1711, %1742
  %1744 = fsub fast float %1712, %1711
  %1745 = fsub fast float %1744, %1742
  %1746 = call float @dx.op.binary.f32(i32 35, float %1711, float %1712)  ; FMax(a,b)
  %1747 = call float @dx.op.binary.f32(i32 35, float %1742, float %1746)  ; FMax(a,b)
  %1748 = fcmp fast olt float %1747, 1.000000e+00
  %1749 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %1750 = fcmp fast une float %1749, 0.000000e+00
  %1751 = and i1 %1748, %1750
  br i1 %1751, label %1752, label %2419, !dx.controlflow.hints !87

; <label>:1752                                    ; preds = %1710
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1756 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1757 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.CBufRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.CBufRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.CBufRet.f32 %1763, 3
  %1768 = fmul fast float %1754, %146
  %1769 = call float @dx.op.tertiary.f32(i32 46, float %147, float %1755, float %1768)  ; FMad(a,b,c)
  %1770 = call float @dx.op.tertiary.f32(i32 46, float %148, float %1756, float %1769)  ; FMad(a,b,c)
  %1771 = fadd fast float %1770, %1757
  %1772 = fmul fast float %1759, %146
  %1773 = call float @dx.op.tertiary.f32(i32 46, float %147, float %1760, float %1772)  ; FMad(a,b,c)
  %1774 = call float @dx.op.tertiary.f32(i32 46, float %148, float %1761, float %1773)  ; FMad(a,b,c)
  %1775 = fadd fast float %1774, %1762
  %1776 = fmul fast float %1764, %146
  %1777 = call float @dx.op.tertiary.f32(i32 46, float %147, float %1765, float %1776)  ; FMad(a,b,c)
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %148, float %1766, float %1777)  ; FMad(a,b,c)
  %1779 = fadd fast float %1778, %1767
  %1780 = fcmp fast oge float %1771, 1.000000e+00
  %1781 = fcmp fast oge float %1775, 1.000000e+00
  %1782 = or i1 %1780, %1781
  %1783 = fcmp fast olt float %1771, 0.000000e+00
  %1784 = fcmp fast olt float %1775, 0.000000e+00
  %1785 = or i1 %1783, %1784
  %1786 = or i1 %1782, %1785
  br i1 %1786, label %2419, label %1787, !dx.controlflow.hints !65

; <label>:1787                                    ; preds = %1752
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.CBufRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.i32 %1794, 2
  %1796 = uitofp i32 %1795 to float
  %1797 = extractvalue %dx.types.CBufRet.i32 %1794, 3
  %1798 = uitofp i32 %1797 to float
  %1799 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1800 = fmul fast float %1799, 2.000000e+00
  %1801 = fsub fast float %1771, %1789
  %1802 = fsub fast float %1775, %1790
  %1803 = fmul fast float %1800, %1801
  %1804 = fmul fast float %1800, %1802
  %1805 = fdiv fast float 1.000000e+00, %181
  %1806 = fmul fast float %1804, %1805
  %1807 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1808 = fmul fast float %1791, %148
  %1809 = fmul fast float %1808, %1800
  %1810 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1811 = call float @dx.op.unary.f32(i32 6, float %1803)  ; FAbs(value)
  %1812 = call float @dx.op.binary.f32(i32 35, float %1810, float %1807)  ; FMax(a,b)
  %1813 = call float @dx.op.binary.f32(i32 35, float %1811, float %1812)  ; FMax(a,b)
  %1814 = fmul fast float %1813, 2.000000e+00
  %1815 = call float @dx.op.unary.f32(i32 23, float %1814)  ; Log(value)
  %1816 = call float @dx.op.binary.f32(i32 35, float %1815, float %1796)  ; FMax(a,b)
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, 0xBFEA666660000000
  %1819 = fmul fast float %1818, 8.000000e+00
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = call float @dx.op.unary.f32(i32 27, float %1816)  ; Round_ni(value)
  %1822 = fadd fast float %1821, %1820
  %1823 = call float @dx.op.binary.f32(i32 36, float %1822, float %1798)  ; FMin(a,b)
  %1824 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1825 = fsub fast float -0.000000e+00, %1824
  %1826 = call float @dx.op.unary.f32(i32 21, float %1825)  ; Exp(value)
  %1827 = fmul fast float %1826, %1800
  %1828 = fmul fast float %1827, %1771
  %1829 = fmul fast float %1827, %1775
  %1830 = fmul fast float %1828, 5.000000e-01
  %1831 = fmul fast float %1829, 5.000000e-01
  %1832 = fadd fast float %1830, 5.000000e-01
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fmul fast float %1828, 2.500000e-01
  %1835 = fmul fast float %1829, 2.500000e-01
  %1836 = fadd fast float %1834, 5.000000e-01
  %1837 = fadd fast float %1835, 5.000000e-01
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 536870911
  %1841 = lshr i32 %1840, 9
  %1842 = uitofp i32 %1841 to float
  %1843 = fmul fast float %1842, %1771
  %1844 = fmul fast float %1842, %1775
  %1845 = call float @dx.op.unary.f32(i32 22, float %1843)  ; Frc(value)
  %1846 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1847 = call float @dx.op.unary.f32(i32 22, float %1820)  ; Frc(value)
  %1848 = fcmp fast une float %1847, 0.000000e+00
  br i1 %1848, label %1849, label %1947, !dx.controlflow.hints !66

; <label>:1849                                    ; preds = %1787
  %1850 = call float @dx.op.unary.f32(i32 21, float %1821)  ; Exp(value)
  %1851 = fmul fast float %1850, 1.953125e-03
  %1852 = fcmp fast olt float %1845, %1851
  %1853 = fcmp fast olt float %1846, %1851
  %1854 = or i1 %1852, %1853
  %1855 = fsub fast float 1.000000e+00, %1851
  %1856 = fcmp fast ogt float %1845, %1855
  %1857 = fcmp fast ogt float %1846, %1855
  %1858 = or i1 %1856, %1857
  %1859 = or i1 %1854, %1858
  br i1 %1859, label %1860, label %2026, !dx.controlflow.hints !67

; <label>:1860                                    ; preds = %1849
  %1861 = fmul fast float %1793, 5.000000e-01
  %1862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.i32 %1862, 0
  %1864 = fmul fast float %1775, 3.530000e+02
  %1865 = uitofp i32 %1840 to float
  %1866 = fmul fast float %1864, %1865
  %1867 = fmul fast float %1771, 6.130000e+02
  %1868 = fadd fast float %1866, %1867
  %1869 = fptoui float %1868 to i32
  %1870 = add i32 %1863, %1869
  %1871 = mul i32 %1870, -63
  %1872 = lshr i32 %1871, 17
  %1873 = xor i32 %1872, %1871
  %1874 = mul i32 %1873, -511
  %1875 = mul i32 %1873, -8176
  %1876 = xor i32 %1874, %1875
  %1877 = mul i32 %1876, -7
  %1878 = mul i32 %1876, -7168
  %1879 = xor i32 %1877, %1878
  %1880 = lshr i32 %1879, 15
  %1881 = xor i32 %1880, %1877
  %1882 = and i32 %1881, 15
  %1883 = mul i32 %1882, 2
  %1884 = add i32 0, %1883
  %1885 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1884
  %1886 = load float, float* %1885, align 4
  %1887 = mul i32 %1882, 2
  %1888 = add i32 1, %1887
  %1889 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1888
  %1890 = load float, float* %1889, align 4
  %1891 = fmul fast float %1775, 2.770000e+02
  %1892 = fmul fast float %1891, %1865
  %1893 = fmul fast float %1771, 5.990000e+02
  %1894 = fadd fast float %1892, %1893
  %1895 = fptoui float %1894 to i32
  %1896 = mul i32 %1895, -63
  %1897 = lshr i32 %1896, 17
  %1898 = xor i32 %1897, %1896
  %1899 = mul i32 %1898, -511
  %1900 = mul i32 %1898, -8176
  %1901 = xor i32 %1899, %1900
  %1902 = mul i32 %1901, -7
  %1903 = mul i32 %1901, -7168
  %1904 = xor i32 %1902, %1903
  %1905 = lshr i32 %1904, 15
  %1906 = xor i32 %1905, %1902
  %1907 = and i32 %1906, 63
  %1908 = mul i32 %1907, 2
  %1909 = add i32 0, %1908
  %1910 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1909
  %1911 = load float, float* %1910, align 4
  %1912 = mul i32 %1907, 2
  %1913 = add i32 1, %1912
  %1914 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1913
  %1915 = load float, float* %1914, align 4
  %1916 = call float @dx.op.dot2.f32(i32 54, float %1886, float %1890, float %1911, float %1915)  ; Dot2(ax,ay,bx,by)
  %1917 = fsub fast float -0.000000e+00, %1911
  %1918 = call float @dx.op.dot2.f32(i32 54, float %1886, float %1890, float %1917, float %1915)  ; Dot2(ax,ay,bx,by)
  %1919 = fmul fast float %1916, %1861
  %1920 = fmul fast float %1918, %1861
  %1921 = fdiv fast float 2.000000e+00, %1827
  %1922 = fmul fast float %1850, 9.765625e-04
  %1923 = fcmp fast olt float %1845, %1922
  %1924 = fcmp fast olt float %1846, %1922
  %1925 = or i1 %1923, %1924
  %1926 = fsub fast float 1.000000e+00, %1922
  %1927 = fcmp fast ogt float %1845, %1926
  %1928 = fcmp fast ogt float %1846, %1926
  %1929 = or i1 %1927, %1928
  %1930 = or i1 %1925, %1929
  %1931 = fmul fast float %1919, 2.000000e+00
  br i1 %1930, label %1932, label %1936, !dx.controlflow.hints !68

; <label>:1932                                    ; preds = %1860
  %1933 = fmul fast float %1920, 2.000000e+00
  %1934 = fadd fast float %1931, %1832
  %1935 = fadd fast float %1933, %1833
  br label %1936

; <label>:1936                                    ; preds = %1932, %1860
  %1937 = phi float [ %1934, %1932 ], [ %1832, %1860 ]
  %1938 = phi float [ %1935, %1932 ], [ %1833, %1860 ]
  %1939 = phi i32 [ 3, %1932 ], [ 2, %1860 ]
  %1940 = fadd fast float %1919, %1836
  %1941 = fadd fast float %1920, %1837
  %1942 = fmul fast float %1931, %1921
  %1943 = fmul fast float %1921, 2.000000e+00
  %1944 = fmul fast float %1943, %1920
  %1945 = fadd fast float %1942, %1771
  %1946 = fadd fast float %1944, %1775
  br label %2026

; <label>:1947                                    ; preds = %1787
  %1948 = call float @dx.op.unary.f32(i32 21, float %1824)  ; Exp(value)
  %1949 = fmul fast float %1948, 9.765625e-04
  %1950 = fcmp fast olt float %1845, %1949
  %1951 = fcmp fast olt float %1846, %1949
  %1952 = or i1 %1950, %1951
  %1953 = fsub fast float 1.000000e+00, %1949
  %1954 = fcmp fast ogt float %1845, %1953
  %1955 = fcmp fast ogt float %1846, %1953
  %1956 = or i1 %1954, %1955
  %1957 = or i1 %1952, %1956
  br i1 %1957, label %1958, label %2026, !dx.controlflow.hints !69

; <label>:1958                                    ; preds = %1947
  %1959 = fmul fast float %1793, 5.000000e-01
  %1960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.i32 %1960, 0
  %1962 = fmul fast float %1775, 3.530000e+02
  %1963 = uitofp i32 %1840 to float
  %1964 = fmul fast float %1962, %1963
  %1965 = fmul fast float %1771, 6.130000e+02
  %1966 = fadd fast float %1964, %1965
  %1967 = fptoui float %1966 to i32
  %1968 = add i32 %1961, %1967
  %1969 = mul i32 %1968, -63
  %1970 = lshr i32 %1969, 17
  %1971 = xor i32 %1970, %1969
  %1972 = mul i32 %1971, -511
  %1973 = mul i32 %1971, -8176
  %1974 = xor i32 %1972, %1973
  %1975 = mul i32 %1974, -7
  %1976 = mul i32 %1974, -7168
  %1977 = xor i32 %1975, %1976
  %1978 = lshr i32 %1977, 15
  %1979 = xor i32 %1978, %1975
  %1980 = and i32 %1979, 15
  %1981 = mul i32 %1980, 2
  %1982 = add i32 0, %1981
  %1983 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1982
  %1984 = load float, float* %1983, align 4
  %1985 = mul i32 %1980, 2
  %1986 = add i32 1, %1985
  %1987 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1986
  %1988 = load float, float* %1987, align 4
  %1989 = fmul fast float %1775, 2.770000e+02
  %1990 = fmul fast float %1989, %1963
  %1991 = fmul fast float %1771, 5.990000e+02
  %1992 = fadd fast float %1990, %1991
  %1993 = fptoui float %1992 to i32
  %1994 = mul i32 %1993, -63
  %1995 = lshr i32 %1994, 17
  %1996 = xor i32 %1995, %1994
  %1997 = mul i32 %1996, -511
  %1998 = mul i32 %1996, -8176
  %1999 = xor i32 %1997, %1998
  %2000 = mul i32 %1999, -7
  %2001 = mul i32 %1999, -7168
  %2002 = xor i32 %2000, %2001
  %2003 = lshr i32 %2002, 15
  %2004 = xor i32 %2003, %2000
  %2005 = and i32 %2004, 63
  %2006 = mul i32 %2005, 2
  %2007 = add i32 0, %2006
  %2008 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2007
  %2009 = load float, float* %2008, align 4
  %2010 = mul i32 %2005, 2
  %2011 = add i32 1, %2010
  %2012 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2011
  %2013 = load float, float* %2012, align 4
  %2014 = call float @dx.op.dot2.f32(i32 54, float %1984, float %1988, float %2009, float %2013)  ; Dot2(ax,ay,bx,by)
  %2015 = fsub fast float -0.000000e+00, %2009
  %2016 = call float @dx.op.dot2.f32(i32 54, float %1984, float %1988, float %2015, float %2013)  ; Dot2(ax,ay,bx,by)
  %2017 = fmul fast float %2014, %1959
  %2018 = fmul fast float %2016, %1959
  %2019 = fadd fast float %2017, %1832
  %2020 = fadd fast float %2018, %1833
  %2021 = fdiv fast float 2.000000e+00, %1827
  %2022 = fmul fast float %2021, %2017
  %2023 = fmul fast float %2018, %2021
  %2024 = fadd fast float %2022, %1771
  %2025 = fadd fast float %2023, %1775
  br label %2026

; <label>:2026                                    ; preds = %1958, %1947, %1936, %1849
  %2027 = phi float [ %1940, %1936 ], [ %1836, %1849 ], [ %1836, %1958 ], [ %1836, %1947 ]
  %2028 = phi float [ %1941, %1936 ], [ %1837, %1849 ], [ %1837, %1958 ], [ %1837, %1947 ]
  %2029 = phi float [ %1937, %1936 ], [ %1832, %1849 ], [ %2019, %1958 ], [ %1832, %1947 ]
  %2030 = phi float [ %1938, %1936 ], [ %1833, %1849 ], [ %2020, %1958 ], [ %1833, %1947 ]
  %2031 = phi i32 [ %1939, %1936 ], [ 0, %1849 ], [ 1, %1958 ], [ 0, %1947 ]
  %2032 = phi float [ %1945, %1936 ], [ %1771, %1849 ], [ %2024, %1958 ], [ %1771, %1947 ]
  %2033 = phi float [ %1946, %1936 ], [ %1775, %1849 ], [ %2025, %1958 ], [ %1775, %1947 ]
  %2034 = fsub fast float %1798, %1796
  %2035 = fptoui float %2034 to i32
  %2036 = add i32 %2035, 320
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %2036)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2040 = fcmp fast une float %1823, %1798
  %2041 = fsub fast float %2032, %2038
  %2042 = fsub fast float %2033, %2039
  %2043 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2044 = call float @dx.op.unary.f32(i32 6, float %2042)  ; FAbs(value)
  %2045 = fmul fast float %2043, %1827
  %2046 = fmul fast float %2044, %1827
  %2047 = fcmp fast olt float %2045, 1.000000e+00
  %2048 = fcmp fast olt float %2046, 1.000000e+00
  %2049 = and i1 %2047, %2048
  %2050 = or i1 %2040, %2049
  br i1 %2050, label %2051, label %2419, !dx.controlflow.hints !70

; <label>:2051                                    ; preds = %2026
  %2052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.i32 %2052, 2
  %2054 = sitofp i32 %2053 to float
  %2055 = fsub fast float %1823, %2054
  %2056 = call float @dx.op.unary.f32(i32 27, float %2055)  ; Round_ni(value)
  %2057 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %2058 = icmp eq i32 %2031, 0
  %2059 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2060 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  br i1 %2058, label %2131, label %2061, !dx.controlflow.hints !71

; <label>:2061                                    ; preds = %2051
  %2062 = and i32 %2031, 1
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2077, label %2064, !dx.controlflow.hints !72

; <label>:2064                                    ; preds = %2061
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2067 = fmul fast float %2059, %2066
  %2068 = fmul fast float %2060, %2066
  %2069 = fptoui float %2067 to i32
  %2070 = fptoui float %2068 to i32
  %2071 = fptoui float %2056 to i32
  %2072 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2069, i32 %2070, i32 %2071, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  br label %2083

; <label>:2077                                    ; preds = %2061
  %2078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2059, float %2060, float %2056, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2079 = extractvalue %dx.types.ResRet.f32 %2078, 0
  %2080 = extractvalue %dx.types.ResRet.f32 %2078, 1
  %2081 = extractvalue %dx.types.ResRet.f32 %2078, 2
  %2082 = extractvalue %dx.types.ResRet.f32 %2078, 3
  br label %2083

; <label>:2083                                    ; preds = %2077, %2064
  %2084 = phi float [ %2073, %2064 ], [ %2079, %2077 ]
  %2085 = phi float [ %2074, %2064 ], [ %2080, %2077 ]
  %2086 = phi float [ %2075, %2064 ], [ %2081, %2077 ]
  %2087 = phi float [ %2076, %2064 ], [ %2082, %2077 ]
  %2088 = fcmp fast ogt float %2057, 0.000000e+00
  br i1 %2088, label %2089, label %2159, !dx.controlflow.hints !73

; <label>:2089                                    ; preds = %2083
  %2090 = and i32 %2031, 2
  %2091 = icmp eq i32 %2090, 0
  %2092 = fadd fast float %2056, 1.000000e+00
  %2093 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2094 = call float @dx.op.unary.f32(i32 22, float %2028)  ; Frc(value)
  br i1 %2091, label %2108, label %2095, !dx.controlflow.hints !74

; <label>:2095                                    ; preds = %2089
  %2096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.f32 %2096, 0
  %2098 = fmul fast float %2093, %2097
  %2099 = fmul fast float %2094, %2097
  %2100 = fptoui float %2098 to i32
  %2101 = fptoui float %2099 to i32
  %2102 = fptoui float %2092 to i32
  %2103 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2100, i32 %2101, i32 %2102, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.ResRet.f32 %2103, 3
  br label %2114

; <label>:2108                                    ; preds = %2089
  %2109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2093, float %2094, float %2092, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.ResRet.f32 %2109, 1
  %2112 = extractvalue %dx.types.ResRet.f32 %2109, 2
  %2113 = extractvalue %dx.types.ResRet.f32 %2109, 3
  br label %2114

; <label>:2114                                    ; preds = %2108, %2095
  %2115 = phi float [ %2104, %2095 ], [ %2110, %2108 ]
  %2116 = phi float [ %2105, %2095 ], [ %2111, %2108 ]
  %2117 = phi float [ %2106, %2095 ], [ %2112, %2108 ]
  %2118 = phi float [ %2107, %2095 ], [ %2113, %2108 ]
  %2119 = fsub fast float %2115, %2084
  %2120 = fsub fast float %2116, %2085
  %2121 = fsub fast float %2117, %2086
  %2122 = fsub fast float %2118, %2087
  %2123 = fmul fast float %2119, %2057
  %2124 = fmul fast float %2120, %2057
  %2125 = fmul fast float %2121, %2057
  %2126 = fmul fast float %2122, %2057
  %2127 = fadd fast float %2123, %2084
  %2128 = fadd fast float %2124, %2085
  %2129 = fadd fast float %2125, %2086
  %2130 = fadd fast float %2126, %2087
  br label %2159

; <label>:2131                                    ; preds = %2051
  %2132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2059, float %2060, float %2056, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.ResRet.f32 %2132, 1
  %2135 = extractvalue %dx.types.ResRet.f32 %2132, 2
  %2136 = extractvalue %dx.types.ResRet.f32 %2132, 3
  %2137 = fcmp fast ogt float %2057, 0.000000e+00
  br i1 %2137, label %2138, label %2159, !dx.controlflow.hints !75

; <label>:2138                                    ; preds = %2131
  %2139 = fadd fast float %2056, 1.000000e+00
  %2140 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2141 = call float @dx.op.unary.f32(i32 22, float %2028)  ; Frc(value)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2140, float %2141, float %2139, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = extractvalue %dx.types.ResRet.f32 %2142, 3
  %2147 = fsub fast float %2143, %2133
  %2148 = fsub fast float %2144, %2134
  %2149 = fsub fast float %2145, %2135
  %2150 = fsub fast float %2146, %2136
  %2151 = fmul fast float %2147, %2057
  %2152 = fmul fast float %2148, %2057
  %2153 = fmul fast float %2149, %2057
  %2154 = fmul fast float %2150, %2057
  %2155 = fadd fast float %2151, %2133
  %2156 = fadd fast float %2152, %2134
  %2157 = fadd fast float %2153, %2135
  %2158 = fadd fast float %2154, %2136
  br label %2159

; <label>:2159                                    ; preds = %2138, %2131, %2114, %2083
  %2160 = phi float [ %2127, %2114 ], [ %2084, %2083 ], [ %2155, %2138 ], [ %2133, %2131 ]
  %2161 = phi float [ %2128, %2114 ], [ %2085, %2083 ], [ %2156, %2138 ], [ %2134, %2131 ]
  %2162 = phi float [ %2129, %2114 ], [ %2086, %2083 ], [ %2157, %2138 ], [ %2135, %2131 ]
  %2163 = phi float [ %2130, %2114 ], [ %2087, %2083 ], [ %2158, %2138 ], [ %2136, %2131 ]
  %2164 = fadd fast float %2160, -5.000000e-01
  %2165 = fadd fast float %2162, -5.000000e-01
  %2166 = fmul fast float %2164, 0xBFD5555560000000
  %2167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2165, float %2166)  ; FMad(a,b,c)
  %2168 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2161, float 0.000000e+00)  ; FMad(a,b,c)
  %2169 = fadd fast float %2168, %2163
  %2170 = fmul fast float %2164, -7.500000e-01
  %2171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2165, float %2170)  ; FMad(a,b,c)
  %2172 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2161, float 0.000000e+00)  ; FMad(a,b,c)
  %2173 = fadd fast float %2172, %2163
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.CBufRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2181 = fsub fast float %2177, %2167
  %2182 = fsub fast float %2178, %2169
  %2183 = fsub fast float %2179, %2171
  %2184 = fsub fast float %2180, %2173
  %2185 = fmul fast float %2181, %2175
  %2186 = fmul fast float %2182, %2175
  %2187 = fmul fast float %2183, %2175
  %2188 = fmul fast float %2184, %2175
  %2189 = fadd fast float %2185, %2167
  %2190 = fadd fast float %2186, %2169
  %2191 = fadd fast float %2187, %2171
  %2192 = fadd fast float %2188, %2173
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 536870911
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, %2032
  %2198 = fmul fast float %2196, %2033
  %2199 = fptoui float %2197 to i32
  %2200 = fptoui float %2198 to i32
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = and i32 %2202, 31
  %2204 = lshr i32 %2199, %2203
  %2205 = lshr i32 %2200, %2203
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 31
  %2209 = shl i32 1, %2208
  %2210 = call i32 @dx.op.binary.i32(i32 40, i32 %2209, i32 4)  ; UMin(a,b)
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = extractvalue %dx.types.ResRet.i32 %2211, 1
  %2214 = icmp eq i32 %2210, 0
  br i1 %2214, label %2256, label %2215

; <label>:2215                                    ; preds = %2159
  br label %2216

; <label>:2216                                    ; preds = %2244, %2215
  %2217 = phi i32 [ %2247, %2244 ], [ 0, %2215 ]
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = lshr i32 %2219, 16
  %2221 = and i32 %2220, 31
  %2222 = shl i32 %2205, %2221
  %2223 = add i32 %2222, %2204
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 31
  %2227 = shl i32 %2223, %2226
  %2228 = add i32 %2227, %2217
  %2229 = shl i32 %2228, 2
  %2230 = add i32 %2229, 32
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = icmp slt i32 %2232, 0
  %2234 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2217
  %2235 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2217
  %2236 = bitcast float* %2234 to i32*
  %2237 = bitcast float* %2235 to i32*
  br i1 %2233, label %2238, label %2244, !dx.controlflow.hints !76

; <label>:2238                                    ; preds = %2216
  %2239 = and i32 %2232, 1073741823
  %2240 = add nuw nsw i32 %2239, 20
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = extractvalue %dx.types.ResRet.i32 %2241, 1
  br label %2244

; <label>:2244                                    ; preds = %2238, %2216
  %2245 = phi i32 [ %2242, %2238 ], [ %2212, %2216 ]
  %2246 = phi i32 [ %2243, %2238 ], [ %2213, %2216 ]
  store i32 %2245, i32* %2236, align 4
  store i32 %2246, i32* %2237, align 4
  %2247 = add nuw i32 %2217, 1
  %2248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.i32 %2248, 2
  %2250 = icmp eq i32 %2249, 0
  %2251 = icmp ugt i32 %2232, -1073741825
  %2252 = and i1 %2251, %2250
  %2253 = icmp ult i32 %2247, %2210
  %2254 = and i1 %2252, %2253
  br i1 %2254, label %2216, label %2255, !dx.controlflow.hints !77

; <label>:2255                                    ; preds = %2244
  br label %2256

; <label>:2256                                    ; preds = %2255, %2159
  %2257 = phi i32 [ 0, %2159 ], [ %2247, %2255 ]
  %2258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.f32 %2258, 2
  %2260 = fptoui float %2259 to i32
  %2261 = icmp eq i32 %2260, 0
  br i1 %2261, label %2313, label %2262

; <label>:2262                                    ; preds = %2256
  br label %2263

; <label>:2263                                    ; preds = %2308, %2262
  %2264 = phi i32 [ %2309, %2308 ], [ %2257, %2262 ]
  %2265 = phi i32 [ %2310, %2308 ], [ 0, %2262 ]
  %2266 = lshr i32 %2265, 2
  %2267 = and i32 %2265, 3
  %2268 = add nuw nsw i32 %2266, 83
  %2269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %2268)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.i32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.i32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.i32 %2269, 2
  %2273 = extractvalue %dx.types.CBufRet.i32 %2269, 3
  %2274 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %2270, i32* %2274, align 4
  %2275 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %2271, i32* %2275, align 4
  %2276 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %2272, i32* %2276, align 4
  %2277 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %2273, i32* %2277, align 4
  %2278 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 %2267
  %2279 = load i32, i32* %2278, align 4, !tbaa !78
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = lshr i32 %2281, 16
  %2283 = and i32 %2282, 31
  %2284 = shl i32 %2205, %2283
  %2285 = add i32 %2284, %2204
  %2286 = shl i32 %2285, 2
  %2287 = add i32 %2286, %2279
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2308, label %2291, !dx.controlflow.hints !80

; <label>:2291                                    ; preds = %2263
  %2292 = icmp slt i32 %2289, 0
  %2293 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2264
  %2294 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2264
  %2295 = bitcast float* %2293 to i32*
  %2296 = bitcast float* %2294 to i32*
  br i1 %2292, label %2297, label %2304, !dx.controlflow.hints !81

; <label>:2297                                    ; preds = %2291
  %2298 = and i32 %2289, 1073741823
  %2299 = add i32 %2279, 20
  %2300 = add i32 %2299, %2298
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = extractvalue %dx.types.ResRet.i32 %2301, 1
  br label %2304

; <label>:2304                                    ; preds = %2297, %2291
  %2305 = phi i32 [ %2302, %2297 ], [ %2212, %2291 ]
  %2306 = phi i32 [ %2303, %2297 ], [ %2213, %2291 ]
  store i32 %2305, i32* %2295, align 4
  store i32 %2306, i32* %2296, align 4
  %2307 = add i32 %2264, 1
  br label %2308

; <label>:2308                                    ; preds = %2304, %2263
  %2309 = phi i32 [ %2264, %2263 ], [ %2307, %2304 ]
  %2310 = add nuw i32 %2265, 1
  %2311 = icmp eq i32 %2310, %2260
  br i1 %2311, label %2312, label %2263

; <label>:2312                                    ; preds = %2308
  br label %2313

; <label>:2313                                    ; preds = %2312, %2256
  %2314 = phi i32 [ %2257, %2256 ], [ %2309, %2312 ]
  %2315 = icmp eq i32 %2314, 1
  %2316 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  %2317 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  br i1 %2315, label %2318, label %2321, !dx.controlflow.hints !82

; <label>:2318                                    ; preds = %2313
  %2319 = load float, float* %2316, align 4
  %2320 = load float, float* %2317, align 4
  br label %2348

; <label>:2321                                    ; preds = %2313
  %2322 = load float, float* %2316, align 4
  %2323 = load float, float* %2317, align 4
  %2324 = fdiv fast float 1.000000e+00, %2323
  %2325 = fsub fast float %2322, %2324
  %2326 = icmp ugt i32 %2314, 1
  br i1 %2326, label %2327, label %2343

; <label>:2327                                    ; preds = %2321
  br label %2328

; <label>:2328                                    ; preds = %2328, %2327
  %2329 = phi float [ %2338, %2328 ], [ %2325, %2327 ]
  %2330 = phi float [ %2339, %2328 ], [ %2322, %2327 ]
  %2331 = phi i32 [ %2340, %2328 ], [ 1, %2327 ]
  %2332 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2331
  %2333 = load float, float* %2332, align 4
  %2334 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2331
  %2335 = load float, float* %2334, align 4
  %2336 = fdiv fast float 1.000000e+00, %2335
  %2337 = fsub fast float %2333, %2336
  %2338 = call float @dx.op.binary.f32(i32 36, float %2329, float %2337)  ; FMin(a,b)
  %2339 = call float @dx.op.binary.f32(i32 35, float %2330, float %2333)  ; FMax(a,b)
  %2340 = add nuw i32 %2331, 1
  %2341 = icmp eq i32 %2340, %2314
  br i1 %2341, label %2342, label %2328

; <label>:2342                                    ; preds = %2328
  br label %2343

; <label>:2343                                    ; preds = %2342, %2321
  %2344 = phi float [ %2325, %2321 ], [ %2338, %2342 ]
  %2345 = phi float [ %2322, %2321 ], [ %2339, %2342 ]
  %2346 = fsub fast float %2345, %2344
  %2347 = fdiv fast float 1.000000e+00, %2346
  br label %2348

; <label>:2348                                    ; preds = %2343, %2318
  %2349 = phi float [ %2319, %2318 ], [ %2345, %2343 ]
  %2350 = phi float [ %2320, %2318 ], [ %2347, %2343 ]
  %2351 = fadd fast float %1779, %2349
  %2352 = fmul fast float %2351, %2350
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2354 = fmul fast float %2353, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2189, %2189
  %2357 = fsub fast float %2190, %2356
  %2358 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2357)  ; FMax(a,b)
  %2359 = fdiv fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2190, %2189
  %2361 = fsub fast float %2191, %2360
  %2362 = fsub fast float %2355, %2189
  %2363 = fmul fast float %2355, %2355
  %2364 = fsub fast float %2363, %2190
  %2365 = fmul fast float %2359, %2361
  %2366 = fmul fast float %2365, %2362
  %2367 = fsub fast float %2364, %2366
  %2368 = fmul fast float %2190, %2190
  %2369 = fsub fast float %2192, %2368
  %2370 = fmul fast float %2361, %2361
  %2371 = fmul fast float %2370, %2359
  %2372 = fsub fast float %2369, %2371
  %2373 = fdiv fast float %2367, %2372
  %2374 = fmul fast float %2373, %2361
  %2375 = fsub fast float %2362, %2374
  %2376 = fmul fast float %2375, %2359
  %2377 = fmul fast float %2376, %2189
  %2378 = fsub fast float 1.000000e+00, %2377
  %2379 = fmul fast float %2373, %2190
  %2380 = fsub fast float %2378, %2379
  %2381 = fmul fast float %2376, %2376
  %2382 = fmul fast float %2373, 4.000000e+00
  %2383 = fmul fast float %2382, %2380
  %2384 = fsub fast float %2381, %2383
  %2385 = call float @dx.op.unary.f32(i32 24, float %2384)  ; Sqrt(value)
  %2386 = fcmp fast oge float %2376, 0.000000e+00
  %2387 = fsub fast float -0.000000e+00, %2385
  %2388 = select i1 %2386, float %2387, float %2385
  %2389 = fsub fast float %2388, %2376
  %2390 = fdiv fast float %2389, %2373
  %2391 = fdiv fast float %2380, %2389
  %2392 = fmul fast float %2390, 5.000000e-01
  %2393 = fmul fast float %2391, 2.000000e+00
  %2394 = select i1 %2386, float %2392, float %2393
  %2395 = select i1 %2386, float %2393, float %2392
  %2396 = call float @dx.op.binary.f32(i32 35, float %2394, float %2395)  ; FMax(a,b)
  %2397 = call float @dx.op.binary.f32(i32 36, float %2394, float %2395)  ; FMin(a,b)
  %2398 = fcmp fast ogt float %2355, %2396
  %2399 = fsub fast float %2355, %2397
  %2400 = fsub fast float %2355, %2396
  %2401 = fsub fast float %2396, %2397
  %2402 = select i1 %2398, float %2400, float %2401
  %2403 = fmul float %2399, %2402
  %2404 = select i1 %2398, float %2397, float %2355
  %2405 = fcmp fast ogt float %2355, %2397
  %2406 = fmul fast float %2404, %2396
  %2407 = fadd fast float %2404, %2396
  %2408 = fmul fast float %2407, %2189
  %2409 = fadd fast float %2406, %2190
  %2410 = fsub fast float %2409, %2408
  %2411 = fdiv fast float %2410, %2403
  %2412 = select i1 %2405, float %2411, float 0.000000e+00
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = select i1 %2398, float %2413, float %2412
  %2415 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2174, 3
  %2417 = fmul fast float %2416, %2415
  %2418 = fsub fast float 1.000000e+00, %2417
  br label %2419

; <label>:2419                                    ; preds = %2348, %2026, %1752, %1710
  %2420 = phi float [ 1.000000e+00, %1710 ], [ %2418, %2348 ], [ 1.000000e+00, %1752 ], [ 1.000000e+00, %2026 ]
  %2421 = fcmp fast ogt float %1745, 0.000000e+00
  br i1 %2421, label %2422, label %2590, !dx.controlflow.hints !88

; <label>:2422                                    ; preds = %2419
  %2423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2424 = extractvalue %dx.types.CBufRet.f32 %2423, 2
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2427 = fmul fast float %2424, %192
  %2428 = fadd fast float %2426, %219
  %2429 = fadd fast float %2428, %2427
  %2430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.f32 %2430, 2
  %2432 = extractvalue %dx.types.CBufRet.f32 %2430, 3
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2435 = call float @dx.op.binary.f32(i32 35, float %2429, float 0.000000e+00)  ; FMax(a,b)
  %2436 = fadd fast float %2435, 0x3F10000000000000
  %2437 = fcmp fast oeq float %2434, 0.000000e+00
  br i1 %2437, label %2438, label %2505, !dx.controlflow.hints !52

; <label>:2438                                    ; preds = %2422
  %2439 = extractvalue %dx.types.CBufRet.f32 %2430, 1
  %2440 = extractvalue %dx.types.CBufRet.f32 %2430, 0
  %2441 = fmul fast float %2440, %1641
  %2442 = fmul fast float %2439, %1642
  %2443 = fadd fast float %2441, 5.000000e-01
  %2444 = call float @dx.op.unary.f32(i32 27, float %2443)  ; Round_ni(value)
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = call float @dx.op.unary.f32(i32 27, float %2445)  ; Round_ni(value)
  %2447 = fsub fast float %2443, %2444
  %2448 = fsub fast float %2445, %2446
  %2449 = fadd fast float %2444, -5.000000e-01
  %2450 = fadd fast float %2446, -5.000000e-01
  %2451 = fmul fast float %2447, 2.000000e+00
  %2452 = fsub fast float 3.000000e+00, %2451
  %2453 = fadd fast float %2451, 1.000000e+00
  %2454 = fsub fast float 2.000000e+00, %2447
  %2455 = bitcast float %2452 to i32
  %2456 = sub nsw i32 2129859010, %2455
  %2457 = bitcast i32 %2456 to float
  %2458 = fmul fast float %2457, %2454
  %2459 = fadd fast float %2458, -1.000000e+00
  %2460 = bitcast float %2453 to i32
  %2461 = sub nsw i32 2129859010, %2460
  %2462 = bitcast i32 %2461 to float
  %2463 = fmul fast float %2462, %2447
  %2464 = fadd fast float %2463, 1.000000e+00
  %2465 = fmul fast float %2448, 2.000000e+00
  %2466 = fsub fast float 3.000000e+00, %2465
  %2467 = fadd fast float %2465, 1.000000e+00
  %2468 = fsub fast float 2.000000e+00, %2448
  %2469 = bitcast float %2466 to i32
  %2470 = sub nsw i32 2129859010, %2469
  %2471 = bitcast i32 %2470 to float
  %2472 = fmul fast float %2471, %2468
  %2473 = fadd fast float %2472, -1.000000e+00
  %2474 = bitcast float %2467 to i32
  %2475 = sub nsw i32 2129859010, %2474
  %2476 = bitcast i32 %2475 to float
  %2477 = fmul fast float %2476, %2448
  %2478 = fadd fast float %2477, 1.000000e+00
  %2479 = fadd fast float %2459, %2449
  %2480 = fmul fast float %2479, %2431
  %2481 = fadd fast float %2473, %2450
  %2482 = fmul fast float %2481, %2432
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %2480, float %2482, float undef, float undef, i32 0, i32 0, i32 undef, float %2436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = fmul fast float %2484, %2452
  %2486 = fadd fast float %2464, %2449
  %2487 = fmul fast float %2486, %2431
  %2488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %2487, float %2482, float undef, float undef, i32 0, i32 0, i32 undef, float %2436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = fmul fast float %2489, %2453
  %2491 = fadd fast float %2478, %2450
  %2492 = fmul fast float %2491, %2432
  %2493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %2480, float %2492, float undef, float undef, i32 0, i32 0, i32 undef, float %2436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2494 = extractvalue %dx.types.ResRet.f32 %2493, 0
  %2495 = fmul fast float %2494, %2452
  %2496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %2487, float %2492, float undef, float undef, i32 0, i32 0, i32 undef, float %2436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = fmul fast float %2497, %2453
  %2499 = fadd fast float %2498, %2495
  %2500 = fmul fast float %2499, %2467
  %2501 = fadd fast float %2490, %2485
  %2502 = fmul fast float %2501, %2466
  %2503 = fadd fast float %2502, %2500
  %2504 = fmul fast float %2503, 6.250000e-02
  br label %2590

; <label>:2505                                    ; preds = %2422
  %2506 = fmul fast float %230, 0x401921FB60000000
  %2507 = call float @dx.op.unary.f32(i32 13, float %2506)  ; Sin(value)
  %2508 = call float @dx.op.unary.f32(i32 12, float %2506)  ; Cos(value)
  %2509 = fsub fast float -0.000000e+00, %2507
  br label %2510

; <label>:2510                                    ; preds = %2559, %2505
  %2511 = phi float [ 0.000000e+00, %2505 ], [ %2554, %2559 ]
  %2512 = phi float [ 0.000000e+00, %2505 ], [ %2556, %2559 ]
  %2513 = phi i32 [ 0, %2505 ], [ %2560, %2559 ]
  %2514 = mul i32 %2513, 2
  %2515 = add i32 0, %2514
  %2516 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2515
  %2517 = load float, float* %2516, align 4
  %2518 = mul i32 %2513, 2
  %2519 = add i32 1, %2518
  %2520 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2519
  %2521 = load float, float* %2520, align 4
  %2522 = fmul fast float %2517, %2508
  %2523 = call float @dx.op.tertiary.f32(i32 46, float %2521, float %2509, float %2522)  ; FMad(a,b,c)
  %2524 = fmul fast float %2517, %2507
  %2525 = call float @dx.op.tertiary.f32(i32 46, float %2521, float %2508, float %2524)  ; FMad(a,b,c)
  %2526 = fmul fast float %2523, %2434
  %2527 = fmul fast float %2525, %2434
  %2528 = fadd fast float %2526, %1641
  %2529 = fadd fast float %2527, %1642
  %2530 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %29, float %2528, float %2529, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = extractvalue %dx.types.ResRet.f32 %2530, 3
  %2535 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %2531, float* %2535, align 4
  %2536 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %2532, float* %2536, align 4
  %2537 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %2533, float* %2537, align 4
  %2538 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %2534, float* %2538, align 4
  %2539 = fsub fast float %2531, %2436
  %2540 = fcmp fast olt float %2539, 0.000000e+00
  %2541 = select i1 %2540, float 0.000000e+00, float 1.000000e+00
  %2542 = fadd fast float %2541, %2511
  %2543 = fmul fast float %2541, %2539
  %2544 = fadd fast float %2543, %2512
  br label %2545

; <label>:2545                                    ; preds = %2545, %2510
  %2546 = phi i32 [ 1, %2510 ], [ %2557, %2545 ]
  %2547 = phi float [ %2544, %2510 ], [ %2556, %2545 ]
  %2548 = phi float [ %2542, %2510 ], [ %2554, %2545 ]
  %2549 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %2546
  %2550 = load float, float* %2549, align 4, !tbaa !53
  %2551 = fsub fast float %2550, %2436
  %2552 = fcmp fast olt float %2551, 0.000000e+00
  %2553 = select i1 %2552, float 0.000000e+00, float 1.000000e+00
  %2554 = fadd fast float %2553, %2548
  %2555 = fmul fast float %2553, %2551
  %2556 = fadd fast float %2555, %2547
  %2557 = add nuw nsw i32 %2546, 1
  %2558 = icmp eq i32 %2557, 4
  br i1 %2558, label %2559, label %2545, !llvm.loop !57

; <label>:2559                                    ; preds = %2545
  %2560 = add nuw nsw i32 %2513, 1
  %2561 = icmp eq i32 %2560, 8
  br i1 %2561, label %2562, label %2510, !llvm.loop !59

; <label>:2562                                    ; preds = %2559
  %2563 = fdiv fast float 1.000000e+00, %2554
  %2564 = fmul fast float %2563, %2556
  %2565 = fdiv fast float 1.000000e+00, %2436
  %2566 = fmul fast float %2564, %2565
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = call float @dx.op.binary.f32(i32 35, float %2567, float 0.000000e+00)  ; FMax(a,b)
  %2569 = fmul fast float %2554, 3.125000e-02
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2571 = fmul fast float %2570, 2.000000e+00
  %2572 = fadd fast float %2571, -1.000000e+00
  %2573 = fcmp fast ogt float %2572, 0.000000e+00
  %2574 = fcmp fast olt float %2572, 0.000000e+00
  %2575 = zext i1 %2573 to i32
  %2576 = zext i1 %2574 to i32
  %2577 = sub nsw i32 %2575, %2576
  %2578 = sitofp i32 %2577 to float
  %2579 = fmul fast float %2578, %2572
  %2580 = fsub fast float 1.000000e+00, %2579
  %2581 = fmul fast float %2580, %2580
  %2582 = fmul fast float %2581, %2580
  %2583 = fsub fast float %2580, %2582
  %2584 = fmul fast float %2583, %2568
  %2585 = fsub fast float 1.000000e+00, %2582
  %2586 = fsub fast float %2585, %2584
  %2587 = fmul fast float %2578, 5.000000e-01
  %2588 = fmul fast float %2587, %2586
  %2589 = fsub fast float 5.000000e-01, %2588
  br label %2590

; <label>:2590                                    ; preds = %2562, %2438, %2419
  %2591 = phi float [ 1.000000e+00, %2419 ], [ %2504, %2438 ], [ %2589, %2562 ]
  %2592 = fcmp fast ogt float %1743, 0.000000e+00
  br i1 %2592, label %2593, label %2761, !dx.controlflow.hints !89

; <label>:2593                                    ; preds = %2590
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2598 = fmul fast float %2595, %192
  %2599 = fadd fast float %2597, %219
  %2600 = fadd fast float %2599, %2598
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  %2604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2605 = extractvalue %dx.types.CBufRet.f32 %2604, 1
  %2606 = call float @dx.op.binary.f32(i32 35, float %2600, float 0.000000e+00)  ; FMax(a,b)
  %2607 = fadd fast float %2606, 0x3F10000000000000
  %2608 = fcmp fast oeq float %2605, 0.000000e+00
  br i1 %2608, label %2609, label %2676, !dx.controlflow.hints !52

; <label>:2609                                    ; preds = %2593
  %2610 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2611 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2612 = fmul fast float %2611, %1633
  %2613 = fmul fast float %2610, %1634
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = call float @dx.op.unary.f32(i32 27, float %2614)  ; Round_ni(value)
  %2616 = fadd fast float %2613, 5.000000e-01
  %2617 = call float @dx.op.unary.f32(i32 27, float %2616)  ; Round_ni(value)
  %2618 = fsub fast float %2614, %2615
  %2619 = fsub fast float %2616, %2617
  %2620 = fadd fast float %2615, -5.000000e-01
  %2621 = fadd fast float %2617, -5.000000e-01
  %2622 = fmul fast float %2618, 2.000000e+00
  %2623 = fsub fast float 3.000000e+00, %2622
  %2624 = fadd fast float %2622, 1.000000e+00
  %2625 = fsub fast float 2.000000e+00, %2618
  %2626 = bitcast float %2623 to i32
  %2627 = sub nsw i32 2129859010, %2626
  %2628 = bitcast i32 %2627 to float
  %2629 = fmul fast float %2628, %2625
  %2630 = fadd fast float %2629, -1.000000e+00
  %2631 = bitcast float %2624 to i32
  %2632 = sub nsw i32 2129859010, %2631
  %2633 = bitcast i32 %2632 to float
  %2634 = fmul fast float %2633, %2618
  %2635 = fadd fast float %2634, 1.000000e+00
  %2636 = fmul fast float %2619, 2.000000e+00
  %2637 = fsub fast float 3.000000e+00, %2636
  %2638 = fadd fast float %2636, 1.000000e+00
  %2639 = fsub fast float 2.000000e+00, %2619
  %2640 = bitcast float %2637 to i32
  %2641 = sub nsw i32 2129859010, %2640
  %2642 = bitcast i32 %2641 to float
  %2643 = fmul fast float %2642, %2639
  %2644 = fadd fast float %2643, -1.000000e+00
  %2645 = bitcast float %2638 to i32
  %2646 = sub nsw i32 2129859010, %2645
  %2647 = bitcast i32 %2646 to float
  %2648 = fmul fast float %2647, %2619
  %2649 = fadd fast float %2648, 1.000000e+00
  %2650 = fadd fast float %2630, %2620
  %2651 = fmul fast float %2650, %2602
  %2652 = fadd fast float %2644, %2621
  %2653 = fmul fast float %2652, %2603
  %2654 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %2651, float %2653, float undef, float undef, i32 0, i32 0, i32 undef, float %2607)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2655 = extractvalue %dx.types.ResRet.f32 %2654, 0
  %2656 = fmul fast float %2655, %2623
  %2657 = fadd fast float %2635, %2620
  %2658 = fmul fast float %2657, %2602
  %2659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %2658, float %2653, float undef, float undef, i32 0, i32 0, i32 undef, float %2607)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2661 = fmul fast float %2660, %2624
  %2662 = fadd fast float %2649, %2621
  %2663 = fmul fast float %2662, %2603
  %2664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %2651, float %2663, float undef, float undef, i32 0, i32 0, i32 undef, float %2607)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = fmul fast float %2665, %2623
  %2667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %2658, float %2663, float undef, float undef, i32 0, i32 0, i32 undef, float %2607)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = fmul fast float %2668, %2624
  %2670 = fadd fast float %2669, %2666
  %2671 = fmul fast float %2670, %2638
  %2672 = fadd fast float %2661, %2656
  %2673 = fmul fast float %2672, %2637
  %2674 = fadd fast float %2673, %2671
  %2675 = fmul fast float %2674, 6.250000e-02
  br label %2761

; <label>:2676                                    ; preds = %2593
  %2677 = fmul fast float %230, 0x401921FB60000000
  %2678 = call float @dx.op.unary.f32(i32 13, float %2677)  ; Sin(value)
  %2679 = call float @dx.op.unary.f32(i32 12, float %2677)  ; Cos(value)
  %2680 = fsub fast float -0.000000e+00, %2678
  br label %2681

; <label>:2681                                    ; preds = %2730, %2676
  %2682 = phi float [ 0.000000e+00, %2676 ], [ %2725, %2730 ]
  %2683 = phi float [ 0.000000e+00, %2676 ], [ %2727, %2730 ]
  %2684 = phi i32 [ 0, %2676 ], [ %2731, %2730 ]
  %2685 = mul i32 %2684, 2
  %2686 = add i32 0, %2685
  %2687 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2686
  %2688 = load float, float* %2687, align 4
  %2689 = mul i32 %2684, 2
  %2690 = add i32 1, %2689
  %2691 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2690
  %2692 = load float, float* %2691, align 4
  %2693 = fmul fast float %2688, %2679
  %2694 = call float @dx.op.tertiary.f32(i32 46, float %2692, float %2680, float %2693)  ; FMad(a,b,c)
  %2695 = fmul fast float %2688, %2678
  %2696 = call float @dx.op.tertiary.f32(i32 46, float %2692, float %2679, float %2695)  ; FMad(a,b,c)
  %2697 = fmul fast float %2694, %2605
  %2698 = fmul fast float %2696, %2605
  %2699 = fadd fast float %2697, %1633
  %2700 = fadd fast float %2698, %1634
  %2701 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %29, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.ResRet.f32 %2701, 3
  %2706 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %2702, float* %2706, align 4
  %2707 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %2703, float* %2707, align 4
  %2708 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %2704, float* %2708, align 4
  %2709 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %2705, float* %2709, align 4
  %2710 = fsub fast float %2702, %2607
  %2711 = fcmp fast olt float %2710, 0.000000e+00
  %2712 = select i1 %2711, float 0.000000e+00, float 1.000000e+00
  %2713 = fadd fast float %2712, %2682
  %2714 = fmul fast float %2712, %2710
  %2715 = fadd fast float %2714, %2683
  br label %2716

; <label>:2716                                    ; preds = %2716, %2681
  %2717 = phi i32 [ 1, %2681 ], [ %2728, %2716 ]
  %2718 = phi float [ %2715, %2681 ], [ %2727, %2716 ]
  %2719 = phi float [ %2713, %2681 ], [ %2725, %2716 ]
  %2720 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %2717
  %2721 = load float, float* %2720, align 4, !tbaa !53
  %2722 = fsub fast float %2721, %2607
  %2723 = fcmp fast olt float %2722, 0.000000e+00
  %2724 = select i1 %2723, float 0.000000e+00, float 1.000000e+00
  %2725 = fadd fast float %2724, %2719
  %2726 = fmul fast float %2724, %2722
  %2727 = fadd fast float %2726, %2718
  %2728 = add nuw nsw i32 %2717, 1
  %2729 = icmp eq i32 %2728, 4
  br i1 %2729, label %2730, label %2716, !llvm.loop !57

; <label>:2730                                    ; preds = %2716
  %2731 = add nuw nsw i32 %2684, 1
  %2732 = icmp eq i32 %2731, 8
  br i1 %2732, label %2733, label %2681, !llvm.loop !59

; <label>:2733                                    ; preds = %2730
  %2734 = fdiv fast float 1.000000e+00, %2725
  %2735 = fmul fast float %2734, %2727
  %2736 = fdiv fast float 1.000000e+00, %2607
  %2737 = fmul fast float %2735, %2736
  %2738 = call float @dx.op.unary.f32(i32 7, float %2737)  ; Saturate(value)
  %2739 = call float @dx.op.binary.f32(i32 35, float %2738, float 0.000000e+00)  ; FMax(a,b)
  %2740 = fmul fast float %2725, 3.125000e-02
  %2741 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2742 = fmul fast float %2741, 2.000000e+00
  %2743 = fadd fast float %2742, -1.000000e+00
  %2744 = fcmp fast ogt float %2743, 0.000000e+00
  %2745 = fcmp fast olt float %2743, 0.000000e+00
  %2746 = zext i1 %2744 to i32
  %2747 = zext i1 %2745 to i32
  %2748 = sub nsw i32 %2746, %2747
  %2749 = sitofp i32 %2748 to float
  %2750 = fmul fast float %2749, %2743
  %2751 = fsub fast float 1.000000e+00, %2750
  %2752 = fmul fast float %2751, %2751
  %2753 = fmul fast float %2752, %2751
  %2754 = fsub fast float %2751, %2753
  %2755 = fmul fast float %2754, %2739
  %2756 = fsub fast float 1.000000e+00, %2753
  %2757 = fsub fast float %2756, %2755
  %2758 = fmul fast float %2749, 5.000000e-01
  %2759 = fmul fast float %2758, %2757
  %2760 = fsub fast float 5.000000e-01, %2759
  br label %2761

; <label>:2761                                    ; preds = %2733, %2609, %2590
  %2762 = phi float [ 1.000000e+00, %2590 ], [ %2675, %2609 ], [ %2760, %2733 ]
  %2763 = fcmp fast ogt float %1742, 0.000000e+00
  br i1 %2763, label %2764, label %3086, !dx.controlflow.hints !90

; <label>:2764                                    ; preds = %2761
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 0
  %2769 = fmul fast float %2766, %192
  %2770 = fadd fast float %2768, %219
  %2771 = fadd fast float %2770, %2769
  %2772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2773 = extractvalue %dx.types.CBufRet.f32 %2772, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2772, 3
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = call float @dx.op.binary.f32(i32 35, float %2771, float 0.000000e+00)  ; FMax(a,b)
  %2778 = fadd fast float %2777, 0x3F10000000000000
  %2779 = fcmp fast oeq float %2776, 0.000000e+00
  br i1 %85, label %2780, label %2933, !dx.controlflow.hints !91

; <label>:2780                                    ; preds = %2764
  br i1 %2779, label %2781, label %2848, !dx.controlflow.hints !52

; <label>:2781                                    ; preds = %2780
  %2782 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2784 = fmul fast float %2783, %211
  %2785 = fmul fast float %2782, %215
  %2786 = fadd fast float %2784, 5.000000e-01
  %2787 = call float @dx.op.unary.f32(i32 27, float %2786)  ; Round_ni(value)
  %2788 = fadd fast float %2785, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 27, float %2788)  ; Round_ni(value)
  %2790 = fsub fast float %2786, %2787
  %2791 = fsub fast float %2788, %2789
  %2792 = fadd fast float %2787, -5.000000e-01
  %2793 = fadd fast float %2789, -5.000000e-01
  %2794 = fmul fast float %2790, 2.000000e+00
  %2795 = fsub fast float 3.000000e+00, %2794
  %2796 = fadd fast float %2794, 1.000000e+00
  %2797 = fsub fast float 2.000000e+00, %2790
  %2798 = bitcast float %2795 to i32
  %2799 = sub nsw i32 2129859010, %2798
  %2800 = bitcast i32 %2799 to float
  %2801 = fmul fast float %2800, %2797
  %2802 = fadd fast float %2801, -1.000000e+00
  %2803 = bitcast float %2796 to i32
  %2804 = sub nsw i32 2129859010, %2803
  %2805 = bitcast i32 %2804 to float
  %2806 = fmul fast float %2805, %2790
  %2807 = fadd fast float %2806, 1.000000e+00
  %2808 = fmul fast float %2791, 2.000000e+00
  %2809 = fsub fast float 3.000000e+00, %2808
  %2810 = fadd fast float %2808, 1.000000e+00
  %2811 = fsub fast float 2.000000e+00, %2791
  %2812 = bitcast float %2809 to i32
  %2813 = sub nsw i32 2129859010, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2814, %2811
  %2816 = fadd fast float %2815, -1.000000e+00
  %2817 = bitcast float %2810 to i32
  %2818 = sub nsw i32 2129859010, %2817
  %2819 = bitcast i32 %2818 to float
  %2820 = fmul fast float %2819, %2791
  %2821 = fadd fast float %2820, 1.000000e+00
  %2822 = fadd fast float %2802, %2792
  %2823 = fmul fast float %2822, %2773
  %2824 = fadd fast float %2816, %2793
  %2825 = fmul fast float %2824, %2774
  %2826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %2823, float %2825, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 0
  %2828 = fmul fast float %2827, %2795
  %2829 = fadd fast float %2807, %2792
  %2830 = fmul fast float %2829, %2773
  %2831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %2830, float %2825, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  %2833 = fmul fast float %2832, %2796
  %2834 = fadd fast float %2821, %2793
  %2835 = fmul fast float %2834, %2774
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %2823, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = fmul fast float %2837, %2795
  %2839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %2830, float %2835, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = fmul fast float %2840, %2796
  %2842 = fadd fast float %2841, %2838
  %2843 = fmul fast float %2842, %2810
  %2844 = fadd fast float %2833, %2828
  %2845 = fmul fast float %2844, %2809
  %2846 = fadd fast float %2845, %2843
  %2847 = fmul fast float %2846, 6.250000e-02
  br label %3086

; <label>:2848                                    ; preds = %2780
  %2849 = fmul fast float %230, 0x401921FB60000000
  %2850 = call float @dx.op.unary.f32(i32 13, float %2849)  ; Sin(value)
  %2851 = call float @dx.op.unary.f32(i32 12, float %2849)  ; Cos(value)
  %2852 = fsub fast float -0.000000e+00, %2850
  br label %2853

; <label>:2853                                    ; preds = %2902, %2848
  %2854 = phi float [ 0.000000e+00, %2848 ], [ %2897, %2902 ]
  %2855 = phi float [ 0.000000e+00, %2848 ], [ %2899, %2902 ]
  %2856 = phi i32 [ 0, %2848 ], [ %2903, %2902 ]
  %2857 = mul i32 %2856, 2
  %2858 = add i32 0, %2857
  %2859 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2858
  %2860 = load float, float* %2859, align 4
  %2861 = mul i32 %2856, 2
  %2862 = add i32 1, %2861
  %2863 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2862
  %2864 = load float, float* %2863, align 4
  %2865 = fmul fast float %2860, %2851
  %2866 = call float @dx.op.tertiary.f32(i32 46, float %2864, float %2852, float %2865)  ; FMad(a,b,c)
  %2867 = fmul fast float %2860, %2850
  %2868 = call float @dx.op.tertiary.f32(i32 46, float %2864, float %2851, float %2867)  ; FMad(a,b,c)
  %2869 = fmul fast float %2866, %2776
  %2870 = fmul fast float %2868, %2776
  %2871 = fadd fast float %2869, %211
  %2872 = fadd fast float %2870, %215
  %2873 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %29, float %2871, float %2872, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = extractvalue %dx.types.ResRet.f32 %2873, 1
  %2876 = extractvalue %dx.types.ResRet.f32 %2873, 2
  %2877 = extractvalue %dx.types.ResRet.f32 %2873, 3
  %2878 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %2874, float* %2878, align 4
  %2879 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %2875, float* %2879, align 4
  %2880 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %2876, float* %2880, align 4
  %2881 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %2877, float* %2881, align 4
  %2882 = fsub fast float %2874, %2778
  %2883 = fcmp fast olt float %2882, 0.000000e+00
  %2884 = select i1 %2883, float 0.000000e+00, float 1.000000e+00
  %2885 = fadd fast float %2884, %2854
  %2886 = fmul fast float %2884, %2882
  %2887 = fadd fast float %2886, %2855
  br label %2888

; <label>:2888                                    ; preds = %2888, %2853
  %2889 = phi i32 [ 1, %2853 ], [ %2900, %2888 ]
  %2890 = phi float [ %2887, %2853 ], [ %2899, %2888 ]
  %2891 = phi float [ %2885, %2853 ], [ %2897, %2888 ]
  %2892 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %2889
  %2893 = load float, float* %2892, align 4, !tbaa !53
  %2894 = fsub fast float %2893, %2778
  %2895 = fcmp fast olt float %2894, 0.000000e+00
  %2896 = select i1 %2895, float 0.000000e+00, float 1.000000e+00
  %2897 = fadd fast float %2896, %2891
  %2898 = fmul fast float %2896, %2894
  %2899 = fadd fast float %2898, %2890
  %2900 = add nuw nsw i32 %2889, 1
  %2901 = icmp eq i32 %2900, 4
  br i1 %2901, label %2902, label %2888, !llvm.loop !57

; <label>:2902                                    ; preds = %2888
  %2903 = add nuw nsw i32 %2856, 1
  %2904 = icmp eq i32 %2903, 8
  br i1 %2904, label %2905, label %2853, !llvm.loop !59

; <label>:2905                                    ; preds = %2902
  %2906 = fdiv fast float 1.000000e+00, %2897
  %2907 = fmul fast float %2906, %2899
  %2908 = fdiv fast float 1.000000e+00, %2778
  %2909 = fmul fast float %2907, %2908
  %2910 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2911 = call float @dx.op.binary.f32(i32 35, float %2910, float 0.000000e+00)  ; FMax(a,b)
  %2912 = fmul fast float %2897, 3.125000e-02
  %2913 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  %2914 = fmul fast float %2913, 2.000000e+00
  %2915 = fadd fast float %2914, -1.000000e+00
  %2916 = fcmp fast ogt float %2915, 0.000000e+00
  %2917 = fcmp fast olt float %2915, 0.000000e+00
  %2918 = zext i1 %2916 to i32
  %2919 = zext i1 %2917 to i32
  %2920 = sub nsw i32 %2918, %2919
  %2921 = sitofp i32 %2920 to float
  %2922 = fmul fast float %2921, %2915
  %2923 = fsub fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2923, %2923
  %2925 = fmul fast float %2924, %2923
  %2926 = fsub fast float %2923, %2925
  %2927 = fmul fast float %2926, %2911
  %2928 = fsub fast float 1.000000e+00, %2925
  %2929 = fsub fast float %2928, %2927
  %2930 = fmul fast float %2921, 5.000000e-01
  %2931 = fmul fast float %2930, %2929
  %2932 = fsub fast float 5.000000e-01, %2931
  br label %3086

; <label>:2933                                    ; preds = %2764
  br i1 %2779, label %2934, label %3001, !dx.controlflow.hints !52

; <label>:2934                                    ; preds = %2933
  %2935 = extractvalue %dx.types.CBufRet.f32 %2772, 1
  %2936 = extractvalue %dx.types.CBufRet.f32 %2772, 0
  %2937 = fmul fast float %2936, %211
  %2938 = fmul fast float %2935, %215
  %2939 = fadd fast float %2937, 5.000000e-01
  %2940 = call float @dx.op.unary.f32(i32 27, float %2939)  ; Round_ni(value)
  %2941 = fadd fast float %2938, 5.000000e-01
  %2942 = call float @dx.op.unary.f32(i32 27, float %2941)  ; Round_ni(value)
  %2943 = fsub fast float %2939, %2940
  %2944 = fsub fast float %2941, %2942
  %2945 = fadd fast float %2940, -5.000000e-01
  %2946 = fadd fast float %2942, -5.000000e-01
  %2947 = fmul fast float %2943, 2.000000e+00
  %2948 = fsub fast float 3.000000e+00, %2947
  %2949 = fadd fast float %2947, 1.000000e+00
  %2950 = fsub fast float 2.000000e+00, %2943
  %2951 = bitcast float %2948 to i32
  %2952 = sub nsw i32 2129859010, %2951
  %2953 = bitcast i32 %2952 to float
  %2954 = fmul fast float %2953, %2950
  %2955 = fadd fast float %2954, -1.000000e+00
  %2956 = bitcast float %2949 to i32
  %2957 = sub nsw i32 2129859010, %2956
  %2958 = bitcast i32 %2957 to float
  %2959 = fmul fast float %2958, %2943
  %2960 = fadd fast float %2959, 1.000000e+00
  %2961 = fmul fast float %2944, 2.000000e+00
  %2962 = fsub fast float 3.000000e+00, %2961
  %2963 = fadd fast float %2961, 1.000000e+00
  %2964 = fsub fast float 2.000000e+00, %2944
  %2965 = bitcast float %2962 to i32
  %2966 = sub nsw i32 2129859010, %2965
  %2967 = bitcast i32 %2966 to float
  %2968 = fmul fast float %2967, %2964
  %2969 = fadd fast float %2968, -1.000000e+00
  %2970 = bitcast float %2963 to i32
  %2971 = sub nsw i32 2129859010, %2970
  %2972 = bitcast i32 %2971 to float
  %2973 = fmul fast float %2972, %2944
  %2974 = fadd fast float %2973, 1.000000e+00
  %2975 = fadd fast float %2955, %2945
  %2976 = fmul fast float %2975, %2773
  %2977 = fadd fast float %2969, %2946
  %2978 = fmul fast float %2977, %2774
  %2979 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %2976, float %2978, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = fmul fast float %2980, %2948
  %2982 = fadd fast float %2960, %2945
  %2983 = fmul fast float %2982, %2773
  %2984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %2983, float %2978, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = fmul fast float %2985, %2949
  %2987 = fadd fast float %2974, %2946
  %2988 = fmul fast float %2987, %2774
  %2989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %2976, float %2988, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = fmul fast float %2990, %2948
  %2992 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %2983, float %2988, float undef, float undef, i32 0, i32 0, i32 undef, float %2778)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = fmul fast float %2993, %2949
  %2995 = fadd fast float %2994, %2991
  %2996 = fmul fast float %2995, %2963
  %2997 = fadd fast float %2986, %2981
  %2998 = fmul fast float %2997, %2962
  %2999 = fadd fast float %2998, %2996
  %3000 = fmul fast float %2999, 6.250000e-02
  br label %3086

; <label>:3001                                    ; preds = %2933
  %3002 = fmul fast float %230, 0x401921FB60000000
  %3003 = call float @dx.op.unary.f32(i32 13, float %3002)  ; Sin(value)
  %3004 = call float @dx.op.unary.f32(i32 12, float %3002)  ; Cos(value)
  %3005 = fsub fast float -0.000000e+00, %3003
  br label %3006

; <label>:3006                                    ; preds = %3055, %3001
  %3007 = phi float [ 0.000000e+00, %3001 ], [ %3050, %3055 ]
  %3008 = phi float [ 0.000000e+00, %3001 ], [ %3052, %3055 ]
  %3009 = phi i32 [ 0, %3001 ], [ %3056, %3055 ]
  %3010 = mul i32 %3009, 2
  %3011 = add i32 0, %3010
  %3012 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3011
  %3013 = load float, float* %3012, align 4
  %3014 = mul i32 %3009, 2
  %3015 = add i32 1, %3014
  %3016 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3015
  %3017 = load float, float* %3016, align 4
  %3018 = fmul fast float %3013, %3004
  %3019 = call float @dx.op.tertiary.f32(i32 46, float %3017, float %3005, float %3018)  ; FMad(a,b,c)
  %3020 = fmul fast float %3013, %3003
  %3021 = call float @dx.op.tertiary.f32(i32 46, float %3017, float %3004, float %3020)  ; FMad(a,b,c)
  %3022 = fmul fast float %3019, %2776
  %3023 = fmul fast float %3021, %2776
  %3024 = fadd fast float %3022, %211
  %3025 = fadd fast float %3023, %215
  %3026 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %29, float %3024, float %3025, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = extractvalue %dx.types.ResRet.f32 %3026, 3
  %3031 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 0
  store float %3027, float* %3031, align 4
  %3032 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 1
  store float %3028, float* %3032, align 4
  %3033 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 2
  store float %3029, float* %3033, align 4
  %3034 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 3
  store float %3030, float* %3034, align 4
  %3035 = fsub fast float %3027, %2778
  %3036 = fcmp fast olt float %3035, 0.000000e+00
  %3037 = select i1 %3036, float 0.000000e+00, float 1.000000e+00
  %3038 = fadd fast float %3037, %3007
  %3039 = fmul fast float %3037, %3035
  %3040 = fadd fast float %3039, %3008
  br label %3041

; <label>:3041                                    ; preds = %3041, %3006
  %3042 = phi i32 [ 1, %3006 ], [ %3053, %3041 ]
  %3043 = phi float [ %3040, %3006 ], [ %3052, %3041 ]
  %3044 = phi float [ %3038, %3006 ], [ %3050, %3041 ]
  %3045 = getelementptr [4 x float], [4 x float]* %48, i32 0, i32 %3042
  %3046 = load float, float* %3045, align 4, !tbaa !53
  %3047 = fsub fast float %3046, %2778
  %3048 = fcmp fast olt float %3047, 0.000000e+00
  %3049 = select i1 %3048, float 0.000000e+00, float 1.000000e+00
  %3050 = fadd fast float %3049, %3044
  %3051 = fmul fast float %3049, %3047
  %3052 = fadd fast float %3051, %3043
  %3053 = add nuw nsw i32 %3042, 1
  %3054 = icmp eq i32 %3053, 4
  br i1 %3054, label %3055, label %3041, !llvm.loop !57

; <label>:3055                                    ; preds = %3041
  %3056 = add nuw nsw i32 %3009, 1
  %3057 = icmp eq i32 %3056, 8
  br i1 %3057, label %3058, label %3006, !llvm.loop !59

; <label>:3058                                    ; preds = %3055
  %3059 = fdiv fast float 1.000000e+00, %3050
  %3060 = fmul fast float %3059, %3052
  %3061 = fdiv fast float 1.000000e+00, %2778
  %3062 = fmul fast float %3060, %3061
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = call float @dx.op.binary.f32(i32 35, float %3063, float 0.000000e+00)  ; FMax(a,b)
  %3065 = fmul fast float %3050, 3.125000e-02
  %3066 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3067 = fmul fast float %3066, 2.000000e+00
  %3068 = fadd fast float %3067, -1.000000e+00
  %3069 = fcmp fast ogt float %3068, 0.000000e+00
  %3070 = fcmp fast olt float %3068, 0.000000e+00
  %3071 = zext i1 %3069 to i32
  %3072 = zext i1 %3070 to i32
  %3073 = sub nsw i32 %3071, %3072
  %3074 = sitofp i32 %3073 to float
  %3075 = fmul fast float %3074, %3068
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = fmul fast float %3076, %3076
  %3078 = fmul fast float %3077, %3076
  %3079 = fsub fast float %3076, %3078
  %3080 = fmul fast float %3079, %3064
  %3081 = fsub fast float 1.000000e+00, %3078
  %3082 = fsub fast float %3081, %3080
  %3083 = fmul fast float %3074, 5.000000e-01
  %3084 = fmul fast float %3083, %3082
  %3085 = fsub fast float 5.000000e-01, %3084
  br label %3086

; <label>:3086                                    ; preds = %3058, %2934, %2905, %2781, %2761
  %3087 = phi float [ 1.000000e+00, %2761 ], [ %2847, %2781 ], [ %2932, %2905 ], [ %3000, %2934 ], [ %3085, %3058 ]
  %3088 = fsub fast float %2591, %2420
  %3089 = fmul fast float %3088, %1712
  %3090 = fadd fast float %3089, %2420
  %3091 = fsub fast float %2762, %3090
  %3092 = fmul fast float %3091, %1711
  %3093 = fadd fast float %3092, %3090
  %3094 = fsub fast float %3087, %3093
  %3095 = fmul fast float %3094, %1742
  %3096 = fadd fast float %3095, %3093
  br label %4568

; <label>:3097                                    ; preds = %96
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 0
  %3100 = extractvalue %dx.types.CBufRet.f32 %3098, 1
  %3101 = extractvalue %dx.types.CBufRet.f32 %3098, 3
  %3102 = fmul fast float %3101, %211
  %3103 = fmul fast float %3101, %215
  %3104 = fadd fast float %3102, %3099
  %3105 = fadd fast float %3103, %3100
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 0
  %3108 = extractvalue %dx.types.CBufRet.f32 %3106, 1
  %3109 = extractvalue %dx.types.CBufRet.f32 %3106, 3
  %3110 = fmul fast float %3109, %211
  %3111 = fmul fast float %3109, %215
  %3112 = fadd fast float %3110, %3107
  %3113 = fadd fast float %3111, %3108
  %3114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3115 = extractvalue %dx.types.CBufRet.f32 %3114, 1
  %3116 = fsub fast float %3115, %219
  %3117 = extractvalue %dx.types.CBufRet.f32 %3114, 2
  %3118 = fmul fast float %3116, %3117
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  br i1 %85, label %3181, label %3121, !dx.controlflow.hints !84

; <label>:3121                                    ; preds = %3097
  %3122 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.f32 %3123, 2
  %3125 = fadd fast float %3124, %3122
  %3126 = fcmp fast ogt float %3125, 0.000000e+00
  br i1 %3126, label %3127, label %3151, !dx.controlflow.hints !85

; <label>:3127                                    ; preds = %3121
  %3128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3128, 0
  %3130 = extractvalue %dx.types.CBufRet.f32 %3128, 1
  %3131 = fsub fast float %3112, %3129
  %3132 = fsub fast float %3113, %3130
  %3133 = fcmp fast olt float %3131, 0.000000e+00
  %3134 = fcmp fast olt float %3132, 0.000000e+00
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.CBufRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.CBufRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.CBufRet.f32 %3135, 3
  %3140 = select i1 %3133, float %3136, float %3138
  %3141 = select i1 %3134, float %3137, float %3139
  %3142 = fmul fast float %3140, %3131
  %3143 = fmul fast float %3141, %3132
  %3144 = call float @dx.op.unary.f32(i32 6, float %3142)  ; FAbs(value)
  %3145 = call float @dx.op.unary.f32(i32 6, float %3143)  ; FAbs(value)
  %3146 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %3147 = call float @dx.op.binary.f32(i32 35, float %3144, float %3145)  ; FMax(a,b)
  %3148 = fsub fast float %3146, %3147
  %3149 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3150 = fmul fast float %3149, %3120
  br label %3151

; <label>:3151                                    ; preds = %3127, %3121
  %3152 = phi float [ %3150, %3127 ], [ 0.000000e+00, %3121 ]
  %3153 = extractvalue %dx.types.CBufRet.f32 %3098, 2
  %3154 = extractvalue %dx.types.CBufRet.f32 %3123, 1
  %3155 = fadd fast float %3154, %3153
  %3156 = fcmp fast ogt float %3155, 0.000000e+00
  br i1 %3156, label %3157, label %3181, !dx.controlflow.hints !86

; <label>:3157                                    ; preds = %3151
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 0
  %3160 = extractvalue %dx.types.CBufRet.f32 %3158, 1
  %3161 = fsub fast float %3104, %3159
  %3162 = fsub fast float %3105, %3160
  %3163 = fcmp fast olt float %3161, 0.000000e+00
  %3164 = fcmp fast olt float %3162, 0.000000e+00
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.CBufRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.CBufRet.f32 %3165, 2
  %3169 = extractvalue %dx.types.CBufRet.f32 %3165, 3
  %3170 = select i1 %3163, float %3166, float %3168
  %3171 = select i1 %3164, float %3167, float %3169
  %3172 = fmul fast float %3170, %3161
  %3173 = fmul fast float %3171, %3162
  %3174 = call float @dx.op.unary.f32(i32 6, float %3172)  ; FAbs(value)
  %3175 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3176 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %3177 = call float @dx.op.binary.f32(i32 35, float %3174, float %3175)  ; FMax(a,b)
  %3178 = fsub fast float %3176, %3177
  %3179 = call float @dx.op.unary.f32(i32 7, float %3178)  ; Saturate(value)
  %3180 = fmul fast float %3179, %3120
  br label %3181

; <label>:3181                                    ; preds = %3157, %3151, %3097
  %3182 = phi float [ 0.000000e+00, %3097 ], [ %3180, %3157 ], [ 0.000000e+00, %3151 ]
  %3183 = phi float [ 0.000000e+00, %3097 ], [ %3152, %3157 ], [ %3152, %3151 ]
  %3184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.CBufRet.f32 %3184, 1
  %3187 = fmul fast float %3185, %92
  %3188 = fadd fast float %3187, %3186
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3191 = extractvalue %dx.types.CBufRet.f32 %3190, 0
  %3192 = extractvalue %dx.types.CBufRet.f32 %3190, 1
  %3193 = fsub fast float %211, %3191
  %3194 = fsub fast float %215, %3192
  %3195 = fcmp fast olt float %3193, 0.000000e+00
  %3196 = fcmp fast olt float %3194, 0.000000e+00
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3199 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3200 = extractvalue %dx.types.CBufRet.f32 %3197, 2
  %3201 = extractvalue %dx.types.CBufRet.f32 %3197, 3
  %3202 = select i1 %3195, float %3198, float %3200
  %3203 = select i1 %3196, float %3199, float %3201
  %3204 = fmul fast float %3202, %3193
  %3205 = fmul fast float %3203, %3194
  %3206 = call float @dx.op.unary.f32(i32 6, float %3204)  ; FAbs(value)
  %3207 = call float @dx.op.unary.f32(i32 6, float %3205)  ; FAbs(value)
  %3208 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %3209 = call float @dx.op.binary.f32(i32 35, float %3206, float %3207)  ; FMax(a,b)
  %3210 = fsub fast float %3208, %3209
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3212 = call float @dx.op.binary.f32(i32 36, float %3211, float %3189)  ; FMin(a,b)
  %3213 = fmul fast float %3212, %3120
  %3214 = fsub fast float %3182, %3213
  %3215 = fsub fast float %3183, %3182
  %3216 = fsub fast float %3215, %3213
  %3217 = call float @dx.op.binary.f32(i32 35, float %3182, float %3183)  ; FMax(a,b)
  %3218 = call float @dx.op.binary.f32(i32 35, float %3213, float %3217)  ; FMax(a,b)
  %3219 = fcmp fast olt float %3218, 1.000000e+00
  %3220 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %3221 = fcmp fast une float %3220, 0.000000e+00
  %3222 = and i1 %3219, %3221
  br i1 %3222, label %3223, label %3890, !dx.controlflow.hints !87

; <label>:3223                                    ; preds = %3181
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3224, 2
  %3228 = extractvalue %dx.types.CBufRet.f32 %3224, 3
  %3229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3230 = extractvalue %dx.types.CBufRet.f32 %3229, 0
  %3231 = extractvalue %dx.types.CBufRet.f32 %3229, 1
  %3232 = extractvalue %dx.types.CBufRet.f32 %3229, 2
  %3233 = extractvalue %dx.types.CBufRet.f32 %3229, 3
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.CBufRet.f32 %3234, 2
  %3238 = extractvalue %dx.types.CBufRet.f32 %3234, 3
  %3239 = fmul fast float %3225, %146
  %3240 = call float @dx.op.tertiary.f32(i32 46, float %147, float %3226, float %3239)  ; FMad(a,b,c)
  %3241 = call float @dx.op.tertiary.f32(i32 46, float %148, float %3227, float %3240)  ; FMad(a,b,c)
  %3242 = fadd fast float %3241, %3228
  %3243 = fmul fast float %3230, %146
  %3244 = call float @dx.op.tertiary.f32(i32 46, float %147, float %3231, float %3243)  ; FMad(a,b,c)
  %3245 = call float @dx.op.tertiary.f32(i32 46, float %148, float %3232, float %3244)  ; FMad(a,b,c)
  %3246 = fadd fast float %3245, %3233
  %3247 = fmul fast float %3235, %146
  %3248 = call float @dx.op.tertiary.f32(i32 46, float %147, float %3236, float %3247)  ; FMad(a,b,c)
  %3249 = call float @dx.op.tertiary.f32(i32 46, float %148, float %3237, float %3248)  ; FMad(a,b,c)
  %3250 = fadd fast float %3249, %3238
  %3251 = fcmp fast oge float %3242, 1.000000e+00
  %3252 = fcmp fast oge float %3246, 1.000000e+00
  %3253 = or i1 %3251, %3252
  %3254 = fcmp fast olt float %3242, 0.000000e+00
  %3255 = fcmp fast olt float %3246, 0.000000e+00
  %3256 = or i1 %3254, %3255
  %3257 = or i1 %3253, %3256
  br i1 %3257, label %3890, label %3258, !dx.controlflow.hints !65

; <label>:3258                                    ; preds = %3223
  %3259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3260 = extractvalue %dx.types.CBufRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.CBufRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.CBufRet.f32 %3259, 2
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 1
  %3265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.i32 %3265, 2
  %3267 = uitofp i32 %3266 to float
  %3268 = extractvalue %dx.types.CBufRet.i32 %3265, 3
  %3269 = uitofp i32 %3268 to float
  %3270 = extractvalue %dx.types.CBufRet.f32 %3259, 3
  %3271 = fmul fast float %3270, 2.000000e+00
  %3272 = fsub fast float %3242, %3260
  %3273 = fsub fast float %3246, %3261
  %3274 = fmul fast float %3271, %3272
  %3275 = fmul fast float %3271, %3273
  %3276 = fdiv fast float 1.000000e+00, %181
  %3277 = fmul fast float %3275, %3276
  %3278 = call float @dx.op.unary.f32(i32 6, float %3277)  ; FAbs(value)
  %3279 = fmul fast float %3262, %148
  %3280 = fmul fast float %3279, %3271
  %3281 = call float @dx.op.unary.f32(i32 6, float %3280)  ; FAbs(value)
  %3282 = call float @dx.op.unary.f32(i32 6, float %3274)  ; FAbs(value)
  %3283 = call float @dx.op.binary.f32(i32 35, float %3281, float %3278)  ; FMax(a,b)
  %3284 = call float @dx.op.binary.f32(i32 35, float %3282, float %3283)  ; FMax(a,b)
  %3285 = fmul fast float %3284, 2.000000e+00
  %3286 = call float @dx.op.unary.f32(i32 23, float %3285)  ; Log(value)
  %3287 = call float @dx.op.binary.f32(i32 35, float %3286, float %3267)  ; FMax(a,b)
  %3288 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3289 = fadd fast float %3288, 0xBFEA666660000000
  %3290 = fmul fast float %3289, 8.000000e+00
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3292 = call float @dx.op.unary.f32(i32 27, float %3287)  ; Round_ni(value)
  %3293 = fadd fast float %3292, %3291
  %3294 = call float @dx.op.binary.f32(i32 36, float %3293, float %3269)  ; FMin(a,b)
  %3295 = call float @dx.op.unary.f32(i32 27, float %3294)  ; Round_ni(value)
  %3296 = fsub fast float -0.000000e+00, %3295
  %3297 = call float @dx.op.unary.f32(i32 21, float %3296)  ; Exp(value)
  %3298 = fmul fast float %3297, %3271
  %3299 = fmul fast float %3298, %3242
  %3300 = fmul fast float %3298, %3246
  %3301 = fmul fast float %3299, 5.000000e-01
  %3302 = fmul fast float %3300, 5.000000e-01
  %3303 = fadd fast float %3301, 5.000000e-01
  %3304 = fadd fast float %3302, 5.000000e-01
  %3305 = fmul fast float %3299, 2.500000e-01
  %3306 = fmul fast float %3300, 2.500000e-01
  %3307 = fadd fast float %3305, 5.000000e-01
  %3308 = fadd fast float %3306, 5.000000e-01
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = and i32 %3310, 536870911
  %3312 = lshr i32 %3311, 9
  %3313 = uitofp i32 %3312 to float
  %3314 = fmul fast float %3313, %3242
  %3315 = fmul fast float %3313, %3246
  %3316 = call float @dx.op.unary.f32(i32 22, float %3314)  ; Frc(value)
  %3317 = call float @dx.op.unary.f32(i32 22, float %3315)  ; Frc(value)
  %3318 = call float @dx.op.unary.f32(i32 22, float %3291)  ; Frc(value)
  %3319 = fcmp fast une float %3318, 0.000000e+00
  br i1 %3319, label %3320, label %3418, !dx.controlflow.hints !66

; <label>:3320                                    ; preds = %3258
  %3321 = call float @dx.op.unary.f32(i32 21, float %3292)  ; Exp(value)
  %3322 = fmul fast float %3321, 1.953125e-03
  %3323 = fcmp fast olt float %3316, %3322
  %3324 = fcmp fast olt float %3317, %3322
  %3325 = or i1 %3323, %3324
  %3326 = fsub fast float 1.000000e+00, %3322
  %3327 = fcmp fast ogt float %3316, %3326
  %3328 = fcmp fast ogt float %3317, %3326
  %3329 = or i1 %3327, %3328
  %3330 = or i1 %3325, %3329
  br i1 %3330, label %3331, label %3497, !dx.controlflow.hints !67

; <label>:3331                                    ; preds = %3320
  %3332 = fmul fast float %3264, 5.000000e-01
  %3333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.i32 %3333, 0
  %3335 = fmul fast float %3246, 3.530000e+02
  %3336 = uitofp i32 %3311 to float
  %3337 = fmul fast float %3335, %3336
  %3338 = fmul fast float %3242, 6.130000e+02
  %3339 = fadd fast float %3337, %3338
  %3340 = fptoui float %3339 to i32
  %3341 = add i32 %3334, %3340
  %3342 = mul i32 %3341, -63
  %3343 = lshr i32 %3342, 17
  %3344 = xor i32 %3343, %3342
  %3345 = mul i32 %3344, -511
  %3346 = mul i32 %3344, -8176
  %3347 = xor i32 %3345, %3346
  %3348 = mul i32 %3347, -7
  %3349 = mul i32 %3347, -7168
  %3350 = xor i32 %3348, %3349
  %3351 = lshr i32 %3350, 15
  %3352 = xor i32 %3351, %3348
  %3353 = and i32 %3352, 15
  %3354 = mul i32 %3353, 2
  %3355 = add i32 0, %3354
  %3356 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3355
  %3357 = load float, float* %3356, align 4
  %3358 = mul i32 %3353, 2
  %3359 = add i32 1, %3358
  %3360 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3359
  %3361 = load float, float* %3360, align 4
  %3362 = fmul fast float %3246, 2.770000e+02
  %3363 = fmul fast float %3362, %3336
  %3364 = fmul fast float %3242, 5.990000e+02
  %3365 = fadd fast float %3363, %3364
  %3366 = fptoui float %3365 to i32
  %3367 = mul i32 %3366, -63
  %3368 = lshr i32 %3367, 17
  %3369 = xor i32 %3368, %3367
  %3370 = mul i32 %3369, -511
  %3371 = mul i32 %3369, -8176
  %3372 = xor i32 %3370, %3371
  %3373 = mul i32 %3372, -7
  %3374 = mul i32 %3372, -7168
  %3375 = xor i32 %3373, %3374
  %3376 = lshr i32 %3375, 15
  %3377 = xor i32 %3376, %3373
  %3378 = and i32 %3377, 63
  %3379 = mul i32 %3378, 2
  %3380 = add i32 0, %3379
  %3381 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3380
  %3382 = load float, float* %3381, align 4
  %3383 = mul i32 %3378, 2
  %3384 = add i32 1, %3383
  %3385 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3384
  %3386 = load float, float* %3385, align 4
  %3387 = call float @dx.op.dot2.f32(i32 54, float %3357, float %3361, float %3382, float %3386)  ; Dot2(ax,ay,bx,by)
  %3388 = fsub fast float -0.000000e+00, %3382
  %3389 = call float @dx.op.dot2.f32(i32 54, float %3357, float %3361, float %3388, float %3386)  ; Dot2(ax,ay,bx,by)
  %3390 = fmul fast float %3387, %3332
  %3391 = fmul fast float %3389, %3332
  %3392 = fdiv fast float 2.000000e+00, %3298
  %3393 = fmul fast float %3321, 9.765625e-04
  %3394 = fcmp fast olt float %3316, %3393
  %3395 = fcmp fast olt float %3317, %3393
  %3396 = or i1 %3394, %3395
  %3397 = fsub fast float 1.000000e+00, %3393
  %3398 = fcmp fast ogt float %3316, %3397
  %3399 = fcmp fast ogt float %3317, %3397
  %3400 = or i1 %3398, %3399
  %3401 = or i1 %3396, %3400
  %3402 = fmul fast float %3390, 2.000000e+00
  br i1 %3401, label %3403, label %3407, !dx.controlflow.hints !68

; <label>:3403                                    ; preds = %3331
  %3404 = fmul fast float %3391, 2.000000e+00
  %3405 = fadd fast float %3402, %3303
  %3406 = fadd fast float %3404, %3304
  br label %3407

; <label>:3407                                    ; preds = %3403, %3331
  %3408 = phi float [ %3405, %3403 ], [ %3303, %3331 ]
  %3409 = phi float [ %3406, %3403 ], [ %3304, %3331 ]
  %3410 = phi i32 [ 3, %3403 ], [ 2, %3331 ]
  %3411 = fadd fast float %3390, %3307
  %3412 = fadd fast float %3391, %3308
  %3413 = fmul fast float %3402, %3392
  %3414 = fmul fast float %3392, 2.000000e+00
  %3415 = fmul fast float %3414, %3391
  %3416 = fadd fast float %3413, %3242
  %3417 = fadd fast float %3415, %3246
  br label %3497

; <label>:3418                                    ; preds = %3258
  %3419 = call float @dx.op.unary.f32(i32 21, float %3295)  ; Exp(value)
  %3420 = fmul fast float %3419, 9.765625e-04
  %3421 = fcmp fast olt float %3316, %3420
  %3422 = fcmp fast olt float %3317, %3420
  %3423 = or i1 %3421, %3422
  %3424 = fsub fast float 1.000000e+00, %3420
  %3425 = fcmp fast ogt float %3316, %3424
  %3426 = fcmp fast ogt float %3317, %3424
  %3427 = or i1 %3425, %3426
  %3428 = or i1 %3423, %3427
  br i1 %3428, label %3429, label %3497, !dx.controlflow.hints !69

; <label>:3429                                    ; preds = %3418
  %3430 = fmul fast float %3264, 5.000000e-01
  %3431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.i32 %3431, 0
  %3433 = fmul fast float %3246, 3.530000e+02
  %3434 = uitofp i32 %3311 to float
  %3435 = fmul fast float %3433, %3434
  %3436 = fmul fast float %3242, 6.130000e+02
  %3437 = fadd fast float %3435, %3436
  %3438 = fptoui float %3437 to i32
  %3439 = add i32 %3432, %3438
  %3440 = mul i32 %3439, -63
  %3441 = lshr i32 %3440, 17
  %3442 = xor i32 %3441, %3440
  %3443 = mul i32 %3442, -511
  %3444 = mul i32 %3442, -8176
  %3445 = xor i32 %3443, %3444
  %3446 = mul i32 %3445, -7
  %3447 = mul i32 %3445, -7168
  %3448 = xor i32 %3446, %3447
  %3449 = lshr i32 %3448, 15
  %3450 = xor i32 %3449, %3446
  %3451 = and i32 %3450, 15
  %3452 = mul i32 %3451, 2
  %3453 = add i32 0, %3452
  %3454 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3453
  %3455 = load float, float* %3454, align 4
  %3456 = mul i32 %3451, 2
  %3457 = add i32 1, %3456
  %3458 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3457
  %3459 = load float, float* %3458, align 4
  %3460 = fmul fast float %3246, 2.770000e+02
  %3461 = fmul fast float %3460, %3434
  %3462 = fmul fast float %3242, 5.990000e+02
  %3463 = fadd fast float %3461, %3462
  %3464 = fptoui float %3463 to i32
  %3465 = mul i32 %3464, -63
  %3466 = lshr i32 %3465, 17
  %3467 = xor i32 %3466, %3465
  %3468 = mul i32 %3467, -511
  %3469 = mul i32 %3467, -8176
  %3470 = xor i32 %3468, %3469
  %3471 = mul i32 %3470, -7
  %3472 = mul i32 %3470, -7168
  %3473 = xor i32 %3471, %3472
  %3474 = lshr i32 %3473, 15
  %3475 = xor i32 %3474, %3471
  %3476 = and i32 %3475, 63
  %3477 = mul i32 %3476, 2
  %3478 = add i32 0, %3477
  %3479 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3478
  %3480 = load float, float* %3479, align 4
  %3481 = mul i32 %3476, 2
  %3482 = add i32 1, %3481
  %3483 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3482
  %3484 = load float, float* %3483, align 4
  %3485 = call float @dx.op.dot2.f32(i32 54, float %3455, float %3459, float %3480, float %3484)  ; Dot2(ax,ay,bx,by)
  %3486 = fsub fast float -0.000000e+00, %3480
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3455, float %3459, float %3486, float %3484)  ; Dot2(ax,ay,bx,by)
  %3488 = fmul fast float %3485, %3430
  %3489 = fmul fast float %3487, %3430
  %3490 = fadd fast float %3488, %3303
  %3491 = fadd fast float %3489, %3304
  %3492 = fdiv fast float 2.000000e+00, %3298
  %3493 = fmul fast float %3492, %3488
  %3494 = fmul fast float %3489, %3492
  %3495 = fadd fast float %3493, %3242
  %3496 = fadd fast float %3494, %3246
  br label %3497

; <label>:3497                                    ; preds = %3429, %3418, %3407, %3320
  %3498 = phi float [ %3411, %3407 ], [ %3307, %3320 ], [ %3307, %3429 ], [ %3307, %3418 ]
  %3499 = phi float [ %3412, %3407 ], [ %3308, %3320 ], [ %3308, %3429 ], [ %3308, %3418 ]
  %3500 = phi float [ %3408, %3407 ], [ %3303, %3320 ], [ %3490, %3429 ], [ %3303, %3418 ]
  %3501 = phi float [ %3409, %3407 ], [ %3304, %3320 ], [ %3491, %3429 ], [ %3304, %3418 ]
  %3502 = phi i32 [ %3410, %3407 ], [ 0, %3320 ], [ 1, %3429 ], [ 0, %3418 ]
  %3503 = phi float [ %3416, %3407 ], [ %3242, %3320 ], [ %3495, %3429 ], [ %3242, %3418 ]
  %3504 = phi float [ %3417, %3407 ], [ %3246, %3320 ], [ %3496, %3429 ], [ %3246, %3418 ]
  %3505 = fsub fast float %3269, %3267
  %3506 = fptoui float %3505 to i32
  %3507 = add i32 %3506, 320
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 %3507)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 1
  %3511 = fcmp fast une float %3294, %3269
  %3512 = fsub fast float %3503, %3509
  %3513 = fsub fast float %3504, %3510
  %3514 = call float @dx.op.unary.f32(i32 6, float %3512)  ; FAbs(value)
  %3515 = call float @dx.op.unary.f32(i32 6, float %3513)  ; FAbs(value)
  %3516 = fmul fast float %3514, %3298
  %3517 = fmul fast float %3515, %3298
  %3518 = fcmp fast olt float %3516, 1.000000e+00
  %3519 = fcmp fast olt float %3517, 1.000000e+00
  %3520 = and i1 %3518, %3519
  %3521 = or i1 %3511, %3520
  br i1 %3521, label %3522, label %3890, !dx.controlflow.hints !70

; <label>:3522                                    ; preds = %3497
  %3523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.i32 %3523, 2
  %3525 = sitofp i32 %3524 to float
  %3526 = fsub fast float %3294, %3525
  %3527 = call float @dx.op.unary.f32(i32 27, float %3526)  ; Round_ni(value)
  %3528 = call float @dx.op.unary.f32(i32 22, float %3294)  ; Frc(value)
  %3529 = icmp eq i32 %3502, 0
  %3530 = call float @dx.op.unary.f32(i32 22, float %3500)  ; Frc(value)
  %3531 = call float @dx.op.unary.f32(i32 22, float %3501)  ; Frc(value)
  br i1 %3529, label %3602, label %3532, !dx.controlflow.hints !71

; <label>:3532                                    ; preds = %3522
  %3533 = and i32 %3502, 1
  %3534 = icmp eq i32 %3533, 0
  br i1 %3534, label %3548, label %3535, !dx.controlflow.hints !72

; <label>:3535                                    ; preds = %3532
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 0
  %3538 = fmul fast float %3530, %3537
  %3539 = fmul fast float %3531, %3537
  %3540 = fptoui float %3538 to i32
  %3541 = fptoui float %3539 to i32
  %3542 = fptoui float %3527 to i32
  %3543 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %3540, i32 %3541, i32 %3542, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.ResRet.f32 %3543, 3
  br label %3554

; <label>:3548                                    ; preds = %3532
  %3549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %3530, float %3531, float %3527, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.ResRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3549, 2
  %3553 = extractvalue %dx.types.ResRet.f32 %3549, 3
  br label %3554

; <label>:3554                                    ; preds = %3548, %3535
  %3555 = phi float [ %3544, %3535 ], [ %3550, %3548 ]
  %3556 = phi float [ %3545, %3535 ], [ %3551, %3548 ]
  %3557 = phi float [ %3546, %3535 ], [ %3552, %3548 ]
  %3558 = phi float [ %3547, %3535 ], [ %3553, %3548 ]
  %3559 = fcmp fast ogt float %3528, 0.000000e+00
  br i1 %3559, label %3560, label %3630, !dx.controlflow.hints !73

; <label>:3560                                    ; preds = %3554
  %3561 = and i32 %3502, 2
  %3562 = icmp eq i32 %3561, 0
  %3563 = fadd fast float %3527, 1.000000e+00
  %3564 = call float @dx.op.unary.f32(i32 22, float %3498)  ; Frc(value)
  %3565 = call float @dx.op.unary.f32(i32 22, float %3499)  ; Frc(value)
  br i1 %3562, label %3579, label %3566, !dx.controlflow.hints !74

; <label>:3566                                    ; preds = %3560
  %3567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.f32 %3567, 0
  %3569 = fmul fast float %3564, %3568
  %3570 = fmul fast float %3565, %3568
  %3571 = fptoui float %3569 to i32
  %3572 = fptoui float %3570 to i32
  %3573 = fptoui float %3563 to i32
  %3574 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %3571, i32 %3572, i32 %3573, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = extractvalue %dx.types.ResRet.f32 %3574, 3
  br label %3585

; <label>:3579                                    ; preds = %3560
  %3580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %3564, float %3565, float %3563, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3582 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3583 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3584 = extractvalue %dx.types.ResRet.f32 %3580, 3
  br label %3585

; <label>:3585                                    ; preds = %3579, %3566
  %3586 = phi float [ %3575, %3566 ], [ %3581, %3579 ]
  %3587 = phi float [ %3576, %3566 ], [ %3582, %3579 ]
  %3588 = phi float [ %3577, %3566 ], [ %3583, %3579 ]
  %3589 = phi float [ %3578, %3566 ], [ %3584, %3579 ]
  %3590 = fsub fast float %3586, %3555
  %3591 = fsub fast float %3587, %3556
  %3592 = fsub fast float %3588, %3557
  %3593 = fsub fast float %3589, %3558
  %3594 = fmul fast float %3590, %3528
  %3595 = fmul fast float %3591, %3528
  %3596 = fmul fast float %3592, %3528
  %3597 = fmul fast float %3593, %3528
  %3598 = fadd fast float %3594, %3555
  %3599 = fadd fast float %3595, %3556
  %3600 = fadd fast float %3596, %3557
  %3601 = fadd fast float %3597, %3558
  br label %3630

; <label>:3602                                    ; preds = %3522
  %3603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %3530, float %3531, float %3527, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3608 = fcmp fast ogt float %3528, 0.000000e+00
  br i1 %3608, label %3609, label %3630, !dx.controlflow.hints !75

; <label>:3609                                    ; preds = %3602
  %3610 = fadd fast float %3527, 1.000000e+00
  %3611 = call float @dx.op.unary.f32(i32 22, float %3498)  ; Frc(value)
  %3612 = call float @dx.op.unary.f32(i32 22, float %3499)  ; Frc(value)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %3611, float %3612, float %3610, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = fsub fast float %3614, %3604
  %3619 = fsub fast float %3615, %3605
  %3620 = fsub fast float %3616, %3606
  %3621 = fsub fast float %3617, %3607
  %3622 = fmul fast float %3618, %3528
  %3623 = fmul fast float %3619, %3528
  %3624 = fmul fast float %3620, %3528
  %3625 = fmul fast float %3621, %3528
  %3626 = fadd fast float %3622, %3604
  %3627 = fadd fast float %3623, %3605
  %3628 = fadd fast float %3624, %3606
  %3629 = fadd fast float %3625, %3607
  br label %3630

; <label>:3630                                    ; preds = %3609, %3602, %3585, %3554
  %3631 = phi float [ %3598, %3585 ], [ %3555, %3554 ], [ %3626, %3609 ], [ %3604, %3602 ]
  %3632 = phi float [ %3599, %3585 ], [ %3556, %3554 ], [ %3627, %3609 ], [ %3605, %3602 ]
  %3633 = phi float [ %3600, %3585 ], [ %3557, %3554 ], [ %3628, %3609 ], [ %3606, %3602 ]
  %3634 = phi float [ %3601, %3585 ], [ %3558, %3554 ], [ %3629, %3609 ], [ %3607, %3602 ]
  %3635 = fadd fast float %3631, -5.000000e-01
  %3636 = fadd fast float %3633, -5.000000e-01
  %3637 = fmul fast float %3635, 0xBFD5555560000000
  %3638 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3636, float %3637)  ; FMad(a,b,c)
  %3639 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3632, float 0.000000e+00)  ; FMad(a,b,c)
  %3640 = fadd fast float %3639, %3634
  %3641 = fmul fast float %3635, -7.500000e-01
  %3642 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3636, float %3641)  ; FMad(a,b,c)
  %3643 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3632, float 0.000000e+00)  ; FMad(a,b,c)
  %3644 = fadd fast float %3643, %3634
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.CBufRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.CBufRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3652 = fsub fast float %3648, %3638
  %3653 = fsub fast float %3649, %3640
  %3654 = fsub fast float %3650, %3642
  %3655 = fsub fast float %3651, %3644
  %3656 = fmul fast float %3652, %3646
  %3657 = fmul fast float %3653, %3646
  %3658 = fmul fast float %3654, %3646
  %3659 = fmul fast float %3655, %3646
  %3660 = fadd fast float %3656, %3638
  %3661 = fadd fast float %3657, %3640
  %3662 = fadd fast float %3658, %3642
  %3663 = fadd fast float %3659, %3644
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 536870911
  %3667 = uitofp i32 %3666 to float
  %3668 = fmul fast float %3667, %3503
  %3669 = fmul fast float %3667, %3504
  %3670 = fptoui float %3668 to i32
  %3671 = fptoui float %3669 to i32
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 31
  %3675 = lshr i32 %3670, %3674
  %3676 = lshr i32 %3671, %3674
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, 31
  %3680 = shl i32 1, %3679
  %3681 = call i32 @dx.op.binary.i32(i32 40, i32 %3680, i32 4)  ; UMin(a,b)
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.i32 %3682, 1
  %3685 = icmp eq i32 %3681, 0
  br i1 %3685, label %3727, label %3686

; <label>:3686                                    ; preds = %3630
  br label %3687

; <label>:3687                                    ; preds = %3715, %3686
  %3688 = phi i32 [ %3718, %3715 ], [ 0, %3686 ]
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = lshr i32 %3690, 16
  %3692 = and i32 %3691, 31
  %3693 = shl i32 %3676, %3692
  %3694 = add i32 %3693, %3675
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 31
  %3698 = shl i32 %3694, %3697
  %3699 = add i32 %3698, %3688
  %3700 = shl i32 %3699, 2
  %3701 = add i32 %3700, 32
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = icmp slt i32 %3703, 0
  %3705 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3688
  %3706 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %3688
  %3707 = bitcast float* %3705 to i32*
  %3708 = bitcast float* %3706 to i32*
  br i1 %3704, label %3709, label %3715, !dx.controlflow.hints !76

; <label>:3709                                    ; preds = %3687
  %3710 = and i32 %3703, 1073741823
  %3711 = add nuw nsw i32 %3710, 20
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.i32 %3712, 1
  br label %3715

; <label>:3715                                    ; preds = %3709, %3687
  %3716 = phi i32 [ %3713, %3709 ], [ %3683, %3687 ]
  %3717 = phi i32 [ %3714, %3709 ], [ %3684, %3687 ]
  store i32 %3716, i32* %3707, align 4
  store i32 %3717, i32* %3708, align 4
  %3718 = add nuw i32 %3688, 1
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 2
  %3721 = icmp eq i32 %3720, 0
  %3722 = icmp ugt i32 %3703, -1073741825
  %3723 = and i1 %3722, %3721
  %3724 = icmp ult i32 %3718, %3681
  %3725 = and i1 %3723, %3724
  br i1 %3725, label %3687, label %3726, !dx.controlflow.hints !77

; <label>:3726                                    ; preds = %3715
  br label %3727

; <label>:3727                                    ; preds = %3726, %3630
  %3728 = phi i32 [ 0, %3630 ], [ %3718, %3726 ]
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 2
  %3731 = fptoui float %3730 to i32
  %3732 = icmp eq i32 %3731, 0
  br i1 %3732, label %3784, label %3733

; <label>:3733                                    ; preds = %3727
  br label %3734

; <label>:3734                                    ; preds = %3779, %3733
  %3735 = phi i32 [ %3780, %3779 ], [ %3728, %3733 ]
  %3736 = phi i32 [ %3781, %3779 ], [ 0, %3733 ]
  %3737 = lshr i32 %3736, 2
  %3738 = and i32 %3736, 3
  %3739 = add nuw nsw i32 %3737, 83
  %3740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 %3739)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.i32 %3740, 0
  %3742 = extractvalue %dx.types.CBufRet.i32 %3740, 1
  %3743 = extractvalue %dx.types.CBufRet.i32 %3740, 2
  %3744 = extractvalue %dx.types.CBufRet.i32 %3740, 3
  %3745 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %3741, i32* %3745, align 4
  %3746 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %3742, i32* %3746, align 4
  %3747 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %3743, i32* %3747, align 4
  %3748 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %3744, i32* %3748, align 4
  %3749 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 %3738
  %3750 = load i32, i32* %3749, align 4, !tbaa !78
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = lshr i32 %3752, 16
  %3754 = and i32 %3753, 31
  %3755 = shl i32 %3676, %3754
  %3756 = add i32 %3755, %3675
  %3757 = shl i32 %3756, 2
  %3758 = add i32 %3757, %3750
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3779, label %3762, !dx.controlflow.hints !80

; <label>:3762                                    ; preds = %3734
  %3763 = icmp slt i32 %3760, 0
  %3764 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3735
  %3765 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %3735
  %3766 = bitcast float* %3764 to i32*
  %3767 = bitcast float* %3765 to i32*
  br i1 %3763, label %3768, label %3775, !dx.controlflow.hints !81

; <label>:3768                                    ; preds = %3762
  %3769 = and i32 %3760, 1073741823
  %3770 = add i32 %3750, 20
  %3771 = add i32 %3770, %3769
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.i32 %3772, 1
  br label %3775

; <label>:3775                                    ; preds = %3768, %3762
  %3776 = phi i32 [ %3773, %3768 ], [ %3683, %3762 ]
  %3777 = phi i32 [ %3774, %3768 ], [ %3684, %3762 ]
  store i32 %3776, i32* %3766, align 4
  store i32 %3777, i32* %3767, align 4
  %3778 = add i32 %3735, 1
  br label %3779

; <label>:3779                                    ; preds = %3775, %3734
  %3780 = phi i32 [ %3735, %3734 ], [ %3778, %3775 ]
  %3781 = add nuw i32 %3736, 1
  %3782 = icmp eq i32 %3781, %3731
  br i1 %3782, label %3783, label %3734

; <label>:3783                                    ; preds = %3779
  br label %3784

; <label>:3784                                    ; preds = %3783, %3727
  %3785 = phi i32 [ %3728, %3727 ], [ %3780, %3783 ]
  %3786 = icmp eq i32 %3785, 1
  %3787 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %3788 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %3786, label %3789, label %3792, !dx.controlflow.hints !82

; <label>:3789                                    ; preds = %3784
  %3790 = load float, float* %3787, align 4
  %3791 = load float, float* %3788, align 4
  br label %3819

; <label>:3792                                    ; preds = %3784
  %3793 = load float, float* %3787, align 4
  %3794 = load float, float* %3788, align 4
  %3795 = fdiv fast float 1.000000e+00, %3794
  %3796 = fsub fast float %3793, %3795
  %3797 = icmp ugt i32 %3785, 1
  br i1 %3797, label %3798, label %3814

; <label>:3798                                    ; preds = %3792
  br label %3799

; <label>:3799                                    ; preds = %3799, %3798
  %3800 = phi float [ %3809, %3799 ], [ %3796, %3798 ]
  %3801 = phi float [ %3810, %3799 ], [ %3793, %3798 ]
  %3802 = phi i32 [ %3811, %3799 ], [ 1, %3798 ]
  %3803 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3802
  %3804 = load float, float* %3803, align 4
  %3805 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %3802
  %3806 = load float, float* %3805, align 4
  %3807 = fdiv fast float 1.000000e+00, %3806
  %3808 = fsub fast float %3804, %3807
  %3809 = call float @dx.op.binary.f32(i32 36, float %3800, float %3808)  ; FMin(a,b)
  %3810 = call float @dx.op.binary.f32(i32 35, float %3801, float %3804)  ; FMax(a,b)
  %3811 = add nuw i32 %3802, 1
  %3812 = icmp eq i32 %3811, %3785
  br i1 %3812, label %3813, label %3799

; <label>:3813                                    ; preds = %3799
  br label %3814

; <label>:3814                                    ; preds = %3813, %3792
  %3815 = phi float [ %3796, %3792 ], [ %3809, %3813 ]
  %3816 = phi float [ %3793, %3792 ], [ %3810, %3813 ]
  %3817 = fsub fast float %3816, %3815
  %3818 = fdiv fast float 1.000000e+00, %3817
  br label %3819

; <label>:3819                                    ; preds = %3814, %3789
  %3820 = phi float [ %3790, %3789 ], [ %3816, %3814 ]
  %3821 = phi float [ %3791, %3789 ], [ %3818, %3814 ]
  %3822 = fadd fast float %3250, %3820
  %3823 = fmul fast float %3822, %3821
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = fmul fast float %3824, 2.000000e+00
  %3826 = fsub fast float 1.000000e+00, %3825
  %3827 = fmul fast float %3660, %3660
  %3828 = fsub fast float %3661, %3827
  %3829 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3828)  ; FMax(a,b)
  %3830 = fdiv fast float 1.000000e+00, %3829
  %3831 = fmul fast float %3661, %3660
  %3832 = fsub fast float %3662, %3831
  %3833 = fsub fast float %3826, %3660
  %3834 = fmul fast float %3826, %3826
  %3835 = fsub fast float %3834, %3661
  %3836 = fmul fast float %3830, %3832
  %3837 = fmul fast float %3836, %3833
  %3838 = fsub fast float %3835, %3837
  %3839 = fmul fast float %3661, %3661
  %3840 = fsub fast float %3663, %3839
  %3841 = fmul fast float %3832, %3832
  %3842 = fmul fast float %3841, %3830
  %3843 = fsub fast float %3840, %3842
  %3844 = fdiv fast float %3838, %3843
  %3845 = fmul fast float %3844, %3832
  %3846 = fsub fast float %3833, %3845
  %3847 = fmul fast float %3846, %3830
  %3848 = fmul fast float %3847, %3660
  %3849 = fsub fast float 1.000000e+00, %3848
  %3850 = fmul fast float %3844, %3661
  %3851 = fsub fast float %3849, %3850
  %3852 = fmul fast float %3847, %3847
  %3853 = fmul fast float %3844, 4.000000e+00
  %3854 = fmul fast float %3853, %3851
  %3855 = fsub fast float %3852, %3854
  %3856 = call float @dx.op.unary.f32(i32 24, float %3855)  ; Sqrt(value)
  %3857 = fcmp fast oge float %3847, 0.000000e+00
  %3858 = fsub fast float -0.000000e+00, %3856
  %3859 = select i1 %3857, float %3858, float %3856
  %3860 = fsub fast float %3859, %3847
  %3861 = fdiv fast float %3860, %3844
  %3862 = fdiv fast float %3851, %3860
  %3863 = fmul fast float %3861, 5.000000e-01
  %3864 = fmul fast float %3862, 2.000000e+00
  %3865 = select i1 %3857, float %3863, float %3864
  %3866 = select i1 %3857, float %3864, float %3863
  %3867 = call float @dx.op.binary.f32(i32 35, float %3865, float %3866)  ; FMax(a,b)
  %3868 = call float @dx.op.binary.f32(i32 36, float %3865, float %3866)  ; FMin(a,b)
  %3869 = fcmp fast ogt float %3826, %3867
  %3870 = fsub fast float %3826, %3868
  %3871 = fsub fast float %3826, %3867
  %3872 = fsub fast float %3867, %3868
  %3873 = select i1 %3869, float %3871, float %3872
  %3874 = fmul float %3870, %3873
  %3875 = select i1 %3869, float %3868, float %3826
  %3876 = fcmp fast ogt float %3826, %3868
  %3877 = fmul fast float %3875, %3867
  %3878 = fadd fast float %3875, %3867
  %3879 = fmul fast float %3878, %3660
  %3880 = fadd fast float %3877, %3661
  %3881 = fsub fast float %3880, %3879
  %3882 = fdiv fast float %3881, %3874
  %3883 = select i1 %3876, float %3882, float 0.000000e+00
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = select i1 %3869, float %3884, float %3883
  %3886 = call float @dx.op.unary.f32(i32 7, float %3885)  ; Saturate(value)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3645, 3
  %3888 = fmul fast float %3887, %3886
  %3889 = fsub fast float 1.000000e+00, %3888
  br label %3890

; <label>:3890                                    ; preds = %3819, %3497, %3223, %3181
  %3891 = phi float [ 1.000000e+00, %3181 ], [ %3889, %3819 ], [ 1.000000e+00, %3223 ], [ 1.000000e+00, %3497 ]
  %3892 = fcmp fast ogt float %3216, 0.000000e+00
  br i1 %3892, label %3893, label %4061, !dx.controlflow.hints !88

; <label>:3893                                    ; preds = %3890
  %3894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3894, 2
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = fmul fast float %3895, %192
  %3899 = fadd fast float %3897, %219
  %3900 = fadd fast float %3899, %3898
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 2
  %3903 = extractvalue %dx.types.CBufRet.f32 %3901, 3
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3906 = call float @dx.op.binary.f32(i32 35, float %3900, float 0.000000e+00)  ; FMax(a,b)
  %3907 = fadd fast float %3906, 0x3F10000000000000
  %3908 = fcmp fast oeq float %3905, 0.000000e+00
  br i1 %3908, label %3909, label %3976, !dx.controlflow.hints !52

; <label>:3909                                    ; preds = %3893
  %3910 = extractvalue %dx.types.CBufRet.f32 %3901, 1
  %3911 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3912 = fmul fast float %3911, %3112
  %3913 = fmul fast float %3910, %3113
  %3914 = fadd fast float %3912, 5.000000e-01
  %3915 = call float @dx.op.unary.f32(i32 27, float %3914)  ; Round_ni(value)
  %3916 = fadd fast float %3913, 5.000000e-01
  %3917 = call float @dx.op.unary.f32(i32 27, float %3916)  ; Round_ni(value)
  %3918 = fsub fast float %3914, %3915
  %3919 = fsub fast float %3916, %3917
  %3920 = fadd fast float %3915, -5.000000e-01
  %3921 = fadd fast float %3917, -5.000000e-01
  %3922 = fmul fast float %3918, 2.000000e+00
  %3923 = fsub fast float 3.000000e+00, %3922
  %3924 = fadd fast float %3922, 1.000000e+00
  %3925 = fsub fast float 2.000000e+00, %3918
  %3926 = bitcast float %3923 to i32
  %3927 = sub nsw i32 2129859010, %3926
  %3928 = bitcast i32 %3927 to float
  %3929 = fmul fast float %3928, %3925
  %3930 = fadd fast float %3929, -1.000000e+00
  %3931 = bitcast float %3924 to i32
  %3932 = sub nsw i32 2129859010, %3931
  %3933 = bitcast i32 %3932 to float
  %3934 = fmul fast float %3933, %3918
  %3935 = fadd fast float %3934, 1.000000e+00
  %3936 = fmul fast float %3919, 2.000000e+00
  %3937 = fsub fast float 3.000000e+00, %3936
  %3938 = fadd fast float %3936, 1.000000e+00
  %3939 = fsub fast float 2.000000e+00, %3919
  %3940 = bitcast float %3937 to i32
  %3941 = sub nsw i32 2129859010, %3940
  %3942 = bitcast i32 %3941 to float
  %3943 = fmul fast float %3942, %3939
  %3944 = fadd fast float %3943, -1.000000e+00
  %3945 = bitcast float %3938 to i32
  %3946 = sub nsw i32 2129859010, %3945
  %3947 = bitcast i32 %3946 to float
  %3948 = fmul fast float %3947, %3919
  %3949 = fadd fast float %3948, 1.000000e+00
  %3950 = fadd fast float %3930, %3920
  %3951 = fmul fast float %3950, %3902
  %3952 = fadd fast float %3944, %3921
  %3953 = fmul fast float %3952, %3903
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %3951, float %3953, float undef, float undef, i32 0, i32 0, i32 undef, float %3907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = fmul fast float %3955, %3923
  %3957 = fadd fast float %3935, %3920
  %3958 = fmul fast float %3957, %3902
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %3958, float %3953, float undef, float undef, i32 0, i32 0, i32 undef, float %3907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = fmul fast float %3960, %3924
  %3962 = fadd fast float %3949, %3921
  %3963 = fmul fast float %3962, %3903
  %3964 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %3951, float %3963, float undef, float undef, i32 0, i32 0, i32 undef, float %3907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = fmul fast float %3965, %3923
  %3967 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %30, float %3958, float %3963, float undef, float undef, i32 0, i32 0, i32 undef, float %3907)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3968 = extractvalue %dx.types.ResRet.f32 %3967, 0
  %3969 = fmul fast float %3968, %3924
  %3970 = fadd fast float %3969, %3966
  %3971 = fmul fast float %3970, %3938
  %3972 = fadd fast float %3961, %3956
  %3973 = fmul fast float %3972, %3937
  %3974 = fadd fast float %3973, %3971
  %3975 = fmul fast float %3974, 6.250000e-02
  br label %4061

; <label>:3976                                    ; preds = %3893
  %3977 = fmul fast float %230, 0x401921FB60000000
  %3978 = call float @dx.op.unary.f32(i32 13, float %3977)  ; Sin(value)
  %3979 = call float @dx.op.unary.f32(i32 12, float %3977)  ; Cos(value)
  %3980 = fsub fast float -0.000000e+00, %3978
  br label %3981

; <label>:3981                                    ; preds = %4030, %3976
  %3982 = phi float [ 0.000000e+00, %3976 ], [ %4025, %4030 ]
  %3983 = phi float [ 0.000000e+00, %3976 ], [ %4027, %4030 ]
  %3984 = phi i32 [ 0, %3976 ], [ %4031, %4030 ]
  %3985 = mul i32 %3984, 2
  %3986 = add i32 0, %3985
  %3987 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3986
  %3988 = load float, float* %3987, align 4
  %3989 = mul i32 %3984, 2
  %3990 = add i32 1, %3989
  %3991 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3990
  %3992 = load float, float* %3991, align 4
  %3993 = fmul fast float %3988, %3979
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3980, float %3993)  ; FMad(a,b,c)
  %3995 = fmul fast float %3988, %3978
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3992, float %3979, float %3995)  ; FMad(a,b,c)
  %3997 = fmul fast float %3994, %3905
  %3998 = fmul fast float %3996, %3905
  %3999 = fadd fast float %3997, %3112
  %4000 = fadd fast float %3998, %3113
  %4001 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %29, float %3999, float %4000, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %4001, 2
  %4005 = extractvalue %dx.types.ResRet.f32 %4001, 3
  %4006 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %4002, float* %4006, align 4
  %4007 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %4003, float* %4007, align 4
  %4008 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %4004, float* %4008, align 4
  %4009 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %4005, float* %4009, align 4
  %4010 = fsub fast float %4002, %3907
  %4011 = fcmp fast olt float %4010, 0.000000e+00
  %4012 = select i1 %4011, float 0.000000e+00, float 1.000000e+00
  %4013 = fadd fast float %4012, %3982
  %4014 = fmul fast float %4012, %4010
  %4015 = fadd fast float %4014, %3983
  br label %4016

; <label>:4016                                    ; preds = %4016, %3981
  %4017 = phi i32 [ 1, %3981 ], [ %4028, %4016 ]
  %4018 = phi float [ %4015, %3981 ], [ %4027, %4016 ]
  %4019 = phi float [ %4013, %3981 ], [ %4025, %4016 ]
  %4020 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %4017
  %4021 = load float, float* %4020, align 4, !tbaa !53
  %4022 = fsub fast float %4021, %3907
  %4023 = fcmp fast olt float %4022, 0.000000e+00
  %4024 = select i1 %4023, float 0.000000e+00, float 1.000000e+00
  %4025 = fadd fast float %4024, %4019
  %4026 = fmul fast float %4024, %4022
  %4027 = fadd fast float %4026, %4018
  %4028 = add nuw nsw i32 %4017, 1
  %4029 = icmp eq i32 %4028, 4
  br i1 %4029, label %4030, label %4016, !llvm.loop !57

; <label>:4030                                    ; preds = %4016
  %4031 = add nuw nsw i32 %3984, 1
  %4032 = icmp eq i32 %4031, 8
  br i1 %4032, label %4033, label %3981, !llvm.loop !59

; <label>:4033                                    ; preds = %4030
  %4034 = fdiv fast float 1.000000e+00, %4025
  %4035 = fmul fast float %4034, %4027
  %4036 = fdiv fast float 1.000000e+00, %3907
  %4037 = fmul fast float %4035, %4036
  %4038 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4039 = call float @dx.op.binary.f32(i32 35, float %4038, float 0.000000e+00)  ; FMax(a,b)
  %4040 = fmul fast float %4025, 3.125000e-02
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %4041, 2.000000e+00
  %4043 = fadd fast float %4042, -1.000000e+00
  %4044 = fcmp fast ogt float %4043, 0.000000e+00
  %4045 = fcmp fast olt float %4043, 0.000000e+00
  %4046 = zext i1 %4044 to i32
  %4047 = zext i1 %4045 to i32
  %4048 = sub nsw i32 %4046, %4047
  %4049 = sitofp i32 %4048 to float
  %4050 = fmul fast float %4049, %4043
  %4051 = fsub fast float 1.000000e+00, %4050
  %4052 = fmul fast float %4051, %4051
  %4053 = fmul fast float %4052, %4051
  %4054 = fsub fast float %4051, %4053
  %4055 = fmul fast float %4054, %4039
  %4056 = fsub fast float 1.000000e+00, %4053
  %4057 = fsub fast float %4056, %4055
  %4058 = fmul fast float %4049, 5.000000e-01
  %4059 = fmul fast float %4058, %4057
  %4060 = fsub fast float 5.000000e-01, %4059
  br label %4061

; <label>:4061                                    ; preds = %4033, %3909, %3890
  %4062 = phi float [ 1.000000e+00, %3890 ], [ %3975, %3909 ], [ %4060, %4033 ]
  %4063 = fcmp fast ogt float %3214, 0.000000e+00
  br i1 %4063, label %4064, label %4232, !dx.controlflow.hints !89

; <label>:4064                                    ; preds = %4061
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4069 = fmul fast float %4066, %192
  %4070 = fadd fast float %4068, %219
  %4071 = fadd fast float %4070, %4069
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4077 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4078 = fadd fast float %4077, 0x3F10000000000000
  %4079 = fcmp fast oeq float %4076, 0.000000e+00
  br i1 %4079, label %4080, label %4147, !dx.controlflow.hints !52

; <label>:4080                                    ; preds = %4064
  %4081 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4083 = fmul fast float %4082, %3104
  %4084 = fmul fast float %4081, %3105
  %4085 = fadd fast float %4083, 5.000000e-01
  %4086 = call float @dx.op.unary.f32(i32 27, float %4085)  ; Round_ni(value)
  %4087 = fadd fast float %4084, 5.000000e-01
  %4088 = call float @dx.op.unary.f32(i32 27, float %4087)  ; Round_ni(value)
  %4089 = fsub fast float %4085, %4086
  %4090 = fsub fast float %4087, %4088
  %4091 = fadd fast float %4086, -5.000000e-01
  %4092 = fadd fast float %4088, -5.000000e-01
  %4093 = fmul fast float %4089, 2.000000e+00
  %4094 = fsub fast float 3.000000e+00, %4093
  %4095 = fadd fast float %4093, 1.000000e+00
  %4096 = fsub fast float 2.000000e+00, %4089
  %4097 = bitcast float %4094 to i32
  %4098 = sub nsw i32 2129859010, %4097
  %4099 = bitcast i32 %4098 to float
  %4100 = fmul fast float %4099, %4096
  %4101 = fadd fast float %4100, -1.000000e+00
  %4102 = bitcast float %4095 to i32
  %4103 = sub nsw i32 2129859010, %4102
  %4104 = bitcast i32 %4103 to float
  %4105 = fmul fast float %4104, %4089
  %4106 = fadd fast float %4105, 1.000000e+00
  %4107 = fmul fast float %4090, 2.000000e+00
  %4108 = fsub fast float 3.000000e+00, %4107
  %4109 = fadd fast float %4107, 1.000000e+00
  %4110 = fsub fast float 2.000000e+00, %4090
  %4111 = bitcast float %4108 to i32
  %4112 = sub nsw i32 2129859010, %4111
  %4113 = bitcast i32 %4112 to float
  %4114 = fmul fast float %4113, %4110
  %4115 = fadd fast float %4114, -1.000000e+00
  %4116 = bitcast float %4109 to i32
  %4117 = sub nsw i32 2129859010, %4116
  %4118 = bitcast i32 %4117 to float
  %4119 = fmul fast float %4118, %4090
  %4120 = fadd fast float %4119, 1.000000e+00
  %4121 = fadd fast float %4101, %4091
  %4122 = fmul fast float %4121, %4073
  %4123 = fadd fast float %4115, %4092
  %4124 = fmul fast float %4123, %4074
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %4122, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float %4078)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fmul fast float %4126, %4094
  %4128 = fadd fast float %4106, %4091
  %4129 = fmul fast float %4128, %4073
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %4129, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float %4078)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = fmul fast float %4131, %4095
  %4133 = fadd fast float %4120, %4092
  %4134 = fmul fast float %4133, %4074
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %4122, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float %4078)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = fmul fast float %4136, %4094
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %30, float %4129, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float %4078)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = fmul fast float %4139, %4095
  %4141 = fadd fast float %4140, %4137
  %4142 = fmul fast float %4141, %4109
  %4143 = fadd fast float %4132, %4127
  %4144 = fmul fast float %4143, %4108
  %4145 = fadd fast float %4144, %4142
  %4146 = fmul fast float %4145, 6.250000e-02
  br label %4232

; <label>:4147                                    ; preds = %4064
  %4148 = fmul fast float %230, 0x401921FB60000000
  %4149 = call float @dx.op.unary.f32(i32 13, float %4148)  ; Sin(value)
  %4150 = call float @dx.op.unary.f32(i32 12, float %4148)  ; Cos(value)
  %4151 = fsub fast float -0.000000e+00, %4149
  br label %4152

; <label>:4152                                    ; preds = %4201, %4147
  %4153 = phi float [ 0.000000e+00, %4147 ], [ %4196, %4201 ]
  %4154 = phi float [ 0.000000e+00, %4147 ], [ %4198, %4201 ]
  %4155 = phi i32 [ 0, %4147 ], [ %4202, %4201 ]
  %4156 = mul i32 %4155, 2
  %4157 = add i32 0, %4156
  %4158 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4157
  %4159 = load float, float* %4158, align 4
  %4160 = mul i32 %4155, 2
  %4161 = add i32 1, %4160
  %4162 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4161
  %4163 = load float, float* %4162, align 4
  %4164 = fmul fast float %4159, %4150
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4151, float %4164)  ; FMad(a,b,c)
  %4166 = fmul fast float %4159, %4149
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4150, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4165, %4076
  %4169 = fmul fast float %4167, %4076
  %4170 = fadd fast float %4168, %3104
  %4171 = fadd fast float %4169, %3105
  %4172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %29, float %4170, float %4171, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.ResRet.f32 %4172, 3
  %4177 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %4173, float* %4177, align 4
  %4178 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %4174, float* %4178, align 4
  %4179 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %4175, float* %4179, align 4
  %4180 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %4176, float* %4180, align 4
  %4181 = fsub fast float %4173, %4078
  %4182 = fcmp fast olt float %4181, 0.000000e+00
  %4183 = select i1 %4182, float 0.000000e+00, float 1.000000e+00
  %4184 = fadd fast float %4183, %4153
  %4185 = fmul fast float %4183, %4181
  %4186 = fadd fast float %4185, %4154
  br label %4187

; <label>:4187                                    ; preds = %4187, %4152
  %4188 = phi i32 [ 1, %4152 ], [ %4199, %4187 ]
  %4189 = phi float [ %4186, %4152 ], [ %4198, %4187 ]
  %4190 = phi float [ %4184, %4152 ], [ %4196, %4187 ]
  %4191 = getelementptr [4 x float], [4 x float]* %46, i32 0, i32 %4188
  %4192 = load float, float* %4191, align 4, !tbaa !53
  %4193 = fsub fast float %4192, %4078
  %4194 = fcmp fast olt float %4193, 0.000000e+00
  %4195 = select i1 %4194, float 0.000000e+00, float 1.000000e+00
  %4196 = fadd fast float %4195, %4190
  %4197 = fmul fast float %4195, %4193
  %4198 = fadd fast float %4197, %4189
  %4199 = add nuw nsw i32 %4188, 1
  %4200 = icmp eq i32 %4199, 4
  br i1 %4200, label %4201, label %4187, !llvm.loop !57

; <label>:4201                                    ; preds = %4187
  %4202 = add nuw nsw i32 %4155, 1
  %4203 = icmp eq i32 %4202, 8
  br i1 %4203, label %4204, label %4152, !llvm.loop !59

; <label>:4204                                    ; preds = %4201
  %4205 = fdiv fast float 1.000000e+00, %4196
  %4206 = fmul fast float %4205, %4198
  %4207 = fdiv fast float 1.000000e+00, %4078
  %4208 = fmul fast float %4206, %4207
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4211 = fmul fast float %4196, 3.125000e-02
  %4212 = call float @dx.op.unary.f32(i32 7, float %4211)  ; Saturate(value)
  %4213 = fmul fast float %4212, 2.000000e+00
  %4214 = fadd fast float %4213, -1.000000e+00
  %4215 = fcmp fast ogt float %4214, 0.000000e+00
  %4216 = fcmp fast olt float %4214, 0.000000e+00
  %4217 = zext i1 %4215 to i32
  %4218 = zext i1 %4216 to i32
  %4219 = sub nsw i32 %4217, %4218
  %4220 = sitofp i32 %4219 to float
  %4221 = fmul fast float %4220, %4214
  %4222 = fsub fast float 1.000000e+00, %4221
  %4223 = fmul fast float %4222, %4222
  %4224 = fmul fast float %4223, %4222
  %4225 = fsub fast float %4222, %4224
  %4226 = fmul fast float %4225, %4210
  %4227 = fsub fast float 1.000000e+00, %4224
  %4228 = fsub fast float %4227, %4226
  %4229 = fmul fast float %4220, 5.000000e-01
  %4230 = fmul fast float %4229, %4228
  %4231 = fsub fast float 5.000000e-01, %4230
  br label %4232

; <label>:4232                                    ; preds = %4204, %4080, %4061
  %4233 = phi float [ 1.000000e+00, %4061 ], [ %4146, %4080 ], [ %4231, %4204 ]
  %4234 = fcmp fast ogt float %3213, 0.000000e+00
  br i1 %4234, label %4235, label %4557, !dx.controlflow.hints !90

; <label>:4235                                    ; preds = %4232
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 2
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = fmul fast float %4237, %192
  %4241 = fadd fast float %4239, %219
  %4242 = fadd fast float %4241, %4240
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 0
  %4248 = call float @dx.op.binary.f32(i32 35, float %4242, float 0.000000e+00)  ; FMax(a,b)
  %4249 = fadd fast float %4248, 0x3F10000000000000
  %4250 = fcmp fast oeq float %4247, 0.000000e+00
  br i1 %85, label %4251, label %4404, !dx.controlflow.hints !91

; <label>:4251                                    ; preds = %4235
  br i1 %4250, label %4252, label %4319, !dx.controlflow.hints !52

; <label>:4252                                    ; preds = %4251
  %4253 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4254 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4255 = fmul fast float %4254, %211
  %4256 = fmul fast float %4253, %215
  %4257 = fadd fast float %4255, 5.000000e-01
  %4258 = call float @dx.op.unary.f32(i32 27, float %4257)  ; Round_ni(value)
  %4259 = fadd fast float %4256, 5.000000e-01
  %4260 = call float @dx.op.unary.f32(i32 27, float %4259)  ; Round_ni(value)
  %4261 = fsub fast float %4257, %4258
  %4262 = fsub fast float %4259, %4260
  %4263 = fadd fast float %4258, -5.000000e-01
  %4264 = fadd fast float %4260, -5.000000e-01
  %4265 = fmul fast float %4261, 2.000000e+00
  %4266 = fsub fast float 3.000000e+00, %4265
  %4267 = fadd fast float %4265, 1.000000e+00
  %4268 = fsub fast float 2.000000e+00, %4261
  %4269 = bitcast float %4266 to i32
  %4270 = sub nsw i32 2129859010, %4269
  %4271 = bitcast i32 %4270 to float
  %4272 = fmul fast float %4271, %4268
  %4273 = fadd fast float %4272, -1.000000e+00
  %4274 = bitcast float %4267 to i32
  %4275 = sub nsw i32 2129859010, %4274
  %4276 = bitcast i32 %4275 to float
  %4277 = fmul fast float %4276, %4261
  %4278 = fadd fast float %4277, 1.000000e+00
  %4279 = fmul fast float %4262, 2.000000e+00
  %4280 = fsub fast float 3.000000e+00, %4279
  %4281 = fadd fast float %4279, 1.000000e+00
  %4282 = fsub fast float 2.000000e+00, %4262
  %4283 = bitcast float %4280 to i32
  %4284 = sub nsw i32 2129859010, %4283
  %4285 = bitcast i32 %4284 to float
  %4286 = fmul fast float %4285, %4282
  %4287 = fadd fast float %4286, -1.000000e+00
  %4288 = bitcast float %4281 to i32
  %4289 = sub nsw i32 2129859010, %4288
  %4290 = bitcast i32 %4289 to float
  %4291 = fmul fast float %4290, %4262
  %4292 = fadd fast float %4291, 1.000000e+00
  %4293 = fadd fast float %4273, %4263
  %4294 = fmul fast float %4293, %4244
  %4295 = fadd fast float %4287, %4264
  %4296 = fmul fast float %4295, %4245
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %4294, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = fmul fast float %4298, %4266
  %4300 = fadd fast float %4278, %4263
  %4301 = fmul fast float %4300, %4244
  %4302 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %4301, float %4296, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = fmul fast float %4303, %4267
  %4305 = fadd fast float %4292, %4264
  %4306 = fmul fast float %4305, %4245
  %4307 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %4294, float %4306, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = fmul fast float %4308, %4266
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %30, float %4301, float %4306, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = fmul fast float %4311, %4267
  %4313 = fadd fast float %4312, %4309
  %4314 = fmul fast float %4313, %4281
  %4315 = fadd fast float %4304, %4299
  %4316 = fmul fast float %4315, %4280
  %4317 = fadd fast float %4316, %4314
  %4318 = fmul fast float %4317, 6.250000e-02
  br label %4557

; <label>:4319                                    ; preds = %4251
  %4320 = fmul fast float %230, 0x401921FB60000000
  %4321 = call float @dx.op.unary.f32(i32 13, float %4320)  ; Sin(value)
  %4322 = call float @dx.op.unary.f32(i32 12, float %4320)  ; Cos(value)
  %4323 = fsub fast float -0.000000e+00, %4321
  br label %4324

; <label>:4324                                    ; preds = %4373, %4319
  %4325 = phi float [ 0.000000e+00, %4319 ], [ %4368, %4373 ]
  %4326 = phi float [ 0.000000e+00, %4319 ], [ %4370, %4373 ]
  %4327 = phi i32 [ 0, %4319 ], [ %4374, %4373 ]
  %4328 = mul i32 %4327, 2
  %4329 = add i32 0, %4328
  %4330 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4329
  %4331 = load float, float* %4330, align 4
  %4332 = mul i32 %4327, 2
  %4333 = add i32 1, %4332
  %4334 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4333
  %4335 = load float, float* %4334, align 4
  %4336 = fmul fast float %4331, %4322
  %4337 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4323, float %4336)  ; FMad(a,b,c)
  %4338 = fmul fast float %4331, %4321
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4322, float %4338)  ; FMad(a,b,c)
  %4340 = fmul fast float %4337, %4247
  %4341 = fmul fast float %4339, %4247
  %4342 = fadd fast float %4340, %211
  %4343 = fadd fast float %4341, %215
  %4344 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %29, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = extractvalue %dx.types.ResRet.f32 %4344, 3
  %4349 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 0
  store float %4345, float* %4349, align 4
  %4350 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 1
  store float %4346, float* %4350, align 4
  %4351 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 2
  store float %4347, float* %4351, align 4
  %4352 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 3
  store float %4348, float* %4352, align 4
  %4353 = fsub fast float %4345, %4249
  %4354 = fcmp fast olt float %4353, 0.000000e+00
  %4355 = select i1 %4354, float 0.000000e+00, float 1.000000e+00
  %4356 = fadd fast float %4355, %4325
  %4357 = fmul fast float %4355, %4353
  %4358 = fadd fast float %4357, %4326
  br label %4359

; <label>:4359                                    ; preds = %4359, %4324
  %4360 = phi i32 [ 1, %4324 ], [ %4371, %4359 ]
  %4361 = phi float [ %4358, %4324 ], [ %4370, %4359 ]
  %4362 = phi float [ %4356, %4324 ], [ %4368, %4359 ]
  %4363 = getelementptr [4 x float], [4 x float]* %45, i32 0, i32 %4360
  %4364 = load float, float* %4363, align 4, !tbaa !53
  %4365 = fsub fast float %4364, %4249
  %4366 = fcmp fast olt float %4365, 0.000000e+00
  %4367 = select i1 %4366, float 0.000000e+00, float 1.000000e+00
  %4368 = fadd fast float %4367, %4362
  %4369 = fmul fast float %4367, %4365
  %4370 = fadd fast float %4369, %4361
  %4371 = add nuw nsw i32 %4360, 1
  %4372 = icmp eq i32 %4371, 4
  br i1 %4372, label %4373, label %4359, !llvm.loop !57

; <label>:4373                                    ; preds = %4359
  %4374 = add nuw nsw i32 %4327, 1
  %4375 = icmp eq i32 %4374, 8
  br i1 %4375, label %4376, label %4324, !llvm.loop !59

; <label>:4376                                    ; preds = %4373
  %4377 = fdiv fast float 1.000000e+00, %4368
  %4378 = fmul fast float %4377, %4370
  %4379 = fdiv fast float 1.000000e+00, %4249
  %4380 = fmul fast float %4378, %4379
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = call float @dx.op.binary.f32(i32 35, float %4381, float 0.000000e+00)  ; FMax(a,b)
  %4383 = fmul fast float %4368, 3.125000e-02
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4384, 2.000000e+00
  %4386 = fadd fast float %4385, -1.000000e+00
  %4387 = fcmp fast ogt float %4386, 0.000000e+00
  %4388 = fcmp fast olt float %4386, 0.000000e+00
  %4389 = zext i1 %4387 to i32
  %4390 = zext i1 %4388 to i32
  %4391 = sub nsw i32 %4389, %4390
  %4392 = sitofp i32 %4391 to float
  %4393 = fmul fast float %4392, %4386
  %4394 = fsub fast float 1.000000e+00, %4393
  %4395 = fmul fast float %4394, %4394
  %4396 = fmul fast float %4395, %4394
  %4397 = fsub fast float %4394, %4396
  %4398 = fmul fast float %4397, %4382
  %4399 = fsub fast float 1.000000e+00, %4396
  %4400 = fsub fast float %4399, %4398
  %4401 = fmul fast float %4392, 5.000000e-01
  %4402 = fmul fast float %4401, %4400
  %4403 = fsub fast float 5.000000e-01, %4402
  br label %4557

; <label>:4404                                    ; preds = %4235
  br i1 %4250, label %4405, label %4472, !dx.controlflow.hints !52

; <label>:4405                                    ; preds = %4404
  %4406 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4407 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4408 = fmul fast float %4407, %211
  %4409 = fmul fast float %4406, %215
  %4410 = fadd fast float %4408, 5.000000e-01
  %4411 = call float @dx.op.unary.f32(i32 27, float %4410)  ; Round_ni(value)
  %4412 = fadd fast float %4409, 5.000000e-01
  %4413 = call float @dx.op.unary.f32(i32 27, float %4412)  ; Round_ni(value)
  %4414 = fsub fast float %4410, %4411
  %4415 = fsub fast float %4412, %4413
  %4416 = fadd fast float %4411, -5.000000e-01
  %4417 = fadd fast float %4413, -5.000000e-01
  %4418 = fmul fast float %4414, 2.000000e+00
  %4419 = fsub fast float 3.000000e+00, %4418
  %4420 = fadd fast float %4418, 1.000000e+00
  %4421 = fsub fast float 2.000000e+00, %4414
  %4422 = bitcast float %4419 to i32
  %4423 = sub nsw i32 2129859010, %4422
  %4424 = bitcast i32 %4423 to float
  %4425 = fmul fast float %4424, %4421
  %4426 = fadd fast float %4425, -1.000000e+00
  %4427 = bitcast float %4420 to i32
  %4428 = sub nsw i32 2129859010, %4427
  %4429 = bitcast i32 %4428 to float
  %4430 = fmul fast float %4429, %4414
  %4431 = fadd fast float %4430, 1.000000e+00
  %4432 = fmul fast float %4415, 2.000000e+00
  %4433 = fsub fast float 3.000000e+00, %4432
  %4434 = fadd fast float %4432, 1.000000e+00
  %4435 = fsub fast float 2.000000e+00, %4415
  %4436 = bitcast float %4433 to i32
  %4437 = sub nsw i32 2129859010, %4436
  %4438 = bitcast i32 %4437 to float
  %4439 = fmul fast float %4438, %4435
  %4440 = fadd fast float %4439, -1.000000e+00
  %4441 = bitcast float %4434 to i32
  %4442 = sub nsw i32 2129859010, %4441
  %4443 = bitcast i32 %4442 to float
  %4444 = fmul fast float %4443, %4415
  %4445 = fadd fast float %4444, 1.000000e+00
  %4446 = fadd fast float %4426, %4416
  %4447 = fmul fast float %4446, %4244
  %4448 = fadd fast float %4440, %4417
  %4449 = fmul fast float %4448, %4245
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %4447, float %4449, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = fmul fast float %4451, %4419
  %4453 = fadd fast float %4431, %4416
  %4454 = fmul fast float %4453, %4244
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %4454, float %4449, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = fmul fast float %4456, %4420
  %4458 = fadd fast float %4445, %4417
  %4459 = fmul fast float %4458, %4245
  %4460 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %4447, float %4459, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4461 = extractvalue %dx.types.ResRet.f32 %4460, 0
  %4462 = fmul fast float %4461, %4419
  %4463 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %30, float %4454, float %4459, float undef, float undef, i32 0, i32 0, i32 undef, float %4249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = fmul fast float %4464, %4420
  %4466 = fadd fast float %4465, %4462
  %4467 = fmul fast float %4466, %4434
  %4468 = fadd fast float %4457, %4452
  %4469 = fmul fast float %4468, %4433
  %4470 = fadd fast float %4469, %4467
  %4471 = fmul fast float %4470, 6.250000e-02
  br label %4557

; <label>:4472                                    ; preds = %4404
  %4473 = fmul fast float %230, 0x401921FB60000000
  %4474 = call float @dx.op.unary.f32(i32 13, float %4473)  ; Sin(value)
  %4475 = call float @dx.op.unary.f32(i32 12, float %4473)  ; Cos(value)
  %4476 = fsub fast float -0.000000e+00, %4474
  br label %4477

; <label>:4477                                    ; preds = %4526, %4472
  %4478 = phi float [ 0.000000e+00, %4472 ], [ %4521, %4526 ]
  %4479 = phi float [ 0.000000e+00, %4472 ], [ %4523, %4526 ]
  %4480 = phi i32 [ 0, %4472 ], [ %4527, %4526 ]
  %4481 = mul i32 %4480, 2
  %4482 = add i32 0, %4481
  %4483 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4482
  %4484 = load float, float* %4483, align 4
  %4485 = mul i32 %4480, 2
  %4486 = add i32 1, %4485
  %4487 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4486
  %4488 = load float, float* %4487, align 4
  %4489 = fmul fast float %4484, %4475
  %4490 = call float @dx.op.tertiary.f32(i32 46, float %4488, float %4476, float %4489)  ; FMad(a,b,c)
  %4491 = fmul fast float %4484, %4474
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4488, float %4475, float %4491)  ; FMad(a,b,c)
  %4493 = fmul fast float %4490, %4247
  %4494 = fmul fast float %4492, %4247
  %4495 = fadd fast float %4493, %211
  %4496 = fadd fast float %4494, %215
  %4497 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %29, float %4495, float %4496, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.ResRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.ResRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.ResRet.f32 %4497, 3
  %4502 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 0
  store float %4498, float* %4502, align 4
  %4503 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 1
  store float %4499, float* %4503, align 4
  %4504 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 2
  store float %4500, float* %4504, align 4
  %4505 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 3
  store float %4501, float* %4505, align 4
  %4506 = fsub fast float %4498, %4249
  %4507 = fcmp fast olt float %4506, 0.000000e+00
  %4508 = select i1 %4507, float 0.000000e+00, float 1.000000e+00
  %4509 = fadd fast float %4508, %4478
  %4510 = fmul fast float %4508, %4506
  %4511 = fadd fast float %4510, %4479
  br label %4512

; <label>:4512                                    ; preds = %4512, %4477
  %4513 = phi i32 [ 1, %4477 ], [ %4524, %4512 ]
  %4514 = phi float [ %4511, %4477 ], [ %4523, %4512 ]
  %4515 = phi float [ %4509, %4477 ], [ %4521, %4512 ]
  %4516 = getelementptr [4 x float], [4 x float]* %44, i32 0, i32 %4513
  %4517 = load float, float* %4516, align 4, !tbaa !53
  %4518 = fsub fast float %4517, %4249
  %4519 = fcmp fast olt float %4518, 0.000000e+00
  %4520 = select i1 %4519, float 0.000000e+00, float 1.000000e+00
  %4521 = fadd fast float %4520, %4515
  %4522 = fmul fast float %4520, %4518
  %4523 = fadd fast float %4522, %4514
  %4524 = add nuw nsw i32 %4513, 1
  %4525 = icmp eq i32 %4524, 4
  br i1 %4525, label %4526, label %4512, !llvm.loop !57

; <label>:4526                                    ; preds = %4512
  %4527 = add nuw nsw i32 %4480, 1
  %4528 = icmp eq i32 %4527, 8
  br i1 %4528, label %4529, label %4477, !llvm.loop !59

; <label>:4529                                    ; preds = %4526
  %4530 = fdiv fast float 1.000000e+00, %4521
  %4531 = fmul fast float %4530, %4523
  %4532 = fdiv fast float 1.000000e+00, %4249
  %4533 = fmul fast float %4531, %4532
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call float @dx.op.binary.f32(i32 35, float %4534, float 0.000000e+00)  ; FMax(a,b)
  %4536 = fmul fast float %4521, 3.125000e-02
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fmul fast float %4537, 2.000000e+00
  %4539 = fadd fast float %4538, -1.000000e+00
  %4540 = fcmp fast ogt float %4539, 0.000000e+00
  %4541 = fcmp fast olt float %4539, 0.000000e+00
  %4542 = zext i1 %4540 to i32
  %4543 = zext i1 %4541 to i32
  %4544 = sub nsw i32 %4542, %4543
  %4545 = sitofp i32 %4544 to float
  %4546 = fmul fast float %4545, %4539
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = fmul fast float %4547, %4547
  %4549 = fmul fast float %4548, %4547
  %4550 = fsub fast float %4547, %4549
  %4551 = fmul fast float %4550, %4535
  %4552 = fsub fast float 1.000000e+00, %4549
  %4553 = fsub fast float %4552, %4551
  %4554 = fmul fast float %4545, 5.000000e-01
  %4555 = fmul fast float %4554, %4553
  %4556 = fsub fast float 5.000000e-01, %4555
  br label %4557

; <label>:4557                                    ; preds = %4529, %4405, %4376, %4252, %4232
  %4558 = phi float [ 1.000000e+00, %4232 ], [ %4318, %4252 ], [ %4403, %4376 ], [ %4471, %4405 ], [ %4556, %4529 ]
  %4559 = fsub fast float %4062, %3891
  %4560 = fmul fast float %4559, %3183
  %4561 = fadd fast float %4560, %3891
  %4562 = fsub fast float %4233, %4561
  %4563 = fmul fast float %4562, %3182
  %4564 = fadd fast float %4563, %4561
  %4565 = fsub fast float %4558, %4564
  %4566 = fmul fast float %4565, %3213
  %4567 = fadd fast float %4566, %4564
  br label %4568

; <label>:4568                                    ; preds = %4557, %3086, %1624, %1553, %1231, %957, %954, %924, %800, %747, %623, %570, %446, %393, %269
  %4569 = phi float [ %4567, %4557 ], [ %3096, %3086 ], [ %335, %269 ], [ %420, %393 ], [ %512, %446 ], [ %597, %570 ], [ %689, %623 ], [ %774, %747 ], [ %866, %800 ], [ %951, %924 ], [ %1623, %1553 ], [ 1.000000e+00, %957 ], [ 1.000000e+00, %1231 ], [ 1.000000e+00, %954 ], [ 0.000000e+00, %1624 ]
  %4570 = fcmp fast une float %4569, 0.000000e+00
  br i1 %4570, label %4571, label %4676, !dx.controlflow.hints !92

; <label>:4571                                    ; preds = %4568
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4574 = fcmp fast ugt float %4573, 0.000000e+00
  br i1 %4574, label %4575, label %4610, !dx.controlflow.hints !93

; <label>:4575                                    ; preds = %4571
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.CBufRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4586 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4587 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.CBufRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.CBufRet.f32 %4588, 2
  %4592 = fadd fast float %4589, %146
  %4593 = fadd fast float %4590, %147
  %4594 = fadd fast float %4591, %148
  %4595 = fmul fast float %4592, %4577
  %4596 = call float @dx.op.tertiary.f32(i32 46, float %4578, float %4593, float %4595)  ; FMad(a,b,c)
  %4597 = call float @dx.op.tertiary.f32(i32 46, float %4579, float %4594, float %4596)  ; FMad(a,b,c)
  %4598 = fadd fast float %4597, %4580
  %4599 = fmul fast float %4592, %4582
  %4600 = call float @dx.op.tertiary.f32(i32 46, float %4583, float %4593, float %4599)  ; FMad(a,b,c)
  %4601 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4594, float %4600)  ; FMad(a,b,c)
  %4602 = fadd fast float %4601, %4585
  %4603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %25, float %4598, float %4602, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = fmul fast float %4604, %4587
  %4606 = fadd fast float %4605, %4586
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = fmul fast float %4607, %4573
  %4609 = fsub fast float 1.000000e+00, %4608
  br label %4610

; <label>:4610                                    ; preds = %4575, %4571
  %4611 = phi float [ %4609, %4575 ], [ 1.000000e+00, %4571 ]
  %4612 = fmul fast float %4611, %4569
  %4613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.CBufRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.CBufRet.f32 %4613, 2
  %4617 = fadd fast float %4614, %146
  %4618 = fadd fast float %4615, %147
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.CBufRet.f32 %4621, 2
  %4625 = fsub fast float -0.000000e+00, %4617
  %4626 = fsub fast float -0.000000e+00, %4618
  %4627 = fsub fast float -0.000000e+00, %148
  %4628 = fsub fast float %4627, %4616
  %4629 = fadd fast float %4628, %4620
  %4630 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4625, float %4626, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4622, float %4623, float %4624)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = fdiv fast float 1.000000e+00, %4631
  %4633 = fmul fast float %4632, %4630
  %4634 = fmul fast float %4622, %4633
  %4635 = fmul fast float %4623, %4633
  %4636 = fadd fast float %4634, %4617
  %4637 = fadd fast float %4635, %4618
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4641 = fsub fast float %4636, %4639
  %4642 = fsub fast float %4637, %4640
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4646 = fmul fast float %4641, %4644
  %4647 = fmul fast float %4642, %4645
  %4648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.i32 %4648, 3
  %4650 = icmp eq i32 %4649, 0
  br i1 %4650, label %4656, label %4651, !dx.controlflow.hints !94

; <label>:4651                                    ; preds = %4610
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %27, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = extractvalue %dx.types.ResRet.f32 %4652, 1
  %4655 = extractvalue %dx.types.ResRet.f32 %4652, 2
  br label %4661

; <label>:4656                                    ; preds = %4610
  %4657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %28, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.ResRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.ResRet.f32 %4657, 2
  br label %4661

; <label>:4661                                    ; preds = %4656, %4651
  %4662 = phi float [ %4653, %4651 ], [ %4658, %4656 ]
  %4663 = phi float [ %4654, %4651 ], [ %4659, %4656 ]
  %4664 = phi float [ %4655, %4651 ], [ %4660, %4656 ]
  %4665 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4666 = fmul fast float %4665, %4662
  %4667 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4668 = fsub fast float %4633, %4667
  %4669 = fsub fast float %4668, %4666
  %4670 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4669)  ; FMax(a,b)
  %4671 = fmul fast float %4670, %4663
  %4672 = call float @dx.op.binary.f32(i32 36, float %4664, float %4671)  ; FMin(a,b)
  %4673 = fmul fast float %4672, 0xBFF7154760000000
  %4674 = call float @dx.op.unary.f32(i32 21, float %4673)  ; Exp(value)
  %4675 = fmul fast float %4612, %4674
  br label %4676

; <label>:4676                                    ; preds = %4661, %4568
  %4677 = phi float [ %4675, %4661 ], [ %4569, %4568 ]
  %4678 = fcmp fast ogt float %4677, 0.000000e+00
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 1
  %4681 = fcmp fast ogt float %182, %4680
  %4682 = and i1 %4678, %4681
  br i1 %4682, label %4683, label %4952, !dx.controlflow.hints !95

; <label>:4683                                    ; preds = %4676
  %4684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.i32 %4684, 0
  %4686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.i32 %4686, 0
  %4688 = select i1 %85, i32 %4685, i32 %4687
  %4689 = icmp sgt i32 %4688, 0
  br i1 %4689, label %4690, label %4952, !dx.controlflow.hints !96

; <label>:4690                                    ; preds = %4683
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 1
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 1
  %4695 = select i1 %85, float %4692, float %4694
  %4696 = extractvalue %dx.types.CBufRet.f32 %4691, 2
  %4697 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4698 = select i1 %85, float %4696, float %4697
  %4699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.i32 %4699, 0
  %4701 = uitofp i32 %4700 to float
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4705 = fmul fast float %4703, 5.000000e-01
  %4706 = fmul fast float %4704, 5.000000e-01
  %4707 = fsub fast float %81, %4705
  %4708 = fsub fast float %82, %4706
  %4709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %29, float %4707, float %4708, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = fcmp fast ogt float %4710, -1.000000e+00
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4716 = select i1 %4713, float %4715, float 1.000000e+00
  %4717 = fadd fast float %4710, 1.000000e+00
  %4718 = fmul fast float %4716, %4717
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = fcmp fast ogt float %4711, -1.000000e+00
  %4721 = select i1 %4720, float %4715, float 1.000000e+00
  %4722 = fadd fast float %4711, 1.000000e+00
  %4723 = fmul fast float %4721, %4722
  %4724 = call float @dx.op.unary.f32(i32 6, float %4723)  ; FAbs(value)
  %4725 = fcmp fast ogt float %4712, -1.000000e+00
  %4726 = select i1 %4725, float %4715, float 1.000000e+00
  %4727 = fadd fast float %4712, 1.000000e+00
  %4728 = fmul fast float %4726, %4727
  %4729 = call float @dx.op.unary.f32(i32 6, float %4728)  ; FAbs(value)
  %4730 = fadd fast float %4705, %81
  %4731 = fadd fast float %4706, %82
  %4732 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %23, %dx.types.Handle %29, float %4730, float %4731, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4735 = fcmp fast ogt float %4733, -1.000000e+00
  %4736 = select i1 %4735, float %4715, float 1.000000e+00
  %4737 = fadd fast float %4733, 1.000000e+00
  %4738 = fmul fast float %4736, %4737
  %4739 = call float @dx.op.unary.f32(i32 6, float %4738)  ; FAbs(value)
  %4740 = fcmp fast ogt float %4734, -1.000000e+00
  %4741 = select i1 %4740, float %4715, float 1.000000e+00
  %4742 = fadd fast float %4734, 1.000000e+00
  %4743 = fmul fast float %4741, %4742
  %4744 = call float @dx.op.unary.f32(i32 6, float %4743)  ; FAbs(value)
  %4745 = fsub fast float %4729, %4724
  %4746 = fsub fast float %4739, %4724
  %4747 = fsub fast float %4719, %4724
  %4748 = fsub fast float %4744, %4724
  %4749 = call float @dx.op.unary.f32(i32 6, float %4746)  ; FAbs(value)
  %4750 = call float @dx.op.unary.f32(i32 6, float %4745)  ; FAbs(value)
  %4751 = call float @dx.op.binary.f32(i32 35, float %4750, float %4749)  ; FMax(a,b)
  %4752 = call float @dx.op.unary.f32(i32 6, float %4748)  ; FAbs(value)
  %4753 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4754 = call float @dx.op.binary.f32(i32 35, float %4753, float %4752)  ; FMax(a,b)
  %4755 = fadd fast float %4746, %4745
  %4756 = call float @dx.op.unary.f32(i32 6, float %4755)  ; FAbs(value)
  %4757 = fadd fast float %4748, %4747
  %4758 = call float @dx.op.unary.f32(i32 6, float %4757)  ; FAbs(value)
  %4759 = fsub fast float %4754, %4758
  %4760 = call float @dx.op.unary.f32(i32 6, float %4759)  ; FAbs(value)
  %4761 = fsub fast float %4751, %4756
  %4762 = call float @dx.op.unary.f32(i32 6, float %4761)  ; FAbs(value)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4762, float %4760)  ; FMax(a,b)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4765 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4769 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4770 = extractvalue %dx.types.CBufRet.f32 %4766, 3
  %4771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.CBufRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.CBufRet.f32 %4771, 2
  %4775 = extractvalue %dx.types.CBufRet.f32 %4771, 3
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.CBufRet.f32 %4776, 2
  %4780 = extractvalue %dx.types.CBufRet.f32 %4776, 3
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.CBufRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4796 = select i1 %85, float %4767, float %4782
  %4797 = select i1 %85, float %4772, float %4787
  %4798 = select i1 %85, float %4777, float %4792
  %4799 = select i1 %85, float %4768, float %4783
  %4800 = select i1 %85, float %4773, float %4788
  %4801 = select i1 %85, float %4778, float %4793
  %4802 = select i1 %85, float %4769, float %4784
  %4803 = select i1 %85, float %4774, float %4789
  %4804 = select i1 %85, float %4779, float %4794
  %4805 = select i1 %85, float %4770, float %4785
  %4806 = select i1 %85, float %4775, float %4790
  %4807 = select i1 %85, float %4780, float %4795
  %4808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4809 = extractvalue %dx.types.CBufRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.CBufRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.CBufRet.f32 %4808, 2
  %4812 = fdiv fast float 1.000000e+00, %92
  %4813 = fmul fast float %4703, %76
  %4814 = fmul fast float %4704, %77
  %4815 = fmul fast float %4809, %4695
  %4816 = fmul fast float %4810, %4695
  %4817 = fmul fast float %4811, %4695
  %4818 = fadd fast float %4815, %146
  %4819 = fadd fast float %4816, %147
  %4820 = fadd fast float %4817, %148
  %4821 = fmul fast float %4818, %4796
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4799, float %4821)  ; FMad(a,b,c)
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4802, float %4822)  ; FMad(a,b,c)
  %4824 = fadd fast float %4823, %4805
  %4825 = fmul fast float %4818, %4797
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4800, float %4825)  ; FMad(a,b,c)
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4803, float %4826)  ; FMad(a,b,c)
  %4828 = fadd fast float %4827, %4806
  %4829 = fmul fast float %4818, %4798
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4819, float %4801, float %4829)  ; FMad(a,b,c)
  %4831 = call float @dx.op.tertiary.f32(i32 46, float %4820, float %4804, float %4830)  ; FMad(a,b,c)
  %4832 = fadd fast float %4831, %4807
  %4833 = fdiv fast float 1.000000e+00, %4832
  %4834 = fmul fast float %4824, 5.000000e-01
  %4835 = fmul fast float %4828, -5.000000e-01
  %4836 = fmul fast float %4834, %4833
  %4837 = fmul fast float %4835, %4833
  %4838 = fsub fast float 5.000000e-01, %4813
  %4839 = fadd fast float %4838, %4836
  %4840 = fsub fast float 5.000000e-01, %4814
  %4841 = fadd fast float %4840, %4837
  %4842 = fsub fast float %4833, %4812
  %4843 = call float @dx.op.dot2.f32(i32 54, float %4839, float %4841, float %4839, float %4841)  ; Dot2(ax,ay,bx,by)
  %4844 = call float @dx.op.binary.f32(i32 35, float %4843, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4845 = call float @dx.op.dot2.f32(i32 54, float %4764, float %4765, float %4764, float %4765)  ; Dot2(ax,ay,bx,by)
  %4846 = fmul fast float %4845, %4844
  %4847 = call float @dx.op.unary.f32(i32 25, float %4846)  ; Rsqrt(value)
  %4848 = fmul fast float %4847, %4839
  %4849 = fmul fast float %4847, %4841
  %4850 = fadd fast float %4848, %4813
  %4851 = fadd fast float %4849, %4814
  %4852 = fmul fast float %4839, %4764
  %4853 = fmul fast float %4841, %4765
  %4854 = fmul fast float %4852, %4852
  %4855 = fmul fast float %4853, %4853
  %4856 = fadd fast float %4854, %4855
  %4857 = call float @dx.op.unary.f32(i32 24, float %4856)  ; Sqrt(value)
  %4858 = fdiv fast float 1.000000e+00, %4857
  %4859 = fmul fast float %4857, 3.906250e-03
  %4860 = fmul fast float %4763, 0x3F70624DE0000000
  %4861 = fadd fast float %4860, 0x3F70624DE0000000
  br label %4862

; <label>:4862                                    ; preds = %4918, %4690
  %4863 = phi float [ %4894, %4918 ], [ %92, %4690 ]
  %4864 = phi float [ %4881, %4918 ], [ %92, %4690 ]
  %4865 = phi float [ %4864, %4918 ], [ %92, %4690 ]
  %4866 = phi i32 [ %4919, %4918 ], [ 0, %4690 ]
  %4867 = sitofp i32 %4866 to float
  %4868 = fadd fast float %230, 5.000000e-01
  %4869 = call float @dx.op.unary.f32(i32 22, float %4868)  ; Frc(value)
  %4870 = fadd fast float %4867, %4869
  %4871 = sitofp i32 %4688 to float
  %4872 = fdiv fast float %4870, %4871
  %4873 = fmul fast float %4872, %4872
  %4874 = call float @dx.op.binary.f32(i32 36, float %4873, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4875 = fmul fast float %4874, %4839
  %4876 = fmul fast float %4874, %4841
  %4877 = fmul fast float %4874, %4842
  %4878 = fadd fast float %4875, %4850
  %4879 = fadd fast float %4876, %4851
  %4880 = fadd fast float %4877, %4812
  %4881 = fdiv fast float 1.000000e+00, %4880
  %4882 = icmp ne i32 %4700, 0
  %4883 = fmul fast float %4859, %4874
  %4884 = call float @dx.op.binary.f32(i32 36, float %4883, float %4701)  ; FMin(a,b)
  %4885 = select i1 %4882, float %4884, float 0.000000e+00
  %4886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %29, float %4878, float %4879, float undef, float undef, i32 0, i32 0, i32 undef, float %4885)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4887 = extractvalue %dx.types.ResRet.f32 %4886, 0
  %4888 = fcmp fast ogt float %4887, -1.000000e+00
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 1
  %4891 = select i1 %4888, float %4890, float 1.000000e+00
  %4892 = fadd fast float %4887, 1.000000e+00
  %4893 = fmul fast float %4891, %4892
  %4894 = call float @dx.op.unary.f32(i32 6, float %4893)  ; FAbs(value)
  %4895 = fmul fast float %4894, %4861
  %4896 = fsub fast float %4881, %4894
  %4897 = fsub fast float %4896, %4895
  %4898 = fcmp fast ogt float %4897, 0.000000e+00
  %4899 = fcmp fast ogt float %4698, 0.000000e+00
  br i1 %4899, label %4900, label %4903, !dx.controlflow.hints !97

; <label>:4900                                    ; preds = %4862
  %4901 = fsub fast float %4881, %4865
  %4902 = call float @dx.op.binary.f32(i32 35, float %4901, float %4698)  ; FMax(a,b)
  br label %4903

; <label>:4903                                    ; preds = %4900, %4862
  %4904 = phi float [ %4902, %4900 ], [ %4695, %4862 ]
  %4905 = fcmp fast olt float %4897, %4904
  %4906 = fcmp uge float %4887, -1.000000e+00
  %4907 = xor i1 %85, %4906
  %4908 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4910 = fcmp fast oeq float %4878, %4908
  %4911 = fcmp fast oeq float %4879, %4909
  %4912 = and i1 %4910, %4911
  %4913 = and i1 %4907, %4912
  %4914 = and i1 %4898, %4905
  %4915 = and i1 %4914, %4913
  %4916 = fcmp fast ogt float %4874, %4858
  %4917 = and i1 %4916, %4915
  br i1 %4917, label %4921, label %4918, !dx.controlflow.hints !98

; <label>:4918                                    ; preds = %4903
  %4919 = add nuw nsw i32 %4866, 1
  %4920 = icmp slt i32 %4866, %4688
  br i1 %4920, label %4862, label %4921

; <label>:4921                                    ; preds = %4918, %4903
  %4922 = phi i1 [ false, %4918 ], [ true, %4903 ]
  %4923 = fsub fast float %4864, %4863
  %4924 = fsub fast float %4923, %4896
  %4925 = fcmp fast une float %4924, 0.000000e+00
  %4926 = fmul fast float %4881, %4923
  %4927 = fmul fast float %4896, %4864
  %4928 = fsub fast float %4926, %4927
  %4929 = fdiv fast float 1.000000e+00, %4924
  %4930 = fmul fast float %4929, %4928
  %4931 = select i1 %4925, float %4930, float %4881
  %4932 = fdiv fast float 1.000000e+00, %4931
  %4933 = fsub fast float %4932, %4812
  %4934 = fdiv fast float %4933, %4842
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, %4839
  %4937 = fmul fast float %4935, %4841
  %4938 = fadd fast float %4850, -5.000000e-01
  %4939 = fadd fast float %4938, %4936
  %4940 = fadd fast float %4851, -5.000000e-01
  %4941 = fadd fast float %4940, %4937
  %4942 = call float @dx.op.unary.f32(i32 6, float %4939)  ; FAbs(value)
  %4943 = call float @dx.op.unary.f32(i32 6, float %4941)  ; FAbs(value)
  %4944 = fadd fast float %4942, -5.000000e-01
  %4945 = fadd fast float %4943, -5.000000e-01
  %4946 = call float @dx.op.binary.f32(i32 35, float %4944, float %4945)  ; FMax(a,b)
  %4947 = fcmp fast olt float %4946, 0.000000e+00
  %4948 = or i1 %85, %4947
  %4949 = and i1 %4922, %4948
  %4950 = select i1 %4949, float 0.000000e+00, float 1.000000e+00
  %4951 = call float @dx.op.binary.f32(i32 36, float %4677, float %4950)  ; FMin(a,b)
  br label %4952

; <label>:4952                                    ; preds = %4921, %4683, %4676
  %4953 = phi float [ %4951, %4921 ], [ %4677, %4683 ], [ %4677, %4676 ]
  %4954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.i32 %4954, 0
  %4956 = and i32 %4955, 114688
  %4957 = icmp ne i32 %4956, 0
  %4958 = fcmp fast ogt float %4953, 0.000000e+00
  %4959 = and i1 %4958, %4957
  br i1 %4959, label %4960, label %5735, !dx.controlflow.hints !99

; <label>:4960                                    ; preds = %4952
  %4961 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %74, i32 %75, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = fmul fast float %4962, 2.550000e+02
  %4964 = fptoui float %4963 to i32
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4967 = call float @dx.op.dot3.f32(i32 55, float %175, float %176, float %177, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 6, float %4967)  ; FAbs(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = icmp eq i32 %4964, 0
  %4971 = fcmp ugt float %4969, %4966
  %4972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.i32 %4972, 0
  %4974 = and i32 %4973, 64
  %4975 = icmp eq i32 %4974, 0
  %4976 = or i1 %4971, %4975
  %4977 = and i1 %4970, %4976
  br i1 %4977, label %5316, label %4978, !dx.controlflow.hints !100

; <label>:4978                                    ; preds = %4960
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = fadd fast float %4980, %146
  %4984 = fadd fast float %4981, %147
  %4985 = fadd fast float %4982, %148
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %4989 = fsub fast float %4983, %4987
  %4990 = fsub fast float %4984, %4988
  %4991 = fmul fast float %4989, %4989
  %4992 = fmul fast float %4990, %4990
  %4993 = fadd fast float %4991, %4992
  %4994 = call float @dx.op.unary.f32(i32 24, float %4993)  ; Sqrt(value)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4986, 2
  %4996 = fcmp fast olt float %4994, %4995
  br i1 %4996, label %4997, label %5062, !dx.controlflow.hints !101

; <label>:4997                                    ; preds = %4978
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.f32 %5002, 0
  %5004 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5005 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5006 = extractvalue %dx.types.CBufRet.f32 %5002, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %4998, 3
  %5008 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5009 = extractvalue %dx.types.CBufRet.f32 %5002, 3
  %5010 = fadd fast float %5007, %4983
  %5011 = fadd fast float %5008, %4984
  %5012 = fadd fast float %5009, %4985
  %5013 = fmul fast float %5010, %4999
  %5014 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %5001, float %5013)  ; FMad(a,b,c)
  %5015 = call float @dx.op.tertiary.f32(i32 46, float %5012, float %5003, float %5014)  ; FMad(a,b,c)
  %5016 = fmul fast float %5010, %5004
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %5005, float %5016)  ; FMad(a,b,c)
  %5018 = call float @dx.op.tertiary.f32(i32 46, float %5012, float %5006, float %5017)  ; FMad(a,b,c)
  %5019 = fsub fast float %5015, %5007
  %5020 = fsub fast float %5018, %5008
  %5021 = fsub fast float %5019, %4987
  %5022 = fadd fast float %5021, %4995
  %5023 = fsub fast float %5020, %4988
  %5024 = fadd fast float %5023, %4995
  %5025 = extractvalue %dx.types.CBufRet.f32 %4986, 3
  %5026 = fmul fast float %5022, %5025
  %5027 = fmul fast float %5024, %5025
  %5028 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5029 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5030 = fsub fast float 1.000000e+00, %5028
  %5031 = fsub fast float 1.000000e+00, %5029
  %5032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %28, float %5030, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5033 = extractvalue %dx.types.ResRet.f32 %5032, 0
  %5034 = fcmp fast ugt float %5033, 0.000000e+00
  br i1 %5034, label %5035, label %5316, !dx.controlflow.hints !102

; <label>:5035                                    ; preds = %4997
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5038 = fmul fast float %5037, %5033
  %5039 = extractvalue %dx.types.CBufRet.f32 %5036, 3
  %5040 = fadd fast float %5039, %5038
  %5041 = extractvalue %dx.types.CBufRet.f32 %5002, 2
  %5042 = fadd fast float %5040, %5009
  %5043 = fmul fast float %5015, %5003
  %5044 = call float @dx.op.tertiary.f32(i32 46, float %5018, float %5006, float %5043)  ; FMad(a,b,c)
  %5045 = call float @dx.op.tertiary.f32(i32 46, float %5042, float %5041, float %5044)  ; FMad(a,b,c)
  %5046 = fsub fast float %5045, %5009
  %5047 = fsub fast float %5046, %4982
  %5048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %28, float %5030, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5049 = extractvalue %dx.types.ResRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.ResRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.ResRet.f32 %5048, 2
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %28, float %5030, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = fadd fast float %5053, %5049
  %5057 = fmul fast float %5056, 0x3F847AE140000000
  %5058 = fadd fast float %5054, %5050
  %5059 = fmul fast float %5058, 0x3F847AE140000000
  %5060 = fadd fast float %5055, %5051
  %5061 = fmul fast float %5060, 0x3F847AE140000000
  br label %5316

; <label>:5062                                    ; preds = %4978
  %5063 = and i32 %4964, -3
  %5064 = icmp eq i32 %5063, 1
  br i1 %5064, label %5065, label %5316, !dx.controlflow.hints !103

; <label>:5065                                    ; preds = %5062
  %5066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5066, 0
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.CBufRet.f32 %5066, 1
  %5073 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5075 = extractvalue %dx.types.CBufRet.f32 %5066, 3
  %5076 = extractvalue %dx.types.CBufRet.f32 %5068, 3
  %5077 = extractvalue %dx.types.CBufRet.f32 %5070, 3
  %5078 = fadd fast float %5075, %4983
  %5079 = fadd fast float %5076, %4984
  %5080 = fadd fast float %5077, %4985
  %5081 = fmul fast float %5078, %5067
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %5079, float %5069, float %5081)  ; FMad(a,b,c)
  %5083 = call float @dx.op.tertiary.f32(i32 46, float %5080, float %5071, float %5082)  ; FMad(a,b,c)
  %5084 = fmul fast float %5078, %5072
  %5085 = call float @dx.op.tertiary.f32(i32 46, float %5079, float %5073, float %5084)  ; FMad(a,b,c)
  %5086 = call float @dx.op.tertiary.f32(i32 46, float %5080, float %5074, float %5085)  ; FMad(a,b,c)
  %5087 = fsub fast float %5083, %5075
  %5088 = fsub fast float %5086, %5076
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 0
  %5091 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5092 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5093 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 3
  %5096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.i32 %5096, 0
  %5098 = extractvalue %dx.types.CBufRet.i32 %5096, 1
  %5099 = udiv i32 %5098, %5097
  %5100 = fsub fast float %5087, %5090
  %5101 = fsub fast float %5088, %5091
  %5102 = call float @dx.op.binary.f32(i32 35, float %5100, float 0.000000e+00)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5101, float 0.000000e+00)  ; FMax(a,b)
  %5104 = call float @dx.op.binary.f32(i32 36, float %5102, float %5092)  ; FMin(a,b)
  %5105 = call float @dx.op.binary.f32(i32 36, float %5103, float %5093)  ; FMin(a,b)
  %5106 = add i32 %5097, -1
  %5107 = add i32 %5099, -1
  %5108 = fmul fast float %5104, %5095
  %5109 = fmul fast float %5105, %5095
  %5110 = fptoui float %5108 to i32
  %5111 = fptoui float %5109 to i32
  %5112 = call i32 @dx.op.binary.i32(i32 40, i32 %5110, i32 %5106)  ; UMin(a,b)
  %5113 = call i32 @dx.op.binary.i32(i32 40, i32 %5111, i32 %5107)  ; UMin(a,b)
  %5114 = mul i32 %5113, %5097
  %5115 = add i32 %5114, %5112
  %5116 = shl i32 %5115, 2
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = icmp eq i32 %5118, -1
  br i1 %5119, label %5316, label %5120, !dx.controlflow.hints !104

; <label>:5120                                    ; preds = %5065
  %5121 = mul i32 %5118, 148
  %5122 = add i32 %5121, 4
  %5123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5122, i32 undef)  ; BufferLoad(srv,index,wot)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = add i32 %5121, 8
  %5126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5125, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = add i32 %5121, 36
  %5129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5128, i32 undef)  ; BufferLoad(srv,index,wot)
  %5130 = extractvalue %dx.types.ResRet.f32 %5129, 0
  %5131 = add i32 %5121, 60
  %5132 = add i32 %5121, 92
  %5133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5132, i32 undef)  ; BufferLoad(srv,index,wot)
  %5134 = extractvalue %dx.types.ResRet.i32 %5133, 0
  %5135 = add i32 %5121, 116
  %5136 = fsub fast float %5087, %5124
  %5137 = fsub fast float %5088, %5127
  %5138 = fmul fast float %5095, %5136
  %5139 = fmul fast float %5095, %5137
  %5140 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5142 = fsub fast float 1.000000e+00, %5141
  %5143 = extractvalue %dx.types.CBufRet.f32 %4965, 3
  %5144 = fadd fast float %5143, 2.000000e+00
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5147 = fadd fast float %5144, %5146
  %5148 = add i32 %5134, 0
  %5149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5148, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5150 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5149, i32 0)  ; GetDimensions(handle,mipLevel)
  %5151 = extractvalue %dx.types.Dimensions %5150, 0
  %5152 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5151)  ; FirstbitLo(value)
  %5153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.i32 %5153, 1
  %5155 = sub nsw i32 %5154, %5152
  %5156 = sitofp i32 %5155 to float
  %5157 = fsub fast float %5147, %5156
  %5158 = call float @dx.op.binary.f32(i32 35, float %5157, float 0.000000e+00)  ; FMax(a,b)
  %5159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5149, %dx.types.Handle %26, float %5140, float %5142, float %5130, float undef, i32 0, i32 0, i32 undef, float %5158)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = fcmp ule float %5160, 0x3FE0101020000000
  %5162 = extractvalue %dx.types.CBufRet.i32 %5153, 0
  %5163 = and i32 %5162, 128
  %5164 = icmp ne i32 %5163, 0
  %5165 = and i1 %5161, %5164
  br i1 %5165, label %5316, label %5166, !dx.controlflow.hints !105

; <label>:5166                                    ; preds = %5120
  %5167 = add i32 %5121, 20
  %5168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5167, i32 undef)  ; BufferLoad(srv,index,wot)
  %5169 = extractvalue %dx.types.ResRet.f32 %5168, 0
  %5170 = add i32 %5121, 24
  %5171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5170, i32 undef)  ; BufferLoad(srv,index,wot)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 0
  %5173 = add i32 %5121, 40
  %5174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5173, i32 undef)  ; BufferLoad(srv,index,wot)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = add i32 %5121, 96
  %5177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.i32 %5177, 0
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5181 = fmul fast float %5180, %5140
  %5182 = fmul fast float %5180, %5142
  %5183 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5184 = fadd fast float %5181, %5183
  %5185 = fadd fast float %5182, %5183
  %5186 = add i32 %5178, 0
  %5187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5186, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5188 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5187, i32 0)  ; GetDimensions(handle,mipLevel)
  %5189 = extractvalue %dx.types.Dimensions %5188, 0
  %5190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5189)  ; FirstbitLo(value)
  %5191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5192 = extractvalue %dx.types.CBufRet.i32 %5191, 1
  %5193 = sub nsw i32 %5192, %5190
  %5194 = sitofp i32 %5193 to float
  %5195 = fsub fast float %5144, %5194
  %5196 = call float @dx.op.binary.f32(i32 35, float %5195, float 0.000000e+00)  ; FMax(a,b)
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5187, %dx.types.Handle %26, float %5184, float %5185, float %5175, float undef, i32 0, i32 0, i32 undef, float %5196)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = fmul fast float %5198, %5169
  %5200 = fadd fast float %5199, %5172
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.CBufRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5209 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5210 = fadd fast float %5206, %5087
  %5211 = fadd fast float %5208, %5088
  %5212 = fadd fast float %5200, %5209
  %5213 = fmul fast float %5210, %5202
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5211, float %5203, float %5213)  ; FMad(a,b,c)
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5204, float %5214)  ; FMad(a,b,c)
  %5216 = fsub fast float %5215, %5209
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = fsub fast float %5216, %5218
  %5220 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.i32 %5220, 0
  %5222 = call i32 @dx.op.binary.i32(i32 40, i32 %5118, i32 %5221)  ; UMin(a,b)
  %5223 = mul i32 %5222, 36
  %5224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5223, i32 undef)  ; BufferLoad(srv,index,wot)
  %5225 = extractvalue %dx.types.ResRet.i32 %5224, 0
  %5226 = add i32 %5223, 4
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = fmul fast float %5228, %5140
  %5230 = fmul fast float %5228, %5142
  %5231 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5232 = fadd fast float %5229, %5231
  %5233 = fadd fast float %5230, %5231
  %5234 = icmp eq i32 %5225, 0
  br i1 %5234, label %5303, label %5235

; <label>:5235                                    ; preds = %5166
  br label %5236

; <label>:5236                                    ; preds = %5293, %5235
  %5237 = phi float [ %5294, %5293 ], [ 0.000000e+00, %5235 ]
  %5238 = phi float [ %5295, %5293 ], [ 0.000000e+00, %5235 ]
  %5239 = phi float [ %5296, %5293 ], [ 0.000000e+00, %5235 ]
  %5240 = phi float [ %5297, %5293 ], [ 0.000000e+00, %5235 ]
  %5241 = phi float [ %5298, %5293 ], [ 0.000000e+00, %5235 ]
  %5242 = phi float [ %5299, %5293 ], [ 0.000000e+00, %5235 ]
  %5243 = phi i32 [ %5300, %5293 ], [ 0, %5235 ]
  %5244 = shl i32 %5243, 2
  %5245 = add i32 %5131, %5244
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 0
  %5248 = add i32 %5135, %5244
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = add i32 %5250, 0
  %5252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5251, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5253 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5252, i32 0)  ; GetDimensions(handle,mipLevel)
  %5254 = extractvalue %dx.types.Dimensions %5253, 0
  %5255 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5254)  ; FirstbitLo(value)
  %5256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.i32 %5256, 1
  %5258 = sub nsw i32 %5257, %5255
  %5259 = sitofp i32 %5258 to float
  %5260 = fsub fast float %5144, %5259
  %5261 = call float @dx.op.binary.f32(i32 35, float %5260, float 0.000000e+00)  ; FMax(a,b)
  %5262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5252, %dx.types.Handle %26, float %5232, float %5233, float %5247, float undef, i32 0, i32 0, i32 undef, float %5261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = fcmp fast ogt float %5263, 0.000000e+00
  br i1 %5264, label %5265, label %5293, !dx.controlflow.hints !106

; <label>:5265                                    ; preds = %5236
  %5266 = add i32 %5226, %5244
  %5267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.i32 %5267, 0
  %5269 = and i32 %5268, 32767
  %5270 = mul nuw nsw i32 %5269, 928
  %5271 = add nuw nsw i32 %5270, 48
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = add nuw nsw i32 %5270, 60
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = extractvalue %dx.types.ResRet.f32 %5277, 2
  %5281 = fmul fast float %5273, %5263
  %5282 = fmul fast float %5274, %5263
  %5283 = fmul fast float %5275, %5263
  %5284 = fadd fast float %5281, %5237
  %5285 = fadd fast float %5282, %5238
  %5286 = fadd fast float %5283, %5239
  %5287 = fmul fast float %5278, %5263
  %5288 = fmul fast float %5279, %5263
  %5289 = fmul fast float %5280, %5263
  %5290 = fadd fast float %5287, %5240
  %5291 = fadd fast float %5288, %5241
  %5292 = fadd fast float %5289, %5242
  br label %5293

; <label>:5293                                    ; preds = %5265, %5236
  %5294 = phi float [ %5284, %5265 ], [ %5237, %5236 ]
  %5295 = phi float [ %5285, %5265 ], [ %5238, %5236 ]
  %5296 = phi float [ %5286, %5265 ], [ %5239, %5236 ]
  %5297 = phi float [ %5290, %5265 ], [ %5240, %5236 ]
  %5298 = phi float [ %5291, %5265 ], [ %5241, %5236 ]
  %5299 = phi float [ %5292, %5265 ], [ %5242, %5236 ]
  %5300 = add nuw i32 %5243, 1
  %5301 = icmp eq i32 %5300, %5225
  br i1 %5301, label %5302, label %5236

; <label>:5302                                    ; preds = %5293
  br label %5303

; <label>:5303                                    ; preds = %5302, %5166
  %5304 = phi float [ 0.000000e+00, %5166 ], [ %5294, %5302 ]
  %5305 = phi float [ 0.000000e+00, %5166 ], [ %5295, %5302 ]
  %5306 = phi float [ 0.000000e+00, %5166 ], [ %5296, %5302 ]
  %5307 = phi float [ 0.000000e+00, %5166 ], [ %5297, %5302 ]
  %5308 = phi float [ 0.000000e+00, %5166 ], [ %5298, %5302 ]
  %5309 = phi float [ 0.000000e+00, %5166 ], [ %5299, %5302 ]
  %5310 = fadd fast float %5307, %5304
  %5311 = fmul fast float %5310, 0x3F847AE140000000
  %5312 = fadd fast float %5308, %5305
  %5313 = fmul fast float %5312, 0x3F847AE140000000
  %5314 = fadd fast float %5309, %5306
  %5315 = fmul fast float %5314, 0x3F847AE140000000
  br label %5316

; <label>:5316                                    ; preds = %5303, %5120, %5065, %5062, %5035, %4997, %4960
  %5317 = phi i1 [ true, %4960 ], [ false, %5035 ], [ true, %4997 ], [ false, %5303 ], [ true, %5065 ], [ true, %5120 ], [ true, %5062 ]
  %5318 = phi float [ 0.000000e+00, %4960 ], [ %5047, %5035 ], [ -1.310720e+05, %4997 ], [ %5219, %5303 ], [ -1.310720e+05, %5065 ], [ -1.310720e+05, %5120 ], [ -1.310720e+05, %5062 ]
  %5319 = phi float [ 0.000000e+00, %4960 ], [ %5057, %5035 ], [ 0.000000e+00, %4997 ], [ %5311, %5303 ], [ 0.000000e+00, %5065 ], [ 0.000000e+00, %5120 ], [ 0.000000e+00, %5062 ]
  %5320 = phi float [ 0.000000e+00, %4960 ], [ %5059, %5035 ], [ 0.000000e+00, %4997 ], [ %5313, %5303 ], [ 0.000000e+00, %5065 ], [ 0.000000e+00, %5120 ], [ 0.000000e+00, %5062 ]
  %5321 = phi float [ 0.000000e+00, %4960 ], [ %5061, %5035 ], [ 0.000000e+00, %4997 ], [ %5315, %5303 ], [ 0.000000e+00, %5065 ], [ 0.000000e+00, %5120 ], [ 0.000000e+00, %5062 ]
  br i1 %5317, label %5735, label %5322, !dx.controlflow.hints !107

; <label>:5322                                    ; preds = %5316
  %5323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.i32 %5323, 0
  %5325 = and i32 %5324, 64
  %5326 = icmp ne i32 %5325, 0
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 0
  %5329 = extractvalue %dx.types.CBufRet.f32 %5327, 1
  %5330 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5331 = fsub fast float %148, %5318
  %5332 = fcmp fast ogt float %5331, 0.000000e+00
  %5333 = xor i1 %5332, true
  %5334 = fmul fast float %5328, 5.120000e+02
  %5335 = fmul fast float %5329, 5.120000e+02
  %5336 = fmul fast float %5330, 5.120000e+02
  %5337 = fadd fast float %5336, %148
  %5338 = fsub fast float %5318, %5337
  %5339 = fmul fast float %5338, 2.000000e+00
  %5340 = fadd fast float %5339, %5337
  %5341 = select i1 %5332, float %5340, float %5337
  %5342 = fsub fast float %5341, %148
  %5343 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5342, float %5334, float %5335, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 25, float %5343)  ; Rsqrt(value)
  %5345 = fmul fast float %5334, %5344
  %5346 = fmul fast float %5335, %5344
  %5347 = fmul fast float %5342, %5344
  %5348 = fsub fast float %5318, %148
  %5349 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fdiv fast float 1.000000e+00, %5350
  %5352 = fmul fast float %5351, %5349
  %5353 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5331, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fcmp fast ogt float %5353, 0.000000e+00
  %5355 = fcmp fast olt float %5353, 0.000000e+00
  %5356 = zext i1 %5354 to i32
  %5357 = zext i1 %5355 to i32
  %5358 = sub nsw i32 %5356, %5357
  %5359 = sitofp i32 %5358 to float
  %5360 = fsub fast float %5341, %5318
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5360, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fcmp fast ogt float %5361, 0.000000e+00
  %5363 = fcmp fast olt float %5361, 0.000000e+00
  %5364 = zext i1 %5362 to i32
  %5365 = zext i1 %5363 to i32
  %5366 = sub nsw i32 %5364, %5365
  %5367 = sitofp i32 %5366 to float
  %5368 = fcmp fast une float %5359, %5367
  br i1 %5368, label %5369, label %5379, !dx.controlflow.hints !108

; <label>:5369                                    ; preds = %5322
  %5370 = fmul fast float %5347, %5352
  %5371 = fmul fast float %5352, %5346
  %5372 = fmul fast float %5352, %5345
  %5373 = fmul fast float %5372, %5372
  %5374 = fmul fast float %5371, %5371
  %5375 = fadd fast float %5373, %5374
  %5376 = fmul fast float %5370, %5370
  %5377 = fadd fast float %5375, %5376
  %5378 = call float @dx.op.unary.f32(i32 24, float %5377)  ; Sqrt(value)
  br label %5389

; <label>:5379                                    ; preds = %5322
  %5380 = icmp slt i32 %5358, 0
  br i1 %5380, label %5381, label %5389, !dx.controlflow.hints !109

; <label>:5381                                    ; preds = %5379
  %5382 = fsub fast float %148, %5341
  %5383 = fmul fast float %5334, %5334
  %5384 = fmul fast float %5335, %5335
  %5385 = fadd fast float %5383, %5384
  %5386 = fmul fast float %5382, %5382
  %5387 = fadd fast float %5385, %5386
  %5388 = call float @dx.op.unary.f32(i32 24, float %5387)  ; Sqrt(value)
  br label %5389

; <label>:5389                                    ; preds = %5381, %5379, %5369
  %5390 = phi float [ %5378, %5369 ], [ %5388, %5381 ], [ 0.000000e+00, %5379 ]
  %5391 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.i32 %5391, 1
  %5393 = icmp ne i32 %5392, 0
  %5394 = and i1 %5393, %5333
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = fmul fast float %5395, %5395
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.CBufRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.CBufRet.f32 %5398, 2
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 0
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.CBufRet.f32 %5402, 1
  %5409 = extractvalue %dx.types.CBufRet.f32 %5404, 1
  %5410 = extractvalue %dx.types.CBufRet.f32 %5406, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5412 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5413 = extractvalue %dx.types.CBufRet.f32 %5406, 3
  %5414 = fadd fast float %5399, %146
  %5415 = fadd fast float %5400, %147
  %5416 = fadd fast float %5401, %148
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5421 = extractvalue %dx.types.CBufRet.f32 %5417, 3
  br i1 %5394, label %5422, label %5615, !dx.controlflow.hints !110

; <label>:5422                                    ; preds = %5389
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = fmul fast float %5424, %5424
  %5426 = fmul fast float %5425, %5397
  %5427 = fsub fast float 1.000000e+00, %5426
  %5428 = fcmp fast oge float %5427, 0.000000e+00
  %5429 = fmul fast float %5424, %5345
  %5430 = fmul fast float %5424, %5346
  %5431 = fmul fast float %5424, %5347
  %5432 = call float @dx.op.unary.f32(i32 24, float %5427)  ; Sqrt(value)
  %5433 = fmul fast float %5424, %5395
  %5434 = fsub fast float -0.000000e+00, %5432
  %5435 = fsub fast float %5434, %5433
  %5436 = fadd fast float %5435, %5431
  %5437 = select i1 %5428, float %5429, float 0.000000e+00
  %5438 = select i1 %5428, float %5430, float 0.000000e+00
  %5439 = select i1 %5428, float %5436, float 0.000000e+00
  %5440 = fmul fast float %5437, %5390
  %5441 = fmul fast float %5438, %5390
  %5442 = fmul fast float %5439, %5390
  %5443 = fadd fast float %5414, %5440
  %5444 = fadd fast float %5443, %5411
  %5445 = fadd fast float %5415, %5441
  %5446 = fadd fast float %5445, %5412
  %5447 = fadd fast float %5416, %5442
  %5448 = fadd fast float %5447, %5413
  %5449 = fmul fast float %5444, %5403
  %5450 = call float @dx.op.tertiary.f32(i32 46, float %5446, float %5405, float %5449)  ; FMad(a,b,c)
  %5451 = call float @dx.op.tertiary.f32(i32 46, float %5448, float %5407, float %5450)  ; FMad(a,b,c)
  %5452 = fmul fast float %5444, %5408
  %5453 = call float @dx.op.tertiary.f32(i32 46, float %5446, float %5409, float %5452)  ; FMad(a,b,c)
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5448, float %5410, float %5453)  ; FMad(a,b,c)
  %5455 = fsub fast float %5451, %5411
  %5456 = fsub fast float %5455, %5418
  %5457 = fadd fast float %5456, %5420
  %5458 = fsub fast float %5454, %5412
  %5459 = fsub fast float %5458, %5419
  %5460 = fadd fast float %5459, %5420
  %5461 = fmul fast float %5457, %5421
  %5462 = fmul fast float %5460, %5421
  %5463 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5464 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5465 = fsub fast float 1.000000e+00, %5463
  %5466 = fsub fast float 1.000000e+00, %5464
  %5467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %5465, float %5466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5468 = extractvalue %dx.types.ResRet.f32 %5467, 0
  %5469 = fmul fast float %5468, 0x3FBC5ABC00000000
  %5470 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5471 = fmul fast float %5470, %5470
  %5472 = fmul fast float %5471, %5397
  %5473 = fsub fast float 1.000000e+00, %5472
  %5474 = fcmp fast oge float %5473, 0.000000e+00
  %5475 = fmul fast float %5470, %5345
  %5476 = fmul fast float %5470, %5346
  %5477 = fmul fast float %5470, %5347
  %5478 = call float @dx.op.unary.f32(i32 24, float %5473)  ; Sqrt(value)
  %5479 = fmul fast float %5470, %5395
  %5480 = fsub fast float -0.000000e+00, %5478
  %5481 = fsub fast float %5480, %5479
  %5482 = fadd fast float %5481, %5477
  %5483 = select i1 %5474, float %5475, float 0.000000e+00
  %5484 = select i1 %5474, float %5476, float 0.000000e+00
  %5485 = select i1 %5474, float %5482, float 0.000000e+00
  %5486 = fmul fast float %5483, %5390
  %5487 = fmul fast float %5484, %5390
  %5488 = fmul fast float %5485, %5390
  %5489 = fadd fast float %5414, %5486
  %5490 = fadd fast float %5489, %5411
  %5491 = fadd fast float %5415, %5487
  %5492 = fadd fast float %5491, %5412
  %5493 = fadd fast float %5416, %5488
  %5494 = fadd fast float %5493, %5413
  %5495 = fmul fast float %5490, %5403
  %5496 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5405, float %5495)  ; FMad(a,b,c)
  %5497 = call float @dx.op.tertiary.f32(i32 46, float %5494, float %5407, float %5496)  ; FMad(a,b,c)
  %5498 = fmul fast float %5490, %5408
  %5499 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5409, float %5498)  ; FMad(a,b,c)
  %5500 = call float @dx.op.tertiary.f32(i32 46, float %5494, float %5410, float %5499)  ; FMad(a,b,c)
  %5501 = fsub fast float %5497, %5411
  %5502 = fsub fast float %5501, %5418
  %5503 = fadd fast float %5502, %5420
  %5504 = fsub fast float %5500, %5412
  %5505 = fsub fast float %5504, %5419
  %5506 = fadd fast float %5505, %5420
  %5507 = fmul fast float %5503, %5421
  %5508 = fmul fast float %5506, %5421
  %5509 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5510 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5511 = fsub fast float 1.000000e+00, %5509
  %5512 = fsub fast float 1.000000e+00, %5510
  %5513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %5511, float %5512, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = fmul fast float %5514, 0x3F9E4BBD60000000
  %5516 = extractvalue %dx.types.CBufRet.f32 %5423, 2
  %5517 = fmul fast float %5516, %5516
  %5518 = fmul fast float %5517, %5397
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = fcmp fast oge float %5519, 0.000000e+00
  %5521 = fmul fast float %5516, %5345
  %5522 = fmul fast float %5516, %5346
  %5523 = fmul fast float %5516, %5347
  %5524 = call float @dx.op.unary.f32(i32 24, float %5519)  ; Sqrt(value)
  %5525 = fmul fast float %5516, %5395
  %5526 = fsub fast float -0.000000e+00, %5524
  %5527 = fsub fast float %5526, %5525
  %5528 = fadd fast float %5527, %5523
  %5529 = select i1 %5520, float %5521, float 0.000000e+00
  %5530 = select i1 %5520, float %5522, float 0.000000e+00
  %5531 = select i1 %5520, float %5528, float 0.000000e+00
  %5532 = fmul fast float %5529, %5390
  %5533 = fmul fast float %5530, %5390
  %5534 = fmul fast float %5531, %5390
  %5535 = fadd fast float %5414, %5532
  %5536 = fadd fast float %5535, %5411
  %5537 = fadd fast float %5415, %5533
  %5538 = fadd fast float %5537, %5412
  %5539 = fadd fast float %5416, %5534
  %5540 = fadd fast float %5539, %5413
  %5541 = fmul fast float %5536, %5403
  %5542 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5405, float %5541)  ; FMad(a,b,c)
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5407, float %5542)  ; FMad(a,b,c)
  %5544 = fmul fast float %5536, %5408
  %5545 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5409, float %5544)  ; FMad(a,b,c)
  %5546 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5410, float %5545)  ; FMad(a,b,c)
  %5547 = fsub fast float %5543, %5411
  %5548 = fsub fast float %5547, %5418
  %5549 = fadd fast float %5548, %5420
  %5550 = fsub fast float %5546, %5412
  %5551 = fsub fast float %5550, %5419
  %5552 = fadd fast float %5551, %5420
  %5553 = fmul fast float %5549, %5421
  %5554 = fmul fast float %5552, %5421
  %5555 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5557 = fsub fast float 1.000000e+00, %5555
  %5558 = fsub fast float 1.000000e+00, %5556
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %5557, float %5558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = fmul fast float %5560, 0x3FDDEACB00000000
  %5562 = fadd fast float %5561, %5515
  %5563 = extractvalue %dx.types.CBufRet.f32 %5423, 3
  %5564 = fmul fast float %5563, %5563
  %5565 = fmul fast float %5564, %5397
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = fcmp fast oge float %5566, 0.000000e+00
  %5568 = fmul fast float %5563, %5345
  %5569 = fmul fast float %5563, %5346
  %5570 = fmul fast float %5563, %5347
  %5571 = call float @dx.op.unary.f32(i32 24, float %5566)  ; Sqrt(value)
  %5572 = fmul fast float %5563, %5395
  %5573 = fsub fast float -0.000000e+00, %5571
  %5574 = fsub fast float %5573, %5572
  %5575 = fadd fast float %5574, %5570
  %5576 = select i1 %5567, float %5568, float 0.000000e+00
  %5577 = select i1 %5567, float %5569, float 0.000000e+00
  %5578 = select i1 %5567, float %5575, float 0.000000e+00
  %5579 = fmul fast float %5576, %5390
  %5580 = fmul fast float %5577, %5390
  %5581 = fmul fast float %5578, %5390
  %5582 = fadd fast float %5414, %5579
  %5583 = fadd fast float %5582, %5411
  %5584 = fadd fast float %5415, %5580
  %5585 = fadd fast float %5584, %5412
  %5586 = fadd fast float %5416, %5581
  %5587 = fadd fast float %5586, %5413
  %5588 = fmul fast float %5583, %5403
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %5585, float %5405, float %5588)  ; FMad(a,b,c)
  %5590 = call float @dx.op.tertiary.f32(i32 46, float %5587, float %5407, float %5589)  ; FMad(a,b,c)
  %5591 = fmul fast float %5583, %5408
  %5592 = call float @dx.op.tertiary.f32(i32 46, float %5585, float %5409, float %5591)  ; FMad(a,b,c)
  %5593 = call float @dx.op.tertiary.f32(i32 46, float %5587, float %5410, float %5592)  ; FMad(a,b,c)
  %5594 = fsub fast float %5590, %5411
  %5595 = fsub fast float %5594, %5418
  %5596 = fadd fast float %5595, %5420
  %5597 = fsub fast float %5593, %5412
  %5598 = fsub fast float %5597, %5419
  %5599 = fadd fast float %5598, %5420
  %5600 = fmul fast float %5596, %5421
  %5601 = fmul fast float %5599, %5421
  %5602 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5604 = fsub fast float 1.000000e+00, %5602
  %5605 = fsub fast float 1.000000e+00, %5603
  %5606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %5604, float %5605, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 0
  %5608 = fmul fast float %5607, 0x3FE0183CA0000000
  %5609 = fmul fast float %5607, 0x3FB51033E0000000
  %5610 = fadd fast float %5562, %5608
  %5611 = fadd fast float %5560, %5514
  %5612 = fmul fast float %5611, 0x3FD9D2A200000000
  %5613 = fadd fast float %5609, %5469
  %5614 = fadd fast float %5613, %5612
  br label %5661

; <label>:5615                                    ; preds = %5389
  %5616 = fmul fast float %5397, 0x3FE2024E20000000
  %5617 = fsub fast float 1.000000e+00, %5616
  %5618 = fcmp fast oge float %5617, 0.000000e+00
  %5619 = fmul fast float %5345, 0x3FE8018960000000
  %5620 = fmul fast float %5346, 0x3FE8018960000000
  %5621 = fmul fast float %5347, 0x3FE8018960000000
  %5622 = call float @dx.op.unary.f32(i32 24, float %5617)  ; Sqrt(value)
  %5623 = fmul fast float %5395, 0x3FE8018960000000
  %5624 = fsub fast float %5621, %5622
  %5625 = fsub fast float %5624, %5623
  %5626 = select i1 %5618, float %5619, float 0.000000e+00
  %5627 = select i1 %5618, float %5620, float 0.000000e+00
  %5628 = select i1 %5618, float %5625, float 0.000000e+00
  %5629 = select i1 %5332, float %5345, float %5626
  %5630 = select i1 %5332, float %5346, float %5627
  %5631 = select i1 %5332, float %5347, float %5628
  %5632 = fmul fast float %5629, %5390
  %5633 = fmul fast float %5630, %5390
  %5634 = fmul fast float %5631, %5390
  %5635 = fadd fast float %5414, %5632
  %5636 = fadd fast float %5635, %5411
  %5637 = fadd fast float %5415, %5633
  %5638 = fadd fast float %5637, %5412
  %5639 = fadd fast float %5416, %5634
  %5640 = fadd fast float %5639, %5413
  %5641 = fmul fast float %5636, %5403
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5405, float %5641)  ; FMad(a,b,c)
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5407, float %5642)  ; FMad(a,b,c)
  %5644 = fmul fast float %5636, %5408
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5638, float %5409, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5410, float %5645)  ; FMad(a,b,c)
  %5647 = fsub fast float %5643, %5411
  %5648 = fsub fast float %5647, %5418
  %5649 = fadd fast float %5648, %5420
  %5650 = fsub fast float %5646, %5412
  %5651 = fsub fast float %5650, %5419
  %5652 = fadd fast float %5651, %5420
  %5653 = fmul fast float %5649, %5421
  %5654 = fmul fast float %5652, %5421
  %5655 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5657 = fsub fast float 1.000000e+00, %5655
  %5658 = fsub fast float 1.000000e+00, %5656
  %5659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %28, float %5657, float %5658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5660 = extractvalue %dx.types.ResRet.f32 %5659, 0
  br label %5661

; <label>:5661                                    ; preds = %5615, %5422
  %5662 = phi float [ %5660, %5615 ], [ %5610, %5422 ]
  %5663 = phi float [ %5660, %5615 ], [ %5614, %5422 ]
  %5664 = phi float [ %5660, %5615 ], [ %5468, %5422 ]
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5667 = call float @dx.op.unary.f32(i32 6, float %5666)  ; FAbs(value)
  %5668 = fmul fast float %5390, %5390
  %5669 = fadd fast float %5668, 1.000000e+00
  %5670 = fdiv fast float %5667, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fsub fast float -0.000000e+00, %5390
  %5673 = select i1 %5332, float -0.000000e+00, float %5672
  %5674 = fmul fast float %5319, 0x3FF7154760000000
  %5675 = fmul fast float %5674, %5673
  %5676 = fmul fast float %5320, 0x3FF7154760000000
  %5677 = fmul fast float %5676, %5673
  %5678 = fmul fast float %5321, 0x3FF7154760000000
  %5679 = fmul fast float %5678, %5673
  %5680 = call float @dx.op.unary.f32(i32 21, float %5675)  ; Exp(value)
  %5681 = call float @dx.op.unary.f32(i32 21, float %5677)  ; Exp(value)
  %5682 = call float @dx.op.unary.f32(i32 21, float %5679)  ; Exp(value)
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5685 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5686 = call float @dx.op.unary.f32(i32 6, float %5395)  ; FAbs(value)
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sitofp i32 %5688 to float
  %5690 = fptosi float %5689 to i32
  %5691 = bitcast i32 %5690 to float
  %5692 = fmul fast float %5691, 0x3FEF333340000000
  %5693 = fadd fast float %5692, 0x3F999999A0000000
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fsub fast float 1.000000e+00, %5694
  %5696 = fadd fast float %5662, 1.000000e+00
  %5697 = fadd fast float %5663, 1.000000e+00
  %5698 = fadd fast float %5664, 1.000000e+00
  %5699 = fmul fast float %5683, %5696
  %5700 = fmul fast float %5684, %5697
  %5701 = fmul fast float %5685, %5698
  %5702 = fmul fast float %5699, %5695
  %5703 = fmul fast float %5700, %5695
  %5704 = fmul fast float %5701, %5695
  %5705 = fmul fast float %5671, %5696
  %5706 = fmul fast float %5705, %5683
  %5707 = fmul fast float %5706, %5694
  %5708 = fmul fast float %5671, %5697
  %5709 = fmul fast float %5708, %5684
  %5710 = fmul fast float %5709, %5694
  %5711 = fmul fast float %5671, %5698
  %5712 = fmul fast float %5711, %5685
  %5713 = fmul fast float %5712, %5694
  %5714 = fadd fast float %5707, %5683
  %5715 = fadd fast float %5710, %5684
  %5716 = fadd fast float %5713, %5685
  %5717 = call float @dx.op.unary.f32(i32 6, float %5331)  ; FAbs(value)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = select i1 %5332, float %5714, float %5702
  %5720 = select i1 %5332, float %5715, float %5703
  %5721 = select i1 %5332, float %5716, float %5704
  %5722 = select i1 %5326, float %5718, float 0.000000e+00
  %5723 = fsub fast float %5719, %5683
  %5724 = fsub fast float %5720, %5684
  %5725 = fsub fast float %5721, %5685
  %5726 = fmul fast float %5723, %5722
  %5727 = fmul fast float %5724, %5722
  %5728 = fmul fast float %5725, %5722
  %5729 = fadd fast float %5726, %5683
  %5730 = fadd fast float %5727, %5684
  %5731 = fadd fast float %5728, %5685
  %5732 = fmul fast float %5729, %4953
  %5733 = fmul fast float %5730, %4953
  %5734 = fmul fast float %5731, %4953
  br label %5735

; <label>:5735                                    ; preds = %5661, %5316, %4952
  %5736 = phi float [ %5732, %5661 ], [ %4953, %5316 ], [ %4953, %4952 ]
  %5737 = phi float [ %5733, %5661 ], [ %4953, %5316 ], [ %4953, %4952 ]
  %5738 = phi float [ %5734, %5661 ], [ %4953, %5316 ], [ %4953, %4952 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %74, i32 %75, i32 undef, float %5736, float %5737, float %5738, float %5736, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5739

; <label>:5739                                    ; preds = %5735, %95
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!10 = !{i32 3, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !11}
!11 = !{i32 0, i32 5}
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
!32 = !{i32 23, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!33 = !{!34}
!34 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
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
!47 = !{i32 16, i32 16, i32 1}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = !{!79, !79, i64 0}
!79 = !{!"int", !55, i64 0}
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
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 2}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 2}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 2}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 2}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}

