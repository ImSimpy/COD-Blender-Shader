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
; shader hash: 37d044cd95fe55cb2db44f155893ea89
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

define void @cs_sunvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = alloca [4 x i32], align 4
  %33 = alloca [4 x i32], align 4
  %34 = alloca [4 x i32], align 4
  %35 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %36 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %37 = alloca [12 x float], align 4
  %38 = alloca [12 x float], align 4
  %39 = alloca [12 x float], align 4
  %40 = alloca [12 x float], align 4
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %30, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46, !dx.controlflow.hints !47

; <label>:46                                      ; preds = %0
  %47 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %48 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %49 = shl i32 %35, 2
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %49, i32 undef)  ; BufferLoad(srv,index,wot)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = and i32 %51, 65535
  %53 = lshr i32 %51, 16
  %54 = shl nuw nsw i32 %52, 4
  %55 = shl nuw nsw i32 %53, 4
  %56 = or i32 %54, %48
  %57 = or i32 %55, %47
  br label %58

; <label>:58                                      ; preds = %46, %0
  %59 = phi i32 [ %52, %46 ], [ %35, %0 ]
  %60 = phi i32 [ %53, %46 ], [ %36, %0 ]
  %61 = phi i32 [ %56, %46 ], [ 0, %0 ]
  %62 = phi i32 [ %57, %46 ], [ 0, %0 ]
  %63 = uitofp i32 %61 to float
  %64 = uitofp i32 %62 to float
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 3
  %68 = fmul fast float %66, %63
  %69 = fmul fast float %67, %64
  %70 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %22, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fcmp fast olt float %71, -1.000000e+00
  %73 = fcmp fast ogt float %71, -1.000000e+00
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %76 = select i1 %73, float %75, float 1.000000e+00
  %77 = fadd fast float %71, 1.000000e+00
  %78 = fmul fast float %76, %77
  %79 = call float @dx.op.unary.f32(i32 6, float %78)  ; FAbs(value)
  %80 = extractvalue %dx.types.CBufRet.f32 %74, 3
  %81 = fcmp fast ult float %79, %80
  br i1 %81, label %83, label %82, !dx.controlflow.hints !48

; <label>:82                                      ; preds = %58
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %61, i32 %62, i32 undef, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3523

; <label>:83                                      ; preds = %58
  %84 = fmul fast float %68, 2.000000e+00
  %85 = fmul fast float %69, 2.000000e+00
  %86 = fsub fast float 1.000000e+00, %84
  %87 = fsub fast float 1.000000e+00, %85
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = select i1 %72, float %89, float %93
  %97 = select i1 %72, float %90, float %94
  %98 = select i1 %72, float %91, float %95
  %99 = fmul fast float %96, %86
  %100 = fmul fast float %97, %86
  %101 = fmul fast float %98, %86
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = select i1 %72, float %103, float %107
  %111 = select i1 %72, float %104, float %108
  %112 = select i1 %72, float %105, float %109
  %113 = fmul fast float %110, %87
  %114 = fmul fast float %111, %87
  %115 = fmul fast float %112, %87
  %116 = fadd fast float %113, %99
  %117 = fadd fast float %114, %100
  %118 = fadd fast float %115, %101
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %72, float %120, float %124
  %128 = select i1 %72, float %121, float %125
  %129 = select i1 %72, float %122, float %126
  %130 = fadd fast float %116, %127
  %131 = fadd fast float %117, %128
  %132 = fadd fast float %118, %129
  %133 = fmul fast float %130, %79
  %134 = fmul fast float %131, %79
  %135 = fmul fast float %132, %79
  %136 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = lshr i32 %137, 8
  %139 = and i32 %137, 255
  %140 = and i32 %138, 255
  %141 = uitofp i32 %139 to float
  %142 = uitofp i32 %140 to float
  %143 = fmul fast float %141, 0x3F80101020000000
  %144 = fmul fast float %142, 0x3F80101020000000
  %145 = fadd fast float %143, -1.000000e+00
  %146 = fadd fast float %144, -1.000000e+00
  %147 = call float @dx.op.unary.f32(i32 6, float %145)  ; FAbs(value)
  %148 = fsub fast float 1.000000e+00, %147
  %149 = call float @dx.op.unary.f32(i32 6, float %146)  ; FAbs(value)
  %150 = fsub fast float %148, %149
  %151 = fsub fast float -0.000000e+00, %150
  %152 = call float @dx.op.binary.f32(i32 35, float %151, float 0.000000e+00)  ; FMax(a,b)
  %153 = fcmp fast ogt float %145, 0.000000e+00
  %154 = fsub fast float -0.000000e+00, %152
  %155 = select i1 %153, float %154, float %152
  %156 = fadd fast float %155, %145
  %157 = fcmp fast ogt float %146, 0.000000e+00
  %158 = select i1 %157, float %154, float %152
  %159 = fadd fast float %158, %146
  %160 = call float @dx.op.dot3.f32(i32 55, float %156, float %159, float %150, float %156, float %159, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %161 = call float @dx.op.unary.f32(i32 25, float %160)  ; Rsqrt(value)
  %162 = fmul fast float %156, %161
  %163 = fmul fast float %159, %161
  %164 = fmul fast float %161, %150
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %162, float %163, float %164)  ; Dot3(ax,ay,az,bx,by,bz)
  %170 = call float @dx.op.unary.f32(i32 6, float %169)  ; FAbs(value)
  %171 = fsub fast float 1.000000e+00, %170
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %174 = fsub fast float -0.000000e+00, %169
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fmul fast float %173, %175
  %177 = fsub fast float %171, %176
  %178 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %179 = fmul fast float %177, %178
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = extractvalue %dx.types.CBufRet.f32 %185, 3
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = extractvalue %dx.types.CBufRet.f32 %190, 3
  %195 = fmul fast float %181, %133
  %196 = call float @dx.op.tertiary.f32(i32 46, float %134, float %182, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float %135, float %183, float %196)  ; FMad(a,b,c)
  %198 = fadd fast float %197, %184
  %199 = fmul fast float %186, %133
  %200 = call float @dx.op.tertiary.f32(i32 46, float %134, float %187, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %135, float %188, float %200)  ; FMad(a,b,c)
  %202 = fadd fast float %201, %189
  %203 = fmul fast float %191, %133
  %204 = call float @dx.op.tertiary.f32(i32 46, float %134, float %192, float %203)  ; FMad(a,b,c)
  %205 = call float @dx.op.tertiary.f32(i32 46, float %135, float %193, float %204)  ; FMad(a,b,c)
  %206 = fadd fast float %205, %194
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = fmul fast float %208, 0x3FE3C6EF40000000
  %210 = frem fast float %63, 2.560000e+02
  %211 = frem fast float %64, 2.560000e+02
  %212 = fptoui float %210 to i32
  %213 = fptoui float %211 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 2
  %216 = fadd fast float %215, %209
  %217 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %220 = fcmp fast une float %219, 0.000000e+00
  br i1 %220, label %221, label %1842, !dx.controlflow.hints !49

; <label>:221                                     ; preds = %83
  %222 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %223 = fptoui float %222 to i32
  %224 = add i32 %223, 15
  %225 = lshr i32 %224, 4
  %226 = mul i32 %225, %60
  %227 = add i32 %226, %59
  %228 = shl i32 %227, 3
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 28
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %252, !dx.controlflow.hints !50

; <label>:233                                     ; preds = %221
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = fmul fast float %235, %179
  %239 = fadd fast float %237, %206
  %240 = fadd fast float %239, %238
  %241 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %242 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %243 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %244 = fmul fast float %243, %198
  %245 = fmul fast float %243, %202
  %246 = fadd fast float %244, %241
  %247 = fadd fast float %245, %242
  %248 = call float @dx.op.binary.f32(i32 35, float %240, float 0.000000e+00)  ; FMax(a,b)
  %249 = fadd fast float %248, 0x3F10000000000000
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %29, float %246, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float %249)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  br label %2695

; <label>:252                                     ; preds = %221
  %253 = icmp eq i32 %231, 1
  br i1 %253, label %254, label %273, !dx.controlflow.hints !51

; <label>:254                                     ; preds = %252
  %255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %256 = extractvalue %dx.types.CBufRet.f32 %255, 2
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 1
  %259 = fmul fast float %256, %179
  %260 = fadd fast float %258, %206
  %261 = fadd fast float %260, %259
  %262 = extractvalue %dx.types.CBufRet.f32 %255, 0
  %263 = extractvalue %dx.types.CBufRet.f32 %255, 1
  %264 = extractvalue %dx.types.CBufRet.f32 %255, 3
  %265 = fmul fast float %264, %198
  %266 = fmul fast float %264, %202
  %267 = fadd fast float %265, %262
  %268 = fadd fast float %266, %263
  %269 = call float @dx.op.binary.f32(i32 35, float %261, float 0.000000e+00)  ; FMax(a,b)
  %270 = fadd fast float %269, 0x3F10000000000000
  %271 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %29, float %267, float %268, float undef, float undef, i32 0, i32 0, i32 undef, float %270)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  br label %2695

; <label>:273                                     ; preds = %252
  %274 = icmp eq i32 %231, 2
  br i1 %274, label %275, label %294, !dx.controlflow.hints !52

; <label>:275                                     ; preds = %273
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = fmul fast float %277, %179
  %281 = fadd fast float %279, %206
  %282 = fadd fast float %281, %280
  %283 = extractvalue %dx.types.CBufRet.f32 %276, 0
  %284 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %285 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %286 = fmul fast float %285, %198
  %287 = fmul fast float %285, %202
  %288 = fadd fast float %286, %283
  %289 = fadd fast float %287, %284
  %290 = call float @dx.op.binary.f32(i32 35, float %282, float 0.000000e+00)  ; FMax(a,b)
  %291 = fadd fast float %290, 0x3F10000000000000
  %292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %29, float %288, float %289, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  br label %2695

; <label>:294                                     ; preds = %273
  %295 = icmp eq i32 %231, 12
  br i1 %295, label %296, label %315, !dx.controlflow.hints !53

; <label>:296                                     ; preds = %294
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 0
  %301 = fmul fast float %298, %179
  %302 = fadd fast float %300, %206
  %303 = fadd fast float %302, %301
  %304 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %307 = fmul fast float %306, %198
  %308 = fmul fast float %306, %202
  %309 = fadd fast float %307, %304
  %310 = fadd fast float %308, %305
  %311 = call float @dx.op.binary.f32(i32 35, float %303, float 0.000000e+00)  ; FMax(a,b)
  %312 = fadd fast float %311, 0x3F10000000000000
  %313 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %29, float %309, float %310, float undef, float undef, i32 0, i32 0, i32 undef, float %312)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  br label %2695

; <label>:315                                     ; preds = %294
  %316 = icmp eq i32 %231, 13
  br i1 %316, label %317, label %987, !dx.controlflow.hints !54

; <label>:317                                     ; preds = %315
  %318 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %319 = fcmp fast une float %318, 0.000000e+00
  br i1 %319, label %320, label %2695, !dx.controlflow.hints !55

; <label>:320                                     ; preds = %317
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = extractvalue %dx.types.CBufRet.f32 %321, 3
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %336 = fmul fast float %322, %133
  %337 = call float @dx.op.tertiary.f32(i32 46, float %134, float %323, float %336)  ; FMad(a,b,c)
  %338 = call float @dx.op.tertiary.f32(i32 46, float %135, float %324, float %337)  ; FMad(a,b,c)
  %339 = fadd fast float %338, %325
  %340 = fmul fast float %327, %133
  %341 = call float @dx.op.tertiary.f32(i32 46, float %134, float %328, float %340)  ; FMad(a,b,c)
  %342 = call float @dx.op.tertiary.f32(i32 46, float %135, float %329, float %341)  ; FMad(a,b,c)
  %343 = fadd fast float %342, %330
  %344 = fmul fast float %332, %133
  %345 = call float @dx.op.tertiary.f32(i32 46, float %134, float %333, float %344)  ; FMad(a,b,c)
  %346 = call float @dx.op.tertiary.f32(i32 46, float %135, float %334, float %345)  ; FMad(a,b,c)
  %347 = fadd fast float %346, %335
  %348 = fcmp fast oge float %339, 1.000000e+00
  %349 = fcmp fast oge float %343, 1.000000e+00
  %350 = or i1 %348, %349
  %351 = fcmp fast olt float %339, 0.000000e+00
  %352 = fcmp fast olt float %343, 0.000000e+00
  %353 = or i1 %351, %352
  %354 = or i1 %350, %353
  br i1 %354, label %2695, label %355, !dx.controlflow.hints !56

; <label>:355                                     ; preds = %320
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.i32 %362, 2
  %364 = uitofp i32 %363 to float
  %365 = extractvalue %dx.types.CBufRet.i32 %362, 3
  %366 = uitofp i32 %365 to float
  %367 = extractvalue %dx.types.CBufRet.f32 %356, 3
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float %339, %357
  %370 = fsub fast float %343, %358
  %371 = fmul fast float %368, %369
  %372 = fmul fast float %368, %370
  %373 = fdiv fast float 1.000000e+00, %168
  %374 = fmul fast float %372, %373
  %375 = call float @dx.op.unary.f32(i32 6, float %374)  ; FAbs(value)
  %376 = fmul fast float %359, %135
  %377 = fmul fast float %376, %368
  %378 = call float @dx.op.unary.f32(i32 6, float %377)  ; FAbs(value)
  %379 = call float @dx.op.unary.f32(i32 6, float %371)  ; FAbs(value)
  %380 = call float @dx.op.binary.f32(i32 35, float %378, float %375)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 35, float %379, float %380)  ; FMax(a,b)
  %382 = fmul fast float %381, 2.000000e+00
  %383 = call float @dx.op.unary.f32(i32 23, float %382)  ; Log(value)
  %384 = call float @dx.op.binary.f32(i32 35, float %383, float %364)  ; FMax(a,b)
  %385 = call float @dx.op.unary.f32(i32 22, float %384)  ; Frc(value)
  %386 = fadd fast float %385, 0xBFEA666660000000
  %387 = fmul fast float %386, 8.000000e+00
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = call float @dx.op.unary.f32(i32 27, float %384)  ; Round_ni(value)
  %390 = fadd fast float %389, %388
  %391 = call float @dx.op.binary.f32(i32 36, float %390, float %366)  ; FMin(a,b)
  %392 = call float @dx.op.unary.f32(i32 27, float %391)  ; Round_ni(value)
  %393 = fsub fast float -0.000000e+00, %392
  %394 = call float @dx.op.unary.f32(i32 21, float %393)  ; Exp(value)
  %395 = fmul fast float %394, %368
  %396 = fmul fast float %395, %339
  %397 = fmul fast float %395, %343
  %398 = fmul fast float %396, 5.000000e-01
  %399 = fmul fast float %397, 5.000000e-01
  %400 = fadd fast float %398, 5.000000e-01
  %401 = fadd fast float %399, 5.000000e-01
  %402 = fmul fast float %396, 2.500000e-01
  %403 = fmul fast float %397, 2.500000e-01
  %404 = fadd fast float %402, 5.000000e-01
  %405 = fadd fast float %403, 5.000000e-01
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 536870911
  %409 = lshr i32 %408, 9
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, %339
  %412 = fmul fast float %410, %343
  %413 = call float @dx.op.unary.f32(i32 22, float %411)  ; Frc(value)
  %414 = call float @dx.op.unary.f32(i32 22, float %412)  ; Frc(value)
  %415 = call float @dx.op.unary.f32(i32 22, float %388)  ; Frc(value)
  %416 = fcmp fast une float %415, 0.000000e+00
  br i1 %416, label %417, label %515, !dx.controlflow.hints !57

; <label>:417                                     ; preds = %355
  %418 = call float @dx.op.unary.f32(i32 21, float %389)  ; Exp(value)
  %419 = fmul fast float %418, 1.953125e-03
  %420 = fcmp fast olt float %413, %419
  %421 = fcmp fast olt float %414, %419
  %422 = or i1 %420, %421
  %423 = fsub fast float 1.000000e+00, %419
  %424 = fcmp fast ogt float %413, %423
  %425 = fcmp fast ogt float %414, %423
  %426 = or i1 %424, %425
  %427 = or i1 %422, %426
  br i1 %427, label %428, label %594, !dx.controlflow.hints !58

; <label>:428                                     ; preds = %417
  %429 = fmul fast float %361, 5.000000e-01
  %430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.i32 %430, 0
  %432 = fmul fast float %343, 3.530000e+02
  %433 = uitofp i32 %408 to float
  %434 = fmul fast float %432, %433
  %435 = fmul fast float %339, 6.130000e+02
  %436 = fadd fast float %434, %435
  %437 = fptoui float %436 to i32
  %438 = add i32 %431, %437
  %439 = mul i32 %438, -63
  %440 = lshr i32 %439, 17
  %441 = xor i32 %440, %439
  %442 = mul i32 %441, -511
  %443 = mul i32 %441, -8176
  %444 = xor i32 %442, %443
  %445 = mul i32 %444, -7
  %446 = mul i32 %444, -7168
  %447 = xor i32 %445, %446
  %448 = lshr i32 %447, 15
  %449 = xor i32 %448, %445
  %450 = and i32 %449, 15
  %451 = mul i32 %450, 2
  %452 = add i32 0, %451
  %453 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %452
  %454 = load float, float* %453, align 4
  %455 = mul i32 %450, 2
  %456 = add i32 1, %455
  %457 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %456
  %458 = load float, float* %457, align 4
  %459 = fmul fast float %343, 2.770000e+02
  %460 = fmul fast float %459, %433
  %461 = fmul fast float %339, 5.990000e+02
  %462 = fadd fast float %460, %461
  %463 = fptoui float %462 to i32
  %464 = mul i32 %463, -63
  %465 = lshr i32 %464, 17
  %466 = xor i32 %465, %464
  %467 = mul i32 %466, -511
  %468 = mul i32 %466, -8176
  %469 = xor i32 %467, %468
  %470 = mul i32 %469, -7
  %471 = mul i32 %469, -7168
  %472 = xor i32 %470, %471
  %473 = lshr i32 %472, 15
  %474 = xor i32 %473, %470
  %475 = and i32 %474, 63
  %476 = mul i32 %475, 2
  %477 = add i32 0, %476
  %478 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %477
  %479 = load float, float* %478, align 4
  %480 = mul i32 %475, 2
  %481 = add i32 1, %480
  %482 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %481
  %483 = load float, float* %482, align 4
  %484 = call float @dx.op.dot2.f32(i32 54, float %454, float %458, float %479, float %483)  ; Dot2(ax,ay,bx,by)
  %485 = fsub fast float -0.000000e+00, %479
  %486 = call float @dx.op.dot2.f32(i32 54, float %454, float %458, float %485, float %483)  ; Dot2(ax,ay,bx,by)
  %487 = fmul fast float %484, %429
  %488 = fmul fast float %486, %429
  %489 = fdiv fast float 2.000000e+00, %395
  %490 = fmul fast float %418, 9.765625e-04
  %491 = fcmp fast olt float %413, %490
  %492 = fcmp fast olt float %414, %490
  %493 = or i1 %491, %492
  %494 = fsub fast float 1.000000e+00, %490
  %495 = fcmp fast ogt float %413, %494
  %496 = fcmp fast ogt float %414, %494
  %497 = or i1 %495, %496
  %498 = or i1 %493, %497
  %499 = fmul fast float %487, 2.000000e+00
  br i1 %498, label %500, label %504, !dx.controlflow.hints !59

; <label>:500                                     ; preds = %428
  %501 = fmul fast float %488, 2.000000e+00
  %502 = fadd fast float %499, %400
  %503 = fadd fast float %501, %401
  br label %504

; <label>:504                                     ; preds = %500, %428
  %505 = phi float [ %502, %500 ], [ %400, %428 ]
  %506 = phi float [ %503, %500 ], [ %401, %428 ]
  %507 = phi i32 [ 3, %500 ], [ 2, %428 ]
  %508 = fadd fast float %487, %404
  %509 = fadd fast float %488, %405
  %510 = fmul fast float %499, %489
  %511 = fmul fast float %489, 2.000000e+00
  %512 = fmul fast float %511, %488
  %513 = fadd fast float %510, %339
  %514 = fadd fast float %512, %343
  br label %594

; <label>:515                                     ; preds = %355
  %516 = call float @dx.op.unary.f32(i32 21, float %392)  ; Exp(value)
  %517 = fmul fast float %516, 9.765625e-04
  %518 = fcmp fast olt float %413, %517
  %519 = fcmp fast olt float %414, %517
  %520 = or i1 %518, %519
  %521 = fsub fast float 1.000000e+00, %517
  %522 = fcmp fast ogt float %413, %521
  %523 = fcmp fast ogt float %414, %521
  %524 = or i1 %522, %523
  %525 = or i1 %520, %524
  br i1 %525, label %526, label %594, !dx.controlflow.hints !60

