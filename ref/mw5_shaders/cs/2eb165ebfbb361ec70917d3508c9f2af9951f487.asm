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
; shader hash: a25d8d43b0e32199872281470416b1ed
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
;                                   texture     u32          2d      T2             t8     1
;                                   texture    byte         r/o      T3            t13     1
;                                   texture    byte         r/o      T4            t24     1
;                                   texture     f32          2d      T5            t19     1
;                                   texture     f32          2d      T6            t20     1
;                                   texture     f32          2d      T7            t21     1
;                                   texture     f32          2d      T8            t22     1
;                                   texture     f32          2d      T9            t23     1
;                                   texture    byte         r/o     T10            t25     1
;                                   texture    byte         r/o     T11            t26     1
;                                   texture    byte         r/o     T12            t27     1
;                                   texture    byte         r/o     T13            t28     1
;                                   texture     f32          2d     T14            t17     1
;                                   texture    byte         r/o     T15            t12     1
;                                   texture     f32          2d     T16             t3     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32          2d     T18             t1     1
;                                   texture     f32          2d     T19             t2     1
;                                   textureunorm_f32     2darray     T20            t15     1
;                                   texture    byte         r/o     T21             t9     1
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = alloca [4 x i32], align 4
  %31 = alloca [4 x i32], align 4
  %32 = alloca [4 x i32], align 4
  %33 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %34 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %35 = alloca [12 x float], align 4
  %36 = alloca [12 x float], align 4
  %37 = alloca [12 x float], align 4
  %38 = alloca [12 x float], align 4
  %39 = alloca [12 x float], align 4
  %40 = alloca [12 x float], align 4
  %41 = alloca [4 x float], align 4
  %42 = alloca [4 x float], align 4
  %43 = alloca [4 x float], align 4
  %44 = alloca [4 x float], align 4
  %45 = alloca [4 x float], align 4
  %46 = alloca [4 x float], align 4
  %47 = alloca [4 x float], align 4
  %48 = alloca [4 x float], align 4
  %49 = alloca [4 x float], align 4
  %50 = alloca [4 x float], align 4
  %51 = alloca [4 x float], align 4
  %52 = alloca [4 x float], align 4
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56, !dx.controlflow.hints !45

; <label>:56                                      ; preds = %0
  %57 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %58 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %59 = shl i32 %33, 2
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, 65535
  %63 = lshr i32 %61, 16
  %64 = shl nuw nsw i32 %62, 4
  %65 = shl nuw nsw i32 %63, 4
  %66 = or i32 %64, %58
  %67 = or i32 %65, %57
  br label %68

; <label>:68                                      ; preds = %56, %0
  %69 = phi i32 [ %62, %56 ], [ %33, %0 ]
  %70 = phi i32 [ %63, %56 ], [ %34, %0 ]
  %71 = phi i32 [ %66, %56 ], [ 0, %0 ]
  %72 = phi i32 [ %67, %56 ], [ 0, %0 ]
  %73 = uitofp i32 %71 to float
  %74 = uitofp i32 %72 to float
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %71, i32 %72, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = fcmp fast olt float %77, -1.000000e+00
  %79 = fcmp fast ogt float %77, -1.000000e+00
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %82 = select i1 %79, float %81, float 1.000000e+00
  %83 = fadd fast float %77, 1.000000e+00
  %84 = fmul fast float %82, %83
  %85 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %86 = extractvalue %dx.types.CBufRet.f32 %80, 3
  %87 = fcmp fast ult float %85, %86
  br i1 %87, label %89, label %88, !dx.controlflow.hints !46

; <label>:88                                      ; preds = %68
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %71, i32 %72, i32 undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5389

; <label>:89                                      ; preds = %68
  %90 = extractvalue %dx.types.CBufRet.f32 %75, 3
  %91 = fmul fast float %90, %74
  %92 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %93 = fmul fast float %92, %73
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = fcmp fast oeq float %95, 0.000000e+00
  %97 = fmul fast float %93, 2.000000e+00
  %98 = fmul fast float %91, 2.000000e+00
  %99 = fsub fast float 1.000000e+00, %97
  %100 = fsub fast float 1.000000e+00, %98
  br i1 %96, label %101, label %130, !dx.controlflow.hints !47

; <label>:101                                     ; preds = %89
  %102 = fsub fast float -0.000000e+00, %99
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 107)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 108)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 109)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %118 = fmul fast float %104, %102
  %119 = call float @dx.op.tertiary.f32(i32 46, float %100, float %105, float %118)  ; FMad(a,b,c)
  %120 = call float @dx.op.tertiary.f32(i32 46, float %85, float %106, float %119)  ; FMad(a,b,c)
  %121 = fadd fast float %120, %107
  %122 = fmul fast float %109, %102
  %123 = call float @dx.op.tertiary.f32(i32 46, float %100, float %110, float %122)  ; FMad(a,b,c)
  %124 = call float @dx.op.tertiary.f32(i32 46, float %85, float %111, float %123)  ; FMad(a,b,c)
  %125 = fadd fast float %124, %112
  %126 = fmul fast float %114, %102
  %127 = call float @dx.op.tertiary.f32(i32 46, float %100, float %115, float %126)  ; FMad(a,b,c)
  %128 = call float @dx.op.tertiary.f32(i32 46, float %85, float %116, float %127)  ; FMad(a,b,c)
  %129 = fadd fast float %128, %117
  br label %179

; <label>:130                                     ; preds = %89
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = select i1 %78, float %132, float %136
  %140 = select i1 %78, float %133, float %137
  %141 = select i1 %78, float %134, float %138
  %142 = fmul fast float %139, %99
  %143 = fmul fast float %140, %99
  %144 = fmul fast float %141, %99
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %78, float %146, float %150
  %154 = select i1 %78, float %147, float %151
  %155 = select i1 %78, float %148, float %152
  %156 = fmul fast float %153, %100
  %157 = fmul fast float %154, %100
  %158 = fmul fast float %155, %100
  %159 = fadd fast float %156, %142
  %160 = fadd fast float %157, %143
  %161 = fadd fast float %158, %144
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = select i1 %78, float %163, float %167
  %171 = select i1 %78, float %164, float %168
  %172 = select i1 %78, float %165, float %169
  %173 = fadd fast float %159, %170
  %174 = fadd fast float %160, %171
  %175 = fadd fast float %161, %172
  %176 = fmul fast float %173, %85
  %177 = fmul fast float %174, %85
  %178 = fmul fast float %175, %85
  br label %179

; <label>:179                                     ; preds = %130, %101
  %180 = phi float [ %121, %101 ], [ %176, %130 ]
  %181 = phi float [ %125, %101 ], [ %177, %130 ]
  %182 = phi float [ %129, %101 ], [ %178, %130 ]
  %183 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %71, i32 %72, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = lshr i32 %184, 8
  %186 = and i32 %184, 255
  %187 = and i32 %185, 255
  %188 = uitofp i32 %186 to float
  %189 = uitofp i32 %187 to float
  %190 = fmul fast float %188, 0x3F80101020000000
  %191 = fmul fast float %189, 0x3F80101020000000
  %192 = fadd fast float %190, -1.000000e+00
  %193 = fadd fast float %191, -1.000000e+00
  %194 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %195 = fsub fast float 1.000000e+00, %194
  %196 = call float @dx.op.unary.f32(i32 6, float %193)  ; FAbs(value)
  %197 = fsub fast float %195, %196
  %198 = fsub fast float -0.000000e+00, %197
  %199 = call float @dx.op.binary.f32(i32 35, float %198, float 0.000000e+00)  ; FMax(a,b)
  %200 = fcmp fast ogt float %192, 0.000000e+00
  %201 = fsub fast float -0.000000e+00, %199
  %202 = select i1 %200, float %201, float %199
  %203 = fadd fast float %202, %192
  %204 = fcmp fast ogt float %193, 0.000000e+00
  %205 = select i1 %204, float %201, float %199
  %206 = fadd fast float %205, %193
  %207 = call float @dx.op.dot3.f32(i32 55, float %203, float %206, float %197, float %203, float %206, float %197)  ; Dot3(ax,ay,az,bx,by,bz)
  %208 = call float @dx.op.unary.f32(i32 25, float %207)  ; Rsqrt(value)
  %209 = fmul fast float %203, %208
  %210 = fmul fast float %206, %208
  %211 = fmul fast float %208, %197
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = call float @dx.op.dot3.f32(i32 55, float %213, float %214, float %215, float %209, float %210, float %211)  ; Dot3(ax,ay,az,bx,by,bz)
  %217 = call float @dx.op.unary.f32(i32 6, float %216)  ; FAbs(value)
  %218 = fsub fast float 1.000000e+00, %217
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %221 = fsub fast float -0.000000e+00, %216
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fmul fast float %220, %222
  %224 = fsub fast float %218, %223
  %225 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %226 = fmul fast float %224, %225
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %231 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 0
  %234 = extractvalue %dx.types.CBufRet.f32 %232, 1
  %235 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %236 = extractvalue %dx.types.CBufRet.f32 %232, 3
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %242 = fmul fast float %228, %180
  %243 = call float @dx.op.tertiary.f32(i32 46, float %181, float %229, float %242)  ; FMad(a,b,c)
  %244 = call float @dx.op.tertiary.f32(i32 46, float %182, float %230, float %243)  ; FMad(a,b,c)
  %245 = fadd fast float %244, %231
  %246 = fmul fast float %233, %180
  %247 = call float @dx.op.tertiary.f32(i32 46, float %181, float %234, float %246)  ; FMad(a,b,c)
  %248 = call float @dx.op.tertiary.f32(i32 46, float %182, float %235, float %247)  ; FMad(a,b,c)
  %249 = fadd fast float %248, %236
  %250 = fmul fast float %238, %180
  %251 = call float @dx.op.tertiary.f32(i32 46, float %181, float %239, float %250)  ; FMad(a,b,c)
  %252 = call float @dx.op.tertiary.f32(i32 46, float %182, float %240, float %251)  ; FMad(a,b,c)
  %253 = fadd fast float %252, %241
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %256 = fmul fast float %255, 0x3FE3C6EF40000000
  %257 = frem fast float %73, 2.560000e+02
  %258 = frem fast float %74, 2.560000e+02
  %259 = fptoui float %257 to i32
  %260 = fptoui float %258 to i32
  %261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %9, i32 0, i32 %259, i32 %260, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 2
  %263 = fadd fast float %262, %256
  %264 = call float @dx.op.unary.f32(i32 22, float %263)  ; Frc(value)
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %267 = fcmp fast une float %266, 0.000000e+00
  br i1 %267, label %268, label %3131, !dx.controlflow.hints !48

; <label>:268                                     ; preds = %179
  %269 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %270 = fptoui float %269 to i32
  %271 = add i32 %270, 15
  %272 = lshr i32 %271, 4
  %273 = mul i32 %272, %70
  %274 = add i32 %273, %69
  %275 = shl i32 %274, 3
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = lshr i32 %277, 28
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %455, !dx.controlflow.hints !49

; <label>:280                                     ; preds = %268
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = fmul fast float %282, %226
  %286 = fadd fast float %284, %253
  %287 = fadd fast float %286, %285
  %288 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %289 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %290 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %291 = fmul fast float %290, %245
  %292 = fmul fast float %290, %249
  %293 = fadd fast float %291, %288
  %294 = fadd fast float %292, %289
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 0
  %300 = call float @dx.op.binary.f32(i32 35, float %287, float 0.000000e+00)  ; FMax(a,b)
  %301 = fadd fast float %300, 0x3F10000000000000
  %302 = fcmp fast oeq float %299, 0.000000e+00
  br i1 %302, label %303, label %370, !dx.controlflow.hints !50

; <label>:303                                     ; preds = %280
  %304 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %306 = fmul fast float %293, %305
  %307 = fmul fast float %294, %304
  %308 = fadd fast float %306, 5.000000e-01
  %309 = call float @dx.op.unary.f32(i32 27, float %308)  ; Round_ni(value)
  %310 = fadd fast float %307, 5.000000e-01
  %311 = call float @dx.op.unary.f32(i32 27, float %310)  ; Round_ni(value)
  %312 = fsub fast float %308, %309
  %313 = fsub fast float %310, %311
  %314 = fadd fast float %309, -5.000000e-01
  %315 = fadd fast float %311, -5.000000e-01
  %316 = fmul fast float %312, 2.000000e+00
  %317 = fsub fast float 3.000000e+00, %316
  %318 = fadd fast float %316, 1.000000e+00
  %319 = fsub fast float 2.000000e+00, %312
  %320 = bitcast float %317 to i32
  %321 = sub nsw i32 2129859010, %320
  %322 = bitcast i32 %321 to float
  %323 = fmul fast float %322, %319
  %324 = fadd fast float %323, -1.000000e+00
  %325 = bitcast float %318 to i32
  %326 = sub nsw i32 2129859010, %325
  %327 = bitcast i32 %326 to float
  %328 = fmul fast float %327, %312
  %329 = fadd fast float %328, 1.000000e+00
  %330 = fmul fast float %313, 2.000000e+00
  %331 = fsub fast float 3.000000e+00, %330
  %332 = fadd fast float %330, 1.000000e+00
  %333 = fsub fast float 2.000000e+00, %313
  %334 = bitcast float %331 to i32
  %335 = sub nsw i32 2129859010, %334
  %336 = bitcast i32 %335 to float
  %337 = fmul fast float %336, %333
  %338 = fadd fast float %337, -1.000000e+00
  %339 = bitcast float %332 to i32
  %340 = sub nsw i32 2129859010, %339
  %341 = bitcast i32 %340 to float
  %342 = fmul fast float %341, %313
  %343 = fadd fast float %342, 1.000000e+00
  %344 = fadd fast float %324, %314
  %345 = fmul fast float %344, %296
  %346 = fadd fast float %338, %315
  %347 = fmul fast float %346, %297
  %348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %345, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float %301)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = fmul fast float %349, %317
  %351 = fadd fast float %329, %314
  %352 = fmul fast float %351, %296
  %353 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %352, float %347, float undef, float undef, i32 0, i32 0, i32 undef, float %301)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = fmul fast float %354, %318
  %356 = fadd fast float %343, %315
  %357 = fmul fast float %356, %297
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %345, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %301)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fmul fast float %359, %317
  %361 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %352, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %301)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = fmul fast float %362, %318
  %364 = fadd fast float %363, %360
  %365 = fmul fast float %364, %332
  %366 = fadd fast float %355, %350
  %367 = fmul fast float %366, %331
  %368 = fadd fast float %367, %365
  %369 = fmul fast float %368, 6.250000e-02
  br label %4602

; <label>:370                                     ; preds = %280
  %371 = fmul fast float %264, 0x401921FB60000000
  %372 = call float @dx.op.unary.f32(i32 13, float %371)  ; Sin(value)
  %373 = call float @dx.op.unary.f32(i32 12, float %371)  ; Cos(value)
  %374 = fsub fast float -0.000000e+00, %372
  br label %375

; <label>:375                                     ; preds = %424, %370
  %376 = phi float [ 0.000000e+00, %370 ], [ %419, %424 ]
  %377 = phi float [ 0.000000e+00, %370 ], [ %421, %424 ]
  %378 = phi i32 [ 0, %370 ], [ %425, %424 ]
  %379 = mul i32 %378, 2
  %380 = add i32 0, %379
  %381 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %380
  %382 = load float, float* %381, align 4
  %383 = mul i32 %378, 2
  %384 = add i32 1, %383
  %385 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %384
  %386 = load float, float* %385, align 4
  %387 = fmul fast float %382, %373
  %388 = call float @dx.op.tertiary.f32(i32 46, float %386, float %374, float %387)  ; FMad(a,b,c)
  %389 = fmul fast float %382, %372
  %390 = call float @dx.op.tertiary.f32(i32 46, float %386, float %373, float %389)  ; FMad(a,b,c)
  %391 = fmul fast float %388, %299
  %392 = fmul fast float %390, %299
  %393 = fadd fast float %391, %293
  %394 = fadd fast float %392, %294
  %395 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %393, float %394, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %396 = extractvalue %dx.types.ResRet.f32 %395, 0
  %397 = extractvalue %dx.types.ResRet.f32 %395, 1
  %398 = extractvalue %dx.types.ResRet.f32 %395, 2
  %399 = extractvalue %dx.types.ResRet.f32 %395, 3
  %400 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %396, float* %400, align 4
  %401 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %397, float* %401, align 4
  %402 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %398, float* %402, align 4
  %403 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %399, float* %403, align 4
  %404 = fsub fast float %396, %301
  %405 = fcmp fast olt float %404, 0.000000e+00
  %406 = select i1 %405, float 0.000000e+00, float 1.000000e+00
  %407 = fadd fast float %406, %376
  %408 = fmul fast float %406, %404
  %409 = fadd fast float %408, %377
  br label %410

; <label>:410                                     ; preds = %410, %375
  %411 = phi i32 [ 1, %375 ], [ %422, %410 ]
  %412 = phi float [ %409, %375 ], [ %421, %410 ]
  %413 = phi float [ %407, %375 ], [ %419, %410 ]
  %414 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %411
  %415 = load float, float* %414, align 4, !tbaa !51
  %416 = fsub fast float %415, %301
  %417 = fcmp fast olt float %416, 0.000000e+00
  %418 = select i1 %417, float 0.000000e+00, float 1.000000e+00
  %419 = fadd fast float %418, %413
  %420 = fmul fast float %418, %416
  %421 = fadd fast float %420, %412
  %422 = add nuw nsw i32 %411, 1
  %423 = icmp eq i32 %422, 4
  br i1 %423, label %424, label %410, !llvm.loop !55

; <label>:424                                     ; preds = %410
  %425 = add nuw nsw i32 %378, 1
  %426 = icmp eq i32 %425, 8
  br i1 %426, label %427, label %375, !llvm.loop !57

; <label>:427                                     ; preds = %424
  %428 = fdiv fast float 1.000000e+00, %419
  %429 = fmul fast float %428, %421
  %430 = fdiv fast float 1.000000e+00, %301
  %431 = fmul fast float %429, %430
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = call float @dx.op.binary.f32(i32 35, float %432, float 0.000000e+00)  ; FMax(a,b)
  %434 = fmul fast float %419, 3.125000e-02
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, 2.000000e+00
  %437 = fadd fast float %436, -1.000000e+00
  %438 = fcmp fast ogt float %437, 0.000000e+00
  %439 = fcmp fast olt float %437, 0.000000e+00
  %440 = zext i1 %438 to i32
  %441 = zext i1 %439 to i32
  %442 = sub nsw i32 %440, %441
  %443 = sitofp i32 %442 to float
  %444 = fmul fast float %443, %437
  %445 = fsub fast float 1.000000e+00, %444
  %446 = fmul fast float %445, %445
  %447 = fmul fast float %446, %445
  %448 = fsub fast float %445, %447
  %449 = fmul fast float %448, %433
  %450 = fsub fast float 1.000000e+00, %447
  %451 = fsub fast float %450, %449
  %452 = fmul fast float %443, 5.000000e-01
  %453 = fmul fast float %452, %451
  %454 = fsub fast float 5.000000e-01, %453
  br label %4602

; <label>:455                                     ; preds = %268
  %456 = icmp eq i32 %278, 1
  br i1 %456, label %457, label %632, !dx.controlflow.hints !58

; <label>:457                                     ; preds = %455
  %458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %459 = extractvalue %dx.types.CBufRet.f32 %458, 2
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %462 = fmul fast float %459, %226
  %463 = fadd fast float %461, %253
  %464 = fadd fast float %463, %462
  %465 = extractvalue %dx.types.CBufRet.f32 %458, 0
  %466 = extractvalue %dx.types.CBufRet.f32 %458, 1
  %467 = extractvalue %dx.types.CBufRet.f32 %458, 3
  %468 = fmul fast float %467, %245
  %469 = fmul fast float %467, %249
  %470 = fadd fast float %468, %465
  %471 = fadd fast float %469, %466
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 2
  %474 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %477 = call float @dx.op.binary.f32(i32 35, float %464, float 0.000000e+00)  ; FMax(a,b)
  %478 = fadd fast float %477, 0x3F10000000000000
  %479 = fcmp fast oeq float %476, 0.000000e+00
  br i1 %479, label %480, label %547, !dx.controlflow.hints !50

; <label>:480                                     ; preds = %457
  %481 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %482 = extractvalue %dx.types.CBufRet.f32 %472, 0
  %483 = fmul fast float %470, %482
  %484 = fmul fast float %471, %481
  %485 = fadd fast float %483, 5.000000e-01
  %486 = call float @dx.op.unary.f32(i32 27, float %485)  ; Round_ni(value)
  %487 = fadd fast float %484, 5.000000e-01
  %488 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %489 = fsub fast float %485, %486
  %490 = fsub fast float %487, %488
  %491 = fadd fast float %486, -5.000000e-01
  %492 = fadd fast float %488, -5.000000e-01
  %493 = fmul fast float %489, 2.000000e+00
  %494 = fsub fast float 3.000000e+00, %493
  %495 = fadd fast float %493, 1.000000e+00
  %496 = fsub fast float 2.000000e+00, %489
  %497 = bitcast float %494 to i32
  %498 = sub nsw i32 2129859010, %497
  %499 = bitcast i32 %498 to float
  %500 = fmul fast float %499, %496
  %501 = fadd fast float %500, -1.000000e+00
  %502 = bitcast float %495 to i32
  %503 = sub nsw i32 2129859010, %502
  %504 = bitcast i32 %503 to float
  %505 = fmul fast float %504, %489
  %506 = fadd fast float %505, 1.000000e+00
  %507 = fmul fast float %490, 2.000000e+00
  %508 = fsub fast float 3.000000e+00, %507
  %509 = fadd fast float %507, 1.000000e+00
  %510 = fsub fast float 2.000000e+00, %490
  %511 = bitcast float %508 to i32
  %512 = sub nsw i32 2129859010, %511
  %513 = bitcast i32 %512 to float
  %514 = fmul fast float %513, %510
  %515 = fadd fast float %514, -1.000000e+00
  %516 = bitcast float %509 to i32
  %517 = sub nsw i32 2129859010, %516
  %518 = bitcast i32 %517 to float
  %519 = fmul fast float %518, %490
  %520 = fadd fast float %519, 1.000000e+00
  %521 = fadd fast float %501, %491
  %522 = fmul fast float %521, %473
  %523 = fadd fast float %515, %492
  %524 = fmul fast float %523, %474
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %522, float %524, float undef, float undef, i32 0, i32 0, i32 undef, float %478)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fmul fast float %526, %494
  %528 = fadd fast float %506, %491
  %529 = fmul fast float %528, %473
  %530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %529, float %524, float undef, float undef, i32 0, i32 0, i32 undef, float %478)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fmul fast float %531, %495
  %533 = fadd fast float %520, %492
  %534 = fmul fast float %533, %474
  %535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %522, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float %478)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = fmul fast float %536, %494
  %538 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %529, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float %478)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = fmul fast float %539, %495
  %541 = fadd fast float %540, %537
  %542 = fmul fast float %541, %509
  %543 = fadd fast float %532, %527
  %544 = fmul fast float %543, %508
  %545 = fadd fast float %544, %542
  %546 = fmul fast float %545, 6.250000e-02
  br label %4602

; <label>:547                                     ; preds = %457
  %548 = fmul fast float %264, 0x401921FB60000000
  %549 = call float @dx.op.unary.f32(i32 13, float %548)  ; Sin(value)
  %550 = call float @dx.op.unary.f32(i32 12, float %548)  ; Cos(value)
  %551 = fsub fast float -0.000000e+00, %549
  br label %552

; <label>:552                                     ; preds = %601, %547
  %553 = phi float [ 0.000000e+00, %547 ], [ %596, %601 ]
  %554 = phi float [ 0.000000e+00, %547 ], [ %598, %601 ]
  %555 = phi i32 [ 0, %547 ], [ %602, %601 ]
  %556 = mul i32 %555, 2
  %557 = add i32 0, %556
  %558 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %557
  %559 = load float, float* %558, align 4
  %560 = mul i32 %555, 2
  %561 = add i32 1, %560
  %562 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %561
  %563 = load float, float* %562, align 4
  %564 = fmul fast float %559, %550
  %565 = call float @dx.op.tertiary.f32(i32 46, float %563, float %551, float %564)  ; FMad(a,b,c)
  %566 = fmul fast float %559, %549
  %567 = call float @dx.op.tertiary.f32(i32 46, float %563, float %550, float %566)  ; FMad(a,b,c)
  %568 = fmul fast float %565, %476
  %569 = fmul fast float %567, %476
  %570 = fadd fast float %568, %470
  %571 = fadd fast float %569, %471
  %572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %26, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = extractvalue %dx.types.ResRet.f32 %572, 1
  %575 = extractvalue %dx.types.ResRet.f32 %572, 2
  %576 = extractvalue %dx.types.ResRet.f32 %572, 3
  %577 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %573, float* %577, align 4
  %578 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %574, float* %578, align 4
  %579 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %575, float* %579, align 4
  %580 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %576, float* %580, align 4
  %581 = fsub fast float %573, %478
  %582 = fcmp fast olt float %581, 0.000000e+00
  %583 = select i1 %582, float 0.000000e+00, float 1.000000e+00
  %584 = fadd fast float %583, %553
  %585 = fmul fast float %583, %581
  %586 = fadd fast float %585, %554
  br label %587

; <label>:587                                     ; preds = %587, %552
  %588 = phi i32 [ 1, %552 ], [ %599, %587 ]
  %589 = phi float [ %586, %552 ], [ %598, %587 ]
  %590 = phi float [ %584, %552 ], [ %596, %587 ]
  %591 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %588
  %592 = load float, float* %591, align 4, !tbaa !51
  %593 = fsub fast float %592, %478
  %594 = fcmp fast olt float %593, 0.000000e+00
  %595 = select i1 %594, float 0.000000e+00, float 1.000000e+00
  %596 = fadd fast float %595, %590
  %597 = fmul fast float %595, %593
  %598 = fadd fast float %597, %589
  %599 = add nuw nsw i32 %588, 1
  %600 = icmp eq i32 %599, 4
  br i1 %600, label %601, label %587, !llvm.loop !55

; <label>:601                                     ; preds = %587
  %602 = add nuw nsw i32 %555, 1
  %603 = icmp eq i32 %602, 8
  br i1 %603, label %604, label %552, !llvm.loop !57

; <label>:604                                     ; preds = %601
  %605 = fdiv fast float 1.000000e+00, %596
  %606 = fmul fast float %605, %598
  %607 = fdiv fast float 1.000000e+00, %478
  %608 = fmul fast float %606, %607
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = call float @dx.op.binary.f32(i32 35, float %609, float 0.000000e+00)  ; FMax(a,b)
  %611 = fmul fast float %596, 3.125000e-02
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %612, 2.000000e+00
  %614 = fadd fast float %613, -1.000000e+00
  %615 = fcmp fast ogt float %614, 0.000000e+00
  %616 = fcmp fast olt float %614, 0.000000e+00
  %617 = zext i1 %615 to i32
  %618 = zext i1 %616 to i32
  %619 = sub nsw i32 %617, %618
  %620 = sitofp i32 %619 to float
  %621 = fmul fast float %620, %614
  %622 = fsub fast float 1.000000e+00, %621
  %623 = fmul fast float %622, %622
  %624 = fmul fast float %623, %622
  %625 = fsub fast float %622, %624
  %626 = fmul fast float %625, %610
  %627 = fsub fast float 1.000000e+00, %624
  %628 = fsub fast float %627, %626
  %629 = fmul fast float %620, 5.000000e-01
  %630 = fmul fast float %629, %628
  %631 = fsub fast float 5.000000e-01, %630
  br label %4602

; <label>:632                                     ; preds = %455
  %633 = icmp eq i32 %278, 2
  br i1 %633, label %634, label %809, !dx.controlflow.hints !59

; <label>:634                                     ; preds = %632
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 2
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 2
  %639 = fmul fast float %636, %226
  %640 = fadd fast float %638, %253
  %641 = fadd fast float %640, %639
  %642 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %635, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %645 = fmul fast float %644, %245
  %646 = fmul fast float %644, %249
  %647 = fadd fast float %645, %642
  %648 = fadd fast float %646, %643
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 3
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 2
  %654 = call float @dx.op.binary.f32(i32 35, float %641, float 0.000000e+00)  ; FMax(a,b)
  %655 = fadd fast float %654, 0x3F10000000000000
  %656 = fcmp fast oeq float %653, 0.000000e+00
  br i1 %656, label %657, label %724, !dx.controlflow.hints !50

; <label>:657                                     ; preds = %634
  %658 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %659 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %660 = fmul fast float %647, %659
  %661 = fmul fast float %648, %658
  %662 = fadd fast float %660, 5.000000e-01
  %663 = call float @dx.op.unary.f32(i32 27, float %662)  ; Round_ni(value)
  %664 = fadd fast float %661, 5.000000e-01
  %665 = call float @dx.op.unary.f32(i32 27, float %664)  ; Round_ni(value)
  %666 = fsub fast float %662, %663
  %667 = fsub fast float %664, %665
  %668 = fadd fast float %663, -5.000000e-01
  %669 = fadd fast float %665, -5.000000e-01
  %670 = fmul fast float %666, 2.000000e+00
  %671 = fsub fast float 3.000000e+00, %670
  %672 = fadd fast float %670, 1.000000e+00
  %673 = fsub fast float 2.000000e+00, %666
  %674 = bitcast float %671 to i32
  %675 = sub nsw i32 2129859010, %674
  %676 = bitcast i32 %675 to float
  %677 = fmul fast float %676, %673
  %678 = fadd fast float %677, -1.000000e+00
  %679 = bitcast float %672 to i32
  %680 = sub nsw i32 2129859010, %679
  %681 = bitcast i32 %680 to float
  %682 = fmul fast float %681, %666
  %683 = fadd fast float %682, 1.000000e+00
  %684 = fmul fast float %667, 2.000000e+00
  %685 = fsub fast float 3.000000e+00, %684
  %686 = fadd fast float %684, 1.000000e+00
  %687 = fsub fast float 2.000000e+00, %667
  %688 = bitcast float %685 to i32
  %689 = sub nsw i32 2129859010, %688
  %690 = bitcast i32 %689 to float
  %691 = fmul fast float %690, %687
  %692 = fadd fast float %691, -1.000000e+00
  %693 = bitcast float %686 to i32
  %694 = sub nsw i32 2129859010, %693
  %695 = bitcast i32 %694 to float
  %696 = fmul fast float %695, %667
  %697 = fadd fast float %696, 1.000000e+00
  %698 = fadd fast float %678, %668
  %699 = fmul fast float %698, %650
  %700 = fadd fast float %692, %669
  %701 = fmul fast float %700, %651
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %699, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float %655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = fmul fast float %703, %671
  %705 = fadd fast float %683, %668
  %706 = fmul fast float %705, %650
  %707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %706, float %701, float undef, float undef, i32 0, i32 0, i32 undef, float %655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = fmul fast float %708, %672
  %710 = fadd fast float %697, %669
  %711 = fmul fast float %710, %651
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %699, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = fmul fast float %713, %671
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %706, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %655)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fmul fast float %716, %672
  %718 = fadd fast float %717, %714
  %719 = fmul fast float %718, %686
  %720 = fadd fast float %709, %704
  %721 = fmul fast float %720, %685
  %722 = fadd fast float %721, %719
  %723 = fmul fast float %722, 6.250000e-02
  br label %4602

; <label>:724                                     ; preds = %634
  %725 = fmul fast float %264, 0x401921FB60000000
  %726 = call float @dx.op.unary.f32(i32 13, float %725)  ; Sin(value)
  %727 = call float @dx.op.unary.f32(i32 12, float %725)  ; Cos(value)
  %728 = fsub fast float -0.000000e+00, %726
  br label %729

; <label>:729                                     ; preds = %778, %724
  %730 = phi float [ 0.000000e+00, %724 ], [ %773, %778 ]
  %731 = phi float [ 0.000000e+00, %724 ], [ %775, %778 ]
  %732 = phi i32 [ 0, %724 ], [ %779, %778 ]
  %733 = mul i32 %732, 2
  %734 = add i32 0, %733
  %735 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %734
  %736 = load float, float* %735, align 4
  %737 = mul i32 %732, 2
  %738 = add i32 1, %737
  %739 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %738
  %740 = load float, float* %739, align 4
  %741 = fmul fast float %736, %727
  %742 = call float @dx.op.tertiary.f32(i32 46, float %740, float %728, float %741)  ; FMad(a,b,c)
  %743 = fmul fast float %736, %726
  %744 = call float @dx.op.tertiary.f32(i32 46, float %740, float %727, float %743)  ; FMad(a,b,c)
  %745 = fmul fast float %742, %653
  %746 = fmul fast float %744, %653
  %747 = fadd fast float %745, %647
  %748 = fadd fast float %746, %648
  %749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %26, float %747, float %748, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %750, float* %754, align 4
  %755 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %751, float* %755, align 4
  %756 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %752, float* %756, align 4
  %757 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %753, float* %757, align 4
  %758 = fsub fast float %750, %655
  %759 = fcmp fast olt float %758, 0.000000e+00
  %760 = select i1 %759, float 0.000000e+00, float 1.000000e+00
  %761 = fadd fast float %760, %730
  %762 = fmul fast float %760, %758
  %763 = fadd fast float %762, %731
  br label %764

; <label>:764                                     ; preds = %764, %729
  %765 = phi i32 [ 1, %729 ], [ %776, %764 ]
  %766 = phi float [ %763, %729 ], [ %775, %764 ]
  %767 = phi float [ %761, %729 ], [ %773, %764 ]
  %768 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %765
  %769 = load float, float* %768, align 4, !tbaa !51
  %770 = fsub fast float %769, %655
  %771 = fcmp fast olt float %770, 0.000000e+00
  %772 = select i1 %771, float 0.000000e+00, float 1.000000e+00
  %773 = fadd fast float %772, %767
  %774 = fmul fast float %772, %770
  %775 = fadd fast float %774, %766
  %776 = add nuw nsw i32 %765, 1
  %777 = icmp eq i32 %776, 4
  br i1 %777, label %778, label %764, !llvm.loop !55

