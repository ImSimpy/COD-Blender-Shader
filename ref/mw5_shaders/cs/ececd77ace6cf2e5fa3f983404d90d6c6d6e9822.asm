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
; shader hash: 10e2f8e54c289505b1acb9890dd5c9ad
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
;                                   texture     f32          2d     T22             t4     1
;                                   texture     f32          2d     T23             t6     1
;                                   texture     f32          2d     T24             t5     1
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

@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4

define void @cs_sunvis_trans() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = alloca [4 x i32], align 4
  %35 = alloca [4 x i32], align 4
  %36 = alloca [4 x i32], align 4
  %37 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %38 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %39 = alloca [12 x float], align 4
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.i32 %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48, !dx.controlflow.hints !49

; <label>:48                                      ; preds = %0
  %49 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %50 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %51 = shl i32 %37, 2
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = and i32 %53, 65535
  %55 = lshr i32 %53, 16
  %56 = shl nuw nsw i32 %54, 4
  %57 = shl nuw nsw i32 %55, 4
  %58 = or i32 %56, %50
  %59 = or i32 %57, %49
  br label %60

; <label>:60                                      ; preds = %48, %0
  %61 = phi i32 [ %54, %48 ], [ %37, %0 ]
  %62 = phi i32 [ %55, %48 ], [ %38, %0 ]
  %63 = phi i32 [ %58, %48 ], [ 0, %0 ]
  %64 = phi i32 [ %59, %48 ], [ 0, %0 ]
  %65 = uitofp i32 %63 to float
  %66 = uitofp i32 %64 to float
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %70 = fmul fast float %68, %65
  %71 = fmul fast float %69, %66
  %72 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = fcmp fast olt float %73, -1.000000e+00
  %75 = fcmp fast ogt float %73, -1.000000e+00
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %78 = select i1 %75, float %77, float 1.000000e+00
  %79 = fadd fast float %73, 1.000000e+00
  %80 = fmul fast float %78, %79
  %81 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %82 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %83 = fcmp fast ult float %81, %82
  br i1 %83, label %85, label %84, !dx.controlflow.hints !50

; <label>:84                                      ; preds = %60
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %63, i32 %64, i32 undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3628

; <label>:85                                      ; preds = %60
  %86 = fmul fast float %70, 2.000000e+00
  %87 = fmul fast float %71, 2.000000e+00
  %88 = fsub fast float 1.000000e+00, %86
  %89 = fsub fast float 1.000000e+00, %87
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = select i1 %74, float %91, float %95
  %99 = select i1 %74, float %92, float %96
  %100 = select i1 %74, float %93, float %97
  %101 = fmul fast float %98, %88
  %102 = fmul fast float %99, %88
  %103 = fmul fast float %100, %88
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = select i1 %74, float %105, float %109
  %113 = select i1 %74, float %106, float %110
  %114 = select i1 %74, float %107, float %111
  %115 = fmul fast float %112, %89
  %116 = fmul fast float %113, %89
  %117 = fmul fast float %114, %89
  %118 = fadd fast float %115, %101
  %119 = fadd fast float %116, %102
  %120 = fadd fast float %117, %103
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = select i1 %74, float %122, float %126
  %130 = select i1 %74, float %123, float %127
  %131 = select i1 %74, float %124, float %128
  %132 = fadd fast float %118, %129
  %133 = fadd fast float %119, %130
  %134 = fadd fast float %120, %131
  %135 = fmul fast float %132, %81
  %136 = fmul fast float %133, %81
  %137 = fmul fast float %134, %81
  %138 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = lshr i32 %139, 8
  %141 = and i32 %139, 255
  %142 = and i32 %140, 255
  %143 = uitofp i32 %141 to float
  %144 = uitofp i32 %142 to float
  %145 = fmul fast float %143, 0x3F80101020000000
  %146 = fmul fast float %144, 0x3F80101020000000
  %147 = fadd fast float %145, -1.000000e+00
  %148 = fadd fast float %146, -1.000000e+00
  %149 = call float @dx.op.unary.f32(i32 6, float %147)  ; FAbs(value)
  %150 = fsub fast float 1.000000e+00, %149
  %151 = call float @dx.op.unary.f32(i32 6, float %148)  ; FAbs(value)
  %152 = fsub fast float %150, %151
  %153 = fsub fast float -0.000000e+00, %152
  %154 = call float @dx.op.binary.f32(i32 35, float %153, float 0.000000e+00)  ; FMax(a,b)
  %155 = fcmp fast ogt float %147, 0.000000e+00
  %156 = fsub fast float -0.000000e+00, %154
  %157 = select i1 %155, float %156, float %154
  %158 = fadd fast float %157, %147
  %159 = fcmp fast ogt float %148, 0.000000e+00
  %160 = select i1 %159, float %156, float %154
  %161 = fadd fast float %160, %148
  %162 = call float @dx.op.dot3.f32(i32 55, float %158, float %161, float %152, float %158, float %161, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.unary.f32(i32 25, float %162)  ; Rsqrt(value)
  %164 = fmul fast float %158, %163
  %165 = fmul fast float %161, %163
  %166 = fmul fast float %163, %152
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = call float @dx.op.dot3.f32(i32 55, float %168, float %169, float %170, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = call float @dx.op.unary.f32(i32 6, float %171)  ; FAbs(value)
  %173 = fsub fast float 1.000000e+00, %172
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 3
  %176 = fsub fast float -0.000000e+00, %171
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %178 = fmul fast float %175, %177
  %179 = fsub fast float %173, %178
  %180 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %181 = fmul fast float %179, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %187, 3
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %196 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %197 = fmul fast float %183, %135
  %198 = call float @dx.op.tertiary.f32(i32 46, float %136, float %184, float %197)  ; FMad(a,b,c)
  %199 = call float @dx.op.tertiary.f32(i32 46, float %137, float %185, float %198)  ; FMad(a,b,c)
  %200 = fadd fast float %199, %186
  %201 = fmul fast float %188, %135
  %202 = call float @dx.op.tertiary.f32(i32 46, float %136, float %189, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float %137, float %190, float %202)  ; FMad(a,b,c)
  %204 = fadd fast float %203, %191
  %205 = fmul fast float %193, %135
  %206 = call float @dx.op.tertiary.f32(i32 46, float %136, float %194, float %205)  ; FMad(a,b,c)
  %207 = call float @dx.op.tertiary.f32(i32 46, float %137, float %195, float %206)  ; FMad(a,b,c)
  %208 = fadd fast float %207, %196
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = fmul fast float %210, 0x3FE3C6EF40000000
  %212 = frem fast float %65, 2.560000e+02
  %213 = frem fast float %66, 2.560000e+02
  %214 = fptoui float %212 to i32
  %215 = fptoui float %213 to i32
  %216 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %214, i32 %215, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %217 = extractvalue %dx.types.ResRet.f32 %216, 2
  %218 = fadd fast float %217, %211
  %219 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 1
  %222 = fcmp fast une float %221, 0.000000e+00
  br i1 %222, label %223, label %1844, !dx.controlflow.hints !51

; <label>:223                                     ; preds = %85
  %224 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %225 = fptoui float %224 to i32
  %226 = add i32 %225, 15
  %227 = lshr i32 %226, 4
  %228 = mul i32 %227, %62
  %229 = add i32 %228, %61
  %230 = shl i32 %229, 3
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = lshr i32 %232, 28
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %254, !dx.controlflow.hints !52

; <label>:235                                     ; preds = %223
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = fmul fast float %237, %181
  %241 = fadd fast float %239, %208
  %242 = fadd fast float %241, %240
  %243 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %246 = fmul fast float %245, %200
  %247 = fmul fast float %245, %204
  %248 = fadd fast float %246, %243
  %249 = fadd fast float %247, %244
  %250 = call float @dx.op.binary.f32(i32 35, float %242, float 0.000000e+00)  ; FMax(a,b)
  %251 = fadd fast float %250, 0x3F10000000000000
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %31, float %248, float %249, float undef, float undef, i32 0, i32 0, i32 undef, float %251)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  br label %2697

; <label>:254                                     ; preds = %223
  %255 = icmp eq i32 %233, 1
  br i1 %255, label %256, label %275, !dx.controlflow.hints !53

; <label>:256                                     ; preds = %254
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 2
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 1
  %261 = fmul fast float %258, %181
  %262 = fadd fast float %260, %208
  %263 = fadd fast float %262, %261
  %264 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %257, 3
  %267 = fmul fast float %266, %200
  %268 = fmul fast float %266, %204
  %269 = fadd fast float %267, %264
  %270 = fadd fast float %268, %265
  %271 = call float @dx.op.binary.f32(i32 35, float %263, float 0.000000e+00)  ; FMax(a,b)
  %272 = fadd fast float %271, 0x3F10000000000000
  %273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %269, float %270, float undef, float undef, i32 0, i32 0, i32 undef, float %272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  br label %2697

; <label>:275                                     ; preds = %254
  %276 = icmp eq i32 %233, 2
  br i1 %276, label %277, label %296, !dx.controlflow.hints !54

; <label>:277                                     ; preds = %275
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = fmul fast float %279, %181
  %283 = fadd fast float %281, %208
  %284 = fadd fast float %283, %282
  %285 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %286 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %287 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %288 = fmul fast float %287, %200
  %289 = fmul fast float %287, %204
  %290 = fadd fast float %288, %285
  %291 = fadd fast float %289, %286
  %292 = call float @dx.op.binary.f32(i32 35, float %284, float 0.000000e+00)  ; FMax(a,b)
  %293 = fadd fast float %292, 0x3F10000000000000
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %290, float %291, float undef, float undef, i32 0, i32 0, i32 undef, float %293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  br label %2697

; <label>:296                                     ; preds = %275
  %297 = icmp eq i32 %233, 12
  br i1 %297, label %298, label %317, !dx.controlflow.hints !55

; <label>:298                                     ; preds = %296
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = fmul fast float %300, %181
  %304 = fadd fast float %302, %208
  %305 = fadd fast float %304, %303
  %306 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %307 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %308 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %309 = fmul fast float %308, %200
  %310 = fmul fast float %308, %204
  %311 = fadd fast float %309, %306
  %312 = fadd fast float %310, %307
  %313 = call float @dx.op.binary.f32(i32 35, float %305, float 0.000000e+00)  ; FMax(a,b)
  %314 = fadd fast float %313, 0x3F10000000000000
  %315 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %31, float %311, float %312, float undef, float undef, i32 0, i32 0, i32 undef, float %314)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  br label %2697

; <label>:317                                     ; preds = %296
  %318 = icmp eq i32 %233, 13
  br i1 %318, label %319, label %989, !dx.controlflow.hints !56

; <label>:319                                     ; preds = %317
  %320 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %321 = fcmp fast une float %320, 0.000000e+00
  br i1 %321, label %322, label %2697, !dx.controlflow.hints !57

; <label>:322                                     ; preds = %319
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = extractvalue %dx.types.CBufRet.f32 %333, 3
  %338 = fmul fast float %324, %135
  %339 = call float @dx.op.tertiary.f32(i32 46, float %136, float %325, float %338)  ; FMad(a,b,c)
  %340 = call float @dx.op.tertiary.f32(i32 46, float %137, float %326, float %339)  ; FMad(a,b,c)
  %341 = fadd fast float %340, %327
  %342 = fmul fast float %329, %135
  %343 = call float @dx.op.tertiary.f32(i32 46, float %136, float %330, float %342)  ; FMad(a,b,c)
  %344 = call float @dx.op.tertiary.f32(i32 46, float %137, float %331, float %343)  ; FMad(a,b,c)
  %345 = fadd fast float %344, %332
  %346 = fmul fast float %334, %135
  %347 = call float @dx.op.tertiary.f32(i32 46, float %136, float %335, float %346)  ; FMad(a,b,c)
  %348 = call float @dx.op.tertiary.f32(i32 46, float %137, float %336, float %347)  ; FMad(a,b,c)
  %349 = fadd fast float %348, %337
  %350 = fcmp fast oge float %341, 1.000000e+00
  %351 = fcmp fast oge float %345, 1.000000e+00
  %352 = or i1 %350, %351
  %353 = fcmp fast olt float %341, 0.000000e+00
  %354 = fcmp fast olt float %345, 0.000000e+00
  %355 = or i1 %353, %354
  %356 = or i1 %352, %355
  br i1 %356, label %2697, label %357, !dx.controlflow.hints !58

; <label>:357                                     ; preds = %322
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 1
  %364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.i32 %364, 2
  %366 = uitofp i32 %365 to float
  %367 = extractvalue %dx.types.CBufRet.i32 %364, 3
  %368 = uitofp i32 %367 to float
  %369 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %370 = fmul fast float %369, 2.000000e+00
  %371 = fsub fast float %341, %359
  %372 = fsub fast float %345, %360
  %373 = fmul fast float %370, %371
  %374 = fmul fast float %370, %372
  %375 = fdiv fast float 1.000000e+00, %170
  %376 = fmul fast float %374, %375
  %377 = call float @dx.op.unary.f32(i32 6, float %376)  ; FAbs(value)
  %378 = fmul fast float %361, %137
  %379 = fmul fast float %378, %370
  %380 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %381 = call float @dx.op.unary.f32(i32 6, float %373)  ; FAbs(value)
  %382 = call float @dx.op.binary.f32(i32 35, float %380, float %377)  ; FMax(a,b)
  %383 = call float @dx.op.binary.f32(i32 35, float %381, float %382)  ; FMax(a,b)
  %384 = fmul fast float %383, 2.000000e+00
  %385 = call float @dx.op.unary.f32(i32 23, float %384)  ; Log(value)
  %386 = call float @dx.op.binary.f32(i32 35, float %385, float %366)  ; FMax(a,b)
  %387 = call float @dx.op.unary.f32(i32 22, float %386)  ; Frc(value)
  %388 = fadd fast float %387, 0xBFEA666660000000
  %389 = fmul fast float %388, 8.000000e+00
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = call float @dx.op.unary.f32(i32 27, float %386)  ; Round_ni(value)
  %392 = fadd fast float %391, %390
  %393 = call float @dx.op.binary.f32(i32 36, float %392, float %368)  ; FMin(a,b)
  %394 = call float @dx.op.unary.f32(i32 27, float %393)  ; Round_ni(value)
  %395 = fsub fast float -0.000000e+00, %394
  %396 = call float @dx.op.unary.f32(i32 21, float %395)  ; Exp(value)
  %397 = fmul fast float %396, %370
  %398 = fmul fast float %397, %341
  %399 = fmul fast float %397, %345
  %400 = fmul fast float %398, 5.000000e-01
  %401 = fmul fast float %399, 5.000000e-01
  %402 = fadd fast float %400, 5.000000e-01
  %403 = fadd fast float %401, 5.000000e-01
  %404 = fmul fast float %398, 2.500000e-01
  %405 = fmul fast float %399, 2.500000e-01
  %406 = fadd fast float %404, 5.000000e-01
  %407 = fadd fast float %405, 5.000000e-01
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 536870911
  %411 = lshr i32 %410, 9
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, %341
  %414 = fmul fast float %412, %345
  %415 = call float @dx.op.unary.f32(i32 22, float %413)  ; Frc(value)
  %416 = call float @dx.op.unary.f32(i32 22, float %414)  ; Frc(value)
  %417 = call float @dx.op.unary.f32(i32 22, float %390)  ; Frc(value)
  %418 = fcmp fast une float %417, 0.000000e+00
  br i1 %418, label %419, label %517, !dx.controlflow.hints !59

; <label>:419                                     ; preds = %357
  %420 = call float @dx.op.unary.f32(i32 21, float %391)  ; Exp(value)
  %421 = fmul fast float %420, 1.953125e-03
  %422 = fcmp fast olt float %415, %421
  %423 = fcmp fast olt float %416, %421
  %424 = or i1 %422, %423
  %425 = fsub fast float 1.000000e+00, %421
  %426 = fcmp fast ogt float %415, %425
  %427 = fcmp fast ogt float %416, %425
  %428 = or i1 %426, %427
  %429 = or i1 %424, %428
  br i1 %429, label %430, label %596, !dx.controlflow.hints !60

; <label>:430                                     ; preds = %419
  %431 = fmul fast float %363, 5.000000e-01
  %432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %433 = extractvalue %dx.types.CBufRet.i32 %432, 0
  %434 = fmul fast float %345, 3.530000e+02
  %435 = uitofp i32 %410 to float
  %436 = fmul fast float %434, %435
  %437 = fmul fast float %341, 6.130000e+02
  %438 = fadd fast float %436, %437
  %439 = fptoui float %438 to i32
  %440 = add i32 %433, %439
  %441 = mul i32 %440, -63
  %442 = lshr i32 %441, 17
  %443 = xor i32 %442, %441
  %444 = mul i32 %443, -511
  %445 = mul i32 %443, -8176
  %446 = xor i32 %444, %445
  %447 = mul i32 %446, -7
  %448 = mul i32 %446, -7168
  %449 = xor i32 %447, %448
  %450 = lshr i32 %449, 15
  %451 = xor i32 %450, %447
  %452 = and i32 %451, 15
  %453 = mul i32 %452, 2
  %454 = add i32 0, %453
  %455 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %454
  %456 = load float, float* %455, align 4
  %457 = mul i32 %452, 2
  %458 = add i32 1, %457
  %459 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %458
  %460 = load float, float* %459, align 4
  %461 = fmul fast float %345, 2.770000e+02
  %462 = fmul fast float %461, %435
  %463 = fmul fast float %341, 5.990000e+02
  %464 = fadd fast float %462, %463
  %465 = fptoui float %464 to i32
  %466 = mul i32 %465, -63
  %467 = lshr i32 %466, 17
  %468 = xor i32 %467, %466
  %469 = mul i32 %468, -511
  %470 = mul i32 %468, -8176
  %471 = xor i32 %469, %470
  %472 = mul i32 %471, -7
  %473 = mul i32 %471, -7168
  %474 = xor i32 %472, %473
  %475 = lshr i32 %474, 15
  %476 = xor i32 %475, %472
  %477 = and i32 %476, 63
  %478 = mul i32 %477, 2
  %479 = add i32 0, %478
  %480 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %479
  %481 = load float, float* %480, align 4
  %482 = mul i32 %477, 2
  %483 = add i32 1, %482
  %484 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %483
  %485 = load float, float* %484, align 4
  %486 = call float @dx.op.dot2.f32(i32 54, float %456, float %460, float %481, float %485)  ; Dot2(ax,ay,bx,by)
  %487 = fsub fast float -0.000000e+00, %481
  %488 = call float @dx.op.dot2.f32(i32 54, float %456, float %460, float %487, float %485)  ; Dot2(ax,ay,bx,by)
  %489 = fmul fast float %486, %431
  %490 = fmul fast float %488, %431
  %491 = fdiv fast float 2.000000e+00, %397
  %492 = fmul fast float %420, 9.765625e-04
  %493 = fcmp fast olt float %415, %492
  %494 = fcmp fast olt float %416, %492
  %495 = or i1 %493, %494
  %496 = fsub fast float 1.000000e+00, %492
  %497 = fcmp fast ogt float %415, %496
  %498 = fcmp fast ogt float %416, %496
  %499 = or i1 %497, %498
  %500 = or i1 %495, %499
  %501 = fmul fast float %489, 2.000000e+00
  br i1 %500, label %502, label %506, !dx.controlflow.hints !61

; <label>:502                                     ; preds = %430
  %503 = fmul fast float %490, 2.000000e+00
  %504 = fadd fast float %501, %402
  %505 = fadd fast float %503, %403
  br label %506

; <label>:506                                     ; preds = %502, %430
  %507 = phi float [ %504, %502 ], [ %402, %430 ]
  %508 = phi float [ %505, %502 ], [ %403, %430 ]
  %509 = phi i32 [ 3, %502 ], [ 2, %430 ]
  %510 = fadd fast float %489, %406
  %511 = fadd fast float %490, %407
  %512 = fmul fast float %501, %491
  %513 = fmul fast float %491, 2.000000e+00
  %514 = fmul fast float %513, %490
  %515 = fadd fast float %512, %341
  %516 = fadd fast float %514, %345
  br label %596

; <label>:517                                     ; preds = %357
  %518 = call float @dx.op.unary.f32(i32 21, float %394)  ; Exp(value)
  %519 = fmul fast float %518, 9.765625e-04
  %520 = fcmp fast olt float %415, %519
  %521 = fcmp fast olt float %416, %519
  %522 = or i1 %520, %521
  %523 = fsub fast float 1.000000e+00, %519
  %524 = fcmp fast ogt float %415, %523
  %525 = fcmp fast ogt float %416, %523
  %526 = or i1 %524, %525
  %527 = or i1 %522, %526
  br i1 %527, label %528, label %596, !dx.controlflow.hints !62

; <label>:528                                     ; preds = %517
  %529 = fmul fast float %363, 5.000000e-01
  %530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.i32 %530, 0
  %532 = fmul fast float %345, 3.530000e+02
  %533 = uitofp i32 %410 to float
  %534 = fmul fast float %532, %533
  %535 = fmul fast float %341, 6.130000e+02
  %536 = fadd fast float %534, %535
  %537 = fptoui float %536 to i32
  %538 = add i32 %531, %537
  %539 = mul i32 %538, -63
  %540 = lshr i32 %539, 17
  %541 = xor i32 %540, %539
  %542 = mul i32 %541, -511
  %543 = mul i32 %541, -8176
  %544 = xor i32 %542, %543
  %545 = mul i32 %544, -7
  %546 = mul i32 %544, -7168
  %547 = xor i32 %545, %546
  %548 = lshr i32 %547, 15
  %549 = xor i32 %548, %545
  %550 = and i32 %549, 15
  %551 = mul i32 %550, 2
  %552 = add i32 0, %551
  %553 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %552
  %554 = load float, float* %553, align 4
  %555 = mul i32 %550, 2
  %556 = add i32 1, %555
  %557 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %556
  %558 = load float, float* %557, align 4
  %559 = fmul fast float %345, 2.770000e+02
  %560 = fmul fast float %559, %533
  %561 = fmul fast float %341, 5.990000e+02
  %562 = fadd fast float %560, %561
  %563 = fptoui float %562 to i32
  %564 = mul i32 %563, -63
  %565 = lshr i32 %564, 17
  %566 = xor i32 %565, %564
  %567 = mul i32 %566, -511
  %568 = mul i32 %566, -8176
  %569 = xor i32 %567, %568
  %570 = mul i32 %569, -7
  %571 = mul i32 %569, -7168
  %572 = xor i32 %570, %571
  %573 = lshr i32 %572, 15
  %574 = xor i32 %573, %570
  %575 = and i32 %574, 63
  %576 = mul i32 %575, 2
  %577 = add i32 0, %576
  %578 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %577
  %579 = load float, float* %578, align 4
  %580 = mul i32 %575, 2
  %581 = add i32 1, %580
  %582 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %581
  %583 = load float, float* %582, align 4
  %584 = call float @dx.op.dot2.f32(i32 54, float %554, float %558, float %579, float %583)  ; Dot2(ax,ay,bx,by)
  %585 = fsub fast float -0.000000e+00, %579
  %586 = call float @dx.op.dot2.f32(i32 54, float %554, float %558, float %585, float %583)  ; Dot2(ax,ay,bx,by)
  %587 = fmul fast float %584, %529
  %588 = fmul fast float %586, %529
  %589 = fadd fast float %587, %402
  %590 = fadd fast float %588, %403
  %591 = fdiv fast float 2.000000e+00, %397
  %592 = fmul fast float %591, %587
  %593 = fmul fast float %588, %591
  %594 = fadd fast float %592, %341
  %595 = fadd fast float %593, %345
  br label %596

