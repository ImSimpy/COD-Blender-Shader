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
; shader hash: ce16aa17873f5660fb811a9a5ce14ca5
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
;                                   texture     f32          2d     T24             t6     1
;                                   texture     f32          2d     T25             t5     1
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

define void @cs_sunvis_trans() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = alloca [4 x i32], align 4
  %36 = alloca [4 x i32], align 4
  %37 = alloca [4 x i32], align 4
  %38 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %39 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = alloca [12 x float], align 4
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
  %56 = alloca [4 x float], align 4
  %57 = alloca [4 x float], align 4
  %58 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.i32 %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61, !dx.controlflow.hints !50

; <label>:61                                      ; preds = %0
  %62 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %63 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %64 = shl i32 %38, 2
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = and i32 %66, 65535
  %68 = lshr i32 %66, 16
  %69 = shl nuw nsw i32 %67, 4
  %70 = shl nuw nsw i32 %68, 4
  %71 = or i32 %69, %63
  %72 = or i32 %70, %62
  br label %73

; <label>:73                                      ; preds = %61, %0
  %74 = phi i32 [ %67, %61 ], [ %38, %0 ]
  %75 = phi i32 [ %68, %61 ], [ %39, %0 ]
  %76 = phi i32 [ %71, %61 ], [ 0, %0 ]
  %77 = phi i32 [ %72, %61 ], [ 0, %0 ]
  %78 = uitofp i32 %76 to float
  %79 = uitofp i32 %77 to float
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %83 = fmul fast float %81, %78
  %84 = fmul fast float %82, %79
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fcmp fast olt float %86, -1.000000e+00
  %88 = fcmp fast ogt float %86, -1.000000e+00
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %91 = select i1 %88, float %90, float 1.000000e+00
  %92 = fadd fast float %86, 1.000000e+00
  %93 = fmul fast float %91, %92
  %94 = call float @dx.op.unary.f32(i32 6, float %93)  ; FAbs(value)
  %95 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %96 = fcmp fast ult float %94, %95
  br i1 %96, label %98, label %97, !dx.controlflow.hints !51

; <label>:97                                      ; preds = %73
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %76, i32 %77, i32 undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5844

; <label>:98                                      ; preds = %73
  %99 = fmul fast float %83, 2.000000e+00
  %100 = fmul fast float %84, 2.000000e+00
  %101 = fsub fast float 1.000000e+00, %99
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = select i1 %87, float %104, float %108
  %112 = select i1 %87, float %105, float %109
  %113 = select i1 %87, float %106, float %110
  %114 = fmul fast float %111, %101
  %115 = fmul fast float %112, %101
  %116 = fmul fast float %113, %101
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = select i1 %87, float %118, float %122
  %126 = select i1 %87, float %119, float %123
  %127 = select i1 %87, float %120, float %124
  %128 = fmul fast float %125, %102
  %129 = fmul fast float %126, %102
  %130 = fmul fast float %127, %102
  %131 = fadd fast float %128, %114
  %132 = fadd fast float %129, %115
  %133 = fadd fast float %130, %116
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = select i1 %87, float %135, float %139
  %143 = select i1 %87, float %136, float %140
  %144 = select i1 %87, float %137, float %141
  %145 = fadd fast float %131, %142
  %146 = fadd fast float %132, %143
  %147 = fadd fast float %133, %144
  %148 = fmul fast float %145, %94
  %149 = fmul fast float %146, %94
  %150 = fmul fast float %147, %94
  %151 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = lshr i32 %152, 8
  %154 = and i32 %152, 255
  %155 = and i32 %153, 255
  %156 = uitofp i32 %154 to float
  %157 = uitofp i32 %155 to float
  %158 = fmul fast float %156, 0x3F80101020000000
  %159 = fmul fast float %157, 0x3F80101020000000
  %160 = fadd fast float %158, -1.000000e+00
  %161 = fadd fast float %159, -1.000000e+00
  %162 = call float @dx.op.unary.f32(i32 6, float %160)  ; FAbs(value)
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %165 = fsub fast float %163, %164
  %166 = fsub fast float -0.000000e+00, %165
  %167 = call float @dx.op.binary.f32(i32 35, float %166, float 0.000000e+00)  ; FMax(a,b)
  %168 = fcmp fast ogt float %160, 0.000000e+00
  %169 = fsub fast float -0.000000e+00, %167
  %170 = select i1 %168, float %169, float %167
  %171 = fadd fast float %170, %160
  %172 = fcmp fast ogt float %161, 0.000000e+00
  %173 = select i1 %172, float %169, float %167
  %174 = fadd fast float %173, %161
  %175 = call float @dx.op.dot3.f32(i32 55, float %171, float %174, float %165, float %171, float %174, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = call float @dx.op.unary.f32(i32 25, float %175)  ; Rsqrt(value)
  %177 = fmul fast float %171, %176
  %178 = fmul fast float %174, %176
  %179 = fmul fast float %176, %165
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = call float @dx.op.dot3.f32(i32 55, float %181, float %182, float %183, float %177, float %178, float %179)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.unary.f32(i32 6, float %184)  ; FAbs(value)
  %186 = fsub fast float 1.000000e+00, %185
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %189 = fsub fast float -0.000000e+00, %184
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fmul fast float %188, %190
  %192 = fsub fast float %186, %191
  %193 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %194 = fmul fast float %192, %193
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.f32 %195, 1
  %198 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %199 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = extractvalue %dx.types.CBufRet.f32 %200, 0
  %202 = extractvalue %dx.types.CBufRet.f32 %200, 1
  %203 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %204 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = extractvalue %dx.types.CBufRet.f32 %205, 1
  %208 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %209 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %210 = fmul fast float %196, %148
  %211 = call float @dx.op.tertiary.f32(i32 46, float %149, float %197, float %210)  ; FMad(a,b,c)
  %212 = call float @dx.op.tertiary.f32(i32 46, float %150, float %198, float %211)  ; FMad(a,b,c)
  %213 = fadd fast float %212, %199
  %214 = fmul fast float %201, %148
  %215 = call float @dx.op.tertiary.f32(i32 46, float %149, float %202, float %214)  ; FMad(a,b,c)
  %216 = call float @dx.op.tertiary.f32(i32 46, float %150, float %203, float %215)  ; FMad(a,b,c)
  %217 = fadd fast float %216, %204
  %218 = fmul fast float %206, %148
  %219 = call float @dx.op.tertiary.f32(i32 46, float %149, float %207, float %218)  ; FMad(a,b,c)
  %220 = call float @dx.op.tertiary.f32(i32 46, float %150, float %208, float %219)  ; FMad(a,b,c)
  %221 = fadd fast float %220, %209
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %224 = fmul fast float %223, 0x3FE3C6EF40000000
  %225 = frem fast float %78, 2.560000e+02
  %226 = frem fast float %79, 2.560000e+02
  %227 = fptoui float %225 to i32
  %228 = fptoui float %226 to i32
  %229 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %227, i32 %228, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 2
  %231 = fadd fast float %230, %224
  %232 = call float @dx.op.unary.f32(i32 22, float %231)  ; Frc(value)
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 1
  %235 = fcmp fast une float %234, 0.000000e+00
  br i1 %235, label %236, label %3099, !dx.controlflow.hints !52

; <label>:236                                     ; preds = %98
  %237 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %238 = fptoui float %237 to i32
  %239 = add i32 %238, 15
  %240 = lshr i32 %239, 4
  %241 = mul i32 %240, %75
  %242 = add i32 %241, %74
  %243 = shl i32 %242, 3
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = lshr i32 %245, 28
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %423, !dx.controlflow.hints !53

; <label>:248                                     ; preds = %236
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = fmul fast float %250, %194
  %254 = fadd fast float %252, %221
  %255 = fadd fast float %254, %253
  %256 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %257 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %258 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %259 = fmul fast float %258, %213
  %260 = fmul fast float %258, %217
  %261 = fadd fast float %259, %256
  %262 = fadd fast float %260, %257
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 3
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %268 = call float @dx.op.binary.f32(i32 35, float %255, float 0.000000e+00)  ; FMax(a,b)
  %269 = fadd fast float %268, 0x3F10000000000000
  %270 = fcmp fast oeq float %267, 0.000000e+00
  br i1 %270, label %271, label %338, !dx.controlflow.hints !54

; <label>:271                                     ; preds = %248
  %272 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %273 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %274 = fmul fast float %261, %273
  %275 = fmul fast float %262, %272
  %276 = fadd fast float %274, 5.000000e-01
  %277 = call float @dx.op.unary.f32(i32 27, float %276)  ; Round_ni(value)
  %278 = fadd fast float %275, 5.000000e-01
  %279 = call float @dx.op.unary.f32(i32 27, float %278)  ; Round_ni(value)
  %280 = fsub fast float %276, %277
  %281 = fsub fast float %278, %279
  %282 = fadd fast float %277, -5.000000e-01
  %283 = fadd fast float %279, -5.000000e-01
  %284 = fmul fast float %280, 2.000000e+00
  %285 = fsub fast float 3.000000e+00, %284
  %286 = fadd fast float %284, 1.000000e+00
  %287 = fsub fast float 2.000000e+00, %280
  %288 = bitcast float %285 to i32
  %289 = sub nsw i32 2129859010, %288
  %290 = bitcast i32 %289 to float
  %291 = fmul fast float %290, %287
  %292 = fadd fast float %291, -1.000000e+00
  %293 = bitcast float %286 to i32
  %294 = sub nsw i32 2129859010, %293
  %295 = bitcast i32 %294 to float
  %296 = fmul fast float %295, %280
  %297 = fadd fast float %296, 1.000000e+00
  %298 = fmul fast float %281, 2.000000e+00
  %299 = fsub fast float 3.000000e+00, %298
  %300 = fadd fast float %298, 1.000000e+00
  %301 = fsub fast float 2.000000e+00, %281
  %302 = bitcast float %299 to i32
  %303 = sub nsw i32 2129859010, %302
  %304 = bitcast i32 %303 to float
  %305 = fmul fast float %304, %301
  %306 = fadd fast float %305, -1.000000e+00
  %307 = bitcast float %300 to i32
  %308 = sub nsw i32 2129859010, %307
  %309 = bitcast i32 %308 to float
  %310 = fmul fast float %309, %281
  %311 = fadd fast float %310, 1.000000e+00
  %312 = fadd fast float %292, %282
  %313 = fmul fast float %312, %264
  %314 = fadd fast float %306, %283
  %315 = fmul fast float %314, %265
  %316 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %313, float %315, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %317 = extractvalue %dx.types.ResRet.f32 %316, 0
  %318 = fmul fast float %317, %285
  %319 = fadd fast float %297, %282
  %320 = fmul fast float %319, %264
  %321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %320, float %315, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = fmul fast float %322, %286
  %324 = fadd fast float %311, %283
  %325 = fmul fast float %324, %265
  %326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %313, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fmul fast float %327, %285
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %320, float %325, float undef, float undef, i32 0, i32 0, i32 undef, float %269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fmul fast float %330, %286
  %332 = fadd fast float %331, %328
  %333 = fmul fast float %332, %300
  %334 = fadd fast float %323, %318
  %335 = fmul fast float %334, %299
  %336 = fadd fast float %335, %333
  %337 = fmul fast float %336, 6.250000e-02
  br label %4570

; <label>:338                                     ; preds = %248
  %339 = fmul fast float %232, 0x401921FB60000000
  %340 = call float @dx.op.unary.f32(i32 13, float %339)  ; Sin(value)
  %341 = call float @dx.op.unary.f32(i32 12, float %339)  ; Cos(value)
  %342 = fsub fast float -0.000000e+00, %340
  br label %343

; <label>:343                                     ; preds = %392, %338
  %344 = phi float [ 0.000000e+00, %338 ], [ %387, %392 ]
  %345 = phi float [ 0.000000e+00, %338 ], [ %389, %392 ]
  %346 = phi i32 [ 0, %338 ], [ %393, %392 ]
  %347 = mul i32 %346, 2
  %348 = add i32 0, %347
  %349 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %348
  %350 = load float, float* %349, align 4
  %351 = mul i32 %346, 2
  %352 = add i32 1, %351
  %353 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %352
  %354 = load float, float* %353, align 4
  %355 = fmul fast float %350, %341
  %356 = call float @dx.op.tertiary.f32(i32 46, float %354, float %342, float %355)  ; FMad(a,b,c)
  %357 = fmul fast float %350, %340
  %358 = call float @dx.op.tertiary.f32(i32 46, float %354, float %341, float %357)  ; FMad(a,b,c)
  %359 = fmul fast float %356, %267
  %360 = fmul fast float %358, %267
  %361 = fadd fast float %359, %261
  %362 = fadd fast float %360, %262
  %363 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %31, float %361, float %362, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = extractvalue %dx.types.ResRet.f32 %363, 3
  %368 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %364, float* %368, align 4
  %369 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %365, float* %369, align 4
  %370 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %366, float* %370, align 4
  %371 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %367, float* %371, align 4
  %372 = fsub fast float %364, %269
  %373 = fcmp fast olt float %372, 0.000000e+00
  %374 = select i1 %373, float 0.000000e+00, float 1.000000e+00
  %375 = fadd fast float %374, %344
  %376 = fmul fast float %374, %372
  %377 = fadd fast float %376, %345
  br label %378

; <label>:378                                     ; preds = %378, %343
  %379 = phi i32 [ 1, %343 ], [ %390, %378 ]
  %380 = phi float [ %377, %343 ], [ %389, %378 ]
  %381 = phi float [ %375, %343 ], [ %387, %378 ]
  %382 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 %379
  %383 = load float, float* %382, align 4, !tbaa !55
  %384 = fsub fast float %383, %269
  %385 = fcmp fast olt float %384, 0.000000e+00
  %386 = select i1 %385, float 0.000000e+00, float 1.000000e+00
  %387 = fadd fast float %386, %381
  %388 = fmul fast float %386, %384
  %389 = fadd fast float %388, %380
  %390 = add nuw nsw i32 %379, 1
  %391 = icmp eq i32 %390, 4
  br i1 %391, label %392, label %378, !llvm.loop !59

; <label>:392                                     ; preds = %378
  %393 = add nuw nsw i32 %346, 1
  %394 = icmp eq i32 %393, 8
  br i1 %394, label %395, label %343, !llvm.loop !61

; <label>:395                                     ; preds = %392
  %396 = fdiv fast float 1.000000e+00, %387
  %397 = fmul fast float %396, %389
  %398 = fdiv fast float 1.000000e+00, %269
  %399 = fmul fast float %397, %398
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = call float @dx.op.binary.f32(i32 35, float %400, float 0.000000e+00)  ; FMax(a,b)
  %402 = fmul fast float %387, 3.125000e-02
  %403 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %404 = fmul fast float %403, 2.000000e+00
  %405 = fadd fast float %404, -1.000000e+00
  %406 = fcmp fast ogt float %405, 0.000000e+00
  %407 = fcmp fast olt float %405, 0.000000e+00
  %408 = zext i1 %406 to i32
  %409 = zext i1 %407 to i32
  %410 = sub nsw i32 %408, %409
  %411 = sitofp i32 %410 to float
  %412 = fmul fast float %411, %405
  %413 = fsub fast float 1.000000e+00, %412
  %414 = fmul fast float %413, %413
  %415 = fmul fast float %414, %413
  %416 = fsub fast float %413, %415
  %417 = fmul fast float %416, %401
  %418 = fsub fast float 1.000000e+00, %415
  %419 = fsub fast float %418, %417
  %420 = fmul fast float %411, 5.000000e-01
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 5.000000e-01, %421
  br label %4570

; <label>:423                                     ; preds = %236
  %424 = icmp eq i32 %246, 1
  br i1 %424, label %425, label %600, !dx.controlflow.hints !62

; <label>:425                                     ; preds = %423
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %430 = fmul fast float %427, %194
  %431 = fadd fast float %429, %221
  %432 = fadd fast float %431, %430
  %433 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %434 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %435 = extractvalue %dx.types.CBufRet.f32 %426, 3
  %436 = fmul fast float %435, %213
  %437 = fmul fast float %435, %217
  %438 = fadd fast float %436, %433
  %439 = fadd fast float %437, %434
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %444 = extractvalue %dx.types.CBufRet.f32 %443, 1
  %445 = call float @dx.op.binary.f32(i32 35, float %432, float 0.000000e+00)  ; FMax(a,b)
  %446 = fadd fast float %445, 0x3F10000000000000
  %447 = fcmp fast oeq float %444, 0.000000e+00
  br i1 %447, label %448, label %515, !dx.controlflow.hints !54

; <label>:448                                     ; preds = %425
  %449 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %451 = fmul fast float %438, %450
  %452 = fmul fast float %439, %449
  %453 = fadd fast float %451, 5.000000e-01
  %454 = call float @dx.op.unary.f32(i32 27, float %453)  ; Round_ni(value)
  %455 = fadd fast float %452, 5.000000e-01
  %456 = call float @dx.op.unary.f32(i32 27, float %455)  ; Round_ni(value)
  %457 = fsub fast float %453, %454
  %458 = fsub fast float %455, %456
  %459 = fadd fast float %454, -5.000000e-01
  %460 = fadd fast float %456, -5.000000e-01
  %461 = fmul fast float %457, 2.000000e+00
  %462 = fsub fast float 3.000000e+00, %461
  %463 = fadd fast float %461, 1.000000e+00
  %464 = fsub fast float 2.000000e+00, %457
  %465 = bitcast float %462 to i32
  %466 = sub nsw i32 2129859010, %465
  %467 = bitcast i32 %466 to float
  %468 = fmul fast float %467, %464
  %469 = fadd fast float %468, -1.000000e+00
  %470 = bitcast float %463 to i32
  %471 = sub nsw i32 2129859010, %470
  %472 = bitcast i32 %471 to float
  %473 = fmul fast float %472, %457
  %474 = fadd fast float %473, 1.000000e+00
  %475 = fmul fast float %458, 2.000000e+00
  %476 = fsub fast float 3.000000e+00, %475
  %477 = fadd fast float %475, 1.000000e+00
  %478 = fsub fast float 2.000000e+00, %458
  %479 = bitcast float %476 to i32
  %480 = sub nsw i32 2129859010, %479
  %481 = bitcast i32 %480 to float
  %482 = fmul fast float %481, %478
  %483 = fadd fast float %482, -1.000000e+00
  %484 = bitcast float %477 to i32
  %485 = sub nsw i32 2129859010, %484
  %486 = bitcast i32 %485 to float
  %487 = fmul fast float %486, %458
  %488 = fadd fast float %487, 1.000000e+00
  %489 = fadd fast float %469, %459
  %490 = fmul fast float %489, %441
  %491 = fadd fast float %483, %460
  %492 = fmul fast float %491, %442
  %493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %490, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fmul fast float %494, %462
  %496 = fadd fast float %474, %459
  %497 = fmul fast float %496, %441
  %498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %497, float %492, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fmul fast float %499, %463
  %501 = fadd fast float %488, %460
  %502 = fmul fast float %501, %442
  %503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %490, float %502, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = fmul fast float %504, %462
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %497, float %502, float undef, float undef, i32 0, i32 0, i32 undef, float %446)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = fmul fast float %507, %463
  %509 = fadd fast float %508, %505
  %510 = fmul fast float %509, %477
  %511 = fadd fast float %500, %495
  %512 = fmul fast float %511, %476
  %513 = fadd fast float %512, %510
  %514 = fmul fast float %513, 6.250000e-02
  br label %4570

; <label>:515                                     ; preds = %425
  %516 = fmul fast float %232, 0x401921FB60000000
  %517 = call float @dx.op.unary.f32(i32 13, float %516)  ; Sin(value)
  %518 = call float @dx.op.unary.f32(i32 12, float %516)  ; Cos(value)
  %519 = fsub fast float -0.000000e+00, %517
  br label %520

; <label>:520                                     ; preds = %569, %515
  %521 = phi float [ 0.000000e+00, %515 ], [ %564, %569 ]
  %522 = phi float [ 0.000000e+00, %515 ], [ %566, %569 ]
  %523 = phi i32 [ 0, %515 ], [ %570, %569 ]
  %524 = mul i32 %523, 2
  %525 = add i32 0, %524
  %526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %525
  %527 = load float, float* %526, align 4
  %528 = mul i32 %523, 2
  %529 = add i32 1, %528
  %530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %529
  %531 = load float, float* %530, align 4
  %532 = fmul fast float %527, %518
  %533 = call float @dx.op.tertiary.f32(i32 46, float %531, float %519, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %527, %517
  %535 = call float @dx.op.tertiary.f32(i32 46, float %531, float %518, float %534)  ; FMad(a,b,c)
  %536 = fmul fast float %533, %444
  %537 = fmul fast float %535, %444
  %538 = fadd fast float %536, %438
  %539 = fadd fast float %537, %439
  %540 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %31, float %538, float %539, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = extractvalue %dx.types.ResRet.f32 %540, 3
  %545 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 0
  store float %541, float* %545, align 4
  %546 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 1
  store float %542, float* %546, align 4
  %547 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 2
  store float %543, float* %547, align 4
  %548 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 3
  store float %544, float* %548, align 4
  %549 = fsub fast float %541, %446
  %550 = fcmp fast olt float %549, 0.000000e+00
  %551 = select i1 %550, float 0.000000e+00, float 1.000000e+00
  %552 = fadd fast float %551, %521
  %553 = fmul fast float %551, %549
  %554 = fadd fast float %553, %522
  br label %555

; <label>:555                                     ; preds = %555, %520
  %556 = phi i32 [ 1, %520 ], [ %567, %555 ]
  %557 = phi float [ %554, %520 ], [ %566, %555 ]
  %558 = phi float [ %552, %520 ], [ %564, %555 ]
  %559 = getelementptr [4 x float], [4 x float]* %56, i32 0, i32 %556
  %560 = load float, float* %559, align 4, !tbaa !55
  %561 = fsub fast float %560, %446
  %562 = fcmp fast olt float %561, 0.000000e+00
  %563 = select i1 %562, float 0.000000e+00, float 1.000000e+00
  %564 = fadd fast float %563, %558
  %565 = fmul fast float %563, %561
  %566 = fadd fast float %565, %557
  %567 = add nuw nsw i32 %556, 1
  %568 = icmp eq i32 %567, 4
  br i1 %568, label %569, label %555, !llvm.loop !59

; <label>:569                                     ; preds = %555
  %570 = add nuw nsw i32 %523, 1
  %571 = icmp eq i32 %570, 8
  br i1 %571, label %572, label %520, !llvm.loop !61

; <label>:572                                     ; preds = %569
  %573 = fdiv fast float 1.000000e+00, %564
  %574 = fmul fast float %573, %566
  %575 = fdiv fast float 1.000000e+00, %446
  %576 = fmul fast float %574, %575
  %577 = call float @dx.op.unary.f32(i32 7, float %576)  ; Saturate(value)
  %578 = call float @dx.op.binary.f32(i32 35, float %577, float 0.000000e+00)  ; FMax(a,b)
  %579 = fmul fast float %564, 3.125000e-02
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = fmul fast float %580, 2.000000e+00
  %582 = fadd fast float %581, -1.000000e+00
  %583 = fcmp fast ogt float %582, 0.000000e+00
  %584 = fcmp fast olt float %582, 0.000000e+00
  %585 = zext i1 %583 to i32
  %586 = zext i1 %584 to i32
  %587 = sub nsw i32 %585, %586
  %588 = sitofp i32 %587 to float
  %589 = fmul fast float %588, %582
  %590 = fsub fast float 1.000000e+00, %589
  %591 = fmul fast float %590, %590
  %592 = fmul fast float %591, %590
  %593 = fsub fast float %590, %592
  %594 = fmul fast float %593, %578
  %595 = fsub fast float 1.000000e+00, %592
  %596 = fsub fast float %595, %594
  %597 = fmul fast float %588, 5.000000e-01
  %598 = fmul fast float %597, %596
  %599 = fsub fast float 5.000000e-01, %598
  br label %4570

; <label>:600                                     ; preds = %423
  %601 = icmp eq i32 %246, 2
  br i1 %601, label %602, label %777, !dx.controlflow.hints !63

; <label>:602                                     ; preds = %600
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 2
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %607 = fmul fast float %604, %194
  %608 = fadd fast float %606, %221
  %609 = fadd fast float %608, %607
  %610 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %611 = extractvalue %dx.types.CBufRet.f32 %603, 1
  %612 = extractvalue %dx.types.CBufRet.f32 %603, 3
  %613 = fmul fast float %612, %213
  %614 = fmul fast float %612, %217
  %615 = fadd fast float %613, %610
  %616 = fadd fast float %614, %611
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 2
  %619 = extractvalue %dx.types.CBufRet.f32 %617, 3
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 2
  %622 = call float @dx.op.binary.f32(i32 35, float %609, float 0.000000e+00)  ; FMax(a,b)
  %623 = fadd fast float %622, 0x3F10000000000000
  %624 = fcmp fast oeq float %621, 0.000000e+00
  br i1 %624, label %625, label %692, !dx.controlflow.hints !54

; <label>:625                                     ; preds = %602
  %626 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %617, 0
  %628 = fmul fast float %615, %627
  %629 = fmul fast float %616, %626
  %630 = fadd fast float %628, 5.000000e-01
  %631 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %632 = fadd fast float %629, 5.000000e-01
  %633 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %634 = fsub fast float %630, %631
  %635 = fsub fast float %632, %633
  %636 = fadd fast float %631, -5.000000e-01
  %637 = fadd fast float %633, -5.000000e-01
  %638 = fmul fast float %634, 2.000000e+00
  %639 = fsub fast float 3.000000e+00, %638
  %640 = fadd fast float %638, 1.000000e+00
  %641 = fsub fast float 2.000000e+00, %634
  %642 = bitcast float %639 to i32
  %643 = sub nsw i32 2129859010, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %644, %641
  %646 = fadd fast float %645, -1.000000e+00
  %647 = bitcast float %640 to i32
  %648 = sub nsw i32 2129859010, %647
  %649 = bitcast i32 %648 to float
  %650 = fmul fast float %649, %634
  %651 = fadd fast float %650, 1.000000e+00
  %652 = fmul fast float %635, 2.000000e+00
  %653 = fsub fast float 3.000000e+00, %652
  %654 = fadd fast float %652, 1.000000e+00
  %655 = fsub fast float 2.000000e+00, %635
  %656 = bitcast float %653 to i32
  %657 = sub nsw i32 2129859010, %656
  %658 = bitcast i32 %657 to float
  %659 = fmul fast float %658, %655
  %660 = fadd fast float %659, -1.000000e+00
  %661 = bitcast float %654 to i32
  %662 = sub nsw i32 2129859010, %661
  %663 = bitcast i32 %662 to float
  %664 = fmul fast float %663, %635
  %665 = fadd fast float %664, 1.000000e+00
  %666 = fadd fast float %646, %636
  %667 = fmul fast float %666, %618
  %668 = fadd fast float %660, %637
  %669 = fmul fast float %668, %619
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %667, float %669, float undef, float undef, i32 0, i32 0, i32 undef, float %623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = fmul fast float %671, %639
  %673 = fadd fast float %651, %636
  %674 = fmul fast float %673, %618
  %675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %674, float %669, float undef, float undef, i32 0, i32 0, i32 undef, float %623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = fmul fast float %676, %640
  %678 = fadd fast float %665, %637
  %679 = fmul fast float %678, %619
  %680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %667, float %679, float undef, float undef, i32 0, i32 0, i32 undef, float %623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = fmul fast float %681, %639
  %683 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %674, float %679, float undef, float undef, i32 0, i32 0, i32 undef, float %623)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = fmul fast float %684, %640
  %686 = fadd fast float %685, %682
  %687 = fmul fast float %686, %654
  %688 = fadd fast float %677, %672
  %689 = fmul fast float %688, %653
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, 6.250000e-02
  br label %4570

; <label>:692                                     ; preds = %602
  %693 = fmul fast float %232, 0x401921FB60000000
  %694 = call float @dx.op.unary.f32(i32 13, float %693)  ; Sin(value)
  %695 = call float @dx.op.unary.f32(i32 12, float %693)  ; Cos(value)
  %696 = fsub fast float -0.000000e+00, %694
  br label %697

; <label>:697                                     ; preds = %746, %692
  %698 = phi float [ 0.000000e+00, %692 ], [ %741, %746 ]
  %699 = phi float [ 0.000000e+00, %692 ], [ %743, %746 ]
  %700 = phi i32 [ 0, %692 ], [ %747, %746 ]
  %701 = mul i32 %700, 2
  %702 = add i32 0, %701
  %703 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %702
  %704 = load float, float* %703, align 4
  %705 = mul i32 %700, 2
  %706 = add i32 1, %705
  %707 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %706
  %708 = load float, float* %707, align 4
  %709 = fmul fast float %704, %695
  %710 = call float @dx.op.tertiary.f32(i32 46, float %708, float %696, float %709)  ; FMad(a,b,c)
  %711 = fmul fast float %704, %694
  %712 = call float @dx.op.tertiary.f32(i32 46, float %708, float %695, float %711)  ; FMad(a,b,c)
  %713 = fmul fast float %710, %621
  %714 = fmul fast float %712, %621
  %715 = fadd fast float %713, %615
  %716 = fadd fast float %714, %616
  %717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %31, float %715, float %716, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 1
  %720 = extractvalue %dx.types.ResRet.f32 %717, 2
  %721 = extractvalue %dx.types.ResRet.f32 %717, 3
  %722 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %718, float* %722, align 4
  %723 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %719, float* %723, align 4
  %724 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %720, float* %724, align 4
  %725 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %721, float* %725, align 4
  %726 = fsub fast float %718, %623
  %727 = fcmp fast olt float %726, 0.000000e+00
  %728 = select i1 %727, float 0.000000e+00, float 1.000000e+00
  %729 = fadd fast float %728, %698
  %730 = fmul fast float %728, %726
  %731 = fadd fast float %730, %699
  br label %732

; <label>:732                                     ; preds = %732, %697
  %733 = phi i32 [ 1, %697 ], [ %744, %732 ]
  %734 = phi float [ %731, %697 ], [ %743, %732 ]
  %735 = phi float [ %729, %697 ], [ %741, %732 ]
  %736 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %733
  %737 = load float, float* %736, align 4, !tbaa !55
  %738 = fsub fast float %737, %623
  %739 = fcmp fast olt float %738, 0.000000e+00
  %740 = select i1 %739, float 0.000000e+00, float 1.000000e+00
  %741 = fadd fast float %740, %735
  %742 = fmul fast float %740, %738
  %743 = fadd fast float %742, %734
  %744 = add nuw nsw i32 %733, 1
  %745 = icmp eq i32 %744, 4
  br i1 %745, label %746, label %732, !llvm.loop !59

; <label>:746                                     ; preds = %732
  %747 = add nuw nsw i32 %700, 1
  %748 = icmp eq i32 %747, 8
  br i1 %748, label %749, label %697, !llvm.loop !61

; <label>:749                                     ; preds = %746
  %750 = fdiv fast float 1.000000e+00, %741
  %751 = fmul fast float %750, %743
  %752 = fdiv fast float 1.000000e+00, %623
  %753 = fmul fast float %751, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float 0.000000e+00)  ; FMax(a,b)
  %756 = fmul fast float %741, 3.125000e-02
  %757 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %758 = fmul fast float %757, 2.000000e+00
  %759 = fadd fast float %758, -1.000000e+00
  %760 = fcmp fast ogt float %759, 0.000000e+00
  %761 = fcmp fast olt float %759, 0.000000e+00
  %762 = zext i1 %760 to i32
  %763 = zext i1 %761 to i32
  %764 = sub nsw i32 %762, %763
  %765 = sitofp i32 %764 to float
  %766 = fmul fast float %765, %759
  %767 = fsub fast float 1.000000e+00, %766
  %768 = fmul fast float %767, %767
  %769 = fmul fast float %768, %767
  %770 = fsub fast float %767, %769
  %771 = fmul fast float %770, %755
  %772 = fsub fast float 1.000000e+00, %769
  %773 = fsub fast float %772, %771
  %774 = fmul fast float %765, 5.000000e-01
  %775 = fmul fast float %774, %773
  %776 = fsub fast float 5.000000e-01, %775
  br label %4570

; <label>:777                                     ; preds = %600
  %778 = icmp eq i32 %246, 12
  br i1 %778, label %779, label %954, !dx.controlflow.hints !64

; <label>:779                                     ; preds = %777
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 0
  %784 = fmul fast float %781, %194
  %785 = fadd fast float %783, %221
  %786 = fadd fast float %785, %784
  %787 = extractvalue %dx.types.CBufRet.f32 %780, 0
  %788 = extractvalue %dx.types.CBufRet.f32 %780, 1
  %789 = extractvalue %dx.types.CBufRet.f32 %780, 3
  %790 = fmul fast float %789, %213
  %791 = fmul fast float %789, %217
  %792 = fadd fast float %790, %787
  %793 = fadd fast float %791, %788
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 3
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %799 = call float @dx.op.binary.f32(i32 35, float %786, float 0.000000e+00)  ; FMax(a,b)
  %800 = fadd fast float %799, 0x3F10000000000000
  %801 = fcmp fast oeq float %798, 0.000000e+00
  br i1 %801, label %802, label %869, !dx.controlflow.hints !54

; <label>:802                                     ; preds = %779
  %803 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %804 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %805 = fmul fast float %792, %804
  %806 = fmul fast float %793, %803
  %807 = fadd fast float %805, 5.000000e-01
  %808 = call float @dx.op.unary.f32(i32 27, float %807)  ; Round_ni(value)
  %809 = fadd fast float %806, 5.000000e-01
  %810 = call float @dx.op.unary.f32(i32 27, float %809)  ; Round_ni(value)
  %811 = fsub fast float %807, %808
  %812 = fsub fast float %809, %810
  %813 = fadd fast float %808, -5.000000e-01
  %814 = fadd fast float %810, -5.000000e-01
  %815 = fmul fast float %811, 2.000000e+00
  %816 = fsub fast float 3.000000e+00, %815
  %817 = fadd fast float %815, 1.000000e+00
  %818 = fsub fast float 2.000000e+00, %811
  %819 = bitcast float %816 to i32
  %820 = sub nsw i32 2129859010, %819
  %821 = bitcast i32 %820 to float
  %822 = fmul fast float %821, %818
  %823 = fadd fast float %822, -1.000000e+00
  %824 = bitcast float %817 to i32
  %825 = sub nsw i32 2129859010, %824
  %826 = bitcast i32 %825 to float
  %827 = fmul fast float %826, %811
  %828 = fadd fast float %827, 1.000000e+00
  %829 = fmul fast float %812, 2.000000e+00
  %830 = fsub fast float 3.000000e+00, %829
  %831 = fadd fast float %829, 1.000000e+00
  %832 = fsub fast float 2.000000e+00, %812
  %833 = bitcast float %830 to i32
  %834 = sub nsw i32 2129859010, %833
  %835 = bitcast i32 %834 to float
  %836 = fmul fast float %835, %832
  %837 = fadd fast float %836, -1.000000e+00
  %838 = bitcast float %831 to i32
  %839 = sub nsw i32 2129859010, %838
  %840 = bitcast i32 %839 to float
  %841 = fmul fast float %840, %812
  %842 = fadd fast float %841, 1.000000e+00
  %843 = fadd fast float %823, %813
  %844 = fmul fast float %843, %795
  %845 = fadd fast float %837, %814
  %846 = fmul fast float %845, %796
  %847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %844, float %846, float undef, float undef, i32 0, i32 0, i32 undef, float %800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %848 = extractvalue %dx.types.ResRet.f32 %847, 0
  %849 = fmul fast float %848, %816
  %850 = fadd fast float %828, %813
  %851 = fmul fast float %850, %795
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %851, float %846, float undef, float undef, i32 0, i32 0, i32 undef, float %800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = fmul fast float %853, %817
  %855 = fadd fast float %842, %814
  %856 = fmul fast float %855, %796
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %844, float %856, float undef, float undef, i32 0, i32 0, i32 undef, float %800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = fmul fast float %858, %816
  %860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %851, float %856, float undef, float undef, i32 0, i32 0, i32 undef, float %800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = fmul fast float %861, %817
  %863 = fadd fast float %862, %859
  %864 = fmul fast float %863, %831
  %865 = fadd fast float %854, %849
  %866 = fmul fast float %865, %830
  %867 = fadd fast float %866, %864
  %868 = fmul fast float %867, 6.250000e-02
  br label %4570