; <label>:778                                     ; preds = %764
  %779 = add nuw nsw i32 %732, 1
  %780 = icmp eq i32 %779, 8
  br i1 %780, label %781, label %729, !llvm.loop !57

; <label>:781                                     ; preds = %778
  %782 = fdiv fast float 1.000000e+00, %773
  %783 = fmul fast float %782, %775
  %784 = fdiv fast float 1.000000e+00, %655
  %785 = fmul fast float %783, %784
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %787 = call float @dx.op.binary.f32(i32 35, float %786, float 0.000000e+00)  ; FMax(a,b)
  %788 = fmul fast float %773, 3.125000e-02
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = fmul fast float %789, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fcmp fast ogt float %791, 0.000000e+00
  %793 = fcmp fast olt float %791, 0.000000e+00
  %794 = zext i1 %792 to i32
  %795 = zext i1 %793 to i32
  %796 = sub nsw i32 %794, %795
  %797 = sitofp i32 %796 to float
  %798 = fmul fast float %797, %791
  %799 = fsub fast float 1.000000e+00, %798
  %800 = fmul fast float %799, %799
  %801 = fmul fast float %800, %799
  %802 = fsub fast float %799, %801
  %803 = fmul fast float %802, %787
  %804 = fsub fast float 1.000000e+00, %801
  %805 = fsub fast float %804, %803
  %806 = fmul fast float %797, 5.000000e-01
  %807 = fmul fast float %806, %805
  %808 = fsub fast float 5.000000e-01, %807
  br label %4602

; <label>:809                                     ; preds = %632
  %810 = icmp eq i32 %278, 12
  br i1 %810, label %811, label %986, !dx.controlflow.hints !60

; <label>:811                                     ; preds = %809
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 0
  %816 = fmul fast float %813, %226
  %817 = fadd fast float %815, %253
  %818 = fadd fast float %817, %816
  %819 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %820 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %821 = extractvalue %dx.types.CBufRet.f32 %812, 3
  %822 = fmul fast float %821, %245
  %823 = fmul fast float %821, %249
  %824 = fadd fast float %822, %819
  %825 = fadd fast float %823, %820
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = call float @dx.op.binary.f32(i32 35, float %818, float 0.000000e+00)  ; FMax(a,b)
  %832 = fadd fast float %831, 0x3F10000000000000
  %833 = fcmp fast oeq float %830, 0.000000e+00
  br i1 %833, label %834, label %901, !dx.controlflow.hints !50

; <label>:834                                     ; preds = %811
  %835 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %837 = fmul fast float %824, %836
  %838 = fmul fast float %825, %835
  %839 = fadd fast float %837, 5.000000e-01
  %840 = call float @dx.op.unary.f32(i32 27, float %839)  ; Round_ni(value)
  %841 = fadd fast float %838, 5.000000e-01
  %842 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %843 = fsub fast float %839, %840
  %844 = fsub fast float %841, %842
  %845 = fadd fast float %840, -5.000000e-01
  %846 = fadd fast float %842, -5.000000e-01
  %847 = fmul fast float %843, 2.000000e+00
  %848 = fsub fast float 3.000000e+00, %847
  %849 = fadd fast float %847, 1.000000e+00
  %850 = fsub fast float 2.000000e+00, %843
  %851 = bitcast float %848 to i32
  %852 = sub nsw i32 2129859010, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %853, %850
  %855 = fadd fast float %854, -1.000000e+00
  %856 = bitcast float %849 to i32
  %857 = sub nsw i32 2129859010, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %858, %843
  %860 = fadd fast float %859, 1.000000e+00
  %861 = fmul fast float %844, 2.000000e+00
  %862 = fsub fast float 3.000000e+00, %861
  %863 = fadd fast float %861, 1.000000e+00
  %864 = fsub fast float 2.000000e+00, %844
  %865 = bitcast float %862 to i32
  %866 = sub nsw i32 2129859010, %865
  %867 = bitcast i32 %866 to float
  %868 = fmul fast float %867, %864
  %869 = fadd fast float %868, -1.000000e+00
  %870 = bitcast float %863 to i32
  %871 = sub nsw i32 2129859010, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %872, %844
  %874 = fadd fast float %873, 1.000000e+00
  %875 = fadd fast float %855, %845
  %876 = fmul fast float %875, %827
  %877 = fadd fast float %869, %846
  %878 = fmul fast float %877, %828
  %879 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %876, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %832)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = fmul fast float %880, %848
  %882 = fadd fast float %860, %845
  %883 = fmul fast float %882, %827
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %883, float %878, float undef, float undef, i32 0, i32 0, i32 undef, float %832)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = fmul fast float %885, %849
  %887 = fadd fast float %874, %846
  %888 = fmul fast float %887, %828
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %876, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %832)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = fmul fast float %890, %848
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %883, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %832)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = fmul fast float %893, %849
  %895 = fadd fast float %894, %891
  %896 = fmul fast float %895, %863
  %897 = fadd fast float %886, %881
  %898 = fmul fast float %897, %862
  %899 = fadd fast float %898, %896
  %900 = fmul fast float %899, 6.250000e-02
  br label %4602

; <label>:901                                     ; preds = %811
  %902 = fmul fast float %264, 0x401921FB60000000
  %903 = call float @dx.op.unary.f32(i32 13, float %902)  ; Sin(value)
  %904 = call float @dx.op.unary.f32(i32 12, float %902)  ; Cos(value)
  %905 = fsub fast float -0.000000e+00, %903
  br label %906

; <label>:906                                     ; preds = %955, %901
  %907 = phi float [ 0.000000e+00, %901 ], [ %950, %955 ]
  %908 = phi float [ 0.000000e+00, %901 ], [ %952, %955 ]
  %909 = phi i32 [ 0, %901 ], [ %956, %955 ]
  %910 = mul i32 %909, 2
  %911 = add i32 0, %910
  %912 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %911
  %913 = load float, float* %912, align 4
  %914 = mul i32 %909, 2
  %915 = add i32 1, %914
  %916 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %915
  %917 = load float, float* %916, align 4
  %918 = fmul fast float %913, %904
  %919 = call float @dx.op.tertiary.f32(i32 46, float %917, float %905, float %918)  ; FMad(a,b,c)
  %920 = fmul fast float %913, %903
  %921 = call float @dx.op.tertiary.f32(i32 46, float %917, float %904, float %920)  ; FMad(a,b,c)
  %922 = fmul fast float %919, %830
  %923 = fmul fast float %921, %830
  %924 = fadd fast float %922, %824
  %925 = fadd fast float %923, %825
  %926 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %26, float %924, float %925, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %927, float* %931, align 4
  %932 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %928, float* %932, align 4
  %933 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %929, float* %933, align 4
  %934 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %930, float* %934, align 4
  %935 = fsub fast float %927, %832
  %936 = fcmp fast olt float %935, 0.000000e+00
  %937 = select i1 %936, float 0.000000e+00, float 1.000000e+00
  %938 = fadd fast float %937, %907
  %939 = fmul fast float %937, %935
  %940 = fadd fast float %939, %908
  br label %941

; <label>:941                                     ; preds = %941, %906
  %942 = phi i32 [ 1, %906 ], [ %953, %941 ]
  %943 = phi float [ %940, %906 ], [ %952, %941 ]
  %944 = phi float [ %938, %906 ], [ %950, %941 ]
  %945 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %942
  %946 = load float, float* %945, align 4, !tbaa !51
  %947 = fsub fast float %946, %832
  %948 = fcmp fast olt float %947, 0.000000e+00
  %949 = select i1 %948, float 0.000000e+00, float 1.000000e+00
  %950 = fadd fast float %949, %944
  %951 = fmul fast float %949, %947
  %952 = fadd fast float %951, %943
  %953 = add nuw nsw i32 %942, 1
  %954 = icmp eq i32 %953, 4
  br i1 %954, label %955, label %941, !llvm.loop !55

; <label>:955                                     ; preds = %941
  %956 = add nuw nsw i32 %909, 1
  %957 = icmp eq i32 %956, 8
  br i1 %957, label %958, label %906, !llvm.loop !57

; <label>:958                                     ; preds = %955
  %959 = fdiv fast float 1.000000e+00, %950
  %960 = fmul fast float %959, %952
  %961 = fdiv fast float 1.000000e+00, %832
  %962 = fmul fast float %960, %961
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %964 = call float @dx.op.binary.f32(i32 35, float %963, float 0.000000e+00)  ; FMax(a,b)
  %965 = fmul fast float %950, 3.125000e-02
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fmul fast float %966, 2.000000e+00
  %968 = fadd fast float %967, -1.000000e+00
  %969 = fcmp fast ogt float %968, 0.000000e+00
  %970 = fcmp fast olt float %968, 0.000000e+00
  %971 = zext i1 %969 to i32
  %972 = zext i1 %970 to i32
  %973 = sub nsw i32 %971, %972
  %974 = sitofp i32 %973 to float
  %975 = fmul fast float %974, %968
  %976 = fsub fast float 1.000000e+00, %975
  %977 = fmul fast float %976, %976
  %978 = fmul fast float %977, %976
  %979 = fsub fast float %976, %978
  %980 = fmul fast float %979, %964
  %981 = fsub fast float 1.000000e+00, %978
  %982 = fsub fast float %981, %980
  %983 = fmul fast float %974, 5.000000e-01
  %984 = fmul fast float %983, %982
  %985 = fsub fast float 5.000000e-01, %984
  br label %4602

; <label>:986                                     ; preds = %809
  %987 = icmp eq i32 %278, 13
  br i1 %987, label %988, label %1658, !dx.controlflow.hints !61

; <label>:988                                     ; preds = %986
  %989 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %990 = fcmp fast une float %989, 0.000000e+00
  br i1 %990, label %991, label %4602, !dx.controlflow.hints !62

; <label>:991                                     ; preds = %988
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1001 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1007 = fmul fast float %993, %180
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %181, float %994, float %1007)  ; FMad(a,b,c)
  %1009 = call float @dx.op.tertiary.f32(i32 46, float %182, float %995, float %1008)  ; FMad(a,b,c)
  %1010 = fadd fast float %1009, %996
  %1011 = fmul fast float %998, %180
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %181, float %999, float %1011)  ; FMad(a,b,c)
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %182, float %1000, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %1013, %1001
  %1015 = fmul fast float %1003, %180
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %181, float %1004, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %182, float %1005, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %1006
  %1019 = fcmp fast oge float %1010, 1.000000e+00
  %1020 = fcmp fast oge float %1014, 1.000000e+00
  %1021 = or i1 %1019, %1020
  %1022 = fcmp fast olt float %1010, 0.000000e+00
  %1023 = fcmp fast olt float %1014, 0.000000e+00
  %1024 = or i1 %1022, %1023
  %1025 = or i1 %1021, %1024
  br i1 %1025, label %4602, label %1026, !dx.controlflow.hints !63

; <label>:1026                                    ; preds = %991
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.i32 %1033, 2
  %1035 = uitofp i32 %1034 to float
  %1036 = extractvalue %dx.types.CBufRet.i32 %1033, 3
  %1037 = uitofp i32 %1036 to float
  %1038 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1039 = fmul fast float %1038, 2.000000e+00
  %1040 = fsub fast float %1010, %1028
  %1041 = fsub fast float %1014, %1029
  %1042 = fmul fast float %1039, %1040
  %1043 = fmul fast float %1039, %1041
  %1044 = fdiv fast float 1.000000e+00, %215
  %1045 = fmul fast float %1043, %1044
  %1046 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1047 = fmul fast float %1030, %182
  %1048 = fmul fast float %1047, %1039
  %1049 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1050 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1051 = call float @dx.op.binary.f32(i32 35, float %1049, float %1046)  ; FMax(a,b)
  %1052 = call float @dx.op.binary.f32(i32 35, float %1050, float %1051)  ; FMax(a,b)
  %1053 = fmul fast float %1052, 2.000000e+00
  %1054 = call float @dx.op.unary.f32(i32 23, float %1053)  ; Log(value)
  %1055 = call float @dx.op.binary.f32(i32 35, float %1054, float %1035)  ; FMax(a,b)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1057 = fadd fast float %1056, 0xBFEA666660000000
  %1058 = fmul fast float %1057, 8.000000e+00
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1061 = fadd fast float %1060, %1059
  %1062 = call float @dx.op.binary.f32(i32 36, float %1061, float %1037)  ; FMin(a,b)
  %1063 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1064 = fsub fast float -0.000000e+00, %1063
  %1065 = call float @dx.op.unary.f32(i32 21, float %1064)  ; Exp(value)
  %1066 = fmul fast float %1065, %1039
  %1067 = fmul fast float %1066, %1010
  %1068 = fmul fast float %1066, %1014
  %1069 = fmul fast float %1067, 5.000000e-01
  %1070 = fmul fast float %1068, 5.000000e-01
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1067, 2.500000e-01
  %1074 = fmul fast float %1068, 2.500000e-01
  %1075 = fadd fast float %1073, 5.000000e-01
  %1076 = fadd fast float %1074, 5.000000e-01
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 536870911
  %1080 = lshr i32 %1079, 9
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1081, %1010
  %1083 = fmul fast float %1081, %1014
  %1084 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1087 = fcmp fast une float %1086, 0.000000e+00
  br i1 %1087, label %1088, label %1186, !dx.controlflow.hints !64

; <label>:1088                                    ; preds = %1026
  %1089 = call float @dx.op.unary.f32(i32 21, float %1060)  ; Exp(value)
  %1090 = fmul fast float %1089, 1.953125e-03
  %1091 = fcmp fast olt float %1084, %1090
  %1092 = fcmp fast olt float %1085, %1090
  %1093 = or i1 %1091, %1092
  %1094 = fsub fast float 1.000000e+00, %1090
  %1095 = fcmp fast ogt float %1084, %1094
  %1096 = fcmp fast ogt float %1085, %1094
  %1097 = or i1 %1095, %1096
  %1098 = or i1 %1093, %1097
  br i1 %1098, label %1099, label %1265, !dx.controlflow.hints !65

; <label>:1099                                    ; preds = %1088
  %1100 = fmul fast float %1032, 5.000000e-01
  %1101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.i32 %1101, 0
  %1103 = fmul fast float %1014, 3.530000e+02
  %1104 = uitofp i32 %1079 to float
  %1105 = fmul fast float %1103, %1104
  %1106 = fmul fast float %1010, 6.130000e+02
  %1107 = fadd fast float %1105, %1106
  %1108 = fptoui float %1107 to i32
  %1109 = add i32 %1102, %1108
  %1110 = mul i32 %1109, -63
  %1111 = lshr i32 %1110, 17
  %1112 = xor i32 %1111, %1110
  %1113 = mul i32 %1112, -511
  %1114 = mul i32 %1112, -8176
  %1115 = xor i32 %1113, %1114
  %1116 = mul i32 %1115, -7
  %1117 = mul i32 %1115, -7168
  %1118 = xor i32 %1116, %1117
  %1119 = lshr i32 %1118, 15
  %1120 = xor i32 %1119, %1116
  %1121 = and i32 %1120, 15
  %1122 = mul i32 %1121, 2
  %1123 = add i32 0, %1122
  %1124 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1123
  %1125 = load float, float* %1124, align 4
  %1126 = mul i32 %1121, 2
  %1127 = add i32 1, %1126
  %1128 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1127
  %1129 = load float, float* %1128, align 4
  %1130 = fmul fast float %1014, 2.770000e+02
  %1131 = fmul fast float %1130, %1104
  %1132 = fmul fast float %1010, 5.990000e+02
  %1133 = fadd fast float %1131, %1132
  %1134 = fptoui float %1133 to i32
  %1135 = mul i32 %1134, -63
  %1136 = lshr i32 %1135, 17
  %1137 = xor i32 %1136, %1135
  %1138 = mul i32 %1137, -511
  %1139 = mul i32 %1137, -8176
  %1140 = xor i32 %1138, %1139
  %1141 = mul i32 %1140, -7
  %1142 = mul i32 %1140, -7168
  %1143 = xor i32 %1141, %1142
  %1144 = lshr i32 %1143, 15
  %1145 = xor i32 %1144, %1141
  %1146 = and i32 %1145, 63
  %1147 = mul i32 %1146, 2
  %1148 = add i32 0, %1147
  %1149 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1148
  %1150 = load float, float* %1149, align 4
  %1151 = mul i32 %1146, 2
  %1152 = add i32 1, %1151
  %1153 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1152
  %1154 = load float, float* %1153, align 4
  %1155 = call float @dx.op.dot2.f32(i32 54, float %1125, float %1129, float %1150, float %1154)  ; Dot2(ax,ay,bx,by)
  %1156 = fsub fast float -0.000000e+00, %1150
  %1157 = call float @dx.op.dot2.f32(i32 54, float %1125, float %1129, float %1156, float %1154)  ; Dot2(ax,ay,bx,by)
  %1158 = fmul fast float %1155, %1100
  %1159 = fmul fast float %1157, %1100
  %1160 = fdiv fast float 2.000000e+00, %1066
  %1161 = fmul fast float %1089, 9.765625e-04
  %1162 = fcmp fast olt float %1084, %1161
  %1163 = fcmp fast olt float %1085, %1161
  %1164 = or i1 %1162, %1163
  %1165 = fsub fast float 1.000000e+00, %1161
  %1166 = fcmp fast ogt float %1084, %1165
  %1167 = fcmp fast ogt float %1085, %1165
  %1168 = or i1 %1166, %1167
  %1169 = or i1 %1164, %1168
  %1170 = fmul fast float %1158, 2.000000e+00
  br i1 %1169, label %1171, label %1175, !dx.controlflow.hints !66

; <label>:1171                                    ; preds = %1099
  %1172 = fmul fast float %1159, 2.000000e+00
  %1173 = fadd fast float %1170, %1071
  %1174 = fadd fast float %1172, %1072
  br label %1175

; <label>:1175                                    ; preds = %1171, %1099
  %1176 = phi float [ %1173, %1171 ], [ %1071, %1099 ]
  %1177 = phi float [ %1174, %1171 ], [ %1072, %1099 ]
  %1178 = phi i32 [ 3, %1171 ], [ 2, %1099 ]
  %1179 = fadd fast float %1158, %1075
  %1180 = fadd fast float %1159, %1076
  %1181 = fmul fast float %1170, %1160
  %1182 = fmul fast float %1160, 2.000000e+00
  %1183 = fmul fast float %1182, %1159
  %1184 = fadd fast float %1181, %1010
  %1185 = fadd fast float %1183, %1014
  br label %1265

; <label>:1186                                    ; preds = %1026
  %1187 = call float @dx.op.unary.f32(i32 21, float %1063)  ; Exp(value)
  %1188 = fmul fast float %1187, 9.765625e-04
  %1189 = fcmp fast olt float %1084, %1188
  %1190 = fcmp fast olt float %1085, %1188
  %1191 = or i1 %1189, %1190
  %1192 = fsub fast float 1.000000e+00, %1188
  %1193 = fcmp fast ogt float %1084, %1192
  %1194 = fcmp fast ogt float %1085, %1192
  %1195 = or i1 %1193, %1194
  %1196 = or i1 %1191, %1195
  br i1 %1196, label %1197, label %1265, !dx.controlflow.hints !67

; <label>:1197                                    ; preds = %1186
  %1198 = fmul fast float %1032, 5.000000e-01
  %1199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.i32 %1199, 0
  %1201 = fmul fast float %1014, 3.530000e+02
  %1202 = uitofp i32 %1079 to float
  %1203 = fmul fast float %1201, %1202
  %1204 = fmul fast float %1010, 6.130000e+02
  %1205 = fadd fast float %1203, %1204
  %1206 = fptoui float %1205 to i32
  %1207 = add i32 %1200, %1206
  %1208 = mul i32 %1207, -63
  %1209 = lshr i32 %1208, 17
  %1210 = xor i32 %1209, %1208
  %1211 = mul i32 %1210, -511
  %1212 = mul i32 %1210, -8176
  %1213 = xor i32 %1211, %1212
  %1214 = mul i32 %1213, -7
  %1215 = mul i32 %1213, -7168
  %1216 = xor i32 %1214, %1215
  %1217 = lshr i32 %1216, 15
  %1218 = xor i32 %1217, %1214
  %1219 = and i32 %1218, 15
  %1220 = mul i32 %1219, 2
  %1221 = add i32 0, %1220
  %1222 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1221
  %1223 = load float, float* %1222, align 4
  %1224 = mul i32 %1219, 2
  %1225 = add i32 1, %1224
  %1226 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1225
  %1227 = load float, float* %1226, align 4
  %1228 = fmul fast float %1014, 2.770000e+02
  %1229 = fmul fast float %1228, %1202
  %1230 = fmul fast float %1010, 5.990000e+02
  %1231 = fadd fast float %1229, %1230
  %1232 = fptoui float %1231 to i32
  %1233 = mul i32 %1232, -63
  %1234 = lshr i32 %1233, 17
  %1235 = xor i32 %1234, %1233
  %1236 = mul i32 %1235, -511
  %1237 = mul i32 %1235, -8176
  %1238 = xor i32 %1236, %1237
  %1239 = mul i32 %1238, -7
  %1240 = mul i32 %1238, -7168
  %1241 = xor i32 %1239, %1240
  %1242 = lshr i32 %1241, 15
  %1243 = xor i32 %1242, %1239
  %1244 = and i32 %1243, 63
  %1245 = mul i32 %1244, 2
  %1246 = add i32 0, %1245
  %1247 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1246
  %1248 = load float, float* %1247, align 4
  %1249 = mul i32 %1244, 2
  %1250 = add i32 1, %1249
  %1251 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1250
  %1252 = load float, float* %1251, align 4
  %1253 = call float @dx.op.dot2.f32(i32 54, float %1223, float %1227, float %1248, float %1252)  ; Dot2(ax,ay,bx,by)
  %1254 = fsub fast float -0.000000e+00, %1248
  %1255 = call float @dx.op.dot2.f32(i32 54, float %1223, float %1227, float %1254, float %1252)  ; Dot2(ax,ay,bx,by)
  %1256 = fmul fast float %1253, %1198
  %1257 = fmul fast float %1255, %1198
  %1258 = fadd fast float %1256, %1071
  %1259 = fadd fast float %1257, %1072
  %1260 = fdiv fast float 2.000000e+00, %1066
  %1261 = fmul fast float %1260, %1256
  %1262 = fmul fast float %1257, %1260
  %1263 = fadd fast float %1261, %1010
  %1264 = fadd fast float %1262, %1014
  br label %1265

; <label>:1265                                    ; preds = %1197, %1186, %1175, %1088
  %1266 = phi float [ %1179, %1175 ], [ %1075, %1088 ], [ %1075, %1197 ], [ %1075, %1186 ]
  %1267 = phi float [ %1180, %1175 ], [ %1076, %1088 ], [ %1076, %1197 ], [ %1076, %1186 ]
  %1268 = phi float [ %1176, %1175 ], [ %1071, %1088 ], [ %1258, %1197 ], [ %1071, %1186 ]
  %1269 = phi float [ %1177, %1175 ], [ %1072, %1088 ], [ %1259, %1197 ], [ %1072, %1186 ]
  %1270 = phi i32 [ %1178, %1175 ], [ 0, %1088 ], [ 1, %1197 ], [ 0, %1186 ]
  %1271 = phi float [ %1184, %1175 ], [ %1010, %1088 ], [ %1263, %1197 ], [ %1010, %1186 ]
  %1272 = phi float [ %1185, %1175 ], [ %1014, %1088 ], [ %1264, %1197 ], [ %1014, %1186 ]
  %1273 = fsub fast float %1037, %1035
  %1274 = fptoui float %1273 to i32
  %1275 = add i32 %1274, 320
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %1275)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1279 = fcmp fast une float %1062, %1037
  %1280 = fsub fast float %1271, %1277
  %1281 = fsub fast float %1272, %1278
  %1282 = call float @dx.op.unary.f32(i32 6, float %1280)  ; FAbs(value)
  %1283 = call float @dx.op.unary.f32(i32 6, float %1281)  ; FAbs(value)
  %1284 = fmul fast float %1282, %1066
  %1285 = fmul fast float %1283, %1066
  %1286 = fcmp fast olt float %1284, 1.000000e+00
  %1287 = fcmp fast olt float %1285, 1.000000e+00
  %1288 = and i1 %1286, %1287
  %1289 = or i1 %1279, %1288
  br i1 %1289, label %1290, label %4602, !dx.controlflow.hints !68

; <label>:1290                                    ; preds = %1265
  %1291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.i32 %1291, 2
  %1293 = sitofp i32 %1292 to float
  %1294 = fsub fast float %1062, %1293
  %1295 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1296 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1297 = icmp eq i32 %1270, 0
  %1298 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1299 = call float @dx.op.unary.f32(i32 22, float %1269)  ; Frc(value)
  br i1 %1297, label %1370, label %1300, !dx.controlflow.hints !69

; <label>:1300                                    ; preds = %1290
  %1301 = and i32 %1270, 1
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1316, label %1303, !dx.controlflow.hints !70

; <label>:1303                                    ; preds = %1300
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 0
  %1306 = fmul fast float %1298, %1305
  %1307 = fmul fast float %1299, %1305
  %1308 = fptoui float %1306 to i32
  %1309 = fptoui float %1307 to i32
  %1310 = fptoui float %1295 to i32
  %1311 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1308, i32 %1309, i32 %1310, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  br label %1322

; <label>:1316                                    ; preds = %1300
  %1317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %1298, float %1299, float %1295, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1318 = extractvalue %dx.types.ResRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.ResRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.ResRet.f32 %1317, 2
  %1321 = extractvalue %dx.types.ResRet.f32 %1317, 3
  br label %1322

; <label>:1322                                    ; preds = %1316, %1303
  %1323 = phi float [ %1312, %1303 ], [ %1318, %1316 ]
  %1324 = phi float [ %1313, %1303 ], [ %1319, %1316 ]
  %1325 = phi float [ %1314, %1303 ], [ %1320, %1316 ]
  %1326 = phi float [ %1315, %1303 ], [ %1321, %1316 ]
  %1327 = fcmp fast ogt float %1296, 0.000000e+00
  br i1 %1327, label %1328, label %1398, !dx.controlflow.hints !71

; <label>:1328                                    ; preds = %1322
  %1329 = and i32 %1270, 2
  %1330 = icmp eq i32 %1329, 0
  %1331 = fadd fast float %1295, 1.000000e+00
  %1332 = call float @dx.op.unary.f32(i32 22, float %1266)  ; Frc(value)
  %1333 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  br i1 %1330, label %1347, label %1334, !dx.controlflow.hints !72

; <label>:1334                                    ; preds = %1328
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 0
  %1337 = fmul fast float %1332, %1336
  %1338 = fmul fast float %1333, %1336
  %1339 = fptoui float %1337 to i32
  %1340 = fptoui float %1338 to i32
  %1341 = fptoui float %1331 to i32
  %1342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %1339, i32 %1340, i32 %1341, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = extractvalue %dx.types.ResRet.f32 %1342, 1
  %1345 = extractvalue %dx.types.ResRet.f32 %1342, 2
  %1346 = extractvalue %dx.types.ResRet.f32 %1342, 3
  br label %1353

; <label>:1347                                    ; preds = %1328
  %1348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %1332, float %1333, float %1331, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.ResRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.ResRet.f32 %1348, 2
  %1352 = extractvalue %dx.types.ResRet.f32 %1348, 3
  br label %1353

; <label>:1353                                    ; preds = %1347, %1334
  %1354 = phi float [ %1343, %1334 ], [ %1349, %1347 ]
  %1355 = phi float [ %1344, %1334 ], [ %1350, %1347 ]
  %1356 = phi float [ %1345, %1334 ], [ %1351, %1347 ]
  %1357 = phi float [ %1346, %1334 ], [ %1352, %1347 ]
  %1358 = fsub fast float %1354, %1323
  %1359 = fsub fast float %1355, %1324
  %1360 = fsub fast float %1356, %1325
  %1361 = fsub fast float %1357, %1326
  %1362 = fmul fast float %1358, %1296
  %1363 = fmul fast float %1359, %1296
  %1364 = fmul fast float %1360, %1296
  %1365 = fmul fast float %1361, %1296
  %1366 = fadd fast float %1362, %1323
  %1367 = fadd fast float %1363, %1324
  %1368 = fadd fast float %1364, %1325
  %1369 = fadd fast float %1365, %1326
  br label %1398

; <label>:1370                                    ; preds = %1290
  %1371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %1298, float %1299, float %1295, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.ResRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.ResRet.f32 %1371, 2
  %1375 = extractvalue %dx.types.ResRet.f32 %1371, 3
  %1376 = fcmp fast ogt float %1296, 0.000000e+00
  br i1 %1376, label %1377, label %1398, !dx.controlflow.hints !73

; <label>:1377                                    ; preds = %1370
  %1378 = fadd fast float %1295, 1.000000e+00
  %1379 = call float @dx.op.unary.f32(i32 22, float %1266)  ; Frc(value)
  %1380 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %1379, float %1380, float %1378, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = extractvalue %dx.types.ResRet.f32 %1381, 3
  %1386 = fsub fast float %1382, %1372
  %1387 = fsub fast float %1383, %1373
  %1388 = fsub fast float %1384, %1374
  %1389 = fsub fast float %1385, %1375
  %1390 = fmul fast float %1386, %1296
  %1391 = fmul fast float %1387, %1296
  %1392 = fmul fast float %1388, %1296
  %1393 = fmul fast float %1389, %1296
  %1394 = fadd fast float %1390, %1372
  %1395 = fadd fast float %1391, %1373
  %1396 = fadd fast float %1392, %1374
  %1397 = fadd fast float %1393, %1375
  br label %1398

; <label>:1398                                    ; preds = %1377, %1370, %1353, %1322
  %1399 = phi float [ %1366, %1353 ], [ %1323, %1322 ], [ %1394, %1377 ], [ %1372, %1370 ]
  %1400 = phi float [ %1367, %1353 ], [ %1324, %1322 ], [ %1395, %1377 ], [ %1373, %1370 ]
  %1401 = phi float [ %1368, %1353 ], [ %1325, %1322 ], [ %1396, %1377 ], [ %1374, %1370 ]
  %1402 = phi float [ %1369, %1353 ], [ %1326, %1322 ], [ %1397, %1377 ], [ %1375, %1370 ]
  %1403 = fadd fast float %1399, -5.000000e-01
  %1404 = fadd fast float %1401, -5.000000e-01
  %1405 = fmul fast float %1403, 0xBFD5555560000000
  %1406 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1404, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1400, float 0.000000e+00)  ; FMad(a,b,c)
  %1408 = fadd fast float %1407, %1402
  %1409 = fmul fast float %1403, -7.500000e-01
  %1410 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1404, float %1409)  ; FMad(a,b,c)
  %1411 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1400, float 0.000000e+00)  ; FMad(a,b,c)
  %1412 = fadd fast float %1411, %1402
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 0
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.CBufRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1420 = fsub fast float %1416, %1406
  %1421 = fsub fast float %1417, %1408
  %1422 = fsub fast float %1418, %1410
  %1423 = fsub fast float %1419, %1412
  %1424 = fmul fast float %1420, %1414
  %1425 = fmul fast float %1421, %1414
  %1426 = fmul fast float %1422, %1414
  %1427 = fmul fast float %1423, %1414
  %1428 = fadd fast float %1424, %1406
  %1429 = fadd fast float %1425, %1408
  %1430 = fadd fast float %1426, %1410
  %1431 = fadd fast float %1427, %1412
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 536870911
  %1435 = uitofp i32 %1434 to float
  %1436 = fmul fast float %1435, %1271
  %1437 = fmul fast float %1435, %1272
  %1438 = fptoui float %1436 to i32
  %1439 = fptoui float %1437 to i32
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 31
  %1443 = lshr i32 %1438, %1442
  %1444 = lshr i32 %1439, %1442
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 31
  %1448 = shl i32 1, %1447
  %1449 = call i32 @dx.op.binary.i32(i32 40, i32 %1448, i32 4)  ; UMin(a,b)
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.i32 %1450, 1
  %1453 = icmp eq i32 %1449, 0
  br i1 %1453, label %1495, label %1454

; <label>:1454                                    ; preds = %1398
  br label %1455

; <label>:1455                                    ; preds = %1483, %1454
  %1456 = phi i32 [ %1486, %1483 ], [ 0, %1454 ]
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = lshr i32 %1458, 16
  %1460 = and i32 %1459, 31
  %1461 = shl i32 %1444, %1460
  %1462 = add i32 %1461, %1443
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 31
  %1466 = shl i32 %1462, %1465
  %1467 = add i32 %1466, %1456
  %1468 = shl i32 %1467, 2
  %1469 = add i32 %1468, 32
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = icmp slt i32 %1471, 0
  %1473 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1456
  %1474 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1456
  %1475 = bitcast float* %1473 to i32*
  %1476 = bitcast float* %1474 to i32*
  br i1 %1472, label %1477, label %1483, !dx.controlflow.hints !74

; <label>:1477                                    ; preds = %1455
  %1478 = and i32 %1471, 1073741823
  %1479 = add nuw nsw i32 %1478, 20
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = extractvalue %dx.types.ResRet.i32 %1480, 1
  br label %1483

; <label>:1483                                    ; preds = %1477, %1455
  %1484 = phi i32 [ %1481, %1477 ], [ %1451, %1455 ]
  %1485 = phi i32 [ %1482, %1477 ], [ %1452, %1455 ]
  store i32 %1484, i32* %1475, align 4
  store i32 %1485, i32* %1476, align 4
  %1486 = add nuw i32 %1456, 1
  %1487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.i32 %1487, 2
  %1489 = icmp eq i32 %1488, 0
  %1490 = icmp ugt i32 %1471, -1073741825
  %1491 = and i1 %1490, %1489
  %1492 = icmp ult i32 %1486, %1449
  %1493 = and i1 %1491, %1492
  br i1 %1493, label %1455, label %1494, !dx.controlflow.hints !75

; <label>:1494                                    ; preds = %1483
  br label %1495

; <label>:1495                                    ; preds = %1494, %1398
  %1496 = phi i32 [ 0, %1398 ], [ %1486, %1494 ]
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 2
  %1499 = fptoui float %1498 to i32
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1552, label %1501

; <label>:1501                                    ; preds = %1495
  br label %1502

