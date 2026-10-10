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
; shader hash: d5df9421362ff5cee433e4b940dd6b69
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
;                                   texture     f32          2d     T10            t22     1
;                                   texture     f32          2d     T11            t23     1
;                                   texture    byte         r/o     T12            t25     1
;                                   texture    byte         r/o     T13            t26     1
;                                   texture    byte         r/o     T14            t27     1
;                                   texture    byte         r/o     T15            t28     1
;                                   texture     f32          2d     T16            t17     1
;                                   texture    byte         r/o     T17            t12     1
;                                   texture     f32          2d     T18             t3     1
;                                   texture     f32          2d     T19             t0     1
;                                   texture     f32          2d     T20             t1     1
;                                   texture     f32          2d     T21             t2     1
;                                   textureunorm_f32     2darray     T22            t15     1
;                                   texture    byte         r/o     T23             t9     1
;                                   texture     f32          2d     T24             t4     1
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4

define void @cs_sunvis() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %39 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %40 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %41 = alloca [12 x float], align 4
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = alloca [12 x float], align 4
  %46 = alloca [12 x float], align 4
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
  %58 = alloca [4 x float], align 4
  %59 = alloca [4 x i32], align 4
  %60 = shl i32 %39, 1
  %61 = shl i32 %40, 1
  %62 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.i32 %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %97, label %65, !dx.controlflow.hints !49

; <label>:65                                      ; preds = %0
  %66 = shl i32 %37, 2
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = lshr i32 %68, 28
  %70 = and i32 %69, 3
  %71 = lshr i32 %68, 14
  %72 = and i32 %71, 16383
  %73 = and i32 %68, 16383
  %74 = icmp eq i32 %70, 0
  %75 = shl nuw nsw i32 %72, 4
  %76 = shl nuw nsw i32 %73, 4
  br i1 %74, label %94, label %77, !dx.controlflow.hints !50

; <label>:77                                      ; preds = %65
  %78 = shl nuw nsw i32 %72, 3
  %79 = shl nuw nsw i32 %73, 3
  %80 = or i32 %78, %39
  %81 = or i32 %79, %40
  %82 = add nsw i32 %70, -1
  %83 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %80, i32 %81, i32 %82, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = lshr i32 %84, 4
  %86 = and i32 %85, 15
  %87 = and i32 %84, 15
  %88 = or i32 %86, %75
  %89 = or i32 %87, %76
  %90 = and i32 %85, 1
  %91 = shl i32 %84, 1
  %92 = and i32 %91, 2
  %93 = or i32 %90, %92
  br label %97

; <label>:94                                      ; preds = %65
  %95 = or i32 %75, %60
  %96 = or i32 %76, %61
  br label %97

; <label>:97                                      ; preds = %94, %77, %0
  %98 = phi i32 [ %72, %77 ], [ %72, %94 ], [ %37, %0 ]
  %99 = phi i32 [ %73, %77 ], [ %73, %94 ], [ %38, %0 ]
  %100 = phi i32 [ %93, %77 ], [ 0, %94 ], [ 0, %0 ]
  %101 = phi i32 [ %88, %77 ], [ %95, %94 ], [ 0, %0 ]
  %102 = phi i32 [ %89, %77 ], [ %96, %94 ], [ 0, %0 ]
  %103 = uitofp i32 %101 to float
  %104 = uitofp i32 %102 to float
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %106, %103
  %109 = fmul fast float %107, %104
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 0, i32 %101, i32 %102, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fcmp fast olt float %111, -1.000000e+00
  %113 = fcmp fast ogt float %111, -1.000000e+00
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %116 = select i1 %113, float %115, float 1.000000e+00
  %117 = fadd fast float %111, 1.000000e+00
  %118 = fmul fast float %116, %117
  %119 = call float @dx.op.unary.f32(i32 6, float %118)  ; FAbs(value)
  %120 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %121 = fcmp fast ult float %119, %120
  %122 = lshr i32 %101, 1
  %123 = lshr i32 %102, 1
  br i1 %121, label %125, label %124, !dx.controlflow.hints !51

; <label>:124                                     ; preds = %97
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %122, i32 %123, i32 %100, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5783

; <label>:125                                     ; preds = %97
  %126 = fmul fast float %108, 2.000000e+00
  %127 = fmul fast float %109, 2.000000e+00
  %128 = fsub fast float 1.000000e+00, %126
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = select i1 %112, float %131, float %135
  %139 = select i1 %112, float %132, float %136
  %140 = select i1 %112, float %133, float %137
  %141 = fmul fast float %138, %128
  %142 = fmul fast float %139, %128
  %143 = fmul fast float %140, %128
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = select i1 %112, float %145, float %149
  %153 = select i1 %112, float %146, float %150
  %154 = select i1 %112, float %147, float %151
  %155 = fmul fast float %152, %129
  %156 = fmul fast float %153, %129
  %157 = fmul fast float %154, %129
  %158 = fadd fast float %155, %141
  %159 = fadd fast float %156, %142
  %160 = fadd fast float %157, %143
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %161, 1
  %164 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = select i1 %112, float %162, float %166
  %170 = select i1 %112, float %163, float %167
  %171 = select i1 %112, float %164, float %168
  %172 = fadd fast float %158, %169
  %173 = fadd fast float %159, %170
  %174 = fadd fast float %160, %171
  %175 = fmul fast float %172, %119
  %176 = fmul fast float %173, %119
  %177 = fmul fast float %174, %119
  %178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.i32 %178, 0
  %180 = extractvalue %dx.types.CBufRet.i32 %178, 1
  %181 = extractvalue %dx.types.CBufRet.i32 %178, 2
  %182 = extractvalue %dx.types.CBufRet.i32 %178, 3
  %183 = and i32 %101, 1
  %184 = shl i32 %102, 1
  %185 = and i32 %184, 2
  %186 = or i32 %185, %183
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %179, i32* %187, align 4
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %180, i32* %188, align 4
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %181, i32* %189, align 4
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %182, i32* %190, align 4
  %191 = getelementptr [4 x i32], [4 x i32]* %59, i32 0, i32 %186
  %192 = load i32, i32* %191, align 4, !tbaa !52
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 %192, i32 %122, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 8
  %196 = and i32 %194, 255
  %197 = and i32 %195, 255
  %198 = uitofp i32 %196 to float
  %199 = uitofp i32 %197 to float
  %200 = fmul fast float %198, 0x3F80101020000000
  %201 = fmul fast float %199, 0x3F80101020000000
  %202 = fadd fast float %200, -1.000000e+00
  %203 = fadd fast float %201, -1.000000e+00
  %204 = call float @dx.op.unary.f32(i32 6, float %202)  ; FAbs(value)
  %205 = fsub fast float 1.000000e+00, %204
  %206 = call float @dx.op.unary.f32(i32 6, float %203)  ; FAbs(value)
  %207 = fsub fast float %205, %206
  %208 = fsub fast float -0.000000e+00, %207
  %209 = call float @dx.op.binary.f32(i32 35, float %208, float 0.000000e+00)  ; FMax(a,b)
  %210 = fcmp fast ogt float %202, 0.000000e+00
  %211 = fsub fast float -0.000000e+00, %209
  %212 = select i1 %210, float %211, float %209
  %213 = fadd fast float %212, %202
  %214 = fcmp fast ogt float %203, 0.000000e+00
  %215 = select i1 %214, float %211, float %209
  %216 = fadd fast float %215, %203
  %217 = call float @dx.op.dot3.f32(i32 55, float %213, float %216, float %207, float %213, float %216, float %207)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 25, float %217)  ; Rsqrt(value)
  %219 = fmul fast float %213, %218
  %220 = fmul fast float %216, %218
  %221 = fmul fast float %218, %207
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %226 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %219, float %220, float %221)  ; Dot3(ax,ay,az,bx,by,bz)
  %227 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %228 = fsub fast float 1.000000e+00, %227
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fsub fast float -0.000000e+00, %226
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = fmul fast float %230, %232
  %234 = fsub fast float %228, %233
  %235 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %236 = fmul fast float %234, %235
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 0
  %239 = extractvalue %dx.types.CBufRet.f32 %237, 1
  %240 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %241 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.f32 %247, 0
  %249 = extractvalue %dx.types.CBufRet.f32 %247, 1
  %250 = extractvalue %dx.types.CBufRet.f32 %247, 2
  %251 = extractvalue %dx.types.CBufRet.f32 %247, 3
  %252 = fmul fast float %238, %175
  %253 = call float @dx.op.tertiary.f32(i32 46, float %176, float %239, float %252)  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float %177, float %240, float %253)  ; FMad(a,b,c)
  %255 = fadd fast float %254, %241
  %256 = fmul fast float %243, %175
  %257 = call float @dx.op.tertiary.f32(i32 46, float %176, float %244, float %256)  ; FMad(a,b,c)
  %258 = call float @dx.op.tertiary.f32(i32 46, float %177, float %245, float %257)  ; FMad(a,b,c)
  %259 = fadd fast float %258, %246
  %260 = fmul fast float %248, %175
  %261 = call float @dx.op.tertiary.f32(i32 46, float %176, float %249, float %260)  ; FMad(a,b,c)
  %262 = call float @dx.op.tertiary.f32(i32 46, float %177, float %250, float %261)  ; FMad(a,b,c)
  %263 = fadd fast float %262, %251
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = fmul fast float %265, 0x3FE3C6EF40000000
  %267 = frem fast float %103, 2.560000e+02
  %268 = frem fast float %104, 2.560000e+02
  %269 = fptoui float %267 to i32
  %270 = fptoui float %268 to i32
  %271 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 0, i32 %269, i32 %270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 2
  %273 = fadd fast float %272, %266
  %274 = call float @dx.op.unary.f32(i32 22, float %273)  ; Frc(value)
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %277 = fcmp fast une float %276, 0.000000e+00
  br i1 %277, label %278, label %3141, !dx.controlflow.hints !56

; <label>:278                                     ; preds = %125
  %279 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %280 = fptoui float %279 to i32
  %281 = add i32 %280, 15
  %282 = lshr i32 %281, 4
  %283 = mul i32 %282, %99
  %284 = add i32 %283, %98
  %285 = shl i32 %284, 3
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = lshr i32 %287, 28
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %465, !dx.controlflow.hints !57

; <label>:290                                     ; preds = %278
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %295 = fmul fast float %292, %236
  %296 = fadd fast float %294, %263
  %297 = fadd fast float %296, %295
  %298 = extractvalue %dx.types.CBufRet.f32 %291, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %301 = fmul fast float %300, %255
  %302 = fmul fast float %300, %259
  %303 = fadd fast float %301, %298
  %304 = fadd fast float %302, %299
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = call float @dx.op.binary.f32(i32 35, float %297, float 0.000000e+00)  ; FMax(a,b)
  %311 = fadd fast float %310, 0x3F10000000000000
  %312 = fcmp fast oeq float %309, 0.000000e+00
  br i1 %312, label %313, label %380, !dx.controlflow.hints !58

; <label>:313                                     ; preds = %290
  %314 = extractvalue %dx.types.CBufRet.f32 %305, 1
  %315 = extractvalue %dx.types.CBufRet.f32 %305, 0
  %316 = fmul fast float %303, %315
  %317 = fmul fast float %304, %314
  %318 = fadd fast float %316, 5.000000e-01
  %319 = call float @dx.op.unary.f32(i32 27, float %318)  ; Round_ni(value)
  %320 = fadd fast float %317, 5.000000e-01
  %321 = call float @dx.op.unary.f32(i32 27, float %320)  ; Round_ni(value)
  %322 = fsub fast float %318, %319
  %323 = fsub fast float %320, %321
  %324 = fadd fast float %319, -5.000000e-01
  %325 = fadd fast float %321, -5.000000e-01
  %326 = fmul fast float %322, 2.000000e+00
  %327 = fsub fast float 3.000000e+00, %326
  %328 = fadd fast float %326, 1.000000e+00
  %329 = fsub fast float 2.000000e+00, %322
  %330 = bitcast float %327 to i32
  %331 = sub nsw i32 2129859010, %330
  %332 = bitcast i32 %331 to float
  %333 = fmul fast float %332, %329
  %334 = fadd fast float %333, -1.000000e+00
  %335 = bitcast float %328 to i32
  %336 = sub nsw i32 2129859010, %335
  %337 = bitcast i32 %336 to float
  %338 = fmul fast float %337, %322
  %339 = fadd fast float %338, 1.000000e+00
  %340 = fmul fast float %323, 2.000000e+00
  %341 = fsub fast float 3.000000e+00, %340
  %342 = fadd fast float %340, 1.000000e+00
  %343 = fsub fast float 2.000000e+00, %323
  %344 = bitcast float %341 to i32
  %345 = sub nsw i32 2129859010, %344
  %346 = bitcast i32 %345 to float
  %347 = fmul fast float %346, %343
  %348 = fadd fast float %347, -1.000000e+00
  %349 = bitcast float %342 to i32
  %350 = sub nsw i32 2129859010, %349
  %351 = bitcast i32 %350 to float
  %352 = fmul fast float %351, %323
  %353 = fadd fast float %352, 1.000000e+00
  %354 = fadd fast float %334, %324
  %355 = fmul fast float %354, %306
  %356 = fadd fast float %348, %325
  %357 = fmul fast float %356, %307
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %355, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %311)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fmul fast float %359, %327
  %361 = fadd fast float %339, %324
  %362 = fmul fast float %361, %306
  %363 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %362, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float %311)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = fmul fast float %364, %328
  %366 = fadd fast float %353, %325
  %367 = fmul fast float %366, %307
  %368 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %355, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float %311)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = fmul fast float %369, %327
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %362, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float %311)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = fmul fast float %372, %328
  %374 = fadd fast float %373, %370
  %375 = fmul fast float %374, %342
  %376 = fadd fast float %365, %360
  %377 = fmul fast float %376, %341
  %378 = fadd fast float %377, %375
  %379 = fmul fast float %378, 6.250000e-02
  br label %4612

; <label>:380                                     ; preds = %290
  %381 = fmul fast float %274, 0x401921FB60000000
  %382 = call float @dx.op.unary.f32(i32 13, float %381)  ; Sin(value)
  %383 = call float @dx.op.unary.f32(i32 12, float %381)  ; Cos(value)
  %384 = fsub fast float -0.000000e+00, %382
  br label %385

; <label>:385                                     ; preds = %434, %380
  %386 = phi float [ 0.000000e+00, %380 ], [ %429, %434 ]
  %387 = phi float [ 0.000000e+00, %380 ], [ %431, %434 ]
  %388 = phi i32 [ 0, %380 ], [ %435, %434 ]
  %389 = mul i32 %388, 2
  %390 = add i32 0, %389
  %391 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %390
  %392 = load float, float* %391, align 4
  %393 = mul i32 %388, 2
  %394 = add i32 1, %393
  %395 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %394
  %396 = load float, float* %395, align 4
  %397 = fmul fast float %392, %383
  %398 = call float @dx.op.tertiary.f32(i32 46, float %396, float %384, float %397)  ; FMad(a,b,c)
  %399 = fmul fast float %392, %382
  %400 = call float @dx.op.tertiary.f32(i32 46, float %396, float %383, float %399)  ; FMad(a,b,c)
  %401 = fmul fast float %398, %309
  %402 = fmul fast float %400, %309
  %403 = fadd fast float %401, %303
  %404 = fadd fast float %402, %304
  %405 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %30, float %403, float %404, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = extractvalue %dx.types.ResRet.f32 %405, 1
  %408 = extractvalue %dx.types.ResRet.f32 %405, 2
  %409 = extractvalue %dx.types.ResRet.f32 %405, 3
  %410 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %406, float* %410, align 4
  %411 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %407, float* %411, align 4
  %412 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %408, float* %412, align 4
  %413 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %409, float* %413, align 4
  %414 = fsub fast float %406, %311
  %415 = fcmp fast olt float %414, 0.000000e+00
  %416 = select i1 %415, float 0.000000e+00, float 1.000000e+00
  %417 = fadd fast float %416, %386
  %418 = fmul fast float %416, %414
  %419 = fadd fast float %418, %387
  br label %420

; <label>:420                                     ; preds = %420, %385
  %421 = phi i32 [ 1, %385 ], [ %432, %420 ]
  %422 = phi float [ %419, %385 ], [ %431, %420 ]
  %423 = phi float [ %417, %385 ], [ %429, %420 ]
  %424 = getelementptr [4 x float], [4 x float]* %58, i32 0, i32 %421
  %425 = load float, float* %424, align 4, !tbaa !59
  %426 = fsub fast float %425, %311
  %427 = fcmp fast olt float %426, 0.000000e+00
  %428 = select i1 %427, float 0.000000e+00, float 1.000000e+00
  %429 = fadd fast float %428, %423
  %430 = fmul fast float %428, %426
  %431 = fadd fast float %430, %422
  %432 = add nuw nsw i32 %421, 1
  %433 = icmp eq i32 %432, 4
  br i1 %433, label %434, label %420, !llvm.loop !61

; <label>:434                                     ; preds = %420
  %435 = add nuw nsw i32 %388, 1
  %436 = icmp eq i32 %435, 8
  br i1 %436, label %437, label %385, !llvm.loop !63

; <label>:437                                     ; preds = %434
  %438 = fdiv fast float 1.000000e+00, %429
  %439 = fmul fast float %438, %431
  %440 = fdiv fast float 1.000000e+00, %311
  %441 = fmul fast float %439, %440
  %442 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %443 = call float @dx.op.binary.f32(i32 35, float %442, float 0.000000e+00)  ; FMax(a,b)
  %444 = fmul fast float %429, 3.125000e-02
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fadd fast float %446, -1.000000e+00
  %448 = fcmp fast ogt float %447, 0.000000e+00
  %449 = fcmp fast olt float %447, 0.000000e+00
  %450 = zext i1 %448 to i32
  %451 = zext i1 %449 to i32
  %452 = sub nsw i32 %450, %451
  %453 = sitofp i32 %452 to float
  %454 = fmul fast float %453, %447
  %455 = fsub fast float 1.000000e+00, %454
  %456 = fmul fast float %455, %455
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %455, %457
  %459 = fmul fast float %458, %443
  %460 = fsub fast float 1.000000e+00, %457
  %461 = fsub fast float %460, %459
  %462 = fmul fast float %453, 5.000000e-01
  %463 = fmul fast float %462, %461
  %464 = fsub fast float 5.000000e-01, %463
  br label %4612

; <label>:465                                     ; preds = %278
  %466 = icmp eq i32 %288, 1
  br i1 %466, label %467, label %642, !dx.controlflow.hints !64

; <label>:467                                     ; preds = %465
  %468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.f32 %468, 2
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %472 = fmul fast float %469, %236
  %473 = fadd fast float %471, %263
  %474 = fadd fast float %473, %472
  %475 = extractvalue %dx.types.CBufRet.f32 %468, 0
  %476 = extractvalue %dx.types.CBufRet.f32 %468, 1
  %477 = extractvalue %dx.types.CBufRet.f32 %468, 3
  %478 = fmul fast float %477, %255
  %479 = fmul fast float %477, %259
  %480 = fadd fast float %478, %475
  %481 = fadd fast float %479, %476
  %482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.f32 %482, 2
  %484 = extractvalue %dx.types.CBufRet.f32 %482, 3
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 1
  %487 = call float @dx.op.binary.f32(i32 35, float %474, float 0.000000e+00)  ; FMax(a,b)
  %488 = fadd fast float %487, 0x3F10000000000000
  %489 = fcmp fast oeq float %486, 0.000000e+00
  br i1 %489, label %490, label %557, !dx.controlflow.hints !58

; <label>:490                                     ; preds = %467
  %491 = extractvalue %dx.types.CBufRet.f32 %482, 1
  %492 = extractvalue %dx.types.CBufRet.f32 %482, 0
  %493 = fmul fast float %480, %492
  %494 = fmul fast float %481, %491
  %495 = fadd fast float %493, 5.000000e-01
  %496 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %497 = fadd fast float %494, 5.000000e-01
  %498 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %499 = fsub fast float %495, %496
  %500 = fsub fast float %497, %498
  %501 = fadd fast float %496, -5.000000e-01
  %502 = fadd fast float %498, -5.000000e-01
  %503 = fmul fast float %499, 2.000000e+00
  %504 = fsub fast float 3.000000e+00, %503
  %505 = fadd fast float %503, 1.000000e+00
  %506 = fsub fast float 2.000000e+00, %499
  %507 = bitcast float %504 to i32
  %508 = sub nsw i32 2129859010, %507
  %509 = bitcast i32 %508 to float
  %510 = fmul fast float %509, %506
  %511 = fadd fast float %510, -1.000000e+00
  %512 = bitcast float %505 to i32
  %513 = sub nsw i32 2129859010, %512
  %514 = bitcast i32 %513 to float
  %515 = fmul fast float %514, %499
  %516 = fadd fast float %515, 1.000000e+00
  %517 = fmul fast float %500, 2.000000e+00
  %518 = fsub fast float 3.000000e+00, %517
  %519 = fadd fast float %517, 1.000000e+00
  %520 = fsub fast float 2.000000e+00, %500
  %521 = bitcast float %518 to i32
  %522 = sub nsw i32 2129859010, %521
  %523 = bitcast i32 %522 to float
  %524 = fmul fast float %523, %520
  %525 = fadd fast float %524, -1.000000e+00
  %526 = bitcast float %519 to i32
  %527 = sub nsw i32 2129859010, %526
  %528 = bitcast i32 %527 to float
  %529 = fmul fast float %528, %500
  %530 = fadd fast float %529, 1.000000e+00
  %531 = fadd fast float %511, %501
  %532 = fmul fast float %531, %483
  %533 = fadd fast float %525, %502
  %534 = fmul fast float %533, %484
  %535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %532, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = fmul fast float %536, %504
  %538 = fadd fast float %516, %501
  %539 = fmul fast float %538, %483
  %540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %539, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fmul fast float %541, %505
  %543 = fadd fast float %530, %502
  %544 = fmul fast float %543, %484
  %545 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %532, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = fmul fast float %546, %504
  %548 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %539, float %544, float undef, float undef, i32 0, i32 0, i32 undef, float %488)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = fmul fast float %549, %505
  %551 = fadd fast float %550, %547
  %552 = fmul fast float %551, %519
  %553 = fadd fast float %542, %537
  %554 = fmul fast float %553, %518
  %555 = fadd fast float %554, %552
  %556 = fmul fast float %555, 6.250000e-02
  br label %4612

; <label>:557                                     ; preds = %467
  %558 = fmul fast float %274, 0x401921FB60000000
  %559 = call float @dx.op.unary.f32(i32 13, float %558)  ; Sin(value)
  %560 = call float @dx.op.unary.f32(i32 12, float %558)  ; Cos(value)
  %561 = fsub fast float -0.000000e+00, %559
  br label %562

; <label>:562                                     ; preds = %611, %557
  %563 = phi float [ 0.000000e+00, %557 ], [ %606, %611 ]
  %564 = phi float [ 0.000000e+00, %557 ], [ %608, %611 ]
  %565 = phi i32 [ 0, %557 ], [ %612, %611 ]
  %566 = mul i32 %565, 2
  %567 = add i32 0, %566
  %568 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %567
  %569 = load float, float* %568, align 4
  %570 = mul i32 %565, 2
  %571 = add i32 1, %570
  %572 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %571
  %573 = load float, float* %572, align 4
  %574 = fmul fast float %569, %560
  %575 = call float @dx.op.tertiary.f32(i32 46, float %573, float %561, float %574)  ; FMad(a,b,c)
  %576 = fmul fast float %569, %559
  %577 = call float @dx.op.tertiary.f32(i32 46, float %573, float %560, float %576)  ; FMad(a,b,c)
  %578 = fmul fast float %575, %486
  %579 = fmul fast float %577, %486
  %580 = fadd fast float %578, %480
  %581 = fadd fast float %579, %481
  %582 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %30, float %580, float %581, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = extractvalue %dx.types.ResRet.f32 %582, 3
  %587 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %583, float* %587, align 4
  %588 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %584, float* %588, align 4
  %589 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %585, float* %589, align 4
  %590 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %586, float* %590, align 4
  %591 = fsub fast float %583, %488
  %592 = fcmp fast olt float %591, 0.000000e+00
  %593 = select i1 %592, float 0.000000e+00, float 1.000000e+00
  %594 = fadd fast float %593, %563
  %595 = fmul fast float %593, %591
  %596 = fadd fast float %595, %564
  br label %597

; <label>:597                                     ; preds = %597, %562
  %598 = phi i32 [ 1, %562 ], [ %609, %597 ]
  %599 = phi float [ %596, %562 ], [ %608, %597 ]
  %600 = phi float [ %594, %562 ], [ %606, %597 ]
  %601 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 %598
  %602 = load float, float* %601, align 4, !tbaa !59
  %603 = fsub fast float %602, %488
  %604 = fcmp fast olt float %603, 0.000000e+00
  %605 = select i1 %604, float 0.000000e+00, float 1.000000e+00
  %606 = fadd fast float %605, %600
  %607 = fmul fast float %605, %603
  %608 = fadd fast float %607, %599
  %609 = add nuw nsw i32 %598, 1
  %610 = icmp eq i32 %609, 4
  br i1 %610, label %611, label %597, !llvm.loop !61

; <label>:611                                     ; preds = %597
  %612 = add nuw nsw i32 %565, 1
  %613 = icmp eq i32 %612, 8
  br i1 %613, label %614, label %562, !llvm.loop !63

; <label>:614                                     ; preds = %611
  %615 = fdiv fast float 1.000000e+00, %606
  %616 = fmul fast float %615, %608
  %617 = fdiv fast float 1.000000e+00, %488
  %618 = fmul fast float %616, %617
  %619 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %620 = call float @dx.op.binary.f32(i32 35, float %619, float 0.000000e+00)  ; FMax(a,b)
  %621 = fmul fast float %606, 3.125000e-02
  %622 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %623 = fmul fast float %622, 2.000000e+00
  %624 = fadd fast float %623, -1.000000e+00
  %625 = fcmp fast ogt float %624, 0.000000e+00
  %626 = fcmp fast olt float %624, 0.000000e+00
  %627 = zext i1 %625 to i32
  %628 = zext i1 %626 to i32
  %629 = sub nsw i32 %627, %628
  %630 = sitofp i32 %629 to float
  %631 = fmul fast float %630, %624
  %632 = fsub fast float 1.000000e+00, %631
  %633 = fmul fast float %632, %632
  %634 = fmul fast float %633, %632
  %635 = fsub fast float %632, %634
  %636 = fmul fast float %635, %620
  %637 = fsub fast float 1.000000e+00, %634
  %638 = fsub fast float %637, %636
  %639 = fmul fast float %630, 5.000000e-01
  %640 = fmul fast float %639, %638
  %641 = fsub fast float 5.000000e-01, %640
  br label %4612

; <label>:642                                     ; preds = %465
  %643 = icmp eq i32 %288, 2
  br i1 %643, label %644, label %819, !dx.controlflow.hints !65

; <label>:644                                     ; preds = %642
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 2
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %649 = fmul fast float %646, %236
  %650 = fadd fast float %648, %263
  %651 = fadd fast float %650, %649
  %652 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %654 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %655 = fmul fast float %654, %255
  %656 = fmul fast float %654, %259
  %657 = fadd fast float %655, %652
  %658 = fadd fast float %656, %653
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %661 = extractvalue %dx.types.CBufRet.f32 %659, 3
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 2
  %664 = call float @dx.op.binary.f32(i32 35, float %651, float 0.000000e+00)  ; FMax(a,b)
  %665 = fadd fast float %664, 0x3F10000000000000
  %666 = fcmp fast oeq float %663, 0.000000e+00
  br i1 %666, label %667, label %734, !dx.controlflow.hints !58

; <label>:667                                     ; preds = %644
  %668 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %669 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %670 = fmul fast float %657, %669
  %671 = fmul fast float %658, %668
  %672 = fadd fast float %670, 5.000000e-01
  %673 = call float @dx.op.unary.f32(i32 27, float %672)  ; Round_ni(value)
  %674 = fadd fast float %671, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 27, float %674)  ; Round_ni(value)
  %676 = fsub fast float %672, %673
  %677 = fsub fast float %674, %675
  %678 = fadd fast float %673, -5.000000e-01
  %679 = fadd fast float %675, -5.000000e-01
  %680 = fmul fast float %676, 2.000000e+00
  %681 = fsub fast float 3.000000e+00, %680
  %682 = fadd fast float %680, 1.000000e+00
  %683 = fsub fast float 2.000000e+00, %676
  %684 = bitcast float %681 to i32
  %685 = sub nsw i32 2129859010, %684
  %686 = bitcast i32 %685 to float
  %687 = fmul fast float %686, %683
  %688 = fadd fast float %687, -1.000000e+00
  %689 = bitcast float %682 to i32
  %690 = sub nsw i32 2129859010, %689
  %691 = bitcast i32 %690 to float
  %692 = fmul fast float %691, %676
  %693 = fadd fast float %692, 1.000000e+00
  %694 = fmul fast float %677, 2.000000e+00
  %695 = fsub fast float 3.000000e+00, %694
  %696 = fadd fast float %694, 1.000000e+00
  %697 = fsub fast float 2.000000e+00, %677
  %698 = bitcast float %695 to i32
  %699 = sub nsw i32 2129859010, %698
  %700 = bitcast i32 %699 to float
  %701 = fmul fast float %700, %697
  %702 = fadd fast float %701, -1.000000e+00
  %703 = bitcast float %696 to i32
  %704 = sub nsw i32 2129859010, %703
  %705 = bitcast i32 %704 to float
  %706 = fmul fast float %705, %677
  %707 = fadd fast float %706, 1.000000e+00
  %708 = fadd fast float %688, %678
  %709 = fmul fast float %708, %660
  %710 = fadd fast float %702, %679
  %711 = fmul fast float %710, %661
  %712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %709, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = fmul fast float %713, %681
  %715 = fadd fast float %693, %678
  %716 = fmul fast float %715, %660
  %717 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %716, float %711, float undef, float undef, i32 0, i32 0, i32 undef, float %665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = fmul fast float %718, %682
  %720 = fadd fast float %707, %679
  %721 = fmul fast float %720, %661
  %722 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %709, float %721, float undef, float undef, i32 0, i32 0, i32 undef, float %665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = fmul fast float %723, %681
  %725 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %716, float %721, float undef, float undef, i32 0, i32 0, i32 undef, float %665)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = fmul fast float %726, %682
  %728 = fadd fast float %727, %724
  %729 = fmul fast float %728, %696
  %730 = fadd fast float %719, %714
  %731 = fmul fast float %730, %695
  %732 = fadd fast float %731, %729
  %733 = fmul fast float %732, 6.250000e-02
  br label %4612

; <label>:734                                     ; preds = %644
  %735 = fmul fast float %274, 0x401921FB60000000
  %736 = call float @dx.op.unary.f32(i32 13, float %735)  ; Sin(value)
  %737 = call float @dx.op.unary.f32(i32 12, float %735)  ; Cos(value)
  %738 = fsub fast float -0.000000e+00, %736
  br label %739

; <label>:739                                     ; preds = %788, %734
  %740 = phi float [ 0.000000e+00, %734 ], [ %783, %788 ]
  %741 = phi float [ 0.000000e+00, %734 ], [ %785, %788 ]
  %742 = phi i32 [ 0, %734 ], [ %789, %788 ]
  %743 = mul i32 %742, 2
  %744 = add i32 0, %743
  %745 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %744
  %746 = load float, float* %745, align 4
  %747 = mul i32 %742, 2
  %748 = add i32 1, %747
  %749 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %748
  %750 = load float, float* %749, align 4
  %751 = fmul fast float %746, %737
  %752 = call float @dx.op.tertiary.f32(i32 46, float %750, float %738, float %751)  ; FMad(a,b,c)
  %753 = fmul fast float %746, %736
  %754 = call float @dx.op.tertiary.f32(i32 46, float %750, float %737, float %753)  ; FMad(a,b,c)
  %755 = fmul fast float %752, %663
  %756 = fmul fast float %754, %663
  %757 = fadd fast float %755, %657
  %758 = fadd fast float %756, %658
  %759 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %30, float %757, float %758, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 0
  store float %760, float* %764, align 4
  %765 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 1
  store float %761, float* %765, align 4
  %766 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 2
  store float %762, float* %766, align 4
  %767 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 3
  store float %763, float* %767, align 4
  %768 = fsub fast float %760, %665
  %769 = fcmp fast olt float %768, 0.000000e+00
  %770 = select i1 %769, float 0.000000e+00, float 1.000000e+00
  %771 = fadd fast float %770, %740
  %772 = fmul fast float %770, %768
  %773 = fadd fast float %772, %741
  br label %774

; <label>:774                                     ; preds = %774, %739
  %775 = phi i32 [ 1, %739 ], [ %786, %774 ]
  %776 = phi float [ %773, %739 ], [ %785, %774 ]
  %777 = phi float [ %771, %739 ], [ %783, %774 ]
  %778 = getelementptr [4 x float], [4 x float]* %56, i32 0, i32 %775
  %779 = load float, float* %778, align 4, !tbaa !59
  %780 = fsub fast float %779, %665
  %781 = fcmp fast olt float %780, 0.000000e+00
  %782 = select i1 %781, float 0.000000e+00, float 1.000000e+00
  %783 = fadd fast float %782, %777
  %784 = fmul fast float %782, %780
  %785 = fadd fast float %784, %776
  %786 = add nuw nsw i32 %775, 1
  %787 = icmp eq i32 %786, 4
  br i1 %787, label %788, label %774, !llvm.loop !61

; <label>:788                                     ; preds = %774
  %789 = add nuw nsw i32 %742, 1
  %790 = icmp eq i32 %789, 8
  br i1 %790, label %791, label %739, !llvm.loop !63

; <label>:791                                     ; preds = %788
  %792 = fdiv fast float 1.000000e+00, %783
  %793 = fmul fast float %792, %785
  %794 = fdiv fast float 1.000000e+00, %665
  %795 = fmul fast float %793, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = call float @dx.op.binary.f32(i32 35, float %796, float 0.000000e+00)  ; FMax(a,b)
  %798 = fmul fast float %783, 3.125000e-02
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = fmul fast float %799, 2.000000e+00
  %801 = fadd fast float %800, -1.000000e+00
  %802 = fcmp fast ogt float %801, 0.000000e+00
  %803 = fcmp fast olt float %801, 0.000000e+00
  %804 = zext i1 %802 to i32
  %805 = zext i1 %803 to i32
  %806 = sub nsw i32 %804, %805
  %807 = sitofp i32 %806 to float
  %808 = fmul fast float %807, %801
  %809 = fsub fast float 1.000000e+00, %808
  %810 = fmul fast float %809, %809
  %811 = fmul fast float %810, %809
  %812 = fsub fast float %809, %811
  %813 = fmul fast float %812, %797
  %814 = fsub fast float 1.000000e+00, %811
  %815 = fsub fast float %814, %813
  %816 = fmul fast float %807, 5.000000e-01
  %817 = fmul fast float %816, %815
  %818 = fsub fast float 5.000000e-01, %817
  br label %4612

; <label>:819                                     ; preds = %642
  %820 = icmp eq i32 %288, 12
  br i1 %820, label %821, label %996, !dx.controlflow.hints !66

; <label>:821                                     ; preds = %819
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %826 = fmul fast float %823, %236
  %827 = fadd fast float %825, %263
  %828 = fadd fast float %827, %826
  %829 = extractvalue %dx.types.CBufRet.f32 %822, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %822, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %832 = fmul fast float %831, %255
  %833 = fmul fast float %831, %259
  %834 = fadd fast float %832, %829
  %835 = fadd fast float %833, %830
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = call float @dx.op.binary.f32(i32 35, float %828, float 0.000000e+00)  ; FMax(a,b)
  %842 = fadd fast float %841, 0x3F10000000000000
  %843 = fcmp fast oeq float %840, 0.000000e+00
  br i1 %843, label %844, label %911, !dx.controlflow.hints !58