; <label>:596                                     ; preds = %528, %517, %506, %419
  %597 = phi float [ %510, %506 ], [ %406, %419 ], [ %406, %528 ], [ %406, %517 ]
  %598 = phi float [ %511, %506 ], [ %407, %419 ], [ %407, %528 ], [ %407, %517 ]
  %599 = phi float [ %507, %506 ], [ %402, %419 ], [ %589, %528 ], [ %402, %517 ]
  %600 = phi float [ %508, %506 ], [ %403, %419 ], [ %590, %528 ], [ %403, %517 ]
  %601 = phi i32 [ %509, %506 ], [ 0, %419 ], [ 1, %528 ], [ 0, %517 ]
  %602 = phi float [ %515, %506 ], [ %341, %419 ], [ %594, %528 ], [ %341, %517 ]
  %603 = phi float [ %516, %506 ], [ %345, %419 ], [ %595, %528 ], [ %345, %517 ]
  %604 = fsub fast float %368, %366
  %605 = fptoui float %604 to i32
  %606 = add i32 %605, 320
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %606)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %610 = fcmp fast une float %393, %368
  %611 = fsub fast float %602, %608
  %612 = fsub fast float %603, %609
  %613 = call float @dx.op.unary.f32(i32 6, float %611)  ; FAbs(value)
  %614 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %615 = fmul fast float %613, %397
  %616 = fmul fast float %614, %397
  %617 = fcmp fast olt float %615, 1.000000e+00
  %618 = fcmp fast olt float %616, 1.000000e+00
  %619 = and i1 %617, %618
  %620 = or i1 %610, %619
  br i1 %620, label %621, label %2697, !dx.controlflow.hints !63

; <label>:621                                     ; preds = %596
  %622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.i32 %622, 2
  %624 = sitofp i32 %623 to float
  %625 = fsub fast float %393, %624
  %626 = call float @dx.op.unary.f32(i32 27, float %625)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 22, float %393)  ; Frc(value)
  %628 = icmp eq i32 %601, 0
  %629 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %630 = call float @dx.op.unary.f32(i32 22, float %600)  ; Frc(value)
  br i1 %628, label %701, label %631, !dx.controlflow.hints !64

; <label>:631                                     ; preds = %621
  %632 = and i32 %601, 1
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %647, label %634, !dx.controlflow.hints !65

; <label>:634                                     ; preds = %631
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 0
  %637 = fmul fast float %629, %636
  %638 = fmul fast float %630, %636
  %639 = fptoui float %637 to i32
  %640 = fptoui float %638 to i32
  %641 = fptoui float %626 to i32
  %642 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %639, i32 %640, i32 %641, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  br label %653

; <label>:647                                     ; preds = %631
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %629, float %630, float %626, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = extractvalue %dx.types.ResRet.f32 %648, 3
  br label %653

; <label>:653                                     ; preds = %647, %634
  %654 = phi float [ %643, %634 ], [ %649, %647 ]
  %655 = phi float [ %644, %634 ], [ %650, %647 ]
  %656 = phi float [ %645, %634 ], [ %651, %647 ]
  %657 = phi float [ %646, %634 ], [ %652, %647 ]
  %658 = fcmp fast ogt float %627, 0.000000e+00
  br i1 %658, label %659, label %729, !dx.controlflow.hints !66

; <label>:659                                     ; preds = %653
  %660 = and i32 %601, 2
  %661 = icmp eq i32 %660, 0
  %662 = fadd fast float %626, 1.000000e+00
  %663 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %664 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  br i1 %661, label %678, label %665, !dx.controlflow.hints !67

; <label>:665                                     ; preds = %659
  %666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.f32 %666, 0
  %668 = fmul fast float %663, %667
  %669 = fmul fast float %664, %667
  %670 = fptoui float %668 to i32
  %671 = fptoui float %669 to i32
  %672 = fptoui float %662 to i32
  %673 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %670, i32 %671, i32 %672, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  br label %684

; <label>:678                                     ; preds = %659
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %663, float %664, float %662, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = extractvalue %dx.types.ResRet.f32 %679, 1
  %682 = extractvalue %dx.types.ResRet.f32 %679, 2
  %683 = extractvalue %dx.types.ResRet.f32 %679, 3
  br label %684

; <label>:684                                     ; preds = %678, %665
  %685 = phi float [ %674, %665 ], [ %680, %678 ]
  %686 = phi float [ %675, %665 ], [ %681, %678 ]
  %687 = phi float [ %676, %665 ], [ %682, %678 ]
  %688 = phi float [ %677, %665 ], [ %683, %678 ]
  %689 = fsub fast float %685, %654
  %690 = fsub fast float %686, %655
  %691 = fsub fast float %687, %656
  %692 = fsub fast float %688, %657
  %693 = fmul fast float %689, %627
  %694 = fmul fast float %690, %627
  %695 = fmul fast float %691, %627
  %696 = fmul fast float %692, %627
  %697 = fadd fast float %693, %654
  %698 = fadd fast float %694, %655
  %699 = fadd fast float %695, %656
  %700 = fadd fast float %696, %657
  br label %729

; <label>:701                                     ; preds = %621
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %629, float %630, float %626, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = extractvalue %dx.types.ResRet.f32 %702, 3
  %707 = fcmp fast ogt float %627, 0.000000e+00
  br i1 %707, label %708, label %729, !dx.controlflow.hints !68

; <label>:708                                     ; preds = %701
  %709 = fadd fast float %626, 1.000000e+00
  %710 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %711 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %710, float %711, float %709, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = fsub fast float %713, %703
  %718 = fsub fast float %714, %704
  %719 = fsub fast float %715, %705
  %720 = fsub fast float %716, %706
  %721 = fmul fast float %717, %627
  %722 = fmul fast float %718, %627
  %723 = fmul fast float %719, %627
  %724 = fmul fast float %720, %627
  %725 = fadd fast float %721, %703
  %726 = fadd fast float %722, %704
  %727 = fadd fast float %723, %705
  %728 = fadd fast float %724, %706
  br label %729

; <label>:729                                     ; preds = %708, %701, %684, %653
  %730 = phi float [ %697, %684 ], [ %654, %653 ], [ %725, %708 ], [ %703, %701 ]
  %731 = phi float [ %698, %684 ], [ %655, %653 ], [ %726, %708 ], [ %704, %701 ]
  %732 = phi float [ %699, %684 ], [ %656, %653 ], [ %727, %708 ], [ %705, %701 ]
  %733 = phi float [ %700, %684 ], [ %657, %653 ], [ %728, %708 ], [ %706, %701 ]
  %734 = fadd fast float %730, -5.000000e-01
  %735 = fadd fast float %732, -5.000000e-01
  %736 = fmul fast float %734, 0xBFD5555560000000
  %737 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %735, float %736)  ; FMad(a,b,c)
  %738 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %731, float 0.000000e+00)  ; FMad(a,b,c)
  %739 = fadd fast float %738, %733
  %740 = fmul fast float %734, -7.500000e-01
  %741 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %735, float %740)  ; FMad(a,b,c)
  %742 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %731, float 0.000000e+00)  ; FMad(a,b,c)
  %743 = fadd fast float %742, %733
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %748 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %749 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %750 = extractvalue %dx.types.CBufRet.f32 %746, 3
  %751 = fsub fast float %747, %737
  %752 = fsub fast float %748, %739
  %753 = fsub fast float %749, %741
  %754 = fsub fast float %750, %743
  %755 = fmul fast float %751, %745
  %756 = fmul fast float %752, %745
  %757 = fmul fast float %753, %745
  %758 = fmul fast float %754, %745
  %759 = fadd fast float %755, %737
  %760 = fadd fast float %756, %739
  %761 = fadd fast float %757, %741
  %762 = fadd fast float %758, %743
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 536870911
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, %602
  %768 = fmul fast float %766, %603
  %769 = fptoui float %767 to i32
  %770 = fptoui float %768 to i32
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 31
  %774 = lshr i32 %769, %773
  %775 = lshr i32 %770, %773
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 31
  %779 = shl i32 1, %778
  %780 = call i32 @dx.op.binary.i32(i32 40, i32 %779, i32 4)  ; UMin(a,b)
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = extractvalue %dx.types.ResRet.i32 %781, 1
  %784 = icmp eq i32 %780, 0
  br i1 %784, label %826, label %785

; <label>:785                                     ; preds = %729
  br label %786

; <label>:786                                     ; preds = %814, %785
  %787 = phi i32 [ %817, %814 ], [ 0, %785 ]
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = lshr i32 %789, 16
  %791 = and i32 %790, 31
  %792 = shl i32 %775, %791
  %793 = add i32 %792, %774
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 31
  %797 = shl i32 %793, %796
  %798 = add i32 %797, %787
  %799 = shl i32 %798, 2
  %800 = add i32 %799, 32
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = icmp slt i32 %802, 0
  %804 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %787
  %805 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %787
  %806 = bitcast float* %804 to i32*
  %807 = bitcast float* %805 to i32*
  br i1 %803, label %808, label %814, !dx.controlflow.hints !69

; <label>:808                                     ; preds = %786
  %809 = and i32 %802, 1073741823
  %810 = add nuw nsw i32 %809, 20
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = extractvalue %dx.types.ResRet.i32 %811, 1
  br label %814

; <label>:814                                     ; preds = %808, %786
  %815 = phi i32 [ %812, %808 ], [ %782, %786 ]
  %816 = phi i32 [ %813, %808 ], [ %783, %786 ]
  store i32 %815, i32* %806, align 4
  store i32 %816, i32* %807, align 4
  %817 = add nuw i32 %787, 1
  %818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %819 = extractvalue %dx.types.CBufRet.i32 %818, 2
  %820 = icmp eq i32 %819, 0
  %821 = icmp ugt i32 %802, -1073741825
  %822 = and i1 %821, %820
  %823 = icmp ult i32 %817, %780
  %824 = and i1 %822, %823
  br i1 %824, label %786, label %825, !dx.controlflow.hints !70

; <label>:825                                     ; preds = %814
  br label %826

; <label>:826                                     ; preds = %825, %729
  %827 = phi i32 [ 0, %729 ], [ %817, %825 ]
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %830 = fptoui float %829 to i32
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %883, label %832

; <label>:832                                     ; preds = %826
  br label %833

; <label>:833                                     ; preds = %878, %832
  %834 = phi i32 [ %879, %878 ], [ %827, %832 ]
  %835 = phi i32 [ %880, %878 ], [ 0, %832 ]
  %836 = lshr i32 %835, 2
  %837 = and i32 %835, 3
  %838 = add nuw nsw i32 %836, 83
  %839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %838)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.i32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.i32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.i32 %839, 2
  %843 = extractvalue %dx.types.CBufRet.i32 %839, 3
  %844 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %840, i32* %844, align 4
  %845 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %841, i32* %845, align 4
  %846 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %842, i32* %846, align 4
  %847 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %843, i32* %847, align 4
  %848 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %837
  %849 = load i32, i32* %848, align 4, !tbaa !71
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = lshr i32 %851, 16
  %853 = and i32 %852, 31
  %854 = shl i32 %775, %853
  %855 = add i32 %854, %774
  %856 = shl i32 %855, 2
  %857 = add i32 %856, %849
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %878, label %861, !dx.controlflow.hints !75

; <label>:861                                     ; preds = %833
  %862 = icmp slt i32 %859, 0
  %863 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %834
  %864 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %834
  %865 = bitcast float* %863 to i32*
  %866 = bitcast float* %864 to i32*
  br i1 %862, label %867, label %874, !dx.controlflow.hints !76

; <label>:867                                     ; preds = %861
  %868 = and i32 %859, 1073741823
  %869 = add i32 %849, 20
  %870 = add i32 %869, %868
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = extractvalue %dx.types.ResRet.i32 %871, 1
  br label %874

; <label>:874                                     ; preds = %867, %861
  %875 = phi i32 [ %872, %867 ], [ %782, %861 ]
  %876 = phi i32 [ %873, %867 ], [ %783, %861 ]
  store i32 %875, i32* %865, align 4
  store i32 %876, i32* %866, align 4
  %877 = add i32 %834, 1
  br label %878

; <label>:878                                     ; preds = %874, %833
  %879 = phi i32 [ %834, %833 ], [ %877, %874 ]
  %880 = add nuw i32 %835, 1
  %881 = icmp eq i32 %880, %830
  br i1 %881, label %882, label %833

; <label>:882                                     ; preds = %878
  br label %883

; <label>:883                                     ; preds = %882, %826
  %884 = phi i32 [ %827, %826 ], [ %879, %882 ]
  %885 = icmp eq i32 %884, 1
  %886 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  %887 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  br i1 %885, label %888, label %891, !dx.controlflow.hints !77

; <label>:888                                     ; preds = %883
  %889 = load float, float* %886, align 4
  %890 = load float, float* %887, align 4
  br label %918

; <label>:891                                     ; preds = %883
  %892 = load float, float* %886, align 4
  %893 = load float, float* %887, align 4
  %894 = fdiv fast float 1.000000e+00, %893
  %895 = fsub fast float %892, %894
  %896 = icmp ugt i32 %884, 1
  br i1 %896, label %897, label %913

; <label>:897                                     ; preds = %891
  br label %898

; <label>:898                                     ; preds = %898, %897
  %899 = phi float [ %908, %898 ], [ %895, %897 ]
  %900 = phi float [ %909, %898 ], [ %892, %897 ]
  %901 = phi i32 [ %910, %898 ], [ 1, %897 ]
  %902 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %901
  %903 = load float, float* %902, align 4
  %904 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %901
  %905 = load float, float* %904, align 4
  %906 = fdiv fast float 1.000000e+00, %905
  %907 = fsub fast float %903, %906
  %908 = call float @dx.op.binary.f32(i32 36, float %899, float %907)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %900, float %903)  ; FMax(a,b)
  %910 = add nuw i32 %901, 1
  %911 = icmp eq i32 %910, %884
  br i1 %911, label %912, label %898

; <label>:912                                     ; preds = %898
  br label %913

; <label>:913                                     ; preds = %912, %891
  %914 = phi float [ %895, %891 ], [ %908, %912 ]
  %915 = phi float [ %892, %891 ], [ %909, %912 ]
  %916 = fsub fast float %915, %914
  %917 = fdiv fast float 1.000000e+00, %916
  br label %918

; <label>:918                                     ; preds = %913, %888
  %919 = phi float [ %889, %888 ], [ %915, %913 ]
  %920 = phi float [ %890, %888 ], [ %917, %913 ]
  %921 = fadd fast float %349, %919
  %922 = fmul fast float %921, %920
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  %924 = fmul fast float %923, 2.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %759, %759
  %927 = fsub fast float %760, %926
  %928 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %927)  ; FMax(a,b)
  %929 = fdiv fast float 1.000000e+00, %928
  %930 = fmul fast float %760, %759
  %931 = fsub fast float %761, %930
  %932 = fsub fast float %925, %759
  %933 = fmul fast float %925, %925
  %934 = fsub fast float %933, %760
  %935 = fmul fast float %929, %931
  %936 = fmul fast float %935, %932
  %937 = fsub fast float %934, %936
  %938 = fmul fast float %760, %760
  %939 = fsub fast float %762, %938
  %940 = fmul fast float %931, %931
  %941 = fmul fast float %940, %929
  %942 = fsub fast float %939, %941
  %943 = fdiv fast float %937, %942
  %944 = fmul fast float %943, %931
  %945 = fsub fast float %932, %944
  %946 = fmul fast float %945, %929
  %947 = fmul fast float %946, %759
  %948 = fsub fast float 1.000000e+00, %947
  %949 = fmul fast float %943, %760
  %950 = fsub fast float %948, %949
  %951 = fmul fast float %946, %946
  %952 = fmul fast float %943, 4.000000e+00
  %953 = fmul fast float %952, %950
  %954 = fsub fast float %951, %953
  %955 = call float @dx.op.unary.f32(i32 24, float %954)  ; Sqrt(value)
  %956 = fcmp fast oge float %946, 0.000000e+00
  %957 = fsub fast float -0.000000e+00, %955
  %958 = select i1 %956, float %957, float %955
  %959 = fsub fast float %958, %946
  %960 = fdiv fast float %959, %943
  %961 = fdiv fast float %950, %959
  %962 = fmul fast float %960, 5.000000e-01
  %963 = fmul fast float %961, 2.000000e+00
  %964 = select i1 %956, float %962, float %963
  %965 = select i1 %956, float %963, float %962
  %966 = call float @dx.op.binary.f32(i32 35, float %964, float %965)  ; FMax(a,b)
  %967 = call float @dx.op.binary.f32(i32 36, float %964, float %965)  ; FMin(a,b)
  %968 = fcmp fast ogt float %925, %966
  %969 = fsub fast float %925, %967
  %970 = fsub fast float %925, %966
  %971 = fsub fast float %966, %967
  %972 = select i1 %968, float %970, float %971
  %973 = fmul float %969, %972
  %974 = select i1 %968, float %967, float %925
  %975 = fcmp fast ogt float %925, %967
  %976 = fmul fast float %974, %966
  %977 = fadd fast float %974, %966
  %978 = fmul fast float %977, %759
  %979 = fadd fast float %976, %760
  %980 = fsub fast float %979, %978
  %981 = fdiv fast float %980, %973
  %982 = select i1 %975, float %981, float 0.000000e+00
  %983 = fsub fast float 1.000000e+00, %982
  %984 = select i1 %968, float %983, float %982
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = extractvalue %dx.types.CBufRet.f32 %744, 3
  %987 = fmul fast float %986, %985
  %988 = fsub fast float 1.000000e+00, %987
  br label %2697

; <label>:989                                     ; preds = %317
  %990 = icmp eq i32 %233, 11
  br i1 %990, label %2697, label %991, !dx.controlflow.hints !78

; <label>:991                                     ; preds = %989
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %996 = fmul fast float %995, %200
  %997 = fmul fast float %995, %204
  %998 = fadd fast float %996, %993
  %999 = fadd fast float %997, %994
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1004 = fmul fast float %1003, %200
  %1005 = fmul fast float %1003, %204
  %1006 = fadd fast float %1004, %1001
  %1007 = fadd fast float %1005, %1002
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1010 = fsub fast float %1009, %208
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = fmul fast float %1010, %1011
  %1013 = fsub fast float 1.000000e+00, %1012
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  br i1 %74, label %1075, label %1015, !dx.controlflow.hints !79

; <label>:1015                                    ; preds = %991
  %1016 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1019 = fadd fast float %1018, %1016
  %1020 = fcmp fast ogt float %1019, 0.000000e+00
  br i1 %1020, label %1021, label %1045, !dx.controlflow.hints !80

; <label>:1021                                    ; preds = %1015
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = fsub fast float %1006, %1023
  %1026 = fsub fast float %1007, %1024
  %1027 = fcmp fast olt float %1025, 0.000000e+00
  %1028 = fcmp fast olt float %1026, 0.000000e+00
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1034 = select i1 %1027, float %1030, float %1032
  %1035 = select i1 %1028, float %1031, float %1033
  %1036 = fmul fast float %1034, %1025
  %1037 = fmul fast float %1035, %1026
  %1038 = call float @dx.op.unary.f32(i32 6, float %1036)  ; FAbs(value)
  %1039 = call float @dx.op.unary.f32(i32 6, float %1037)  ; FAbs(value)
  %1040 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1041 = call float @dx.op.binary.f32(i32 35, float %1038, float %1039)  ; FMax(a,b)
  %1042 = fsub fast float %1040, %1041
  %1043 = call float @dx.op.unary.f32(i32 7, float %1042)  ; Saturate(value)
  %1044 = fmul fast float %1043, %1014
  br label %1045

; <label>:1045                                    ; preds = %1021, %1015
  %1046 = phi float [ %1044, %1021 ], [ 0.000000e+00, %1015 ]
  %1047 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %1048 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1049 = fadd fast float %1048, %1047
  %1050 = fcmp fast ogt float %1049, 0.000000e+00
  br i1 %1050, label %1051, label %1075, !dx.controlflow.hints !81

; <label>:1051                                    ; preds = %1045
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = fsub fast float %998, %1053
  %1056 = fsub fast float %999, %1054
  %1057 = fcmp fast olt float %1055, 0.000000e+00
  %1058 = fcmp fast olt float %1056, 0.000000e+00
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.CBufRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1064 = select i1 %1057, float %1060, float %1062
  %1065 = select i1 %1058, float %1061, float %1063
  %1066 = fmul fast float %1064, %1055
  %1067 = fmul fast float %1065, %1056
  %1068 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1069 = call float @dx.op.unary.f32(i32 6, float %1067)  ; FAbs(value)
  %1070 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1071 = call float @dx.op.binary.f32(i32 35, float %1068, float %1069)  ; FMax(a,b)
  %1072 = fsub fast float %1070, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fmul fast float %1073, %1014
  br label %1075