; <label>:1502                                    ; preds = %1547, %1501
  %1503 = phi i32 [ %1548, %1547 ], [ %1496, %1501 ]
  %1504 = phi i32 [ %1549, %1547 ], [ 0, %1501 ]
  %1505 = lshr i32 %1504, 2
  %1506 = and i32 %1504, 3
  %1507 = add nuw nsw i32 %1505, 83
  %1508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 %1507)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.i32 %1508, 0
  %1510 = extractvalue %dx.types.CBufRet.i32 %1508, 1
  %1511 = extractvalue %dx.types.CBufRet.i32 %1508, 2
  %1512 = extractvalue %dx.types.CBufRet.i32 %1508, 3
  %1513 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %1509, i32* %1513, align 4
  %1514 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %1510, i32* %1514, align 4
  %1515 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %1511, i32* %1515, align 4
  %1516 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %1512, i32* %1516, align 4
  %1517 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 %1506
  %1518 = load i32, i32* %1517, align 4, !tbaa !76
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = lshr i32 %1520, 16
  %1522 = and i32 %1521, 31
  %1523 = shl i32 %1444, %1522
  %1524 = add i32 %1523, %1443
  %1525 = shl i32 %1524, 2
  %1526 = add i32 %1525, %1518
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1547, label %1530, !dx.controlflow.hints !78

; <label>:1530                                    ; preds = %1502
  %1531 = icmp slt i32 %1528, 0
  %1532 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1503
  %1533 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1503
  %1534 = bitcast float* %1532 to i32*
  %1535 = bitcast float* %1533 to i32*
  br i1 %1531, label %1536, label %1543, !dx.controlflow.hints !79

; <label>:1536                                    ; preds = %1530
  %1537 = and i32 %1528, 1073741823
  %1538 = add i32 %1518, 20
  %1539 = add i32 %1538, %1537
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.i32 %1540, 1
  br label %1543

; <label>:1543                                    ; preds = %1536, %1530
  %1544 = phi i32 [ %1541, %1536 ], [ %1451, %1530 ]
  %1545 = phi i32 [ %1542, %1536 ], [ %1452, %1530 ]
  store i32 %1544, i32* %1534, align 4
  store i32 %1545, i32* %1535, align 4
  %1546 = add i32 %1503, 1
  br label %1547

; <label>:1547                                    ; preds = %1543, %1502
  %1548 = phi i32 [ %1503, %1502 ], [ %1546, %1543 ]
  %1549 = add nuw i32 %1504, 1
  %1550 = icmp eq i32 %1549, %1499
  br i1 %1550, label %1551, label %1502

; <label>:1551                                    ; preds = %1547
  br label %1552

; <label>:1552                                    ; preds = %1551, %1495
  %1553 = phi i32 [ %1496, %1495 ], [ %1548, %1551 ]
  %1554 = icmp eq i32 %1553, 1
  %1555 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 0
  %1556 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  br i1 %1554, label %1557, label %1560, !dx.controlflow.hints !80

; <label>:1557                                    ; preds = %1552
  %1558 = load float, float* %1555, align 4
  %1559 = load float, float* %1556, align 4
  br label %1587

; <label>:1560                                    ; preds = %1552
  %1561 = load float, float* %1555, align 4
  %1562 = load float, float* %1556, align 4
  %1563 = fdiv fast float 1.000000e+00, %1562
  %1564 = fsub fast float %1561, %1563
  %1565 = icmp ugt i32 %1553, 1
  br i1 %1565, label %1566, label %1582

; <label>:1566                                    ; preds = %1560
  br label %1567

; <label>:1567                                    ; preds = %1567, %1566
  %1568 = phi float [ %1577, %1567 ], [ %1564, %1566 ]
  %1569 = phi float [ %1578, %1567 ], [ %1561, %1566 ]
  %1570 = phi i32 [ %1579, %1567 ], [ 1, %1566 ]
  %1571 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1570
  %1572 = load float, float* %1571, align 4
  %1573 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1570
  %1574 = load float, float* %1573, align 4
  %1575 = fdiv fast float 1.000000e+00, %1574
  %1576 = fsub fast float %1572, %1575
  %1577 = call float @dx.op.binary.f32(i32 36, float %1568, float %1576)  ; FMin(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1569, float %1572)  ; FMax(a,b)
  %1579 = add nuw i32 %1570, 1
  %1580 = icmp eq i32 %1579, %1553
  br i1 %1580, label %1581, label %1567

; <label>:1581                                    ; preds = %1567
  br label %1582

; <label>:1582                                    ; preds = %1581, %1560
  %1583 = phi float [ %1564, %1560 ], [ %1577, %1581 ]
  %1584 = phi float [ %1561, %1560 ], [ %1578, %1581 ]
  %1585 = fsub fast float %1584, %1583
  %1586 = fdiv fast float 1.000000e+00, %1585
  br label %1587

; <label>:1587                                    ; preds = %1582, %1557
  %1588 = phi float [ %1558, %1557 ], [ %1584, %1582 ]
  %1589 = phi float [ %1559, %1557 ], [ %1586, %1582 ]
  %1590 = fadd fast float %1018, %1588
  %1591 = fmul fast float %1590, %1589
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fmul fast float %1592, 2.000000e+00
  %1594 = fsub fast float 1.000000e+00, %1593
  %1595 = fmul fast float %1428, %1428
  %1596 = fsub fast float %1429, %1595
  %1597 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1596)  ; FMax(a,b)
  %1598 = fdiv fast float 1.000000e+00, %1597
  %1599 = fmul fast float %1429, %1428
  %1600 = fsub fast float %1430, %1599
  %1601 = fsub fast float %1594, %1428
  %1602 = fmul fast float %1594, %1594
  %1603 = fsub fast float %1602, %1429
  %1604 = fmul fast float %1598, %1600
  %1605 = fmul fast float %1604, %1601
  %1606 = fsub fast float %1603, %1605
  %1607 = fmul fast float %1429, %1429
  %1608 = fsub fast float %1431, %1607
  %1609 = fmul fast float %1600, %1600
  %1610 = fmul fast float %1609, %1598
  %1611 = fsub fast float %1608, %1610
  %1612 = fdiv fast float %1606, %1611
  %1613 = fmul fast float %1612, %1600
  %1614 = fsub fast float %1601, %1613
  %1615 = fmul fast float %1614, %1598
  %1616 = fmul fast float %1615, %1428
  %1617 = fsub fast float 1.000000e+00, %1616
  %1618 = fmul fast float %1612, %1429
  %1619 = fsub fast float %1617, %1618
  %1620 = fmul fast float %1615, %1615
  %1621 = fmul fast float %1612, 4.000000e+00
  %1622 = fmul fast float %1621, %1619
  %1623 = fsub fast float %1620, %1622
  %1624 = call float @dx.op.unary.f32(i32 24, float %1623)  ; Sqrt(value)
  %1625 = fcmp fast oge float %1615, 0.000000e+00
  %1626 = fsub fast float -0.000000e+00, %1624
  %1627 = select i1 %1625, float %1626, float %1624
  %1628 = fsub fast float %1627, %1615
  %1629 = fdiv fast float %1628, %1612
  %1630 = fdiv fast float %1619, %1628
  %1631 = fmul fast float %1629, 5.000000e-01
  %1632 = fmul fast float %1630, 2.000000e+00
  %1633 = select i1 %1625, float %1631, float %1632
  %1634 = select i1 %1625, float %1632, float %1631
  %1635 = call float @dx.op.binary.f32(i32 35, float %1633, float %1634)  ; FMax(a,b)
  %1636 = call float @dx.op.binary.f32(i32 36, float %1633, float %1634)  ; FMin(a,b)
  %1637 = fcmp fast ogt float %1594, %1635
  %1638 = fsub fast float %1594, %1636
  %1639 = fsub fast float %1594, %1635
  %1640 = fsub fast float %1635, %1636
  %1641 = select i1 %1637, float %1639, float %1640
  %1642 = fmul float %1638, %1641
  %1643 = select i1 %1637, float %1636, float %1594
  %1644 = fcmp fast ogt float %1594, %1636
  %1645 = fmul fast float %1643, %1635
  %1646 = fadd fast float %1643, %1635
  %1647 = fmul fast float %1646, %1428
  %1648 = fadd fast float %1645, %1429
  %1649 = fsub fast float %1648, %1647
  %1650 = fdiv fast float %1649, %1642
  %1651 = select i1 %1644, float %1650, float 0.000000e+00
  %1652 = fsub fast float 1.000000e+00, %1651
  %1653 = select i1 %1637, float %1652, float %1651
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1413, 3
  %1656 = fmul fast float %1655, %1654
  %1657 = fsub fast float 1.000000e+00, %1656
  br label %4602

; <label>:1658                                    ; preds = %986
  %1659 = icmp eq i32 %278, 11
  br i1 %1659, label %4602, label %1660, !dx.controlflow.hints !81

; <label>:1660                                    ; preds = %1658
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1665 = fmul fast float %1664, %245
  %1666 = fmul fast float %1664, %249
  %1667 = fadd fast float %1665, %1662
  %1668 = fadd fast float %1666, %1663
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.CBufRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1673 = fmul fast float %1672, %245
  %1674 = fmul fast float %1672, %249
  %1675 = fadd fast float %1673, %1670
  %1676 = fadd fast float %1674, %1671
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 1
  %1679 = fsub fast float %1678, %253
  %1680 = extractvalue %dx.types.CBufRet.f32 %1677, 2
  %1681 = fmul fast float %1679, %1680
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  br i1 %78, label %1744, label %1684, !dx.controlflow.hints !82

; <label>:1684                                    ; preds = %1660
  %1685 = extractvalue %dx.types.CBufRet.f32 %1669, 2
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1688 = fadd fast float %1687, %1685
  %1689 = fcmp fast ogt float %1688, 0.000000e+00
  br i1 %1689, label %1690, label %1714, !dx.controlflow.hints !83

; <label>:1690                                    ; preds = %1684
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = fsub fast float %1675, %1692
  %1695 = fsub fast float %1676, %1693
  %1696 = fcmp fast olt float %1694, 0.000000e+00
  %1697 = fcmp fast olt float %1695, 0.000000e+00
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1698, 2
  %1702 = extractvalue %dx.types.CBufRet.f32 %1698, 3
  %1703 = select i1 %1696, float %1699, float %1701
  %1704 = select i1 %1697, float %1700, float %1702
  %1705 = fmul fast float %1703, %1694
  %1706 = fmul fast float %1704, %1695
  %1707 = call float @dx.op.unary.f32(i32 6, float %1705)  ; FAbs(value)
  %1708 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1709 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %1710 = call float @dx.op.binary.f32(i32 35, float %1707, float %1708)  ; FMax(a,b)
  %1711 = fsub fast float %1709, %1710
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fmul fast float %1712, %1683
  br label %1714

; <label>:1714                                    ; preds = %1690, %1684
  %1715 = phi float [ %1713, %1690 ], [ 0.000000e+00, %1684 ]
  %1716 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1717 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1718 = fadd fast float %1717, %1716
  %1719 = fcmp fast ogt float %1718, 0.000000e+00
  br i1 %1719, label %1720, label %1744, !dx.controlflow.hints !84

; <label>:1720                                    ; preds = %1714
  %1721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1722 = extractvalue %dx.types.CBufRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.CBufRet.f32 %1721, 1
  %1724 = fsub fast float %1667, %1722
  %1725 = fsub fast float %1668, %1723
  %1726 = fcmp fast olt float %1724, 0.000000e+00
  %1727 = fcmp fast olt float %1725, 0.000000e+00
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1739 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %1740 = call float @dx.op.binary.f32(i32 35, float %1737, float %1738)  ; FMax(a,b)
  %1741 = fsub fast float %1739, %1740
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1743 = fmul fast float %1742, %1683
  br label %1744

; <label>:1744                                    ; preds = %1720, %1714, %1660
  %1745 = phi float [ 0.000000e+00, %1660 ], [ %1743, %1720 ], [ 0.000000e+00, %1714 ]
  %1746 = phi float [ 0.000000e+00, %1660 ], [ %1715, %1720 ], [ %1715, %1714 ]
  %1747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1748 = extractvalue %dx.types.CBufRet.f32 %1747, 0
  %1749 = extractvalue %dx.types.CBufRet.f32 %1747, 1
  %1750 = fmul fast float %1748, %85
  %1751 = fadd fast float %1750, %1749
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 0
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1756 = fsub fast float %245, %1754
  %1757 = fsub fast float %249, %1755
  %1758 = fcmp fast olt float %1756, 0.000000e+00
  %1759 = fcmp fast olt float %1757, 0.000000e+00
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 0
  %1762 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1763 = extractvalue %dx.types.CBufRet.f32 %1760, 2
  %1764 = extractvalue %dx.types.CBufRet.f32 %1760, 3
  %1765 = select i1 %1758, float %1761, float %1763
  %1766 = select i1 %1759, float %1762, float %1764
  %1767 = fmul fast float %1765, %1756
  %1768 = fmul fast float %1766, %1757
  %1769 = call float @dx.op.unary.f32(i32 6, float %1767)  ; FAbs(value)
  %1770 = call float @dx.op.unary.f32(i32 6, float %1768)  ; FAbs(value)
  %1771 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %1772 = call float @dx.op.binary.f32(i32 35, float %1769, float %1770)  ; FMax(a,b)
  %1773 = fsub fast float %1771, %1772
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  %1775 = call float @dx.op.binary.f32(i32 36, float %1774, float %1752)  ; FMin(a,b)
  %1776 = fmul fast float %1775, %1683
  %1777 = fsub fast float %1745, %1776
  %1778 = fsub fast float %1746, %1745
  %1779 = fsub fast float %1778, %1776
  %1780 = call float @dx.op.binary.f32(i32 35, float %1745, float %1746)  ; FMax(a,b)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1776, float %1780)  ; FMax(a,b)
  %1782 = fcmp fast olt float %1781, 1.000000e+00
  %1783 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %1784 = fcmp fast une float %1783, 0.000000e+00
  %1785 = and i1 %1782, %1784
  br i1 %1785, label %1786, label %2453, !dx.controlflow.hints !85

; <label>:1786                                    ; preds = %1744
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = extractvalue %dx.types.CBufRet.f32 %1792, 1
  %1795 = extractvalue %dx.types.CBufRet.f32 %1792, 2
  %1796 = extractvalue %dx.types.CBufRet.f32 %1792, 3
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1802 = fmul fast float %1788, %180
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %181, float %1789, float %1802)  ; FMad(a,b,c)
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %182, float %1790, float %1803)  ; FMad(a,b,c)
  %1805 = fadd fast float %1804, %1791
  %1806 = fmul fast float %1793, %180
  %1807 = call float @dx.op.tertiary.f32(i32 46, float %181, float %1794, float %1806)  ; FMad(a,b,c)
  %1808 = call float @dx.op.tertiary.f32(i32 46, float %182, float %1795, float %1807)  ; FMad(a,b,c)
  %1809 = fadd fast float %1808, %1796
  %1810 = fmul fast float %1798, %180
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %181, float %1799, float %1810)  ; FMad(a,b,c)
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %182, float %1800, float %1811)  ; FMad(a,b,c)
  %1813 = fadd fast float %1812, %1801
  %1814 = fcmp fast oge float %1805, 1.000000e+00
  %1815 = fcmp fast oge float %1809, 1.000000e+00
  %1816 = or i1 %1814, %1815
  %1817 = fcmp fast olt float %1805, 0.000000e+00
  %1818 = fcmp fast olt float %1809, 0.000000e+00
  %1819 = or i1 %1817, %1818
  %1820 = or i1 %1816, %1819
  br i1 %1820, label %2453, label %1821, !dx.controlflow.hints !63

; <label>:1821                                    ; preds = %1786
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 1
  %1825 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 1
  %1828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.i32 %1828, 2
  %1830 = uitofp i32 %1829 to float
  %1831 = extractvalue %dx.types.CBufRet.i32 %1828, 3
  %1832 = uitofp i32 %1831 to float
  %1833 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1834 = fmul fast float %1833, 2.000000e+00
  %1835 = fsub fast float %1805, %1823
  %1836 = fsub fast float %1809, %1824
  %1837 = fmul fast float %1834, %1835
  %1838 = fmul fast float %1834, %1836
  %1839 = fdiv fast float 1.000000e+00, %215
  %1840 = fmul fast float %1838, %1839
  %1841 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1842 = fmul fast float %1825, %182
  %1843 = fmul fast float %1842, %1834
  %1844 = call float @dx.op.unary.f32(i32 6, float %1843)  ; FAbs(value)
  %1845 = call float @dx.op.unary.f32(i32 6, float %1837)  ; FAbs(value)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1844, float %1841)  ; FMax(a,b)
  %1847 = call float @dx.op.binary.f32(i32 35, float %1845, float %1846)  ; FMax(a,b)
  %1848 = fmul fast float %1847, 2.000000e+00
  %1849 = call float @dx.op.unary.f32(i32 23, float %1848)  ; Log(value)
  %1850 = call float @dx.op.binary.f32(i32 35, float %1849, float %1830)  ; FMax(a,b)
  %1851 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1852 = fadd fast float %1851, 0xBFEA666660000000
  %1853 = fmul fast float %1852, 8.000000e+00
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  %1855 = call float @dx.op.unary.f32(i32 27, float %1850)  ; Round_ni(value)
  %1856 = fadd fast float %1855, %1854
  %1857 = call float @dx.op.binary.f32(i32 36, float %1856, float %1832)  ; FMin(a,b)
  %1858 = call float @dx.op.unary.f32(i32 27, float %1857)  ; Round_ni(value)
  %1859 = fsub fast float -0.000000e+00, %1858
  %1860 = call float @dx.op.unary.f32(i32 21, float %1859)  ; Exp(value)
  %1861 = fmul fast float %1860, %1834
  %1862 = fmul fast float %1861, %1805
  %1863 = fmul fast float %1861, %1809
  %1864 = fmul fast float %1862, 5.000000e-01
  %1865 = fmul fast float %1863, 5.000000e-01
  %1866 = fadd fast float %1864, 5.000000e-01
  %1867 = fadd fast float %1865, 5.000000e-01
  %1868 = fmul fast float %1862, 2.500000e-01
  %1869 = fmul fast float %1863, 2.500000e-01
  %1870 = fadd fast float %1868, 5.000000e-01
  %1871 = fadd fast float %1869, 5.000000e-01
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 536870911
  %1875 = lshr i32 %1874, 9
  %1876 = uitofp i32 %1875 to float
  %1877 = fmul fast float %1876, %1805
  %1878 = fmul fast float %1876, %1809
  %1879 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1880 = call float @dx.op.unary.f32(i32 22, float %1878)  ; Frc(value)
  %1881 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1882 = fcmp fast une float %1881, 0.000000e+00
  br i1 %1882, label %1883, label %1981, !dx.controlflow.hints !64

; <label>:1883                                    ; preds = %1821
  %1884 = call float @dx.op.unary.f32(i32 21, float %1855)  ; Exp(value)
  %1885 = fmul fast float %1884, 1.953125e-03
  %1886 = fcmp fast olt float %1879, %1885
  %1887 = fcmp fast olt float %1880, %1885
  %1888 = or i1 %1886, %1887
  %1889 = fsub fast float 1.000000e+00, %1885
  %1890 = fcmp fast ogt float %1879, %1889
  %1891 = fcmp fast ogt float %1880, %1889
  %1892 = or i1 %1890, %1891
  %1893 = or i1 %1888, %1892
  br i1 %1893, label %1894, label %2060, !dx.controlflow.hints !65

; <label>:1894                                    ; preds = %1883
  %1895 = fmul fast float %1827, 5.000000e-01
  %1896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.i32 %1896, 0
  %1898 = fmul fast float %1809, 3.530000e+02
  %1899 = uitofp i32 %1874 to float
  %1900 = fmul fast float %1898, %1899
  %1901 = fmul fast float %1805, 6.130000e+02
  %1902 = fadd fast float %1900, %1901
  %1903 = fptoui float %1902 to i32
  %1904 = add i32 %1897, %1903
  %1905 = mul i32 %1904, -63
  %1906 = lshr i32 %1905, 17
  %1907 = xor i32 %1906, %1905
  %1908 = mul i32 %1907, -511
  %1909 = mul i32 %1907, -8176
  %1910 = xor i32 %1908, %1909
  %1911 = mul i32 %1910, -7
  %1912 = mul i32 %1910, -7168
  %1913 = xor i32 %1911, %1912
  %1914 = lshr i32 %1913, 15
  %1915 = xor i32 %1914, %1911
  %1916 = and i32 %1915, 15
  %1917 = mul i32 %1916, 2
  %1918 = add i32 0, %1917
  %1919 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1918
  %1920 = load float, float* %1919, align 4
  %1921 = mul i32 %1916, 2
  %1922 = add i32 1, %1921
  %1923 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1922
  %1924 = load float, float* %1923, align 4
  %1925 = fmul fast float %1809, 2.770000e+02
  %1926 = fmul fast float %1925, %1899
  %1927 = fmul fast float %1805, 5.990000e+02
  %1928 = fadd fast float %1926, %1927
  %1929 = fptoui float %1928 to i32
  %1930 = mul i32 %1929, -63
  %1931 = lshr i32 %1930, 17
  %1932 = xor i32 %1931, %1930
  %1933 = mul i32 %1932, -511
  %1934 = mul i32 %1932, -8176
  %1935 = xor i32 %1933, %1934
  %1936 = mul i32 %1935, -7
  %1937 = mul i32 %1935, -7168
  %1938 = xor i32 %1936, %1937
  %1939 = lshr i32 %1938, 15
  %1940 = xor i32 %1939, %1936
  %1941 = and i32 %1940, 63
  %1942 = mul i32 %1941, 2
  %1943 = add i32 0, %1942
  %1944 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1943
  %1945 = load float, float* %1944, align 4
  %1946 = mul i32 %1941, 2
  %1947 = add i32 1, %1946
  %1948 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1947
  %1949 = load float, float* %1948, align 4
  %1950 = call float @dx.op.dot2.f32(i32 54, float %1920, float %1924, float %1945, float %1949)  ; Dot2(ax,ay,bx,by)
  %1951 = fsub fast float -0.000000e+00, %1945
  %1952 = call float @dx.op.dot2.f32(i32 54, float %1920, float %1924, float %1951, float %1949)  ; Dot2(ax,ay,bx,by)
  %1953 = fmul fast float %1950, %1895
  %1954 = fmul fast float %1952, %1895
  %1955 = fdiv fast float 2.000000e+00, %1861
  %1956 = fmul fast float %1884, 9.765625e-04
  %1957 = fcmp fast olt float %1879, %1956
  %1958 = fcmp fast olt float %1880, %1956
  %1959 = or i1 %1957, %1958
  %1960 = fsub fast float 1.000000e+00, %1956
  %1961 = fcmp fast ogt float %1879, %1960
  %1962 = fcmp fast ogt float %1880, %1960
  %1963 = or i1 %1961, %1962
  %1964 = or i1 %1959, %1963
  %1965 = fmul fast float %1953, 2.000000e+00
  br i1 %1964, label %1966, label %1970, !dx.controlflow.hints !66

; <label>:1966                                    ; preds = %1894
  %1967 = fmul fast float %1954, 2.000000e+00
  %1968 = fadd fast float %1965, %1866
  %1969 = fadd fast float %1967, %1867
  br label %1970

; <label>:1970                                    ; preds = %1966, %1894
  %1971 = phi float [ %1968, %1966 ], [ %1866, %1894 ]
  %1972 = phi float [ %1969, %1966 ], [ %1867, %1894 ]
  %1973 = phi i32 [ 3, %1966 ], [ 2, %1894 ]
  %1974 = fadd fast float %1953, %1870
  %1975 = fadd fast float %1954, %1871
  %1976 = fmul fast float %1965, %1955
  %1977 = fmul fast float %1955, 2.000000e+00
  %1978 = fmul fast float %1977, %1954
  %1979 = fadd fast float %1976, %1805
  %1980 = fadd fast float %1978, %1809
  br label %2060

; <label>:1981                                    ; preds = %1821
  %1982 = call float @dx.op.unary.f32(i32 21, float %1858)  ; Exp(value)
  %1983 = fmul fast float %1982, 9.765625e-04
  %1984 = fcmp fast olt float %1879, %1983
  %1985 = fcmp fast olt float %1880, %1983
  %1986 = or i1 %1984, %1985
  %1987 = fsub fast float 1.000000e+00, %1983
  %1988 = fcmp fast ogt float %1879, %1987
  %1989 = fcmp fast ogt float %1880, %1987
  %1990 = or i1 %1988, %1989
  %1991 = or i1 %1986, %1990
  br i1 %1991, label %1992, label %2060, !dx.controlflow.hints !67

; <label>:1992                                    ; preds = %1981
  %1993 = fmul fast float %1827, 5.000000e-01
  %1994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.i32 %1994, 0
  %1996 = fmul fast float %1809, 3.530000e+02
  %1997 = uitofp i32 %1874 to float
  %1998 = fmul fast float %1996, %1997
  %1999 = fmul fast float %1805, 6.130000e+02
  %2000 = fadd fast float %1998, %1999
  %2001 = fptoui float %2000 to i32
  %2002 = add i32 %1995, %2001
  %2003 = mul i32 %2002, -63
  %2004 = lshr i32 %2003, 17
  %2005 = xor i32 %2004, %2003
  %2006 = mul i32 %2005, -511
  %2007 = mul i32 %2005, -8176
  %2008 = xor i32 %2006, %2007
  %2009 = mul i32 %2008, -7
  %2010 = mul i32 %2008, -7168
  %2011 = xor i32 %2009, %2010
  %2012 = lshr i32 %2011, 15
  %2013 = xor i32 %2012, %2009
  %2014 = and i32 %2013, 15
  %2015 = mul i32 %2014, 2
  %2016 = add i32 0, %2015
  %2017 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2016
  %2018 = load float, float* %2017, align 4
  %2019 = mul i32 %2014, 2
  %2020 = add i32 1, %2019
  %2021 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2020
  %2022 = load float, float* %2021, align 4
  %2023 = fmul fast float %1809, 2.770000e+02
  %2024 = fmul fast float %2023, %1997
  %2025 = fmul fast float %1805, 5.990000e+02
  %2026 = fadd fast float %2024, %2025
  %2027 = fptoui float %2026 to i32
  %2028 = mul i32 %2027, -63
  %2029 = lshr i32 %2028, 17
  %2030 = xor i32 %2029, %2028
  %2031 = mul i32 %2030, -511
  %2032 = mul i32 %2030, -8176
  %2033 = xor i32 %2031, %2032
  %2034 = mul i32 %2033, -7
  %2035 = mul i32 %2033, -7168
  %2036 = xor i32 %2034, %2035
  %2037 = lshr i32 %2036, 15
  %2038 = xor i32 %2037, %2034
  %2039 = and i32 %2038, 63
  %2040 = mul i32 %2039, 2
  %2041 = add i32 0, %2040
  %2042 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2041
  %2043 = load float, float* %2042, align 4
  %2044 = mul i32 %2039, 2
  %2045 = add i32 1, %2044
  %2046 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2045
  %2047 = load float, float* %2046, align 4
  %2048 = call float @dx.op.dot2.f32(i32 54, float %2018, float %2022, float %2043, float %2047)  ; Dot2(ax,ay,bx,by)
  %2049 = fsub fast float -0.000000e+00, %2043
  %2050 = call float @dx.op.dot2.f32(i32 54, float %2018, float %2022, float %2049, float %2047)  ; Dot2(ax,ay,bx,by)
  %2051 = fmul fast float %2048, %1993
  %2052 = fmul fast float %2050, %1993
  %2053 = fadd fast float %2051, %1866
  %2054 = fadd fast float %2052, %1867
  %2055 = fdiv fast float 2.000000e+00, %1861
  %2056 = fmul fast float %2055, %2051
  %2057 = fmul fast float %2052, %2055
  %2058 = fadd fast float %2056, %1805
  %2059 = fadd fast float %2057, %1809
  br label %2060

; <label>:2060                                    ; preds = %1992, %1981, %1970, %1883
  %2061 = phi float [ %1974, %1970 ], [ %1870, %1883 ], [ %1870, %1992 ], [ %1870, %1981 ]
  %2062 = phi float [ %1975, %1970 ], [ %1871, %1883 ], [ %1871, %1992 ], [ %1871, %1981 ]
  %2063 = phi float [ %1971, %1970 ], [ %1866, %1883 ], [ %2053, %1992 ], [ %1866, %1981 ]
  %2064 = phi float [ %1972, %1970 ], [ %1867, %1883 ], [ %2054, %1992 ], [ %1867, %1981 ]
  %2065 = phi i32 [ %1973, %1970 ], [ 0, %1883 ], [ 1, %1992 ], [ 0, %1981 ]
  %2066 = phi float [ %1979, %1970 ], [ %1805, %1883 ], [ %2058, %1992 ], [ %1805, %1981 ]
  %2067 = phi float [ %1980, %1970 ], [ %1809, %1883 ], [ %2059, %1992 ], [ %1809, %1981 ]
  %2068 = fsub fast float %1832, %1830
  %2069 = fptoui float %2068 to i32
  %2070 = add i32 %2069, 320
  %2071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %2070)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.CBufRet.f32 %2071, 1
  %2074 = fcmp fast une float %1857, %1832
  %2075 = fsub fast float %2066, %2072
  %2076 = fsub fast float %2067, %2073
  %2077 = call float @dx.op.unary.f32(i32 6, float %2075)  ; FAbs(value)
  %2078 = call float @dx.op.unary.f32(i32 6, float %2076)  ; FAbs(value)
  %2079 = fmul fast float %2077, %1861
  %2080 = fmul fast float %2078, %1861
  %2081 = fcmp fast olt float %2079, 1.000000e+00
  %2082 = fcmp fast olt float %2080, 1.000000e+00
  %2083 = and i1 %2081, %2082
  %2084 = or i1 %2074, %2083
  br i1 %2084, label %2085, label %2453, !dx.controlflow.hints !68

; <label>:2085                                    ; preds = %2060
  %2086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.i32 %2086, 2
  %2088 = sitofp i32 %2087 to float
  %2089 = fsub fast float %1857, %2088
  %2090 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2091 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %2092 = icmp eq i32 %2065, 0
  %2093 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2094 = call float @dx.op.unary.f32(i32 22, float %2064)  ; Frc(value)
  br i1 %2092, label %2165, label %2095, !dx.controlflow.hints !69

; <label>:2095                                    ; preds = %2085
  %2096 = and i32 %2065, 1
  %2097 = icmp eq i32 %2096, 0
  br i1 %2097, label %2111, label %2098, !dx.controlflow.hints !70

; <label>:2098                                    ; preds = %2095
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2101 = fmul fast float %2093, %2100
  %2102 = fmul fast float %2094, %2100
  %2103 = fptoui float %2101 to i32
  %2104 = fptoui float %2102 to i32
  %2105 = fptoui float %2090 to i32
  %2106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %2103, i32 %2104, i32 %2105, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2107 = extractvalue %dx.types.ResRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.ResRet.f32 %2106, 1
  %2109 = extractvalue %dx.types.ResRet.f32 %2106, 2
  %2110 = extractvalue %dx.types.ResRet.f32 %2106, 3
  br label %2117

; <label>:2111                                    ; preds = %2095
  %2112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2093, float %2094, float %2090, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = extractvalue %dx.types.ResRet.f32 %2112, 1
  %2115 = extractvalue %dx.types.ResRet.f32 %2112, 2
  %2116 = extractvalue %dx.types.ResRet.f32 %2112, 3
  br label %2117

; <label>:2117                                    ; preds = %2111, %2098
  %2118 = phi float [ %2107, %2098 ], [ %2113, %2111 ]
  %2119 = phi float [ %2108, %2098 ], [ %2114, %2111 ]
  %2120 = phi float [ %2109, %2098 ], [ %2115, %2111 ]
  %2121 = phi float [ %2110, %2098 ], [ %2116, %2111 ]
  %2122 = fcmp fast ogt float %2091, 0.000000e+00
  br i1 %2122, label %2123, label %2193, !dx.controlflow.hints !71

; <label>:2123                                    ; preds = %2117
  %2124 = and i32 %2065, 2
  %2125 = icmp eq i32 %2124, 0
  %2126 = fadd fast float %2090, 1.000000e+00
  %2127 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2128 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  br i1 %2125, label %2142, label %2129, !dx.controlflow.hints !72

; <label>:2129                                    ; preds = %2123
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = fmul fast float %2127, %2131
  %2133 = fmul fast float %2128, %2131
  %2134 = fptoui float %2132 to i32
  %2135 = fptoui float %2133 to i32
  %2136 = fptoui float %2126 to i32
  %2137 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %2134, i32 %2135, i32 %2136, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.ResRet.f32 %2137, 2
  %2141 = extractvalue %dx.types.ResRet.f32 %2137, 3
  br label %2148

; <label>:2142                                    ; preds = %2123
  %2143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2127, float %2128, float %2126, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.ResRet.f32 %2143, 1
  %2146 = extractvalue %dx.types.ResRet.f32 %2143, 2
  %2147 = extractvalue %dx.types.ResRet.f32 %2143, 3
  br label %2148

; <label>:2148                                    ; preds = %2142, %2129
  %2149 = phi float [ %2138, %2129 ], [ %2144, %2142 ]
  %2150 = phi float [ %2139, %2129 ], [ %2145, %2142 ]
  %2151 = phi float [ %2140, %2129 ], [ %2146, %2142 ]
  %2152 = phi float [ %2141, %2129 ], [ %2147, %2142 ]
  %2153 = fsub fast float %2149, %2118
  %2154 = fsub fast float %2150, %2119
  %2155 = fsub fast float %2151, %2120
  %2156 = fsub fast float %2152, %2121
  %2157 = fmul fast float %2153, %2091
  %2158 = fmul fast float %2154, %2091
  %2159 = fmul fast float %2155, %2091
  %2160 = fmul fast float %2156, %2091
  %2161 = fadd fast float %2157, %2118
  %2162 = fadd fast float %2158, %2119
  %2163 = fadd fast float %2159, %2120
  %2164 = fadd fast float %2160, %2121
  br label %2193