; <label>:844                                     ; preds = %821
  %845 = extractvalue %dx.types.CBufRet.f32 %836, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %836, 0
  %847 = fmul fast float %834, %846
  %848 = fmul fast float %835, %845
  %849 = fadd fast float %847, 5.000000e-01
  %850 = call float @dx.op.unary.f32(i32 27, float %849)  ; Round_ni(value)
  %851 = fadd fast float %848, 5.000000e-01
  %852 = call float @dx.op.unary.f32(i32 27, float %851)  ; Round_ni(value)
  %853 = fsub fast float %849, %850
  %854 = fsub fast float %851, %852
  %855 = fadd fast float %850, -5.000000e-01
  %856 = fadd fast float %852, -5.000000e-01
  %857 = fmul fast float %853, 2.000000e+00
  %858 = fsub fast float 3.000000e+00, %857
  %859 = fadd fast float %857, 1.000000e+00
  %860 = fsub fast float 2.000000e+00, %853
  %861 = bitcast float %858 to i32
  %862 = sub nsw i32 2129859010, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %863, %860
  %865 = fadd fast float %864, -1.000000e+00
  %866 = bitcast float %859 to i32
  %867 = sub nsw i32 2129859010, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %868, %853
  %870 = fadd fast float %869, 1.000000e+00
  %871 = fmul fast float %854, 2.000000e+00
  %872 = fsub fast float 3.000000e+00, %871
  %873 = fadd fast float %871, 1.000000e+00
  %874 = fsub fast float 2.000000e+00, %854
  %875 = bitcast float %872 to i32
  %876 = sub nsw i32 2129859010, %875
  %877 = bitcast i32 %876 to float
  %878 = fmul fast float %877, %874
  %879 = fadd fast float %878, -1.000000e+00
  %880 = bitcast float %873 to i32
  %881 = sub nsw i32 2129859010, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %882, %854
  %884 = fadd fast float %883, 1.000000e+00
  %885 = fadd fast float %865, %855
  %886 = fmul fast float %885, %837
  %887 = fadd fast float %879, %856
  %888 = fmul fast float %887, %838
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %886, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = fmul fast float %890, %858
  %892 = fadd fast float %870, %855
  %893 = fmul fast float %892, %837
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %893, float %888, float undef, float undef, i32 0, i32 0, i32 undef, float %842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = fmul fast float %895, %859
  %897 = fadd fast float %884, %856
  %898 = fmul fast float %897, %838
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %886, float %898, float undef, float undef, i32 0, i32 0, i32 undef, float %842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = fmul fast float %900, %858
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %893, float %898, float undef, float undef, i32 0, i32 0, i32 undef, float %842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = fmul fast float %903, %859
  %905 = fadd fast float %904, %901
  %906 = fmul fast float %905, %873
  %907 = fadd fast float %896, %891
  %908 = fmul fast float %907, %872
  %909 = fadd fast float %908, %906
  %910 = fmul fast float %909, 6.250000e-02
  br label %4612

; <label>:911                                     ; preds = %821
  %912 = fmul fast float %274, 0x401921FB60000000
  %913 = call float @dx.op.unary.f32(i32 13, float %912)  ; Sin(value)
  %914 = call float @dx.op.unary.f32(i32 12, float %912)  ; Cos(value)
  %915 = fsub fast float -0.000000e+00, %913
  br label %916

; <label>:916                                     ; preds = %965, %911
  %917 = phi float [ 0.000000e+00, %911 ], [ %960, %965 ]
  %918 = phi float [ 0.000000e+00, %911 ], [ %962, %965 ]
  %919 = phi i32 [ 0, %911 ], [ %966, %965 ]
  %920 = mul i32 %919, 2
  %921 = add i32 0, %920
  %922 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %921
  %923 = load float, float* %922, align 4
  %924 = mul i32 %919, 2
  %925 = add i32 1, %924
  %926 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %925
  %927 = load float, float* %926, align 4
  %928 = fmul fast float %923, %914
  %929 = call float @dx.op.tertiary.f32(i32 46, float %927, float %915, float %928)  ; FMad(a,b,c)
  %930 = fmul fast float %923, %913
  %931 = call float @dx.op.tertiary.f32(i32 46, float %927, float %914, float %930)  ; FMad(a,b,c)
  %932 = fmul fast float %929, %840
  %933 = fmul fast float %931, %840
  %934 = fadd fast float %932, %834
  %935 = fadd fast float %933, %835
  %936 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %30, float %934, float %935, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %937, float* %941, align 4
  %942 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %938, float* %942, align 4
  %943 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %939, float* %943, align 4
  %944 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %940, float* %944, align 4
  %945 = fsub fast float %937, %842
  %946 = fcmp fast olt float %945, 0.000000e+00
  %947 = select i1 %946, float 0.000000e+00, float 1.000000e+00
  %948 = fadd fast float %947, %917
  %949 = fmul fast float %947, %945
  %950 = fadd fast float %949, %918
  br label %951

; <label>:951                                     ; preds = %951, %916
  %952 = phi i32 [ 1, %916 ], [ %963, %951 ]
  %953 = phi float [ %950, %916 ], [ %962, %951 ]
  %954 = phi float [ %948, %916 ], [ %960, %951 ]
  %955 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %952
  %956 = load float, float* %955, align 4, !tbaa !59
  %957 = fsub fast float %956, %842
  %958 = fcmp fast olt float %957, 0.000000e+00
  %959 = select i1 %958, float 0.000000e+00, float 1.000000e+00
  %960 = fadd fast float %959, %954
  %961 = fmul fast float %959, %957
  %962 = fadd fast float %961, %953
  %963 = add nuw nsw i32 %952, 1
  %964 = icmp eq i32 %963, 4
  br i1 %964, label %965, label %951, !llvm.loop !61

; <label>:965                                     ; preds = %951
  %966 = add nuw nsw i32 %919, 1
  %967 = icmp eq i32 %966, 8
  br i1 %967, label %968, label %916, !llvm.loop !63

; <label>:968                                     ; preds = %965
  %969 = fdiv fast float 1.000000e+00, %960
  %970 = fmul fast float %969, %962
  %971 = fdiv fast float 1.000000e+00, %842
  %972 = fmul fast float %970, %971
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = call float @dx.op.binary.f32(i32 35, float %973, float 0.000000e+00)  ; FMax(a,b)
  %975 = fmul fast float %960, 3.125000e-02
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = fmul fast float %976, 2.000000e+00
  %978 = fadd fast float %977, -1.000000e+00
  %979 = fcmp fast ogt float %978, 0.000000e+00
  %980 = fcmp fast olt float %978, 0.000000e+00
  %981 = zext i1 %979 to i32
  %982 = zext i1 %980 to i32
  %983 = sub nsw i32 %981, %982
  %984 = sitofp i32 %983 to float
  %985 = fmul fast float %984, %978
  %986 = fsub fast float 1.000000e+00, %985
  %987 = fmul fast float %986, %986
  %988 = fmul fast float %987, %986
  %989 = fsub fast float %986, %988
  %990 = fmul fast float %989, %974
  %991 = fsub fast float 1.000000e+00, %988
  %992 = fsub fast float %991, %990
  %993 = fmul fast float %984, 5.000000e-01
  %994 = fmul fast float %993, %992
  %995 = fsub fast float 5.000000e-01, %994
  br label %4612

; <label>:996                                     ; preds = %819
  %997 = icmp eq i32 %288, 13
  br i1 %997, label %998, label %1668, !dx.controlflow.hints !67

; <label>:998                                     ; preds = %996
  %999 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %1000 = fcmp fast une float %999, 0.000000e+00
  br i1 %1000, label %1001, label %4612, !dx.controlflow.hints !68

; <label>:1001                                    ; preds = %998
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1006 = extractvalue %dx.types.CBufRet.f32 %1002, 3
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1011 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1017 = fmul fast float %1003, %175
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1004, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1005, float %1018)  ; FMad(a,b,c)
  %1020 = fadd fast float %1019, %1006
  %1021 = fmul fast float %1008, %175
  %1022 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1009, float %1021)  ; FMad(a,b,c)
  %1023 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1010, float %1022)  ; FMad(a,b,c)
  %1024 = fadd fast float %1023, %1011
  %1025 = fmul fast float %1013, %175
  %1026 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1014, float %1025)  ; FMad(a,b,c)
  %1027 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1015, float %1026)  ; FMad(a,b,c)
  %1028 = fadd fast float %1027, %1016
  %1029 = fcmp fast oge float %1020, 1.000000e+00
  %1030 = fcmp fast oge float %1024, 1.000000e+00
  %1031 = or i1 %1029, %1030
  %1032 = fcmp fast olt float %1020, 0.000000e+00
  %1033 = fcmp fast olt float %1024, 0.000000e+00
  %1034 = or i1 %1032, %1033
  %1035 = or i1 %1031, %1034
  br i1 %1035, label %4612, label %1036, !dx.controlflow.hints !69

; <label>:1036                                    ; preds = %1001
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.i32 %1043, 2
  %1045 = uitofp i32 %1044 to float
  %1046 = extractvalue %dx.types.CBufRet.i32 %1043, 3
  %1047 = uitofp i32 %1046 to float
  %1048 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1049 = fmul fast float %1048, 2.000000e+00
  %1050 = fsub fast float %1020, %1038
  %1051 = fsub fast float %1024, %1039
  %1052 = fmul fast float %1049, %1050
  %1053 = fmul fast float %1049, %1051
  %1054 = fdiv fast float 1.000000e+00, %225
  %1055 = fmul fast float %1053, %1054
  %1056 = call float @dx.op.unary.f32(i32 6, float %1055)  ; FAbs(value)
  %1057 = fmul fast float %1040, %177
  %1058 = fmul fast float %1057, %1049
  %1059 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1060 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1059, float %1056)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 35, float %1060, float %1061)  ; FMax(a,b)
  %1063 = fmul fast float %1062, 2.000000e+00
  %1064 = call float @dx.op.unary.f32(i32 23, float %1063)  ; Log(value)
  %1065 = call float @dx.op.binary.f32(i32 35, float %1064, float %1045)  ; FMax(a,b)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1065)  ; Frc(value)
  %1067 = fadd fast float %1066, 0xBFEA666660000000
  %1068 = fmul fast float %1067, 8.000000e+00
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1071 = fadd fast float %1070, %1069
  %1072 = call float @dx.op.binary.f32(i32 36, float %1071, float %1047)  ; FMin(a,b)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1074 = fsub fast float -0.000000e+00, %1073
  %1075 = call float @dx.op.unary.f32(i32 21, float %1074)  ; Exp(value)
  %1076 = fmul fast float %1075, %1049
  %1077 = fmul fast float %1076, %1020
  %1078 = fmul fast float %1076, %1024
  %1079 = fmul fast float %1077, 5.000000e-01
  %1080 = fmul fast float %1078, 5.000000e-01
  %1081 = fadd fast float %1079, 5.000000e-01
  %1082 = fadd fast float %1080, 5.000000e-01
  %1083 = fmul fast float %1077, 2.500000e-01
  %1084 = fmul fast float %1078, 2.500000e-01
  %1085 = fadd fast float %1083, 5.000000e-01
  %1086 = fadd fast float %1084, 5.000000e-01
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 536870911
  %1090 = lshr i32 %1089, 9
  %1091 = uitofp i32 %1090 to float
  %1092 = fmul fast float %1091, %1020
  %1093 = fmul fast float %1091, %1024
  %1094 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1095 = call float @dx.op.unary.f32(i32 22, float %1093)  ; Frc(value)
  %1096 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1097 = fcmp fast une float %1096, 0.000000e+00
  br i1 %1097, label %1098, label %1196, !dx.controlflow.hints !70

; <label>:1098                                    ; preds = %1036
  %1099 = call float @dx.op.unary.f32(i32 21, float %1070)  ; Exp(value)
  %1100 = fmul fast float %1099, 1.953125e-03
  %1101 = fcmp fast olt float %1094, %1100
  %1102 = fcmp fast olt float %1095, %1100
  %1103 = or i1 %1101, %1102
  %1104 = fsub fast float 1.000000e+00, %1100
  %1105 = fcmp fast ogt float %1094, %1104
  %1106 = fcmp fast ogt float %1095, %1104
  %1107 = or i1 %1105, %1106
  %1108 = or i1 %1103, %1107
  br i1 %1108, label %1109, label %1275, !dx.controlflow.hints !71

; <label>:1109                                    ; preds = %1098
  %1110 = fmul fast float %1042, 5.000000e-01
  %1111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.i32 %1111, 0
  %1113 = fmul fast float %1024, 3.530000e+02
  %1114 = uitofp i32 %1089 to float
  %1115 = fmul fast float %1113, %1114
  %1116 = fmul fast float %1020, 6.130000e+02
  %1117 = fadd fast float %1115, %1116
  %1118 = fptoui float %1117 to i32
  %1119 = add i32 %1112, %1118
  %1120 = mul i32 %1119, -63
  %1121 = lshr i32 %1120, 17
  %1122 = xor i32 %1121, %1120
  %1123 = mul i32 %1122, -511
  %1124 = mul i32 %1122, -8176
  %1125 = xor i32 %1123, %1124
  %1126 = mul i32 %1125, -7
  %1127 = mul i32 %1125, -7168
  %1128 = xor i32 %1126, %1127
  %1129 = lshr i32 %1128, 15
  %1130 = xor i32 %1129, %1126
  %1131 = and i32 %1130, 15
  %1132 = mul i32 %1131, 2
  %1133 = add i32 0, %1132
  %1134 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1133
  %1135 = load float, float* %1134, align 4
  %1136 = mul i32 %1131, 2
  %1137 = add i32 1, %1136
  %1138 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1137
  %1139 = load float, float* %1138, align 4
  %1140 = fmul fast float %1024, 2.770000e+02
  %1141 = fmul fast float %1140, %1114
  %1142 = fmul fast float %1020, 5.990000e+02
  %1143 = fadd fast float %1141, %1142
  %1144 = fptoui float %1143 to i32
  %1145 = mul i32 %1144, -63
  %1146 = lshr i32 %1145, 17
  %1147 = xor i32 %1146, %1145
  %1148 = mul i32 %1147, -511
  %1149 = mul i32 %1147, -8176
  %1150 = xor i32 %1148, %1149
  %1151 = mul i32 %1150, -7
  %1152 = mul i32 %1150, -7168
  %1153 = xor i32 %1151, %1152
  %1154 = lshr i32 %1153, 15
  %1155 = xor i32 %1154, %1151
  %1156 = and i32 %1155, 63
  %1157 = mul i32 %1156, 2
  %1158 = add i32 0, %1157
  %1159 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1158
  %1160 = load float, float* %1159, align 4
  %1161 = mul i32 %1156, 2
  %1162 = add i32 1, %1161
  %1163 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1162
  %1164 = load float, float* %1163, align 4
  %1165 = call float @dx.op.dot2.f32(i32 54, float %1135, float %1139, float %1160, float %1164)  ; Dot2(ax,ay,bx,by)
  %1166 = fsub fast float -0.000000e+00, %1160
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1135, float %1139, float %1166, float %1164)  ; Dot2(ax,ay,bx,by)
  %1168 = fmul fast float %1165, %1110
  %1169 = fmul fast float %1167, %1110
  %1170 = fdiv fast float 2.000000e+00, %1076
  %1171 = fmul fast float %1099, 9.765625e-04
  %1172 = fcmp fast olt float %1094, %1171
  %1173 = fcmp fast olt float %1095, %1171
  %1174 = or i1 %1172, %1173
  %1175 = fsub fast float 1.000000e+00, %1171
  %1176 = fcmp fast ogt float %1094, %1175
  %1177 = fcmp fast ogt float %1095, %1175
  %1178 = or i1 %1176, %1177
  %1179 = or i1 %1174, %1178
  %1180 = fmul fast float %1168, 2.000000e+00
  br i1 %1179, label %1181, label %1185, !dx.controlflow.hints !72

; <label>:1181                                    ; preds = %1109
  %1182 = fmul fast float %1169, 2.000000e+00
  %1183 = fadd fast float %1180, %1081
  %1184 = fadd fast float %1182, %1082
  br label %1185

; <label>:1185                                    ; preds = %1181, %1109
  %1186 = phi float [ %1183, %1181 ], [ %1081, %1109 ]
  %1187 = phi float [ %1184, %1181 ], [ %1082, %1109 ]
  %1188 = phi i32 [ 3, %1181 ], [ 2, %1109 ]
  %1189 = fadd fast float %1168, %1085
  %1190 = fadd fast float %1169, %1086
  %1191 = fmul fast float %1180, %1170
  %1192 = fmul fast float %1170, 2.000000e+00
  %1193 = fmul fast float %1192, %1169
  %1194 = fadd fast float %1191, %1020
  %1195 = fadd fast float %1193, %1024
  br label %1275

; <label>:1196                                    ; preds = %1036
  %1197 = call float @dx.op.unary.f32(i32 21, float %1073)  ; Exp(value)
  %1198 = fmul fast float %1197, 9.765625e-04
  %1199 = fcmp fast olt float %1094, %1198
  %1200 = fcmp fast olt float %1095, %1198
  %1201 = or i1 %1199, %1200
  %1202 = fsub fast float 1.000000e+00, %1198
  %1203 = fcmp fast ogt float %1094, %1202
  %1204 = fcmp fast ogt float %1095, %1202
  %1205 = or i1 %1203, %1204
  %1206 = or i1 %1201, %1205
  br i1 %1206, label %1207, label %1275, !dx.controlflow.hints !73

; <label>:1207                                    ; preds = %1196
  %1208 = fmul fast float %1042, 5.000000e-01
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 0
  %1211 = fmul fast float %1024, 3.530000e+02
  %1212 = uitofp i32 %1089 to float
  %1213 = fmul fast float %1211, %1212
  %1214 = fmul fast float %1020, 6.130000e+02
  %1215 = fadd fast float %1213, %1214
  %1216 = fptoui float %1215 to i32
  %1217 = add i32 %1210, %1216
  %1218 = mul i32 %1217, -63
  %1219 = lshr i32 %1218, 17
  %1220 = xor i32 %1219, %1218
  %1221 = mul i32 %1220, -511
  %1222 = mul i32 %1220, -8176
  %1223 = xor i32 %1221, %1222
  %1224 = mul i32 %1223, -7
  %1225 = mul i32 %1223, -7168
  %1226 = xor i32 %1224, %1225
  %1227 = lshr i32 %1226, 15
  %1228 = xor i32 %1227, %1224
  %1229 = and i32 %1228, 15
  %1230 = mul i32 %1229, 2
  %1231 = add i32 0, %1230
  %1232 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1231
  %1233 = load float, float* %1232, align 4
  %1234 = mul i32 %1229, 2
  %1235 = add i32 1, %1234
  %1236 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1235
  %1237 = load float, float* %1236, align 4
  %1238 = fmul fast float %1024, 2.770000e+02
  %1239 = fmul fast float %1238, %1212
  %1240 = fmul fast float %1020, 5.990000e+02
  %1241 = fadd fast float %1239, %1240
  %1242 = fptoui float %1241 to i32
  %1243 = mul i32 %1242, -63
  %1244 = lshr i32 %1243, 17
  %1245 = xor i32 %1244, %1243
  %1246 = mul i32 %1245, -511
  %1247 = mul i32 %1245, -8176
  %1248 = xor i32 %1246, %1247
  %1249 = mul i32 %1248, -7
  %1250 = mul i32 %1248, -7168
  %1251 = xor i32 %1249, %1250
  %1252 = lshr i32 %1251, 15
  %1253 = xor i32 %1252, %1249
  %1254 = and i32 %1253, 63
  %1255 = mul i32 %1254, 2
  %1256 = add i32 0, %1255
  %1257 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1256
  %1258 = load float, float* %1257, align 4
  %1259 = mul i32 %1254, 2
  %1260 = add i32 1, %1259
  %1261 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1260
  %1262 = load float, float* %1261, align 4
  %1263 = call float @dx.op.dot2.f32(i32 54, float %1233, float %1237, float %1258, float %1262)  ; Dot2(ax,ay,bx,by)
  %1264 = fsub fast float -0.000000e+00, %1258
  %1265 = call float @dx.op.dot2.f32(i32 54, float %1233, float %1237, float %1264, float %1262)  ; Dot2(ax,ay,bx,by)
  %1266 = fmul fast float %1263, %1208
  %1267 = fmul fast float %1265, %1208
  %1268 = fadd fast float %1266, %1081
  %1269 = fadd fast float %1267, %1082
  %1270 = fdiv fast float 2.000000e+00, %1076
  %1271 = fmul fast float %1270, %1266
  %1272 = fmul fast float %1267, %1270
  %1273 = fadd fast float %1271, %1020
  %1274 = fadd fast float %1272, %1024
  br label %1275

; <label>:1275                                    ; preds = %1207, %1196, %1185, %1098
  %1276 = phi float [ %1189, %1185 ], [ %1085, %1098 ], [ %1085, %1207 ], [ %1085, %1196 ]
  %1277 = phi float [ %1190, %1185 ], [ %1086, %1098 ], [ %1086, %1207 ], [ %1086, %1196 ]
  %1278 = phi float [ %1186, %1185 ], [ %1081, %1098 ], [ %1268, %1207 ], [ %1081, %1196 ]
  %1279 = phi float [ %1187, %1185 ], [ %1082, %1098 ], [ %1269, %1207 ], [ %1082, %1196 ]
  %1280 = phi i32 [ %1188, %1185 ], [ 0, %1098 ], [ 1, %1207 ], [ 0, %1196 ]
  %1281 = phi float [ %1194, %1185 ], [ %1020, %1098 ], [ %1273, %1207 ], [ %1020, %1196 ]
  %1282 = phi float [ %1195, %1185 ], [ %1024, %1098 ], [ %1274, %1207 ], [ %1024, %1196 ]
  %1283 = fsub fast float %1047, %1045
  %1284 = fptoui float %1283 to i32
  %1285 = add i32 %1284, 320
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %1285)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1289 = fcmp fast une float %1072, %1047
  %1290 = fsub fast float %1281, %1287
  %1291 = fsub fast float %1282, %1288
  %1292 = call float @dx.op.unary.f32(i32 6, float %1290)  ; FAbs(value)
  %1293 = call float @dx.op.unary.f32(i32 6, float %1291)  ; FAbs(value)
  %1294 = fmul fast float %1292, %1076
  %1295 = fmul fast float %1293, %1076
  %1296 = fcmp fast olt float %1294, 1.000000e+00
  %1297 = fcmp fast olt float %1295, 1.000000e+00
  %1298 = and i1 %1296, %1297
  %1299 = or i1 %1289, %1298
  br i1 %1299, label %1300, label %4612, !dx.controlflow.hints !74

; <label>:1300                                    ; preds = %1275
  %1301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.i32 %1301, 2
  %1303 = sitofp i32 %1302 to float
  %1304 = fsub fast float %1072, %1303
  %1305 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1306 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1307 = icmp eq i32 %1280, 0
  %1308 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1309 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  br i1 %1307, label %1380, label %1310, !dx.controlflow.hints !75

; <label>:1310                                    ; preds = %1300
  %1311 = and i32 %1280, 1
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1326, label %1313, !dx.controlflow.hints !76

; <label>:1313                                    ; preds = %1310
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = fmul fast float %1308, %1315
  %1317 = fmul fast float %1309, %1315
  %1318 = fptoui float %1316 to i32
  %1319 = fptoui float %1317 to i32
  %1320 = fptoui float %1305 to i32
  %1321 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1318, i32 %1319, i32 %1320, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = extractvalue %dx.types.ResRet.f32 %1321, 3
  br label %1332

; <label>:1326                                    ; preds = %1310
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %1308, float %1309, float %1305, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1331 = extractvalue %dx.types.ResRet.f32 %1327, 3
  br label %1332

; <label>:1332                                    ; preds = %1326, %1313
  %1333 = phi float [ %1322, %1313 ], [ %1328, %1326 ]
  %1334 = phi float [ %1323, %1313 ], [ %1329, %1326 ]
  %1335 = phi float [ %1324, %1313 ], [ %1330, %1326 ]
  %1336 = phi float [ %1325, %1313 ], [ %1331, %1326 ]
  %1337 = fcmp fast ogt float %1306, 0.000000e+00
  br i1 %1337, label %1338, label %1408, !dx.controlflow.hints !77

; <label>:1338                                    ; preds = %1332
  %1339 = and i32 %1280, 2
  %1340 = icmp eq i32 %1339, 0
  %1341 = fadd fast float %1305, 1.000000e+00
  %1342 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1343 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  br i1 %1340, label %1357, label %1344, !dx.controlflow.hints !78

; <label>:1344                                    ; preds = %1338
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  %1347 = fmul fast float %1342, %1346
  %1348 = fmul fast float %1343, %1346
  %1349 = fptoui float %1347 to i32
  %1350 = fptoui float %1348 to i32
  %1351 = fptoui float %1341 to i32
  %1352 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %1349, i32 %1350, i32 %1351, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  br label %1363

; <label>:1357                                    ; preds = %1338
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %1342, float %1343, float %1341, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = extractvalue %dx.types.ResRet.f32 %1358, 3
  br label %1363

; <label>:1363                                    ; preds = %1357, %1344
  %1364 = phi float [ %1353, %1344 ], [ %1359, %1357 ]
  %1365 = phi float [ %1354, %1344 ], [ %1360, %1357 ]
  %1366 = phi float [ %1355, %1344 ], [ %1361, %1357 ]
  %1367 = phi float [ %1356, %1344 ], [ %1362, %1357 ]
  %1368 = fsub fast float %1364, %1333
  %1369 = fsub fast float %1365, %1334
  %1370 = fsub fast float %1366, %1335
  %1371 = fsub fast float %1367, %1336
  %1372 = fmul fast float %1368, %1306
  %1373 = fmul fast float %1369, %1306
  %1374 = fmul fast float %1370, %1306
  %1375 = fmul fast float %1371, %1306
  %1376 = fadd fast float %1372, %1333
  %1377 = fadd fast float %1373, %1334
  %1378 = fadd fast float %1374, %1335
  %1379 = fadd fast float %1375, %1336
  br label %1408

; <label>:1380                                    ; preds = %1300
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %1308, float %1309, float %1305, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = extractvalue %dx.types.ResRet.f32 %1381, 3
  %1386 = fcmp fast ogt float %1306, 0.000000e+00
  br i1 %1386, label %1387, label %1408, !dx.controlflow.hints !79

; <label>:1387                                    ; preds = %1380
  %1388 = fadd fast float %1305, 1.000000e+00
  %1389 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1390 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %1389, float %1390, float %1388, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.ResRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.ResRet.f32 %1391, 2
  %1395 = extractvalue %dx.types.ResRet.f32 %1391, 3
  %1396 = fsub fast float %1392, %1382
  %1397 = fsub fast float %1393, %1383
  %1398 = fsub fast float %1394, %1384
  %1399 = fsub fast float %1395, %1385
  %1400 = fmul fast float %1396, %1306
  %1401 = fmul fast float %1397, %1306
  %1402 = fmul fast float %1398, %1306
  %1403 = fmul fast float %1399, %1306
  %1404 = fadd fast float %1400, %1382
  %1405 = fadd fast float %1401, %1383
  %1406 = fadd fast float %1402, %1384
  %1407 = fadd fast float %1403, %1385
  br label %1408

; <label>:1408                                    ; preds = %1387, %1380, %1363, %1332
  %1409 = phi float [ %1376, %1363 ], [ %1333, %1332 ], [ %1404, %1387 ], [ %1382, %1380 ]
  %1410 = phi float [ %1377, %1363 ], [ %1334, %1332 ], [ %1405, %1387 ], [ %1383, %1380 ]
  %1411 = phi float [ %1378, %1363 ], [ %1335, %1332 ], [ %1406, %1387 ], [ %1384, %1380 ]
  %1412 = phi float [ %1379, %1363 ], [ %1336, %1332 ], [ %1407, %1387 ], [ %1385, %1380 ]
  %1413 = fadd fast float %1409, -5.000000e-01
  %1414 = fadd fast float %1411, -5.000000e-01
  %1415 = fmul fast float %1413, 0xBFD5555560000000
  %1416 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1414, float %1415)  ; FMad(a,b,c)
  %1417 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1410, float 0.000000e+00)  ; FMad(a,b,c)
  %1418 = fadd fast float %1417, %1412
  %1419 = fmul fast float %1413, -7.500000e-01
  %1420 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1414, float %1419)  ; FMad(a,b,c)
  %1421 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1410, float 0.000000e+00)  ; FMad(a,b,c)
  %1422 = fadd fast float %1421, %1412
  %1423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.f32 %1423, 0
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1430 = fsub fast float %1426, %1416
  %1431 = fsub fast float %1427, %1418
  %1432 = fsub fast float %1428, %1420
  %1433 = fsub fast float %1429, %1422
  %1434 = fmul fast float %1430, %1424
  %1435 = fmul fast float %1431, %1424
  %1436 = fmul fast float %1432, %1424
  %1437 = fmul fast float %1433, %1424
  %1438 = fadd fast float %1434, %1416
  %1439 = fadd fast float %1435, %1418
  %1440 = fadd fast float %1436, %1420
  %1441 = fadd fast float %1437, %1422
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 536870911
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, %1281
  %1447 = fmul fast float %1445, %1282
  %1448 = fptoui float %1446 to i32
  %1449 = fptoui float %1447 to i32
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 31
  %1453 = lshr i32 %1448, %1452
  %1454 = lshr i32 %1449, %1452
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 31
  %1458 = shl i32 1, %1457
  %1459 = call i32 @dx.op.binary.i32(i32 40, i32 %1458, i32 4)  ; UMin(a,b)
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.i32 %1460, 1
  %1463 = icmp eq i32 %1459, 0
  br i1 %1463, label %1505, label %1464

; <label>:1464                                    ; preds = %1408
  br label %1465

; <label>:1465                                    ; preds = %1493, %1464
  %1466 = phi i32 [ %1496, %1493 ], [ 0, %1464 ]
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = lshr i32 %1468, 16
  %1470 = and i32 %1469, 31
  %1471 = shl i32 %1454, %1470
  %1472 = add i32 %1471, %1453
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 31
  %1476 = shl i32 %1472, %1475
  %1477 = add i32 %1476, %1466
  %1478 = shl i32 %1477, 2
  %1479 = add i32 %1478, 32
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = icmp slt i32 %1481, 0
  %1483 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1466
  %1484 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1466
  %1485 = bitcast float* %1483 to i32*
  %1486 = bitcast float* %1484 to i32*
  br i1 %1482, label %1487, label %1493, !dx.controlflow.hints !80

; <label>:1487                                    ; preds = %1465
  %1488 = and i32 %1481, 1073741823
  %1489 = add nuw nsw i32 %1488, 20
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.i32 %1490, 1
  br label %1493

; <label>:1493                                    ; preds = %1487, %1465
  %1494 = phi i32 [ %1491, %1487 ], [ %1461, %1465 ]
  %1495 = phi i32 [ %1492, %1487 ], [ %1462, %1465 ]
  store i32 %1494, i32* %1485, align 4
  store i32 %1495, i32* %1486, align 4
  %1496 = add nuw i32 %1466, 1
  %1497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.i32 %1497, 2
  %1499 = icmp eq i32 %1498, 0
  %1500 = icmp ugt i32 %1481, -1073741825
  %1501 = and i1 %1500, %1499
  %1502 = icmp ult i32 %1496, %1459
  %1503 = and i1 %1501, %1502
  br i1 %1503, label %1465, label %1504, !dx.controlflow.hints !81

; <label>:1504                                    ; preds = %1493
  br label %1505

; <label>:1505                                    ; preds = %1504, %1408
  %1506 = phi i32 [ 0, %1408 ], [ %1496, %1504 ]
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1509 = fptoui float %1508 to i32
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1562, label %1511

; <label>:1511                                    ; preds = %1505
  br label %1512

; <label>:1512                                    ; preds = %1557, %1511
  %1513 = phi i32 [ %1558, %1557 ], [ %1506, %1511 ]
  %1514 = phi i32 [ %1559, %1557 ], [ 0, %1511 ]
  %1515 = lshr i32 %1514, 2
  %1516 = and i32 %1514, 3
  %1517 = add nuw nsw i32 %1515, 83
  %1518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %1517)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.i32 %1518, 0
  %1520 = extractvalue %dx.types.CBufRet.i32 %1518, 1
  %1521 = extractvalue %dx.types.CBufRet.i32 %1518, 2
  %1522 = extractvalue %dx.types.CBufRet.i32 %1518, 3
  %1523 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %1519, i32* %1523, align 4
  %1524 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %1520, i32* %1524, align 4
  %1525 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %1521, i32* %1525, align 4
  %1526 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %1522, i32* %1526, align 4
  %1527 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %1516
  %1528 = load i32, i32* %1527, align 4, !tbaa !52
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = lshr i32 %1530, 16
  %1532 = and i32 %1531, 31
  %1533 = shl i32 %1454, %1532
  %1534 = add i32 %1533, %1453
  %1535 = shl i32 %1534, 2
  %1536 = add i32 %1535, %1528
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1557, label %1540, !dx.controlflow.hints !82

; <label>:1540                                    ; preds = %1512
  %1541 = icmp slt i32 %1538, 0
  %1542 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1513
  %1543 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1513
  %1544 = bitcast float* %1542 to i32*
  %1545 = bitcast float* %1543 to i32*
  br i1 %1541, label %1546, label %1553, !dx.controlflow.hints !83

; <label>:1546                                    ; preds = %1540
  %1547 = and i32 %1538, 1073741823
  %1548 = add i32 %1528, 20
  %1549 = add i32 %1548, %1547
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.i32 %1550, 1
  br label %1553

; <label>:1553                                    ; preds = %1546, %1540
  %1554 = phi i32 [ %1551, %1546 ], [ %1461, %1540 ]
  %1555 = phi i32 [ %1552, %1546 ], [ %1462, %1540 ]
  store i32 %1554, i32* %1544, align 4
  store i32 %1555, i32* %1545, align 4
  %1556 = add i32 %1513, 1
  br label %1557

; <label>:1557                                    ; preds = %1553, %1512
  %1558 = phi i32 [ %1513, %1512 ], [ %1556, %1553 ]
  %1559 = add nuw i32 %1514, 1
  %1560 = icmp eq i32 %1559, %1509
  br i1 %1560, label %1561, label %1512

; <label>:1561                                    ; preds = %1557
  br label %1562

; <label>:1562                                    ; preds = %1561, %1505
  %1563 = phi i32 [ %1506, %1505 ], [ %1558, %1561 ]
  %1564 = icmp eq i32 %1563, 1
  %1565 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 0
  %1566 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  br i1 %1564, label %1567, label %1570, !dx.controlflow.hints !84

; <label>:1567                                    ; preds = %1562
  %1568 = load float, float* %1565, align 4
  %1569 = load float, float* %1566, align 4
  br label %1597

; <label>:1570                                    ; preds = %1562
  %1571 = load float, float* %1565, align 4
  %1572 = load float, float* %1566, align 4
  %1573 = fdiv fast float 1.000000e+00, %1572
  %1574 = fsub fast float %1571, %1573
  %1575 = icmp ugt i32 %1563, 1
  br i1 %1575, label %1576, label %1592

; <label>:1576                                    ; preds = %1570
  br label %1577

; <label>:1577                                    ; preds = %1577, %1576
  %1578 = phi float [ %1587, %1577 ], [ %1574, %1576 ]
  %1579 = phi float [ %1588, %1577 ], [ %1571, %1576 ]
  %1580 = phi i32 [ %1589, %1577 ], [ 1, %1576 ]
  %1581 = getelementptr [12 x float], [12 x float]* %41, i32 0, i32 %1580
  %1582 = load float, float* %1581, align 4
  %1583 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1580
  %1584 = load float, float* %1583, align 4
  %1585 = fdiv fast float 1.000000e+00, %1584
  %1586 = fsub fast float %1582, %1585
  %1587 = call float @dx.op.binary.f32(i32 36, float %1578, float %1586)  ; FMin(a,b)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1579, float %1582)  ; FMax(a,b)
  %1589 = add nuw i32 %1580, 1
  %1590 = icmp eq i32 %1589, %1563
  br i1 %1590, label %1591, label %1577

; <label>:1591                                    ; preds = %1577
  br label %1592

; <label>:1592                                    ; preds = %1591, %1570
  %1593 = phi float [ %1574, %1570 ], [ %1587, %1591 ]
  %1594 = phi float [ %1571, %1570 ], [ %1588, %1591 ]
  %1595 = fsub fast float %1594, %1593
  %1596 = fdiv fast float 1.000000e+00, %1595
  br label %1597