; <label>:1075                                    ; preds = %1051, %1045, %991
  %1076 = phi float [ 0.000000e+00, %991 ], [ %1074, %1051 ], [ 0.000000e+00, %1045 ]
  %1077 = phi float [ 0.000000e+00, %991 ], [ %1046, %1051 ], [ %1046, %1045 ]
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = fmul fast float %1079, %81
  %1082 = fadd fast float %1081, %1080
  %1083 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1087 = fsub fast float %200, %1085
  %1088 = fsub fast float %204, %1086
  %1089 = fcmp fast olt float %1087, 0.000000e+00
  %1090 = fcmp fast olt float %1088, 0.000000e+00
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.CBufRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.CBufRet.f32 %1091, 2
  %1095 = extractvalue %dx.types.CBufRet.f32 %1091, 3
  %1096 = select i1 %1089, float %1092, float %1094
  %1097 = select i1 %1090, float %1093, float %1095
  %1098 = fmul fast float %1096, %1087
  %1099 = fmul fast float %1097, %1088
  %1100 = call float @dx.op.unary.f32(i32 6, float %1098)  ; FAbs(value)
  %1101 = call float @dx.op.unary.f32(i32 6, float %1099)  ; FAbs(value)
  %1102 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1103 = call float @dx.op.binary.f32(i32 35, float %1100, float %1101)  ; FMax(a,b)
  %1104 = fsub fast float %1102, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = call float @dx.op.binary.f32(i32 36, float %1105, float %1083)  ; FMin(a,b)
  %1107 = fmul fast float %1106, %1014
  %1108 = fsub fast float %1076, %1107
  %1109 = fsub fast float %1077, %1076
  %1110 = fsub fast float %1109, %1107
  %1111 = call float @dx.op.binary.f32(i32 35, float %1076, float %1077)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1107, float %1111)  ; FMax(a,b)
  %1113 = fcmp fast olt float %1112, 1.000000e+00
  %1114 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %1115 = fcmp fast une float %1114, 0.000000e+00
  %1116 = and i1 %1113, %1115
  br i1 %1116, label %1117, label %1784, !dx.controlflow.hints !82

; <label>:1117                                    ; preds = %1075
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.CBufRet.f32 %1118, 3
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1132 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1133 = fmul fast float %1119, %135
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1120, float %1133)  ; FMad(a,b,c)
  %1135 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1121, float %1134)  ; FMad(a,b,c)
  %1136 = fadd fast float %1135, %1122
  %1137 = fmul fast float %1124, %135
  %1138 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1125, float %1137)  ; FMad(a,b,c)
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1126, float %1138)  ; FMad(a,b,c)
  %1140 = fadd fast float %1139, %1127
  %1141 = fmul fast float %1129, %135
  %1142 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1130, float %1141)  ; FMad(a,b,c)
  %1143 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1131, float %1142)  ; FMad(a,b,c)
  %1144 = fadd fast float %1143, %1132
  %1145 = fcmp fast oge float %1136, 1.000000e+00
  %1146 = fcmp fast oge float %1140, 1.000000e+00
  %1147 = or i1 %1145, %1146
  %1148 = fcmp fast olt float %1136, 0.000000e+00
  %1149 = fcmp fast olt float %1140, 0.000000e+00
  %1150 = or i1 %1148, %1149
  %1151 = or i1 %1147, %1150
  br i1 %1151, label %1784, label %1152, !dx.controlflow.hints !58

; <label>:1152                                    ; preds = %1117
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1156 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.i32 %1159, 2
  %1161 = uitofp i32 %1160 to float
  %1162 = extractvalue %dx.types.CBufRet.i32 %1159, 3
  %1163 = uitofp i32 %1162 to float
  %1164 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1165 = fmul fast float %1164, 2.000000e+00
  %1166 = fsub fast float %1136, %1154
  %1167 = fsub fast float %1140, %1155
  %1168 = fmul fast float %1165, %1166
  %1169 = fmul fast float %1165, %1167
  %1170 = fdiv fast float 1.000000e+00, %170
  %1171 = fmul fast float %1169, %1170
  %1172 = call float @dx.op.unary.f32(i32 6, float %1171)  ; FAbs(value)
  %1173 = fmul fast float %1156, %137
  %1174 = fmul fast float %1173, %1165
  %1175 = call float @dx.op.unary.f32(i32 6, float %1174)  ; FAbs(value)
  %1176 = call float @dx.op.unary.f32(i32 6, float %1168)  ; FAbs(value)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1175, float %1172)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 35, float %1176, float %1177)  ; FMax(a,b)
  %1179 = fmul fast float %1178, 2.000000e+00
  %1180 = call float @dx.op.unary.f32(i32 23, float %1179)  ; Log(value)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1180, float %1161)  ; FMax(a,b)
  %1182 = call float @dx.op.unary.f32(i32 22, float %1181)  ; Frc(value)
  %1183 = fadd fast float %1182, 0xBFEA666660000000
  %1184 = fmul fast float %1183, 8.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = call float @dx.op.unary.f32(i32 27, float %1181)  ; Round_ni(value)
  %1187 = fadd fast float %1186, %1185
  %1188 = call float @dx.op.binary.f32(i32 36, float %1187, float %1163)  ; FMin(a,b)
  %1189 = call float @dx.op.unary.f32(i32 27, float %1188)  ; Round_ni(value)
  %1190 = fsub fast float -0.000000e+00, %1189
  %1191 = call float @dx.op.unary.f32(i32 21, float %1190)  ; Exp(value)
  %1192 = fmul fast float %1191, %1165
  %1193 = fmul fast float %1192, %1136
  %1194 = fmul fast float %1192, %1140
  %1195 = fmul fast float %1193, 5.000000e-01
  %1196 = fmul fast float %1194, 5.000000e-01
  %1197 = fadd fast float %1195, 5.000000e-01
  %1198 = fadd fast float %1196, 5.000000e-01
  %1199 = fmul fast float %1193, 2.500000e-01
  %1200 = fmul fast float %1194, 2.500000e-01
  %1201 = fadd fast float %1199, 5.000000e-01
  %1202 = fadd fast float %1200, 5.000000e-01
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 536870911
  %1206 = lshr i32 %1205, 9
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1207, %1136
  %1209 = fmul fast float %1207, %1140
  %1210 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1211 = call float @dx.op.unary.f32(i32 22, float %1209)  ; Frc(value)
  %1212 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1213 = fcmp fast une float %1212, 0.000000e+00
  br i1 %1213, label %1214, label %1312, !dx.controlflow.hints !59

; <label>:1214                                    ; preds = %1152
  %1215 = call float @dx.op.unary.f32(i32 21, float %1186)  ; Exp(value)
  %1216 = fmul fast float %1215, 1.953125e-03
  %1217 = fcmp fast olt float %1210, %1216
  %1218 = fcmp fast olt float %1211, %1216
  %1219 = or i1 %1217, %1218
  %1220 = fsub fast float 1.000000e+00, %1216
  %1221 = fcmp fast ogt float %1210, %1220
  %1222 = fcmp fast ogt float %1211, %1220
  %1223 = or i1 %1221, %1222
  %1224 = or i1 %1219, %1223
  br i1 %1224, label %1225, label %1391, !dx.controlflow.hints !60

; <label>:1225                                    ; preds = %1214
  %1226 = fmul fast float %1158, 5.000000e-01
  %1227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.i32 %1227, 0
  %1229 = fmul fast float %1140, 3.530000e+02
  %1230 = uitofp i32 %1205 to float
  %1231 = fmul fast float %1229, %1230
  %1232 = fmul fast float %1136, 6.130000e+02
  %1233 = fadd fast float %1231, %1232
  %1234 = fptoui float %1233 to i32
  %1235 = add i32 %1228, %1234
  %1236 = mul i32 %1235, -63
  %1237 = lshr i32 %1236, 17
  %1238 = xor i32 %1237, %1236
  %1239 = mul i32 %1238, -511
  %1240 = mul i32 %1238, -8176
  %1241 = xor i32 %1239, %1240
  %1242 = mul i32 %1241, -7
  %1243 = mul i32 %1241, -7168
  %1244 = xor i32 %1242, %1243
  %1245 = lshr i32 %1244, 15
  %1246 = xor i32 %1245, %1242
  %1247 = and i32 %1246, 15
  %1248 = mul i32 %1247, 2
  %1249 = add i32 0, %1248
  %1250 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1249
  %1251 = load float, float* %1250, align 4
  %1252 = mul i32 %1247, 2
  %1253 = add i32 1, %1252
  %1254 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1253
  %1255 = load float, float* %1254, align 4
  %1256 = fmul fast float %1140, 2.770000e+02
  %1257 = fmul fast float %1256, %1230
  %1258 = fmul fast float %1136, 5.990000e+02
  %1259 = fadd fast float %1257, %1258
  %1260 = fptoui float %1259 to i32
  %1261 = mul i32 %1260, -63
  %1262 = lshr i32 %1261, 17
  %1263 = xor i32 %1262, %1261
  %1264 = mul i32 %1263, -511
  %1265 = mul i32 %1263, -8176
  %1266 = xor i32 %1264, %1265
  %1267 = mul i32 %1266, -7
  %1268 = mul i32 %1266, -7168
  %1269 = xor i32 %1267, %1268
  %1270 = lshr i32 %1269, 15
  %1271 = xor i32 %1270, %1267
  %1272 = and i32 %1271, 63
  %1273 = mul i32 %1272, 2
  %1274 = add i32 0, %1273
  %1275 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1274
  %1276 = load float, float* %1275, align 4
  %1277 = mul i32 %1272, 2
  %1278 = add i32 1, %1277
  %1279 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1278
  %1280 = load float, float* %1279, align 4
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1251, float %1255, float %1276, float %1280)  ; Dot2(ax,ay,bx,by)
  %1282 = fsub fast float -0.000000e+00, %1276
  %1283 = call float @dx.op.dot2.f32(i32 54, float %1251, float %1255, float %1282, float %1280)  ; Dot2(ax,ay,bx,by)
  %1284 = fmul fast float %1281, %1226
  %1285 = fmul fast float %1283, %1226
  %1286 = fdiv fast float 2.000000e+00, %1192
  %1287 = fmul fast float %1215, 9.765625e-04
  %1288 = fcmp fast olt float %1210, %1287
  %1289 = fcmp fast olt float %1211, %1287
  %1290 = or i1 %1288, %1289
  %1291 = fsub fast float 1.000000e+00, %1287
  %1292 = fcmp fast ogt float %1210, %1291
  %1293 = fcmp fast ogt float %1211, %1291
  %1294 = or i1 %1292, %1293
  %1295 = or i1 %1290, %1294
  %1296 = fmul fast float %1284, 2.000000e+00
  br i1 %1295, label %1297, label %1301, !dx.controlflow.hints !61

; <label>:1297                                    ; preds = %1225
  %1298 = fmul fast float %1285, 2.000000e+00
  %1299 = fadd fast float %1296, %1197
  %1300 = fadd fast float %1298, %1198
  br label %1301

; <label>:1301                                    ; preds = %1297, %1225
  %1302 = phi float [ %1299, %1297 ], [ %1197, %1225 ]
  %1303 = phi float [ %1300, %1297 ], [ %1198, %1225 ]
  %1304 = phi i32 [ 3, %1297 ], [ 2, %1225 ]
  %1305 = fadd fast float %1284, %1201
  %1306 = fadd fast float %1285, %1202
  %1307 = fmul fast float %1296, %1286
  %1308 = fmul fast float %1286, 2.000000e+00
  %1309 = fmul fast float %1308, %1285
  %1310 = fadd fast float %1307, %1136
  %1311 = fadd fast float %1309, %1140
  br label %1391

; <label>:1312                                    ; preds = %1152
  %1313 = call float @dx.op.unary.f32(i32 21, float %1189)  ; Exp(value)
  %1314 = fmul fast float %1313, 9.765625e-04
  %1315 = fcmp fast olt float %1210, %1314
  %1316 = fcmp fast olt float %1211, %1314
  %1317 = or i1 %1315, %1316
  %1318 = fsub fast float 1.000000e+00, %1314
  %1319 = fcmp fast ogt float %1210, %1318
  %1320 = fcmp fast ogt float %1211, %1318
  %1321 = or i1 %1319, %1320
  %1322 = or i1 %1317, %1321
  br i1 %1322, label %1323, label %1391, !dx.controlflow.hints !62

; <label>:1323                                    ; preds = %1312
  %1324 = fmul fast float %1158, 5.000000e-01
  %1325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.i32 %1325, 0
  %1327 = fmul fast float %1140, 3.530000e+02
  %1328 = uitofp i32 %1205 to float
  %1329 = fmul fast float %1327, %1328
  %1330 = fmul fast float %1136, 6.130000e+02
  %1331 = fadd fast float %1329, %1330
  %1332 = fptoui float %1331 to i32
  %1333 = add i32 %1326, %1332
  %1334 = mul i32 %1333, -63
  %1335 = lshr i32 %1334, 17
  %1336 = xor i32 %1335, %1334
  %1337 = mul i32 %1336, -511
  %1338 = mul i32 %1336, -8176
  %1339 = xor i32 %1337, %1338
  %1340 = mul i32 %1339, -7
  %1341 = mul i32 %1339, -7168
  %1342 = xor i32 %1340, %1341
  %1343 = lshr i32 %1342, 15
  %1344 = xor i32 %1343, %1340
  %1345 = and i32 %1344, 15
  %1346 = mul i32 %1345, 2
  %1347 = add i32 0, %1346
  %1348 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1347
  %1349 = load float, float* %1348, align 4
  %1350 = mul i32 %1345, 2
  %1351 = add i32 1, %1350
  %1352 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1351
  %1353 = load float, float* %1352, align 4
  %1354 = fmul fast float %1140, 2.770000e+02
  %1355 = fmul fast float %1354, %1328
  %1356 = fmul fast float %1136, 5.990000e+02
  %1357 = fadd fast float %1355, %1356
  %1358 = fptoui float %1357 to i32
  %1359 = mul i32 %1358, -63
  %1360 = lshr i32 %1359, 17
  %1361 = xor i32 %1360, %1359
  %1362 = mul i32 %1361, -511
  %1363 = mul i32 %1361, -8176
  %1364 = xor i32 %1362, %1363
  %1365 = mul i32 %1364, -7
  %1366 = mul i32 %1364, -7168
  %1367 = xor i32 %1365, %1366
  %1368 = lshr i32 %1367, 15
  %1369 = xor i32 %1368, %1365
  %1370 = and i32 %1369, 63
  %1371 = mul i32 %1370, 2
  %1372 = add i32 0, %1371
  %1373 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1372
  %1374 = load float, float* %1373, align 4
  %1375 = mul i32 %1370, 2
  %1376 = add i32 1, %1375
  %1377 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1376
  %1378 = load float, float* %1377, align 4
  %1379 = call float @dx.op.dot2.f32(i32 54, float %1349, float %1353, float %1374, float %1378)  ; Dot2(ax,ay,bx,by)
  %1380 = fsub fast float -0.000000e+00, %1374
  %1381 = call float @dx.op.dot2.f32(i32 54, float %1349, float %1353, float %1380, float %1378)  ; Dot2(ax,ay,bx,by)
  %1382 = fmul fast float %1379, %1324
  %1383 = fmul fast float %1381, %1324
  %1384 = fadd fast float %1382, %1197
  %1385 = fadd fast float %1383, %1198
  %1386 = fdiv fast float 2.000000e+00, %1192
  %1387 = fmul fast float %1386, %1382
  %1388 = fmul fast float %1383, %1386
  %1389 = fadd fast float %1387, %1136
  %1390 = fadd fast float %1388, %1140
  br label %1391

; <label>:1391                                    ; preds = %1323, %1312, %1301, %1214
  %1392 = phi float [ %1305, %1301 ], [ %1201, %1214 ], [ %1201, %1323 ], [ %1201, %1312 ]
  %1393 = phi float [ %1306, %1301 ], [ %1202, %1214 ], [ %1202, %1323 ], [ %1202, %1312 ]
  %1394 = phi float [ %1302, %1301 ], [ %1197, %1214 ], [ %1384, %1323 ], [ %1197, %1312 ]
  %1395 = phi float [ %1303, %1301 ], [ %1198, %1214 ], [ %1385, %1323 ], [ %1198, %1312 ]
  %1396 = phi i32 [ %1304, %1301 ], [ 0, %1214 ], [ 1, %1323 ], [ 0, %1312 ]
  %1397 = phi float [ %1310, %1301 ], [ %1136, %1214 ], [ %1389, %1323 ], [ %1136, %1312 ]
  %1398 = phi float [ %1311, %1301 ], [ %1140, %1214 ], [ %1390, %1323 ], [ %1140, %1312 ]
  %1399 = fsub fast float %1163, %1161
  %1400 = fptoui float %1399 to i32
  %1401 = add i32 %1400, 320
  %1402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %1401)  ; CBufferLoadLegacy(handle,regIndex)
  %1403 = extractvalue %dx.types.CBufRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.CBufRet.f32 %1402, 1
  %1405 = fcmp fast une float %1188, %1163
  %1406 = fsub fast float %1397, %1403
  %1407 = fsub fast float %1398, %1404
  %1408 = call float @dx.op.unary.f32(i32 6, float %1406)  ; FAbs(value)
  %1409 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1410 = fmul fast float %1408, %1192
  %1411 = fmul fast float %1409, %1192
  %1412 = fcmp fast olt float %1410, 1.000000e+00
  %1413 = fcmp fast olt float %1411, 1.000000e+00
  %1414 = and i1 %1412, %1413
  %1415 = or i1 %1405, %1414
  br i1 %1415, label %1416, label %1784, !dx.controlflow.hints !63

; <label>:1416                                    ; preds = %1391
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 2
  %1419 = sitofp i32 %1418 to float
  %1420 = fsub fast float %1188, %1419
  %1421 = call float @dx.op.unary.f32(i32 27, float %1420)  ; Round_ni(value)
  %1422 = call float @dx.op.unary.f32(i32 22, float %1188)  ; Frc(value)
  %1423 = icmp eq i32 %1396, 0
  %1424 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1395)  ; Frc(value)
  br i1 %1423, label %1496, label %1426, !dx.controlflow.hints !64

; <label>:1426                                    ; preds = %1416
  %1427 = and i32 %1396, 1
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1442, label %1429, !dx.controlflow.hints !65

; <label>:1429                                    ; preds = %1426
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1424, %1431
  %1433 = fmul fast float %1425, %1431
  %1434 = fptoui float %1432 to i32
  %1435 = fptoui float %1433 to i32
  %1436 = fptoui float %1421 to i32
  %1437 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1434, i32 %1435, i32 %1436, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  br label %1448

; <label>:1442                                    ; preds = %1426
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %1424, float %1425, float %1421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.ResRet.f32 %1443, 3
  br label %1448

; <label>:1448                                    ; preds = %1442, %1429
  %1449 = phi float [ %1438, %1429 ], [ %1444, %1442 ]
  %1450 = phi float [ %1439, %1429 ], [ %1445, %1442 ]
  %1451 = phi float [ %1440, %1429 ], [ %1446, %1442 ]
  %1452 = phi float [ %1441, %1429 ], [ %1447, %1442 ]
  %1453 = fcmp fast ogt float %1422, 0.000000e+00
  br i1 %1453, label %1454, label %1524, !dx.controlflow.hints !66

; <label>:1454                                    ; preds = %1448
  %1455 = and i32 %1396, 2
  %1456 = icmp eq i32 %1455, 0
  %1457 = fadd fast float %1421, 1.000000e+00
  %1458 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1459 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  br i1 %1456, label %1473, label %1460, !dx.controlflow.hints !67

; <label>:1460                                    ; preds = %1454
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1463 = fmul fast float %1458, %1462
  %1464 = fmul fast float %1459, %1462
  %1465 = fptoui float %1463 to i32
  %1466 = fptoui float %1464 to i32
  %1467 = fptoui float %1457 to i32
  %1468 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1465, i32 %1466, i32 %1467, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.ResRet.f32 %1468, 3
  br label %1479

; <label>:1473                                    ; preds = %1454
  %1474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %1458, float %1459, float %1457, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = extractvalue %dx.types.ResRet.f32 %1474, 3
  br label %1479

; <label>:1479                                    ; preds = %1473, %1460
  %1480 = phi float [ %1469, %1460 ], [ %1475, %1473 ]
  %1481 = phi float [ %1470, %1460 ], [ %1476, %1473 ]
  %1482 = phi float [ %1471, %1460 ], [ %1477, %1473 ]
  %1483 = phi float [ %1472, %1460 ], [ %1478, %1473 ]
  %1484 = fsub fast float %1480, %1449
  %1485 = fsub fast float %1481, %1450
  %1486 = fsub fast float %1482, %1451
  %1487 = fsub fast float %1483, %1452
  %1488 = fmul fast float %1484, %1422
  %1489 = fmul fast float %1485, %1422
  %1490 = fmul fast float %1486, %1422
  %1491 = fmul fast float %1487, %1422
  %1492 = fadd fast float %1488, %1449
  %1493 = fadd fast float %1489, %1450
  %1494 = fadd fast float %1490, %1451
  %1495 = fadd fast float %1491, %1452
  br label %1524

; <label>:1496                                    ; preds = %1416
  %1497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %1424, float %1425, float %1421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = extractvalue %dx.types.ResRet.f32 %1497, 3
  %1502 = fcmp fast ogt float %1422, 0.000000e+00
  br i1 %1502, label %1503, label %1524, !dx.controlflow.hints !68

; <label>:1503                                    ; preds = %1496
  %1504 = fadd fast float %1421, 1.000000e+00
  %1505 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1506 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %1505, float %1506, float %1504, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.ResRet.f32 %1507, 3
  %1512 = fsub fast float %1508, %1498
  %1513 = fsub fast float %1509, %1499
  %1514 = fsub fast float %1510, %1500
  %1515 = fsub fast float %1511, %1501
  %1516 = fmul fast float %1512, %1422
  %1517 = fmul fast float %1513, %1422
  %1518 = fmul fast float %1514, %1422
  %1519 = fmul fast float %1515, %1422
  %1520 = fadd fast float %1516, %1498
  %1521 = fadd fast float %1517, %1499
  %1522 = fadd fast float %1518, %1500
  %1523 = fadd fast float %1519, %1501
  br label %1524