; <label>:869                                     ; preds = %779
  %870 = fmul fast float %232, 0x401921FB60000000
  %871 = call float @dx.op.unary.f32(i32 13, float %870)  ; Sin(value)
  %872 = call float @dx.op.unary.f32(i32 12, float %870)  ; Cos(value)
  %873 = fsub fast float -0.000000e+00, %871
  br label %874

; <label>:874                                     ; preds = %923, %869
  %875 = phi float [ 0.000000e+00, %869 ], [ %918, %923 ]
  %876 = phi float [ 0.000000e+00, %869 ], [ %920, %923 ]
  %877 = phi i32 [ 0, %869 ], [ %924, %923 ]
  %878 = mul i32 %877, 2
  %879 = add i32 0, %878
  %880 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %879
  %881 = load float, float* %880, align 4
  %882 = mul i32 %877, 2
  %883 = add i32 1, %882
  %884 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %883
  %885 = load float, float* %884, align 4
  %886 = fmul fast float %881, %872
  %887 = call float @dx.op.tertiary.f32(i32 46, float %885, float %873, float %886)  ; FMad(a,b,c)
  %888 = fmul fast float %881, %871
  %889 = call float @dx.op.tertiary.f32(i32 46, float %885, float %872, float %888)  ; FMad(a,b,c)
  %890 = fmul fast float %887, %798
  %891 = fmul fast float %889, %798
  %892 = fadd fast float %890, %792
  %893 = fadd fast float %891, %793
  %894 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %31, float %892, float %893, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = extractvalue %dx.types.ResRet.f32 %894, 1
  %897 = extractvalue %dx.types.ResRet.f32 %894, 2
  %898 = extractvalue %dx.types.ResRet.f32 %894, 3
  %899 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %895, float* %899, align 4
  %900 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %896, float* %900, align 4
  %901 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %897, float* %901, align 4
  %902 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %898, float* %902, align 4
  %903 = fsub fast float %895, %800
  %904 = fcmp fast olt float %903, 0.000000e+00
  %905 = select i1 %904, float 0.000000e+00, float 1.000000e+00
  %906 = fadd fast float %905, %875
  %907 = fmul fast float %905, %903
  %908 = fadd fast float %907, %876
  br label %909

; <label>:909                                     ; preds = %909, %874
  %910 = phi i32 [ 1, %874 ], [ %921, %909 ]
  %911 = phi float [ %908, %874 ], [ %920, %909 ]
  %912 = phi float [ %906, %874 ], [ %918, %909 ]
  %913 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %910
  %914 = load float, float* %913, align 4, !tbaa !55
  %915 = fsub fast float %914, %800
  %916 = fcmp fast olt float %915, 0.000000e+00
  %917 = select i1 %916, float 0.000000e+00, float 1.000000e+00
  %918 = fadd fast float %917, %912
  %919 = fmul fast float %917, %915
  %920 = fadd fast float %919, %911
  %921 = add nuw nsw i32 %910, 1
  %922 = icmp eq i32 %921, 4
  br i1 %922, label %923, label %909, !llvm.loop !59

; <label>:923                                     ; preds = %909
  %924 = add nuw nsw i32 %877, 1
  %925 = icmp eq i32 %924, 8
  br i1 %925, label %926, label %874, !llvm.loop !61

; <label>:926                                     ; preds = %923
  %927 = fdiv fast float 1.000000e+00, %918
  %928 = fmul fast float %927, %920
  %929 = fdiv fast float 1.000000e+00, %800
  %930 = fmul fast float %928, %929
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 0.000000e+00)  ; FMax(a,b)
  %933 = fmul fast float %918, 3.125000e-02
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %934, 2.000000e+00
  %936 = fadd fast float %935, -1.000000e+00
  %937 = fcmp fast ogt float %936, 0.000000e+00
  %938 = fcmp fast olt float %936, 0.000000e+00
  %939 = zext i1 %937 to i32
  %940 = zext i1 %938 to i32
  %941 = sub nsw i32 %939, %940
  %942 = sitofp i32 %941 to float
  %943 = fmul fast float %942, %936
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %944
  %946 = fmul fast float %945, %944
  %947 = fsub fast float %944, %946
  %948 = fmul fast float %947, %932
  %949 = fsub fast float 1.000000e+00, %946
  %950 = fsub fast float %949, %948
  %951 = fmul fast float %942, 5.000000e-01
  %952 = fmul fast float %951, %950
  %953 = fsub fast float 5.000000e-01, %952
  br label %4570

; <label>:954                                     ; preds = %777
  %955 = icmp eq i32 %246, 13
  br i1 %955, label %956, label %1626, !dx.controlflow.hints !65

; <label>:956                                     ; preds = %954
  %957 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %958 = fcmp fast une float %957, 0.000000e+00
  br i1 %958, label %959, label %4570, !dx.controlflow.hints !66

; <label>:959                                     ; preds = %956
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %973 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %975 = fmul fast float %961, %148
  %976 = call float @dx.op.tertiary.f32(i32 46, float %149, float %962, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float %150, float %963, float %976)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %964
  %979 = fmul fast float %966, %148
  %980 = call float @dx.op.tertiary.f32(i32 46, float %149, float %967, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float %150, float %968, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %969
  %983 = fmul fast float %971, %148
  %984 = call float @dx.op.tertiary.f32(i32 46, float %149, float %972, float %983)  ; FMad(a,b,c)
  %985 = call float @dx.op.tertiary.f32(i32 46, float %150, float %973, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %985, %974
  %987 = fcmp fast oge float %978, 1.000000e+00
  %988 = fcmp fast oge float %982, 1.000000e+00
  %989 = or i1 %987, %988
  %990 = fcmp fast olt float %978, 0.000000e+00
  %991 = fcmp fast olt float %982, 0.000000e+00
  %992 = or i1 %990, %991
  %993 = or i1 %989, %992
  br i1 %993, label %4570, label %994, !dx.controlflow.hints !67

; <label>:994                                     ; preds = %959
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1001 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.i32 %1001, 2
  %1003 = uitofp i32 %1002 to float
  %1004 = extractvalue %dx.types.CBufRet.i32 %1001, 3
  %1005 = uitofp i32 %1004 to float
  %1006 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1007 = fmul fast float %1006, 2.000000e+00
  %1008 = fsub fast float %978, %996
  %1009 = fsub fast float %982, %997
  %1010 = fmul fast float %1007, %1008
  %1011 = fmul fast float %1007, %1009
  %1012 = fdiv fast float 1.000000e+00, %183
  %1013 = fmul fast float %1011, %1012
  %1014 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1015 = fmul fast float %998, %150
  %1016 = fmul fast float %1015, %1007
  %1017 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1018 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1017, float %1014)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 35, float %1018, float %1019)  ; FMax(a,b)
  %1021 = fmul fast float %1020, 2.000000e+00
  %1022 = call float @dx.op.unary.f32(i32 23, float %1021)  ; Log(value)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1022, float %1003)  ; FMax(a,b)
  %1024 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1025 = fadd fast float %1024, 0xBFEA666660000000
  %1026 = fmul fast float %1025, 8.000000e+00
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = call float @dx.op.unary.f32(i32 27, float %1023)  ; Round_ni(value)
  %1029 = fadd fast float %1028, %1027
  %1030 = call float @dx.op.binary.f32(i32 36, float %1029, float %1005)  ; FMin(a,b)
  %1031 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1032 = fsub fast float -0.000000e+00, %1031
  %1033 = call float @dx.op.unary.f32(i32 21, float %1032)  ; Exp(value)
  %1034 = fmul fast float %1033, %1007
  %1035 = fmul fast float %1034, %978
  %1036 = fmul fast float %1034, %982
  %1037 = fmul fast float %1035, 5.000000e-01
  %1038 = fmul fast float %1036, 5.000000e-01
  %1039 = fadd fast float %1037, 5.000000e-01
  %1040 = fadd fast float %1038, 5.000000e-01
  %1041 = fmul fast float %1035, 2.500000e-01
  %1042 = fmul fast float %1036, 2.500000e-01
  %1043 = fadd fast float %1041, 5.000000e-01
  %1044 = fadd fast float %1042, 5.000000e-01
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = and i32 %1046, 536870911
  %1048 = lshr i32 %1047, 9
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, %978
  %1051 = fmul fast float %1049, %982
  %1052 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1053 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1054 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1055 = fcmp fast une float %1054, 0.000000e+00
  br i1 %1055, label %1056, label %1154, !dx.controlflow.hints !68

; <label>:1056                                    ; preds = %994
  %1057 = call float @dx.op.unary.f32(i32 21, float %1028)  ; Exp(value)
  %1058 = fmul fast float %1057, 1.953125e-03
  %1059 = fcmp fast olt float %1052, %1058
  %1060 = fcmp fast olt float %1053, %1058
  %1061 = or i1 %1059, %1060
  %1062 = fsub fast float 1.000000e+00, %1058
  %1063 = fcmp fast ogt float %1052, %1062
  %1064 = fcmp fast ogt float %1053, %1062
  %1065 = or i1 %1063, %1064
  %1066 = or i1 %1061, %1065
  br i1 %1066, label %1067, label %1233, !dx.controlflow.hints !69

; <label>:1067                                    ; preds = %1056
  %1068 = fmul fast float %1000, 5.000000e-01
  %1069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.i32 %1069, 0
  %1071 = fmul fast float %982, 3.530000e+02
  %1072 = uitofp i32 %1047 to float
  %1073 = fmul fast float %1071, %1072
  %1074 = fmul fast float %978, 6.130000e+02
  %1075 = fadd fast float %1073, %1074
  %1076 = fptoui float %1075 to i32
  %1077 = add i32 %1070, %1076
  %1078 = mul i32 %1077, -63
  %1079 = lshr i32 %1078, 17
  %1080 = xor i32 %1079, %1078
  %1081 = mul i32 %1080, -511
  %1082 = mul i32 %1080, -8176
  %1083 = xor i32 %1081, %1082
  %1084 = mul i32 %1083, -7
  %1085 = mul i32 %1083, -7168
  %1086 = xor i32 %1084, %1085
  %1087 = lshr i32 %1086, 15
  %1088 = xor i32 %1087, %1084
  %1089 = and i32 %1088, 15
  %1090 = mul i32 %1089, 2
  %1091 = add i32 0, %1090
  %1092 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1091
  %1093 = load float, float* %1092, align 4
  %1094 = mul i32 %1089, 2
  %1095 = add i32 1, %1094
  %1096 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1095
  %1097 = load float, float* %1096, align 4
  %1098 = fmul fast float %982, 2.770000e+02
  %1099 = fmul fast float %1098, %1072
  %1100 = fmul fast float %978, 5.990000e+02
  %1101 = fadd fast float %1099, %1100
  %1102 = fptoui float %1101 to i32
  %1103 = mul i32 %1102, -63
  %1104 = lshr i32 %1103, 17
  %1105 = xor i32 %1104, %1103
  %1106 = mul i32 %1105, -511
  %1107 = mul i32 %1105, -8176
  %1108 = xor i32 %1106, %1107
  %1109 = mul i32 %1108, -7
  %1110 = mul i32 %1108, -7168
  %1111 = xor i32 %1109, %1110
  %1112 = lshr i32 %1111, 15
  %1113 = xor i32 %1112, %1109
  %1114 = and i32 %1113, 63
  %1115 = mul i32 %1114, 2
  %1116 = add i32 0, %1115
  %1117 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1116
  %1118 = load float, float* %1117, align 4
  %1119 = mul i32 %1114, 2
  %1120 = add i32 1, %1119
  %1121 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1120
  %1122 = load float, float* %1121, align 4
  %1123 = call float @dx.op.dot2.f32(i32 54, float %1093, float %1097, float %1118, float %1122)  ; Dot2(ax,ay,bx,by)
  %1124 = fsub fast float -0.000000e+00, %1118
  %1125 = call float @dx.op.dot2.f32(i32 54, float %1093, float %1097, float %1124, float %1122)  ; Dot2(ax,ay,bx,by)
  %1126 = fmul fast float %1123, %1068
  %1127 = fmul fast float %1125, %1068
  %1128 = fdiv fast float 2.000000e+00, %1034
  %1129 = fmul fast float %1057, 9.765625e-04
  %1130 = fcmp fast olt float %1052, %1129
  %1131 = fcmp fast olt float %1053, %1129
  %1132 = or i1 %1130, %1131
  %1133 = fsub fast float 1.000000e+00, %1129
  %1134 = fcmp fast ogt float %1052, %1133
  %1135 = fcmp fast ogt float %1053, %1133
  %1136 = or i1 %1134, %1135
  %1137 = or i1 %1132, %1136
  %1138 = fmul fast float %1126, 2.000000e+00
  br i1 %1137, label %1139, label %1143, !dx.controlflow.hints !70

; <label>:1139                                    ; preds = %1067
  %1140 = fmul fast float %1127, 2.000000e+00
  %1141 = fadd fast float %1138, %1039
  %1142 = fadd fast float %1140, %1040
  br label %1143

; <label>:1143                                    ; preds = %1139, %1067
  %1144 = phi float [ %1141, %1139 ], [ %1039, %1067 ]
  %1145 = phi float [ %1142, %1139 ], [ %1040, %1067 ]
  %1146 = phi i32 [ 3, %1139 ], [ 2, %1067 ]
  %1147 = fadd fast float %1126, %1043
  %1148 = fadd fast float %1127, %1044
  %1149 = fmul fast float %1138, %1128
  %1150 = fmul fast float %1128, 2.000000e+00
  %1151 = fmul fast float %1150, %1127
  %1152 = fadd fast float %1149, %978
  %1153 = fadd fast float %1151, %982
  br label %1233

; <label>:1154                                    ; preds = %994
  %1155 = call float @dx.op.unary.f32(i32 21, float %1031)  ; Exp(value)
  %1156 = fmul fast float %1155, 9.765625e-04
  %1157 = fcmp fast olt float %1052, %1156
  %1158 = fcmp fast olt float %1053, %1156
  %1159 = or i1 %1157, %1158
  %1160 = fsub fast float 1.000000e+00, %1156
  %1161 = fcmp fast ogt float %1052, %1160
  %1162 = fcmp fast ogt float %1053, %1160
  %1163 = or i1 %1161, %1162
  %1164 = or i1 %1159, %1163
  br i1 %1164, label %1165, label %1233, !dx.controlflow.hints !71

; <label>:1165                                    ; preds = %1154
  %1166 = fmul fast float %1000, 5.000000e-01
  %1167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.i32 %1167, 0
  %1169 = fmul fast float %982, 3.530000e+02
  %1170 = uitofp i32 %1047 to float
  %1171 = fmul fast float %1169, %1170
  %1172 = fmul fast float %978, 6.130000e+02
  %1173 = fadd fast float %1171, %1172
  %1174 = fptoui float %1173 to i32
  %1175 = add i32 %1168, %1174
  %1176 = mul i32 %1175, -63
  %1177 = lshr i32 %1176, 17
  %1178 = xor i32 %1177, %1176
  %1179 = mul i32 %1178, -511
  %1180 = mul i32 %1178, -8176
  %1181 = xor i32 %1179, %1180
  %1182 = mul i32 %1181, -7
  %1183 = mul i32 %1181, -7168
  %1184 = xor i32 %1182, %1183
  %1185 = lshr i32 %1184, 15
  %1186 = xor i32 %1185, %1182
  %1187 = and i32 %1186, 15
  %1188 = mul i32 %1187, 2
  %1189 = add i32 0, %1188
  %1190 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1189
  %1191 = load float, float* %1190, align 4
  %1192 = mul i32 %1187, 2
  %1193 = add i32 1, %1192
  %1194 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1193
  %1195 = load float, float* %1194, align 4
  %1196 = fmul fast float %982, 2.770000e+02
  %1197 = fmul fast float %1196, %1170
  %1198 = fmul fast float %978, 5.990000e+02
  %1199 = fadd fast float %1197, %1198
  %1200 = fptoui float %1199 to i32
  %1201 = mul i32 %1200, -63
  %1202 = lshr i32 %1201, 17
  %1203 = xor i32 %1202, %1201
  %1204 = mul i32 %1203, -511
  %1205 = mul i32 %1203, -8176
  %1206 = xor i32 %1204, %1205
  %1207 = mul i32 %1206, -7
  %1208 = mul i32 %1206, -7168
  %1209 = xor i32 %1207, %1208
  %1210 = lshr i32 %1209, 15
  %1211 = xor i32 %1210, %1207
  %1212 = and i32 %1211, 63
  %1213 = mul i32 %1212, 2
  %1214 = add i32 0, %1213
  %1215 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1214
  %1216 = load float, float* %1215, align 4
  %1217 = mul i32 %1212, 2
  %1218 = add i32 1, %1217
  %1219 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1218
  %1220 = load float, float* %1219, align 4
  %1221 = call float @dx.op.dot2.f32(i32 54, float %1191, float %1195, float %1216, float %1220)  ; Dot2(ax,ay,bx,by)
  %1222 = fsub fast float -0.000000e+00, %1216
  %1223 = call float @dx.op.dot2.f32(i32 54, float %1191, float %1195, float %1222, float %1220)  ; Dot2(ax,ay,bx,by)
  %1224 = fmul fast float %1221, %1166
  %1225 = fmul fast float %1223, %1166
  %1226 = fadd fast float %1224, %1039
  %1227 = fadd fast float %1225, %1040
  %1228 = fdiv fast float 2.000000e+00, %1034
  %1229 = fmul fast float %1228, %1224
  %1230 = fmul fast float %1225, %1228
  %1231 = fadd fast float %1229, %978
  %1232 = fadd fast float %1230, %982
  br label %1233

; <label>:1233                                    ; preds = %1165, %1154, %1143, %1056
  %1234 = phi float [ %1147, %1143 ], [ %1043, %1056 ], [ %1043, %1165 ], [ %1043, %1154 ]
  %1235 = phi float [ %1148, %1143 ], [ %1044, %1056 ], [ %1044, %1165 ], [ %1044, %1154 ]
  %1236 = phi float [ %1144, %1143 ], [ %1039, %1056 ], [ %1226, %1165 ], [ %1039, %1154 ]
  %1237 = phi float [ %1145, %1143 ], [ %1040, %1056 ], [ %1227, %1165 ], [ %1040, %1154 ]
  %1238 = phi i32 [ %1146, %1143 ], [ 0, %1056 ], [ 1, %1165 ], [ 0, %1154 ]
  %1239 = phi float [ %1152, %1143 ], [ %978, %1056 ], [ %1231, %1165 ], [ %978, %1154 ]
  %1240 = phi float [ %1153, %1143 ], [ %982, %1056 ], [ %1232, %1165 ], [ %982, %1154 ]
  %1241 = fsub fast float %1005, %1003
  %1242 = fptoui float %1241 to i32
  %1243 = add i32 %1242, 320
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %1243)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = fcmp fast une float %1030, %1005
  %1248 = fsub fast float %1239, %1245
  %1249 = fsub fast float %1240, %1246
  %1250 = call float @dx.op.unary.f32(i32 6, float %1248)  ; FAbs(value)
  %1251 = call float @dx.op.unary.f32(i32 6, float %1249)  ; FAbs(value)
  %1252 = fmul fast float %1250, %1034
  %1253 = fmul fast float %1251, %1034
  %1254 = fcmp fast olt float %1252, 1.000000e+00
  %1255 = fcmp fast olt float %1253, 1.000000e+00
  %1256 = and i1 %1254, %1255
  %1257 = or i1 %1247, %1256
  br i1 %1257, label %1258, label %4570, !dx.controlflow.hints !72

; <label>:1258                                    ; preds = %1233
  %1259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.i32 %1259, 2
  %1261 = sitofp i32 %1260 to float
  %1262 = fsub fast float %1030, %1261
  %1263 = call float @dx.op.unary.f32(i32 27, float %1262)  ; Round_ni(value)
  %1264 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1265 = icmp eq i32 %1238, 0
  %1266 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1267 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  br i1 %1265, label %1338, label %1268, !dx.controlflow.hints !73

; <label>:1268                                    ; preds = %1258
  %1269 = and i32 %1238, 1
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1284, label %1271, !dx.controlflow.hints !74

; <label>:1271                                    ; preds = %1268
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 0
  %1274 = fmul fast float %1266, %1273
  %1275 = fmul fast float %1267, %1273
  %1276 = fptoui float %1274 to i32
  %1277 = fptoui float %1275 to i32
  %1278 = fptoui float %1263 to i32
  %1279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1276, i32 %1277, i32 %1278, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = extractvalue %dx.types.ResRet.f32 %1279, 3
  br label %1290

; <label>:1284                                    ; preds = %1268
  %1285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1266, float %1267, float %1263, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.ResRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.ResRet.f32 %1285, 2
  %1289 = extractvalue %dx.types.ResRet.f32 %1285, 3
  br label %1290

; <label>:1290                                    ; preds = %1284, %1271
  %1291 = phi float [ %1280, %1271 ], [ %1286, %1284 ]
  %1292 = phi float [ %1281, %1271 ], [ %1287, %1284 ]
  %1293 = phi float [ %1282, %1271 ], [ %1288, %1284 ]
  %1294 = phi float [ %1283, %1271 ], [ %1289, %1284 ]
  %1295 = fcmp fast ogt float %1264, 0.000000e+00
  br i1 %1295, label %1296, label %1366, !dx.controlflow.hints !75

; <label>:1296                                    ; preds = %1290
  %1297 = and i32 %1238, 2
  %1298 = icmp eq i32 %1297, 0
  %1299 = fadd fast float %1263, 1.000000e+00
  %1300 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1301 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  br i1 %1298, label %1315, label %1302, !dx.controlflow.hints !76

; <label>:1302                                    ; preds = %1296
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = fmul fast float %1300, %1304
  %1306 = fmul fast float %1301, %1304
  %1307 = fptoui float %1305 to i32
  %1308 = fptoui float %1306 to i32
  %1309 = fptoui float %1299 to i32
  %1310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1307, i32 %1308, i32 %1309, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = extractvalue %dx.types.ResRet.f32 %1310, 3
  br label %1321

; <label>:1315                                    ; preds = %1296
  %1316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1300, float %1301, float %1299, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = extractvalue %dx.types.ResRet.f32 %1316, 3
  br label %1321

; <label>:1321                                    ; preds = %1315, %1302
  %1322 = phi float [ %1311, %1302 ], [ %1317, %1315 ]
  %1323 = phi float [ %1312, %1302 ], [ %1318, %1315 ]
  %1324 = phi float [ %1313, %1302 ], [ %1319, %1315 ]
  %1325 = phi float [ %1314, %1302 ], [ %1320, %1315 ]
  %1326 = fsub fast float %1322, %1291
  %1327 = fsub fast float %1323, %1292
  %1328 = fsub fast float %1324, %1293
  %1329 = fsub fast float %1325, %1294
  %1330 = fmul fast float %1326, %1264
  %1331 = fmul fast float %1327, %1264
  %1332 = fmul fast float %1328, %1264
  %1333 = fmul fast float %1329, %1264
  %1334 = fadd fast float %1330, %1291
  %1335 = fadd fast float %1331, %1292
  %1336 = fadd fast float %1332, %1293
  %1337 = fadd fast float %1333, %1294
  br label %1366

; <label>:1338                                    ; preds = %1258
  %1339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1266, float %1267, float %1263, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1340 = extractvalue %dx.types.ResRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.ResRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.ResRet.f32 %1339, 2
  %1343 = extractvalue %dx.types.ResRet.f32 %1339, 3
  %1344 = fcmp fast ogt float %1264, 0.000000e+00
  br i1 %1344, label %1345, label %1366, !dx.controlflow.hints !77

; <label>:1345                                    ; preds = %1338
  %1346 = fadd fast float %1263, 1.000000e+00
  %1347 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1348 = call float @dx.op.unary.f32(i32 22, float %1235)  ; Frc(value)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1347, float %1348, float %1346, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = extractvalue %dx.types.ResRet.f32 %1349, 3
  %1354 = fsub fast float %1350, %1340
  %1355 = fsub fast float %1351, %1341
  %1356 = fsub fast float %1352, %1342
  %1357 = fsub fast float %1353, %1343
  %1358 = fmul fast float %1354, %1264
  %1359 = fmul fast float %1355, %1264
  %1360 = fmul fast float %1356, %1264
  %1361 = fmul fast float %1357, %1264
  %1362 = fadd fast float %1358, %1340
  %1363 = fadd fast float %1359, %1341
  %1364 = fadd fast float %1360, %1342
  %1365 = fadd fast float %1361, %1343
  br label %1366

; <label>:1366                                    ; preds = %1345, %1338, %1321, %1290
  %1367 = phi float [ %1334, %1321 ], [ %1291, %1290 ], [ %1362, %1345 ], [ %1340, %1338 ]
  %1368 = phi float [ %1335, %1321 ], [ %1292, %1290 ], [ %1363, %1345 ], [ %1341, %1338 ]
  %1369 = phi float [ %1336, %1321 ], [ %1293, %1290 ], [ %1364, %1345 ], [ %1342, %1338 ]
  %1370 = phi float [ %1337, %1321 ], [ %1294, %1290 ], [ %1365, %1345 ], [ %1343, %1338 ]
  %1371 = fadd fast float %1367, -5.000000e-01
  %1372 = fadd fast float %1369, -5.000000e-01
  %1373 = fmul fast float %1371, 0xBFD5555560000000
  %1374 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1372, float %1373)  ; FMad(a,b,c)
  %1375 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1368, float 0.000000e+00)  ; FMad(a,b,c)
  %1376 = fadd fast float %1375, %1370
  %1377 = fmul fast float %1371, -7.500000e-01
  %1378 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1372, float %1377)  ; FMad(a,b,c)
  %1379 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1368, float 0.000000e+00)  ; FMad(a,b,c)
  %1380 = fadd fast float %1379, %1370
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1388 = fsub fast float %1384, %1374
  %1389 = fsub fast float %1385, %1376
  %1390 = fsub fast float %1386, %1378
  %1391 = fsub fast float %1387, %1380
  %1392 = fmul fast float %1388, %1382
  %1393 = fmul fast float %1389, %1382
  %1394 = fmul fast float %1390, %1382
  %1395 = fmul fast float %1391, %1382
  %1396 = fadd fast float %1392, %1374
  %1397 = fadd fast float %1393, %1376
  %1398 = fadd fast float %1394, %1378
  %1399 = fadd fast float %1395, %1380
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = and i32 %1401, 536870911
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, %1239
  %1405 = fmul fast float %1403, %1240
  %1406 = fptoui float %1404 to i32
  %1407 = fptoui float %1405 to i32
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 31
  %1411 = lshr i32 %1406, %1410
  %1412 = lshr i32 %1407, %1410
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 31
  %1416 = shl i32 1, %1415
  %1417 = call i32 @dx.op.binary.i32(i32 40, i32 %1416, i32 4)  ; UMin(a,b)
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.i32 %1418, 1
  %1421 = icmp eq i32 %1417, 0
  br i1 %1421, label %1463, label %1422

; <label>:1422                                    ; preds = %1366
  br label %1423

; <label>:1423                                    ; preds = %1451, %1422
  %1424 = phi i32 [ %1454, %1451 ], [ 0, %1422 ]
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = lshr i32 %1426, 16
  %1428 = and i32 %1427, 31
  %1429 = shl i32 %1412, %1428
  %1430 = add i32 %1429, %1411
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = and i32 %1432, 31
  %1434 = shl i32 %1430, %1433
  %1435 = add i32 %1434, %1424
  %1436 = shl i32 %1435, 2
  %1437 = add i32 %1436, 32
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = icmp slt i32 %1439, 0
  %1441 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1424
  %1442 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1424
  %1443 = bitcast float* %1441 to i32*
  %1444 = bitcast float* %1442 to i32*
  br i1 %1440, label %1445, label %1451, !dx.controlflow.hints !78

; <label>:1445                                    ; preds = %1423
  %1446 = and i32 %1439, 1073741823
  %1447 = add nuw nsw i32 %1446, 20
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.i32 %1448, 1
  br label %1451

; <label>:1451                                    ; preds = %1445, %1423
  %1452 = phi i32 [ %1449, %1445 ], [ %1419, %1423 ]
  %1453 = phi i32 [ %1450, %1445 ], [ %1420, %1423 ]
  store i32 %1452, i32* %1443, align 4
  store i32 %1453, i32* %1444, align 4
  %1454 = add nuw i32 %1424, 1
  %1455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.i32 %1455, 2
  %1457 = icmp eq i32 %1456, 0
  %1458 = icmp ugt i32 %1439, -1073741825
  %1459 = and i1 %1458, %1457
  %1460 = icmp ult i32 %1454, %1417
  %1461 = and i1 %1459, %1460
  br i1 %1461, label %1423, label %1462, !dx.controlflow.hints !79

; <label>:1462                                    ; preds = %1451
  br label %1463

; <label>:1463                                    ; preds = %1462, %1366
  %1464 = phi i32 [ 0, %1366 ], [ %1454, %1462 ]
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1467 = fptoui float %1466 to i32
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1520, label %1469

; <label>:1469                                    ; preds = %1463
  br label %1470

; <label>:1470                                    ; preds = %1515, %1469
  %1471 = phi i32 [ %1516, %1515 ], [ %1464, %1469 ]
  %1472 = phi i32 [ %1517, %1515 ], [ 0, %1469 ]
  %1473 = lshr i32 %1472, 2
  %1474 = and i32 %1472, 3
  %1475 = add nuw nsw i32 %1473, 83
  %1476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %1475)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.i32 %1476, 0
  %1478 = extractvalue %dx.types.CBufRet.i32 %1476, 1
  %1479 = extractvalue %dx.types.CBufRet.i32 %1476, 2
  %1480 = extractvalue %dx.types.CBufRet.i32 %1476, 3
  %1481 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %1477, i32* %1481, align 4
  %1482 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %1478, i32* %1482, align 4
  %1483 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %1479, i32* %1483, align 4
  %1484 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %1480, i32* %1484, align 4
  %1485 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %1474
  %1486 = load i32, i32* %1485, align 4, !tbaa !80
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = lshr i32 %1488, 16
  %1490 = and i32 %1489, 31
  %1491 = shl i32 %1412, %1490
  %1492 = add i32 %1491, %1411
  %1493 = shl i32 %1492, 2
  %1494 = add i32 %1493, %1486
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1515, label %1498, !dx.controlflow.hints !82

; <label>:1498                                    ; preds = %1470
  %1499 = icmp slt i32 %1496, 0
  %1500 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1471
  %1501 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1471
  %1502 = bitcast float* %1500 to i32*
  %1503 = bitcast float* %1501 to i32*
  br i1 %1499, label %1504, label %1511, !dx.controlflow.hints !83

; <label>:1504                                    ; preds = %1498
  %1505 = and i32 %1496, 1073741823
  %1506 = add i32 %1486, 20
  %1507 = add i32 %1506, %1505
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = extractvalue %dx.types.ResRet.i32 %1508, 1
  br label %1511

; <label>:1511                                    ; preds = %1504, %1498
  %1512 = phi i32 [ %1509, %1504 ], [ %1419, %1498 ]
  %1513 = phi i32 [ %1510, %1504 ], [ %1420, %1498 ]
  store i32 %1512, i32* %1502, align 4
  store i32 %1513, i32* %1503, align 4
  %1514 = add i32 %1471, 1
  br label %1515

; <label>:1515                                    ; preds = %1511, %1470
  %1516 = phi i32 [ %1471, %1470 ], [ %1514, %1511 ]
  %1517 = add nuw i32 %1472, 1
  %1518 = icmp eq i32 %1517, %1467
  br i1 %1518, label %1519, label %1470

; <label>:1519                                    ; preds = %1515
  br label %1520

; <label>:1520                                    ; preds = %1519, %1463
  %1521 = phi i32 [ %1464, %1463 ], [ %1516, %1519 ]
  %1522 = icmp eq i32 %1521, 1
  %1523 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  %1524 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  br i1 %1522, label %1525, label %1528, !dx.controlflow.hints !84

; <label>:1525                                    ; preds = %1520
  %1526 = load float, float* %1523, align 4
  %1527 = load float, float* %1524, align 4
  br label %1555

; <label>:1528                                    ; preds = %1520
  %1529 = load float, float* %1523, align 4
  %1530 = load float, float* %1524, align 4
  %1531 = fdiv fast float 1.000000e+00, %1530
  %1532 = fsub fast float %1529, %1531
  %1533 = icmp ugt i32 %1521, 1
  br i1 %1533, label %1534, label %1550

; <label>:1534                                    ; preds = %1528
  br label %1535

; <label>:1535                                    ; preds = %1535, %1534
  %1536 = phi float [ %1545, %1535 ], [ %1532, %1534 ]
  %1537 = phi float [ %1546, %1535 ], [ %1529, %1534 ]
  %1538 = phi i32 [ %1547, %1535 ], [ 1, %1534 ]
  %1539 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1538
  %1540 = load float, float* %1539, align 4
  %1541 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1538
  %1542 = load float, float* %1541, align 4
  %1543 = fdiv fast float 1.000000e+00, %1542
  %1544 = fsub fast float %1540, %1543
  %1545 = call float @dx.op.binary.f32(i32 36, float %1536, float %1544)  ; FMin(a,b)
  %1546 = call float @dx.op.binary.f32(i32 35, float %1537, float %1540)  ; FMax(a,b)
  %1547 = add nuw i32 %1538, 1
  %1548 = icmp eq i32 %1547, %1521
  br i1 %1548, label %1549, label %1535

; <label>:1549                                    ; preds = %1535
  br label %1550

; <label>:1550                                    ; preds = %1549, %1528
  %1551 = phi float [ %1532, %1528 ], [ %1545, %1549 ]
  %1552 = phi float [ %1529, %1528 ], [ %1546, %1549 ]
  %1553 = fsub fast float %1552, %1551
  %1554 = fdiv fast float 1.000000e+00, %1553
  br label %1555

; <label>:1555                                    ; preds = %1550, %1525
  %1556 = phi float [ %1526, %1525 ], [ %1552, %1550 ]
  %1557 = phi float [ %1527, %1525 ], [ %1554, %1550 ]
  %1558 = fadd fast float %986, %1556
  %1559 = fmul fast float %1558, %1557
  %1560 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1561 = fmul fast float %1560, 2.000000e+00
  %1562 = fsub fast float 1.000000e+00, %1561
  %1563 = fmul fast float %1396, %1396
  %1564 = fsub fast float %1397, %1563
  %1565 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1564)  ; FMax(a,b)
  %1566 = fdiv fast float 1.000000e+00, %1565
  %1567 = fmul fast float %1397, %1396
  %1568 = fsub fast float %1398, %1567
  %1569 = fsub fast float %1562, %1396
  %1570 = fmul fast float %1562, %1562
  %1571 = fsub fast float %1570, %1397
  %1572 = fmul fast float %1566, %1568
  %1573 = fmul fast float %1572, %1569
  %1574 = fsub fast float %1571, %1573
  %1575 = fmul fast float %1397, %1397
  %1576 = fsub fast float %1399, %1575
  %1577 = fmul fast float %1568, %1568
  %1578 = fmul fast float %1577, %1566
  %1579 = fsub fast float %1576, %1578
  %1580 = fdiv fast float %1574, %1579
  %1581 = fmul fast float %1580, %1568
  %1582 = fsub fast float %1569, %1581
  %1583 = fmul fast float %1582, %1566
  %1584 = fmul fast float %1583, %1396
  %1585 = fsub fast float 1.000000e+00, %1584
  %1586 = fmul fast float %1580, %1397
  %1587 = fsub fast float %1585, %1586
  %1588 = fmul fast float %1583, %1583
  %1589 = fmul fast float %1580, 4.000000e+00
  %1590 = fmul fast float %1589, %1587
  %1591 = fsub fast float %1588, %1590
  %1592 = call float @dx.op.unary.f32(i32 24, float %1591)  ; Sqrt(value)
  %1593 = fcmp fast oge float %1583, 0.000000e+00
  %1594 = fsub fast float -0.000000e+00, %1592
  %1595 = select i1 %1593, float %1594, float %1592
  %1596 = fsub fast float %1595, %1583
  %1597 = fdiv fast float %1596, %1580
  %1598 = fdiv fast float %1587, %1596
  %1599 = fmul fast float %1597, 5.000000e-01
  %1600 = fmul fast float %1598, 2.000000e+00
  %1601 = select i1 %1593, float %1599, float %1600
  %1602 = select i1 %1593, float %1600, float %1599
  %1603 = call float @dx.op.binary.f32(i32 35, float %1601, float %1602)  ; FMax(a,b)
  %1604 = call float @dx.op.binary.f32(i32 36, float %1601, float %1602)  ; FMin(a,b)
  %1605 = fcmp fast ogt float %1562, %1603
  %1606 = fsub fast float %1562, %1604
  %1607 = fsub fast float %1562, %1603
  %1608 = fsub fast float %1603, %1604
  %1609 = select i1 %1605, float %1607, float %1608
  %1610 = fmul float %1606, %1609
  %1611 = select i1 %1605, float %1604, float %1562
  %1612 = fcmp fast ogt float %1562, %1604
  %1613 = fmul fast float %1611, %1603
  %1614 = fadd fast float %1611, %1603
  %1615 = fmul fast float %1614, %1396
  %1616 = fadd fast float %1613, %1397
  %1617 = fsub fast float %1616, %1615
  %1618 = fdiv fast float %1617, %1610
  %1619 = select i1 %1612, float %1618, float 0.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = select i1 %1605, float %1620, float %1619
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1381, 3
  %1624 = fmul fast float %1623, %1622
  %1625 = fsub fast float 1.000000e+00, %1624
  br label %4570