; <label>:1597                                    ; preds = %1592, %1567
  %1598 = phi float [ %1568, %1567 ], [ %1594, %1592 ]
  %1599 = phi float [ %1569, %1567 ], [ %1596, %1592 ]
  %1600 = fadd fast float %1028, %1598
  %1601 = fmul fast float %1600, %1599
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fmul fast float %1602, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1438, %1438
  %1606 = fsub fast float %1439, %1605
  %1607 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1606)  ; FMax(a,b)
  %1608 = fdiv fast float 1.000000e+00, %1607
  %1609 = fmul fast float %1439, %1438
  %1610 = fsub fast float %1440, %1609
  %1611 = fsub fast float %1604, %1438
  %1612 = fmul fast float %1604, %1604
  %1613 = fsub fast float %1612, %1439
  %1614 = fmul fast float %1608, %1610
  %1615 = fmul fast float %1614, %1611
  %1616 = fsub fast float %1613, %1615
  %1617 = fmul fast float %1439, %1439
  %1618 = fsub fast float %1441, %1617
  %1619 = fmul fast float %1610, %1610
  %1620 = fmul fast float %1619, %1608
  %1621 = fsub fast float %1618, %1620
  %1622 = fdiv fast float %1616, %1621
  %1623 = fmul fast float %1622, %1610
  %1624 = fsub fast float %1611, %1623
  %1625 = fmul fast float %1624, %1608
  %1626 = fmul fast float %1625, %1438
  %1627 = fsub fast float 1.000000e+00, %1626
  %1628 = fmul fast float %1622, %1439
  %1629 = fsub fast float %1627, %1628
  %1630 = fmul fast float %1625, %1625
  %1631 = fmul fast float %1622, 4.000000e+00
  %1632 = fmul fast float %1631, %1629
  %1633 = fsub fast float %1630, %1632
  %1634 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1635 = fcmp fast oge float %1625, 0.000000e+00
  %1636 = fsub fast float -0.000000e+00, %1634
  %1637 = select i1 %1635, float %1636, float %1634
  %1638 = fsub fast float %1637, %1625
  %1639 = fdiv fast float %1638, %1622
  %1640 = fdiv fast float %1629, %1638
  %1641 = fmul fast float %1639, 5.000000e-01
  %1642 = fmul fast float %1640, 2.000000e+00
  %1643 = select i1 %1635, float %1641, float %1642
  %1644 = select i1 %1635, float %1642, float %1641
  %1645 = call float @dx.op.binary.f32(i32 35, float %1643, float %1644)  ; FMax(a,b)
  %1646 = call float @dx.op.binary.f32(i32 36, float %1643, float %1644)  ; FMin(a,b)
  %1647 = fcmp fast ogt float %1604, %1645
  %1648 = fsub fast float %1604, %1646
  %1649 = fsub fast float %1604, %1645
  %1650 = fsub fast float %1645, %1646
  %1651 = select i1 %1647, float %1649, float %1650
  %1652 = fmul float %1648, %1651
  %1653 = select i1 %1647, float %1646, float %1604
  %1654 = fcmp fast ogt float %1604, %1646
  %1655 = fmul fast float %1653, %1645
  %1656 = fadd fast float %1653, %1645
  %1657 = fmul fast float %1656, %1438
  %1658 = fadd fast float %1655, %1439
  %1659 = fsub fast float %1658, %1657
  %1660 = fdiv fast float %1659, %1652
  %1661 = select i1 %1654, float %1660, float 0.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = select i1 %1647, float %1662, float %1661
  %1664 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1423, 3
  %1666 = fmul fast float %1665, %1664
  %1667 = fsub fast float 1.000000e+00, %1666
  br label %4612

; <label>:1668                                    ; preds = %996
  %1669 = icmp eq i32 %288, 11
  br i1 %1669, label %4612, label %1670, !dx.controlflow.hints !85

; <label>:1670                                    ; preds = %1668
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1671, 3
  %1675 = fmul fast float %1674, %255
  %1676 = fmul fast float %1674, %259
  %1677 = fadd fast float %1675, %1672
  %1678 = fadd fast float %1676, %1673
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.CBufRet.f32 %1679, 3
  %1683 = fmul fast float %1682, %255
  %1684 = fmul fast float %1682, %259
  %1685 = fadd fast float %1683, %1680
  %1686 = fadd fast float %1684, %1681
  %1687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1688 = extractvalue %dx.types.CBufRet.f32 %1687, 1
  %1689 = fsub fast float %1688, %263
  %1690 = extractvalue %dx.types.CBufRet.f32 %1687, 2
  %1691 = fmul fast float %1689, %1690
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  br i1 %112, label %1754, label %1694, !dx.controlflow.hints !86

; <label>:1694                                    ; preds = %1670
  %1695 = extractvalue %dx.types.CBufRet.f32 %1679, 2
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 2
  %1698 = fadd fast float %1697, %1695
  %1699 = fcmp fast ogt float %1698, 0.000000e+00
  br i1 %1699, label %1700, label %1724, !dx.controlflow.hints !87

; <label>:1700                                    ; preds = %1694
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = fsub fast float %1685, %1702
  %1705 = fsub fast float %1686, %1703
  %1706 = fcmp fast olt float %1704, 0.000000e+00
  %1707 = fcmp fast olt float %1705, 0.000000e+00
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1712 = extractvalue %dx.types.CBufRet.f32 %1708, 3
  %1713 = select i1 %1706, float %1709, float %1711
  %1714 = select i1 %1707, float %1710, float %1712
  %1715 = fmul fast float %1713, %1704
  %1716 = fmul fast float %1714, %1705
  %1717 = call float @dx.op.unary.f32(i32 6, float %1715)  ; FAbs(value)
  %1718 = call float @dx.op.unary.f32(i32 6, float %1716)  ; FAbs(value)
  %1719 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %1720 = call float @dx.op.binary.f32(i32 35, float %1717, float %1718)  ; FMax(a,b)
  %1721 = fsub fast float %1719, %1720
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fmul fast float %1722, %1693
  br label %1724

; <label>:1724                                    ; preds = %1700, %1694
  %1725 = phi float [ %1723, %1700 ], [ 0.000000e+00, %1694 ]
  %1726 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1727 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1728 = fadd fast float %1727, %1726
  %1729 = fcmp fast ogt float %1728, 0.000000e+00
  br i1 %1729, label %1730, label %1754, !dx.controlflow.hints !88

; <label>:1730                                    ; preds = %1724
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 0
  %1733 = extractvalue %dx.types.CBufRet.f32 %1731, 1
  %1734 = fsub fast float %1677, %1732
  %1735 = fsub fast float %1678, %1733
  %1736 = fcmp fast olt float %1734, 0.000000e+00
  %1737 = fcmp fast olt float %1735, 0.000000e+00
  %1738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.CBufRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.CBufRet.f32 %1738, 2
  %1742 = extractvalue %dx.types.CBufRet.f32 %1738, 3
  %1743 = select i1 %1736, float %1739, float %1741
  %1744 = select i1 %1737, float %1740, float %1742
  %1745 = fmul fast float %1743, %1734
  %1746 = fmul fast float %1744, %1735
  %1747 = call float @dx.op.unary.f32(i32 6, float %1745)  ; FAbs(value)
  %1748 = call float @dx.op.unary.f32(i32 6, float %1746)  ; FAbs(value)
  %1749 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %1750 = call float @dx.op.binary.f32(i32 35, float %1747, float %1748)  ; FMax(a,b)
  %1751 = fsub fast float %1749, %1750
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = fmul fast float %1752, %1693
  br label %1754

; <label>:1754                                    ; preds = %1730, %1724, %1670
  %1755 = phi float [ 0.000000e+00, %1670 ], [ %1753, %1730 ], [ 0.000000e+00, %1724 ]
  %1756 = phi float [ 0.000000e+00, %1670 ], [ %1725, %1730 ], [ %1725, %1724 ]
  %1757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.CBufRet.f32 %1757, 1
  %1760 = fmul fast float %1758, %119
  %1761 = fadd fast float %1760, %1759
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1764 = extractvalue %dx.types.CBufRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.CBufRet.f32 %1763, 1
  %1766 = fsub fast float %255, %1764
  %1767 = fsub fast float %259, %1765
  %1768 = fcmp fast olt float %1766, 0.000000e+00
  %1769 = fcmp fast olt float %1767, 0.000000e+00
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.CBufRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.CBufRet.f32 %1770, 3
  %1775 = select i1 %1768, float %1771, float %1773
  %1776 = select i1 %1769, float %1772, float %1774
  %1777 = fmul fast float %1775, %1766
  %1778 = fmul fast float %1776, %1767
  %1779 = call float @dx.op.unary.f32(i32 6, float %1777)  ; FAbs(value)
  %1780 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1781 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %1782 = call float @dx.op.binary.f32(i32 35, float %1779, float %1780)  ; FMax(a,b)
  %1783 = fsub fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = call float @dx.op.binary.f32(i32 36, float %1784, float %1762)  ; FMin(a,b)
  %1786 = fmul fast float %1785, %1693
  %1787 = fsub fast float %1755, %1786
  %1788 = fsub fast float %1756, %1755
  %1789 = fsub fast float %1788, %1786
  %1790 = call float @dx.op.binary.f32(i32 35, float %1755, float %1756)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1786, float %1790)  ; FMax(a,b)
  %1792 = fcmp fast olt float %1791, 1.000000e+00
  %1793 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %1794 = fcmp fast une float %1793, 0.000000e+00
  %1795 = and i1 %1792, %1794
  br i1 %1795, label %1796, label %2463, !dx.controlflow.hints !89

; <label>:1796                                    ; preds = %1754
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.CBufRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.CBufRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.f32 %1802, 0
  %1804 = extractvalue %dx.types.CBufRet.f32 %1802, 1
  %1805 = extractvalue %dx.types.CBufRet.f32 %1802, 2
  %1806 = extractvalue %dx.types.CBufRet.f32 %1802, 3
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = extractvalue %dx.types.CBufRet.f32 %1807, 1
  %1810 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1811 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1812 = fmul fast float %1798, %175
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1799, float %1812)  ; FMad(a,b,c)
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1800, float %1813)  ; FMad(a,b,c)
  %1815 = fadd fast float %1814, %1801
  %1816 = fmul fast float %1803, %175
  %1817 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1804, float %1816)  ; FMad(a,b,c)
  %1818 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1805, float %1817)  ; FMad(a,b,c)
  %1819 = fadd fast float %1818, %1806
  %1820 = fmul fast float %1808, %175
  %1821 = call float @dx.op.tertiary.f32(i32 46, float %176, float %1809, float %1820)  ; FMad(a,b,c)
  %1822 = call float @dx.op.tertiary.f32(i32 46, float %177, float %1810, float %1821)  ; FMad(a,b,c)
  %1823 = fadd fast float %1822, %1811
  %1824 = fcmp fast oge float %1815, 1.000000e+00
  %1825 = fcmp fast oge float %1819, 1.000000e+00
  %1826 = or i1 %1824, %1825
  %1827 = fcmp fast olt float %1815, 0.000000e+00
  %1828 = fcmp fast olt float %1819, 0.000000e+00
  %1829 = or i1 %1827, %1828
  %1830 = or i1 %1826, %1829
  br i1 %1830, label %2463, label %1831, !dx.controlflow.hints !69

; <label>:1831                                    ; preds = %1796
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.CBufRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1837 = extractvalue %dx.types.CBufRet.f32 %1836, 1
  %1838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.i32 %1838, 2
  %1840 = uitofp i32 %1839 to float
  %1841 = extractvalue %dx.types.CBufRet.i32 %1838, 3
  %1842 = uitofp i32 %1841 to float
  %1843 = extractvalue %dx.types.CBufRet.f32 %1832, 3
  %1844 = fmul fast float %1843, 2.000000e+00
  %1845 = fsub fast float %1815, %1833
  %1846 = fsub fast float %1819, %1834
  %1847 = fmul fast float %1844, %1845
  %1848 = fmul fast float %1844, %1846
  %1849 = fdiv fast float 1.000000e+00, %225
  %1850 = fmul fast float %1848, %1849
  %1851 = call float @dx.op.unary.f32(i32 6, float %1850)  ; FAbs(value)
  %1852 = fmul fast float %1835, %177
  %1853 = fmul fast float %1852, %1844
  %1854 = call float @dx.op.unary.f32(i32 6, float %1853)  ; FAbs(value)
  %1855 = call float @dx.op.unary.f32(i32 6, float %1847)  ; FAbs(value)
  %1856 = call float @dx.op.binary.f32(i32 35, float %1854, float %1851)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1855, float %1856)  ; FMax(a,b)
  %1858 = fmul fast float %1857, 2.000000e+00
  %1859 = call float @dx.op.unary.f32(i32 23, float %1858)  ; Log(value)
  %1860 = call float @dx.op.binary.f32(i32 35, float %1859, float %1840)  ; FMax(a,b)
  %1861 = call float @dx.op.unary.f32(i32 22, float %1860)  ; Frc(value)
  %1862 = fadd fast float %1861, 0xBFEA666660000000
  %1863 = fmul fast float %1862, 8.000000e+00
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = call float @dx.op.unary.f32(i32 27, float %1860)  ; Round_ni(value)
  %1866 = fadd fast float %1865, %1864
  %1867 = call float @dx.op.binary.f32(i32 36, float %1866, float %1842)  ; FMin(a,b)
  %1868 = call float @dx.op.unary.f32(i32 27, float %1867)  ; Round_ni(value)
  %1869 = fsub fast float -0.000000e+00, %1868
  %1870 = call float @dx.op.unary.f32(i32 21, float %1869)  ; Exp(value)
  %1871 = fmul fast float %1870, %1844
  %1872 = fmul fast float %1871, %1815
  %1873 = fmul fast float %1871, %1819
  %1874 = fmul fast float %1872, 5.000000e-01
  %1875 = fmul fast float %1873, 5.000000e-01
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1872, 2.500000e-01
  %1879 = fmul fast float %1873, 2.500000e-01
  %1880 = fadd fast float %1878, 5.000000e-01
  %1881 = fadd fast float %1879, 5.000000e-01
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 536870911
  %1885 = lshr i32 %1884, 9
  %1886 = uitofp i32 %1885 to float
  %1887 = fmul fast float %1886, %1815
  %1888 = fmul fast float %1886, %1819
  %1889 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1890 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1891 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1892 = fcmp fast une float %1891, 0.000000e+00
  br i1 %1892, label %1893, label %1991, !dx.controlflow.hints !70

; <label>:1893                                    ; preds = %1831
  %1894 = call float @dx.op.unary.f32(i32 21, float %1865)  ; Exp(value)
  %1895 = fmul fast float %1894, 1.953125e-03
  %1896 = fcmp fast olt float %1889, %1895
  %1897 = fcmp fast olt float %1890, %1895
  %1898 = or i1 %1896, %1897
  %1899 = fsub fast float 1.000000e+00, %1895
  %1900 = fcmp fast ogt float %1889, %1899
  %1901 = fcmp fast ogt float %1890, %1899
  %1902 = or i1 %1900, %1901
  %1903 = or i1 %1898, %1902
  br i1 %1903, label %1904, label %2070, !dx.controlflow.hints !71

; <label>:1904                                    ; preds = %1893
  %1905 = fmul fast float %1837, 5.000000e-01
  %1906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.i32 %1906, 0
  %1908 = fmul fast float %1819, 3.530000e+02
  %1909 = uitofp i32 %1884 to float
  %1910 = fmul fast float %1908, %1909
  %1911 = fmul fast float %1815, 6.130000e+02
  %1912 = fadd fast float %1910, %1911
  %1913 = fptoui float %1912 to i32
  %1914 = add i32 %1907, %1913
  %1915 = mul i32 %1914, -63
  %1916 = lshr i32 %1915, 17
  %1917 = xor i32 %1916, %1915
  %1918 = mul i32 %1917, -511
  %1919 = mul i32 %1917, -8176
  %1920 = xor i32 %1918, %1919
  %1921 = mul i32 %1920, -7
  %1922 = mul i32 %1920, -7168
  %1923 = xor i32 %1921, %1922
  %1924 = lshr i32 %1923, 15
  %1925 = xor i32 %1924, %1921
  %1926 = and i32 %1925, 15
  %1927 = mul i32 %1926, 2
  %1928 = add i32 0, %1927
  %1929 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1928
  %1930 = load float, float* %1929, align 4
  %1931 = mul i32 %1926, 2
  %1932 = add i32 1, %1931
  %1933 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1932
  %1934 = load float, float* %1933, align 4
  %1935 = fmul fast float %1819, 2.770000e+02
  %1936 = fmul fast float %1935, %1909
  %1937 = fmul fast float %1815, 5.990000e+02
  %1938 = fadd fast float %1936, %1937
  %1939 = fptoui float %1938 to i32
  %1940 = mul i32 %1939, -63
  %1941 = lshr i32 %1940, 17
  %1942 = xor i32 %1941, %1940
  %1943 = mul i32 %1942, -511
  %1944 = mul i32 %1942, -8176
  %1945 = xor i32 %1943, %1944
  %1946 = mul i32 %1945, -7
  %1947 = mul i32 %1945, -7168
  %1948 = xor i32 %1946, %1947
  %1949 = lshr i32 %1948, 15
  %1950 = xor i32 %1949, %1946
  %1951 = and i32 %1950, 63
  %1952 = mul i32 %1951, 2
  %1953 = add i32 0, %1952
  %1954 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1953
  %1955 = load float, float* %1954, align 4
  %1956 = mul i32 %1951, 2
  %1957 = add i32 1, %1956
  %1958 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1957
  %1959 = load float, float* %1958, align 4
  %1960 = call float @dx.op.dot2.f32(i32 54, float %1930, float %1934, float %1955, float %1959)  ; Dot2(ax,ay,bx,by)
  %1961 = fsub fast float -0.000000e+00, %1955
  %1962 = call float @dx.op.dot2.f32(i32 54, float %1930, float %1934, float %1961, float %1959)  ; Dot2(ax,ay,bx,by)
  %1963 = fmul fast float %1960, %1905
  %1964 = fmul fast float %1962, %1905
  %1965 = fdiv fast float 2.000000e+00, %1871
  %1966 = fmul fast float %1894, 9.765625e-04
  %1967 = fcmp fast olt float %1889, %1966
  %1968 = fcmp fast olt float %1890, %1966
  %1969 = or i1 %1967, %1968
  %1970 = fsub fast float 1.000000e+00, %1966
  %1971 = fcmp fast ogt float %1889, %1970
  %1972 = fcmp fast ogt float %1890, %1970
  %1973 = or i1 %1971, %1972
  %1974 = or i1 %1969, %1973
  %1975 = fmul fast float %1963, 2.000000e+00
  br i1 %1974, label %1976, label %1980, !dx.controlflow.hints !72

; <label>:1976                                    ; preds = %1904
  %1977 = fmul fast float %1964, 2.000000e+00
  %1978 = fadd fast float %1975, %1876
  %1979 = fadd fast float %1977, %1877
  br label %1980

; <label>:1980                                    ; preds = %1976, %1904
  %1981 = phi float [ %1978, %1976 ], [ %1876, %1904 ]
  %1982 = phi float [ %1979, %1976 ], [ %1877, %1904 ]
  %1983 = phi i32 [ 3, %1976 ], [ 2, %1904 ]
  %1984 = fadd fast float %1963, %1880
  %1985 = fadd fast float %1964, %1881
  %1986 = fmul fast float %1975, %1965
  %1987 = fmul fast float %1965, 2.000000e+00
  %1988 = fmul fast float %1987, %1964
  %1989 = fadd fast float %1986, %1815
  %1990 = fadd fast float %1988, %1819
  br label %2070

; <label>:1991                                    ; preds = %1831
  %1992 = call float @dx.op.unary.f32(i32 21, float %1868)  ; Exp(value)
  %1993 = fmul fast float %1992, 9.765625e-04
  %1994 = fcmp fast olt float %1889, %1993
  %1995 = fcmp fast olt float %1890, %1993
  %1996 = or i1 %1994, %1995
  %1997 = fsub fast float 1.000000e+00, %1993
  %1998 = fcmp fast ogt float %1889, %1997
  %1999 = fcmp fast ogt float %1890, %1997
  %2000 = or i1 %1998, %1999
  %2001 = or i1 %1996, %2000
  br i1 %2001, label %2002, label %2070, !dx.controlflow.hints !73

; <label>:2002                                    ; preds = %1991
  %2003 = fmul fast float %1837, 5.000000e-01
  %2004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.i32 %2004, 0
  %2006 = fmul fast float %1819, 3.530000e+02
  %2007 = uitofp i32 %1884 to float
  %2008 = fmul fast float %2006, %2007
  %2009 = fmul fast float %1815, 6.130000e+02
  %2010 = fadd fast float %2008, %2009
  %2011 = fptoui float %2010 to i32
  %2012 = add i32 %2005, %2011
  %2013 = mul i32 %2012, -63
  %2014 = lshr i32 %2013, 17
  %2015 = xor i32 %2014, %2013
  %2016 = mul i32 %2015, -511
  %2017 = mul i32 %2015, -8176
  %2018 = xor i32 %2016, %2017
  %2019 = mul i32 %2018, -7
  %2020 = mul i32 %2018, -7168
  %2021 = xor i32 %2019, %2020
  %2022 = lshr i32 %2021, 15
  %2023 = xor i32 %2022, %2019
  %2024 = and i32 %2023, 15
  %2025 = mul i32 %2024, 2
  %2026 = add i32 0, %2025
  %2027 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2026
  %2028 = load float, float* %2027, align 4
  %2029 = mul i32 %2024, 2
  %2030 = add i32 1, %2029
  %2031 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2030
  %2032 = load float, float* %2031, align 4
  %2033 = fmul fast float %1819, 2.770000e+02
  %2034 = fmul fast float %2033, %2007
  %2035 = fmul fast float %1815, 5.990000e+02
  %2036 = fadd fast float %2034, %2035
  %2037 = fptoui float %2036 to i32
  %2038 = mul i32 %2037, -63
  %2039 = lshr i32 %2038, 17
  %2040 = xor i32 %2039, %2038
  %2041 = mul i32 %2040, -511
  %2042 = mul i32 %2040, -8176
  %2043 = xor i32 %2041, %2042
  %2044 = mul i32 %2043, -7
  %2045 = mul i32 %2043, -7168
  %2046 = xor i32 %2044, %2045
  %2047 = lshr i32 %2046, 15
  %2048 = xor i32 %2047, %2044
  %2049 = and i32 %2048, 63
  %2050 = mul i32 %2049, 2
  %2051 = add i32 0, %2050
  %2052 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2051
  %2053 = load float, float* %2052, align 4
  %2054 = mul i32 %2049, 2
  %2055 = add i32 1, %2054
  %2056 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2055
  %2057 = load float, float* %2056, align 4
  %2058 = call float @dx.op.dot2.f32(i32 54, float %2028, float %2032, float %2053, float %2057)  ; Dot2(ax,ay,bx,by)
  %2059 = fsub fast float -0.000000e+00, %2053
  %2060 = call float @dx.op.dot2.f32(i32 54, float %2028, float %2032, float %2059, float %2057)  ; Dot2(ax,ay,bx,by)
  %2061 = fmul fast float %2058, %2003
  %2062 = fmul fast float %2060, %2003
  %2063 = fadd fast float %2061, %1876
  %2064 = fadd fast float %2062, %1877
  %2065 = fdiv fast float 2.000000e+00, %1871
  %2066 = fmul fast float %2065, %2061
  %2067 = fmul fast float %2062, %2065
  %2068 = fadd fast float %2066, %1815
  %2069 = fadd fast float %2067, %1819
  br label %2070

; <label>:2070                                    ; preds = %2002, %1991, %1980, %1893
  %2071 = phi float [ %1984, %1980 ], [ %1880, %1893 ], [ %1880, %2002 ], [ %1880, %1991 ]
  %2072 = phi float [ %1985, %1980 ], [ %1881, %1893 ], [ %1881, %2002 ], [ %1881, %1991 ]
  %2073 = phi float [ %1981, %1980 ], [ %1876, %1893 ], [ %2063, %2002 ], [ %1876, %1991 ]
  %2074 = phi float [ %1982, %1980 ], [ %1877, %1893 ], [ %2064, %2002 ], [ %1877, %1991 ]
  %2075 = phi i32 [ %1983, %1980 ], [ 0, %1893 ], [ 1, %2002 ], [ 0, %1991 ]
  %2076 = phi float [ %1989, %1980 ], [ %1815, %1893 ], [ %2068, %2002 ], [ %1815, %1991 ]
  %2077 = phi float [ %1990, %1980 ], [ %1819, %1893 ], [ %2069, %2002 ], [ %1819, %1991 ]
  %2078 = fsub fast float %1842, %1840
  %2079 = fptoui float %2078 to i32
  %2080 = add i32 %2079, 320
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %2080)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 0
  %2083 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2084 = fcmp fast une float %1867, %1842
  %2085 = fsub fast float %2076, %2082
  %2086 = fsub fast float %2077, %2083
  %2087 = call float @dx.op.unary.f32(i32 6, float %2085)  ; FAbs(value)
  %2088 = call float @dx.op.unary.f32(i32 6, float %2086)  ; FAbs(value)
  %2089 = fmul fast float %2087, %1871
  %2090 = fmul fast float %2088, %1871
  %2091 = fcmp fast olt float %2089, 1.000000e+00
  %2092 = fcmp fast olt float %2090, 1.000000e+00
  %2093 = and i1 %2091, %2092
  %2094 = or i1 %2084, %2093
  br i1 %2094, label %2095, label %2463, !dx.controlflow.hints !74

; <label>:2095                                    ; preds = %2070
  %2096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2097 = extractvalue %dx.types.CBufRet.i32 %2096, 2
  %2098 = sitofp i32 %2097 to float
  %2099 = fsub fast float %1867, %2098
  %2100 = call float @dx.op.unary.f32(i32 27, float %2099)  ; Round_ni(value)
  %2101 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %2102 = icmp eq i32 %2075, 0
  %2103 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2104 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  br i1 %2102, label %2175, label %2105, !dx.controlflow.hints !75

; <label>:2105                                    ; preds = %2095
  %2106 = and i32 %2075, 1
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2121, label %2108, !dx.controlflow.hints !76

; <label>:2108                                    ; preds = %2105
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = fmul fast float %2103, %2110
  %2112 = fmul fast float %2104, %2110
  %2113 = fptoui float %2111 to i32
  %2114 = fptoui float %2112 to i32
  %2115 = fptoui float %2100 to i32
  %2116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2113, i32 %2114, i32 %2115, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.ResRet.f32 %2116, 1
  %2119 = extractvalue %dx.types.ResRet.f32 %2116, 2
  %2120 = extractvalue %dx.types.ResRet.f32 %2116, 3
  br label %2127

; <label>:2121                                    ; preds = %2105
  %2122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %2103, float %2104, float %2100, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.ResRet.f32 %2122, 2
  %2126 = extractvalue %dx.types.ResRet.f32 %2122, 3
  br label %2127

; <label>:2127                                    ; preds = %2121, %2108
  %2128 = phi float [ %2117, %2108 ], [ %2123, %2121 ]
  %2129 = phi float [ %2118, %2108 ], [ %2124, %2121 ]
  %2130 = phi float [ %2119, %2108 ], [ %2125, %2121 ]
  %2131 = phi float [ %2120, %2108 ], [ %2126, %2121 ]
  %2132 = fcmp fast ogt float %2101, 0.000000e+00
  br i1 %2132, label %2133, label %2203, !dx.controlflow.hints !77

; <label>:2133                                    ; preds = %2127
  %2134 = and i32 %2075, 2
  %2135 = icmp eq i32 %2134, 0
  %2136 = fadd fast float %2100, 1.000000e+00
  %2137 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2138 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  br i1 %2135, label %2152, label %2139, !dx.controlflow.hints !78

; <label>:2139                                    ; preds = %2133
  %2140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2141 = extractvalue %dx.types.CBufRet.f32 %2140, 0
  %2142 = fmul fast float %2137, %2141
  %2143 = fmul fast float %2138, %2141
  %2144 = fptoui float %2142 to i32
  %2145 = fptoui float %2143 to i32
  %2146 = fptoui float %2136 to i32
  %2147 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %2144, i32 %2145, i32 %2146, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.f32 %2147, 2
  %2151 = extractvalue %dx.types.ResRet.f32 %2147, 3
  br label %2158

; <label>:2152                                    ; preds = %2133
  %2153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %2137, float %2138, float %2136, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.ResRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2153, 2
  %2157 = extractvalue %dx.types.ResRet.f32 %2153, 3
  br label %2158

; <label>:2158                                    ; preds = %2152, %2139
  %2159 = phi float [ %2148, %2139 ], [ %2154, %2152 ]
  %2160 = phi float [ %2149, %2139 ], [ %2155, %2152 ]
  %2161 = phi float [ %2150, %2139 ], [ %2156, %2152 ]
  %2162 = phi float [ %2151, %2139 ], [ %2157, %2152 ]
  %2163 = fsub fast float %2159, %2128
  %2164 = fsub fast float %2160, %2129
  %2165 = fsub fast float %2161, %2130
  %2166 = fsub fast float %2162, %2131
  %2167 = fmul fast float %2163, %2101
  %2168 = fmul fast float %2164, %2101
  %2169 = fmul fast float %2165, %2101
  %2170 = fmul fast float %2166, %2101
  %2171 = fadd fast float %2167, %2128
  %2172 = fadd fast float %2168, %2129
  %2173 = fadd fast float %2169, %2130
  %2174 = fadd fast float %2170, %2131
  br label %2203

; <label>:2175                                    ; preds = %2095
  %2176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %2103, float %2104, float %2100, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2177 = extractvalue %dx.types.ResRet.f32 %2176, 0
  %2178 = extractvalue %dx.types.ResRet.f32 %2176, 1
  %2179 = extractvalue %dx.types.ResRet.f32 %2176, 2
  %2180 = extractvalue %dx.types.ResRet.f32 %2176, 3
  %2181 = fcmp fast ogt float %2101, 0.000000e+00
  br i1 %2181, label %2182, label %2203, !dx.controlflow.hints !79

; <label>:2182                                    ; preds = %2175
  %2183 = fadd fast float %2100, 1.000000e+00
  %2184 = call float @dx.op.unary.f32(i32 22, float %2071)  ; Frc(value)
  %2185 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %2184, float %2185, float %2183, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2190 = extractvalue %dx.types.ResRet.f32 %2186, 3
  %2191 = fsub fast float %2187, %2177
  %2192 = fsub fast float %2188, %2178
  %2193 = fsub fast float %2189, %2179
  %2194 = fsub fast float %2190, %2180
  %2195 = fmul fast float %2191, %2101
  %2196 = fmul fast float %2192, %2101
  %2197 = fmul fast float %2193, %2101
  %2198 = fmul fast float %2194, %2101
  %2199 = fadd fast float %2195, %2177
  %2200 = fadd fast float %2196, %2178
  %2201 = fadd fast float %2197, %2179
  %2202 = fadd fast float %2198, %2180
  br label %2203

; <label>:2203                                    ; preds = %2182, %2175, %2158, %2127
  %2204 = phi float [ %2171, %2158 ], [ %2128, %2127 ], [ %2199, %2182 ], [ %2177, %2175 ]
  %2205 = phi float [ %2172, %2158 ], [ %2129, %2127 ], [ %2200, %2182 ], [ %2178, %2175 ]
  %2206 = phi float [ %2173, %2158 ], [ %2130, %2127 ], [ %2201, %2182 ], [ %2179, %2175 ]
  %2207 = phi float [ %2174, %2158 ], [ %2131, %2127 ], [ %2202, %2182 ], [ %2180, %2175 ]
  %2208 = fadd fast float %2204, -5.000000e-01
  %2209 = fadd fast float %2206, -5.000000e-01
  %2210 = fmul fast float %2208, 0xBFD5555560000000
  %2211 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2209, float %2210)  ; FMad(a,b,c)
  %2212 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2205, float 0.000000e+00)  ; FMad(a,b,c)
  %2213 = fadd fast float %2212, %2207
  %2214 = fmul fast float %2208, -7.500000e-01
  %2215 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2209, float %2214)  ; FMad(a,b,c)
  %2216 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2205, float 0.000000e+00)  ; FMad(a,b,c)
  %2217 = fadd fast float %2216, %2207
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.CBufRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.CBufRet.f32 %2220, 2
  %2224 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2225 = fsub fast float %2221, %2211
  %2226 = fsub fast float %2222, %2213
  %2227 = fsub fast float %2223, %2215
  %2228 = fsub fast float %2224, %2217
  %2229 = fmul fast float %2225, %2219
  %2230 = fmul fast float %2226, %2219
  %2231 = fmul fast float %2227, %2219
  %2232 = fmul fast float %2228, %2219
  %2233 = fadd fast float %2229, %2211
  %2234 = fadd fast float %2230, %2213
  %2235 = fadd fast float %2231, %2215
  %2236 = fadd fast float %2232, %2217
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = and i32 %2238, 536870911
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, %2076
  %2242 = fmul fast float %2240, %2077
  %2243 = fptoui float %2241 to i32
  %2244 = fptoui float %2242 to i32
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 31
  %2248 = lshr i32 %2243, %2247
  %2249 = lshr i32 %2244, %2247
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 31
  %2253 = shl i32 1, %2252
  %2254 = call i32 @dx.op.binary.i32(i32 40, i32 %2253, i32 4)  ; UMin(a,b)
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = extractvalue %dx.types.ResRet.i32 %2255, 1
  %2258 = icmp eq i32 %2254, 0
  br i1 %2258, label %2300, label %2259

; <label>:2259                                    ; preds = %2203
  br label %2260

; <label>:2260                                    ; preds = %2288, %2259
  %2261 = phi i32 [ %2291, %2288 ], [ 0, %2259 ]
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = lshr i32 %2263, 16
  %2265 = and i32 %2264, 31
  %2266 = shl i32 %2249, %2265
  %2267 = add i32 %2266, %2248
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 31
  %2271 = shl i32 %2267, %2270
  %2272 = add i32 %2271, %2261
  %2273 = shl i32 %2272, 2
  %2274 = add i32 %2273, 32
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = icmp slt i32 %2276, 0
  %2278 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2261
  %2279 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2261
  %2280 = bitcast float* %2278 to i32*
  %2281 = bitcast float* %2279 to i32*
  br i1 %2277, label %2282, label %2288, !dx.controlflow.hints !80

; <label>:2282                                    ; preds = %2260
  %2283 = and i32 %2276, 1073741823
  %2284 = add nuw nsw i32 %2283, 20
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = extractvalue %dx.types.ResRet.i32 %2285, 1
  br label %2288

; <label>:2288                                    ; preds = %2282, %2260
  %2289 = phi i32 [ %2286, %2282 ], [ %2256, %2260 ]
  %2290 = phi i32 [ %2287, %2282 ], [ %2257, %2260 ]
  store i32 %2289, i32* %2280, align 4
  store i32 %2290, i32* %2281, align 4
  %2291 = add nuw i32 %2261, 1
  %2292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.i32 %2292, 2
  %2294 = icmp eq i32 %2293, 0
  %2295 = icmp ugt i32 %2276, -1073741825
  %2296 = and i1 %2295, %2294
  %2297 = icmp ult i32 %2291, %2254
  %2298 = and i1 %2296, %2297
  br i1 %2298, label %2260, label %2299, !dx.controlflow.hints !81

; <label>:2299                                    ; preds = %2288
  br label %2300

; <label>:2300                                    ; preds = %2299, %2203
  %2301 = phi i32 [ 0, %2203 ], [ %2291, %2299 ]
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2304 = fptoui float %2303 to i32
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2357, label %2306

; <label>:2306                                    ; preds = %2300
  br label %2307

; <label>:2307                                    ; preds = %2352, %2306
  %2308 = phi i32 [ %2353, %2352 ], [ %2301, %2306 ]
  %2309 = phi i32 [ %2354, %2352 ], [ 0, %2306 ]
  %2310 = lshr i32 %2309, 2
  %2311 = and i32 %2309, 3
  %2312 = add nuw nsw i32 %2310, 83
  %2313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %2312)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.i32 %2313, 0
  %2315 = extractvalue %dx.types.CBufRet.i32 %2313, 1
  %2316 = extractvalue %dx.types.CBufRet.i32 %2313, 2
  %2317 = extractvalue %dx.types.CBufRet.i32 %2313, 3
  %2318 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %2314, i32* %2318, align 4
  %2319 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %2315, i32* %2319, align 4
  %2320 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %2316, i32* %2320, align 4
  %2321 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %2317, i32* %2321, align 4
  %2322 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %2311
  %2323 = load i32, i32* %2322, align 4, !tbaa !52
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = lshr i32 %2325, 16
  %2327 = and i32 %2326, 31
  %2328 = shl i32 %2249, %2327
  %2329 = add i32 %2328, %2248
  %2330 = shl i32 %2329, 2
  %2331 = add i32 %2330, %2323
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2352, label %2335, !dx.controlflow.hints !82