; <label>:1524                                    ; preds = %1503, %1496, %1479, %1448
  %1525 = phi float [ %1492, %1479 ], [ %1449, %1448 ], [ %1520, %1503 ], [ %1498, %1496 ]
  %1526 = phi float [ %1493, %1479 ], [ %1450, %1448 ], [ %1521, %1503 ], [ %1499, %1496 ]
  %1527 = phi float [ %1494, %1479 ], [ %1451, %1448 ], [ %1522, %1503 ], [ %1500, %1496 ]
  %1528 = phi float [ %1495, %1479 ], [ %1452, %1448 ], [ %1523, %1503 ], [ %1501, %1496 ]
  %1529 = fadd fast float %1525, -5.000000e-01
  %1530 = fadd fast float %1527, -5.000000e-01
  %1531 = fmul fast float %1529, 0xBFD5555560000000
  %1532 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1530, float %1531)  ; FMad(a,b,c)
  %1533 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1526, float 0.000000e+00)  ; FMad(a,b,c)
  %1534 = fadd fast float %1533, %1528
  %1535 = fmul fast float %1529, -7.500000e-01
  %1536 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1530, float %1535)  ; FMad(a,b,c)
  %1537 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1526, float 0.000000e+00)  ; FMad(a,b,c)
  %1538 = fadd fast float %1537, %1528
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.CBufRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.CBufRet.f32 %1541, 2
  %1545 = extractvalue %dx.types.CBufRet.f32 %1541, 3
  %1546 = fsub fast float %1542, %1532
  %1547 = fsub fast float %1543, %1534
  %1548 = fsub fast float %1544, %1536
  %1549 = fsub fast float %1545, %1538
  %1550 = fmul fast float %1546, %1540
  %1551 = fmul fast float %1547, %1540
  %1552 = fmul fast float %1548, %1540
  %1553 = fmul fast float %1549, %1540
  %1554 = fadd fast float %1550, %1532
  %1555 = fadd fast float %1551, %1534
  %1556 = fadd fast float %1552, %1536
  %1557 = fadd fast float %1553, %1538
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 536870911
  %1561 = uitofp i32 %1560 to float
  %1562 = fmul fast float %1561, %1397
  %1563 = fmul fast float %1561, %1398
  %1564 = fptoui float %1562 to i32
  %1565 = fptoui float %1563 to i32
  %1566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.i32 %1566, 0
  %1568 = and i32 %1567, 31
  %1569 = lshr i32 %1564, %1568
  %1570 = lshr i32 %1565, %1568
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 31
  %1574 = shl i32 1, %1573
  %1575 = call i32 @dx.op.binary.i32(i32 40, i32 %1574, i32 4)  ; UMin(a,b)
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = extractvalue %dx.types.ResRet.i32 %1576, 1
  %1579 = icmp eq i32 %1575, 0
  br i1 %1579, label %1621, label %1580

; <label>:1580                                    ; preds = %1524
  br label %1581

; <label>:1581                                    ; preds = %1609, %1580
  %1582 = phi i32 [ %1612, %1609 ], [ 0, %1580 ]
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 16
  %1586 = and i32 %1585, 31
  %1587 = shl i32 %1570, %1586
  %1588 = add i32 %1587, %1569
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 31
  %1592 = shl i32 %1588, %1591
  %1593 = add i32 %1592, %1582
  %1594 = shl i32 %1593, 2
  %1595 = add i32 %1594, 32
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = icmp slt i32 %1597, 0
  %1599 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1582
  %1600 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1582
  %1601 = bitcast float* %1599 to i32*
  %1602 = bitcast float* %1600 to i32*
  br i1 %1598, label %1603, label %1609, !dx.controlflow.hints !69

; <label>:1603                                    ; preds = %1581
  %1604 = and i32 %1597, 1073741823
  %1605 = add nuw nsw i32 %1604, 20
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = extractvalue %dx.types.ResRet.i32 %1606, 1
  br label %1609

; <label>:1609                                    ; preds = %1603, %1581
  %1610 = phi i32 [ %1607, %1603 ], [ %1577, %1581 ]
  %1611 = phi i32 [ %1608, %1603 ], [ %1578, %1581 ]
  store i32 %1610, i32* %1601, align 4
  store i32 %1611, i32* %1602, align 4
  %1612 = add nuw i32 %1582, 1
  %1613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.i32 %1613, 2
  %1615 = icmp eq i32 %1614, 0
  %1616 = icmp ugt i32 %1597, -1073741825
  %1617 = and i1 %1616, %1615
  %1618 = icmp ult i32 %1612, %1575
  %1619 = and i1 %1617, %1618
  br i1 %1619, label %1581, label %1620, !dx.controlflow.hints !70

; <label>:1620                                    ; preds = %1609
  br label %1621

; <label>:1621                                    ; preds = %1620, %1524
  %1622 = phi i32 [ 0, %1524 ], [ %1612, %1620 ]
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1625 = fptoui float %1624 to i32
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1678, label %1627

; <label>:1627                                    ; preds = %1621
  br label %1628

; <label>:1628                                    ; preds = %1673, %1627
  %1629 = phi i32 [ %1674, %1673 ], [ %1622, %1627 ]
  %1630 = phi i32 [ %1675, %1673 ], [ 0, %1627 ]
  %1631 = lshr i32 %1630, 2
  %1632 = and i32 %1630, 3
  %1633 = add nuw nsw i32 %1631, 83
  %1634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %1633)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.i32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.i32 %1634, 1
  %1637 = extractvalue %dx.types.CBufRet.i32 %1634, 2
  %1638 = extractvalue %dx.types.CBufRet.i32 %1634, 3
  %1639 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %1635, i32* %1639, align 4
  %1640 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %1636, i32* %1640, align 4
  %1641 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %1637, i32* %1641, align 4
  %1642 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %1638, i32* %1642, align 4
  %1643 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %1632
  %1644 = load i32, i32* %1643, align 4, !tbaa !71
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = lshr i32 %1646, 16
  %1648 = and i32 %1647, 31
  %1649 = shl i32 %1570, %1648
  %1650 = add i32 %1649, %1569
  %1651 = shl i32 %1650, 2
  %1652 = add i32 %1651, %1644
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1673, label %1656, !dx.controlflow.hints !75

; <label>:1656                                    ; preds = %1628
  %1657 = icmp slt i32 %1654, 0
  %1658 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1629
  %1659 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1629
  %1660 = bitcast float* %1658 to i32*
  %1661 = bitcast float* %1659 to i32*
  br i1 %1657, label %1662, label %1669, !dx.controlflow.hints !76

; <label>:1662                                    ; preds = %1656
  %1663 = and i32 %1654, 1073741823
  %1664 = add i32 %1644, 20
  %1665 = add i32 %1664, %1663
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.i32 %1666, 1
  br label %1669

; <label>:1669                                    ; preds = %1662, %1656
  %1670 = phi i32 [ %1667, %1662 ], [ %1577, %1656 ]
  %1671 = phi i32 [ %1668, %1662 ], [ %1578, %1656 ]
  store i32 %1670, i32* %1660, align 4
  store i32 %1671, i32* %1661, align 4
  %1672 = add i32 %1629, 1
  br label %1673

; <label>:1673                                    ; preds = %1669, %1628
  %1674 = phi i32 [ %1629, %1628 ], [ %1672, %1669 ]
  %1675 = add nuw i32 %1630, 1
  %1676 = icmp eq i32 %1675, %1625
  br i1 %1676, label %1677, label %1628

; <label>:1677                                    ; preds = %1673
  br label %1678

; <label>:1678                                    ; preds = %1677, %1621
  %1679 = phi i32 [ %1622, %1621 ], [ %1674, %1677 ]
  %1680 = icmp eq i32 %1679, 1
  %1681 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  %1682 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  br i1 %1680, label %1683, label %1686, !dx.controlflow.hints !77

; <label>:1683                                    ; preds = %1678
  %1684 = load float, float* %1681, align 4
  %1685 = load float, float* %1682, align 4
  br label %1713

; <label>:1686                                    ; preds = %1678
  %1687 = load float, float* %1681, align 4
  %1688 = load float, float* %1682, align 4
  %1689 = fdiv fast float 1.000000e+00, %1688
  %1690 = fsub fast float %1687, %1689
  %1691 = icmp ugt i32 %1679, 1
  br i1 %1691, label %1692, label %1708

; <label>:1692                                    ; preds = %1686
  br label %1693

; <label>:1693                                    ; preds = %1693, %1692
  %1694 = phi float [ %1703, %1693 ], [ %1690, %1692 ]
  %1695 = phi float [ %1704, %1693 ], [ %1687, %1692 ]
  %1696 = phi i32 [ %1705, %1693 ], [ 1, %1692 ]
  %1697 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %1696
  %1698 = load float, float* %1697, align 4
  %1699 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %1696
  %1700 = load float, float* %1699, align 4
  %1701 = fdiv fast float 1.000000e+00, %1700
  %1702 = fsub fast float %1698, %1701
  %1703 = call float @dx.op.binary.f32(i32 36, float %1694, float %1702)  ; FMin(a,b)
  %1704 = call float @dx.op.binary.f32(i32 35, float %1695, float %1698)  ; FMax(a,b)
  %1705 = add nuw i32 %1696, 1
  %1706 = icmp eq i32 %1705, %1679
  br i1 %1706, label %1707, label %1693

; <label>:1707                                    ; preds = %1693
  br label %1708

; <label>:1708                                    ; preds = %1707, %1686
  %1709 = phi float [ %1690, %1686 ], [ %1703, %1707 ]
  %1710 = phi float [ %1687, %1686 ], [ %1704, %1707 ]
  %1711 = fsub fast float %1710, %1709
  %1712 = fdiv fast float 1.000000e+00, %1711
  br label %1713

; <label>:1713                                    ; preds = %1708, %1683
  %1714 = phi float [ %1684, %1683 ], [ %1710, %1708 ]
  %1715 = phi float [ %1685, %1683 ], [ %1712, %1708 ]
  %1716 = fadd fast float %1144, %1714
  %1717 = fmul fast float %1716, %1715
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1718, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1554, %1554
  %1722 = fsub fast float %1555, %1721
  %1723 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1722)  ; FMax(a,b)
  %1724 = fdiv fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1555, %1554
  %1726 = fsub fast float %1556, %1725
  %1727 = fsub fast float %1720, %1554
  %1728 = fmul fast float %1720, %1720
  %1729 = fsub fast float %1728, %1555
  %1730 = fmul fast float %1724, %1726
  %1731 = fmul fast float %1730, %1727
  %1732 = fsub fast float %1729, %1731
  %1733 = fmul fast float %1555, %1555
  %1734 = fsub fast float %1557, %1733
  %1735 = fmul fast float %1726, %1726
  %1736 = fmul fast float %1735, %1724
  %1737 = fsub fast float %1734, %1736
  %1738 = fdiv fast float %1732, %1737
  %1739 = fmul fast float %1738, %1726
  %1740 = fsub fast float %1727, %1739
  %1741 = fmul fast float %1740, %1724
  %1742 = fmul fast float %1741, %1554
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1738, %1555
  %1745 = fsub fast float %1743, %1744
  %1746 = fmul fast float %1741, %1741
  %1747 = fmul fast float %1738, 4.000000e+00
  %1748 = fmul fast float %1747, %1745
  %1749 = fsub fast float %1746, %1748
  %1750 = call float @dx.op.unary.f32(i32 24, float %1749)  ; Sqrt(value)
  %1751 = fcmp fast oge float %1741, 0.000000e+00
  %1752 = fsub fast float -0.000000e+00, %1750
  %1753 = select i1 %1751, float %1752, float %1750
  %1754 = fsub fast float %1753, %1741
  %1755 = fdiv fast float %1754, %1738
  %1756 = fdiv fast float %1745, %1754
  %1757 = fmul fast float %1755, 5.000000e-01
  %1758 = fmul fast float %1756, 2.000000e+00
  %1759 = select i1 %1751, float %1757, float %1758
  %1760 = select i1 %1751, float %1758, float %1757
  %1761 = call float @dx.op.binary.f32(i32 35, float %1759, float %1760)  ; FMax(a,b)
  %1762 = call float @dx.op.binary.f32(i32 36, float %1759, float %1760)  ; FMin(a,b)
  %1763 = fcmp fast ogt float %1720, %1761
  %1764 = fsub fast float %1720, %1762
  %1765 = fsub fast float %1720, %1761
  %1766 = fsub fast float %1761, %1762
  %1767 = select i1 %1763, float %1765, float %1766
  %1768 = fmul float %1764, %1767
  %1769 = select i1 %1763, float %1762, float %1720
  %1770 = fcmp fast ogt float %1720, %1762
  %1771 = fmul fast float %1769, %1761
  %1772 = fadd fast float %1769, %1761
  %1773 = fmul fast float %1772, %1554
  %1774 = fadd fast float %1771, %1555
  %1775 = fsub fast float %1774, %1773
  %1776 = fdiv fast float %1775, %1768
  %1777 = select i1 %1770, float %1776, float 0.000000e+00
  %1778 = fsub fast float 1.000000e+00, %1777
  %1779 = select i1 %1763, float %1778, float %1777
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1782 = fmul fast float %1781, %1780
  %1783 = fsub fast float 1.000000e+00, %1782
  br label %1784

; <label>:1784                                    ; preds = %1713, %1391, %1117, %1075
  %1785 = phi float [ 1.000000e+00, %1075 ], [ %1783, %1713 ], [ 1.000000e+00, %1117 ], [ 1.000000e+00, %1391 ]
  %1786 = fcmp fast ogt float %1110, 0.000000e+00
  br i1 %1786, label %1787, label %1799, !dx.controlflow.hints !83

; <label>:1787                                    ; preds = %1784
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 2
  %1792 = fmul fast float %1789, %181
  %1793 = fadd fast float %1791, %208
  %1794 = fadd fast float %1793, %1792
  %1795 = call float @dx.op.binary.f32(i32 35, float %1794, float 0.000000e+00)  ; FMax(a,b)
  %1796 = fadd fast float %1795, 0x3F10000000000000
  %1797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %1006, float %1007, float undef, float undef, i32 0, i32 0, i32 undef, float %1796)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  br label %1799

; <label>:1799                                    ; preds = %1787, %1784
  %1800 = phi float [ %1798, %1787 ], [ 1.000000e+00, %1784 ]
  %1801 = fcmp fast ogt float %1108, 0.000000e+00
  br i1 %1801, label %1802, label %1814, !dx.controlflow.hints !84

; <label>:1802                                    ; preds = %1799
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1807 = fmul fast float %1804, %181
  %1808 = fadd fast float %1806, %208
  %1809 = fadd fast float %1808, %1807
  %1810 = call float @dx.op.binary.f32(i32 35, float %1809, float 0.000000e+00)  ; FMax(a,b)
  %1811 = fadd fast float %1810, 0x3F10000000000000
  %1812 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %998, float %999, float undef, float undef, i32 0, i32 0, i32 undef, float %1811)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  br label %1814

; <label>:1814                                    ; preds = %1802, %1799
  %1815 = phi float [ %1813, %1802 ], [ 1.000000e+00, %1799 ]
  %1816 = fcmp fast ogt float %1107, 0.000000e+00
  br i1 %1816, label %1817, label %1833, !dx.controlflow.hints !85

; <label>:1817                                    ; preds = %1814
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = fmul fast float %1819, %181
  %1823 = fadd fast float %1821, %208
  %1824 = fadd fast float %1823, %1822
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float 0.000000e+00)  ; FMax(a,b)
  %1826 = fadd fast float %1825, 0x3F10000000000000
  br i1 %74, label %1827, label %1830, !dx.controlflow.hints !86

; <label>:1827                                    ; preds = %1817
  %1828 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %31, float %200, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float %1826)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  br label %1833

; <label>:1830                                    ; preds = %1817
  %1831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %31, float %200, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float %1826)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1832 = extractvalue %dx.types.ResRet.f32 %1831, 0
  br label %1833

; <label>:1833                                    ; preds = %1830, %1827, %1814
  %1834 = phi float [ %1829, %1827 ], [ %1832, %1830 ], [ 1.000000e+00, %1814 ]
  %1835 = fsub fast float %1800, %1785
  %1836 = fmul fast float %1835, %1077
  %1837 = fadd fast float %1836, %1785
  %1838 = fsub fast float %1815, %1837
  %1839 = fmul fast float %1838, %1076
  %1840 = fadd fast float %1839, %1837
  %1841 = fsub fast float %1834, %1840
  %1842 = fmul fast float %1841, %1107
  %1843 = fadd fast float %1842, %1840
  br label %2697

; <label>:1844                                    ; preds = %85
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = extractvalue %dx.types.CBufRet.f32 %1845, 1
  %1848 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1849 = fmul fast float %1848, %200
  %1850 = fmul fast float %1848, %204
  %1851 = fadd fast float %1849, %1846
  %1852 = fadd fast float %1850, %1847
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1857 = fmul fast float %1856, %200
  %1858 = fmul fast float %1856, %204
  %1859 = fadd fast float %1857, %1854
  %1860 = fadd fast float %1858, %1855
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 1
  %1863 = fsub fast float %1862, %208
  %1864 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1865 = fmul fast float %1863, %1864
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  br i1 %74, label %1928, label %1868, !dx.controlflow.hints !79

; <label>:1868                                    ; preds = %1844
  %1869 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1872 = fadd fast float %1871, %1869
  %1873 = fcmp fast ogt float %1872, 0.000000e+00
  br i1 %1873, label %1874, label %1898, !dx.controlflow.hints !80

; <label>:1874                                    ; preds = %1868
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = fsub fast float %1859, %1876
  %1879 = fsub fast float %1860, %1877
  %1880 = fcmp fast olt float %1878, 0.000000e+00
  %1881 = fcmp fast olt float %1879, 0.000000e+00
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1886 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1887 = select i1 %1880, float %1883, float %1885
  %1888 = select i1 %1881, float %1884, float %1886
  %1889 = fmul fast float %1887, %1878
  %1890 = fmul fast float %1888, %1879
  %1891 = call float @dx.op.unary.f32(i32 6, float %1889)  ; FAbs(value)
  %1892 = call float @dx.op.unary.f32(i32 6, float %1890)  ; FAbs(value)
  %1893 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1894 = call float @dx.op.binary.f32(i32 35, float %1891, float %1892)  ; FMax(a,b)
  %1895 = fsub fast float %1893, %1894
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fmul fast float %1896, %1867
  br label %1898

; <label>:1898                                    ; preds = %1874, %1868
  %1899 = phi float [ %1897, %1874 ], [ 0.000000e+00, %1868 ]
  %1900 = extractvalue %dx.types.CBufRet.f32 %1845, 2
  %1901 = extractvalue %dx.types.CBufRet.f32 %1870, 1
  %1902 = fadd fast float %1901, %1900
  %1903 = fcmp fast ogt float %1902, 0.000000e+00
  br i1 %1903, label %1904, label %1928, !dx.controlflow.hints !81

; <label>:1904                                    ; preds = %1898
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = fsub fast float %1851, %1906
  %1909 = fsub fast float %1852, %1907
  %1910 = fcmp fast olt float %1908, 0.000000e+00
  %1911 = fcmp fast olt float %1909, 0.000000e+00
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.CBufRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.CBufRet.f32 %1912, 2
  %1916 = extractvalue %dx.types.CBufRet.f32 %1912, 3
  %1917 = select i1 %1910, float %1913, float %1915
  %1918 = select i1 %1911, float %1914, float %1916
  %1919 = fmul fast float %1917, %1908
  %1920 = fmul fast float %1918, %1909
  %1921 = call float @dx.op.unary.f32(i32 6, float %1919)  ; FAbs(value)
  %1922 = call float @dx.op.unary.f32(i32 6, float %1920)  ; FAbs(value)
  %1923 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1924 = call float @dx.op.binary.f32(i32 35, float %1921, float %1922)  ; FMax(a,b)
  %1925 = fsub fast float %1923, %1924
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = fmul fast float %1926, %1867
  br label %1928

; <label>:1928                                    ; preds = %1904, %1898, %1844
  %1929 = phi float [ 0.000000e+00, %1844 ], [ %1927, %1904 ], [ 0.000000e+00, %1898 ]
  %1930 = phi float [ 0.000000e+00, %1844 ], [ %1899, %1904 ], [ %1899, %1898 ]
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.CBufRet.f32 %1931, 1
  %1934 = fmul fast float %1932, %81
  %1935 = fadd fast float %1934, %1933
  %1936 = call float @dx.op.unary.f32(i32 7, float %1935)  ; Saturate(value)
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.CBufRet.f32 %1937, 1
  %1940 = fsub fast float %200, %1938
  %1941 = fsub fast float %204, %1939
  %1942 = fcmp fast olt float %1940, 0.000000e+00
  %1943 = fcmp fast olt float %1941, 0.000000e+00
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1948 = extractvalue %dx.types.CBufRet.f32 %1944, 3
  %1949 = select i1 %1942, float %1945, float %1947
  %1950 = select i1 %1943, float %1946, float %1948
  %1951 = fmul fast float %1949, %1940
  %1952 = fmul fast float %1950, %1941
  %1953 = call float @dx.op.unary.f32(i32 6, float %1951)  ; FAbs(value)
  %1954 = call float @dx.op.unary.f32(i32 6, float %1952)  ; FAbs(value)
  %1955 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %1956 = call float @dx.op.binary.f32(i32 35, float %1953, float %1954)  ; FMax(a,b)
  %1957 = fsub fast float %1955, %1956
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = call float @dx.op.binary.f32(i32 36, float %1958, float %1936)  ; FMin(a,b)
  %1960 = fmul fast float %1959, %1867
  %1961 = fsub fast float %1929, %1960
  %1962 = fsub fast float %1930, %1929
  %1963 = fsub fast float %1962, %1960
  %1964 = call float @dx.op.binary.f32(i32 35, float %1929, float %1930)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 35, float %1960, float %1964)  ; FMax(a,b)
  %1966 = fcmp fast olt float %1965, 1.000000e+00
  %1967 = extractvalue %dx.types.CBufRet.f32 %220, 0
  %1968 = fcmp fast une float %1967, 0.000000e+00
  %1969 = and i1 %1966, %1968
  br i1 %1969, label %1970, label %2637, !dx.controlflow.hints !82