; <label>:1626                                    ; preds = %954
  %1627 = icmp eq i32 %246, 11
  br i1 %1627, label %4570, label %1628, !dx.controlflow.hints !85

; <label>:1628                                    ; preds = %1626
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1631 = extractvalue %dx.types.CBufRet.f32 %1629, 1
  %1632 = extractvalue %dx.types.CBufRet.f32 %1629, 3
  %1633 = fmul fast float %1632, %213
  %1634 = fmul fast float %1632, %217
  %1635 = fadd fast float %1633, %1630
  %1636 = fadd fast float %1634, %1631
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1641 = fmul fast float %1640, %213
  %1642 = fmul fast float %1640, %217
  %1643 = fadd fast float %1641, %1638
  %1644 = fadd fast float %1642, %1639
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1647 = fsub fast float %1646, %221
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = fmul fast float %1647, %1648
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  br i1 %87, label %1712, label %1652, !dx.controlflow.hints !86

; <label>:1652                                    ; preds = %1628
  %1653 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1656 = fadd fast float %1655, %1653
  %1657 = fcmp fast ogt float %1656, 0.000000e+00
  br i1 %1657, label %1658, label %1682, !dx.controlflow.hints !87

; <label>:1658                                    ; preds = %1652
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = fsub fast float %1643, %1660
  %1663 = fsub fast float %1644, %1661
  %1664 = fcmp fast olt float %1662, 0.000000e+00
  %1665 = fcmp fast olt float %1663, 0.000000e+00
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.CBufRet.f32 %1666, 2
  %1670 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1671 = select i1 %1664, float %1667, float %1669
  %1672 = select i1 %1665, float %1668, float %1670
  %1673 = fmul fast float %1671, %1662
  %1674 = fmul fast float %1672, %1663
  %1675 = call float @dx.op.unary.f32(i32 6, float %1673)  ; FAbs(value)
  %1676 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1677 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %1678 = call float @dx.op.binary.f32(i32 35, float %1675, float %1676)  ; FMax(a,b)
  %1679 = fsub fast float %1677, %1678
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fmul fast float %1680, %1651
  br label %1682

; <label>:1682                                    ; preds = %1658, %1652
  %1683 = phi float [ %1681, %1658 ], [ 0.000000e+00, %1652 ]
  %1684 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1685 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1686 = fadd fast float %1685, %1684
  %1687 = fcmp fast ogt float %1686, 0.000000e+00
  br i1 %1687, label %1688, label %1712, !dx.controlflow.hints !88

; <label>:1688                                    ; preds = %1682
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = fsub fast float %1635, %1690
  %1693 = fsub fast float %1636, %1691
  %1694 = fcmp fast olt float %1692, 0.000000e+00
  %1695 = fcmp fast olt float %1693, 0.000000e+00
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1701 = select i1 %1694, float %1697, float %1699
  %1702 = select i1 %1695, float %1698, float %1700
  %1703 = fmul fast float %1701, %1692
  %1704 = fmul fast float %1702, %1693
  %1705 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1706 = call float @dx.op.unary.f32(i32 6, float %1704)  ; FAbs(value)
  %1707 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %1708 = call float @dx.op.binary.f32(i32 35, float %1705, float %1706)  ; FMax(a,b)
  %1709 = fsub fast float %1707, %1708
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1710, %1651
  br label %1712

; <label>:1712                                    ; preds = %1688, %1682, %1628
  %1713 = phi float [ 0.000000e+00, %1628 ], [ %1711, %1688 ], [ 0.000000e+00, %1682 ]
  %1714 = phi float [ 0.000000e+00, %1628 ], [ %1683, %1688 ], [ %1683, %1682 ]
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = fmul fast float %1716, %94
  %1719 = fadd fast float %1718, %1717
  %1720 = call float @dx.op.unary.f32(i32 7, float %1719)  ; Saturate(value)
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1724 = fsub fast float %213, %1722
  %1725 = fsub fast float %217, %1723
  %1726 = fcmp fast olt float %1724, 0.000000e+00
  %1727 = fcmp fast olt float %1725, 0.000000e+00
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1733 = select i1 %1726, float %1729, float %1731
  %1734 = select i1 %1727, float %1730, float %1732
  %1735 = fmul fast float %1733, %1724
  %1736 = fmul fast float %1734, %1725
  %1737 = call float @dx.op.unary.f32(i32 6, float %1735)  ; FAbs(value)
  %1738 = call float @dx.op.unary.f32(i32 6, float %1736)  ; FAbs(value)
  %1739 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %1740 = call float @dx.op.binary.f32(i32 35, float %1737, float %1738)  ; FMax(a,b)
  %1741 = fsub fast float %1739, %1740
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1743 = call float @dx.op.binary.f32(i32 36, float %1742, float %1720)  ; FMin(a,b)
  %1744 = fmul fast float %1743, %1651
  %1745 = fsub fast float %1713, %1744
  %1746 = fsub fast float %1714, %1713
  %1747 = fsub fast float %1746, %1744
  %1748 = call float @dx.op.binary.f32(i32 35, float %1713, float %1714)  ; FMax(a,b)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1744, float %1748)  ; FMax(a,b)
  %1750 = fcmp fast olt float %1749, 1.000000e+00
  %1751 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %1752 = fcmp fast une float %1751, 0.000000e+00
  %1753 = and i1 %1750, %1752
  br i1 %1753, label %1754, label %2421, !dx.controlflow.hints !89

; <label>:1754                                    ; preds = %1712
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.CBufRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.CBufRet.f32 %1755, 2
  %1759 = extractvalue %dx.types.CBufRet.f32 %1755, 3
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1764 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.CBufRet.f32 %1765, 1
  %1768 = extractvalue %dx.types.CBufRet.f32 %1765, 2
  %1769 = extractvalue %dx.types.CBufRet.f32 %1765, 3
  %1770 = fmul fast float %1756, %148
  %1771 = call float @dx.op.tertiary.f32(i32 46, float %149, float %1757, float %1770)  ; FMad(a,b,c)
  %1772 = call float @dx.op.tertiary.f32(i32 46, float %150, float %1758, float %1771)  ; FMad(a,b,c)
  %1773 = fadd fast float %1772, %1759
  %1774 = fmul fast float %1761, %148
  %1775 = call float @dx.op.tertiary.f32(i32 46, float %149, float %1762, float %1774)  ; FMad(a,b,c)
  %1776 = call float @dx.op.tertiary.f32(i32 46, float %150, float %1763, float %1775)  ; FMad(a,b,c)
  %1777 = fadd fast float %1776, %1764
  %1778 = fmul fast float %1766, %148
  %1779 = call float @dx.op.tertiary.f32(i32 46, float %149, float %1767, float %1778)  ; FMad(a,b,c)
  %1780 = call float @dx.op.tertiary.f32(i32 46, float %150, float %1768, float %1779)  ; FMad(a,b,c)
  %1781 = fadd fast float %1780, %1769
  %1782 = fcmp fast oge float %1773, 1.000000e+00
  %1783 = fcmp fast oge float %1777, 1.000000e+00
  %1784 = or i1 %1782, %1783
  %1785 = fcmp fast olt float %1773, 0.000000e+00
  %1786 = fcmp fast olt float %1777, 0.000000e+00
  %1787 = or i1 %1785, %1786
  %1788 = or i1 %1784, %1787
  br i1 %1788, label %2421, label %1789, !dx.controlflow.hints !67

; <label>:1789                                    ; preds = %1754
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 1
  %1796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.i32 %1796, 2
  %1798 = uitofp i32 %1797 to float
  %1799 = extractvalue %dx.types.CBufRet.i32 %1796, 3
  %1800 = uitofp i32 %1799 to float
  %1801 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1802 = fmul fast float %1801, 2.000000e+00
  %1803 = fsub fast float %1773, %1791
  %1804 = fsub fast float %1777, %1792
  %1805 = fmul fast float %1802, %1803
  %1806 = fmul fast float %1802, %1804
  %1807 = fdiv fast float 1.000000e+00, %183
  %1808 = fmul fast float %1806, %1807
  %1809 = call float @dx.op.unary.f32(i32 6, float %1808)  ; FAbs(value)
  %1810 = fmul fast float %1793, %150
  %1811 = fmul fast float %1810, %1802
  %1812 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1813 = call float @dx.op.unary.f32(i32 6, float %1805)  ; FAbs(value)
  %1814 = call float @dx.op.binary.f32(i32 35, float %1812, float %1809)  ; FMax(a,b)
  %1815 = call float @dx.op.binary.f32(i32 35, float %1813, float %1814)  ; FMax(a,b)
  %1816 = fmul fast float %1815, 2.000000e+00
  %1817 = call float @dx.op.unary.f32(i32 23, float %1816)  ; Log(value)
  %1818 = call float @dx.op.binary.f32(i32 35, float %1817, float %1798)  ; FMax(a,b)
  %1819 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1820 = fadd fast float %1819, 0xBFEA666660000000
  %1821 = fmul fast float %1820, 8.000000e+00
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = call float @dx.op.unary.f32(i32 27, float %1818)  ; Round_ni(value)
  %1824 = fadd fast float %1823, %1822
  %1825 = call float @dx.op.binary.f32(i32 36, float %1824, float %1800)  ; FMin(a,b)
  %1826 = call float @dx.op.unary.f32(i32 27, float %1825)  ; Round_ni(value)
  %1827 = fsub fast float -0.000000e+00, %1826
  %1828 = call float @dx.op.unary.f32(i32 21, float %1827)  ; Exp(value)
  %1829 = fmul fast float %1828, %1802
  %1830 = fmul fast float %1829, %1773
  %1831 = fmul fast float %1829, %1777
  %1832 = fmul fast float %1830, 5.000000e-01
  %1833 = fmul fast float %1831, 5.000000e-01
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = fadd fast float %1833, 5.000000e-01
  %1836 = fmul fast float %1830, 2.500000e-01
  %1837 = fmul fast float %1831, 2.500000e-01
  %1838 = fadd fast float %1836, 5.000000e-01
  %1839 = fadd fast float %1837, 5.000000e-01
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 536870911
  %1843 = lshr i32 %1842, 9
  %1844 = uitofp i32 %1843 to float
  %1845 = fmul fast float %1844, %1773
  %1846 = fmul fast float %1844, %1777
  %1847 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1848 = call float @dx.op.unary.f32(i32 22, float %1846)  ; Frc(value)
  %1849 = call float @dx.op.unary.f32(i32 22, float %1822)  ; Frc(value)
  %1850 = fcmp fast une float %1849, 0.000000e+00
  br i1 %1850, label %1851, label %1949, !dx.controlflow.hints !68

; <label>:1851                                    ; preds = %1789
  %1852 = call float @dx.op.unary.f32(i32 21, float %1823)  ; Exp(value)
  %1853 = fmul fast float %1852, 1.953125e-03
  %1854 = fcmp fast olt float %1847, %1853
  %1855 = fcmp fast olt float %1848, %1853
  %1856 = or i1 %1854, %1855
  %1857 = fsub fast float 1.000000e+00, %1853
  %1858 = fcmp fast ogt float %1847, %1857
  %1859 = fcmp fast ogt float %1848, %1857
  %1860 = or i1 %1858, %1859
  %1861 = or i1 %1856, %1860
  br i1 %1861, label %1862, label %2028, !dx.controlflow.hints !69

; <label>:1862                                    ; preds = %1851
  %1863 = fmul fast float %1795, 5.000000e-01
  %1864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.i32 %1864, 0
  %1866 = fmul fast float %1777, 3.530000e+02
  %1867 = uitofp i32 %1842 to float
  %1868 = fmul fast float %1866, %1867
  %1869 = fmul fast float %1773, 6.130000e+02
  %1870 = fadd fast float %1868, %1869
  %1871 = fptoui float %1870 to i32
  %1872 = add i32 %1865, %1871
  %1873 = mul i32 %1872, -63
  %1874 = lshr i32 %1873, 17
  %1875 = xor i32 %1874, %1873
  %1876 = mul i32 %1875, -511
  %1877 = mul i32 %1875, -8176
  %1878 = xor i32 %1876, %1877
  %1879 = mul i32 %1878, -7
  %1880 = mul i32 %1878, -7168
  %1881 = xor i32 %1879, %1880
  %1882 = lshr i32 %1881, 15
  %1883 = xor i32 %1882, %1879
  %1884 = and i32 %1883, 15
  %1885 = mul i32 %1884, 2
  %1886 = add i32 0, %1885
  %1887 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1886
  %1888 = load float, float* %1887, align 4
  %1889 = mul i32 %1884, 2
  %1890 = add i32 1, %1889
  %1891 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1890
  %1892 = load float, float* %1891, align 4
  %1893 = fmul fast float %1777, 2.770000e+02
  %1894 = fmul fast float %1893, %1867
  %1895 = fmul fast float %1773, 5.990000e+02
  %1896 = fadd fast float %1894, %1895
  %1897 = fptoui float %1896 to i32
  %1898 = mul i32 %1897, -63
  %1899 = lshr i32 %1898, 17
  %1900 = xor i32 %1899, %1898
  %1901 = mul i32 %1900, -511
  %1902 = mul i32 %1900, -8176
  %1903 = xor i32 %1901, %1902
  %1904 = mul i32 %1903, -7
  %1905 = mul i32 %1903, -7168
  %1906 = xor i32 %1904, %1905
  %1907 = lshr i32 %1906, 15
  %1908 = xor i32 %1907, %1904
  %1909 = and i32 %1908, 63
  %1910 = mul i32 %1909, 2
  %1911 = add i32 0, %1910
  %1912 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1911
  %1913 = load float, float* %1912, align 4
  %1914 = mul i32 %1909, 2
  %1915 = add i32 1, %1914
  %1916 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1915
  %1917 = load float, float* %1916, align 4
  %1918 = call float @dx.op.dot2.f32(i32 54, float %1888, float %1892, float %1913, float %1917)  ; Dot2(ax,ay,bx,by)
  %1919 = fsub fast float -0.000000e+00, %1913
  %1920 = call float @dx.op.dot2.f32(i32 54, float %1888, float %1892, float %1919, float %1917)  ; Dot2(ax,ay,bx,by)
  %1921 = fmul fast float %1918, %1863
  %1922 = fmul fast float %1920, %1863
  %1923 = fdiv fast float 2.000000e+00, %1829
  %1924 = fmul fast float %1852, 9.765625e-04
  %1925 = fcmp fast olt float %1847, %1924
  %1926 = fcmp fast olt float %1848, %1924
  %1927 = or i1 %1925, %1926
  %1928 = fsub fast float 1.000000e+00, %1924
  %1929 = fcmp fast ogt float %1847, %1928
  %1930 = fcmp fast ogt float %1848, %1928
  %1931 = or i1 %1929, %1930
  %1932 = or i1 %1927, %1931
  %1933 = fmul fast float %1921, 2.000000e+00
  br i1 %1932, label %1934, label %1938, !dx.controlflow.hints !70

; <label>:1934                                    ; preds = %1862
  %1935 = fmul fast float %1922, 2.000000e+00
  %1936 = fadd fast float %1933, %1834
  %1937 = fadd fast float %1935, %1835
  br label %1938

; <label>:1938                                    ; preds = %1934, %1862
  %1939 = phi float [ %1936, %1934 ], [ %1834, %1862 ]
  %1940 = phi float [ %1937, %1934 ], [ %1835, %1862 ]
  %1941 = phi i32 [ 3, %1934 ], [ 2, %1862 ]
  %1942 = fadd fast float %1921, %1838
  %1943 = fadd fast float %1922, %1839
  %1944 = fmul fast float %1933, %1923
  %1945 = fmul fast float %1923, 2.000000e+00
  %1946 = fmul fast float %1945, %1922
  %1947 = fadd fast float %1944, %1773
  %1948 = fadd fast float %1946, %1777
  br label %2028

; <label>:1949                                    ; preds = %1789
  %1950 = call float @dx.op.unary.f32(i32 21, float %1826)  ; Exp(value)
  %1951 = fmul fast float %1950, 9.765625e-04
  %1952 = fcmp fast olt float %1847, %1951
  %1953 = fcmp fast olt float %1848, %1951
  %1954 = or i1 %1952, %1953
  %1955 = fsub fast float 1.000000e+00, %1951
  %1956 = fcmp fast ogt float %1847, %1955
  %1957 = fcmp fast ogt float %1848, %1955
  %1958 = or i1 %1956, %1957
  %1959 = or i1 %1954, %1958
  br i1 %1959, label %1960, label %2028, !dx.controlflow.hints !71

; <label>:1960                                    ; preds = %1949
  %1961 = fmul fast float %1795, 5.000000e-01
  %1962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.i32 %1962, 0
  %1964 = fmul fast float %1777, 3.530000e+02
  %1965 = uitofp i32 %1842 to float
  %1966 = fmul fast float %1964, %1965
  %1967 = fmul fast float %1773, 6.130000e+02
  %1968 = fadd fast float %1966, %1967
  %1969 = fptoui float %1968 to i32
  %1970 = add i32 %1963, %1969
  %1971 = mul i32 %1970, -63
  %1972 = lshr i32 %1971, 17
  %1973 = xor i32 %1972, %1971
  %1974 = mul i32 %1973, -511
  %1975 = mul i32 %1973, -8176
  %1976 = xor i32 %1974, %1975
  %1977 = mul i32 %1976, -7
  %1978 = mul i32 %1976, -7168
  %1979 = xor i32 %1977, %1978
  %1980 = lshr i32 %1979, 15
  %1981 = xor i32 %1980, %1977
  %1982 = and i32 %1981, 15
  %1983 = mul i32 %1982, 2
  %1984 = add i32 0, %1983
  %1985 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1984
  %1986 = load float, float* %1985, align 4
  %1987 = mul i32 %1982, 2
  %1988 = add i32 1, %1987
  %1989 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1988
  %1990 = load float, float* %1989, align 4
  %1991 = fmul fast float %1777, 2.770000e+02
  %1992 = fmul fast float %1991, %1965
  %1993 = fmul fast float %1773, 5.990000e+02
  %1994 = fadd fast float %1992, %1993
  %1995 = fptoui float %1994 to i32
  %1996 = mul i32 %1995, -63
  %1997 = lshr i32 %1996, 17
  %1998 = xor i32 %1997, %1996
  %1999 = mul i32 %1998, -511
  %2000 = mul i32 %1998, -8176
  %2001 = xor i32 %1999, %2000
  %2002 = mul i32 %2001, -7
  %2003 = mul i32 %2001, -7168
  %2004 = xor i32 %2002, %2003
  %2005 = lshr i32 %2004, 15
  %2006 = xor i32 %2005, %2002
  %2007 = and i32 %2006, 63
  %2008 = mul i32 %2007, 2
  %2009 = add i32 0, %2008
  %2010 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2009
  %2011 = load float, float* %2010, align 4
  %2012 = mul i32 %2007, 2
  %2013 = add i32 1, %2012
  %2014 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2013
  %2015 = load float, float* %2014, align 4
  %2016 = call float @dx.op.dot2.f32(i32 54, float %1986, float %1990, float %2011, float %2015)  ; Dot2(ax,ay,bx,by)
  %2017 = fsub fast float -0.000000e+00, %2011
  %2018 = call float @dx.op.dot2.f32(i32 54, float %1986, float %1990, float %2017, float %2015)  ; Dot2(ax,ay,bx,by)
  %2019 = fmul fast float %2016, %1961
  %2020 = fmul fast float %2018, %1961
  %2021 = fadd fast float %2019, %1834
  %2022 = fadd fast float %2020, %1835
  %2023 = fdiv fast float 2.000000e+00, %1829
  %2024 = fmul fast float %2023, %2019
  %2025 = fmul fast float %2020, %2023
  %2026 = fadd fast float %2024, %1773
  %2027 = fadd fast float %2025, %1777
  br label %2028

; <label>:2028                                    ; preds = %1960, %1949, %1938, %1851
  %2029 = phi float [ %1942, %1938 ], [ %1838, %1851 ], [ %1838, %1960 ], [ %1838, %1949 ]
  %2030 = phi float [ %1943, %1938 ], [ %1839, %1851 ], [ %1839, %1960 ], [ %1839, %1949 ]
  %2031 = phi float [ %1939, %1938 ], [ %1834, %1851 ], [ %2021, %1960 ], [ %1834, %1949 ]
  %2032 = phi float [ %1940, %1938 ], [ %1835, %1851 ], [ %2022, %1960 ], [ %1835, %1949 ]
  %2033 = phi i32 [ %1941, %1938 ], [ 0, %1851 ], [ 1, %1960 ], [ 0, %1949 ]
  %2034 = phi float [ %1947, %1938 ], [ %1773, %1851 ], [ %2026, %1960 ], [ %1773, %1949 ]
  %2035 = phi float [ %1948, %1938 ], [ %1777, %1851 ], [ %2027, %1960 ], [ %1777, %1949 ]
  %2036 = fsub fast float %1800, %1798
  %2037 = fptoui float %2036 to i32
  %2038 = add i32 %2037, 320
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %2038)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = fcmp fast une float %1825, %1800
  %2043 = fsub fast float %2034, %2040
  %2044 = fsub fast float %2035, %2041
  %2045 = call float @dx.op.unary.f32(i32 6, float %2043)  ; FAbs(value)
  %2046 = call float @dx.op.unary.f32(i32 6, float %2044)  ; FAbs(value)
  %2047 = fmul fast float %2045, %1829
  %2048 = fmul fast float %2046, %1829
  %2049 = fcmp fast olt float %2047, 1.000000e+00
  %2050 = fcmp fast olt float %2048, 1.000000e+00
  %2051 = and i1 %2049, %2050
  %2052 = or i1 %2042, %2051
  br i1 %2052, label %2053, label %2421, !dx.controlflow.hints !72

; <label>:2053                                    ; preds = %2028
  %2054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.i32 %2054, 2
  %2056 = sitofp i32 %2055 to float
  %2057 = fsub fast float %1825, %2056
  %2058 = call float @dx.op.unary.f32(i32 27, float %2057)  ; Round_ni(value)
  %2059 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %2060 = icmp eq i32 %2033, 0
  %2061 = call float @dx.op.unary.f32(i32 22, float %2031)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2032)  ; Frc(value)
  br i1 %2060, label %2133, label %2063, !dx.controlflow.hints !73

; <label>:2063                                    ; preds = %2053
  %2064 = and i32 %2033, 1
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2079, label %2066, !dx.controlflow.hints !74

; <label>:2066                                    ; preds = %2063
  %2067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2068 = extractvalue %dx.types.CBufRet.f32 %2067, 0
  %2069 = fmul fast float %2061, %2068
  %2070 = fmul fast float %2062, %2068
  %2071 = fptoui float %2069 to i32
  %2072 = fptoui float %2070 to i32
  %2073 = fptoui float %2058 to i32
  %2074 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2071, i32 %2072, i32 %2073, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = extractvalue %dx.types.ResRet.f32 %2074, 3
  br label %2085

; <label>:2079                                    ; preds = %2063
  %2080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2061, float %2062, float %2058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = extractvalue %dx.types.ResRet.f32 %2080, 3
  br label %2085

; <label>:2085                                    ; preds = %2079, %2066
  %2086 = phi float [ %2075, %2066 ], [ %2081, %2079 ]
  %2087 = phi float [ %2076, %2066 ], [ %2082, %2079 ]
  %2088 = phi float [ %2077, %2066 ], [ %2083, %2079 ]
  %2089 = phi float [ %2078, %2066 ], [ %2084, %2079 ]
  %2090 = fcmp fast ogt float %2059, 0.000000e+00
  br i1 %2090, label %2091, label %2161, !dx.controlflow.hints !75

; <label>:2091                                    ; preds = %2085
  %2092 = and i32 %2033, 2
  %2093 = icmp eq i32 %2092, 0
  %2094 = fadd fast float %2058, 1.000000e+00
  %2095 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2096 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  br i1 %2093, label %2110, label %2097, !dx.controlflow.hints !76

; <label>:2097                                    ; preds = %2091
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = fmul fast float %2095, %2099
  %2101 = fmul fast float %2096, %2099
  %2102 = fptoui float %2100 to i32
  %2103 = fptoui float %2101 to i32
  %2104 = fptoui float %2094 to i32
  %2105 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2102, i32 %2103, i32 %2104, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.ResRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.ResRet.f32 %2105, 2
  %2109 = extractvalue %dx.types.ResRet.f32 %2105, 3
  br label %2116

; <label>:2110                                    ; preds = %2091
  %2111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2095, float %2096, float %2094, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2112 = extractvalue %dx.types.ResRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.ResRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.ResRet.f32 %2111, 2
  %2115 = extractvalue %dx.types.ResRet.f32 %2111, 3
  br label %2116

; <label>:2116                                    ; preds = %2110, %2097
  %2117 = phi float [ %2106, %2097 ], [ %2112, %2110 ]
  %2118 = phi float [ %2107, %2097 ], [ %2113, %2110 ]
  %2119 = phi float [ %2108, %2097 ], [ %2114, %2110 ]
  %2120 = phi float [ %2109, %2097 ], [ %2115, %2110 ]
  %2121 = fsub fast float %2117, %2086
  %2122 = fsub fast float %2118, %2087
  %2123 = fsub fast float %2119, %2088
  %2124 = fsub fast float %2120, %2089
  %2125 = fmul fast float %2121, %2059
  %2126 = fmul fast float %2122, %2059
  %2127 = fmul fast float %2123, %2059
  %2128 = fmul fast float %2124, %2059
  %2129 = fadd fast float %2125, %2086
  %2130 = fadd fast float %2126, %2087
  %2131 = fadd fast float %2127, %2088
  %2132 = fadd fast float %2128, %2089
  br label %2161

; <label>:2133                                    ; preds = %2053
  %2134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2061, float %2062, float %2058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = extractvalue %dx.types.ResRet.f32 %2134, 3
  %2139 = fcmp fast ogt float %2059, 0.000000e+00
  br i1 %2139, label %2140, label %2161, !dx.controlflow.hints !77

; <label>:2140                                    ; preds = %2133
  %2141 = fadd fast float %2058, 1.000000e+00
  %2142 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2143 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2142, float %2143, float %2141, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = fsub fast float %2145, %2135
  %2150 = fsub fast float %2146, %2136
  %2151 = fsub fast float %2147, %2137
  %2152 = fsub fast float %2148, %2138
  %2153 = fmul fast float %2149, %2059
  %2154 = fmul fast float %2150, %2059
  %2155 = fmul fast float %2151, %2059
  %2156 = fmul fast float %2152, %2059
  %2157 = fadd fast float %2153, %2135
  %2158 = fadd fast float %2154, %2136
  %2159 = fadd fast float %2155, %2137
  %2160 = fadd fast float %2156, %2138
  br label %2161

; <label>:2161                                    ; preds = %2140, %2133, %2116, %2085
  %2162 = phi float [ %2129, %2116 ], [ %2086, %2085 ], [ %2157, %2140 ], [ %2135, %2133 ]
  %2163 = phi float [ %2130, %2116 ], [ %2087, %2085 ], [ %2158, %2140 ], [ %2136, %2133 ]
  %2164 = phi float [ %2131, %2116 ], [ %2088, %2085 ], [ %2159, %2140 ], [ %2137, %2133 ]
  %2165 = phi float [ %2132, %2116 ], [ %2089, %2085 ], [ %2160, %2140 ], [ %2138, %2133 ]
  %2166 = fadd fast float %2162, -5.000000e-01
  %2167 = fadd fast float %2164, -5.000000e-01
  %2168 = fmul fast float %2166, 0xBFD5555560000000
  %2169 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2167, float %2168)  ; FMad(a,b,c)
  %2170 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2163, float 0.000000e+00)  ; FMad(a,b,c)
  %2171 = fadd fast float %2170, %2165
  %2172 = fmul fast float %2166, -7.500000e-01
  %2173 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2167, float %2172)  ; FMad(a,b,c)
  %2174 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2163, float 0.000000e+00)  ; FMad(a,b,c)
  %2175 = fadd fast float %2174, %2165
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.CBufRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.CBufRet.f32 %2178, 2
  %2182 = extractvalue %dx.types.CBufRet.f32 %2178, 3
  %2183 = fsub fast float %2179, %2169
  %2184 = fsub fast float %2180, %2171
  %2185 = fsub fast float %2181, %2173
  %2186 = fsub fast float %2182, %2175
  %2187 = fmul fast float %2183, %2177
  %2188 = fmul fast float %2184, %2177
  %2189 = fmul fast float %2185, %2177
  %2190 = fmul fast float %2186, %2177
  %2191 = fadd fast float %2187, %2169
  %2192 = fadd fast float %2188, %2171
  %2193 = fadd fast float %2189, %2173
  %2194 = fadd fast float %2190, %2175
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 536870911
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, %2034
  %2200 = fmul fast float %2198, %2035
  %2201 = fptoui float %2199 to i32
  %2202 = fptoui float %2200 to i32
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 31
  %2206 = lshr i32 %2201, %2205
  %2207 = lshr i32 %2202, %2205
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 31
  %2211 = shl i32 1, %2210
  %2212 = call i32 @dx.op.binary.i32(i32 40, i32 %2211, i32 4)  ; UMin(a,b)
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = extractvalue %dx.types.ResRet.i32 %2213, 1
  %2216 = icmp eq i32 %2212, 0
  br i1 %2216, label %2258, label %2217

; <label>:2217                                    ; preds = %2161
  br label %2218

; <label>:2218                                    ; preds = %2246, %2217
  %2219 = phi i32 [ %2249, %2246 ], [ 0, %2217 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = lshr i32 %2221, 16
  %2223 = and i32 %2222, 31
  %2224 = shl i32 %2207, %2223
  %2225 = add i32 %2224, %2206
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 31
  %2229 = shl i32 %2225, %2228
  %2230 = add i32 %2229, %2219
  %2231 = shl i32 %2230, 2
  %2232 = add i32 %2231, 32
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = icmp slt i32 %2234, 0
  %2236 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2219
  %2237 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2219
  %2238 = bitcast float* %2236 to i32*
  %2239 = bitcast float* %2237 to i32*
  br i1 %2235, label %2240, label %2246, !dx.controlflow.hints !78

; <label>:2240                                    ; preds = %2218
  %2241 = and i32 %2234, 1073741823
  %2242 = add nuw nsw i32 %2241, 20
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.i32 %2243, 1
  br label %2246

; <label>:2246                                    ; preds = %2240, %2218
  %2247 = phi i32 [ %2244, %2240 ], [ %2214, %2218 ]
  %2248 = phi i32 [ %2245, %2240 ], [ %2215, %2218 ]
  store i32 %2247, i32* %2238, align 4
  store i32 %2248, i32* %2239, align 4
  %2249 = add nuw i32 %2219, 1
  %2250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.i32 %2250, 2
  %2252 = icmp eq i32 %2251, 0
  %2253 = icmp ugt i32 %2234, -1073741825
  %2254 = and i1 %2253, %2252
  %2255 = icmp ult i32 %2249, %2212
  %2256 = and i1 %2254, %2255
  br i1 %2256, label %2218, label %2257, !dx.controlflow.hints !79

; <label>:2257                                    ; preds = %2246
  br label %2258

; <label>:2258                                    ; preds = %2257, %2161
  %2259 = phi i32 [ 0, %2161 ], [ %2249, %2257 ]
  %2260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2260, 2
  %2262 = fptoui float %2261 to i32
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2315, label %2264

; <label>:2264                                    ; preds = %2258
  br label %2265

; <label>:2265                                    ; preds = %2310, %2264
  %2266 = phi i32 [ %2311, %2310 ], [ %2259, %2264 ]
  %2267 = phi i32 [ %2312, %2310 ], [ 0, %2264 ]
  %2268 = lshr i32 %2267, 2
  %2269 = and i32 %2267, 3
  %2270 = add nuw nsw i32 %2268, 83
  %2271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %2270)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.i32 %2271, 0
  %2273 = extractvalue %dx.types.CBufRet.i32 %2271, 1
  %2274 = extractvalue %dx.types.CBufRet.i32 %2271, 2
  %2275 = extractvalue %dx.types.CBufRet.i32 %2271, 3
  %2276 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %2272, i32* %2276, align 4
  %2277 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %2273, i32* %2277, align 4
  %2278 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %2274, i32* %2278, align 4
  %2279 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %2275, i32* %2279, align 4
  %2280 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %2269
  %2281 = load i32, i32* %2280, align 4, !tbaa !80
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = lshr i32 %2283, 16
  %2285 = and i32 %2284, 31
  %2286 = shl i32 %2207, %2285
  %2287 = add i32 %2286, %2206
  %2288 = shl i32 %2287, 2
  %2289 = add i32 %2288, %2281
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = icmp eq i32 %2291, 0
  br i1 %2292, label %2310, label %2293, !dx.controlflow.hints !82

; <label>:2293                                    ; preds = %2265
  %2294 = icmp slt i32 %2291, 0
  %2295 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2266
  %2296 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2266
  %2297 = bitcast float* %2295 to i32*
  %2298 = bitcast float* %2296 to i32*
  br i1 %2294, label %2299, label %2306, !dx.controlflow.hints !83

; <label>:2299                                    ; preds = %2293
  %2300 = and i32 %2291, 1073741823
  %2301 = add i32 %2281, 20
  %2302 = add i32 %2301, %2300
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.i32 %2303, 1
  br label %2306

; <label>:2306                                    ; preds = %2299, %2293
  %2307 = phi i32 [ %2304, %2299 ], [ %2214, %2293 ]
  %2308 = phi i32 [ %2305, %2299 ], [ %2215, %2293 ]
  store i32 %2307, i32* %2297, align 4
  store i32 %2308, i32* %2298, align 4
  %2309 = add i32 %2266, 1
  br label %2310

; <label>:2310                                    ; preds = %2306, %2265
  %2311 = phi i32 [ %2266, %2265 ], [ %2309, %2306 ]
  %2312 = add nuw i32 %2267, 1
  %2313 = icmp eq i32 %2312, %2262
  br i1 %2313, label %2314, label %2265

; <label>:2314                                    ; preds = %2310
  br label %2315

; <label>:2315                                    ; preds = %2314, %2258
  %2316 = phi i32 [ %2259, %2258 ], [ %2311, %2314 ]
  %2317 = icmp eq i32 %2316, 1
  %2318 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  %2319 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 0
  br i1 %2317, label %2320, label %2323, !dx.controlflow.hints !84

; <label>:2320                                    ; preds = %2315
  %2321 = load float, float* %2318, align 4
  %2322 = load float, float* %2319, align 4
  br label %2350

; <label>:2323                                    ; preds = %2315
  %2324 = load float, float* %2318, align 4
  %2325 = load float, float* %2319, align 4
  %2326 = fdiv fast float 1.000000e+00, %2325
  %2327 = fsub fast float %2324, %2326
  %2328 = icmp ugt i32 %2316, 1
  br i1 %2328, label %2329, label %2345

; <label>:2329                                    ; preds = %2323
  br label %2330

; <label>:2330                                    ; preds = %2330, %2329
  %2331 = phi float [ %2340, %2330 ], [ %2327, %2329 ]
  %2332 = phi float [ %2341, %2330 ], [ %2324, %2329 ]
  %2333 = phi i32 [ %2342, %2330 ], [ 1, %2329 ]
  %2334 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2333
  %2335 = load float, float* %2334, align 4
  %2336 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2333
  %2337 = load float, float* %2336, align 4
  %2338 = fdiv fast float 1.000000e+00, %2337
  %2339 = fsub fast float %2335, %2338
  %2340 = call float @dx.op.binary.f32(i32 36, float %2331, float %2339)  ; FMin(a,b)
  %2341 = call float @dx.op.binary.f32(i32 35, float %2332, float %2335)  ; FMax(a,b)
  %2342 = add nuw i32 %2333, 1
  %2343 = icmp eq i32 %2342, %2316
  br i1 %2343, label %2344, label %2330