; <label>:2335                                    ; preds = %2307
  %2336 = icmp slt i32 %2333, 0
  %2337 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2308
  %2338 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2308
  %2339 = bitcast float* %2337 to i32*
  %2340 = bitcast float* %2338 to i32*
  br i1 %2336, label %2341, label %2348, !dx.controlflow.hints !83

; <label>:2341                                    ; preds = %2335
  %2342 = and i32 %2333, 1073741823
  %2343 = add i32 %2323, 20
  %2344 = add i32 %2343, %2342
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.i32 %2345, 1
  br label %2348

; <label>:2348                                    ; preds = %2341, %2335
  %2349 = phi i32 [ %2346, %2341 ], [ %2256, %2335 ]
  %2350 = phi i32 [ %2347, %2341 ], [ %2257, %2335 ]
  store i32 %2349, i32* %2339, align 4
  store i32 %2350, i32* %2340, align 4
  %2351 = add i32 %2308, 1
  br label %2352

; <label>:2352                                    ; preds = %2348, %2307
  %2353 = phi i32 [ %2308, %2307 ], [ %2351, %2348 ]
  %2354 = add nuw i32 %2309, 1
  %2355 = icmp eq i32 %2354, %2304
  br i1 %2355, label %2356, label %2307

; <label>:2356                                    ; preds = %2352
  br label %2357

; <label>:2357                                    ; preds = %2356, %2300
  %2358 = phi i32 [ %2301, %2300 ], [ %2353, %2356 ]
  %2359 = icmp eq i32 %2358, 1
  %2360 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 0
  %2361 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 0
  br i1 %2359, label %2362, label %2365, !dx.controlflow.hints !84

; <label>:2362                                    ; preds = %2357
  %2363 = load float, float* %2360, align 4
  %2364 = load float, float* %2361, align 4
  br label %2392

; <label>:2365                                    ; preds = %2357
  %2366 = load float, float* %2360, align 4
  %2367 = load float, float* %2361, align 4
  %2368 = fdiv fast float 1.000000e+00, %2367
  %2369 = fsub fast float %2366, %2368
  %2370 = icmp ugt i32 %2358, 1
  br i1 %2370, label %2371, label %2387

; <label>:2371                                    ; preds = %2365
  br label %2372

; <label>:2372                                    ; preds = %2372, %2371
  %2373 = phi float [ %2382, %2372 ], [ %2369, %2371 ]
  %2374 = phi float [ %2383, %2372 ], [ %2366, %2371 ]
  %2375 = phi i32 [ %2384, %2372 ], [ 1, %2371 ]
  %2376 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %2375
  %2377 = load float, float* %2376, align 4
  %2378 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2375
  %2379 = load float, float* %2378, align 4
  %2380 = fdiv fast float 1.000000e+00, %2379
  %2381 = fsub fast float %2377, %2380
  %2382 = call float @dx.op.binary.f32(i32 36, float %2373, float %2381)  ; FMin(a,b)
  %2383 = call float @dx.op.binary.f32(i32 35, float %2374, float %2377)  ; FMax(a,b)
  %2384 = add nuw i32 %2375, 1
  %2385 = icmp eq i32 %2384, %2358
  br i1 %2385, label %2386, label %2372

; <label>:2386                                    ; preds = %2372
  br label %2387

; <label>:2387                                    ; preds = %2386, %2365
  %2388 = phi float [ %2369, %2365 ], [ %2382, %2386 ]
  %2389 = phi float [ %2366, %2365 ], [ %2383, %2386 ]
  %2390 = fsub fast float %2389, %2388
  %2391 = fdiv fast float 1.000000e+00, %2390
  br label %2392

; <label>:2392                                    ; preds = %2387, %2362
  %2393 = phi float [ %2363, %2362 ], [ %2389, %2387 ]
  %2394 = phi float [ %2364, %2362 ], [ %2391, %2387 ]
  %2395 = fadd fast float %1823, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2398 = fmul fast float %2397, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2233, %2233
  %2401 = fsub fast float %2234, %2400
  %2402 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2401)  ; FMax(a,b)
  %2403 = fdiv fast float 1.000000e+00, %2402
  %2404 = fmul fast float %2234, %2233
  %2405 = fsub fast float %2235, %2404
  %2406 = fsub fast float %2399, %2233
  %2407 = fmul fast float %2399, %2399
  %2408 = fsub fast float %2407, %2234
  %2409 = fmul fast float %2403, %2405
  %2410 = fmul fast float %2409, %2406
  %2411 = fsub fast float %2408, %2410
  %2412 = fmul fast float %2234, %2234
  %2413 = fsub fast float %2236, %2412
  %2414 = fmul fast float %2405, %2405
  %2415 = fmul fast float %2414, %2403
  %2416 = fsub fast float %2413, %2415
  %2417 = fdiv fast float %2411, %2416
  %2418 = fmul fast float %2417, %2405
  %2419 = fsub fast float %2406, %2418
  %2420 = fmul fast float %2419, %2403
  %2421 = fmul fast float %2420, %2233
  %2422 = fsub fast float 1.000000e+00, %2421
  %2423 = fmul fast float %2417, %2234
  %2424 = fsub fast float %2422, %2423
  %2425 = fmul fast float %2420, %2420
  %2426 = fmul fast float %2417, 4.000000e+00
  %2427 = fmul fast float %2426, %2424
  %2428 = fsub fast float %2425, %2427
  %2429 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2430 = fcmp fast oge float %2420, 0.000000e+00
  %2431 = fsub fast float -0.000000e+00, %2429
  %2432 = select i1 %2430, float %2431, float %2429
  %2433 = fsub fast float %2432, %2420
  %2434 = fdiv fast float %2433, %2417
  %2435 = fdiv fast float %2424, %2433
  %2436 = fmul fast float %2434, 5.000000e-01
  %2437 = fmul fast float %2435, 2.000000e+00
  %2438 = select i1 %2430, float %2436, float %2437
  %2439 = select i1 %2430, float %2437, float %2436
  %2440 = call float @dx.op.binary.f32(i32 35, float %2438, float %2439)  ; FMax(a,b)
  %2441 = call float @dx.op.binary.f32(i32 36, float %2438, float %2439)  ; FMin(a,b)
  %2442 = fcmp fast ogt float %2399, %2440
  %2443 = fsub fast float %2399, %2441
  %2444 = fsub fast float %2399, %2440
  %2445 = fsub fast float %2440, %2441
  %2446 = select i1 %2442, float %2444, float %2445
  %2447 = fmul float %2443, %2446
  %2448 = select i1 %2442, float %2441, float %2399
  %2449 = fcmp fast ogt float %2399, %2441
  %2450 = fmul fast float %2448, %2440
  %2451 = fadd fast float %2448, %2440
  %2452 = fmul fast float %2451, %2233
  %2453 = fadd fast float %2450, %2234
  %2454 = fsub fast float %2453, %2452
  %2455 = fdiv fast float %2454, %2447
  %2456 = select i1 %2449, float %2455, float 0.000000e+00
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = select i1 %2442, float %2457, float %2456
  %2459 = call float @dx.op.unary.f32(i32 7, float %2458)  ; Saturate(value)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2218, 3
  %2461 = fmul fast float %2460, %2459
  %2462 = fsub fast float 1.000000e+00, %2461
  br label %2463

; <label>:2463                                    ; preds = %2392, %2070, %1796, %1754
  %2464 = phi float [ 1.000000e+00, %1754 ], [ %2462, %2392 ], [ 1.000000e+00, %1796 ], [ 1.000000e+00, %2070 ]
  %2465 = fcmp fast ogt float %1789, 0.000000e+00
  br i1 %2465, label %2466, label %2634, !dx.controlflow.hints !90

; <label>:2466                                    ; preds = %2463
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2471 = fmul fast float %2468, %236
  %2472 = fadd fast float %2470, %263
  %2473 = fadd fast float %2472, %2471
  %2474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2475 = extractvalue %dx.types.CBufRet.f32 %2474, 2
  %2476 = extractvalue %dx.types.CBufRet.f32 %2474, 3
  %2477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2478 = extractvalue %dx.types.CBufRet.f32 %2477, 2
  %2479 = call float @dx.op.binary.f32(i32 35, float %2473, float 0.000000e+00)  ; FMax(a,b)
  %2480 = fadd fast float %2479, 0x3F10000000000000
  %2481 = fcmp fast oeq float %2478, 0.000000e+00
  br i1 %2481, label %2482, label %2549, !dx.controlflow.hints !58

; <label>:2482                                    ; preds = %2466
  %2483 = extractvalue %dx.types.CBufRet.f32 %2474, 1
  %2484 = extractvalue %dx.types.CBufRet.f32 %2474, 0
  %2485 = fmul fast float %2484, %1685
  %2486 = fmul fast float %2483, %1686
  %2487 = fadd fast float %2485, 5.000000e-01
  %2488 = call float @dx.op.unary.f32(i32 27, float %2487)  ; Round_ni(value)
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2491 = fsub fast float %2487, %2488
  %2492 = fsub fast float %2489, %2490
  %2493 = fadd fast float %2488, -5.000000e-01
  %2494 = fadd fast float %2490, -5.000000e-01
  %2495 = fmul fast float %2491, 2.000000e+00
  %2496 = fsub fast float 3.000000e+00, %2495
  %2497 = fadd fast float %2495, 1.000000e+00
  %2498 = fsub fast float 2.000000e+00, %2491
  %2499 = bitcast float %2496 to i32
  %2500 = sub nsw i32 2129859010, %2499
  %2501 = bitcast i32 %2500 to float
  %2502 = fmul fast float %2501, %2498
  %2503 = fadd fast float %2502, -1.000000e+00
  %2504 = bitcast float %2497 to i32
  %2505 = sub nsw i32 2129859010, %2504
  %2506 = bitcast i32 %2505 to float
  %2507 = fmul fast float %2506, %2491
  %2508 = fadd fast float %2507, 1.000000e+00
  %2509 = fmul fast float %2492, 2.000000e+00
  %2510 = fsub fast float 3.000000e+00, %2509
  %2511 = fadd fast float %2509, 1.000000e+00
  %2512 = fsub fast float 2.000000e+00, %2492
  %2513 = bitcast float %2510 to i32
  %2514 = sub nsw i32 2129859010, %2513
  %2515 = bitcast i32 %2514 to float
  %2516 = fmul fast float %2515, %2512
  %2517 = fadd fast float %2516, -1.000000e+00
  %2518 = bitcast float %2511 to i32
  %2519 = sub nsw i32 2129859010, %2518
  %2520 = bitcast i32 %2519 to float
  %2521 = fmul fast float %2520, %2492
  %2522 = fadd fast float %2521, 1.000000e+00
  %2523 = fadd fast float %2503, %2493
  %2524 = fmul fast float %2523, %2475
  %2525 = fadd fast float %2517, %2494
  %2526 = fmul fast float %2525, %2476
  %2527 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %2524, float %2526, float undef, float undef, i32 0, i32 0, i32 undef, float %2480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  %2529 = fmul fast float %2528, %2496
  %2530 = fadd fast float %2508, %2493
  %2531 = fmul fast float %2530, %2475
  %2532 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %2531, float %2526, float undef, float undef, i32 0, i32 0, i32 undef, float %2480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = fmul fast float %2533, %2497
  %2535 = fadd fast float %2522, %2494
  %2536 = fmul fast float %2535, %2476
  %2537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %2524, float %2536, float undef, float undef, i32 0, i32 0, i32 undef, float %2480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = fmul fast float %2538, %2496
  %2540 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %2531, float %2536, float undef, float undef, i32 0, i32 0, i32 undef, float %2480)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = fmul fast float %2541, %2497
  %2543 = fadd fast float %2542, %2539
  %2544 = fmul fast float %2543, %2511
  %2545 = fadd fast float %2534, %2529
  %2546 = fmul fast float %2545, %2510
  %2547 = fadd fast float %2546, %2544
  %2548 = fmul fast float %2547, 6.250000e-02
  br label %2634

; <label>:2549                                    ; preds = %2466
  %2550 = fmul fast float %274, 0x401921FB60000000
  %2551 = call float @dx.op.unary.f32(i32 13, float %2550)  ; Sin(value)
  %2552 = call float @dx.op.unary.f32(i32 12, float %2550)  ; Cos(value)
  %2553 = fsub fast float -0.000000e+00, %2551
  br label %2554

; <label>:2554                                    ; preds = %2603, %2549
  %2555 = phi float [ 0.000000e+00, %2549 ], [ %2598, %2603 ]
  %2556 = phi float [ 0.000000e+00, %2549 ], [ %2600, %2603 ]
  %2557 = phi i32 [ 0, %2549 ], [ %2604, %2603 ]
  %2558 = mul i32 %2557, 2
  %2559 = add i32 0, %2558
  %2560 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2559
  %2561 = load float, float* %2560, align 4
  %2562 = mul i32 %2557, 2
  %2563 = add i32 1, %2562
  %2564 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2563
  %2565 = load float, float* %2564, align 4
  %2566 = fmul fast float %2561, %2552
  %2567 = call float @dx.op.tertiary.f32(i32 46, float %2565, float %2553, float %2566)  ; FMad(a,b,c)
  %2568 = fmul fast float %2561, %2551
  %2569 = call float @dx.op.tertiary.f32(i32 46, float %2565, float %2552, float %2568)  ; FMad(a,b,c)
  %2570 = fmul fast float %2567, %2478
  %2571 = fmul fast float %2569, %2478
  %2572 = fadd fast float %2570, %1685
  %2573 = fadd fast float %2571, %1686
  %2574 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %30, float %2572, float %2573, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.ResRet.f32 %2574, 1
  %2577 = extractvalue %dx.types.ResRet.f32 %2574, 2
  %2578 = extractvalue %dx.types.ResRet.f32 %2574, 3
  %2579 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %2575, float* %2579, align 4
  %2580 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %2576, float* %2580, align 4
  %2581 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %2577, float* %2581, align 4
  %2582 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %2578, float* %2582, align 4
  %2583 = fsub fast float %2575, %2480
  %2584 = fcmp fast olt float %2583, 0.000000e+00
  %2585 = select i1 %2584, float 0.000000e+00, float 1.000000e+00
  %2586 = fadd fast float %2585, %2555
  %2587 = fmul fast float %2585, %2583
  %2588 = fadd fast float %2587, %2556
  br label %2589

; <label>:2589                                    ; preds = %2589, %2554
  %2590 = phi i32 [ 1, %2554 ], [ %2601, %2589 ]
  %2591 = phi float [ %2588, %2554 ], [ %2600, %2589 ]
  %2592 = phi float [ %2586, %2554 ], [ %2598, %2589 ]
  %2593 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %2590
  %2594 = load float, float* %2593, align 4, !tbaa !59
  %2595 = fsub fast float %2594, %2480
  %2596 = fcmp fast olt float %2595, 0.000000e+00
  %2597 = select i1 %2596, float 0.000000e+00, float 1.000000e+00
  %2598 = fadd fast float %2597, %2592
  %2599 = fmul fast float %2597, %2595
  %2600 = fadd fast float %2599, %2591
  %2601 = add nuw nsw i32 %2590, 1
  %2602 = icmp eq i32 %2601, 4
  br i1 %2602, label %2603, label %2589, !llvm.loop !61

; <label>:2603                                    ; preds = %2589
  %2604 = add nuw nsw i32 %2557, 1
  %2605 = icmp eq i32 %2604, 8
  br i1 %2605, label %2606, label %2554, !llvm.loop !63

; <label>:2606                                    ; preds = %2603
  %2607 = fdiv fast float 1.000000e+00, %2598
  %2608 = fmul fast float %2607, %2600
  %2609 = fdiv fast float 1.000000e+00, %2480
  %2610 = fmul fast float %2608, %2609
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = call float @dx.op.binary.f32(i32 35, float %2611, float 0.000000e+00)  ; FMax(a,b)
  %2613 = fmul fast float %2598, 3.125000e-02
  %2614 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2615 = fmul fast float %2614, 2.000000e+00
  %2616 = fadd fast float %2615, -1.000000e+00
  %2617 = fcmp fast ogt float %2616, 0.000000e+00
  %2618 = fcmp fast olt float %2616, 0.000000e+00
  %2619 = zext i1 %2617 to i32
  %2620 = zext i1 %2618 to i32
  %2621 = sub nsw i32 %2619, %2620
  %2622 = sitofp i32 %2621 to float
  %2623 = fmul fast float %2622, %2616
  %2624 = fsub fast float 1.000000e+00, %2623
  %2625 = fmul fast float %2624, %2624
  %2626 = fmul fast float %2625, %2624
  %2627 = fsub fast float %2624, %2626
  %2628 = fmul fast float %2627, %2612
  %2629 = fsub fast float 1.000000e+00, %2626
  %2630 = fsub fast float %2629, %2628
  %2631 = fmul fast float %2622, 5.000000e-01
  %2632 = fmul fast float %2631, %2630
  %2633 = fsub fast float 5.000000e-01, %2632
  br label %2634

; <label>:2634                                    ; preds = %2606, %2482, %2463
  %2635 = phi float [ 1.000000e+00, %2463 ], [ %2548, %2482 ], [ %2633, %2606 ]
  %2636 = fcmp fast ogt float %1787, 0.000000e+00
  br i1 %2636, label %2637, label %2805, !dx.controlflow.hints !91

; <label>:2637                                    ; preds = %2634
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2642 = fmul fast float %2639, %236
  %2643 = fadd fast float %2641, %263
  %2644 = fadd fast float %2643, %2642
  %2645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2646 = extractvalue %dx.types.CBufRet.f32 %2645, 2
  %2647 = extractvalue %dx.types.CBufRet.f32 %2645, 3
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2650 = call float @dx.op.binary.f32(i32 35, float %2644, float 0.000000e+00)  ; FMax(a,b)
  %2651 = fadd fast float %2650, 0x3F10000000000000
  %2652 = fcmp fast oeq float %2649, 0.000000e+00
  br i1 %2652, label %2653, label %2720, !dx.controlflow.hints !58

; <label>:2653                                    ; preds = %2637
  %2654 = extractvalue %dx.types.CBufRet.f32 %2645, 1
  %2655 = extractvalue %dx.types.CBufRet.f32 %2645, 0
  %2656 = fmul fast float %2655, %1677
  %2657 = fmul fast float %2654, %1678
  %2658 = fadd fast float %2656, 5.000000e-01
  %2659 = call float @dx.op.unary.f32(i32 27, float %2658)  ; Round_ni(value)
  %2660 = fadd fast float %2657, 5.000000e-01
  %2661 = call float @dx.op.unary.f32(i32 27, float %2660)  ; Round_ni(value)
  %2662 = fsub fast float %2658, %2659
  %2663 = fsub fast float %2660, %2661
  %2664 = fadd fast float %2659, -5.000000e-01
  %2665 = fadd fast float %2661, -5.000000e-01
  %2666 = fmul fast float %2662, 2.000000e+00
  %2667 = fsub fast float 3.000000e+00, %2666
  %2668 = fadd fast float %2666, 1.000000e+00
  %2669 = fsub fast float 2.000000e+00, %2662
  %2670 = bitcast float %2667 to i32
  %2671 = sub nsw i32 2129859010, %2670
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2672, %2669
  %2674 = fadd fast float %2673, -1.000000e+00
  %2675 = bitcast float %2668 to i32
  %2676 = sub nsw i32 2129859010, %2675
  %2677 = bitcast i32 %2676 to float
  %2678 = fmul fast float %2677, %2662
  %2679 = fadd fast float %2678, 1.000000e+00
  %2680 = fmul fast float %2663, 2.000000e+00
  %2681 = fsub fast float 3.000000e+00, %2680
  %2682 = fadd fast float %2680, 1.000000e+00
  %2683 = fsub fast float 2.000000e+00, %2663
  %2684 = bitcast float %2681 to i32
  %2685 = sub nsw i32 2129859010, %2684
  %2686 = bitcast i32 %2685 to float
  %2687 = fmul fast float %2686, %2683
  %2688 = fadd fast float %2687, -1.000000e+00
  %2689 = bitcast float %2682 to i32
  %2690 = sub nsw i32 2129859010, %2689
  %2691 = bitcast i32 %2690 to float
  %2692 = fmul fast float %2691, %2663
  %2693 = fadd fast float %2692, 1.000000e+00
  %2694 = fadd fast float %2674, %2664
  %2695 = fmul fast float %2694, %2646
  %2696 = fadd fast float %2688, %2665
  %2697 = fmul fast float %2696, %2647
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %2695, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float %2651)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = fmul fast float %2699, %2667
  %2701 = fadd fast float %2679, %2664
  %2702 = fmul fast float %2701, %2646
  %2703 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %2702, float %2697, float undef, float undef, i32 0, i32 0, i32 undef, float %2651)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2704 = extractvalue %dx.types.ResRet.f32 %2703, 0
  %2705 = fmul fast float %2704, %2668
  %2706 = fadd fast float %2693, %2665
  %2707 = fmul fast float %2706, %2647
  %2708 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %2695, float %2707, float undef, float undef, i32 0, i32 0, i32 undef, float %2651)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = fmul fast float %2709, %2667
  %2711 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %2702, float %2707, float undef, float undef, i32 0, i32 0, i32 undef, float %2651)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = fmul fast float %2712, %2668
  %2714 = fadd fast float %2713, %2710
  %2715 = fmul fast float %2714, %2682
  %2716 = fadd fast float %2705, %2700
  %2717 = fmul fast float %2716, %2681
  %2718 = fadd fast float %2717, %2715
  %2719 = fmul fast float %2718, 6.250000e-02
  br label %2805

; <label>:2720                                    ; preds = %2637
  %2721 = fmul fast float %274, 0x401921FB60000000
  %2722 = call float @dx.op.unary.f32(i32 13, float %2721)  ; Sin(value)
  %2723 = call float @dx.op.unary.f32(i32 12, float %2721)  ; Cos(value)
  %2724 = fsub fast float -0.000000e+00, %2722
  br label %2725

; <label>:2725                                    ; preds = %2774, %2720
  %2726 = phi float [ 0.000000e+00, %2720 ], [ %2769, %2774 ]
  %2727 = phi float [ 0.000000e+00, %2720 ], [ %2771, %2774 ]
  %2728 = phi i32 [ 0, %2720 ], [ %2775, %2774 ]
  %2729 = mul i32 %2728, 2
  %2730 = add i32 0, %2729
  %2731 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2730
  %2732 = load float, float* %2731, align 4
  %2733 = mul i32 %2728, 2
  %2734 = add i32 1, %2733
  %2735 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2734
  %2736 = load float, float* %2735, align 4
  %2737 = fmul fast float %2732, %2723
  %2738 = call float @dx.op.tertiary.f32(i32 46, float %2736, float %2724, float %2737)  ; FMad(a,b,c)
  %2739 = fmul fast float %2732, %2722
  %2740 = call float @dx.op.tertiary.f32(i32 46, float %2736, float %2723, float %2739)  ; FMad(a,b,c)
  %2741 = fmul fast float %2738, %2649
  %2742 = fmul fast float %2740, %2649
  %2743 = fadd fast float %2741, %1677
  %2744 = fadd fast float %2742, %1678
  %2745 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %30, float %2743, float %2744, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2746 = extractvalue %dx.types.ResRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.ResRet.f32 %2745, 1
  %2748 = extractvalue %dx.types.ResRet.f32 %2745, 2
  %2749 = extractvalue %dx.types.ResRet.f32 %2745, 3
  %2750 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %2746, float* %2750, align 4
  %2751 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %2747, float* %2751, align 4
  %2752 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %2748, float* %2752, align 4
  %2753 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %2749, float* %2753, align 4
  %2754 = fsub fast float %2746, %2651
  %2755 = fcmp fast olt float %2754, 0.000000e+00
  %2756 = select i1 %2755, float 0.000000e+00, float 1.000000e+00
  %2757 = fadd fast float %2756, %2726
  %2758 = fmul fast float %2756, %2754
  %2759 = fadd fast float %2758, %2727
  br label %2760

; <label>:2760                                    ; preds = %2760, %2725
  %2761 = phi i32 [ 1, %2725 ], [ %2772, %2760 ]
  %2762 = phi float [ %2759, %2725 ], [ %2771, %2760 ]
  %2763 = phi float [ %2757, %2725 ], [ %2769, %2760 ]
  %2764 = getelementptr [4 x float], [4 x float]* %53, i32 0, i32 %2761
  %2765 = load float, float* %2764, align 4, !tbaa !59
  %2766 = fsub fast float %2765, %2651
  %2767 = fcmp fast olt float %2766, 0.000000e+00
  %2768 = select i1 %2767, float 0.000000e+00, float 1.000000e+00
  %2769 = fadd fast float %2768, %2763
  %2770 = fmul fast float %2768, %2766
  %2771 = fadd fast float %2770, %2762
  %2772 = add nuw nsw i32 %2761, 1
  %2773 = icmp eq i32 %2772, 4
  br i1 %2773, label %2774, label %2760, !llvm.loop !61

; <label>:2774                                    ; preds = %2760
  %2775 = add nuw nsw i32 %2728, 1
  %2776 = icmp eq i32 %2775, 8
  br i1 %2776, label %2777, label %2725, !llvm.loop !63

; <label>:2777                                    ; preds = %2774
  %2778 = fdiv fast float 1.000000e+00, %2769
  %2779 = fmul fast float %2778, %2771
  %2780 = fdiv fast float 1.000000e+00, %2651
  %2781 = fmul fast float %2779, %2780
  %2782 = call float @dx.op.unary.f32(i32 7, float %2781)  ; Saturate(value)
  %2783 = call float @dx.op.binary.f32(i32 35, float %2782, float 0.000000e+00)  ; FMax(a,b)
  %2784 = fmul fast float %2769, 3.125000e-02
  %2785 = call float @dx.op.unary.f32(i32 7, float %2784)  ; Saturate(value)
  %2786 = fmul fast float %2785, 2.000000e+00
  %2787 = fadd fast float %2786, -1.000000e+00
  %2788 = fcmp fast ogt float %2787, 0.000000e+00
  %2789 = fcmp fast olt float %2787, 0.000000e+00
  %2790 = zext i1 %2788 to i32
  %2791 = zext i1 %2789 to i32
  %2792 = sub nsw i32 %2790, %2791
  %2793 = sitofp i32 %2792 to float
  %2794 = fmul fast float %2793, %2787
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2795, %2795
  %2797 = fmul fast float %2796, %2795
  %2798 = fsub fast float %2795, %2797
  %2799 = fmul fast float %2798, %2783
  %2800 = fsub fast float 1.000000e+00, %2797
  %2801 = fsub fast float %2800, %2799
  %2802 = fmul fast float %2793, 5.000000e-01
  %2803 = fmul fast float %2802, %2801
  %2804 = fsub fast float 5.000000e-01, %2803
  br label %2805

; <label>:2805                                    ; preds = %2777, %2653, %2634
  %2806 = phi float [ 1.000000e+00, %2634 ], [ %2719, %2653 ], [ %2804, %2777 ]
  %2807 = fcmp fast ogt float %1786, 0.000000e+00
  br i1 %2807, label %2808, label %3130, !dx.controlflow.hints !92

; <label>:2808                                    ; preds = %2805
  %2809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.f32 %2809, 2
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = fmul fast float %2810, %236
  %2814 = fadd fast float %2812, %263
  %2815 = fadd fast float %2814, %2813
  %2816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2817 = extractvalue %dx.types.CBufRet.f32 %2816, 2
  %2818 = extractvalue %dx.types.CBufRet.f32 %2816, 3
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = call float @dx.op.binary.f32(i32 35, float %2815, float 0.000000e+00)  ; FMax(a,b)
  %2822 = fadd fast float %2821, 0x3F10000000000000
  %2823 = fcmp fast oeq float %2820, 0.000000e+00
  br i1 %112, label %2824, label %2977, !dx.controlflow.hints !93

; <label>:2824                                    ; preds = %2808
  br i1 %2823, label %2825, label %2892, !dx.controlflow.hints !58

; <label>:2825                                    ; preds = %2824
  %2826 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2827 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2828 = fmul fast float %2827, %255
  %2829 = fmul fast float %2826, %259
  %2830 = fadd fast float %2828, 5.000000e-01
  %2831 = call float @dx.op.unary.f32(i32 27, float %2830)  ; Round_ni(value)
  %2832 = fadd fast float %2829, 5.000000e-01
  %2833 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2834 = fsub fast float %2830, %2831
  %2835 = fsub fast float %2832, %2833
  %2836 = fadd fast float %2831, -5.000000e-01
  %2837 = fadd fast float %2833, -5.000000e-01
  %2838 = fmul fast float %2834, 2.000000e+00
  %2839 = fsub fast float 3.000000e+00, %2838
  %2840 = fadd fast float %2838, 1.000000e+00
  %2841 = fsub fast float 2.000000e+00, %2834
  %2842 = bitcast float %2839 to i32
  %2843 = sub nsw i32 2129859010, %2842
  %2844 = bitcast i32 %2843 to float
  %2845 = fmul fast float %2844, %2841
  %2846 = fadd fast float %2845, -1.000000e+00
  %2847 = bitcast float %2840 to i32
  %2848 = sub nsw i32 2129859010, %2847
  %2849 = bitcast i32 %2848 to float
  %2850 = fmul fast float %2849, %2834
  %2851 = fadd fast float %2850, 1.000000e+00
  %2852 = fmul fast float %2835, 2.000000e+00
  %2853 = fsub fast float 3.000000e+00, %2852
  %2854 = fadd fast float %2852, 1.000000e+00
  %2855 = fsub fast float 2.000000e+00, %2835
  %2856 = bitcast float %2853 to i32
  %2857 = sub nsw i32 2129859010, %2856
  %2858 = bitcast i32 %2857 to float
  %2859 = fmul fast float %2858, %2855
  %2860 = fadd fast float %2859, -1.000000e+00
  %2861 = bitcast float %2854 to i32
  %2862 = sub nsw i32 2129859010, %2861
  %2863 = bitcast i32 %2862 to float
  %2864 = fmul fast float %2863, %2835
  %2865 = fadd fast float %2864, 1.000000e+00
  %2866 = fadd fast float %2846, %2836
  %2867 = fmul fast float %2866, %2817
  %2868 = fadd fast float %2860, %2837
  %2869 = fmul fast float %2868, %2818
  %2870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %2867, float %2869, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = fmul fast float %2871, %2839
  %2873 = fadd fast float %2851, %2836
  %2874 = fmul fast float %2873, %2817
  %2875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %2874, float %2869, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = fmul fast float %2876, %2840
  %2878 = fadd fast float %2865, %2837
  %2879 = fmul fast float %2878, %2818
  %2880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %2867, float %2879, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = fmul fast float %2881, %2839
  %2883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %2874, float %2879, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = fmul fast float %2884, %2840
  %2886 = fadd fast float %2885, %2882
  %2887 = fmul fast float %2886, %2854
  %2888 = fadd fast float %2877, %2872
  %2889 = fmul fast float %2888, %2853
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, 6.250000e-02
  br label %3130

; <label>:2892                                    ; preds = %2824
  %2893 = fmul fast float %274, 0x401921FB60000000
  %2894 = call float @dx.op.unary.f32(i32 13, float %2893)  ; Sin(value)
  %2895 = call float @dx.op.unary.f32(i32 12, float %2893)  ; Cos(value)
  %2896 = fsub fast float -0.000000e+00, %2894
  br label %2897

; <label>:2897                                    ; preds = %2946, %2892
  %2898 = phi float [ 0.000000e+00, %2892 ], [ %2941, %2946 ]
  %2899 = phi float [ 0.000000e+00, %2892 ], [ %2943, %2946 ]
  %2900 = phi i32 [ 0, %2892 ], [ %2947, %2946 ]
  %2901 = mul i32 %2900, 2
  %2902 = add i32 0, %2901
  %2903 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2902
  %2904 = load float, float* %2903, align 4
  %2905 = mul i32 %2900, 2
  %2906 = add i32 1, %2905
  %2907 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2906
  %2908 = load float, float* %2907, align 4
  %2909 = fmul fast float %2904, %2895
  %2910 = call float @dx.op.tertiary.f32(i32 46, float %2908, float %2896, float %2909)  ; FMad(a,b,c)
  %2911 = fmul fast float %2904, %2894
  %2912 = call float @dx.op.tertiary.f32(i32 46, float %2908, float %2895, float %2911)  ; FMad(a,b,c)
  %2913 = fmul fast float %2910, %2820
  %2914 = fmul fast float %2912, %2820
  %2915 = fadd fast float %2913, %255
  %2916 = fadd fast float %2914, %259
  %2917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %30, float %2915, float %2916, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2918 = extractvalue %dx.types.ResRet.f32 %2917, 0
  %2919 = extractvalue %dx.types.ResRet.f32 %2917, 1
  %2920 = extractvalue %dx.types.ResRet.f32 %2917, 2
  %2921 = extractvalue %dx.types.ResRet.f32 %2917, 3
  %2922 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %2918, float* %2922, align 4
  %2923 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %2919, float* %2923, align 4
  %2924 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %2920, float* %2924, align 4
  %2925 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %2921, float* %2925, align 4
  %2926 = fsub fast float %2918, %2822
  %2927 = fcmp fast olt float %2926, 0.000000e+00
  %2928 = select i1 %2927, float 0.000000e+00, float 1.000000e+00
  %2929 = fadd fast float %2928, %2898
  %2930 = fmul fast float %2928, %2926
  %2931 = fadd fast float %2930, %2899
  br label %2932

; <label>:2932                                    ; preds = %2932, %2897
  %2933 = phi i32 [ 1, %2897 ], [ %2944, %2932 ]
  %2934 = phi float [ %2931, %2897 ], [ %2943, %2932 ]
  %2935 = phi float [ %2929, %2897 ], [ %2941, %2932 ]
  %2936 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %2933
  %2937 = load float, float* %2936, align 4, !tbaa !59
  %2938 = fsub fast float %2937, %2822
  %2939 = fcmp fast olt float %2938, 0.000000e+00
  %2940 = select i1 %2939, float 0.000000e+00, float 1.000000e+00
  %2941 = fadd fast float %2940, %2935
  %2942 = fmul fast float %2940, %2938
  %2943 = fadd fast float %2942, %2934
  %2944 = add nuw nsw i32 %2933, 1
  %2945 = icmp eq i32 %2944, 4
  br i1 %2945, label %2946, label %2932, !llvm.loop !61

; <label>:2946                                    ; preds = %2932
  %2947 = add nuw nsw i32 %2900, 1
  %2948 = icmp eq i32 %2947, 8
  br i1 %2948, label %2949, label %2897, !llvm.loop !63

; <label>:2949                                    ; preds = %2946
  %2950 = fdiv fast float 1.000000e+00, %2941
  %2951 = fmul fast float %2950, %2943
  %2952 = fdiv fast float 1.000000e+00, %2822
  %2953 = fmul fast float %2951, %2952
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2955 = call float @dx.op.binary.f32(i32 35, float %2954, float 0.000000e+00)  ; FMax(a,b)
  %2956 = fmul fast float %2941, 3.125000e-02
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fmul fast float %2957, 2.000000e+00
  %2959 = fadd fast float %2958, -1.000000e+00
  %2960 = fcmp fast ogt float %2959, 0.000000e+00
  %2961 = fcmp fast olt float %2959, 0.000000e+00
  %2962 = zext i1 %2960 to i32
  %2963 = zext i1 %2961 to i32
  %2964 = sub nsw i32 %2962, %2963
  %2965 = sitofp i32 %2964 to float
  %2966 = fmul fast float %2965, %2959
  %2967 = fsub fast float 1.000000e+00, %2966
  %2968 = fmul fast float %2967, %2967
  %2969 = fmul fast float %2968, %2967
  %2970 = fsub fast float %2967, %2969
  %2971 = fmul fast float %2970, %2955
  %2972 = fsub fast float 1.000000e+00, %2969
  %2973 = fsub fast float %2972, %2971
  %2974 = fmul fast float %2965, 5.000000e-01
  %2975 = fmul fast float %2974, %2973
  %2976 = fsub fast float 5.000000e-01, %2975
  br label %3130