; <label>:526                                     ; preds = %515
  %527 = fmul fast float %361, 5.000000e-01
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 0
  %530 = fmul fast float %343, 3.530000e+02
  %531 = uitofp i32 %408 to float
  %532 = fmul fast float %530, %531
  %533 = fmul fast float %339, 6.130000e+02
  %534 = fadd fast float %532, %533
  %535 = fptoui float %534 to i32
  %536 = add i32 %529, %535
  %537 = mul i32 %536, -63
  %538 = lshr i32 %537, 17
  %539 = xor i32 %538, %537
  %540 = mul i32 %539, -511
  %541 = mul i32 %539, -8176
  %542 = xor i32 %540, %541
  %543 = mul i32 %542, -7
  %544 = mul i32 %542, -7168
  %545 = xor i32 %543, %544
  %546 = lshr i32 %545, 15
  %547 = xor i32 %546, %543
  %548 = and i32 %547, 15
  %549 = mul i32 %548, 2
  %550 = add i32 0, %549
  %551 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %550
  %552 = load float, float* %551, align 4
  %553 = mul i32 %548, 2
  %554 = add i32 1, %553
  %555 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %554
  %556 = load float, float* %555, align 4
  %557 = fmul fast float %343, 2.770000e+02
  %558 = fmul fast float %557, %531
  %559 = fmul fast float %339, 5.990000e+02
  %560 = fadd fast float %558, %559
  %561 = fptoui float %560 to i32
  %562 = mul i32 %561, -63
  %563 = lshr i32 %562, 17
  %564 = xor i32 %563, %562
  %565 = mul i32 %564, -511
  %566 = mul i32 %564, -8176
  %567 = xor i32 %565, %566
  %568 = mul i32 %567, -7
  %569 = mul i32 %567, -7168
  %570 = xor i32 %568, %569
  %571 = lshr i32 %570, 15
  %572 = xor i32 %571, %568
  %573 = and i32 %572, 63
  %574 = mul i32 %573, 2
  %575 = add i32 0, %574
  %576 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %575
  %577 = load float, float* %576, align 4
  %578 = mul i32 %573, 2
  %579 = add i32 1, %578
  %580 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %579
  %581 = load float, float* %580, align 4
  %582 = call float @dx.op.dot2.f32(i32 54, float %552, float %556, float %577, float %581)  ; Dot2(ax,ay,bx,by)
  %583 = fsub fast float -0.000000e+00, %577
  %584 = call float @dx.op.dot2.f32(i32 54, float %552, float %556, float %583, float %581)  ; Dot2(ax,ay,bx,by)
  %585 = fmul fast float %582, %527
  %586 = fmul fast float %584, %527
  %587 = fadd fast float %585, %400
  %588 = fadd fast float %586, %401
  %589 = fdiv fast float 2.000000e+00, %395
  %590 = fmul fast float %589, %585
  %591 = fmul fast float %586, %589
  %592 = fadd fast float %590, %339
  %593 = fadd fast float %591, %343
  br label %594

; <label>:594                                     ; preds = %526, %515, %504, %417
  %595 = phi float [ %508, %504 ], [ %404, %417 ], [ %404, %526 ], [ %404, %515 ]
  %596 = phi float [ %509, %504 ], [ %405, %417 ], [ %405, %526 ], [ %405, %515 ]
  %597 = phi float [ %505, %504 ], [ %400, %417 ], [ %587, %526 ], [ %400, %515 ]
  %598 = phi float [ %506, %504 ], [ %401, %417 ], [ %588, %526 ], [ %401, %515 ]
  %599 = phi i32 [ %507, %504 ], [ 0, %417 ], [ 1, %526 ], [ 0, %515 ]
  %600 = phi float [ %513, %504 ], [ %339, %417 ], [ %592, %526 ], [ %339, %515 ]
  %601 = phi float [ %514, %504 ], [ %343, %417 ], [ %593, %526 ], [ %343, %515 ]
  %602 = fsub fast float %366, %364
  %603 = fptoui float %602 to i32
  %604 = add i32 %603, 320
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %604)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = fcmp fast une float %391, %366
  %609 = fsub fast float %600, %606
  %610 = fsub fast float %601, %607
  %611 = call float @dx.op.unary.f32(i32 6, float %609)  ; FAbs(value)
  %612 = call float @dx.op.unary.f32(i32 6, float %610)  ; FAbs(value)
  %613 = fmul fast float %611, %395
  %614 = fmul fast float %612, %395
  %615 = fcmp fast olt float %613, 1.000000e+00
  %616 = fcmp fast olt float %614, 1.000000e+00
  %617 = and i1 %615, %616
  %618 = or i1 %608, %617
  br i1 %618, label %619, label %2695, !dx.controlflow.hints !61

; <label>:619                                     ; preds = %594
  %620 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.i32 %620, 2
  %622 = sitofp i32 %621 to float
  %623 = fsub fast float %391, %622
  %624 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %625 = call float @dx.op.unary.f32(i32 22, float %391)  ; Frc(value)
  %626 = icmp eq i32 %599, 0
  %627 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %628 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  br i1 %626, label %699, label %629, !dx.controlflow.hints !62

; <label>:629                                     ; preds = %619
  %630 = and i32 %599, 1
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %645, label %632, !dx.controlflow.hints !63

; <label>:632                                     ; preds = %629
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = fmul fast float %627, %634
  %636 = fmul fast float %628, %634
  %637 = fptoui float %635 to i32
  %638 = fptoui float %636 to i32
  %639 = fptoui float %624 to i32
  %640 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %637, i32 %638, i32 %639, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = extractvalue %dx.types.ResRet.f32 %640, 1
  %643 = extractvalue %dx.types.ResRet.f32 %640, 2
  %644 = extractvalue %dx.types.ResRet.f32 %640, 3
  br label %651

; <label>:645                                     ; preds = %629
  %646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %627, float %628, float %624, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = extractvalue %dx.types.ResRet.f32 %646, 1
  %649 = extractvalue %dx.types.ResRet.f32 %646, 2
  %650 = extractvalue %dx.types.ResRet.f32 %646, 3
  br label %651

; <label>:651                                     ; preds = %645, %632
  %652 = phi float [ %641, %632 ], [ %647, %645 ]
  %653 = phi float [ %642, %632 ], [ %648, %645 ]
  %654 = phi float [ %643, %632 ], [ %649, %645 ]
  %655 = phi float [ %644, %632 ], [ %650, %645 ]
  %656 = fcmp fast ogt float %625, 0.000000e+00
  br i1 %656, label %657, label %727, !dx.controlflow.hints !64

; <label>:657                                     ; preds = %651
  %658 = and i32 %599, 2
  %659 = icmp eq i32 %658, 0
  %660 = fadd fast float %624, 1.000000e+00
  %661 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %662 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  br i1 %659, label %676, label %663, !dx.controlflow.hints !65

; <label>:663                                     ; preds = %657
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = fmul fast float %661, %665
  %667 = fmul fast float %662, %665
  %668 = fptoui float %666 to i32
  %669 = fptoui float %667 to i32
  %670 = fptoui float %660 to i32
  %671 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %668, i32 %669, i32 %670, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  %673 = extractvalue %dx.types.ResRet.f32 %671, 1
  %674 = extractvalue %dx.types.ResRet.f32 %671, 2
  %675 = extractvalue %dx.types.ResRet.f32 %671, 3
  br label %682

; <label>:676                                     ; preds = %657
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %661, float %662, float %660, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  br label %682

; <label>:682                                     ; preds = %676, %663
  %683 = phi float [ %672, %663 ], [ %678, %676 ]
  %684 = phi float [ %673, %663 ], [ %679, %676 ]
  %685 = phi float [ %674, %663 ], [ %680, %676 ]
  %686 = phi float [ %675, %663 ], [ %681, %676 ]
  %687 = fsub fast float %683, %652
  %688 = fsub fast float %684, %653
  %689 = fsub fast float %685, %654
  %690 = fsub fast float %686, %655
  %691 = fmul fast float %687, %625
  %692 = fmul fast float %688, %625
  %693 = fmul fast float %689, %625
  %694 = fmul fast float %690, %625
  %695 = fadd fast float %691, %652
  %696 = fadd fast float %692, %653
  %697 = fadd fast float %693, %654
  %698 = fadd fast float %694, %655
  br label %727

; <label>:699                                     ; preds = %619
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %627, float %628, float %624, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = extractvalue %dx.types.ResRet.f32 %700, 3
  %705 = fcmp fast ogt float %625, 0.000000e+00
  br i1 %705, label %706, label %727, !dx.controlflow.hints !66

; <label>:706                                     ; preds = %699
  %707 = fadd fast float %624, 1.000000e+00
  %708 = call float @dx.op.unary.f32(i32 22, float %595)  ; Frc(value)
  %709 = call float @dx.op.unary.f32(i32 22, float %596)  ; Frc(value)
  %710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %708, float %709, float %707, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %711 = extractvalue %dx.types.ResRet.f32 %710, 0
  %712 = extractvalue %dx.types.ResRet.f32 %710, 1
  %713 = extractvalue %dx.types.ResRet.f32 %710, 2
  %714 = extractvalue %dx.types.ResRet.f32 %710, 3
  %715 = fsub fast float %711, %701
  %716 = fsub fast float %712, %702
  %717 = fsub fast float %713, %703
  %718 = fsub fast float %714, %704
  %719 = fmul fast float %715, %625
  %720 = fmul fast float %716, %625
  %721 = fmul fast float %717, %625
  %722 = fmul fast float %718, %625
  %723 = fadd fast float %719, %701
  %724 = fadd fast float %720, %702
  %725 = fadd fast float %721, %703
  %726 = fadd fast float %722, %704
  br label %727

; <label>:727                                     ; preds = %706, %699, %682, %651
  %728 = phi float [ %695, %682 ], [ %652, %651 ], [ %723, %706 ], [ %701, %699 ]
  %729 = phi float [ %696, %682 ], [ %653, %651 ], [ %724, %706 ], [ %702, %699 ]
  %730 = phi float [ %697, %682 ], [ %654, %651 ], [ %725, %706 ], [ %703, %699 ]
  %731 = phi float [ %698, %682 ], [ %655, %651 ], [ %726, %706 ], [ %704, %699 ]
  %732 = fadd fast float %728, -5.000000e-01
  %733 = fadd fast float %730, -5.000000e-01
  %734 = fmul fast float %732, 0xBFD5555560000000
  %735 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %733, float %734)  ; FMad(a,b,c)
  %736 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %729, float 0.000000e+00)  ; FMad(a,b,c)
  %737 = fadd fast float %736, %731
  %738 = fmul fast float %732, -7.500000e-01
  %739 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %733, float %738)  ; FMad(a,b,c)
  %740 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %729, float 0.000000e+00)  ; FMad(a,b,c)
  %741 = fadd fast float %740, %731
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 0
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %747 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %748 = extractvalue %dx.types.CBufRet.f32 %744, 3
  %749 = fsub fast float %745, %735
  %750 = fsub fast float %746, %737
  %751 = fsub fast float %747, %739
  %752 = fsub fast float %748, %741
  %753 = fmul fast float %749, %743
  %754 = fmul fast float %750, %743
  %755 = fmul fast float %751, %743
  %756 = fmul fast float %752, %743
  %757 = fadd fast float %753, %735
  %758 = fadd fast float %754, %737
  %759 = fadd fast float %755, %739
  %760 = fadd fast float %756, %741
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 536870911
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, %600
  %766 = fmul fast float %764, %601
  %767 = fptoui float %765 to i32
  %768 = fptoui float %766 to i32
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 31
  %772 = lshr i32 %767, %771
  %773 = lshr i32 %768, %771
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 31
  %777 = shl i32 1, %776
  %778 = call i32 @dx.op.binary.i32(i32 40, i32 %777, i32 4)  ; UMin(a,b)
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = extractvalue %dx.types.ResRet.i32 %779, 1
  %782 = icmp eq i32 %778, 0
  br i1 %782, label %824, label %783

; <label>:783                                     ; preds = %727
  br label %784

; <label>:784                                     ; preds = %812, %783
  %785 = phi i32 [ %815, %812 ], [ 0, %783 ]
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = lshr i32 %787, 16
  %789 = and i32 %788, 31
  %790 = shl i32 %773, %789
  %791 = add i32 %790, %772
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 31
  %795 = shl i32 %791, %794
  %796 = add i32 %795, %785
  %797 = shl i32 %796, 2
  %798 = add i32 %797, 32
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = icmp slt i32 %800, 0
  %802 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %785
  %803 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %785
  %804 = bitcast float* %802 to i32*
  %805 = bitcast float* %803 to i32*
  br i1 %801, label %806, label %812, !dx.controlflow.hints !67

; <label>:806                                     ; preds = %784
  %807 = and i32 %800, 1073741823
  %808 = add nuw nsw i32 %807, 20
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = extractvalue %dx.types.ResRet.i32 %809, 1
  br label %812

; <label>:812                                     ; preds = %806, %784
  %813 = phi i32 [ %810, %806 ], [ %780, %784 ]
  %814 = phi i32 [ %811, %806 ], [ %781, %784 ]
  store i32 %813, i32* %804, align 4
  store i32 %814, i32* %805, align 4
  %815 = add nuw i32 %785, 1
  %816 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.i32 %816, 2
  %818 = icmp eq i32 %817, 0
  %819 = icmp ugt i32 %800, -1073741825
  %820 = and i1 %819, %818
  %821 = icmp ult i32 %815, %778
  %822 = and i1 %820, %821
  br i1 %822, label %784, label %823, !dx.controlflow.hints !68

; <label>:823                                     ; preds = %812
  br label %824

; <label>:824                                     ; preds = %823, %727
  %825 = phi i32 [ 0, %727 ], [ %815, %823 ]
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %828 = fptoui float %827 to i32
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %881, label %830

; <label>:830                                     ; preds = %824
  br label %831

; <label>:831                                     ; preds = %876, %830
  %832 = phi i32 [ %877, %876 ], [ %825, %830 ]
  %833 = phi i32 [ %878, %876 ], [ 0, %830 ]
  %834 = lshr i32 %833, 2
  %835 = and i32 %833, 3
  %836 = add nuw nsw i32 %834, 83
  %837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 %836)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.i32 %837, 0
  %839 = extractvalue %dx.types.CBufRet.i32 %837, 1
  %840 = extractvalue %dx.types.CBufRet.i32 %837, 2
  %841 = extractvalue %dx.types.CBufRet.i32 %837, 3
  %842 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %838, i32* %842, align 4
  %843 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %839, i32* %843, align 4
  %844 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %840, i32* %844, align 4
  %845 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %841, i32* %845, align 4
  %846 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 %835
  %847 = load i32, i32* %846, align 4, !tbaa !69
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = lshr i32 %849, 16
  %851 = and i32 %850, 31
  %852 = shl i32 %773, %851
  %853 = add i32 %852, %772
  %854 = shl i32 %853, 2
  %855 = add i32 %854, %847
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %876, label %859, !dx.controlflow.hints !73

; <label>:859                                     ; preds = %831
  %860 = icmp slt i32 %857, 0
  %861 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %832
  %862 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %832
  %863 = bitcast float* %861 to i32*
  %864 = bitcast float* %862 to i32*
  br i1 %860, label %865, label %872, !dx.controlflow.hints !74

; <label>:865                                     ; preds = %859
  %866 = and i32 %857, 1073741823
  %867 = add i32 %847, 20
  %868 = add i32 %867, %866
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = extractvalue %dx.types.ResRet.i32 %869, 1
  br label %872

; <label>:872                                     ; preds = %865, %859
  %873 = phi i32 [ %870, %865 ], [ %780, %859 ]
  %874 = phi i32 [ %871, %865 ], [ %781, %859 ]
  store i32 %873, i32* %863, align 4
  store i32 %874, i32* %864, align 4
  %875 = add i32 %832, 1
  br label %876

; <label>:876                                     ; preds = %872, %831
  %877 = phi i32 [ %832, %831 ], [ %875, %872 ]
  %878 = add nuw i32 %833, 1
  %879 = icmp eq i32 %878, %828
  br i1 %879, label %880, label %831

; <label>:880                                     ; preds = %876
  br label %881

; <label>:881                                     ; preds = %880, %824
  %882 = phi i32 [ %825, %824 ], [ %877, %880 ]
  %883 = icmp eq i32 %882, 1
  %884 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 0
  %885 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 0
  br i1 %883, label %886, label %889, !dx.controlflow.hints !75

; <label>:886                                     ; preds = %881
  %887 = load float, float* %884, align 4
  %888 = load float, float* %885, align 4
  br label %916

; <label>:889                                     ; preds = %881
  %890 = load float, float* %884, align 4
  %891 = load float, float* %885, align 4
  %892 = fdiv fast float 1.000000e+00, %891
  %893 = fsub fast float %890, %892
  %894 = icmp ugt i32 %882, 1
  br i1 %894, label %895, label %911

; <label>:895                                     ; preds = %889
  br label %896

; <label>:896                                     ; preds = %896, %895
  %897 = phi float [ %906, %896 ], [ %893, %895 ]
  %898 = phi float [ %907, %896 ], [ %890, %895 ]
  %899 = phi i32 [ %908, %896 ], [ 1, %895 ]
  %900 = getelementptr [12 x float], [12 x float]* %39, i32 0, i32 %899
  %901 = load float, float* %900, align 4
  %902 = getelementptr [12 x float], [12 x float]* %40, i32 0, i32 %899
  %903 = load float, float* %902, align 4
  %904 = fdiv fast float 1.000000e+00, %903
  %905 = fsub fast float %901, %904
  %906 = call float @dx.op.binary.f32(i32 36, float %897, float %905)  ; FMin(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %898, float %901)  ; FMax(a,b)
  %908 = add nuw i32 %899, 1
  %909 = icmp eq i32 %908, %882
  br i1 %909, label %910, label %896

; <label>:910                                     ; preds = %896
  br label %911

; <label>:911                                     ; preds = %910, %889
  %912 = phi float [ %893, %889 ], [ %906, %910 ]
  %913 = phi float [ %890, %889 ], [ %907, %910 ]
  %914 = fsub fast float %913, %912
  %915 = fdiv fast float 1.000000e+00, %914
  br label %916

; <label>:916                                     ; preds = %911, %886
  %917 = phi float [ %887, %886 ], [ %913, %911 ]
  %918 = phi float [ %888, %886 ], [ %915, %911 ]
  %919 = fadd fast float %347, %917
  %920 = fmul fast float %919, %918
  %921 = call float @dx.op.unary.f32(i32 7, float %920)  ; Saturate(value)
  %922 = fmul fast float %921, 2.000000e+00
  %923 = fsub fast float 1.000000e+00, %922
  %924 = fmul fast float %757, %757
  %925 = fsub fast float %758, %924
  %926 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %925)  ; FMax(a,b)
  %927 = fdiv fast float 1.000000e+00, %926
  %928 = fmul fast float %758, %757
  %929 = fsub fast float %759, %928
  %930 = fsub fast float %923, %757
  %931 = fmul fast float %923, %923
  %932 = fsub fast float %931, %758
  %933 = fmul fast float %927, %929
  %934 = fmul fast float %933, %930
  %935 = fsub fast float %932, %934
  %936 = fmul fast float %758, %758
  %937 = fsub fast float %760, %936
  %938 = fmul fast float %929, %929
  %939 = fmul fast float %938, %927
  %940 = fsub fast float %937, %939
  %941 = fdiv fast float %935, %940
  %942 = fmul fast float %941, %929
  %943 = fsub fast float %930, %942
  %944 = fmul fast float %943, %927
  %945 = fmul fast float %944, %757
  %946 = fsub fast float 1.000000e+00, %945
  %947 = fmul fast float %941, %758
  %948 = fsub fast float %946, %947
  %949 = fmul fast float %944, %944
  %950 = fmul fast float %941, 4.000000e+00
  %951 = fmul fast float %950, %948
  %952 = fsub fast float %949, %951
  %953 = call float @dx.op.unary.f32(i32 24, float %952)  ; Sqrt(value)
  %954 = fcmp fast oge float %944, 0.000000e+00
  %955 = fsub fast float -0.000000e+00, %953
  %956 = select i1 %954, float %955, float %953
  %957 = fsub fast float %956, %944
  %958 = fdiv fast float %957, %941
  %959 = fdiv fast float %948, %957
  %960 = fmul fast float %958, 5.000000e-01
  %961 = fmul fast float %959, 2.000000e+00
  %962 = select i1 %954, float %960, float %961
  %963 = select i1 %954, float %961, float %960
  %964 = call float @dx.op.binary.f32(i32 35, float %962, float %963)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %962, float %963)  ; FMin(a,b)
  %966 = fcmp fast ogt float %923, %964
  %967 = fsub fast float %923, %965
  %968 = fsub fast float %923, %964
  %969 = fsub fast float %964, %965
  %970 = select i1 %966, float %968, float %969
  %971 = fmul float %967, %970
  %972 = select i1 %966, float %965, float %923
  %973 = fcmp fast ogt float %923, %965
  %974 = fmul fast float %972, %964
  %975 = fadd fast float %972, %964
  %976 = fmul fast float %975, %757
  %977 = fadd fast float %974, %758
  %978 = fsub fast float %977, %976
  %979 = fdiv fast float %978, %971
  %980 = select i1 %973, float %979, float 0.000000e+00
  %981 = fsub fast float 1.000000e+00, %980
  %982 = select i1 %966, float %981, float %980
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %985 = fmul fast float %984, %983
  %986 = fsub fast float 1.000000e+00, %985
  br label %2695

; <label>:987                                     ; preds = %315
  %988 = icmp eq i32 %231, 11
  br i1 %988, label %2695, label %989, !dx.controlflow.hints !76

; <label>:989                                     ; preds = %987
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %994 = fmul fast float %993, %198
  %995 = fmul fast float %993, %202
  %996 = fadd fast float %994, %991
  %997 = fadd fast float %995, %992
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %998, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1002 = fmul fast float %1001, %198
  %1003 = fmul fast float %1001, %202
  %1004 = fadd fast float %1002, %999
  %1005 = fadd fast float %1003, %1000
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1008 = fsub fast float %1007, %206
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = fmul fast float %1008, %1009
  %1011 = fsub fast float 1.000000e+00, %1010
  %1012 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  br i1 %72, label %1073, label %1013, !dx.controlflow.hints !77

; <label>:1013                                    ; preds = %989
  %1014 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1017 = fadd fast float %1016, %1014
  %1018 = fcmp fast ogt float %1017, 0.000000e+00
  br i1 %1018, label %1019, label %1043, !dx.controlflow.hints !78