; <label>:2344                                    ; preds = %2330
  br label %2345

; <label>:2345                                    ; preds = %2344, %2323
  %2346 = phi float [ %2327, %2323 ], [ %2340, %2344 ]
  %2347 = phi float [ %2324, %2323 ], [ %2341, %2344 ]
  %2348 = fsub fast float %2347, %2346
  %2349 = fdiv fast float 1.000000e+00, %2348
  br label %2350

; <label>:2350                                    ; preds = %2345, %2320
  %2351 = phi float [ %2321, %2320 ], [ %2347, %2345 ]
  %2352 = phi float [ %2322, %2320 ], [ %2349, %2345 ]
  %2353 = fadd fast float %1781, %2351
  %2354 = fmul fast float %2353, %2352
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fmul fast float %2355, 2.000000e+00
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %2191, %2191
  %2359 = fsub fast float %2192, %2358
  %2360 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2359)  ; FMax(a,b)
  %2361 = fdiv fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2192, %2191
  %2363 = fsub fast float %2193, %2362
  %2364 = fsub fast float %2357, %2191
  %2365 = fmul fast float %2357, %2357
  %2366 = fsub fast float %2365, %2192
  %2367 = fmul fast float %2361, %2363
  %2368 = fmul fast float %2367, %2364
  %2369 = fsub fast float %2366, %2368
  %2370 = fmul fast float %2192, %2192
  %2371 = fsub fast float %2194, %2370
  %2372 = fmul fast float %2363, %2363
  %2373 = fmul fast float %2372, %2361
  %2374 = fsub fast float %2371, %2373
  %2375 = fdiv fast float %2369, %2374
  %2376 = fmul fast float %2375, %2363
  %2377 = fsub fast float %2364, %2376
  %2378 = fmul fast float %2377, %2361
  %2379 = fmul fast float %2378, %2191
  %2380 = fsub fast float 1.000000e+00, %2379
  %2381 = fmul fast float %2375, %2192
  %2382 = fsub fast float %2380, %2381
  %2383 = fmul fast float %2378, %2378
  %2384 = fmul fast float %2375, 4.000000e+00
  %2385 = fmul fast float %2384, %2382
  %2386 = fsub fast float %2383, %2385
  %2387 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2388 = fcmp fast oge float %2378, 0.000000e+00
  %2389 = fsub fast float -0.000000e+00, %2387
  %2390 = select i1 %2388, float %2389, float %2387
  %2391 = fsub fast float %2390, %2378
  %2392 = fdiv fast float %2391, %2375
  %2393 = fdiv fast float %2382, %2391
  %2394 = fmul fast float %2392, 5.000000e-01
  %2395 = fmul fast float %2393, 2.000000e+00
  %2396 = select i1 %2388, float %2394, float %2395
  %2397 = select i1 %2388, float %2395, float %2394
  %2398 = call float @dx.op.binary.f32(i32 35, float %2396, float %2397)  ; FMax(a,b)
  %2399 = call float @dx.op.binary.f32(i32 36, float %2396, float %2397)  ; FMin(a,b)
  %2400 = fcmp fast ogt float %2357, %2398
  %2401 = fsub fast float %2357, %2399
  %2402 = fsub fast float %2357, %2398
  %2403 = fsub fast float %2398, %2399
  %2404 = select i1 %2400, float %2402, float %2403
  %2405 = fmul float %2401, %2404
  %2406 = select i1 %2400, float %2399, float %2357
  %2407 = fcmp fast ogt float %2357, %2399
  %2408 = fmul fast float %2406, %2398
  %2409 = fadd fast float %2406, %2398
  %2410 = fmul fast float %2409, %2191
  %2411 = fadd fast float %2408, %2192
  %2412 = fsub fast float %2411, %2410
  %2413 = fdiv fast float %2412, %2405
  %2414 = select i1 %2407, float %2413, float 0.000000e+00
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = select i1 %2400, float %2415, float %2414
  %2417 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2176, 3
  %2419 = fmul fast float %2418, %2417
  %2420 = fsub fast float 1.000000e+00, %2419
  br label %2421

; <label>:2421                                    ; preds = %2350, %2028, %1754, %1712
  %2422 = phi float [ 1.000000e+00, %1712 ], [ %2420, %2350 ], [ 1.000000e+00, %1754 ], [ 1.000000e+00, %2028 ]
  %2423 = fcmp fast ogt float %1747, 0.000000e+00
  br i1 %2423, label %2424, label %2592, !dx.controlflow.hints !90

; <label>:2424                                    ; preds = %2421
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 2
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 2
  %2429 = fmul fast float %2426, %194
  %2430 = fadd fast float %2428, %221
  %2431 = fadd fast float %2430, %2429
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 2
  %2434 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2437 = call float @dx.op.binary.f32(i32 35, float %2431, float 0.000000e+00)  ; FMax(a,b)
  %2438 = fadd fast float %2437, 0x3F10000000000000
  %2439 = fcmp fast oeq float %2436, 0.000000e+00
  br i1 %2439, label %2440, label %2507, !dx.controlflow.hints !54

; <label>:2440                                    ; preds = %2424
  %2441 = extractvalue %dx.types.CBufRet.f32 %2432, 1
  %2442 = extractvalue %dx.types.CBufRet.f32 %2432, 0
  %2443 = fmul fast float %2442, %1643
  %2444 = fmul fast float %2441, %1644
  %2445 = fadd fast float %2443, 5.000000e-01
  %2446 = call float @dx.op.unary.f32(i32 27, float %2445)  ; Round_ni(value)
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = call float @dx.op.unary.f32(i32 27, float %2447)  ; Round_ni(value)
  %2449 = fsub fast float %2445, %2446
  %2450 = fsub fast float %2447, %2448
  %2451 = fadd fast float %2446, -5.000000e-01
  %2452 = fadd fast float %2448, -5.000000e-01
  %2453 = fmul fast float %2449, 2.000000e+00
  %2454 = fsub fast float 3.000000e+00, %2453
  %2455 = fadd fast float %2453, 1.000000e+00
  %2456 = fsub fast float 2.000000e+00, %2449
  %2457 = bitcast float %2454 to i32
  %2458 = sub nsw i32 2129859010, %2457
  %2459 = bitcast i32 %2458 to float
  %2460 = fmul fast float %2459, %2456
  %2461 = fadd fast float %2460, -1.000000e+00
  %2462 = bitcast float %2455 to i32
  %2463 = sub nsw i32 2129859010, %2462
  %2464 = bitcast i32 %2463 to float
  %2465 = fmul fast float %2464, %2449
  %2466 = fadd fast float %2465, 1.000000e+00
  %2467 = fmul fast float %2450, 2.000000e+00
  %2468 = fsub fast float 3.000000e+00, %2467
  %2469 = fadd fast float %2467, 1.000000e+00
  %2470 = fsub fast float 2.000000e+00, %2450
  %2471 = bitcast float %2468 to i32
  %2472 = sub nsw i32 2129859010, %2471
  %2473 = bitcast i32 %2472 to float
  %2474 = fmul fast float %2473, %2470
  %2475 = fadd fast float %2474, -1.000000e+00
  %2476 = bitcast float %2469 to i32
  %2477 = sub nsw i32 2129859010, %2476
  %2478 = bitcast i32 %2477 to float
  %2479 = fmul fast float %2478, %2450
  %2480 = fadd fast float %2479, 1.000000e+00
  %2481 = fadd fast float %2461, %2451
  %2482 = fmul fast float %2481, %2433
  %2483 = fadd fast float %2475, %2452
  %2484 = fmul fast float %2483, %2434
  %2485 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %2482, float %2484, float undef, float undef, i32 0, i32 0, i32 undef, float %2438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = fmul fast float %2486, %2454
  %2488 = fadd fast float %2466, %2451
  %2489 = fmul fast float %2488, %2433
  %2490 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %2489, float %2484, float undef, float undef, i32 0, i32 0, i32 undef, float %2438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = fmul fast float %2491, %2455
  %2493 = fadd fast float %2480, %2452
  %2494 = fmul fast float %2493, %2434
  %2495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %2482, float %2494, float undef, float undef, i32 0, i32 0, i32 undef, float %2438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = fmul fast float %2496, %2454
  %2498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %2489, float %2494, float undef, float undef, i32 0, i32 0, i32 undef, float %2438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2499 = extractvalue %dx.types.ResRet.f32 %2498, 0
  %2500 = fmul fast float %2499, %2455
  %2501 = fadd fast float %2500, %2497
  %2502 = fmul fast float %2501, %2469
  %2503 = fadd fast float %2492, %2487
  %2504 = fmul fast float %2503, %2468
  %2505 = fadd fast float %2504, %2502
  %2506 = fmul fast float %2505, 6.250000e-02
  br label %2592

; <label>:2507                                    ; preds = %2424
  %2508 = fmul fast float %232, 0x401921FB60000000
  %2509 = call float @dx.op.unary.f32(i32 13, float %2508)  ; Sin(value)
  %2510 = call float @dx.op.unary.f32(i32 12, float %2508)  ; Cos(value)
  %2511 = fsub fast float -0.000000e+00, %2509
  br label %2512

; <label>:2512                                    ; preds = %2561, %2507
  %2513 = phi float [ 0.000000e+00, %2507 ], [ %2556, %2561 ]
  %2514 = phi float [ 0.000000e+00, %2507 ], [ %2558, %2561 ]
  %2515 = phi i32 [ 0, %2507 ], [ %2562, %2561 ]
  %2516 = mul i32 %2515, 2
  %2517 = add i32 0, %2516
  %2518 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2517
  %2519 = load float, float* %2518, align 4
  %2520 = mul i32 %2515, 2
  %2521 = add i32 1, %2520
  %2522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2521
  %2523 = load float, float* %2522, align 4
  %2524 = fmul fast float %2519, %2510
  %2525 = call float @dx.op.tertiary.f32(i32 46, float %2523, float %2511, float %2524)  ; FMad(a,b,c)
  %2526 = fmul fast float %2519, %2509
  %2527 = call float @dx.op.tertiary.f32(i32 46, float %2523, float %2510, float %2526)  ; FMad(a,b,c)
  %2528 = fmul fast float %2525, %2436
  %2529 = fmul fast float %2527, %2436
  %2530 = fadd fast float %2528, %1643
  %2531 = fadd fast float %2529, %1644
  %2532 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %31, float %2530, float %2531, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.f32 %2532, 1
  %2535 = extractvalue %dx.types.ResRet.f32 %2532, 2
  %2536 = extractvalue %dx.types.ResRet.f32 %2532, 3
  %2537 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %2533, float* %2537, align 4
  %2538 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %2534, float* %2538, align 4
  %2539 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %2535, float* %2539, align 4
  %2540 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %2536, float* %2540, align 4
  %2541 = fsub fast float %2533, %2438
  %2542 = fcmp fast olt float %2541, 0.000000e+00
  %2543 = select i1 %2542, float 0.000000e+00, float 1.000000e+00
  %2544 = fadd fast float %2543, %2513
  %2545 = fmul fast float %2543, %2541
  %2546 = fadd fast float %2545, %2514
  br label %2547

; <label>:2547                                    ; preds = %2547, %2512
  %2548 = phi i32 [ 1, %2512 ], [ %2559, %2547 ]
  %2549 = phi float [ %2546, %2512 ], [ %2558, %2547 ]
  %2550 = phi float [ %2544, %2512 ], [ %2556, %2547 ]
  %2551 = getelementptr [4 x float], [4 x float]* %53, i32 0, i32 %2548
  %2552 = load float, float* %2551, align 4, !tbaa !55
  %2553 = fsub fast float %2552, %2438
  %2554 = fcmp fast olt float %2553, 0.000000e+00
  %2555 = select i1 %2554, float 0.000000e+00, float 1.000000e+00
  %2556 = fadd fast float %2555, %2550
  %2557 = fmul fast float %2555, %2553
  %2558 = fadd fast float %2557, %2549
  %2559 = add nuw nsw i32 %2548, 1
  %2560 = icmp eq i32 %2559, 4
  br i1 %2560, label %2561, label %2547, !llvm.loop !59

; <label>:2561                                    ; preds = %2547
  %2562 = add nuw nsw i32 %2515, 1
  %2563 = icmp eq i32 %2562, 8
  br i1 %2563, label %2564, label %2512, !llvm.loop !61

; <label>:2564                                    ; preds = %2561
  %2565 = fdiv fast float 1.000000e+00, %2556
  %2566 = fmul fast float %2565, %2558
  %2567 = fdiv fast float 1.000000e+00, %2438
  %2568 = fmul fast float %2566, %2567
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = call float @dx.op.binary.f32(i32 35, float %2569, float 0.000000e+00)  ; FMax(a,b)
  %2571 = fmul fast float %2556, 3.125000e-02
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fmul fast float %2572, 2.000000e+00
  %2574 = fadd fast float %2573, -1.000000e+00
  %2575 = fcmp fast ogt float %2574, 0.000000e+00
  %2576 = fcmp fast olt float %2574, 0.000000e+00
  %2577 = zext i1 %2575 to i32
  %2578 = zext i1 %2576 to i32
  %2579 = sub nsw i32 %2577, %2578
  %2580 = sitofp i32 %2579 to float
  %2581 = fmul fast float %2580, %2574
  %2582 = fsub fast float 1.000000e+00, %2581
  %2583 = fmul fast float %2582, %2582
  %2584 = fmul fast float %2583, %2582
  %2585 = fsub fast float %2582, %2584
  %2586 = fmul fast float %2585, %2570
  %2587 = fsub fast float 1.000000e+00, %2584
  %2588 = fsub fast float %2587, %2586
  %2589 = fmul fast float %2580, 5.000000e-01
  %2590 = fmul fast float %2589, %2588
  %2591 = fsub fast float 5.000000e-01, %2590
  br label %2592

; <label>:2592                                    ; preds = %2564, %2440, %2421
  %2593 = phi float [ 1.000000e+00, %2421 ], [ %2506, %2440 ], [ %2591, %2564 ]
  %2594 = fcmp fast ogt float %1745, 0.000000e+00
  br i1 %2594, label %2595, label %2763, !dx.controlflow.hints !91

; <label>:2595                                    ; preds = %2592
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2599 = extractvalue %dx.types.CBufRet.f32 %2598, 1
  %2600 = fmul fast float %2597, %194
  %2601 = fadd fast float %2599, %221
  %2602 = fadd fast float %2601, %2600
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 2
  %2605 = extractvalue %dx.types.CBufRet.f32 %2603, 3
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 1
  %2608 = call float @dx.op.binary.f32(i32 35, float %2602, float 0.000000e+00)  ; FMax(a,b)
  %2609 = fadd fast float %2608, 0x3F10000000000000
  %2610 = fcmp fast oeq float %2607, 0.000000e+00
  br i1 %2610, label %2611, label %2678, !dx.controlflow.hints !54

; <label>:2611                                    ; preds = %2595
  %2612 = extractvalue %dx.types.CBufRet.f32 %2603, 1
  %2613 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2614 = fmul fast float %2613, %1635
  %2615 = fmul fast float %2612, %1636
  %2616 = fadd fast float %2614, 5.000000e-01
  %2617 = call float @dx.op.unary.f32(i32 27, float %2616)  ; Round_ni(value)
  %2618 = fadd fast float %2615, 5.000000e-01
  %2619 = call float @dx.op.unary.f32(i32 27, float %2618)  ; Round_ni(value)
  %2620 = fsub fast float %2616, %2617
  %2621 = fsub fast float %2618, %2619
  %2622 = fadd fast float %2617, -5.000000e-01
  %2623 = fadd fast float %2619, -5.000000e-01
  %2624 = fmul fast float %2620, 2.000000e+00
  %2625 = fsub fast float 3.000000e+00, %2624
  %2626 = fadd fast float %2624, 1.000000e+00
  %2627 = fsub fast float 2.000000e+00, %2620
  %2628 = bitcast float %2625 to i32
  %2629 = sub nsw i32 2129859010, %2628
  %2630 = bitcast i32 %2629 to float
  %2631 = fmul fast float %2630, %2627
  %2632 = fadd fast float %2631, -1.000000e+00
  %2633 = bitcast float %2626 to i32
  %2634 = sub nsw i32 2129859010, %2633
  %2635 = bitcast i32 %2634 to float
  %2636 = fmul fast float %2635, %2620
  %2637 = fadd fast float %2636, 1.000000e+00
  %2638 = fmul fast float %2621, 2.000000e+00
  %2639 = fsub fast float 3.000000e+00, %2638
  %2640 = fadd fast float %2638, 1.000000e+00
  %2641 = fsub fast float 2.000000e+00, %2621
  %2642 = bitcast float %2639 to i32
  %2643 = sub nsw i32 2129859010, %2642
  %2644 = bitcast i32 %2643 to float
  %2645 = fmul fast float %2644, %2641
  %2646 = fadd fast float %2645, -1.000000e+00
  %2647 = bitcast float %2640 to i32
  %2648 = sub nsw i32 2129859010, %2647
  %2649 = bitcast i32 %2648 to float
  %2650 = fmul fast float %2649, %2621
  %2651 = fadd fast float %2650, 1.000000e+00
  %2652 = fadd fast float %2632, %2622
  %2653 = fmul fast float %2652, %2604
  %2654 = fadd fast float %2646, %2623
  %2655 = fmul fast float %2654, %2605
  %2656 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %2653, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float %2609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = fmul fast float %2657, %2625
  %2659 = fadd fast float %2637, %2622
  %2660 = fmul fast float %2659, %2604
  %2661 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %2660, float %2655, float undef, float undef, i32 0, i32 0, i32 undef, float %2609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = fmul fast float %2662, %2626
  %2664 = fadd fast float %2651, %2623
  %2665 = fmul fast float %2664, %2605
  %2666 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %2653, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float %2609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = fmul fast float %2667, %2625
  %2669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %2660, float %2665, float undef, float undef, i32 0, i32 0, i32 undef, float %2609)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = fmul fast float %2670, %2626
  %2672 = fadd fast float %2671, %2668
  %2673 = fmul fast float %2672, %2640
  %2674 = fadd fast float %2663, %2658
  %2675 = fmul fast float %2674, %2639
  %2676 = fadd fast float %2675, %2673
  %2677 = fmul fast float %2676, 6.250000e-02
  br label %2763

; <label>:2678                                    ; preds = %2595
  %2679 = fmul fast float %232, 0x401921FB60000000
  %2680 = call float @dx.op.unary.f32(i32 13, float %2679)  ; Sin(value)
  %2681 = call float @dx.op.unary.f32(i32 12, float %2679)  ; Cos(value)
  %2682 = fsub fast float -0.000000e+00, %2680
  br label %2683

; <label>:2683                                    ; preds = %2732, %2678
  %2684 = phi float [ 0.000000e+00, %2678 ], [ %2727, %2732 ]
  %2685 = phi float [ 0.000000e+00, %2678 ], [ %2729, %2732 ]
  %2686 = phi i32 [ 0, %2678 ], [ %2733, %2732 ]
  %2687 = mul i32 %2686, 2
  %2688 = add i32 0, %2687
  %2689 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2688
  %2690 = load float, float* %2689, align 4
  %2691 = mul i32 %2686, 2
  %2692 = add i32 1, %2691
  %2693 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2692
  %2694 = load float, float* %2693, align 4
  %2695 = fmul fast float %2690, %2681
  %2696 = call float @dx.op.tertiary.f32(i32 46, float %2694, float %2682, float %2695)  ; FMad(a,b,c)
  %2697 = fmul fast float %2690, %2680
  %2698 = call float @dx.op.tertiary.f32(i32 46, float %2694, float %2681, float %2697)  ; FMad(a,b,c)
  %2699 = fmul fast float %2696, %2607
  %2700 = fmul fast float %2698, %2607
  %2701 = fadd fast float %2699, %1635
  %2702 = fadd fast float %2700, %1636
  %2703 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %31, float %2701, float %2702, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.ResRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.ResRet.f32 %2703, 2
  %2707 = extractvalue %dx.types.ResRet.f32 %2703, 3
  %2708 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %2704, float* %2708, align 4
  %2709 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %2705, float* %2709, align 4
  %2710 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %2706, float* %2710, align 4
  %2711 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %2707, float* %2711, align 4
  %2712 = fsub fast float %2704, %2609
  %2713 = fcmp fast olt float %2712, 0.000000e+00
  %2714 = select i1 %2713, float 0.000000e+00, float 1.000000e+00
  %2715 = fadd fast float %2714, %2684
  %2716 = fmul fast float %2714, %2712
  %2717 = fadd fast float %2716, %2685
  br label %2718

; <label>:2718                                    ; preds = %2718, %2683
  %2719 = phi i32 [ 1, %2683 ], [ %2730, %2718 ]
  %2720 = phi float [ %2717, %2683 ], [ %2729, %2718 ]
  %2721 = phi float [ %2715, %2683 ], [ %2727, %2718 ]
  %2722 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %2719
  %2723 = load float, float* %2722, align 4, !tbaa !55
  %2724 = fsub fast float %2723, %2609
  %2725 = fcmp fast olt float %2724, 0.000000e+00
  %2726 = select i1 %2725, float 0.000000e+00, float 1.000000e+00
  %2727 = fadd fast float %2726, %2721
  %2728 = fmul fast float %2726, %2724
  %2729 = fadd fast float %2728, %2720
  %2730 = add nuw nsw i32 %2719, 1
  %2731 = icmp eq i32 %2730, 4
  br i1 %2731, label %2732, label %2718, !llvm.loop !59

; <label>:2732                                    ; preds = %2718
  %2733 = add nuw nsw i32 %2686, 1
  %2734 = icmp eq i32 %2733, 8
  br i1 %2734, label %2735, label %2683, !llvm.loop !61

; <label>:2735                                    ; preds = %2732
  %2736 = fdiv fast float 1.000000e+00, %2727
  %2737 = fmul fast float %2736, %2729
  %2738 = fdiv fast float 1.000000e+00, %2609
  %2739 = fmul fast float %2737, %2738
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = call float @dx.op.binary.f32(i32 35, float %2740, float 0.000000e+00)  ; FMax(a,b)
  %2742 = fmul fast float %2727, 3.125000e-02
  %2743 = call float @dx.op.unary.f32(i32 7, float %2742)  ; Saturate(value)
  %2744 = fmul fast float %2743, 2.000000e+00
  %2745 = fadd fast float %2744, -1.000000e+00
  %2746 = fcmp fast ogt float %2745, 0.000000e+00
  %2747 = fcmp fast olt float %2745, 0.000000e+00
  %2748 = zext i1 %2746 to i32
  %2749 = zext i1 %2747 to i32
  %2750 = sub nsw i32 %2748, %2749
  %2751 = sitofp i32 %2750 to float
  %2752 = fmul fast float %2751, %2745
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2753
  %2755 = fmul fast float %2754, %2753
  %2756 = fsub fast float %2753, %2755
  %2757 = fmul fast float %2756, %2741
  %2758 = fsub fast float 1.000000e+00, %2755
  %2759 = fsub fast float %2758, %2757
  %2760 = fmul fast float %2751, 5.000000e-01
  %2761 = fmul fast float %2760, %2759
  %2762 = fsub fast float 5.000000e-01, %2761
  br label %2763

; <label>:2763                                    ; preds = %2735, %2611, %2592
  %2764 = phi float [ 1.000000e+00, %2592 ], [ %2677, %2611 ], [ %2762, %2735 ]
  %2765 = fcmp fast ogt float %1744, 0.000000e+00
  br i1 %2765, label %2766, label %3088, !dx.controlflow.hints !92

; <label>:2766                                    ; preds = %2763
  %2767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2768 = extractvalue %dx.types.CBufRet.f32 %2767, 2
  %2769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2770 = extractvalue %dx.types.CBufRet.f32 %2769, 0
  %2771 = fmul fast float %2768, %194
  %2772 = fadd fast float %2770, %221
  %2773 = fadd fast float %2772, %2771
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = call float @dx.op.binary.f32(i32 35, float %2773, float 0.000000e+00)  ; FMax(a,b)
  %2780 = fadd fast float %2779, 0x3F10000000000000
  %2781 = fcmp fast oeq float %2778, 0.000000e+00
  br i1 %87, label %2782, label %2935, !dx.controlflow.hints !93

; <label>:2782                                    ; preds = %2766
  br i1 %2781, label %2783, label %2850, !dx.controlflow.hints !54

; <label>:2783                                    ; preds = %2782
  %2784 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2785 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2786 = fmul fast float %2785, %213
  %2787 = fmul fast float %2784, %217
  %2788 = fadd fast float %2786, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 27, float %2788)  ; Round_ni(value)
  %2790 = fadd fast float %2787, 5.000000e-01
  %2791 = call float @dx.op.unary.f32(i32 27, float %2790)  ; Round_ni(value)
  %2792 = fsub fast float %2788, %2789
  %2793 = fsub fast float %2790, %2791
  %2794 = fadd fast float %2789, -5.000000e-01
  %2795 = fadd fast float %2791, -5.000000e-01
  %2796 = fmul fast float %2792, 2.000000e+00
  %2797 = fsub fast float 3.000000e+00, %2796
  %2798 = fadd fast float %2796, 1.000000e+00
  %2799 = fsub fast float 2.000000e+00, %2792
  %2800 = bitcast float %2797 to i32
  %2801 = sub nsw i32 2129859010, %2800
  %2802 = bitcast i32 %2801 to float
  %2803 = fmul fast float %2802, %2799
  %2804 = fadd fast float %2803, -1.000000e+00
  %2805 = bitcast float %2798 to i32
  %2806 = sub nsw i32 2129859010, %2805
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2807, %2792
  %2809 = fadd fast float %2808, 1.000000e+00
  %2810 = fmul fast float %2793, 2.000000e+00
  %2811 = fsub fast float 3.000000e+00, %2810
  %2812 = fadd fast float %2810, 1.000000e+00
  %2813 = fsub fast float 2.000000e+00, %2793
  %2814 = bitcast float %2811 to i32
  %2815 = sub nsw i32 2129859010, %2814
  %2816 = bitcast i32 %2815 to float
  %2817 = fmul fast float %2816, %2813
  %2818 = fadd fast float %2817, -1.000000e+00
  %2819 = bitcast float %2812 to i32
  %2820 = sub nsw i32 2129859010, %2819
  %2821 = bitcast i32 %2820 to float
  %2822 = fmul fast float %2821, %2793
  %2823 = fadd fast float %2822, 1.000000e+00
  %2824 = fadd fast float %2804, %2794
  %2825 = fmul fast float %2824, %2775
  %2826 = fadd fast float %2818, %2795
  %2827 = fmul fast float %2826, %2776
  %2828 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %2825, float %2827, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = fmul fast float %2829, %2797
  %2831 = fadd fast float %2809, %2794
  %2832 = fmul fast float %2831, %2775
  %2833 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %2832, float %2827, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = fmul fast float %2834, %2798
  %2836 = fadd fast float %2823, %2795
  %2837 = fmul fast float %2836, %2776
  %2838 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %2825, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = fmul fast float %2839, %2797
  %2841 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %2832, float %2837, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2842 = extractvalue %dx.types.ResRet.f32 %2841, 0
  %2843 = fmul fast float %2842, %2798
  %2844 = fadd fast float %2843, %2840
  %2845 = fmul fast float %2844, %2812
  %2846 = fadd fast float %2835, %2830
  %2847 = fmul fast float %2846, %2811
  %2848 = fadd fast float %2847, %2845
  %2849 = fmul fast float %2848, 6.250000e-02
  br label %3088

; <label>:2850                                    ; preds = %2782
  %2851 = fmul fast float %232, 0x401921FB60000000
  %2852 = call float @dx.op.unary.f32(i32 13, float %2851)  ; Sin(value)
  %2853 = call float @dx.op.unary.f32(i32 12, float %2851)  ; Cos(value)
  %2854 = fsub fast float -0.000000e+00, %2852
  br label %2855

; <label>:2855                                    ; preds = %2904, %2850
  %2856 = phi float [ 0.000000e+00, %2850 ], [ %2899, %2904 ]
  %2857 = phi float [ 0.000000e+00, %2850 ], [ %2901, %2904 ]
  %2858 = phi i32 [ 0, %2850 ], [ %2905, %2904 ]
  %2859 = mul i32 %2858, 2
  %2860 = add i32 0, %2859
  %2861 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2860
  %2862 = load float, float* %2861, align 4
  %2863 = mul i32 %2858, 2
  %2864 = add i32 1, %2863
  %2865 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2864
  %2866 = load float, float* %2865, align 4
  %2867 = fmul fast float %2862, %2853
  %2868 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2854, float %2867)  ; FMad(a,b,c)
  %2869 = fmul fast float %2862, %2852
  %2870 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2853, float %2869)  ; FMad(a,b,c)
  %2871 = fmul fast float %2868, %2778
  %2872 = fmul fast float %2870, %2778
  %2873 = fadd fast float %2871, %213
  %2874 = fadd fast float %2872, %217
  %2875 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %31, float %2873, float %2874, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = extractvalue %dx.types.ResRet.f32 %2875, 3
  %2880 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %2876, float* %2880, align 4
  %2881 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %2877, float* %2881, align 4
  %2882 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %2878, float* %2882, align 4
  %2883 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %2879, float* %2883, align 4
  %2884 = fsub fast float %2876, %2780
  %2885 = fcmp fast olt float %2884, 0.000000e+00
  %2886 = select i1 %2885, float 0.000000e+00, float 1.000000e+00
  %2887 = fadd fast float %2886, %2856
  %2888 = fmul fast float %2886, %2884
  %2889 = fadd fast float %2888, %2857
  br label %2890

; <label>:2890                                    ; preds = %2890, %2855
  %2891 = phi i32 [ 1, %2855 ], [ %2902, %2890 ]
  %2892 = phi float [ %2889, %2855 ], [ %2901, %2890 ]
  %2893 = phi float [ %2887, %2855 ], [ %2899, %2890 ]
  %2894 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %2891
  %2895 = load float, float* %2894, align 4, !tbaa !55
  %2896 = fsub fast float %2895, %2780
  %2897 = fcmp fast olt float %2896, 0.000000e+00
  %2898 = select i1 %2897, float 0.000000e+00, float 1.000000e+00
  %2899 = fadd fast float %2898, %2893
  %2900 = fmul fast float %2898, %2896
  %2901 = fadd fast float %2900, %2892
  %2902 = add nuw nsw i32 %2891, 1
  %2903 = icmp eq i32 %2902, 4
  br i1 %2903, label %2904, label %2890, !llvm.loop !59

; <label>:2904                                    ; preds = %2890
  %2905 = add nuw nsw i32 %2858, 1
  %2906 = icmp eq i32 %2905, 8
  br i1 %2906, label %2907, label %2855, !llvm.loop !61

; <label>:2907                                    ; preds = %2904
  %2908 = fdiv fast float 1.000000e+00, %2899
  %2909 = fmul fast float %2908, %2901
  %2910 = fdiv fast float 1.000000e+00, %2780
  %2911 = fmul fast float %2909, %2910
  %2912 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2913 = call float @dx.op.binary.f32(i32 35, float %2912, float 0.000000e+00)  ; FMax(a,b)
  %2914 = fmul fast float %2899, 3.125000e-02
  %2915 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  %2916 = fmul fast float %2915, 2.000000e+00
  %2917 = fadd fast float %2916, -1.000000e+00
  %2918 = fcmp fast ogt float %2917, 0.000000e+00
  %2919 = fcmp fast olt float %2917, 0.000000e+00
  %2920 = zext i1 %2918 to i32
  %2921 = zext i1 %2919 to i32
  %2922 = sub nsw i32 %2920, %2921
  %2923 = sitofp i32 %2922 to float
  %2924 = fmul fast float %2923, %2917
  %2925 = fsub fast float 1.000000e+00, %2924
  %2926 = fmul fast float %2925, %2925
  %2927 = fmul fast float %2926, %2925
  %2928 = fsub fast float %2925, %2927
  %2929 = fmul fast float %2928, %2913
  %2930 = fsub fast float 1.000000e+00, %2927
  %2931 = fsub fast float %2930, %2929
  %2932 = fmul fast float %2923, 5.000000e-01
  %2933 = fmul fast float %2932, %2931
  %2934 = fsub fast float 5.000000e-01, %2933
  br label %3088

; <label>:2935                                    ; preds = %2766
  br i1 %2781, label %2936, label %3003, !dx.controlflow.hints !54

; <label>:2936                                    ; preds = %2935
  %2937 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2938 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2939 = fmul fast float %2938, %213
  %2940 = fmul fast float %2937, %217
  %2941 = fadd fast float %2939, 5.000000e-01
  %2942 = call float @dx.op.unary.f32(i32 27, float %2941)  ; Round_ni(value)
  %2943 = fadd fast float %2940, 5.000000e-01
  %2944 = call float @dx.op.unary.f32(i32 27, float %2943)  ; Round_ni(value)
  %2945 = fsub fast float %2941, %2942
  %2946 = fsub fast float %2943, %2944
  %2947 = fadd fast float %2942, -5.000000e-01
  %2948 = fadd fast float %2944, -5.000000e-01
  %2949 = fmul fast float %2945, 2.000000e+00
  %2950 = fsub fast float 3.000000e+00, %2949
  %2951 = fadd fast float %2949, 1.000000e+00
  %2952 = fsub fast float 2.000000e+00, %2945
  %2953 = bitcast float %2950 to i32
  %2954 = sub nsw i32 2129859010, %2953
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2955, %2952
  %2957 = fadd fast float %2956, -1.000000e+00
  %2958 = bitcast float %2951 to i32
  %2959 = sub nsw i32 2129859010, %2958
  %2960 = bitcast i32 %2959 to float
  %2961 = fmul fast float %2960, %2945
  %2962 = fadd fast float %2961, 1.000000e+00
  %2963 = fmul fast float %2946, 2.000000e+00
  %2964 = fsub fast float 3.000000e+00, %2963
  %2965 = fadd fast float %2963, 1.000000e+00
  %2966 = fsub fast float 2.000000e+00, %2946
  %2967 = bitcast float %2964 to i32
  %2968 = sub nsw i32 2129859010, %2967
  %2969 = bitcast i32 %2968 to float
  %2970 = fmul fast float %2969, %2966
  %2971 = fadd fast float %2970, -1.000000e+00
  %2972 = bitcast float %2965 to i32
  %2973 = sub nsw i32 2129859010, %2972
  %2974 = bitcast i32 %2973 to float
  %2975 = fmul fast float %2974, %2946
  %2976 = fadd fast float %2975, 1.000000e+00
  %2977 = fadd fast float %2957, %2947
  %2978 = fmul fast float %2977, %2775
  %2979 = fadd fast float %2971, %2948
  %2980 = fmul fast float %2979, %2776
  %2981 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %2978, float %2980, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = fmul fast float %2982, %2950
  %2984 = fadd fast float %2962, %2947
  %2985 = fmul fast float %2984, %2775
  %2986 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %2985, float %2980, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = fmul fast float %2987, %2951
  %2989 = fadd fast float %2976, %2948
  %2990 = fmul fast float %2989, %2776
  %2991 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %2978, float %2990, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = fmul fast float %2992, %2950
  %2994 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %2985, float %2990, float undef, float undef, i32 0, i32 0, i32 undef, float %2780)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = fmul fast float %2995, %2951
  %2997 = fadd fast float %2996, %2993
  %2998 = fmul fast float %2997, %2965
  %2999 = fadd fast float %2988, %2983
  %3000 = fmul fast float %2999, %2964
  %3001 = fadd fast float %3000, %2998
  %3002 = fmul fast float %3001, 6.250000e-02
  br label %3088

; <label>:3003                                    ; preds = %2935
  %3004 = fmul fast float %232, 0x401921FB60000000
  %3005 = call float @dx.op.unary.f32(i32 13, float %3004)  ; Sin(value)
  %3006 = call float @dx.op.unary.f32(i32 12, float %3004)  ; Cos(value)
  %3007 = fsub fast float -0.000000e+00, %3005
  br label %3008