; <label>:1970                                    ; preds = %1928
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1975 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %1976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1977 = extractvalue %dx.types.CBufRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.CBufRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.CBufRet.f32 %1976, 2
  %1980 = extractvalue %dx.types.CBufRet.f32 %1976, 3
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1984 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %1985 = extractvalue %dx.types.CBufRet.f32 %1981, 3
  %1986 = fmul fast float %1972, %135
  %1987 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1973, float %1986)  ; FMad(a,b,c)
  %1988 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1974, float %1987)  ; FMad(a,b,c)
  %1989 = fadd fast float %1988, %1975
  %1990 = fmul fast float %1977, %135
  %1991 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1978, float %1990)  ; FMad(a,b,c)
  %1992 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1979, float %1991)  ; FMad(a,b,c)
  %1993 = fadd fast float %1992, %1980
  %1994 = fmul fast float %1982, %135
  %1995 = call float @dx.op.tertiary.f32(i32 46, float %136, float %1983, float %1994)  ; FMad(a,b,c)
  %1996 = call float @dx.op.tertiary.f32(i32 46, float %137, float %1984, float %1995)  ; FMad(a,b,c)
  %1997 = fadd fast float %1996, %1985
  %1998 = fcmp fast oge float %1989, 1.000000e+00
  %1999 = fcmp fast oge float %1993, 1.000000e+00
  %2000 = or i1 %1998, %1999
  %2001 = fcmp fast olt float %1989, 0.000000e+00
  %2002 = fcmp fast olt float %1993, 0.000000e+00
  %2003 = or i1 %2001, %2002
  %2004 = or i1 %2000, %2003
  br i1 %2004, label %2637, label %2005, !dx.controlflow.hints !58

; <label>:2005                                    ; preds = %1970
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.CBufRet.f32 %2006, 2
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 1
  %2012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2013 = extractvalue %dx.types.CBufRet.i32 %2012, 2
  %2014 = uitofp i32 %2013 to float
  %2015 = extractvalue %dx.types.CBufRet.i32 %2012, 3
  %2016 = uitofp i32 %2015 to float
  %2017 = extractvalue %dx.types.CBufRet.f32 %2006, 3
  %2018 = fmul fast float %2017, 2.000000e+00
  %2019 = fsub fast float %1989, %2007
  %2020 = fsub fast float %1993, %2008
  %2021 = fmul fast float %2018, %2019
  %2022 = fmul fast float %2018, %2020
  %2023 = fdiv fast float 1.000000e+00, %170
  %2024 = fmul fast float %2022, %2023
  %2025 = call float @dx.op.unary.f32(i32 6, float %2024)  ; FAbs(value)
  %2026 = fmul fast float %2009, %137
  %2027 = fmul fast float %2026, %2018
  %2028 = call float @dx.op.unary.f32(i32 6, float %2027)  ; FAbs(value)
  %2029 = call float @dx.op.unary.f32(i32 6, float %2021)  ; FAbs(value)
  %2030 = call float @dx.op.binary.f32(i32 35, float %2028, float %2025)  ; FMax(a,b)
  %2031 = call float @dx.op.binary.f32(i32 35, float %2029, float %2030)  ; FMax(a,b)
  %2032 = fmul fast float %2031, 2.000000e+00
  %2033 = call float @dx.op.unary.f32(i32 23, float %2032)  ; Log(value)
  %2034 = call float @dx.op.binary.f32(i32 35, float %2033, float %2014)  ; FMax(a,b)
  %2035 = call float @dx.op.unary.f32(i32 22, float %2034)  ; Frc(value)
  %2036 = fadd fast float %2035, 0xBFEA666660000000
  %2037 = fmul fast float %2036, 8.000000e+00
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2040 = fadd fast float %2039, %2038
  %2041 = call float @dx.op.binary.f32(i32 36, float %2040, float %2016)  ; FMin(a,b)
  %2042 = call float @dx.op.unary.f32(i32 27, float %2041)  ; Round_ni(value)
  %2043 = fsub fast float -0.000000e+00, %2042
  %2044 = call float @dx.op.unary.f32(i32 21, float %2043)  ; Exp(value)
  %2045 = fmul fast float %2044, %2018
  %2046 = fmul fast float %2045, %1989
  %2047 = fmul fast float %2045, %1993
  %2048 = fmul fast float %2046, 5.000000e-01
  %2049 = fmul fast float %2047, 5.000000e-01
  %2050 = fadd fast float %2048, 5.000000e-01
  %2051 = fadd fast float %2049, 5.000000e-01
  %2052 = fmul fast float %2046, 2.500000e-01
  %2053 = fmul fast float %2047, 2.500000e-01
  %2054 = fadd fast float %2052, 5.000000e-01
  %2055 = fadd fast float %2053, 5.000000e-01
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 536870911
  %2059 = lshr i32 %2058, 9
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, %1989
  %2062 = fmul fast float %2060, %1993
  %2063 = call float @dx.op.unary.f32(i32 22, float %2061)  ; Frc(value)
  %2064 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2065 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2066 = fcmp fast une float %2065, 0.000000e+00
  br i1 %2066, label %2067, label %2165, !dx.controlflow.hints !59

; <label>:2067                                    ; preds = %2005
  %2068 = call float @dx.op.unary.f32(i32 21, float %2039)  ; Exp(value)
  %2069 = fmul fast float %2068, 1.953125e-03
  %2070 = fcmp fast olt float %2063, %2069
  %2071 = fcmp fast olt float %2064, %2069
  %2072 = or i1 %2070, %2071
  %2073 = fsub fast float 1.000000e+00, %2069
  %2074 = fcmp fast ogt float %2063, %2073
  %2075 = fcmp fast ogt float %2064, %2073
  %2076 = or i1 %2074, %2075
  %2077 = or i1 %2072, %2076
  br i1 %2077, label %2078, label %2244, !dx.controlflow.hints !60

; <label>:2078                                    ; preds = %2067
  %2079 = fmul fast float %2011, 5.000000e-01
  %2080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.i32 %2080, 0
  %2082 = fmul fast float %1993, 3.530000e+02
  %2083 = uitofp i32 %2058 to float
  %2084 = fmul fast float %2082, %2083
  %2085 = fmul fast float %1989, 6.130000e+02
  %2086 = fadd fast float %2084, %2085
  %2087 = fptoui float %2086 to i32
  %2088 = add i32 %2081, %2087
  %2089 = mul i32 %2088, -63
  %2090 = lshr i32 %2089, 17
  %2091 = xor i32 %2090, %2089
  %2092 = mul i32 %2091, -511
  %2093 = mul i32 %2091, -8176
  %2094 = xor i32 %2092, %2093
  %2095 = mul i32 %2094, -7
  %2096 = mul i32 %2094, -7168
  %2097 = xor i32 %2095, %2096
  %2098 = lshr i32 %2097, 15
  %2099 = xor i32 %2098, %2095
  %2100 = and i32 %2099, 15
  %2101 = mul i32 %2100, 2
  %2102 = add i32 0, %2101
  %2103 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2102
  %2104 = load float, float* %2103, align 4
  %2105 = mul i32 %2100, 2
  %2106 = add i32 1, %2105
  %2107 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2106
  %2108 = load float, float* %2107, align 4
  %2109 = fmul fast float %1993, 2.770000e+02
  %2110 = fmul fast float %2109, %2083
  %2111 = fmul fast float %1989, 5.990000e+02
  %2112 = fadd fast float %2110, %2111
  %2113 = fptoui float %2112 to i32
  %2114 = mul i32 %2113, -63
  %2115 = lshr i32 %2114, 17
  %2116 = xor i32 %2115, %2114
  %2117 = mul i32 %2116, -511
  %2118 = mul i32 %2116, -8176
  %2119 = xor i32 %2117, %2118
  %2120 = mul i32 %2119, -7
  %2121 = mul i32 %2119, -7168
  %2122 = xor i32 %2120, %2121
  %2123 = lshr i32 %2122, 15
  %2124 = xor i32 %2123, %2120
  %2125 = and i32 %2124, 63
  %2126 = mul i32 %2125, 2
  %2127 = add i32 0, %2126
  %2128 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2127
  %2129 = load float, float* %2128, align 4
  %2130 = mul i32 %2125, 2
  %2131 = add i32 1, %2130
  %2132 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2131
  %2133 = load float, float* %2132, align 4
  %2134 = call float @dx.op.dot2.f32(i32 54, float %2104, float %2108, float %2129, float %2133)  ; Dot2(ax,ay,bx,by)
  %2135 = fsub fast float -0.000000e+00, %2129
  %2136 = call float @dx.op.dot2.f32(i32 54, float %2104, float %2108, float %2135, float %2133)  ; Dot2(ax,ay,bx,by)
  %2137 = fmul fast float %2134, %2079
  %2138 = fmul fast float %2136, %2079
  %2139 = fdiv fast float 2.000000e+00, %2045
  %2140 = fmul fast float %2068, 9.765625e-04
  %2141 = fcmp fast olt float %2063, %2140
  %2142 = fcmp fast olt float %2064, %2140
  %2143 = or i1 %2141, %2142
  %2144 = fsub fast float 1.000000e+00, %2140
  %2145 = fcmp fast ogt float %2063, %2144
  %2146 = fcmp fast ogt float %2064, %2144
  %2147 = or i1 %2145, %2146
  %2148 = or i1 %2143, %2147
  %2149 = fmul fast float %2137, 2.000000e+00
  br i1 %2148, label %2150, label %2154, !dx.controlflow.hints !61

; <label>:2150                                    ; preds = %2078
  %2151 = fmul fast float %2138, 2.000000e+00
  %2152 = fadd fast float %2149, %2050
  %2153 = fadd fast float %2151, %2051
  br label %2154

; <label>:2154                                    ; preds = %2150, %2078
  %2155 = phi float [ %2152, %2150 ], [ %2050, %2078 ]
  %2156 = phi float [ %2153, %2150 ], [ %2051, %2078 ]
  %2157 = phi i32 [ 3, %2150 ], [ 2, %2078 ]
  %2158 = fadd fast float %2137, %2054
  %2159 = fadd fast float %2138, %2055
  %2160 = fmul fast float %2149, %2139
  %2161 = fmul fast float %2139, 2.000000e+00
  %2162 = fmul fast float %2161, %2138
  %2163 = fadd fast float %2160, %1989
  %2164 = fadd fast float %2162, %1993
  br label %2244

; <label>:2165                                    ; preds = %2005
  %2166 = call float @dx.op.unary.f32(i32 21, float %2042)  ; Exp(value)
  %2167 = fmul fast float %2166, 9.765625e-04
  %2168 = fcmp fast olt float %2063, %2167
  %2169 = fcmp fast olt float %2064, %2167
  %2170 = or i1 %2168, %2169
  %2171 = fsub fast float 1.000000e+00, %2167
  %2172 = fcmp fast ogt float %2063, %2171
  %2173 = fcmp fast ogt float %2064, %2171
  %2174 = or i1 %2172, %2173
  %2175 = or i1 %2170, %2174
  br i1 %2175, label %2176, label %2244, !dx.controlflow.hints !62

; <label>:2176                                    ; preds = %2165
  %2177 = fmul fast float %2011, 5.000000e-01
  %2178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.i32 %2178, 0
  %2180 = fmul fast float %1993, 3.530000e+02
  %2181 = uitofp i32 %2058 to float
  %2182 = fmul fast float %2180, %2181
  %2183 = fmul fast float %1989, 6.130000e+02
  %2184 = fadd fast float %2182, %2183
  %2185 = fptoui float %2184 to i32
  %2186 = add i32 %2179, %2185
  %2187 = mul i32 %2186, -63
  %2188 = lshr i32 %2187, 17
  %2189 = xor i32 %2188, %2187
  %2190 = mul i32 %2189, -511
  %2191 = mul i32 %2189, -8176
  %2192 = xor i32 %2190, %2191
  %2193 = mul i32 %2192, -7
  %2194 = mul i32 %2192, -7168
  %2195 = xor i32 %2193, %2194
  %2196 = lshr i32 %2195, 15
  %2197 = xor i32 %2196, %2193
  %2198 = and i32 %2197, 15
  %2199 = mul i32 %2198, 2
  %2200 = add i32 0, %2199
  %2201 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2200
  %2202 = load float, float* %2201, align 4
  %2203 = mul i32 %2198, 2
  %2204 = add i32 1, %2203
  %2205 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2204
  %2206 = load float, float* %2205, align 4
  %2207 = fmul fast float %1993, 2.770000e+02
  %2208 = fmul fast float %2207, %2181
  %2209 = fmul fast float %1989, 5.990000e+02
  %2210 = fadd fast float %2208, %2209
  %2211 = fptoui float %2210 to i32
  %2212 = mul i32 %2211, -63
  %2213 = lshr i32 %2212, 17
  %2214 = xor i32 %2213, %2212
  %2215 = mul i32 %2214, -511
  %2216 = mul i32 %2214, -8176
  %2217 = xor i32 %2215, %2216
  %2218 = mul i32 %2217, -7
  %2219 = mul i32 %2217, -7168
  %2220 = xor i32 %2218, %2219
  %2221 = lshr i32 %2220, 15
  %2222 = xor i32 %2221, %2218
  %2223 = and i32 %2222, 63
  %2224 = mul i32 %2223, 2
  %2225 = add i32 0, %2224
  %2226 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2225
  %2227 = load float, float* %2226, align 4
  %2228 = mul i32 %2223, 2
  %2229 = add i32 1, %2228
  %2230 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2229
  %2231 = load float, float* %2230, align 4
  %2232 = call float @dx.op.dot2.f32(i32 54, float %2202, float %2206, float %2227, float %2231)  ; Dot2(ax,ay,bx,by)
  %2233 = fsub fast float -0.000000e+00, %2227
  %2234 = call float @dx.op.dot2.f32(i32 54, float %2202, float %2206, float %2233, float %2231)  ; Dot2(ax,ay,bx,by)
  %2235 = fmul fast float %2232, %2177
  %2236 = fmul fast float %2234, %2177
  %2237 = fadd fast float %2235, %2050
  %2238 = fadd fast float %2236, %2051
  %2239 = fdiv fast float 2.000000e+00, %2045
  %2240 = fmul fast float %2239, %2235
  %2241 = fmul fast float %2236, %2239
  %2242 = fadd fast float %2240, %1989
  %2243 = fadd fast float %2241, %1993
  br label %2244

; <label>:2244                                    ; preds = %2176, %2165, %2154, %2067
  %2245 = phi float [ %2158, %2154 ], [ %2054, %2067 ], [ %2054, %2176 ], [ %2054, %2165 ]
  %2246 = phi float [ %2159, %2154 ], [ %2055, %2067 ], [ %2055, %2176 ], [ %2055, %2165 ]
  %2247 = phi float [ %2155, %2154 ], [ %2050, %2067 ], [ %2237, %2176 ], [ %2050, %2165 ]
  %2248 = phi float [ %2156, %2154 ], [ %2051, %2067 ], [ %2238, %2176 ], [ %2051, %2165 ]
  %2249 = phi i32 [ %2157, %2154 ], [ 0, %2067 ], [ 1, %2176 ], [ 0, %2165 ]
  %2250 = phi float [ %2163, %2154 ], [ %1989, %2067 ], [ %2242, %2176 ], [ %1989, %2165 ]
  %2251 = phi float [ %2164, %2154 ], [ %1993, %2067 ], [ %2243, %2176 ], [ %1993, %2165 ]
  %2252 = fsub fast float %2016, %2014
  %2253 = fptoui float %2252 to i32
  %2254 = add i32 %2253, 320
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %2254)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.CBufRet.f32 %2255, 1
  %2258 = fcmp fast une float %2041, %2016
  %2259 = fsub fast float %2250, %2256
  %2260 = fsub fast float %2251, %2257
  %2261 = call float @dx.op.unary.f32(i32 6, float %2259)  ; FAbs(value)
  %2262 = call float @dx.op.unary.f32(i32 6, float %2260)  ; FAbs(value)
  %2263 = fmul fast float %2261, %2045
  %2264 = fmul fast float %2262, %2045
  %2265 = fcmp fast olt float %2263, 1.000000e+00
  %2266 = fcmp fast olt float %2264, 1.000000e+00
  %2267 = and i1 %2265, %2266
  %2268 = or i1 %2258, %2267
  br i1 %2268, label %2269, label %2637, !dx.controlflow.hints !63

; <label>:2269                                    ; preds = %2244
  %2270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.i32 %2270, 2
  %2272 = sitofp i32 %2271 to float
  %2273 = fsub fast float %2041, %2272
  %2274 = call float @dx.op.unary.f32(i32 27, float %2273)  ; Round_ni(value)
  %2275 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2276 = icmp eq i32 %2249, 0
  %2277 = call float @dx.op.unary.f32(i32 22, float %2247)  ; Frc(value)
  %2278 = call float @dx.op.unary.f32(i32 22, float %2248)  ; Frc(value)
  br i1 %2276, label %2349, label %2279, !dx.controlflow.hints !64

; <label>:2279                                    ; preds = %2269
  %2280 = and i32 %2249, 1
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2295, label %2282, !dx.controlflow.hints !65

; <label>:2282                                    ; preds = %2279
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 0
  %2285 = fmul fast float %2277, %2284
  %2286 = fmul fast float %2278, %2284
  %2287 = fptoui float %2285 to i32
  %2288 = fptoui float %2286 to i32
  %2289 = fptoui float %2274 to i32
  %2290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2287, i32 %2288, i32 %2289, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  br label %2301

; <label>:2295                                    ; preds = %2279
  %2296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %2277, float %2278, float %2274, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  br label %2301

; <label>:2301                                    ; preds = %2295, %2282
  %2302 = phi float [ %2291, %2282 ], [ %2297, %2295 ]
  %2303 = phi float [ %2292, %2282 ], [ %2298, %2295 ]
  %2304 = phi float [ %2293, %2282 ], [ %2299, %2295 ]
  %2305 = phi float [ %2294, %2282 ], [ %2300, %2295 ]
  %2306 = fcmp fast ogt float %2275, 0.000000e+00
  br i1 %2306, label %2307, label %2377, !dx.controlflow.hints !66

; <label>:2307                                    ; preds = %2301
  %2308 = and i32 %2249, 2
  %2309 = icmp eq i32 %2308, 0
  %2310 = fadd fast float %2274, 1.000000e+00
  %2311 = call float @dx.op.unary.f32(i32 22, float %2245)  ; Frc(value)
  %2312 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  br i1 %2309, label %2326, label %2313, !dx.controlflow.hints !67

; <label>:2313                                    ; preds = %2307
  %2314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.f32 %2314, 0
  %2316 = fmul fast float %2311, %2315
  %2317 = fmul fast float %2312, %2315
  %2318 = fptoui float %2316 to i32
  %2319 = fptoui float %2317 to i32
  %2320 = fptoui float %2310 to i32
  %2321 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2318, i32 %2319, i32 %2320, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = extractvalue %dx.types.ResRet.f32 %2321, 3
  br label %2332

; <label>:2326                                    ; preds = %2307
  %2327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %2311, float %2312, float %2310, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.ResRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.ResRet.f32 %2327, 2
  %2331 = extractvalue %dx.types.ResRet.f32 %2327, 3
  br label %2332

; <label>:2332                                    ; preds = %2326, %2313
  %2333 = phi float [ %2322, %2313 ], [ %2328, %2326 ]
  %2334 = phi float [ %2323, %2313 ], [ %2329, %2326 ]
  %2335 = phi float [ %2324, %2313 ], [ %2330, %2326 ]
  %2336 = phi float [ %2325, %2313 ], [ %2331, %2326 ]
  %2337 = fsub fast float %2333, %2302
  %2338 = fsub fast float %2334, %2303
  %2339 = fsub fast float %2335, %2304
  %2340 = fsub fast float %2336, %2305
  %2341 = fmul fast float %2337, %2275
  %2342 = fmul fast float %2338, %2275
  %2343 = fmul fast float %2339, %2275
  %2344 = fmul fast float %2340, %2275
  %2345 = fadd fast float %2341, %2302
  %2346 = fadd fast float %2342, %2303
  %2347 = fadd fast float %2343, %2304
  %2348 = fadd fast float %2344, %2305
  br label %2377

; <label>:2349                                    ; preds = %2269
  %2350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %2277, float %2278, float %2274, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = extractvalue %dx.types.ResRet.f32 %2350, 3
  %2355 = fcmp fast ogt float %2275, 0.000000e+00
  br i1 %2355, label %2356, label %2377, !dx.controlflow.hints !68

; <label>:2356                                    ; preds = %2349
  %2357 = fadd fast float %2274, 1.000000e+00
  %2358 = call float @dx.op.unary.f32(i32 22, float %2245)  ; Frc(value)
  %2359 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  %2360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %28, float %2358, float %2359, float %2357, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = extractvalue %dx.types.ResRet.f32 %2360, 3
  %2365 = fsub fast float %2361, %2351
  %2366 = fsub fast float %2362, %2352
  %2367 = fsub fast float %2363, %2353
  %2368 = fsub fast float %2364, %2354
  %2369 = fmul fast float %2365, %2275
  %2370 = fmul fast float %2366, %2275
  %2371 = fmul fast float %2367, %2275
  %2372 = fmul fast float %2368, %2275
  %2373 = fadd fast float %2369, %2351
  %2374 = fadd fast float %2370, %2352
  %2375 = fadd fast float %2371, %2353
  %2376 = fadd fast float %2372, %2354
  br label %2377