; <label>:1019                                    ; preds = %1013
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = fsub fast float %1004, %1021
  %1024 = fsub fast float %1005, %1022
  %1025 = fcmp fast olt float %1023, 0.000000e+00
  %1026 = fcmp fast olt float %1024, 0.000000e+00
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1032 = select i1 %1025, float %1028, float %1030
  %1033 = select i1 %1026, float %1029, float %1031
  %1034 = fmul fast float %1032, %1023
  %1035 = fmul fast float %1033, %1024
  %1036 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1037 = call float @dx.op.unary.f32(i32 6, float %1035)  ; FAbs(value)
  %1038 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1039 = call float @dx.op.binary.f32(i32 35, float %1036, float %1037)  ; FMax(a,b)
  %1040 = fsub fast float %1038, %1039
  %1041 = call float @dx.op.unary.f32(i32 7, float %1040)  ; Saturate(value)
  %1042 = fmul fast float %1041, %1012
  br label %1043

; <label>:1043                                    ; preds = %1019, %1013
  %1044 = phi float [ %1042, %1019 ], [ 0.000000e+00, %1013 ]
  %1045 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %1046 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1047 = fadd fast float %1046, %1045
  %1048 = fcmp fast ogt float %1047, 0.000000e+00
  br i1 %1048, label %1049, label %1073, !dx.controlflow.hints !79

; <label>:1049                                    ; preds = %1043
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = fsub fast float %996, %1051
  %1054 = fsub fast float %997, %1052
  %1055 = fcmp fast olt float %1053, 0.000000e+00
  %1056 = fcmp fast olt float %1054, 0.000000e+00
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.CBufRet.f32 %1057, 3
  %1062 = select i1 %1055, float %1058, float %1060
  %1063 = select i1 %1056, float %1059, float %1061
  %1064 = fmul fast float %1062, %1053
  %1065 = fmul fast float %1063, %1054
  %1066 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1067 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1068 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1069 = call float @dx.op.binary.f32(i32 35, float %1066, float %1067)  ; FMax(a,b)
  %1070 = fsub fast float %1068, %1069
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fmul fast float %1071, %1012
  br label %1073

; <label>:1073                                    ; preds = %1049, %1043, %989
  %1074 = phi float [ 0.000000e+00, %989 ], [ %1072, %1049 ], [ 0.000000e+00, %1043 ]
  %1075 = phi float [ 0.000000e+00, %989 ], [ %1044, %1049 ], [ %1044, %1043 ]
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = fmul fast float %1077, %79
  %1080 = fadd fast float %1079, %1078
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1085 = fsub fast float %198, %1083
  %1086 = fsub fast float %202, %1084
  %1087 = fcmp fast olt float %1085, 0.000000e+00
  %1088 = fcmp fast olt float %1086, 0.000000e+00
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1094 = select i1 %1087, float %1090, float %1092
  %1095 = select i1 %1088, float %1091, float %1093
  %1096 = fmul fast float %1094, %1085
  %1097 = fmul fast float %1095, %1086
  %1098 = call float @dx.op.unary.f32(i32 6, float %1096)  ; FAbs(value)
  %1099 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1100 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1101 = call float @dx.op.binary.f32(i32 35, float %1098, float %1099)  ; FMax(a,b)
  %1102 = fsub fast float %1100, %1101
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1103, float %1081)  ; FMin(a,b)
  %1105 = fmul fast float %1104, %1012
  %1106 = fsub fast float %1074, %1105
  %1107 = fsub fast float %1075, %1074
  %1108 = fsub fast float %1107, %1105
  %1109 = call float @dx.op.binary.f32(i32 35, float %1074, float %1075)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1105, float %1109)  ; FMax(a,b)
  %1111 = fcmp fast olt float %1110, 1.000000e+00
  %1112 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1113 = fcmp fast une float %1112, 0.000000e+00
  %1114 = and i1 %1111, %1113
  br i1 %1114, label %1115, label %1782, !dx.controlflow.hints !80

; <label>:1115                                    ; preds = %1073
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1125 = extractvalue %dx.types.CBufRet.f32 %1121, 3
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.CBufRet.f32 %1126, 3
  %1131 = fmul fast float %1117, %133
  %1132 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1118, float %1131)  ; FMad(a,b,c)
  %1133 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1119, float %1132)  ; FMad(a,b,c)
  %1134 = fadd fast float %1133, %1120
  %1135 = fmul fast float %1122, %133
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1123, float %1135)  ; FMad(a,b,c)
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1124, float %1136)  ; FMad(a,b,c)
  %1138 = fadd fast float %1137, %1125
  %1139 = fmul fast float %1127, %133
  %1140 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1128, float %1139)  ; FMad(a,b,c)
  %1141 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1129, float %1140)  ; FMad(a,b,c)
  %1142 = fadd fast float %1141, %1130
  %1143 = fcmp fast oge float %1134, 1.000000e+00
  %1144 = fcmp fast oge float %1138, 1.000000e+00
  %1145 = or i1 %1143, %1144
  %1146 = fcmp fast olt float %1134, 0.000000e+00
  %1147 = fcmp fast olt float %1138, 0.000000e+00
  %1148 = or i1 %1146, %1147
  %1149 = or i1 %1145, %1148
  br i1 %1149, label %1782, label %1150, !dx.controlflow.hints !56

; <label>:1150                                    ; preds = %1115
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.f32 %1155, 1
  %1157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.i32 %1157, 2
  %1159 = uitofp i32 %1158 to float
  %1160 = extractvalue %dx.types.CBufRet.i32 %1157, 3
  %1161 = uitofp i32 %1160 to float
  %1162 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1163 = fmul fast float %1162, 2.000000e+00
  %1164 = fsub fast float %1134, %1152
  %1165 = fsub fast float %1138, %1153
  %1166 = fmul fast float %1163, %1164
  %1167 = fmul fast float %1163, %1165
  %1168 = fdiv fast float 1.000000e+00, %168
  %1169 = fmul fast float %1167, %1168
  %1170 = call float @dx.op.unary.f32(i32 6, float %1169)  ; FAbs(value)
  %1171 = fmul fast float %1154, %135
  %1172 = fmul fast float %1171, %1163
  %1173 = call float @dx.op.unary.f32(i32 6, float %1172)  ; FAbs(value)
  %1174 = call float @dx.op.unary.f32(i32 6, float %1166)  ; FAbs(value)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1173, float %1170)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1174, float %1175)  ; FMax(a,b)
  %1177 = fmul fast float %1176, 2.000000e+00
  %1178 = call float @dx.op.unary.f32(i32 23, float %1177)  ; Log(value)
  %1179 = call float @dx.op.binary.f32(i32 35, float %1178, float %1159)  ; FMax(a,b)
  %1180 = call float @dx.op.unary.f32(i32 22, float %1179)  ; Frc(value)
  %1181 = fadd fast float %1180, 0xBFEA666660000000
  %1182 = fmul fast float %1181, 8.000000e+00
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 27, float %1179)  ; Round_ni(value)
  %1185 = fadd fast float %1184, %1183
  %1186 = call float @dx.op.binary.f32(i32 36, float %1185, float %1161)  ; FMin(a,b)
  %1187 = call float @dx.op.unary.f32(i32 27, float %1186)  ; Round_ni(value)
  %1188 = fsub fast float -0.000000e+00, %1187
  %1189 = call float @dx.op.unary.f32(i32 21, float %1188)  ; Exp(value)
  %1190 = fmul fast float %1189, %1163
  %1191 = fmul fast float %1190, %1134
  %1192 = fmul fast float %1190, %1138
  %1193 = fmul fast float %1191, 5.000000e-01
  %1194 = fmul fast float %1192, 5.000000e-01
  %1195 = fadd fast float %1193, 5.000000e-01
  %1196 = fadd fast float %1194, 5.000000e-01
  %1197 = fmul fast float %1191, 2.500000e-01
  %1198 = fmul fast float %1192, 2.500000e-01
  %1199 = fadd fast float %1197, 5.000000e-01
  %1200 = fadd fast float %1198, 5.000000e-01
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 536870911
  %1204 = lshr i32 %1203, 9
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, %1134
  %1207 = fmul fast float %1205, %1138
  %1208 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1209 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1210 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1211 = fcmp fast une float %1210, 0.000000e+00
  br i1 %1211, label %1212, label %1310, !dx.controlflow.hints !57

; <label>:1212                                    ; preds = %1150
  %1213 = call float @dx.op.unary.f32(i32 21, float %1184)  ; Exp(value)
  %1214 = fmul fast float %1213, 1.953125e-03
  %1215 = fcmp fast olt float %1208, %1214
  %1216 = fcmp fast olt float %1209, %1214
  %1217 = or i1 %1215, %1216
  %1218 = fsub fast float 1.000000e+00, %1214
  %1219 = fcmp fast ogt float %1208, %1218
  %1220 = fcmp fast ogt float %1209, %1218
  %1221 = or i1 %1219, %1220
  %1222 = or i1 %1217, %1221
  br i1 %1222, label %1223, label %1389, !dx.controlflow.hints !58

; <label>:1223                                    ; preds = %1212
  %1224 = fmul fast float %1156, 5.000000e-01
  %1225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.i32 %1225, 0
  %1227 = fmul fast float %1138, 3.530000e+02
  %1228 = uitofp i32 %1203 to float
  %1229 = fmul fast float %1227, %1228
  %1230 = fmul fast float %1134, 6.130000e+02
  %1231 = fadd fast float %1229, %1230
  %1232 = fptoui float %1231 to i32
  %1233 = add i32 %1226, %1232
  %1234 = mul i32 %1233, -63
  %1235 = lshr i32 %1234, 17
  %1236 = xor i32 %1235, %1234
  %1237 = mul i32 %1236, -511
  %1238 = mul i32 %1236, -8176
  %1239 = xor i32 %1237, %1238
  %1240 = mul i32 %1239, -7
  %1241 = mul i32 %1239, -7168
  %1242 = xor i32 %1240, %1241
  %1243 = lshr i32 %1242, 15
  %1244 = xor i32 %1243, %1240
  %1245 = and i32 %1244, 15
  %1246 = mul i32 %1245, 2
  %1247 = add i32 0, %1246
  %1248 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1247
  %1249 = load float, float* %1248, align 4
  %1250 = mul i32 %1245, 2
  %1251 = add i32 1, %1250
  %1252 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1251
  %1253 = load float, float* %1252, align 4
  %1254 = fmul fast float %1138, 2.770000e+02
  %1255 = fmul fast float %1254, %1228
  %1256 = fmul fast float %1134, 5.990000e+02
  %1257 = fadd fast float %1255, %1256
  %1258 = fptoui float %1257 to i32
  %1259 = mul i32 %1258, -63
  %1260 = lshr i32 %1259, 17
  %1261 = xor i32 %1260, %1259
  %1262 = mul i32 %1261, -511
  %1263 = mul i32 %1261, -8176
  %1264 = xor i32 %1262, %1263
  %1265 = mul i32 %1264, -7
  %1266 = mul i32 %1264, -7168
  %1267 = xor i32 %1265, %1266
  %1268 = lshr i32 %1267, 15
  %1269 = xor i32 %1268, %1265
  %1270 = and i32 %1269, 63
  %1271 = mul i32 %1270, 2
  %1272 = add i32 0, %1271
  %1273 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1272
  %1274 = load float, float* %1273, align 4
  %1275 = mul i32 %1270, 2
  %1276 = add i32 1, %1275
  %1277 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1276
  %1278 = load float, float* %1277, align 4
  %1279 = call float @dx.op.dot2.f32(i32 54, float %1249, float %1253, float %1274, float %1278)  ; Dot2(ax,ay,bx,by)
  %1280 = fsub fast float -0.000000e+00, %1274
  %1281 = call float @dx.op.dot2.f32(i32 54, float %1249, float %1253, float %1280, float %1278)  ; Dot2(ax,ay,bx,by)
  %1282 = fmul fast float %1279, %1224
  %1283 = fmul fast float %1281, %1224
  %1284 = fdiv fast float 2.000000e+00, %1190
  %1285 = fmul fast float %1213, 9.765625e-04
  %1286 = fcmp fast olt float %1208, %1285
  %1287 = fcmp fast olt float %1209, %1285
  %1288 = or i1 %1286, %1287
  %1289 = fsub fast float 1.000000e+00, %1285
  %1290 = fcmp fast ogt float %1208, %1289
  %1291 = fcmp fast ogt float %1209, %1289
  %1292 = or i1 %1290, %1291
  %1293 = or i1 %1288, %1292
  %1294 = fmul fast float %1282, 2.000000e+00
  br i1 %1293, label %1295, label %1299, !dx.controlflow.hints !59

; <label>:1295                                    ; preds = %1223
  %1296 = fmul fast float %1283, 2.000000e+00
  %1297 = fadd fast float %1294, %1195
  %1298 = fadd fast float %1296, %1196
  br label %1299

; <label>:1299                                    ; preds = %1295, %1223
  %1300 = phi float [ %1297, %1295 ], [ %1195, %1223 ]
  %1301 = phi float [ %1298, %1295 ], [ %1196, %1223 ]
  %1302 = phi i32 [ 3, %1295 ], [ 2, %1223 ]
  %1303 = fadd fast float %1282, %1199
  %1304 = fadd fast float %1283, %1200
  %1305 = fmul fast float %1294, %1284
  %1306 = fmul fast float %1284, 2.000000e+00
  %1307 = fmul fast float %1306, %1283
  %1308 = fadd fast float %1305, %1134
  %1309 = fadd fast float %1307, %1138
  br label %1389

; <label>:1310                                    ; preds = %1150
  %1311 = call float @dx.op.unary.f32(i32 21, float %1187)  ; Exp(value)
  %1312 = fmul fast float %1311, 9.765625e-04
  %1313 = fcmp fast olt float %1208, %1312
  %1314 = fcmp fast olt float %1209, %1312
  %1315 = or i1 %1313, %1314
  %1316 = fsub fast float 1.000000e+00, %1312
  %1317 = fcmp fast ogt float %1208, %1316
  %1318 = fcmp fast ogt float %1209, %1316
  %1319 = or i1 %1317, %1318
  %1320 = or i1 %1315, %1319
  br i1 %1320, label %1321, label %1389, !dx.controlflow.hints !60

; <label>:1321                                    ; preds = %1310
  %1322 = fmul fast float %1156, 5.000000e-01
  %1323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.i32 %1323, 0
  %1325 = fmul fast float %1138, 3.530000e+02
  %1326 = uitofp i32 %1203 to float
  %1327 = fmul fast float %1325, %1326
  %1328 = fmul fast float %1134, 6.130000e+02
  %1329 = fadd fast float %1327, %1328
  %1330 = fptoui float %1329 to i32
  %1331 = add i32 %1324, %1330
  %1332 = mul i32 %1331, -63
  %1333 = lshr i32 %1332, 17
  %1334 = xor i32 %1333, %1332
  %1335 = mul i32 %1334, -511
  %1336 = mul i32 %1334, -8176
  %1337 = xor i32 %1335, %1336
  %1338 = mul i32 %1337, -7
  %1339 = mul i32 %1337, -7168
  %1340 = xor i32 %1338, %1339
  %1341 = lshr i32 %1340, 15
  %1342 = xor i32 %1341, %1338
  %1343 = and i32 %1342, 15
  %1344 = mul i32 %1343, 2
  %1345 = add i32 0, %1344
  %1346 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1345
  %1347 = load float, float* %1346, align 4
  %1348 = mul i32 %1343, 2
  %1349 = add i32 1, %1348
  %1350 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1349
  %1351 = load float, float* %1350, align 4
  %1352 = fmul fast float %1138, 2.770000e+02
  %1353 = fmul fast float %1352, %1326
  %1354 = fmul fast float %1134, 5.990000e+02
  %1355 = fadd fast float %1353, %1354
  %1356 = fptoui float %1355 to i32
  %1357 = mul i32 %1356, -63
  %1358 = lshr i32 %1357, 17
  %1359 = xor i32 %1358, %1357
  %1360 = mul i32 %1359, -511
  %1361 = mul i32 %1359, -8176
  %1362 = xor i32 %1360, %1361
  %1363 = mul i32 %1362, -7
  %1364 = mul i32 %1362, -7168
  %1365 = xor i32 %1363, %1364
  %1366 = lshr i32 %1365, 15
  %1367 = xor i32 %1366, %1363
  %1368 = and i32 %1367, 63
  %1369 = mul i32 %1368, 2
  %1370 = add i32 0, %1369
  %1371 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1370
  %1372 = load float, float* %1371, align 4
  %1373 = mul i32 %1368, 2
  %1374 = add i32 1, %1373
  %1375 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1374
  %1376 = load float, float* %1375, align 4
  %1377 = call float @dx.op.dot2.f32(i32 54, float %1347, float %1351, float %1372, float %1376)  ; Dot2(ax,ay,bx,by)
  %1378 = fsub fast float -0.000000e+00, %1372
  %1379 = call float @dx.op.dot2.f32(i32 54, float %1347, float %1351, float %1378, float %1376)  ; Dot2(ax,ay,bx,by)
  %1380 = fmul fast float %1377, %1322
  %1381 = fmul fast float %1379, %1322
  %1382 = fadd fast float %1380, %1195
  %1383 = fadd fast float %1381, %1196
  %1384 = fdiv fast float 2.000000e+00, %1190
  %1385 = fmul fast float %1384, %1380
  %1386 = fmul fast float %1381, %1384
  %1387 = fadd fast float %1385, %1134
  %1388 = fadd fast float %1386, %1138
  br label %1389

; <label>:1389                                    ; preds = %1321, %1310, %1299, %1212
  %1390 = phi float [ %1303, %1299 ], [ %1199, %1212 ], [ %1199, %1321 ], [ %1199, %1310 ]
  %1391 = phi float [ %1304, %1299 ], [ %1200, %1212 ], [ %1200, %1321 ], [ %1200, %1310 ]
  %1392 = phi float [ %1300, %1299 ], [ %1195, %1212 ], [ %1382, %1321 ], [ %1195, %1310 ]
  %1393 = phi float [ %1301, %1299 ], [ %1196, %1212 ], [ %1383, %1321 ], [ %1196, %1310 ]
  %1394 = phi i32 [ %1302, %1299 ], [ 0, %1212 ], [ 1, %1321 ], [ 0, %1310 ]
  %1395 = phi float [ %1308, %1299 ], [ %1134, %1212 ], [ %1387, %1321 ], [ %1134, %1310 ]
  %1396 = phi float [ %1309, %1299 ], [ %1138, %1212 ], [ %1388, %1321 ], [ %1138, %1310 ]
  %1397 = fsub fast float %1161, %1159
  %1398 = fptoui float %1397 to i32
  %1399 = add i32 %1398, 320
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %1399)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1403 = fcmp fast une float %1186, %1161
  %1404 = fsub fast float %1395, %1401
  %1405 = fsub fast float %1396, %1402
  %1406 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1407 = call float @dx.op.unary.f32(i32 6, float %1405)  ; FAbs(value)
  %1408 = fmul fast float %1406, %1190
  %1409 = fmul fast float %1407, %1190
  %1410 = fcmp fast olt float %1408, 1.000000e+00
  %1411 = fcmp fast olt float %1409, 1.000000e+00
  %1412 = and i1 %1410, %1411
  %1413 = or i1 %1403, %1412
  br i1 %1413, label %1414, label %1782, !dx.controlflow.hints !61

; <label>:1414                                    ; preds = %1389
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 2
  %1417 = sitofp i32 %1416 to float
  %1418 = fsub fast float %1186, %1417
  %1419 = call float @dx.op.unary.f32(i32 27, float %1418)  ; Round_ni(value)
  %1420 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1421 = icmp eq i32 %1394, 0
  %1422 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1423 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  br i1 %1421, label %1494, label %1424, !dx.controlflow.hints !62

; <label>:1424                                    ; preds = %1414
  %1425 = and i32 %1394, 1
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1440, label %1427, !dx.controlflow.hints !63

; <label>:1427                                    ; preds = %1424
  %1428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1429 = extractvalue %dx.types.CBufRet.f32 %1428, 0
  %1430 = fmul fast float %1422, %1429
  %1431 = fmul fast float %1423, %1429
  %1432 = fptoui float %1430 to i32
  %1433 = fptoui float %1431 to i32
  %1434 = fptoui float %1419 to i32
  %1435 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1432, i32 %1433, i32 %1434, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.ResRet.f32 %1435, 3
  br label %1446

; <label>:1440                                    ; preds = %1424
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1422, float %1423, float %1419, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.ResRet.f32 %1441, 3
  br label %1446

; <label>:1446                                    ; preds = %1440, %1427
  %1447 = phi float [ %1436, %1427 ], [ %1442, %1440 ]
  %1448 = phi float [ %1437, %1427 ], [ %1443, %1440 ]
  %1449 = phi float [ %1438, %1427 ], [ %1444, %1440 ]
  %1450 = phi float [ %1439, %1427 ], [ %1445, %1440 ]
  %1451 = fcmp fast ogt float %1420, 0.000000e+00
  br i1 %1451, label %1452, label %1522, !dx.controlflow.hints !64

; <label>:1452                                    ; preds = %1446
  %1453 = and i32 %1394, 2
  %1454 = icmp eq i32 %1453, 0
  %1455 = fadd fast float %1419, 1.000000e+00
  %1456 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1457 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  br i1 %1454, label %1471, label %1458, !dx.controlflow.hints !65

; <label>:1458                                    ; preds = %1452
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1461 = fmul fast float %1456, %1460
  %1462 = fmul fast float %1457, %1460
  %1463 = fptoui float %1461 to i32
  %1464 = fptoui float %1462 to i32
  %1465 = fptoui float %1455 to i32
  %1466 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1463, i32 %1464, i32 %1465, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  br label %1477

; <label>:1471                                    ; preds = %1452
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1456, float %1457, float %1455, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  br label %1477