; <label>:3008                                    ; preds = %3057, %3003
  %3009 = phi float [ 0.000000e+00, %3003 ], [ %3052, %3057 ]
  %3010 = phi float [ 0.000000e+00, %3003 ], [ %3054, %3057 ]
  %3011 = phi i32 [ 0, %3003 ], [ %3058, %3057 ]
  %3012 = mul i32 %3011, 2
  %3013 = add i32 0, %3012
  %3014 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3013
  %3015 = load float, float* %3014, align 4
  %3016 = mul i32 %3011, 2
  %3017 = add i32 1, %3016
  %3018 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3017
  %3019 = load float, float* %3018, align 4
  %3020 = fmul fast float %3015, %3006
  %3021 = call float @dx.op.tertiary.f32(i32 46, float %3019, float %3007, float %3020)  ; FMad(a,b,c)
  %3022 = fmul fast float %3015, %3005
  %3023 = call float @dx.op.tertiary.f32(i32 46, float %3019, float %3006, float %3022)  ; FMad(a,b,c)
  %3024 = fmul fast float %3021, %2778
  %3025 = fmul fast float %3023, %2778
  %3026 = fadd fast float %3024, %213
  %3027 = fadd fast float %3025, %217
  %3028 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %31, float %3026, float %3027, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = extractvalue %dx.types.ResRet.f32 %3028, 1
  %3031 = extractvalue %dx.types.ResRet.f32 %3028, 2
  %3032 = extractvalue %dx.types.ResRet.f32 %3028, 3
  %3033 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %3029, float* %3033, align 4
  %3034 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %3030, float* %3034, align 4
  %3035 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %3031, float* %3035, align 4
  %3036 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %3032, float* %3036, align 4
  %3037 = fsub fast float %3029, %2780
  %3038 = fcmp fast olt float %3037, 0.000000e+00
  %3039 = select i1 %3038, float 0.000000e+00, float 1.000000e+00
  %3040 = fadd fast float %3039, %3009
  %3041 = fmul fast float %3039, %3037
  %3042 = fadd fast float %3041, %3010
  br label %3043

; <label>:3043                                    ; preds = %3043, %3008
  %3044 = phi i32 [ 1, %3008 ], [ %3055, %3043 ]
  %3045 = phi float [ %3042, %3008 ], [ %3054, %3043 ]
  %3046 = phi float [ %3040, %3008 ], [ %3052, %3043 ]
  %3047 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %3044
  %3048 = load float, float* %3047, align 4, !tbaa !55
  %3049 = fsub fast float %3048, %2780
  %3050 = fcmp fast olt float %3049, 0.000000e+00
  %3051 = select i1 %3050, float 0.000000e+00, float 1.000000e+00
  %3052 = fadd fast float %3051, %3046
  %3053 = fmul fast float %3051, %3049
  %3054 = fadd fast float %3053, %3045
  %3055 = add nuw nsw i32 %3044, 1
  %3056 = icmp eq i32 %3055, 4
  br i1 %3056, label %3057, label %3043, !llvm.loop !59

; <label>:3057                                    ; preds = %3043
  %3058 = add nuw nsw i32 %3011, 1
  %3059 = icmp eq i32 %3058, 8
  br i1 %3059, label %3060, label %3008, !llvm.loop !61

; <label>:3060                                    ; preds = %3057
  %3061 = fdiv fast float 1.000000e+00, %3052
  %3062 = fmul fast float %3061, %3054
  %3063 = fdiv fast float 1.000000e+00, %2780
  %3064 = fmul fast float %3062, %3063
  %3065 = call float @dx.op.unary.f32(i32 7, float %3064)  ; Saturate(value)
  %3066 = call float @dx.op.binary.f32(i32 35, float %3065, float 0.000000e+00)  ; FMax(a,b)
  %3067 = fmul fast float %3052, 3.125000e-02
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3069 = fmul fast float %3068, 2.000000e+00
  %3070 = fadd fast float %3069, -1.000000e+00
  %3071 = fcmp fast ogt float %3070, 0.000000e+00
  %3072 = fcmp fast olt float %3070, 0.000000e+00
  %3073 = zext i1 %3071 to i32
  %3074 = zext i1 %3072 to i32
  %3075 = sub nsw i32 %3073, %3074
  %3076 = sitofp i32 %3075 to float
  %3077 = fmul fast float %3076, %3070
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = fmul fast float %3078, %3078
  %3080 = fmul fast float %3079, %3078
  %3081 = fsub fast float %3078, %3080
  %3082 = fmul fast float %3081, %3066
  %3083 = fsub fast float 1.000000e+00, %3080
  %3084 = fsub fast float %3083, %3082
  %3085 = fmul fast float %3076, 5.000000e-01
  %3086 = fmul fast float %3085, %3084
  %3087 = fsub fast float 5.000000e-01, %3086
  br label %3088

; <label>:3088                                    ; preds = %3060, %2936, %2907, %2783, %2763
  %3089 = phi float [ 1.000000e+00, %2763 ], [ %2849, %2783 ], [ %2934, %2907 ], [ %3002, %2936 ], [ %3087, %3060 ]
  %3090 = fsub fast float %2593, %2422
  %3091 = fmul fast float %3090, %1714
  %3092 = fadd fast float %3091, %2422
  %3093 = fsub fast float %2764, %3092
  %3094 = fmul fast float %3093, %1713
  %3095 = fadd fast float %3094, %3092
  %3096 = fsub fast float %3089, %3095
  %3097 = fmul fast float %3096, %1744
  %3098 = fadd fast float %3097, %3095
  br label %4570

; <label>:3099                                    ; preds = %98
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.CBufRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3104 = fmul fast float %3103, %213
  %3105 = fmul fast float %3103, %217
  %3106 = fadd fast float %3104, %3101
  %3107 = fadd fast float %3105, %3102
  %3108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3109 = extractvalue %dx.types.CBufRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.CBufRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.CBufRet.f32 %3108, 3
  %3112 = fmul fast float %3111, %213
  %3113 = fmul fast float %3111, %217
  %3114 = fadd fast float %3112, %3109
  %3115 = fadd fast float %3113, %3110
  %3116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3117 = extractvalue %dx.types.CBufRet.f32 %3116, 1
  %3118 = fsub fast float %3117, %221
  %3119 = extractvalue %dx.types.CBufRet.f32 %3116, 2
  %3120 = fmul fast float %3118, %3119
  %3121 = fsub fast float 1.000000e+00, %3120
  %3122 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  br i1 %87, label %3183, label %3123, !dx.controlflow.hints !86

; <label>:3123                                    ; preds = %3099
  %3124 = extractvalue %dx.types.CBufRet.f32 %3108, 2
  %3125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.f32 %3125, 2
  %3127 = fadd fast float %3126, %3124
  %3128 = fcmp fast ogt float %3127, 0.000000e+00
  br i1 %3128, label %3129, label %3153, !dx.controlflow.hints !87

; <label>:3129                                    ; preds = %3123
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 0
  %3132 = extractvalue %dx.types.CBufRet.f32 %3130, 1
  %3133 = fsub fast float %3114, %3131
  %3134 = fsub fast float %3115, %3132
  %3135 = fcmp fast olt float %3133, 0.000000e+00
  %3136 = fcmp fast olt float %3134, 0.000000e+00
  %3137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3138 = extractvalue %dx.types.CBufRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.CBufRet.f32 %3137, 1
  %3140 = extractvalue %dx.types.CBufRet.f32 %3137, 2
  %3141 = extractvalue %dx.types.CBufRet.f32 %3137, 3
  %3142 = select i1 %3135, float %3138, float %3140
  %3143 = select i1 %3136, float %3139, float %3141
  %3144 = fmul fast float %3142, %3133
  %3145 = fmul fast float %3143, %3134
  %3146 = call float @dx.op.unary.f32(i32 6, float %3144)  ; FAbs(value)
  %3147 = call float @dx.op.unary.f32(i32 6, float %3145)  ; FAbs(value)
  %3148 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %3149 = call float @dx.op.binary.f32(i32 35, float %3146, float %3147)  ; FMax(a,b)
  %3150 = fsub fast float %3148, %3149
  %3151 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3152 = fmul fast float %3151, %3122
  br label %3153

; <label>:3153                                    ; preds = %3129, %3123
  %3154 = phi float [ %3152, %3129 ], [ 0.000000e+00, %3123 ]
  %3155 = extractvalue %dx.types.CBufRet.f32 %3100, 2
  %3156 = extractvalue %dx.types.CBufRet.f32 %3125, 1
  %3157 = fadd fast float %3156, %3155
  %3158 = fcmp fast ogt float %3157, 0.000000e+00
  br i1 %3158, label %3159, label %3183, !dx.controlflow.hints !88

; <label>:3159                                    ; preds = %3153
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3163 = fsub fast float %3106, %3161
  %3164 = fsub fast float %3107, %3162
  %3165 = fcmp fast olt float %3163, 0.000000e+00
  %3166 = fcmp fast olt float %3164, 0.000000e+00
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.CBufRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.CBufRet.f32 %3167, 2
  %3171 = extractvalue %dx.types.CBufRet.f32 %3167, 3
  %3172 = select i1 %3165, float %3168, float %3170
  %3173 = select i1 %3166, float %3169, float %3171
  %3174 = fmul fast float %3172, %3163
  %3175 = fmul fast float %3173, %3164
  %3176 = call float @dx.op.unary.f32(i32 6, float %3174)  ; FAbs(value)
  %3177 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3178 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %3179 = call float @dx.op.binary.f32(i32 35, float %3176, float %3177)  ; FMax(a,b)
  %3180 = fsub fast float %3178, %3179
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  %3182 = fmul fast float %3181, %3122
  br label %3183

; <label>:3183                                    ; preds = %3159, %3153, %3099
  %3184 = phi float [ 0.000000e+00, %3099 ], [ %3182, %3159 ], [ 0.000000e+00, %3153 ]
  %3185 = phi float [ 0.000000e+00, %3099 ], [ %3154, %3159 ], [ %3154, %3153 ]
  %3186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3187 = extractvalue %dx.types.CBufRet.f32 %3186, 0
  %3188 = extractvalue %dx.types.CBufRet.f32 %3186, 1
  %3189 = fmul fast float %3187, %94
  %3190 = fadd fast float %3189, %3188
  %3191 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3195 = fsub fast float %213, %3193
  %3196 = fsub fast float %217, %3194
  %3197 = fcmp fast olt float %3195, 0.000000e+00
  %3198 = fcmp fast olt float %3196, 0.000000e+00
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3199, 2
  %3203 = extractvalue %dx.types.CBufRet.f32 %3199, 3
  %3204 = select i1 %3197, float %3200, float %3202
  %3205 = select i1 %3198, float %3201, float %3203
  %3206 = fmul fast float %3204, %3195
  %3207 = fmul fast float %3205, %3196
  %3208 = call float @dx.op.unary.f32(i32 6, float %3206)  ; FAbs(value)
  %3209 = call float @dx.op.unary.f32(i32 6, float %3207)  ; FAbs(value)
  %3210 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %3211 = call float @dx.op.binary.f32(i32 35, float %3208, float %3209)  ; FMax(a,b)
  %3212 = fsub fast float %3210, %3211
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = call float @dx.op.binary.f32(i32 36, float %3213, float %3191)  ; FMin(a,b)
  %3215 = fmul fast float %3214, %3122
  %3216 = fsub fast float %3184, %3215
  %3217 = fsub fast float %3185, %3184
  %3218 = fsub fast float %3217, %3215
  %3219 = call float @dx.op.binary.f32(i32 35, float %3184, float %3185)  ; FMax(a,b)
  %3220 = call float @dx.op.binary.f32(i32 35, float %3215, float %3219)  ; FMax(a,b)
  %3221 = fcmp fast olt float %3220, 1.000000e+00
  %3222 = extractvalue %dx.types.CBufRet.f32 %233, 0
  %3223 = fcmp fast une float %3222, 0.000000e+00
  %3224 = and i1 %3221, %3223
  br i1 %3224, label %3225, label %3892, !dx.controlflow.hints !89

; <label>:3225                                    ; preds = %3183
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.CBufRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.CBufRet.f32 %3226, 2
  %3230 = extractvalue %dx.types.CBufRet.f32 %3226, 3
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3235 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.CBufRet.f32 %3236, 2
  %3240 = extractvalue %dx.types.CBufRet.f32 %3236, 3
  %3241 = fmul fast float %3227, %148
  %3242 = call float @dx.op.tertiary.f32(i32 46, float %149, float %3228, float %3241)  ; FMad(a,b,c)
  %3243 = call float @dx.op.tertiary.f32(i32 46, float %150, float %3229, float %3242)  ; FMad(a,b,c)
  %3244 = fadd fast float %3243, %3230
  %3245 = fmul fast float %3232, %148
  %3246 = call float @dx.op.tertiary.f32(i32 46, float %149, float %3233, float %3245)  ; FMad(a,b,c)
  %3247 = call float @dx.op.tertiary.f32(i32 46, float %150, float %3234, float %3246)  ; FMad(a,b,c)
  %3248 = fadd fast float %3247, %3235
  %3249 = fmul fast float %3237, %148
  %3250 = call float @dx.op.tertiary.f32(i32 46, float %149, float %3238, float %3249)  ; FMad(a,b,c)
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %150, float %3239, float %3250)  ; FMad(a,b,c)
  %3252 = fadd fast float %3251, %3240
  %3253 = fcmp fast oge float %3244, 1.000000e+00
  %3254 = fcmp fast oge float %3248, 1.000000e+00
  %3255 = or i1 %3253, %3254
  %3256 = fcmp fast olt float %3244, 0.000000e+00
  %3257 = fcmp fast olt float %3248, 0.000000e+00
  %3258 = or i1 %3256, %3257
  %3259 = or i1 %3255, %3258
  br i1 %3259, label %3892, label %3260, !dx.controlflow.hints !67

; <label>:3260                                    ; preds = %3225
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = extractvalue %dx.types.CBufRet.f32 %3261, 1
  %3264 = extractvalue %dx.types.CBufRet.f32 %3261, 2
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3268 = extractvalue %dx.types.CBufRet.i32 %3267, 2
  %3269 = uitofp i32 %3268 to float
  %3270 = extractvalue %dx.types.CBufRet.i32 %3267, 3
  %3271 = uitofp i32 %3270 to float
  %3272 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3273 = fmul fast float %3272, 2.000000e+00
  %3274 = fsub fast float %3244, %3262
  %3275 = fsub fast float %3248, %3263
  %3276 = fmul fast float %3273, %3274
  %3277 = fmul fast float %3273, %3275
  %3278 = fdiv fast float 1.000000e+00, %183
  %3279 = fmul fast float %3277, %3278
  %3280 = call float @dx.op.unary.f32(i32 6, float %3279)  ; FAbs(value)
  %3281 = fmul fast float %3264, %150
  %3282 = fmul fast float %3281, %3273
  %3283 = call float @dx.op.unary.f32(i32 6, float %3282)  ; FAbs(value)
  %3284 = call float @dx.op.unary.f32(i32 6, float %3276)  ; FAbs(value)
  %3285 = call float @dx.op.binary.f32(i32 35, float %3283, float %3280)  ; FMax(a,b)
  %3286 = call float @dx.op.binary.f32(i32 35, float %3284, float %3285)  ; FMax(a,b)
  %3287 = fmul fast float %3286, 2.000000e+00
  %3288 = call float @dx.op.unary.f32(i32 23, float %3287)  ; Log(value)
  %3289 = call float @dx.op.binary.f32(i32 35, float %3288, float %3269)  ; FMax(a,b)
  %3290 = call float @dx.op.unary.f32(i32 22, float %3289)  ; Frc(value)
  %3291 = fadd fast float %3290, 0xBFEA666660000000
  %3292 = fmul fast float %3291, 8.000000e+00
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3294 = call float @dx.op.unary.f32(i32 27, float %3289)  ; Round_ni(value)
  %3295 = fadd fast float %3294, %3293
  %3296 = call float @dx.op.binary.f32(i32 36, float %3295, float %3271)  ; FMin(a,b)
  %3297 = call float @dx.op.unary.f32(i32 27, float %3296)  ; Round_ni(value)
  %3298 = fsub fast float -0.000000e+00, %3297
  %3299 = call float @dx.op.unary.f32(i32 21, float %3298)  ; Exp(value)
  %3300 = fmul fast float %3299, %3273
  %3301 = fmul fast float %3300, %3244
  %3302 = fmul fast float %3300, %3248
  %3303 = fmul fast float %3301, 5.000000e-01
  %3304 = fmul fast float %3302, 5.000000e-01
  %3305 = fadd fast float %3303, 5.000000e-01
  %3306 = fadd fast float %3304, 5.000000e-01
  %3307 = fmul fast float %3301, 2.500000e-01
  %3308 = fmul fast float %3302, 2.500000e-01
  %3309 = fadd fast float %3307, 5.000000e-01
  %3310 = fadd fast float %3308, 5.000000e-01
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 536870911
  %3314 = lshr i32 %3313, 9
  %3315 = uitofp i32 %3314 to float
  %3316 = fmul fast float %3315, %3244
  %3317 = fmul fast float %3315, %3248
  %3318 = call float @dx.op.unary.f32(i32 22, float %3316)  ; Frc(value)
  %3319 = call float @dx.op.unary.f32(i32 22, float %3317)  ; Frc(value)
  %3320 = call float @dx.op.unary.f32(i32 22, float %3293)  ; Frc(value)
  %3321 = fcmp fast une float %3320, 0.000000e+00
  br i1 %3321, label %3322, label %3420, !dx.controlflow.hints !68

; <label>:3322                                    ; preds = %3260
  %3323 = call float @dx.op.unary.f32(i32 21, float %3294)  ; Exp(value)
  %3324 = fmul fast float %3323, 1.953125e-03
  %3325 = fcmp fast olt float %3318, %3324
  %3326 = fcmp fast olt float %3319, %3324
  %3327 = or i1 %3325, %3326
  %3328 = fsub fast float 1.000000e+00, %3324
  %3329 = fcmp fast ogt float %3318, %3328
  %3330 = fcmp fast ogt float %3319, %3328
  %3331 = or i1 %3329, %3330
  %3332 = or i1 %3327, %3331
  br i1 %3332, label %3333, label %3499, !dx.controlflow.hints !69

; <label>:3333                                    ; preds = %3322
  %3334 = fmul fast float %3266, 5.000000e-01
  %3335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.i32 %3335, 0
  %3337 = fmul fast float %3248, 3.530000e+02
  %3338 = uitofp i32 %3313 to float
  %3339 = fmul fast float %3337, %3338
  %3340 = fmul fast float %3244, 6.130000e+02
  %3341 = fadd fast float %3339, %3340
  %3342 = fptoui float %3341 to i32
  %3343 = add i32 %3336, %3342
  %3344 = mul i32 %3343, -63
  %3345 = lshr i32 %3344, 17
  %3346 = xor i32 %3345, %3344
  %3347 = mul i32 %3346, -511
  %3348 = mul i32 %3346, -8176
  %3349 = xor i32 %3347, %3348
  %3350 = mul i32 %3349, -7
  %3351 = mul i32 %3349, -7168
  %3352 = xor i32 %3350, %3351
  %3353 = lshr i32 %3352, 15
  %3354 = xor i32 %3353, %3350
  %3355 = and i32 %3354, 15
  %3356 = mul i32 %3355, 2
  %3357 = add i32 0, %3356
  %3358 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3357
  %3359 = load float, float* %3358, align 4
  %3360 = mul i32 %3355, 2
  %3361 = add i32 1, %3360
  %3362 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3361
  %3363 = load float, float* %3362, align 4
  %3364 = fmul fast float %3248, 2.770000e+02
  %3365 = fmul fast float %3364, %3338
  %3366 = fmul fast float %3244, 5.990000e+02
  %3367 = fadd fast float %3365, %3366
  %3368 = fptoui float %3367 to i32
  %3369 = mul i32 %3368, -63
  %3370 = lshr i32 %3369, 17
  %3371 = xor i32 %3370, %3369
  %3372 = mul i32 %3371, -511
  %3373 = mul i32 %3371, -8176
  %3374 = xor i32 %3372, %3373
  %3375 = mul i32 %3374, -7
  %3376 = mul i32 %3374, -7168
  %3377 = xor i32 %3375, %3376
  %3378 = lshr i32 %3377, 15
  %3379 = xor i32 %3378, %3375
  %3380 = and i32 %3379, 63
  %3381 = mul i32 %3380, 2
  %3382 = add i32 0, %3381
  %3383 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3382
  %3384 = load float, float* %3383, align 4
  %3385 = mul i32 %3380, 2
  %3386 = add i32 1, %3385
  %3387 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3386
  %3388 = load float, float* %3387, align 4
  %3389 = call float @dx.op.dot2.f32(i32 54, float %3359, float %3363, float %3384, float %3388)  ; Dot2(ax,ay,bx,by)
  %3390 = fsub fast float -0.000000e+00, %3384
  %3391 = call float @dx.op.dot2.f32(i32 54, float %3359, float %3363, float %3390, float %3388)  ; Dot2(ax,ay,bx,by)
  %3392 = fmul fast float %3389, %3334
  %3393 = fmul fast float %3391, %3334
  %3394 = fdiv fast float 2.000000e+00, %3300
  %3395 = fmul fast float %3323, 9.765625e-04
  %3396 = fcmp fast olt float %3318, %3395
  %3397 = fcmp fast olt float %3319, %3395
  %3398 = or i1 %3396, %3397
  %3399 = fsub fast float 1.000000e+00, %3395
  %3400 = fcmp fast ogt float %3318, %3399
  %3401 = fcmp fast ogt float %3319, %3399
  %3402 = or i1 %3400, %3401
  %3403 = or i1 %3398, %3402
  %3404 = fmul fast float %3392, 2.000000e+00
  br i1 %3403, label %3405, label %3409, !dx.controlflow.hints !70

; <label>:3405                                    ; preds = %3333
  %3406 = fmul fast float %3393, 2.000000e+00
  %3407 = fadd fast float %3404, %3305
  %3408 = fadd fast float %3406, %3306
  br label %3409

; <label>:3409                                    ; preds = %3405, %3333
  %3410 = phi float [ %3407, %3405 ], [ %3305, %3333 ]
  %3411 = phi float [ %3408, %3405 ], [ %3306, %3333 ]
  %3412 = phi i32 [ 3, %3405 ], [ 2, %3333 ]
  %3413 = fadd fast float %3392, %3309
  %3414 = fadd fast float %3393, %3310
  %3415 = fmul fast float %3404, %3394
  %3416 = fmul fast float %3394, 2.000000e+00
  %3417 = fmul fast float %3416, %3393
  %3418 = fadd fast float %3415, %3244
  %3419 = fadd fast float %3417, %3248
  br label %3499

; <label>:3420                                    ; preds = %3260
  %3421 = call float @dx.op.unary.f32(i32 21, float %3297)  ; Exp(value)
  %3422 = fmul fast float %3421, 9.765625e-04
  %3423 = fcmp fast olt float %3318, %3422
  %3424 = fcmp fast olt float %3319, %3422
  %3425 = or i1 %3423, %3424
  %3426 = fsub fast float 1.000000e+00, %3422
  %3427 = fcmp fast ogt float %3318, %3426
  %3428 = fcmp fast ogt float %3319, %3426
  %3429 = or i1 %3427, %3428
  %3430 = or i1 %3425, %3429
  br i1 %3430, label %3431, label %3499, !dx.controlflow.hints !71

; <label>:3431                                    ; preds = %3420
  %3432 = fmul fast float %3266, 5.000000e-01
  %3433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.i32 %3433, 0
  %3435 = fmul fast float %3248, 3.530000e+02
  %3436 = uitofp i32 %3313 to float
  %3437 = fmul fast float %3435, %3436
  %3438 = fmul fast float %3244, 6.130000e+02
  %3439 = fadd fast float %3437, %3438
  %3440 = fptoui float %3439 to i32
  %3441 = add i32 %3434, %3440
  %3442 = mul i32 %3441, -63
  %3443 = lshr i32 %3442, 17
  %3444 = xor i32 %3443, %3442
  %3445 = mul i32 %3444, -511
  %3446 = mul i32 %3444, -8176
  %3447 = xor i32 %3445, %3446
  %3448 = mul i32 %3447, -7
  %3449 = mul i32 %3447, -7168
  %3450 = xor i32 %3448, %3449
  %3451 = lshr i32 %3450, 15
  %3452 = xor i32 %3451, %3448
  %3453 = and i32 %3452, 15
  %3454 = mul i32 %3453, 2
  %3455 = add i32 0, %3454
  %3456 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3455
  %3457 = load float, float* %3456, align 4
  %3458 = mul i32 %3453, 2
  %3459 = add i32 1, %3458
  %3460 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3459
  %3461 = load float, float* %3460, align 4
  %3462 = fmul fast float %3248, 2.770000e+02
  %3463 = fmul fast float %3462, %3436
  %3464 = fmul fast float %3244, 5.990000e+02
  %3465 = fadd fast float %3463, %3464
  %3466 = fptoui float %3465 to i32
  %3467 = mul i32 %3466, -63
  %3468 = lshr i32 %3467, 17
  %3469 = xor i32 %3468, %3467
  %3470 = mul i32 %3469, -511
  %3471 = mul i32 %3469, -8176
  %3472 = xor i32 %3470, %3471
  %3473 = mul i32 %3472, -7
  %3474 = mul i32 %3472, -7168
  %3475 = xor i32 %3473, %3474
  %3476 = lshr i32 %3475, 15
  %3477 = xor i32 %3476, %3473
  %3478 = and i32 %3477, 63
  %3479 = mul i32 %3478, 2
  %3480 = add i32 0, %3479
  %3481 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3480
  %3482 = load float, float* %3481, align 4
  %3483 = mul i32 %3478, 2
  %3484 = add i32 1, %3483
  %3485 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3484
  %3486 = load float, float* %3485, align 4
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3457, float %3461, float %3482, float %3486)  ; Dot2(ax,ay,bx,by)
  %3488 = fsub fast float -0.000000e+00, %3482
  %3489 = call float @dx.op.dot2.f32(i32 54, float %3457, float %3461, float %3488, float %3486)  ; Dot2(ax,ay,bx,by)
  %3490 = fmul fast float %3487, %3432
  %3491 = fmul fast float %3489, %3432
  %3492 = fadd fast float %3490, %3305
  %3493 = fadd fast float %3491, %3306
  %3494 = fdiv fast float 2.000000e+00, %3300
  %3495 = fmul fast float %3494, %3490
  %3496 = fmul fast float %3491, %3494
  %3497 = fadd fast float %3495, %3244
  %3498 = fadd fast float %3496, %3248
  br label %3499

; <label>:3499                                    ; preds = %3431, %3420, %3409, %3322
  %3500 = phi float [ %3413, %3409 ], [ %3309, %3322 ], [ %3309, %3431 ], [ %3309, %3420 ]
  %3501 = phi float [ %3414, %3409 ], [ %3310, %3322 ], [ %3310, %3431 ], [ %3310, %3420 ]
  %3502 = phi float [ %3410, %3409 ], [ %3305, %3322 ], [ %3492, %3431 ], [ %3305, %3420 ]
  %3503 = phi float [ %3411, %3409 ], [ %3306, %3322 ], [ %3493, %3431 ], [ %3306, %3420 ]
  %3504 = phi i32 [ %3412, %3409 ], [ 0, %3322 ], [ 1, %3431 ], [ 0, %3420 ]
  %3505 = phi float [ %3418, %3409 ], [ %3244, %3322 ], [ %3497, %3431 ], [ %3244, %3420 ]
  %3506 = phi float [ %3419, %3409 ], [ %3248, %3322 ], [ %3498, %3431 ], [ %3248, %3420 ]
  %3507 = fsub fast float %3271, %3269
  %3508 = fptoui float %3507 to i32
  %3509 = add i32 %3508, 320
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %3509)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = fcmp fast une float %3296, %3271
  %3514 = fsub fast float %3505, %3511
  %3515 = fsub fast float %3506, %3512
  %3516 = call float @dx.op.unary.f32(i32 6, float %3514)  ; FAbs(value)
  %3517 = call float @dx.op.unary.f32(i32 6, float %3515)  ; FAbs(value)
  %3518 = fmul fast float %3516, %3300
  %3519 = fmul fast float %3517, %3300
  %3520 = fcmp fast olt float %3518, 1.000000e+00
  %3521 = fcmp fast olt float %3519, 1.000000e+00
  %3522 = and i1 %3520, %3521
  %3523 = or i1 %3513, %3522
  br i1 %3523, label %3524, label %3892, !dx.controlflow.hints !72

; <label>:3524                                    ; preds = %3499
  %3525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.i32 %3525, 2
  %3527 = sitofp i32 %3526 to float
  %3528 = fsub fast float %3296, %3527
  %3529 = call float @dx.op.unary.f32(i32 27, float %3528)  ; Round_ni(value)
  %3530 = call float @dx.op.unary.f32(i32 22, float %3296)  ; Frc(value)
  %3531 = icmp eq i32 %3504, 0
  %3532 = call float @dx.op.unary.f32(i32 22, float %3502)  ; Frc(value)
  %3533 = call float @dx.op.unary.f32(i32 22, float %3503)  ; Frc(value)
  br i1 %3531, label %3604, label %3534, !dx.controlflow.hints !73

; <label>:3534                                    ; preds = %3524
  %3535 = and i32 %3504, 1
  %3536 = icmp eq i32 %3535, 0
  br i1 %3536, label %3550, label %3537, !dx.controlflow.hints !74

; <label>:3537                                    ; preds = %3534
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3540 = fmul fast float %3532, %3539
  %3541 = fmul fast float %3533, %3539
  %3542 = fptoui float %3540 to i32
  %3543 = fptoui float %3541 to i32
  %3544 = fptoui float %3529 to i32
  %3545 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3542, i32 %3543, i32 %3544, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3549 = extractvalue %dx.types.ResRet.f32 %3545, 3
  br label %3556

; <label>:3550                                    ; preds = %3534
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3532, float %3533, float %3529, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.ResRet.f32 %3551, 1
  %3554 = extractvalue %dx.types.ResRet.f32 %3551, 2
  %3555 = extractvalue %dx.types.ResRet.f32 %3551, 3
  br label %3556

; <label>:3556                                    ; preds = %3550, %3537
  %3557 = phi float [ %3546, %3537 ], [ %3552, %3550 ]
  %3558 = phi float [ %3547, %3537 ], [ %3553, %3550 ]
  %3559 = phi float [ %3548, %3537 ], [ %3554, %3550 ]
  %3560 = phi float [ %3549, %3537 ], [ %3555, %3550 ]
  %3561 = fcmp fast ogt float %3530, 0.000000e+00
  br i1 %3561, label %3562, label %3632, !dx.controlflow.hints !75

; <label>:3562                                    ; preds = %3556
  %3563 = and i32 %3504, 2
  %3564 = icmp eq i32 %3563, 0
  %3565 = fadd fast float %3529, 1.000000e+00
  %3566 = call float @dx.op.unary.f32(i32 22, float %3500)  ; Frc(value)
  %3567 = call float @dx.op.unary.f32(i32 22, float %3501)  ; Frc(value)
  br i1 %3564, label %3581, label %3568, !dx.controlflow.hints !76

; <label>:3568                                    ; preds = %3562
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 0
  %3571 = fmul fast float %3566, %3570
  %3572 = fmul fast float %3567, %3570
  %3573 = fptoui float %3571 to i32
  %3574 = fptoui float %3572 to i32
  %3575 = fptoui float %3565 to i32
  %3576 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3573, i32 %3574, i32 %3575, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  br label %3587

; <label>:3581                                    ; preds = %3562
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3566, float %3567, float %3565, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  br label %3587

; <label>:3587                                    ; preds = %3581, %3568
  %3588 = phi float [ %3577, %3568 ], [ %3583, %3581 ]
  %3589 = phi float [ %3578, %3568 ], [ %3584, %3581 ]
  %3590 = phi float [ %3579, %3568 ], [ %3585, %3581 ]
  %3591 = phi float [ %3580, %3568 ], [ %3586, %3581 ]
  %3592 = fsub fast float %3588, %3557
  %3593 = fsub fast float %3589, %3558
  %3594 = fsub fast float %3590, %3559
  %3595 = fsub fast float %3591, %3560
  %3596 = fmul fast float %3592, %3530
  %3597 = fmul fast float %3593, %3530
  %3598 = fmul fast float %3594, %3530
  %3599 = fmul fast float %3595, %3530
  %3600 = fadd fast float %3596, %3557
  %3601 = fadd fast float %3597, %3558
  %3602 = fadd fast float %3598, %3559
  %3603 = fadd fast float %3599, %3560
  br label %3632

; <label>:3604                                    ; preds = %3524
  %3605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3532, float %3533, float %3529, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3610 = fcmp fast ogt float %3530, 0.000000e+00
  br i1 %3610, label %3611, label %3632, !dx.controlflow.hints !77

; <label>:3611                                    ; preds = %3604
  %3612 = fadd fast float %3529, 1.000000e+00
  %3613 = call float @dx.op.unary.f32(i32 22, float %3500)  ; Frc(value)
  %3614 = call float @dx.op.unary.f32(i32 22, float %3501)  ; Frc(value)
  %3615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3613, float %3614, float %3612, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = fsub fast float %3616, %3606
  %3621 = fsub fast float %3617, %3607
  %3622 = fsub fast float %3618, %3608
  %3623 = fsub fast float %3619, %3609
  %3624 = fmul fast float %3620, %3530
  %3625 = fmul fast float %3621, %3530
  %3626 = fmul fast float %3622, %3530
  %3627 = fmul fast float %3623, %3530
  %3628 = fadd fast float %3624, %3606
  %3629 = fadd fast float %3625, %3607
  %3630 = fadd fast float %3626, %3608
  %3631 = fadd fast float %3627, %3609
  br label %3632

; <label>:3632                                    ; preds = %3611, %3604, %3587, %3556
  %3633 = phi float [ %3600, %3587 ], [ %3557, %3556 ], [ %3628, %3611 ], [ %3606, %3604 ]
  %3634 = phi float [ %3601, %3587 ], [ %3558, %3556 ], [ %3629, %3611 ], [ %3607, %3604 ]
  %3635 = phi float [ %3602, %3587 ], [ %3559, %3556 ], [ %3630, %3611 ], [ %3608, %3604 ]
  %3636 = phi float [ %3603, %3587 ], [ %3560, %3556 ], [ %3631, %3611 ], [ %3609, %3604 ]
  %3637 = fadd fast float %3633, -5.000000e-01
  %3638 = fadd fast float %3635, -5.000000e-01
  %3639 = fmul fast float %3637, 0xBFD5555560000000
  %3640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3638, float %3639)  ; FMad(a,b,c)
  %3641 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3634, float 0.000000e+00)  ; FMad(a,b,c)
  %3642 = fadd fast float %3641, %3636
  %3643 = fmul fast float %3637, -7.500000e-01
  %3644 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3638, float %3643)  ; FMad(a,b,c)
  %3645 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3634, float 0.000000e+00)  ; FMad(a,b,c)
  %3646 = fadd fast float %3645, %3636
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.CBufRet.f32 %3649, 3
  %3654 = fsub fast float %3650, %3640
  %3655 = fsub fast float %3651, %3642
  %3656 = fsub fast float %3652, %3644
  %3657 = fsub fast float %3653, %3646
  %3658 = fmul fast float %3654, %3648
  %3659 = fmul fast float %3655, %3648
  %3660 = fmul fast float %3656, %3648
  %3661 = fmul fast float %3657, %3648
  %3662 = fadd fast float %3658, %3640
  %3663 = fadd fast float %3659, %3642
  %3664 = fadd fast float %3660, %3644
  %3665 = fadd fast float %3661, %3646
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = and i32 %3667, 536870911
  %3669 = uitofp i32 %3668 to float
  %3670 = fmul fast float %3669, %3505
  %3671 = fmul fast float %3669, %3506
  %3672 = fptoui float %3670 to i32
  %3673 = fptoui float %3671 to i32
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 31
  %3677 = lshr i32 %3672, %3676
  %3678 = lshr i32 %3673, %3676
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = and i32 %3680, 31
  %3682 = shl i32 1, %3681
  %3683 = call i32 @dx.op.binary.i32(i32 40, i32 %3682, i32 4)  ; UMin(a,b)
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = extractvalue %dx.types.ResRet.i32 %3684, 1
  %3687 = icmp eq i32 %3683, 0
  br i1 %3687, label %3729, label %3688

; <label>:3688                                    ; preds = %3632
  br label %3689

; <label>:3689                                    ; preds = %3717, %3688
  %3690 = phi i32 [ %3720, %3717 ], [ 0, %3688 ]
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = lshr i32 %3692, 16
  %3694 = and i32 %3693, 31
  %3695 = shl i32 %3678, %3694
  %3696 = add i32 %3695, %3677
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 31
  %3700 = shl i32 %3696, %3699
  %3701 = add i32 %3700, %3690
  %3702 = shl i32 %3701, 2
  %3703 = add i32 %3702, 32
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = icmp slt i32 %3705, 0
  %3707 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3690
  %3708 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3690
  %3709 = bitcast float* %3707 to i32*
  %3710 = bitcast float* %3708 to i32*
  br i1 %3706, label %3711, label %3717, !dx.controlflow.hints !78