; <label>:2377                                    ; preds = %2356, %2349, %2332, %2301
  %2378 = phi float [ %2345, %2332 ], [ %2302, %2301 ], [ %2373, %2356 ], [ %2351, %2349 ]
  %2379 = phi float [ %2346, %2332 ], [ %2303, %2301 ], [ %2374, %2356 ], [ %2352, %2349 ]
  %2380 = phi float [ %2347, %2332 ], [ %2304, %2301 ], [ %2375, %2356 ], [ %2353, %2349 ]
  %2381 = phi float [ %2348, %2332 ], [ %2305, %2301 ], [ %2376, %2356 ], [ %2354, %2349 ]
  %2382 = fadd fast float %2378, -5.000000e-01
  %2383 = fadd fast float %2380, -5.000000e-01
  %2384 = fmul fast float %2382, 0xBFD5555560000000
  %2385 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2383, float %2384)  ; FMad(a,b,c)
  %2386 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2379, float 0.000000e+00)  ; FMad(a,b,c)
  %2387 = fadd fast float %2386, %2381
  %2388 = fmul fast float %2382, -7.500000e-01
  %2389 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2383, float %2388)  ; FMad(a,b,c)
  %2390 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2379, float 0.000000e+00)  ; FMad(a,b,c)
  %2391 = fadd fast float %2390, %2381
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2399 = fsub fast float %2395, %2385
  %2400 = fsub fast float %2396, %2387
  %2401 = fsub fast float %2397, %2389
  %2402 = fsub fast float %2398, %2391
  %2403 = fmul fast float %2399, %2393
  %2404 = fmul fast float %2400, %2393
  %2405 = fmul fast float %2401, %2393
  %2406 = fmul fast float %2402, %2393
  %2407 = fadd fast float %2403, %2385
  %2408 = fadd fast float %2404, %2387
  %2409 = fadd fast float %2405, %2389
  %2410 = fadd fast float %2406, %2391
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 536870911
  %2414 = uitofp i32 %2413 to float
  %2415 = fmul fast float %2414, %2250
  %2416 = fmul fast float %2414, %2251
  %2417 = fptoui float %2415 to i32
  %2418 = fptoui float %2416 to i32
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 31
  %2422 = lshr i32 %2417, %2421
  %2423 = lshr i32 %2418, %2421
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 31
  %2427 = shl i32 1, %2426
  %2428 = call i32 @dx.op.binary.i32(i32 40, i32 %2427, i32 4)  ; UMin(a,b)
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.i32 %2429, 1
  %2432 = icmp eq i32 %2428, 0
  br i1 %2432, label %2474, label %2433

; <label>:2433                                    ; preds = %2377
  br label %2434

; <label>:2434                                    ; preds = %2462, %2433
  %2435 = phi i32 [ %2465, %2462 ], [ 0, %2433 ]
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = lshr i32 %2437, 16
  %2439 = and i32 %2438, 31
  %2440 = shl i32 %2423, %2439
  %2441 = add i32 %2440, %2422
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %2443, 31
  %2445 = shl i32 %2441, %2444
  %2446 = add i32 %2445, %2435
  %2447 = shl i32 %2446, 2
  %2448 = add i32 %2447, 32
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = icmp slt i32 %2450, 0
  %2452 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2435
  %2453 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2435
  %2454 = bitcast float* %2452 to i32*
  %2455 = bitcast float* %2453 to i32*
  br i1 %2451, label %2456, label %2462, !dx.controlflow.hints !69

; <label>:2456                                    ; preds = %2434
  %2457 = and i32 %2450, 1073741823
  %2458 = add nuw nsw i32 %2457, 20
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.i32 %2459, 1
  br label %2462

; <label>:2462                                    ; preds = %2456, %2434
  %2463 = phi i32 [ %2460, %2456 ], [ %2430, %2434 ]
  %2464 = phi i32 [ %2461, %2456 ], [ %2431, %2434 ]
  store i32 %2463, i32* %2454, align 4
  store i32 %2464, i32* %2455, align 4
  %2465 = add nuw i32 %2435, 1
  %2466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.i32 %2466, 2
  %2468 = icmp eq i32 %2467, 0
  %2469 = icmp ugt i32 %2450, -1073741825
  %2470 = and i1 %2469, %2468
  %2471 = icmp ult i32 %2465, %2428
  %2472 = and i1 %2470, %2471
  br i1 %2472, label %2434, label %2473, !dx.controlflow.hints !70

; <label>:2473                                    ; preds = %2462
  br label %2474

; <label>:2474                                    ; preds = %2473, %2377
  %2475 = phi i32 [ 0, %2377 ], [ %2465, %2473 ]
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2478 = fptoui float %2477 to i32
  %2479 = icmp eq i32 %2478, 0
  br i1 %2479, label %2531, label %2480

; <label>:2480                                    ; preds = %2474
  br label %2481

; <label>:2481                                    ; preds = %2526, %2480
  %2482 = phi i32 [ %2527, %2526 ], [ %2475, %2480 ]
  %2483 = phi i32 [ %2528, %2526 ], [ 0, %2480 ]
  %2484 = lshr i32 %2483, 2
  %2485 = and i32 %2483, 3
  %2486 = add nuw nsw i32 %2484, 83
  %2487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %2486)  ; CBufferLoadLegacy(handle,regIndex)
  %2488 = extractvalue %dx.types.CBufRet.i32 %2487, 0
  %2489 = extractvalue %dx.types.CBufRet.i32 %2487, 1
  %2490 = extractvalue %dx.types.CBufRet.i32 %2487, 2
  %2491 = extractvalue %dx.types.CBufRet.i32 %2487, 3
  %2492 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %2488, i32* %2492, align 4
  %2493 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %2489, i32* %2493, align 4
  %2494 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %2490, i32* %2494, align 4
  %2495 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %2491, i32* %2495, align 4
  %2496 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 %2485
  %2497 = load i32, i32* %2496, align 4, !tbaa !71
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 16
  %2501 = and i32 %2500, 31
  %2502 = shl i32 %2423, %2501
  %2503 = add i32 %2502, %2422
  %2504 = shl i32 %2503, 2
  %2505 = add i32 %2504, %2497
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = icmp eq i32 %2507, 0
  br i1 %2508, label %2526, label %2509, !dx.controlflow.hints !75

; <label>:2509                                    ; preds = %2481
  %2510 = icmp slt i32 %2507, 0
  %2511 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2482
  %2512 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2482
  %2513 = bitcast float* %2511 to i32*
  %2514 = bitcast float* %2512 to i32*
  br i1 %2510, label %2515, label %2522, !dx.controlflow.hints !76

; <label>:2515                                    ; preds = %2509
  %2516 = and i32 %2507, 1073741823
  %2517 = add i32 %2497, 20
  %2518 = add i32 %2517, %2516
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = extractvalue %dx.types.ResRet.i32 %2519, 1
  br label %2522

; <label>:2522                                    ; preds = %2515, %2509
  %2523 = phi i32 [ %2520, %2515 ], [ %2430, %2509 ]
  %2524 = phi i32 [ %2521, %2515 ], [ %2431, %2509 ]
  store i32 %2523, i32* %2513, align 4
  store i32 %2524, i32* %2514, align 4
  %2525 = add i32 %2482, 1
  br label %2526

; <label>:2526                                    ; preds = %2522, %2481
  %2527 = phi i32 [ %2482, %2481 ], [ %2525, %2522 ]
  %2528 = add nuw i32 %2483, 1
  %2529 = icmp eq i32 %2528, %2478
  br i1 %2529, label %2530, label %2481

; <label>:2530                                    ; preds = %2526
  br label %2531

; <label>:2531                                    ; preds = %2530, %2474
  %2532 = phi i32 [ %2475, %2474 ], [ %2527, %2530 ]
  %2533 = icmp eq i32 %2532, 1
  %2534 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  %2535 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  br i1 %2533, label %2536, label %2539, !dx.controlflow.hints !77

; <label>:2536                                    ; preds = %2531
  %2537 = load float, float* %2534, align 4
  %2538 = load float, float* %2535, align 4
  br label %2566

; <label>:2539                                    ; preds = %2531
  %2540 = load float, float* %2534, align 4
  %2541 = load float, float* %2535, align 4
  %2542 = fdiv fast float 1.000000e+00, %2541
  %2543 = fsub fast float %2540, %2542
  %2544 = icmp ugt i32 %2532, 1
  br i1 %2544, label %2545, label %2561

; <label>:2545                                    ; preds = %2539
  br label %2546

; <label>:2546                                    ; preds = %2546, %2545
  %2547 = phi float [ %2556, %2546 ], [ %2543, %2545 ]
  %2548 = phi float [ %2557, %2546 ], [ %2540, %2545 ]
  %2549 = phi i32 [ %2558, %2546 ], [ 1, %2545 ]
  %2550 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %2549
  %2551 = load float, float* %2550, align 4
  %2552 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %2549
  %2553 = load float, float* %2552, align 4
  %2554 = fdiv fast float 1.000000e+00, %2553
  %2555 = fsub fast float %2551, %2554
  %2556 = call float @dx.op.binary.f32(i32 36, float %2547, float %2555)  ; FMin(a,b)
  %2557 = call float @dx.op.binary.f32(i32 35, float %2548, float %2551)  ; FMax(a,b)
  %2558 = add nuw i32 %2549, 1
  %2559 = icmp eq i32 %2558, %2532
  br i1 %2559, label %2560, label %2546

; <label>:2560                                    ; preds = %2546
  br label %2561

; <label>:2561                                    ; preds = %2560, %2539
  %2562 = phi float [ %2543, %2539 ], [ %2556, %2560 ]
  %2563 = phi float [ %2540, %2539 ], [ %2557, %2560 ]
  %2564 = fsub fast float %2563, %2562
  %2565 = fdiv fast float 1.000000e+00, %2564
  br label %2566

; <label>:2566                                    ; preds = %2561, %2536
  %2567 = phi float [ %2537, %2536 ], [ %2563, %2561 ]
  %2568 = phi float [ %2538, %2536 ], [ %2565, %2561 ]
  %2569 = fadd fast float %1997, %2567
  %2570 = fmul fast float %2569, %2568
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = fmul fast float %2571, 2.000000e+00
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = fmul fast float %2407, %2407
  %2575 = fsub fast float %2408, %2574
  %2576 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2575)  ; FMax(a,b)
  %2577 = fdiv fast float 1.000000e+00, %2576
  %2578 = fmul fast float %2408, %2407
  %2579 = fsub fast float %2409, %2578
  %2580 = fsub fast float %2573, %2407
  %2581 = fmul fast float %2573, %2573
  %2582 = fsub fast float %2581, %2408
  %2583 = fmul fast float %2577, %2579
  %2584 = fmul fast float %2583, %2580
  %2585 = fsub fast float %2582, %2584
  %2586 = fmul fast float %2408, %2408
  %2587 = fsub fast float %2410, %2586
  %2588 = fmul fast float %2579, %2579
  %2589 = fmul fast float %2588, %2577
  %2590 = fsub fast float %2587, %2589
  %2591 = fdiv fast float %2585, %2590
  %2592 = fmul fast float %2591, %2579
  %2593 = fsub fast float %2580, %2592
  %2594 = fmul fast float %2593, %2577
  %2595 = fmul fast float %2594, %2407
  %2596 = fsub fast float 1.000000e+00, %2595
  %2597 = fmul fast float %2591, %2408
  %2598 = fsub fast float %2596, %2597
  %2599 = fmul fast float %2594, %2594
  %2600 = fmul fast float %2591, 4.000000e+00
  %2601 = fmul fast float %2600, %2598
  %2602 = fsub fast float %2599, %2601
  %2603 = call float @dx.op.unary.f32(i32 24, float %2602)  ; Sqrt(value)
  %2604 = fcmp fast oge float %2594, 0.000000e+00
  %2605 = fsub fast float -0.000000e+00, %2603
  %2606 = select i1 %2604, float %2605, float %2603
  %2607 = fsub fast float %2606, %2594
  %2608 = fdiv fast float %2607, %2591
  %2609 = fdiv fast float %2598, %2607
  %2610 = fmul fast float %2608, 5.000000e-01
  %2611 = fmul fast float %2609, 2.000000e+00
  %2612 = select i1 %2604, float %2610, float %2611
  %2613 = select i1 %2604, float %2611, float %2610
  %2614 = call float @dx.op.binary.f32(i32 35, float %2612, float %2613)  ; FMax(a,b)
  %2615 = call float @dx.op.binary.f32(i32 36, float %2612, float %2613)  ; FMin(a,b)
  %2616 = fcmp fast ogt float %2573, %2614
  %2617 = fsub fast float %2573, %2615
  %2618 = fsub fast float %2573, %2614
  %2619 = fsub fast float %2614, %2615
  %2620 = select i1 %2616, float %2618, float %2619
  %2621 = fmul float %2617, %2620
  %2622 = select i1 %2616, float %2615, float %2573
  %2623 = fcmp fast ogt float %2573, %2615
  %2624 = fmul fast float %2622, %2614
  %2625 = fadd fast float %2622, %2614
  %2626 = fmul fast float %2625, %2407
  %2627 = fadd fast float %2624, %2408
  %2628 = fsub fast float %2627, %2626
  %2629 = fdiv fast float %2628, %2621
  %2630 = select i1 %2623, float %2629, float 0.000000e+00
  %2631 = fsub fast float 1.000000e+00, %2630
  %2632 = select i1 %2616, float %2631, float %2630
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2635 = fmul fast float %2634, %2633
  %2636 = fsub fast float 1.000000e+00, %2635
  br label %2637

; <label>:2637                                    ; preds = %2566, %2244, %1970, %1928
  %2638 = phi float [ 1.000000e+00, %1928 ], [ %2636, %2566 ], [ 1.000000e+00, %1970 ], [ 1.000000e+00, %2244 ]
  %2639 = fcmp fast ogt float %1963, 0.000000e+00
  br i1 %2639, label %2640, label %2652, !dx.controlflow.hints !83

; <label>:2640                                    ; preds = %2637
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 2
  %2645 = fmul fast float %2642, %181
  %2646 = fadd fast float %2644, %208
  %2647 = fadd fast float %2646, %2645
  %2648 = call float @dx.op.binary.f32(i32 35, float %2647, float 0.000000e+00)  ; FMax(a,b)
  %2649 = fadd fast float %2648, 0x3F10000000000000
  %2650 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %1859, float %1860, float undef, float undef, i32 0, i32 0, i32 undef, float %2649)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2651 = extractvalue %dx.types.ResRet.f32 %2650, 0
  br label %2652

; <label>:2652                                    ; preds = %2640, %2637
  %2653 = phi float [ %2651, %2640 ], [ 1.000000e+00, %2637 ]
  %2654 = fcmp fast ogt float %1961, 0.000000e+00
  br i1 %2654, label %2655, label %2667, !dx.controlflow.hints !84

; <label>:2655                                    ; preds = %2652
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 2
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 1
  %2660 = fmul fast float %2657, %181
  %2661 = fadd fast float %2659, %208
  %2662 = fadd fast float %2661, %2660
  %2663 = call float @dx.op.binary.f32(i32 35, float %2662, float 0.000000e+00)  ; FMax(a,b)
  %2664 = fadd fast float %2663, 0x3F10000000000000
  %2665 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %1851, float %1852, float undef, float undef, i32 0, i32 0, i32 undef, float %2664)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2666 = extractvalue %dx.types.ResRet.f32 %2665, 0
  br label %2667

; <label>:2667                                    ; preds = %2655, %2652
  %2668 = phi float [ %2666, %2655 ], [ 1.000000e+00, %2652 ]
  %2669 = fcmp fast ogt float %1960, 0.000000e+00
  br i1 %2669, label %2670, label %2686, !dx.controlflow.hints !85

; <label>:2670                                    ; preds = %2667
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 2
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = fmul fast float %2672, %181
  %2676 = fadd fast float %2674, %208
  %2677 = fadd fast float %2676, %2675
  %2678 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2679 = fadd fast float %2678, 0x3F10000000000000
  br i1 %74, label %2680, label %2683, !dx.controlflow.hints !86

; <label>:2680                                    ; preds = %2670
  %2681 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %31, float %200, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float %2679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  br label %2686

; <label>:2683                                    ; preds = %2670
  %2684 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %31, float %200, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float %2679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  br label %2686

; <label>:2686                                    ; preds = %2683, %2680, %2667
  %2687 = phi float [ %2682, %2680 ], [ %2685, %2683 ], [ 1.000000e+00, %2667 ]
  %2688 = fsub fast float %2653, %2638
  %2689 = fmul fast float %2688, %1930
  %2690 = fadd fast float %2689, %2638
  %2691 = fsub fast float %2668, %2690
  %2692 = fmul fast float %2691, %1929
  %2693 = fadd fast float %2692, %2690
  %2694 = fsub fast float %2687, %2693
  %2695 = fmul fast float %2694, %1960
  %2696 = fadd fast float %2695, %2693
  br label %2697

; <label>:2697                                    ; preds = %2686, %1833, %989, %918, %596, %322, %319, %298, %277, %256, %235
  %2698 = phi float [ %2696, %2686 ], [ %253, %235 ], [ %274, %256 ], [ %295, %277 ], [ %316, %298 ], [ %1843, %1833 ], [ %988, %918 ], [ 1.000000e+00, %322 ], [ 1.000000e+00, %596 ], [ 1.000000e+00, %319 ], [ 0.000000e+00, %989 ]
  %2699 = fcmp fast une float %2698, 0.000000e+00
  br i1 %2699, label %2700, label %2908, !dx.controlflow.hints !87

; <label>:2700                                    ; preds = %2697
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.CBufRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.CBufRet.f32 %2701, 2
  %2705 = extractvalue %dx.types.CBufRet.f32 %2701, 3
  %2706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2707 = extractvalue %dx.types.CBufRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.CBufRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.CBufRet.f32 %2706, 2
  %2710 = extractvalue %dx.types.CBufRet.f32 %2706, 3
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.CBufRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.CBufRet.f32 %2711, 2
  %2715 = extractvalue %dx.types.CBufRet.f32 %2711, 3
  %2716 = fmul fast float %2702, %135
  %2717 = call float @dx.op.tertiary.f32(i32 46, float %136, float %2703, float %2716)  ; FMad(a,b,c)
  %2718 = call float @dx.op.tertiary.f32(i32 46, float %137, float %2704, float %2717)  ; FMad(a,b,c)
  %2719 = fadd fast float %2718, %2705
  %2720 = fmul fast float %2707, %135
  %2721 = call float @dx.op.tertiary.f32(i32 46, float %136, float %2708, float %2720)  ; FMad(a,b,c)
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %137, float %2709, float %2721)  ; FMad(a,b,c)
  %2723 = fadd fast float %2722, %2710
  %2724 = fmul fast float %2712, %135
  %2725 = call float @dx.op.tertiary.f32(i32 46, float %136, float %2713, float %2724)  ; FMad(a,b,c)
  %2726 = call float @dx.op.tertiary.f32(i32 46, float %137, float %2714, float %2725)  ; FMad(a,b,c)
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.CBufRet.f32 %2727, 3
  %2731 = fmul fast float %2730, %2719
  %2732 = fmul fast float %2730, %2723
  %2733 = fadd fast float %2731, %2728
  %2734 = fadd fast float %2732, %2729
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.CBufRet.f32 %2735, 1
  %2738 = fsub fast float %2733, %2736
  %2739 = fsub fast float %2734, %2737
  %2740 = fcmp fast olt float %2738, 0.000000e+00
  %2741 = fcmp fast olt float %2739, 0.000000e+00
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2746 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2747 = select i1 %2740, float %2743, float %2745
  %2748 = select i1 %2741, float %2744, float %2746
  %2749 = fmul fast float %2747, %2738
  %2750 = fmul fast float %2748, %2739
  %2751 = call float @dx.op.unary.f32(i32 6, float %2749)  ; FAbs(value)
  %2752 = call float @dx.op.unary.f32(i32 6, float %2750)  ; FAbs(value)
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 0
  %2755 = call float @dx.op.binary.f32(i32 35, float %2751, float %2752)  ; FMax(a,b)
  %2756 = fsub fast float %2754, %2755
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fcmp fast ogt float %2757, 0.000000e+00
  br i1 %2758, label %2759, label %2800, !dx.controlflow.hints !88

; <label>:2759                                    ; preds = %2700
  %2760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %29, float %2733, float %2734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2762 = fcmp fast ogt float %2761, 0.000000e+00
  br i1 %2762, label %2763, label %2795, !dx.controlflow.hints !89

; <label>:2763                                    ; preds = %2759
  %2764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %29, float %2733, float %2734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = extractvalue %dx.types.ResRet.f32 %2764, 3
  %2769 = fsub fast float 1.000000e+00, %2715
  %2770 = fsub fast float %2769, %2726
  %2771 = fmul fast float %2770, 0x400921FB60000000
  %2772 = fadd fast float %2771, 0x3FF921FB60000000
  %2773 = call float @dx.op.unary.f32(i32 13, float %2772)  ; Sin(value)
  %2774 = fadd fast float %2773, -1.000000e+00
  %2775 = fmul fast float %2774, 0x3FD45F3060000000
  %2776 = fmul fast float %2770, 0x401921FB60000000
  %2777 = fadd fast float %2776, 0x400921FB60000000
  %2778 = call float @dx.op.unary.f32(i32 13, float %2777)  ; Sin(value)
  %2779 = fadd fast float %2778, 0x3E7777A5C0000000
  %2780 = fmul fast float %2779, 0x3FC45F3060000000
  %2781 = fmul fast float %2770, 0x4022D97C80000000
  %2782 = fadd fast float %2781, 0x4012D97C80000000
  %2783 = call float @dx.op.unary.f32(i32 13, float %2782)  ; Sin(value)
  %2784 = fadd fast float %2783, 1.000000e+00
  %2785 = fmul fast float %2784, 0x3FBB2995E0000000
  %2786 = fmul fast float %2770, 0x402921FB60000000
  %2787 = fadd fast float %2786, 0x401921FB60000000
  %2788 = call float @dx.op.unary.f32(i32 13, float %2787)  ; Sin(value)
  %2789 = fadd fast float %2788, 0xBE8777A5C0000000
  %2790 = fmul fast float %2789, 0x3FB45F3060000000
  %2791 = call float @dx.op.dot4.f32(i32 56, float %2765, float %2766, float %2767, float %2768, float %2775, float %2780, float %2785, float %2790)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2792 = fmul fast float %2791, 0xBFF7154760000000
  %2793 = call float @dx.op.unary.f32(i32 21, float %2792)  ; Exp(value)
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  br label %2795

; <label>:2795                                    ; preds = %2763, %2759
  %2796 = phi float [ %2794, %2763 ], [ 1.000000e+00, %2759 ]
  %2797 = fadd fast float %2796, -1.000000e+00
  %2798 = fmul fast float %2797, %2757
  %2799 = fadd fast float %2798, 1.000000e+00
  br label %2800

; <label>:2800                                    ; preds = %2795, %2700
  %2801 = phi float [ %2799, %2795 ], [ 1.000000e+00, %2700 ]
  %2802 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2803 = fmul fast float %2802, %2698
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2806 = fcmp fast ugt float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2842, !dx.controlflow.hints !90