; <label>:1477                                    ; preds = %1471, %1458
  %1478 = phi float [ %1467, %1458 ], [ %1473, %1471 ]
  %1479 = phi float [ %1468, %1458 ], [ %1474, %1471 ]
  %1480 = phi float [ %1469, %1458 ], [ %1475, %1471 ]
  %1481 = phi float [ %1470, %1458 ], [ %1476, %1471 ]
  %1482 = fsub fast float %1478, %1447
  %1483 = fsub fast float %1479, %1448
  %1484 = fsub fast float %1480, %1449
  %1485 = fsub fast float %1481, %1450
  %1486 = fmul fast float %1482, %1420
  %1487 = fmul fast float %1483, %1420
  %1488 = fmul fast float %1484, %1420
  %1489 = fmul fast float %1485, %1420
  %1490 = fadd fast float %1486, %1447
  %1491 = fadd fast float %1487, %1448
  %1492 = fadd fast float %1488, %1449
  %1493 = fadd fast float %1489, %1450
  br label %1522

; <label>:1494                                    ; preds = %1414
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1422, float %1423, float %1419, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = extractvalue %dx.types.ResRet.f32 %1495, 1
  %1498 = extractvalue %dx.types.ResRet.f32 %1495, 2
  %1499 = extractvalue %dx.types.ResRet.f32 %1495, 3
  %1500 = fcmp fast ogt float %1420, 0.000000e+00
  br i1 %1500, label %1501, label %1522, !dx.controlflow.hints !66

; <label>:1501                                    ; preds = %1494
  %1502 = fadd fast float %1419, 1.000000e+00
  %1503 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1504 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1503, float %1504, float %1502, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.ResRet.f32 %1505, 3
  %1510 = fsub fast float %1506, %1496
  %1511 = fsub fast float %1507, %1497
  %1512 = fsub fast float %1508, %1498
  %1513 = fsub fast float %1509, %1499
  %1514 = fmul fast float %1510, %1420
  %1515 = fmul fast float %1511, %1420
  %1516 = fmul fast float %1512, %1420
  %1517 = fmul fast float %1513, %1420
  %1518 = fadd fast float %1514, %1496
  %1519 = fadd fast float %1515, %1497
  %1520 = fadd fast float %1516, %1498
  %1521 = fadd fast float %1517, %1499
  br label %1522

; <label>:1522                                    ; preds = %1501, %1494, %1477, %1446
  %1523 = phi float [ %1490, %1477 ], [ %1447, %1446 ], [ %1518, %1501 ], [ %1496, %1494 ]
  %1524 = phi float [ %1491, %1477 ], [ %1448, %1446 ], [ %1519, %1501 ], [ %1497, %1494 ]
  %1525 = phi float [ %1492, %1477 ], [ %1449, %1446 ], [ %1520, %1501 ], [ %1498, %1494 ]
  %1526 = phi float [ %1493, %1477 ], [ %1450, %1446 ], [ %1521, %1501 ], [ %1499, %1494 ]
  %1527 = fadd fast float %1523, -5.000000e-01
  %1528 = fadd fast float %1525, -5.000000e-01
  %1529 = fmul fast float %1527, 0xBFD5555560000000
  %1530 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1528, float %1529)  ; FMad(a,b,c)
  %1531 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1524, float 0.000000e+00)  ; FMad(a,b,c)
  %1532 = fadd fast float %1531, %1526
  %1533 = fmul fast float %1527, -7.500000e-01
  %1534 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1528, float %1533)  ; FMad(a,b,c)
  %1535 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1524, float 0.000000e+00)  ; FMad(a,b,c)
  %1536 = fadd fast float %1535, %1526
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.CBufRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1544 = fsub fast float %1540, %1530
  %1545 = fsub fast float %1541, %1532
  %1546 = fsub fast float %1542, %1534
  %1547 = fsub fast float %1543, %1536
  %1548 = fmul fast float %1544, %1538
  %1549 = fmul fast float %1545, %1538
  %1550 = fmul fast float %1546, %1538
  %1551 = fmul fast float %1547, %1538
  %1552 = fadd fast float %1548, %1530
  %1553 = fadd fast float %1549, %1532
  %1554 = fadd fast float %1550, %1534
  %1555 = fadd fast float %1551, %1536
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 536870911
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, %1395
  %1561 = fmul fast float %1559, %1396
  %1562 = fptoui float %1560 to i32
  %1563 = fptoui float %1561 to i32
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 31
  %1567 = lshr i32 %1562, %1566
  %1568 = lshr i32 %1563, %1566
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 31
  %1572 = shl i32 1, %1571
  %1573 = call i32 @dx.op.binary.i32(i32 40, i32 %1572, i32 4)  ; UMin(a,b)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.i32 %1574, 1
  %1577 = icmp eq i32 %1573, 0
  br i1 %1577, label %1619, label %1578

; <label>:1578                                    ; preds = %1522
  br label %1579

; <label>:1579                                    ; preds = %1607, %1578
  %1580 = phi i32 [ %1610, %1607 ], [ 0, %1578 ]
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = lshr i32 %1582, 16
  %1584 = and i32 %1583, 31
  %1585 = shl i32 %1568, %1584
  %1586 = add i32 %1585, %1567
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 31
  %1590 = shl i32 %1586, %1589
  %1591 = add i32 %1590, %1580
  %1592 = shl i32 %1591, 2
  %1593 = add i32 %1592, 32
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = icmp slt i32 %1595, 0
  %1597 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1580
  %1598 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1580
  %1599 = bitcast float* %1597 to i32*
  %1600 = bitcast float* %1598 to i32*
  br i1 %1596, label %1601, label %1607, !dx.controlflow.hints !67

; <label>:1601                                    ; preds = %1579
  %1602 = and i32 %1595, 1073741823
  %1603 = add nuw nsw i32 %1602, 20
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = extractvalue %dx.types.ResRet.i32 %1604, 1
  br label %1607

; <label>:1607                                    ; preds = %1601, %1579
  %1608 = phi i32 [ %1605, %1601 ], [ %1575, %1579 ]
  %1609 = phi i32 [ %1606, %1601 ], [ %1576, %1579 ]
  store i32 %1608, i32* %1599, align 4
  store i32 %1609, i32* %1600, align 4
  %1610 = add nuw i32 %1580, 1
  %1611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1612 = extractvalue %dx.types.CBufRet.i32 %1611, 2
  %1613 = icmp eq i32 %1612, 0
  %1614 = icmp ugt i32 %1595, -1073741825
  %1615 = and i1 %1614, %1613
  %1616 = icmp ult i32 %1610, %1573
  %1617 = and i1 %1615, %1616
  br i1 %1617, label %1579, label %1618, !dx.controlflow.hints !68

; <label>:1618                                    ; preds = %1607
  br label %1619

; <label>:1619                                    ; preds = %1618, %1522
  %1620 = phi i32 [ 0, %1522 ], [ %1610, %1618 ]
  %1621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1622 = extractvalue %dx.types.CBufRet.f32 %1621, 2
  %1623 = fptoui float %1622 to i32
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1676, label %1625

; <label>:1625                                    ; preds = %1619
  br label %1626

; <label>:1626                                    ; preds = %1671, %1625
  %1627 = phi i32 [ %1672, %1671 ], [ %1620, %1625 ]
  %1628 = phi i32 [ %1673, %1671 ], [ 0, %1625 ]
  %1629 = lshr i32 %1628, 2
  %1630 = and i32 %1628, 3
  %1631 = add nuw nsw i32 %1629, 83
  %1632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 %1631)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.i32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.i32 %1632, 1
  %1635 = extractvalue %dx.types.CBufRet.i32 %1632, 2
  %1636 = extractvalue %dx.types.CBufRet.i32 %1632, 3
  %1637 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 0
  store i32 %1633, i32* %1637, align 4
  %1638 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 1
  store i32 %1634, i32* %1638, align 4
  %1639 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 2
  store i32 %1635, i32* %1639, align 4
  %1640 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 3
  store i32 %1636, i32* %1640, align 4
  %1641 = getelementptr inbounds [4 x i32], [4 x i32]* %33, i32 0, i32 %1630
  %1642 = load i32, i32* %1641, align 4, !tbaa !69
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = lshr i32 %1644, 16
  %1646 = and i32 %1645, 31
  %1647 = shl i32 %1568, %1646
  %1648 = add i32 %1647, %1567
  %1649 = shl i32 %1648, 2
  %1650 = add i32 %1649, %1642
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1671, label %1654, !dx.controlflow.hints !73

; <label>:1654                                    ; preds = %1626
  %1655 = icmp slt i32 %1652, 0
  %1656 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1627
  %1657 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1627
  %1658 = bitcast float* %1656 to i32*
  %1659 = bitcast float* %1657 to i32*
  br i1 %1655, label %1660, label %1667, !dx.controlflow.hints !74

; <label>:1660                                    ; preds = %1654
  %1661 = and i32 %1652, 1073741823
  %1662 = add i32 %1642, 20
  %1663 = add i32 %1662, %1661
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.i32 %1664, 1
  br label %1667

; <label>:1667                                    ; preds = %1660, %1654
  %1668 = phi i32 [ %1665, %1660 ], [ %1575, %1654 ]
  %1669 = phi i32 [ %1666, %1660 ], [ %1576, %1654 ]
  store i32 %1668, i32* %1658, align 4
  store i32 %1669, i32* %1659, align 4
  %1670 = add i32 %1627, 1
  br label %1671

; <label>:1671                                    ; preds = %1667, %1626
  %1672 = phi i32 [ %1627, %1626 ], [ %1670, %1667 ]
  %1673 = add nuw i32 %1628, 1
  %1674 = icmp eq i32 %1673, %1623
  br i1 %1674, label %1675, label %1626

; <label>:1675                                    ; preds = %1671
  br label %1676

; <label>:1676                                    ; preds = %1675, %1619
  %1677 = phi i32 [ %1620, %1619 ], [ %1672, %1675 ]
  %1678 = icmp eq i32 %1677, 1
  %1679 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 0
  %1680 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 0
  br i1 %1678, label %1681, label %1684, !dx.controlflow.hints !75

; <label>:1681                                    ; preds = %1676
  %1682 = load float, float* %1679, align 4
  %1683 = load float, float* %1680, align 4
  br label %1711

; <label>:1684                                    ; preds = %1676
  %1685 = load float, float* %1679, align 4
  %1686 = load float, float* %1680, align 4
  %1687 = fdiv fast float 1.000000e+00, %1686
  %1688 = fsub fast float %1685, %1687
  %1689 = icmp ugt i32 %1677, 1
  br i1 %1689, label %1690, label %1706

; <label>:1690                                    ; preds = %1684
  br label %1691

; <label>:1691                                    ; preds = %1691, %1690
  %1692 = phi float [ %1701, %1691 ], [ %1688, %1690 ]
  %1693 = phi float [ %1702, %1691 ], [ %1685, %1690 ]
  %1694 = phi i32 [ %1703, %1691 ], [ 1, %1690 ]
  %1695 = getelementptr [12 x float], [12 x float]* %37, i32 0, i32 %1694
  %1696 = load float, float* %1695, align 4
  %1697 = getelementptr [12 x float], [12 x float]* %38, i32 0, i32 %1694
  %1698 = load float, float* %1697, align 4
  %1699 = fdiv fast float 1.000000e+00, %1698
  %1700 = fsub fast float %1696, %1699
  %1701 = call float @dx.op.binary.f32(i32 36, float %1692, float %1700)  ; FMin(a,b)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1693, float %1696)  ; FMax(a,b)
  %1703 = add nuw i32 %1694, 1
  %1704 = icmp eq i32 %1703, %1677
  br i1 %1704, label %1705, label %1691

; <label>:1705                                    ; preds = %1691
  br label %1706

; <label>:1706                                    ; preds = %1705, %1684
  %1707 = phi float [ %1688, %1684 ], [ %1701, %1705 ]
  %1708 = phi float [ %1685, %1684 ], [ %1702, %1705 ]
  %1709 = fsub fast float %1708, %1707
  %1710 = fdiv fast float 1.000000e+00, %1709
  br label %1711

; <label>:1711                                    ; preds = %1706, %1681
  %1712 = phi float [ %1682, %1681 ], [ %1708, %1706 ]
  %1713 = phi float [ %1683, %1681 ], [ %1710, %1706 ]
  %1714 = fadd fast float %1142, %1712
  %1715 = fmul fast float %1714, %1713
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fmul fast float %1716, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1552, %1552
  %1720 = fsub fast float %1553, %1719
  %1721 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1720)  ; FMax(a,b)
  %1722 = fdiv fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1553, %1552
  %1724 = fsub fast float %1554, %1723
  %1725 = fsub fast float %1718, %1552
  %1726 = fmul fast float %1718, %1718
  %1727 = fsub fast float %1726, %1553
  %1728 = fmul fast float %1722, %1724
  %1729 = fmul fast float %1728, %1725
  %1730 = fsub fast float %1727, %1729
  %1731 = fmul fast float %1553, %1553
  %1732 = fsub fast float %1555, %1731
  %1733 = fmul fast float %1724, %1724
  %1734 = fmul fast float %1733, %1722
  %1735 = fsub fast float %1732, %1734
  %1736 = fdiv fast float %1730, %1735
  %1737 = fmul fast float %1736, %1724
  %1738 = fsub fast float %1725, %1737
  %1739 = fmul fast float %1738, %1722
  %1740 = fmul fast float %1739, %1552
  %1741 = fsub fast float 1.000000e+00, %1740
  %1742 = fmul fast float %1736, %1553
  %1743 = fsub fast float %1741, %1742
  %1744 = fmul fast float %1739, %1739
  %1745 = fmul fast float %1736, 4.000000e+00
  %1746 = fmul fast float %1745, %1743
  %1747 = fsub fast float %1744, %1746
  %1748 = call float @dx.op.unary.f32(i32 24, float %1747)  ; Sqrt(value)
  %1749 = fcmp fast oge float %1739, 0.000000e+00
  %1750 = fsub fast float -0.000000e+00, %1748
  %1751 = select i1 %1749, float %1750, float %1748
  %1752 = fsub fast float %1751, %1739
  %1753 = fdiv fast float %1752, %1736
  %1754 = fdiv fast float %1743, %1752
  %1755 = fmul fast float %1753, 5.000000e-01
  %1756 = fmul fast float %1754, 2.000000e+00
  %1757 = select i1 %1749, float %1755, float %1756
  %1758 = select i1 %1749, float %1756, float %1755
  %1759 = call float @dx.op.binary.f32(i32 35, float %1757, float %1758)  ; FMax(a,b)
  %1760 = call float @dx.op.binary.f32(i32 36, float %1757, float %1758)  ; FMin(a,b)
  %1761 = fcmp fast ogt float %1718, %1759
  %1762 = fsub fast float %1718, %1760
  %1763 = fsub fast float %1718, %1759
  %1764 = fsub fast float %1759, %1760
  %1765 = select i1 %1761, float %1763, float %1764
  %1766 = fmul float %1762, %1765
  %1767 = select i1 %1761, float %1760, float %1718
  %1768 = fcmp fast ogt float %1718, %1760
  %1769 = fmul fast float %1767, %1759
  %1770 = fadd fast float %1767, %1759
  %1771 = fmul fast float %1770, %1552
  %1772 = fadd fast float %1769, %1553
  %1773 = fsub fast float %1772, %1771
  %1774 = fdiv fast float %1773, %1766
  %1775 = select i1 %1768, float %1774, float 0.000000e+00
  %1776 = fsub fast float 1.000000e+00, %1775
  %1777 = select i1 %1761, float %1776, float %1775
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = extractvalue %dx.types.CBufRet.f32 %1537, 3
  %1780 = fmul fast float %1779, %1778
  %1781 = fsub fast float 1.000000e+00, %1780
  br label %1782

; <label>:1782                                    ; preds = %1711, %1389, %1115, %1073
  %1783 = phi float [ 1.000000e+00, %1073 ], [ %1781, %1711 ], [ 1.000000e+00, %1115 ], [ 1.000000e+00, %1389 ]
  %1784 = fcmp fast ogt float %1108, 0.000000e+00
  br i1 %1784, label %1785, label %1797, !dx.controlflow.hints !81

; <label>:1785                                    ; preds = %1782
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 2
  %1790 = fmul fast float %1787, %179
  %1791 = fadd fast float %1789, %206
  %1792 = fadd fast float %1791, %1790
  %1793 = call float @dx.op.binary.f32(i32 35, float %1792, float 0.000000e+00)  ; FMax(a,b)
  %1794 = fadd fast float %1793, 0x3F10000000000000
  %1795 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %29, float %1004, float %1005, float undef, float undef, i32 0, i32 0, i32 undef, float %1794)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  br label %1797

; <label>:1797                                    ; preds = %1785, %1782
  %1798 = phi float [ %1796, %1785 ], [ 1.000000e+00, %1782 ]
  %1799 = fcmp fast ogt float %1106, 0.000000e+00
  br i1 %1799, label %1800, label %1812, !dx.controlflow.hints !82

; <label>:1800                                    ; preds = %1797
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 2
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1805 = fmul fast float %1802, %179
  %1806 = fadd fast float %1804, %206
  %1807 = fadd fast float %1806, %1805
  %1808 = call float @dx.op.binary.f32(i32 35, float %1807, float 0.000000e+00)  ; FMax(a,b)
  %1809 = fadd fast float %1808, 0x3F10000000000000
  %1810 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %29, float %996, float %997, float undef, float undef, i32 0, i32 0, i32 undef, float %1809)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  br label %1812

; <label>:1812                                    ; preds = %1800, %1797
  %1813 = phi float [ %1811, %1800 ], [ 1.000000e+00, %1797 ]
  %1814 = fcmp fast ogt float %1105, 0.000000e+00
  br i1 %1814, label %1815, label %1831, !dx.controlflow.hints !83

; <label>:1815                                    ; preds = %1812
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = fmul fast float %1817, %179
  %1821 = fadd fast float %1819, %206
  %1822 = fadd fast float %1821, %1820
  %1823 = call float @dx.op.binary.f32(i32 35, float %1822, float 0.000000e+00)  ; FMax(a,b)
  %1824 = fadd fast float %1823, 0x3F10000000000000
  br i1 %72, label %1825, label %1828, !dx.controlflow.hints !84

; <label>:1825                                    ; preds = %1815
  %1826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %29, float %198, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float %1824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  br label %1831

; <label>:1828                                    ; preds = %1815
  %1829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %29, float %198, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float %1824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1830 = extractvalue %dx.types.ResRet.f32 %1829, 0
  br label %1831

; <label>:1831                                    ; preds = %1828, %1825, %1812
  %1832 = phi float [ %1827, %1825 ], [ %1830, %1828 ], [ 1.000000e+00, %1812 ]
  %1833 = fsub fast float %1798, %1783
  %1834 = fmul fast float %1833, %1075
  %1835 = fadd fast float %1834, %1783
  %1836 = fsub fast float %1813, %1835
  %1837 = fmul fast float %1836, %1074
  %1838 = fadd fast float %1837, %1835
  %1839 = fsub fast float %1832, %1838
  %1840 = fmul fast float %1839, %1105
  %1841 = fadd fast float %1840, %1838
  br label %2695

; <label>:1842                                    ; preds = %83
  %1843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.CBufRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.CBufRet.f32 %1843, 3
  %1847 = fmul fast float %1846, %198
  %1848 = fmul fast float %1846, %202
  %1849 = fadd fast float %1847, %1844
  %1850 = fadd fast float %1848, %1845
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1855 = fmul fast float %1854, %198
  %1856 = fmul fast float %1854, %202
  %1857 = fadd fast float %1855, %1852
  %1858 = fadd fast float %1856, %1853
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1861 = fsub fast float %1860, %206
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = fmul fast float %1861, %1862
  %1864 = fsub fast float 1.000000e+00, %1863
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  br i1 %72, label %1926, label %1866, !dx.controlflow.hints !77

; <label>:1866                                    ; preds = %1842
  %1867 = extractvalue %dx.types.CBufRet.f32 %1851, 2
  %1868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.f32 %1868, 2
  %1870 = fadd fast float %1869, %1867
  %1871 = fcmp fast ogt float %1870, 0.000000e+00
  br i1 %1871, label %1872, label %1896, !dx.controlflow.hints !78

; <label>:1872                                    ; preds = %1866
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = fsub fast float %1857, %1874
  %1877 = fsub fast float %1858, %1875
  %1878 = fcmp fast olt float %1876, 0.000000e+00
  %1879 = fcmp fast olt float %1877, 0.000000e+00
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1883 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1884 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1885 = select i1 %1878, float %1881, float %1883
  %1886 = select i1 %1879, float %1882, float %1884
  %1887 = fmul fast float %1885, %1876
  %1888 = fmul fast float %1886, %1877
  %1889 = call float @dx.op.unary.f32(i32 6, float %1887)  ; FAbs(value)
  %1890 = call float @dx.op.unary.f32(i32 6, float %1888)  ; FAbs(value)
  %1891 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1892 = call float @dx.op.binary.f32(i32 35, float %1889, float %1890)  ; FMax(a,b)
  %1893 = fsub fast float %1891, %1892
  %1894 = call float @dx.op.unary.f32(i32 7, float %1893)  ; Saturate(value)
  %1895 = fmul fast float %1894, %1865
  br label %1896

; <label>:1896                                    ; preds = %1872, %1866
  %1897 = phi float [ %1895, %1872 ], [ 0.000000e+00, %1866 ]
  %1898 = extractvalue %dx.types.CBufRet.f32 %1843, 2
  %1899 = extractvalue %dx.types.CBufRet.f32 %1868, 1
  %1900 = fadd fast float %1899, %1898
  %1901 = fcmp fast ogt float %1900, 0.000000e+00
  br i1 %1901, label %1902, label %1926, !dx.controlflow.hints !79