; <label>:2165                                    ; preds = %2085
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2093, float %2094, float %2090, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = extractvalue %dx.types.ResRet.f32 %2166, 1
  %2169 = extractvalue %dx.types.ResRet.f32 %2166, 2
  %2170 = extractvalue %dx.types.ResRet.f32 %2166, 3
  %2171 = fcmp fast ogt float %2091, 0.000000e+00
  br i1 %2171, label %2172, label %2193, !dx.controlflow.hints !73

; <label>:2172                                    ; preds = %2165
  %2173 = fadd fast float %2090, 1.000000e+00
  %2174 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2175 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %2174, float %2175, float %2173, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.ResRet.f32 %2176, 3
  %2181 = fsub fast float %2177, %2167
  %2182 = fsub fast float %2178, %2168
  %2183 = fsub fast float %2179, %2169
  %2184 = fsub fast float %2180, %2170
  %2185 = fmul fast float %2181, %2091
  %2186 = fmul fast float %2182, %2091
  %2187 = fmul fast float %2183, %2091
  %2188 = fmul fast float %2184, %2091
  %2189 = fadd fast float %2185, %2167
  %2190 = fadd fast float %2186, %2168
  %2191 = fadd fast float %2187, %2169
  %2192 = fadd fast float %2188, %2170
  br label %2193

; <label>:2193                                    ; preds = %2172, %2165, %2148, %2117
  %2194 = phi float [ %2161, %2148 ], [ %2118, %2117 ], [ %2189, %2172 ], [ %2167, %2165 ]
  %2195 = phi float [ %2162, %2148 ], [ %2119, %2117 ], [ %2190, %2172 ], [ %2168, %2165 ]
  %2196 = phi float [ %2163, %2148 ], [ %2120, %2117 ], [ %2191, %2172 ], [ %2169, %2165 ]
  %2197 = phi float [ %2164, %2148 ], [ %2121, %2117 ], [ %2192, %2172 ], [ %2170, %2165 ]
  %2198 = fadd fast float %2194, -5.000000e-01
  %2199 = fadd fast float %2196, -5.000000e-01
  %2200 = fmul fast float %2198, 0xBFD5555560000000
  %2201 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2199, float %2200)  ; FMad(a,b,c)
  %2202 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2195, float 0.000000e+00)  ; FMad(a,b,c)
  %2203 = fadd fast float %2202, %2197
  %2204 = fmul fast float %2198, -7.500000e-01
  %2205 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2199, float %2204)  ; FMad(a,b,c)
  %2206 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2195, float 0.000000e+00)  ; FMad(a,b,c)
  %2207 = fadd fast float %2206, %2197
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 0
  %2210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.CBufRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.CBufRet.f32 %2210, 2
  %2214 = extractvalue %dx.types.CBufRet.f32 %2210, 3
  %2215 = fsub fast float %2211, %2201
  %2216 = fsub fast float %2212, %2203
  %2217 = fsub fast float %2213, %2205
  %2218 = fsub fast float %2214, %2207
  %2219 = fmul fast float %2215, %2209
  %2220 = fmul fast float %2216, %2209
  %2221 = fmul fast float %2217, %2209
  %2222 = fmul fast float %2218, %2209
  %2223 = fadd fast float %2219, %2201
  %2224 = fadd fast float %2220, %2203
  %2225 = fadd fast float %2221, %2205
  %2226 = fadd fast float %2222, %2207
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 536870911
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, %2066
  %2232 = fmul fast float %2230, %2067
  %2233 = fptoui float %2231 to i32
  %2234 = fptoui float %2232 to i32
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 31
  %2238 = lshr i32 %2233, %2237
  %2239 = lshr i32 %2234, %2237
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %2241, 31
  %2243 = shl i32 1, %2242
  %2244 = call i32 @dx.op.binary.i32(i32 40, i32 %2243, i32 4)  ; UMin(a,b)
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = extractvalue %dx.types.ResRet.i32 %2245, 1
  %2248 = icmp eq i32 %2244, 0
  br i1 %2248, label %2290, label %2249

; <label>:2249                                    ; preds = %2193
  br label %2250

; <label>:2250                                    ; preds = %2278, %2249
  %2251 = phi i32 [ %2281, %2278 ], [ 0, %2249 ]
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = lshr i32 %2253, 16
  %2255 = and i32 %2254, 31
  %2256 = shl i32 %2239, %2255
  %2257 = add i32 %2256, %2238
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = and i32 %2259, 31
  %2261 = shl i32 %2257, %2260
  %2262 = add i32 %2261, %2251
  %2263 = shl i32 %2262, 2
  %2264 = add i32 %2263, 32
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = icmp slt i32 %2266, 0
  %2268 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %2251
  %2269 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %2251
  %2270 = bitcast float* %2268 to i32*
  %2271 = bitcast float* %2269 to i32*
  br i1 %2267, label %2272, label %2278, !dx.controlflow.hints !74

; <label>:2272                                    ; preds = %2250
  %2273 = and i32 %2266, 1073741823
  %2274 = add nuw nsw i32 %2273, 20
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = extractvalue %dx.types.ResRet.i32 %2275, 1
  br label %2278

; <label>:2278                                    ; preds = %2272, %2250
  %2279 = phi i32 [ %2276, %2272 ], [ %2246, %2250 ]
  %2280 = phi i32 [ %2277, %2272 ], [ %2247, %2250 ]
  store i32 %2279, i32* %2270, align 4
  store i32 %2280, i32* %2271, align 4
  %2281 = add nuw i32 %2251, 1
  %2282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2283 = extractvalue %dx.types.CBufRet.i32 %2282, 2
  %2284 = icmp eq i32 %2283, 0
  %2285 = icmp ugt i32 %2266, -1073741825
  %2286 = and i1 %2285, %2284
  %2287 = icmp ult i32 %2281, %2244
  %2288 = and i1 %2286, %2287
  br i1 %2288, label %2250, label %2289, !dx.controlflow.hints !75

; <label>:2289                                    ; preds = %2278
  br label %2290

; <label>:2290                                    ; preds = %2289, %2193
  %2291 = phi i32 [ 0, %2193 ], [ %2281, %2289 ]
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2294 = fptoui float %2293 to i32
  %2295 = icmp eq i32 %2294, 0
  br i1 %2295, label %2347, label %2296

; <label>:2296                                    ; preds = %2290
  br label %2297

; <label>:2297                                    ; preds = %2342, %2296
  %2298 = phi i32 [ %2343, %2342 ], [ %2291, %2296 ]
  %2299 = phi i32 [ %2344, %2342 ], [ 0, %2296 ]
  %2300 = lshr i32 %2299, 2
  %2301 = and i32 %2299, 3
  %2302 = add nuw nsw i32 %2300, 83
  %2303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 %2302)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.i32 %2303, 0
  %2305 = extractvalue %dx.types.CBufRet.i32 %2303, 1
  %2306 = extractvalue %dx.types.CBufRet.i32 %2303, 2
  %2307 = extractvalue %dx.types.CBufRet.i32 %2303, 3
  %2308 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 0
  store i32 %2304, i32* %2308, align 4
  %2309 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 1
  store i32 %2305, i32* %2309, align 4
  %2310 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 2
  store i32 %2306, i32* %2310, align 4
  %2311 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 3
  store i32 %2307, i32* %2311, align 4
  %2312 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i32 0, i32 %2301
  %2313 = load i32, i32* %2312, align 4, !tbaa !76
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = lshr i32 %2315, 16
  %2317 = and i32 %2316, 31
  %2318 = shl i32 %2239, %2317
  %2319 = add i32 %2318, %2238
  %2320 = shl i32 %2319, 2
  %2321 = add i32 %2320, %2313
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = icmp eq i32 %2323, 0
  br i1 %2324, label %2342, label %2325, !dx.controlflow.hints !78

; <label>:2325                                    ; preds = %2297
  %2326 = icmp slt i32 %2323, 0
  %2327 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %2298
  %2328 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %2298
  %2329 = bitcast float* %2327 to i32*
  %2330 = bitcast float* %2328 to i32*
  br i1 %2326, label %2331, label %2338, !dx.controlflow.hints !79

; <label>:2331                                    ; preds = %2325
  %2332 = and i32 %2323, 1073741823
  %2333 = add i32 %2313, 20
  %2334 = add i32 %2333, %2332
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.i32 %2335, 1
  br label %2338

; <label>:2338                                    ; preds = %2331, %2325
  %2339 = phi i32 [ %2336, %2331 ], [ %2246, %2325 ]
  %2340 = phi i32 [ %2337, %2331 ], [ %2247, %2325 ]
  store i32 %2339, i32* %2329, align 4
  store i32 %2340, i32* %2330, align 4
  %2341 = add i32 %2298, 1
  br label %2342

; <label>:2342                                    ; preds = %2338, %2297
  %2343 = phi i32 [ %2298, %2297 ], [ %2341, %2338 ]
  %2344 = add nuw i32 %2299, 1
  %2345 = icmp eq i32 %2344, %2294
  br i1 %2345, label %2346, label %2297

; <label>:2346                                    ; preds = %2342
  br label %2347

; <label>:2347                                    ; preds = %2346, %2290
  %2348 = phi i32 [ %2291, %2290 ], [ %2343, %2346 ]
  %2349 = icmp eq i32 %2348, 1
  %2350 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 0
  %2351 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 0
  br i1 %2349, label %2352, label %2355, !dx.controlflow.hints !80

; <label>:2352                                    ; preds = %2347
  %2353 = load float, float* %2350, align 4
  %2354 = load float, float* %2351, align 4
  br label %2382

; <label>:2355                                    ; preds = %2347
  %2356 = load float, float* %2350, align 4
  %2357 = load float, float* %2351, align 4
  %2358 = fdiv fast float 1.000000e+00, %2357
  %2359 = fsub fast float %2356, %2358
  %2360 = icmp ugt i32 %2348, 1
  br i1 %2360, label %2361, label %2377

; <label>:2361                                    ; preds = %2355
  br label %2362

; <label>:2362                                    ; preds = %2362, %2361
  %2363 = phi float [ %2372, %2362 ], [ %2359, %2361 ]
  %2364 = phi float [ %2373, %2362 ], [ %2356, %2361 ]
  %2365 = phi i32 [ %2374, %2362 ], [ 1, %2361 ]
  %2366 = getelementptr [12 x float], [12 x float]* %35, i32 0, i32 %2365
  %2367 = load float, float* %2366, align 4
  %2368 = getelementptr [12 x float], [12 x float]* %36, i32 0, i32 %2365
  %2369 = load float, float* %2368, align 4
  %2370 = fdiv fast float 1.000000e+00, %2369
  %2371 = fsub fast float %2367, %2370
  %2372 = call float @dx.op.binary.f32(i32 36, float %2363, float %2371)  ; FMin(a,b)
  %2373 = call float @dx.op.binary.f32(i32 35, float %2364, float %2367)  ; FMax(a,b)
  %2374 = add nuw i32 %2365, 1
  %2375 = icmp eq i32 %2374, %2348
  br i1 %2375, label %2376, label %2362

; <label>:2376                                    ; preds = %2362
  br label %2377

; <label>:2377                                    ; preds = %2376, %2355
  %2378 = phi float [ %2359, %2355 ], [ %2372, %2376 ]
  %2379 = phi float [ %2356, %2355 ], [ %2373, %2376 ]
  %2380 = fsub fast float %2379, %2378
  %2381 = fdiv fast float 1.000000e+00, %2380
  br label %2382

; <label>:2382                                    ; preds = %2377, %2352
  %2383 = phi float [ %2353, %2352 ], [ %2379, %2377 ]
  %2384 = phi float [ %2354, %2352 ], [ %2381, %2377 ]
  %2385 = fadd fast float %1813, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  %2388 = fmul fast float %2387, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2223, %2223
  %2391 = fsub fast float %2224, %2390
  %2392 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2391)  ; FMax(a,b)
  %2393 = fdiv fast float 1.000000e+00, %2392
  %2394 = fmul fast float %2224, %2223
  %2395 = fsub fast float %2225, %2394
  %2396 = fsub fast float %2389, %2223
  %2397 = fmul fast float %2389, %2389
  %2398 = fsub fast float %2397, %2224
  %2399 = fmul fast float %2393, %2395
  %2400 = fmul fast float %2399, %2396
  %2401 = fsub fast float %2398, %2400
  %2402 = fmul fast float %2224, %2224
  %2403 = fsub fast float %2226, %2402
  %2404 = fmul fast float %2395, %2395
  %2405 = fmul fast float %2404, %2393
  %2406 = fsub fast float %2403, %2405
  %2407 = fdiv fast float %2401, %2406
  %2408 = fmul fast float %2407, %2395
  %2409 = fsub fast float %2396, %2408
  %2410 = fmul fast float %2409, %2393
  %2411 = fmul fast float %2410, %2223
  %2412 = fsub fast float 1.000000e+00, %2411
  %2413 = fmul fast float %2407, %2224
  %2414 = fsub fast float %2412, %2413
  %2415 = fmul fast float %2410, %2410
  %2416 = fmul fast float %2407, 4.000000e+00
  %2417 = fmul fast float %2416, %2414
  %2418 = fsub fast float %2415, %2417
  %2419 = call float @dx.op.unary.f32(i32 24, float %2418)  ; Sqrt(value)
  %2420 = fcmp fast oge float %2410, 0.000000e+00
  %2421 = fsub fast float -0.000000e+00, %2419
  %2422 = select i1 %2420, float %2421, float %2419
  %2423 = fsub fast float %2422, %2410
  %2424 = fdiv fast float %2423, %2407
  %2425 = fdiv fast float %2414, %2423
  %2426 = fmul fast float %2424, 5.000000e-01
  %2427 = fmul fast float %2425, 2.000000e+00
  %2428 = select i1 %2420, float %2426, float %2427
  %2429 = select i1 %2420, float %2427, float %2426
  %2430 = call float @dx.op.binary.f32(i32 35, float %2428, float %2429)  ; FMax(a,b)
  %2431 = call float @dx.op.binary.f32(i32 36, float %2428, float %2429)  ; FMin(a,b)
  %2432 = fcmp fast ogt float %2389, %2430
  %2433 = fsub fast float %2389, %2431
  %2434 = fsub fast float %2389, %2430
  %2435 = fsub fast float %2430, %2431
  %2436 = select i1 %2432, float %2434, float %2435
  %2437 = fmul float %2433, %2436
  %2438 = select i1 %2432, float %2431, float %2389
  %2439 = fcmp fast ogt float %2389, %2431
  %2440 = fmul fast float %2438, %2430
  %2441 = fadd fast float %2438, %2430
  %2442 = fmul fast float %2441, %2223
  %2443 = fadd fast float %2440, %2224
  %2444 = fsub fast float %2443, %2442
  %2445 = fdiv fast float %2444, %2437
  %2446 = select i1 %2439, float %2445, float 0.000000e+00
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = select i1 %2432, float %2447, float %2446
  %2449 = call float @dx.op.unary.f32(i32 7, float %2448)  ; Saturate(value)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2451 = fmul fast float %2450, %2449
  %2452 = fsub fast float 1.000000e+00, %2451
  br label %2453

; <label>:2453                                    ; preds = %2382, %2060, %1786, %1744
  %2454 = phi float [ 1.000000e+00, %1744 ], [ %2452, %2382 ], [ 1.000000e+00, %1786 ], [ 1.000000e+00, %2060 ]
  %2455 = fcmp fast ogt float %1779, 0.000000e+00
  br i1 %2455, label %2456, label %2624, !dx.controlflow.hints !86

; <label>:2456                                    ; preds = %2453
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 2
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2461 = fmul fast float %2458, %226
  %2462 = fadd fast float %2460, %253
  %2463 = fadd fast float %2462, %2461
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 2
  %2466 = extractvalue %dx.types.CBufRet.f32 %2464, 3
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2469 = call float @dx.op.binary.f32(i32 35, float %2463, float 0.000000e+00)  ; FMax(a,b)
  %2470 = fadd fast float %2469, 0x3F10000000000000
  %2471 = fcmp fast oeq float %2468, 0.000000e+00
  br i1 %2471, label %2472, label %2539, !dx.controlflow.hints !50

; <label>:2472                                    ; preds = %2456
  %2473 = extractvalue %dx.types.CBufRet.f32 %2464, 1
  %2474 = extractvalue %dx.types.CBufRet.f32 %2464, 0
  %2475 = fmul fast float %2474, %1675
  %2476 = fmul fast float %2473, %1676
  %2477 = fadd fast float %2475, 5.000000e-01
  %2478 = call float @dx.op.unary.f32(i32 27, float %2477)  ; Round_ni(value)
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = call float @dx.op.unary.f32(i32 27, float %2479)  ; Round_ni(value)
  %2481 = fsub fast float %2477, %2478
  %2482 = fsub fast float %2479, %2480
  %2483 = fadd fast float %2478, -5.000000e-01
  %2484 = fadd fast float %2480, -5.000000e-01
  %2485 = fmul fast float %2481, 2.000000e+00
  %2486 = fsub fast float 3.000000e+00, %2485
  %2487 = fadd fast float %2485, 1.000000e+00
  %2488 = fsub fast float 2.000000e+00, %2481
  %2489 = bitcast float %2486 to i32
  %2490 = sub nsw i32 2129859010, %2489
  %2491 = bitcast i32 %2490 to float
  %2492 = fmul fast float %2491, %2488
  %2493 = fadd fast float %2492, -1.000000e+00
  %2494 = bitcast float %2487 to i32
  %2495 = sub nsw i32 2129859010, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2496, %2481
  %2498 = fadd fast float %2497, 1.000000e+00
  %2499 = fmul fast float %2482, 2.000000e+00
  %2500 = fsub fast float 3.000000e+00, %2499
  %2501 = fadd fast float %2499, 1.000000e+00
  %2502 = fsub fast float 2.000000e+00, %2482
  %2503 = bitcast float %2500 to i32
  %2504 = sub nsw i32 2129859010, %2503
  %2505 = bitcast i32 %2504 to float
  %2506 = fmul fast float %2505, %2502
  %2507 = fadd fast float %2506, -1.000000e+00
  %2508 = bitcast float %2501 to i32
  %2509 = sub nsw i32 2129859010, %2508
  %2510 = bitcast i32 %2509 to float
  %2511 = fmul fast float %2510, %2482
  %2512 = fadd fast float %2511, 1.000000e+00
  %2513 = fadd fast float %2493, %2483
  %2514 = fmul fast float %2513, %2465
  %2515 = fadd fast float %2507, %2484
  %2516 = fmul fast float %2515, %2466
  %2517 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %2514, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float %2470)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = fmul fast float %2518, %2486
  %2520 = fadd fast float %2498, %2483
  %2521 = fmul fast float %2520, %2465
  %2522 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %2521, float %2516, float undef, float undef, i32 0, i32 0, i32 undef, float %2470)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2523 = extractvalue %dx.types.ResRet.f32 %2522, 0
  %2524 = fmul fast float %2523, %2487
  %2525 = fadd fast float %2512, %2484
  %2526 = fmul fast float %2525, %2466
  %2527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %2514, float %2526, float undef, float undef, i32 0, i32 0, i32 undef, float %2470)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  %2529 = fmul fast float %2528, %2486
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %2521, float %2526, float undef, float undef, i32 0, i32 0, i32 undef, float %2470)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = fmul fast float %2531, %2487
  %2533 = fadd fast float %2532, %2529
  %2534 = fmul fast float %2533, %2501
  %2535 = fadd fast float %2524, %2519
  %2536 = fmul fast float %2535, %2500
  %2537 = fadd fast float %2536, %2534
  %2538 = fmul fast float %2537, 6.250000e-02
  br label %2624

; <label>:2539                                    ; preds = %2456
  %2540 = fmul fast float %264, 0x401921FB60000000
  %2541 = call float @dx.op.unary.f32(i32 13, float %2540)  ; Sin(value)
  %2542 = call float @dx.op.unary.f32(i32 12, float %2540)  ; Cos(value)
  %2543 = fsub fast float -0.000000e+00, %2541
  br label %2544

; <label>:2544                                    ; preds = %2593, %2539
  %2545 = phi float [ 0.000000e+00, %2539 ], [ %2588, %2593 ]
  %2546 = phi float [ 0.000000e+00, %2539 ], [ %2590, %2593 ]
  %2547 = phi i32 [ 0, %2539 ], [ %2594, %2593 ]
  %2548 = mul i32 %2547, 2
  %2549 = add i32 0, %2548
  %2550 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2549
  %2551 = load float, float* %2550, align 4
  %2552 = mul i32 %2547, 2
  %2553 = add i32 1, %2552
  %2554 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2553
  %2555 = load float, float* %2554, align 4
  %2556 = fmul fast float %2551, %2542
  %2557 = call float @dx.op.tertiary.f32(i32 46, float %2555, float %2543, float %2556)  ; FMad(a,b,c)
  %2558 = fmul fast float %2551, %2541
  %2559 = call float @dx.op.tertiary.f32(i32 46, float %2555, float %2542, float %2558)  ; FMad(a,b,c)
  %2560 = fmul fast float %2557, %2468
  %2561 = fmul fast float %2559, %2468
  %2562 = fadd fast float %2560, %1675
  %2563 = fadd fast float %2561, %1676
  %2564 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %26, float %2562, float %2563, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.ResRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.ResRet.f32 %2564, 2
  %2568 = extractvalue %dx.types.ResRet.f32 %2564, 3
  %2569 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 0
  store float %2565, float* %2569, align 4
  %2570 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 1
  store float %2566, float* %2570, align 4
  %2571 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 2
  store float %2567, float* %2571, align 4
  %2572 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 3
  store float %2568, float* %2572, align 4
  %2573 = fsub fast float %2565, %2470
  %2574 = fcmp fast olt float %2573, 0.000000e+00
  %2575 = select i1 %2574, float 0.000000e+00, float 1.000000e+00
  %2576 = fadd fast float %2575, %2545
  %2577 = fmul fast float %2575, %2573
  %2578 = fadd fast float %2577, %2546
  br label %2579

; <label>:2579                                    ; preds = %2579, %2544
  %2580 = phi i32 [ 1, %2544 ], [ %2591, %2579 ]
  %2581 = phi float [ %2578, %2544 ], [ %2590, %2579 ]
  %2582 = phi float [ %2576, %2544 ], [ %2588, %2579 ]
  %2583 = getelementptr [4 x float], [4 x float]* %48, i32 0, i32 %2580
  %2584 = load float, float* %2583, align 4, !tbaa !51
  %2585 = fsub fast float %2584, %2470
  %2586 = fcmp fast olt float %2585, 0.000000e+00
  %2587 = select i1 %2586, float 0.000000e+00, float 1.000000e+00
  %2588 = fadd fast float %2587, %2582
  %2589 = fmul fast float %2587, %2585
  %2590 = fadd fast float %2589, %2581
  %2591 = add nuw nsw i32 %2580, 1
  %2592 = icmp eq i32 %2591, 4
  br i1 %2592, label %2593, label %2579, !llvm.loop !55

; <label>:2593                                    ; preds = %2579
  %2594 = add nuw nsw i32 %2547, 1
  %2595 = icmp eq i32 %2594, 8
  br i1 %2595, label %2596, label %2544, !llvm.loop !57

; <label>:2596                                    ; preds = %2593
  %2597 = fdiv fast float 1.000000e+00, %2588
  %2598 = fmul fast float %2597, %2590
  %2599 = fdiv fast float 1.000000e+00, %2470
  %2600 = fmul fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2602 = call float @dx.op.binary.f32(i32 35, float %2601, float 0.000000e+00)  ; FMax(a,b)
  %2603 = fmul fast float %2588, 3.125000e-02
  %2604 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2605 = fmul fast float %2604, 2.000000e+00
  %2606 = fadd fast float %2605, -1.000000e+00
  %2607 = fcmp fast ogt float %2606, 0.000000e+00
  %2608 = fcmp fast olt float %2606, 0.000000e+00
  %2609 = zext i1 %2607 to i32
  %2610 = zext i1 %2608 to i32
  %2611 = sub nsw i32 %2609, %2610
  %2612 = sitofp i32 %2611 to float
  %2613 = fmul fast float %2612, %2606
  %2614 = fsub fast float 1.000000e+00, %2613
  %2615 = fmul fast float %2614, %2614
  %2616 = fmul fast float %2615, %2614
  %2617 = fsub fast float %2614, %2616
  %2618 = fmul fast float %2617, %2602
  %2619 = fsub fast float 1.000000e+00, %2616
  %2620 = fsub fast float %2619, %2618
  %2621 = fmul fast float %2612, 5.000000e-01
  %2622 = fmul fast float %2621, %2620
  %2623 = fsub fast float 5.000000e-01, %2622
  br label %2624

; <label>:2624                                    ; preds = %2596, %2472, %2453
  %2625 = phi float [ 1.000000e+00, %2453 ], [ %2538, %2472 ], [ %2623, %2596 ]
  %2626 = fcmp fast ogt float %1777, 0.000000e+00
  br i1 %2626, label %2627, label %2795, !dx.controlflow.hints !87

; <label>:2627                                    ; preds = %2624
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 2
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 1
  %2632 = fmul fast float %2629, %226
  %2633 = fadd fast float %2631, %253
  %2634 = fadd fast float %2633, %2632
  %2635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2636 = extractvalue %dx.types.CBufRet.f32 %2635, 2
  %2637 = extractvalue %dx.types.CBufRet.f32 %2635, 3
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2640 = call float @dx.op.binary.f32(i32 35, float %2634, float 0.000000e+00)  ; FMax(a,b)
  %2641 = fadd fast float %2640, 0x3F10000000000000
  %2642 = fcmp fast oeq float %2639, 0.000000e+00
  br i1 %2642, label %2643, label %2710, !dx.controlflow.hints !50

; <label>:2643                                    ; preds = %2627
  %2644 = extractvalue %dx.types.CBufRet.f32 %2635, 1
  %2645 = extractvalue %dx.types.CBufRet.f32 %2635, 0
  %2646 = fmul fast float %2645, %1667
  %2647 = fmul fast float %2644, %1668
  %2648 = fadd fast float %2646, 5.000000e-01
  %2649 = call float @dx.op.unary.f32(i32 27, float %2648)  ; Round_ni(value)
  %2650 = fadd fast float %2647, 5.000000e-01
  %2651 = call float @dx.op.unary.f32(i32 27, float %2650)  ; Round_ni(value)
  %2652 = fsub fast float %2648, %2649
  %2653 = fsub fast float %2650, %2651
  %2654 = fadd fast float %2649, -5.000000e-01
  %2655 = fadd fast float %2651, -5.000000e-01
  %2656 = fmul fast float %2652, 2.000000e+00
  %2657 = fsub fast float 3.000000e+00, %2656
  %2658 = fadd fast float %2656, 1.000000e+00
  %2659 = fsub fast float 2.000000e+00, %2652
  %2660 = bitcast float %2657 to i32
  %2661 = sub nsw i32 2129859010, %2660
  %2662 = bitcast i32 %2661 to float
  %2663 = fmul fast float %2662, %2659
  %2664 = fadd fast float %2663, -1.000000e+00
  %2665 = bitcast float %2658 to i32
  %2666 = sub nsw i32 2129859010, %2665
  %2667 = bitcast i32 %2666 to float
  %2668 = fmul fast float %2667, %2652
  %2669 = fadd fast float %2668, 1.000000e+00
  %2670 = fmul fast float %2653, 2.000000e+00
  %2671 = fsub fast float 3.000000e+00, %2670
  %2672 = fadd fast float %2670, 1.000000e+00
  %2673 = fsub fast float 2.000000e+00, %2653
  %2674 = bitcast float %2671 to i32
  %2675 = sub nsw i32 2129859010, %2674
  %2676 = bitcast i32 %2675 to float
  %2677 = fmul fast float %2676, %2673
  %2678 = fadd fast float %2677, -1.000000e+00
  %2679 = bitcast float %2672 to i32
  %2680 = sub nsw i32 2129859010, %2679
  %2681 = bitcast i32 %2680 to float
  %2682 = fmul fast float %2681, %2653
  %2683 = fadd fast float %2682, 1.000000e+00
  %2684 = fadd fast float %2664, %2654
  %2685 = fmul fast float %2684, %2636
  %2686 = fadd fast float %2678, %2655
  %2687 = fmul fast float %2686, %2637
  %2688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %2685, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float %2641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = fmul fast float %2689, %2657
  %2691 = fadd fast float %2669, %2654
  %2692 = fmul fast float %2691, %2636
  %2693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %2692, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float %2641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2694 = extractvalue %dx.types.ResRet.f32 %2693, 0
  %2695 = fmul fast float %2694, %2658
  %2696 = fadd fast float %2683, %2655
  %2697 = fmul fast float %2696, %2637
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %2685, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float %2641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = fmul fast float %2699, %2657
  %2701 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %2692, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float %2641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = fmul fast float %2702, %2658
  %2704 = fadd fast float %2703, %2700
  %2705 = fmul fast float %2704, %2672
  %2706 = fadd fast float %2695, %2690
  %2707 = fmul fast float %2706, %2671
  %2708 = fadd fast float %2707, %2705
  %2709 = fmul fast float %2708, 6.250000e-02
  br label %2795

; <label>:2710                                    ; preds = %2627
  %2711 = fmul fast float %264, 0x401921FB60000000
  %2712 = call float @dx.op.unary.f32(i32 13, float %2711)  ; Sin(value)
  %2713 = call float @dx.op.unary.f32(i32 12, float %2711)  ; Cos(value)
  %2714 = fsub fast float -0.000000e+00, %2712
  br label %2715

; <label>:2715                                    ; preds = %2764, %2710
  %2716 = phi float [ 0.000000e+00, %2710 ], [ %2759, %2764 ]
  %2717 = phi float [ 0.000000e+00, %2710 ], [ %2761, %2764 ]
  %2718 = phi i32 [ 0, %2710 ], [ %2765, %2764 ]
  %2719 = mul i32 %2718, 2
  %2720 = add i32 0, %2719
  %2721 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2720
  %2722 = load float, float* %2721, align 4
  %2723 = mul i32 %2718, 2
  %2724 = add i32 1, %2723
  %2725 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2724
  %2726 = load float, float* %2725, align 4
  %2727 = fmul fast float %2722, %2713
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2714, float %2727)  ; FMad(a,b,c)
  %2729 = fmul fast float %2722, %2712
  %2730 = call float @dx.op.tertiary.f32(i32 46, float %2726, float %2713, float %2729)  ; FMad(a,b,c)
  %2731 = fmul fast float %2728, %2639
  %2732 = fmul fast float %2730, %2639
  %2733 = fadd fast float %2731, %1667
  %2734 = fadd fast float %2732, %1668
  %2735 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %26, float %2733, float %2734, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = extractvalue %dx.types.ResRet.f32 %2735, 3
  %2740 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %2736, float* %2740, align 4
  %2741 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %2737, float* %2741, align 4
  %2742 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %2738, float* %2742, align 4
  %2743 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %2739, float* %2743, align 4
  %2744 = fsub fast float %2736, %2641
  %2745 = fcmp fast olt float %2744, 0.000000e+00
  %2746 = select i1 %2745, float 0.000000e+00, float 1.000000e+00
  %2747 = fadd fast float %2746, %2716
  %2748 = fmul fast float %2746, %2744
  %2749 = fadd fast float %2748, %2717
  br label %2750

; <label>:2750                                    ; preds = %2750, %2715
  %2751 = phi i32 [ 1, %2715 ], [ %2762, %2750 ]
  %2752 = phi float [ %2749, %2715 ], [ %2761, %2750 ]
  %2753 = phi float [ %2747, %2715 ], [ %2759, %2750 ]
  %2754 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %2751
  %2755 = load float, float* %2754, align 4, !tbaa !51
  %2756 = fsub fast float %2755, %2641
  %2757 = fcmp fast olt float %2756, 0.000000e+00
  %2758 = select i1 %2757, float 0.000000e+00, float 1.000000e+00
  %2759 = fadd fast float %2758, %2753
  %2760 = fmul fast float %2758, %2756
  %2761 = fadd fast float %2760, %2752
  %2762 = add nuw nsw i32 %2751, 1
  %2763 = icmp eq i32 %2762, 4
  br i1 %2763, label %2764, label %2750, !llvm.loop !55

; <label>:2764                                    ; preds = %2750
  %2765 = add nuw nsw i32 %2718, 1
  %2766 = icmp eq i32 %2765, 8
  br i1 %2766, label %2767, label %2715, !llvm.loop !57

; <label>:2767                                    ; preds = %2764
  %2768 = fdiv fast float 1.000000e+00, %2759
  %2769 = fmul fast float %2768, %2761
  %2770 = fdiv fast float 1.000000e+00, %2641
  %2771 = fmul fast float %2769, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = call float @dx.op.binary.f32(i32 35, float %2772, float 0.000000e+00)  ; FMax(a,b)
  %2774 = fmul fast float %2759, 3.125000e-02
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fmul fast float %2775, 2.000000e+00
  %2777 = fadd fast float %2776, -1.000000e+00
  %2778 = fcmp fast ogt float %2777, 0.000000e+00
  %2779 = fcmp fast olt float %2777, 0.000000e+00
  %2780 = zext i1 %2778 to i32
  %2781 = zext i1 %2779 to i32
  %2782 = sub nsw i32 %2780, %2781
  %2783 = sitofp i32 %2782 to float
  %2784 = fmul fast float %2783, %2777
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2785
  %2787 = fmul fast float %2786, %2785
  %2788 = fsub fast float %2785, %2787
  %2789 = fmul fast float %2788, %2773
  %2790 = fsub fast float 1.000000e+00, %2787
  %2791 = fsub fast float %2790, %2789
  %2792 = fmul fast float %2783, 5.000000e-01
  %2793 = fmul fast float %2792, %2791
  %2794 = fsub fast float 5.000000e-01, %2793
  br label %2795

; <label>:2795                                    ; preds = %2767, %2643, %2624
  %2796 = phi float [ 1.000000e+00, %2624 ], [ %2709, %2643 ], [ %2794, %2767 ]
  %2797 = fcmp fast ogt float %1776, 0.000000e+00
  br i1 %2797, label %2798, label %3120, !dx.controlflow.hints !88