; <label>:3711                                    ; preds = %3689
  %3712 = and i32 %3705, 1073741823
  %3713 = add nuw nsw i32 %3712, 20
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.i32 %3714, 1
  br label %3717

; <label>:3717                                    ; preds = %3711, %3689
  %3718 = phi i32 [ %3715, %3711 ], [ %3685, %3689 ]
  %3719 = phi i32 [ %3716, %3711 ], [ %3686, %3689 ]
  store i32 %3718, i32* %3709, align 4
  store i32 %3719, i32* %3710, align 4
  %3720 = add nuw i32 %3690, 1
  %3721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3722 = extractvalue %dx.types.CBufRet.i32 %3721, 2
  %3723 = icmp eq i32 %3722, 0
  %3724 = icmp ugt i32 %3705, -1073741825
  %3725 = and i1 %3724, %3723
  %3726 = icmp ult i32 %3720, %3683
  %3727 = and i1 %3725, %3726
  br i1 %3727, label %3689, label %3728, !dx.controlflow.hints !79

; <label>:3728                                    ; preds = %3717
  br label %3729

; <label>:3729                                    ; preds = %3728, %3632
  %3730 = phi i32 [ 0, %3632 ], [ %3720, %3728 ]
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 2
  %3733 = fptoui float %3732 to i32
  %3734 = icmp eq i32 %3733, 0
  br i1 %3734, label %3786, label %3735

; <label>:3735                                    ; preds = %3729
  br label %3736

; <label>:3736                                    ; preds = %3781, %3735
  %3737 = phi i32 [ %3782, %3781 ], [ %3730, %3735 ]
  %3738 = phi i32 [ %3783, %3781 ], [ 0, %3735 ]
  %3739 = lshr i32 %3738, 2
  %3740 = and i32 %3738, 3
  %3741 = add nuw nsw i32 %3739, 83
  %3742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %3741)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.i32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.i32 %3742, 1
  %3745 = extractvalue %dx.types.CBufRet.i32 %3742, 2
  %3746 = extractvalue %dx.types.CBufRet.i32 %3742, 3
  %3747 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %3743, i32* %3747, align 4
  %3748 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %3744, i32* %3748, align 4
  %3749 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %3745, i32* %3749, align 4
  %3750 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %3746, i32* %3750, align 4
  %3751 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %3740
  %3752 = load i32, i32* %3751, align 4, !tbaa !80
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = lshr i32 %3754, 16
  %3756 = and i32 %3755, 31
  %3757 = shl i32 %3678, %3756
  %3758 = add i32 %3757, %3677
  %3759 = shl i32 %3758, 2
  %3760 = add i32 %3759, %3752
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = icmp eq i32 %3762, 0
  br i1 %3763, label %3781, label %3764, !dx.controlflow.hints !82

; <label>:3764                                    ; preds = %3736
  %3765 = icmp slt i32 %3762, 0
  %3766 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3737
  %3767 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3737
  %3768 = bitcast float* %3766 to i32*
  %3769 = bitcast float* %3767 to i32*
  br i1 %3765, label %3770, label %3777, !dx.controlflow.hints !83

; <label>:3770                                    ; preds = %3764
  %3771 = and i32 %3762, 1073741823
  %3772 = add i32 %3752, 20
  %3773 = add i32 %3772, %3771
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.i32 %3774, 1
  br label %3777

; <label>:3777                                    ; preds = %3770, %3764
  %3778 = phi i32 [ %3775, %3770 ], [ %3685, %3764 ]
  %3779 = phi i32 [ %3776, %3770 ], [ %3686, %3764 ]
  store i32 %3778, i32* %3768, align 4
  store i32 %3779, i32* %3769, align 4
  %3780 = add i32 %3737, 1
  br label %3781

; <label>:3781                                    ; preds = %3777, %3736
  %3782 = phi i32 [ %3737, %3736 ], [ %3780, %3777 ]
  %3783 = add nuw i32 %3738, 1
  %3784 = icmp eq i32 %3783, %3733
  br i1 %3784, label %3785, label %3736

; <label>:3785                                    ; preds = %3781
  br label %3786

; <label>:3786                                    ; preds = %3785, %3729
  %3787 = phi i32 [ %3730, %3729 ], [ %3782, %3785 ]
  %3788 = icmp eq i32 %3787, 1
  %3789 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  %3790 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  br i1 %3788, label %3791, label %3794, !dx.controlflow.hints !84

; <label>:3791                                    ; preds = %3786
  %3792 = load float, float* %3789, align 4
  %3793 = load float, float* %3790, align 4
  br label %3821

; <label>:3794                                    ; preds = %3786
  %3795 = load float, float* %3789, align 4
  %3796 = load float, float* %3790, align 4
  %3797 = fdiv fast float 1.000000e+00, %3796
  %3798 = fsub fast float %3795, %3797
  %3799 = icmp ugt i32 %3787, 1
  br i1 %3799, label %3800, label %3816

; <label>:3800                                    ; preds = %3794
  br label %3801

; <label>:3801                                    ; preds = %3801, %3800
  %3802 = phi float [ %3811, %3801 ], [ %3798, %3800 ]
  %3803 = phi float [ %3812, %3801 ], [ %3795, %3800 ]
  %3804 = phi i32 [ %3813, %3801 ], [ 1, %3800 ]
  %3805 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %3804
  %3806 = load float, float* %3805, align 4
  %3807 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3804
  %3808 = load float, float* %3807, align 4
  %3809 = fdiv fast float 1.000000e+00, %3808
  %3810 = fsub fast float %3806, %3809
  %3811 = call float @dx.op.binary.f32(i32 36, float %3802, float %3810)  ; FMin(a,b)
  %3812 = call float @dx.op.binary.f32(i32 35, float %3803, float %3806)  ; FMax(a,b)
  %3813 = add nuw i32 %3804, 1
  %3814 = icmp eq i32 %3813, %3787
  br i1 %3814, label %3815, label %3801

; <label>:3815                                    ; preds = %3801
  br label %3816

; <label>:3816                                    ; preds = %3815, %3794
  %3817 = phi float [ %3798, %3794 ], [ %3811, %3815 ]
  %3818 = phi float [ %3795, %3794 ], [ %3812, %3815 ]
  %3819 = fsub fast float %3818, %3817
  %3820 = fdiv fast float 1.000000e+00, %3819
  br label %3821

; <label>:3821                                    ; preds = %3816, %3791
  %3822 = phi float [ %3792, %3791 ], [ %3818, %3816 ]
  %3823 = phi float [ %3793, %3791 ], [ %3820, %3816 ]
  %3824 = fadd fast float %3252, %3822
  %3825 = fmul fast float %3824, %3823
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = fmul fast float %3826, 2.000000e+00
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = fmul fast float %3662, %3662
  %3830 = fsub fast float %3663, %3829
  %3831 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3830)  ; FMax(a,b)
  %3832 = fdiv fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3663, %3662
  %3834 = fsub fast float %3664, %3833
  %3835 = fsub fast float %3828, %3662
  %3836 = fmul fast float %3828, %3828
  %3837 = fsub fast float %3836, %3663
  %3838 = fmul fast float %3832, %3834
  %3839 = fmul fast float %3838, %3835
  %3840 = fsub fast float %3837, %3839
  %3841 = fmul fast float %3663, %3663
  %3842 = fsub fast float %3665, %3841
  %3843 = fmul fast float %3834, %3834
  %3844 = fmul fast float %3843, %3832
  %3845 = fsub fast float %3842, %3844
  %3846 = fdiv fast float %3840, %3845
  %3847 = fmul fast float %3846, %3834
  %3848 = fsub fast float %3835, %3847
  %3849 = fmul fast float %3848, %3832
  %3850 = fmul fast float %3849, %3662
  %3851 = fsub fast float 1.000000e+00, %3850
  %3852 = fmul fast float %3846, %3663
  %3853 = fsub fast float %3851, %3852
  %3854 = fmul fast float %3849, %3849
  %3855 = fmul fast float %3846, 4.000000e+00
  %3856 = fmul fast float %3855, %3853
  %3857 = fsub fast float %3854, %3856
  %3858 = call float @dx.op.unary.f32(i32 24, float %3857)  ; Sqrt(value)
  %3859 = fcmp fast oge float %3849, 0.000000e+00
  %3860 = fsub fast float -0.000000e+00, %3858
  %3861 = select i1 %3859, float %3860, float %3858
  %3862 = fsub fast float %3861, %3849
  %3863 = fdiv fast float %3862, %3846
  %3864 = fdiv fast float %3853, %3862
  %3865 = fmul fast float %3863, 5.000000e-01
  %3866 = fmul fast float %3864, 2.000000e+00
  %3867 = select i1 %3859, float %3865, float %3866
  %3868 = select i1 %3859, float %3866, float %3865
  %3869 = call float @dx.op.binary.f32(i32 35, float %3867, float %3868)  ; FMax(a,b)
  %3870 = call float @dx.op.binary.f32(i32 36, float %3867, float %3868)  ; FMin(a,b)
  %3871 = fcmp fast ogt float %3828, %3869
  %3872 = fsub fast float %3828, %3870
  %3873 = fsub fast float %3828, %3869
  %3874 = fsub fast float %3869, %3870
  %3875 = select i1 %3871, float %3873, float %3874
  %3876 = fmul float %3872, %3875
  %3877 = select i1 %3871, float %3870, float %3828
  %3878 = fcmp fast ogt float %3828, %3870
  %3879 = fmul fast float %3877, %3869
  %3880 = fadd fast float %3877, %3869
  %3881 = fmul fast float %3880, %3662
  %3882 = fadd fast float %3879, %3663
  %3883 = fsub fast float %3882, %3881
  %3884 = fdiv fast float %3883, %3876
  %3885 = select i1 %3878, float %3884, float 0.000000e+00
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = select i1 %3871, float %3886, float %3885
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3647, 3
  %3890 = fmul fast float %3889, %3888
  %3891 = fsub fast float 1.000000e+00, %3890
  br label %3892

; <label>:3892                                    ; preds = %3821, %3499, %3225, %3183
  %3893 = phi float [ 1.000000e+00, %3183 ], [ %3891, %3821 ], [ 1.000000e+00, %3225 ], [ 1.000000e+00, %3499 ]
  %3894 = fcmp fast ogt float %3218, 0.000000e+00
  br i1 %3894, label %3895, label %4063, !dx.controlflow.hints !90

; <label>:3895                                    ; preds = %3892
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3900 = fmul fast float %3897, %194
  %3901 = fadd fast float %3899, %221
  %3902 = fadd fast float %3901, %3900
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 2
  %3905 = extractvalue %dx.types.CBufRet.f32 %3903, 3
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3908 = call float @dx.op.binary.f32(i32 35, float %3902, float 0.000000e+00)  ; FMax(a,b)
  %3909 = fadd fast float %3908, 0x3F10000000000000
  %3910 = fcmp fast oeq float %3907, 0.000000e+00
  br i1 %3910, label %3911, label %3978, !dx.controlflow.hints !54

; <label>:3911                                    ; preds = %3895
  %3912 = extractvalue %dx.types.CBufRet.f32 %3903, 1
  %3913 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3914 = fmul fast float %3913, %3114
  %3915 = fmul fast float %3912, %3115
  %3916 = fadd fast float %3914, 5.000000e-01
  %3917 = call float @dx.op.unary.f32(i32 27, float %3916)  ; Round_ni(value)
  %3918 = fadd fast float %3915, 5.000000e-01
  %3919 = call float @dx.op.unary.f32(i32 27, float %3918)  ; Round_ni(value)
  %3920 = fsub fast float %3916, %3917
  %3921 = fsub fast float %3918, %3919
  %3922 = fadd fast float %3917, -5.000000e-01
  %3923 = fadd fast float %3919, -5.000000e-01
  %3924 = fmul fast float %3920, 2.000000e+00
  %3925 = fsub fast float 3.000000e+00, %3924
  %3926 = fadd fast float %3924, 1.000000e+00
  %3927 = fsub fast float 2.000000e+00, %3920
  %3928 = bitcast float %3925 to i32
  %3929 = sub nsw i32 2129859010, %3928
  %3930 = bitcast i32 %3929 to float
  %3931 = fmul fast float %3930, %3927
  %3932 = fadd fast float %3931, -1.000000e+00
  %3933 = bitcast float %3926 to i32
  %3934 = sub nsw i32 2129859010, %3933
  %3935 = bitcast i32 %3934 to float
  %3936 = fmul fast float %3935, %3920
  %3937 = fadd fast float %3936, 1.000000e+00
  %3938 = fmul fast float %3921, 2.000000e+00
  %3939 = fsub fast float 3.000000e+00, %3938
  %3940 = fadd fast float %3938, 1.000000e+00
  %3941 = fsub fast float 2.000000e+00, %3921
  %3942 = bitcast float %3939 to i32
  %3943 = sub nsw i32 2129859010, %3942
  %3944 = bitcast i32 %3943 to float
  %3945 = fmul fast float %3944, %3941
  %3946 = fadd fast float %3945, -1.000000e+00
  %3947 = bitcast float %3940 to i32
  %3948 = sub nsw i32 2129859010, %3947
  %3949 = bitcast i32 %3948 to float
  %3950 = fmul fast float %3949, %3921
  %3951 = fadd fast float %3950, 1.000000e+00
  %3952 = fadd fast float %3932, %3922
  %3953 = fmul fast float %3952, %3904
  %3954 = fadd fast float %3946, %3923
  %3955 = fmul fast float %3954, %3905
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %3953, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = fmul fast float %3957, %3925
  %3959 = fadd fast float %3937, %3922
  %3960 = fmul fast float %3959, %3904
  %3961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %3960, float %3955, float undef, float undef, i32 0, i32 0, i32 undef, float %3909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = fmul fast float %3962, %3926
  %3964 = fadd fast float %3951, %3923
  %3965 = fmul fast float %3964, %3905
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %3953, float %3965, float undef, float undef, i32 0, i32 0, i32 undef, float %3909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = fmul fast float %3967, %3925
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %3960, float %3965, float undef, float undef, i32 0, i32 0, i32 undef, float %3909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = fmul fast float %3970, %3926
  %3972 = fadd fast float %3971, %3968
  %3973 = fmul fast float %3972, %3940
  %3974 = fadd fast float %3963, %3958
  %3975 = fmul fast float %3974, %3939
  %3976 = fadd fast float %3975, %3973
  %3977 = fmul fast float %3976, 6.250000e-02
  br label %4063

; <label>:3978                                    ; preds = %3895
  %3979 = fmul fast float %232, 0x401921FB60000000
  %3980 = call float @dx.op.unary.f32(i32 13, float %3979)  ; Sin(value)
  %3981 = call float @dx.op.unary.f32(i32 12, float %3979)  ; Cos(value)
  %3982 = fsub fast float -0.000000e+00, %3980
  br label %3983

; <label>:3983                                    ; preds = %4032, %3978
  %3984 = phi float [ 0.000000e+00, %3978 ], [ %4027, %4032 ]
  %3985 = phi float [ 0.000000e+00, %3978 ], [ %4029, %4032 ]
  %3986 = phi i32 [ 0, %3978 ], [ %4033, %4032 ]
  %3987 = mul i32 %3986, 2
  %3988 = add i32 0, %3987
  %3989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3988
  %3990 = load float, float* %3989, align 4
  %3991 = mul i32 %3986, 2
  %3992 = add i32 1, %3991
  %3993 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3992
  %3994 = load float, float* %3993, align 4
  %3995 = fmul fast float %3990, %3981
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3982, float %3995)  ; FMad(a,b,c)
  %3997 = fmul fast float %3990, %3980
  %3998 = call float @dx.op.tertiary.f32(i32 46, float %3994, float %3981, float %3997)  ; FMad(a,b,c)
  %3999 = fmul fast float %3996, %3907
  %4000 = fmul fast float %3998, %3907
  %4001 = fadd fast float %3999, %3114
  %4002 = fadd fast float %4000, %3115
  %4003 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %31, float %4001, float %4002, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.ResRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.ResRet.f32 %4003, 2
  %4007 = extractvalue %dx.types.ResRet.f32 %4003, 3
  %4008 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %4004, float* %4008, align 4
  %4009 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %4005, float* %4009, align 4
  %4010 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %4006, float* %4010, align 4
  %4011 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %4007, float* %4011, align 4
  %4012 = fsub fast float %4004, %3909
  %4013 = fcmp fast olt float %4012, 0.000000e+00
  %4014 = select i1 %4013, float 0.000000e+00, float 1.000000e+00
  %4015 = fadd fast float %4014, %3984
  %4016 = fmul fast float %4014, %4012
  %4017 = fadd fast float %4016, %3985
  br label %4018

; <label>:4018                                    ; preds = %4018, %3983
  %4019 = phi i32 [ 1, %3983 ], [ %4030, %4018 ]
  %4020 = phi float [ %4017, %3983 ], [ %4029, %4018 ]
  %4021 = phi float [ %4015, %3983 ], [ %4027, %4018 ]
  %4022 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %4019
  %4023 = load float, float* %4022, align 4, !tbaa !55
  %4024 = fsub fast float %4023, %3909
  %4025 = fcmp fast olt float %4024, 0.000000e+00
  %4026 = select i1 %4025, float 0.000000e+00, float 1.000000e+00
  %4027 = fadd fast float %4026, %4021
  %4028 = fmul fast float %4026, %4024
  %4029 = fadd fast float %4028, %4020
  %4030 = add nuw nsw i32 %4019, 1
  %4031 = icmp eq i32 %4030, 4
  br i1 %4031, label %4032, label %4018, !llvm.loop !59

; <label>:4032                                    ; preds = %4018
  %4033 = add nuw nsw i32 %3986, 1
  %4034 = icmp eq i32 %4033, 8
  br i1 %4034, label %4035, label %3983, !llvm.loop !61

; <label>:4035                                    ; preds = %4032
  %4036 = fdiv fast float 1.000000e+00, %4027
  %4037 = fmul fast float %4036, %4029
  %4038 = fdiv fast float 1.000000e+00, %3909
  %4039 = fmul fast float %4037, %4038
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = call float @dx.op.binary.f32(i32 35, float %4040, float 0.000000e+00)  ; FMax(a,b)
  %4042 = fmul fast float %4027, 3.125000e-02
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %4043, 2.000000e+00
  %4045 = fadd fast float %4044, -1.000000e+00
  %4046 = fcmp fast ogt float %4045, 0.000000e+00
  %4047 = fcmp fast olt float %4045, 0.000000e+00
  %4048 = zext i1 %4046 to i32
  %4049 = zext i1 %4047 to i32
  %4050 = sub nsw i32 %4048, %4049
  %4051 = sitofp i32 %4050 to float
  %4052 = fmul fast float %4051, %4045
  %4053 = fsub fast float 1.000000e+00, %4052
  %4054 = fmul fast float %4053, %4053
  %4055 = fmul fast float %4054, %4053
  %4056 = fsub fast float %4053, %4055
  %4057 = fmul fast float %4056, %4041
  %4058 = fsub fast float 1.000000e+00, %4055
  %4059 = fsub fast float %4058, %4057
  %4060 = fmul fast float %4051, 5.000000e-01
  %4061 = fmul fast float %4060, %4059
  %4062 = fsub fast float 5.000000e-01, %4061
  br label %4063

; <label>:4063                                    ; preds = %4035, %3911, %3892
  %4064 = phi float [ 1.000000e+00, %3892 ], [ %3977, %3911 ], [ %4062, %4035 ]
  %4065 = fcmp fast ogt float %3216, 0.000000e+00
  br i1 %4065, label %4066, label %4234, !dx.controlflow.hints !91

; <label>:4066                                    ; preds = %4063
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4071 = fmul fast float %4068, %194
  %4072 = fadd fast float %4070, %221
  %4073 = fadd fast float %4072, %4071
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4079 = call float @dx.op.binary.f32(i32 35, float %4073, float 0.000000e+00)  ; FMax(a,b)
  %4080 = fadd fast float %4079, 0x3F10000000000000
  %4081 = fcmp fast oeq float %4078, 0.000000e+00
  br i1 %4081, label %4082, label %4149, !dx.controlflow.hints !54

; <label>:4082                                    ; preds = %4066
  %4083 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4085 = fmul fast float %4084, %3106
  %4086 = fmul fast float %4083, %3107
  %4087 = fadd fast float %4085, 5.000000e-01
  %4088 = call float @dx.op.unary.f32(i32 27, float %4087)  ; Round_ni(value)
  %4089 = fadd fast float %4086, 5.000000e-01
  %4090 = call float @dx.op.unary.f32(i32 27, float %4089)  ; Round_ni(value)
  %4091 = fsub fast float %4087, %4088
  %4092 = fsub fast float %4089, %4090
  %4093 = fadd fast float %4088, -5.000000e-01
  %4094 = fadd fast float %4090, -5.000000e-01
  %4095 = fmul fast float %4091, 2.000000e+00
  %4096 = fsub fast float 3.000000e+00, %4095
  %4097 = fadd fast float %4095, 1.000000e+00
  %4098 = fsub fast float 2.000000e+00, %4091
  %4099 = bitcast float %4096 to i32
  %4100 = sub nsw i32 2129859010, %4099
  %4101 = bitcast i32 %4100 to float
  %4102 = fmul fast float %4101, %4098
  %4103 = fadd fast float %4102, -1.000000e+00
  %4104 = bitcast float %4097 to i32
  %4105 = sub nsw i32 2129859010, %4104
  %4106 = bitcast i32 %4105 to float
  %4107 = fmul fast float %4106, %4091
  %4108 = fadd fast float %4107, 1.000000e+00
  %4109 = fmul fast float %4092, 2.000000e+00
  %4110 = fsub fast float 3.000000e+00, %4109
  %4111 = fadd fast float %4109, 1.000000e+00
  %4112 = fsub fast float 2.000000e+00, %4092
  %4113 = bitcast float %4110 to i32
  %4114 = sub nsw i32 2129859010, %4113
  %4115 = bitcast i32 %4114 to float
  %4116 = fmul fast float %4115, %4112
  %4117 = fadd fast float %4116, -1.000000e+00
  %4118 = bitcast float %4111 to i32
  %4119 = sub nsw i32 2129859010, %4118
  %4120 = bitcast i32 %4119 to float
  %4121 = fmul fast float %4120, %4092
  %4122 = fadd fast float %4121, 1.000000e+00
  %4123 = fadd fast float %4103, %4093
  %4124 = fmul fast float %4123, %4075
  %4125 = fadd fast float %4117, %4094
  %4126 = fmul fast float %4125, %4076
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %4124, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4080)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fmul fast float %4128, %4096
  %4130 = fadd fast float %4108, %4093
  %4131 = fmul fast float %4130, %4075
  %4132 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %4131, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4080)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = fmul fast float %4133, %4097
  %4135 = fadd fast float %4122, %4094
  %4136 = fmul fast float %4135, %4076
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %4124, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4080)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = fmul fast float %4138, %4096
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %4131, float %4136, float undef, float undef, i32 0, i32 0, i32 undef, float %4080)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = fmul fast float %4141, %4097
  %4143 = fadd fast float %4142, %4139
  %4144 = fmul fast float %4143, %4111
  %4145 = fadd fast float %4134, %4129
  %4146 = fmul fast float %4145, %4110
  %4147 = fadd fast float %4146, %4144
  %4148 = fmul fast float %4147, 6.250000e-02
  br label %4234

; <label>:4149                                    ; preds = %4066
  %4150 = fmul fast float %232, 0x401921FB60000000
  %4151 = call float @dx.op.unary.f32(i32 13, float %4150)  ; Sin(value)
  %4152 = call float @dx.op.unary.f32(i32 12, float %4150)  ; Cos(value)
  %4153 = fsub fast float -0.000000e+00, %4151
  br label %4154

; <label>:4154                                    ; preds = %4203, %4149
  %4155 = phi float [ 0.000000e+00, %4149 ], [ %4198, %4203 ]
  %4156 = phi float [ 0.000000e+00, %4149 ], [ %4200, %4203 ]
  %4157 = phi i32 [ 0, %4149 ], [ %4204, %4203 ]
  %4158 = mul i32 %4157, 2
  %4159 = add i32 0, %4158
  %4160 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4159
  %4161 = load float, float* %4160, align 4
  %4162 = mul i32 %4157, 2
  %4163 = add i32 1, %4162
  %4164 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4163
  %4165 = load float, float* %4164, align 4
  %4166 = fmul fast float %4161, %4152
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4153, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4161, %4151
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4165, float %4152, float %4168)  ; FMad(a,b,c)
  %4170 = fmul fast float %4167, %4078
  %4171 = fmul fast float %4169, %4078
  %4172 = fadd fast float %4170, %3106
  %4173 = fadd fast float %4171, %3107
  %4174 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %31, float %4172, float %4173, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.ResRet.f32 %4174, 3
  %4179 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 0
  store float %4175, float* %4179, align 4
  %4180 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 1
  store float %4176, float* %4180, align 4
  %4181 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 2
  store float %4177, float* %4181, align 4
  %4182 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 3
  store float %4178, float* %4182, align 4
  %4183 = fsub fast float %4175, %4080
  %4184 = fcmp fast olt float %4183, 0.000000e+00
  %4185 = select i1 %4184, float 0.000000e+00, float 1.000000e+00
  %4186 = fadd fast float %4185, %4155
  %4187 = fmul fast float %4185, %4183
  %4188 = fadd fast float %4187, %4156
  br label %4189

; <label>:4189                                    ; preds = %4189, %4154
  %4190 = phi i32 [ 1, %4154 ], [ %4201, %4189 ]
  %4191 = phi float [ %4188, %4154 ], [ %4200, %4189 ]
  %4192 = phi float [ %4186, %4154 ], [ %4198, %4189 ]
  %4193 = getelementptr [4 x float], [4 x float]* %48, i32 0, i32 %4190
  %4194 = load float, float* %4193, align 4, !tbaa !55
  %4195 = fsub fast float %4194, %4080
  %4196 = fcmp fast olt float %4195, 0.000000e+00
  %4197 = select i1 %4196, float 0.000000e+00, float 1.000000e+00
  %4198 = fadd fast float %4197, %4192
  %4199 = fmul fast float %4197, %4195
  %4200 = fadd fast float %4199, %4191
  %4201 = add nuw nsw i32 %4190, 1
  %4202 = icmp eq i32 %4201, 4
  br i1 %4202, label %4203, label %4189, !llvm.loop !59

; <label>:4203                                    ; preds = %4189
  %4204 = add nuw nsw i32 %4157, 1
  %4205 = icmp eq i32 %4204, 8
  br i1 %4205, label %4206, label %4154, !llvm.loop !61

; <label>:4206                                    ; preds = %4203
  %4207 = fdiv fast float 1.000000e+00, %4198
  %4208 = fmul fast float %4207, %4200
  %4209 = fdiv fast float 1.000000e+00, %4080
  %4210 = fmul fast float %4208, %4209
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = call float @dx.op.binary.f32(i32 35, float %4211, float 0.000000e+00)  ; FMax(a,b)
  %4213 = fmul fast float %4198, 3.125000e-02
  %4214 = call float @dx.op.unary.f32(i32 7, float %4213)  ; Saturate(value)
  %4215 = fmul fast float %4214, 2.000000e+00
  %4216 = fadd fast float %4215, -1.000000e+00
  %4217 = fcmp fast ogt float %4216, 0.000000e+00
  %4218 = fcmp fast olt float %4216, 0.000000e+00
  %4219 = zext i1 %4217 to i32
  %4220 = zext i1 %4218 to i32
  %4221 = sub nsw i32 %4219, %4220
  %4222 = sitofp i32 %4221 to float
  %4223 = fmul fast float %4222, %4216
  %4224 = fsub fast float 1.000000e+00, %4223
  %4225 = fmul fast float %4224, %4224
  %4226 = fmul fast float %4225, %4224
  %4227 = fsub fast float %4224, %4226
  %4228 = fmul fast float %4227, %4212
  %4229 = fsub fast float 1.000000e+00, %4226
  %4230 = fsub fast float %4229, %4228
  %4231 = fmul fast float %4222, 5.000000e-01
  %4232 = fmul fast float %4231, %4230
  %4233 = fsub fast float 5.000000e-01, %4232
  br label %4234

; <label>:4234                                    ; preds = %4206, %4082, %4063
  %4235 = phi float [ 1.000000e+00, %4063 ], [ %4148, %4082 ], [ %4233, %4206 ]
  %4236 = fcmp fast ogt float %3215, 0.000000e+00
  br i1 %4236, label %4237, label %4559, !dx.controlflow.hints !92

; <label>:4237                                    ; preds = %4234
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = fmul fast float %4239, %194
  %4243 = fadd fast float %4241, %221
  %4244 = fadd fast float %4243, %4242
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4247 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 0
  %4250 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4251 = fadd fast float %4250, 0x3F10000000000000
  %4252 = fcmp fast oeq float %4249, 0.000000e+00
  br i1 %87, label %4253, label %4406, !dx.controlflow.hints !93

; <label>:4253                                    ; preds = %4237
  br i1 %4252, label %4254, label %4321, !dx.controlflow.hints !54

; <label>:4254                                    ; preds = %4253
  %4255 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4256 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4257 = fmul fast float %4256, %213
  %4258 = fmul fast float %4255, %217
  %4259 = fadd fast float %4257, 5.000000e-01
  %4260 = call float @dx.op.unary.f32(i32 27, float %4259)  ; Round_ni(value)
  %4261 = fadd fast float %4258, 5.000000e-01
  %4262 = call float @dx.op.unary.f32(i32 27, float %4261)  ; Round_ni(value)
  %4263 = fsub fast float %4259, %4260
  %4264 = fsub fast float %4261, %4262
  %4265 = fadd fast float %4260, -5.000000e-01
  %4266 = fadd fast float %4262, -5.000000e-01
  %4267 = fmul fast float %4263, 2.000000e+00
  %4268 = fsub fast float 3.000000e+00, %4267
  %4269 = fadd fast float %4267, 1.000000e+00
  %4270 = fsub fast float 2.000000e+00, %4263
  %4271 = bitcast float %4268 to i32
  %4272 = sub nsw i32 2129859010, %4271
  %4273 = bitcast i32 %4272 to float
  %4274 = fmul fast float %4273, %4270
  %4275 = fadd fast float %4274, -1.000000e+00
  %4276 = bitcast float %4269 to i32
  %4277 = sub nsw i32 2129859010, %4276
  %4278 = bitcast i32 %4277 to float
  %4279 = fmul fast float %4278, %4263
  %4280 = fadd fast float %4279, 1.000000e+00
  %4281 = fmul fast float %4264, 2.000000e+00
  %4282 = fsub fast float 3.000000e+00, %4281
  %4283 = fadd fast float %4281, 1.000000e+00
  %4284 = fsub fast float 2.000000e+00, %4264
  %4285 = bitcast float %4282 to i32
  %4286 = sub nsw i32 2129859010, %4285
  %4287 = bitcast i32 %4286 to float
  %4288 = fmul fast float %4287, %4284
  %4289 = fadd fast float %4288, -1.000000e+00
  %4290 = bitcast float %4283 to i32
  %4291 = sub nsw i32 2129859010, %4290
  %4292 = bitcast i32 %4291 to float
  %4293 = fmul fast float %4292, %4264
  %4294 = fadd fast float %4293, 1.000000e+00
  %4295 = fadd fast float %4275, %4265
  %4296 = fmul fast float %4295, %4246
  %4297 = fadd fast float %4289, %4266
  %4298 = fmul fast float %4297, %4247
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %4296, float %4298, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = fmul fast float %4300, %4268
  %4302 = fadd fast float %4280, %4265
  %4303 = fmul fast float %4302, %4246
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %4303, float %4298, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fmul fast float %4305, %4269
  %4307 = fadd fast float %4294, %4266
  %4308 = fmul fast float %4307, %4247
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %4296, float %4308, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = fmul fast float %4310, %4268
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %4303, float %4308, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4269
  %4315 = fadd fast float %4314, %4311
  %4316 = fmul fast float %4315, %4283
  %4317 = fadd fast float %4306, %4301
  %4318 = fmul fast float %4317, %4282
  %4319 = fadd fast float %4318, %4316
  %4320 = fmul fast float %4319, 6.250000e-02
  br label %4559

; <label>:4321                                    ; preds = %4253
  %4322 = fmul fast float %232, 0x401921FB60000000
  %4323 = call float @dx.op.unary.f32(i32 13, float %4322)  ; Sin(value)
  %4324 = call float @dx.op.unary.f32(i32 12, float %4322)  ; Cos(value)
  %4325 = fsub fast float -0.000000e+00, %4323
  br label %4326

; <label>:4326                                    ; preds = %4375, %4321
  %4327 = phi float [ 0.000000e+00, %4321 ], [ %4370, %4375 ]
  %4328 = phi float [ 0.000000e+00, %4321 ], [ %4372, %4375 ]
  %4329 = phi i32 [ 0, %4321 ], [ %4376, %4375 ]
  %4330 = mul i32 %4329, 2
  %4331 = add i32 0, %4330
  %4332 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4331
  %4333 = load float, float* %4332, align 4
  %4334 = mul i32 %4329, 2
  %4335 = add i32 1, %4334
  %4336 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4335
  %4337 = load float, float* %4336, align 4
  %4338 = fmul fast float %4333, %4324
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4325, float %4338)  ; FMad(a,b,c)
  %4340 = fmul fast float %4333, %4323
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4324, float %4340)  ; FMad(a,b,c)
  %4342 = fmul fast float %4339, %4249
  %4343 = fmul fast float %4341, %4249
  %4344 = fadd fast float %4342, %213
  %4345 = fadd fast float %4343, %217
  %4346 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %31, float %4344, float %4345, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %4347, float* %4351, align 4
  %4352 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %4348, float* %4352, align 4
  %4353 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %4349, float* %4353, align 4
  %4354 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %4350, float* %4354, align 4
  %4355 = fsub fast float %4347, %4251
  %4356 = fcmp fast olt float %4355, 0.000000e+00
  %4357 = select i1 %4356, float 0.000000e+00, float 1.000000e+00
  %4358 = fadd fast float %4357, %4327
  %4359 = fmul fast float %4357, %4355
  %4360 = fadd fast float %4359, %4328
  br label %4361

; <label>:4361                                    ; preds = %4361, %4326
  %4362 = phi i32 [ 1, %4326 ], [ %4373, %4361 ]
  %4363 = phi float [ %4360, %4326 ], [ %4372, %4361 ]
  %4364 = phi float [ %4358, %4326 ], [ %4370, %4361 ]
  %4365 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %4362
  %4366 = load float, float* %4365, align 4, !tbaa !55
  %4367 = fsub fast float %4366, %4251
  %4368 = fcmp fast olt float %4367, 0.000000e+00
  %4369 = select i1 %4368, float 0.000000e+00, float 1.000000e+00
  %4370 = fadd fast float %4369, %4364
  %4371 = fmul fast float %4369, %4367
  %4372 = fadd fast float %4371, %4363
  %4373 = add nuw nsw i32 %4362, 1
  %4374 = icmp eq i32 %4373, 4
  br i1 %4374, label %4375, label %4361, !llvm.loop !59

; <label>:4375                                    ; preds = %4361
  %4376 = add nuw nsw i32 %4329, 1
  %4377 = icmp eq i32 %4376, 8
  br i1 %4377, label %4378, label %4326, !llvm.loop !61

; <label>:4378                                    ; preds = %4375
  %4379 = fdiv fast float 1.000000e+00, %4370
  %4380 = fmul fast float %4379, %4372
  %4381 = fdiv fast float 1.000000e+00, %4251
  %4382 = fmul fast float %4380, %4381
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = call float @dx.op.binary.f32(i32 35, float %4383, float 0.000000e+00)  ; FMax(a,b)
  %4385 = fmul fast float %4370, 3.125000e-02
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fmul fast float %4386, 2.000000e+00
  %4388 = fadd fast float %4387, -1.000000e+00
  %4389 = fcmp fast ogt float %4388, 0.000000e+00
  %4390 = fcmp fast olt float %4388, 0.000000e+00
  %4391 = zext i1 %4389 to i32
  %4392 = zext i1 %4390 to i32
  %4393 = sub nsw i32 %4391, %4392
  %4394 = sitofp i32 %4393 to float
  %4395 = fmul fast float %4394, %4388
  %4396 = fsub fast float 1.000000e+00, %4395
  %4397 = fmul fast float %4396, %4396
  %4398 = fmul fast float %4397, %4396
  %4399 = fsub fast float %4396, %4398
  %4400 = fmul fast float %4399, %4384
  %4401 = fsub fast float 1.000000e+00, %4398
  %4402 = fsub fast float %4401, %4400
  %4403 = fmul fast float %4394, 5.000000e-01
  %4404 = fmul fast float %4403, %4402
  %4405 = fsub fast float 5.000000e-01, %4404
  br label %4559