; <label>:2977                                    ; preds = %2808
  br i1 %2823, label %2978, label %3045, !dx.controlflow.hints !58

; <label>:2978                                    ; preds = %2977
  %2979 = extractvalue %dx.types.CBufRet.f32 %2816, 1
  %2980 = extractvalue %dx.types.CBufRet.f32 %2816, 0
  %2981 = fmul fast float %2980, %255
  %2982 = fmul fast float %2979, %259
  %2983 = fadd fast float %2981, 5.000000e-01
  %2984 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2987 = fsub fast float %2983, %2984
  %2988 = fsub fast float %2985, %2986
  %2989 = fadd fast float %2984, -5.000000e-01
  %2990 = fadd fast float %2986, -5.000000e-01
  %2991 = fmul fast float %2987, 2.000000e+00
  %2992 = fsub fast float 3.000000e+00, %2991
  %2993 = fadd fast float %2991, 1.000000e+00
  %2994 = fsub fast float 2.000000e+00, %2987
  %2995 = bitcast float %2992 to i32
  %2996 = sub nsw i32 2129859010, %2995
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2997, %2994
  %2999 = fadd fast float %2998, -1.000000e+00
  %3000 = bitcast float %2993 to i32
  %3001 = sub nsw i32 2129859010, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %3002, %2987
  %3004 = fadd fast float %3003, 1.000000e+00
  %3005 = fmul fast float %2988, 2.000000e+00
  %3006 = fsub fast float 3.000000e+00, %3005
  %3007 = fadd fast float %3005, 1.000000e+00
  %3008 = fsub fast float 2.000000e+00, %2988
  %3009 = bitcast float %3006 to i32
  %3010 = sub nsw i32 2129859010, %3009
  %3011 = bitcast i32 %3010 to float
  %3012 = fmul fast float %3011, %3008
  %3013 = fadd fast float %3012, -1.000000e+00
  %3014 = bitcast float %3007 to i32
  %3015 = sub nsw i32 2129859010, %3014
  %3016 = bitcast i32 %3015 to float
  %3017 = fmul fast float %3016, %2988
  %3018 = fadd fast float %3017, 1.000000e+00
  %3019 = fadd fast float %2999, %2989
  %3020 = fmul fast float %3019, %2817
  %3021 = fadd fast float %3013, %2990
  %3022 = fmul fast float %3021, %2818
  %3023 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %3020, float %3022, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = fmul fast float %3024, %2992
  %3026 = fadd fast float %3004, %2989
  %3027 = fmul fast float %3026, %2817
  %3028 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %3027, float %3022, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  %3030 = fmul fast float %3029, %2993
  %3031 = fadd fast float %3018, %2990
  %3032 = fmul fast float %3031, %2818
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %3020, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = fmul fast float %3034, %2992
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %3027, float %3032, float undef, float undef, i32 0, i32 0, i32 undef, float %2822)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = fmul fast float %3037, %2993
  %3039 = fadd fast float %3038, %3035
  %3040 = fmul fast float %3039, %3007
  %3041 = fadd fast float %3030, %3025
  %3042 = fmul fast float %3041, %3006
  %3043 = fadd fast float %3042, %3040
  %3044 = fmul fast float %3043, 6.250000e-02
  br label %3130

; <label>:3045                                    ; preds = %2977
  %3046 = fmul fast float %274, 0x401921FB60000000
  %3047 = call float @dx.op.unary.f32(i32 13, float %3046)  ; Sin(value)
  %3048 = call float @dx.op.unary.f32(i32 12, float %3046)  ; Cos(value)
  %3049 = fsub fast float -0.000000e+00, %3047
  br label %3050

; <label>:3050                                    ; preds = %3099, %3045
  %3051 = phi float [ 0.000000e+00, %3045 ], [ %3094, %3099 ]
  %3052 = phi float [ 0.000000e+00, %3045 ], [ %3096, %3099 ]
  %3053 = phi i32 [ 0, %3045 ], [ %3100, %3099 ]
  %3054 = mul i32 %3053, 2
  %3055 = add i32 0, %3054
  %3056 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3055
  %3057 = load float, float* %3056, align 4
  %3058 = mul i32 %3053, 2
  %3059 = add i32 1, %3058
  %3060 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3059
  %3061 = load float, float* %3060, align 4
  %3062 = fmul fast float %3057, %3048
  %3063 = call float @dx.op.tertiary.f32(i32 46, float %3061, float %3049, float %3062)  ; FMad(a,b,c)
  %3064 = fmul fast float %3057, %3047
  %3065 = call float @dx.op.tertiary.f32(i32 46, float %3061, float %3048, float %3064)  ; FMad(a,b,c)
  %3066 = fmul fast float %3063, %2820
  %3067 = fmul fast float %3065, %2820
  %3068 = fadd fast float %3066, %255
  %3069 = fadd fast float %3067, %259
  %3070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %30, float %3068, float %3069, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = extractvalue %dx.types.ResRet.f32 %3070, 1
  %3073 = extractvalue %dx.types.ResRet.f32 %3070, 2
  %3074 = extractvalue %dx.types.ResRet.f32 %3070, 3
  %3075 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %3071, float* %3075, align 4
  %3076 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %3072, float* %3076, align 4
  %3077 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %3073, float* %3077, align 4
  %3078 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %3074, float* %3078, align 4
  %3079 = fsub fast float %3071, %2822
  %3080 = fcmp fast olt float %3079, 0.000000e+00
  %3081 = select i1 %3080, float 0.000000e+00, float 1.000000e+00
  %3082 = fadd fast float %3081, %3051
  %3083 = fmul fast float %3081, %3079
  %3084 = fadd fast float %3083, %3052
  br label %3085

; <label>:3085                                    ; preds = %3085, %3050
  %3086 = phi i32 [ 1, %3050 ], [ %3097, %3085 ]
  %3087 = phi float [ %3084, %3050 ], [ %3096, %3085 ]
  %3088 = phi float [ %3082, %3050 ], [ %3094, %3085 ]
  %3089 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %3086
  %3090 = load float, float* %3089, align 4, !tbaa !59
  %3091 = fsub fast float %3090, %2822
  %3092 = fcmp fast olt float %3091, 0.000000e+00
  %3093 = select i1 %3092, float 0.000000e+00, float 1.000000e+00
  %3094 = fadd fast float %3093, %3088
  %3095 = fmul fast float %3093, %3091
  %3096 = fadd fast float %3095, %3087
  %3097 = add nuw nsw i32 %3086, 1
  %3098 = icmp eq i32 %3097, 4
  br i1 %3098, label %3099, label %3085, !llvm.loop !61

; <label>:3099                                    ; preds = %3085
  %3100 = add nuw nsw i32 %3053, 1
  %3101 = icmp eq i32 %3100, 8
  br i1 %3101, label %3102, label %3050, !llvm.loop !63

; <label>:3102                                    ; preds = %3099
  %3103 = fdiv fast float 1.000000e+00, %3094
  %3104 = fmul fast float %3103, %3096
  %3105 = fdiv fast float 1.000000e+00, %2822
  %3106 = fmul fast float %3104, %3105
  %3107 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3108 = call float @dx.op.binary.f32(i32 35, float %3107, float 0.000000e+00)  ; FMax(a,b)
  %3109 = fmul fast float %3094, 3.125000e-02
  %3110 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3111 = fmul fast float %3110, 2.000000e+00
  %3112 = fadd fast float %3111, -1.000000e+00
  %3113 = fcmp fast ogt float %3112, 0.000000e+00
  %3114 = fcmp fast olt float %3112, 0.000000e+00
  %3115 = zext i1 %3113 to i32
  %3116 = zext i1 %3114 to i32
  %3117 = sub nsw i32 %3115, %3116
  %3118 = sitofp i32 %3117 to float
  %3119 = fmul fast float %3118, %3112
  %3120 = fsub fast float 1.000000e+00, %3119
  %3121 = fmul fast float %3120, %3120
  %3122 = fmul fast float %3121, %3120
  %3123 = fsub fast float %3120, %3122
  %3124 = fmul fast float %3123, %3108
  %3125 = fsub fast float 1.000000e+00, %3122
  %3126 = fsub fast float %3125, %3124
  %3127 = fmul fast float %3118, 5.000000e-01
  %3128 = fmul fast float %3127, %3126
  %3129 = fsub fast float 5.000000e-01, %3128
  br label %3130

; <label>:3130                                    ; preds = %3102, %2978, %2949, %2825, %2805
  %3131 = phi float [ 1.000000e+00, %2805 ], [ %2891, %2825 ], [ %2976, %2949 ], [ %3044, %2978 ], [ %3129, %3102 ]
  %3132 = fsub fast float %2635, %2464
  %3133 = fmul fast float %3132, %1756
  %3134 = fadd fast float %3133, %2464
  %3135 = fsub fast float %2806, %3134
  %3136 = fmul fast float %3135, %1755
  %3137 = fadd fast float %3136, %3134
  %3138 = fsub fast float %3131, %3137
  %3139 = fmul fast float %3138, %1786
  %3140 = fadd fast float %3139, %3137
  br label %4612

; <label>:3141                                    ; preds = %125
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 0
  %3144 = extractvalue %dx.types.CBufRet.f32 %3142, 1
  %3145 = extractvalue %dx.types.CBufRet.f32 %3142, 3
  %3146 = fmul fast float %3145, %255
  %3147 = fmul fast float %3145, %259
  %3148 = fadd fast float %3146, %3143
  %3149 = fadd fast float %3147, %3144
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.CBufRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.CBufRet.f32 %3150, 3
  %3154 = fmul fast float %3153, %255
  %3155 = fmul fast float %3153, %259
  %3156 = fadd fast float %3154, %3151
  %3157 = fadd fast float %3155, %3152
  %3158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3159 = extractvalue %dx.types.CBufRet.f32 %3158, 1
  %3160 = fsub fast float %3159, %263
  %3161 = extractvalue %dx.types.CBufRet.f32 %3158, 2
  %3162 = fmul fast float %3160, %3161
  %3163 = fsub fast float 1.000000e+00, %3162
  %3164 = call float @dx.op.unary.f32(i32 7, float %3163)  ; Saturate(value)
  br i1 %112, label %3225, label %3165, !dx.controlflow.hints !86

; <label>:3165                                    ; preds = %3141
  %3166 = extractvalue %dx.types.CBufRet.f32 %3150, 2
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 2
  %3169 = fadd fast float %3168, %3166
  %3170 = fcmp fast ogt float %3169, 0.000000e+00
  br i1 %3170, label %3171, label %3195, !dx.controlflow.hints !87

; <label>:3171                                    ; preds = %3165
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = extractvalue %dx.types.CBufRet.f32 %3172, 1
  %3175 = fsub fast float %3156, %3173
  %3176 = fsub fast float %3157, %3174
  %3177 = fcmp fast olt float %3175, 0.000000e+00
  %3178 = fcmp fast olt float %3176, 0.000000e+00
  %3179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3180 = extractvalue %dx.types.CBufRet.f32 %3179, 0
  %3181 = extractvalue %dx.types.CBufRet.f32 %3179, 1
  %3182 = extractvalue %dx.types.CBufRet.f32 %3179, 2
  %3183 = extractvalue %dx.types.CBufRet.f32 %3179, 3
  %3184 = select i1 %3177, float %3180, float %3182
  %3185 = select i1 %3178, float %3181, float %3183
  %3186 = fmul fast float %3184, %3175
  %3187 = fmul fast float %3185, %3176
  %3188 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3189 = call float @dx.op.unary.f32(i32 6, float %3187)  ; FAbs(value)
  %3190 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %3191 = call float @dx.op.binary.f32(i32 35, float %3188, float %3189)  ; FMax(a,b)
  %3192 = fsub fast float %3190, %3191
  %3193 = call float @dx.op.unary.f32(i32 7, float %3192)  ; Saturate(value)
  %3194 = fmul fast float %3193, %3164
  br label %3195

; <label>:3195                                    ; preds = %3171, %3165
  %3196 = phi float [ %3194, %3171 ], [ 0.000000e+00, %3165 ]
  %3197 = extractvalue %dx.types.CBufRet.f32 %3142, 2
  %3198 = extractvalue %dx.types.CBufRet.f32 %3167, 1
  %3199 = fadd fast float %3198, %3197
  %3200 = fcmp fast ogt float %3199, 0.000000e+00
  br i1 %3200, label %3201, label %3225, !dx.controlflow.hints !88

; <label>:3201                                    ; preds = %3195
  %3202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.CBufRet.f32 %3202, 1
  %3205 = fsub fast float %3148, %3203
  %3206 = fsub fast float %3149, %3204
  %3207 = fcmp fast olt float %3205, 0.000000e+00
  %3208 = fcmp fast olt float %3206, 0.000000e+00
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.CBufRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.CBufRet.f32 %3209, 2
  %3213 = extractvalue %dx.types.CBufRet.f32 %3209, 3
  %3214 = select i1 %3207, float %3210, float %3212
  %3215 = select i1 %3208, float %3211, float %3213
  %3216 = fmul fast float %3214, %3205
  %3217 = fmul fast float %3215, %3206
  %3218 = call float @dx.op.unary.f32(i32 6, float %3216)  ; FAbs(value)
  %3219 = call float @dx.op.unary.f32(i32 6, float %3217)  ; FAbs(value)
  %3220 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %3221 = call float @dx.op.binary.f32(i32 35, float %3218, float %3219)  ; FMax(a,b)
  %3222 = fsub fast float %3220, %3221
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  %3224 = fmul fast float %3223, %3164
  br label %3225

; <label>:3225                                    ; preds = %3201, %3195, %3141
  %3226 = phi float [ 0.000000e+00, %3141 ], [ %3224, %3201 ], [ 0.000000e+00, %3195 ]
  %3227 = phi float [ 0.000000e+00, %3141 ], [ %3196, %3201 ], [ %3196, %3195 ]
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3231 = fmul fast float %3229, %119
  %3232 = fadd fast float %3231, %3230
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3235 = extractvalue %dx.types.CBufRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.CBufRet.f32 %3234, 1
  %3237 = fsub fast float %255, %3235
  %3238 = fsub fast float %259, %3236
  %3239 = fcmp fast olt float %3237, 0.000000e+00
  %3240 = fcmp fast olt float %3238, 0.000000e+00
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.CBufRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.CBufRet.f32 %3241, 2
  %3245 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3246 = select i1 %3239, float %3242, float %3244
  %3247 = select i1 %3240, float %3243, float %3245
  %3248 = fmul fast float %3246, %3237
  %3249 = fmul fast float %3247, %3238
  %3250 = call float @dx.op.unary.f32(i32 6, float %3248)  ; FAbs(value)
  %3251 = call float @dx.op.unary.f32(i32 6, float %3249)  ; FAbs(value)
  %3252 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %3253 = call float @dx.op.binary.f32(i32 35, float %3250, float %3251)  ; FMax(a,b)
  %3254 = fsub fast float %3252, %3253
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = call float @dx.op.binary.f32(i32 36, float %3255, float %3233)  ; FMin(a,b)
  %3257 = fmul fast float %3256, %3164
  %3258 = fsub fast float %3226, %3257
  %3259 = fsub fast float %3227, %3226
  %3260 = fsub fast float %3259, %3257
  %3261 = call float @dx.op.binary.f32(i32 35, float %3226, float %3227)  ; FMax(a,b)
  %3262 = call float @dx.op.binary.f32(i32 35, float %3257, float %3261)  ; FMax(a,b)
  %3263 = fcmp fast olt float %3262, 1.000000e+00
  %3264 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %3265 = fcmp fast une float %3264, 0.000000e+00
  %3266 = and i1 %3263, %3265
  br i1 %3266, label %3267, label %3934, !dx.controlflow.hints !89

; <label>:3267                                    ; preds = %3225
  %3268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3269 = extractvalue %dx.types.CBufRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.CBufRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.CBufRet.f32 %3268, 2
  %3272 = extractvalue %dx.types.CBufRet.f32 %3268, 3
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = extractvalue %dx.types.CBufRet.f32 %3273, 1
  %3276 = extractvalue %dx.types.CBufRet.f32 %3273, 2
  %3277 = extractvalue %dx.types.CBufRet.f32 %3273, 3
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3278, 1
  %3281 = extractvalue %dx.types.CBufRet.f32 %3278, 2
  %3282 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3283 = fmul fast float %3269, %175
  %3284 = call float @dx.op.tertiary.f32(i32 46, float %176, float %3270, float %3283)  ; FMad(a,b,c)
  %3285 = call float @dx.op.tertiary.f32(i32 46, float %177, float %3271, float %3284)  ; FMad(a,b,c)
  %3286 = fadd fast float %3285, %3272
  %3287 = fmul fast float %3274, %175
  %3288 = call float @dx.op.tertiary.f32(i32 46, float %176, float %3275, float %3287)  ; FMad(a,b,c)
  %3289 = call float @dx.op.tertiary.f32(i32 46, float %177, float %3276, float %3288)  ; FMad(a,b,c)
  %3290 = fadd fast float %3289, %3277
  %3291 = fmul fast float %3279, %175
  %3292 = call float @dx.op.tertiary.f32(i32 46, float %176, float %3280, float %3291)  ; FMad(a,b,c)
  %3293 = call float @dx.op.tertiary.f32(i32 46, float %177, float %3281, float %3292)  ; FMad(a,b,c)
  %3294 = fadd fast float %3293, %3282
  %3295 = fcmp fast oge float %3286, 1.000000e+00
  %3296 = fcmp fast oge float %3290, 1.000000e+00
  %3297 = or i1 %3295, %3296
  %3298 = fcmp fast olt float %3286, 0.000000e+00
  %3299 = fcmp fast olt float %3290, 0.000000e+00
  %3300 = or i1 %3298, %3299
  %3301 = or i1 %3297, %3300
  br i1 %3301, label %3934, label %3302, !dx.controlflow.hints !69

; <label>:3302                                    ; preds = %3267
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.CBufRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.CBufRet.f32 %3303, 2
  %3307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3307, 1
  %3309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.i32 %3309, 2
  %3311 = uitofp i32 %3310 to float
  %3312 = extractvalue %dx.types.CBufRet.i32 %3309, 3
  %3313 = uitofp i32 %3312 to float
  %3314 = extractvalue %dx.types.CBufRet.f32 %3303, 3
  %3315 = fmul fast float %3314, 2.000000e+00
  %3316 = fsub fast float %3286, %3304
  %3317 = fsub fast float %3290, %3305
  %3318 = fmul fast float %3315, %3316
  %3319 = fmul fast float %3315, %3317
  %3320 = fdiv fast float 1.000000e+00, %225
  %3321 = fmul fast float %3319, %3320
  %3322 = call float @dx.op.unary.f32(i32 6, float %3321)  ; FAbs(value)
  %3323 = fmul fast float %3306, %177
  %3324 = fmul fast float %3323, %3315
  %3325 = call float @dx.op.unary.f32(i32 6, float %3324)  ; FAbs(value)
  %3326 = call float @dx.op.unary.f32(i32 6, float %3318)  ; FAbs(value)
  %3327 = call float @dx.op.binary.f32(i32 35, float %3325, float %3322)  ; FMax(a,b)
  %3328 = call float @dx.op.binary.f32(i32 35, float %3326, float %3327)  ; FMax(a,b)
  %3329 = fmul fast float %3328, 2.000000e+00
  %3330 = call float @dx.op.unary.f32(i32 23, float %3329)  ; Log(value)
  %3331 = call float @dx.op.binary.f32(i32 35, float %3330, float %3311)  ; FMax(a,b)
  %3332 = call float @dx.op.unary.f32(i32 22, float %3331)  ; Frc(value)
  %3333 = fadd fast float %3332, 0xBFEA666660000000
  %3334 = fmul fast float %3333, 8.000000e+00
  %3335 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  %3336 = call float @dx.op.unary.f32(i32 27, float %3331)  ; Round_ni(value)
  %3337 = fadd fast float %3336, %3335
  %3338 = call float @dx.op.binary.f32(i32 36, float %3337, float %3313)  ; FMin(a,b)
  %3339 = call float @dx.op.unary.f32(i32 27, float %3338)  ; Round_ni(value)
  %3340 = fsub fast float -0.000000e+00, %3339
  %3341 = call float @dx.op.unary.f32(i32 21, float %3340)  ; Exp(value)
  %3342 = fmul fast float %3341, %3315
  %3343 = fmul fast float %3342, %3286
  %3344 = fmul fast float %3342, %3290
  %3345 = fmul fast float %3343, 5.000000e-01
  %3346 = fmul fast float %3344, 5.000000e-01
  %3347 = fadd fast float %3345, 5.000000e-01
  %3348 = fadd fast float %3346, 5.000000e-01
  %3349 = fmul fast float %3343, 2.500000e-01
  %3350 = fmul fast float %3344, 2.500000e-01
  %3351 = fadd fast float %3349, 5.000000e-01
  %3352 = fadd fast float %3350, 5.000000e-01
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = and i32 %3354, 536870911
  %3356 = lshr i32 %3355, 9
  %3357 = uitofp i32 %3356 to float
  %3358 = fmul fast float %3357, %3286
  %3359 = fmul fast float %3357, %3290
  %3360 = call float @dx.op.unary.f32(i32 22, float %3358)  ; Frc(value)
  %3361 = call float @dx.op.unary.f32(i32 22, float %3359)  ; Frc(value)
  %3362 = call float @dx.op.unary.f32(i32 22, float %3335)  ; Frc(value)
  %3363 = fcmp fast une float %3362, 0.000000e+00
  br i1 %3363, label %3364, label %3462, !dx.controlflow.hints !70

; <label>:3364                                    ; preds = %3302
  %3365 = call float @dx.op.unary.f32(i32 21, float %3336)  ; Exp(value)
  %3366 = fmul fast float %3365, 1.953125e-03
  %3367 = fcmp fast olt float %3360, %3366
  %3368 = fcmp fast olt float %3361, %3366
  %3369 = or i1 %3367, %3368
  %3370 = fsub fast float 1.000000e+00, %3366
  %3371 = fcmp fast ogt float %3360, %3370
  %3372 = fcmp fast ogt float %3361, %3370
  %3373 = or i1 %3371, %3372
  %3374 = or i1 %3369, %3373
  br i1 %3374, label %3375, label %3541, !dx.controlflow.hints !71

; <label>:3375                                    ; preds = %3364
  %3376 = fmul fast float %3308, 5.000000e-01
  %3377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.i32 %3377, 0
  %3379 = fmul fast float %3290, 3.530000e+02
  %3380 = uitofp i32 %3355 to float
  %3381 = fmul fast float %3379, %3380
  %3382 = fmul fast float %3286, 6.130000e+02
  %3383 = fadd fast float %3381, %3382
  %3384 = fptoui float %3383 to i32
  %3385 = add i32 %3378, %3384
  %3386 = mul i32 %3385, -63
  %3387 = lshr i32 %3386, 17
  %3388 = xor i32 %3387, %3386
  %3389 = mul i32 %3388, -511
  %3390 = mul i32 %3388, -8176
  %3391 = xor i32 %3389, %3390
  %3392 = mul i32 %3391, -7
  %3393 = mul i32 %3391, -7168
  %3394 = xor i32 %3392, %3393
  %3395 = lshr i32 %3394, 15
  %3396 = xor i32 %3395, %3392
  %3397 = and i32 %3396, 15
  %3398 = mul i32 %3397, 2
  %3399 = add i32 0, %3398
  %3400 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3399
  %3401 = load float, float* %3400, align 4
  %3402 = mul i32 %3397, 2
  %3403 = add i32 1, %3402
  %3404 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3403
  %3405 = load float, float* %3404, align 4
  %3406 = fmul fast float %3290, 2.770000e+02
  %3407 = fmul fast float %3406, %3380
  %3408 = fmul fast float %3286, 5.990000e+02
  %3409 = fadd fast float %3407, %3408
  %3410 = fptoui float %3409 to i32
  %3411 = mul i32 %3410, -63
  %3412 = lshr i32 %3411, 17
  %3413 = xor i32 %3412, %3411
  %3414 = mul i32 %3413, -511
  %3415 = mul i32 %3413, -8176
  %3416 = xor i32 %3414, %3415
  %3417 = mul i32 %3416, -7
  %3418 = mul i32 %3416, -7168
  %3419 = xor i32 %3417, %3418
  %3420 = lshr i32 %3419, 15
  %3421 = xor i32 %3420, %3417
  %3422 = and i32 %3421, 63
  %3423 = mul i32 %3422, 2
  %3424 = add i32 0, %3423
  %3425 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3424
  %3426 = load float, float* %3425, align 4
  %3427 = mul i32 %3422, 2
  %3428 = add i32 1, %3427
  %3429 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3428
  %3430 = load float, float* %3429, align 4
  %3431 = call float @dx.op.dot2.f32(i32 54, float %3401, float %3405, float %3426, float %3430)  ; Dot2(ax,ay,bx,by)
  %3432 = fsub fast float -0.000000e+00, %3426
  %3433 = call float @dx.op.dot2.f32(i32 54, float %3401, float %3405, float %3432, float %3430)  ; Dot2(ax,ay,bx,by)
  %3434 = fmul fast float %3431, %3376
  %3435 = fmul fast float %3433, %3376
  %3436 = fdiv fast float 2.000000e+00, %3342
  %3437 = fmul fast float %3365, 9.765625e-04
  %3438 = fcmp fast olt float %3360, %3437
  %3439 = fcmp fast olt float %3361, %3437
  %3440 = or i1 %3438, %3439
  %3441 = fsub fast float 1.000000e+00, %3437
  %3442 = fcmp fast ogt float %3360, %3441
  %3443 = fcmp fast ogt float %3361, %3441
  %3444 = or i1 %3442, %3443
  %3445 = or i1 %3440, %3444
  %3446 = fmul fast float %3434, 2.000000e+00
  br i1 %3445, label %3447, label %3451, !dx.controlflow.hints !72

; <label>:3447                                    ; preds = %3375
  %3448 = fmul fast float %3435, 2.000000e+00
  %3449 = fadd fast float %3446, %3347
  %3450 = fadd fast float %3448, %3348
  br label %3451

; <label>:3451                                    ; preds = %3447, %3375
  %3452 = phi float [ %3449, %3447 ], [ %3347, %3375 ]
  %3453 = phi float [ %3450, %3447 ], [ %3348, %3375 ]
  %3454 = phi i32 [ 3, %3447 ], [ 2, %3375 ]
  %3455 = fadd fast float %3434, %3351
  %3456 = fadd fast float %3435, %3352
  %3457 = fmul fast float %3446, %3436
  %3458 = fmul fast float %3436, 2.000000e+00
  %3459 = fmul fast float %3458, %3435
  %3460 = fadd fast float %3457, %3286
  %3461 = fadd fast float %3459, %3290
  br label %3541

; <label>:3462                                    ; preds = %3302
  %3463 = call float @dx.op.unary.f32(i32 21, float %3339)  ; Exp(value)
  %3464 = fmul fast float %3463, 9.765625e-04
  %3465 = fcmp fast olt float %3360, %3464
  %3466 = fcmp fast olt float %3361, %3464
  %3467 = or i1 %3465, %3466
  %3468 = fsub fast float 1.000000e+00, %3464
  %3469 = fcmp fast ogt float %3360, %3468
  %3470 = fcmp fast ogt float %3361, %3468
  %3471 = or i1 %3469, %3470
  %3472 = or i1 %3467, %3471
  br i1 %3472, label %3473, label %3541, !dx.controlflow.hints !73

; <label>:3473                                    ; preds = %3462
  %3474 = fmul fast float %3308, 5.000000e-01
  %3475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.i32 %3475, 0
  %3477 = fmul fast float %3290, 3.530000e+02
  %3478 = uitofp i32 %3355 to float
  %3479 = fmul fast float %3477, %3478
  %3480 = fmul fast float %3286, 6.130000e+02
  %3481 = fadd fast float %3479, %3480
  %3482 = fptoui float %3481 to i32
  %3483 = add i32 %3476, %3482
  %3484 = mul i32 %3483, -63
  %3485 = lshr i32 %3484, 17
  %3486 = xor i32 %3485, %3484
  %3487 = mul i32 %3486, -511
  %3488 = mul i32 %3486, -8176
  %3489 = xor i32 %3487, %3488
  %3490 = mul i32 %3489, -7
  %3491 = mul i32 %3489, -7168
  %3492 = xor i32 %3490, %3491
  %3493 = lshr i32 %3492, 15
  %3494 = xor i32 %3493, %3490
  %3495 = and i32 %3494, 15
  %3496 = mul i32 %3495, 2
  %3497 = add i32 0, %3496
  %3498 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3497
  %3499 = load float, float* %3498, align 4
  %3500 = mul i32 %3495, 2
  %3501 = add i32 1, %3500
  %3502 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3501
  %3503 = load float, float* %3502, align 4
  %3504 = fmul fast float %3290, 2.770000e+02
  %3505 = fmul fast float %3504, %3478
  %3506 = fmul fast float %3286, 5.990000e+02
  %3507 = fadd fast float %3505, %3506
  %3508 = fptoui float %3507 to i32
  %3509 = mul i32 %3508, -63
  %3510 = lshr i32 %3509, 17
  %3511 = xor i32 %3510, %3509
  %3512 = mul i32 %3511, -511
  %3513 = mul i32 %3511, -8176
  %3514 = xor i32 %3512, %3513
  %3515 = mul i32 %3514, -7
  %3516 = mul i32 %3514, -7168
  %3517 = xor i32 %3515, %3516
  %3518 = lshr i32 %3517, 15
  %3519 = xor i32 %3518, %3515
  %3520 = and i32 %3519, 63
  %3521 = mul i32 %3520, 2
  %3522 = add i32 0, %3521
  %3523 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3522
  %3524 = load float, float* %3523, align 4
  %3525 = mul i32 %3520, 2
  %3526 = add i32 1, %3525
  %3527 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3526
  %3528 = load float, float* %3527, align 4
  %3529 = call float @dx.op.dot2.f32(i32 54, float %3499, float %3503, float %3524, float %3528)  ; Dot2(ax,ay,bx,by)
  %3530 = fsub fast float -0.000000e+00, %3524
  %3531 = call float @dx.op.dot2.f32(i32 54, float %3499, float %3503, float %3530, float %3528)  ; Dot2(ax,ay,bx,by)
  %3532 = fmul fast float %3529, %3474
  %3533 = fmul fast float %3531, %3474
  %3534 = fadd fast float %3532, %3347
  %3535 = fadd fast float %3533, %3348
  %3536 = fdiv fast float 2.000000e+00, %3342
  %3537 = fmul fast float %3536, %3532
  %3538 = fmul fast float %3533, %3536
  %3539 = fadd fast float %3537, %3286
  %3540 = fadd fast float %3538, %3290
  br label %3541

; <label>:3541                                    ; preds = %3473, %3462, %3451, %3364
  %3542 = phi float [ %3455, %3451 ], [ %3351, %3364 ], [ %3351, %3473 ], [ %3351, %3462 ]
  %3543 = phi float [ %3456, %3451 ], [ %3352, %3364 ], [ %3352, %3473 ], [ %3352, %3462 ]
  %3544 = phi float [ %3452, %3451 ], [ %3347, %3364 ], [ %3534, %3473 ], [ %3347, %3462 ]
  %3545 = phi float [ %3453, %3451 ], [ %3348, %3364 ], [ %3535, %3473 ], [ %3348, %3462 ]
  %3546 = phi i32 [ %3454, %3451 ], [ 0, %3364 ], [ 1, %3473 ], [ 0, %3462 ]
  %3547 = phi float [ %3460, %3451 ], [ %3286, %3364 ], [ %3539, %3473 ], [ %3286, %3462 ]
  %3548 = phi float [ %3461, %3451 ], [ %3290, %3364 ], [ %3540, %3473 ], [ %3290, %3462 ]
  %3549 = fsub fast float %3313, %3311
  %3550 = fptoui float %3549 to i32
  %3551 = add i32 %3550, 320
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 %3551)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 1
  %3555 = fcmp fast une float %3338, %3313
  %3556 = fsub fast float %3547, %3553
  %3557 = fsub fast float %3548, %3554
  %3558 = call float @dx.op.unary.f32(i32 6, float %3556)  ; FAbs(value)
  %3559 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3560 = fmul fast float %3558, %3342
  %3561 = fmul fast float %3559, %3342
  %3562 = fcmp fast olt float %3560, 1.000000e+00
  %3563 = fcmp fast olt float %3561, 1.000000e+00
  %3564 = and i1 %3562, %3563
  %3565 = or i1 %3555, %3564
  br i1 %3565, label %3566, label %3934, !dx.controlflow.hints !74

; <label>:3566                                    ; preds = %3541
  %3567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3568 = extractvalue %dx.types.CBufRet.i32 %3567, 2
  %3569 = sitofp i32 %3568 to float
  %3570 = fsub fast float %3338, %3569
  %3571 = call float @dx.op.unary.f32(i32 27, float %3570)  ; Round_ni(value)
  %3572 = call float @dx.op.unary.f32(i32 22, float %3338)  ; Frc(value)
  %3573 = icmp eq i32 %3546, 0
  %3574 = call float @dx.op.unary.f32(i32 22, float %3544)  ; Frc(value)
  %3575 = call float @dx.op.unary.f32(i32 22, float %3545)  ; Frc(value)
  br i1 %3573, label %3646, label %3576, !dx.controlflow.hints !75

; <label>:3576                                    ; preds = %3566
  %3577 = and i32 %3546, 1
  %3578 = icmp eq i32 %3577, 0
  br i1 %3578, label %3592, label %3579, !dx.controlflow.hints !76

; <label>:3579                                    ; preds = %3576
  %3580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3580, 0
  %3582 = fmul fast float %3574, %3581
  %3583 = fmul fast float %3575, %3581
  %3584 = fptoui float %3582 to i32
  %3585 = fptoui float %3583 to i32
  %3586 = fptoui float %3571 to i32
  %3587 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %3584, i32 %3585, i32 %3586, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  br label %3598

; <label>:3592                                    ; preds = %3576
  %3593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %3574, float %3575, float %3571, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  br label %3598

; <label>:3598                                    ; preds = %3592, %3579
  %3599 = phi float [ %3588, %3579 ], [ %3594, %3592 ]
  %3600 = phi float [ %3589, %3579 ], [ %3595, %3592 ]
  %3601 = phi float [ %3590, %3579 ], [ %3596, %3592 ]
  %3602 = phi float [ %3591, %3579 ], [ %3597, %3592 ]
  %3603 = fcmp fast ogt float %3572, 0.000000e+00
  br i1 %3603, label %3604, label %3674, !dx.controlflow.hints !77

; <label>:3604                                    ; preds = %3598
  %3605 = and i32 %3546, 2
  %3606 = icmp eq i32 %3605, 0
  %3607 = fadd fast float %3571, 1.000000e+00
  %3608 = call float @dx.op.unary.f32(i32 22, float %3542)  ; Frc(value)
  %3609 = call float @dx.op.unary.f32(i32 22, float %3543)  ; Frc(value)
  br i1 %3606, label %3623, label %3610, !dx.controlflow.hints !78

; <label>:3610                                    ; preds = %3604
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = fmul fast float %3608, %3612
  %3614 = fmul fast float %3609, %3612
  %3615 = fptoui float %3613 to i32
  %3616 = fptoui float %3614 to i32
  %3617 = fptoui float %3607 to i32
  %3618 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %3615, i32 %3616, i32 %3617, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  br label %3629

; <label>:3623                                    ; preds = %3604
  %3624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %3608, float %3609, float %3607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  br label %3629

; <label>:3629                                    ; preds = %3623, %3610
  %3630 = phi float [ %3619, %3610 ], [ %3625, %3623 ]
  %3631 = phi float [ %3620, %3610 ], [ %3626, %3623 ]
  %3632 = phi float [ %3621, %3610 ], [ %3627, %3623 ]
  %3633 = phi float [ %3622, %3610 ], [ %3628, %3623 ]
  %3634 = fsub fast float %3630, %3599
  %3635 = fsub fast float %3631, %3600
  %3636 = fsub fast float %3632, %3601
  %3637 = fsub fast float %3633, %3602
  %3638 = fmul fast float %3634, %3572
  %3639 = fmul fast float %3635, %3572
  %3640 = fmul fast float %3636, %3572
  %3641 = fmul fast float %3637, %3572
  %3642 = fadd fast float %3638, %3599
  %3643 = fadd fast float %3639, %3600
  %3644 = fadd fast float %3640, %3601
  %3645 = fadd fast float %3641, %3602
  br label %3674