; <label>:2798                                    ; preds = %2795
  %2799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2800 = extractvalue %dx.types.CBufRet.f32 %2799, 2
  %2801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2802 = extractvalue %dx.types.CBufRet.f32 %2801, 0
  %2803 = fmul fast float %2800, %226
  %2804 = fadd fast float %2802, %253
  %2805 = fadd fast float %2804, %2803
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 2
  %2808 = extractvalue %dx.types.CBufRet.f32 %2806, 3
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 0
  %2811 = call float @dx.op.binary.f32(i32 35, float %2805, float 0.000000e+00)  ; FMax(a,b)
  %2812 = fadd fast float %2811, 0x3F10000000000000
  %2813 = fcmp fast oeq float %2810, 0.000000e+00
  br i1 %78, label %2814, label %2967, !dx.controlflow.hints !89

; <label>:2814                                    ; preds = %2798
  br i1 %2813, label %2815, label %2882, !dx.controlflow.hints !50

; <label>:2815                                    ; preds = %2814
  %2816 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2818 = fmul fast float %2817, %245
  %2819 = fmul fast float %2816, %249
  %2820 = fadd fast float %2818, 5.000000e-01
  %2821 = call float @dx.op.unary.f32(i32 27, float %2820)  ; Round_ni(value)
  %2822 = fadd fast float %2819, 5.000000e-01
  %2823 = call float @dx.op.unary.f32(i32 27, float %2822)  ; Round_ni(value)
  %2824 = fsub fast float %2820, %2821
  %2825 = fsub fast float %2822, %2823
  %2826 = fadd fast float %2821, -5.000000e-01
  %2827 = fadd fast float %2823, -5.000000e-01
  %2828 = fmul fast float %2824, 2.000000e+00
  %2829 = fsub fast float 3.000000e+00, %2828
  %2830 = fadd fast float %2828, 1.000000e+00
  %2831 = fsub fast float 2.000000e+00, %2824
  %2832 = bitcast float %2829 to i32
  %2833 = sub nsw i32 2129859010, %2832
  %2834 = bitcast i32 %2833 to float
  %2835 = fmul fast float %2834, %2831
  %2836 = fadd fast float %2835, -1.000000e+00
  %2837 = bitcast float %2830 to i32
  %2838 = sub nsw i32 2129859010, %2837
  %2839 = bitcast i32 %2838 to float
  %2840 = fmul fast float %2839, %2824
  %2841 = fadd fast float %2840, 1.000000e+00
  %2842 = fmul fast float %2825, 2.000000e+00
  %2843 = fsub fast float 3.000000e+00, %2842
  %2844 = fadd fast float %2842, 1.000000e+00
  %2845 = fsub fast float 2.000000e+00, %2825
  %2846 = bitcast float %2843 to i32
  %2847 = sub nsw i32 2129859010, %2846
  %2848 = bitcast i32 %2847 to float
  %2849 = fmul fast float %2848, %2845
  %2850 = fadd fast float %2849, -1.000000e+00
  %2851 = bitcast float %2844 to i32
  %2852 = sub nsw i32 2129859010, %2851
  %2853 = bitcast i32 %2852 to float
  %2854 = fmul fast float %2853, %2825
  %2855 = fadd fast float %2854, 1.000000e+00
  %2856 = fadd fast float %2836, %2826
  %2857 = fmul fast float %2856, %2807
  %2858 = fadd fast float %2850, %2827
  %2859 = fmul fast float %2858, %2808
  %2860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %2857, float %2859, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 0
  %2862 = fmul fast float %2861, %2829
  %2863 = fadd fast float %2841, %2826
  %2864 = fmul fast float %2863, %2807
  %2865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %2864, float %2859, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2866 = extractvalue %dx.types.ResRet.f32 %2865, 0
  %2867 = fmul fast float %2866, %2830
  %2868 = fadd fast float %2855, %2827
  %2869 = fmul fast float %2868, %2808
  %2870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %2857, float %2869, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = fmul fast float %2871, %2829
  %2873 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %2864, float %2869, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  %2875 = fmul fast float %2874, %2830
  %2876 = fadd fast float %2875, %2872
  %2877 = fmul fast float %2876, %2844
  %2878 = fadd fast float %2867, %2862
  %2879 = fmul fast float %2878, %2843
  %2880 = fadd fast float %2879, %2877
  %2881 = fmul fast float %2880, 6.250000e-02
  br label %3120

; <label>:2882                                    ; preds = %2814
  %2883 = fmul fast float %264, 0x401921FB60000000
  %2884 = call float @dx.op.unary.f32(i32 13, float %2883)  ; Sin(value)
  %2885 = call float @dx.op.unary.f32(i32 12, float %2883)  ; Cos(value)
  %2886 = fsub fast float -0.000000e+00, %2884
  br label %2887

; <label>:2887                                    ; preds = %2936, %2882
  %2888 = phi float [ 0.000000e+00, %2882 ], [ %2931, %2936 ]
  %2889 = phi float [ 0.000000e+00, %2882 ], [ %2933, %2936 ]
  %2890 = phi i32 [ 0, %2882 ], [ %2937, %2936 ]
  %2891 = mul i32 %2890, 2
  %2892 = add i32 0, %2891
  %2893 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2892
  %2894 = load float, float* %2893, align 4
  %2895 = mul i32 %2890, 2
  %2896 = add i32 1, %2895
  %2897 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2896
  %2898 = load float, float* %2897, align 4
  %2899 = fmul fast float %2894, %2885
  %2900 = call float @dx.op.tertiary.f32(i32 46, float %2898, float %2886, float %2899)  ; FMad(a,b,c)
  %2901 = fmul fast float %2894, %2884
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2898, float %2885, float %2901)  ; FMad(a,b,c)
  %2903 = fmul fast float %2900, %2810
  %2904 = fmul fast float %2902, %2810
  %2905 = fadd fast float %2903, %245
  %2906 = fadd fast float %2904, %249
  %2907 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %26, float %2905, float %2906, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2908 = extractvalue %dx.types.ResRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.f32 %2907, 1
  %2910 = extractvalue %dx.types.ResRet.f32 %2907, 2
  %2911 = extractvalue %dx.types.ResRet.f32 %2907, 3
  %2912 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %2908, float* %2912, align 4
  %2913 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %2909, float* %2913, align 4
  %2914 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %2910, float* %2914, align 4
  %2915 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %2911, float* %2915, align 4
  %2916 = fsub fast float %2908, %2812
  %2917 = fcmp fast olt float %2916, 0.000000e+00
  %2918 = select i1 %2917, float 0.000000e+00, float 1.000000e+00
  %2919 = fadd fast float %2918, %2888
  %2920 = fmul fast float %2918, %2916
  %2921 = fadd fast float %2920, %2889
  br label %2922

; <label>:2922                                    ; preds = %2922, %2887
  %2923 = phi i32 [ 1, %2887 ], [ %2934, %2922 ]
  %2924 = phi float [ %2921, %2887 ], [ %2933, %2922 ]
  %2925 = phi float [ %2919, %2887 ], [ %2931, %2922 ]
  %2926 = getelementptr [4 x float], [4 x float]* %46, i32 0, i32 %2923
  %2927 = load float, float* %2926, align 4, !tbaa !51
  %2928 = fsub fast float %2927, %2812
  %2929 = fcmp fast olt float %2928, 0.000000e+00
  %2930 = select i1 %2929, float 0.000000e+00, float 1.000000e+00
  %2931 = fadd fast float %2930, %2925
  %2932 = fmul fast float %2930, %2928
  %2933 = fadd fast float %2932, %2924
  %2934 = add nuw nsw i32 %2923, 1
  %2935 = icmp eq i32 %2934, 4
  br i1 %2935, label %2936, label %2922, !llvm.loop !55

; <label>:2936                                    ; preds = %2922
  %2937 = add nuw nsw i32 %2890, 1
  %2938 = icmp eq i32 %2937, 8
  br i1 %2938, label %2939, label %2887, !llvm.loop !57

; <label>:2939                                    ; preds = %2936
  %2940 = fdiv fast float 1.000000e+00, %2931
  %2941 = fmul fast float %2940, %2933
  %2942 = fdiv fast float 1.000000e+00, %2812
  %2943 = fmul fast float %2941, %2942
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  %2945 = call float @dx.op.binary.f32(i32 35, float %2944, float 0.000000e+00)  ; FMax(a,b)
  %2946 = fmul fast float %2931, 3.125000e-02
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = fmul fast float %2947, 2.000000e+00
  %2949 = fadd fast float %2948, -1.000000e+00
  %2950 = fcmp fast ogt float %2949, 0.000000e+00
  %2951 = fcmp fast olt float %2949, 0.000000e+00
  %2952 = zext i1 %2950 to i32
  %2953 = zext i1 %2951 to i32
  %2954 = sub nsw i32 %2952, %2953
  %2955 = sitofp i32 %2954 to float
  %2956 = fmul fast float %2955, %2949
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = fmul fast float %2957, %2957
  %2959 = fmul fast float %2958, %2957
  %2960 = fsub fast float %2957, %2959
  %2961 = fmul fast float %2960, %2945
  %2962 = fsub fast float 1.000000e+00, %2959
  %2963 = fsub fast float %2962, %2961
  %2964 = fmul fast float %2955, 5.000000e-01
  %2965 = fmul fast float %2964, %2963
  %2966 = fsub fast float 5.000000e-01, %2965
  br label %3120

; <label>:2967                                    ; preds = %2798
  br i1 %2813, label %2968, label %3035, !dx.controlflow.hints !50

; <label>:2968                                    ; preds = %2967
  %2969 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2970 = extractvalue %dx.types.CBufRet.f32 %2806, 0
  %2971 = fmul fast float %2970, %245
  %2972 = fmul fast float %2969, %249
  %2973 = fadd fast float %2971, 5.000000e-01
  %2974 = call float @dx.op.unary.f32(i32 27, float %2973)  ; Round_ni(value)
  %2975 = fadd fast float %2972, 5.000000e-01
  %2976 = call float @dx.op.unary.f32(i32 27, float %2975)  ; Round_ni(value)
  %2977 = fsub fast float %2973, %2974
  %2978 = fsub fast float %2975, %2976
  %2979 = fadd fast float %2974, -5.000000e-01
  %2980 = fadd fast float %2976, -5.000000e-01
  %2981 = fmul fast float %2977, 2.000000e+00
  %2982 = fsub fast float 3.000000e+00, %2981
  %2983 = fadd fast float %2981, 1.000000e+00
  %2984 = fsub fast float 2.000000e+00, %2977
  %2985 = bitcast float %2982 to i32
  %2986 = sub nsw i32 2129859010, %2985
  %2987 = bitcast i32 %2986 to float
  %2988 = fmul fast float %2987, %2984
  %2989 = fadd fast float %2988, -1.000000e+00
  %2990 = bitcast float %2983 to i32
  %2991 = sub nsw i32 2129859010, %2990
  %2992 = bitcast i32 %2991 to float
  %2993 = fmul fast float %2992, %2977
  %2994 = fadd fast float %2993, 1.000000e+00
  %2995 = fmul fast float %2978, 2.000000e+00
  %2996 = fsub fast float 3.000000e+00, %2995
  %2997 = fadd fast float %2995, 1.000000e+00
  %2998 = fsub fast float 2.000000e+00, %2978
  %2999 = bitcast float %2996 to i32
  %3000 = sub nsw i32 2129859010, %2999
  %3001 = bitcast i32 %3000 to float
  %3002 = fmul fast float %3001, %2998
  %3003 = fadd fast float %3002, -1.000000e+00
  %3004 = bitcast float %2997 to i32
  %3005 = sub nsw i32 2129859010, %3004
  %3006 = bitcast i32 %3005 to float
  %3007 = fmul fast float %3006, %2978
  %3008 = fadd fast float %3007, 1.000000e+00
  %3009 = fadd fast float %2989, %2979
  %3010 = fmul fast float %3009, %2807
  %3011 = fadd fast float %3003, %2980
  %3012 = fmul fast float %3011, %2808
  %3013 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %3010, float %3012, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = fmul fast float %3014, %2982
  %3016 = fadd fast float %2994, %2979
  %3017 = fmul fast float %3016, %2807
  %3018 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %3017, float %3012, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3019 = extractvalue %dx.types.ResRet.f32 %3018, 0
  %3020 = fmul fast float %3019, %2983
  %3021 = fadd fast float %3008, %2980
  %3022 = fmul fast float %3021, %2808
  %3023 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %3010, float %3022, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = fmul fast float %3024, %2982
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %3017, float %3022, float undef, float undef, i32 0, i32 0, i32 undef, float %2812)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = fmul fast float %3027, %2983
  %3029 = fadd fast float %3028, %3025
  %3030 = fmul fast float %3029, %2997
  %3031 = fadd fast float %3020, %3015
  %3032 = fmul fast float %3031, %2996
  %3033 = fadd fast float %3032, %3030
  %3034 = fmul fast float %3033, 6.250000e-02
  br label %3120

; <label>:3035                                    ; preds = %2967
  %3036 = fmul fast float %264, 0x401921FB60000000
  %3037 = call float @dx.op.unary.f32(i32 13, float %3036)  ; Sin(value)
  %3038 = call float @dx.op.unary.f32(i32 12, float %3036)  ; Cos(value)
  %3039 = fsub fast float -0.000000e+00, %3037
  br label %3040

; <label>:3040                                    ; preds = %3089, %3035
  %3041 = phi float [ 0.000000e+00, %3035 ], [ %3084, %3089 ]
  %3042 = phi float [ 0.000000e+00, %3035 ], [ %3086, %3089 ]
  %3043 = phi i32 [ 0, %3035 ], [ %3090, %3089 ]
  %3044 = mul i32 %3043, 2
  %3045 = add i32 0, %3044
  %3046 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3045
  %3047 = load float, float* %3046, align 4
  %3048 = mul i32 %3043, 2
  %3049 = add i32 1, %3048
  %3050 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3049
  %3051 = load float, float* %3050, align 4
  %3052 = fmul fast float %3047, %3038
  %3053 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3039, float %3052)  ; FMad(a,b,c)
  %3054 = fmul fast float %3047, %3037
  %3055 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3038, float %3054)  ; FMad(a,b,c)
  %3056 = fmul fast float %3053, %2810
  %3057 = fmul fast float %3055, %2810
  %3058 = fadd fast float %3056, %245
  %3059 = fadd fast float %3057, %249
  %3060 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %3058, float %3059, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3064 = extractvalue %dx.types.ResRet.f32 %3060, 3
  %3065 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 0
  store float %3061, float* %3065, align 4
  %3066 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 1
  store float %3062, float* %3066, align 4
  %3067 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 2
  store float %3063, float* %3067, align 4
  %3068 = getelementptr inbounds [4 x float], [4 x float]* %45, i32 0, i32 3
  store float %3064, float* %3068, align 4
  %3069 = fsub fast float %3061, %2812
  %3070 = fcmp fast olt float %3069, 0.000000e+00
  %3071 = select i1 %3070, float 0.000000e+00, float 1.000000e+00
  %3072 = fadd fast float %3071, %3041
  %3073 = fmul fast float %3071, %3069
  %3074 = fadd fast float %3073, %3042
  br label %3075

; <label>:3075                                    ; preds = %3075, %3040
  %3076 = phi i32 [ 1, %3040 ], [ %3087, %3075 ]
  %3077 = phi float [ %3074, %3040 ], [ %3086, %3075 ]
  %3078 = phi float [ %3072, %3040 ], [ %3084, %3075 ]
  %3079 = getelementptr [4 x float], [4 x float]* %45, i32 0, i32 %3076
  %3080 = load float, float* %3079, align 4, !tbaa !51
  %3081 = fsub fast float %3080, %2812
  %3082 = fcmp fast olt float %3081, 0.000000e+00
  %3083 = select i1 %3082, float 0.000000e+00, float 1.000000e+00
  %3084 = fadd fast float %3083, %3078
  %3085 = fmul fast float %3083, %3081
  %3086 = fadd fast float %3085, %3077
  %3087 = add nuw nsw i32 %3076, 1
  %3088 = icmp eq i32 %3087, 4
  br i1 %3088, label %3089, label %3075, !llvm.loop !55

; <label>:3089                                    ; preds = %3075
  %3090 = add nuw nsw i32 %3043, 1
  %3091 = icmp eq i32 %3090, 8
  br i1 %3091, label %3092, label %3040, !llvm.loop !57

; <label>:3092                                    ; preds = %3089
  %3093 = fdiv fast float 1.000000e+00, %3084
  %3094 = fmul fast float %3093, %3086
  %3095 = fdiv fast float 1.000000e+00, %2812
  %3096 = fmul fast float %3094, %3095
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3098 = call float @dx.op.binary.f32(i32 35, float %3097, float 0.000000e+00)  ; FMax(a,b)
  %3099 = fmul fast float %3084, 3.125000e-02
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3101 = fmul fast float %3100, 2.000000e+00
  %3102 = fadd fast float %3101, -1.000000e+00
  %3103 = fcmp fast ogt float %3102, 0.000000e+00
  %3104 = fcmp fast olt float %3102, 0.000000e+00
  %3105 = zext i1 %3103 to i32
  %3106 = zext i1 %3104 to i32
  %3107 = sub nsw i32 %3105, %3106
  %3108 = sitofp i32 %3107 to float
  %3109 = fmul fast float %3108, %3102
  %3110 = fsub fast float 1.000000e+00, %3109
  %3111 = fmul fast float %3110, %3110
  %3112 = fmul fast float %3111, %3110
  %3113 = fsub fast float %3110, %3112
  %3114 = fmul fast float %3113, %3098
  %3115 = fsub fast float 1.000000e+00, %3112
  %3116 = fsub fast float %3115, %3114
  %3117 = fmul fast float %3108, 5.000000e-01
  %3118 = fmul fast float %3117, %3116
  %3119 = fsub fast float 5.000000e-01, %3118
  br label %3120

; <label>:3120                                    ; preds = %3092, %2968, %2939, %2815, %2795
  %3121 = phi float [ 1.000000e+00, %2795 ], [ %2881, %2815 ], [ %2966, %2939 ], [ %3034, %2968 ], [ %3119, %3092 ]
  %3122 = fsub fast float %2625, %2454
  %3123 = fmul fast float %3122, %1746
  %3124 = fadd fast float %3123, %2454
  %3125 = fsub fast float %2796, %3124
  %3126 = fmul fast float %3125, %1745
  %3127 = fadd fast float %3126, %3124
  %3128 = fsub fast float %3121, %3127
  %3129 = fmul fast float %3128, %1776
  %3130 = fadd fast float %3129, %3127
  br label %4602

; <label>:3131                                    ; preds = %179
  %3132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.f32 %3132, 0
  %3134 = extractvalue %dx.types.CBufRet.f32 %3132, 1
  %3135 = extractvalue %dx.types.CBufRet.f32 %3132, 3
  %3136 = fmul fast float %3135, %245
  %3137 = fmul fast float %3135, %249
  %3138 = fadd fast float %3136, %3133
  %3139 = fadd fast float %3137, %3134
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3144 = fmul fast float %3143, %245
  %3145 = fmul fast float %3143, %249
  %3146 = fadd fast float %3144, %3141
  %3147 = fadd fast float %3145, %3142
  %3148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3149 = extractvalue %dx.types.CBufRet.f32 %3148, 1
  %3150 = fsub fast float %3149, %253
  %3151 = extractvalue %dx.types.CBufRet.f32 %3148, 2
  %3152 = fmul fast float %3150, %3151
  %3153 = fsub fast float 1.000000e+00, %3152
  %3154 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  br i1 %78, label %3215, label %3155, !dx.controlflow.hints !82

; <label>:3155                                    ; preds = %3131
  %3156 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3158 = extractvalue %dx.types.CBufRet.f32 %3157, 2
  %3159 = fadd fast float %3158, %3156
  %3160 = fcmp fast ogt float %3159, 0.000000e+00
  br i1 %3160, label %3161, label %3185, !dx.controlflow.hints !83

; <label>:3161                                    ; preds = %3155
  %3162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3163 = extractvalue %dx.types.CBufRet.f32 %3162, 0
  %3164 = extractvalue %dx.types.CBufRet.f32 %3162, 1
  %3165 = fsub fast float %3146, %3163
  %3166 = fsub fast float %3147, %3164
  %3167 = fcmp fast olt float %3165, 0.000000e+00
  %3168 = fcmp fast olt float %3166, 0.000000e+00
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3173 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3174 = select i1 %3167, float %3170, float %3172
  %3175 = select i1 %3168, float %3171, float %3173
  %3176 = fmul fast float %3174, %3165
  %3177 = fmul fast float %3175, %3166
  %3178 = call float @dx.op.unary.f32(i32 6, float %3176)  ; FAbs(value)
  %3179 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3180 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %3181 = call float @dx.op.binary.f32(i32 35, float %3178, float %3179)  ; FMax(a,b)
  %3182 = fsub fast float %3180, %3181
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = fmul fast float %3183, %3154
  br label %3185

; <label>:3185                                    ; preds = %3161, %3155
  %3186 = phi float [ %3184, %3161 ], [ 0.000000e+00, %3155 ]
  %3187 = extractvalue %dx.types.CBufRet.f32 %3132, 2
  %3188 = extractvalue %dx.types.CBufRet.f32 %3157, 1
  %3189 = fadd fast float %3188, %3187
  %3190 = fcmp fast ogt float %3189, 0.000000e+00
  br i1 %3190, label %3191, label %3215, !dx.controlflow.hints !84

; <label>:3191                                    ; preds = %3185
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3195 = fsub fast float %3138, %3193
  %3196 = fsub fast float %3139, %3194
  %3197 = fcmp fast olt float %3195, 0.000000e+00
  %3198 = fcmp fast olt float %3196, 0.000000e+00
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3210 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %3211 = call float @dx.op.binary.f32(i32 35, float %3208, float %3209)  ; FMax(a,b)
  %3212 = fsub fast float %3210, %3211
  %3213 = call float @dx.op.unary.f32(i32 7, float %3212)  ; Saturate(value)
  %3214 = fmul fast float %3213, %3154
  br label %3215

; <label>:3215                                    ; preds = %3191, %3185, %3131
  %3216 = phi float [ 0.000000e+00, %3131 ], [ %3214, %3191 ], [ 0.000000e+00, %3185 ]
  %3217 = phi float [ 0.000000e+00, %3131 ], [ %3186, %3191 ], [ %3186, %3185 ]
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3221 = fmul fast float %3219, %85
  %3222 = fadd fast float %3221, %3220
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3225 = extractvalue %dx.types.CBufRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.CBufRet.f32 %3224, 1
  %3227 = fsub fast float %245, %3225
  %3228 = fsub fast float %249, %3226
  %3229 = fcmp fast olt float %3227, 0.000000e+00
  %3230 = fcmp fast olt float %3228, 0.000000e+00
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3235 = extractvalue %dx.types.CBufRet.f32 %3231, 3
  %3236 = select i1 %3229, float %3232, float %3234
  %3237 = select i1 %3230, float %3233, float %3235
  %3238 = fmul fast float %3236, %3227
  %3239 = fmul fast float %3237, %3228
  %3240 = call float @dx.op.unary.f32(i32 6, float %3238)  ; FAbs(value)
  %3241 = call float @dx.op.unary.f32(i32 6, float %3239)  ; FAbs(value)
  %3242 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %3243 = call float @dx.op.binary.f32(i32 35, float %3240, float %3241)  ; FMax(a,b)
  %3244 = fsub fast float %3242, %3243
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = call float @dx.op.binary.f32(i32 36, float %3245, float %3223)  ; FMin(a,b)
  %3247 = fmul fast float %3246, %3154
  %3248 = fsub fast float %3216, %3247
  %3249 = fsub fast float %3217, %3216
  %3250 = fsub fast float %3249, %3247
  %3251 = call float @dx.op.binary.f32(i32 35, float %3216, float %3217)  ; FMax(a,b)
  %3252 = call float @dx.op.binary.f32(i32 35, float %3247, float %3251)  ; FMax(a,b)
  %3253 = fcmp fast olt float %3252, 1.000000e+00
  %3254 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %3255 = fcmp fast une float %3254, 0.000000e+00
  %3256 = and i1 %3253, %3255
  br i1 %3256, label %3257, label %3924, !dx.controlflow.hints !85

; <label>:3257                                    ; preds = %3215
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.CBufRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.CBufRet.f32 %3258, 2
  %3262 = extractvalue %dx.types.CBufRet.f32 %3258, 3
  %3263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3264 = extractvalue %dx.types.CBufRet.f32 %3263, 0
  %3265 = extractvalue %dx.types.CBufRet.f32 %3263, 1
  %3266 = extractvalue %dx.types.CBufRet.f32 %3263, 2
  %3267 = extractvalue %dx.types.CBufRet.f32 %3263, 3
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3272 = extractvalue %dx.types.CBufRet.f32 %3268, 3
  %3273 = fmul fast float %3259, %180
  %3274 = call float @dx.op.tertiary.f32(i32 46, float %181, float %3260, float %3273)  ; FMad(a,b,c)
  %3275 = call float @dx.op.tertiary.f32(i32 46, float %182, float %3261, float %3274)  ; FMad(a,b,c)
  %3276 = fadd fast float %3275, %3262
  %3277 = fmul fast float %3264, %180
  %3278 = call float @dx.op.tertiary.f32(i32 46, float %181, float %3265, float %3277)  ; FMad(a,b,c)
  %3279 = call float @dx.op.tertiary.f32(i32 46, float %182, float %3266, float %3278)  ; FMad(a,b,c)
  %3280 = fadd fast float %3279, %3267
  %3281 = fmul fast float %3269, %180
  %3282 = call float @dx.op.tertiary.f32(i32 46, float %181, float %3270, float %3281)  ; FMad(a,b,c)
  %3283 = call float @dx.op.tertiary.f32(i32 46, float %182, float %3271, float %3282)  ; FMad(a,b,c)
  %3284 = fadd fast float %3283, %3272
  %3285 = fcmp fast oge float %3276, 1.000000e+00
  %3286 = fcmp fast oge float %3280, 1.000000e+00
  %3287 = or i1 %3285, %3286
  %3288 = fcmp fast olt float %3276, 0.000000e+00
  %3289 = fcmp fast olt float %3280, 0.000000e+00
  %3290 = or i1 %3288, %3289
  %3291 = or i1 %3287, %3290
  br i1 %3291, label %3924, label %3292, !dx.controlflow.hints !63

; <label>:3292                                    ; preds = %3257
  %3293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3294 = extractvalue %dx.types.CBufRet.f32 %3293, 0
  %3295 = extractvalue %dx.types.CBufRet.f32 %3293, 1
  %3296 = extractvalue %dx.types.CBufRet.f32 %3293, 2
  %3297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3298 = extractvalue %dx.types.CBufRet.f32 %3297, 1
  %3299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.i32 %3299, 2
  %3301 = uitofp i32 %3300 to float
  %3302 = extractvalue %dx.types.CBufRet.i32 %3299, 3
  %3303 = uitofp i32 %3302 to float
  %3304 = extractvalue %dx.types.CBufRet.f32 %3293, 3
  %3305 = fmul fast float %3304, 2.000000e+00
  %3306 = fsub fast float %3276, %3294
  %3307 = fsub fast float %3280, %3295
  %3308 = fmul fast float %3305, %3306
  %3309 = fmul fast float %3305, %3307
  %3310 = fdiv fast float 1.000000e+00, %215
  %3311 = fmul fast float %3309, %3310
  %3312 = call float @dx.op.unary.f32(i32 6, float %3311)  ; FAbs(value)
  %3313 = fmul fast float %3296, %182
  %3314 = fmul fast float %3313, %3305
  %3315 = call float @dx.op.unary.f32(i32 6, float %3314)  ; FAbs(value)
  %3316 = call float @dx.op.unary.f32(i32 6, float %3308)  ; FAbs(value)
  %3317 = call float @dx.op.binary.f32(i32 35, float %3315, float %3312)  ; FMax(a,b)
  %3318 = call float @dx.op.binary.f32(i32 35, float %3316, float %3317)  ; FMax(a,b)
  %3319 = fmul fast float %3318, 2.000000e+00
  %3320 = call float @dx.op.unary.f32(i32 23, float %3319)  ; Log(value)
  %3321 = call float @dx.op.binary.f32(i32 35, float %3320, float %3301)  ; FMax(a,b)
  %3322 = call float @dx.op.unary.f32(i32 22, float %3321)  ; Frc(value)
  %3323 = fadd fast float %3322, 0xBFEA666660000000
  %3324 = fmul fast float %3323, 8.000000e+00
  %3325 = call float @dx.op.unary.f32(i32 7, float %3324)  ; Saturate(value)
  %3326 = call float @dx.op.unary.f32(i32 27, float %3321)  ; Round_ni(value)
  %3327 = fadd fast float %3326, %3325
  %3328 = call float @dx.op.binary.f32(i32 36, float %3327, float %3303)  ; FMin(a,b)
  %3329 = call float @dx.op.unary.f32(i32 27, float %3328)  ; Round_ni(value)
  %3330 = fsub fast float -0.000000e+00, %3329
  %3331 = call float @dx.op.unary.f32(i32 21, float %3330)  ; Exp(value)
  %3332 = fmul fast float %3331, %3305
  %3333 = fmul fast float %3332, %3276
  %3334 = fmul fast float %3332, %3280
  %3335 = fmul fast float %3333, 5.000000e-01
  %3336 = fmul fast float %3334, 5.000000e-01
  %3337 = fadd fast float %3335, 5.000000e-01
  %3338 = fadd fast float %3336, 5.000000e-01
  %3339 = fmul fast float %3333, 2.500000e-01
  %3340 = fmul fast float %3334, 2.500000e-01
  %3341 = fadd fast float %3339, 5.000000e-01
  %3342 = fadd fast float %3340, 5.000000e-01
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 536870911
  %3346 = lshr i32 %3345, 9
  %3347 = uitofp i32 %3346 to float
  %3348 = fmul fast float %3347, %3276
  %3349 = fmul fast float %3347, %3280
  %3350 = call float @dx.op.unary.f32(i32 22, float %3348)  ; Frc(value)
  %3351 = call float @dx.op.unary.f32(i32 22, float %3349)  ; Frc(value)
  %3352 = call float @dx.op.unary.f32(i32 22, float %3325)  ; Frc(value)
  %3353 = fcmp fast une float %3352, 0.000000e+00
  br i1 %3353, label %3354, label %3452, !dx.controlflow.hints !64

; <label>:3354                                    ; preds = %3292
  %3355 = call float @dx.op.unary.f32(i32 21, float %3326)  ; Exp(value)
  %3356 = fmul fast float %3355, 1.953125e-03
  %3357 = fcmp fast olt float %3350, %3356
  %3358 = fcmp fast olt float %3351, %3356
  %3359 = or i1 %3357, %3358
  %3360 = fsub fast float 1.000000e+00, %3356
  %3361 = fcmp fast ogt float %3350, %3360
  %3362 = fcmp fast ogt float %3351, %3360
  %3363 = or i1 %3361, %3362
  %3364 = or i1 %3359, %3363
  br i1 %3364, label %3365, label %3531, !dx.controlflow.hints !65

; <label>:3365                                    ; preds = %3354
  %3366 = fmul fast float %3298, 5.000000e-01
  %3367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.i32 %3367, 0
  %3369 = fmul fast float %3280, 3.530000e+02
  %3370 = uitofp i32 %3345 to float
  %3371 = fmul fast float %3369, %3370
  %3372 = fmul fast float %3276, 6.130000e+02
  %3373 = fadd fast float %3371, %3372
  %3374 = fptoui float %3373 to i32
  %3375 = add i32 %3368, %3374
  %3376 = mul i32 %3375, -63
  %3377 = lshr i32 %3376, 17
  %3378 = xor i32 %3377, %3376
  %3379 = mul i32 %3378, -511
  %3380 = mul i32 %3378, -8176
  %3381 = xor i32 %3379, %3380
  %3382 = mul i32 %3381, -7
  %3383 = mul i32 %3381, -7168
  %3384 = xor i32 %3382, %3383
  %3385 = lshr i32 %3384, 15
  %3386 = xor i32 %3385, %3382
  %3387 = and i32 %3386, 15
  %3388 = mul i32 %3387, 2
  %3389 = add i32 0, %3388
  %3390 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3389
  %3391 = load float, float* %3390, align 4
  %3392 = mul i32 %3387, 2
  %3393 = add i32 1, %3392
  %3394 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3393
  %3395 = load float, float* %3394, align 4
  %3396 = fmul fast float %3280, 2.770000e+02
  %3397 = fmul fast float %3396, %3370
  %3398 = fmul fast float %3276, 5.990000e+02
  %3399 = fadd fast float %3397, %3398
  %3400 = fptoui float %3399 to i32
  %3401 = mul i32 %3400, -63
  %3402 = lshr i32 %3401, 17
  %3403 = xor i32 %3402, %3401
  %3404 = mul i32 %3403, -511
  %3405 = mul i32 %3403, -8176
  %3406 = xor i32 %3404, %3405
  %3407 = mul i32 %3406, -7
  %3408 = mul i32 %3406, -7168
  %3409 = xor i32 %3407, %3408
  %3410 = lshr i32 %3409, 15
  %3411 = xor i32 %3410, %3407
  %3412 = and i32 %3411, 63
  %3413 = mul i32 %3412, 2
  %3414 = add i32 0, %3413
  %3415 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3414
  %3416 = load float, float* %3415, align 4
  %3417 = mul i32 %3412, 2
  %3418 = add i32 1, %3417
  %3419 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3418
  %3420 = load float, float* %3419, align 4
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3391, float %3395, float %3416, float %3420)  ; Dot2(ax,ay,bx,by)
  %3422 = fsub fast float -0.000000e+00, %3416
  %3423 = call float @dx.op.dot2.f32(i32 54, float %3391, float %3395, float %3422, float %3420)  ; Dot2(ax,ay,bx,by)
  %3424 = fmul fast float %3421, %3366
  %3425 = fmul fast float %3423, %3366
  %3426 = fdiv fast float 2.000000e+00, %3332
  %3427 = fmul fast float %3355, 9.765625e-04
  %3428 = fcmp fast olt float %3350, %3427
  %3429 = fcmp fast olt float %3351, %3427
  %3430 = or i1 %3428, %3429
  %3431 = fsub fast float 1.000000e+00, %3427
  %3432 = fcmp fast ogt float %3350, %3431
  %3433 = fcmp fast ogt float %3351, %3431
  %3434 = or i1 %3432, %3433
  %3435 = or i1 %3430, %3434
  %3436 = fmul fast float %3424, 2.000000e+00
  br i1 %3435, label %3437, label %3441, !dx.controlflow.hints !66