; <label>:1902                                    ; preds = %1896
  %1903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.CBufRet.f32 %1903, 1
  %1906 = fsub fast float %1849, %1904
  %1907 = fsub fast float %1850, %1905
  %1908 = fcmp fast olt float %1906, 0.000000e+00
  %1909 = fcmp fast olt float %1907, 0.000000e+00
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1914 = extractvalue %dx.types.CBufRet.f32 %1910, 3
  %1915 = select i1 %1908, float %1911, float %1913
  %1916 = select i1 %1909, float %1912, float %1914
  %1917 = fmul fast float %1915, %1906
  %1918 = fmul fast float %1916, %1907
  %1919 = call float @dx.op.unary.f32(i32 6, float %1917)  ; FAbs(value)
  %1920 = call float @dx.op.unary.f32(i32 6, float %1918)  ; FAbs(value)
  %1921 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1922 = call float @dx.op.binary.f32(i32 35, float %1919, float %1920)  ; FMax(a,b)
  %1923 = fsub fast float %1921, %1922
  %1924 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1925 = fmul fast float %1924, %1865
  br label %1926

; <label>:1926                                    ; preds = %1902, %1896, %1842
  %1927 = phi float [ 0.000000e+00, %1842 ], [ %1925, %1902 ], [ 0.000000e+00, %1896 ]
  %1928 = phi float [ 0.000000e+00, %1842 ], [ %1897, %1902 ], [ %1897, %1896 ]
  %1929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.CBufRet.f32 %1929, 1
  %1932 = fmul fast float %1930, %79
  %1933 = fadd fast float %1932, %1931
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = fsub fast float %198, %1936
  %1939 = fsub fast float %202, %1937
  %1940 = fcmp fast olt float %1938, 0.000000e+00
  %1941 = fcmp fast olt float %1939, 0.000000e+00
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1946 = extractvalue %dx.types.CBufRet.f32 %1942, 3
  %1947 = select i1 %1940, float %1943, float %1945
  %1948 = select i1 %1941, float %1944, float %1946
  %1949 = fmul fast float %1947, %1938
  %1950 = fmul fast float %1948, %1939
  %1951 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1952 = call float @dx.op.unary.f32(i32 6, float %1950)  ; FAbs(value)
  %1953 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %1954 = call float @dx.op.binary.f32(i32 35, float %1951, float %1952)  ; FMax(a,b)
  %1955 = fsub fast float %1953, %1954
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = call float @dx.op.binary.f32(i32 36, float %1956, float %1934)  ; FMin(a,b)
  %1958 = fmul fast float %1957, %1865
  %1959 = fsub fast float %1927, %1958
  %1960 = fsub fast float %1928, %1927
  %1961 = fsub fast float %1960, %1958
  %1962 = call float @dx.op.binary.f32(i32 35, float %1927, float %1928)  ; FMax(a,b)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1958, float %1962)  ; FMax(a,b)
  %1964 = fcmp fast olt float %1963, 1.000000e+00
  %1965 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1966 = fcmp fast une float %1965, 0.000000e+00
  %1967 = and i1 %1964, %1966
  br i1 %1967, label %1968, label %2635, !dx.controlflow.hints !80

; <label>:1968                                    ; preds = %1926
  %1969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1970 = extractvalue %dx.types.CBufRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1969, 1
  %1972 = extractvalue %dx.types.CBufRet.f32 %1969, 2
  %1973 = extractvalue %dx.types.CBufRet.f32 %1969, 3
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.CBufRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1978 = extractvalue %dx.types.CBufRet.f32 %1974, 3
  %1979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1980 = extractvalue %dx.types.CBufRet.f32 %1979, 0
  %1981 = extractvalue %dx.types.CBufRet.f32 %1979, 1
  %1982 = extractvalue %dx.types.CBufRet.f32 %1979, 2
  %1983 = extractvalue %dx.types.CBufRet.f32 %1979, 3
  %1984 = fmul fast float %1970, %133
  %1985 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1971, float %1984)  ; FMad(a,b,c)
  %1986 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1972, float %1985)  ; FMad(a,b,c)
  %1987 = fadd fast float %1986, %1973
  %1988 = fmul fast float %1975, %133
  %1989 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1976, float %1988)  ; FMad(a,b,c)
  %1990 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1977, float %1989)  ; FMad(a,b,c)
  %1991 = fadd fast float %1990, %1978
  %1992 = fmul fast float %1980, %133
  %1993 = call float @dx.op.tertiary.f32(i32 46, float %134, float %1981, float %1992)  ; FMad(a,b,c)
  %1994 = call float @dx.op.tertiary.f32(i32 46, float %135, float %1982, float %1993)  ; FMad(a,b,c)
  %1995 = fadd fast float %1994, %1983
  %1996 = fcmp fast oge float %1987, 1.000000e+00
  %1997 = fcmp fast oge float %1991, 1.000000e+00
  %1998 = or i1 %1996, %1997
  %1999 = fcmp fast olt float %1987, 0.000000e+00
  %2000 = fcmp fast olt float %1991, 0.000000e+00
  %2001 = or i1 %1999, %2000
  %2002 = or i1 %1998, %2001
  br i1 %2002, label %2635, label %2003, !dx.controlflow.hints !56

; <label>:2003                                    ; preds = %1968
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.CBufRet.f32 %2004, 2
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.i32 %2010, 2
  %2012 = uitofp i32 %2011 to float
  %2013 = extractvalue %dx.types.CBufRet.i32 %2010, 3
  %2014 = uitofp i32 %2013 to float
  %2015 = extractvalue %dx.types.CBufRet.f32 %2004, 3
  %2016 = fmul fast float %2015, 2.000000e+00
  %2017 = fsub fast float %1987, %2005
  %2018 = fsub fast float %1991, %2006
  %2019 = fmul fast float %2016, %2017
  %2020 = fmul fast float %2016, %2018
  %2021 = fdiv fast float 1.000000e+00, %168
  %2022 = fmul fast float %2020, %2021
  %2023 = call float @dx.op.unary.f32(i32 6, float %2022)  ; FAbs(value)
  %2024 = fmul fast float %2007, %135
  %2025 = fmul fast float %2024, %2016
  %2026 = call float @dx.op.unary.f32(i32 6, float %2025)  ; FAbs(value)
  %2027 = call float @dx.op.unary.f32(i32 6, float %2019)  ; FAbs(value)
  %2028 = call float @dx.op.binary.f32(i32 35, float %2026, float %2023)  ; FMax(a,b)
  %2029 = call float @dx.op.binary.f32(i32 35, float %2027, float %2028)  ; FMax(a,b)
  %2030 = fmul fast float %2029, 2.000000e+00
  %2031 = call float @dx.op.unary.f32(i32 23, float %2030)  ; Log(value)
  %2032 = call float @dx.op.binary.f32(i32 35, float %2031, float %2012)  ; FMax(a,b)
  %2033 = call float @dx.op.unary.f32(i32 22, float %2032)  ; Frc(value)
  %2034 = fadd fast float %2033, 0xBFEA666660000000
  %2035 = fmul fast float %2034, 8.000000e+00
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2038 = fadd fast float %2037, %2036
  %2039 = call float @dx.op.binary.f32(i32 36, float %2038, float %2014)  ; FMin(a,b)
  %2040 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2041 = fsub fast float -0.000000e+00, %2040
  %2042 = call float @dx.op.unary.f32(i32 21, float %2041)  ; Exp(value)
  %2043 = fmul fast float %2042, %2016
  %2044 = fmul fast float %2043, %1987
  %2045 = fmul fast float %2043, %1991
  %2046 = fmul fast float %2044, 5.000000e-01
  %2047 = fmul fast float %2045, 5.000000e-01
  %2048 = fadd fast float %2046, 5.000000e-01
  %2049 = fadd fast float %2047, 5.000000e-01
  %2050 = fmul fast float %2044, 2.500000e-01
  %2051 = fmul fast float %2045, 2.500000e-01
  %2052 = fadd fast float %2050, 5.000000e-01
  %2053 = fadd fast float %2051, 5.000000e-01
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = and i32 %2055, 536870911
  %2057 = lshr i32 %2056, 9
  %2058 = uitofp i32 %2057 to float
  %2059 = fmul fast float %2058, %1987
  %2060 = fmul fast float %2058, %1991
  %2061 = call float @dx.op.unary.f32(i32 22, float %2059)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2060)  ; Frc(value)
  %2063 = call float @dx.op.unary.f32(i32 22, float %2036)  ; Frc(value)
  %2064 = fcmp fast une float %2063, 0.000000e+00
  br i1 %2064, label %2065, label %2163, !dx.controlflow.hints !57

; <label>:2065                                    ; preds = %2003
  %2066 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2067 = fmul fast float %2066, 1.953125e-03
  %2068 = fcmp fast olt float %2061, %2067
  %2069 = fcmp fast olt float %2062, %2067
  %2070 = or i1 %2068, %2069
  %2071 = fsub fast float 1.000000e+00, %2067
  %2072 = fcmp fast ogt float %2061, %2071
  %2073 = fcmp fast ogt float %2062, %2071
  %2074 = or i1 %2072, %2073
  %2075 = or i1 %2070, %2074
  br i1 %2075, label %2076, label %2242, !dx.controlflow.hints !58

; <label>:2076                                    ; preds = %2065
  %2077 = fmul fast float %2009, 5.000000e-01
  %2078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.i32 %2078, 0
  %2080 = fmul fast float %1991, 3.530000e+02
  %2081 = uitofp i32 %2056 to float
  %2082 = fmul fast float %2080, %2081
  %2083 = fmul fast float %1987, 6.130000e+02
  %2084 = fadd fast float %2082, %2083
  %2085 = fptoui float %2084 to i32
  %2086 = add i32 %2079, %2085
  %2087 = mul i32 %2086, -63
  %2088 = lshr i32 %2087, 17
  %2089 = xor i32 %2088, %2087
  %2090 = mul i32 %2089, -511
  %2091 = mul i32 %2089, -8176
  %2092 = xor i32 %2090, %2091
  %2093 = mul i32 %2092, -7
  %2094 = mul i32 %2092, -7168
  %2095 = xor i32 %2093, %2094
  %2096 = lshr i32 %2095, 15
  %2097 = xor i32 %2096, %2093
  %2098 = and i32 %2097, 15
  %2099 = mul i32 %2098, 2
  %2100 = add i32 0, %2099
  %2101 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2100
  %2102 = load float, float* %2101, align 4
  %2103 = mul i32 %2098, 2
  %2104 = add i32 1, %2103
  %2105 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2104
  %2106 = load float, float* %2105, align 4
  %2107 = fmul fast float %1991, 2.770000e+02
  %2108 = fmul fast float %2107, %2081
  %2109 = fmul fast float %1987, 5.990000e+02
  %2110 = fadd fast float %2108, %2109
  %2111 = fptoui float %2110 to i32
  %2112 = mul i32 %2111, -63
  %2113 = lshr i32 %2112, 17
  %2114 = xor i32 %2113, %2112
  %2115 = mul i32 %2114, -511
  %2116 = mul i32 %2114, -8176
  %2117 = xor i32 %2115, %2116
  %2118 = mul i32 %2117, -7
  %2119 = mul i32 %2117, -7168
  %2120 = xor i32 %2118, %2119
  %2121 = lshr i32 %2120, 15
  %2122 = xor i32 %2121, %2118
  %2123 = and i32 %2122, 63
  %2124 = mul i32 %2123, 2
  %2125 = add i32 0, %2124
  %2126 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2125
  %2127 = load float, float* %2126, align 4
  %2128 = mul i32 %2123, 2
  %2129 = add i32 1, %2128
  %2130 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2129
  %2131 = load float, float* %2130, align 4
  %2132 = call float @dx.op.dot2.f32(i32 54, float %2102, float %2106, float %2127, float %2131)  ; Dot2(ax,ay,bx,by)
  %2133 = fsub fast float -0.000000e+00, %2127
  %2134 = call float @dx.op.dot2.f32(i32 54, float %2102, float %2106, float %2133, float %2131)  ; Dot2(ax,ay,bx,by)
  %2135 = fmul fast float %2132, %2077
  %2136 = fmul fast float %2134, %2077
  %2137 = fdiv fast float 2.000000e+00, %2043
  %2138 = fmul fast float %2066, 9.765625e-04
  %2139 = fcmp fast olt float %2061, %2138
  %2140 = fcmp fast olt float %2062, %2138
  %2141 = or i1 %2139, %2140
  %2142 = fsub fast float 1.000000e+00, %2138
  %2143 = fcmp fast ogt float %2061, %2142
  %2144 = fcmp fast ogt float %2062, %2142
  %2145 = or i1 %2143, %2144
  %2146 = or i1 %2141, %2145
  %2147 = fmul fast float %2135, 2.000000e+00
  br i1 %2146, label %2148, label %2152, !dx.controlflow.hints !59

; <label>:2148                                    ; preds = %2076
  %2149 = fmul fast float %2136, 2.000000e+00
  %2150 = fadd fast float %2147, %2048
  %2151 = fadd fast float %2149, %2049
  br label %2152

; <label>:2152                                    ; preds = %2148, %2076
  %2153 = phi float [ %2150, %2148 ], [ %2048, %2076 ]
  %2154 = phi float [ %2151, %2148 ], [ %2049, %2076 ]
  %2155 = phi i32 [ 3, %2148 ], [ 2, %2076 ]
  %2156 = fadd fast float %2135, %2052
  %2157 = fadd fast float %2136, %2053
  %2158 = fmul fast float %2147, %2137
  %2159 = fmul fast float %2137, 2.000000e+00
  %2160 = fmul fast float %2159, %2136
  %2161 = fadd fast float %2158, %1987
  %2162 = fadd fast float %2160, %1991
  br label %2242

; <label>:2163                                    ; preds = %2003
  %2164 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2165 = fmul fast float %2164, 9.765625e-04
  %2166 = fcmp fast olt float %2061, %2165
  %2167 = fcmp fast olt float %2062, %2165
  %2168 = or i1 %2166, %2167
  %2169 = fsub fast float 1.000000e+00, %2165
  %2170 = fcmp fast ogt float %2061, %2169
  %2171 = fcmp fast ogt float %2062, %2169
  %2172 = or i1 %2170, %2171
  %2173 = or i1 %2168, %2172
  br i1 %2173, label %2174, label %2242, !dx.controlflow.hints !60

; <label>:2174                                    ; preds = %2163
  %2175 = fmul fast float %2009, 5.000000e-01
  %2176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.i32 %2176, 0
  %2178 = fmul fast float %1991, 3.530000e+02
  %2179 = uitofp i32 %2056 to float
  %2180 = fmul fast float %2178, %2179
  %2181 = fmul fast float %1987, 6.130000e+02
  %2182 = fadd fast float %2180, %2181
  %2183 = fptoui float %2182 to i32
  %2184 = add i32 %2177, %2183
  %2185 = mul i32 %2184, -63
  %2186 = lshr i32 %2185, 17
  %2187 = xor i32 %2186, %2185
  %2188 = mul i32 %2187, -511
  %2189 = mul i32 %2187, -8176
  %2190 = xor i32 %2188, %2189
  %2191 = mul i32 %2190, -7
  %2192 = mul i32 %2190, -7168
  %2193 = xor i32 %2191, %2192
  %2194 = lshr i32 %2193, 15
  %2195 = xor i32 %2194, %2191
  %2196 = and i32 %2195, 15
  %2197 = mul i32 %2196, 2
  %2198 = add i32 0, %2197
  %2199 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2198
  %2200 = load float, float* %2199, align 4
  %2201 = mul i32 %2196, 2
  %2202 = add i32 1, %2201
  %2203 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2202
  %2204 = load float, float* %2203, align 4
  %2205 = fmul fast float %1991, 2.770000e+02
  %2206 = fmul fast float %2205, %2179
  %2207 = fmul fast float %1987, 5.990000e+02
  %2208 = fadd fast float %2206, %2207
  %2209 = fptoui float %2208 to i32
  %2210 = mul i32 %2209, -63
  %2211 = lshr i32 %2210, 17
  %2212 = xor i32 %2211, %2210
  %2213 = mul i32 %2212, -511
  %2214 = mul i32 %2212, -8176
  %2215 = xor i32 %2213, %2214
  %2216 = mul i32 %2215, -7
  %2217 = mul i32 %2215, -7168
  %2218 = xor i32 %2216, %2217
  %2219 = lshr i32 %2218, 15
  %2220 = xor i32 %2219, %2216
  %2221 = and i32 %2220, 63
  %2222 = mul i32 %2221, 2
  %2223 = add i32 0, %2222
  %2224 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2223
  %2225 = load float, float* %2224, align 4
  %2226 = mul i32 %2221, 2
  %2227 = add i32 1, %2226
  %2228 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2227
  %2229 = load float, float* %2228, align 4
  %2230 = call float @dx.op.dot2.f32(i32 54, float %2200, float %2204, float %2225, float %2229)  ; Dot2(ax,ay,bx,by)
  %2231 = fsub fast float -0.000000e+00, %2225
  %2232 = call float @dx.op.dot2.f32(i32 54, float %2200, float %2204, float %2231, float %2229)  ; Dot2(ax,ay,bx,by)
  %2233 = fmul fast float %2230, %2175
  %2234 = fmul fast float %2232, %2175
  %2235 = fadd fast float %2233, %2048
  %2236 = fadd fast float %2234, %2049
  %2237 = fdiv fast float 2.000000e+00, %2043
  %2238 = fmul fast float %2237, %2233
  %2239 = fmul fast float %2234, %2237
  %2240 = fadd fast float %2238, %1987
  %2241 = fadd fast float %2239, %1991
  br label %2242

; <label>:2242                                    ; preds = %2174, %2163, %2152, %2065
  %2243 = phi float [ %2156, %2152 ], [ %2052, %2065 ], [ %2052, %2174 ], [ %2052, %2163 ]
  %2244 = phi float [ %2157, %2152 ], [ %2053, %2065 ], [ %2053, %2174 ], [ %2053, %2163 ]
  %2245 = phi float [ %2153, %2152 ], [ %2048, %2065 ], [ %2235, %2174 ], [ %2048, %2163 ]
  %2246 = phi float [ %2154, %2152 ], [ %2049, %2065 ], [ %2236, %2174 ], [ %2049, %2163 ]
  %2247 = phi i32 [ %2155, %2152 ], [ 0, %2065 ], [ 1, %2174 ], [ 0, %2163 ]
  %2248 = phi float [ %2161, %2152 ], [ %1987, %2065 ], [ %2240, %2174 ], [ %1987, %2163 ]
  %2249 = phi float [ %2162, %2152 ], [ %1991, %2065 ], [ %2241, %2174 ], [ %1991, %2163 ]
  %2250 = fsub fast float %2014, %2012
  %2251 = fptoui float %2250 to i32
  %2252 = add i32 %2251, 320
  %2253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 %2252)  ; CBufferLoadLegacy(handle,regIndex)
  %2254 = extractvalue %dx.types.CBufRet.f32 %2253, 0
  %2255 = extractvalue %dx.types.CBufRet.f32 %2253, 1
  %2256 = fcmp fast une float %2039, %2014
  %2257 = fsub fast float %2248, %2254
  %2258 = fsub fast float %2249, %2255
  %2259 = call float @dx.op.unary.f32(i32 6, float %2257)  ; FAbs(value)
  %2260 = call float @dx.op.unary.f32(i32 6, float %2258)  ; FAbs(value)
  %2261 = fmul fast float %2259, %2043
  %2262 = fmul fast float %2260, %2043
  %2263 = fcmp fast olt float %2261, 1.000000e+00
  %2264 = fcmp fast olt float %2262, 1.000000e+00
  %2265 = and i1 %2263, %2264
  %2266 = or i1 %2256, %2265
  br i1 %2266, label %2267, label %2635, !dx.controlflow.hints !61

; <label>:2267                                    ; preds = %2242
  %2268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2269 = extractvalue %dx.types.CBufRet.i32 %2268, 2
  %2270 = sitofp i32 %2269 to float
  %2271 = fsub fast float %2039, %2270
  %2272 = call float @dx.op.unary.f32(i32 27, float %2271)  ; Round_ni(value)
  %2273 = call float @dx.op.unary.f32(i32 22, float %2039)  ; Frc(value)
  %2274 = icmp eq i32 %2247, 0
  %2275 = call float @dx.op.unary.f32(i32 22, float %2245)  ; Frc(value)
  %2276 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  br i1 %2274, label %2347, label %2277, !dx.controlflow.hints !62

; <label>:2277                                    ; preds = %2267
  %2278 = and i32 %2247, 1
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2293, label %2280, !dx.controlflow.hints !63

; <label>:2280                                    ; preds = %2277
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2283 = fmul fast float %2275, %2282
  %2284 = fmul fast float %2276, %2282
  %2285 = fptoui float %2283 to i32
  %2286 = fptoui float %2284 to i32
  %2287 = fptoui float %2272 to i32
  %2288 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2285, i32 %2286, i32 %2287, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2289 = extractvalue %dx.types.ResRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.ResRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.ResRet.f32 %2288, 2
  %2292 = extractvalue %dx.types.ResRet.f32 %2288, 3
  br label %2299

; <label>:2293                                    ; preds = %2277
  %2294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2275, float %2276, float %2272, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = extractvalue %dx.types.ResRet.f32 %2294, 3
  br label %2299

; <label>:2299                                    ; preds = %2293, %2280
  %2300 = phi float [ %2289, %2280 ], [ %2295, %2293 ]
  %2301 = phi float [ %2290, %2280 ], [ %2296, %2293 ]
  %2302 = phi float [ %2291, %2280 ], [ %2297, %2293 ]
  %2303 = phi float [ %2292, %2280 ], [ %2298, %2293 ]
  %2304 = fcmp fast ogt float %2273, 0.000000e+00
  br i1 %2304, label %2305, label %2375, !dx.controlflow.hints !64

; <label>:2305                                    ; preds = %2299
  %2306 = and i32 %2247, 2
  %2307 = icmp eq i32 %2306, 0
  %2308 = fadd fast float %2272, 1.000000e+00
  %2309 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2310 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  br i1 %2307, label %2324, label %2311, !dx.controlflow.hints !65