; <label>:3646                                    ; preds = %3566
  %3647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %3574, float %3575, float %3571, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = fcmp fast ogt float %3572, 0.000000e+00
  br i1 %3652, label %3653, label %3674, !dx.controlflow.hints !79

; <label>:3653                                    ; preds = %3646
  %3654 = fadd fast float %3571, 1.000000e+00
  %3655 = call float @dx.op.unary.f32(i32 22, float %3542)  ; Frc(value)
  %3656 = call float @dx.op.unary.f32(i32 22, float %3543)  ; Frc(value)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %3655, float %3656, float %3654, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3662 = fsub fast float %3658, %3648
  %3663 = fsub fast float %3659, %3649
  %3664 = fsub fast float %3660, %3650
  %3665 = fsub fast float %3661, %3651
  %3666 = fmul fast float %3662, %3572
  %3667 = fmul fast float %3663, %3572
  %3668 = fmul fast float %3664, %3572
  %3669 = fmul fast float %3665, %3572
  %3670 = fadd fast float %3666, %3648
  %3671 = fadd fast float %3667, %3649
  %3672 = fadd fast float %3668, %3650
  %3673 = fadd fast float %3669, %3651
  br label %3674

; <label>:3674                                    ; preds = %3653, %3646, %3629, %3598
  %3675 = phi float [ %3642, %3629 ], [ %3599, %3598 ], [ %3670, %3653 ], [ %3648, %3646 ]
  %3676 = phi float [ %3643, %3629 ], [ %3600, %3598 ], [ %3671, %3653 ], [ %3649, %3646 ]
  %3677 = phi float [ %3644, %3629 ], [ %3601, %3598 ], [ %3672, %3653 ], [ %3650, %3646 ]
  %3678 = phi float [ %3645, %3629 ], [ %3602, %3598 ], [ %3673, %3653 ], [ %3651, %3646 ]
  %3679 = fadd fast float %3675, -5.000000e-01
  %3680 = fadd fast float %3677, -5.000000e-01
  %3681 = fmul fast float %3679, 0xBFD5555560000000
  %3682 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3680, float %3681)  ; FMad(a,b,c)
  %3683 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3676, float 0.000000e+00)  ; FMad(a,b,c)
  %3684 = fadd fast float %3683, %3678
  %3685 = fmul fast float %3679, -7.500000e-01
  %3686 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3680, float %3685)  ; FMad(a,b,c)
  %3687 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3676, float 0.000000e+00)  ; FMad(a,b,c)
  %3688 = fadd fast float %3687, %3678
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 0
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3691, 2
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3696 = fsub fast float %3692, %3682
  %3697 = fsub fast float %3693, %3684
  %3698 = fsub fast float %3694, %3686
  %3699 = fsub fast float %3695, %3688
  %3700 = fmul fast float %3696, %3690
  %3701 = fmul fast float %3697, %3690
  %3702 = fmul fast float %3698, %3690
  %3703 = fmul fast float %3699, %3690
  %3704 = fadd fast float %3700, %3682
  %3705 = fadd fast float %3701, %3684
  %3706 = fadd fast float %3702, %3686
  %3707 = fadd fast float %3703, %3688
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 536870911
  %3711 = uitofp i32 %3710 to float
  %3712 = fmul fast float %3711, %3547
  %3713 = fmul fast float %3711, %3548
  %3714 = fptoui float %3712 to i32
  %3715 = fptoui float %3713 to i32
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 31
  %3719 = lshr i32 %3714, %3718
  %3720 = lshr i32 %3715, %3718
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 31
  %3724 = shl i32 1, %3723
  %3725 = call i32 @dx.op.binary.i32(i32 40, i32 %3724, i32 4)  ; UMin(a,b)
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.i32 %3726, 1
  %3729 = icmp eq i32 %3725, 0
  br i1 %3729, label %3771, label %3730

; <label>:3730                                    ; preds = %3674
  br label %3731

; <label>:3731                                    ; preds = %3759, %3730
  %3732 = phi i32 [ %3762, %3759 ], [ 0, %3730 ]
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = lshr i32 %3734, 16
  %3736 = and i32 %3735, 31
  %3737 = shl i32 %3720, %3736
  %3738 = add i32 %3737, %3719
  %3739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3740 = extractvalue %dx.types.ResRet.i32 %3739, 0
  %3741 = and i32 %3740, 31
  %3742 = shl i32 %3738, %3741
  %3743 = add i32 %3742, %3732
  %3744 = shl i32 %3743, 2
  %3745 = add i32 %3744, 32
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = icmp slt i32 %3747, 0
  %3749 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3732
  %3750 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %3732
  %3751 = bitcast float* %3749 to i32*
  %3752 = bitcast float* %3750 to i32*
  br i1 %3748, label %3753, label %3759, !dx.controlflow.hints !80

; <label>:3753                                    ; preds = %3731
  %3754 = and i32 %3747, 1073741823
  %3755 = add nuw nsw i32 %3754, 20
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.i32 %3756, 1
  br label %3759

; <label>:3759                                    ; preds = %3753, %3731
  %3760 = phi i32 [ %3757, %3753 ], [ %3727, %3731 ]
  %3761 = phi i32 [ %3758, %3753 ], [ %3728, %3731 ]
  store i32 %3760, i32* %3751, align 4
  store i32 %3761, i32* %3752, align 4
  %3762 = add nuw i32 %3732, 1
  %3763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.i32 %3763, 2
  %3765 = icmp eq i32 %3764, 0
  %3766 = icmp ugt i32 %3747, -1073741825
  %3767 = and i1 %3766, %3765
  %3768 = icmp ult i32 %3762, %3725
  %3769 = and i1 %3767, %3768
  br i1 %3769, label %3731, label %3770, !dx.controlflow.hints !81

; <label>:3770                                    ; preds = %3759
  br label %3771

; <label>:3771                                    ; preds = %3770, %3674
  %3772 = phi i32 [ 0, %3674 ], [ %3762, %3770 ]
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3775 = fptoui float %3774 to i32
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3828, label %3777

; <label>:3777                                    ; preds = %3771
  br label %3778

; <label>:3778                                    ; preds = %3823, %3777
  %3779 = phi i32 [ %3824, %3823 ], [ %3772, %3777 ]
  %3780 = phi i32 [ %3825, %3823 ], [ 0, %3777 ]
  %3781 = lshr i32 %3780, 2
  %3782 = and i32 %3780, 3
  %3783 = add nuw nsw i32 %3781, 83
  %3784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 %3783)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.i32 %3784, 0
  %3786 = extractvalue %dx.types.CBufRet.i32 %3784, 1
  %3787 = extractvalue %dx.types.CBufRet.i32 %3784, 2
  %3788 = extractvalue %dx.types.CBufRet.i32 %3784, 3
  %3789 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 0
  store i32 %3785, i32* %3789, align 4
  %3790 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 1
  store i32 %3786, i32* %3790, align 4
  %3791 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 2
  store i32 %3787, i32* %3791, align 4
  %3792 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 3
  store i32 %3788, i32* %3792, align 4
  %3793 = getelementptr inbounds [4 x i32], [4 x i32]* %34, i32 0, i32 %3782
  %3794 = load i32, i32* %3793, align 4, !tbaa !52
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = lshr i32 %3796, 16
  %3798 = and i32 %3797, 31
  %3799 = shl i32 %3720, %3798
  %3800 = add i32 %3799, %3719
  %3801 = shl i32 %3800, 2
  %3802 = add i32 %3801, %3794
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = icmp eq i32 %3804, 0
  br i1 %3805, label %3823, label %3806, !dx.controlflow.hints !82

; <label>:3806                                    ; preds = %3778
  %3807 = icmp slt i32 %3804, 0
  %3808 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3779
  %3809 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %3779
  %3810 = bitcast float* %3808 to i32*
  %3811 = bitcast float* %3809 to i32*
  br i1 %3807, label %3812, label %3819, !dx.controlflow.hints !83

; <label>:3812                                    ; preds = %3806
  %3813 = and i32 %3804, 1073741823
  %3814 = add i32 %3794, 20
  %3815 = add i32 %3814, %3813
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.i32 %3816, 1
  br label %3819

; <label>:3819                                    ; preds = %3812, %3806
  %3820 = phi i32 [ %3817, %3812 ], [ %3727, %3806 ]
  %3821 = phi i32 [ %3818, %3812 ], [ %3728, %3806 ]
  store i32 %3820, i32* %3810, align 4
  store i32 %3821, i32* %3811, align 4
  %3822 = add i32 %3779, 1
  br label %3823

; <label>:3823                                    ; preds = %3819, %3778
  %3824 = phi i32 [ %3779, %3778 ], [ %3822, %3819 ]
  %3825 = add nuw i32 %3780, 1
  %3826 = icmp eq i32 %3825, %3775
  br i1 %3826, label %3827, label %3778

; <label>:3827                                    ; preds = %3823
  br label %3828

; <label>:3828                                    ; preds = %3827, %3771
  %3829 = phi i32 [ %3772, %3771 ], [ %3824, %3827 ]
  %3830 = icmp eq i32 %3829, 1
  %3831 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  %3832 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  br i1 %3830, label %3833, label %3836, !dx.controlflow.hints !84

; <label>:3833                                    ; preds = %3828
  %3834 = load float, float* %3831, align 4
  %3835 = load float, float* %3832, align 4
  br label %3863

; <label>:3836                                    ; preds = %3828
  %3837 = load float, float* %3831, align 4
  %3838 = load float, float* %3832, align 4
  %3839 = fdiv fast float 1.000000e+00, %3838
  %3840 = fsub fast float %3837, %3839
  %3841 = icmp ugt i32 %3829, 1
  br i1 %3841, label %3842, label %3858

; <label>:3842                                    ; preds = %3836
  br label %3843

; <label>:3843                                    ; preds = %3843, %3842
  %3844 = phi float [ %3853, %3843 ], [ %3840, %3842 ]
  %3845 = phi float [ %3854, %3843 ], [ %3837, %3842 ]
  %3846 = phi i32 [ %3855, %3843 ], [ 1, %3842 ]
  %3847 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %3846
  %3848 = load float, float* %3847, align 4
  %3849 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %3846
  %3850 = load float, float* %3849, align 4
  %3851 = fdiv fast float 1.000000e+00, %3850
  %3852 = fsub fast float %3848, %3851
  %3853 = call float @dx.op.binary.f32(i32 36, float %3844, float %3852)  ; FMin(a,b)
  %3854 = call float @dx.op.binary.f32(i32 35, float %3845, float %3848)  ; FMax(a,b)
  %3855 = add nuw i32 %3846, 1
  %3856 = icmp eq i32 %3855, %3829
  br i1 %3856, label %3857, label %3843

; <label>:3857                                    ; preds = %3843
  br label %3858

; <label>:3858                                    ; preds = %3857, %3836
  %3859 = phi float [ %3840, %3836 ], [ %3853, %3857 ]
  %3860 = phi float [ %3837, %3836 ], [ %3854, %3857 ]
  %3861 = fsub fast float %3860, %3859
  %3862 = fdiv fast float 1.000000e+00, %3861
  br label %3863

; <label>:3863                                    ; preds = %3858, %3833
  %3864 = phi float [ %3834, %3833 ], [ %3860, %3858 ]
  %3865 = phi float [ %3835, %3833 ], [ %3862, %3858 ]
  %3866 = fadd fast float %3294, %3864
  %3867 = fmul fast float %3866, %3865
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = fmul fast float %3868, 2.000000e+00
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = fmul fast float %3704, %3704
  %3872 = fsub fast float %3705, %3871
  %3873 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3872)  ; FMax(a,b)
  %3874 = fdiv fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3705, %3704
  %3876 = fsub fast float %3706, %3875
  %3877 = fsub fast float %3870, %3704
  %3878 = fmul fast float %3870, %3870
  %3879 = fsub fast float %3878, %3705
  %3880 = fmul fast float %3874, %3876
  %3881 = fmul fast float %3880, %3877
  %3882 = fsub fast float %3879, %3881
  %3883 = fmul fast float %3705, %3705
  %3884 = fsub fast float %3707, %3883
  %3885 = fmul fast float %3876, %3876
  %3886 = fmul fast float %3885, %3874
  %3887 = fsub fast float %3884, %3886
  %3888 = fdiv fast float %3882, %3887
  %3889 = fmul fast float %3888, %3876
  %3890 = fsub fast float %3877, %3889
  %3891 = fmul fast float %3890, %3874
  %3892 = fmul fast float %3891, %3704
  %3893 = fsub fast float 1.000000e+00, %3892
  %3894 = fmul fast float %3888, %3705
  %3895 = fsub fast float %3893, %3894
  %3896 = fmul fast float %3891, %3891
  %3897 = fmul fast float %3888, 4.000000e+00
  %3898 = fmul fast float %3897, %3895
  %3899 = fsub fast float %3896, %3898
  %3900 = call float @dx.op.unary.f32(i32 24, float %3899)  ; Sqrt(value)
  %3901 = fcmp fast oge float %3891, 0.000000e+00
  %3902 = fsub fast float -0.000000e+00, %3900
  %3903 = select i1 %3901, float %3902, float %3900
  %3904 = fsub fast float %3903, %3891
  %3905 = fdiv fast float %3904, %3888
  %3906 = fdiv fast float %3895, %3904
  %3907 = fmul fast float %3905, 5.000000e-01
  %3908 = fmul fast float %3906, 2.000000e+00
  %3909 = select i1 %3901, float %3907, float %3908
  %3910 = select i1 %3901, float %3908, float %3907
  %3911 = call float @dx.op.binary.f32(i32 35, float %3909, float %3910)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 36, float %3909, float %3910)  ; FMin(a,b)
  %3913 = fcmp fast ogt float %3870, %3911
  %3914 = fsub fast float %3870, %3912
  %3915 = fsub fast float %3870, %3911
  %3916 = fsub fast float %3911, %3912
  %3917 = select i1 %3913, float %3915, float %3916
  %3918 = fmul float %3914, %3917
  %3919 = select i1 %3913, float %3912, float %3870
  %3920 = fcmp fast ogt float %3870, %3912
  %3921 = fmul fast float %3919, %3911
  %3922 = fadd fast float %3919, %3911
  %3923 = fmul fast float %3922, %3704
  %3924 = fadd fast float %3921, %3705
  %3925 = fsub fast float %3924, %3923
  %3926 = fdiv fast float %3925, %3918
  %3927 = select i1 %3920, float %3926, float 0.000000e+00
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = select i1 %3913, float %3928, float %3927
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3932 = fmul fast float %3931, %3930
  %3933 = fsub fast float 1.000000e+00, %3932
  br label %3934

; <label>:3934                                    ; preds = %3863, %3541, %3267, %3225
  %3935 = phi float [ 1.000000e+00, %3225 ], [ %3933, %3863 ], [ 1.000000e+00, %3267 ], [ 1.000000e+00, %3541 ]
  %3936 = fcmp fast ogt float %3260, 0.000000e+00
  br i1 %3936, label %3937, label %4105, !dx.controlflow.hints !90

; <label>:3937                                    ; preds = %3934
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 2
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3942 = fmul fast float %3939, %236
  %3943 = fadd fast float %3941, %263
  %3944 = fadd fast float %3943, %3942
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 3
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 2
  %3950 = call float @dx.op.binary.f32(i32 35, float %3944, float 0.000000e+00)  ; FMax(a,b)
  %3951 = fadd fast float %3950, 0x3F10000000000000
  %3952 = fcmp fast oeq float %3949, 0.000000e+00
  br i1 %3952, label %3953, label %4020, !dx.controlflow.hints !58

; <label>:3953                                    ; preds = %3937
  %3954 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3955 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3956 = fmul fast float %3955, %3156
  %3957 = fmul fast float %3954, %3157
  %3958 = fadd fast float %3956, 5.000000e-01
  %3959 = call float @dx.op.unary.f32(i32 27, float %3958)  ; Round_ni(value)
  %3960 = fadd fast float %3957, 5.000000e-01
  %3961 = call float @dx.op.unary.f32(i32 27, float %3960)  ; Round_ni(value)
  %3962 = fsub fast float %3958, %3959
  %3963 = fsub fast float %3960, %3961
  %3964 = fadd fast float %3959, -5.000000e-01
  %3965 = fadd fast float %3961, -5.000000e-01
  %3966 = fmul fast float %3962, 2.000000e+00
  %3967 = fsub fast float 3.000000e+00, %3966
  %3968 = fadd fast float %3966, 1.000000e+00
  %3969 = fsub fast float 2.000000e+00, %3962
  %3970 = bitcast float %3967 to i32
  %3971 = sub nsw i32 2129859010, %3970
  %3972 = bitcast i32 %3971 to float
  %3973 = fmul fast float %3972, %3969
  %3974 = fadd fast float %3973, -1.000000e+00
  %3975 = bitcast float %3968 to i32
  %3976 = sub nsw i32 2129859010, %3975
  %3977 = bitcast i32 %3976 to float
  %3978 = fmul fast float %3977, %3962
  %3979 = fadd fast float %3978, 1.000000e+00
  %3980 = fmul fast float %3963, 2.000000e+00
  %3981 = fsub fast float 3.000000e+00, %3980
  %3982 = fadd fast float %3980, 1.000000e+00
  %3983 = fsub fast float 2.000000e+00, %3963
  %3984 = bitcast float %3981 to i32
  %3985 = sub nsw i32 2129859010, %3984
  %3986 = bitcast i32 %3985 to float
  %3987 = fmul fast float %3986, %3983
  %3988 = fadd fast float %3987, -1.000000e+00
  %3989 = bitcast float %3982 to i32
  %3990 = sub nsw i32 2129859010, %3989
  %3991 = bitcast i32 %3990 to float
  %3992 = fmul fast float %3991, %3963
  %3993 = fadd fast float %3992, 1.000000e+00
  %3994 = fadd fast float %3974, %3964
  %3995 = fmul fast float %3994, %3946
  %3996 = fadd fast float %3988, %3965
  %3997 = fmul fast float %3996, %3947
  %3998 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %3995, float %3997, float undef, float undef, i32 0, i32 0, i32 undef, float %3951)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = fmul fast float %3999, %3967
  %4001 = fadd fast float %3979, %3964
  %4002 = fmul fast float %4001, %3946
  %4003 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %4002, float %3997, float undef, float undef, i32 0, i32 0, i32 undef, float %3951)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = fmul fast float %4004, %3968
  %4006 = fadd fast float %3993, %3965
  %4007 = fmul fast float %4006, %3947
  %4008 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %3995, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %3951)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4009 = extractvalue %dx.types.ResRet.f32 %4008, 0
  %4010 = fmul fast float %4009, %3967
  %4011 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %5, %dx.types.Handle %31, float %4002, float %4007, float undef, float undef, i32 0, i32 0, i32 undef, float %3951)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = fmul fast float %4012, %3968
  %4014 = fadd fast float %4013, %4010
  %4015 = fmul fast float %4014, %3982
  %4016 = fadd fast float %4005, %4000
  %4017 = fmul fast float %4016, %3981
  %4018 = fadd fast float %4017, %4015
  %4019 = fmul fast float %4018, 6.250000e-02
  br label %4105

; <label>:4020                                    ; preds = %3937
  %4021 = fmul fast float %274, 0x401921FB60000000
  %4022 = call float @dx.op.unary.f32(i32 13, float %4021)  ; Sin(value)
  %4023 = call float @dx.op.unary.f32(i32 12, float %4021)  ; Cos(value)
  %4024 = fsub fast float -0.000000e+00, %4022
  br label %4025

; <label>:4025                                    ; preds = %4074, %4020
  %4026 = phi float [ 0.000000e+00, %4020 ], [ %4069, %4074 ]
  %4027 = phi float [ 0.000000e+00, %4020 ], [ %4071, %4074 ]
  %4028 = phi i32 [ 0, %4020 ], [ %4075, %4074 ]
  %4029 = mul i32 %4028, 2
  %4030 = add i32 0, %4029
  %4031 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4030
  %4032 = load float, float* %4031, align 4
  %4033 = mul i32 %4028, 2
  %4034 = add i32 1, %4033
  %4035 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4034
  %4036 = load float, float* %4035, align 4
  %4037 = fmul fast float %4032, %4023
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4024, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %4032, %4022
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4036, float %4023, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %4038, %3949
  %4042 = fmul fast float %4040, %3949
  %4043 = fadd fast float %4041, %3156
  %4044 = fadd fast float %4042, %3157
  %4045 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %30, float %4043, float %4044, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %4046, float* %4050, align 4
  %4051 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %4047, float* %4051, align 4
  %4052 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %4048, float* %4052, align 4
  %4053 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %4049, float* %4053, align 4
  %4054 = fsub fast float %4046, %3951
  %4055 = fcmp fast olt float %4054, 0.000000e+00
  %4056 = select i1 %4055, float 0.000000e+00, float 1.000000e+00
  %4057 = fadd fast float %4056, %4026
  %4058 = fmul fast float %4056, %4054
  %4059 = fadd fast float %4058, %4027
  br label %4060

; <label>:4060                                    ; preds = %4060, %4025
  %4061 = phi i32 [ 1, %4025 ], [ %4072, %4060 ]
  %4062 = phi float [ %4059, %4025 ], [ %4071, %4060 ]
  %4063 = phi float [ %4057, %4025 ], [ %4069, %4060 ]
  %4064 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %4061
  %4065 = load float, float* %4064, align 4, !tbaa !59
  %4066 = fsub fast float %4065, %3951
  %4067 = fcmp fast olt float %4066, 0.000000e+00
  %4068 = select i1 %4067, float 0.000000e+00, float 1.000000e+00
  %4069 = fadd fast float %4068, %4063
  %4070 = fmul fast float %4068, %4066
  %4071 = fadd fast float %4070, %4062
  %4072 = add nuw nsw i32 %4061, 1
  %4073 = icmp eq i32 %4072, 4
  br i1 %4073, label %4074, label %4060, !llvm.loop !61

; <label>:4074                                    ; preds = %4060
  %4075 = add nuw nsw i32 %4028, 1
  %4076 = icmp eq i32 %4075, 8
  br i1 %4076, label %4077, label %4025, !llvm.loop !63

; <label>:4077                                    ; preds = %4074
  %4078 = fdiv fast float 1.000000e+00, %4069
  %4079 = fmul fast float %4078, %4071
  %4080 = fdiv fast float 1.000000e+00, %3951
  %4081 = fmul fast float %4079, %4080
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = call float @dx.op.binary.f32(i32 35, float %4082, float 0.000000e+00)  ; FMax(a,b)
  %4084 = fmul fast float %4069, 3.125000e-02
  %4085 = call float @dx.op.unary.f32(i32 7, float %4084)  ; Saturate(value)
  %4086 = fmul fast float %4085, 2.000000e+00
  %4087 = fadd fast float %4086, -1.000000e+00
  %4088 = fcmp fast ogt float %4087, 0.000000e+00
  %4089 = fcmp fast olt float %4087, 0.000000e+00
  %4090 = zext i1 %4088 to i32
  %4091 = zext i1 %4089 to i32
  %4092 = sub nsw i32 %4090, %4091
  %4093 = sitofp i32 %4092 to float
  %4094 = fmul fast float %4093, %4087
  %4095 = fsub fast float 1.000000e+00, %4094
  %4096 = fmul fast float %4095, %4095
  %4097 = fmul fast float %4096, %4095
  %4098 = fsub fast float %4095, %4097
  %4099 = fmul fast float %4098, %4083
  %4100 = fsub fast float 1.000000e+00, %4097
  %4101 = fsub fast float %4100, %4099
  %4102 = fmul fast float %4093, 5.000000e-01
  %4103 = fmul fast float %4102, %4101
  %4104 = fsub fast float 5.000000e-01, %4103
  br label %4105

; <label>:4105                                    ; preds = %4077, %3953, %3934
  %4106 = phi float [ 1.000000e+00, %3934 ], [ %4019, %3953 ], [ %4104, %4077 ]
  %4107 = fcmp fast ogt float %3258, 0.000000e+00
  br i1 %4107, label %4108, label %4276, !dx.controlflow.hints !91

; <label>:4108                                    ; preds = %4105
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4113 = fmul fast float %4110, %236
  %4114 = fadd fast float %4112, %263
  %4115 = fadd fast float %4114, %4113
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4118 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4121 = call float @dx.op.binary.f32(i32 35, float %4115, float 0.000000e+00)  ; FMax(a,b)
  %4122 = fadd fast float %4121, 0x3F10000000000000
  %4123 = fcmp fast oeq float %4120, 0.000000e+00
  br i1 %4123, label %4124, label %4191, !dx.controlflow.hints !58

; <label>:4124                                    ; preds = %4108
  %4125 = extractvalue %dx.types.CBufRet.f32 %4116, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4116, 0
  %4127 = fmul fast float %4126, %3148
  %4128 = fmul fast float %4125, %3149
  %4129 = fadd fast float %4127, 5.000000e-01
  %4130 = call float @dx.op.unary.f32(i32 27, float %4129)  ; Round_ni(value)
  %4131 = fadd fast float %4128, 5.000000e-01
  %4132 = call float @dx.op.unary.f32(i32 27, float %4131)  ; Round_ni(value)
  %4133 = fsub fast float %4129, %4130
  %4134 = fsub fast float %4131, %4132
  %4135 = fadd fast float %4130, -5.000000e-01
  %4136 = fadd fast float %4132, -5.000000e-01
  %4137 = fmul fast float %4133, 2.000000e+00
  %4138 = fsub fast float 3.000000e+00, %4137
  %4139 = fadd fast float %4137, 1.000000e+00
  %4140 = fsub fast float 2.000000e+00, %4133
  %4141 = bitcast float %4138 to i32
  %4142 = sub nsw i32 2129859010, %4141
  %4143 = bitcast i32 %4142 to float
  %4144 = fmul fast float %4143, %4140
  %4145 = fadd fast float %4144, -1.000000e+00
  %4146 = bitcast float %4139 to i32
  %4147 = sub nsw i32 2129859010, %4146
  %4148 = bitcast i32 %4147 to float
  %4149 = fmul fast float %4148, %4133
  %4150 = fadd fast float %4149, 1.000000e+00
  %4151 = fmul fast float %4134, 2.000000e+00
  %4152 = fsub fast float 3.000000e+00, %4151
  %4153 = fadd fast float %4151, 1.000000e+00
  %4154 = fsub fast float 2.000000e+00, %4134
  %4155 = bitcast float %4152 to i32
  %4156 = sub nsw i32 2129859010, %4155
  %4157 = bitcast i32 %4156 to float
  %4158 = fmul fast float %4157, %4154
  %4159 = fadd fast float %4158, -1.000000e+00
  %4160 = bitcast float %4153 to i32
  %4161 = sub nsw i32 2129859010, %4160
  %4162 = bitcast i32 %4161 to float
  %4163 = fmul fast float %4162, %4134
  %4164 = fadd fast float %4163, 1.000000e+00
  %4165 = fadd fast float %4145, %4135
  %4166 = fmul fast float %4165, %4117
  %4167 = fadd fast float %4159, %4136
  %4168 = fmul fast float %4167, %4118
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %4166, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = fmul fast float %4170, %4138
  %4172 = fadd fast float %4150, %4135
  %4173 = fmul fast float %4172, %4117
  %4174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %4173, float %4168, float undef, float undef, i32 0, i32 0, i32 undef, float %4122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = fmul fast float %4175, %4139
  %4177 = fadd fast float %4164, %4136
  %4178 = fmul fast float %4177, %4118
  %4179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %4166, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float %4122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = fmul fast float %4180, %4138
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %6, %dx.types.Handle %31, float %4173, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float %4122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = fmul fast float %4183, %4139
  %4185 = fadd fast float %4184, %4181
  %4186 = fmul fast float %4185, %4153
  %4187 = fadd fast float %4176, %4171
  %4188 = fmul fast float %4187, %4152
  %4189 = fadd fast float %4188, %4186
  %4190 = fmul fast float %4189, 6.250000e-02
  br label %4276

; <label>:4191                                    ; preds = %4108
  %4192 = fmul fast float %274, 0x401921FB60000000
  %4193 = call float @dx.op.unary.f32(i32 13, float %4192)  ; Sin(value)
  %4194 = call float @dx.op.unary.f32(i32 12, float %4192)  ; Cos(value)
  %4195 = fsub fast float -0.000000e+00, %4193
  br label %4196

; <label>:4196                                    ; preds = %4245, %4191
  %4197 = phi float [ 0.000000e+00, %4191 ], [ %4240, %4245 ]
  %4198 = phi float [ 0.000000e+00, %4191 ], [ %4242, %4245 ]
  %4199 = phi i32 [ 0, %4191 ], [ %4246, %4245 ]
  %4200 = mul i32 %4199, 2
  %4201 = add i32 0, %4200
  %4202 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4201
  %4203 = load float, float* %4202, align 4
  %4204 = mul i32 %4199, 2
  %4205 = add i32 1, %4204
  %4206 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4205
  %4207 = load float, float* %4206, align 4
  %4208 = fmul fast float %4203, %4194
  %4209 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4195, float %4208)  ; FMad(a,b,c)
  %4210 = fmul fast float %4203, %4193
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4194, float %4210)  ; FMad(a,b,c)
  %4212 = fmul fast float %4209, %4120
  %4213 = fmul fast float %4211, %4120
  %4214 = fadd fast float %4212, %3148
  %4215 = fadd fast float %4213, %3149
  %4216 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %30, float %4214, float %4215, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.f32 %4216, 1
  %4219 = extractvalue %dx.types.ResRet.f32 %4216, 2
  %4220 = extractvalue %dx.types.ResRet.f32 %4216, 3
  %4221 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %4217, float* %4221, align 4
  %4222 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %4218, float* %4222, align 4
  %4223 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %4219, float* %4223, align 4
  %4224 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %4220, float* %4224, align 4
  %4225 = fsub fast float %4217, %4122
  %4226 = fcmp fast olt float %4225, 0.000000e+00
  %4227 = select i1 %4226, float 0.000000e+00, float 1.000000e+00
  %4228 = fadd fast float %4227, %4197
  %4229 = fmul fast float %4227, %4225
  %4230 = fadd fast float %4229, %4198
  br label %4231

; <label>:4231                                    ; preds = %4231, %4196
  %4232 = phi i32 [ 1, %4196 ], [ %4243, %4231 ]
  %4233 = phi float [ %4230, %4196 ], [ %4242, %4231 ]
  %4234 = phi float [ %4228, %4196 ], [ %4240, %4231 ]
  %4235 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %4232
  %4236 = load float, float* %4235, align 4, !tbaa !59
  %4237 = fsub fast float %4236, %4122
  %4238 = fcmp fast olt float %4237, 0.000000e+00
  %4239 = select i1 %4238, float 0.000000e+00, float 1.000000e+00
  %4240 = fadd fast float %4239, %4234
  %4241 = fmul fast float %4239, %4237
  %4242 = fadd fast float %4241, %4233
  %4243 = add nuw nsw i32 %4232, 1
  %4244 = icmp eq i32 %4243, 4
  br i1 %4244, label %4245, label %4231, !llvm.loop !61

; <label>:4245                                    ; preds = %4231
  %4246 = add nuw nsw i32 %4199, 1
  %4247 = icmp eq i32 %4246, 8
  br i1 %4247, label %4248, label %4196, !llvm.loop !63

; <label>:4248                                    ; preds = %4245
  %4249 = fdiv fast float 1.000000e+00, %4240
  %4250 = fmul fast float %4249, %4242
  %4251 = fdiv fast float 1.000000e+00, %4122
  %4252 = fmul fast float %4250, %4251
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = call float @dx.op.binary.f32(i32 35, float %4253, float 0.000000e+00)  ; FMax(a,b)
  %4255 = fmul fast float %4240, 3.125000e-02
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, 2.000000e+00
  %4258 = fadd fast float %4257, -1.000000e+00
  %4259 = fcmp fast ogt float %4258, 0.000000e+00
  %4260 = fcmp fast olt float %4258, 0.000000e+00
  %4261 = zext i1 %4259 to i32
  %4262 = zext i1 %4260 to i32
  %4263 = sub nsw i32 %4261, %4262
  %4264 = sitofp i32 %4263 to float
  %4265 = fmul fast float %4264, %4258
  %4266 = fsub fast float 1.000000e+00, %4265
  %4267 = fmul fast float %4266, %4266
  %4268 = fmul fast float %4267, %4266
  %4269 = fsub fast float %4266, %4268
  %4270 = fmul fast float %4269, %4254
  %4271 = fsub fast float 1.000000e+00, %4268
  %4272 = fsub fast float %4271, %4270
  %4273 = fmul fast float %4264, 5.000000e-01
  %4274 = fmul fast float %4273, %4272
  %4275 = fsub fast float 5.000000e-01, %4274
  br label %4276

; <label>:4276                                    ; preds = %4248, %4124, %4105
  %4277 = phi float [ 1.000000e+00, %4105 ], [ %4190, %4124 ], [ %4275, %4248 ]
  %4278 = fcmp fast ogt float %3257, 0.000000e+00
  br i1 %4278, label %4279, label %4601, !dx.controlflow.hints !92

; <label>:4279                                    ; preds = %4276
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 2
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = fmul fast float %4281, %236
  %4285 = fadd fast float %4283, %263
  %4286 = fadd fast float %4285, %4284
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = call float @dx.op.binary.f32(i32 35, float %4286, float 0.000000e+00)  ; FMax(a,b)
  %4293 = fadd fast float %4292, 0x3F10000000000000
  %4294 = fcmp fast oeq float %4291, 0.000000e+00
  br i1 %112, label %4295, label %4448, !dx.controlflow.hints !93

; <label>:4295                                    ; preds = %4279
  br i1 %4294, label %4296, label %4363, !dx.controlflow.hints !58

; <label>:4296                                    ; preds = %4295
  %4297 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4298 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4299 = fmul fast float %4298, %255
  %4300 = fmul fast float %4297, %259
  %4301 = fadd fast float %4299, 5.000000e-01
  %4302 = call float @dx.op.unary.f32(i32 27, float %4301)  ; Round_ni(value)
  %4303 = fadd fast float %4300, 5.000000e-01
  %4304 = call float @dx.op.unary.f32(i32 27, float %4303)  ; Round_ni(value)
  %4305 = fsub fast float %4301, %4302
  %4306 = fsub fast float %4303, %4304
  %4307 = fadd fast float %4302, -5.000000e-01
  %4308 = fadd fast float %4304, -5.000000e-01
  %4309 = fmul fast float %4305, 2.000000e+00
  %4310 = fsub fast float 3.000000e+00, %4309
  %4311 = fadd fast float %4309, 1.000000e+00
  %4312 = fsub fast float 2.000000e+00, %4305
  %4313 = bitcast float %4310 to i32
  %4314 = sub nsw i32 2129859010, %4313
  %4315 = bitcast i32 %4314 to float
  %4316 = fmul fast float %4315, %4312
  %4317 = fadd fast float %4316, -1.000000e+00
  %4318 = bitcast float %4311 to i32
  %4319 = sub nsw i32 2129859010, %4318
  %4320 = bitcast i32 %4319 to float
  %4321 = fmul fast float %4320, %4305
  %4322 = fadd fast float %4321, 1.000000e+00
  %4323 = fmul fast float %4306, 2.000000e+00
  %4324 = fsub fast float 3.000000e+00, %4323
  %4325 = fadd fast float %4323, 1.000000e+00
  %4326 = fsub fast float 2.000000e+00, %4306
  %4327 = bitcast float %4324 to i32
  %4328 = sub nsw i32 2129859010, %4327
  %4329 = bitcast i32 %4328 to float
  %4330 = fmul fast float %4329, %4326
  %4331 = fadd fast float %4330, -1.000000e+00
  %4332 = bitcast float %4325 to i32
  %4333 = sub nsw i32 2129859010, %4332
  %4334 = bitcast i32 %4333 to float
  %4335 = fmul fast float %4334, %4306
  %4336 = fadd fast float %4335, 1.000000e+00
  %4337 = fadd fast float %4317, %4307
  %4338 = fmul fast float %4337, %4288
  %4339 = fadd fast float %4331, %4308
  %4340 = fmul fast float %4339, %4289
  %4341 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %4338, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = fmul fast float %4342, %4310
  %4344 = fadd fast float %4322, %4307
  %4345 = fmul fast float %4344, %4288
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %4345, float %4340, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = fmul fast float %4347, %4311
  %4349 = fadd fast float %4336, %4308
  %4350 = fmul fast float %4349, %4289
  %4351 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %4338, float %4350, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = fmul fast float %4352, %4310
  %4354 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %31, float %4345, float %4350, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = fmul fast float %4355, %4311
  %4357 = fadd fast float %4356, %4353
  %4358 = fmul fast float %4357, %4325
  %4359 = fadd fast float %4348, %4343
  %4360 = fmul fast float %4359, %4324
  %4361 = fadd fast float %4360, %4358
  %4362 = fmul fast float %4361, 6.250000e-02
  br label %4601