; <label>:2807                                    ; preds = %2800
  %2808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2809 = extractvalue %dx.types.CBufRet.f32 %2808, 0
  %2810 = extractvalue %dx.types.CBufRet.f32 %2808, 1
  %2811 = extractvalue %dx.types.CBufRet.f32 %2808, 2
  %2812 = extractvalue %dx.types.CBufRet.f32 %2808, 3
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2817 = extractvalue %dx.types.CBufRet.f32 %2813, 3
  %2818 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2819 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2824 = fadd fast float %2821, %135
  %2825 = fadd fast float %2822, %136
  %2826 = fadd fast float %2823, %137
  %2827 = fmul fast float %2824, %2809
  %2828 = call float @dx.op.tertiary.f32(i32 46, float %2810, float %2825, float %2827)  ; FMad(a,b,c)
  %2829 = call float @dx.op.tertiary.f32(i32 46, float %2811, float %2826, float %2828)  ; FMad(a,b,c)
  %2830 = fadd fast float %2829, %2812
  %2831 = fmul fast float %2824, %2814
  %2832 = call float @dx.op.tertiary.f32(i32 46, float %2815, float %2825, float %2831)  ; FMad(a,b,c)
  %2833 = call float @dx.op.tertiary.f32(i32 46, float %2816, float %2826, float %2832)  ; FMad(a,b,c)
  %2834 = fadd fast float %2833, %2817
  %2835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2830, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = fmul fast float %2836, %2819
  %2838 = fadd fast float %2837, %2818
  %2839 = call float @dx.op.unary.f32(i32 7, float %2838)  ; Saturate(value)
  %2840 = fmul fast float %2839, %2805
  %2841 = fsub fast float 1.000000e+00, %2840
  br label %2842

; <label>:2842                                    ; preds = %2807, %2800
  %2843 = phi float [ %2841, %2807 ], [ 1.000000e+00, %2800 ]
  %2844 = fmul fast float %2803, %2843
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.CBufRet.f32 %2845, 2
  %2849 = fadd fast float %2846, %135
  %2850 = fadd fast float %2847, %136
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 1
  %2853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2854 = extractvalue %dx.types.CBufRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.CBufRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.CBufRet.f32 %2853, 2
  %2857 = fsub fast float -0.000000e+00, %2849
  %2858 = fsub fast float -0.000000e+00, %2850
  %2859 = fsub fast float -0.000000e+00, %137
  %2860 = fsub fast float %2859, %2848
  %2861 = fadd fast float %2860, %2852
  %2862 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2857, float %2858, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2854, float %2855, float %2856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2864 = fdiv fast float 1.000000e+00, %2863
  %2865 = fmul fast float %2864, %2862
  %2866 = fmul fast float %2854, %2865
  %2867 = fmul fast float %2855, %2865
  %2868 = fadd fast float %2866, %2849
  %2869 = fadd fast float %2867, %2850
  %2870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2871 = extractvalue %dx.types.CBufRet.f32 %2870, 0
  %2872 = extractvalue %dx.types.CBufRet.f32 %2870, 1
  %2873 = fsub fast float %2868, %2871
  %2874 = fsub fast float %2869, %2872
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 2
  %2877 = extractvalue %dx.types.CBufRet.f32 %2875, 3
  %2878 = fmul fast float %2873, %2876
  %2879 = fmul fast float %2874, %2877
  %2880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2881 = extractvalue %dx.types.CBufRet.i32 %2880, 3
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2888, label %2883, !dx.controlflow.hints !91

; <label>:2883                                    ; preds = %2842
  %2884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %2878, float %2879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2885 = extractvalue %dx.types.ResRet.f32 %2884, 0
  %2886 = extractvalue %dx.types.ResRet.f32 %2884, 1
  %2887 = extractvalue %dx.types.ResRet.f32 %2884, 2
  br label %2893

; <label>:2888                                    ; preds = %2842
  %2889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %2878, float %2879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.ResRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.ResRet.f32 %2889, 2
  br label %2893

; <label>:2893                                    ; preds = %2888, %2883
  %2894 = phi float [ %2885, %2883 ], [ %2890, %2888 ]
  %2895 = phi float [ %2886, %2883 ], [ %2891, %2888 ]
  %2896 = phi float [ %2887, %2883 ], [ %2892, %2888 ]
  %2897 = extractvalue %dx.types.CBufRet.f32 %2851, 2
  %2898 = fmul fast float %2897, %2894
  %2899 = extractvalue %dx.types.CBufRet.f32 %2851, 0
  %2900 = fsub fast float %2865, %2899
  %2901 = fsub fast float %2900, %2898
  %2902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2901)  ; FMax(a,b)
  %2903 = fmul fast float %2902, %2895
  %2904 = call float @dx.op.binary.f32(i32 36, float %2896, float %2903)  ; FMin(a,b)
  %2905 = fmul fast float %2904, 0xBFF7154760000000
  %2906 = call float @dx.op.unary.f32(i32 21, float %2905)  ; Exp(value)
  %2907 = fmul fast float %2844, %2906
  br label %2908

; <label>:2908                                    ; preds = %2893, %2697
  %2909 = phi float [ %2907, %2893 ], [ %2698, %2697 ]
  %2910 = fcmp fast ogt float %2909, 0.000000e+00
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2913 = fcmp fast ogt float %171, %2912
  %2914 = and i1 %2910, %2913
  br i1 %2914, label %2915, label %3184, !dx.controlflow.hints !92

; <label>:2915                                    ; preds = %2908
  %2916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.i32 %2916, 0
  %2918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.i32 %2918, 0
  %2920 = select i1 %74, i32 %2917, i32 %2919
  %2921 = icmp sgt i32 %2920, 0
  br i1 %2921, label %2922, label %3184, !dx.controlflow.hints !93

; <label>:2922                                    ; preds = %2915
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 1
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2927 = select i1 %74, float %2924, float %2926
  %2928 = extractvalue %dx.types.CBufRet.f32 %2923, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2930 = select i1 %74, float %2928, float %2929
  %2931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.i32 %2931, 0
  %2933 = uitofp i32 %2932 to float
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 2
  %2936 = extractvalue %dx.types.CBufRet.f32 %2934, 3
  %2937 = fmul fast float %2935, 5.000000e-01
  %2938 = fmul fast float %2936, 5.000000e-01
  %2939 = fsub fast float %70, %2937
  %2940 = fsub fast float %71, %2938
  %2941 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %24, %dx.types.Handle %30, float %2939, float %2940, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = fcmp fast ogt float %2942, -1.000000e+00
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2948 = select i1 %2945, float %2947, float 1.000000e+00
  %2949 = fadd fast float %2942, 1.000000e+00
  %2950 = fmul fast float %2948, %2949
  %2951 = call float @dx.op.unary.f32(i32 6, float %2950)  ; FAbs(value)
  %2952 = fcmp fast ogt float %2943, -1.000000e+00
  %2953 = select i1 %2952, float %2947, float 1.000000e+00
  %2954 = fadd fast float %2943, 1.000000e+00
  %2955 = fmul fast float %2953, %2954
  %2956 = call float @dx.op.unary.f32(i32 6, float %2955)  ; FAbs(value)
  %2957 = fcmp fast ogt float %2944, -1.000000e+00
  %2958 = select i1 %2957, float %2947, float 1.000000e+00
  %2959 = fadd fast float %2944, 1.000000e+00
  %2960 = fmul fast float %2958, %2959
  %2961 = call float @dx.op.unary.f32(i32 6, float %2960)  ; FAbs(value)
  %2962 = fadd fast float %2937, %70
  %2963 = fadd fast float %2938, %71
  %2964 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %24, %dx.types.Handle %30, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2967 = fcmp fast ogt float %2965, -1.000000e+00
  %2968 = select i1 %2967, float %2947, float 1.000000e+00
  %2969 = fadd fast float %2965, 1.000000e+00
  %2970 = fmul fast float %2968, %2969
  %2971 = call float @dx.op.unary.f32(i32 6, float %2970)  ; FAbs(value)
  %2972 = fcmp fast ogt float %2966, -1.000000e+00
  %2973 = select i1 %2972, float %2947, float 1.000000e+00
  %2974 = fadd fast float %2966, 1.000000e+00
  %2975 = fmul fast float %2973, %2974
  %2976 = call float @dx.op.unary.f32(i32 6, float %2975)  ; FAbs(value)
  %2977 = fsub fast float %2961, %2956
  %2978 = fsub fast float %2971, %2956
  %2979 = fsub fast float %2951, %2956
  %2980 = fsub fast float %2976, %2956
  %2981 = call float @dx.op.unary.f32(i32 6, float %2978)  ; FAbs(value)
  %2982 = call float @dx.op.unary.f32(i32 6, float %2977)  ; FAbs(value)
  %2983 = call float @dx.op.binary.f32(i32 35, float %2982, float %2981)  ; FMax(a,b)
  %2984 = call float @dx.op.unary.f32(i32 6, float %2980)  ; FAbs(value)
  %2985 = call float @dx.op.unary.f32(i32 6, float %2979)  ; FAbs(value)
  %2986 = call float @dx.op.binary.f32(i32 35, float %2985, float %2984)  ; FMax(a,b)
  %2987 = fadd fast float %2978, %2977
  %2988 = call float @dx.op.unary.f32(i32 6, float %2987)  ; FAbs(value)
  %2989 = fadd fast float %2980, %2979
  %2990 = call float @dx.op.unary.f32(i32 6, float %2989)  ; FAbs(value)
  %2991 = fsub fast float %2986, %2990
  %2992 = call float @dx.op.unary.f32(i32 6, float %2991)  ; FAbs(value)
  %2993 = fsub fast float %2983, %2988
  %2994 = call float @dx.op.unary.f32(i32 6, float %2993)  ; FAbs(value)
  %2995 = call float @dx.op.binary.f32(i32 35, float %2994, float %2992)  ; FMax(a,b)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2997 = extractvalue %dx.types.CBufRet.f32 %2934, 1
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.CBufRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.CBufRet.f32 %2998, 2
  %3002 = extractvalue %dx.types.CBufRet.f32 %2998, 3
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.CBufRet.f32 %3003, 2
  %3007 = extractvalue %dx.types.CBufRet.f32 %3003, 3
  %3008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3009 = extractvalue %dx.types.CBufRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.CBufRet.f32 %3008, 1
  %3011 = extractvalue %dx.types.CBufRet.f32 %3008, 2
  %3012 = extractvalue %dx.types.CBufRet.f32 %3008, 3
  %3013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.CBufRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.CBufRet.f32 %3013, 2
  %3017 = extractvalue %dx.types.CBufRet.f32 %3013, 3
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = extractvalue %dx.types.CBufRet.f32 %3018, 1
  %3021 = extractvalue %dx.types.CBufRet.f32 %3018, 2
  %3022 = extractvalue %dx.types.CBufRet.f32 %3018, 3
  %3023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.CBufRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.CBufRet.f32 %3023, 2
  %3027 = extractvalue %dx.types.CBufRet.f32 %3023, 3
  %3028 = select i1 %74, float %2999, float %3014
  %3029 = select i1 %74, float %3004, float %3019
  %3030 = select i1 %74, float %3009, float %3024
  %3031 = select i1 %74, float %3000, float %3015
  %3032 = select i1 %74, float %3005, float %3020
  %3033 = select i1 %74, float %3010, float %3025
  %3034 = select i1 %74, float %3001, float %3016
  %3035 = select i1 %74, float %3006, float %3021
  %3036 = select i1 %74, float %3011, float %3026
  %3037 = select i1 %74, float %3002, float %3017
  %3038 = select i1 %74, float %3007, float %3022
  %3039 = select i1 %74, float %3012, float %3027
  %3040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3041 = extractvalue %dx.types.CBufRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.CBufRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.CBufRet.f32 %3040, 2
  %3044 = fdiv fast float 1.000000e+00, %81
  %3045 = fmul fast float %2935, %65
  %3046 = fmul fast float %2936, %66
  %3047 = fmul fast float %3041, %2927
  %3048 = fmul fast float %3042, %2927
  %3049 = fmul fast float %3043, %2927
  %3050 = fadd fast float %3047, %135
  %3051 = fadd fast float %3048, %136
  %3052 = fadd fast float %3049, %137
  %3053 = fmul fast float %3050, %3028
  %3054 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3031, float %3053)  ; FMad(a,b,c)
  %3055 = call float @dx.op.tertiary.f32(i32 46, float %3052, float %3034, float %3054)  ; FMad(a,b,c)
  %3056 = fadd fast float %3055, %3037
  %3057 = fmul fast float %3050, %3029
  %3058 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3032, float %3057)  ; FMad(a,b,c)
  %3059 = call float @dx.op.tertiary.f32(i32 46, float %3052, float %3035, float %3058)  ; FMad(a,b,c)
  %3060 = fadd fast float %3059, %3038
  %3061 = fmul fast float %3050, %3030
  %3062 = call float @dx.op.tertiary.f32(i32 46, float %3051, float %3033, float %3061)  ; FMad(a,b,c)
  %3063 = call float @dx.op.tertiary.f32(i32 46, float %3052, float %3036, float %3062)  ; FMad(a,b,c)
  %3064 = fadd fast float %3063, %3039
  %3065 = fdiv fast float 1.000000e+00, %3064
  %3066 = fmul fast float %3056, 5.000000e-01
  %3067 = fmul fast float %3060, -5.000000e-01
  %3068 = fmul fast float %3066, %3065
  %3069 = fmul fast float %3067, %3065
  %3070 = fsub fast float 5.000000e-01, %3045
  %3071 = fadd fast float %3070, %3068
  %3072 = fsub fast float 5.000000e-01, %3046
  %3073 = fadd fast float %3072, %3069
  %3074 = fsub fast float %3065, %3044
  %3075 = call float @dx.op.dot2.f32(i32 54, float %3071, float %3073, float %3071, float %3073)  ; Dot2(ax,ay,bx,by)
  %3076 = call float @dx.op.binary.f32(i32 35, float %3075, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %3077 = call float @dx.op.dot2.f32(i32 54, float %2996, float %2997, float %2996, float %2997)  ; Dot2(ax,ay,bx,by)
  %3078 = fmul fast float %3077, %3076
  %3079 = call float @dx.op.unary.f32(i32 25, float %3078)  ; Rsqrt(value)
  %3080 = fmul fast float %3079, %3071
  %3081 = fmul fast float %3079, %3073
  %3082 = fadd fast float %3080, %3045
  %3083 = fadd fast float %3081, %3046
  %3084 = fmul fast float %3071, %2996
  %3085 = fmul fast float %3073, %2997
  %3086 = fmul fast float %3084, %3084
  %3087 = fmul fast float %3085, %3085
  %3088 = fadd fast float %3086, %3087
  %3089 = call float @dx.op.unary.f32(i32 24, float %3088)  ; Sqrt(value)
  %3090 = fdiv fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3089, 3.906250e-03
  %3092 = fmul fast float %2995, 0x3F70624DE0000000
  %3093 = fadd fast float %3092, 0x3F70624DE0000000
  br label %3094

; <label>:3094                                    ; preds = %3150, %2922
  %3095 = phi float [ %3126, %3150 ], [ %81, %2922 ]
  %3096 = phi float [ %3113, %3150 ], [ %81, %2922 ]
  %3097 = phi float [ %3096, %3150 ], [ %81, %2922 ]
  %3098 = phi i32 [ %3151, %3150 ], [ 0, %2922 ]
  %3099 = sitofp i32 %3098 to float
  %3100 = fadd fast float %219, 5.000000e-01
  %3101 = call float @dx.op.unary.f32(i32 22, float %3100)  ; Frc(value)
  %3102 = fadd fast float %3099, %3101
  %3103 = sitofp i32 %2920 to float
  %3104 = fdiv fast float %3102, %3103
  %3105 = fmul fast float %3104, %3104
  %3106 = call float @dx.op.binary.f32(i32 36, float %3105, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3107 = fmul fast float %3106, %3071
  %3108 = fmul fast float %3106, %3073
  %3109 = fmul fast float %3106, %3074
  %3110 = fadd fast float %3107, %3082
  %3111 = fadd fast float %3108, %3083
  %3112 = fadd fast float %3109, %3044
  %3113 = fdiv fast float 1.000000e+00, %3112
  %3114 = icmp ne i32 %2932, 0
  %3115 = fmul fast float %3091, %3106
  %3116 = call float @dx.op.binary.f32(i32 36, float %3115, float %2933)  ; FMin(a,b)
  %3117 = select i1 %3114, float %3116, float 0.000000e+00
  %3118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %3110, float %3111, float undef, float undef, i32 0, i32 0, i32 undef, float %3117)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = fcmp fast ogt float %3119, -1.000000e+00
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 1
  %3123 = select i1 %3120, float %3122, float 1.000000e+00
  %3124 = fadd fast float %3119, 1.000000e+00
  %3125 = fmul fast float %3123, %3124
  %3126 = call float @dx.op.unary.f32(i32 6, float %3125)  ; FAbs(value)
  %3127 = fmul fast float %3126, %3093
  %3128 = fsub fast float %3113, %3126
  %3129 = fsub fast float %3128, %3127
  %3130 = fcmp fast ogt float %3129, 0.000000e+00
  %3131 = fcmp fast ogt float %2930, 0.000000e+00
  br i1 %3131, label %3132, label %3135, !dx.controlflow.hints !94

; <label>:3132                                    ; preds = %3094
  %3133 = fsub fast float %3113, %3097
  %3134 = call float @dx.op.binary.f32(i32 35, float %3133, float %2930)  ; FMax(a,b)
  br label %3135

; <label>:3135                                    ; preds = %3132, %3094
  %3136 = phi float [ %3134, %3132 ], [ %2927, %3094 ]
  %3137 = fcmp fast olt float %3129, %3136
  %3138 = fcmp uge float %3119, -1.000000e+00
  %3139 = xor i1 %74, %3138
  %3140 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3141 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3142 = fcmp fast oeq float %3110, %3140
  %3143 = fcmp fast oeq float %3111, %3141
  %3144 = and i1 %3142, %3143
  %3145 = and i1 %3139, %3144
  %3146 = and i1 %3130, %3137
  %3147 = and i1 %3146, %3145
  %3148 = fcmp fast ogt float %3106, %3090
  %3149 = and i1 %3148, %3147
  br i1 %3149, label %3153, label %3150, !dx.controlflow.hints !95

; <label>:3150                                    ; preds = %3135
  %3151 = add nuw nsw i32 %3098, 1
  %3152 = icmp slt i32 %3098, %2920
  br i1 %3152, label %3094, label %3153

; <label>:3153                                    ; preds = %3150, %3135
  %3154 = phi i1 [ false, %3150 ], [ true, %3135 ]
  %3155 = fsub fast float %3096, %3095
  %3156 = fsub fast float %3155, %3128
  %3157 = fcmp fast une float %3156, 0.000000e+00
  %3158 = fmul fast float %3113, %3155
  %3159 = fmul fast float %3128, %3096
  %3160 = fsub fast float %3158, %3159
  %3161 = fdiv fast float 1.000000e+00, %3156
  %3162 = fmul fast float %3161, %3160
  %3163 = select i1 %3157, float %3162, float %3113
  %3164 = fdiv fast float 1.000000e+00, %3163
  %3165 = fsub fast float %3164, %3044
  %3166 = fdiv fast float %3165, %3074
  %3167 = call float @dx.op.unary.f32(i32 7, float %3166)  ; Saturate(value)
  %3168 = fmul fast float %3167, %3071
  %3169 = fmul fast float %3167, %3073
  %3170 = fadd fast float %3082, -5.000000e-01
  %3171 = fadd fast float %3170, %3168
  %3172 = fadd fast float %3083, -5.000000e-01
  %3173 = fadd fast float %3172, %3169
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3176 = fadd fast float %3174, -5.000000e-01
  %3177 = fadd fast float %3175, -5.000000e-01
  %3178 = call float @dx.op.binary.f32(i32 35, float %3176, float %3177)  ; FMax(a,b)
  %3179 = fcmp fast olt float %3178, 0.000000e+00
  %3180 = or i1 %74, %3179
  %3181 = and i1 %3154, %3180
  %3182 = select i1 %3181, float 0.000000e+00, float 1.000000e+00
  %3183 = call float @dx.op.binary.f32(i32 36, float %2909, float %3182)  ; FMin(a,b)
  br label %3184

; <label>:3184                                    ; preds = %3153, %2915, %2908
  %3185 = phi float [ %3183, %3153 ], [ %2909, %2915 ], [ %2909, %2908 ]
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 114688
  %3189 = icmp ne i32 %3188, 0
  %3190 = fcmp fast ogt float %3185, 0.000000e+00
  %3191 = and i1 %3190, %3189
  br i1 %3191, label %3192, label %3624, !dx.controlflow.hints !96

; <label>:3192                                    ; preds = %3184
  %3193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %63, i32 %64, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3194 = extractvalue %dx.types.ResRet.f32 %3193, 0
  %3195 = fmul fast float %3194, 2.550000e+02
  %3196 = fptoui float %3195 to i32
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3537, label %3198, !dx.controlflow.hints !97

; <label>:3198                                    ; preds = %3192
  %3199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3200 = extractvalue %dx.types.CBufRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.CBufRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.CBufRet.f32 %3199, 2
  %3203 = fadd fast float %3200, %135
  %3204 = fadd fast float %3201, %136
  %3205 = fadd fast float %3202, %137
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = extractvalue %dx.types.CBufRet.f32 %3206, 1
  %3209 = fsub fast float %3203, %3207
  %3210 = fsub fast float %3204, %3208
  %3211 = fmul fast float %3209, %3209
  %3212 = fmul fast float %3210, %3210
  %3213 = fadd fast float %3211, %3212
  %3214 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3206, 2
  %3216 = fcmp fast olt float %3214, %3215
  br i1 %3216, label %3217, label %3282, !dx.controlflow.hints !98

; <label>:3217                                    ; preds = %3198
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3220, 1
  %3226 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3227 = extractvalue %dx.types.CBufRet.f32 %3218, 3
  %3228 = extractvalue %dx.types.CBufRet.f32 %3220, 3
  %3229 = extractvalue %dx.types.CBufRet.f32 %3222, 3
  %3230 = fadd fast float %3227, %3203
  %3231 = fadd fast float %3228, %3204
  %3232 = fadd fast float %3229, %3205
  %3233 = fmul fast float %3230, %3219
  %3234 = call float @dx.op.tertiary.f32(i32 46, float %3231, float %3221, float %3233)  ; FMad(a,b,c)
  %3235 = call float @dx.op.tertiary.f32(i32 46, float %3232, float %3223, float %3234)  ; FMad(a,b,c)
  %3236 = fmul fast float %3230, %3224
  %3237 = call float @dx.op.tertiary.f32(i32 46, float %3231, float %3225, float %3236)  ; FMad(a,b,c)
  %3238 = call float @dx.op.tertiary.f32(i32 46, float %3232, float %3226, float %3237)  ; FMad(a,b,c)
  %3239 = fsub fast float %3235, %3227
  %3240 = fsub fast float %3238, %3228
  %3241 = fsub fast float %3239, %3207
  %3242 = fadd fast float %3241, %3215
  %3243 = fsub fast float %3240, %3208
  %3244 = fadd fast float %3243, %3215
  %3245 = extractvalue %dx.types.CBufRet.f32 %3206, 3
  %3246 = fmul fast float %3242, %3245
  %3247 = fmul fast float %3244, %3245
  %3248 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3249 = call float @dx.op.unary.f32(i32 7, float %3247)  ; Saturate(value)
  %3250 = fsub fast float 1.000000e+00, %3248
  %3251 = fsub fast float 1.000000e+00, %3249
  %3252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %29, float %3250, float %3251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = fcmp fast ugt float %3253, 0.000000e+00
  br i1 %3254, label %3255, label %3537, !dx.controlflow.hints !99

; <label>:3255                                    ; preds = %3217
  %3256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3257 = extractvalue %dx.types.CBufRet.f32 %3256, 2
  %3258 = fmul fast float %3257, %3253
  %3259 = extractvalue %dx.types.CBufRet.f32 %3256, 3
  %3260 = fadd fast float %3259, %3258
  %3261 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3262 = fadd fast float %3260, %3229
  %3263 = fmul fast float %3235, %3223
  %3264 = call float @dx.op.tertiary.f32(i32 46, float %3238, float %3226, float %3263)  ; FMad(a,b,c)
  %3265 = call float @dx.op.tertiary.f32(i32 46, float %3262, float %3261, float %3264)  ; FMad(a,b,c)
  %3266 = fsub fast float %3265, %3229
  %3267 = fsub fast float %3266, %3202
  %3268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %29, float %3250, float %3251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %3250, float %3251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.ResRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.ResRet.f32 %3272, 2
  %3276 = fadd fast float %3273, %3269
  %3277 = fmul fast float %3276, 0x3F847AE140000000
  %3278 = fadd fast float %3274, %3270
  %3279 = fmul fast float %3278, 0x3F847AE140000000
  %3280 = fadd fast float %3275, %3271
  %3281 = fmul fast float %3280, 0x3F847AE140000000
  br label %3537

; <label>:3282                                    ; preds = %3198
  %3283 = and i32 %3196, -3
  %3284 = icmp eq i32 %3283, 1
  br i1 %3284, label %3285, label %3537, !dx.controlflow.hints !100

; <label>:3285                                    ; preds = %3282
  %3286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3287 = extractvalue %dx.types.CBufRet.f32 %3286, 0
  %3288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3288, 0
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.CBufRet.f32 %3286, 1
  %3293 = extractvalue %dx.types.CBufRet.f32 %3288, 1
  %3294 = extractvalue %dx.types.CBufRet.f32 %3290, 1
  %3295 = extractvalue %dx.types.CBufRet.f32 %3286, 3
  %3296 = extractvalue %dx.types.CBufRet.f32 %3288, 3
  %3297 = extractvalue %dx.types.CBufRet.f32 %3290, 3
  %3298 = fadd fast float %3295, %3203
  %3299 = fadd fast float %3296, %3204
  %3300 = fadd fast float %3297, %3205
  %3301 = fmul fast float %3298, %3287
  %3302 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3289, float %3301)  ; FMad(a,b,c)
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3300, float %3291, float %3302)  ; FMad(a,b,c)
  %3304 = fmul fast float %3298, %3292
  %3305 = call float @dx.op.tertiary.f32(i32 46, float %3299, float %3293, float %3304)  ; FMad(a,b,c)
  %3306 = call float @dx.op.tertiary.f32(i32 46, float %3300, float %3294, float %3305)  ; FMad(a,b,c)
  %3307 = fsub fast float %3303, %3295
  %3308 = fsub fast float %3306, %3296
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 0
  %3311 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3312 = extractvalue %dx.types.CBufRet.f32 %3309, 2
  %3313 = extractvalue %dx.types.CBufRet.f32 %3309, 3
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 3
  %3316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3317 = extractvalue %dx.types.CBufRet.i32 %3316, 0
  %3318 = extractvalue %dx.types.CBufRet.i32 %3316, 1
  %3319 = udiv i32 %3318, %3317
  %3320 = fsub fast float %3307, %3310
  %3321 = fsub fast float %3308, %3311
  %3322 = call float @dx.op.binary.f32(i32 35, float %3320, float 0.000000e+00)  ; FMax(a,b)
  %3323 = call float @dx.op.binary.f32(i32 35, float %3321, float 0.000000e+00)  ; FMax(a,b)
  %3324 = call float @dx.op.binary.f32(i32 36, float %3322, float %3312)  ; FMin(a,b)
  %3325 = call float @dx.op.binary.f32(i32 36, float %3323, float %3313)  ; FMin(a,b)
  %3326 = add i32 %3317, -1
  %3327 = add i32 %3319, -1
  %3328 = fmul fast float %3324, %3315
  %3329 = fmul fast float %3325, %3315
  %3330 = fptoui float %3328 to i32
  %3331 = fptoui float %3329 to i32
  %3332 = call i32 @dx.op.binary.i32(i32 40, i32 %3330, i32 %3326)  ; UMin(a,b)
  %3333 = call i32 @dx.op.binary.i32(i32 40, i32 %3331, i32 %3327)  ; UMin(a,b)
  %3334 = mul i32 %3333, %3317
  %3335 = add i32 %3334, %3332
  %3336 = shl i32 %3335, 2
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = icmp eq i32 %3338, -1
  br i1 %3339, label %3537, label %3340, !dx.controlflow.hints !101