; <label>:4406                                    ; preds = %4237
  br i1 %4252, label %4407, label %4474, !dx.controlflow.hints !54

; <label>:4407                                    ; preds = %4406
  %4408 = extractvalue %dx.types.CBufRet.f32 %4245, 1
  %4409 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4410 = fmul fast float %4409, %213
  %4411 = fmul fast float %4408, %217
  %4412 = fadd fast float %4410, 5.000000e-01
  %4413 = call float @dx.op.unary.f32(i32 27, float %4412)  ; Round_ni(value)
  %4414 = fadd fast float %4411, 5.000000e-01
  %4415 = call float @dx.op.unary.f32(i32 27, float %4414)  ; Round_ni(value)
  %4416 = fsub fast float %4412, %4413
  %4417 = fsub fast float %4414, %4415
  %4418 = fadd fast float %4413, -5.000000e-01
  %4419 = fadd fast float %4415, -5.000000e-01
  %4420 = fmul fast float %4416, 2.000000e+00
  %4421 = fsub fast float 3.000000e+00, %4420
  %4422 = fadd fast float %4420, 1.000000e+00
  %4423 = fsub fast float 2.000000e+00, %4416
  %4424 = bitcast float %4421 to i32
  %4425 = sub nsw i32 2129859010, %4424
  %4426 = bitcast i32 %4425 to float
  %4427 = fmul fast float %4426, %4423
  %4428 = fadd fast float %4427, -1.000000e+00
  %4429 = bitcast float %4422 to i32
  %4430 = sub nsw i32 2129859010, %4429
  %4431 = bitcast i32 %4430 to float
  %4432 = fmul fast float %4431, %4416
  %4433 = fadd fast float %4432, 1.000000e+00
  %4434 = fmul fast float %4417, 2.000000e+00
  %4435 = fsub fast float 3.000000e+00, %4434
  %4436 = fadd fast float %4434, 1.000000e+00
  %4437 = fsub fast float 2.000000e+00, %4417
  %4438 = bitcast float %4435 to i32
  %4439 = sub nsw i32 2129859010, %4438
  %4440 = bitcast i32 %4439 to float
  %4441 = fmul fast float %4440, %4437
  %4442 = fadd fast float %4441, -1.000000e+00
  %4443 = bitcast float %4436 to i32
  %4444 = sub nsw i32 2129859010, %4443
  %4445 = bitcast i32 %4444 to float
  %4446 = fmul fast float %4445, %4417
  %4447 = fadd fast float %4446, 1.000000e+00
  %4448 = fadd fast float %4428, %4418
  %4449 = fmul fast float %4448, %4246
  %4450 = fadd fast float %4442, %4419
  %4451 = fmul fast float %4450, %4247
  %4452 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %4449, float %4451, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4453 = extractvalue %dx.types.ResRet.f32 %4452, 0
  %4454 = fmul fast float %4453, %4421
  %4455 = fadd fast float %4433, %4418
  %4456 = fmul fast float %4455, %4246
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %4456, float %4451, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = fmul fast float %4458, %4422
  %4460 = fadd fast float %4447, %4419
  %4461 = fmul fast float %4460, %4247
  %4462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %4449, float %4461, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4463 = extractvalue %dx.types.ResRet.f32 %4462, 0
  %4464 = fmul fast float %4463, %4421
  %4465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %4456, float %4461, float undef, float undef, i32 0, i32 0, i32 undef, float %4251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4466 = extractvalue %dx.types.ResRet.f32 %4465, 0
  %4467 = fmul fast float %4466, %4422
  %4468 = fadd fast float %4467, %4464
  %4469 = fmul fast float %4468, %4436
  %4470 = fadd fast float %4459, %4454
  %4471 = fmul fast float %4470, %4435
  %4472 = fadd fast float %4471, %4469
  %4473 = fmul fast float %4472, 6.250000e-02
  br label %4559

; <label>:4474                                    ; preds = %4406
  %4475 = fmul fast float %232, 0x401921FB60000000
  %4476 = call float @dx.op.unary.f32(i32 13, float %4475)  ; Sin(value)
  %4477 = call float @dx.op.unary.f32(i32 12, float %4475)  ; Cos(value)
  %4478 = fsub fast float -0.000000e+00, %4476
  br label %4479

; <label>:4479                                    ; preds = %4528, %4474
  %4480 = phi float [ 0.000000e+00, %4474 ], [ %4523, %4528 ]
  %4481 = phi float [ 0.000000e+00, %4474 ], [ %4525, %4528 ]
  %4482 = phi i32 [ 0, %4474 ], [ %4529, %4528 ]
  %4483 = mul i32 %4482, 2
  %4484 = add i32 0, %4483
  %4485 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4484
  %4486 = load float, float* %4485, align 4
  %4487 = mul i32 %4482, 2
  %4488 = add i32 1, %4487
  %4489 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4488
  %4490 = load float, float* %4489, align 4
  %4491 = fmul fast float %4486, %4477
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4490, float %4478, float %4491)  ; FMad(a,b,c)
  %4493 = fmul fast float %4486, %4476
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4490, float %4477, float %4493)  ; FMad(a,b,c)
  %4495 = fmul fast float %4492, %4249
  %4496 = fmul fast float %4494, %4249
  %4497 = fadd fast float %4495, %213
  %4498 = fadd fast float %4496, %217
  %4499 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %31, float %4497, float %4498, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4503 = extractvalue %dx.types.ResRet.f32 %4499, 3
  %4504 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %4500, float* %4504, align 4
  %4505 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %4501, float* %4505, align 4
  %4506 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %4502, float* %4506, align 4
  %4507 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %4503, float* %4507, align 4
  %4508 = fsub fast float %4500, %4251
  %4509 = fcmp fast olt float %4508, 0.000000e+00
  %4510 = select i1 %4509, float 0.000000e+00, float 1.000000e+00
  %4511 = fadd fast float %4510, %4480
  %4512 = fmul fast float %4510, %4508
  %4513 = fadd fast float %4512, %4481
  br label %4514

; <label>:4514                                    ; preds = %4514, %4479
  %4515 = phi i32 [ 1, %4479 ], [ %4526, %4514 ]
  %4516 = phi float [ %4513, %4479 ], [ %4525, %4514 ]
  %4517 = phi float [ %4511, %4479 ], [ %4523, %4514 ]
  %4518 = getelementptr [4 x float], [4 x float]* %46, i32 0, i32 %4515
  %4519 = load float, float* %4518, align 4, !tbaa !55
  %4520 = fsub fast float %4519, %4251
  %4521 = fcmp fast olt float %4520, 0.000000e+00
  %4522 = select i1 %4521, float 0.000000e+00, float 1.000000e+00
  %4523 = fadd fast float %4522, %4517
  %4524 = fmul fast float %4522, %4520
  %4525 = fadd fast float %4524, %4516
  %4526 = add nuw nsw i32 %4515, 1
  %4527 = icmp eq i32 %4526, 4
  br i1 %4527, label %4528, label %4514, !llvm.loop !59

; <label>:4528                                    ; preds = %4514
  %4529 = add nuw nsw i32 %4482, 1
  %4530 = icmp eq i32 %4529, 8
  br i1 %4530, label %4531, label %4479, !llvm.loop !61

; <label>:4531                                    ; preds = %4528
  %4532 = fdiv fast float 1.000000e+00, %4523
  %4533 = fmul fast float %4532, %4525
  %4534 = fdiv fast float 1.000000e+00, %4251
  %4535 = fmul fast float %4533, %4534
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = call float @dx.op.binary.f32(i32 35, float %4536, float 0.000000e+00)  ; FMax(a,b)
  %4538 = fmul fast float %4523, 3.125000e-02
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = fadd fast float %4540, -1.000000e+00
  %4542 = fcmp fast ogt float %4541, 0.000000e+00
  %4543 = fcmp fast olt float %4541, 0.000000e+00
  %4544 = zext i1 %4542 to i32
  %4545 = zext i1 %4543 to i32
  %4546 = sub nsw i32 %4544, %4545
  %4547 = sitofp i32 %4546 to float
  %4548 = fmul fast float %4547, %4541
  %4549 = fsub fast float 1.000000e+00, %4548
  %4550 = fmul fast float %4549, %4549
  %4551 = fmul fast float %4550, %4549
  %4552 = fsub fast float %4549, %4551
  %4553 = fmul fast float %4552, %4537
  %4554 = fsub fast float 1.000000e+00, %4551
  %4555 = fsub fast float %4554, %4553
  %4556 = fmul fast float %4547, 5.000000e-01
  %4557 = fmul fast float %4556, %4555
  %4558 = fsub fast float 5.000000e-01, %4557
  br label %4559

; <label>:4559                                    ; preds = %4531, %4407, %4378, %4254, %4234
  %4560 = phi float [ 1.000000e+00, %4234 ], [ %4320, %4254 ], [ %4405, %4378 ], [ %4473, %4407 ], [ %4558, %4531 ]
  %4561 = fsub fast float %4064, %3893
  %4562 = fmul fast float %4561, %3185
  %4563 = fadd fast float %4562, %3893
  %4564 = fsub fast float %4235, %4563
  %4565 = fmul fast float %4564, %3184
  %4566 = fadd fast float %4565, %4563
  %4567 = fsub fast float %4560, %4566
  %4568 = fmul fast float %4567, %3215
  %4569 = fadd fast float %4568, %4566
  br label %4570

; <label>:4570                                    ; preds = %4559, %3088, %1626, %1555, %1233, %959, %956, %926, %802, %749, %625, %572, %448, %395, %271
  %4571 = phi float [ %4569, %4559 ], [ %3098, %3088 ], [ %337, %271 ], [ %422, %395 ], [ %514, %448 ], [ %599, %572 ], [ %691, %625 ], [ %776, %749 ], [ %868, %802 ], [ %953, %926 ], [ %1625, %1555 ], [ 1.000000e+00, %959 ], [ 1.000000e+00, %1233 ], [ 1.000000e+00, %956 ], [ 0.000000e+00, %1626 ]
  %4572 = fcmp fast une float %4571, 0.000000e+00
  br i1 %4572, label %4573, label %4781, !dx.controlflow.hints !94

; <label>:4573                                    ; preds = %4570
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.CBufRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4588 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4589 = fmul fast float %4575, %148
  %4590 = call float @dx.op.tertiary.f32(i32 46, float %149, float %4576, float %4589)  ; FMad(a,b,c)
  %4591 = call float @dx.op.tertiary.f32(i32 46, float %150, float %4577, float %4590)  ; FMad(a,b,c)
  %4592 = fadd fast float %4591, %4578
  %4593 = fmul fast float %4580, %148
  %4594 = call float @dx.op.tertiary.f32(i32 46, float %149, float %4581, float %4593)  ; FMad(a,b,c)
  %4595 = call float @dx.op.tertiary.f32(i32 46, float %150, float %4582, float %4594)  ; FMad(a,b,c)
  %4596 = fadd fast float %4595, %4583
  %4597 = fmul fast float %4585, %148
  %4598 = call float @dx.op.tertiary.f32(i32 46, float %149, float %4586, float %4597)  ; FMad(a,b,c)
  %4599 = call float @dx.op.tertiary.f32(i32 46, float %150, float %4587, float %4598)  ; FMad(a,b,c)
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.CBufRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4604 = fmul fast float %4603, %4592
  %4605 = fmul fast float %4603, %4596
  %4606 = fadd fast float %4604, %4601
  %4607 = fadd fast float %4605, %4602
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4611 = fsub fast float %4606, %4609
  %4612 = fsub fast float %4607, %4610
  %4613 = fcmp fast olt float %4611, 0.000000e+00
  %4614 = fcmp fast olt float %4612, 0.000000e+00
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4620 = select i1 %4613, float %4616, float %4618
  %4621 = select i1 %4614, float %4617, float %4619
  %4622 = fmul fast float %4620, %4611
  %4623 = fmul fast float %4621, %4612
  %4624 = call float @dx.op.unary.f32(i32 6, float %4622)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %4623)  ; FAbs(value)
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = call float @dx.op.binary.f32(i32 35, float %4624, float %4625)  ; FMax(a,b)
  %4629 = fsub fast float %4627, %4628
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fcmp fast ogt float %4630, 0.000000e+00
  br i1 %4631, label %4632, label %4673, !dx.controlflow.hints !95

; <label>:4632                                    ; preds = %4573
  %4633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4606, float %4607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 1
  %4635 = fcmp fast ogt float %4634, 0.000000e+00
  br i1 %4635, label %4636, label %4668, !dx.controlflow.hints !96

; <label>:4636                                    ; preds = %4632
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %30, float %4606, float %4607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = extractvalue %dx.types.ResRet.f32 %4637, 3
  %4642 = fsub fast float 1.000000e+00, %4588
  %4643 = fsub fast float %4642, %4599
  %4644 = fmul fast float %4643, 0x400921FB60000000
  %4645 = fadd fast float %4644, 0x3FF921FB60000000
  %4646 = call float @dx.op.unary.f32(i32 13, float %4645)  ; Sin(value)
  %4647 = fadd fast float %4646, -1.000000e+00
  %4648 = fmul fast float %4647, 0x3FD45F3060000000
  %4649 = fmul fast float %4643, 0x401921FB60000000
  %4650 = fadd fast float %4649, 0x400921FB60000000
  %4651 = call float @dx.op.unary.f32(i32 13, float %4650)  ; Sin(value)
  %4652 = fadd fast float %4651, 0x3E7777A5C0000000
  %4653 = fmul fast float %4652, 0x3FC45F3060000000
  %4654 = fmul fast float %4643, 0x4022D97C80000000
  %4655 = fadd fast float %4654, 0x4012D97C80000000
  %4656 = call float @dx.op.unary.f32(i32 13, float %4655)  ; Sin(value)
  %4657 = fadd fast float %4656, 1.000000e+00
  %4658 = fmul fast float %4657, 0x3FBB2995E0000000
  %4659 = fmul fast float %4643, 0x402921FB60000000
  %4660 = fadd fast float %4659, 0x401921FB60000000
  %4661 = call float @dx.op.unary.f32(i32 13, float %4660)  ; Sin(value)
  %4662 = fadd fast float %4661, 0xBE8777A5C0000000
  %4663 = fmul fast float %4662, 0x3FB45F3060000000
  %4664 = call float @dx.op.dot4.f32(i32 56, float %4638, float %4639, float %4640, float %4641, float %4648, float %4653, float %4658, float %4663)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4665 = fmul fast float %4664, 0xBFF7154760000000
  %4666 = call float @dx.op.unary.f32(i32 21, float %4665)  ; Exp(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  br label %4668

; <label>:4668                                    ; preds = %4636, %4632
  %4669 = phi float [ %4667, %4636 ], [ 1.000000e+00, %4632 ]
  %4670 = fadd fast float %4669, -1.000000e+00
  %4671 = fmul fast float %4670, %4630
  %4672 = fadd fast float %4671, 1.000000e+00
  br label %4673

; <label>:4673                                    ; preds = %4668, %4573
  %4674 = phi float [ %4672, %4668 ], [ 1.000000e+00, %4573 ]
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4675, %4571
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 2
  %4679 = fcmp fast ugt float %4678, 0.000000e+00
  br i1 %4679, label %4680, label %4715, !dx.controlflow.hints !97

; <label>:4680                                    ; preds = %4673
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4681, 2
  %4685 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.CBufRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4690 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4691 = extractvalue %dx.types.CBufRet.f32 %4677, 0
  %4692 = extractvalue %dx.types.CBufRet.f32 %4677, 1
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 0
  %4695 = extractvalue %dx.types.CBufRet.f32 %4693, 1
  %4696 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4697 = fadd fast float %4694, %148
  %4698 = fadd fast float %4695, %149
  %4699 = fadd fast float %4696, %150
  %4700 = fmul fast float %4697, %4682
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4683, float %4698, float %4700)  ; FMad(a,b,c)
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4684, float %4699, float %4701)  ; FMad(a,b,c)
  %4703 = fadd fast float %4702, %4685
  %4704 = fmul fast float %4697, %4687
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4688, float %4698, float %4704)  ; FMad(a,b,c)
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4689, float %4699, float %4705)  ; FMad(a,b,c)
  %4707 = fadd fast float %4706, %4690
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %4703, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = fmul fast float %4709, %4692
  %4711 = fadd fast float %4710, %4691
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, %4678
  %4714 = fsub fast float 1.000000e+00, %4713
  br label %4715

; <label>:4715                                    ; preds = %4680, %4673
  %4716 = phi float [ %4714, %4680 ], [ 1.000000e+00, %4673 ]
  %4717 = fmul fast float %4676, %4716
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4722 = fadd fast float %4719, %148
  %4723 = fadd fast float %4720, %149
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4728 = extractvalue %dx.types.CBufRet.f32 %4726, 1
  %4729 = extractvalue %dx.types.CBufRet.f32 %4726, 2
  %4730 = fsub fast float -0.000000e+00, %4722
  %4731 = fsub fast float -0.000000e+00, %4723
  %4732 = fsub fast float -0.000000e+00, %150
  %4733 = fsub fast float %4732, %4721
  %4734 = fadd fast float %4733, %4725
  %4735 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4730, float %4731, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = fdiv fast float 1.000000e+00, %4736
  %4738 = fmul fast float %4737, %4735
  %4739 = fmul fast float %4727, %4738
  %4740 = fmul fast float %4728, %4738
  %4741 = fadd fast float %4739, %4722
  %4742 = fadd fast float %4740, %4723
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 0
  %4745 = extractvalue %dx.types.CBufRet.f32 %4743, 1
  %4746 = fsub fast float %4741, %4744
  %4747 = fsub fast float %4742, %4745
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4750 = extractvalue %dx.types.CBufRet.f32 %4748, 3
  %4751 = fmul fast float %4746, %4749
  %4752 = fmul fast float %4747, %4750
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 3
  %4755 = icmp eq i32 %4754, 0
  br i1 %4755, label %4761, label %4756, !dx.controlflow.hints !98

; <label>:4756                                    ; preds = %4715
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %29, float %4751, float %4752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  br label %4766

; <label>:4761                                    ; preds = %4715
  %4762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %30, float %4751, float %4752, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4762, 2
  br label %4766

; <label>:4766                                    ; preds = %4761, %4756
  %4767 = phi float [ %4758, %4756 ], [ %4763, %4761 ]
  %4768 = phi float [ %4759, %4756 ], [ %4764, %4761 ]
  %4769 = phi float [ %4760, %4756 ], [ %4765, %4761 ]
  %4770 = extractvalue %dx.types.CBufRet.f32 %4724, 2
  %4771 = fmul fast float %4770, %4767
  %4772 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4773 = fsub fast float %4738, %4772
  %4774 = fsub fast float %4773, %4771
  %4775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4774)  ; FMax(a,b)
  %4776 = fmul fast float %4775, %4768
  %4777 = call float @dx.op.binary.f32(i32 36, float %4769, float %4776)  ; FMin(a,b)
  %4778 = fmul fast float %4777, 0xBFF7154760000000
  %4779 = call float @dx.op.unary.f32(i32 21, float %4778)  ; Exp(value)
  %4780 = fmul fast float %4717, %4779
  br label %4781

; <label>:4781                                    ; preds = %4766, %4570
  %4782 = phi float [ %4780, %4766 ], [ %4571, %4570 ]
  %4783 = fcmp fast ogt float %4782, 0.000000e+00
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 1
  %4786 = fcmp fast ogt float %184, %4785
  %4787 = and i1 %4783, %4786
  br i1 %4787, label %4788, label %5057, !dx.controlflow.hints !99

; <label>:4788                                    ; preds = %4781
  %4789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.i32 %4789, 0
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 0
  %4793 = select i1 %87, i32 %4790, i32 %4792
  %4794 = icmp sgt i32 %4793, 0
  br i1 %4794, label %4795, label %5057, !dx.controlflow.hints !100

; <label>:4795                                    ; preds = %4788
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4800 = select i1 %87, float %4797, float %4799
  %4801 = extractvalue %dx.types.CBufRet.f32 %4796, 2
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4803 = select i1 %87, float %4801, float %4802
  %4804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.i32 %4804, 0
  %4806 = uitofp i32 %4805 to float
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4809 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  %4810 = fmul fast float %4808, 5.000000e-01
  %4811 = fmul fast float %4809, 5.000000e-01
  %4812 = fsub fast float %83, %4810
  %4813 = fsub fast float %84, %4811
  %4814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %31, float %4812, float %4813, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = fcmp fast ogt float %4815, -1.000000e+00
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4821 = select i1 %4818, float %4820, float 1.000000e+00
  %4822 = fadd fast float %4815, 1.000000e+00
  %4823 = fmul fast float %4821, %4822
  %4824 = call float @dx.op.unary.f32(i32 6, float %4823)  ; FAbs(value)
  %4825 = fcmp fast ogt float %4816, -1.000000e+00
  %4826 = select i1 %4825, float %4820, float 1.000000e+00
  %4827 = fadd fast float %4816, 1.000000e+00
  %4828 = fmul fast float %4826, %4827
  %4829 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4830 = fcmp fast ogt float %4817, -1.000000e+00
  %4831 = select i1 %4830, float %4820, float 1.000000e+00
  %4832 = fadd fast float %4817, 1.000000e+00
  %4833 = fmul fast float %4831, %4832
  %4834 = call float @dx.op.unary.f32(i32 6, float %4833)  ; FAbs(value)
  %4835 = fadd fast float %4810, %83
  %4836 = fadd fast float %4811, %84
  %4837 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %31, float %4835, float %4836, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.ResRet.f32 %4837, 2
  %4840 = fcmp fast ogt float %4838, -1.000000e+00
  %4841 = select i1 %4840, float %4820, float 1.000000e+00
  %4842 = fadd fast float %4838, 1.000000e+00
  %4843 = fmul fast float %4841, %4842
  %4844 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4845 = fcmp fast ogt float %4839, -1.000000e+00
  %4846 = select i1 %4845, float %4820, float 1.000000e+00
  %4847 = fadd fast float %4839, 1.000000e+00
  %4848 = fmul fast float %4846, %4847
  %4849 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4850 = fsub fast float %4834, %4829
  %4851 = fsub fast float %4844, %4829
  %4852 = fsub fast float %4824, %4829
  %4853 = fsub fast float %4849, %4829
  %4854 = call float @dx.op.unary.f32(i32 6, float %4851)  ; FAbs(value)
  %4855 = call float @dx.op.unary.f32(i32 6, float %4850)  ; FAbs(value)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4855, float %4854)  ; FMax(a,b)
  %4857 = call float @dx.op.unary.f32(i32 6, float %4853)  ; FAbs(value)
  %4858 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4858, float %4857)  ; FMax(a,b)
  %4860 = fadd fast float %4851, %4850
  %4861 = call float @dx.op.unary.f32(i32 6, float %4860)  ; FAbs(value)
  %4862 = fadd fast float %4853, %4852
  %4863 = call float @dx.op.unary.f32(i32 6, float %4862)  ; FAbs(value)
  %4864 = fsub fast float %4859, %4863
  %4865 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4866 = fsub fast float %4856, %4861
  %4867 = call float @dx.op.unary.f32(i32 6, float %4866)  ; FAbs(value)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4867, float %4865)  ; FMax(a,b)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4880 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4890 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.CBufRet.f32 %4891, 3
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4900 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4901 = select i1 %87, float %4872, float %4887
  %4902 = select i1 %87, float %4877, float %4892
  %4903 = select i1 %87, float %4882, float %4897
  %4904 = select i1 %87, float %4873, float %4888
  %4905 = select i1 %87, float %4878, float %4893
  %4906 = select i1 %87, float %4883, float %4898
  %4907 = select i1 %87, float %4874, float %4889
  %4908 = select i1 %87, float %4879, float %4894
  %4909 = select i1 %87, float %4884, float %4899
  %4910 = select i1 %87, float %4875, float %4890
  %4911 = select i1 %87, float %4880, float %4895
  %4912 = select i1 %87, float %4885, float %4900
  %4913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4914 = extractvalue %dx.types.CBufRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.CBufRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4913, 2
  %4917 = fdiv fast float 1.000000e+00, %94
  %4918 = fmul fast float %4808, %78
  %4919 = fmul fast float %4809, %79
  %4920 = fmul fast float %4914, %4800
  %4921 = fmul fast float %4915, %4800
  %4922 = fmul fast float %4916, %4800
  %4923 = fadd fast float %4920, %148
  %4924 = fadd fast float %4921, %149
  %4925 = fadd fast float %4922, %150
  %4926 = fmul fast float %4923, %4901
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4904, float %4926)  ; FMad(a,b,c)
  %4928 = call float @dx.op.tertiary.f32(i32 46, float %4925, float %4907, float %4927)  ; FMad(a,b,c)
  %4929 = fadd fast float %4928, %4910
  %4930 = fmul fast float %4923, %4902
  %4931 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4905, float %4930)  ; FMad(a,b,c)
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4925, float %4908, float %4931)  ; FMad(a,b,c)
  %4933 = fadd fast float %4932, %4911
  %4934 = fmul fast float %4923, %4903
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4924, float %4906, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4925, float %4909, float %4935)  ; FMad(a,b,c)
  %4937 = fadd fast float %4936, %4912
  %4938 = fdiv fast float 1.000000e+00, %4937
  %4939 = fmul fast float %4929, 5.000000e-01
  %4940 = fmul fast float %4933, -5.000000e-01
  %4941 = fmul fast float %4939, %4938
  %4942 = fmul fast float %4940, %4938
  %4943 = fsub fast float 5.000000e-01, %4918
  %4944 = fadd fast float %4943, %4941
  %4945 = fsub fast float 5.000000e-01, %4919
  %4946 = fadd fast float %4945, %4942
  %4947 = fsub fast float %4938, %4917
  %4948 = call float @dx.op.dot2.f32(i32 54, float %4944, float %4946, float %4944, float %4946)  ; Dot2(ax,ay,bx,by)
  %4949 = call float @dx.op.binary.f32(i32 35, float %4948, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4950 = call float @dx.op.dot2.f32(i32 54, float %4869, float %4870, float %4869, float %4870)  ; Dot2(ax,ay,bx,by)
  %4951 = fmul fast float %4950, %4949
  %4952 = call float @dx.op.unary.f32(i32 25, float %4951)  ; Rsqrt(value)
  %4953 = fmul fast float %4952, %4944
  %4954 = fmul fast float %4952, %4946
  %4955 = fadd fast float %4953, %4918
  %4956 = fadd fast float %4954, %4919
  %4957 = fmul fast float %4944, %4869
  %4958 = fmul fast float %4946, %4870
  %4959 = fmul fast float %4957, %4957
  %4960 = fmul fast float %4958, %4958
  %4961 = fadd fast float %4959, %4960
  %4962 = call float @dx.op.unary.f32(i32 24, float %4961)  ; Sqrt(value)
  %4963 = fdiv fast float 1.000000e+00, %4962
  %4964 = fmul fast float %4962, 3.906250e-03
  %4965 = fmul fast float %4868, 0x3F70624DE0000000
  %4966 = fadd fast float %4965, 0x3F70624DE0000000
  br label %4967

; <label>:4967                                    ; preds = %5023, %4795
  %4968 = phi float [ %4999, %5023 ], [ %94, %4795 ]
  %4969 = phi float [ %4986, %5023 ], [ %94, %4795 ]
  %4970 = phi float [ %4969, %5023 ], [ %94, %4795 ]
  %4971 = phi i32 [ %5024, %5023 ], [ 0, %4795 ]
  %4972 = sitofp i32 %4971 to float
  %4973 = fadd fast float %232, 5.000000e-01
  %4974 = call float @dx.op.unary.f32(i32 22, float %4973)  ; Frc(value)
  %4975 = fadd fast float %4972, %4974
  %4976 = sitofp i32 %4793 to float
  %4977 = fdiv fast float %4975, %4976
  %4978 = fmul fast float %4977, %4977
  %4979 = call float @dx.op.binary.f32(i32 36, float %4978, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4980 = fmul fast float %4979, %4944
  %4981 = fmul fast float %4979, %4946
  %4982 = fmul fast float %4979, %4947
  %4983 = fadd fast float %4980, %4955
  %4984 = fadd fast float %4981, %4956
  %4985 = fadd fast float %4982, %4917
  %4986 = fdiv fast float 1.000000e+00, %4985
  %4987 = icmp ne i32 %4805, 0
  %4988 = fmul fast float %4964, %4979
  %4989 = call float @dx.op.binary.f32(i32 36, float %4988, float %4806)  ; FMin(a,b)
  %4990 = select i1 %4987, float %4989, float 0.000000e+00
  %4991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4983, float %4984, float undef, float undef, i32 0, i32 0, i32 undef, float %4990)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4992 = extractvalue %dx.types.ResRet.f32 %4991, 0
  %4993 = fcmp fast ogt float %4992, -1.000000e+00
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4996 = select i1 %4993, float %4995, float 1.000000e+00
  %4997 = fadd fast float %4992, 1.000000e+00
  %4998 = fmul fast float %4996, %4997
  %4999 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5000 = fmul fast float %4999, %4966
  %5001 = fsub fast float %4986, %4999
  %5002 = fsub fast float %5001, %5000
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  %5004 = fcmp fast ogt float %4803, 0.000000e+00
  br i1 %5004, label %5005, label %5008, !dx.controlflow.hints !101

; <label>:5005                                    ; preds = %4967
  %5006 = fsub fast float %4986, %4970
  %5007 = call float @dx.op.binary.f32(i32 35, float %5006, float %4803)  ; FMax(a,b)
  br label %5008

; <label>:5008                                    ; preds = %5005, %4967
  %5009 = phi float [ %5007, %5005 ], [ %4800, %4967 ]
  %5010 = fcmp fast olt float %5002, %5009
  %5011 = fcmp uge float %4992, -1.000000e+00
  %5012 = xor i1 %87, %5011
  %5013 = call float @dx.op.unary.f32(i32 7, float %4983)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %5015 = fcmp fast oeq float %4983, %5013
  %5016 = fcmp fast oeq float %4984, %5014
  %5017 = and i1 %5015, %5016
  %5018 = and i1 %5012, %5017
  %5019 = and i1 %5003, %5010
  %5020 = and i1 %5019, %5018
  %5021 = fcmp fast ogt float %4979, %4963
  %5022 = and i1 %5021, %5020
  br i1 %5022, label %5026, label %5023, !dx.controlflow.hints !102

; <label>:5023                                    ; preds = %5008
  %5024 = add nuw nsw i32 %4971, 1
  %5025 = icmp slt i32 %4971, %4793
  br i1 %5025, label %4967, label %5026

; <label>:5026                                    ; preds = %5023, %5008
  %5027 = phi i1 [ false, %5023 ], [ true, %5008 ]
  %5028 = fsub fast float %4969, %4968
  %5029 = fsub fast float %5028, %5001
  %5030 = fcmp fast une float %5029, 0.000000e+00
  %5031 = fmul fast float %4986, %5028
  %5032 = fmul fast float %5001, %4969
  %5033 = fsub fast float %5031, %5032
  %5034 = fdiv fast float 1.000000e+00, %5029
  %5035 = fmul fast float %5034, %5033
  %5036 = select i1 %5030, float %5035, float %4986
  %5037 = fdiv fast float 1.000000e+00, %5036
  %5038 = fsub fast float %5037, %4917
  %5039 = fdiv fast float %5038, %4947
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %5040, %4944
  %5042 = fmul fast float %5040, %4946
  %5043 = fadd fast float %4955, -5.000000e-01
  %5044 = fadd fast float %5043, %5041
  %5045 = fadd fast float %4956, -5.000000e-01
  %5046 = fadd fast float %5045, %5042
  %5047 = call float @dx.op.unary.f32(i32 6, float %5044)  ; FAbs(value)
  %5048 = call float @dx.op.unary.f32(i32 6, float %5046)  ; FAbs(value)
  %5049 = fadd fast float %5047, -5.000000e-01
  %5050 = fadd fast float %5048, -5.000000e-01
  %5051 = call float @dx.op.binary.f32(i32 35, float %5049, float %5050)  ; FMax(a,b)
  %5052 = fcmp fast olt float %5051, 0.000000e+00
  %5053 = or i1 %87, %5052
  %5054 = and i1 %5027, %5053
  %5055 = select i1 %5054, float 0.000000e+00, float 1.000000e+00
  %5056 = call float @dx.op.binary.f32(i32 36, float %4782, float %5055)  ; FMin(a,b)
  br label %5057

; <label>:5057                                    ; preds = %5026, %4788, %4781
  %5058 = phi float [ %5056, %5026 ], [ %4782, %4788 ], [ %4782, %4781 ]
  %5059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %5060 = extractvalue %dx.types.ResRet.i32 %5059, 0
  %5061 = and i32 %5060, 114688
  %5062 = icmp ne i32 %5061, 0
  %5063 = fcmp fast ogt float %5058, 0.000000e+00
  %5064 = and i1 %5063, %5062
  br i1 %5064, label %5065, label %5840, !dx.controlflow.hints !103

; <label>:5065                                    ; preds = %5057
  %5066 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %76, i32 %77, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = fmul fast float %5067, 2.550000e+02
  %5069 = fptoui float %5068 to i32
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5072 = call float @dx.op.dot3.f32(i32 55, float %177, float %178, float %179, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5073 = call float @dx.op.unary.f32(i32 6, float %5072)  ; FAbs(value)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = icmp eq i32 %5069, 0
  %5076 = fcmp ugt float %5074, %5071
  %5077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5078 = extractvalue %dx.types.CBufRet.i32 %5077, 0
  %5079 = and i32 %5078, 64
  %5080 = icmp eq i32 %5079, 0
  %5081 = or i1 %5076, %5080
  %5082 = and i1 %5075, %5081
  br i1 %5082, label %5421, label %5083, !dx.controlflow.hints !104

; <label>:5083                                    ; preds = %5065
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5088 = fadd fast float %5085, %148
  %5089 = fadd fast float %5086, %149
  %5090 = fadd fast float %5087, %150
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5094 = fsub fast float %5088, %5092
  %5095 = fsub fast float %5089, %5093
  %5096 = fmul fast float %5094, %5094
  %5097 = fmul fast float %5095, %5095
  %5098 = fadd fast float %5096, %5097
  %5099 = call float @dx.op.unary.f32(i32 24, float %5098)  ; Sqrt(value)
  %5100 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5101 = fcmp fast olt float %5099, %5100
  br i1 %5101, label %5102, label %5167, !dx.controlflow.hints !105

; <label>:5102                                    ; preds = %5083
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 0
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 0
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5103, 1
  %5110 = extractvalue %dx.types.CBufRet.f32 %5105, 1
  %5111 = extractvalue %dx.types.CBufRet.f32 %5107, 1
  %5112 = extractvalue %dx.types.CBufRet.f32 %5103, 3
  %5113 = extractvalue %dx.types.CBufRet.f32 %5105, 3
  %5114 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5115 = fadd fast float %5112, %5088
  %5116 = fadd fast float %5113, %5089
  %5117 = fadd fast float %5114, %5090
  %5118 = fmul fast float %5115, %5104
  %5119 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %5106, float %5118)  ; FMad(a,b,c)
  %5120 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5108, float %5119)  ; FMad(a,b,c)
  %5121 = fmul fast float %5115, %5109
  %5122 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %5110, float %5121)  ; FMad(a,b,c)
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5111, float %5122)  ; FMad(a,b,c)
  %5124 = fsub fast float %5120, %5112
  %5125 = fsub fast float %5123, %5113
  %5126 = fsub fast float %5124, %5092
  %5127 = fadd fast float %5126, %5100
  %5128 = fsub fast float %5125, %5093
  %5129 = fadd fast float %5128, %5100
  %5130 = extractvalue %dx.types.CBufRet.f32 %5091, 3
  %5131 = fmul fast float %5127, %5130
  %5132 = fmul fast float %5129, %5130
  %5133 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5135 = fsub fast float 1.000000e+00, %5133
  %5136 = fsub fast float 1.000000e+00, %5134
  %5137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %30, float %5135, float %5136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = fcmp fast ugt float %5138, 0.000000e+00
  br i1 %5139, label %5140, label %5421, !dx.controlflow.hints !106