; <label>:3437                                    ; preds = %3365
  %3438 = fmul fast float %3425, 2.000000e+00
  %3439 = fadd fast float %3436, %3337
  %3440 = fadd fast float %3438, %3338
  br label %3441

; <label>:3441                                    ; preds = %3437, %3365
  %3442 = phi float [ %3439, %3437 ], [ %3337, %3365 ]
  %3443 = phi float [ %3440, %3437 ], [ %3338, %3365 ]
  %3444 = phi i32 [ 3, %3437 ], [ 2, %3365 ]
  %3445 = fadd fast float %3424, %3341
  %3446 = fadd fast float %3425, %3342
  %3447 = fmul fast float %3436, %3426
  %3448 = fmul fast float %3426, 2.000000e+00
  %3449 = fmul fast float %3448, %3425
  %3450 = fadd fast float %3447, %3276
  %3451 = fadd fast float %3449, %3280
  br label %3531

; <label>:3452                                    ; preds = %3292
  %3453 = call float @dx.op.unary.f32(i32 21, float %3329)  ; Exp(value)
  %3454 = fmul fast float %3453, 9.765625e-04
  %3455 = fcmp fast olt float %3350, %3454
  %3456 = fcmp fast olt float %3351, %3454
  %3457 = or i1 %3455, %3456
  %3458 = fsub fast float 1.000000e+00, %3454
  %3459 = fcmp fast ogt float %3350, %3458
  %3460 = fcmp fast ogt float %3351, %3458
  %3461 = or i1 %3459, %3460
  %3462 = or i1 %3457, %3461
  br i1 %3462, label %3463, label %3531, !dx.controlflow.hints !67

; <label>:3463                                    ; preds = %3452
  %3464 = fmul fast float %3298, 5.000000e-01
  %3465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.i32 %3465, 0
  %3467 = fmul fast float %3280, 3.530000e+02
  %3468 = uitofp i32 %3345 to float
  %3469 = fmul fast float %3467, %3468
  %3470 = fmul fast float %3276, 6.130000e+02
  %3471 = fadd fast float %3469, %3470
  %3472 = fptoui float %3471 to i32
  %3473 = add i32 %3466, %3472
  %3474 = mul i32 %3473, -63
  %3475 = lshr i32 %3474, 17
  %3476 = xor i32 %3475, %3474
  %3477 = mul i32 %3476, -511
  %3478 = mul i32 %3476, -8176
  %3479 = xor i32 %3477, %3478
  %3480 = mul i32 %3479, -7
  %3481 = mul i32 %3479, -7168
  %3482 = xor i32 %3480, %3481
  %3483 = lshr i32 %3482, 15
  %3484 = xor i32 %3483, %3480
  %3485 = and i32 %3484, 15
  %3486 = mul i32 %3485, 2
  %3487 = add i32 0, %3486
  %3488 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3487
  %3489 = load float, float* %3488, align 4
  %3490 = mul i32 %3485, 2
  %3491 = add i32 1, %3490
  %3492 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3491
  %3493 = load float, float* %3492, align 4
  %3494 = fmul fast float %3280, 2.770000e+02
  %3495 = fmul fast float %3494, %3468
  %3496 = fmul fast float %3276, 5.990000e+02
  %3497 = fadd fast float %3495, %3496
  %3498 = fptoui float %3497 to i32
  %3499 = mul i32 %3498, -63
  %3500 = lshr i32 %3499, 17
  %3501 = xor i32 %3500, %3499
  %3502 = mul i32 %3501, -511
  %3503 = mul i32 %3501, -8176
  %3504 = xor i32 %3502, %3503
  %3505 = mul i32 %3504, -7
  %3506 = mul i32 %3504, -7168
  %3507 = xor i32 %3505, %3506
  %3508 = lshr i32 %3507, 15
  %3509 = xor i32 %3508, %3505
  %3510 = and i32 %3509, 63
  %3511 = mul i32 %3510, 2
  %3512 = add i32 0, %3511
  %3513 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3512
  %3514 = load float, float* %3513, align 4
  %3515 = mul i32 %3510, 2
  %3516 = add i32 1, %3515
  %3517 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3516
  %3518 = load float, float* %3517, align 4
  %3519 = call float @dx.op.dot2.f32(i32 54, float %3489, float %3493, float %3514, float %3518)  ; Dot2(ax,ay,bx,by)
  %3520 = fsub fast float -0.000000e+00, %3514
  %3521 = call float @dx.op.dot2.f32(i32 54, float %3489, float %3493, float %3520, float %3518)  ; Dot2(ax,ay,bx,by)
  %3522 = fmul fast float %3519, %3464
  %3523 = fmul fast float %3521, %3464
  %3524 = fadd fast float %3522, %3337
  %3525 = fadd fast float %3523, %3338
  %3526 = fdiv fast float 2.000000e+00, %3332
  %3527 = fmul fast float %3526, %3522
  %3528 = fmul fast float %3523, %3526
  %3529 = fadd fast float %3527, %3276
  %3530 = fadd fast float %3528, %3280
  br label %3531

; <label>:3531                                    ; preds = %3463, %3452, %3441, %3354
  %3532 = phi float [ %3445, %3441 ], [ %3341, %3354 ], [ %3341, %3463 ], [ %3341, %3452 ]
  %3533 = phi float [ %3446, %3441 ], [ %3342, %3354 ], [ %3342, %3463 ], [ %3342, %3452 ]
  %3534 = phi float [ %3442, %3441 ], [ %3337, %3354 ], [ %3524, %3463 ], [ %3337, %3452 ]
  %3535 = phi float [ %3443, %3441 ], [ %3338, %3354 ], [ %3525, %3463 ], [ %3338, %3452 ]
  %3536 = phi i32 [ %3444, %3441 ], [ 0, %3354 ], [ 1, %3463 ], [ 0, %3452 ]
  %3537 = phi float [ %3450, %3441 ], [ %3276, %3354 ], [ %3529, %3463 ], [ %3276, %3452 ]
  %3538 = phi float [ %3451, %3441 ], [ %3280, %3354 ], [ %3530, %3463 ], [ %3280, %3452 ]
  %3539 = fsub fast float %3303, %3301
  %3540 = fptoui float %3539 to i32
  %3541 = add i32 %3540, 320
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 %3541)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = fcmp fast une float %3328, %3303
  %3546 = fsub fast float %3537, %3543
  %3547 = fsub fast float %3538, %3544
  %3548 = call float @dx.op.unary.f32(i32 6, float %3546)  ; FAbs(value)
  %3549 = call float @dx.op.unary.f32(i32 6, float %3547)  ; FAbs(value)
  %3550 = fmul fast float %3548, %3332
  %3551 = fmul fast float %3549, %3332
  %3552 = fcmp fast olt float %3550, 1.000000e+00
  %3553 = fcmp fast olt float %3551, 1.000000e+00
  %3554 = and i1 %3552, %3553
  %3555 = or i1 %3545, %3554
  br i1 %3555, label %3556, label %3924, !dx.controlflow.hints !68

; <label>:3556                                    ; preds = %3531
  %3557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.i32 %3557, 2
  %3559 = sitofp i32 %3558 to float
  %3560 = fsub fast float %3328, %3559
  %3561 = call float @dx.op.unary.f32(i32 27, float %3560)  ; Round_ni(value)
  %3562 = call float @dx.op.unary.f32(i32 22, float %3328)  ; Frc(value)
  %3563 = icmp eq i32 %3536, 0
  %3564 = call float @dx.op.unary.f32(i32 22, float %3534)  ; Frc(value)
  %3565 = call float @dx.op.unary.f32(i32 22, float %3535)  ; Frc(value)
  br i1 %3563, label %3636, label %3566, !dx.controlflow.hints !69

; <label>:3566                                    ; preds = %3556
  %3567 = and i32 %3536, 1
  %3568 = icmp eq i32 %3567, 0
  br i1 %3568, label %3582, label %3569, !dx.controlflow.hints !70

; <label>:3569                                    ; preds = %3566
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = fmul fast float %3564, %3571
  %3573 = fmul fast float %3565, %3571
  %3574 = fptoui float %3572 to i32
  %3575 = fptoui float %3573 to i32
  %3576 = fptoui float %3561 to i32
  %3577 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %3574, i32 %3575, i32 %3576, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = extractvalue %dx.types.ResRet.f32 %3577, 3
  br label %3588

; <label>:3582                                    ; preds = %3566
  %3583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %3564, float %3565, float %3561, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  br label %3588

; <label>:3588                                    ; preds = %3582, %3569
  %3589 = phi float [ %3578, %3569 ], [ %3584, %3582 ]
  %3590 = phi float [ %3579, %3569 ], [ %3585, %3582 ]
  %3591 = phi float [ %3580, %3569 ], [ %3586, %3582 ]
  %3592 = phi float [ %3581, %3569 ], [ %3587, %3582 ]
  %3593 = fcmp fast ogt float %3562, 0.000000e+00
  br i1 %3593, label %3594, label %3664, !dx.controlflow.hints !71

; <label>:3594                                    ; preds = %3588
  %3595 = and i32 %3536, 2
  %3596 = icmp eq i32 %3595, 0
  %3597 = fadd fast float %3561, 1.000000e+00
  %3598 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3599 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  br i1 %3596, label %3613, label %3600, !dx.controlflow.hints !72

; <label>:3600                                    ; preds = %3594
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = fmul fast float %3598, %3602
  %3604 = fmul fast float %3599, %3602
  %3605 = fptoui float %3603 to i32
  %3606 = fptoui float %3604 to i32
  %3607 = fptoui float %3597 to i32
  %3608 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %3605, i32 %3606, i32 %3607, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  br label %3619

; <label>:3613                                    ; preds = %3594
  %3614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %3598, float %3599, float %3597, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  br label %3619

; <label>:3619                                    ; preds = %3613, %3600
  %3620 = phi float [ %3609, %3600 ], [ %3615, %3613 ]
  %3621 = phi float [ %3610, %3600 ], [ %3616, %3613 ]
  %3622 = phi float [ %3611, %3600 ], [ %3617, %3613 ]
  %3623 = phi float [ %3612, %3600 ], [ %3618, %3613 ]
  %3624 = fsub fast float %3620, %3589
  %3625 = fsub fast float %3621, %3590
  %3626 = fsub fast float %3622, %3591
  %3627 = fsub fast float %3623, %3592
  %3628 = fmul fast float %3624, %3562
  %3629 = fmul fast float %3625, %3562
  %3630 = fmul fast float %3626, %3562
  %3631 = fmul fast float %3627, %3562
  %3632 = fadd fast float %3628, %3589
  %3633 = fadd fast float %3629, %3590
  %3634 = fadd fast float %3630, %3591
  %3635 = fadd fast float %3631, %3592
  br label %3664

; <label>:3636                                    ; preds = %3556
  %3637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %3564, float %3565, float %3561, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = fcmp fast ogt float %3562, 0.000000e+00
  br i1 %3642, label %3643, label %3664, !dx.controlflow.hints !73

; <label>:3643                                    ; preds = %3636
  %3644 = fadd fast float %3561, 1.000000e+00
  %3645 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3646 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %24, float %3645, float %3646, float %3644, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = fsub fast float %3648, %3638
  %3653 = fsub fast float %3649, %3639
  %3654 = fsub fast float %3650, %3640
  %3655 = fsub fast float %3651, %3641
  %3656 = fmul fast float %3652, %3562
  %3657 = fmul fast float %3653, %3562
  %3658 = fmul fast float %3654, %3562
  %3659 = fmul fast float %3655, %3562
  %3660 = fadd fast float %3656, %3638
  %3661 = fadd fast float %3657, %3639
  %3662 = fadd fast float %3658, %3640
  %3663 = fadd fast float %3659, %3641
  br label %3664

; <label>:3664                                    ; preds = %3643, %3636, %3619, %3588
  %3665 = phi float [ %3632, %3619 ], [ %3589, %3588 ], [ %3660, %3643 ], [ %3638, %3636 ]
  %3666 = phi float [ %3633, %3619 ], [ %3590, %3588 ], [ %3661, %3643 ], [ %3639, %3636 ]
  %3667 = phi float [ %3634, %3619 ], [ %3591, %3588 ], [ %3662, %3643 ], [ %3640, %3636 ]
  %3668 = phi float [ %3635, %3619 ], [ %3592, %3588 ], [ %3663, %3643 ], [ %3641, %3636 ]
  %3669 = fadd fast float %3665, -5.000000e-01
  %3670 = fadd fast float %3667, -5.000000e-01
  %3671 = fmul fast float %3669, 0xBFD5555560000000
  %3672 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3670, float %3671)  ; FMad(a,b,c)
  %3673 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3666, float 0.000000e+00)  ; FMad(a,b,c)
  %3674 = fadd fast float %3673, %3668
  %3675 = fmul fast float %3669, -7.500000e-01
  %3676 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3670, float %3675)  ; FMad(a,b,c)
  %3677 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3666, float 0.000000e+00)  ; FMad(a,b,c)
  %3678 = fadd fast float %3677, %3668
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.CBufRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3685 = extractvalue %dx.types.CBufRet.f32 %3681, 3
  %3686 = fsub fast float %3682, %3672
  %3687 = fsub fast float %3683, %3674
  %3688 = fsub fast float %3684, %3676
  %3689 = fsub fast float %3685, %3678
  %3690 = fmul fast float %3686, %3680
  %3691 = fmul fast float %3687, %3680
  %3692 = fmul fast float %3688, %3680
  %3693 = fmul fast float %3689, %3680
  %3694 = fadd fast float %3690, %3672
  %3695 = fadd fast float %3691, %3674
  %3696 = fadd fast float %3692, %3676
  %3697 = fadd fast float %3693, %3678
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = and i32 %3699, 536870911
  %3701 = uitofp i32 %3700 to float
  %3702 = fmul fast float %3701, %3537
  %3703 = fmul fast float %3701, %3538
  %3704 = fptoui float %3702 to i32
  %3705 = fptoui float %3703 to i32
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = and i32 %3707, 31
  %3709 = lshr i32 %3704, %3708
  %3710 = lshr i32 %3705, %3708
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = and i32 %3712, 31
  %3714 = shl i32 1, %3713
  %3715 = call i32 @dx.op.binary.i32(i32 40, i32 %3714, i32 4)  ; UMin(a,b)
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.i32 %3716, 1
  %3719 = icmp eq i32 %3715, 0
  br i1 %3719, label %3761, label %3720

; <label>:3720                                    ; preds = %3664
  br label %3721

; <label>:3721                                    ; preds = %3749, %3720
  %3722 = phi i32 [ %3752, %3749 ], [ 0, %3720 ]
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = lshr i32 %3724, 16
  %3726 = and i32 %3725, 31
  %3727 = shl i32 %3710, %3726
  %3728 = add i32 %3727, %3709
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 31
  %3732 = shl i32 %3728, %3731
  %3733 = add i32 %3732, %3722
  %3734 = shl i32 %3733, 2
  %3735 = add i32 %3734, 32
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = icmp slt i32 %3737, 0
  %3739 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %3722
  %3740 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3722
  %3741 = bitcast float* %3739 to i32*
  %3742 = bitcast float* %3740 to i32*
  br i1 %3738, label %3743, label %3749, !dx.controlflow.hints !74

; <label>:3743                                    ; preds = %3721
  %3744 = and i32 %3737, 1073741823
  %3745 = add nuw nsw i32 %3744, 20
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = extractvalue %dx.types.ResRet.i32 %3746, 1
  br label %3749

; <label>:3749                                    ; preds = %3743, %3721
  %3750 = phi i32 [ %3747, %3743 ], [ %3717, %3721 ]
  %3751 = phi i32 [ %3748, %3743 ], [ %3718, %3721 ]
  store i32 %3750, i32* %3741, align 4
  store i32 %3751, i32* %3742, align 4
  %3752 = add nuw i32 %3722, 1
  %3753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.i32 %3753, 2
  %3755 = icmp eq i32 %3754, 0
  %3756 = icmp ugt i32 %3737, -1073741825
  %3757 = and i1 %3756, %3755
  %3758 = icmp ult i32 %3752, %3715
  %3759 = and i1 %3757, %3758
  br i1 %3759, label %3721, label %3760, !dx.controlflow.hints !75

; <label>:3760                                    ; preds = %3749
  br label %3761

; <label>:3761                                    ; preds = %3760, %3664
  %3762 = phi i32 [ 0, %3664 ], [ %3752, %3760 ]
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3765 = fptoui float %3764 to i32
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3818, label %3767

; <label>:3767                                    ; preds = %3761
  br label %3768

; <label>:3768                                    ; preds = %3813, %3767
  %3769 = phi i32 [ %3814, %3813 ], [ %3762, %3767 ]
  %3770 = phi i32 [ %3815, %3813 ], [ 0, %3767 ]
  %3771 = lshr i32 %3770, 2
  %3772 = and i32 %3770, 3
  %3773 = add nuw nsw i32 %3771, 83
  %3774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 %3773)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.i32 %3774, 0
  %3776 = extractvalue %dx.types.CBufRet.i32 %3774, 1
  %3777 = extractvalue %dx.types.CBufRet.i32 %3774, 2
  %3778 = extractvalue %dx.types.CBufRet.i32 %3774, 3
  %3779 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 0
  store i32 %3775, i32* %3779, align 4
  %3780 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 1
  store i32 %3776, i32* %3780, align 4
  %3781 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 2
  store i32 %3777, i32* %3781, align 4
  %3782 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 3
  store i32 %3778, i32* %3782, align 4
  %3783 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i32 0, i32 %3772
  %3784 = load i32, i32* %3783, align 4, !tbaa !76
  %3785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.i32 %3785, 0
  %3787 = lshr i32 %3786, 16
  %3788 = and i32 %3787, 31
  %3789 = shl i32 %3710, %3788
  %3790 = add i32 %3789, %3709
  %3791 = shl i32 %3790, 2
  %3792 = add i32 %3791, %3784
  %3793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.i32 %3793, 0
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %3813, label %3796, !dx.controlflow.hints !78

; <label>:3796                                    ; preds = %3768
  %3797 = icmp slt i32 %3794, 0
  %3798 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %3769
  %3799 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3769
  %3800 = bitcast float* %3798 to i32*
  %3801 = bitcast float* %3799 to i32*
  br i1 %3797, label %3802, label %3809, !dx.controlflow.hints !79

; <label>:3802                                    ; preds = %3796
  %3803 = and i32 %3794, 1073741823
  %3804 = add i32 %3784, 20
  %3805 = add i32 %3804, %3803
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = extractvalue %dx.types.ResRet.i32 %3806, 1
  br label %3809

; <label>:3809                                    ; preds = %3802, %3796
  %3810 = phi i32 [ %3807, %3802 ], [ %3717, %3796 ]
  %3811 = phi i32 [ %3808, %3802 ], [ %3718, %3796 ]
  store i32 %3810, i32* %3800, align 4
  store i32 %3811, i32* %3801, align 4
  %3812 = add i32 %3769, 1
  br label %3813

; <label>:3813                                    ; preds = %3809, %3768
  %3814 = phi i32 [ %3769, %3768 ], [ %3812, %3809 ]
  %3815 = add nuw i32 %3770, 1
  %3816 = icmp eq i32 %3815, %3765
  br i1 %3816, label %3817, label %3768

; <label>:3817                                    ; preds = %3813
  br label %3818

; <label>:3818                                    ; preds = %3817, %3761
  %3819 = phi i32 [ %3762, %3761 ], [ %3814, %3817 ]
  %3820 = icmp eq i32 %3819, 1
  %3821 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  %3822 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  br i1 %3820, label %3823, label %3826, !dx.controlflow.hints !80

; <label>:3823                                    ; preds = %3818
  %3824 = load float, float* %3821, align 4
  %3825 = load float, float* %3822, align 4
  br label %3853

; <label>:3826                                    ; preds = %3818
  %3827 = load float, float* %3821, align 4
  %3828 = load float, float* %3822, align 4
  %3829 = fdiv fast float 1.000000e+00, %3828
  %3830 = fsub fast float %3827, %3829
  %3831 = icmp ugt i32 %3819, 1
  br i1 %3831, label %3832, label %3848

; <label>:3832                                    ; preds = %3826
  br label %3833

; <label>:3833                                    ; preds = %3833, %3832
  %3834 = phi float [ %3843, %3833 ], [ %3830, %3832 ]
  %3835 = phi float [ %3844, %3833 ], [ %3827, %3832 ]
  %3836 = phi i32 [ %3845, %3833 ], [ 1, %3832 ]
  %3837 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %3836
  %3838 = load float, float* %3837, align 4
  %3839 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %3836
  %3840 = load float, float* %3839, align 4
  %3841 = fdiv fast float 1.000000e+00, %3840
  %3842 = fsub fast float %3838, %3841
  %3843 = call float @dx.op.binary.f32(i32 36, float %3834, float %3842)  ; FMin(a,b)
  %3844 = call float @dx.op.binary.f32(i32 35, float %3835, float %3838)  ; FMax(a,b)
  %3845 = add nuw i32 %3836, 1
  %3846 = icmp eq i32 %3845, %3819
  br i1 %3846, label %3847, label %3833

; <label>:3847                                    ; preds = %3833
  br label %3848

; <label>:3848                                    ; preds = %3847, %3826
  %3849 = phi float [ %3830, %3826 ], [ %3843, %3847 ]
  %3850 = phi float [ %3827, %3826 ], [ %3844, %3847 ]
  %3851 = fsub fast float %3850, %3849
  %3852 = fdiv fast float 1.000000e+00, %3851
  br label %3853

; <label>:3853                                    ; preds = %3848, %3823
  %3854 = phi float [ %3824, %3823 ], [ %3850, %3848 ]
  %3855 = phi float [ %3825, %3823 ], [ %3852, %3848 ]
  %3856 = fadd fast float %3284, %3854
  %3857 = fmul fast float %3856, %3855
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = fmul fast float %3858, 2.000000e+00
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3694, %3694
  %3862 = fsub fast float %3695, %3861
  %3863 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3862)  ; FMax(a,b)
  %3864 = fdiv fast float 1.000000e+00, %3863
  %3865 = fmul fast float %3695, %3694
  %3866 = fsub fast float %3696, %3865
  %3867 = fsub fast float %3860, %3694
  %3868 = fmul fast float %3860, %3860
  %3869 = fsub fast float %3868, %3695
  %3870 = fmul fast float %3864, %3866
  %3871 = fmul fast float %3870, %3867
  %3872 = fsub fast float %3869, %3871
  %3873 = fmul fast float %3695, %3695
  %3874 = fsub fast float %3697, %3873
  %3875 = fmul fast float %3866, %3866
  %3876 = fmul fast float %3875, %3864
  %3877 = fsub fast float %3874, %3876
  %3878 = fdiv fast float %3872, %3877
  %3879 = fmul fast float %3878, %3866
  %3880 = fsub fast float %3867, %3879
  %3881 = fmul fast float %3880, %3864
  %3882 = fmul fast float %3881, %3694
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %3878, %3695
  %3885 = fsub fast float %3883, %3884
  %3886 = fmul fast float %3881, %3881
  %3887 = fmul fast float %3878, 4.000000e+00
  %3888 = fmul fast float %3887, %3885
  %3889 = fsub fast float %3886, %3888
  %3890 = call float @dx.op.unary.f32(i32 24, float %3889)  ; Sqrt(value)
  %3891 = fcmp fast oge float %3881, 0.000000e+00
  %3892 = fsub fast float -0.000000e+00, %3890
  %3893 = select i1 %3891, float %3892, float %3890
  %3894 = fsub fast float %3893, %3881
  %3895 = fdiv fast float %3894, %3878
  %3896 = fdiv fast float %3885, %3894
  %3897 = fmul fast float %3895, 5.000000e-01
  %3898 = fmul fast float %3896, 2.000000e+00
  %3899 = select i1 %3891, float %3897, float %3898
  %3900 = select i1 %3891, float %3898, float %3897
  %3901 = call float @dx.op.binary.f32(i32 35, float %3899, float %3900)  ; FMax(a,b)
  %3902 = call float @dx.op.binary.f32(i32 36, float %3899, float %3900)  ; FMin(a,b)
  %3903 = fcmp fast ogt float %3860, %3901
  %3904 = fsub fast float %3860, %3902
  %3905 = fsub fast float %3860, %3901
  %3906 = fsub fast float %3901, %3902
  %3907 = select i1 %3903, float %3905, float %3906
  %3908 = fmul float %3904, %3907
  %3909 = select i1 %3903, float %3902, float %3860
  %3910 = fcmp fast ogt float %3860, %3902
  %3911 = fmul fast float %3909, %3901
  %3912 = fadd fast float %3909, %3901
  %3913 = fmul fast float %3912, %3694
  %3914 = fadd fast float %3911, %3695
  %3915 = fsub fast float %3914, %3913
  %3916 = fdiv fast float %3915, %3908
  %3917 = select i1 %3910, float %3916, float 0.000000e+00
  %3918 = fsub fast float 1.000000e+00, %3917
  %3919 = select i1 %3903, float %3918, float %3917
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3922 = fmul fast float %3921, %3920
  %3923 = fsub fast float 1.000000e+00, %3922
  br label %3924

; <label>:3924                                    ; preds = %3853, %3531, %3257, %3215
  %3925 = phi float [ 1.000000e+00, %3215 ], [ %3923, %3853 ], [ 1.000000e+00, %3257 ], [ 1.000000e+00, %3531 ]
  %3926 = fcmp fast ogt float %3250, 0.000000e+00
  br i1 %3926, label %3927, label %4095, !dx.controlflow.hints !86

; <label>:3927                                    ; preds = %3924
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3932 = fmul fast float %3929, %226
  %3933 = fadd fast float %3931, %253
  %3934 = fadd fast float %3933, %3932
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 2
  %3937 = extractvalue %dx.types.CBufRet.f32 %3935, 3
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3940 = call float @dx.op.binary.f32(i32 35, float %3934, float 0.000000e+00)  ; FMax(a,b)
  %3941 = fadd fast float %3940, 0x3F10000000000000
  %3942 = fcmp fast oeq float %3939, 0.000000e+00
  br i1 %3942, label %3943, label %4010, !dx.controlflow.hints !50

; <label>:3943                                    ; preds = %3927
  %3944 = extractvalue %dx.types.CBufRet.f32 %3935, 1
  %3945 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3946 = fmul fast float %3945, %3146
  %3947 = fmul fast float %3944, %3147
  %3948 = fadd fast float %3946, 5.000000e-01
  %3949 = call float @dx.op.unary.f32(i32 27, float %3948)  ; Round_ni(value)
  %3950 = fadd fast float %3947, 5.000000e-01
  %3951 = call float @dx.op.unary.f32(i32 27, float %3950)  ; Round_ni(value)
  %3952 = fsub fast float %3948, %3949
  %3953 = fsub fast float %3950, %3951
  %3954 = fadd fast float %3949, -5.000000e-01
  %3955 = fadd fast float %3951, -5.000000e-01
  %3956 = fmul fast float %3952, 2.000000e+00
  %3957 = fsub fast float 3.000000e+00, %3956
  %3958 = fadd fast float %3956, 1.000000e+00
  %3959 = fsub fast float 2.000000e+00, %3952
  %3960 = bitcast float %3957 to i32
  %3961 = sub nsw i32 2129859010, %3960
  %3962 = bitcast i32 %3961 to float
  %3963 = fmul fast float %3962, %3959
  %3964 = fadd fast float %3963, -1.000000e+00
  %3965 = bitcast float %3958 to i32
  %3966 = sub nsw i32 2129859010, %3965
  %3967 = bitcast i32 %3966 to float
  %3968 = fmul fast float %3967, %3952
  %3969 = fadd fast float %3968, 1.000000e+00
  %3970 = fmul fast float %3953, 2.000000e+00
  %3971 = fsub fast float 3.000000e+00, %3970
  %3972 = fadd fast float %3970, 1.000000e+00
  %3973 = fsub fast float 2.000000e+00, %3953
  %3974 = bitcast float %3971 to i32
  %3975 = sub nsw i32 2129859010, %3974
  %3976 = bitcast i32 %3975 to float
  %3977 = fmul fast float %3976, %3973
  %3978 = fadd fast float %3977, -1.000000e+00
  %3979 = bitcast float %3972 to i32
  %3980 = sub nsw i32 2129859010, %3979
  %3981 = bitcast i32 %3980 to float
  %3982 = fmul fast float %3981, %3953
  %3983 = fadd fast float %3982, 1.000000e+00
  %3984 = fadd fast float %3964, %3954
  %3985 = fmul fast float %3984, %3936
  %3986 = fadd fast float %3978, %3955
  %3987 = fmul fast float %3986, %3937
  %3988 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %3985, float %3987, float undef, float undef, i32 0, i32 0, i32 undef, float %3941)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = fmul fast float %3989, %3957
  %3991 = fadd fast float %3969, %3954
  %3992 = fmul fast float %3991, %3936
  %3993 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %3992, float %3987, float undef, float undef, i32 0, i32 0, i32 undef, float %3941)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3994 = extractvalue %dx.types.ResRet.f32 %3993, 0
  %3995 = fmul fast float %3994, %3958
  %3996 = fadd fast float %3983, %3955
  %3997 = fmul fast float %3996, %3937
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %3985, float %3997, float undef, float undef, i32 0, i32 0, i32 undef, float %3941)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = fmul fast float %3999, %3957
  %4001 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %4, %dx.types.Handle %27, float %3992, float %3997, float undef, float undef, i32 0, i32 0, i32 undef, float %3941)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = fmul fast float %4002, %3958
  %4004 = fadd fast float %4003, %4000
  %4005 = fmul fast float %4004, %3972
  %4006 = fadd fast float %3995, %3990
  %4007 = fmul fast float %4006, %3971
  %4008 = fadd fast float %4007, %4005
  %4009 = fmul fast float %4008, 6.250000e-02
  br label %4095

; <label>:4010                                    ; preds = %3927
  %4011 = fmul fast float %264, 0x401921FB60000000
  %4012 = call float @dx.op.unary.f32(i32 13, float %4011)  ; Sin(value)
  %4013 = call float @dx.op.unary.f32(i32 12, float %4011)  ; Cos(value)
  %4014 = fsub fast float -0.000000e+00, %4012
  br label %4015

; <label>:4015                                    ; preds = %4064, %4010
  %4016 = phi float [ 0.000000e+00, %4010 ], [ %4059, %4064 ]
  %4017 = phi float [ 0.000000e+00, %4010 ], [ %4061, %4064 ]
  %4018 = phi i32 [ 0, %4010 ], [ %4065, %4064 ]
  %4019 = mul i32 %4018, 2
  %4020 = add i32 0, %4019
  %4021 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4020
  %4022 = load float, float* %4021, align 4
  %4023 = mul i32 %4018, 2
  %4024 = add i32 1, %4023
  %4025 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4024
  %4026 = load float, float* %4025, align 4
  %4027 = fmul fast float %4022, %4013
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %4026, float %4014, float %4027)  ; FMad(a,b,c)
  %4029 = fmul fast float %4022, %4012
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %4026, float %4013, float %4029)  ; FMad(a,b,c)
  %4031 = fmul fast float %4028, %3939
  %4032 = fmul fast float %4030, %3939
  %4033 = fadd fast float %4031, %3146
  %4034 = fadd fast float %4032, %3147
  %4035 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %26, float %4033, float %4034, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 0
  store float %4036, float* %4040, align 4
  %4041 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 1
  store float %4037, float* %4041, align 4
  %4042 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 2
  store float %4038, float* %4042, align 4
  %4043 = getelementptr inbounds [4 x float], [4 x float]* %44, i32 0, i32 3
  store float %4039, float* %4043, align 4
  %4044 = fsub fast float %4036, %3941
  %4045 = fcmp fast olt float %4044, 0.000000e+00
  %4046 = select i1 %4045, float 0.000000e+00, float 1.000000e+00
  %4047 = fadd fast float %4046, %4016
  %4048 = fmul fast float %4046, %4044
  %4049 = fadd fast float %4048, %4017
  br label %4050

; <label>:4050                                    ; preds = %4050, %4015
  %4051 = phi i32 [ 1, %4015 ], [ %4062, %4050 ]
  %4052 = phi float [ %4049, %4015 ], [ %4061, %4050 ]
  %4053 = phi float [ %4047, %4015 ], [ %4059, %4050 ]
  %4054 = getelementptr [4 x float], [4 x float]* %44, i32 0, i32 %4051
  %4055 = load float, float* %4054, align 4, !tbaa !51
  %4056 = fsub fast float %4055, %3941
  %4057 = fcmp fast olt float %4056, 0.000000e+00
  %4058 = select i1 %4057, float 0.000000e+00, float 1.000000e+00
  %4059 = fadd fast float %4058, %4053
  %4060 = fmul fast float %4058, %4056
  %4061 = fadd fast float %4060, %4052
  %4062 = add nuw nsw i32 %4051, 1
  %4063 = icmp eq i32 %4062, 4
  br i1 %4063, label %4064, label %4050, !llvm.loop !55

; <label>:4064                                    ; preds = %4050
  %4065 = add nuw nsw i32 %4018, 1
  %4066 = icmp eq i32 %4065, 8
  br i1 %4066, label %4067, label %4015, !llvm.loop !57