; <label>:2311                                    ; preds = %2305
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = fmul fast float %2309, %2313
  %2315 = fmul fast float %2310, %2313
  %2316 = fptoui float %2314 to i32
  %2317 = fptoui float %2315 to i32
  %2318 = fptoui float %2308 to i32
  %2319 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2316, i32 %2317, i32 %2318, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = extractvalue %dx.types.ResRet.f32 %2319, 3
  br label %2330

; <label>:2324                                    ; preds = %2305
  %2325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2309, float %2310, float %2308, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.ResRet.f32 %2325, 1
  %2328 = extractvalue %dx.types.ResRet.f32 %2325, 2
  %2329 = extractvalue %dx.types.ResRet.f32 %2325, 3
  br label %2330

; <label>:2330                                    ; preds = %2324, %2311
  %2331 = phi float [ %2320, %2311 ], [ %2326, %2324 ]
  %2332 = phi float [ %2321, %2311 ], [ %2327, %2324 ]
  %2333 = phi float [ %2322, %2311 ], [ %2328, %2324 ]
  %2334 = phi float [ %2323, %2311 ], [ %2329, %2324 ]
  %2335 = fsub fast float %2331, %2300
  %2336 = fsub fast float %2332, %2301
  %2337 = fsub fast float %2333, %2302
  %2338 = fsub fast float %2334, %2303
  %2339 = fmul fast float %2335, %2273
  %2340 = fmul fast float %2336, %2273
  %2341 = fmul fast float %2337, %2273
  %2342 = fmul fast float %2338, %2273
  %2343 = fadd fast float %2339, %2300
  %2344 = fadd fast float %2340, %2301
  %2345 = fadd fast float %2341, %2302
  %2346 = fadd fast float %2342, %2303
  br label %2375

; <label>:2347                                    ; preds = %2267
  %2348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2275, float %2276, float %2272, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.ResRet.f32 %2348, 3
  %2353 = fcmp fast ogt float %2273, 0.000000e+00
  br i1 %2353, label %2354, label %2375, !dx.controlflow.hints !66

; <label>:2354                                    ; preds = %2347
  %2355 = fadd fast float %2272, 1.000000e+00
  %2356 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2357 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %2356, float %2357, float %2355, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.ResRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.ResRet.f32 %2358, 2
  %2362 = extractvalue %dx.types.ResRet.f32 %2358, 3
  %2363 = fsub fast float %2359, %2349
  %2364 = fsub fast float %2360, %2350
  %2365 = fsub fast float %2361, %2351
  %2366 = fsub fast float %2362, %2352
  %2367 = fmul fast float %2363, %2273
  %2368 = fmul fast float %2364, %2273
  %2369 = fmul fast float %2365, %2273
  %2370 = fmul fast float %2366, %2273
  %2371 = fadd fast float %2367, %2349
  %2372 = fadd fast float %2368, %2350
  %2373 = fadd fast float %2369, %2351
  %2374 = fadd fast float %2370, %2352
  br label %2375

; <label>:2375                                    ; preds = %2354, %2347, %2330, %2299
  %2376 = phi float [ %2343, %2330 ], [ %2300, %2299 ], [ %2371, %2354 ], [ %2349, %2347 ]
  %2377 = phi float [ %2344, %2330 ], [ %2301, %2299 ], [ %2372, %2354 ], [ %2350, %2347 ]
  %2378 = phi float [ %2345, %2330 ], [ %2302, %2299 ], [ %2373, %2354 ], [ %2351, %2347 ]
  %2379 = phi float [ %2346, %2330 ], [ %2303, %2299 ], [ %2374, %2354 ], [ %2352, %2347 ]
  %2380 = fadd fast float %2376, -5.000000e-01
  %2381 = fadd fast float %2378, -5.000000e-01
  %2382 = fmul fast float %2380, 0xBFD5555560000000
  %2383 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2381, float %2382)  ; FMad(a,b,c)
  %2384 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2377, float 0.000000e+00)  ; FMad(a,b,c)
  %2385 = fadd fast float %2384, %2379
  %2386 = fmul fast float %2380, -7.500000e-01
  %2387 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2381, float %2386)  ; FMad(a,b,c)
  %2388 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2377, float 0.000000e+00)  ; FMad(a,b,c)
  %2389 = fadd fast float %2388, %2379
  %2390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2391 = extractvalue %dx.types.CBufRet.f32 %2390, 0
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2396 = extractvalue %dx.types.CBufRet.f32 %2392, 3
  %2397 = fsub fast float %2393, %2383
  %2398 = fsub fast float %2394, %2385
  %2399 = fsub fast float %2395, %2387
  %2400 = fsub fast float %2396, %2389
  %2401 = fmul fast float %2397, %2391
  %2402 = fmul fast float %2398, %2391
  %2403 = fmul fast float %2399, %2391
  %2404 = fmul fast float %2400, %2391
  %2405 = fadd fast float %2401, %2383
  %2406 = fadd fast float %2402, %2385
  %2407 = fadd fast float %2403, %2387
  %2408 = fadd fast float %2404, %2389
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 536870911
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, %2248
  %2414 = fmul fast float %2412, %2249
  %2415 = fptoui float %2413 to i32
  %2416 = fptoui float %2414 to i32
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 31
  %2420 = lshr i32 %2415, %2419
  %2421 = lshr i32 %2416, %2419
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 31
  %2425 = shl i32 1, %2424
  %2426 = call i32 @dx.op.binary.i32(i32 40, i32 %2425, i32 4)  ; UMin(a,b)
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.i32 %2427, 1
  %2430 = icmp eq i32 %2426, 0
  br i1 %2430, label %2472, label %2431

; <label>:2431                                    ; preds = %2375
  br label %2432

; <label>:2432                                    ; preds = %2460, %2431
  %2433 = phi i32 [ %2463, %2460 ], [ 0, %2431 ]
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = lshr i32 %2435, 16
  %2437 = and i32 %2436, 31
  %2438 = shl i32 %2421, %2437
  %2439 = add i32 %2438, %2420
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 31
  %2443 = shl i32 %2439, %2442
  %2444 = add i32 %2443, %2433
  %2445 = shl i32 %2444, 2
  %2446 = add i32 %2445, 32
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = icmp slt i32 %2448, 0
  %2450 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %2433
  %2451 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2433
  %2452 = bitcast float* %2450 to i32*
  %2453 = bitcast float* %2451 to i32*
  br i1 %2449, label %2454, label %2460, !dx.controlflow.hints !67

; <label>:2454                                    ; preds = %2432
  %2455 = and i32 %2448, 1073741823
  %2456 = add nuw nsw i32 %2455, 20
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = extractvalue %dx.types.ResRet.i32 %2457, 1
  br label %2460

; <label>:2460                                    ; preds = %2454, %2432
  %2461 = phi i32 [ %2458, %2454 ], [ %2428, %2432 ]
  %2462 = phi i32 [ %2459, %2454 ], [ %2429, %2432 ]
  store i32 %2461, i32* %2452, align 4
  store i32 %2462, i32* %2453, align 4
  %2463 = add nuw i32 %2433, 1
  %2464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.i32 %2464, 2
  %2466 = icmp eq i32 %2465, 0
  %2467 = icmp ugt i32 %2448, -1073741825
  %2468 = and i1 %2467, %2466
  %2469 = icmp ult i32 %2463, %2426
  %2470 = and i1 %2468, %2469
  br i1 %2470, label %2432, label %2471, !dx.controlflow.hints !68

; <label>:2471                                    ; preds = %2460
  br label %2472

; <label>:2472                                    ; preds = %2471, %2375
  %2473 = phi i32 [ 0, %2375 ], [ %2463, %2471 ]
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2476 = fptoui float %2475 to i32
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2529, label %2478

; <label>:2478                                    ; preds = %2472
  br label %2479

; <label>:2479                                    ; preds = %2524, %2478
  %2480 = phi i32 [ %2525, %2524 ], [ %2473, %2478 ]
  %2481 = phi i32 [ %2526, %2524 ], [ 0, %2478 ]
  %2482 = lshr i32 %2481, 2
  %2483 = and i32 %2481, 3
  %2484 = add nuw nsw i32 %2482, 83
  %2485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 %2484)  ; CBufferLoadLegacy(handle,regIndex)
  %2486 = extractvalue %dx.types.CBufRet.i32 %2485, 0
  %2487 = extractvalue %dx.types.CBufRet.i32 %2485, 1
  %2488 = extractvalue %dx.types.CBufRet.i32 %2485, 2
  %2489 = extractvalue %dx.types.CBufRet.i32 %2485, 3
  %2490 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 0
  store i32 %2486, i32* %2490, align 4
  %2491 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 1
  store i32 %2487, i32* %2491, align 4
  %2492 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 2
  store i32 %2488, i32* %2492, align 4
  %2493 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 3
  store i32 %2489, i32* %2493, align 4
  %2494 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i32 0, i32 %2483
  %2495 = load i32, i32* %2494, align 4, !tbaa !69
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = lshr i32 %2497, 16
  %2499 = and i32 %2498, 31
  %2500 = shl i32 %2421, %2499
  %2501 = add i32 %2500, %2420
  %2502 = shl i32 %2501, 2
  %2503 = add i32 %2502, %2495
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2524, label %2507, !dx.controlflow.hints !73

; <label>:2507                                    ; preds = %2479
  %2508 = icmp slt i32 %2505, 0
  %2509 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %2480
  %2510 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2480
  %2511 = bitcast float* %2509 to i32*
  %2512 = bitcast float* %2510 to i32*
  br i1 %2508, label %2513, label %2520, !dx.controlflow.hints !74

; <label>:2513                                    ; preds = %2507
  %2514 = and i32 %2505, 1073741823
  %2515 = add i32 %2495, 20
  %2516 = add i32 %2515, %2514
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = extractvalue %dx.types.ResRet.i32 %2517, 1
  br label %2520

; <label>:2520                                    ; preds = %2513, %2507
  %2521 = phi i32 [ %2518, %2513 ], [ %2428, %2507 ]
  %2522 = phi i32 [ %2519, %2513 ], [ %2429, %2507 ]
  store i32 %2521, i32* %2511, align 4
  store i32 %2522, i32* %2512, align 4
  %2523 = add i32 %2480, 1
  br label %2524

; <label>:2524                                    ; preds = %2520, %2479
  %2525 = phi i32 [ %2480, %2479 ], [ %2523, %2520 ]
  %2526 = add nuw i32 %2481, 1
  %2527 = icmp eq i32 %2526, %2476
  br i1 %2527, label %2528, label %2479

; <label>:2528                                    ; preds = %2524
  br label %2529

; <label>:2529                                    ; preds = %2528, %2472
  %2530 = phi i32 [ %2473, %2472 ], [ %2525, %2528 ]
  %2531 = icmp eq i32 %2530, 1
  %2532 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  %2533 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  br i1 %2531, label %2534, label %2537, !dx.controlflow.hints !75

; <label>:2534                                    ; preds = %2529
  %2535 = load float, float* %2532, align 4
  %2536 = load float, float* %2533, align 4
  br label %2564

; <label>:2537                                    ; preds = %2529
  %2538 = load float, float* %2532, align 4
  %2539 = load float, float* %2533, align 4
  %2540 = fdiv fast float 1.000000e+00, %2539
  %2541 = fsub fast float %2538, %2540
  %2542 = icmp ugt i32 %2530, 1
  br i1 %2542, label %2543, label %2559

; <label>:2543                                    ; preds = %2537
  br label %2544

; <label>:2544                                    ; preds = %2544, %2543
  %2545 = phi float [ %2554, %2544 ], [ %2541, %2543 ]
  %2546 = phi float [ %2555, %2544 ], [ %2538, %2543 ]
  %2547 = phi i32 [ %2556, %2544 ], [ 1, %2543 ]
  %2548 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %2547
  %2549 = load float, float* %2548, align 4
  %2550 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %2547
  %2551 = load float, float* %2550, align 4
  %2552 = fdiv fast float 1.000000e+00, %2551
  %2553 = fsub fast float %2549, %2552
  %2554 = call float @dx.op.binary.f32(i32 36, float %2545, float %2553)  ; FMin(a,b)
  %2555 = call float @dx.op.binary.f32(i32 35, float %2546, float %2549)  ; FMax(a,b)
  %2556 = add nuw i32 %2547, 1
  %2557 = icmp eq i32 %2556, %2530
  br i1 %2557, label %2558, label %2544

; <label>:2558                                    ; preds = %2544
  br label %2559

; <label>:2559                                    ; preds = %2558, %2537
  %2560 = phi float [ %2541, %2537 ], [ %2554, %2558 ]
  %2561 = phi float [ %2538, %2537 ], [ %2555, %2558 ]
  %2562 = fsub fast float %2561, %2560
  %2563 = fdiv fast float 1.000000e+00, %2562
  br label %2564

; <label>:2564                                    ; preds = %2559, %2534
  %2565 = phi float [ %2535, %2534 ], [ %2561, %2559 ]
  %2566 = phi float [ %2536, %2534 ], [ %2563, %2559 ]
  %2567 = fadd fast float %1995, %2565
  %2568 = fmul fast float %2567, %2566
  %2569 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2570 = fmul fast float %2569, 2.000000e+00
  %2571 = fsub fast float 1.000000e+00, %2570
  %2572 = fmul fast float %2405, %2405
  %2573 = fsub fast float %2406, %2572
  %2574 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2573)  ; FMax(a,b)
  %2575 = fdiv fast float 1.000000e+00, %2574
  %2576 = fmul fast float %2406, %2405
  %2577 = fsub fast float %2407, %2576
  %2578 = fsub fast float %2571, %2405
  %2579 = fmul fast float %2571, %2571
  %2580 = fsub fast float %2579, %2406
  %2581 = fmul fast float %2575, %2577
  %2582 = fmul fast float %2581, %2578
  %2583 = fsub fast float %2580, %2582
  %2584 = fmul fast float %2406, %2406
  %2585 = fsub fast float %2408, %2584
  %2586 = fmul fast float %2577, %2577
  %2587 = fmul fast float %2586, %2575
  %2588 = fsub fast float %2585, %2587
  %2589 = fdiv fast float %2583, %2588
  %2590 = fmul fast float %2589, %2577
  %2591 = fsub fast float %2578, %2590
  %2592 = fmul fast float %2591, %2575
  %2593 = fmul fast float %2592, %2405
  %2594 = fsub fast float 1.000000e+00, %2593
  %2595 = fmul fast float %2589, %2406
  %2596 = fsub fast float %2594, %2595
  %2597 = fmul fast float %2592, %2592
  %2598 = fmul fast float %2589, 4.000000e+00
  %2599 = fmul fast float %2598, %2596
  %2600 = fsub fast float %2597, %2599
  %2601 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2602 = fcmp fast oge float %2592, 0.000000e+00
  %2603 = fsub fast float -0.000000e+00, %2601
  %2604 = select i1 %2602, float %2603, float %2601
  %2605 = fsub fast float %2604, %2592
  %2606 = fdiv fast float %2605, %2589
  %2607 = fdiv fast float %2596, %2605
  %2608 = fmul fast float %2606, 5.000000e-01
  %2609 = fmul fast float %2607, 2.000000e+00
  %2610 = select i1 %2602, float %2608, float %2609
  %2611 = select i1 %2602, float %2609, float %2608
  %2612 = call float @dx.op.binary.f32(i32 35, float %2610, float %2611)  ; FMax(a,b)
  %2613 = call float @dx.op.binary.f32(i32 36, float %2610, float %2611)  ; FMin(a,b)
  %2614 = fcmp fast ogt float %2571, %2612
  %2615 = fsub fast float %2571, %2613
  %2616 = fsub fast float %2571, %2612
  %2617 = fsub fast float %2612, %2613
  %2618 = select i1 %2614, float %2616, float %2617
  %2619 = fmul float %2615, %2618
  %2620 = select i1 %2614, float %2613, float %2571
  %2621 = fcmp fast ogt float %2571, %2613
  %2622 = fmul fast float %2620, %2612
  %2623 = fadd fast float %2620, %2612
  %2624 = fmul fast float %2623, %2405
  %2625 = fadd fast float %2622, %2406
  %2626 = fsub fast float %2625, %2624
  %2627 = fdiv fast float %2626, %2619
  %2628 = select i1 %2621, float %2627, float 0.000000e+00
  %2629 = fsub fast float 1.000000e+00, %2628
  %2630 = select i1 %2614, float %2629, float %2628
  %2631 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2390, 3
  %2633 = fmul fast float %2632, %2631
  %2634 = fsub fast float 1.000000e+00, %2633
  br label %2635

; <label>:2635                                    ; preds = %2564, %2242, %1968, %1926
  %2636 = phi float [ 1.000000e+00, %1926 ], [ %2634, %2564 ], [ 1.000000e+00, %1968 ], [ 1.000000e+00, %2242 ]
  %2637 = fcmp fast ogt float %1961, 0.000000e+00
  br i1 %2637, label %2638, label %2650, !dx.controlflow.hints !81

; <label>:2638                                    ; preds = %2635
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 2
  %2641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.f32 %2641, 2
  %2643 = fmul fast float %2640, %179
  %2644 = fadd fast float %2642, %206
  %2645 = fadd fast float %2644, %2643
  %2646 = call float @dx.op.binary.f32(i32 35, float %2645, float 0.000000e+00)  ; FMax(a,b)
  %2647 = fadd fast float %2646, 0x3F10000000000000
  %2648 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %29, float %1857, float %1858, float undef, float undef, i32 0, i32 0, i32 undef, float %2647)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2649 = extractvalue %dx.types.ResRet.f32 %2648, 0
  br label %2650

; <label>:2650                                    ; preds = %2638, %2635
  %2651 = phi float [ %2649, %2638 ], [ 1.000000e+00, %2635 ]
  %2652 = fcmp fast ogt float %1959, 0.000000e+00
  br i1 %2652, label %2653, label %2665, !dx.controlflow.hints !82

; <label>:2653                                    ; preds = %2650
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 2
  %2656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2657 = extractvalue %dx.types.CBufRet.f32 %2656, 1
  %2658 = fmul fast float %2655, %179
  %2659 = fadd fast float %2657, %206
  %2660 = fadd fast float %2659, %2658
  %2661 = call float @dx.op.binary.f32(i32 35, float %2660, float 0.000000e+00)  ; FMax(a,b)
  %2662 = fadd fast float %2661, 0x3F10000000000000
  %2663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %29, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float %2662)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  br label %2665

; <label>:2665                                    ; preds = %2653, %2650
  %2666 = phi float [ %2664, %2653 ], [ 1.000000e+00, %2650 ]
  %2667 = fcmp fast ogt float %1958, 0.000000e+00
  br i1 %2667, label %2668, label %2684, !dx.controlflow.hints !83

; <label>:2668                                    ; preds = %2665
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 2
  %2671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2671, 0
  %2673 = fmul fast float %2670, %179
  %2674 = fadd fast float %2672, %206
  %2675 = fadd fast float %2674, %2673
  %2676 = call float @dx.op.binary.f32(i32 35, float %2675, float 0.000000e+00)  ; FMax(a,b)
  %2677 = fadd fast float %2676, 0x3F10000000000000
  br i1 %72, label %2678, label %2681, !dx.controlflow.hints !84

; <label>:2678                                    ; preds = %2668
  %2679 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %29, float %198, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float %2677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2680 = extractvalue %dx.types.ResRet.f32 %2679, 0
  br label %2684

; <label>:2681                                    ; preds = %2668
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %29, float %198, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float %2677)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  br label %2684

; <label>:2684                                    ; preds = %2681, %2678, %2665
  %2685 = phi float [ %2680, %2678 ], [ %2683, %2681 ], [ 1.000000e+00, %2665 ]
  %2686 = fsub fast float %2651, %2636
  %2687 = fmul fast float %2686, %1928
  %2688 = fadd fast float %2687, %2636
  %2689 = fsub fast float %2666, %2688
  %2690 = fmul fast float %2689, %1927
  %2691 = fadd fast float %2690, %2688
  %2692 = fsub fast float %2685, %2691
  %2693 = fmul fast float %2692, %1958
  %2694 = fadd fast float %2693, %2691
  br label %2695

; <label>:2695                                    ; preds = %2684, %1831, %987, %916, %594, %320, %317, %296, %275, %254, %233
  %2696 = phi float [ %2694, %2684 ], [ %251, %233 ], [ %272, %254 ], [ %293, %275 ], [ %314, %296 ], [ %1841, %1831 ], [ %986, %916 ], [ 1.000000e+00, %320 ], [ 1.000000e+00, %594 ], [ 1.000000e+00, %317 ], [ 0.000000e+00, %987 ]
  %2697 = fcmp fast une float %2696, 0.000000e+00
  br i1 %2697, label %2698, label %2803, !dx.controlflow.hints !85

; <label>:2698                                    ; preds = %2695
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2701 = fcmp fast ugt float %2700, 0.000000e+00
  br i1 %2701, label %2702, label %2737, !dx.controlflow.hints !86

; <label>:2702                                    ; preds = %2698
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2707 = extractvalue %dx.types.CBufRet.f32 %2703, 3
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2712 = extractvalue %dx.types.CBufRet.f32 %2708, 3
  %2713 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2719 = fadd fast float %2716, %133
  %2720 = fadd fast float %2717, %134
  %2721 = fadd fast float %2718, %135
  %2722 = fmul fast float %2719, %2704
  %2723 = call float @dx.op.tertiary.f32(i32 46, float %2705, float %2720, float %2722)  ; FMad(a,b,c)
  %2724 = call float @dx.op.tertiary.f32(i32 46, float %2706, float %2721, float %2723)  ; FMad(a,b,c)
  %2725 = fadd fast float %2724, %2707
  %2726 = fmul fast float %2719, %2709
  %2727 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2720, float %2726)  ; FMad(a,b,c)
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2711, float %2721, float %2727)  ; FMad(a,b,c)
  %2729 = fadd fast float %2728, %2712
  %2730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %24, float %2725, float %2729, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = fmul fast float %2731, %2714
  %2733 = fadd fast float %2732, %2713
  %2734 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2735 = fmul fast float %2734, %2700
  %2736 = fsub fast float 1.000000e+00, %2735
  br label %2737