; <label>:5140                                    ; preds = %5102
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5143 = fmul fast float %5142, %5138
  %5144 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5145 = fadd fast float %5144, %5143
  %5146 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5147 = fadd fast float %5145, %5114
  %5148 = fmul fast float %5120, %5108
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5111, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %5147, float %5146, float %5149)  ; FMad(a,b,c)
  %5151 = fsub fast float %5150, %5114
  %5152 = fsub fast float %5151, %5087
  %5153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %30, float %5135, float %5136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %30, float %5135, float %5136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5158 = extractvalue %dx.types.ResRet.f32 %5157, 0
  %5159 = extractvalue %dx.types.ResRet.f32 %5157, 1
  %5160 = extractvalue %dx.types.ResRet.f32 %5157, 2
  %5161 = fadd fast float %5158, %5154
  %5162 = fmul fast float %5161, 0x3F847AE140000000
  %5163 = fadd fast float %5159, %5155
  %5164 = fmul fast float %5163, 0x3F847AE140000000
  %5165 = fadd fast float %5160, %5156
  %5166 = fmul fast float %5165, 0x3F847AE140000000
  br label %5421

; <label>:5167                                    ; preds = %5083
  %5168 = and i32 %5069, -3
  %5169 = icmp eq i32 %5168, 1
  br i1 %5169, label %5170, label %5421, !dx.controlflow.hints !107

; <label>:5170                                    ; preds = %5167
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.f32 %5171, 1
  %5178 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5180 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5181 = extractvalue %dx.types.CBufRet.f32 %5173, 3
  %5182 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5183 = fadd fast float %5180, %5088
  %5184 = fadd fast float %5181, %5089
  %5185 = fadd fast float %5182, %5090
  %5186 = fmul fast float %5183, %5172
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5174, float %5186)  ; FMad(a,b,c)
  %5188 = call float @dx.op.tertiary.f32(i32 46, float %5185, float %5176, float %5187)  ; FMad(a,b,c)
  %5189 = fmul fast float %5183, %5177
  %5190 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5178, float %5189)  ; FMad(a,b,c)
  %5191 = call float @dx.op.tertiary.f32(i32 46, float %5185, float %5179, float %5190)  ; FMad(a,b,c)
  %5192 = fsub fast float %5188, %5180
  %5193 = fsub fast float %5191, %5181
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.i32 %5201, 0
  %5203 = extractvalue %dx.types.CBufRet.i32 %5201, 1
  %5204 = udiv i32 %5203, %5202
  %5205 = fsub fast float %5192, %5195
  %5206 = fsub fast float %5193, %5196
  %5207 = call float @dx.op.binary.f32(i32 35, float %5205, float 0.000000e+00)  ; FMax(a,b)
  %5208 = call float @dx.op.binary.f32(i32 35, float %5206, float 0.000000e+00)  ; FMax(a,b)
  %5209 = call float @dx.op.binary.f32(i32 36, float %5207, float %5197)  ; FMin(a,b)
  %5210 = call float @dx.op.binary.f32(i32 36, float %5208, float %5198)  ; FMin(a,b)
  %5211 = add i32 %5202, -1
  %5212 = add i32 %5204, -1
  %5213 = fmul fast float %5209, %5200
  %5214 = fmul fast float %5210, %5200
  %5215 = fptoui float %5213 to i32
  %5216 = fptoui float %5214 to i32
  %5217 = call i32 @dx.op.binary.i32(i32 40, i32 %5215, i32 %5211)  ; UMin(a,b)
  %5218 = call i32 @dx.op.binary.i32(i32 40, i32 %5216, i32 %5212)  ; UMin(a,b)
  %5219 = mul i32 %5218, %5202
  %5220 = add i32 %5219, %5217
  %5221 = shl i32 %5220, 2
  %5222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.i32 %5222, 0
  %5224 = icmp eq i32 %5223, -1
  br i1 %5224, label %5421, label %5225, !dx.controlflow.hints !108

; <label>:5225                                    ; preds = %5170
  %5226 = mul i32 %5223, 148
  %5227 = add i32 %5226, 4
  %5228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5227, i32 undef)  ; BufferLoad(srv,index,wot)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5230 = add i32 %5226, 8
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = add i32 %5226, 36
  %5234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.f32 %5234, 0
  %5236 = add i32 %5226, 60
  %5237 = add i32 %5226, 92
  %5238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.i32 %5238, 0
  %5240 = add i32 %5226, 116
  %5241 = fsub fast float %5192, %5229
  %5242 = fsub fast float %5193, %5232
  %5243 = fmul fast float %5200, %5241
  %5244 = fmul fast float %5200, %5242
  %5245 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = extractvalue %dx.types.CBufRet.f32 %5070, 3
  %5249 = fadd fast float %5248, 2.000000e+00
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5252 = fadd fast float %5249, %5251
  %5253 = add i32 %5239, 0
  %5254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5253, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5255 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5254, i32 0)  ; GetDimensions(handle,mipLevel)
  %5256 = extractvalue %dx.types.Dimensions %5255, 0
  %5257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5256)  ; FirstbitLo(value)
  %5258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.i32 %5258, 1
  %5260 = sub nsw i32 %5259, %5257
  %5261 = sitofp i32 %5260 to float
  %5262 = fsub fast float %5252, %5261
  %5263 = call float @dx.op.binary.f32(i32 35, float %5262, float 0.000000e+00)  ; FMax(a,b)
  %5264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5254, %dx.types.Handle %28, float %5245, float %5247, float %5235, float undef, i32 0, i32 0, i32 undef, float %5263)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5265 = extractvalue %dx.types.ResRet.f32 %5264, 0
  %5266 = fcmp ule float %5265, 0x3FE0101020000000
  %5267 = extractvalue %dx.types.CBufRet.i32 %5258, 0
  %5268 = and i32 %5267, 128
  %5269 = icmp ne i32 %5268, 0
  %5270 = and i1 %5266, %5269
  br i1 %5270, label %5421, label %5271, !dx.controlflow.hints !109

; <label>:5271                                    ; preds = %5225
  %5272 = add i32 %5226, 20
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = add i32 %5226, 24
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = add i32 %5226, 40
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = add i32 %5226, 96
  %5282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.i32 %5282, 0
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5286 = fmul fast float %5285, %5245
  %5287 = fmul fast float %5285, %5247
  %5288 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5289 = fadd fast float %5286, %5288
  %5290 = fadd fast float %5287, %5288
  %5291 = add i32 %5283, 0
  %5292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5291, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5293 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5292, i32 0)  ; GetDimensions(handle,mipLevel)
  %5294 = extractvalue %dx.types.Dimensions %5293, 0
  %5295 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5294)  ; FirstbitLo(value)
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 1
  %5298 = sub nsw i32 %5297, %5295
  %5299 = sitofp i32 %5298 to float
  %5300 = fsub fast float %5249, %5299
  %5301 = call float @dx.op.binary.f32(i32 35, float %5300, float 0.000000e+00)  ; FMax(a,b)
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5292, %dx.types.Handle %28, float %5289, float %5290, float %5280, float undef, i32 0, i32 0, i32 undef, float %5301)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = fmul fast float %5303, %5274
  %5305 = fadd fast float %5304, %5277
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5309 = extractvalue %dx.types.CBufRet.f32 %5306, 2
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5314 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5315 = fadd fast float %5311, %5192
  %5316 = fadd fast float %5313, %5193
  %5317 = fadd fast float %5305, %5314
  %5318 = fmul fast float %5315, %5307
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5308, float %5318)  ; FMad(a,b,c)
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5309, float %5319)  ; FMad(a,b,c)
  %5321 = fsub fast float %5320, %5314
  %5322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.f32 %5322, 2
  %5324 = fsub fast float %5321, %5323
  %5325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.i32 %5325, 0
  %5327 = call i32 @dx.op.binary.i32(i32 40, i32 %5223, i32 %5326)  ; UMin(a,b)
  %5328 = mul i32 %5327, 36
  %5329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.i32 %5329, 0
  %5331 = add i32 %5328, 4
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 0
  %5334 = fmul fast float %5333, %5245
  %5335 = fmul fast float %5333, %5247
  %5336 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5337 = fadd fast float %5334, %5336
  %5338 = fadd fast float %5335, %5336
  %5339 = icmp eq i32 %5330, 0
  br i1 %5339, label %5408, label %5340

; <label>:5340                                    ; preds = %5271
  br label %5341

; <label>:5341                                    ; preds = %5398, %5340
  %5342 = phi float [ %5399, %5398 ], [ 0.000000e+00, %5340 ]
  %5343 = phi float [ %5400, %5398 ], [ 0.000000e+00, %5340 ]
  %5344 = phi float [ %5401, %5398 ], [ 0.000000e+00, %5340 ]
  %5345 = phi float [ %5402, %5398 ], [ 0.000000e+00, %5340 ]
  %5346 = phi float [ %5403, %5398 ], [ 0.000000e+00, %5340 ]
  %5347 = phi float [ %5404, %5398 ], [ 0.000000e+00, %5340 ]
  %5348 = phi i32 [ %5405, %5398 ], [ 0, %5340 ]
  %5349 = shl i32 %5348, 2
  %5350 = add i32 %5236, %5349
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5240, %5349
  %5354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.i32 %5354, 0
  %5356 = add i32 %5355, 0
  %5357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5356, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5358 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5357, i32 0)  ; GetDimensions(handle,mipLevel)
  %5359 = extractvalue %dx.types.Dimensions %5358, 0
  %5360 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5359)  ; FirstbitLo(value)
  %5361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.i32 %5361, 1
  %5363 = sub nsw i32 %5362, %5360
  %5364 = sitofp i32 %5363 to float
  %5365 = fsub fast float %5249, %5364
  %5366 = call float @dx.op.binary.f32(i32 35, float %5365, float 0.000000e+00)  ; FMax(a,b)
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5357, %dx.types.Handle %28, float %5337, float %5338, float %5352, float undef, i32 0, i32 0, i32 undef, float %5366)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  br i1 %5369, label %5370, label %5398, !dx.controlflow.hints !110

; <label>:5370                                    ; preds = %5341
  %5371 = add i32 %5331, %5349
  %5372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5371, i32 undef)  ; BufferLoad(srv,index,wot)
  %5373 = extractvalue %dx.types.ResRet.i32 %5372, 0
  %5374 = and i32 %5373, 32767
  %5375 = mul nuw nsw i32 %5374, 928
  %5376 = add nuw nsw i32 %5375, 48
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = add nuw nsw i32 %5375, 60
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.ResRet.f32 %5382, 2
  %5386 = fmul fast float %5378, %5368
  %5387 = fmul fast float %5379, %5368
  %5388 = fmul fast float %5380, %5368
  %5389 = fadd fast float %5386, %5342
  %5390 = fadd fast float %5387, %5343
  %5391 = fadd fast float %5388, %5344
  %5392 = fmul fast float %5383, %5368
  %5393 = fmul fast float %5384, %5368
  %5394 = fmul fast float %5385, %5368
  %5395 = fadd fast float %5392, %5345
  %5396 = fadd fast float %5393, %5346
  %5397 = fadd fast float %5394, %5347
  br label %5398

; <label>:5398                                    ; preds = %5370, %5341
  %5399 = phi float [ %5389, %5370 ], [ %5342, %5341 ]
  %5400 = phi float [ %5390, %5370 ], [ %5343, %5341 ]
  %5401 = phi float [ %5391, %5370 ], [ %5344, %5341 ]
  %5402 = phi float [ %5395, %5370 ], [ %5345, %5341 ]
  %5403 = phi float [ %5396, %5370 ], [ %5346, %5341 ]
  %5404 = phi float [ %5397, %5370 ], [ %5347, %5341 ]
  %5405 = add nuw i32 %5348, 1
  %5406 = icmp eq i32 %5405, %5330
  br i1 %5406, label %5407, label %5341

; <label>:5407                                    ; preds = %5398
  br label %5408

; <label>:5408                                    ; preds = %5407, %5271
  %5409 = phi float [ 0.000000e+00, %5271 ], [ %5399, %5407 ]
  %5410 = phi float [ 0.000000e+00, %5271 ], [ %5400, %5407 ]
  %5411 = phi float [ 0.000000e+00, %5271 ], [ %5401, %5407 ]
  %5412 = phi float [ 0.000000e+00, %5271 ], [ %5402, %5407 ]
  %5413 = phi float [ 0.000000e+00, %5271 ], [ %5403, %5407 ]
  %5414 = phi float [ 0.000000e+00, %5271 ], [ %5404, %5407 ]
  %5415 = fadd fast float %5412, %5409
  %5416 = fmul fast float %5415, 0x3F847AE140000000
  %5417 = fadd fast float %5413, %5410
  %5418 = fmul fast float %5417, 0x3F847AE140000000
  %5419 = fadd fast float %5414, %5411
  %5420 = fmul fast float %5419, 0x3F847AE140000000
  br label %5421

; <label>:5421                                    ; preds = %5408, %5225, %5170, %5167, %5140, %5102, %5065
  %5422 = phi i1 [ true, %5065 ], [ false, %5140 ], [ true, %5102 ], [ false, %5408 ], [ true, %5170 ], [ true, %5225 ], [ true, %5167 ]
  %5423 = phi float [ 0.000000e+00, %5065 ], [ %5152, %5140 ], [ -1.310720e+05, %5102 ], [ %5324, %5408 ], [ -1.310720e+05, %5170 ], [ -1.310720e+05, %5225 ], [ -1.310720e+05, %5167 ]
  %5424 = phi float [ 0.000000e+00, %5065 ], [ %5162, %5140 ], [ 0.000000e+00, %5102 ], [ %5416, %5408 ], [ 0.000000e+00, %5170 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5167 ]
  %5425 = phi float [ 0.000000e+00, %5065 ], [ %5164, %5140 ], [ 0.000000e+00, %5102 ], [ %5418, %5408 ], [ 0.000000e+00, %5170 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5167 ]
  %5426 = phi float [ 0.000000e+00, %5065 ], [ %5166, %5140 ], [ 0.000000e+00, %5102 ], [ %5420, %5408 ], [ 0.000000e+00, %5170 ], [ 0.000000e+00, %5225 ], [ 0.000000e+00, %5167 ]
  br i1 %5422, label %5840, label %5427, !dx.controlflow.hints !111

; <label>:5427                                    ; preds = %5421
  %5428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.i32 %5428, 0
  %5430 = and i32 %5429, 64
  %5431 = icmp ne i32 %5430, 0
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = fsub fast float %150, %5423
  %5437 = fcmp fast ogt float %5436, 0.000000e+00
  %5438 = xor i1 %5437, true
  %5439 = fmul fast float %5433, 5.120000e+02
  %5440 = fmul fast float %5434, 5.120000e+02
  %5441 = fmul fast float %5435, 5.120000e+02
  %5442 = fadd fast float %5441, %150
  %5443 = fsub fast float %5423, %5442
  %5444 = fmul fast float %5443, 2.000000e+00
  %5445 = fadd fast float %5444, %5442
  %5446 = select i1 %5437, float %5445, float %5442
  %5447 = fsub fast float %5446, %150
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5447, float %5439, float %5440, float %5447)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = call float @dx.op.unary.f32(i32 25, float %5448)  ; Rsqrt(value)
  %5450 = fmul fast float %5439, %5449
  %5451 = fmul fast float %5440, %5449
  %5452 = fmul fast float %5447, %5449
  %5453 = fsub fast float %5423, %150
  %5454 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fdiv fast float 1.000000e+00, %5455
  %5457 = fmul fast float %5456, %5454
  %5458 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5436, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = fcmp fast ogt float %5458, 0.000000e+00
  %5460 = fcmp fast olt float %5458, 0.000000e+00
  %5461 = zext i1 %5459 to i32
  %5462 = zext i1 %5460 to i32
  %5463 = sub nsw i32 %5461, %5462
  %5464 = sitofp i32 %5463 to float
  %5465 = fsub fast float %5446, %5423
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5465, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = fcmp fast ogt float %5466, 0.000000e+00
  %5468 = fcmp fast olt float %5466, 0.000000e+00
  %5469 = zext i1 %5467 to i32
  %5470 = zext i1 %5468 to i32
  %5471 = sub nsw i32 %5469, %5470
  %5472 = sitofp i32 %5471 to float
  %5473 = fcmp fast une float %5464, %5472
  br i1 %5473, label %5474, label %5484, !dx.controlflow.hints !112

; <label>:5474                                    ; preds = %5427
  %5475 = fmul fast float %5452, %5457
  %5476 = fmul fast float %5457, %5451
  %5477 = fmul fast float %5457, %5450
  %5478 = fmul fast float %5477, %5477
  %5479 = fmul fast float %5476, %5476
  %5480 = fadd fast float %5478, %5479
  %5481 = fmul fast float %5475, %5475
  %5482 = fadd fast float %5480, %5481
  %5483 = call float @dx.op.unary.f32(i32 24, float %5482)  ; Sqrt(value)
  br label %5494

; <label>:5484                                    ; preds = %5427
  %5485 = icmp slt i32 %5463, 0
  br i1 %5485, label %5486, label %5494, !dx.controlflow.hints !113

; <label>:5486                                    ; preds = %5484
  %5487 = fsub fast float %150, %5446
  %5488 = fmul fast float %5439, %5439
  %5489 = fmul fast float %5440, %5440
  %5490 = fadd fast float %5488, %5489
  %5491 = fmul fast float %5487, %5487
  %5492 = fadd fast float %5490, %5491
  %5493 = call float @dx.op.unary.f32(i32 24, float %5492)  ; Sqrt(value)
  br label %5494

; <label>:5494                                    ; preds = %5486, %5484, %5474
  %5495 = phi float [ %5483, %5474 ], [ %5493, %5486 ], [ 0.000000e+00, %5484 ]
  %5496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.i32 %5496, 1
  %5498 = icmp ne i32 %5497, 0
  %5499 = and i1 %5498, %5438
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fmul fast float %5500, %5500
  %5502 = fsub fast float 1.000000e+00, %5501
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.CBufRet.f32 %5503, 2
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 0
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5507, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5515 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5507, 3
  %5517 = extractvalue %dx.types.CBufRet.f32 %5509, 3
  %5518 = extractvalue %dx.types.CBufRet.f32 %5511, 3
  %5519 = fadd fast float %5504, %148
  %5520 = fadd fast float %5505, %149
  %5521 = fadd fast float %5506, %150
  %5522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5523 = extractvalue %dx.types.CBufRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.CBufRet.f32 %5522, 1
  %5525 = extractvalue %dx.types.CBufRet.f32 %5522, 2
  %5526 = extractvalue %dx.types.CBufRet.f32 %5522, 3
  br i1 %5499, label %5527, label %5720, !dx.controlflow.hints !114

; <label>:5527                                    ; preds = %5494
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = fmul fast float %5529, %5529
  %5531 = fmul fast float %5530, %5502
  %5532 = fsub fast float 1.000000e+00, %5531
  %5533 = fcmp fast oge float %5532, 0.000000e+00
  %5534 = fmul fast float %5529, %5450
  %5535 = fmul fast float %5529, %5451
  %5536 = fmul fast float %5529, %5452
  %5537 = call float @dx.op.unary.f32(i32 24, float %5532)  ; Sqrt(value)
  %5538 = fmul fast float %5529, %5500
  %5539 = fsub fast float -0.000000e+00, %5537
  %5540 = fsub fast float %5539, %5538
  %5541 = fadd fast float %5540, %5536
  %5542 = select i1 %5533, float %5534, float 0.000000e+00
  %5543 = select i1 %5533, float %5535, float 0.000000e+00
  %5544 = select i1 %5533, float %5541, float 0.000000e+00
  %5545 = fmul fast float %5542, %5495
  %5546 = fmul fast float %5543, %5495
  %5547 = fmul fast float %5544, %5495
  %5548 = fadd fast float %5519, %5545
  %5549 = fadd fast float %5548, %5516
  %5550 = fadd fast float %5520, %5546
  %5551 = fadd fast float %5550, %5517
  %5552 = fadd fast float %5521, %5547
  %5553 = fadd fast float %5552, %5518
  %5554 = fmul fast float %5549, %5508
  %5555 = call float @dx.op.tertiary.f32(i32 46, float %5551, float %5510, float %5554)  ; FMad(a,b,c)
  %5556 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5512, float %5555)  ; FMad(a,b,c)
  %5557 = fmul fast float %5549, %5513
  %5558 = call float @dx.op.tertiary.f32(i32 46, float %5551, float %5514, float %5557)  ; FMad(a,b,c)
  %5559 = call float @dx.op.tertiary.f32(i32 46, float %5553, float %5515, float %5558)  ; FMad(a,b,c)
  %5560 = fsub fast float %5556, %5516
  %5561 = fsub fast float %5560, %5523
  %5562 = fadd fast float %5561, %5525
  %5563 = fsub fast float %5559, %5517
  %5564 = fsub fast float %5563, %5524
  %5565 = fadd fast float %5564, %5525
  %5566 = fmul fast float %5562, %5526
  %5567 = fmul fast float %5565, %5526
  %5568 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5569 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5570 = fsub fast float 1.000000e+00, %5568
  %5571 = fsub fast float 1.000000e+00, %5569
  %5572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %5570, float %5571, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = fmul fast float %5573, 0x3FBC5ABC00000000
  %5575 = extractvalue %dx.types.CBufRet.f32 %5528, 1
  %5576 = fmul fast float %5575, %5575
  %5577 = fmul fast float %5576, %5502
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = fcmp fast oge float %5578, 0.000000e+00
  %5580 = fmul fast float %5575, %5450
  %5581 = fmul fast float %5575, %5451
  %5582 = fmul fast float %5575, %5452
  %5583 = call float @dx.op.unary.f32(i32 24, float %5578)  ; Sqrt(value)
  %5584 = fmul fast float %5575, %5500
  %5585 = fsub fast float -0.000000e+00, %5583
  %5586 = fsub fast float %5585, %5584
  %5587 = fadd fast float %5586, %5582
  %5588 = select i1 %5579, float %5580, float 0.000000e+00
  %5589 = select i1 %5579, float %5581, float 0.000000e+00
  %5590 = select i1 %5579, float %5587, float 0.000000e+00
  %5591 = fmul fast float %5588, %5495
  %5592 = fmul fast float %5589, %5495
  %5593 = fmul fast float %5590, %5495
  %5594 = fadd fast float %5519, %5591
  %5595 = fadd fast float %5594, %5516
  %5596 = fadd fast float %5520, %5592
  %5597 = fadd fast float %5596, %5517
  %5598 = fadd fast float %5521, %5593
  %5599 = fadd fast float %5598, %5518
  %5600 = fmul fast float %5595, %5508
  %5601 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5510, float %5600)  ; FMad(a,b,c)
  %5602 = call float @dx.op.tertiary.f32(i32 46, float %5599, float %5512, float %5601)  ; FMad(a,b,c)
  %5603 = fmul fast float %5595, %5513
  %5604 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5514, float %5603)  ; FMad(a,b,c)
  %5605 = call float @dx.op.tertiary.f32(i32 46, float %5599, float %5515, float %5604)  ; FMad(a,b,c)
  %5606 = fsub fast float %5602, %5516
  %5607 = fsub fast float %5606, %5523
  %5608 = fadd fast float %5607, %5525
  %5609 = fsub fast float %5605, %5517
  %5610 = fsub fast float %5609, %5524
  %5611 = fadd fast float %5610, %5525
  %5612 = fmul fast float %5608, %5526
  %5613 = fmul fast float %5611, %5526
  %5614 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5615 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5616 = fsub fast float 1.000000e+00, %5614
  %5617 = fsub fast float 1.000000e+00, %5615
  %5618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %5616, float %5617, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5619 = extractvalue %dx.types.ResRet.f32 %5618, 0
  %5620 = fmul fast float %5619, 0x3F9E4BBD60000000
  %5621 = extractvalue %dx.types.CBufRet.f32 %5528, 2
  %5622 = fmul fast float %5621, %5621
  %5623 = fmul fast float %5622, %5502
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = fcmp fast oge float %5624, 0.000000e+00
  %5626 = fmul fast float %5621, %5450
  %5627 = fmul fast float %5621, %5451
  %5628 = fmul fast float %5621, %5452
  %5629 = call float @dx.op.unary.f32(i32 24, float %5624)  ; Sqrt(value)
  %5630 = fmul fast float %5621, %5500
  %5631 = fsub fast float -0.000000e+00, %5629
  %5632 = fsub fast float %5631, %5630
  %5633 = fadd fast float %5632, %5628
  %5634 = select i1 %5625, float %5626, float 0.000000e+00
  %5635 = select i1 %5625, float %5627, float 0.000000e+00
  %5636 = select i1 %5625, float %5633, float 0.000000e+00
  %5637 = fmul fast float %5634, %5495
  %5638 = fmul fast float %5635, %5495
  %5639 = fmul fast float %5636, %5495
  %5640 = fadd fast float %5519, %5637
  %5641 = fadd fast float %5640, %5516
  %5642 = fadd fast float %5520, %5638
  %5643 = fadd fast float %5642, %5517
  %5644 = fadd fast float %5521, %5639
  %5645 = fadd fast float %5644, %5518
  %5646 = fmul fast float %5641, %5508
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5643, float %5510, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5512, float %5647)  ; FMad(a,b,c)
  %5649 = fmul fast float %5641, %5513
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5643, float %5514, float %5649)  ; FMad(a,b,c)
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5515, float %5650)  ; FMad(a,b,c)
  %5652 = fsub fast float %5648, %5516
  %5653 = fsub fast float %5652, %5523
  %5654 = fadd fast float %5653, %5525
  %5655 = fsub fast float %5651, %5517
  %5656 = fsub fast float %5655, %5524
  %5657 = fadd fast float %5656, %5525
  %5658 = fmul fast float %5654, %5526
  %5659 = fmul fast float %5657, %5526
  %5660 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5661 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5662 = fsub fast float 1.000000e+00, %5660
  %5663 = fsub fast float 1.000000e+00, %5661
  %5664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %5662, float %5663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = fmul fast float %5665, 0x3FDDEACB00000000
  %5667 = fadd fast float %5666, %5620
  %5668 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5669 = fmul fast float %5668, %5668
  %5670 = fmul fast float %5669, %5502
  %5671 = fsub fast float 1.000000e+00, %5670
  %5672 = fcmp fast oge float %5671, 0.000000e+00
  %5673 = fmul fast float %5668, %5450
  %5674 = fmul fast float %5668, %5451
  %5675 = fmul fast float %5668, %5452
  %5676 = call float @dx.op.unary.f32(i32 24, float %5671)  ; Sqrt(value)
  %5677 = fmul fast float %5668, %5500
  %5678 = fsub fast float -0.000000e+00, %5676
  %5679 = fsub fast float %5678, %5677
  %5680 = fadd fast float %5679, %5675
  %5681 = select i1 %5672, float %5673, float 0.000000e+00
  %5682 = select i1 %5672, float %5674, float 0.000000e+00
  %5683 = select i1 %5672, float %5680, float 0.000000e+00
  %5684 = fmul fast float %5681, %5495
  %5685 = fmul fast float %5682, %5495
  %5686 = fmul fast float %5683, %5495
  %5687 = fadd fast float %5519, %5684
  %5688 = fadd fast float %5687, %5516
  %5689 = fadd fast float %5520, %5685
  %5690 = fadd fast float %5689, %5517
  %5691 = fadd fast float %5521, %5686
  %5692 = fadd fast float %5691, %5518
  %5693 = fmul fast float %5688, %5508
  %5694 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5510, float %5693)  ; FMad(a,b,c)
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5692, float %5512, float %5694)  ; FMad(a,b,c)
  %5696 = fmul fast float %5688, %5513
  %5697 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5514, float %5696)  ; FMad(a,b,c)
  %5698 = call float @dx.op.tertiary.f32(i32 46, float %5692, float %5515, float %5697)  ; FMad(a,b,c)
  %5699 = fsub fast float %5695, %5516
  %5700 = fsub fast float %5699, %5523
  %5701 = fadd fast float %5700, %5525
  %5702 = fsub fast float %5698, %5517
  %5703 = fsub fast float %5702, %5524
  %5704 = fadd fast float %5703, %5525
  %5705 = fmul fast float %5701, %5526
  %5706 = fmul fast float %5704, %5526
  %5707 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5706)  ; Saturate(value)
  %5709 = fsub fast float 1.000000e+00, %5707
  %5710 = fsub fast float 1.000000e+00, %5708
  %5711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %5709, float %5710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5712 = extractvalue %dx.types.ResRet.f32 %5711, 0
  %5713 = fmul fast float %5712, 0x3FE0183CA0000000
  %5714 = fmul fast float %5712, 0x3FB51033E0000000
  %5715 = fadd fast float %5667, %5713
  %5716 = fadd fast float %5665, %5619
  %5717 = fmul fast float %5716, 0x3FD9D2A200000000
  %5718 = fadd fast float %5714, %5574
  %5719 = fadd fast float %5718, %5717
  br label %5766

; <label>:5720                                    ; preds = %5494
  %5721 = fmul fast float %5502, 0x3FE2024E20000000
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = fcmp fast oge float %5722, 0.000000e+00
  %5724 = fmul fast float %5450, 0x3FE8018960000000
  %5725 = fmul fast float %5451, 0x3FE8018960000000
  %5726 = fmul fast float %5452, 0x3FE8018960000000
  %5727 = call float @dx.op.unary.f32(i32 24, float %5722)  ; Sqrt(value)
  %5728 = fmul fast float %5500, 0x3FE8018960000000
  %5729 = fsub fast float %5726, %5727
  %5730 = fsub fast float %5729, %5728
  %5731 = select i1 %5723, float %5724, float 0.000000e+00
  %5732 = select i1 %5723, float %5725, float 0.000000e+00
  %5733 = select i1 %5723, float %5730, float 0.000000e+00
  %5734 = select i1 %5437, float %5450, float %5731
  %5735 = select i1 %5437, float %5451, float %5732
  %5736 = select i1 %5437, float %5452, float %5733
  %5737 = fmul fast float %5734, %5495
  %5738 = fmul fast float %5735, %5495
  %5739 = fmul fast float %5736, %5495
  %5740 = fadd fast float %5519, %5737
  %5741 = fadd fast float %5740, %5516
  %5742 = fadd fast float %5520, %5738
  %5743 = fadd fast float %5742, %5517
  %5744 = fadd fast float %5521, %5739
  %5745 = fadd fast float %5744, %5518
  %5746 = fmul fast float %5741, %5508
  %5747 = call float @dx.op.tertiary.f32(i32 46, float %5743, float %5510, float %5746)  ; FMad(a,b,c)
  %5748 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5512, float %5747)  ; FMad(a,b,c)
  %5749 = fmul fast float %5741, %5513
  %5750 = call float @dx.op.tertiary.f32(i32 46, float %5743, float %5514, float %5749)  ; FMad(a,b,c)
  %5751 = call float @dx.op.tertiary.f32(i32 46, float %5745, float %5515, float %5750)  ; FMad(a,b,c)
  %5752 = fsub fast float %5748, %5516
  %5753 = fsub fast float %5752, %5523
  %5754 = fadd fast float %5753, %5525
  %5755 = fsub fast float %5751, %5517
  %5756 = fsub fast float %5755, %5524
  %5757 = fadd fast float %5756, %5525
  %5758 = fmul fast float %5754, %5526
  %5759 = fmul fast float %5757, %5526
  %5760 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5761 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5762 = fsub fast float 1.000000e+00, %5760
  %5763 = fsub fast float 1.000000e+00, %5761
  %5764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %5762, float %5763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5765 = extractvalue %dx.types.ResRet.f32 %5764, 0
  br label %5766

; <label>:5766                                    ; preds = %5720, %5527
  %5767 = phi float [ %5765, %5720 ], [ %5715, %5527 ]
  %5768 = phi float [ %5765, %5720 ], [ %5719, %5527 ]
  %5769 = phi float [ %5765, %5720 ], [ %5573, %5527 ]
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = call float @dx.op.unary.f32(i32 6, float %5771)  ; FAbs(value)
  %5773 = fmul fast float %5495, %5495
  %5774 = fadd fast float %5773, 1.000000e+00
  %5775 = fdiv fast float %5772, %5774
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fsub fast float -0.000000e+00, %5495
  %5778 = select i1 %5437, float -0.000000e+00, float %5777
  %5779 = fmul fast float %5424, 0x3FF7154760000000
  %5780 = fmul fast float %5779, %5778
  %5781 = fmul fast float %5425, 0x3FF7154760000000
  %5782 = fmul fast float %5781, %5778
  %5783 = fmul fast float %5426, 0x3FF7154760000000
  %5784 = fmul fast float %5783, %5778
  %5785 = call float @dx.op.unary.f32(i32 21, float %5780)  ; Exp(value)
  %5786 = call float @dx.op.unary.f32(i32 21, float %5782)  ; Exp(value)
  %5787 = call float @dx.op.unary.f32(i32 21, float %5784)  ; Exp(value)
  %5788 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5789 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5790 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5791 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = bitcast float %5792 to i32
  %5794 = sitofp i32 %5793 to float
  %5795 = fptosi float %5794 to i32
  %5796 = bitcast i32 %5795 to float
  %5797 = fmul fast float %5796, 0x3FEF333340000000
  %5798 = fadd fast float %5797, 0x3F999999A0000000
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = fadd fast float %5767, 1.000000e+00
  %5802 = fadd fast float %5768, 1.000000e+00
  %5803 = fadd fast float %5769, 1.000000e+00
  %5804 = fmul fast float %5788, %5801
  %5805 = fmul fast float %5789, %5802
  %5806 = fmul fast float %5790, %5803
  %5807 = fmul fast float %5804, %5800
  %5808 = fmul fast float %5805, %5800
  %5809 = fmul fast float %5806, %5800
  %5810 = fmul fast float %5776, %5801
  %5811 = fmul fast float %5810, %5788
  %5812 = fmul fast float %5811, %5799
  %5813 = fmul fast float %5776, %5802
  %5814 = fmul fast float %5813, %5789
  %5815 = fmul fast float %5814, %5799
  %5816 = fmul fast float %5776, %5803
  %5817 = fmul fast float %5816, %5790
  %5818 = fmul fast float %5817, %5799
  %5819 = fadd fast float %5812, %5788
  %5820 = fadd fast float %5815, %5789
  %5821 = fadd fast float %5818, %5790
  %5822 = call float @dx.op.unary.f32(i32 6, float %5436)  ; FAbs(value)
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = select i1 %5437, float %5819, float %5807
  %5825 = select i1 %5437, float %5820, float %5808
  %5826 = select i1 %5437, float %5821, float %5809
  %5827 = select i1 %5431, float %5823, float 0.000000e+00
  %5828 = fsub fast float %5824, %5788
  %5829 = fsub fast float %5825, %5789
  %5830 = fsub fast float %5826, %5790
  %5831 = fmul fast float %5828, %5827
  %5832 = fmul fast float %5829, %5827
  %5833 = fmul fast float %5830, %5827
  %5834 = fadd fast float %5831, %5788
  %5835 = fadd fast float %5832, %5789
  %5836 = fadd fast float %5833, %5790
  %5837 = fmul fast float %5834, %5058
  %5838 = fmul fast float %5835, %5058
  %5839 = fmul fast float %5836, %5058
  br label %5840

; <label>:5840                                    ; preds = %5766, %5421, %5057
  %5841 = phi float [ %5837, %5766 ], [ %5058, %5421 ], [ %5058, %5057 ]
  %5842 = phi float [ %5838, %5766 ], [ %5058, %5421 ], [ %5058, %5057 ]
  %5843 = phi float [ %5839, %5766 ], [ %5058, %5421 ], [ %5058, %5057 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %76, i32 %77, i32 undef, float %5841, float %5842, float %5843, float %5841, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5844

; <label>:5844                                    ; preds = %5840, %97
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.entryPoints = !{!47}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !35, !37, !40}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34}
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
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!35 = !{!36}
!36 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!37 = !{!38, !39}
!38 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!39 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!40 = !{!41, !42, !43, !44, !45, !46}
!41 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!42 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!43 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!44 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!45 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!46 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!47 = !{void ()* @cs_sunvis_trans, !"cs_sunvis_trans", null, !4, !48}
!48 = !{i32 0, i64 272, i32 4, !49}
!49 = !{i32 16, i32 16, i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
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
!80 = !{!81, !81, i64 0}
!81 = !{!"int", !57, i64 0}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 2}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 2}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
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
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 2}