; <label>:4067                                    ; preds = %4064
  %4068 = fdiv fast float 1.000000e+00, %4059
  %4069 = fmul fast float %4068, %4061
  %4070 = fdiv fast float 1.000000e+00, %3941
  %4071 = fmul fast float %4069, %4070
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = call float @dx.op.binary.f32(i32 35, float %4072, float 0.000000e+00)  ; FMax(a,b)
  %4074 = fmul fast float %4059, 3.125000e-02
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = fmul fast float %4075, 2.000000e+00
  %4077 = fadd fast float %4076, -1.000000e+00
  %4078 = fcmp fast ogt float %4077, 0.000000e+00
  %4079 = fcmp fast olt float %4077, 0.000000e+00
  %4080 = zext i1 %4078 to i32
  %4081 = zext i1 %4079 to i32
  %4082 = sub nsw i32 %4080, %4081
  %4083 = sitofp i32 %4082 to float
  %4084 = fmul fast float %4083, %4077
  %4085 = fsub fast float 1.000000e+00, %4084
  %4086 = fmul fast float %4085, %4085
  %4087 = fmul fast float %4086, %4085
  %4088 = fsub fast float %4085, %4087
  %4089 = fmul fast float %4088, %4073
  %4090 = fsub fast float 1.000000e+00, %4087
  %4091 = fsub fast float %4090, %4089
  %4092 = fmul fast float %4083, 5.000000e-01
  %4093 = fmul fast float %4092, %4091
  %4094 = fsub fast float 5.000000e-01, %4093
  br label %4095

; <label>:4095                                    ; preds = %4067, %3943, %3924
  %4096 = phi float [ 1.000000e+00, %3924 ], [ %4009, %3943 ], [ %4094, %4067 ]
  %4097 = fcmp fast ogt float %3248, 0.000000e+00
  br i1 %4097, label %4098, label %4266, !dx.controlflow.hints !87

; <label>:4098                                    ; preds = %4095
  %4099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4100 = extractvalue %dx.types.CBufRet.f32 %4099, 2
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4103 = fmul fast float %4100, %226
  %4104 = fadd fast float %4102, %253
  %4105 = fadd fast float %4104, %4103
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4108 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4111 = call float @dx.op.binary.f32(i32 35, float %4105, float 0.000000e+00)  ; FMax(a,b)
  %4112 = fadd fast float %4111, 0x3F10000000000000
  %4113 = fcmp fast oeq float %4110, 0.000000e+00
  br i1 %4113, label %4114, label %4181, !dx.controlflow.hints !50

; <label>:4114                                    ; preds = %4098
  %4115 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4116 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4117 = fmul fast float %4116, %3138
  %4118 = fmul fast float %4115, %3139
  %4119 = fadd fast float %4117, 5.000000e-01
  %4120 = call float @dx.op.unary.f32(i32 27, float %4119)  ; Round_ni(value)
  %4121 = fadd fast float %4118, 5.000000e-01
  %4122 = call float @dx.op.unary.f32(i32 27, float %4121)  ; Round_ni(value)
  %4123 = fsub fast float %4119, %4120
  %4124 = fsub fast float %4121, %4122
  %4125 = fadd fast float %4120, -5.000000e-01
  %4126 = fadd fast float %4122, -5.000000e-01
  %4127 = fmul fast float %4123, 2.000000e+00
  %4128 = fsub fast float 3.000000e+00, %4127
  %4129 = fadd fast float %4127, 1.000000e+00
  %4130 = fsub fast float 2.000000e+00, %4123
  %4131 = bitcast float %4128 to i32
  %4132 = sub nsw i32 2129859010, %4131
  %4133 = bitcast i32 %4132 to float
  %4134 = fmul fast float %4133, %4130
  %4135 = fadd fast float %4134, -1.000000e+00
  %4136 = bitcast float %4129 to i32
  %4137 = sub nsw i32 2129859010, %4136
  %4138 = bitcast i32 %4137 to float
  %4139 = fmul fast float %4138, %4123
  %4140 = fadd fast float %4139, 1.000000e+00
  %4141 = fmul fast float %4124, 2.000000e+00
  %4142 = fsub fast float 3.000000e+00, %4141
  %4143 = fadd fast float %4141, 1.000000e+00
  %4144 = fsub fast float 2.000000e+00, %4124
  %4145 = bitcast float %4142 to i32
  %4146 = sub nsw i32 2129859010, %4145
  %4147 = bitcast i32 %4146 to float
  %4148 = fmul fast float %4147, %4144
  %4149 = fadd fast float %4148, -1.000000e+00
  %4150 = bitcast float %4143 to i32
  %4151 = sub nsw i32 2129859010, %4150
  %4152 = bitcast i32 %4151 to float
  %4153 = fmul fast float %4152, %4124
  %4154 = fadd fast float %4153, 1.000000e+00
  %4155 = fadd fast float %4135, %4125
  %4156 = fmul fast float %4155, %4107
  %4157 = fadd fast float %4149, %4126
  %4158 = fmul fast float %4157, %4108
  %4159 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %4156, float %4158, float undef, float undef, i32 0, i32 0, i32 undef, float %4112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = fmul fast float %4160, %4128
  %4162 = fadd fast float %4140, %4125
  %4163 = fmul fast float %4162, %4107
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %4163, float %4158, float undef, float undef, i32 0, i32 0, i32 undef, float %4112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = fmul fast float %4165, %4129
  %4167 = fadd fast float %4154, %4126
  %4168 = fmul fast float %4167, %4108
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %4156, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = fmul fast float %4170, %4128
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %27, float %4163, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = fmul fast float %4173, %4129
  %4175 = fadd fast float %4174, %4171
  %4176 = fmul fast float %4175, %4143
  %4177 = fadd fast float %4166, %4161
  %4178 = fmul fast float %4177, %4142
  %4179 = fadd fast float %4178, %4176
  %4180 = fmul fast float %4179, 6.250000e-02
  br label %4266

; <label>:4181                                    ; preds = %4098
  %4182 = fmul fast float %264, 0x401921FB60000000
  %4183 = call float @dx.op.unary.f32(i32 13, float %4182)  ; Sin(value)
  %4184 = call float @dx.op.unary.f32(i32 12, float %4182)  ; Cos(value)
  %4185 = fsub fast float -0.000000e+00, %4183
  br label %4186

; <label>:4186                                    ; preds = %4235, %4181
  %4187 = phi float [ 0.000000e+00, %4181 ], [ %4230, %4235 ]
  %4188 = phi float [ 0.000000e+00, %4181 ], [ %4232, %4235 ]
  %4189 = phi i32 [ 0, %4181 ], [ %4236, %4235 ]
  %4190 = mul i32 %4189, 2
  %4191 = add i32 0, %4190
  %4192 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4191
  %4193 = load float, float* %4192, align 4
  %4194 = mul i32 %4189, 2
  %4195 = add i32 1, %4194
  %4196 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4195
  %4197 = load float, float* %4196, align 4
  %4198 = fmul fast float %4193, %4184
  %4199 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4185, float %4198)  ; FMad(a,b,c)
  %4200 = fmul fast float %4193, %4183
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4184, float %4200)  ; FMad(a,b,c)
  %4202 = fmul fast float %4199, %4110
  %4203 = fmul fast float %4201, %4110
  %4204 = fadd fast float %4202, %3138
  %4205 = fadd fast float %4203, %3139
  %4206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %26, float %4204, float %4205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = extractvalue %dx.types.ResRet.f32 %4206, 3
  %4211 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 0
  store float %4207, float* %4211, align 4
  %4212 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 1
  store float %4208, float* %4212, align 4
  %4213 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 2
  store float %4209, float* %4213, align 4
  %4214 = getelementptr inbounds [4 x float], [4 x float]* %43, i32 0, i32 3
  store float %4210, float* %4214, align 4
  %4215 = fsub fast float %4207, %4112
  %4216 = fcmp fast olt float %4215, 0.000000e+00
  %4217 = select i1 %4216, float 0.000000e+00, float 1.000000e+00
  %4218 = fadd fast float %4217, %4187
  %4219 = fmul fast float %4217, %4215
  %4220 = fadd fast float %4219, %4188
  br label %4221

; <label>:4221                                    ; preds = %4221, %4186
  %4222 = phi i32 [ 1, %4186 ], [ %4233, %4221 ]
  %4223 = phi float [ %4220, %4186 ], [ %4232, %4221 ]
  %4224 = phi float [ %4218, %4186 ], [ %4230, %4221 ]
  %4225 = getelementptr [4 x float], [4 x float]* %43, i32 0, i32 %4222
  %4226 = load float, float* %4225, align 4, !tbaa !51
  %4227 = fsub fast float %4226, %4112
  %4228 = fcmp fast olt float %4227, 0.000000e+00
  %4229 = select i1 %4228, float 0.000000e+00, float 1.000000e+00
  %4230 = fadd fast float %4229, %4224
  %4231 = fmul fast float %4229, %4227
  %4232 = fadd fast float %4231, %4223
  %4233 = add nuw nsw i32 %4222, 1
  %4234 = icmp eq i32 %4233, 4
  br i1 %4234, label %4235, label %4221, !llvm.loop !55

; <label>:4235                                    ; preds = %4221
  %4236 = add nuw nsw i32 %4189, 1
  %4237 = icmp eq i32 %4236, 8
  br i1 %4237, label %4238, label %4186, !llvm.loop !57

; <label>:4238                                    ; preds = %4235
  %4239 = fdiv fast float 1.000000e+00, %4230
  %4240 = fmul fast float %4239, %4232
  %4241 = fdiv fast float 1.000000e+00, %4112
  %4242 = fmul fast float %4240, %4241
  %4243 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float 0.000000e+00)  ; FMax(a,b)
  %4245 = fmul fast float %4230, 3.125000e-02
  %4246 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4247 = fmul fast float %4246, 2.000000e+00
  %4248 = fadd fast float %4247, -1.000000e+00
  %4249 = fcmp fast ogt float %4248, 0.000000e+00
  %4250 = fcmp fast olt float %4248, 0.000000e+00
  %4251 = zext i1 %4249 to i32
  %4252 = zext i1 %4250 to i32
  %4253 = sub nsw i32 %4251, %4252
  %4254 = sitofp i32 %4253 to float
  %4255 = fmul fast float %4254, %4248
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4256
  %4258 = fmul fast float %4257, %4256
  %4259 = fsub fast float %4256, %4258
  %4260 = fmul fast float %4259, %4244
  %4261 = fsub fast float 1.000000e+00, %4258
  %4262 = fsub fast float %4261, %4260
  %4263 = fmul fast float %4254, 5.000000e-01
  %4264 = fmul fast float %4263, %4262
  %4265 = fsub fast float 5.000000e-01, %4264
  br label %4266

; <label>:4266                                    ; preds = %4238, %4114, %4095
  %4267 = phi float [ 1.000000e+00, %4095 ], [ %4180, %4114 ], [ %4265, %4238 ]
  %4268 = fcmp fast ogt float %3247, 0.000000e+00
  br i1 %4268, label %4269, label %4591, !dx.controlflow.hints !88

; <label>:4269                                    ; preds = %4266
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 2
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = fmul fast float %4271, %226
  %4275 = fadd fast float %4273, %253
  %4276 = fadd fast float %4275, %4274
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 2
  %4279 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = call float @dx.op.binary.f32(i32 35, float %4276, float 0.000000e+00)  ; FMax(a,b)
  %4283 = fadd fast float %4282, 0x3F10000000000000
  %4284 = fcmp fast oeq float %4281, 0.000000e+00
  br i1 %78, label %4285, label %4438, !dx.controlflow.hints !89

; <label>:4285                                    ; preds = %4269
  br i1 %4284, label %4286, label %4353, !dx.controlflow.hints !50

; <label>:4286                                    ; preds = %4285
  %4287 = extractvalue %dx.types.CBufRet.f32 %4277, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4289 = fmul fast float %4288, %245
  %4290 = fmul fast float %4287, %249
  %4291 = fadd fast float %4289, 5.000000e-01
  %4292 = call float @dx.op.unary.f32(i32 27, float %4291)  ; Round_ni(value)
  %4293 = fadd fast float %4290, 5.000000e-01
  %4294 = call float @dx.op.unary.f32(i32 27, float %4293)  ; Round_ni(value)
  %4295 = fsub fast float %4291, %4292
  %4296 = fsub fast float %4293, %4294
  %4297 = fadd fast float %4292, -5.000000e-01
  %4298 = fadd fast float %4294, -5.000000e-01
  %4299 = fmul fast float %4295, 2.000000e+00
  %4300 = fsub fast float 3.000000e+00, %4299
  %4301 = fadd fast float %4299, 1.000000e+00
  %4302 = fsub fast float 2.000000e+00, %4295
  %4303 = bitcast float %4300 to i32
  %4304 = sub nsw i32 2129859010, %4303
  %4305 = bitcast i32 %4304 to float
  %4306 = fmul fast float %4305, %4302
  %4307 = fadd fast float %4306, -1.000000e+00
  %4308 = bitcast float %4301 to i32
  %4309 = sub nsw i32 2129859010, %4308
  %4310 = bitcast i32 %4309 to float
  %4311 = fmul fast float %4310, %4295
  %4312 = fadd fast float %4311, 1.000000e+00
  %4313 = fmul fast float %4296, 2.000000e+00
  %4314 = fsub fast float 3.000000e+00, %4313
  %4315 = fadd fast float %4313, 1.000000e+00
  %4316 = fsub fast float 2.000000e+00, %4296
  %4317 = bitcast float %4314 to i32
  %4318 = sub nsw i32 2129859010, %4317
  %4319 = bitcast i32 %4318 to float
  %4320 = fmul fast float %4319, %4316
  %4321 = fadd fast float %4320, -1.000000e+00
  %4322 = bitcast float %4315 to i32
  %4323 = sub nsw i32 2129859010, %4322
  %4324 = bitcast i32 %4323 to float
  %4325 = fmul fast float %4324, %4296
  %4326 = fadd fast float %4325, 1.000000e+00
  %4327 = fadd fast float %4307, %4297
  %4328 = fmul fast float %4327, %4278
  %4329 = fadd fast float %4321, %4298
  %4330 = fmul fast float %4329, %4279
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %4328, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = fmul fast float %4332, %4300
  %4334 = fadd fast float %4312, %4297
  %4335 = fmul fast float %4334, %4278
  %4336 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %4335, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = fmul fast float %4337, %4301
  %4339 = fadd fast float %4326, %4298
  %4340 = fmul fast float %4339, %4279
  %4341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %4328, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = fmul fast float %4342, %4300
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %27, float %4335, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4301
  %4347 = fadd fast float %4346, %4343
  %4348 = fmul fast float %4347, %4315
  %4349 = fadd fast float %4338, %4333
  %4350 = fmul fast float %4349, %4314
  %4351 = fadd fast float %4350, %4348
  %4352 = fmul fast float %4351, 6.250000e-02
  br label %4591

; <label>:4353                                    ; preds = %4285
  %4354 = fmul fast float %264, 0x401921FB60000000
  %4355 = call float @dx.op.unary.f32(i32 13, float %4354)  ; Sin(value)
  %4356 = call float @dx.op.unary.f32(i32 12, float %4354)  ; Cos(value)
  %4357 = fsub fast float -0.000000e+00, %4355
  br label %4358

; <label>:4358                                    ; preds = %4407, %4353
  %4359 = phi float [ 0.000000e+00, %4353 ], [ %4402, %4407 ]
  %4360 = phi float [ 0.000000e+00, %4353 ], [ %4404, %4407 ]
  %4361 = phi i32 [ 0, %4353 ], [ %4408, %4407 ]
  %4362 = mul i32 %4361, 2
  %4363 = add i32 0, %4362
  %4364 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4363
  %4365 = load float, float* %4364, align 4
  %4366 = mul i32 %4361, 2
  %4367 = add i32 1, %4366
  %4368 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4367
  %4369 = load float, float* %4368, align 4
  %4370 = fmul fast float %4365, %4356
  %4371 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4357, float %4370)  ; FMad(a,b,c)
  %4372 = fmul fast float %4365, %4355
  %4373 = call float @dx.op.tertiary.f32(i32 46, float %4369, float %4356, float %4372)  ; FMad(a,b,c)
  %4374 = fmul fast float %4371, %4281
  %4375 = fmul fast float %4373, %4281
  %4376 = fadd fast float %4374, %245
  %4377 = fadd fast float %4375, %249
  %4378 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %26, float %4376, float %4377, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4379 = extractvalue %dx.types.ResRet.f32 %4378, 0
  %4380 = extractvalue %dx.types.ResRet.f32 %4378, 1
  %4381 = extractvalue %dx.types.ResRet.f32 %4378, 2
  %4382 = extractvalue %dx.types.ResRet.f32 %4378, 3
  %4383 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 0
  store float %4379, float* %4383, align 4
  %4384 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 1
  store float %4380, float* %4384, align 4
  %4385 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 2
  store float %4381, float* %4385, align 4
  %4386 = getelementptr inbounds [4 x float], [4 x float]* %42, i32 0, i32 3
  store float %4382, float* %4386, align 4
  %4387 = fsub fast float %4379, %4283
  %4388 = fcmp fast olt float %4387, 0.000000e+00
  %4389 = select i1 %4388, float 0.000000e+00, float 1.000000e+00
  %4390 = fadd fast float %4389, %4359
  %4391 = fmul fast float %4389, %4387
  %4392 = fadd fast float %4391, %4360
  br label %4393

; <label>:4393                                    ; preds = %4393, %4358
  %4394 = phi i32 [ 1, %4358 ], [ %4405, %4393 ]
  %4395 = phi float [ %4392, %4358 ], [ %4404, %4393 ]
  %4396 = phi float [ %4390, %4358 ], [ %4402, %4393 ]
  %4397 = getelementptr [4 x float], [4 x float]* %42, i32 0, i32 %4394
  %4398 = load float, float* %4397, align 4, !tbaa !51
  %4399 = fsub fast float %4398, %4283
  %4400 = fcmp fast olt float %4399, 0.000000e+00
  %4401 = select i1 %4400, float 0.000000e+00, float 1.000000e+00
  %4402 = fadd fast float %4401, %4396
  %4403 = fmul fast float %4401, %4399
  %4404 = fadd fast float %4403, %4395
  %4405 = add nuw nsw i32 %4394, 1
  %4406 = icmp eq i32 %4405, 4
  br i1 %4406, label %4407, label %4393, !llvm.loop !55

; <label>:4407                                    ; preds = %4393
  %4408 = add nuw nsw i32 %4361, 1
  %4409 = icmp eq i32 %4408, 8
  br i1 %4409, label %4410, label %4358, !llvm.loop !57

; <label>:4410                                    ; preds = %4407
  %4411 = fdiv fast float 1.000000e+00, %4402
  %4412 = fmul fast float %4411, %4404
  %4413 = fdiv fast float 1.000000e+00, %4283
  %4414 = fmul fast float %4412, %4413
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = call float @dx.op.binary.f32(i32 35, float %4415, float 0.000000e+00)  ; FMax(a,b)
  %4417 = fmul fast float %4402, 3.125000e-02
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fmul fast float %4418, 2.000000e+00
  %4420 = fadd fast float %4419, -1.000000e+00
  %4421 = fcmp fast ogt float %4420, 0.000000e+00
  %4422 = fcmp fast olt float %4420, 0.000000e+00
  %4423 = zext i1 %4421 to i32
  %4424 = zext i1 %4422 to i32
  %4425 = sub nsw i32 %4423, %4424
  %4426 = sitofp i32 %4425 to float
  %4427 = fmul fast float %4426, %4420
  %4428 = fsub fast float 1.000000e+00, %4427
  %4429 = fmul fast float %4428, %4428
  %4430 = fmul fast float %4429, %4428
  %4431 = fsub fast float %4428, %4430
  %4432 = fmul fast float %4431, %4416
  %4433 = fsub fast float 1.000000e+00, %4430
  %4434 = fsub fast float %4433, %4432
  %4435 = fmul fast float %4426, 5.000000e-01
  %4436 = fmul fast float %4435, %4434
  %4437 = fsub fast float 5.000000e-01, %4436
  br label %4591

; <label>:4438                                    ; preds = %4269
  br i1 %4284, label %4439, label %4506, !dx.controlflow.hints !50

; <label>:4439                                    ; preds = %4438
  %4440 = extractvalue %dx.types.CBufRet.f32 %4277, 1
  %4441 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4442 = fmul fast float %4441, %245
  %4443 = fmul fast float %4440, %249
  %4444 = fadd fast float %4442, 5.000000e-01
  %4445 = call float @dx.op.unary.f32(i32 27, float %4444)  ; Round_ni(value)
  %4446 = fadd fast float %4443, 5.000000e-01
  %4447 = call float @dx.op.unary.f32(i32 27, float %4446)  ; Round_ni(value)
  %4448 = fsub fast float %4444, %4445
  %4449 = fsub fast float %4446, %4447
  %4450 = fadd fast float %4445, -5.000000e-01
  %4451 = fadd fast float %4447, -5.000000e-01
  %4452 = fmul fast float %4448, 2.000000e+00
  %4453 = fsub fast float 3.000000e+00, %4452
  %4454 = fadd fast float %4452, 1.000000e+00
  %4455 = fsub fast float 2.000000e+00, %4448
  %4456 = bitcast float %4453 to i32
  %4457 = sub nsw i32 2129859010, %4456
  %4458 = bitcast i32 %4457 to float
  %4459 = fmul fast float %4458, %4455
  %4460 = fadd fast float %4459, -1.000000e+00
  %4461 = bitcast float %4454 to i32
  %4462 = sub nsw i32 2129859010, %4461
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4463, %4448
  %4465 = fadd fast float %4464, 1.000000e+00
  %4466 = fmul fast float %4449, 2.000000e+00
  %4467 = fsub fast float 3.000000e+00, %4466
  %4468 = fadd fast float %4466, 1.000000e+00
  %4469 = fsub fast float 2.000000e+00, %4449
  %4470 = bitcast float %4467 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = fmul fast float %4472, %4469
  %4474 = fadd fast float %4473, -1.000000e+00
  %4475 = bitcast float %4468 to i32
  %4476 = sub nsw i32 2129859010, %4475
  %4477 = bitcast i32 %4476 to float
  %4478 = fmul fast float %4477, %4449
  %4479 = fadd fast float %4478, 1.000000e+00
  %4480 = fadd fast float %4460, %4450
  %4481 = fmul fast float %4480, %4278
  %4482 = fadd fast float %4474, %4451
  %4483 = fmul fast float %4482, %4279
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %4481, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = fmul fast float %4485, %4453
  %4487 = fadd fast float %4465, %4450
  %4488 = fmul fast float %4487, %4278
  %4489 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %4488, float %4483, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4490 = extractvalue %dx.types.ResRet.f32 %4489, 0
  %4491 = fmul fast float %4490, %4454
  %4492 = fadd fast float %4479, %4451
  %4493 = fmul fast float %4492, %4279
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %4481, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = fmul fast float %4495, %4453
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %27, float %4488, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = fmul fast float %4498, %4454
  %4500 = fadd fast float %4499, %4496
  %4501 = fmul fast float %4500, %4468
  %4502 = fadd fast float %4491, %4486
  %4503 = fmul fast float %4502, %4467
  %4504 = fadd fast float %4503, %4501
  %4505 = fmul fast float %4504, 6.250000e-02
  br label %4591

; <label>:4506                                    ; preds = %4438
  %4507 = fmul fast float %264, 0x401921FB60000000
  %4508 = call float @dx.op.unary.f32(i32 13, float %4507)  ; Sin(value)
  %4509 = call float @dx.op.unary.f32(i32 12, float %4507)  ; Cos(value)
  %4510 = fsub fast float -0.000000e+00, %4508
  br label %4511

; <label>:4511                                    ; preds = %4560, %4506
  %4512 = phi float [ 0.000000e+00, %4506 ], [ %4555, %4560 ]
  %4513 = phi float [ 0.000000e+00, %4506 ], [ %4557, %4560 ]
  %4514 = phi i32 [ 0, %4506 ], [ %4561, %4560 ]
  %4515 = mul i32 %4514, 2
  %4516 = add i32 0, %4515
  %4517 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4516
  %4518 = load float, float* %4517, align 4
  %4519 = mul i32 %4514, 2
  %4520 = add i32 1, %4519
  %4521 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4520
  %4522 = load float, float* %4521, align 4
  %4523 = fmul fast float %4518, %4509
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4510, float %4523)  ; FMad(a,b,c)
  %4525 = fmul fast float %4518, %4508
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4509, float %4525)  ; FMad(a,b,c)
  %4527 = fmul fast float %4524, %4281
  %4528 = fmul fast float %4526, %4281
  %4529 = fadd fast float %4527, %245
  %4530 = fadd fast float %4528, %249
  %4531 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %26, float %4529, float %4530, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4532 = extractvalue %dx.types.ResRet.f32 %4531, 0
  %4533 = extractvalue %dx.types.ResRet.f32 %4531, 1
  %4534 = extractvalue %dx.types.ResRet.f32 %4531, 2
  %4535 = extractvalue %dx.types.ResRet.f32 %4531, 3
  %4536 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 0
  store float %4532, float* %4536, align 4
  %4537 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 1
  store float %4533, float* %4537, align 4
  %4538 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 2
  store float %4534, float* %4538, align 4
  %4539 = getelementptr inbounds [4 x float], [4 x float]* %41, i32 0, i32 3
  store float %4535, float* %4539, align 4
  %4540 = fsub fast float %4532, %4283
  %4541 = fcmp fast olt float %4540, 0.000000e+00
  %4542 = select i1 %4541, float 0.000000e+00, float 1.000000e+00
  %4543 = fadd fast float %4542, %4512
  %4544 = fmul fast float %4542, %4540
  %4545 = fadd fast float %4544, %4513
  br label %4546

; <label>:4546                                    ; preds = %4546, %4511
  %4547 = phi i32 [ 1, %4511 ], [ %4558, %4546 ]
  %4548 = phi float [ %4545, %4511 ], [ %4557, %4546 ]
  %4549 = phi float [ %4543, %4511 ], [ %4555, %4546 ]
  %4550 = getelementptr [4 x float], [4 x float]* %41, i32 0, i32 %4547
  %4551 = load float, float* %4550, align 4, !tbaa !51
  %4552 = fsub fast float %4551, %4283
  %4553 = fcmp fast olt float %4552, 0.000000e+00
  %4554 = select i1 %4553, float 0.000000e+00, float 1.000000e+00
  %4555 = fadd fast float %4554, %4549
  %4556 = fmul fast float %4554, %4552
  %4557 = fadd fast float %4556, %4548
  %4558 = add nuw nsw i32 %4547, 1
  %4559 = icmp eq i32 %4558, 4
  br i1 %4559, label %4560, label %4546, !llvm.loop !55

; <label>:4560                                    ; preds = %4546
  %4561 = add nuw nsw i32 %4514, 1
  %4562 = icmp eq i32 %4561, 8
  br i1 %4562, label %4563, label %4511, !llvm.loop !57

; <label>:4563                                    ; preds = %4560
  %4564 = fdiv fast float 1.000000e+00, %4555
  %4565 = fmul fast float %4564, %4557
  %4566 = fdiv fast float 1.000000e+00, %4283
  %4567 = fmul fast float %4565, %4566
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = call float @dx.op.binary.f32(i32 35, float %4568, float 0.000000e+00)  ; FMax(a,b)
  %4570 = fmul fast float %4555, 3.125000e-02
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fmul fast float %4571, 2.000000e+00
  %4573 = fadd fast float %4572, -1.000000e+00
  %4574 = fcmp fast ogt float %4573, 0.000000e+00
  %4575 = fcmp fast olt float %4573, 0.000000e+00
  %4576 = zext i1 %4574 to i32
  %4577 = zext i1 %4575 to i32
  %4578 = sub nsw i32 %4576, %4577
  %4579 = sitofp i32 %4578 to float
  %4580 = fmul fast float %4579, %4573
  %4581 = fsub fast float 1.000000e+00, %4580
  %4582 = fmul fast float %4581, %4581
  %4583 = fmul fast float %4582, %4581
  %4584 = fsub fast float %4581, %4583
  %4585 = fmul fast float %4584, %4569
  %4586 = fsub fast float 1.000000e+00, %4583
  %4587 = fsub fast float %4586, %4585
  %4588 = fmul fast float %4579, 5.000000e-01
  %4589 = fmul fast float %4588, %4587
  %4590 = fsub fast float 5.000000e-01, %4589
  br label %4591

; <label>:4591                                    ; preds = %4563, %4439, %4410, %4286, %4266
  %4592 = phi float [ 1.000000e+00, %4266 ], [ %4352, %4286 ], [ %4437, %4410 ], [ %4505, %4439 ], [ %4590, %4563 ]
  %4593 = fsub fast float %4096, %3925
  %4594 = fmul fast float %4593, %3217
  %4595 = fadd fast float %4594, %3925
  %4596 = fsub fast float %4267, %4595
  %4597 = fmul fast float %4596, %3216
  %4598 = fadd fast float %4597, %4595
  %4599 = fsub fast float %4592, %4598
  %4600 = fmul fast float %4599, %3247
  %4601 = fadd fast float %4600, %4598
  br label %4602

; <label>:4602                                    ; preds = %4591, %3120, %1658, %1587, %1265, %991, %988, %958, %834, %781, %657, %604, %480, %427, %303
  %4603 = phi float [ %4601, %4591 ], [ %3130, %3120 ], [ %369, %303 ], [ %454, %427 ], [ %546, %480 ], [ %631, %604 ], [ %723, %657 ], [ %808, %781 ], [ %900, %834 ], [ %985, %958 ], [ %1657, %1587 ], [ 1.000000e+00, %991 ], [ 1.000000e+00, %1265 ], [ 1.000000e+00, %988 ], [ 0.000000e+00, %1658 ]
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = and i32 %4605, 114688
  %4607 = icmp ne i32 %4606, 0
  %4608 = fcmp fast ogt float %4603, 0.000000e+00
  %4609 = and i1 %4608, %4607
  br i1 %4609, label %4610, label %5385, !dx.controlflow.hints !90

; <label>:4610                                    ; preds = %4602
  %4611 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %71, i32 %72, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = fmul fast float %4612, 2.550000e+02
  %4614 = fptoui float %4613 to i32
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4617 = call float @dx.op.dot3.f32(i32 55, float %209, float %210, float %211, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = icmp eq i32 %4614, 0
  %4621 = fcmp ugt float %4619, %4616
  %4622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.i32 %4622, 0
  %4624 = and i32 %4623, 64
  %4625 = icmp eq i32 %4624, 0
  %4626 = or i1 %4621, %4625
  %4627 = and i1 %4620, %4626
  br i1 %4627, label %4966, label %4628, !dx.controlflow.hints !91

; <label>:4628                                    ; preds = %4610
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4632 = extractvalue %dx.types.CBufRet.f32 %4629, 2
  %4633 = fadd fast float %4630, %180
  %4634 = fadd fast float %4631, %181
  %4635 = fadd fast float %4632, %182
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.CBufRet.f32 %4636, 1
  %4639 = fsub fast float %4633, %4637
  %4640 = fsub fast float %4634, %4638
  %4641 = fmul fast float %4639, %4639
  %4642 = fmul fast float %4640, %4640
  %4643 = fadd fast float %4641, %4642
  %4644 = call float @dx.op.unary.f32(i32 24, float %4643)  ; Sqrt(value)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4646 = fcmp fast olt float %4644, %4645
  br i1 %4646, label %4647, label %4712, !dx.controlflow.hints !92

; <label>:4647                                    ; preds = %4628
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4654 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4655 = extractvalue %dx.types.CBufRet.f32 %4650, 1
  %4656 = extractvalue %dx.types.CBufRet.f32 %4652, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4658 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4659 = extractvalue %dx.types.CBufRet.f32 %4652, 3
  %4660 = fadd fast float %4657, %4633
  %4661 = fadd fast float %4658, %4634
  %4662 = fadd fast float %4659, %4635
  %4663 = fmul fast float %4660, %4649
  %4664 = call float @dx.op.tertiary.f32(i32 46, float %4661, float %4651, float %4663)  ; FMad(a,b,c)
  %4665 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4653, float %4664)  ; FMad(a,b,c)
  %4666 = fmul fast float %4660, %4654
  %4667 = call float @dx.op.tertiary.f32(i32 46, float %4661, float %4655, float %4666)  ; FMad(a,b,c)
  %4668 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4656, float %4667)  ; FMad(a,b,c)
  %4669 = fsub fast float %4665, %4657
  %4670 = fsub fast float %4668, %4658
  %4671 = fsub fast float %4669, %4637
  %4672 = fadd fast float %4671, %4645
  %4673 = fsub fast float %4670, %4638
  %4674 = fadd fast float %4673, %4645
  %4675 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4676 = fmul fast float %4672, %4675
  %4677 = fmul fast float %4674, %4675
  %4678 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4680 = fsub fast float 1.000000e+00, %4678
  %4681 = fsub fast float 1.000000e+00, %4679
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = fcmp fast ugt float %4683, 0.000000e+00
  br i1 %4684, label %4685, label %4966, !dx.controlflow.hints !93

; <label>:4685                                    ; preds = %4647
  %4686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4687 = extractvalue %dx.types.CBufRet.f32 %4686, 2
  %4688 = fmul fast float %4687, %4683
  %4689 = extractvalue %dx.types.CBufRet.f32 %4686, 3
  %4690 = fadd fast float %4689, %4688
  %4691 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4692 = fadd fast float %4690, %4659
  %4693 = fmul fast float %4665, %4653
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4668, float %4656, float %4693)  ; FMad(a,b,c)
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4691, float %4694)  ; FMad(a,b,c)
  %4696 = fsub fast float %4695, %4659
  %4697 = fsub fast float %4696, %4632
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %25, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %4680, float %4681, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4706 = fadd fast float %4703, %4699
  %4707 = fmul fast float %4706, 0x3F847AE140000000
  %4708 = fadd fast float %4704, %4700
  %4709 = fmul fast float %4708, 0x3F847AE140000000
  %4710 = fadd fast float %4705, %4701
  %4711 = fmul fast float %4710, 0x3F847AE140000000
  br label %4966

; <label>:4712                                    ; preds = %4628
  %4713 = and i32 %4614, -3
  %4714 = icmp eq i32 %4713, 1
  br i1 %4714, label %4715, label %4966, !dx.controlflow.hints !94