; <label>:4363                                    ; preds = %4295
  %4364 = fmul fast float %274, 0x401921FB60000000
  %4365 = call float @dx.op.unary.f32(i32 13, float %4364)  ; Sin(value)
  %4366 = call float @dx.op.unary.f32(i32 12, float %4364)  ; Cos(value)
  %4367 = fsub fast float -0.000000e+00, %4365
  br label %4368

; <label>:4368                                    ; preds = %4417, %4363
  %4369 = phi float [ 0.000000e+00, %4363 ], [ %4412, %4417 ]
  %4370 = phi float [ 0.000000e+00, %4363 ], [ %4414, %4417 ]
  %4371 = phi i32 [ 0, %4363 ], [ %4418, %4417 ]
  %4372 = mul i32 %4371, 2
  %4373 = add i32 0, %4372
  %4374 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4373
  %4375 = load float, float* %4374, align 4
  %4376 = mul i32 %4371, 2
  %4377 = add i32 1, %4376
  %4378 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4377
  %4379 = load float, float* %4378, align 4
  %4380 = fmul fast float %4375, %4366
  %4381 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4367, float %4380)  ; FMad(a,b,c)
  %4382 = fmul fast float %4375, %4365
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4379, float %4366, float %4382)  ; FMad(a,b,c)
  %4384 = fmul fast float %4381, %4291
  %4385 = fmul fast float %4383, %4291
  %4386 = fadd fast float %4384, %255
  %4387 = fadd fast float %4385, %259
  %4388 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %30, float %4386, float %4387, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4393 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 0
  store float %4389, float* %4393, align 4
  %4394 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 1
  store float %4390, float* %4394, align 4
  %4395 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 2
  store float %4391, float* %4395, align 4
  %4396 = getelementptr inbounds [4 x float], [4 x float]* %48, i32 0, i32 3
  store float %4392, float* %4396, align 4
  %4397 = fsub fast float %4389, %4293
  %4398 = fcmp fast olt float %4397, 0.000000e+00
  %4399 = select i1 %4398, float 0.000000e+00, float 1.000000e+00
  %4400 = fadd fast float %4399, %4369
  %4401 = fmul fast float %4399, %4397
  %4402 = fadd fast float %4401, %4370
  br label %4403

; <label>:4403                                    ; preds = %4403, %4368
  %4404 = phi i32 [ 1, %4368 ], [ %4415, %4403 ]
  %4405 = phi float [ %4402, %4368 ], [ %4414, %4403 ]
  %4406 = phi float [ %4400, %4368 ], [ %4412, %4403 ]
  %4407 = getelementptr [4 x float], [4 x float]* %48, i32 0, i32 %4404
  %4408 = load float, float* %4407, align 4, !tbaa !59
  %4409 = fsub fast float %4408, %4293
  %4410 = fcmp fast olt float %4409, 0.000000e+00
  %4411 = select i1 %4410, float 0.000000e+00, float 1.000000e+00
  %4412 = fadd fast float %4411, %4406
  %4413 = fmul fast float %4411, %4409
  %4414 = fadd fast float %4413, %4405
  %4415 = add nuw nsw i32 %4404, 1
  %4416 = icmp eq i32 %4415, 4
  br i1 %4416, label %4417, label %4403, !llvm.loop !61

; <label>:4417                                    ; preds = %4403
  %4418 = add nuw nsw i32 %4371, 1
  %4419 = icmp eq i32 %4418, 8
  br i1 %4419, label %4420, label %4368, !llvm.loop !63

; <label>:4420                                    ; preds = %4417
  %4421 = fdiv fast float 1.000000e+00, %4412
  %4422 = fmul fast float %4421, %4414
  %4423 = fdiv fast float 1.000000e+00, %4293
  %4424 = fmul fast float %4422, %4423
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4425, float 0.000000e+00)  ; FMax(a,b)
  %4427 = fmul fast float %4412, 3.125000e-02
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4428, 2.000000e+00
  %4430 = fadd fast float %4429, -1.000000e+00
  %4431 = fcmp fast ogt float %4430, 0.000000e+00
  %4432 = fcmp fast olt float %4430, 0.000000e+00
  %4433 = zext i1 %4431 to i32
  %4434 = zext i1 %4432 to i32
  %4435 = sub nsw i32 %4433, %4434
  %4436 = sitofp i32 %4435 to float
  %4437 = fmul fast float %4436, %4430
  %4438 = fsub fast float 1.000000e+00, %4437
  %4439 = fmul fast float %4438, %4438
  %4440 = fmul fast float %4439, %4438
  %4441 = fsub fast float %4438, %4440
  %4442 = fmul fast float %4441, %4426
  %4443 = fsub fast float 1.000000e+00, %4440
  %4444 = fsub fast float %4443, %4442
  %4445 = fmul fast float %4436, 5.000000e-01
  %4446 = fmul fast float %4445, %4444
  %4447 = fsub fast float 5.000000e-01, %4446
  br label %4601

; <label>:4448                                    ; preds = %4279
  br i1 %4294, label %4449, label %4516, !dx.controlflow.hints !58

; <label>:4449                                    ; preds = %4448
  %4450 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4452 = fmul fast float %4451, %255
  %4453 = fmul fast float %4450, %259
  %4454 = fadd fast float %4452, 5.000000e-01
  %4455 = call float @dx.op.unary.f32(i32 27, float %4454)  ; Round_ni(value)
  %4456 = fadd fast float %4453, 5.000000e-01
  %4457 = call float @dx.op.unary.f32(i32 27, float %4456)  ; Round_ni(value)
  %4458 = fsub fast float %4454, %4455
  %4459 = fsub fast float %4456, %4457
  %4460 = fadd fast float %4455, -5.000000e-01
  %4461 = fadd fast float %4457, -5.000000e-01
  %4462 = fmul fast float %4458, 2.000000e+00
  %4463 = fsub fast float 3.000000e+00, %4462
  %4464 = fadd fast float %4462, 1.000000e+00
  %4465 = fsub fast float 2.000000e+00, %4458
  %4466 = bitcast float %4463 to i32
  %4467 = sub nsw i32 2129859010, %4466
  %4468 = bitcast i32 %4467 to float
  %4469 = fmul fast float %4468, %4465
  %4470 = fadd fast float %4469, -1.000000e+00
  %4471 = bitcast float %4464 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, %4458
  %4475 = fadd fast float %4474, 1.000000e+00
  %4476 = fmul fast float %4459, 2.000000e+00
  %4477 = fsub fast float 3.000000e+00, %4476
  %4478 = fadd fast float %4476, 1.000000e+00
  %4479 = fsub fast float 2.000000e+00, %4459
  %4480 = bitcast float %4477 to i32
  %4481 = sub nsw i32 2129859010, %4480
  %4482 = bitcast i32 %4481 to float
  %4483 = fmul fast float %4482, %4479
  %4484 = fadd fast float %4483, -1.000000e+00
  %4485 = bitcast float %4478 to i32
  %4486 = sub nsw i32 2129859010, %4485
  %4487 = bitcast i32 %4486 to float
  %4488 = fmul fast float %4487, %4459
  %4489 = fadd fast float %4488, 1.000000e+00
  %4490 = fadd fast float %4470, %4460
  %4491 = fmul fast float %4490, %4288
  %4492 = fadd fast float %4484, %4461
  %4493 = fmul fast float %4492, %4289
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %4491, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = fmul fast float %4495, %4463
  %4497 = fadd fast float %4475, %4460
  %4498 = fmul fast float %4497, %4288
  %4499 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %4498, float %4493, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = fmul fast float %4500, %4464
  %4502 = fadd fast float %4489, %4461
  %4503 = fmul fast float %4502, %4289
  %4504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %4491, float %4503, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = fmul fast float %4505, %4463
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %31, float %4498, float %4503, float undef, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = fmul fast float %4508, %4464
  %4510 = fadd fast float %4509, %4506
  %4511 = fmul fast float %4510, %4478
  %4512 = fadd fast float %4501, %4496
  %4513 = fmul fast float %4512, %4477
  %4514 = fadd fast float %4513, %4511
  %4515 = fmul fast float %4514, 6.250000e-02
  br label %4601

; <label>:4516                                    ; preds = %4448
  %4517 = fmul fast float %274, 0x401921FB60000000
  %4518 = call float @dx.op.unary.f32(i32 13, float %4517)  ; Sin(value)
  %4519 = call float @dx.op.unary.f32(i32 12, float %4517)  ; Cos(value)
  %4520 = fsub fast float -0.000000e+00, %4518
  br label %4521

; <label>:4521                                    ; preds = %4570, %4516
  %4522 = phi float [ 0.000000e+00, %4516 ], [ %4565, %4570 ]
  %4523 = phi float [ 0.000000e+00, %4516 ], [ %4567, %4570 ]
  %4524 = phi i32 [ 0, %4516 ], [ %4571, %4570 ]
  %4525 = mul i32 %4524, 2
  %4526 = add i32 0, %4525
  %4527 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4526
  %4528 = load float, float* %4527, align 4
  %4529 = mul i32 %4524, 2
  %4530 = add i32 1, %4529
  %4531 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4530
  %4532 = load float, float* %4531, align 4
  %4533 = fmul fast float %4528, %4519
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4520, float %4533)  ; FMad(a,b,c)
  %4535 = fmul fast float %4528, %4518
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4532, float %4519, float %4535)  ; FMad(a,b,c)
  %4537 = fmul fast float %4534, %4291
  %4538 = fmul fast float %4536, %4291
  %4539 = fadd fast float %4537, %255
  %4540 = fadd fast float %4538, %259
  %4541 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %30, float %4539, float %4540, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.ResRet.f32 %4541, 2
  %4545 = extractvalue %dx.types.ResRet.f32 %4541, 3
  %4546 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 0
  store float %4542, float* %4546, align 4
  %4547 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 1
  store float %4543, float* %4547, align 4
  %4548 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 2
  store float %4544, float* %4548, align 4
  %4549 = getelementptr inbounds [4 x float], [4 x float]* %47, i32 0, i32 3
  store float %4545, float* %4549, align 4
  %4550 = fsub fast float %4542, %4293
  %4551 = fcmp fast olt float %4550, 0.000000e+00
  %4552 = select i1 %4551, float 0.000000e+00, float 1.000000e+00
  %4553 = fadd fast float %4552, %4522
  %4554 = fmul fast float %4552, %4550
  %4555 = fadd fast float %4554, %4523
  br label %4556

; <label>:4556                                    ; preds = %4556, %4521
  %4557 = phi i32 [ 1, %4521 ], [ %4568, %4556 ]
  %4558 = phi float [ %4555, %4521 ], [ %4567, %4556 ]
  %4559 = phi float [ %4553, %4521 ], [ %4565, %4556 ]
  %4560 = getelementptr [4 x float], [4 x float]* %47, i32 0, i32 %4557
  %4561 = load float, float* %4560, align 4, !tbaa !59
  %4562 = fsub fast float %4561, %4293
  %4563 = fcmp fast olt float %4562, 0.000000e+00
  %4564 = select i1 %4563, float 0.000000e+00, float 1.000000e+00
  %4565 = fadd fast float %4564, %4559
  %4566 = fmul fast float %4564, %4562
  %4567 = fadd fast float %4566, %4558
  %4568 = add nuw nsw i32 %4557, 1
  %4569 = icmp eq i32 %4568, 4
  br i1 %4569, label %4570, label %4556, !llvm.loop !61

; <label>:4570                                    ; preds = %4556
  %4571 = add nuw nsw i32 %4524, 1
  %4572 = icmp eq i32 %4571, 8
  br i1 %4572, label %4573, label %4521, !llvm.loop !63

; <label>:4573                                    ; preds = %4570
  %4574 = fdiv fast float 1.000000e+00, %4565
  %4575 = fmul fast float %4574, %4567
  %4576 = fdiv fast float 1.000000e+00, %4293
  %4577 = fmul fast float %4575, %4576
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = call float @dx.op.binary.f32(i32 35, float %4578, float 0.000000e+00)  ; FMax(a,b)
  %4580 = fmul fast float %4565, 3.125000e-02
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fmul fast float %4581, 2.000000e+00
  %4583 = fadd fast float %4582, -1.000000e+00
  %4584 = fcmp fast ogt float %4583, 0.000000e+00
  %4585 = fcmp fast olt float %4583, 0.000000e+00
  %4586 = zext i1 %4584 to i32
  %4587 = zext i1 %4585 to i32
  %4588 = sub nsw i32 %4586, %4587
  %4589 = sitofp i32 %4588 to float
  %4590 = fmul fast float %4589, %4583
  %4591 = fsub fast float 1.000000e+00, %4590
  %4592 = fmul fast float %4591, %4591
  %4593 = fmul fast float %4592, %4591
  %4594 = fsub fast float %4591, %4593
  %4595 = fmul fast float %4594, %4579
  %4596 = fsub fast float 1.000000e+00, %4593
  %4597 = fsub fast float %4596, %4595
  %4598 = fmul fast float %4589, 5.000000e-01
  %4599 = fmul fast float %4598, %4597
  %4600 = fsub fast float 5.000000e-01, %4599
  br label %4601

; <label>:4601                                    ; preds = %4573, %4449, %4420, %4296, %4276
  %4602 = phi float [ 1.000000e+00, %4276 ], [ %4362, %4296 ], [ %4447, %4420 ], [ %4515, %4449 ], [ %4600, %4573 ]
  %4603 = fsub fast float %4106, %3935
  %4604 = fmul fast float %4603, %3227
  %4605 = fadd fast float %4604, %3935
  %4606 = fsub fast float %4277, %4605
  %4607 = fmul fast float %4606, %3226
  %4608 = fadd fast float %4607, %4605
  %4609 = fsub fast float %4602, %4608
  %4610 = fmul fast float %4609, %3257
  %4611 = fadd fast float %4610, %4608
  br label %4612

; <label>:4612                                    ; preds = %4601, %3130, %1668, %1597, %1275, %1001, %998, %968, %844, %791, %667, %614, %490, %437, %313
  %4613 = phi float [ %4611, %4601 ], [ %3140, %3130 ], [ %379, %313 ], [ %464, %437 ], [ %556, %490 ], [ %641, %614 ], [ %733, %667 ], [ %818, %791 ], [ %910, %844 ], [ %995, %968 ], [ %1667, %1597 ], [ 1.000000e+00, %1001 ], [ 1.000000e+00, %1275 ], [ 1.000000e+00, %998 ], [ 0.000000e+00, %1668 ]
  %4614 = fcmp fast une float %4613, 0.000000e+00
  br i1 %4614, label %4615, label %4720, !dx.controlflow.hints !94

; <label>:4615                                    ; preds = %4612
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4618 = fcmp fast ugt float %4617, 0.000000e+00
  br i1 %4618, label %4619, label %4654, !dx.controlflow.hints !95

; <label>:4619                                    ; preds = %4615
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4630 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4631 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4636 = fadd fast float %4633, %175
  %4637 = fadd fast float %4634, %176
  %4638 = fadd fast float %4635, %177
  %4639 = fmul fast float %4636, %4621
  %4640 = call float @dx.op.tertiary.f32(i32 46, float %4622, float %4637, float %4639)  ; FMad(a,b,c)
  %4641 = call float @dx.op.tertiary.f32(i32 46, float %4623, float %4638, float %4640)  ; FMad(a,b,c)
  %4642 = fadd fast float %4641, %4624
  %4643 = fmul fast float %4636, %4626
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4637, float %4643)  ; FMad(a,b,c)
  %4645 = call float @dx.op.tertiary.f32(i32 46, float %4628, float %4638, float %4644)  ; FMad(a,b,c)
  %4646 = fadd fast float %4645, %4629
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %26, float %4642, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = fmul fast float %4648, %4631
  %4650 = fadd fast float %4649, %4630
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, %4617
  %4653 = fsub fast float 1.000000e+00, %4652
  br label %4654

; <label>:4654                                    ; preds = %4619, %4615
  %4655 = phi float [ %4653, %4619 ], [ 1.000000e+00, %4615 ]
  %4656 = fmul fast float %4655, %4613
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4660 = extractvalue %dx.types.CBufRet.f32 %4657, 2
  %4661 = fadd fast float %4658, %175
  %4662 = fadd fast float %4659, %176
  %4663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4664 = extractvalue %dx.types.CBufRet.f32 %4663, 1
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4669 = fsub fast float -0.000000e+00, %4661
  %4670 = fsub fast float -0.000000e+00, %4662
  %4671 = fsub fast float -0.000000e+00, %177
  %4672 = fsub fast float %4671, %4660
  %4673 = fadd fast float %4672, %4664
  %4674 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4669, float %4670, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4676 = fdiv fast float 1.000000e+00, %4675
  %4677 = fmul fast float %4676, %4674
  %4678 = fmul fast float %4666, %4677
  %4679 = fmul fast float %4667, %4677
  %4680 = fadd fast float %4678, %4661
  %4681 = fadd fast float %4679, %4662
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 1
  %4685 = fsub fast float %4680, %4683
  %4686 = fsub fast float %4681, %4684
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 2
  %4689 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4690 = fmul fast float %4685, %4688
  %4691 = fmul fast float %4686, %4689
  %4692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.i32 %4692, 3
  %4694 = icmp eq i32 %4693, 0
  br i1 %4694, label %4700, label %4695, !dx.controlflow.hints !96

; <label>:4695                                    ; preds = %4654
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %28, float %4690, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.ResRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.ResRet.f32 %4696, 2
  br label %4705

; <label>:4700                                    ; preds = %4654
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4690, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.ResRet.f32 %4701, 1
  %4704 = extractvalue %dx.types.ResRet.f32 %4701, 2
  br label %4705

; <label>:4705                                    ; preds = %4700, %4695
  %4706 = phi float [ %4697, %4695 ], [ %4702, %4700 ]
  %4707 = phi float [ %4698, %4695 ], [ %4703, %4700 ]
  %4708 = phi float [ %4699, %4695 ], [ %4704, %4700 ]
  %4709 = extractvalue %dx.types.CBufRet.f32 %4663, 2
  %4710 = fmul fast float %4709, %4706
  %4711 = extractvalue %dx.types.CBufRet.f32 %4663, 0
  %4712 = fsub fast float %4677, %4711
  %4713 = fsub fast float %4712, %4710
  %4714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4713)  ; FMax(a,b)
  %4715 = fmul fast float %4714, %4707
  %4716 = call float @dx.op.binary.f32(i32 36, float %4708, float %4715)  ; FMin(a,b)
  %4717 = fmul fast float %4716, 0xBFF7154760000000
  %4718 = call float @dx.op.unary.f32(i32 21, float %4717)  ; Exp(value)
  %4719 = fmul fast float %4656, %4718
  br label %4720

; <label>:4720                                    ; preds = %4705, %4612
  %4721 = phi float [ %4719, %4705 ], [ %4613, %4612 ]
  %4722 = fcmp fast ogt float %4721, 0.000000e+00
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4725 = fcmp fast ogt float %226, %4724
  %4726 = and i1 %4722, %4725
  br i1 %4726, label %4727, label %4996, !dx.controlflow.hints !97

; <label>:4727                                    ; preds = %4720
  %4728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.i32 %4728, 0
  %4730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.i32 %4730, 0
  %4732 = select i1 %112, i32 %4729, i32 %4731
  %4733 = icmp sgt i32 %4732, 0
  br i1 %4733, label %4734, label %4996, !dx.controlflow.hints !98

; <label>:4734                                    ; preds = %4727
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 1
  %4739 = select i1 %112, float %4736, float %4738
  %4740 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4741 = extractvalue %dx.types.CBufRet.f32 %4737, 2
  %4742 = select i1 %112, float %4740, float %4741
  %4743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.i32 %4743, 0
  %4745 = uitofp i32 %4744 to float
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4749 = fmul fast float %4747, 5.000000e-01
  %4750 = fmul fast float %4748, 5.000000e-01
  %4751 = fsub fast float %108, %4749
  %4752 = fsub fast float %109, %4750
  %4753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %24, %dx.types.Handle %30, float %4751, float %4752, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = fcmp fast ogt float %4754, -1.000000e+00
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 1
  %4760 = select i1 %4757, float %4759, float 1.000000e+00
  %4761 = fadd fast float %4754, 1.000000e+00
  %4762 = fmul fast float %4760, %4761
  %4763 = call float @dx.op.unary.f32(i32 6, float %4762)  ; FAbs(value)
  %4764 = fcmp fast ogt float %4755, -1.000000e+00
  %4765 = select i1 %4764, float %4759, float 1.000000e+00
  %4766 = fadd fast float %4755, 1.000000e+00
  %4767 = fmul fast float %4765, %4766
  %4768 = call float @dx.op.unary.f32(i32 6, float %4767)  ; FAbs(value)
  %4769 = fcmp fast ogt float %4756, -1.000000e+00
  %4770 = select i1 %4769, float %4759, float 1.000000e+00
  %4771 = fadd fast float %4756, 1.000000e+00
  %4772 = fmul fast float %4770, %4771
  %4773 = call float @dx.op.unary.f32(i32 6, float %4772)  ; FAbs(value)
  %4774 = fadd fast float %4749, %108
  %4775 = fadd fast float %4750, %109
  %4776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %24, %dx.types.Handle %30, float %4774, float %4775, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4779 = fcmp fast ogt float %4777, -1.000000e+00
  %4780 = select i1 %4779, float %4759, float 1.000000e+00
  %4781 = fadd fast float %4777, 1.000000e+00
  %4782 = fmul fast float %4780, %4781
  %4783 = call float @dx.op.unary.f32(i32 6, float %4782)  ; FAbs(value)
  %4784 = fcmp fast ogt float %4778, -1.000000e+00
  %4785 = select i1 %4784, float %4759, float 1.000000e+00
  %4786 = fadd fast float %4778, 1.000000e+00
  %4787 = fmul fast float %4785, %4786
  %4788 = call float @dx.op.unary.f32(i32 6, float %4787)  ; FAbs(value)
  %4789 = fsub fast float %4773, %4768
  %4790 = fsub fast float %4783, %4768
  %4791 = fsub fast float %4763, %4768
  %4792 = fsub fast float %4788, %4768
  %4793 = call float @dx.op.unary.f32(i32 6, float %4790)  ; FAbs(value)
  %4794 = call float @dx.op.unary.f32(i32 6, float %4789)  ; FAbs(value)
  %4795 = call float @dx.op.binary.f32(i32 35, float %4794, float %4793)  ; FMax(a,b)
  %4796 = call float @dx.op.unary.f32(i32 6, float %4792)  ; FAbs(value)
  %4797 = call float @dx.op.unary.f32(i32 6, float %4791)  ; FAbs(value)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4797, float %4796)  ; FMax(a,b)
  %4799 = fadd fast float %4790, %4789
  %4800 = call float @dx.op.unary.f32(i32 6, float %4799)  ; FAbs(value)
  %4801 = fadd fast float %4792, %4791
  %4802 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4803 = fsub fast float %4798, %4802
  %4804 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4805 = fsub fast float %4795, %4800
  %4806 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float %4804)  ; FMax(a,b)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.CBufRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.CBufRet.f32 %4820, 2
  %4824 = extractvalue %dx.types.CBufRet.f32 %4820, 3
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 0
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4829 = extractvalue %dx.types.CBufRet.f32 %4825, 3
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4840 = select i1 %112, float %4811, float %4826
  %4841 = select i1 %112, float %4816, float %4831
  %4842 = select i1 %112, float %4821, float %4836
  %4843 = select i1 %112, float %4812, float %4827
  %4844 = select i1 %112, float %4817, float %4832
  %4845 = select i1 %112, float %4822, float %4837
  %4846 = select i1 %112, float %4813, float %4828
  %4847 = select i1 %112, float %4818, float %4833
  %4848 = select i1 %112, float %4823, float %4838
  %4849 = select i1 %112, float %4814, float %4829
  %4850 = select i1 %112, float %4819, float %4834
  %4851 = select i1 %112, float %4824, float %4839
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = fdiv fast float 1.000000e+00, %119
  %4857 = fmul fast float %4747, %103
  %4858 = fmul fast float %4748, %104
  %4859 = fmul fast float %4853, %4739
  %4860 = fmul fast float %4854, %4739
  %4861 = fmul fast float %4855, %4739
  %4862 = fadd fast float %4859, %175
  %4863 = fadd fast float %4860, %176
  %4864 = fadd fast float %4861, %177
  %4865 = fmul fast float %4862, %4840
  %4866 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4843, float %4865)  ; FMad(a,b,c)
  %4867 = call float @dx.op.tertiary.f32(i32 46, float %4864, float %4846, float %4866)  ; FMad(a,b,c)
  %4868 = fadd fast float %4867, %4849
  %4869 = fmul fast float %4862, %4841
  %4870 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4844, float %4869)  ; FMad(a,b,c)
  %4871 = call float @dx.op.tertiary.f32(i32 46, float %4864, float %4847, float %4870)  ; FMad(a,b,c)
  %4872 = fadd fast float %4871, %4850
  %4873 = fmul fast float %4862, %4842
  %4874 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4845, float %4873)  ; FMad(a,b,c)
  %4875 = call float @dx.op.tertiary.f32(i32 46, float %4864, float %4848, float %4874)  ; FMad(a,b,c)
  %4876 = fadd fast float %4875, %4851
  %4877 = fdiv fast float 1.000000e+00, %4876
  %4878 = fmul fast float %4868, 5.000000e-01
  %4879 = fmul fast float %4872, -5.000000e-01
  %4880 = fmul fast float %4878, %4877
  %4881 = fmul fast float %4879, %4877
  %4882 = fsub fast float 5.000000e-01, %4857
  %4883 = fadd fast float %4882, %4880
  %4884 = fsub fast float 5.000000e-01, %4858
  %4885 = fadd fast float %4884, %4881
  %4886 = fsub fast float %4877, %4856
  %4887 = call float @dx.op.dot2.f32(i32 54, float %4883, float %4885, float %4883, float %4885)  ; Dot2(ax,ay,bx,by)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4887, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4889 = call float @dx.op.dot2.f32(i32 54, float %4808, float %4809, float %4808, float %4809)  ; Dot2(ax,ay,bx,by)
  %4890 = fmul fast float %4889, %4888
  %4891 = call float @dx.op.unary.f32(i32 25, float %4890)  ; Rsqrt(value)
  %4892 = fmul fast float %4891, %4883
  %4893 = fmul fast float %4891, %4885
  %4894 = fadd fast float %4892, %4857
  %4895 = fadd fast float %4893, %4858
  %4896 = fmul fast float %4883, %4808
  %4897 = fmul fast float %4885, %4809
  %4898 = fmul fast float %4896, %4896
  %4899 = fmul fast float %4897, %4897
  %4900 = fadd fast float %4898, %4899
  %4901 = call float @dx.op.unary.f32(i32 24, float %4900)  ; Sqrt(value)
  %4902 = fdiv fast float 1.000000e+00, %4901
  %4903 = fmul fast float %4901, 3.906250e-03
  %4904 = fmul fast float %4807, 0x3F70624DE0000000
  %4905 = fadd fast float %4904, 0x3F70624DE0000000
  br label %4906

; <label>:4906                                    ; preds = %4962, %4734
  %4907 = phi float [ %4938, %4962 ], [ %119, %4734 ]
  %4908 = phi float [ %4925, %4962 ], [ %119, %4734 ]
  %4909 = phi float [ %4908, %4962 ], [ %119, %4734 ]
  %4910 = phi i32 [ %4963, %4962 ], [ 0, %4734 ]
  %4911 = sitofp i32 %4910 to float
  %4912 = fadd fast float %274, 5.000000e-01
  %4913 = call float @dx.op.unary.f32(i32 22, float %4912)  ; Frc(value)
  %4914 = fadd fast float %4911, %4913
  %4915 = sitofp i32 %4732 to float
  %4916 = fdiv fast float %4914, %4915
  %4917 = fmul fast float %4916, %4916
  %4918 = call float @dx.op.binary.f32(i32 36, float %4917, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4919 = fmul fast float %4918, %4883
  %4920 = fmul fast float %4918, %4885
  %4921 = fmul fast float %4918, %4886
  %4922 = fadd fast float %4919, %4894
  %4923 = fadd fast float %4920, %4895
  %4924 = fadd fast float %4921, %4856
  %4925 = fdiv fast float 1.000000e+00, %4924
  %4926 = icmp ne i32 %4744, 0
  %4927 = fmul fast float %4903, %4918
  %4928 = call float @dx.op.binary.f32(i32 36, float %4927, float %4745)  ; FMin(a,b)
  %4929 = select i1 %4926, float %4928, float 0.000000e+00
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %30, float %4922, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float %4929)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = fcmp fast ogt float %4931, -1.000000e+00
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4935 = select i1 %4932, float %4934, float 1.000000e+00
  %4936 = fadd fast float %4931, 1.000000e+00
  %4937 = fmul fast float %4935, %4936
  %4938 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4939 = fmul fast float %4938, %4905
  %4940 = fsub fast float %4925, %4938
  %4941 = fsub fast float %4940, %4939
  %4942 = fcmp fast ogt float %4941, 0.000000e+00
  %4943 = fcmp fast ogt float %4742, 0.000000e+00
  br i1 %4943, label %4944, label %4947, !dx.controlflow.hints !99

; <label>:4944                                    ; preds = %4906
  %4945 = fsub fast float %4925, %4909
  %4946 = call float @dx.op.binary.f32(i32 35, float %4945, float %4742)  ; FMax(a,b)
  br label %4947

; <label>:4947                                    ; preds = %4944, %4906
  %4948 = phi float [ %4946, %4944 ], [ %4739, %4906 ]
  %4949 = fcmp fast olt float %4941, %4948
  %4950 = fcmp uge float %4931, -1.000000e+00
  %4951 = xor i1 %112, %4950
  %4952 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4954 = fcmp fast oeq float %4922, %4952
  %4955 = fcmp fast oeq float %4923, %4953
  %4956 = and i1 %4954, %4955
  %4957 = and i1 %4951, %4956
  %4958 = and i1 %4942, %4949
  %4959 = and i1 %4958, %4957
  %4960 = fcmp fast ogt float %4918, %4902
  %4961 = and i1 %4960, %4959
  br i1 %4961, label %4965, label %4962, !dx.controlflow.hints !100

; <label>:4962                                    ; preds = %4947
  %4963 = add nuw nsw i32 %4910, 1
  %4964 = icmp slt i32 %4910, %4732
  br i1 %4964, label %4906, label %4965

; <label>:4965                                    ; preds = %4962, %4947
  %4966 = phi i1 [ false, %4962 ], [ true, %4947 ]
  %4967 = fsub fast float %4908, %4907
  %4968 = fsub fast float %4967, %4940
  %4969 = fcmp fast une float %4968, 0.000000e+00
  %4970 = fmul fast float %4925, %4967
  %4971 = fmul fast float %4940, %4908
  %4972 = fsub fast float %4970, %4971
  %4973 = fdiv fast float 1.000000e+00, %4968
  %4974 = fmul fast float %4973, %4972
  %4975 = select i1 %4969, float %4974, float %4925
  %4976 = fdiv fast float 1.000000e+00, %4975
  %4977 = fsub fast float %4976, %4856
  %4978 = fdiv fast float %4977, %4886
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, %4883
  %4981 = fmul fast float %4979, %4885
  %4982 = fadd fast float %4894, -5.000000e-01
  %4983 = fadd fast float %4982, %4980
  %4984 = fadd fast float %4895, -5.000000e-01
  %4985 = fadd fast float %4984, %4981
  %4986 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4987 = call float @dx.op.unary.f32(i32 6, float %4985)  ; FAbs(value)
  %4988 = fadd fast float %4986, -5.000000e-01
  %4989 = fadd fast float %4987, -5.000000e-01
  %4990 = call float @dx.op.binary.f32(i32 35, float %4988, float %4989)  ; FMax(a,b)
  %4991 = fcmp fast olt float %4990, 0.000000e+00
  %4992 = or i1 %112, %4991
  %4993 = and i1 %4966, %4992
  %4994 = select i1 %4993, float 0.000000e+00, float 1.000000e+00
  %4995 = call float @dx.op.binary.f32(i32 36, float %4721, float %4994)  ; FMin(a,b)
  br label %4996

; <label>:4996                                    ; preds = %4965, %4727, %4720
  %4997 = phi float [ %4995, %4965 ], [ %4721, %4727 ], [ %4721, %4720 ]
  %4998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %4999 = extractvalue %dx.types.ResRet.i32 %4998, 0
  %5000 = and i32 %4999, 114688
  %5001 = icmp ne i32 %5000, 0
  %5002 = fcmp fast ogt float %4997, 0.000000e+00
  %5003 = and i1 %5002, %5001
  br i1 %5003, label %5004, label %5779, !dx.controlflow.hints !101

; <label>:5004                                    ; preds = %4996
  %5005 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %101, i32 %102, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = fmul fast float %5006, 2.550000e+02
  %5008 = fptoui float %5007 to i32
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5011 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 6, float %5011)  ; FAbs(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = icmp eq i32 %5008, 0
  %5015 = fcmp ugt float %5013, %5010
  %5016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.i32 %5016, 0
  %5018 = and i32 %5017, 64
  %5019 = icmp eq i32 %5018, 0
  %5020 = or i1 %5015, %5019
  %5021 = and i1 %5014, %5020
  br i1 %5021, label %5360, label %5022, !dx.controlflow.hints !102

; <label>:5022                                    ; preds = %5004
  %5023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.CBufRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.CBufRet.f32 %5023, 2
  %5027 = fadd fast float %5024, %175
  %5028 = fadd fast float %5025, %176
  %5029 = fadd fast float %5026, %177
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.CBufRet.f32 %5030, 1
  %5033 = fsub fast float %5027, %5031
  %5034 = fsub fast float %5028, %5032
  %5035 = fmul fast float %5033, %5033
  %5036 = fmul fast float %5034, %5034
  %5037 = fadd fast float %5035, %5036
  %5038 = call float @dx.op.unary.f32(i32 24, float %5037)  ; Sqrt(value)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5040 = fcmp fast olt float %5038, %5039
  br i1 %5040, label %5041, label %5106, !dx.controlflow.hints !103

; <label>:5041                                    ; preds = %5022
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 0
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.CBufRet.f32 %5042, 1
  %5049 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5050 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5051 = extractvalue %dx.types.CBufRet.f32 %5042, 3
  %5052 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5053 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5054 = fadd fast float %5051, %5027
  %5055 = fadd fast float %5052, %5028
  %5056 = fadd fast float %5053, %5029
  %5057 = fmul fast float %5054, %5043
  %5058 = call float @dx.op.tertiary.f32(i32 46, float %5055, float %5045, float %5057)  ; FMad(a,b,c)
  %5059 = call float @dx.op.tertiary.f32(i32 46, float %5056, float %5047, float %5058)  ; FMad(a,b,c)
  %5060 = fmul fast float %5054, %5048
  %5061 = call float @dx.op.tertiary.f32(i32 46, float %5055, float %5049, float %5060)  ; FMad(a,b,c)
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5056, float %5050, float %5061)  ; FMad(a,b,c)
  %5063 = fsub fast float %5059, %5051
  %5064 = fsub fast float %5062, %5052
  %5065 = fsub fast float %5063, %5031
  %5066 = fadd fast float %5065, %5039
  %5067 = fsub fast float %5064, %5032
  %5068 = fadd fast float %5067, %5039
  %5069 = extractvalue %dx.types.CBufRet.f32 %5030, 3
  %5070 = fmul fast float %5066, %5069
  %5071 = fmul fast float %5068, %5069
  %5072 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5074 = fsub fast float 1.000000e+00, %5072
  %5075 = fsub fast float 1.000000e+00, %5073
  %5076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %29, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5077 = extractvalue %dx.types.ResRet.f32 %5076, 0
  %5078 = fcmp fast ugt float %5077, 0.000000e+00
  br i1 %5078, label %5079, label %5360, !dx.controlflow.hints !104