; <label>:2737                                    ; preds = %2702, %2698
  %2738 = phi float [ %2736, %2702 ], [ 1.000000e+00, %2698 ]
  %2739 = fmul fast float %2738, %2696
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = extractvalue %dx.types.CBufRet.f32 %2740, 1
  %2743 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2744 = fadd fast float %2741, %133
  %2745 = fadd fast float %2742, %134
  %2746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2747 = extractvalue %dx.types.CBufRet.f32 %2746, 1
  %2748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2748, 0
  %2750 = extractvalue %dx.types.CBufRet.f32 %2748, 1
  %2751 = extractvalue %dx.types.CBufRet.f32 %2748, 2
  %2752 = fsub fast float -0.000000e+00, %2744
  %2753 = fsub fast float -0.000000e+00, %2745
  %2754 = fsub fast float -0.000000e+00, %135
  %2755 = fsub fast float %2754, %2743
  %2756 = fadd fast float %2755, %2747
  %2757 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2752, float %2753, float %2756)  ; Dot3(ax,ay,az,bx,by,bz)
  %2758 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2749, float %2750, float %2751)  ; Dot3(ax,ay,az,bx,by,bz)
  %2759 = fdiv fast float 1.000000e+00, %2758
  %2760 = fmul fast float %2759, %2757
  %2761 = fmul fast float %2749, %2760
  %2762 = fmul fast float %2750, %2760
  %2763 = fadd fast float %2761, %2744
  %2764 = fadd fast float %2762, %2745
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.CBufRet.f32 %2765, 1
  %2768 = fsub fast float %2763, %2766
  %2769 = fsub fast float %2764, %2767
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2773 = fmul fast float %2768, %2771
  %2774 = fmul fast float %2769, %2772
  %2775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.i32 %2775, 3
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %2783, label %2778, !dx.controlflow.hints !87

; <label>:2778                                    ; preds = %2737
  %2779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %26, float %2773, float %2774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.ResRet.f32 %2779, 2
  br label %2788

; <label>:2783                                    ; preds = %2737
  %2784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %27, float %2773, float %2774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  br label %2788

; <label>:2788                                    ; preds = %2783, %2778
  %2789 = phi float [ %2780, %2778 ], [ %2785, %2783 ]
  %2790 = phi float [ %2781, %2778 ], [ %2786, %2783 ]
  %2791 = phi float [ %2782, %2778 ], [ %2787, %2783 ]
  %2792 = extractvalue %dx.types.CBufRet.f32 %2746, 2
  %2793 = fmul fast float %2792, %2789
  %2794 = extractvalue %dx.types.CBufRet.f32 %2746, 0
  %2795 = fsub fast float %2760, %2794
  %2796 = fsub fast float %2795, %2793
  %2797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2796)  ; FMax(a,b)
  %2798 = fmul fast float %2797, %2790
  %2799 = call float @dx.op.binary.f32(i32 36, float %2791, float %2798)  ; FMin(a,b)
  %2800 = fmul fast float %2799, 0xBFF7154760000000
  %2801 = call float @dx.op.unary.f32(i32 21, float %2800)  ; Exp(value)
  %2802 = fmul fast float %2739, %2801
  br label %2803

; <label>:2803                                    ; preds = %2788, %2695
  %2804 = phi float [ %2802, %2788 ], [ %2696, %2695 ]
  %2805 = fcmp fast ogt float %2804, 0.000000e+00
  %2806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2807 = extractvalue %dx.types.CBufRet.f32 %2806, 1
  %2808 = fcmp fast ogt float %169, %2807
  %2809 = and i1 %2805, %2808
  br i1 %2809, label %2810, label %3079, !dx.controlflow.hints !88

; <label>:2810                                    ; preds = %2803
  %2811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.i32 %2811, 0
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 0
  %2815 = select i1 %72, i32 %2812, i32 %2814
  %2816 = icmp sgt i32 %2815, 0
  br i1 %2816, label %2817, label %3079, !dx.controlflow.hints !89

; <label>:2817                                    ; preds = %2810
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2821 = extractvalue %dx.types.CBufRet.f32 %2820, 1
  %2822 = select i1 %72, float %2819, float %2821
  %2823 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2824 = extractvalue %dx.types.CBufRet.f32 %2820, 2
  %2825 = select i1 %72, float %2823, float %2824
  %2826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.i32 %2826, 0
  %2828 = uitofp i32 %2827 to float
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2831 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2832 = fmul fast float %2830, 5.000000e-01
  %2833 = fmul fast float %2831, 5.000000e-01
  %2834 = fsub fast float %68, %2832
  %2835 = fsub fast float %69, %2833
  %2836 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %28, float %2834, float %2835, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = fcmp fast ogt float %2837, -1.000000e+00
  %2841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.f32 %2841, 1
  %2843 = select i1 %2840, float %2842, float 1.000000e+00
  %2844 = fadd fast float %2837, 1.000000e+00
  %2845 = fmul fast float %2843, %2844
  %2846 = call float @dx.op.unary.f32(i32 6, float %2845)  ; FAbs(value)
  %2847 = fcmp fast ogt float %2838, -1.000000e+00
  %2848 = select i1 %2847, float %2842, float 1.000000e+00
  %2849 = fadd fast float %2838, 1.000000e+00
  %2850 = fmul fast float %2848, %2849
  %2851 = call float @dx.op.unary.f32(i32 6, float %2850)  ; FAbs(value)
  %2852 = fcmp fast ogt float %2839, -1.000000e+00
  %2853 = select i1 %2852, float %2842, float 1.000000e+00
  %2854 = fadd fast float %2839, 1.000000e+00
  %2855 = fmul fast float %2853, %2854
  %2856 = call float @dx.op.unary.f32(i32 6, float %2855)  ; FAbs(value)
  %2857 = fadd fast float %2832, %68
  %2858 = fadd fast float %2833, %69
  %2859 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %28, float %2857, float %2858, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 2
  %2862 = fcmp fast ogt float %2860, -1.000000e+00
  %2863 = select i1 %2862, float %2842, float 1.000000e+00
  %2864 = fadd fast float %2860, 1.000000e+00
  %2865 = fmul fast float %2863, %2864
  %2866 = call float @dx.op.unary.f32(i32 6, float %2865)  ; FAbs(value)
  %2867 = fcmp fast ogt float %2861, -1.000000e+00
  %2868 = select i1 %2867, float %2842, float 1.000000e+00
  %2869 = fadd fast float %2861, 1.000000e+00
  %2870 = fmul fast float %2868, %2869
  %2871 = call float @dx.op.unary.f32(i32 6, float %2870)  ; FAbs(value)
  %2872 = fsub fast float %2856, %2851
  %2873 = fsub fast float %2866, %2851
  %2874 = fsub fast float %2846, %2851
  %2875 = fsub fast float %2871, %2851
  %2876 = call float @dx.op.unary.f32(i32 6, float %2873)  ; FAbs(value)
  %2877 = call float @dx.op.unary.f32(i32 6, float %2872)  ; FAbs(value)
  %2878 = call float @dx.op.binary.f32(i32 35, float %2877, float %2876)  ; FMax(a,b)
  %2879 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2880 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2881 = call float @dx.op.binary.f32(i32 35, float %2880, float %2879)  ; FMax(a,b)
  %2882 = fadd fast float %2873, %2872
  %2883 = call float @dx.op.unary.f32(i32 6, float %2882)  ; FAbs(value)
  %2884 = fadd fast float %2875, %2874
  %2885 = call float @dx.op.unary.f32(i32 6, float %2884)  ; FAbs(value)
  %2886 = fsub fast float %2881, %2885
  %2887 = call float @dx.op.unary.f32(i32 6, float %2886)  ; FAbs(value)
  %2888 = fsub fast float %2878, %2883
  %2889 = call float @dx.op.unary.f32(i32 6, float %2888)  ; FAbs(value)
  %2890 = call float @dx.op.binary.f32(i32 35, float %2889, float %2887)  ; FMax(a,b)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2829, 0
  %2892 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2894 = extractvalue %dx.types.CBufRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.CBufRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.CBufRet.f32 %2893, 2
  %2897 = extractvalue %dx.types.CBufRet.f32 %2893, 3
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2900 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2901 = extractvalue %dx.types.CBufRet.f32 %2898, 2
  %2902 = extractvalue %dx.types.CBufRet.f32 %2898, 3
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.CBufRet.f32 %2903, 2
  %2907 = extractvalue %dx.types.CBufRet.f32 %2903, 3
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.CBufRet.f32 %2908, 2
  %2912 = extractvalue %dx.types.CBufRet.f32 %2908, 3
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2917 = extractvalue %dx.types.CBufRet.f32 %2913, 3
  %2918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %30, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2919 = extractvalue %dx.types.CBufRet.f32 %2918, 0
  %2920 = extractvalue %dx.types.CBufRet.f32 %2918, 1
  %2921 = extractvalue %dx.types.CBufRet.f32 %2918, 2
  %2922 = extractvalue %dx.types.CBufRet.f32 %2918, 3
  %2923 = select i1 %72, float %2894, float %2909
  %2924 = select i1 %72, float %2899, float %2914
  %2925 = select i1 %72, float %2904, float %2919
  %2926 = select i1 %72, float %2895, float %2910
  %2927 = select i1 %72, float %2900, float %2915
  %2928 = select i1 %72, float %2905, float %2920
  %2929 = select i1 %72, float %2896, float %2911
  %2930 = select i1 %72, float %2901, float %2916
  %2931 = select i1 %72, float %2906, float %2921
  %2932 = select i1 %72, float %2897, float %2912
  %2933 = select i1 %72, float %2902, float %2917
  %2934 = select i1 %72, float %2907, float %2922
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.CBufRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.CBufRet.f32 %2935, 2
  %2939 = fdiv fast float 1.000000e+00, %79
  %2940 = fmul fast float %2830, %63
  %2941 = fmul fast float %2831, %64
  %2942 = fmul fast float %2936, %2822
  %2943 = fmul fast float %2937, %2822
  %2944 = fmul fast float %2938, %2822
  %2945 = fadd fast float %2942, %133
  %2946 = fadd fast float %2943, %134
  %2947 = fadd fast float %2944, %135
  %2948 = fmul fast float %2945, %2923
  %2949 = call float @dx.op.tertiary.f32(i32 46, float %2946, float %2926, float %2948)  ; FMad(a,b,c)
  %2950 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2929, float %2949)  ; FMad(a,b,c)
  %2951 = fadd fast float %2950, %2932
  %2952 = fmul fast float %2945, %2924
  %2953 = call float @dx.op.tertiary.f32(i32 46, float %2946, float %2927, float %2952)  ; FMad(a,b,c)
  %2954 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2930, float %2953)  ; FMad(a,b,c)
  %2955 = fadd fast float %2954, %2933
  %2956 = fmul fast float %2945, %2925
  %2957 = call float @dx.op.tertiary.f32(i32 46, float %2946, float %2928, float %2956)  ; FMad(a,b,c)
  %2958 = call float @dx.op.tertiary.f32(i32 46, float %2947, float %2931, float %2957)  ; FMad(a,b,c)
  %2959 = fadd fast float %2958, %2934
  %2960 = fdiv fast float 1.000000e+00, %2959
  %2961 = fmul fast float %2951, 5.000000e-01
  %2962 = fmul fast float %2955, -5.000000e-01
  %2963 = fmul fast float %2961, %2960
  %2964 = fmul fast float %2962, %2960
  %2965 = fsub fast float 5.000000e-01, %2940
  %2966 = fadd fast float %2965, %2963
  %2967 = fsub fast float 5.000000e-01, %2941
  %2968 = fadd fast float %2967, %2964
  %2969 = fsub fast float %2960, %2939
  %2970 = call float @dx.op.dot2.f32(i32 54, float %2966, float %2968, float %2966, float %2968)  ; Dot2(ax,ay,bx,by)
  %2971 = call float @dx.op.binary.f32(i32 35, float %2970, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %2972 = call float @dx.op.dot2.f32(i32 54, float %2891, float %2892, float %2891, float %2892)  ; Dot2(ax,ay,bx,by)
  %2973 = fmul fast float %2972, %2971
  %2974 = call float @dx.op.unary.f32(i32 25, float %2973)  ; Rsqrt(value)
  %2975 = fmul fast float %2974, %2966
  %2976 = fmul fast float %2974, %2968
  %2977 = fadd fast float %2975, %2940
  %2978 = fadd fast float %2976, %2941
  %2979 = fmul fast float %2966, %2891
  %2980 = fmul fast float %2968, %2892
  %2981 = fmul fast float %2979, %2979
  %2982 = fmul fast float %2980, %2980
  %2983 = fadd fast float %2981, %2982
  %2984 = call float @dx.op.unary.f32(i32 24, float %2983)  ; Sqrt(value)
  %2985 = fdiv fast float 1.000000e+00, %2984
  %2986 = fmul fast float %2984, 3.906250e-03
  %2987 = fmul fast float %2890, 0x3F70624DE0000000
  %2988 = fadd fast float %2987, 0x3F70624DE0000000
  br label %2989

; <label>:2989                                    ; preds = %3045, %2817
  %2990 = phi float [ %3021, %3045 ], [ %79, %2817 ]
  %2991 = phi float [ %3008, %3045 ], [ %79, %2817 ]
  %2992 = phi float [ %2991, %3045 ], [ %79, %2817 ]
  %2993 = phi i32 [ %3046, %3045 ], [ 0, %2817 ]
  %2994 = sitofp i32 %2993 to float
  %2995 = fadd fast float %217, 5.000000e-01
  %2996 = call float @dx.op.unary.f32(i32 22, float %2995)  ; Frc(value)
  %2997 = fadd fast float %2994, %2996
  %2998 = sitofp i32 %2815 to float
  %2999 = fdiv fast float %2997, %2998
  %3000 = fmul fast float %2999, %2999
  %3001 = call float @dx.op.binary.f32(i32 36, float %3000, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3002 = fmul fast float %3001, %2966
  %3003 = fmul fast float %3001, %2968
  %3004 = fmul fast float %3001, %2969
  %3005 = fadd fast float %3002, %2977
  %3006 = fadd fast float %3003, %2978
  %3007 = fadd fast float %3004, %2939
  %3008 = fdiv fast float 1.000000e+00, %3007
  %3009 = icmp ne i32 %2827, 0
  %3010 = fmul fast float %2986, %3001
  %3011 = call float @dx.op.binary.f32(i32 36, float %3010, float %2828)  ; FMin(a,b)
  %3012 = select i1 %3009, float %3011, float 0.000000e+00
  %3013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %28, float %3005, float %3006, float undef, float undef, i32 0, i32 0, i32 undef, float %3012)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = fcmp fast ogt float %3014, -1.000000e+00
  %3016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3017 = extractvalue %dx.types.CBufRet.f32 %3016, 1
  %3018 = select i1 %3015, float %3017, float 1.000000e+00
  %3019 = fadd fast float %3014, 1.000000e+00
  %3020 = fmul fast float %3018, %3019
  %3021 = call float @dx.op.unary.f32(i32 6, float %3020)  ; FAbs(value)
  %3022 = fmul fast float %3021, %2988
  %3023 = fsub fast float %3008, %3021
  %3024 = fsub fast float %3023, %3022
  %3025 = fcmp fast ogt float %3024, 0.000000e+00
  %3026 = fcmp fast ogt float %2825, 0.000000e+00
  br i1 %3026, label %3027, label %3030, !dx.controlflow.hints !90

; <label>:3027                                    ; preds = %2989
  %3028 = fsub fast float %3008, %2992
  %3029 = call float @dx.op.binary.f32(i32 35, float %3028, float %2825)  ; FMax(a,b)
  br label %3030

; <label>:3030                                    ; preds = %3027, %2989
  %3031 = phi float [ %3029, %3027 ], [ %2822, %2989 ]
  %3032 = fcmp fast olt float %3024, %3031
  %3033 = fcmp uge float %3014, -1.000000e+00
  %3034 = xor i1 %72, %3033
  %3035 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3036 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3037 = fcmp fast oeq float %3005, %3035
  %3038 = fcmp fast oeq float %3006, %3036
  %3039 = and i1 %3037, %3038
  %3040 = and i1 %3034, %3039
  %3041 = and i1 %3025, %3032
  %3042 = and i1 %3041, %3040
  %3043 = fcmp fast ogt float %3001, %2985
  %3044 = and i1 %3043, %3042
  br i1 %3044, label %3048, label %3045, !dx.controlflow.hints !91

; <label>:3045                                    ; preds = %3030
  %3046 = add nuw nsw i32 %2993, 1
  %3047 = icmp slt i32 %2993, %2815
  br i1 %3047, label %2989, label %3048

; <label>:3048                                    ; preds = %3045, %3030
  %3049 = phi i1 [ false, %3045 ], [ true, %3030 ]
  %3050 = fsub fast float %2991, %2990
  %3051 = fsub fast float %3050, %3023
  %3052 = fcmp fast une float %3051, 0.000000e+00
  %3053 = fmul fast float %3008, %3050
  %3054 = fmul fast float %3023, %2991
  %3055 = fsub fast float %3053, %3054
  %3056 = fdiv fast float 1.000000e+00, %3051
  %3057 = fmul fast float %3056, %3055
  %3058 = select i1 %3052, float %3057, float %3008
  %3059 = fdiv fast float 1.000000e+00, %3058
  %3060 = fsub fast float %3059, %2939
  %3061 = fdiv fast float %3060, %2969
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fmul fast float %3062, %2966
  %3064 = fmul fast float %3062, %2968
  %3065 = fadd fast float %2977, -5.000000e-01
  %3066 = fadd fast float %3065, %3063
  %3067 = fadd fast float %2978, -5.000000e-01
  %3068 = fadd fast float %3067, %3064
  %3069 = call float @dx.op.unary.f32(i32 6, float %3066)  ; FAbs(value)
  %3070 = call float @dx.op.unary.f32(i32 6, float %3068)  ; FAbs(value)
  %3071 = fadd fast float %3069, -5.000000e-01
  %3072 = fadd fast float %3070, -5.000000e-01
  %3073 = call float @dx.op.binary.f32(i32 35, float %3071, float %3072)  ; FMax(a,b)
  %3074 = fcmp fast olt float %3073, 0.000000e+00
  %3075 = or i1 %72, %3074
  %3076 = and i1 %3049, %3075
  %3077 = select i1 %3076, float 0.000000e+00, float 1.000000e+00
  %3078 = call float @dx.op.binary.f32(i32 36, float %2804, float %3077)  ; FMin(a,b)
  br label %3079

; <label>:3079                                    ; preds = %3048, %2810, %2803
  %3080 = phi float [ %3078, %3048 ], [ %2804, %2810 ], [ %2804, %2803 ]
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 114688
  %3084 = icmp ne i32 %3083, 0
  %3085 = fcmp fast ogt float %3080, 0.000000e+00
  %3086 = and i1 %3085, %3084
  br i1 %3086, label %3087, label %3519, !dx.controlflow.hints !92

; <label>:3087                                    ; preds = %3079
  %3088 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %61, i32 %62, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = fmul fast float %3089, 2.550000e+02
  %3091 = fptoui float %3090 to i32
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3432, label %3093, !dx.controlflow.hints !93

; <label>:3093                                    ; preds = %3087
  %3094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3095 = extractvalue %dx.types.CBufRet.f32 %3094, 0
  %3096 = extractvalue %dx.types.CBufRet.f32 %3094, 1
  %3097 = extractvalue %dx.types.CBufRet.f32 %3094, 2
  %3098 = fadd fast float %3095, %133
  %3099 = fadd fast float %3096, %134
  %3100 = fadd fast float %3097, %135
  %3101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.CBufRet.f32 %3101, 1
  %3104 = fsub fast float %3098, %3102
  %3105 = fsub fast float %3099, %3103
  %3106 = fmul fast float %3104, %3104
  %3107 = fmul fast float %3105, %3105
  %3108 = fadd fast float %3106, %3107
  %3109 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3110 = extractvalue %dx.types.CBufRet.f32 %3101, 2
  %3111 = fcmp fast olt float %3109, %3110
  br i1 %3111, label %3112, label %3177, !dx.controlflow.hints !94

; <label>:3112                                    ; preds = %3093
  %3113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3114 = extractvalue %dx.types.CBufRet.f32 %3113, 0
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 0
  %3117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3118 = extractvalue %dx.types.CBufRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.CBufRet.f32 %3113, 1
  %3120 = extractvalue %dx.types.CBufRet.f32 %3115, 1
  %3121 = extractvalue %dx.types.CBufRet.f32 %3117, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3113, 3
  %3123 = extractvalue %dx.types.CBufRet.f32 %3115, 3
  %3124 = extractvalue %dx.types.CBufRet.f32 %3117, 3
  %3125 = fadd fast float %3122, %3098
  %3126 = fadd fast float %3123, %3099
  %3127 = fadd fast float %3124, %3100
  %3128 = fmul fast float %3125, %3114
  %3129 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3116, float %3128)  ; FMad(a,b,c)
  %3130 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3118, float %3129)  ; FMad(a,b,c)
  %3131 = fmul fast float %3125, %3119
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3126, float %3120, float %3131)  ; FMad(a,b,c)
  %3133 = call float @dx.op.tertiary.f32(i32 46, float %3127, float %3121, float %3132)  ; FMad(a,b,c)
  %3134 = fsub fast float %3130, %3122
  %3135 = fsub fast float %3133, %3123
  %3136 = fsub fast float %3134, %3102
  %3137 = fadd fast float %3136, %3110
  %3138 = fsub fast float %3135, %3103
  %3139 = fadd fast float %3138, %3110
  %3140 = extractvalue %dx.types.CBufRet.f32 %3101, 3
  %3141 = fmul fast float %3137, %3140
  %3142 = fmul fast float %3139, %3140
  %3143 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  %3144 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  %3145 = fsub fast float 1.000000e+00, %3143
  %3146 = fsub fast float 1.000000e+00, %3144
  %3147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %27, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = fcmp fast ugt float %3148, 0.000000e+00
  br i1 %3149, label %3150, label %3432, !dx.controlflow.hints !95