; <label>:3340                                    ; preds = %3285
  %3341 = mul i32 %3338, 148
  %3342 = add i32 %3341, 4
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = add i32 %3341, 8
  %3346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = add i32 %3341, 36
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = add i32 %3341, 60
  %3352 = add i32 %3341, 92
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %3341, 116
  %3356 = fsub fast float %3307, %3344
  %3357 = fsub fast float %3308, %3347
  %3358 = fmul fast float %3315, %3356
  %3359 = fmul fast float %3315, %3357
  %3360 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3361 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3363, 3
  %3365 = fadd fast float %3364, 2.000000e+00
  %3366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3366, 3
  %3368 = fadd fast float %3365, %3367
  %3369 = add i32 %3354, 0
  %3370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3370, i32 0)  ; GetDimensions(handle,mipLevel)
  %3372 = extractvalue %dx.types.Dimensions %3371, 0
  %3373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3372)  ; FirstbitLo(value)
  %3374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.i32 %3374, 1
  %3376 = sub nsw i32 %3375, %3373
  %3377 = sitofp i32 %3376 to float
  %3378 = fsub fast float %3368, %3377
  %3379 = call float @dx.op.binary.f32(i32 35, float %3378, float 0.000000e+00)  ; FMax(a,b)
  %3380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3370, %dx.types.Handle %27, float %3360, float %3362, float %3350, float undef, i32 0, i32 0, i32 undef, float %3379)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = fcmp ule float %3381, 0x3FE0101020000000
  %3383 = extractvalue %dx.types.CBufRet.i32 %3374, 0
  %3384 = and i32 %3383, 128
  %3385 = icmp ne i32 %3384, 0
  %3386 = and i1 %3382, %3385
  br i1 %3386, label %3537, label %3387, !dx.controlflow.hints !102

; <label>:3387                                    ; preds = %3340
  %3388 = add i32 %3341, 20
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = add i32 %3341, 24
  %3392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = add i32 %3341, 40
  %3395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  %3397 = add i32 %3341, 96
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3400, 2
  %3402 = fmul fast float %3401, %3360
  %3403 = fmul fast float %3401, %3362
  %3404 = extractvalue %dx.types.CBufRet.f32 %3400, 3
  %3405 = fadd fast float %3402, %3404
  %3406 = fadd fast float %3403, %3404
  %3407 = add i32 %3399, 0
  %3408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3407, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3409 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3408, i32 0)  ; GetDimensions(handle,mipLevel)
  %3410 = extractvalue %dx.types.Dimensions %3409, 0
  %3411 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3410)  ; FirstbitLo(value)
  %3412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.i32 %3412, 1
  %3414 = sub nsw i32 %3413, %3411
  %3415 = sitofp i32 %3414 to float
  %3416 = fsub fast float %3365, %3415
  %3417 = call float @dx.op.binary.f32(i32 35, float %3416, float 0.000000e+00)  ; FMax(a,b)
  %3418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3408, %dx.types.Handle %27, float %3405, float %3406, float %3396, float undef, i32 0, i32 0, i32 undef, float %3417)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = fmul fast float %3419, %3390
  %3421 = fadd fast float %3420, %3393
  %3422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3423 = extractvalue %dx.types.CBufRet.f32 %3422, 0
  %3424 = extractvalue %dx.types.CBufRet.f32 %3422, 1
  %3425 = extractvalue %dx.types.CBufRet.f32 %3422, 2
  %3426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3427 = extractvalue %dx.types.CBufRet.f32 %3426, 3
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 3
  %3430 = extractvalue %dx.types.CBufRet.f32 %3422, 3
  %3431 = fadd fast float %3427, %3307
  %3432 = fadd fast float %3429, %3308
  %3433 = fadd fast float %3421, %3430
  %3434 = fmul fast float %3431, %3423
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3424, float %3434)  ; FMad(a,b,c)
  %3436 = call float @dx.op.tertiary.f32(i32 46, float %3433, float %3425, float %3435)  ; FMad(a,b,c)
  %3437 = fsub fast float %3436, %3430
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3440 = fsub fast float %3437, %3439
  %3441 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.i32 %3441, 0
  %3443 = call i32 @dx.op.binary.i32(i32 40, i32 %3338, i32 %3442)  ; UMin(a,b)
  %3444 = mul i32 %3443, 36
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = add i32 %3444, 4
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = fmul fast float %3449, %3360
  %3451 = fmul fast float %3449, %3362
  %3452 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3453 = fadd fast float %3450, %3452
  %3454 = fadd fast float %3451, %3452
  %3455 = icmp eq i32 %3446, 0
  br i1 %3455, label %3524, label %3456

; <label>:3456                                    ; preds = %3387
  br label %3457

; <label>:3457                                    ; preds = %3514, %3456
  %3458 = phi float [ %3515, %3514 ], [ 0.000000e+00, %3456 ]
  %3459 = phi float [ %3516, %3514 ], [ 0.000000e+00, %3456 ]
  %3460 = phi float [ %3517, %3514 ], [ 0.000000e+00, %3456 ]
  %3461 = phi float [ %3518, %3514 ], [ 0.000000e+00, %3456 ]
  %3462 = phi float [ %3519, %3514 ], [ 0.000000e+00, %3456 ]
  %3463 = phi float [ %3520, %3514 ], [ 0.000000e+00, %3456 ]
  %3464 = phi i32 [ %3521, %3514 ], [ 0, %3456 ]
  %3465 = shl i32 %3464, 2
  %3466 = add i32 %3351, %3465
  %3467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.f32 %3467, 0
  %3469 = add i32 %3355, %3465
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = add i32 %3471, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3472, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3473, i32 0)  ; GetDimensions(handle,mipLevel)
  %3475 = extractvalue %dx.types.Dimensions %3474, 0
  %3476 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3475)  ; FirstbitLo(value)
  %3477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.i32 %3477, 1
  %3479 = sub nsw i32 %3478, %3476
  %3480 = sitofp i32 %3479 to float
  %3481 = fsub fast float %3365, %3480
  %3482 = call float @dx.op.binary.f32(i32 35, float %3481, float 0.000000e+00)  ; FMax(a,b)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3473, %dx.types.Handle %27, float %3453, float %3454, float %3468, float undef, i32 0, i32 0, i32 undef, float %3482)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = fcmp fast ogt float %3484, 0.000000e+00
  br i1 %3485, label %3486, label %3514, !dx.controlflow.hints !103

; <label>:3486                                    ; preds = %3457
  %3487 = add i32 %3447, %3465
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = and i32 %3489, 32767
  %3491 = mul nuw nsw i32 %3490, 928
  %3492 = add nuw nsw i32 %3491, 48
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = add nuw nsw i32 %3491, 60
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = fmul fast float %3494, %3484
  %3503 = fmul fast float %3495, %3484
  %3504 = fmul fast float %3496, %3484
  %3505 = fadd fast float %3502, %3458
  %3506 = fadd fast float %3503, %3459
  %3507 = fadd fast float %3504, %3460
  %3508 = fmul fast float %3499, %3484
  %3509 = fmul fast float %3500, %3484
  %3510 = fmul fast float %3501, %3484
  %3511 = fadd fast float %3508, %3461
  %3512 = fadd fast float %3509, %3462
  %3513 = fadd fast float %3510, %3463
  br label %3514

; <label>:3514                                    ; preds = %3486, %3457
  %3515 = phi float [ %3505, %3486 ], [ %3458, %3457 ]
  %3516 = phi float [ %3506, %3486 ], [ %3459, %3457 ]
  %3517 = phi float [ %3507, %3486 ], [ %3460, %3457 ]
  %3518 = phi float [ %3511, %3486 ], [ %3461, %3457 ]
  %3519 = phi float [ %3512, %3486 ], [ %3462, %3457 ]
  %3520 = phi float [ %3513, %3486 ], [ %3463, %3457 ]
  %3521 = add nuw i32 %3464, 1
  %3522 = icmp eq i32 %3521, %3446
  br i1 %3522, label %3523, label %3457

; <label>:3523                                    ; preds = %3514
  br label %3524

; <label>:3524                                    ; preds = %3523, %3387
  %3525 = phi float [ 0.000000e+00, %3387 ], [ %3515, %3523 ]
  %3526 = phi float [ 0.000000e+00, %3387 ], [ %3516, %3523 ]
  %3527 = phi float [ 0.000000e+00, %3387 ], [ %3517, %3523 ]
  %3528 = phi float [ 0.000000e+00, %3387 ], [ %3518, %3523 ]
  %3529 = phi float [ 0.000000e+00, %3387 ], [ %3519, %3523 ]
  %3530 = phi float [ 0.000000e+00, %3387 ], [ %3520, %3523 ]
  %3531 = fadd fast float %3528, %3525
  %3532 = fmul fast float %3531, 0x3F847AE140000000
  %3533 = fadd fast float %3529, %3526
  %3534 = fmul fast float %3533, 0x3F847AE140000000
  %3535 = fadd fast float %3530, %3527
  %3536 = fmul fast float %3535, 0x3F847AE140000000
  br label %3537

; <label>:3537                                    ; preds = %3524, %3340, %3285, %3282, %3255, %3217, %3192
  %3538 = phi i1 [ true, %3192 ], [ false, %3255 ], [ true, %3217 ], [ false, %3524 ], [ true, %3285 ], [ true, %3340 ], [ true, %3282 ]
  %3539 = phi float [ 0.000000e+00, %3192 ], [ %3267, %3255 ], [ -1.310720e+05, %3217 ], [ %3440, %3524 ], [ -1.310720e+05, %3285 ], [ -1.310720e+05, %3340 ], [ -1.310720e+05, %3282 ]
  %3540 = phi float [ 0.000000e+00, %3192 ], [ %3277, %3255 ], [ 0.000000e+00, %3217 ], [ %3532, %3524 ], [ 0.000000e+00, %3285 ], [ 0.000000e+00, %3340 ], [ 0.000000e+00, %3282 ]
  %3541 = phi float [ 0.000000e+00, %3192 ], [ %3279, %3255 ], [ 0.000000e+00, %3217 ], [ %3534, %3524 ], [ 0.000000e+00, %3285 ], [ 0.000000e+00, %3340 ], [ 0.000000e+00, %3282 ]
  %3542 = phi float [ 0.000000e+00, %3192 ], [ %3281, %3255 ], [ 0.000000e+00, %3217 ], [ %3536, %3524 ], [ 0.000000e+00, %3285 ], [ 0.000000e+00, %3340 ], [ 0.000000e+00, %3282 ]
  br i1 %3538, label %3624, label %3543, !dx.controlflow.hints !104

; <label>:3543                                    ; preds = %3537
  %3544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3545 = extractvalue %dx.types.CBufRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.CBufRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.CBufRet.f32 %3544, 2
  %3548 = fsub fast float %137, %3539
  %3549 = fcmp fast ogt float %3548, 0.000000e+00
  %3550 = fmul fast float %3545, 5.120000e+02
  %3551 = fmul fast float %3546, 5.120000e+02
  %3552 = fmul fast float %3547, 5.120000e+02
  %3553 = fadd fast float %3552, %137
  %3554 = fsub fast float %3539, %3553
  %3555 = fmul fast float %3554, 2.000000e+00
  %3556 = fadd fast float %3555, %3553
  %3557 = select i1 %3549, float %3556, float %3553
  %3558 = fsub fast float %3557, %137
  %3559 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3558, float %3550, float %3551, float %3558)  ; Dot3(ax,ay,az,bx,by,bz)
  %3560 = call float @dx.op.unary.f32(i32 25, float %3559)  ; Rsqrt(value)
  %3561 = fmul fast float %3550, %3560
  %3562 = fmul fast float %3551, %3560
  %3563 = fmul fast float %3558, %3560
  %3564 = fsub fast float %3539, %137
  %3565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3564)  ; Dot3(ax,ay,az,bx,by,bz)
  %3566 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3561, float %3562, float %3563)  ; Dot3(ax,ay,az,bx,by,bz)
  %3567 = fdiv fast float 1.000000e+00, %3566
  %3568 = fmul fast float %3567, %3565
  %3569 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3548, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3570 = fcmp fast ogt float %3569, 0.000000e+00
  %3571 = fcmp fast olt float %3569, 0.000000e+00
  %3572 = zext i1 %3570 to i32
  %3573 = zext i1 %3571 to i32
  %3574 = sub nsw i32 %3572, %3573
  %3575 = sitofp i32 %3574 to float
  %3576 = fsub fast float %3557, %3539
  %3577 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3576, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3578 = fcmp fast ogt float %3577, 0.000000e+00
  %3579 = fcmp fast olt float %3577, 0.000000e+00
  %3580 = zext i1 %3578 to i32
  %3581 = zext i1 %3579 to i32
  %3582 = sub nsw i32 %3580, %3581
  %3583 = sitofp i32 %3582 to float
  %3584 = fcmp fast une float %3575, %3583
  br i1 %3584, label %3585, label %3595, !dx.controlflow.hints !105

; <label>:3585                                    ; preds = %3543
  %3586 = fmul fast float %3563, %3568
  %3587 = fmul fast float %3568, %3562
  %3588 = fmul fast float %3568, %3561
  %3589 = fmul fast float %3588, %3588
  %3590 = fmul fast float %3587, %3587
  %3591 = fadd fast float %3589, %3590
  %3592 = fmul fast float %3586, %3586
  %3593 = fadd fast float %3591, %3592
  %3594 = call float @dx.op.unary.f32(i32 24, float %3593)  ; Sqrt(value)
  br label %3605

; <label>:3595                                    ; preds = %3543
  %3596 = icmp slt i32 %3574, 0
  br i1 %3596, label %3597, label %3605, !dx.controlflow.hints !106

; <label>:3597                                    ; preds = %3595
  %3598 = fsub fast float %137, %3557
  %3599 = fmul fast float %3550, %3550
  %3600 = fmul fast float %3551, %3551
  %3601 = fadd fast float %3599, %3600
  %3602 = fmul fast float %3598, %3598
  %3603 = fadd fast float %3601, %3602
  %3604 = call float @dx.op.unary.f32(i32 24, float %3603)  ; Sqrt(value)
  br label %3605

; <label>:3605                                    ; preds = %3597, %3595, %3585
  %3606 = phi float [ %3594, %3585 ], [ %3604, %3597 ], [ 0.000000e+00, %3595 ]
  %3607 = fsub fast float -0.000000e+00, %3606
  %3608 = select i1 %3549, float -0.000000e+00, float %3607
  %3609 = fmul fast float %3540, 0x3FF7154760000000
  %3610 = fmul fast float %3609, %3608
  %3611 = fmul fast float %3541, 0x3FF7154760000000
  %3612 = fmul fast float %3611, %3608
  %3613 = fmul fast float %3542, 0x3FF7154760000000
  %3614 = fmul fast float %3613, %3608
  %3615 = call float @dx.op.unary.f32(i32 21, float %3610)  ; Exp(value)
  %3616 = call float @dx.op.unary.f32(i32 21, float %3612)  ; Exp(value)
  %3617 = call float @dx.op.unary.f32(i32 21, float %3614)  ; Exp(value)
  %3618 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3619 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  %3620 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3621 = fmul fast float %3618, %3185
  %3622 = fmul fast float %3619, %3185
  %3623 = fmul fast float %3620, %3185
  br label %3624

; <label>:3624                                    ; preds = %3605, %3537, %3184
  %3625 = phi float [ %3621, %3605 ], [ %3185, %3537 ], [ %3185, %3184 ]
  %3626 = phi float [ %3622, %3605 ], [ %3185, %3537 ], [ %3185, %3184 ]
  %3627 = phi float [ %3623, %3605 ], [ %3185, %3537 ], [ %3185, %3184 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %63, i32 %64, i32 undef, float %3625, float %3626, float %3627, float %3625, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3628

; <label>:3628                                    ; preds = %3624, %84
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !34, !36, !39}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33}
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
!31 = !{i32 22, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!32 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!34 = !{!35}
!35 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!36 = !{!37, !38}
!37 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!38 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!39 = !{!40, !41, !42, !43, !44, !45}
!40 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!41 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!42 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!43 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!44 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!45 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!46 = !{void ()* @cs_sunvis_trans, !"cs_sunvis_trans", null, !4, !47}
!47 = !{i32 0, i64 272, i32 4, !48}
!48 = !{i32 16, i32 16, i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = !{!72, !72, i64 0}
!72 = !{!"int", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
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
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
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
!105 = distinct !{!105, !"dx.controlflow.hints", i32 2}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 2}