; <label>:5079                                    ; preds = %5041
  %5080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.f32 %5080, 2
  %5082 = fmul fast float %5081, %5077
  %5083 = extractvalue %dx.types.CBufRet.f32 %5080, 3
  %5084 = fadd fast float %5083, %5082
  %5085 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5086 = fadd fast float %5084, %5053
  %5087 = fmul fast float %5059, %5047
  %5088 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5050, float %5087)  ; FMad(a,b,c)
  %5089 = call float @dx.op.tertiary.f32(i32 46, float %5086, float %5085, float %5088)  ; FMad(a,b,c)
  %5090 = fsub fast float %5089, %5053
  %5091 = fsub fast float %5090, %5026
  %5092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %29, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.ResRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.ResRet.f32 %5092, 2
  %5096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %29, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5097 = extractvalue %dx.types.ResRet.f32 %5096, 0
  %5098 = extractvalue %dx.types.ResRet.f32 %5096, 1
  %5099 = extractvalue %dx.types.ResRet.f32 %5096, 2
  %5100 = fadd fast float %5097, %5093
  %5101 = fmul fast float %5100, 0x3F847AE140000000
  %5102 = fadd fast float %5098, %5094
  %5103 = fmul fast float %5102, 0x3F847AE140000000
  %5104 = fadd fast float %5099, %5095
  %5105 = fmul fast float %5104, 0x3F847AE140000000
  br label %5360

; <label>:5106                                    ; preds = %5022
  %5107 = and i32 %5008, -3
  %5108 = icmp eq i32 %5107, 1
  br i1 %5108, label %5109, label %5360, !dx.controlflow.hints !105

; <label>:5109                                    ; preds = %5106
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 0
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5118 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5119 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5120 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5121 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5122 = fadd fast float %5119, %5027
  %5123 = fadd fast float %5120, %5028
  %5124 = fadd fast float %5121, %5029
  %5125 = fmul fast float %5122, %5111
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5113, float %5125)  ; FMad(a,b,c)
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5115, float %5126)  ; FMad(a,b,c)
  %5128 = fmul fast float %5122, %5116
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5117, float %5128)  ; FMad(a,b,c)
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5118, float %5129)  ; FMad(a,b,c)
  %5131 = fsub fast float %5127, %5119
  %5132 = fsub fast float %5130, %5120
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5137 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.i32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.i32 %5140, 1
  %5143 = udiv i32 %5142, %5141
  %5144 = fsub fast float %5131, %5134
  %5145 = fsub fast float %5132, %5135
  %5146 = call float @dx.op.binary.f32(i32 35, float %5144, float 0.000000e+00)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5145, float 0.000000e+00)  ; FMax(a,b)
  %5148 = call float @dx.op.binary.f32(i32 36, float %5146, float %5136)  ; FMin(a,b)
  %5149 = call float @dx.op.binary.f32(i32 36, float %5147, float %5137)  ; FMin(a,b)
  %5150 = add i32 %5141, -1
  %5151 = add i32 %5143, -1
  %5152 = fmul fast float %5148, %5139
  %5153 = fmul fast float %5149, %5139
  %5154 = fptoui float %5152 to i32
  %5155 = fptoui float %5153 to i32
  %5156 = call i32 @dx.op.binary.i32(i32 40, i32 %5154, i32 %5150)  ; UMin(a,b)
  %5157 = call i32 @dx.op.binary.i32(i32 40, i32 %5155, i32 %5151)  ; UMin(a,b)
  %5158 = mul i32 %5157, %5141
  %5159 = add i32 %5158, %5156
  %5160 = shl i32 %5159, 2
  %5161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5160, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.i32 %5161, 0
  %5163 = icmp eq i32 %5162, -1
  br i1 %5163, label %5360, label %5164, !dx.controlflow.hints !106

; <label>:5164                                    ; preds = %5109
  %5165 = mul i32 %5162, 148
  %5166 = add i32 %5165, 4
  %5167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5166, i32 undef)  ; BufferLoad(srv,index,wot)
  %5168 = extractvalue %dx.types.ResRet.f32 %5167, 0
  %5169 = add i32 %5165, 8
  %5170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5169, i32 undef)  ; BufferLoad(srv,index,wot)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = add i32 %5165, 36
  %5173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5172, i32 undef)  ; BufferLoad(srv,index,wot)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = add i32 %5165, 60
  %5176 = add i32 %5165, 92
  %5177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.i32 %5177, 0
  %5179 = add i32 %5165, 116
  %5180 = fsub fast float %5131, %5168
  %5181 = fsub fast float %5132, %5171
  %5182 = fmul fast float %5139, %5180
  %5183 = fmul fast float %5139, %5181
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = extractvalue %dx.types.CBufRet.f32 %5009, 3
  %5188 = fadd fast float %5187, 2.000000e+00
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5191 = fadd fast float %5188, %5190
  %5192 = add i32 %5178, 0
  %5193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5194 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5193, i32 0)  ; GetDimensions(handle,mipLevel)
  %5195 = extractvalue %dx.types.Dimensions %5194, 0
  %5196 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5195)  ; FirstbitLo(value)
  %5197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.i32 %5197, 1
  %5199 = sub nsw i32 %5198, %5196
  %5200 = sitofp i32 %5199 to float
  %5201 = fsub fast float %5191, %5200
  %5202 = call float @dx.op.binary.f32(i32 35, float %5201, float 0.000000e+00)  ; FMax(a,b)
  %5203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5193, %dx.types.Handle %27, float %5184, float %5186, float %5174, float undef, i32 0, i32 0, i32 undef, float %5202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = fcmp ule float %5204, 0x3FE0101020000000
  %5206 = extractvalue %dx.types.CBufRet.i32 %5197, 0
  %5207 = and i32 %5206, 128
  %5208 = icmp ne i32 %5207, 0
  %5209 = and i1 %5205, %5208
  br i1 %5209, label %5360, label %5210, !dx.controlflow.hints !107

; <label>:5210                                    ; preds = %5164
  %5211 = add i32 %5165, 20
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = add i32 %5165, 24
  %5215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5214, i32 undef)  ; BufferLoad(srv,index,wot)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = add i32 %5165, 40
  %5218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = add i32 %5165, 96
  %5221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5220, i32 undef)  ; BufferLoad(srv,index,wot)
  %5222 = extractvalue %dx.types.ResRet.i32 %5221, 0
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5225 = fmul fast float %5224, %5184
  %5226 = fmul fast float %5224, %5186
  %5227 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5228 = fadd fast float %5225, %5227
  %5229 = fadd fast float %5226, %5227
  %5230 = add i32 %5222, 0
  %5231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5231, i32 0)  ; GetDimensions(handle,mipLevel)
  %5233 = extractvalue %dx.types.Dimensions %5232, 0
  %5234 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5233)  ; FirstbitLo(value)
  %5235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5236 = extractvalue %dx.types.CBufRet.i32 %5235, 1
  %5237 = sub nsw i32 %5236, %5234
  %5238 = sitofp i32 %5237 to float
  %5239 = fsub fast float %5188, %5238
  %5240 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5231, %dx.types.Handle %27, float %5228, float %5229, float %5219, float undef, i32 0, i32 0, i32 undef, float %5240)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = fmul fast float %5242, %5213
  %5244 = fadd fast float %5243, %5216
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5253 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5254 = fadd fast float %5250, %5131
  %5255 = fadd fast float %5252, %5132
  %5256 = fadd fast float %5244, %5253
  %5257 = fmul fast float %5254, %5246
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5255, float %5247, float %5257)  ; FMad(a,b,c)
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %5256, float %5248, float %5258)  ; FMad(a,b,c)
  %5260 = fsub fast float %5259, %5253
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5263 = fsub fast float %5260, %5262
  %5264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.i32 %5264, 0
  %5266 = call i32 @dx.op.binary.i32(i32 40, i32 %5162, i32 %5265)  ; UMin(a,b)
  %5267 = mul i32 %5266, 36
  %5268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.i32 %5268, 0
  %5270 = add i32 %5267, 4
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = fmul fast float %5272, %5184
  %5274 = fmul fast float %5272, %5186
  %5275 = extractvalue %dx.types.CBufRet.f32 %5271, 1
  %5276 = fadd fast float %5273, %5275
  %5277 = fadd fast float %5274, %5275
  %5278 = icmp eq i32 %5269, 0
  br i1 %5278, label %5347, label %5279

; <label>:5279                                    ; preds = %5210
  br label %5280

; <label>:5280                                    ; preds = %5337, %5279
  %5281 = phi float [ %5338, %5337 ], [ 0.000000e+00, %5279 ]
  %5282 = phi float [ %5339, %5337 ], [ 0.000000e+00, %5279 ]
  %5283 = phi float [ %5340, %5337 ], [ 0.000000e+00, %5279 ]
  %5284 = phi float [ %5341, %5337 ], [ 0.000000e+00, %5279 ]
  %5285 = phi float [ %5342, %5337 ], [ 0.000000e+00, %5279 ]
  %5286 = phi float [ %5343, %5337 ], [ 0.000000e+00, %5279 ]
  %5287 = phi i32 [ %5344, %5337 ], [ 0, %5279 ]
  %5288 = shl i32 %5287, 2
  %5289 = add i32 %5175, %5288
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = add i32 %5179, %5288
  %5293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.i32 %5293, 0
  %5295 = add i32 %5294, 0
  %5296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5296, i32 0)  ; GetDimensions(handle,mipLevel)
  %5298 = extractvalue %dx.types.Dimensions %5297, 0
  %5299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5298)  ; FirstbitLo(value)
  %5300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.i32 %5300, 1
  %5302 = sub nsw i32 %5301, %5299
  %5303 = sitofp i32 %5302 to float
  %5304 = fsub fast float %5188, %5303
  %5305 = call float @dx.op.binary.f32(i32 35, float %5304, float 0.000000e+00)  ; FMax(a,b)
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5296, %dx.types.Handle %27, float %5276, float %5277, float %5291, float undef, i32 0, i32 0, i32 undef, float %5305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = fcmp fast ogt float %5307, 0.000000e+00
  br i1 %5308, label %5309, label %5337, !dx.controlflow.hints !108

; <label>:5309                                    ; preds = %5280
  %5310 = add i32 %5270, %5288
  %5311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.i32 %5311, 0
  %5313 = and i32 %5312, 32767
  %5314 = mul nuw nsw i32 %5313, 928
  %5315 = add nuw nsw i32 %5314, 48
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.ResRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.ResRet.f32 %5316, 2
  %5320 = add nuw nsw i32 %5314, 60
  %5321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5320, i32 undef)  ; BufferLoad(srv,index,wot)
  %5322 = extractvalue %dx.types.ResRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.ResRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.ResRet.f32 %5321, 2
  %5325 = fmul fast float %5317, %5307
  %5326 = fmul fast float %5318, %5307
  %5327 = fmul fast float %5319, %5307
  %5328 = fadd fast float %5325, %5281
  %5329 = fadd fast float %5326, %5282
  %5330 = fadd fast float %5327, %5283
  %5331 = fmul fast float %5322, %5307
  %5332 = fmul fast float %5323, %5307
  %5333 = fmul fast float %5324, %5307
  %5334 = fadd fast float %5331, %5284
  %5335 = fadd fast float %5332, %5285
  %5336 = fadd fast float %5333, %5286
  br label %5337

; <label>:5337                                    ; preds = %5309, %5280
  %5338 = phi float [ %5328, %5309 ], [ %5281, %5280 ]
  %5339 = phi float [ %5329, %5309 ], [ %5282, %5280 ]
  %5340 = phi float [ %5330, %5309 ], [ %5283, %5280 ]
  %5341 = phi float [ %5334, %5309 ], [ %5284, %5280 ]
  %5342 = phi float [ %5335, %5309 ], [ %5285, %5280 ]
  %5343 = phi float [ %5336, %5309 ], [ %5286, %5280 ]
  %5344 = add nuw i32 %5287, 1
  %5345 = icmp eq i32 %5344, %5269
  br i1 %5345, label %5346, label %5280

; <label>:5346                                    ; preds = %5337
  br label %5347

; <label>:5347                                    ; preds = %5346, %5210
  %5348 = phi float [ 0.000000e+00, %5210 ], [ %5338, %5346 ]
  %5349 = phi float [ 0.000000e+00, %5210 ], [ %5339, %5346 ]
  %5350 = phi float [ 0.000000e+00, %5210 ], [ %5340, %5346 ]
  %5351 = phi float [ 0.000000e+00, %5210 ], [ %5341, %5346 ]
  %5352 = phi float [ 0.000000e+00, %5210 ], [ %5342, %5346 ]
  %5353 = phi float [ 0.000000e+00, %5210 ], [ %5343, %5346 ]
  %5354 = fadd fast float %5351, %5348
  %5355 = fmul fast float %5354, 0x3F847AE140000000
  %5356 = fadd fast float %5352, %5349
  %5357 = fmul fast float %5356, 0x3F847AE140000000
  %5358 = fadd fast float %5353, %5350
  %5359 = fmul fast float %5358, 0x3F847AE140000000
  br label %5360

; <label>:5360                                    ; preds = %5347, %5164, %5109, %5106, %5079, %5041, %5004
  %5361 = phi i1 [ true, %5004 ], [ false, %5079 ], [ true, %5041 ], [ false, %5347 ], [ true, %5109 ], [ true, %5164 ], [ true, %5106 ]
  %5362 = phi float [ 0.000000e+00, %5004 ], [ %5091, %5079 ], [ -1.310720e+05, %5041 ], [ %5263, %5347 ], [ -1.310720e+05, %5109 ], [ -1.310720e+05, %5164 ], [ -1.310720e+05, %5106 ]
  %5363 = phi float [ 0.000000e+00, %5004 ], [ %5101, %5079 ], [ 0.000000e+00, %5041 ], [ %5355, %5347 ], [ 0.000000e+00, %5109 ], [ 0.000000e+00, %5164 ], [ 0.000000e+00, %5106 ]
  %5364 = phi float [ 0.000000e+00, %5004 ], [ %5103, %5079 ], [ 0.000000e+00, %5041 ], [ %5357, %5347 ], [ 0.000000e+00, %5109 ], [ 0.000000e+00, %5164 ], [ 0.000000e+00, %5106 ]
  %5365 = phi float [ 0.000000e+00, %5004 ], [ %5105, %5079 ], [ 0.000000e+00, %5041 ], [ %5359, %5347 ], [ 0.000000e+00, %5109 ], [ 0.000000e+00, %5164 ], [ 0.000000e+00, %5106 ]
  br i1 %5361, label %5779, label %5366, !dx.controlflow.hints !109

; <label>:5366                                    ; preds = %5360
  %5367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.i32 %5367, 0
  %5369 = and i32 %5368, 64
  %5370 = icmp ne i32 %5369, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5375 = fsub fast float %177, %5362
  %5376 = fcmp fast ogt float %5375, 0.000000e+00
  %5377 = xor i1 %5376, true
  %5378 = fmul fast float %5372, 5.120000e+02
  %5379 = fmul fast float %5373, 5.120000e+02
  %5380 = fmul fast float %5374, 5.120000e+02
  %5381 = fadd fast float %5380, %177
  %5382 = fsub fast float %5362, %5381
  %5383 = fmul fast float %5382, 2.000000e+00
  %5384 = fadd fast float %5383, %5381
  %5385 = select i1 %5376, float %5384, float %5381
  %5386 = fsub fast float %5385, %177
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5386, float %5378, float %5379, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5378, %5388
  %5390 = fmul fast float %5379, %5388
  %5391 = fmul fast float %5386, %5388
  %5392 = fsub fast float %5362, %177
  %5393 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5389, float %5390, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = fdiv fast float 1.000000e+00, %5394
  %5396 = fmul fast float %5395, %5393
  %5397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5375, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fcmp fast ogt float %5397, 0.000000e+00
  %5399 = fcmp fast olt float %5397, 0.000000e+00
  %5400 = zext i1 %5398 to i32
  %5401 = zext i1 %5399 to i32
  %5402 = sub nsw i32 %5400, %5401
  %5403 = sitofp i32 %5402 to float
  %5404 = fsub fast float %5385, %5362
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5404, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = fcmp fast ogt float %5405, 0.000000e+00
  %5407 = fcmp fast olt float %5405, 0.000000e+00
  %5408 = zext i1 %5406 to i32
  %5409 = zext i1 %5407 to i32
  %5410 = sub nsw i32 %5408, %5409
  %5411 = sitofp i32 %5410 to float
  %5412 = fcmp fast une float %5403, %5411
  br i1 %5412, label %5413, label %5423, !dx.controlflow.hints !110

; <label>:5413                                    ; preds = %5366
  %5414 = fmul fast float %5391, %5396
  %5415 = fmul fast float %5396, %5390
  %5416 = fmul fast float %5396, %5389
  %5417 = fmul fast float %5416, %5416
  %5418 = fmul fast float %5415, %5415
  %5419 = fadd fast float %5417, %5418
  %5420 = fmul fast float %5414, %5414
  %5421 = fadd fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  br label %5433

; <label>:5423                                    ; preds = %5366
  %5424 = icmp slt i32 %5402, 0
  br i1 %5424, label %5425, label %5433, !dx.controlflow.hints !111

; <label>:5425                                    ; preds = %5423
  %5426 = fsub fast float %177, %5385
  %5427 = fmul fast float %5378, %5378
  %5428 = fmul fast float %5379, %5379
  %5429 = fadd fast float %5427, %5428
  %5430 = fmul fast float %5426, %5426
  %5431 = fadd fast float %5429, %5430
  %5432 = call float @dx.op.unary.f32(i32 24, float %5431)  ; Sqrt(value)
  br label %5433

; <label>:5433                                    ; preds = %5425, %5423, %5413
  %5434 = phi float [ %5422, %5413 ], [ %5432, %5425 ], [ 0.000000e+00, %5423 ]
  %5435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.i32 %5435, 1
  %5437 = icmp ne i32 %5436, 0
  %5438 = and i1 %5437, %5377
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5389, float %5390, float %5391, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fmul fast float %5439, %5439
  %5441 = fsub fast float 1.000000e+00, %5440
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5453 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5450, 1
  %5455 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5456 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5457 = extractvalue %dx.types.CBufRet.f32 %5450, 3
  %5458 = fadd fast float %5443, %175
  %5459 = fadd fast float %5444, %176
  %5460 = fadd fast float %5445, %177
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5465 = extractvalue %dx.types.CBufRet.f32 %5461, 3
  br i1 %5438, label %5466, label %5659, !dx.controlflow.hints !112

; <label>:5466                                    ; preds = %5433
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = fmul fast float %5468, %5468
  %5470 = fmul fast float %5469, %5441
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = fcmp fast oge float %5471, 0.000000e+00
  %5473 = fmul fast float %5468, %5389
  %5474 = fmul fast float %5468, %5390
  %5475 = fmul fast float %5468, %5391
  %5476 = call float @dx.op.unary.f32(i32 24, float %5471)  ; Sqrt(value)
  %5477 = fmul fast float %5468, %5439
  %5478 = fsub fast float -0.000000e+00, %5476
  %5479 = fsub fast float %5478, %5477
  %5480 = fadd fast float %5479, %5475
  %5481 = select i1 %5472, float %5473, float 0.000000e+00
  %5482 = select i1 %5472, float %5474, float 0.000000e+00
  %5483 = select i1 %5472, float %5480, float 0.000000e+00
  %5484 = fmul fast float %5481, %5434
  %5485 = fmul fast float %5482, %5434
  %5486 = fmul fast float %5483, %5434
  %5487 = fadd fast float %5458, %5484
  %5488 = fadd fast float %5487, %5455
  %5489 = fadd fast float %5459, %5485
  %5490 = fadd fast float %5489, %5456
  %5491 = fadd fast float %5460, %5486
  %5492 = fadd fast float %5491, %5457
  %5493 = fmul fast float %5488, %5447
  %5494 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5449, float %5493)  ; FMad(a,b,c)
  %5495 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5451, float %5494)  ; FMad(a,b,c)
  %5496 = fmul fast float %5488, %5452
  %5497 = call float @dx.op.tertiary.f32(i32 46, float %5490, float %5453, float %5496)  ; FMad(a,b,c)
  %5498 = call float @dx.op.tertiary.f32(i32 46, float %5492, float %5454, float %5497)  ; FMad(a,b,c)
  %5499 = fsub fast float %5495, %5455
  %5500 = fsub fast float %5499, %5462
  %5501 = fadd fast float %5500, %5464
  %5502 = fsub fast float %5498, %5456
  %5503 = fsub fast float %5502, %5463
  %5504 = fadd fast float %5503, %5464
  %5505 = fmul fast float %5501, %5465
  %5506 = fmul fast float %5504, %5465
  %5507 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5508 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5509 = fsub fast float 1.000000e+00, %5507
  %5510 = fsub fast float 1.000000e+00, %5508
  %5511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %5509, float %5510, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5512 = extractvalue %dx.types.ResRet.f32 %5511, 0
  %5513 = fmul fast float %5512, 0x3FBC5ABC00000000
  %5514 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5515 = fmul fast float %5514, %5514
  %5516 = fmul fast float %5515, %5441
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fcmp fast oge float %5517, 0.000000e+00
  %5519 = fmul fast float %5514, %5389
  %5520 = fmul fast float %5514, %5390
  %5521 = fmul fast float %5514, %5391
  %5522 = call float @dx.op.unary.f32(i32 24, float %5517)  ; Sqrt(value)
  %5523 = fmul fast float %5514, %5439
  %5524 = fsub fast float -0.000000e+00, %5522
  %5525 = fsub fast float %5524, %5523
  %5526 = fadd fast float %5525, %5521
  %5527 = select i1 %5518, float %5519, float 0.000000e+00
  %5528 = select i1 %5518, float %5520, float 0.000000e+00
  %5529 = select i1 %5518, float %5526, float 0.000000e+00
  %5530 = fmul fast float %5527, %5434
  %5531 = fmul fast float %5528, %5434
  %5532 = fmul fast float %5529, %5434
  %5533 = fadd fast float %5458, %5530
  %5534 = fadd fast float %5533, %5455
  %5535 = fadd fast float %5459, %5531
  %5536 = fadd fast float %5535, %5456
  %5537 = fadd fast float %5460, %5532
  %5538 = fadd fast float %5537, %5457
  %5539 = fmul fast float %5534, %5447
  %5540 = call float @dx.op.tertiary.f32(i32 46, float %5536, float %5449, float %5539)  ; FMad(a,b,c)
  %5541 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5451, float %5540)  ; FMad(a,b,c)
  %5542 = fmul fast float %5534, %5452
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5536, float %5453, float %5542)  ; FMad(a,b,c)
  %5544 = call float @dx.op.tertiary.f32(i32 46, float %5538, float %5454, float %5543)  ; FMad(a,b,c)
  %5545 = fsub fast float %5541, %5455
  %5546 = fsub fast float %5545, %5462
  %5547 = fadd fast float %5546, %5464
  %5548 = fsub fast float %5544, %5456
  %5549 = fsub fast float %5548, %5463
  %5550 = fadd fast float %5549, %5464
  %5551 = fmul fast float %5547, %5465
  %5552 = fmul fast float %5550, %5465
  %5553 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5555 = fsub fast float 1.000000e+00, %5553
  %5556 = fsub fast float 1.000000e+00, %5554
  %5557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %5555, float %5556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = fmul fast float %5558, 0x3F9E4BBD60000000
  %5560 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5561 = fmul fast float %5560, %5560
  %5562 = fmul fast float %5561, %5441
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = fcmp fast oge float %5563, 0.000000e+00
  %5565 = fmul fast float %5560, %5389
  %5566 = fmul fast float %5560, %5390
  %5567 = fmul fast float %5560, %5391
  %5568 = call float @dx.op.unary.f32(i32 24, float %5563)  ; Sqrt(value)
  %5569 = fmul fast float %5560, %5439
  %5570 = fsub fast float -0.000000e+00, %5568
  %5571 = fsub fast float %5570, %5569
  %5572 = fadd fast float %5571, %5567
  %5573 = select i1 %5564, float %5565, float 0.000000e+00
  %5574 = select i1 %5564, float %5566, float 0.000000e+00
  %5575 = select i1 %5564, float %5572, float 0.000000e+00
  %5576 = fmul fast float %5573, %5434
  %5577 = fmul fast float %5574, %5434
  %5578 = fmul fast float %5575, %5434
  %5579 = fadd fast float %5458, %5576
  %5580 = fadd fast float %5579, %5455
  %5581 = fadd fast float %5459, %5577
  %5582 = fadd fast float %5581, %5456
  %5583 = fadd fast float %5460, %5578
  %5584 = fadd fast float %5583, %5457
  %5585 = fmul fast float %5580, %5447
  %5586 = call float @dx.op.tertiary.f32(i32 46, float %5582, float %5449, float %5585)  ; FMad(a,b,c)
  %5587 = call float @dx.op.tertiary.f32(i32 46, float %5584, float %5451, float %5586)  ; FMad(a,b,c)
  %5588 = fmul fast float %5580, %5452
  %5589 = call float @dx.op.tertiary.f32(i32 46, float %5582, float %5453, float %5588)  ; FMad(a,b,c)
  %5590 = call float @dx.op.tertiary.f32(i32 46, float %5584, float %5454, float %5589)  ; FMad(a,b,c)
  %5591 = fsub fast float %5587, %5455
  %5592 = fsub fast float %5591, %5462
  %5593 = fadd fast float %5592, %5464
  %5594 = fsub fast float %5590, %5456
  %5595 = fsub fast float %5594, %5463
  %5596 = fadd fast float %5595, %5464
  %5597 = fmul fast float %5593, %5465
  %5598 = fmul fast float %5596, %5465
  %5599 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5601 = fsub fast float 1.000000e+00, %5599
  %5602 = fsub fast float 1.000000e+00, %5600
  %5603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %5601, float %5602, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = fmul fast float %5604, 0x3FDDEACB00000000
  %5606 = fadd fast float %5605, %5559
  %5607 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5608 = fmul fast float %5607, %5607
  %5609 = fmul fast float %5608, %5441
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = fcmp fast oge float %5610, 0.000000e+00
  %5612 = fmul fast float %5607, %5389
  %5613 = fmul fast float %5607, %5390
  %5614 = fmul fast float %5607, %5391
  %5615 = call float @dx.op.unary.f32(i32 24, float %5610)  ; Sqrt(value)
  %5616 = fmul fast float %5607, %5439
  %5617 = fsub fast float -0.000000e+00, %5615
  %5618 = fsub fast float %5617, %5616
  %5619 = fadd fast float %5618, %5614
  %5620 = select i1 %5611, float %5612, float 0.000000e+00
  %5621 = select i1 %5611, float %5613, float 0.000000e+00
  %5622 = select i1 %5611, float %5619, float 0.000000e+00
  %5623 = fmul fast float %5620, %5434
  %5624 = fmul fast float %5621, %5434
  %5625 = fmul fast float %5622, %5434
  %5626 = fadd fast float %5458, %5623
  %5627 = fadd fast float %5626, %5455
  %5628 = fadd fast float %5459, %5624
  %5629 = fadd fast float %5628, %5456
  %5630 = fadd fast float %5460, %5625
  %5631 = fadd fast float %5630, %5457
  %5632 = fmul fast float %5627, %5447
  %5633 = call float @dx.op.tertiary.f32(i32 46, float %5629, float %5449, float %5632)  ; FMad(a,b,c)
  %5634 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5451, float %5633)  ; FMad(a,b,c)
  %5635 = fmul fast float %5627, %5452
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5629, float %5453, float %5635)  ; FMad(a,b,c)
  %5637 = call float @dx.op.tertiary.f32(i32 46, float %5631, float %5454, float %5636)  ; FMad(a,b,c)
  %5638 = fsub fast float %5634, %5455
  %5639 = fsub fast float %5638, %5462
  %5640 = fadd fast float %5639, %5464
  %5641 = fsub fast float %5637, %5456
  %5642 = fsub fast float %5641, %5463
  %5643 = fadd fast float %5642, %5464
  %5644 = fmul fast float %5640, %5465
  %5645 = fmul fast float %5643, %5465
  %5646 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5647 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5648 = fsub fast float 1.000000e+00, %5646
  %5649 = fsub fast float 1.000000e+00, %5647
  %5650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %5648, float %5649, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = fmul fast float %5651, 0x3FE0183CA0000000
  %5653 = fmul fast float %5651, 0x3FB51033E0000000
  %5654 = fadd fast float %5606, %5652
  %5655 = fadd fast float %5604, %5558
  %5656 = fmul fast float %5655, 0x3FD9D2A200000000
  %5657 = fadd fast float %5653, %5513
  %5658 = fadd fast float %5657, %5656
  br label %5705

; <label>:5659                                    ; preds = %5433
  %5660 = fmul fast float %5441, 0x3FE2024E20000000
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = fcmp fast oge float %5661, 0.000000e+00
  %5663 = fmul fast float %5389, 0x3FE8018960000000
  %5664 = fmul fast float %5390, 0x3FE8018960000000
  %5665 = fmul fast float %5391, 0x3FE8018960000000
  %5666 = call float @dx.op.unary.f32(i32 24, float %5661)  ; Sqrt(value)
  %5667 = fmul fast float %5439, 0x3FE8018960000000
  %5668 = fsub fast float %5665, %5666
  %5669 = fsub fast float %5668, %5667
  %5670 = select i1 %5662, float %5663, float 0.000000e+00
  %5671 = select i1 %5662, float %5664, float 0.000000e+00
  %5672 = select i1 %5662, float %5669, float 0.000000e+00
  %5673 = select i1 %5376, float %5389, float %5670
  %5674 = select i1 %5376, float %5390, float %5671
  %5675 = select i1 %5376, float %5391, float %5672
  %5676 = fmul fast float %5673, %5434
  %5677 = fmul fast float %5674, %5434
  %5678 = fmul fast float %5675, %5434
  %5679 = fadd fast float %5458, %5676
  %5680 = fadd fast float %5679, %5455
  %5681 = fadd fast float %5459, %5677
  %5682 = fadd fast float %5681, %5456
  %5683 = fadd fast float %5460, %5678
  %5684 = fadd fast float %5683, %5457
  %5685 = fmul fast float %5680, %5447
  %5686 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5449, float %5685)  ; FMad(a,b,c)
  %5687 = call float @dx.op.tertiary.f32(i32 46, float %5684, float %5451, float %5686)  ; FMad(a,b,c)
  %5688 = fmul fast float %5680, %5452
  %5689 = call float @dx.op.tertiary.f32(i32 46, float %5682, float %5453, float %5688)  ; FMad(a,b,c)
  %5690 = call float @dx.op.tertiary.f32(i32 46, float %5684, float %5454, float %5689)  ; FMad(a,b,c)
  %5691 = fsub fast float %5687, %5455
  %5692 = fsub fast float %5691, %5462
  %5693 = fadd fast float %5692, %5464
  %5694 = fsub fast float %5690, %5456
  %5695 = fsub fast float %5694, %5463
  %5696 = fadd fast float %5695, %5464
  %5697 = fmul fast float %5693, %5465
  %5698 = fmul fast float %5696, %5465
  %5699 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5700 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5701 = fsub fast float 1.000000e+00, %5699
  %5702 = fsub fast float 1.000000e+00, %5700
  %5703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %29, float %5701, float %5702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5704 = extractvalue %dx.types.ResRet.f32 %5703, 0
  br label %5705

; <label>:5705                                    ; preds = %5659, %5466
  %5706 = phi float [ %5704, %5659 ], [ %5654, %5466 ]
  %5707 = phi float [ %5704, %5659 ], [ %5658, %5466 ]
  %5708 = phi float [ %5704, %5659 ], [ %5512, %5466 ]
  %5709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5709, 0
  %5711 = call float @dx.op.unary.f32(i32 6, float %5710)  ; FAbs(value)
  %5712 = fmul fast float %5434, %5434
  %5713 = fadd fast float %5712, 1.000000e+00
  %5714 = fdiv fast float %5711, %5713
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fsub fast float -0.000000e+00, %5434
  %5717 = select i1 %5376, float -0.000000e+00, float %5716
  %5718 = fmul fast float %5363, 0x3FF7154760000000
  %5719 = fmul fast float %5718, %5717
  %5720 = fmul fast float %5364, 0x3FF7154760000000
  %5721 = fmul fast float %5720, %5717
  %5722 = fmul fast float %5365, 0x3FF7154760000000
  %5723 = fmul fast float %5722, %5717
  %5724 = call float @dx.op.unary.f32(i32 21, float %5719)  ; Exp(value)
  %5725 = call float @dx.op.unary.f32(i32 21, float %5721)  ; Exp(value)
  %5726 = call float @dx.op.unary.f32(i32 21, float %5723)  ; Exp(value)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = bitcast float %5731 to i32
  %5733 = sitofp i32 %5732 to float
  %5734 = fptosi float %5733 to i32
  %5735 = bitcast i32 %5734 to float
  %5736 = fmul fast float %5735, 0x3FEF333340000000
  %5737 = fadd fast float %5736, 0x3F999999A0000000
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fsub fast float 1.000000e+00, %5738
  %5740 = fadd fast float %5706, 1.000000e+00
  %5741 = fadd fast float %5707, 1.000000e+00
  %5742 = fadd fast float %5708, 1.000000e+00
  %5743 = fmul fast float %5727, %5740
  %5744 = fmul fast float %5728, %5741
  %5745 = fmul fast float %5729, %5742
  %5746 = fmul fast float %5743, %5739
  %5747 = fmul fast float %5744, %5739
  %5748 = fmul fast float %5745, %5739
  %5749 = fmul fast float %5715, %5740
  %5750 = fmul fast float %5749, %5727
  %5751 = fmul fast float %5750, %5738
  %5752 = fmul fast float %5715, %5741
  %5753 = fmul fast float %5752, %5728
  %5754 = fmul fast float %5753, %5738
  %5755 = fmul fast float %5715, %5742
  %5756 = fmul fast float %5755, %5729
  %5757 = fmul fast float %5756, %5738
  %5758 = fadd fast float %5751, %5727
  %5759 = fadd fast float %5754, %5728
  %5760 = fadd fast float %5757, %5729
  %5761 = call float @dx.op.unary.f32(i32 6, float %5375)  ; FAbs(value)
  %5762 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5763 = select i1 %5376, float %5758, float %5746
  %5764 = select i1 %5376, float %5759, float %5747
  %5765 = select i1 %5376, float %5760, float %5748
  %5766 = select i1 %5370, float %5762, float 0.000000e+00
  %5767 = fsub fast float %5763, %5727
  %5768 = fsub fast float %5764, %5728
  %5769 = fsub fast float %5765, %5729
  %5770 = fmul fast float %5767, %5766
  %5771 = fmul fast float %5768, %5766
  %5772 = fmul fast float %5769, %5766
  %5773 = fadd fast float %5770, %5727
  %5774 = fadd fast float %5771, %5728
  %5775 = fadd fast float %5772, %5729
  %5776 = fmul fast float %5773, %4997
  %5777 = fmul fast float %5774, %4997
  %5778 = fmul fast float %5775, %4997
  br label %5779

; <label>:5779                                    ; preds = %5705, %5360, %4996
  %5780 = phi float [ %5776, %5705 ], [ %4997, %5360 ], [ %4997, %4996 ]
  %5781 = phi float [ %5777, %5705 ], [ %4997, %5360 ], [ %4997, %4996 ]
  %5782 = phi float [ %5778, %5705 ], [ %4997, %5360 ], [ %4997, %4996 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %122, i32 %123, i32 %100, float %5780, float %5781, float %5782, float %5780, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5783

; <label>:5783                                    ; preds = %5779, %124
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
!dx.entryPoints = !{!46}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !34, !36, !39}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33}
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
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 23, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 26, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 27, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 28, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 15, i32 1, i32 7, i32 0, !31}
!31 = !{i32 0, i32 14}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 9, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %"class.Texture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i32 0, !7}
!34 = !{!35}
!35 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
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
!46 = !{void ()* @cs_sunvis, !"cs_sunvis", null, !4, !47}
!47 = !{i32 0, i64 272, i32 4, !48}
!48 = !{i32 8, i32 8, i32 1}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !54, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
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
!95 = distinct !{!95, !"dx.controlflow.hints", i32 2}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
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
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}