; <label>:3150                                    ; preds = %3112
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 2
  %3153 = fmul fast float %3152, %3148
  %3154 = extractvalue %dx.types.CBufRet.f32 %3151, 3
  %3155 = fadd fast float %3154, %3153
  %3156 = extractvalue %dx.types.CBufRet.f32 %3117, 2
  %3157 = fadd fast float %3155, %3124
  %3158 = fmul fast float %3130, %3118
  %3159 = call float @dx.op.tertiary.f32(i32 46, float %3133, float %3121, float %3158)  ; FMad(a,b,c)
  %3160 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3156, float %3159)  ; FMad(a,b,c)
  %3161 = fsub fast float %3160, %3124
  %3162 = fsub fast float %3161, %3097
  %3163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %27, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3164 = extractvalue %dx.types.ResRet.f32 %3163, 0
  %3165 = extractvalue %dx.types.ResRet.f32 %3163, 1
  %3166 = extractvalue %dx.types.ResRet.f32 %3163, 2
  %3167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %27, float %3145, float %3146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = fadd fast float %3168, %3164
  %3172 = fmul fast float %3171, 0x3F847AE140000000
  %3173 = fadd fast float %3169, %3165
  %3174 = fmul fast float %3173, 0x3F847AE140000000
  %3175 = fadd fast float %3170, %3166
  %3176 = fmul fast float %3175, 0x3F847AE140000000
  br label %3432

; <label>:3177                                    ; preds = %3093
  %3178 = and i32 %3091, -3
  %3179 = icmp eq i32 %3178, 1
  br i1 %3179, label %3180, label %3432, !dx.controlflow.hints !96

; <label>:3180                                    ; preds = %3177
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3184 = extractvalue %dx.types.CBufRet.f32 %3183, 0
  %3185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3186 = extractvalue %dx.types.CBufRet.f32 %3185, 0
  %3187 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3188 = extractvalue %dx.types.CBufRet.f32 %3183, 1
  %3189 = extractvalue %dx.types.CBufRet.f32 %3185, 1
  %3190 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3191 = extractvalue %dx.types.CBufRet.f32 %3183, 3
  %3192 = extractvalue %dx.types.CBufRet.f32 %3185, 3
  %3193 = fadd fast float %3190, %3098
  %3194 = fadd fast float %3191, %3099
  %3195 = fadd fast float %3192, %3100
  %3196 = fmul fast float %3193, %3182
  %3197 = call float @dx.op.tertiary.f32(i32 46, float %3194, float %3184, float %3196)  ; FMad(a,b,c)
  %3198 = call float @dx.op.tertiary.f32(i32 46, float %3195, float %3186, float %3197)  ; FMad(a,b,c)
  %3199 = fmul fast float %3193, %3187
  %3200 = call float @dx.op.tertiary.f32(i32 46, float %3194, float %3188, float %3199)  ; FMad(a,b,c)
  %3201 = call float @dx.op.tertiary.f32(i32 46, float %3195, float %3189, float %3200)  ; FMad(a,b,c)
  %3202 = fsub fast float %3198, %3190
  %3203 = fsub fast float %3201, %3191
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.CBufRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.CBufRet.f32 %3204, 2
  %3208 = extractvalue %dx.types.CBufRet.f32 %3204, 3
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.i32 %3211, 0
  %3213 = extractvalue %dx.types.CBufRet.i32 %3211, 1
  %3214 = udiv i32 %3213, %3212
  %3215 = fsub fast float %3202, %3205
  %3216 = fsub fast float %3203, %3206
  %3217 = call float @dx.op.binary.f32(i32 35, float %3215, float 0.000000e+00)  ; FMax(a,b)
  %3218 = call float @dx.op.binary.f32(i32 35, float %3216, float 0.000000e+00)  ; FMax(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3217, float %3207)  ; FMin(a,b)
  %3220 = call float @dx.op.binary.f32(i32 36, float %3218, float %3208)  ; FMin(a,b)
  %3221 = add i32 %3212, -1
  %3222 = add i32 %3214, -1
  %3223 = fmul fast float %3219, %3210
  %3224 = fmul fast float %3220, %3210
  %3225 = fptoui float %3223 to i32
  %3226 = fptoui float %3224 to i32
  %3227 = call i32 @dx.op.binary.i32(i32 40, i32 %3225, i32 %3221)  ; UMin(a,b)
  %3228 = call i32 @dx.op.binary.i32(i32 40, i32 %3226, i32 %3222)  ; UMin(a,b)
  %3229 = mul i32 %3228, %3212
  %3230 = add i32 %3229, %3227
  %3231 = shl i32 %3230, 2
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = icmp eq i32 %3233, -1
  br i1 %3234, label %3432, label %3235, !dx.controlflow.hints !97

; <label>:3235                                    ; preds = %3180
  %3236 = mul i32 %3233, 148
  %3237 = add i32 %3236, 4
  %3238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 0
  %3240 = add i32 %3236, 8
  %3241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = add i32 %3236, 36
  %3244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.f32 %3244, 0
  %3246 = add i32 %3236, 60
  %3247 = add i32 %3236, 92
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = add i32 %3236, 116
  %3251 = fsub fast float %3202, %3239
  %3252 = fsub fast float %3203, %3242
  %3253 = fmul fast float %3210, %3251
  %3254 = fmul fast float %3210, %3252
  %3255 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3257 = fsub fast float 1.000000e+00, %3256
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 3
  %3260 = fadd fast float %3259, 2.000000e+00
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 3
  %3263 = fadd fast float %3260, %3262
  %3264 = add i32 %3249, 0
  %3265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3264, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3265, i32 0)  ; GetDimensions(handle,mipLevel)
  %3267 = extractvalue %dx.types.Dimensions %3266, 0
  %3268 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3267)  ; FirstbitLo(value)
  %3269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3270 = extractvalue %dx.types.CBufRet.i32 %3269, 1
  %3271 = sub nsw i32 %3270, %3268
  %3272 = sitofp i32 %3271 to float
  %3273 = fsub fast float %3263, %3272
  %3274 = call float @dx.op.binary.f32(i32 35, float %3273, float 0.000000e+00)  ; FMax(a,b)
  %3275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3265, %dx.types.Handle %25, float %3255, float %3257, float %3245, float undef, i32 0, i32 0, i32 undef, float %3274)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3276 = extractvalue %dx.types.ResRet.f32 %3275, 0
  %3277 = fcmp ule float %3276, 0x3FE0101020000000
  %3278 = extractvalue %dx.types.CBufRet.i32 %3269, 0
  %3279 = and i32 %3278, 128
  %3280 = icmp ne i32 %3279, 0
  %3281 = and i1 %3277, %3280
  br i1 %3281, label %3432, label %3282, !dx.controlflow.hints !98

; <label>:3282                                    ; preds = %3235
  %3283 = add i32 %3236, 20
  %3284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = add i32 %3236, 24
  %3287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 0
  %3289 = add i32 %3236, 40
  %3290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  %3292 = add i32 %3236, 96
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3296 = extractvalue %dx.types.CBufRet.f32 %3295, 2
  %3297 = fmul fast float %3296, %3255
  %3298 = fmul fast float %3296, %3257
  %3299 = extractvalue %dx.types.CBufRet.f32 %3295, 3
  %3300 = fadd fast float %3297, %3299
  %3301 = fadd fast float %3298, %3299
  %3302 = add i32 %3294, 0
  %3303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3302, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3304 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3303, i32 0)  ; GetDimensions(handle,mipLevel)
  %3305 = extractvalue %dx.types.Dimensions %3304, 0
  %3306 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3305)  ; FirstbitLo(value)
  %3307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.i32 %3307, 1
  %3309 = sub nsw i32 %3308, %3306
  %3310 = sitofp i32 %3309 to float
  %3311 = fsub fast float %3260, %3310
  %3312 = call float @dx.op.binary.f32(i32 35, float %3311, float 0.000000e+00)  ; FMax(a,b)
  %3313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3303, %dx.types.Handle %25, float %3300, float %3301, float %3291, float undef, i32 0, i32 0, i32 undef, float %3312)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = fmul fast float %3314, %3285
  %3316 = fadd fast float %3315, %3288
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3319 = extractvalue %dx.types.CBufRet.f32 %3317, 1
  %3320 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3322 = extractvalue %dx.types.CBufRet.f32 %3321, 3
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 3
  %3325 = extractvalue %dx.types.CBufRet.f32 %3317, 3
  %3326 = fadd fast float %3322, %3202
  %3327 = fadd fast float %3324, %3203
  %3328 = fadd fast float %3316, %3325
  %3329 = fmul fast float %3326, %3318
  %3330 = call float @dx.op.tertiary.f32(i32 46, float %3327, float %3319, float %3329)  ; FMad(a,b,c)
  %3331 = call float @dx.op.tertiary.f32(i32 46, float %3328, float %3320, float %3330)  ; FMad(a,b,c)
  %3332 = fsub fast float %3331, %3325
  %3333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.f32 %3333, 2
  %3335 = fsub fast float %3332, %3334
  %3336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3337 = extractvalue %dx.types.CBufRet.i32 %3336, 0
  %3338 = call i32 @dx.op.binary.i32(i32 40, i32 %3233, i32 %3337)  ; UMin(a,b)
  %3339 = mul i32 %3338, 36
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = add i32 %3339, 4
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 0
  %3345 = fmul fast float %3344, %3255
  %3346 = fmul fast float %3344, %3257
  %3347 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3348 = fadd fast float %3345, %3347
  %3349 = fadd fast float %3346, %3347
  %3350 = icmp eq i32 %3341, 0
  br i1 %3350, label %3419, label %3351

; <label>:3351                                    ; preds = %3282
  br label %3352

; <label>:3352                                    ; preds = %3409, %3351
  %3353 = phi float [ %3410, %3409 ], [ 0.000000e+00, %3351 ]
  %3354 = phi float [ %3411, %3409 ], [ 0.000000e+00, %3351 ]
  %3355 = phi float [ %3412, %3409 ], [ 0.000000e+00, %3351 ]
  %3356 = phi float [ %3413, %3409 ], [ 0.000000e+00, %3351 ]
  %3357 = phi float [ %3414, %3409 ], [ 0.000000e+00, %3351 ]
  %3358 = phi float [ %3415, %3409 ], [ 0.000000e+00, %3351 ]
  %3359 = phi i32 [ %3416, %3409 ], [ 0, %3351 ]
  %3360 = shl i32 %3359, 2
  %3361 = add i32 %3246, %3360
  %3362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  %3364 = add i32 %3250, %3360
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = add i32 %3366, 0
  %3368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3367, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3369 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3368, i32 0)  ; GetDimensions(handle,mipLevel)
  %3370 = extractvalue %dx.types.Dimensions %3369, 0
  %3371 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3370)  ; FirstbitLo(value)
  %3372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %31, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.i32 %3372, 1
  %3374 = sub nsw i32 %3373, %3371
  %3375 = sitofp i32 %3374 to float
  %3376 = fsub fast float %3260, %3375
  %3377 = call float @dx.op.binary.f32(i32 35, float %3376, float 0.000000e+00)  ; FMax(a,b)
  %3378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3368, %dx.types.Handle %25, float %3348, float %3349, float %3363, float undef, i32 0, i32 0, i32 undef, float %3377)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = fcmp fast ogt float %3379, 0.000000e+00
  br i1 %3380, label %3381, label %3409, !dx.controlflow.hints !99

; <label>:3381                                    ; preds = %3352
  %3382 = add i32 %3342, %3360
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = and i32 %3384, 32767
  %3386 = mul nuw nsw i32 %3385, 928
  %3387 = add nuw nsw i32 %3386, 48
  %3388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = add nuw nsw i32 %3386, 60
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = extractvalue %dx.types.ResRet.f32 %3393, 1
  %3396 = extractvalue %dx.types.ResRet.f32 %3393, 2
  %3397 = fmul fast float %3389, %3379
  %3398 = fmul fast float %3390, %3379
  %3399 = fmul fast float %3391, %3379
  %3400 = fadd fast float %3397, %3353
  %3401 = fadd fast float %3398, %3354
  %3402 = fadd fast float %3399, %3355
  %3403 = fmul fast float %3394, %3379
  %3404 = fmul fast float %3395, %3379
  %3405 = fmul fast float %3396, %3379
  %3406 = fadd fast float %3403, %3356
  %3407 = fadd fast float %3404, %3357
  %3408 = fadd fast float %3405, %3358
  br label %3409

; <label>:3409                                    ; preds = %3381, %3352
  %3410 = phi float [ %3400, %3381 ], [ %3353, %3352 ]
  %3411 = phi float [ %3401, %3381 ], [ %3354, %3352 ]
  %3412 = phi float [ %3402, %3381 ], [ %3355, %3352 ]
  %3413 = phi float [ %3406, %3381 ], [ %3356, %3352 ]
  %3414 = phi float [ %3407, %3381 ], [ %3357, %3352 ]
  %3415 = phi float [ %3408, %3381 ], [ %3358, %3352 ]
  %3416 = add nuw i32 %3359, 1
  %3417 = icmp eq i32 %3416, %3341
  br i1 %3417, label %3418, label %3352

; <label>:3418                                    ; preds = %3409
  br label %3419

; <label>:3419                                    ; preds = %3418, %3282
  %3420 = phi float [ 0.000000e+00, %3282 ], [ %3410, %3418 ]
  %3421 = phi float [ 0.000000e+00, %3282 ], [ %3411, %3418 ]
  %3422 = phi float [ 0.000000e+00, %3282 ], [ %3412, %3418 ]
  %3423 = phi float [ 0.000000e+00, %3282 ], [ %3413, %3418 ]
  %3424 = phi float [ 0.000000e+00, %3282 ], [ %3414, %3418 ]
  %3425 = phi float [ 0.000000e+00, %3282 ], [ %3415, %3418 ]
  %3426 = fadd fast float %3423, %3420
  %3427 = fmul fast float %3426, 0x3F847AE140000000
  %3428 = fadd fast float %3424, %3421
  %3429 = fmul fast float %3428, 0x3F847AE140000000
  %3430 = fadd fast float %3425, %3422
  %3431 = fmul fast float %3430, 0x3F847AE140000000
  br label %3432

; <label>:3432                                    ; preds = %3419, %3235, %3180, %3177, %3150, %3112, %3087
  %3433 = phi i1 [ true, %3087 ], [ false, %3150 ], [ true, %3112 ], [ false, %3419 ], [ true, %3180 ], [ true, %3235 ], [ true, %3177 ]
  %3434 = phi float [ 0.000000e+00, %3087 ], [ %3162, %3150 ], [ -1.310720e+05, %3112 ], [ %3335, %3419 ], [ -1.310720e+05, %3180 ], [ -1.310720e+05, %3235 ], [ -1.310720e+05, %3177 ]
  %3435 = phi float [ 0.000000e+00, %3087 ], [ %3172, %3150 ], [ 0.000000e+00, %3112 ], [ %3427, %3419 ], [ 0.000000e+00, %3180 ], [ 0.000000e+00, %3235 ], [ 0.000000e+00, %3177 ]
  %3436 = phi float [ 0.000000e+00, %3087 ], [ %3174, %3150 ], [ 0.000000e+00, %3112 ], [ %3429, %3419 ], [ 0.000000e+00, %3180 ], [ 0.000000e+00, %3235 ], [ 0.000000e+00, %3177 ]
  %3437 = phi float [ 0.000000e+00, %3087 ], [ %3176, %3150 ], [ 0.000000e+00, %3112 ], [ %3431, %3419 ], [ 0.000000e+00, %3180 ], [ 0.000000e+00, %3235 ], [ 0.000000e+00, %3177 ]
  br i1 %3433, label %3519, label %3438, !dx.controlflow.hints !100

; <label>:3438                                    ; preds = %3432
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3442 = extractvalue %dx.types.CBufRet.f32 %3439, 2
  %3443 = fsub fast float %135, %3434
  %3444 = fcmp fast ogt float %3443, 0.000000e+00
  %3445 = fmul fast float %3440, 5.120000e+02
  %3446 = fmul fast float %3441, 5.120000e+02
  %3447 = fmul fast float %3442, 5.120000e+02
  %3448 = fadd fast float %3447, %135
  %3449 = fsub fast float %3434, %3448
  %3450 = fmul fast float %3449, 2.000000e+00
  %3451 = fadd fast float %3450, %3448
  %3452 = select i1 %3444, float %3451, float %3448
  %3453 = fsub fast float %3452, %135
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3445, float %3446, float %3453, float %3445, float %3446, float %3453)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = call float @dx.op.unary.f32(i32 25, float %3454)  ; Rsqrt(value)
  %3456 = fmul fast float %3445, %3455
  %3457 = fmul fast float %3446, %3455
  %3458 = fmul fast float %3453, %3455
  %3459 = fsub fast float %3434, %135
  %3460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3456, float %3457, float %3458)  ; Dot3(ax,ay,az,bx,by,bz)
  %3462 = fdiv fast float 1.000000e+00, %3461
  %3463 = fmul fast float %3462, %3460
  %3464 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3443, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = fcmp fast ogt float %3464, 0.000000e+00
  %3466 = fcmp fast olt float %3464, 0.000000e+00
  %3467 = zext i1 %3465 to i32
  %3468 = zext i1 %3466 to i32
  %3469 = sub nsw i32 %3467, %3468
  %3470 = sitofp i32 %3469 to float
  %3471 = fsub fast float %3452, %3434
  %3472 = call float @dx.op.dot3.f32(i32 55, float %3445, float %3446, float %3471, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3473 = fcmp fast ogt float %3472, 0.000000e+00
  %3474 = fcmp fast olt float %3472, 0.000000e+00
  %3475 = zext i1 %3473 to i32
  %3476 = zext i1 %3474 to i32
  %3477 = sub nsw i32 %3475, %3476
  %3478 = sitofp i32 %3477 to float
  %3479 = fcmp fast une float %3470, %3478
  br i1 %3479, label %3480, label %3490, !dx.controlflow.hints !101

; <label>:3480                                    ; preds = %3438
  %3481 = fmul fast float %3458, %3463
  %3482 = fmul fast float %3463, %3457
  %3483 = fmul fast float %3463, %3456
  %3484 = fmul fast float %3483, %3483
  %3485 = fmul fast float %3482, %3482
  %3486 = fadd fast float %3484, %3485
  %3487 = fmul fast float %3481, %3481
  %3488 = fadd fast float %3486, %3487
  %3489 = call float @dx.op.unary.f32(i32 24, float %3488)  ; Sqrt(value)
  br label %3500

; <label>:3490                                    ; preds = %3438
  %3491 = icmp slt i32 %3469, 0
  br i1 %3491, label %3492, label %3500, !dx.controlflow.hints !102

; <label>:3492                                    ; preds = %3490
  %3493 = fsub fast float %135, %3452
  %3494 = fmul fast float %3445, %3445
  %3495 = fmul fast float %3446, %3446
  %3496 = fadd fast float %3494, %3495
  %3497 = fmul fast float %3493, %3493
  %3498 = fadd fast float %3496, %3497
  %3499 = call float @dx.op.unary.f32(i32 24, float %3498)  ; Sqrt(value)
  br label %3500

; <label>:3500                                    ; preds = %3492, %3490, %3480
  %3501 = phi float [ %3489, %3480 ], [ %3499, %3492 ], [ 0.000000e+00, %3490 ]
  %3502 = fsub fast float -0.000000e+00, %3501
  %3503 = select i1 %3444, float -0.000000e+00, float %3502
  %3504 = fmul fast float %3435, 0x3FF7154760000000
  %3505 = fmul fast float %3504, %3503
  %3506 = fmul fast float %3436, 0x3FF7154760000000
  %3507 = fmul fast float %3506, %3503
  %3508 = fmul fast float %3437, 0x3FF7154760000000
  %3509 = fmul fast float %3508, %3503
  %3510 = call float @dx.op.unary.f32(i32 21, float %3505)  ; Exp(value)
  %3511 = call float @dx.op.unary.f32(i32 21, float %3507)  ; Exp(value)
  %3512 = call float @dx.op.unary.f32(i32 21, float %3509)  ; Exp(value)
  %3513 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3514 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = fmul fast float %3513, %3080
  %3517 = fmul fast float %3514, %3080
  %3518 = fmul fast float %3515, %3080
  br label %3519

; <label>:3519                                    ; preds = %3500, %3432, %3079
  %3520 = phi float [ %3516, %3500 ], [ %3080, %3432 ], [ %3080, %3079 ]
  %3521 = phi float [ %3517, %3500 ], [ %3080, %3432 ], [ %3080, %3079 ]
  %3522 = phi float [ %3518, %3500 ], [ %3080, %3432 ], [ %3080, %3079 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %61, i32 %62, i32 undef, float %3520, float %3521, float %3522, float %3520, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3523

; <label>:3523                                    ; preds = %3519, %82
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
!dx.entryPoints = !{!44}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !32, !34, !37}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31}
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
!32 = !{!33}
!33 = !{i32 0, %"class.RWTexture2D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!42 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!43 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!44 = !{void ()* @cs_sunvis, !"cs_sunvis", null, !4, !45}
!45 = !{i32 0, i64 272, i32 4, !46}
!46 = !{i32 16, i32 16, i32 1}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 1}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 1}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
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
!102 = distinct !{!102, !"dx.controlflow.hints", i32 2}