; <label>:4715                                    ; preds = %4712
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 0
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4723 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4724 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4725 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4726 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4727 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4728 = fadd fast float %4725, %4633
  %4729 = fadd fast float %4726, %4634
  %4730 = fadd fast float %4727, %4635
  %4731 = fmul fast float %4728, %4717
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4719, float %4731)  ; FMad(a,b,c)
  %4733 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4721, float %4732)  ; FMad(a,b,c)
  %4734 = fmul fast float %4728, %4722
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4729, float %4723, float %4734)  ; FMad(a,b,c)
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4730, float %4724, float %4735)  ; FMad(a,b,c)
  %4737 = fsub fast float %4733, %4725
  %4738 = fsub fast float %4736, %4726
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4739, 2
  %4743 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 3
  %4746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.i32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.i32 %4746, 1
  %4749 = udiv i32 %4748, %4747
  %4750 = fsub fast float %4737, %4740
  %4751 = fsub fast float %4738, %4741
  %4752 = call float @dx.op.binary.f32(i32 35, float %4750, float 0.000000e+00)  ; FMax(a,b)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4751, float 0.000000e+00)  ; FMax(a,b)
  %4754 = call float @dx.op.binary.f32(i32 36, float %4752, float %4742)  ; FMin(a,b)
  %4755 = call float @dx.op.binary.f32(i32 36, float %4753, float %4743)  ; FMin(a,b)
  %4756 = add i32 %4747, -1
  %4757 = add i32 %4749, -1
  %4758 = fmul fast float %4754, %4745
  %4759 = fmul fast float %4755, %4745
  %4760 = fptoui float %4758 to i32
  %4761 = fptoui float %4759 to i32
  %4762 = call i32 @dx.op.binary.i32(i32 40, i32 %4760, i32 %4756)  ; UMin(a,b)
  %4763 = call i32 @dx.op.binary.i32(i32 40, i32 %4761, i32 %4757)  ; UMin(a,b)
  %4764 = mul i32 %4763, %4747
  %4765 = add i32 %4764, %4762
  %4766 = shl i32 %4765, 2
  %4767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4766, i32 undef)  ; BufferLoad(srv,index,wot)
  %4768 = extractvalue %dx.types.ResRet.i32 %4767, 0
  %4769 = icmp eq i32 %4768, -1
  br i1 %4769, label %4966, label %4770, !dx.controlflow.hints !95

; <label>:4770                                    ; preds = %4715
  %4771 = mul i32 %4768, 148
  %4772 = add i32 %4771, 4
  %4773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = add i32 %4771, 8
  %4776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4775, i32 undef)  ; BufferLoad(srv,index,wot)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = add i32 %4771, 36
  %4779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = add i32 %4771, 60
  %4782 = add i32 %4771, 92
  %4783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4782, i32 undef)  ; BufferLoad(srv,index,wot)
  %4784 = extractvalue %dx.types.ResRet.i32 %4783, 0
  %4785 = add i32 %4771, 116
  %4786 = fsub fast float %4737, %4774
  %4787 = fsub fast float %4738, %4777
  %4788 = fmul fast float %4745, %4786
  %4789 = fmul fast float %4745, %4787
  %4790 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4791 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  %4792 = fsub fast float 1.000000e+00, %4791
  %4793 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4794 = fadd fast float %4793, 2.000000e+00
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4797 = fadd fast float %4794, %4796
  %4798 = add i32 %4784, 0
  %4799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4800 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4799, i32 0)  ; GetDimensions(handle,mipLevel)
  %4801 = extractvalue %dx.types.Dimensions %4800, 0
  %4802 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4801)  ; FirstbitLo(value)
  %4803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.i32 %4803, 1
  %4805 = sub nsw i32 %4804, %4802
  %4806 = sitofp i32 %4805 to float
  %4807 = fsub fast float %4797, %4806
  %4808 = call float @dx.op.binary.f32(i32 35, float %4807, float 0.000000e+00)  ; FMax(a,b)
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4799, %dx.types.Handle %23, float %4790, float %4792, float %4780, float undef, i32 0, i32 0, i32 undef, float %4808)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = fcmp ule float %4810, 0x3FE0101020000000
  %4812 = extractvalue %dx.types.CBufRet.i32 %4803, 0
  %4813 = and i32 %4812, 128
  %4814 = icmp ne i32 %4813, 0
  %4815 = and i1 %4811, %4814
  br i1 %4815, label %4966, label %4816, !dx.controlflow.hints !96

; <label>:4816                                    ; preds = %4770
  %4817 = add i32 %4771, 20
  %4818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4817, i32 undef)  ; BufferLoad(srv,index,wot)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = add i32 %4771, 24
  %4821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = add i32 %4771, 40
  %4824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4823, i32 undef)  ; BufferLoad(srv,index,wot)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = add i32 %4771, 96
  %4827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4826, i32 undef)  ; BufferLoad(srv,index,wot)
  %4828 = extractvalue %dx.types.ResRet.i32 %4827, 0
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4831 = fmul fast float %4830, %4790
  %4832 = fmul fast float %4830, %4792
  %4833 = extractvalue %dx.types.CBufRet.f32 %4829, 3
  %4834 = fadd fast float %4831, %4833
  %4835 = fadd fast float %4832, %4833
  %4836 = add i32 %4828, 0
  %4837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4836, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4838 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4837, i32 0)  ; GetDimensions(handle,mipLevel)
  %4839 = extractvalue %dx.types.Dimensions %4838, 0
  %4840 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4839)  ; FirstbitLo(value)
  %4841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.i32 %4841, 1
  %4843 = sub nsw i32 %4842, %4840
  %4844 = sitofp i32 %4843 to float
  %4845 = fsub fast float %4794, %4844
  %4846 = call float @dx.op.binary.f32(i32 35, float %4845, float 0.000000e+00)  ; FMax(a,b)
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4837, %dx.types.Handle %23, float %4834, float %4835, float %4825, float undef, i32 0, i32 0, i32 undef, float %4846)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = fmul fast float %4848, %4819
  %4850 = fadd fast float %4849, %4822
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4856 = extractvalue %dx.types.CBufRet.f32 %4855, 3
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4859 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4860 = fadd fast float %4856, %4737
  %4861 = fadd fast float %4858, %4738
  %4862 = fadd fast float %4850, %4859
  %4863 = fmul fast float %4860, %4852
  %4864 = call float @dx.op.tertiary.f32(i32 46, float %4861, float %4853, float %4863)  ; FMad(a,b,c)
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4854, float %4864)  ; FMad(a,b,c)
  %4866 = fsub fast float %4865, %4859
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4869 = fsub fast float %4866, %4868
  %4870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.i32 %4870, 0
  %4872 = call i32 @dx.op.binary.i32(i32 40, i32 %4768, i32 %4871)  ; UMin(a,b)
  %4873 = mul i32 %4872, 36
  %4874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4873, i32 undef)  ; BufferLoad(srv,index,wot)
  %4875 = extractvalue %dx.types.ResRet.i32 %4874, 0
  %4876 = add i32 %4873, 4
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = fmul fast float %4878, %4790
  %4880 = fmul fast float %4878, %4792
  %4881 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4882 = fadd fast float %4879, %4881
  %4883 = fadd fast float %4880, %4881
  %4884 = icmp eq i32 %4875, 0
  br i1 %4884, label %4953, label %4885

; <label>:4885                                    ; preds = %4816
  br label %4886

; <label>:4886                                    ; preds = %4943, %4885
  %4887 = phi float [ %4944, %4943 ], [ 0.000000e+00, %4885 ]
  %4888 = phi float [ %4945, %4943 ], [ 0.000000e+00, %4885 ]
  %4889 = phi float [ %4946, %4943 ], [ 0.000000e+00, %4885 ]
  %4890 = phi float [ %4947, %4943 ], [ 0.000000e+00, %4885 ]
  %4891 = phi float [ %4948, %4943 ], [ 0.000000e+00, %4885 ]
  %4892 = phi float [ %4949, %4943 ], [ 0.000000e+00, %4885 ]
  %4893 = phi i32 [ %4950, %4943 ], [ 0, %4885 ]
  %4894 = shl i32 %4893, 2
  %4895 = add i32 %4781, %4894
  %4896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = add i32 %4785, %4894
  %4899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4898, i32 undef)  ; BufferLoad(srv,index,wot)
  %4900 = extractvalue %dx.types.ResRet.i32 %4899, 0
  %4901 = add i32 %4900, 0
  %4902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4901, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4903 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4902, i32 0)  ; GetDimensions(handle,mipLevel)
  %4904 = extractvalue %dx.types.Dimensions %4903, 0
  %4905 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4904)  ; FirstbitLo(value)
  %4906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.i32 %4906, 1
  %4908 = sub nsw i32 %4907, %4905
  %4909 = sitofp i32 %4908 to float
  %4910 = fsub fast float %4794, %4909
  %4911 = call float @dx.op.binary.f32(i32 35, float %4910, float 0.000000e+00)  ; FMax(a,b)
  %4912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4902, %dx.types.Handle %23, float %4882, float %4883, float %4897, float undef, i32 0, i32 0, i32 undef, float %4911)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = fcmp fast ogt float %4913, 0.000000e+00
  br i1 %4914, label %4915, label %4943, !dx.controlflow.hints !97

; <label>:4915                                    ; preds = %4886
  %4916 = add i32 %4876, %4894
  %4917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4916, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.i32 %4917, 0
  %4919 = and i32 %4918, 32767
  %4920 = mul nuw nsw i32 %4919, 928
  %4921 = add nuw nsw i32 %4920, 48
  %4922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4921, i32 undef)  ; BufferLoad(srv,index,wot)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4926 = add nuw nsw i32 %4920, 60
  %4927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4928 = extractvalue %dx.types.ResRet.f32 %4927, 0
  %4929 = extractvalue %dx.types.ResRet.f32 %4927, 1
  %4930 = extractvalue %dx.types.ResRet.f32 %4927, 2
  %4931 = fmul fast float %4923, %4913
  %4932 = fmul fast float %4924, %4913
  %4933 = fmul fast float %4925, %4913
  %4934 = fadd fast float %4931, %4887
  %4935 = fadd fast float %4932, %4888
  %4936 = fadd fast float %4933, %4889
  %4937 = fmul fast float %4928, %4913
  %4938 = fmul fast float %4929, %4913
  %4939 = fmul fast float %4930, %4913
  %4940 = fadd fast float %4937, %4890
  %4941 = fadd fast float %4938, %4891
  %4942 = fadd fast float %4939, %4892
  br label %4943

; <label>:4943                                    ; preds = %4915, %4886
  %4944 = phi float [ %4934, %4915 ], [ %4887, %4886 ]
  %4945 = phi float [ %4935, %4915 ], [ %4888, %4886 ]
  %4946 = phi float [ %4936, %4915 ], [ %4889, %4886 ]
  %4947 = phi float [ %4940, %4915 ], [ %4890, %4886 ]
  %4948 = phi float [ %4941, %4915 ], [ %4891, %4886 ]
  %4949 = phi float [ %4942, %4915 ], [ %4892, %4886 ]
  %4950 = add nuw i32 %4893, 1
  %4951 = icmp eq i32 %4950, %4875
  br i1 %4951, label %4952, label %4886

; <label>:4952                                    ; preds = %4943
  br label %4953

; <label>:4953                                    ; preds = %4952, %4816
  %4954 = phi float [ 0.000000e+00, %4816 ], [ %4944, %4952 ]
  %4955 = phi float [ 0.000000e+00, %4816 ], [ %4945, %4952 ]
  %4956 = phi float [ 0.000000e+00, %4816 ], [ %4946, %4952 ]
  %4957 = phi float [ 0.000000e+00, %4816 ], [ %4947, %4952 ]
  %4958 = phi float [ 0.000000e+00, %4816 ], [ %4948, %4952 ]
  %4959 = phi float [ 0.000000e+00, %4816 ], [ %4949, %4952 ]
  %4960 = fadd fast float %4957, %4954
  %4961 = fmul fast float %4960, 0x3F847AE140000000
  %4962 = fadd fast float %4958, %4955
  %4963 = fmul fast float %4962, 0x3F847AE140000000
  %4964 = fadd fast float %4959, %4956
  %4965 = fmul fast float %4964, 0x3F847AE140000000
  br label %4966

; <label>:4966                                    ; preds = %4953, %4770, %4715, %4712, %4685, %4647, %4610
  %4967 = phi i1 [ true, %4610 ], [ false, %4685 ], [ true, %4647 ], [ false, %4953 ], [ true, %4715 ], [ true, %4770 ], [ true, %4712 ]
  %4968 = phi float [ 0.000000e+00, %4610 ], [ %4697, %4685 ], [ -1.310720e+05, %4647 ], [ %4869, %4953 ], [ -1.310720e+05, %4715 ], [ -1.310720e+05, %4770 ], [ -1.310720e+05, %4712 ]
  %4969 = phi float [ 0.000000e+00, %4610 ], [ %4707, %4685 ], [ 0.000000e+00, %4647 ], [ %4961, %4953 ], [ 0.000000e+00, %4715 ], [ 0.000000e+00, %4770 ], [ 0.000000e+00, %4712 ]
  %4970 = phi float [ 0.000000e+00, %4610 ], [ %4709, %4685 ], [ 0.000000e+00, %4647 ], [ %4963, %4953 ], [ 0.000000e+00, %4715 ], [ 0.000000e+00, %4770 ], [ 0.000000e+00, %4712 ]
  %4971 = phi float [ 0.000000e+00, %4610 ], [ %4711, %4685 ], [ 0.000000e+00, %4647 ], [ %4965, %4953 ], [ 0.000000e+00, %4715 ], [ 0.000000e+00, %4770 ], [ 0.000000e+00, %4712 ]
  br i1 %4967, label %5385, label %4972, !dx.controlflow.hints !98

; <label>:4972                                    ; preds = %4966
  %4973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.i32 %4973, 0
  %4975 = and i32 %4974, 64
  %4976 = icmp ne i32 %4975, 0
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %4981 = fsub fast float %182, %4968
  %4982 = fcmp fast ogt float %4981, 0.000000e+00
  %4983 = xor i1 %4982, true
  %4984 = fmul fast float %4978, 5.120000e+02
  %4985 = fmul fast float %4979, 5.120000e+02
  %4986 = fmul fast float %4980, 5.120000e+02
  %4987 = fadd fast float %4986, %182
  %4988 = fsub fast float %4968, %4987
  %4989 = fmul fast float %4988, 2.000000e+00
  %4990 = fadd fast float %4989, %4987
  %4991 = select i1 %4982, float %4990, float %4987
  %4992 = fsub fast float %4991, %182
  %4993 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %4992, float %4984, float %4985, float %4992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = call float @dx.op.unary.f32(i32 25, float %4993)  ; Rsqrt(value)
  %4995 = fmul fast float %4984, %4994
  %4996 = fmul fast float %4985, %4994
  %4997 = fmul fast float %4992, %4994
  %4998 = fsub fast float %4968, %182
  %4999 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4998)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4995, float %4996, float %4997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = fdiv fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5001, %4999
  %5003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4981, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = fcmp fast ogt float %5003, 0.000000e+00
  %5005 = fcmp fast olt float %5003, 0.000000e+00
  %5006 = zext i1 %5004 to i32
  %5007 = zext i1 %5005 to i32
  %5008 = sub nsw i32 %5006, %5007
  %5009 = sitofp i32 %5008 to float
  %5010 = fsub fast float %4991, %4968
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4984, float %4985, float %5010, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = fcmp fast ogt float %5011, 0.000000e+00
  %5013 = fcmp fast olt float %5011, 0.000000e+00
  %5014 = zext i1 %5012 to i32
  %5015 = zext i1 %5013 to i32
  %5016 = sub nsw i32 %5014, %5015
  %5017 = sitofp i32 %5016 to float
  %5018 = fcmp fast une float %5009, %5017
  br i1 %5018, label %5019, label %5029, !dx.controlflow.hints !99

; <label>:5019                                    ; preds = %4972
  %5020 = fmul fast float %4997, %5002
  %5021 = fmul fast float %5002, %4996
  %5022 = fmul fast float %5002, %4995
  %5023 = fmul fast float %5022, %5022
  %5024 = fmul fast float %5021, %5021
  %5025 = fadd fast float %5023, %5024
  %5026 = fmul fast float %5020, %5020
  %5027 = fadd fast float %5025, %5026
  %5028 = call float @dx.op.unary.f32(i32 24, float %5027)  ; Sqrt(value)
  br label %5039

; <label>:5029                                    ; preds = %4972
  %5030 = icmp slt i32 %5008, 0
  br i1 %5030, label %5031, label %5039, !dx.controlflow.hints !100

; <label>:5031                                    ; preds = %5029
  %5032 = fsub fast float %182, %4991
  %5033 = fmul fast float %4984, %4984
  %5034 = fmul fast float %4985, %4985
  %5035 = fadd fast float %5033, %5034
  %5036 = fmul fast float %5032, %5032
  %5037 = fadd fast float %5035, %5036
  %5038 = call float @dx.op.unary.f32(i32 24, float %5037)  ; Sqrt(value)
  br label %5039

; <label>:5039                                    ; preds = %5031, %5029, %5019
  %5040 = phi float [ %5028, %5019 ], [ %5038, %5031 ], [ 0.000000e+00, %5029 ]
  %5041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %29, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.i32 %5041, 1
  %5043 = icmp ne i32 %5042, 0
  %5044 = and i1 %5043, %4983
  %5045 = call float @dx.op.dot3.f32(i32 55, float %4995, float %4996, float %4997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = fmul fast float %5045, %5045
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5053 = extractvalue %dx.types.CBufRet.f32 %5052, 0
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.CBufRet.f32 %5052, 1
  %5059 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5052, 3
  %5062 = extractvalue %dx.types.CBufRet.f32 %5054, 3
  %5063 = extractvalue %dx.types.CBufRet.f32 %5056, 3
  %5064 = fadd fast float %5049, %180
  %5065 = fadd fast float %5050, %181
  %5066 = fadd fast float %5051, %182
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  br i1 %5044, label %5072, label %5265, !dx.controlflow.hints !101

; <label>:5072                                    ; preds = %5039
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = fmul fast float %5074, %5074
  %5076 = fmul fast float %5075, %5047
  %5077 = fsub fast float 1.000000e+00, %5076
  %5078 = fcmp fast oge float %5077, 0.000000e+00
  %5079 = fmul fast float %5074, %4995
  %5080 = fmul fast float %5074, %4996
  %5081 = fmul fast float %5074, %4997
  %5082 = call float @dx.op.unary.f32(i32 24, float %5077)  ; Sqrt(value)
  %5083 = fmul fast float %5074, %5045
  %5084 = fsub fast float -0.000000e+00, %5082
  %5085 = fsub fast float %5084, %5083
  %5086 = fadd fast float %5085, %5081
  %5087 = select i1 %5078, float %5079, float 0.000000e+00
  %5088 = select i1 %5078, float %5080, float 0.000000e+00
  %5089 = select i1 %5078, float %5086, float 0.000000e+00
  %5090 = fmul fast float %5087, %5040
  %5091 = fmul fast float %5088, %5040
  %5092 = fmul fast float %5089, %5040
  %5093 = fadd fast float %5064, %5090
  %5094 = fadd fast float %5093, %5061
  %5095 = fadd fast float %5065, %5091
  %5096 = fadd fast float %5095, %5062
  %5097 = fadd fast float %5066, %5092
  %5098 = fadd fast float %5097, %5063
  %5099 = fmul fast float %5094, %5053
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5055, float %5099)  ; FMad(a,b,c)
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5098, float %5057, float %5100)  ; FMad(a,b,c)
  %5102 = fmul fast float %5094, %5058
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5059, float %5102)  ; FMad(a,b,c)
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5098, float %5060, float %5103)  ; FMad(a,b,c)
  %5105 = fsub fast float %5101, %5061
  %5106 = fsub fast float %5105, %5068
  %5107 = fadd fast float %5106, %5070
  %5108 = fsub fast float %5104, %5062
  %5109 = fsub fast float %5108, %5069
  %5110 = fadd fast float %5109, %5070
  %5111 = fmul fast float %5107, %5071
  %5112 = fmul fast float %5110, %5071
  %5113 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5115 = fsub fast float 1.000000e+00, %5113
  %5116 = fsub fast float 1.000000e+00, %5114
  %5117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %5115, float %5116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5118 = extractvalue %dx.types.ResRet.f32 %5117, 0
  %5119 = fmul fast float %5118, 0x3FBC5ABC00000000
  %5120 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5121 = fmul fast float %5120, %5120
  %5122 = fmul fast float %5121, %5047
  %5123 = fsub fast float 1.000000e+00, %5122
  %5124 = fcmp fast oge float %5123, 0.000000e+00
  %5125 = fmul fast float %5120, %4995
  %5126 = fmul fast float %5120, %4996
  %5127 = fmul fast float %5120, %4997
  %5128 = call float @dx.op.unary.f32(i32 24, float %5123)  ; Sqrt(value)
  %5129 = fmul fast float %5120, %5045
  %5130 = fsub fast float -0.000000e+00, %5128
  %5131 = fsub fast float %5130, %5129
  %5132 = fadd fast float %5131, %5127
  %5133 = select i1 %5124, float %5125, float 0.000000e+00
  %5134 = select i1 %5124, float %5126, float 0.000000e+00
  %5135 = select i1 %5124, float %5132, float 0.000000e+00
  %5136 = fmul fast float %5133, %5040
  %5137 = fmul fast float %5134, %5040
  %5138 = fmul fast float %5135, %5040
  %5139 = fadd fast float %5064, %5136
  %5140 = fadd fast float %5139, %5061
  %5141 = fadd fast float %5065, %5137
  %5142 = fadd fast float %5141, %5062
  %5143 = fadd fast float %5066, %5138
  %5144 = fadd fast float %5143, %5063
  %5145 = fmul fast float %5140, %5053
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5055, float %5145)  ; FMad(a,b,c)
  %5147 = call float @dx.op.tertiary.f32(i32 46, float %5144, float %5057, float %5146)  ; FMad(a,b,c)
  %5148 = fmul fast float %5140, %5058
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5059, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %5144, float %5060, float %5149)  ; FMad(a,b,c)
  %5151 = fsub fast float %5147, %5061
  %5152 = fsub fast float %5151, %5068
  %5153 = fadd fast float %5152, %5070
  %5154 = fsub fast float %5150, %5062
  %5155 = fsub fast float %5154, %5069
  %5156 = fadd fast float %5155, %5070
  %5157 = fmul fast float %5153, %5071
  %5158 = fmul fast float %5156, %5071
  %5159 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5161 = fsub fast float 1.000000e+00, %5159
  %5162 = fsub fast float 1.000000e+00, %5160
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %5161, float %5162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = fmul fast float %5164, 0x3F9E4BBD60000000
  %5166 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5167 = fmul fast float %5166, %5166
  %5168 = fmul fast float %5167, %5047
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = fcmp fast oge float %5169, 0.000000e+00
  %5171 = fmul fast float %5166, %4995
  %5172 = fmul fast float %5166, %4996
  %5173 = fmul fast float %5166, %4997
  %5174 = call float @dx.op.unary.f32(i32 24, float %5169)  ; Sqrt(value)
  %5175 = fmul fast float %5166, %5045
  %5176 = fsub fast float -0.000000e+00, %5174
  %5177 = fsub fast float %5176, %5175
  %5178 = fadd fast float %5177, %5173
  %5179 = select i1 %5170, float %5171, float 0.000000e+00
  %5180 = select i1 %5170, float %5172, float 0.000000e+00
  %5181 = select i1 %5170, float %5178, float 0.000000e+00
  %5182 = fmul fast float %5179, %5040
  %5183 = fmul fast float %5180, %5040
  %5184 = fmul fast float %5181, %5040
  %5185 = fadd fast float %5064, %5182
  %5186 = fadd fast float %5185, %5061
  %5187 = fadd fast float %5065, %5183
  %5188 = fadd fast float %5187, %5062
  %5189 = fadd fast float %5066, %5184
  %5190 = fadd fast float %5189, %5063
  %5191 = fmul fast float %5186, %5053
  %5192 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5055, float %5191)  ; FMad(a,b,c)
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5057, float %5192)  ; FMad(a,b,c)
  %5194 = fmul fast float %5186, %5058
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5059, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5060, float %5195)  ; FMad(a,b,c)
  %5197 = fsub fast float %5193, %5061
  %5198 = fsub fast float %5197, %5068
  %5199 = fadd fast float %5198, %5070
  %5200 = fsub fast float %5196, %5062
  %5201 = fsub fast float %5200, %5069
  %5202 = fadd fast float %5201, %5070
  %5203 = fmul fast float %5199, %5071
  %5204 = fmul fast float %5202, %5071
  %5205 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5207 = fsub fast float 1.000000e+00, %5205
  %5208 = fsub fast float 1.000000e+00, %5206
  %5209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %5207, float %5208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = fmul fast float %5210, 0x3FDDEACB00000000
  %5212 = fadd fast float %5211, %5165
  %5213 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5214 = fmul fast float %5213, %5213
  %5215 = fmul fast float %5214, %5047
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = fcmp fast oge float %5216, 0.000000e+00
  %5218 = fmul fast float %5213, %4995
  %5219 = fmul fast float %5213, %4996
  %5220 = fmul fast float %5213, %4997
  %5221 = call float @dx.op.unary.f32(i32 24, float %5216)  ; Sqrt(value)
  %5222 = fmul fast float %5213, %5045
  %5223 = fsub fast float -0.000000e+00, %5221
  %5224 = fsub fast float %5223, %5222
  %5225 = fadd fast float %5224, %5220
  %5226 = select i1 %5217, float %5218, float 0.000000e+00
  %5227 = select i1 %5217, float %5219, float 0.000000e+00
  %5228 = select i1 %5217, float %5225, float 0.000000e+00
  %5229 = fmul fast float %5226, %5040
  %5230 = fmul fast float %5227, %5040
  %5231 = fmul fast float %5228, %5040
  %5232 = fadd fast float %5064, %5229
  %5233 = fadd fast float %5232, %5061
  %5234 = fadd fast float %5065, %5230
  %5235 = fadd fast float %5234, %5062
  %5236 = fadd fast float %5066, %5231
  %5237 = fadd fast float %5236, %5063
  %5238 = fmul fast float %5233, %5053
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5235, float %5055, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5057, float %5239)  ; FMad(a,b,c)
  %5241 = fmul fast float %5233, %5058
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5235, float %5059, float %5241)  ; FMad(a,b,c)
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5060, float %5242)  ; FMad(a,b,c)
  %5244 = fsub fast float %5240, %5061
  %5245 = fsub fast float %5244, %5068
  %5246 = fadd fast float %5245, %5070
  %5247 = fsub fast float %5243, %5062
  %5248 = fsub fast float %5247, %5069
  %5249 = fadd fast float %5248, %5070
  %5250 = fmul fast float %5246, %5071
  %5251 = fmul fast float %5249, %5071
  %5252 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5254 = fsub fast float 1.000000e+00, %5252
  %5255 = fsub fast float 1.000000e+00, %5253
  %5256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = fmul fast float %5257, 0x3FE0183CA0000000
  %5259 = fmul fast float %5257, 0x3FB51033E0000000
  %5260 = fadd fast float %5212, %5258
  %5261 = fadd fast float %5210, %5164
  %5262 = fmul fast float %5261, 0x3FD9D2A200000000
  %5263 = fadd fast float %5259, %5119
  %5264 = fadd fast float %5263, %5262
  br label %5311

; <label>:5265                                    ; preds = %5039
  %5266 = fmul fast float %5047, 0x3FE2024E20000000
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = fcmp fast oge float %5267, 0.000000e+00
  %5269 = fmul fast float %4995, 0x3FE8018960000000
  %5270 = fmul fast float %4996, 0x3FE8018960000000
  %5271 = fmul fast float %4997, 0x3FE8018960000000
  %5272 = call float @dx.op.unary.f32(i32 24, float %5267)  ; Sqrt(value)
  %5273 = fmul fast float %5045, 0x3FE8018960000000
  %5274 = fsub fast float %5271, %5272
  %5275 = fsub fast float %5274, %5273
  %5276 = select i1 %5268, float %5269, float 0.000000e+00
  %5277 = select i1 %5268, float %5270, float 0.000000e+00
  %5278 = select i1 %5268, float %5275, float 0.000000e+00
  %5279 = select i1 %4982, float %4995, float %5276
  %5280 = select i1 %4982, float %4996, float %5277
  %5281 = select i1 %4982, float %4997, float %5278
  %5282 = fmul fast float %5279, %5040
  %5283 = fmul fast float %5280, %5040
  %5284 = fmul fast float %5281, %5040
  %5285 = fadd fast float %5064, %5282
  %5286 = fadd fast float %5285, %5061
  %5287 = fadd fast float %5065, %5283
  %5288 = fadd fast float %5287, %5062
  %5289 = fadd fast float %5066, %5284
  %5290 = fadd fast float %5289, %5063
  %5291 = fmul fast float %5286, %5053
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5288, float %5055, float %5291)  ; FMad(a,b,c)
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5057, float %5292)  ; FMad(a,b,c)
  %5294 = fmul fast float %5286, %5058
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5288, float %5059, float %5294)  ; FMad(a,b,c)
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5290, float %5060, float %5295)  ; FMad(a,b,c)
  %5297 = fsub fast float %5293, %5061
  %5298 = fsub fast float %5297, %5068
  %5299 = fadd fast float %5298, %5070
  %5300 = fsub fast float %5296, %5062
  %5301 = fsub fast float %5300, %5069
  %5302 = fadd fast float %5301, %5070
  %5303 = fmul fast float %5299, %5071
  %5304 = fmul fast float %5302, %5071
  %5305 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5307 = fsub fast float 1.000000e+00, %5305
  %5308 = fsub fast float 1.000000e+00, %5306
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  br label %5311

; <label>:5311                                    ; preds = %5265, %5072
  %5312 = phi float [ %5310, %5265 ], [ %5260, %5072 ]
  %5313 = phi float [ %5310, %5265 ], [ %5264, %5072 ]
  %5314 = phi float [ %5310, %5265 ], [ %5118, %5072 ]
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %29, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = call float @dx.op.unary.f32(i32 6, float %5316)  ; FAbs(value)
  %5318 = fmul fast float %5040, %5040
  %5319 = fadd fast float %5318, 1.000000e+00
  %5320 = fdiv fast float %5317, %5319
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = fsub fast float -0.000000e+00, %5040
  %5323 = select i1 %4982, float -0.000000e+00, float %5322
  %5324 = fmul fast float %4969, 0x3FF7154760000000
  %5325 = fmul fast float %5324, %5323
  %5326 = fmul fast float %4970, 0x3FF7154760000000
  %5327 = fmul fast float %5326, %5323
  %5328 = fmul fast float %4971, 0x3FF7154760000000
  %5329 = fmul fast float %5328, %5323
  %5330 = call float @dx.op.unary.f32(i32 21, float %5325)  ; Exp(value)
  %5331 = call float @dx.op.unary.f32(i32 21, float %5327)  ; Exp(value)
  %5332 = call float @dx.op.unary.f32(i32 21, float %5329)  ; Exp(value)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5334 = call float @dx.op.unary.f32(i32 7, float %5331)  ; Saturate(value)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5336 = call float @dx.op.unary.f32(i32 6, float %5045)  ; FAbs(value)
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = bitcast float %5337 to i32
  %5339 = sitofp i32 %5338 to float
  %5340 = fptosi float %5339 to i32
  %5341 = bitcast i32 %5340 to float
  %5342 = fmul fast float %5341, 0x3FEF333340000000
  %5343 = fadd fast float %5342, 0x3F999999A0000000
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = fadd fast float %5312, 1.000000e+00
  %5347 = fadd fast float %5313, 1.000000e+00
  %5348 = fadd fast float %5314, 1.000000e+00
  %5349 = fmul fast float %5333, %5346
  %5350 = fmul fast float %5334, %5347
  %5351 = fmul fast float %5335, %5348
  %5352 = fmul fast float %5349, %5345
  %5353 = fmul fast float %5350, %5345
  %5354 = fmul fast float %5351, %5345
  %5355 = fmul fast float %5321, %5346
  %5356 = fmul fast float %5355, %5333
  %5357 = fmul fast float %5356, %5344
  %5358 = fmul fast float %5321, %5347
  %5359 = fmul fast float %5358, %5334
  %5360 = fmul fast float %5359, %5344
  %5361 = fmul fast float %5321, %5348
  %5362 = fmul fast float %5361, %5335
  %5363 = fmul fast float %5362, %5344
  %5364 = fadd fast float %5357, %5333
  %5365 = fadd fast float %5360, %5334
  %5366 = fadd fast float %5363, %5335
  %5367 = call float @dx.op.unary.f32(i32 6, float %4981)  ; FAbs(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = select i1 %4982, float %5364, float %5352
  %5370 = select i1 %4982, float %5365, float %5353
  %5371 = select i1 %4982, float %5366, float %5354
  %5372 = select i1 %4976, float %5368, float 0.000000e+00
  %5373 = fsub fast float %5369, %5333
  %5374 = fsub fast float %5370, %5334
  %5375 = fsub fast float %5371, %5335
  %5376 = fmul fast float %5373, %5372
  %5377 = fmul fast float %5374, %5372
  %5378 = fmul fast float %5375, %5372
  %5379 = fadd fast float %5376, %5333
  %5380 = fadd fast float %5377, %5334
  %5381 = fadd fast float %5378, %5335
  %5382 = fmul fast float %5379, %4603
  %5383 = fmul fast float %5380, %4603
  %5384 = fmul fast float %5381, %4603
  br label %5385

; <label>:5385                                    ; preds = %5311, %4966, %4602
  %5386 = phi float [ %5382, %5311 ], [ %4603, %4966 ], [ %4603, %4602 ]
  %5387 = phi float [ %5383, %5311 ], [ %4603, %4966 ], [ %4603, %4602 ]
  %5388 = phi float [ %5384, %5311 ], [ %4603, %4966 ], [ %4603, %4602 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %71, i32 %72, i32 undef, float %5386, float %5387, float %5388, float %5386, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5389

; <label>:5389                                    ; preds = %5385, %88
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
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !31, !33, !36}
!5 = !{!6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30}
!6 = !{i32 0, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!12 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 24, i32 1, i32 11, i32 0, null}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 19, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 20, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 21, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 26, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 7, i32 0, !29}
!29 = !{i32 0, i32 14}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!31 = !{!32}
!32 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!36 = !{!37, !38, !39, !40, !41}
!37 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!41 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{void ()* @cs_sunvis_trans, !"cs_sunvis_trans", null, !4, !43}
!43 = !{i32 0, i64 272, i32 4, !44}
!44 = !{i32 16, i32 16, i32 1}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !53, i64 0}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
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

