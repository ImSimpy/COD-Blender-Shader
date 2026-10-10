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
; shader hash: e91e0b903ebc5114b47b4d5755eb5b34
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
;                                   texture     f32          2d     T24             t6     1
;                                   texture     f32          2d     T25             t5     1
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
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %40 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %41 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %42 = alloca [12 x float], align 4
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = alloca [12 x float], align 4
  %46 = alloca [12 x float], align 4
  %47 = alloca [12 x float], align 4
  %48 = alloca [4 x i32], align 4
  %49 = shl i32 %40, 1
  %50 = shl i32 %41, 1
  %51 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.i32 %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %86, label %54, !dx.controlflow.hints !50

; <label>:54                                      ; preds = %0
  %55 = shl i32 %38, 2
  %56 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.i32 %56, 0
  %58 = lshr i32 %57, 28
  %59 = and i32 %58, 3
  %60 = lshr i32 %57, 14
  %61 = and i32 %60, 16383
  %62 = and i32 %57, 16383
  %63 = icmp eq i32 %59, 0
  %64 = shl nuw nsw i32 %61, 4
  %65 = shl nuw nsw i32 %62, 4
  br i1 %63, label %83, label %66, !dx.controlflow.hints !51

; <label>:66                                      ; preds = %54
  %67 = shl nuw nsw i32 %61, 3
  %68 = shl nuw nsw i32 %62, 3
  %69 = or i32 %67, %40
  %70 = or i32 %68, %41
  %71 = add nsw i32 %59, -1
  %72 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %69, i32 %70, i32 %71, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 15
  %76 = and i32 %73, 15
  %77 = or i32 %75, %64
  %78 = or i32 %76, %65
  %79 = and i32 %74, 1
  %80 = shl i32 %73, 1
  %81 = and i32 %80, 2
  %82 = or i32 %79, %81
  br label %86

; <label>:83                                      ; preds = %54
  %84 = or i32 %64, %49
  %85 = or i32 %65, %50
  br label %86

; <label>:86                                      ; preds = %83, %66, %0
  %87 = phi i32 [ %61, %66 ], [ %61, %83 ], [ %38, %0 ]
  %88 = phi i32 [ %62, %66 ], [ %62, %83 ], [ %39, %0 ]
  %89 = phi i32 [ %82, %66 ], [ 0, %83 ], [ 0, %0 ]
  %90 = phi i32 [ %77, %66 ], [ %84, %83 ], [ 0, %0 ]
  %91 = phi i32 [ %78, %66 ], [ %85, %83 ], [ 0, %0 ]
  %92 = uitofp i32 %90 to float
  %93 = uitofp i32 %91 to float
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %95, %92
  %98 = fmul fast float %96, %93
  %99 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %90, i32 %91, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %100 = extractvalue %dx.types.ResRet.f32 %99, 0
  %101 = fcmp fast olt float %100, -1.000000e+00
  %102 = fcmp fast ogt float %100, -1.000000e+00
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %105 = select i1 %102, float %104, float 1.000000e+00
  %106 = fadd fast float %100, 1.000000e+00
  %107 = fmul fast float %105, %106
  %108 = call float @dx.op.unary.f32(i32 6, float %107)  ; FAbs(value)
  %109 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %110 = fcmp fast ult float %108, %109
  %111 = lshr i32 %90, 1
  %112 = lshr i32 %91, 1
  br i1 %110, label %114, label %113, !dx.controlflow.hints !52

; <label>:113                                     ; preds = %86
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %111, i32 %112, i32 %89, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3672

; <label>:114                                     ; preds = %86
  %115 = fmul fast float %97, 2.000000e+00
  %116 = fmul fast float %98, 2.000000e+00
  %117 = fsub fast float 1.000000e+00, %115
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = select i1 %101, float %120, float %124
  %128 = select i1 %101, float %121, float %125
  %129 = select i1 %101, float %122, float %126
  %130 = fmul fast float %127, %117
  %131 = fmul fast float %128, %117
  %132 = fmul fast float %129, %117
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = select i1 %101, float %134, float %138
  %142 = select i1 %101, float %135, float %139
  %143 = select i1 %101, float %136, float %140
  %144 = fmul fast float %141, %118
  %145 = fmul fast float %142, %118
  %146 = fmul fast float %143, %118
  %147 = fadd fast float %144, %130
  %148 = fadd fast float %145, %131
  %149 = fadd fast float %146, %132
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 0
  %156 = extractvalue %dx.types.CBufRet.f32 %154, 1
  %157 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %158 = select i1 %101, float %151, float %155
  %159 = select i1 %101, float %152, float %156
  %160 = select i1 %101, float %153, float %157
  %161 = fadd fast float %147, %158
  %162 = fadd fast float %148, %159
  %163 = fadd fast float %149, %160
  %164 = fmul fast float %161, %108
  %165 = fmul fast float %162, %108
  %166 = fmul fast float %163, %108
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %33, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.i32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.i32 %167, 2
  %171 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %172 = and i32 %90, 1
  %173 = shl i32 %91, 1
  %174 = and i32 %173, 2
  %175 = or i32 %174, %172
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %168, i32* %176, align 4
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %169, i32* %177, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %170, i32* %178, align 4
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %171, i32* %179, align 4
  %180 = getelementptr [4 x i32], [4 x i32]* %48, i32 0, i32 %175
  %181 = load i32, i32* %180, align 4, !tbaa !53
  %182 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 %181, i32 %111, i32 %112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = lshr i32 %183, 8
  %185 = and i32 %183, 255
  %186 = and i32 %184, 255
  %187 = uitofp i32 %185 to float
  %188 = uitofp i32 %186 to float
  %189 = fmul fast float %187, 0x3F80101020000000
  %190 = fmul fast float %188, 0x3F80101020000000
  %191 = fadd fast float %189, -1.000000e+00
  %192 = fadd fast float %190, -1.000000e+00
  %193 = call float @dx.op.unary.f32(i32 6, float %191)  ; FAbs(value)
  %194 = fsub fast float 1.000000e+00, %193
  %195 = call float @dx.op.unary.f32(i32 6, float %192)  ; FAbs(value)
  %196 = fsub fast float %194, %195
  %197 = fsub fast float -0.000000e+00, %196
  %198 = call float @dx.op.binary.f32(i32 35, float %197, float 0.000000e+00)  ; FMax(a,b)
  %199 = fcmp fast ogt float %191, 0.000000e+00
  %200 = fsub fast float -0.000000e+00, %198
  %201 = select i1 %199, float %200, float %198
  %202 = fadd fast float %201, %191
  %203 = fcmp fast ogt float %192, 0.000000e+00
  %204 = select i1 %203, float %200, float %198
  %205 = fadd fast float %204, %192
  %206 = call float @dx.op.dot3.f32(i32 55, float %202, float %205, float %196, float %202, float %205, float %196)  ; Dot3(ax,ay,az,bx,by,bz)
  %207 = call float @dx.op.unary.f32(i32 25, float %206)  ; Rsqrt(value)
  %208 = fmul fast float %202, %207
  %209 = fmul fast float %205, %207
  %210 = fmul fast float %207, %196
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 1
  %214 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %215 = call float @dx.op.dot3.f32(i32 55, float %212, float %213, float %214, float %208, float %209, float %210)  ; Dot3(ax,ay,az,bx,by,bz)
  %216 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %217 = fsub fast float 1.000000e+00, %216
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %220 = fsub fast float -0.000000e+00, %215
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fmul fast float %219, %221
  %223 = fsub fast float %217, %222
  %224 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %225 = fmul fast float %223, %224
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %241 = fmul fast float %227, %164
  %242 = call float @dx.op.tertiary.f32(i32 46, float %165, float %228, float %241)  ; FMad(a,b,c)
  %243 = call float @dx.op.tertiary.f32(i32 46, float %166, float %229, float %242)  ; FMad(a,b,c)
  %244 = fadd fast float %243, %230
  %245 = fmul fast float %232, %164
  %246 = call float @dx.op.tertiary.f32(i32 46, float %165, float %233, float %245)  ; FMad(a,b,c)
  %247 = call float @dx.op.tertiary.f32(i32 46, float %166, float %234, float %246)  ; FMad(a,b,c)
  %248 = fadd fast float %247, %235
  %249 = fmul fast float %237, %164
  %250 = call float @dx.op.tertiary.f32(i32 46, float %165, float %238, float %249)  ; FMad(a,b,c)
  %251 = call float @dx.op.tertiary.f32(i32 46, float %166, float %239, float %250)  ; FMad(a,b,c)
  %252 = fadd fast float %251, %240
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %255 = fmul fast float %254, 0x3FE3C6EF40000000
  %256 = frem fast float %92, 2.560000e+02
  %257 = frem fast float %93, 2.560000e+02
  %258 = fptoui float %256 to i32
  %259 = fptoui float %257 to i32
  %260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %258, i32 %259, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 2
  %262 = fadd fast float %261, %255
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %266 = fcmp fast une float %265, 0.000000e+00
  br i1 %266, label %267, label %1888, !dx.controlflow.hints !57

; <label>:267                                     ; preds = %114
  %268 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %269 = fptoui float %268 to i32
  %270 = add i32 %269, 15
  %271 = lshr i32 %270, 4
  %272 = mul i32 %271, %88
  %273 = add i32 %272, %87
  %274 = shl i32 %273, 3
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = lshr i32 %276, 28
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %298, !dx.controlflow.hints !58

; <label>:279                                     ; preds = %267
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = fmul fast float %281, %225
  %285 = fadd fast float %283, %252
  %286 = fadd fast float %285, %284
  %287 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %288 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %289 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %290 = fmul fast float %289, %244
  %291 = fmul fast float %289, %248
  %292 = fadd fast float %290, %287
  %293 = fadd fast float %291, %288
  %294 = call float @dx.op.binary.f32(i32 35, float %286, float 0.000000e+00)  ; FMax(a,b)
  %295 = fadd fast float %294, 0x3F10000000000000
  %296 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %292, float %293, float undef, float undef, i32 0, i32 0, i32 undef, float %295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  br label %2741

; <label>:298                                     ; preds = %267
  %299 = icmp eq i32 %277, 1
  br i1 %299, label %300, label %319, !dx.controlflow.hints !59

; <label>:300                                     ; preds = %298
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = fmul fast float %302, %225
  %306 = fadd fast float %304, %252
  %307 = fadd fast float %306, %305
  %308 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %301, 3
  %311 = fmul fast float %310, %244
  %312 = fmul fast float %310, %248
  %313 = fadd fast float %311, %308
  %314 = fadd fast float %312, %309
  %315 = call float @dx.op.binary.f32(i32 35, float %307, float 0.000000e+00)  ; FMax(a,b)
  %316 = fadd fast float %315, 0x3F10000000000000
  %317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %313, float %314, float undef, float undef, i32 0, i32 0, i32 undef, float %316)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  br label %2741

; <label>:319                                     ; preds = %298
  %320 = icmp eq i32 %277, 2
  br i1 %320, label %321, label %340, !dx.controlflow.hints !60

; <label>:321                                     ; preds = %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %326 = fmul fast float %323, %225
  %327 = fadd fast float %325, %252
  %328 = fadd fast float %327, %326
  %329 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %332 = fmul fast float %331, %244
  %333 = fmul fast float %331, %248
  %334 = fadd fast float %332, %329
  %335 = fadd fast float %333, %330
  %336 = call float @dx.op.binary.f32(i32 35, float %328, float 0.000000e+00)  ; FMax(a,b)
  %337 = fadd fast float %336, 0x3F10000000000000
  %338 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %334, float %335, float undef, float undef, i32 0, i32 0, i32 undef, float %337)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  br label %2741

; <label>:340                                     ; preds = %319
  %341 = icmp eq i32 %277, 12
  br i1 %341, label %342, label %361, !dx.controlflow.hints !61

; <label>:342                                     ; preds = %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = fmul fast float %344, %225
  %348 = fadd fast float %346, %252
  %349 = fadd fast float %348, %347
  %350 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %343, 3
  %353 = fmul fast float %352, %244
  %354 = fmul fast float %352, %248
  %355 = fadd fast float %353, %350
  %356 = fadd fast float %354, %351
  %357 = call float @dx.op.binary.f32(i32 35, float %349, float 0.000000e+00)  ; FMax(a,b)
  %358 = fadd fast float %357, 0x3F10000000000000
  %359 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %355, float %356, float undef, float undef, i32 0, i32 0, i32 undef, float %358)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  br label %2741

; <label>:361                                     ; preds = %340
  %362 = icmp eq i32 %277, 13
  br i1 %362, label %363, label %1033, !dx.controlflow.hints !62

; <label>:363                                     ; preds = %361
  %364 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %365 = fcmp fast une float %364, 0.000000e+00
  br i1 %365, label %366, label %2741, !dx.controlflow.hints !63

; <label>:366                                     ; preds = %363
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = extractvalue %dx.types.CBufRet.f32 %367, 3
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = extractvalue %dx.types.CBufRet.f32 %372, 3
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %381 = extractvalue %dx.types.CBufRet.f32 %377, 3
  %382 = fmul fast float %368, %164
  %383 = call float @dx.op.tertiary.f32(i32 46, float %165, float %369, float %382)  ; FMad(a,b,c)
  %384 = call float @dx.op.tertiary.f32(i32 46, float %166, float %370, float %383)  ; FMad(a,b,c)
  %385 = fadd fast float %384, %371
  %386 = fmul fast float %373, %164
  %387 = call float @dx.op.tertiary.f32(i32 46, float %165, float %374, float %386)  ; FMad(a,b,c)
  %388 = call float @dx.op.tertiary.f32(i32 46, float %166, float %375, float %387)  ; FMad(a,b,c)
  %389 = fadd fast float %388, %376
  %390 = fmul fast float %378, %164
  %391 = call float @dx.op.tertiary.f32(i32 46, float %165, float %379, float %390)  ; FMad(a,b,c)
  %392 = call float @dx.op.tertiary.f32(i32 46, float %166, float %380, float %391)  ; FMad(a,b,c)
  %393 = fadd fast float %392, %381
  %394 = fcmp fast oge float %385, 1.000000e+00
  %395 = fcmp fast oge float %389, 1.000000e+00
  %396 = or i1 %394, %395
  %397 = fcmp fast olt float %385, 0.000000e+00
  %398 = fcmp fast olt float %389, 0.000000e+00
  %399 = or i1 %397, %398
  %400 = or i1 %396, %399
  br i1 %400, label %2741, label %401, !dx.controlflow.hints !64

; <label>:401                                     ; preds = %366
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %409 = extractvalue %dx.types.CBufRet.i32 %408, 2
  %410 = uitofp i32 %409 to float
  %411 = extractvalue %dx.types.CBufRet.i32 %408, 3
  %412 = uitofp i32 %411 to float
  %413 = extractvalue %dx.types.CBufRet.f32 %402, 3
  %414 = fmul fast float %413, 2.000000e+00
  %415 = fsub fast float %385, %403
  %416 = fsub fast float %389, %404
  %417 = fmul fast float %414, %415
  %418 = fmul fast float %414, %416
  %419 = fdiv fast float 1.000000e+00, %214
  %420 = fmul fast float %418, %419
  %421 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %422 = fmul fast float %405, %166
  %423 = fmul fast float %422, %414
  %424 = call float @dx.op.unary.f32(i32 6, float %423)  ; FAbs(value)
  %425 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  %426 = call float @dx.op.binary.f32(i32 35, float %424, float %421)  ; FMax(a,b)
  %427 = call float @dx.op.binary.f32(i32 35, float %425, float %426)  ; FMax(a,b)
  %428 = fmul fast float %427, 2.000000e+00
  %429 = call float @dx.op.unary.f32(i32 23, float %428)  ; Log(value)
  %430 = call float @dx.op.binary.f32(i32 35, float %429, float %410)  ; FMax(a,b)
  %431 = call float @dx.op.unary.f32(i32 22, float %430)  ; Frc(value)
  %432 = fadd fast float %431, 0xBFEA666660000000
  %433 = fmul fast float %432, 8.000000e+00
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = call float @dx.op.unary.f32(i32 27, float %430)  ; Round_ni(value)
  %436 = fadd fast float %435, %434
  %437 = call float @dx.op.binary.f32(i32 36, float %436, float %412)  ; FMin(a,b)
  %438 = call float @dx.op.unary.f32(i32 27, float %437)  ; Round_ni(value)
  %439 = fsub fast float -0.000000e+00, %438
  %440 = call float @dx.op.unary.f32(i32 21, float %439)  ; Exp(value)
  %441 = fmul fast float %440, %414
  %442 = fmul fast float %441, %385
  %443 = fmul fast float %441, %389
  %444 = fmul fast float %442, 5.000000e-01
  %445 = fmul fast float %443, 5.000000e-01
  %446 = fadd fast float %444, 5.000000e-01
  %447 = fadd fast float %445, 5.000000e-01
  %448 = fmul fast float %442, 2.500000e-01
  %449 = fmul fast float %443, 2.500000e-01
  %450 = fadd fast float %448, 5.000000e-01
  %451 = fadd fast float %449, 5.000000e-01
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 536870911
  %455 = lshr i32 %454, 9
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, %385
  %458 = fmul fast float %456, %389
  %459 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %460 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %461 = call float @dx.op.unary.f32(i32 22, float %434)  ; Frc(value)
  %462 = fcmp fast une float %461, 0.000000e+00
  br i1 %462, label %463, label %561, !dx.controlflow.hints !65

; <label>:463                                     ; preds = %401
  %464 = call float @dx.op.unary.f32(i32 21, float %435)  ; Exp(value)
  %465 = fmul fast float %464, 1.953125e-03
  %466 = fcmp fast olt float %459, %465
  %467 = fcmp fast olt float %460, %465
  %468 = or i1 %466, %467
  %469 = fsub fast float 1.000000e+00, %465
  %470 = fcmp fast ogt float %459, %469
  %471 = fcmp fast ogt float %460, %469
  %472 = or i1 %470, %471
  %473 = or i1 %468, %472
  br i1 %473, label %474, label %640, !dx.controlflow.hints !66

; <label>:474                                     ; preds = %463
  %475 = fmul fast float %407, 5.000000e-01
  %476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.i32 %476, 0
  %478 = fmul fast float %389, 3.530000e+02
  %479 = uitofp i32 %454 to float
  %480 = fmul fast float %478, %479
  %481 = fmul fast float %385, 6.130000e+02
  %482 = fadd fast float %480, %481
  %483 = fptoui float %482 to i32
  %484 = add i32 %477, %483
  %485 = mul i32 %484, -63
  %486 = lshr i32 %485, 17
  %487 = xor i32 %486, %485
  %488 = mul i32 %487, -511
  %489 = mul i32 %487, -8176
  %490 = xor i32 %488, %489
  %491 = mul i32 %490, -7
  %492 = mul i32 %490, -7168
  %493 = xor i32 %491, %492
  %494 = lshr i32 %493, 15
  %495 = xor i32 %494, %491
  %496 = and i32 %495, 15
  %497 = mul i32 %496, 2
  %498 = add i32 0, %497
  %499 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %498
  %500 = load float, float* %499, align 4
  %501 = mul i32 %496, 2
  %502 = add i32 1, %501
  %503 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %502
  %504 = load float, float* %503, align 4
  %505 = fmul fast float %389, 2.770000e+02
  %506 = fmul fast float %505, %479
  %507 = fmul fast float %385, 5.990000e+02
  %508 = fadd fast float %506, %507
  %509 = fptoui float %508 to i32
  %510 = mul i32 %509, -63
  %511 = lshr i32 %510, 17
  %512 = xor i32 %511, %510
  %513 = mul i32 %512, -511
  %514 = mul i32 %512, -8176
  %515 = xor i32 %513, %514
  %516 = mul i32 %515, -7
  %517 = mul i32 %515, -7168
  %518 = xor i32 %516, %517
  %519 = lshr i32 %518, 15
  %520 = xor i32 %519, %516
  %521 = and i32 %520, 63
  %522 = mul i32 %521, 2
  %523 = add i32 0, %522
  %524 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %523
  %525 = load float, float* %524, align 4
  %526 = mul i32 %521, 2
  %527 = add i32 1, %526
  %528 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %527
  %529 = load float, float* %528, align 4
  %530 = call float @dx.op.dot2.f32(i32 54, float %500, float %504, float %525, float %529)  ; Dot2(ax,ay,bx,by)
  %531 = fsub fast float -0.000000e+00, %525
  %532 = call float @dx.op.dot2.f32(i32 54, float %500, float %504, float %531, float %529)  ; Dot2(ax,ay,bx,by)
  %533 = fmul fast float %530, %475
  %534 = fmul fast float %532, %475
  %535 = fdiv fast float 2.000000e+00, %441
  %536 = fmul fast float %464, 9.765625e-04
  %537 = fcmp fast olt float %459, %536
  %538 = fcmp fast olt float %460, %536
  %539 = or i1 %537, %538
  %540 = fsub fast float 1.000000e+00, %536
  %541 = fcmp fast ogt float %459, %540
  %542 = fcmp fast ogt float %460, %540
  %543 = or i1 %541, %542
  %544 = or i1 %539, %543
  %545 = fmul fast float %533, 2.000000e+00
  br i1 %544, label %546, label %550, !dx.controlflow.hints !67

; <label>:546                                     ; preds = %474
  %547 = fmul fast float %534, 2.000000e+00
  %548 = fadd fast float %545, %446
  %549 = fadd fast float %547, %447
  br label %550

; <label>:550                                     ; preds = %546, %474
  %551 = phi float [ %548, %546 ], [ %446, %474 ]
  %552 = phi float [ %549, %546 ], [ %447, %474 ]
  %553 = phi i32 [ 3, %546 ], [ 2, %474 ]
  %554 = fadd fast float %533, %450
  %555 = fadd fast float %534, %451
  %556 = fmul fast float %545, %535
  %557 = fmul fast float %535, 2.000000e+00
  %558 = fmul fast float %557, %534
  %559 = fadd fast float %556, %385
  %560 = fadd fast float %558, %389
  br label %640

; <label>:561                                     ; preds = %401
  %562 = call float @dx.op.unary.f32(i32 21, float %438)  ; Exp(value)
  %563 = fmul fast float %562, 9.765625e-04
  %564 = fcmp fast olt float %459, %563
  %565 = fcmp fast olt float %460, %563
  %566 = or i1 %564, %565
  %567 = fsub fast float 1.000000e+00, %563
  %568 = fcmp fast ogt float %459, %567
  %569 = fcmp fast ogt float %460, %567
  %570 = or i1 %568, %569
  %571 = or i1 %566, %570
  br i1 %571, label %572, label %640, !dx.controlflow.hints !68

; <label>:572                                     ; preds = %561
  %573 = fmul fast float %407, 5.000000e-01
  %574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.i32 %574, 0
  %576 = fmul fast float %389, 3.530000e+02
  %577 = uitofp i32 %454 to float
  %578 = fmul fast float %576, %577
  %579 = fmul fast float %385, 6.130000e+02
  %580 = fadd fast float %578, %579
  %581 = fptoui float %580 to i32
  %582 = add i32 %575, %581
  %583 = mul i32 %582, -63
  %584 = lshr i32 %583, 17
  %585 = xor i32 %584, %583
  %586 = mul i32 %585, -511
  %587 = mul i32 %585, -8176
  %588 = xor i32 %586, %587
  %589 = mul i32 %588, -7
  %590 = mul i32 %588, -7168
  %591 = xor i32 %589, %590
  %592 = lshr i32 %591, 15
  %593 = xor i32 %592, %589
  %594 = and i32 %593, 15
  %595 = mul i32 %594, 2
  %596 = add i32 0, %595
  %597 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %596
  %598 = load float, float* %597, align 4
  %599 = mul i32 %594, 2
  %600 = add i32 1, %599
  %601 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %600
  %602 = load float, float* %601, align 4
  %603 = fmul fast float %389, 2.770000e+02
  %604 = fmul fast float %603, %577
  %605 = fmul fast float %385, 5.990000e+02
  %606 = fadd fast float %604, %605
  %607 = fptoui float %606 to i32
  %608 = mul i32 %607, -63
  %609 = lshr i32 %608, 17
  %610 = xor i32 %609, %608
  %611 = mul i32 %610, -511
  %612 = mul i32 %610, -8176
  %613 = xor i32 %611, %612
  %614 = mul i32 %613, -7
  %615 = mul i32 %613, -7168
  %616 = xor i32 %614, %615
  %617 = lshr i32 %616, 15
  %618 = xor i32 %617, %614
  %619 = and i32 %618, 63
  %620 = mul i32 %619, 2
  %621 = add i32 0, %620
  %622 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %621
  %623 = load float, float* %622, align 4
  %624 = mul i32 %619, 2
  %625 = add i32 1, %624
  %626 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %625
  %627 = load float, float* %626, align 4
  %628 = call float @dx.op.dot2.f32(i32 54, float %598, float %602, float %623, float %627)  ; Dot2(ax,ay,bx,by)
  %629 = fsub fast float -0.000000e+00, %623
  %630 = call float @dx.op.dot2.f32(i32 54, float %598, float %602, float %629, float %627)  ; Dot2(ax,ay,bx,by)
  %631 = fmul fast float %628, %573
  %632 = fmul fast float %630, %573
  %633 = fadd fast float %631, %446
  %634 = fadd fast float %632, %447
  %635 = fdiv fast float 2.000000e+00, %441
  %636 = fmul fast float %635, %631
  %637 = fmul fast float %632, %635
  %638 = fadd fast float %636, %385
  %639 = fadd fast float %637, %389
  br label %640

; <label>:640                                     ; preds = %572, %561, %550, %463
  %641 = phi float [ %554, %550 ], [ %450, %463 ], [ %450, %572 ], [ %450, %561 ]
  %642 = phi float [ %555, %550 ], [ %451, %463 ], [ %451, %572 ], [ %451, %561 ]
  %643 = phi float [ %551, %550 ], [ %446, %463 ], [ %633, %572 ], [ %446, %561 ]
  %644 = phi float [ %552, %550 ], [ %447, %463 ], [ %634, %572 ], [ %447, %561 ]
  %645 = phi i32 [ %553, %550 ], [ 0, %463 ], [ 1, %572 ], [ 0, %561 ]
  %646 = phi float [ %559, %550 ], [ %385, %463 ], [ %638, %572 ], [ %385, %561 ]
  %647 = phi float [ %560, %550 ], [ %389, %463 ], [ %639, %572 ], [ %389, %561 ]
  %648 = fsub fast float %412, %410
  %649 = fptoui float %648 to i32
  %650 = add i32 %649, 320
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %650)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = extractvalue %dx.types.CBufRet.f32 %651, 1
  %654 = fcmp fast une float %437, %412
  %655 = fsub fast float %646, %652
  %656 = fsub fast float %647, %653
  %657 = call float @dx.op.unary.f32(i32 6, float %655)  ; FAbs(value)
  %658 = call float @dx.op.unary.f32(i32 6, float %656)  ; FAbs(value)
  %659 = fmul fast float %657, %441
  %660 = fmul fast float %658, %441
  %661 = fcmp fast olt float %659, 1.000000e+00
  %662 = fcmp fast olt float %660, 1.000000e+00
  %663 = and i1 %661, %662
  %664 = or i1 %654, %663
  br i1 %664, label %665, label %2741, !dx.controlflow.hints !69

; <label>:665                                     ; preds = %640
  %666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %667 = extractvalue %dx.types.CBufRet.i32 %666, 2
  %668 = sitofp i32 %667 to float
  %669 = fsub fast float %437, %668
  %670 = call float @dx.op.unary.f32(i32 27, float %669)  ; Round_ni(value)
  %671 = call float @dx.op.unary.f32(i32 22, float %437)  ; Frc(value)
  %672 = icmp eq i32 %645, 0
  %673 = call float @dx.op.unary.f32(i32 22, float %643)  ; Frc(value)
  %674 = call float @dx.op.unary.f32(i32 22, float %644)  ; Frc(value)
  br i1 %672, label %745, label %675, !dx.controlflow.hints !70

; <label>:675                                     ; preds = %665
  %676 = and i32 %645, 1
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %691, label %678, !dx.controlflow.hints !71

; <label>:678                                     ; preds = %675
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 0
  %681 = fmul fast float %673, %680
  %682 = fmul fast float %674, %680
  %683 = fptoui float %681 to i32
  %684 = fptoui float %682 to i32
  %685 = fptoui float %670 to i32
  %686 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %683, i32 %684, i32 %685, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  %688 = extractvalue %dx.types.ResRet.f32 %686, 1
  %689 = extractvalue %dx.types.ResRet.f32 %686, 2
  %690 = extractvalue %dx.types.ResRet.f32 %686, 3
  br label %697

; <label>:691                                     ; preds = %675
  %692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %673, float %674, float %670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = extractvalue %dx.types.ResRet.f32 %692, 3
  br label %697

; <label>:697                                     ; preds = %691, %678
  %698 = phi float [ %687, %678 ], [ %693, %691 ]
  %699 = phi float [ %688, %678 ], [ %694, %691 ]
  %700 = phi float [ %689, %678 ], [ %695, %691 ]
  %701 = phi float [ %690, %678 ], [ %696, %691 ]
  %702 = fcmp fast ogt float %671, 0.000000e+00
  br i1 %702, label %703, label %773, !dx.controlflow.hints !72

; <label>:703                                     ; preds = %697
  %704 = and i32 %645, 2
  %705 = icmp eq i32 %704, 0
  %706 = fadd fast float %670, 1.000000e+00
  %707 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %708 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  br i1 %705, label %722, label %709, !dx.controlflow.hints !73

; <label>:709                                     ; preds = %703
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 0
  %712 = fmul fast float %707, %711
  %713 = fmul fast float %708, %711
  %714 = fptoui float %712 to i32
  %715 = fptoui float %713 to i32
  %716 = fptoui float %706 to i32
  %717 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %714, i32 %715, i32 %716, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 1
  %720 = extractvalue %dx.types.ResRet.f32 %717, 2
  %721 = extractvalue %dx.types.ResRet.f32 %717, 3
  br label %728

; <label>:722                                     ; preds = %703
  %723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %707, float %708, float %706, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = extractvalue %dx.types.ResRet.f32 %723, 3
  br label %728

; <label>:728                                     ; preds = %722, %709
  %729 = phi float [ %718, %709 ], [ %724, %722 ]
  %730 = phi float [ %719, %709 ], [ %725, %722 ]
  %731 = phi float [ %720, %709 ], [ %726, %722 ]
  %732 = phi float [ %721, %709 ], [ %727, %722 ]
  %733 = fsub fast float %729, %698
  %734 = fsub fast float %730, %699
  %735 = fsub fast float %731, %700
  %736 = fsub fast float %732, %701
  %737 = fmul fast float %733, %671
  %738 = fmul fast float %734, %671
  %739 = fmul fast float %735, %671
  %740 = fmul fast float %736, %671
  %741 = fadd fast float %737, %698
  %742 = fadd fast float %738, %699
  %743 = fadd fast float %739, %700
  %744 = fadd fast float %740, %701
  br label %773

; <label>:745                                     ; preds = %665
  %746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %673, float %674, float %670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = fcmp fast ogt float %671, 0.000000e+00
  br i1 %751, label %752, label %773, !dx.controlflow.hints !74

; <label>:752                                     ; preds = %745
  %753 = fadd fast float %670, 1.000000e+00
  %754 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %755 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %754, float %755, float %753, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = extractvalue %dx.types.ResRet.f32 %756, 3
  %761 = fsub fast float %757, %747
  %762 = fsub fast float %758, %748
  %763 = fsub fast float %759, %749
  %764 = fsub fast float %760, %750
  %765 = fmul fast float %761, %671
  %766 = fmul fast float %762, %671
  %767 = fmul fast float %763, %671
  %768 = fmul fast float %764, %671
  %769 = fadd fast float %765, %747
  %770 = fadd fast float %766, %748
  %771 = fadd fast float %767, %749
  %772 = fadd fast float %768, %750
  br label %773

; <label>:773                                     ; preds = %752, %745, %728, %697
  %774 = phi float [ %741, %728 ], [ %698, %697 ], [ %769, %752 ], [ %747, %745 ]
  %775 = phi float [ %742, %728 ], [ %699, %697 ], [ %770, %752 ], [ %748, %745 ]
  %776 = phi float [ %743, %728 ], [ %700, %697 ], [ %771, %752 ], [ %749, %745 ]
  %777 = phi float [ %744, %728 ], [ %701, %697 ], [ %772, %752 ], [ %750, %745 ]
  %778 = fadd fast float %774, -5.000000e-01
  %779 = fadd fast float %776, -5.000000e-01
  %780 = fmul fast float %778, 0xBFD5555560000000
  %781 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %779, float %780)  ; FMad(a,b,c)
  %782 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %775, float 0.000000e+00)  ; FMad(a,b,c)
  %783 = fadd fast float %782, %777
  %784 = fmul fast float %778, -7.500000e-01
  %785 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %779, float %784)  ; FMad(a,b,c)
  %786 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %775, float 0.000000e+00)  ; FMad(a,b,c)
  %787 = fadd fast float %786, %777
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %795 = fsub fast float %791, %781
  %796 = fsub fast float %792, %783
  %797 = fsub fast float %793, %785
  %798 = fsub fast float %794, %787
  %799 = fmul fast float %795, %789
  %800 = fmul fast float %796, %789
  %801 = fmul fast float %797, %789
  %802 = fmul fast float %798, %789
  %803 = fadd fast float %799, %781
  %804 = fadd fast float %800, %783
  %805 = fadd fast float %801, %785
  %806 = fadd fast float %802, %787
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 536870911
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, %646
  %812 = fmul fast float %810, %647
  %813 = fptoui float %811 to i32
  %814 = fptoui float %812 to i32
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 31
  %818 = lshr i32 %813, %817
  %819 = lshr i32 %814, %817
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 31
  %823 = shl i32 1, %822
  %824 = call i32 @dx.op.binary.i32(i32 40, i32 %823, i32 4)  ; UMin(a,b)
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = extractvalue %dx.types.ResRet.i32 %825, 1
  %828 = icmp eq i32 %824, 0
  br i1 %828, label %870, label %829

; <label>:829                                     ; preds = %773
  br label %830

; <label>:830                                     ; preds = %858, %829
  %831 = phi i32 [ %861, %858 ], [ 0, %829 ]
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 16
  %835 = and i32 %834, 31
  %836 = shl i32 %819, %835
  %837 = add i32 %836, %818
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 31
  %841 = shl i32 %837, %840
  %842 = add i32 %841, %831
  %843 = shl i32 %842, 2
  %844 = add i32 %843, 32
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = icmp slt i32 %846, 0
  %848 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %831
  %849 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %831
  %850 = bitcast float* %848 to i32*
  %851 = bitcast float* %849 to i32*
  br i1 %847, label %852, label %858, !dx.controlflow.hints !75

; <label>:852                                     ; preds = %830
  %853 = and i32 %846, 1073741823
  %854 = add nuw nsw i32 %853, 20
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = extractvalue %dx.types.ResRet.i32 %855, 1
  br label %858

; <label>:858                                     ; preds = %852, %830
  %859 = phi i32 [ %856, %852 ], [ %826, %830 ]
  %860 = phi i32 [ %857, %852 ], [ %827, %830 ]
  store i32 %859, i32* %850, align 4
  store i32 %860, i32* %851, align 4
  %861 = add nuw i32 %831, 1
  %862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.i32 %862, 2
  %864 = icmp eq i32 %863, 0
  %865 = icmp ugt i32 %846, -1073741825
  %866 = and i1 %865, %864
  %867 = icmp ult i32 %861, %824
  %868 = and i1 %866, %867
  br i1 %868, label %830, label %869, !dx.controlflow.hints !76

; <label>:869                                     ; preds = %858
  br label %870

; <label>:870                                     ; preds = %869, %773
  %871 = phi i32 [ 0, %773 ], [ %861, %869 ]
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %874 = fptoui float %873 to i32
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %927, label %876

; <label>:876                                     ; preds = %870
  br label %877

; <label>:877                                     ; preds = %922, %876
  %878 = phi i32 [ %923, %922 ], [ %871, %876 ]
  %879 = phi i32 [ %924, %922 ], [ 0, %876 ]
  %880 = lshr i32 %879, 2
  %881 = and i32 %879, 3
  %882 = add nuw nsw i32 %880, 83
  %883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %882)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.i32 %883, 0
  %885 = extractvalue %dx.types.CBufRet.i32 %883, 1
  %886 = extractvalue %dx.types.CBufRet.i32 %883, 2
  %887 = extractvalue %dx.types.CBufRet.i32 %883, 3
  %888 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %884, i32* %888, align 4
  %889 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %885, i32* %889, align 4
  %890 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %886, i32* %890, align 4
  %891 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %887, i32* %891, align 4
  %892 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %881
  %893 = load i32, i32* %892, align 4, !tbaa !53
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = lshr i32 %895, 16
  %897 = and i32 %896, 31
  %898 = shl i32 %819, %897
  %899 = add i32 %898, %818
  %900 = shl i32 %899, 2
  %901 = add i32 %900, %893
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %922, label %905, !dx.controlflow.hints !77

; <label>:905                                     ; preds = %877
  %906 = icmp slt i32 %903, 0
  %907 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %878
  %908 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %878
  %909 = bitcast float* %907 to i32*
  %910 = bitcast float* %908 to i32*
  br i1 %906, label %911, label %918, !dx.controlflow.hints !78

; <label>:911                                     ; preds = %905
  %912 = and i32 %903, 1073741823
  %913 = add i32 %893, 20
  %914 = add i32 %913, %912
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = extractvalue %dx.types.ResRet.i32 %915, 1
  br label %918

; <label>:918                                     ; preds = %911, %905
  %919 = phi i32 [ %916, %911 ], [ %826, %905 ]
  %920 = phi i32 [ %917, %911 ], [ %827, %905 ]
  store i32 %919, i32* %909, align 4
  store i32 %920, i32* %910, align 4
  %921 = add i32 %878, 1
  br label %922

; <label>:922                                     ; preds = %918, %877
  %923 = phi i32 [ %878, %877 ], [ %921, %918 ]
  %924 = add nuw i32 %879, 1
  %925 = icmp eq i32 %924, %874
  br i1 %925, label %926, label %877

; <label>:926                                     ; preds = %922
  br label %927

; <label>:927                                     ; preds = %926, %870
  %928 = phi i32 [ %871, %870 ], [ %923, %926 ]
  %929 = icmp eq i32 %928, 1
  %930 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  %931 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 0
  br i1 %929, label %932, label %935, !dx.controlflow.hints !79

; <label>:932                                     ; preds = %927
  %933 = load float, float* %930, align 4
  %934 = load float, float* %931, align 4
  br label %962

; <label>:935                                     ; preds = %927
  %936 = load float, float* %930, align 4
  %937 = load float, float* %931, align 4
  %938 = fdiv fast float 1.000000e+00, %937
  %939 = fsub fast float %936, %938
  %940 = icmp ugt i32 %928, 1
  br i1 %940, label %941, label %957

; <label>:941                                     ; preds = %935
  br label %942

; <label>:942                                     ; preds = %942, %941
  %943 = phi float [ %952, %942 ], [ %939, %941 ]
  %944 = phi float [ %953, %942 ], [ %936, %941 ]
  %945 = phi i32 [ %954, %942 ], [ 1, %941 ]
  %946 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %945
  %947 = load float, float* %946, align 4
  %948 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %945
  %949 = load float, float* %948, align 4
  %950 = fdiv fast float 1.000000e+00, %949
  %951 = fsub fast float %947, %950
  %952 = call float @dx.op.binary.f32(i32 36, float %943, float %951)  ; FMin(a,b)
  %953 = call float @dx.op.binary.f32(i32 35, float %944, float %947)  ; FMax(a,b)
  %954 = add nuw i32 %945, 1
  %955 = icmp eq i32 %954, %928
  br i1 %955, label %956, label %942

; <label>:956                                     ; preds = %942
  br label %957

; <label>:957                                     ; preds = %956, %935
  %958 = phi float [ %939, %935 ], [ %952, %956 ]
  %959 = phi float [ %936, %935 ], [ %953, %956 ]
  %960 = fsub fast float %959, %958
  %961 = fdiv fast float 1.000000e+00, %960
  br label %962

; <label>:962                                     ; preds = %957, %932
  %963 = phi float [ %933, %932 ], [ %959, %957 ]
  %964 = phi float [ %934, %932 ], [ %961, %957 ]
  %965 = fadd fast float %393, %963
  %966 = fmul fast float %965, %964
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = fmul fast float %967, 2.000000e+00
  %969 = fsub fast float 1.000000e+00, %968
  %970 = fmul fast float %803, %803
  %971 = fsub fast float %804, %970
  %972 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %971)  ; FMax(a,b)
  %973 = fdiv fast float 1.000000e+00, %972
  %974 = fmul fast float %804, %803
  %975 = fsub fast float %805, %974
  %976 = fsub fast float %969, %803
  %977 = fmul fast float %969, %969
  %978 = fsub fast float %977, %804
  %979 = fmul fast float %973, %975
  %980 = fmul fast float %979, %976
  %981 = fsub fast float %978, %980
  %982 = fmul fast float %804, %804
  %983 = fsub fast float %806, %982
  %984 = fmul fast float %975, %975
  %985 = fmul fast float %984, %973
  %986 = fsub fast float %983, %985
  %987 = fdiv fast float %981, %986
  %988 = fmul fast float %987, %975
  %989 = fsub fast float %976, %988
  %990 = fmul fast float %989, %973
  %991 = fmul fast float %990, %803
  %992 = fsub fast float 1.000000e+00, %991
  %993 = fmul fast float %987, %804
  %994 = fsub fast float %992, %993
  %995 = fmul fast float %990, %990
  %996 = fmul fast float %987, 4.000000e+00
  %997 = fmul fast float %996, %994
  %998 = fsub fast float %995, %997
  %999 = call float @dx.op.unary.f32(i32 24, float %998)  ; Sqrt(value)
  %1000 = fcmp fast oge float %990, 0.000000e+00
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = select i1 %1000, float %1001, float %999
  %1003 = fsub fast float %1002, %990
  %1004 = fdiv fast float %1003, %987
  %1005 = fdiv fast float %994, %1003
  %1006 = fmul fast float %1004, 5.000000e-01
  %1007 = fmul fast float %1005, 2.000000e+00
  %1008 = select i1 %1000, float %1006, float %1007
  %1009 = select i1 %1000, float %1007, float %1006
  %1010 = call float @dx.op.binary.f32(i32 35, float %1008, float %1009)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1008, float %1009)  ; FMin(a,b)
  %1012 = fcmp fast ogt float %969, %1010
  %1013 = fsub fast float %969, %1011
  %1014 = fsub fast float %969, %1010
  %1015 = fsub fast float %1010, %1011
  %1016 = select i1 %1012, float %1014, float %1015
  %1017 = fmul float %1013, %1016
  %1018 = select i1 %1012, float %1011, float %969
  %1019 = fcmp fast ogt float %969, %1011
  %1020 = fmul fast float %1018, %1010
  %1021 = fadd fast float %1018, %1010
  %1022 = fmul fast float %1021, %803
  %1023 = fadd fast float %1020, %804
  %1024 = fsub fast float %1023, %1022
  %1025 = fdiv fast float %1024, %1017
  %1026 = select i1 %1019, float %1025, float 0.000000e+00
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = select i1 %1012, float %1027, float %1026
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %1031 = fmul fast float %1030, %1029
  %1032 = fsub fast float 1.000000e+00, %1031
  br label %2741

; <label>:1033                                    ; preds = %361
  %1034 = icmp eq i32 %277, 11
  br i1 %1034, label %2741, label %1035, !dx.controlflow.hints !80

; <label>:1035                                    ; preds = %1033
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 3
  %1040 = fmul fast float %1039, %244
  %1041 = fmul fast float %1039, %248
  %1042 = fadd fast float %1040, %1037
  %1043 = fadd fast float %1041, %1038
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.CBufRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1048 = fmul fast float %1047, %244
  %1049 = fmul fast float %1047, %248
  %1050 = fadd fast float %1048, %1045
  %1051 = fadd fast float %1049, %1046
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1054 = fsub fast float %1053, %252
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = fmul fast float %1054, %1055
  %1057 = fsub fast float 1.000000e+00, %1056
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  br i1 %101, label %1119, label %1059, !dx.controlflow.hints !81

; <label>:1059                                    ; preds = %1035
  %1060 = extractvalue %dx.types.CBufRet.f32 %1044, 2
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1063 = fadd fast float %1062, %1060
  %1064 = fcmp fast ogt float %1063, 0.000000e+00
  br i1 %1064, label %1065, label %1089, !dx.controlflow.hints !82

; <label>:1065                                    ; preds = %1059
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = fsub fast float %1050, %1067
  %1070 = fsub fast float %1051, %1068
  %1071 = fcmp fast olt float %1069, 0.000000e+00
  %1072 = fcmp fast olt float %1070, 0.000000e+00
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1077 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1078 = select i1 %1071, float %1074, float %1076
  %1079 = select i1 %1072, float %1075, float %1077
  %1080 = fmul fast float %1078, %1069
  %1081 = fmul fast float %1079, %1070
  %1082 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1083 = call float @dx.op.unary.f32(i32 6, float %1081)  ; FAbs(value)
  %1084 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1085 = call float @dx.op.binary.f32(i32 35, float %1082, float %1083)  ; FMax(a,b)
  %1086 = fsub fast float %1084, %1085
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = fmul fast float %1087, %1058
  br label %1089

; <label>:1089                                    ; preds = %1065, %1059
  %1090 = phi float [ %1088, %1065 ], [ 0.000000e+00, %1059 ]
  %1091 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1092 = extractvalue %dx.types.CBufRet.f32 %1061, 1
  %1093 = fadd fast float %1092, %1091
  %1094 = fcmp fast ogt float %1093, 0.000000e+00
  br i1 %1094, label %1095, label %1119, !dx.controlflow.hints !83

; <label>:1095                                    ; preds = %1089
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = fsub fast float %1042, %1097
  %1100 = fsub fast float %1043, %1098
  %1101 = fcmp fast olt float %1099, 0.000000e+00
  %1102 = fcmp fast olt float %1100, 0.000000e+00
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = extractvalue %dx.types.CBufRet.f32 %1103, 3
  %1108 = select i1 %1101, float %1104, float %1106
  %1109 = select i1 %1102, float %1105, float %1107
  %1110 = fmul fast float %1108, %1099
  %1111 = fmul fast float %1109, %1100
  %1112 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1113 = call float @dx.op.unary.f32(i32 6, float %1111)  ; FAbs(value)
  %1114 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1115 = call float @dx.op.binary.f32(i32 35, float %1112, float %1113)  ; FMax(a,b)
  %1116 = fsub fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fmul fast float %1117, %1058
  br label %1119

; <label>:1119                                    ; preds = %1095, %1089, %1035
  %1120 = phi float [ 0.000000e+00, %1035 ], [ %1118, %1095 ], [ 0.000000e+00, %1089 ]
  %1121 = phi float [ 0.000000e+00, %1035 ], [ %1090, %1095 ], [ %1090, %1089 ]
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = fmul fast float %1123, %108
  %1126 = fadd fast float %1125, %1124
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1131 = fsub fast float %244, %1129
  %1132 = fsub fast float %248, %1130
  %1133 = fcmp fast olt float %1131, 0.000000e+00
  %1134 = fcmp fast olt float %1132, 0.000000e+00
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1140 = select i1 %1133, float %1136, float %1138
  %1141 = select i1 %1134, float %1137, float %1139
  %1142 = fmul fast float %1140, %1131
  %1143 = fmul fast float %1141, %1132
  %1144 = call float @dx.op.unary.f32(i32 6, float %1142)  ; FAbs(value)
  %1145 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1146 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1147 = call float @dx.op.binary.f32(i32 35, float %1144, float %1145)  ; FMax(a,b)
  %1148 = fsub fast float %1146, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1149, float %1127)  ; FMin(a,b)
  %1151 = fmul fast float %1150, %1058
  %1152 = fsub fast float %1120, %1151
  %1153 = fsub fast float %1121, %1120
  %1154 = fsub fast float %1153, %1151
  %1155 = call float @dx.op.binary.f32(i32 35, float %1120, float %1121)  ; FMax(a,b)
  %1156 = call float @dx.op.binary.f32(i32 35, float %1151, float %1155)  ; FMax(a,b)
  %1157 = fcmp fast olt float %1156, 1.000000e+00
  %1158 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %1159 = fcmp fast une float %1158, 0.000000e+00
  %1160 = and i1 %1157, %1159
  br i1 %1160, label %1161, label %1828, !dx.controlflow.hints !84

; <label>:1161                                    ; preds = %1119
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.CBufRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1162, 3
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1171 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 0
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 1
  %1175 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1176 = extractvalue %dx.types.CBufRet.f32 %1172, 3
  %1177 = fmul fast float %1163, %164
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %165, float %1164, float %1177)  ; FMad(a,b,c)
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %166, float %1165, float %1178)  ; FMad(a,b,c)
  %1180 = fadd fast float %1179, %1166
  %1181 = fmul fast float %1168, %164
  %1182 = call float @dx.op.tertiary.f32(i32 46, float %165, float %1169, float %1181)  ; FMad(a,b,c)
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %166, float %1170, float %1182)  ; FMad(a,b,c)
  %1184 = fadd fast float %1183, %1171
  %1185 = fmul fast float %1173, %164
  %1186 = call float @dx.op.tertiary.f32(i32 46, float %165, float %1174, float %1185)  ; FMad(a,b,c)
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %166, float %1175, float %1186)  ; FMad(a,b,c)
  %1188 = fadd fast float %1187, %1176
  %1189 = fcmp fast oge float %1180, 1.000000e+00
  %1190 = fcmp fast oge float %1184, 1.000000e+00
  %1191 = or i1 %1189, %1190
  %1192 = fcmp fast olt float %1180, 0.000000e+00
  %1193 = fcmp fast olt float %1184, 0.000000e+00
  %1194 = or i1 %1192, %1193
  %1195 = or i1 %1191, %1194
  br i1 %1195, label %1828, label %1196, !dx.controlflow.hints !64

; <label>:1196                                    ; preds = %1161
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.i32 %1203, 2
  %1205 = uitofp i32 %1204 to float
  %1206 = extractvalue %dx.types.CBufRet.i32 %1203, 3
  %1207 = uitofp i32 %1206 to float
  %1208 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1209 = fmul fast float %1208, 2.000000e+00
  %1210 = fsub fast float %1180, %1198
  %1211 = fsub fast float %1184, %1199
  %1212 = fmul fast float %1209, %1210
  %1213 = fmul fast float %1209, %1211
  %1214 = fdiv fast float 1.000000e+00, %214
  %1215 = fmul fast float %1213, %1214
  %1216 = call float @dx.op.unary.f32(i32 6, float %1215)  ; FAbs(value)
  %1217 = fmul fast float %1200, %166
  %1218 = fmul fast float %1217, %1209
  %1219 = call float @dx.op.unary.f32(i32 6, float %1218)  ; FAbs(value)
  %1220 = call float @dx.op.unary.f32(i32 6, float %1212)  ; FAbs(value)
  %1221 = call float @dx.op.binary.f32(i32 35, float %1219, float %1216)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %1221)  ; FMax(a,b)
  %1223 = fmul fast float %1222, 2.000000e+00
  %1224 = call float @dx.op.unary.f32(i32 23, float %1223)  ; Log(value)
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float %1205)  ; FMax(a,b)
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = fadd fast float %1226, 0xBFEA666660000000
  %1228 = fmul fast float %1227, 8.000000e+00
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = call float @dx.op.unary.f32(i32 27, float %1225)  ; Round_ni(value)
  %1231 = fadd fast float %1230, %1229
  %1232 = call float @dx.op.binary.f32(i32 36, float %1231, float %1207)  ; FMin(a,b)
  %1233 = call float @dx.op.unary.f32(i32 27, float %1232)  ; Round_ni(value)
  %1234 = fsub fast float -0.000000e+00, %1233
  %1235 = call float @dx.op.unary.f32(i32 21, float %1234)  ; Exp(value)
  %1236 = fmul fast float %1235, %1209
  %1237 = fmul fast float %1236, %1180
  %1238 = fmul fast float %1236, %1184
  %1239 = fmul fast float %1237, 5.000000e-01
  %1240 = fmul fast float %1238, 5.000000e-01
  %1241 = fadd fast float %1239, 5.000000e-01
  %1242 = fadd fast float %1240, 5.000000e-01
  %1243 = fmul fast float %1237, 2.500000e-01
  %1244 = fmul fast float %1238, 2.500000e-01
  %1245 = fadd fast float %1243, 5.000000e-01
  %1246 = fadd fast float %1244, 5.000000e-01
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 536870911
  %1250 = lshr i32 %1249, 9
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, %1180
  %1253 = fmul fast float %1251, %1184
  %1254 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1255 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1256 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1257 = fcmp fast une float %1256, 0.000000e+00
  br i1 %1257, label %1258, label %1356, !dx.controlflow.hints !65

; <label>:1258                                    ; preds = %1196
  %1259 = call float @dx.op.unary.f32(i32 21, float %1230)  ; Exp(value)
  %1260 = fmul fast float %1259, 1.953125e-03
  %1261 = fcmp fast olt float %1254, %1260
  %1262 = fcmp fast olt float %1255, %1260
  %1263 = or i1 %1261, %1262
  %1264 = fsub fast float 1.000000e+00, %1260
  %1265 = fcmp fast ogt float %1254, %1264
  %1266 = fcmp fast ogt float %1255, %1264
  %1267 = or i1 %1265, %1266
  %1268 = or i1 %1263, %1267
  br i1 %1268, label %1269, label %1435, !dx.controlflow.hints !66

; <label>:1269                                    ; preds = %1258
  %1270 = fmul fast float %1202, 5.000000e-01
  %1271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.i32 %1271, 0
  %1273 = fmul fast float %1184, 3.530000e+02
  %1274 = uitofp i32 %1249 to float
  %1275 = fmul fast float %1273, %1274
  %1276 = fmul fast float %1180, 6.130000e+02
  %1277 = fadd fast float %1275, %1276
  %1278 = fptoui float %1277 to i32
  %1279 = add i32 %1272, %1278
  %1280 = mul i32 %1279, -63
  %1281 = lshr i32 %1280, 17
  %1282 = xor i32 %1281, %1280
  %1283 = mul i32 %1282, -511
  %1284 = mul i32 %1282, -8176
  %1285 = xor i32 %1283, %1284
  %1286 = mul i32 %1285, -7
  %1287 = mul i32 %1285, -7168
  %1288 = xor i32 %1286, %1287
  %1289 = lshr i32 %1288, 15
  %1290 = xor i32 %1289, %1286
  %1291 = and i32 %1290, 15
  %1292 = mul i32 %1291, 2
  %1293 = add i32 0, %1292
  %1294 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1293
  %1295 = load float, float* %1294, align 4
  %1296 = mul i32 %1291, 2
  %1297 = add i32 1, %1296
  %1298 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1297
  %1299 = load float, float* %1298, align 4
  %1300 = fmul fast float %1184, 2.770000e+02
  %1301 = fmul fast float %1300, %1274
  %1302 = fmul fast float %1180, 5.990000e+02
  %1303 = fadd fast float %1301, %1302
  %1304 = fptoui float %1303 to i32
  %1305 = mul i32 %1304, -63
  %1306 = lshr i32 %1305, 17
  %1307 = xor i32 %1306, %1305
  %1308 = mul i32 %1307, -511
  %1309 = mul i32 %1307, -8176
  %1310 = xor i32 %1308, %1309
  %1311 = mul i32 %1310, -7
  %1312 = mul i32 %1310, -7168
  %1313 = xor i32 %1311, %1312
  %1314 = lshr i32 %1313, 15
  %1315 = xor i32 %1314, %1311
  %1316 = and i32 %1315, 63
  %1317 = mul i32 %1316, 2
  %1318 = add i32 0, %1317
  %1319 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1318
  %1320 = load float, float* %1319, align 4
  %1321 = mul i32 %1316, 2
  %1322 = add i32 1, %1321
  %1323 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1322
  %1324 = load float, float* %1323, align 4
  %1325 = call float @dx.op.dot2.f32(i32 54, float %1295, float %1299, float %1320, float %1324)  ; Dot2(ax,ay,bx,by)
  %1326 = fsub fast float -0.000000e+00, %1320
  %1327 = call float @dx.op.dot2.f32(i32 54, float %1295, float %1299, float %1326, float %1324)  ; Dot2(ax,ay,bx,by)
  %1328 = fmul fast float %1325, %1270
  %1329 = fmul fast float %1327, %1270
  %1330 = fdiv fast float 2.000000e+00, %1236
  %1331 = fmul fast float %1259, 9.765625e-04
  %1332 = fcmp fast olt float %1254, %1331
  %1333 = fcmp fast olt float %1255, %1331
  %1334 = or i1 %1332, %1333
  %1335 = fsub fast float 1.000000e+00, %1331
  %1336 = fcmp fast ogt float %1254, %1335
  %1337 = fcmp fast ogt float %1255, %1335
  %1338 = or i1 %1336, %1337
  %1339 = or i1 %1334, %1338
  %1340 = fmul fast float %1328, 2.000000e+00
  br i1 %1339, label %1341, label %1345, !dx.controlflow.hints !67

; <label>:1341                                    ; preds = %1269
  %1342 = fmul fast float %1329, 2.000000e+00
  %1343 = fadd fast float %1340, %1241
  %1344 = fadd fast float %1342, %1242
  br label %1345

; <label>:1345                                    ; preds = %1341, %1269
  %1346 = phi float [ %1343, %1341 ], [ %1241, %1269 ]
  %1347 = phi float [ %1344, %1341 ], [ %1242, %1269 ]
  %1348 = phi i32 [ 3, %1341 ], [ 2, %1269 ]
  %1349 = fadd fast float %1328, %1245
  %1350 = fadd fast float %1329, %1246
  %1351 = fmul fast float %1340, %1330
  %1352 = fmul fast float %1330, 2.000000e+00
  %1353 = fmul fast float %1352, %1329
  %1354 = fadd fast float %1351, %1180
  %1355 = fadd fast float %1353, %1184
  br label %1435

; <label>:1356                                    ; preds = %1196
  %1357 = call float @dx.op.unary.f32(i32 21, float %1233)  ; Exp(value)
  %1358 = fmul fast float %1357, 9.765625e-04
  %1359 = fcmp fast olt float %1254, %1358
  %1360 = fcmp fast olt float %1255, %1358
  %1361 = or i1 %1359, %1360
  %1362 = fsub fast float 1.000000e+00, %1358
  %1363 = fcmp fast ogt float %1254, %1362
  %1364 = fcmp fast ogt float %1255, %1362
  %1365 = or i1 %1363, %1364
  %1366 = or i1 %1361, %1365
  br i1 %1366, label %1367, label %1435, !dx.controlflow.hints !68

; <label>:1367                                    ; preds = %1356
  %1368 = fmul fast float %1202, 5.000000e-01
  %1369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.i32 %1369, 0
  %1371 = fmul fast float %1184, 3.530000e+02
  %1372 = uitofp i32 %1249 to float
  %1373 = fmul fast float %1371, %1372
  %1374 = fmul fast float %1180, 6.130000e+02
  %1375 = fadd fast float %1373, %1374
  %1376 = fptoui float %1375 to i32
  %1377 = add i32 %1370, %1376
  %1378 = mul i32 %1377, -63
  %1379 = lshr i32 %1378, 17
  %1380 = xor i32 %1379, %1378
  %1381 = mul i32 %1380, -511
  %1382 = mul i32 %1380, -8176
  %1383 = xor i32 %1381, %1382
  %1384 = mul i32 %1383, -7
  %1385 = mul i32 %1383, -7168
  %1386 = xor i32 %1384, %1385
  %1387 = lshr i32 %1386, 15
  %1388 = xor i32 %1387, %1384
  %1389 = and i32 %1388, 15
  %1390 = mul i32 %1389, 2
  %1391 = add i32 0, %1390
  %1392 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1391
  %1393 = load float, float* %1392, align 4
  %1394 = mul i32 %1389, 2
  %1395 = add i32 1, %1394
  %1396 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1395
  %1397 = load float, float* %1396, align 4
  %1398 = fmul fast float %1184, 2.770000e+02
  %1399 = fmul fast float %1398, %1372
  %1400 = fmul fast float %1180, 5.990000e+02
  %1401 = fadd fast float %1399, %1400
  %1402 = fptoui float %1401 to i32
  %1403 = mul i32 %1402, -63
  %1404 = lshr i32 %1403, 17
  %1405 = xor i32 %1404, %1403
  %1406 = mul i32 %1405, -511
  %1407 = mul i32 %1405, -8176
  %1408 = xor i32 %1406, %1407
  %1409 = mul i32 %1408, -7
  %1410 = mul i32 %1408, -7168
  %1411 = xor i32 %1409, %1410
  %1412 = lshr i32 %1411, 15
  %1413 = xor i32 %1412, %1409
  %1414 = and i32 %1413, 63
  %1415 = mul i32 %1414, 2
  %1416 = add i32 0, %1415
  %1417 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1416
  %1418 = load float, float* %1417, align 4
  %1419 = mul i32 %1414, 2
  %1420 = add i32 1, %1419
  %1421 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1420
  %1422 = load float, float* %1421, align 4
  %1423 = call float @dx.op.dot2.f32(i32 54, float %1393, float %1397, float %1418, float %1422)  ; Dot2(ax,ay,bx,by)
  %1424 = fsub fast float -0.000000e+00, %1418
  %1425 = call float @dx.op.dot2.f32(i32 54, float %1393, float %1397, float %1424, float %1422)  ; Dot2(ax,ay,bx,by)
  %1426 = fmul fast float %1423, %1368
  %1427 = fmul fast float %1425, %1368
  %1428 = fadd fast float %1426, %1241
  %1429 = fadd fast float %1427, %1242
  %1430 = fdiv fast float 2.000000e+00, %1236
  %1431 = fmul fast float %1430, %1426
  %1432 = fmul fast float %1427, %1430
  %1433 = fadd fast float %1431, %1180
  %1434 = fadd fast float %1432, %1184
  br label %1435

; <label>:1435                                    ; preds = %1367, %1356, %1345, %1258
  %1436 = phi float [ %1349, %1345 ], [ %1245, %1258 ], [ %1245, %1367 ], [ %1245, %1356 ]
  %1437 = phi float [ %1350, %1345 ], [ %1246, %1258 ], [ %1246, %1367 ], [ %1246, %1356 ]
  %1438 = phi float [ %1346, %1345 ], [ %1241, %1258 ], [ %1428, %1367 ], [ %1241, %1356 ]
  %1439 = phi float [ %1347, %1345 ], [ %1242, %1258 ], [ %1429, %1367 ], [ %1242, %1356 ]
  %1440 = phi i32 [ %1348, %1345 ], [ 0, %1258 ], [ 1, %1367 ], [ 0, %1356 ]
  %1441 = phi float [ %1354, %1345 ], [ %1180, %1258 ], [ %1433, %1367 ], [ %1180, %1356 ]
  %1442 = phi float [ %1355, %1345 ], [ %1184, %1258 ], [ %1434, %1367 ], [ %1184, %1356 ]
  %1443 = fsub fast float %1207, %1205
  %1444 = fptoui float %1443 to i32
  %1445 = add i32 %1444, 320
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %1445)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 1
  %1449 = fcmp fast une float %1232, %1207
  %1450 = fsub fast float %1441, %1447
  %1451 = fsub fast float %1442, %1448
  %1452 = call float @dx.op.unary.f32(i32 6, float %1450)  ; FAbs(value)
  %1453 = call float @dx.op.unary.f32(i32 6, float %1451)  ; FAbs(value)
  %1454 = fmul fast float %1452, %1236
  %1455 = fmul fast float %1453, %1236
  %1456 = fcmp fast olt float %1454, 1.000000e+00
  %1457 = fcmp fast olt float %1455, 1.000000e+00
  %1458 = and i1 %1456, %1457
  %1459 = or i1 %1449, %1458
  br i1 %1459, label %1460, label %1828, !dx.controlflow.hints !69

; <label>:1460                                    ; preds = %1435
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 2
  %1463 = sitofp i32 %1462 to float
  %1464 = fsub fast float %1232, %1463
  %1465 = call float @dx.op.unary.f32(i32 27, float %1464)  ; Round_ni(value)
  %1466 = call float @dx.op.unary.f32(i32 22, float %1232)  ; Frc(value)
  %1467 = icmp eq i32 %1440, 0
  %1468 = call float @dx.op.unary.f32(i32 22, float %1438)  ; Frc(value)
  %1469 = call float @dx.op.unary.f32(i32 22, float %1439)  ; Frc(value)
  br i1 %1467, label %1540, label %1470, !dx.controlflow.hints !70

; <label>:1470                                    ; preds = %1460
  %1471 = and i32 %1440, 1
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1486, label %1473, !dx.controlflow.hints !71

; <label>:1473                                    ; preds = %1470
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 0
  %1476 = fmul fast float %1468, %1475
  %1477 = fmul fast float %1469, %1475
  %1478 = fptoui float %1476 to i32
  %1479 = fptoui float %1477 to i32
  %1480 = fptoui float %1465 to i32
  %1481 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1478, i32 %1479, i32 %1480, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = extractvalue %dx.types.ResRet.f32 %1481, 3
  br label %1492

; <label>:1486                                    ; preds = %1470
  %1487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1468, float %1469, float %1465, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1491 = extractvalue %dx.types.ResRet.f32 %1487, 3
  br label %1492

; <label>:1492                                    ; preds = %1486, %1473
  %1493 = phi float [ %1482, %1473 ], [ %1488, %1486 ]
  %1494 = phi float [ %1483, %1473 ], [ %1489, %1486 ]
  %1495 = phi float [ %1484, %1473 ], [ %1490, %1486 ]
  %1496 = phi float [ %1485, %1473 ], [ %1491, %1486 ]
  %1497 = fcmp fast ogt float %1466, 0.000000e+00
  br i1 %1497, label %1498, label %1568, !dx.controlflow.hints !72

; <label>:1498                                    ; preds = %1492
  %1499 = and i32 %1440, 2
  %1500 = icmp eq i32 %1499, 0
  %1501 = fadd fast float %1465, 1.000000e+00
  %1502 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1503 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  br i1 %1500, label %1517, label %1504, !dx.controlflow.hints !73

; <label>:1504                                    ; preds = %1498
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = fmul fast float %1502, %1506
  %1508 = fmul fast float %1503, %1506
  %1509 = fptoui float %1507 to i32
  %1510 = fptoui float %1508 to i32
  %1511 = fptoui float %1501 to i32
  %1512 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1509, i32 %1510, i32 %1511, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = extractvalue %dx.types.ResRet.f32 %1512, 3
  br label %1523

; <label>:1517                                    ; preds = %1498
  %1518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1502, float %1503, float %1501, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  br label %1523

; <label>:1523                                    ; preds = %1517, %1504
  %1524 = phi float [ %1513, %1504 ], [ %1519, %1517 ]
  %1525 = phi float [ %1514, %1504 ], [ %1520, %1517 ]
  %1526 = phi float [ %1515, %1504 ], [ %1521, %1517 ]
  %1527 = phi float [ %1516, %1504 ], [ %1522, %1517 ]
  %1528 = fsub fast float %1524, %1493
  %1529 = fsub fast float %1525, %1494
  %1530 = fsub fast float %1526, %1495
  %1531 = fsub fast float %1527, %1496
  %1532 = fmul fast float %1528, %1466
  %1533 = fmul fast float %1529, %1466
  %1534 = fmul fast float %1530, %1466
  %1535 = fmul fast float %1531, %1466
  %1536 = fadd fast float %1532, %1493
  %1537 = fadd fast float %1533, %1494
  %1538 = fadd fast float %1534, %1495
  %1539 = fadd fast float %1535, %1496
  br label %1568

; <label>:1540                                    ; preds = %1460
  %1541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1468, float %1469, float %1465, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.ResRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.ResRet.f32 %1541, 2
  %1545 = extractvalue %dx.types.ResRet.f32 %1541, 3
  %1546 = fcmp fast ogt float %1466, 0.000000e+00
  br i1 %1546, label %1547, label %1568, !dx.controlflow.hints !74

; <label>:1547                                    ; preds = %1540
  %1548 = fadd fast float %1465, 1.000000e+00
  %1549 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1550 = call float @dx.op.unary.f32(i32 22, float %1437)  ; Frc(value)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %1549, float %1550, float %1548, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = fsub fast float %1552, %1542
  %1557 = fsub fast float %1553, %1543
  %1558 = fsub fast float %1554, %1544
  %1559 = fsub fast float %1555, %1545
  %1560 = fmul fast float %1556, %1466
  %1561 = fmul fast float %1557, %1466
  %1562 = fmul fast float %1558, %1466
  %1563 = fmul fast float %1559, %1466
  %1564 = fadd fast float %1560, %1542
  %1565 = fadd fast float %1561, %1543
  %1566 = fadd fast float %1562, %1544
  %1567 = fadd fast float %1563, %1545
  br label %1568

; <label>:1568                                    ; preds = %1547, %1540, %1523, %1492
  %1569 = phi float [ %1536, %1523 ], [ %1493, %1492 ], [ %1564, %1547 ], [ %1542, %1540 ]
  %1570 = phi float [ %1537, %1523 ], [ %1494, %1492 ], [ %1565, %1547 ], [ %1543, %1540 ]
  %1571 = phi float [ %1538, %1523 ], [ %1495, %1492 ], [ %1566, %1547 ], [ %1544, %1540 ]
  %1572 = phi float [ %1539, %1523 ], [ %1496, %1492 ], [ %1567, %1547 ], [ %1545, %1540 ]
  %1573 = fadd fast float %1569, -5.000000e-01
  %1574 = fadd fast float %1571, -5.000000e-01
  %1575 = fmul fast float %1573, 0xBFD5555560000000
  %1576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1574, float %1575)  ; FMad(a,b,c)
  %1577 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1570, float 0.000000e+00)  ; FMad(a,b,c)
  %1578 = fadd fast float %1577, %1572
  %1579 = fmul fast float %1573, -7.500000e-01
  %1580 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1574, float %1579)  ; FMad(a,b,c)
  %1581 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1570, float 0.000000e+00)  ; FMad(a,b,c)
  %1582 = fadd fast float %1581, %1572
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 0
  %1587 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1585, 2
  %1589 = extractvalue %dx.types.CBufRet.f32 %1585, 3
  %1590 = fsub fast float %1586, %1576
  %1591 = fsub fast float %1587, %1578
  %1592 = fsub fast float %1588, %1580
  %1593 = fsub fast float %1589, %1582
  %1594 = fmul fast float %1590, %1584
  %1595 = fmul fast float %1591, %1584
  %1596 = fmul fast float %1592, %1584
  %1597 = fmul fast float %1593, %1584
  %1598 = fadd fast float %1594, %1576
  %1599 = fadd fast float %1595, %1578
  %1600 = fadd fast float %1596, %1580
  %1601 = fadd fast float %1597, %1582
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 536870911
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, %1441
  %1607 = fmul fast float %1605, %1442
  %1608 = fptoui float %1606 to i32
  %1609 = fptoui float %1607 to i32
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 31
  %1613 = lshr i32 %1608, %1612
  %1614 = lshr i32 %1609, %1612
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 31
  %1618 = shl i32 1, %1617
  %1619 = call i32 @dx.op.binary.i32(i32 40, i32 %1618, i32 4)  ; UMin(a,b)
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = extractvalue %dx.types.ResRet.i32 %1620, 1
  %1623 = icmp eq i32 %1619, 0
  br i1 %1623, label %1665, label %1624

; <label>:1624                                    ; preds = %1568
  br label %1625

; <label>:1625                                    ; preds = %1653, %1624
  %1626 = phi i32 [ %1656, %1653 ], [ 0, %1624 ]
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = lshr i32 %1628, 16
  %1630 = and i32 %1629, 31
  %1631 = shl i32 %1614, %1630
  %1632 = add i32 %1631, %1613
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 31
  %1636 = shl i32 %1632, %1635
  %1637 = add i32 %1636, %1626
  %1638 = shl i32 %1637, 2
  %1639 = add i32 %1638, 32
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1639, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = icmp slt i32 %1641, 0
  %1643 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1626
  %1644 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1626
  %1645 = bitcast float* %1643 to i32*
  %1646 = bitcast float* %1644 to i32*
  br i1 %1642, label %1647, label %1653, !dx.controlflow.hints !75

; <label>:1647                                    ; preds = %1625
  %1648 = and i32 %1641, 1073741823
  %1649 = add nuw nsw i32 %1648, 20
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.i32 %1650, 1
  br label %1653

; <label>:1653                                    ; preds = %1647, %1625
  %1654 = phi i32 [ %1651, %1647 ], [ %1621, %1625 ]
  %1655 = phi i32 [ %1652, %1647 ], [ %1622, %1625 ]
  store i32 %1654, i32* %1645, align 4
  store i32 %1655, i32* %1646, align 4
  %1656 = add nuw i32 %1626, 1
  %1657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1658 = extractvalue %dx.types.CBufRet.i32 %1657, 2
  %1659 = icmp eq i32 %1658, 0
  %1660 = icmp ugt i32 %1641, -1073741825
  %1661 = and i1 %1660, %1659
  %1662 = icmp ult i32 %1656, %1619
  %1663 = and i1 %1661, %1662
  br i1 %1663, label %1625, label %1664, !dx.controlflow.hints !76

; <label>:1664                                    ; preds = %1653
  br label %1665

; <label>:1665                                    ; preds = %1664, %1568
  %1666 = phi i32 [ 0, %1568 ], [ %1656, %1664 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 2
  %1669 = fptoui float %1668 to i32
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %1722, label %1671

; <label>:1671                                    ; preds = %1665
  br label %1672

; <label>:1672                                    ; preds = %1717, %1671
  %1673 = phi i32 [ %1718, %1717 ], [ %1666, %1671 ]
  %1674 = phi i32 [ %1719, %1717 ], [ 0, %1671 ]
  %1675 = lshr i32 %1674, 2
  %1676 = and i32 %1674, 3
  %1677 = add nuw nsw i32 %1675, 83
  %1678 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %1677)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.i32 %1678, 0
  %1680 = extractvalue %dx.types.CBufRet.i32 %1678, 1
  %1681 = extractvalue %dx.types.CBufRet.i32 %1678, 2
  %1682 = extractvalue %dx.types.CBufRet.i32 %1678, 3
  %1683 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %1679, i32* %1683, align 4
  %1684 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %1680, i32* %1684, align 4
  %1685 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %1681, i32* %1685, align 4
  %1686 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %1682, i32* %1686, align 4
  %1687 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %1676
  %1688 = load i32, i32* %1687, align 4, !tbaa !53
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = lshr i32 %1690, 16
  %1692 = and i32 %1691, 31
  %1693 = shl i32 %1614, %1692
  %1694 = add i32 %1693, %1613
  %1695 = shl i32 %1694, 2
  %1696 = add i32 %1695, %1688
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1717, label %1700, !dx.controlflow.hints !77

; <label>:1700                                    ; preds = %1672
  %1701 = icmp slt i32 %1698, 0
  %1702 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1673
  %1703 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1673
  %1704 = bitcast float* %1702 to i32*
  %1705 = bitcast float* %1703 to i32*
  br i1 %1701, label %1706, label %1713, !dx.controlflow.hints !78

; <label>:1706                                    ; preds = %1700
  %1707 = and i32 %1698, 1073741823
  %1708 = add i32 %1688, 20
  %1709 = add i32 %1708, %1707
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = extractvalue %dx.types.ResRet.i32 %1710, 1
  br label %1713

; <label>:1713                                    ; preds = %1706, %1700
  %1714 = phi i32 [ %1711, %1706 ], [ %1621, %1700 ]
  %1715 = phi i32 [ %1712, %1706 ], [ %1622, %1700 ]
  store i32 %1714, i32* %1704, align 4
  store i32 %1715, i32* %1705, align 4
  %1716 = add i32 %1673, 1
  br label %1717

; <label>:1717                                    ; preds = %1713, %1672
  %1718 = phi i32 [ %1673, %1672 ], [ %1716, %1713 ]
  %1719 = add nuw i32 %1674, 1
  %1720 = icmp eq i32 %1719, %1669
  br i1 %1720, label %1721, label %1672

; <label>:1721                                    ; preds = %1717
  br label %1722

; <label>:1722                                    ; preds = %1721, %1665
  %1723 = phi i32 [ %1666, %1665 ], [ %1718, %1721 ]
  %1724 = icmp eq i32 %1723, 1
  %1725 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 0
  %1726 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  br i1 %1724, label %1727, label %1730, !dx.controlflow.hints !79

; <label>:1727                                    ; preds = %1722
  %1728 = load float, float* %1725, align 4
  %1729 = load float, float* %1726, align 4
  br label %1757

; <label>:1730                                    ; preds = %1722
  %1731 = load float, float* %1725, align 4
  %1732 = load float, float* %1726, align 4
  %1733 = fdiv fast float 1.000000e+00, %1732
  %1734 = fsub fast float %1731, %1733
  %1735 = icmp ugt i32 %1723, 1
  br i1 %1735, label %1736, label %1752

; <label>:1736                                    ; preds = %1730
  br label %1737

; <label>:1737                                    ; preds = %1737, %1736
  %1738 = phi float [ %1747, %1737 ], [ %1734, %1736 ]
  %1739 = phi float [ %1748, %1737 ], [ %1731, %1736 ]
  %1740 = phi i32 [ %1749, %1737 ], [ 1, %1736 ]
  %1741 = getelementptr [12 x float], [12 x float]* %42, i32 0, i32 %1740
  %1742 = load float, float* %1741, align 4
  %1743 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1740
  %1744 = load float, float* %1743, align 4
  %1745 = fdiv fast float 1.000000e+00, %1744
  %1746 = fsub fast float %1742, %1745
  %1747 = call float @dx.op.binary.f32(i32 36, float %1738, float %1746)  ; FMin(a,b)
  %1748 = call float @dx.op.binary.f32(i32 35, float %1739, float %1742)  ; FMax(a,b)
  %1749 = add nuw i32 %1740, 1
  %1750 = icmp eq i32 %1749, %1723
  br i1 %1750, label %1751, label %1737

; <label>:1751                                    ; preds = %1737
  br label %1752

; <label>:1752                                    ; preds = %1751, %1730
  %1753 = phi float [ %1734, %1730 ], [ %1747, %1751 ]
  %1754 = phi float [ %1731, %1730 ], [ %1748, %1751 ]
  %1755 = fsub fast float %1754, %1753
  %1756 = fdiv fast float 1.000000e+00, %1755
  br label %1757

; <label>:1757                                    ; preds = %1752, %1727
  %1758 = phi float [ %1728, %1727 ], [ %1754, %1752 ]
  %1759 = phi float [ %1729, %1727 ], [ %1756, %1752 ]
  %1760 = fadd fast float %1188, %1758
  %1761 = fmul fast float %1760, %1759
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1763 = fmul fast float %1762, 2.000000e+00
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = fmul fast float %1598, %1598
  %1766 = fsub fast float %1599, %1765
  %1767 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1766)  ; FMax(a,b)
  %1768 = fdiv fast float 1.000000e+00, %1767
  %1769 = fmul fast float %1599, %1598
  %1770 = fsub fast float %1600, %1769
  %1771 = fsub fast float %1764, %1598
  %1772 = fmul fast float %1764, %1764
  %1773 = fsub fast float %1772, %1599
  %1774 = fmul fast float %1768, %1770
  %1775 = fmul fast float %1774, %1771
  %1776 = fsub fast float %1773, %1775
  %1777 = fmul fast float %1599, %1599
  %1778 = fsub fast float %1601, %1777
  %1779 = fmul fast float %1770, %1770
  %1780 = fmul fast float %1779, %1768
  %1781 = fsub fast float %1778, %1780
  %1782 = fdiv fast float %1776, %1781
  %1783 = fmul fast float %1782, %1770
  %1784 = fsub fast float %1771, %1783
  %1785 = fmul fast float %1784, %1768
  %1786 = fmul fast float %1785, %1598
  %1787 = fsub fast float 1.000000e+00, %1786
  %1788 = fmul fast float %1782, %1599
  %1789 = fsub fast float %1787, %1788
  %1790 = fmul fast float %1785, %1785
  %1791 = fmul fast float %1782, 4.000000e+00
  %1792 = fmul fast float %1791, %1789
  %1793 = fsub fast float %1790, %1792
  %1794 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1795 = fcmp fast oge float %1785, 0.000000e+00
  %1796 = fsub fast float -0.000000e+00, %1794
  %1797 = select i1 %1795, float %1796, float %1794
  %1798 = fsub fast float %1797, %1785
  %1799 = fdiv fast float %1798, %1782
  %1800 = fdiv fast float %1789, %1798
  %1801 = fmul fast float %1799, 5.000000e-01
  %1802 = fmul fast float %1800, 2.000000e+00
  %1803 = select i1 %1795, float %1801, float %1802
  %1804 = select i1 %1795, float %1802, float %1801
  %1805 = call float @dx.op.binary.f32(i32 35, float %1803, float %1804)  ; FMax(a,b)
  %1806 = call float @dx.op.binary.f32(i32 36, float %1803, float %1804)  ; FMin(a,b)
  %1807 = fcmp fast ogt float %1764, %1805
  %1808 = fsub fast float %1764, %1806
  %1809 = fsub fast float %1764, %1805
  %1810 = fsub fast float %1805, %1806
  %1811 = select i1 %1807, float %1809, float %1810
  %1812 = fmul float %1808, %1811
  %1813 = select i1 %1807, float %1806, float %1764
  %1814 = fcmp fast ogt float %1764, %1806
  %1815 = fmul fast float %1813, %1805
  %1816 = fadd fast float %1813, %1805
  %1817 = fmul fast float %1816, %1598
  %1818 = fadd fast float %1815, %1599
  %1819 = fsub fast float %1818, %1817
  %1820 = fdiv fast float %1819, %1812
  %1821 = select i1 %1814, float %1820, float 0.000000e+00
  %1822 = fsub fast float 1.000000e+00, %1821
  %1823 = select i1 %1807, float %1822, float %1821
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1583, 3
  %1826 = fmul fast float %1825, %1824
  %1827 = fsub fast float 1.000000e+00, %1826
  br label %1828

; <label>:1828                                    ; preds = %1757, %1435, %1161, %1119
  %1829 = phi float [ 1.000000e+00, %1119 ], [ %1827, %1757 ], [ 1.000000e+00, %1161 ], [ 1.000000e+00, %1435 ]
  %1830 = fcmp fast ogt float %1154, 0.000000e+00
  br i1 %1830, label %1831, label %1843, !dx.controlflow.hints !85

; <label>:1831                                    ; preds = %1828
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 2
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1836 = fmul fast float %1833, %225
  %1837 = fadd fast float %1835, %252
  %1838 = fadd fast float %1837, %1836
  %1839 = call float @dx.op.binary.f32(i32 35, float %1838, float 0.000000e+00)  ; FMax(a,b)
  %1840 = fadd fast float %1839, 0x3F10000000000000
  %1841 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float %1840)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  br label %1843

; <label>:1843                                    ; preds = %1831, %1828
  %1844 = phi float [ %1842, %1831 ], [ 1.000000e+00, %1828 ]
  %1845 = fcmp fast ogt float %1152, 0.000000e+00
  br i1 %1845, label %1846, label %1858, !dx.controlflow.hints !86

; <label>:1846                                    ; preds = %1843
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1851 = fmul fast float %1848, %225
  %1852 = fadd fast float %1850, %252
  %1853 = fadd fast float %1852, %1851
  %1854 = call float @dx.op.binary.f32(i32 35, float %1853, float 0.000000e+00)  ; FMax(a,b)
  %1855 = fadd fast float %1854, 0x3F10000000000000
  %1856 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float %1855)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  br label %1858

; <label>:1858                                    ; preds = %1846, %1843
  %1859 = phi float [ %1857, %1846 ], [ 1.000000e+00, %1843 ]
  %1860 = fcmp fast ogt float %1151, 0.000000e+00
  br i1 %1860, label %1861, label %1877, !dx.controlflow.hints !87

; <label>:1861                                    ; preds = %1858
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = fmul fast float %1863, %225
  %1867 = fadd fast float %1865, %252
  %1868 = fadd fast float %1867, %1866
  %1869 = call float @dx.op.binary.f32(i32 35, float %1868, float 0.000000e+00)  ; FMax(a,b)
  %1870 = fadd fast float %1869, 0x3F10000000000000
  br i1 %101, label %1871, label %1874, !dx.controlflow.hints !88

; <label>:1871                                    ; preds = %1861
  %1872 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %244, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %1870)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  br label %1877

; <label>:1874                                    ; preds = %1861
  %1875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %244, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %1870)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  br label %1877

; <label>:1877                                    ; preds = %1874, %1871, %1858
  %1878 = phi float [ %1873, %1871 ], [ %1876, %1874 ], [ 1.000000e+00, %1858 ]
  %1879 = fsub fast float %1844, %1829
  %1880 = fmul fast float %1879, %1121
  %1881 = fadd fast float %1880, %1829
  %1882 = fsub fast float %1859, %1881
  %1883 = fmul fast float %1882, %1120
  %1884 = fadd fast float %1883, %1881
  %1885 = fsub fast float %1878, %1884
  %1886 = fmul fast float %1885, %1151
  %1887 = fadd fast float %1886, %1884
  br label %2741

; <label>:1888                                    ; preds = %114
  %1889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1890 = extractvalue %dx.types.CBufRet.f32 %1889, 0
  %1891 = extractvalue %dx.types.CBufRet.f32 %1889, 1
  %1892 = extractvalue %dx.types.CBufRet.f32 %1889, 3
  %1893 = fmul fast float %1892, %244
  %1894 = fmul fast float %1892, %248
  %1895 = fadd fast float %1893, %1890
  %1896 = fadd fast float %1894, %1891
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.CBufRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.CBufRet.f32 %1897, 3
  %1901 = fmul fast float %1900, %244
  %1902 = fmul fast float %1900, %248
  %1903 = fadd fast float %1901, %1898
  %1904 = fadd fast float %1902, %1899
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1907 = fsub fast float %1906, %252
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = fmul fast float %1907, %1908
  %1910 = fsub fast float 1.000000e+00, %1909
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  br i1 %101, label %1972, label %1912, !dx.controlflow.hints !81

; <label>:1912                                    ; preds = %1888
  %1913 = extractvalue %dx.types.CBufRet.f32 %1897, 2
  %1914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1915 = extractvalue %dx.types.CBufRet.f32 %1914, 2
  %1916 = fadd fast float %1915, %1913
  %1917 = fcmp fast ogt float %1916, 0.000000e+00
  br i1 %1917, label %1918, label %1942, !dx.controlflow.hints !82

; <label>:1918                                    ; preds = %1912
  %1919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1920 = extractvalue %dx.types.CBufRet.f32 %1919, 0
  %1921 = extractvalue %dx.types.CBufRet.f32 %1919, 1
  %1922 = fsub fast float %1903, %1920
  %1923 = fsub fast float %1904, %1921
  %1924 = fcmp fast olt float %1922, 0.000000e+00
  %1925 = fcmp fast olt float %1923, 0.000000e+00
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = extractvalue %dx.types.CBufRet.f32 %1926, 2
  %1930 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %1931 = select i1 %1924, float %1927, float %1929
  %1932 = select i1 %1925, float %1928, float %1930
  %1933 = fmul fast float %1931, %1922
  %1934 = fmul fast float %1932, %1923
  %1935 = call float @dx.op.unary.f32(i32 6, float %1933)  ; FAbs(value)
  %1936 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1937 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1938 = call float @dx.op.binary.f32(i32 35, float %1935, float %1936)  ; FMax(a,b)
  %1939 = fsub fast float %1937, %1938
  %1940 = call float @dx.op.unary.f32(i32 7, float %1939)  ; Saturate(value)
  %1941 = fmul fast float %1940, %1911
  br label %1942

; <label>:1942                                    ; preds = %1918, %1912
  %1943 = phi float [ %1941, %1918 ], [ 0.000000e+00, %1912 ]
  %1944 = extractvalue %dx.types.CBufRet.f32 %1889, 2
  %1945 = extractvalue %dx.types.CBufRet.f32 %1914, 1
  %1946 = fadd fast float %1945, %1944
  %1947 = fcmp fast ogt float %1946, 0.000000e+00
  br i1 %1947, label %1948, label %1972, !dx.controlflow.hints !83

; <label>:1948                                    ; preds = %1942
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.CBufRet.f32 %1949, 1
  %1952 = fsub fast float %1895, %1950
  %1953 = fsub fast float %1896, %1951
  %1954 = fcmp fast olt float %1952, 0.000000e+00
  %1955 = fcmp fast olt float %1953, 0.000000e+00
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %1958 = extractvalue %dx.types.CBufRet.f32 %1956, 1
  %1959 = extractvalue %dx.types.CBufRet.f32 %1956, 2
  %1960 = extractvalue %dx.types.CBufRet.f32 %1956, 3
  %1961 = select i1 %1954, float %1957, float %1959
  %1962 = select i1 %1955, float %1958, float %1960
  %1963 = fmul fast float %1961, %1952
  %1964 = fmul fast float %1962, %1953
  %1965 = call float @dx.op.unary.f32(i32 6, float %1963)  ; FAbs(value)
  %1966 = call float @dx.op.unary.f32(i32 6, float %1964)  ; FAbs(value)
  %1967 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %1968 = call float @dx.op.binary.f32(i32 35, float %1965, float %1966)  ; FMax(a,b)
  %1969 = fsub fast float %1967, %1968
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fmul fast float %1970, %1911
  br label %1972

; <label>:1972                                    ; preds = %1948, %1942, %1888
  %1973 = phi float [ 0.000000e+00, %1888 ], [ %1971, %1948 ], [ 0.000000e+00, %1942 ]
  %1974 = phi float [ 0.000000e+00, %1888 ], [ %1943, %1948 ], [ %1943, %1942 ]
  %1975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1976 = extractvalue %dx.types.CBufRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.CBufRet.f32 %1975, 1
  %1978 = fmul fast float %1976, %108
  %1979 = fadd fast float %1978, %1977
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1984 = fsub fast float %244, %1982
  %1985 = fsub fast float %248, %1983
  %1986 = fcmp fast olt float %1984, 0.000000e+00
  %1987 = fcmp fast olt float %1985, 0.000000e+00
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = extractvalue %dx.types.CBufRet.f32 %1988, 3
  %1993 = select i1 %1986, float %1989, float %1991
  %1994 = select i1 %1987, float %1990, float %1992
  %1995 = fmul fast float %1993, %1984
  %1996 = fmul fast float %1994, %1985
  %1997 = call float @dx.op.unary.f32(i32 6, float %1995)  ; FAbs(value)
  %1998 = call float @dx.op.unary.f32(i32 6, float %1996)  ; FAbs(value)
  %1999 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %2000 = call float @dx.op.binary.f32(i32 35, float %1997, float %1998)  ; FMax(a,b)
  %2001 = fsub fast float %1999, %2000
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = call float @dx.op.binary.f32(i32 36, float %2002, float %1980)  ; FMin(a,b)
  %2004 = fmul fast float %2003, %1911
  %2005 = fsub fast float %1973, %2004
  %2006 = fsub fast float %1974, %1973
  %2007 = fsub fast float %2006, %2004
  %2008 = call float @dx.op.binary.f32(i32 35, float %1973, float %1974)  ; FMax(a,b)
  %2009 = call float @dx.op.binary.f32(i32 35, float %2004, float %2008)  ; FMax(a,b)
  %2010 = fcmp fast olt float %2009, 1.000000e+00
  %2011 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %2012 = fcmp fast une float %2011, 0.000000e+00
  %2013 = and i1 %2010, %2012
  br i1 %2013, label %2014, label %2681, !dx.controlflow.hints !84

; <label>:2014                                    ; preds = %1972
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.CBufRet.f32 %2015, 2
  %2019 = extractvalue %dx.types.CBufRet.f32 %2015, 3
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.CBufRet.f32 %2020, 2
  %2024 = extractvalue %dx.types.CBufRet.f32 %2020, 3
  %2025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.CBufRet.f32 %2025, 2
  %2029 = extractvalue %dx.types.CBufRet.f32 %2025, 3
  %2030 = fmul fast float %2016, %164
  %2031 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2017, float %2030)  ; FMad(a,b,c)
  %2032 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2018, float %2031)  ; FMad(a,b,c)
  %2033 = fadd fast float %2032, %2019
  %2034 = fmul fast float %2021, %164
  %2035 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2022, float %2034)  ; FMad(a,b,c)
  %2036 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2023, float %2035)  ; FMad(a,b,c)
  %2037 = fadd fast float %2036, %2024
  %2038 = fmul fast float %2026, %164
  %2039 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2027, float %2038)  ; FMad(a,b,c)
  %2040 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2028, float %2039)  ; FMad(a,b,c)
  %2041 = fadd fast float %2040, %2029
  %2042 = fcmp fast oge float %2033, 1.000000e+00
  %2043 = fcmp fast oge float %2037, 1.000000e+00
  %2044 = or i1 %2042, %2043
  %2045 = fcmp fast olt float %2033, 0.000000e+00
  %2046 = fcmp fast olt float %2037, 0.000000e+00
  %2047 = or i1 %2045, %2046
  %2048 = or i1 %2044, %2047
  br i1 %2048, label %2681, label %2049, !dx.controlflow.hints !64

; <label>:2049                                    ; preds = %2014
  %2050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2051 = extractvalue %dx.types.CBufRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.CBufRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.CBufRet.f32 %2050, 2
  %2054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2055 = extractvalue %dx.types.CBufRet.f32 %2054, 1
  %2056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.i32 %2056, 2
  %2058 = uitofp i32 %2057 to float
  %2059 = extractvalue %dx.types.CBufRet.i32 %2056, 3
  %2060 = uitofp i32 %2059 to float
  %2061 = extractvalue %dx.types.CBufRet.f32 %2050, 3
  %2062 = fmul fast float %2061, 2.000000e+00
  %2063 = fsub fast float %2033, %2051
  %2064 = fsub fast float %2037, %2052
  %2065 = fmul fast float %2062, %2063
  %2066 = fmul fast float %2062, %2064
  %2067 = fdiv fast float 1.000000e+00, %214
  %2068 = fmul fast float %2066, %2067
  %2069 = call float @dx.op.unary.f32(i32 6, float %2068)  ; FAbs(value)
  %2070 = fmul fast float %2053, %166
  %2071 = fmul fast float %2070, %2062
  %2072 = call float @dx.op.unary.f32(i32 6, float %2071)  ; FAbs(value)
  %2073 = call float @dx.op.unary.f32(i32 6, float %2065)  ; FAbs(value)
  %2074 = call float @dx.op.binary.f32(i32 35, float %2072, float %2069)  ; FMax(a,b)
  %2075 = call float @dx.op.binary.f32(i32 35, float %2073, float %2074)  ; FMax(a,b)
  %2076 = fmul fast float %2075, 2.000000e+00
  %2077 = call float @dx.op.unary.f32(i32 23, float %2076)  ; Log(value)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float %2058)  ; FMax(a,b)
  %2079 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2080 = fadd fast float %2079, 0xBFEA666660000000
  %2081 = fmul fast float %2080, 8.000000e+00
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  %2083 = call float @dx.op.unary.f32(i32 27, float %2078)  ; Round_ni(value)
  %2084 = fadd fast float %2083, %2082
  %2085 = call float @dx.op.binary.f32(i32 36, float %2084, float %2060)  ; FMin(a,b)
  %2086 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2087 = fsub fast float -0.000000e+00, %2086
  %2088 = call float @dx.op.unary.f32(i32 21, float %2087)  ; Exp(value)
  %2089 = fmul fast float %2088, %2062
  %2090 = fmul fast float %2089, %2033
  %2091 = fmul fast float %2089, %2037
  %2092 = fmul fast float %2090, 5.000000e-01
  %2093 = fmul fast float %2091, 5.000000e-01
  %2094 = fadd fast float %2092, 5.000000e-01
  %2095 = fadd fast float %2093, 5.000000e-01
  %2096 = fmul fast float %2090, 2.500000e-01
  %2097 = fmul fast float %2091, 2.500000e-01
  %2098 = fadd fast float %2096, 5.000000e-01
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = and i32 %2101, 536870911
  %2103 = lshr i32 %2102, 9
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, %2033
  %2106 = fmul fast float %2104, %2037
  %2107 = call float @dx.op.unary.f32(i32 22, float %2105)  ; Frc(value)
  %2108 = call float @dx.op.unary.f32(i32 22, float %2106)  ; Frc(value)
  %2109 = call float @dx.op.unary.f32(i32 22, float %2082)  ; Frc(value)
  %2110 = fcmp fast une float %2109, 0.000000e+00
  br i1 %2110, label %2111, label %2209, !dx.controlflow.hints !65

; <label>:2111                                    ; preds = %2049
  %2112 = call float @dx.op.unary.f32(i32 21, float %2083)  ; Exp(value)
  %2113 = fmul fast float %2112, 1.953125e-03
  %2114 = fcmp fast olt float %2107, %2113
  %2115 = fcmp fast olt float %2108, %2113
  %2116 = or i1 %2114, %2115
  %2117 = fsub fast float 1.000000e+00, %2113
  %2118 = fcmp fast ogt float %2107, %2117
  %2119 = fcmp fast ogt float %2108, %2117
  %2120 = or i1 %2118, %2119
  %2121 = or i1 %2116, %2120
  br i1 %2121, label %2122, label %2288, !dx.controlflow.hints !66

; <label>:2122                                    ; preds = %2111
  %2123 = fmul fast float %2055, 5.000000e-01
  %2124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2125 = extractvalue %dx.types.CBufRet.i32 %2124, 0
  %2126 = fmul fast float %2037, 3.530000e+02
  %2127 = uitofp i32 %2102 to float
  %2128 = fmul fast float %2126, %2127
  %2129 = fmul fast float %2033, 6.130000e+02
  %2130 = fadd fast float %2128, %2129
  %2131 = fptoui float %2130 to i32
  %2132 = add i32 %2125, %2131
  %2133 = mul i32 %2132, -63
  %2134 = lshr i32 %2133, 17
  %2135 = xor i32 %2134, %2133
  %2136 = mul i32 %2135, -511
  %2137 = mul i32 %2135, -8176
  %2138 = xor i32 %2136, %2137
  %2139 = mul i32 %2138, -7
  %2140 = mul i32 %2138, -7168
  %2141 = xor i32 %2139, %2140
  %2142 = lshr i32 %2141, 15
  %2143 = xor i32 %2142, %2139
  %2144 = and i32 %2143, 15
  %2145 = mul i32 %2144, 2
  %2146 = add i32 0, %2145
  %2147 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2146
  %2148 = load float, float* %2147, align 4
  %2149 = mul i32 %2144, 2
  %2150 = add i32 1, %2149
  %2151 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2150
  %2152 = load float, float* %2151, align 4
  %2153 = fmul fast float %2037, 2.770000e+02
  %2154 = fmul fast float %2153, %2127
  %2155 = fmul fast float %2033, 5.990000e+02
  %2156 = fadd fast float %2154, %2155
  %2157 = fptoui float %2156 to i32
  %2158 = mul i32 %2157, -63
  %2159 = lshr i32 %2158, 17
  %2160 = xor i32 %2159, %2158
  %2161 = mul i32 %2160, -511
  %2162 = mul i32 %2160, -8176
  %2163 = xor i32 %2161, %2162
  %2164 = mul i32 %2163, -7
  %2165 = mul i32 %2163, -7168
  %2166 = xor i32 %2164, %2165
  %2167 = lshr i32 %2166, 15
  %2168 = xor i32 %2167, %2164
  %2169 = and i32 %2168, 63
  %2170 = mul i32 %2169, 2
  %2171 = add i32 0, %2170
  %2172 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2171
  %2173 = load float, float* %2172, align 4
  %2174 = mul i32 %2169, 2
  %2175 = add i32 1, %2174
  %2176 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2175
  %2177 = load float, float* %2176, align 4
  %2178 = call float @dx.op.dot2.f32(i32 54, float %2148, float %2152, float %2173, float %2177)  ; Dot2(ax,ay,bx,by)
  %2179 = fsub fast float -0.000000e+00, %2173
  %2180 = call float @dx.op.dot2.f32(i32 54, float %2148, float %2152, float %2179, float %2177)  ; Dot2(ax,ay,bx,by)
  %2181 = fmul fast float %2178, %2123
  %2182 = fmul fast float %2180, %2123
  %2183 = fdiv fast float 2.000000e+00, %2089
  %2184 = fmul fast float %2112, 9.765625e-04
  %2185 = fcmp fast olt float %2107, %2184
  %2186 = fcmp fast olt float %2108, %2184
  %2187 = or i1 %2185, %2186
  %2188 = fsub fast float 1.000000e+00, %2184
  %2189 = fcmp fast ogt float %2107, %2188
  %2190 = fcmp fast ogt float %2108, %2188
  %2191 = or i1 %2189, %2190
  %2192 = or i1 %2187, %2191
  %2193 = fmul fast float %2181, 2.000000e+00
  br i1 %2192, label %2194, label %2198, !dx.controlflow.hints !67

; <label>:2194                                    ; preds = %2122
  %2195 = fmul fast float %2182, 2.000000e+00
  %2196 = fadd fast float %2193, %2094
  %2197 = fadd fast float %2195, %2095
  br label %2198

; <label>:2198                                    ; preds = %2194, %2122
  %2199 = phi float [ %2196, %2194 ], [ %2094, %2122 ]
  %2200 = phi float [ %2197, %2194 ], [ %2095, %2122 ]
  %2201 = phi i32 [ 3, %2194 ], [ 2, %2122 ]
  %2202 = fadd fast float %2181, %2098
  %2203 = fadd fast float %2182, %2099
  %2204 = fmul fast float %2193, %2183
  %2205 = fmul fast float %2183, 2.000000e+00
  %2206 = fmul fast float %2205, %2182
  %2207 = fadd fast float %2204, %2033
  %2208 = fadd fast float %2206, %2037
  br label %2288

; <label>:2209                                    ; preds = %2049
  %2210 = call float @dx.op.unary.f32(i32 21, float %2086)  ; Exp(value)
  %2211 = fmul fast float %2210, 9.765625e-04
  %2212 = fcmp fast olt float %2107, %2211
  %2213 = fcmp fast olt float %2108, %2211
  %2214 = or i1 %2212, %2213
  %2215 = fsub fast float 1.000000e+00, %2211
  %2216 = fcmp fast ogt float %2107, %2215
  %2217 = fcmp fast ogt float %2108, %2215
  %2218 = or i1 %2216, %2217
  %2219 = or i1 %2214, %2218
  br i1 %2219, label %2220, label %2288, !dx.controlflow.hints !68

; <label>:2220                                    ; preds = %2209
  %2221 = fmul fast float %2055, 5.000000e-01
  %2222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.i32 %2222, 0
  %2224 = fmul fast float %2037, 3.530000e+02
  %2225 = uitofp i32 %2102 to float
  %2226 = fmul fast float %2224, %2225
  %2227 = fmul fast float %2033, 6.130000e+02
  %2228 = fadd fast float %2226, %2227
  %2229 = fptoui float %2228 to i32
  %2230 = add i32 %2223, %2229
  %2231 = mul i32 %2230, -63
  %2232 = lshr i32 %2231, 17
  %2233 = xor i32 %2232, %2231
  %2234 = mul i32 %2233, -511
  %2235 = mul i32 %2233, -8176
  %2236 = xor i32 %2234, %2235
  %2237 = mul i32 %2236, -7
  %2238 = mul i32 %2236, -7168
  %2239 = xor i32 %2237, %2238
  %2240 = lshr i32 %2239, 15
  %2241 = xor i32 %2240, %2237
  %2242 = and i32 %2241, 15
  %2243 = mul i32 %2242, 2
  %2244 = add i32 0, %2243
  %2245 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2244
  %2246 = load float, float* %2245, align 4
  %2247 = mul i32 %2242, 2
  %2248 = add i32 1, %2247
  %2249 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2248
  %2250 = load float, float* %2249, align 4
  %2251 = fmul fast float %2037, 2.770000e+02
  %2252 = fmul fast float %2251, %2225
  %2253 = fmul fast float %2033, 5.990000e+02
  %2254 = fadd fast float %2252, %2253
  %2255 = fptoui float %2254 to i32
  %2256 = mul i32 %2255, -63
  %2257 = lshr i32 %2256, 17
  %2258 = xor i32 %2257, %2256
  %2259 = mul i32 %2258, -511
  %2260 = mul i32 %2258, -8176
  %2261 = xor i32 %2259, %2260
  %2262 = mul i32 %2261, -7
  %2263 = mul i32 %2261, -7168
  %2264 = xor i32 %2262, %2263
  %2265 = lshr i32 %2264, 15
  %2266 = xor i32 %2265, %2262
  %2267 = and i32 %2266, 63
  %2268 = mul i32 %2267, 2
  %2269 = add i32 0, %2268
  %2270 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2269
  %2271 = load float, float* %2270, align 4
  %2272 = mul i32 %2267, 2
  %2273 = add i32 1, %2272
  %2274 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2273
  %2275 = load float, float* %2274, align 4
  %2276 = call float @dx.op.dot2.f32(i32 54, float %2246, float %2250, float %2271, float %2275)  ; Dot2(ax,ay,bx,by)
  %2277 = fsub fast float -0.000000e+00, %2271
  %2278 = call float @dx.op.dot2.f32(i32 54, float %2246, float %2250, float %2277, float %2275)  ; Dot2(ax,ay,bx,by)
  %2279 = fmul fast float %2276, %2221
  %2280 = fmul fast float %2278, %2221
  %2281 = fadd fast float %2279, %2094
  %2282 = fadd fast float %2280, %2095
  %2283 = fdiv fast float 2.000000e+00, %2089
  %2284 = fmul fast float %2283, %2279
  %2285 = fmul fast float %2280, %2283
  %2286 = fadd fast float %2284, %2033
  %2287 = fadd fast float %2285, %2037
  br label %2288

; <label>:2288                                    ; preds = %2220, %2209, %2198, %2111
  %2289 = phi float [ %2202, %2198 ], [ %2098, %2111 ], [ %2098, %2220 ], [ %2098, %2209 ]
  %2290 = phi float [ %2203, %2198 ], [ %2099, %2111 ], [ %2099, %2220 ], [ %2099, %2209 ]
  %2291 = phi float [ %2199, %2198 ], [ %2094, %2111 ], [ %2281, %2220 ], [ %2094, %2209 ]
  %2292 = phi float [ %2200, %2198 ], [ %2095, %2111 ], [ %2282, %2220 ], [ %2095, %2209 ]
  %2293 = phi i32 [ %2201, %2198 ], [ 0, %2111 ], [ 1, %2220 ], [ 0, %2209 ]
  %2294 = phi float [ %2207, %2198 ], [ %2033, %2111 ], [ %2286, %2220 ], [ %2033, %2209 ]
  %2295 = phi float [ %2208, %2198 ], [ %2037, %2111 ], [ %2287, %2220 ], [ %2037, %2209 ]
  %2296 = fsub fast float %2060, %2058
  %2297 = fptoui float %2296 to i32
  %2298 = add i32 %2297, 320
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 %2298)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = fcmp fast une float %2085, %2060
  %2303 = fsub fast float %2294, %2300
  %2304 = fsub fast float %2295, %2301
  %2305 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2306 = call float @dx.op.unary.f32(i32 6, float %2304)  ; FAbs(value)
  %2307 = fmul fast float %2305, %2089
  %2308 = fmul fast float %2306, %2089
  %2309 = fcmp fast olt float %2307, 1.000000e+00
  %2310 = fcmp fast olt float %2308, 1.000000e+00
  %2311 = and i1 %2309, %2310
  %2312 = or i1 %2302, %2311
  br i1 %2312, label %2313, label %2681, !dx.controlflow.hints !69

; <label>:2313                                    ; preds = %2288
  %2314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2315 = extractvalue %dx.types.CBufRet.i32 %2314, 2
  %2316 = sitofp i32 %2315 to float
  %2317 = fsub fast float %2085, %2316
  %2318 = call float @dx.op.unary.f32(i32 27, float %2317)  ; Round_ni(value)
  %2319 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2320 = icmp eq i32 %2293, 0
  %2321 = call float @dx.op.unary.f32(i32 22, float %2291)  ; Frc(value)
  %2322 = call float @dx.op.unary.f32(i32 22, float %2292)  ; Frc(value)
  br i1 %2320, label %2393, label %2323, !dx.controlflow.hints !70

; <label>:2323                                    ; preds = %2313
  %2324 = and i32 %2293, 1
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2339, label %2326, !dx.controlflow.hints !71

; <label>:2326                                    ; preds = %2323
  %2327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2328 = extractvalue %dx.types.CBufRet.f32 %2327, 0
  %2329 = fmul fast float %2321, %2328
  %2330 = fmul fast float %2322, %2328
  %2331 = fptoui float %2329 to i32
  %2332 = fptoui float %2330 to i32
  %2333 = fptoui float %2318 to i32
  %2334 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2331, i32 %2332, i32 %2333, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = extractvalue %dx.types.ResRet.f32 %2334, 1
  %2337 = extractvalue %dx.types.ResRet.f32 %2334, 2
  %2338 = extractvalue %dx.types.ResRet.f32 %2334, 3
  br label %2345

; <label>:2339                                    ; preds = %2323
  %2340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2321, float %2322, float %2318, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2341 = extractvalue %dx.types.ResRet.f32 %2340, 0
  %2342 = extractvalue %dx.types.ResRet.f32 %2340, 1
  %2343 = extractvalue %dx.types.ResRet.f32 %2340, 2
  %2344 = extractvalue %dx.types.ResRet.f32 %2340, 3
  br label %2345

; <label>:2345                                    ; preds = %2339, %2326
  %2346 = phi float [ %2335, %2326 ], [ %2341, %2339 ]
  %2347 = phi float [ %2336, %2326 ], [ %2342, %2339 ]
  %2348 = phi float [ %2337, %2326 ], [ %2343, %2339 ]
  %2349 = phi float [ %2338, %2326 ], [ %2344, %2339 ]
  %2350 = fcmp fast ogt float %2319, 0.000000e+00
  br i1 %2350, label %2351, label %2421, !dx.controlflow.hints !72

; <label>:2351                                    ; preds = %2345
  %2352 = and i32 %2293, 2
  %2353 = icmp eq i32 %2352, 0
  %2354 = fadd fast float %2318, 1.000000e+00
  %2355 = call float @dx.op.unary.f32(i32 22, float %2289)  ; Frc(value)
  %2356 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  br i1 %2353, label %2370, label %2357, !dx.controlflow.hints !73

; <label>:2357                                    ; preds = %2351
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = fmul fast float %2355, %2359
  %2361 = fmul fast float %2356, %2359
  %2362 = fptoui float %2360 to i32
  %2363 = fptoui float %2361 to i32
  %2364 = fptoui float %2354 to i32
  %2365 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2362, i32 %2363, i32 %2364, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  br label %2376

; <label>:2370                                    ; preds = %2351
  %2371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2355, float %2356, float %2354, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.ResRet.f32 %2371, 2
  %2375 = extractvalue %dx.types.ResRet.f32 %2371, 3
  br label %2376

; <label>:2376                                    ; preds = %2370, %2357
  %2377 = phi float [ %2366, %2357 ], [ %2372, %2370 ]
  %2378 = phi float [ %2367, %2357 ], [ %2373, %2370 ]
  %2379 = phi float [ %2368, %2357 ], [ %2374, %2370 ]
  %2380 = phi float [ %2369, %2357 ], [ %2375, %2370 ]
  %2381 = fsub fast float %2377, %2346
  %2382 = fsub fast float %2378, %2347
  %2383 = fsub fast float %2379, %2348
  %2384 = fsub fast float %2380, %2349
  %2385 = fmul fast float %2381, %2319
  %2386 = fmul fast float %2382, %2319
  %2387 = fmul fast float %2383, %2319
  %2388 = fmul fast float %2384, %2319
  %2389 = fadd fast float %2385, %2346
  %2390 = fadd fast float %2386, %2347
  %2391 = fadd fast float %2387, %2348
  %2392 = fadd fast float %2388, %2349
  br label %2421

; <label>:2393                                    ; preds = %2313
  %2394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2321, float %2322, float %2318, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2395 = extractvalue %dx.types.ResRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.ResRet.f32 %2394, 1
  %2397 = extractvalue %dx.types.ResRet.f32 %2394, 2
  %2398 = extractvalue %dx.types.ResRet.f32 %2394, 3
  %2399 = fcmp fast ogt float %2319, 0.000000e+00
  br i1 %2399, label %2400, label %2421, !dx.controlflow.hints !74

; <label>:2400                                    ; preds = %2393
  %2401 = fadd fast float %2318, 1.000000e+00
  %2402 = call float @dx.op.unary.f32(i32 22, float %2289)  ; Frc(value)
  %2403 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %2402, float %2403, float %2401, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = extractvalue %dx.types.ResRet.f32 %2404, 3
  %2409 = fsub fast float %2405, %2395
  %2410 = fsub fast float %2406, %2396
  %2411 = fsub fast float %2407, %2397
  %2412 = fsub fast float %2408, %2398
  %2413 = fmul fast float %2409, %2319
  %2414 = fmul fast float %2410, %2319
  %2415 = fmul fast float %2411, %2319
  %2416 = fmul fast float %2412, %2319
  %2417 = fadd fast float %2413, %2395
  %2418 = fadd fast float %2414, %2396
  %2419 = fadd fast float %2415, %2397
  %2420 = fadd fast float %2416, %2398
  br label %2421

; <label>:2421                                    ; preds = %2400, %2393, %2376, %2345
  %2422 = phi float [ %2389, %2376 ], [ %2346, %2345 ], [ %2417, %2400 ], [ %2395, %2393 ]
  %2423 = phi float [ %2390, %2376 ], [ %2347, %2345 ], [ %2418, %2400 ], [ %2396, %2393 ]
  %2424 = phi float [ %2391, %2376 ], [ %2348, %2345 ], [ %2419, %2400 ], [ %2397, %2393 ]
  %2425 = phi float [ %2392, %2376 ], [ %2349, %2345 ], [ %2420, %2400 ], [ %2398, %2393 ]
  %2426 = fadd fast float %2422, -5.000000e-01
  %2427 = fadd fast float %2424, -5.000000e-01
  %2428 = fmul fast float %2426, 0xBFD5555560000000
  %2429 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2427, float %2428)  ; FMad(a,b,c)
  %2430 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2423, float 0.000000e+00)  ; FMad(a,b,c)
  %2431 = fadd fast float %2430, %2425
  %2432 = fmul fast float %2426, -7.500000e-01
  %2433 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2427, float %2432)  ; FMad(a,b,c)
  %2434 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2423, float 0.000000e+00)  ; FMad(a,b,c)
  %2435 = fadd fast float %2434, %2425
  %2436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2437 = extractvalue %dx.types.CBufRet.f32 %2436, 0
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.CBufRet.f32 %2438, 1
  %2441 = extractvalue %dx.types.CBufRet.f32 %2438, 2
  %2442 = extractvalue %dx.types.CBufRet.f32 %2438, 3
  %2443 = fsub fast float %2439, %2429
  %2444 = fsub fast float %2440, %2431
  %2445 = fsub fast float %2441, %2433
  %2446 = fsub fast float %2442, %2435
  %2447 = fmul fast float %2443, %2437
  %2448 = fmul fast float %2444, %2437
  %2449 = fmul fast float %2445, %2437
  %2450 = fmul fast float %2446, %2437
  %2451 = fadd fast float %2447, %2429
  %2452 = fadd fast float %2448, %2431
  %2453 = fadd fast float %2449, %2433
  %2454 = fadd fast float %2450, %2435
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = and i32 %2456, 536870911
  %2458 = uitofp i32 %2457 to float
  %2459 = fmul fast float %2458, %2294
  %2460 = fmul fast float %2458, %2295
  %2461 = fptoui float %2459 to i32
  %2462 = fptoui float %2460 to i32
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 31
  %2466 = lshr i32 %2461, %2465
  %2467 = lshr i32 %2462, %2465
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 31
  %2471 = shl i32 1, %2470
  %2472 = call i32 @dx.op.binary.i32(i32 40, i32 %2471, i32 4)  ; UMin(a,b)
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = extractvalue %dx.types.ResRet.i32 %2473, 1
  %2476 = icmp eq i32 %2472, 0
  br i1 %2476, label %2518, label %2477

; <label>:2477                                    ; preds = %2421
  br label %2478

; <label>:2478                                    ; preds = %2506, %2477
  %2479 = phi i32 [ %2509, %2506 ], [ 0, %2477 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = lshr i32 %2481, 16
  %2483 = and i32 %2482, 31
  %2484 = shl i32 %2467, %2483
  %2485 = add i32 %2484, %2466
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 31
  %2489 = shl i32 %2485, %2488
  %2490 = add i32 %2489, %2479
  %2491 = shl i32 %2490, 2
  %2492 = add i32 %2491, 32
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = icmp slt i32 %2494, 0
  %2496 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2479
  %2497 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2479
  %2498 = bitcast float* %2496 to i32*
  %2499 = bitcast float* %2497 to i32*
  br i1 %2495, label %2500, label %2506, !dx.controlflow.hints !75

; <label>:2500                                    ; preds = %2478
  %2501 = and i32 %2494, 1073741823
  %2502 = add nuw nsw i32 %2501, 20
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.i32 %2503, 1
  br label %2506

; <label>:2506                                    ; preds = %2500, %2478
  %2507 = phi i32 [ %2504, %2500 ], [ %2474, %2478 ]
  %2508 = phi i32 [ %2505, %2500 ], [ %2475, %2478 ]
  store i32 %2507, i32* %2498, align 4
  store i32 %2508, i32* %2499, align 4
  %2509 = add nuw i32 %2479, 1
  %2510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.i32 %2510, 2
  %2512 = icmp eq i32 %2511, 0
  %2513 = icmp ugt i32 %2494, -1073741825
  %2514 = and i1 %2513, %2512
  %2515 = icmp ult i32 %2509, %2472
  %2516 = and i1 %2514, %2515
  br i1 %2516, label %2478, label %2517, !dx.controlflow.hints !76

; <label>:2517                                    ; preds = %2506
  br label %2518

; <label>:2518                                    ; preds = %2517, %2421
  %2519 = phi i32 [ 0, %2421 ], [ %2509, %2517 ]
  %2520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2521 = extractvalue %dx.types.CBufRet.f32 %2520, 2
  %2522 = fptoui float %2521 to i32
  %2523 = icmp eq i32 %2522, 0
  br i1 %2523, label %2575, label %2524

; <label>:2524                                    ; preds = %2518
  br label %2525

; <label>:2525                                    ; preds = %2570, %2524
  %2526 = phi i32 [ %2571, %2570 ], [ %2519, %2524 ]
  %2527 = phi i32 [ %2572, %2570 ], [ 0, %2524 ]
  %2528 = lshr i32 %2527, 2
  %2529 = and i32 %2527, 3
  %2530 = add nuw nsw i32 %2528, 83
  %2531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 %2530)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.i32 %2531, 0
  %2533 = extractvalue %dx.types.CBufRet.i32 %2531, 1
  %2534 = extractvalue %dx.types.CBufRet.i32 %2531, 2
  %2535 = extractvalue %dx.types.CBufRet.i32 %2531, 3
  %2536 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 0
  store i32 %2532, i32* %2536, align 4
  %2537 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 1
  store i32 %2533, i32* %2537, align 4
  %2538 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 2
  store i32 %2534, i32* %2538, align 4
  %2539 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 3
  store i32 %2535, i32* %2539, align 4
  %2540 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i32 0, i32 %2529
  %2541 = load i32, i32* %2540, align 4, !tbaa !53
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = lshr i32 %2543, 16
  %2545 = and i32 %2544, 31
  %2546 = shl i32 %2467, %2545
  %2547 = add i32 %2546, %2466
  %2548 = shl i32 %2547, 2
  %2549 = add i32 %2548, %2541
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2570, label %2553, !dx.controlflow.hints !77

; <label>:2553                                    ; preds = %2525
  %2554 = icmp slt i32 %2551, 0
  %2555 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2526
  %2556 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2526
  %2557 = bitcast float* %2555 to i32*
  %2558 = bitcast float* %2556 to i32*
  br i1 %2554, label %2559, label %2566, !dx.controlflow.hints !78

; <label>:2559                                    ; preds = %2553
  %2560 = and i32 %2551, 1073741823
  %2561 = add i32 %2541, 20
  %2562 = add i32 %2561, %2560
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = extractvalue %dx.types.ResRet.i32 %2563, 1
  br label %2566

; <label>:2566                                    ; preds = %2559, %2553
  %2567 = phi i32 [ %2564, %2559 ], [ %2474, %2553 ]
  %2568 = phi i32 [ %2565, %2559 ], [ %2475, %2553 ]
  store i32 %2567, i32* %2557, align 4
  store i32 %2568, i32* %2558, align 4
  %2569 = add i32 %2526, 1
  br label %2570

; <label>:2570                                    ; preds = %2566, %2525
  %2571 = phi i32 [ %2526, %2525 ], [ %2569, %2566 ]
  %2572 = add nuw i32 %2527, 1
  %2573 = icmp eq i32 %2572, %2522
  br i1 %2573, label %2574, label %2525

; <label>:2574                                    ; preds = %2570
  br label %2575

; <label>:2575                                    ; preds = %2574, %2518
  %2576 = phi i32 [ %2519, %2518 ], [ %2571, %2574 ]
  %2577 = icmp eq i32 %2576, 1
  %2578 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 0
  %2579 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 0
  br i1 %2577, label %2580, label %2583, !dx.controlflow.hints !79

; <label>:2580                                    ; preds = %2575
  %2581 = load float, float* %2578, align 4
  %2582 = load float, float* %2579, align 4
  br label %2610

; <label>:2583                                    ; preds = %2575
  %2584 = load float, float* %2578, align 4
  %2585 = load float, float* %2579, align 4
  %2586 = fdiv fast float 1.000000e+00, %2585
  %2587 = fsub fast float %2584, %2586
  %2588 = icmp ugt i32 %2576, 1
  br i1 %2588, label %2589, label %2605

; <label>:2589                                    ; preds = %2583
  br label %2590

; <label>:2590                                    ; preds = %2590, %2589
  %2591 = phi float [ %2600, %2590 ], [ %2587, %2589 ]
  %2592 = phi float [ %2601, %2590 ], [ %2584, %2589 ]
  %2593 = phi i32 [ %2602, %2590 ], [ 1, %2589 ]
  %2594 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %2593
  %2595 = load float, float* %2594, align 4
  %2596 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2593
  %2597 = load float, float* %2596, align 4
  %2598 = fdiv fast float 1.000000e+00, %2597
  %2599 = fsub fast float %2595, %2598
  %2600 = call float @dx.op.binary.f32(i32 36, float %2591, float %2599)  ; FMin(a,b)
  %2601 = call float @dx.op.binary.f32(i32 35, float %2592, float %2595)  ; FMax(a,b)
  %2602 = add nuw i32 %2593, 1
  %2603 = icmp eq i32 %2602, %2576
  br i1 %2603, label %2604, label %2590

; <label>:2604                                    ; preds = %2590
  br label %2605

; <label>:2605                                    ; preds = %2604, %2583
  %2606 = phi float [ %2587, %2583 ], [ %2600, %2604 ]
  %2607 = phi float [ %2584, %2583 ], [ %2601, %2604 ]
  %2608 = fsub fast float %2607, %2606
  %2609 = fdiv fast float 1.000000e+00, %2608
  br label %2610

; <label>:2610                                    ; preds = %2605, %2580
  %2611 = phi float [ %2581, %2580 ], [ %2607, %2605 ]
  %2612 = phi float [ %2582, %2580 ], [ %2609, %2605 ]
  %2613 = fadd fast float %2041, %2611
  %2614 = fmul fast float %2613, %2612
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fmul fast float %2615, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2451, %2451
  %2619 = fsub fast float %2452, %2618
  %2620 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2619)  ; FMax(a,b)
  %2621 = fdiv fast float 1.000000e+00, %2620
  %2622 = fmul fast float %2452, %2451
  %2623 = fsub fast float %2453, %2622
  %2624 = fsub fast float %2617, %2451
  %2625 = fmul fast float %2617, %2617
  %2626 = fsub fast float %2625, %2452
  %2627 = fmul fast float %2621, %2623
  %2628 = fmul fast float %2627, %2624
  %2629 = fsub fast float %2626, %2628
  %2630 = fmul fast float %2452, %2452
  %2631 = fsub fast float %2454, %2630
  %2632 = fmul fast float %2623, %2623
  %2633 = fmul fast float %2632, %2621
  %2634 = fsub fast float %2631, %2633
  %2635 = fdiv fast float %2629, %2634
  %2636 = fmul fast float %2635, %2623
  %2637 = fsub fast float %2624, %2636
  %2638 = fmul fast float %2637, %2621
  %2639 = fmul fast float %2638, %2451
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2635, %2452
  %2642 = fsub fast float %2640, %2641
  %2643 = fmul fast float %2638, %2638
  %2644 = fmul fast float %2635, 4.000000e+00
  %2645 = fmul fast float %2644, %2642
  %2646 = fsub fast float %2643, %2645
  %2647 = call float @dx.op.unary.f32(i32 24, float %2646)  ; Sqrt(value)
  %2648 = fcmp fast oge float %2638, 0.000000e+00
  %2649 = fsub fast float -0.000000e+00, %2647
  %2650 = select i1 %2648, float %2649, float %2647
  %2651 = fsub fast float %2650, %2638
  %2652 = fdiv fast float %2651, %2635
  %2653 = fdiv fast float %2642, %2651
  %2654 = fmul fast float %2652, 5.000000e-01
  %2655 = fmul fast float %2653, 2.000000e+00
  %2656 = select i1 %2648, float %2654, float %2655
  %2657 = select i1 %2648, float %2655, float %2654
  %2658 = call float @dx.op.binary.f32(i32 35, float %2656, float %2657)  ; FMax(a,b)
  %2659 = call float @dx.op.binary.f32(i32 36, float %2656, float %2657)  ; FMin(a,b)
  %2660 = fcmp fast ogt float %2617, %2658
  %2661 = fsub fast float %2617, %2659
  %2662 = fsub fast float %2617, %2658
  %2663 = fsub fast float %2658, %2659
  %2664 = select i1 %2660, float %2662, float %2663
  %2665 = fmul float %2661, %2664
  %2666 = select i1 %2660, float %2659, float %2617
  %2667 = fcmp fast ogt float %2617, %2659
  %2668 = fmul fast float %2666, %2658
  %2669 = fadd fast float %2666, %2658
  %2670 = fmul fast float %2669, %2451
  %2671 = fadd fast float %2668, %2452
  %2672 = fsub fast float %2671, %2670
  %2673 = fdiv fast float %2672, %2665
  %2674 = select i1 %2667, float %2673, float 0.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = select i1 %2660, float %2675, float %2674
  %2677 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2436, 3
  %2679 = fmul fast float %2678, %2677
  %2680 = fsub fast float 1.000000e+00, %2679
  br label %2681

; <label>:2681                                    ; preds = %2610, %2288, %2014, %1972
  %2682 = phi float [ 1.000000e+00, %1972 ], [ %2680, %2610 ], [ 1.000000e+00, %2014 ], [ 1.000000e+00, %2288 ]
  %2683 = fcmp fast ogt float %2007, 0.000000e+00
  br i1 %2683, label %2684, label %2696, !dx.controlflow.hints !85

; <label>:2684                                    ; preds = %2681
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 2
  %2689 = fmul fast float %2686, %225
  %2690 = fadd fast float %2688, %252
  %2691 = fadd fast float %2690, %2689
  %2692 = call float @dx.op.binary.f32(i32 35, float %2691, float 0.000000e+00)  ; FMax(a,b)
  %2693 = fadd fast float %2692, 0x3F10000000000000
  %2694 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %32, float %1903, float %1904, float undef, float undef, i32 0, i32 0, i32 undef, float %2693)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2695 = extractvalue %dx.types.ResRet.f32 %2694, 0
  br label %2696

; <label>:2696                                    ; preds = %2684, %2681
  %2697 = phi float [ %2695, %2684 ], [ 1.000000e+00, %2681 ]
  %2698 = fcmp fast ogt float %2005, 0.000000e+00
  br i1 %2698, label %2699, label %2711, !dx.controlflow.hints !86

; <label>:2699                                    ; preds = %2696
  %2700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2701 = extractvalue %dx.types.CBufRet.f32 %2700, 2
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 1
  %2704 = fmul fast float %2701, %225
  %2705 = fadd fast float %2703, %252
  %2706 = fadd fast float %2705, %2704
  %2707 = call float @dx.op.binary.f32(i32 35, float %2706, float 0.000000e+00)  ; FMax(a,b)
  %2708 = fadd fast float %2707, 0x3F10000000000000
  %2709 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %32, float %1895, float %1896, float undef, float undef, i32 0, i32 0, i32 undef, float %2708)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  br label %2711

; <label>:2711                                    ; preds = %2699, %2696
  %2712 = phi float [ %2710, %2699 ], [ 1.000000e+00, %2696 ]
  %2713 = fcmp fast ogt float %2004, 0.000000e+00
  br i1 %2713, label %2714, label %2730, !dx.controlflow.hints !87

; <label>:2714                                    ; preds = %2711
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2718 = extractvalue %dx.types.CBufRet.f32 %2717, 0
  %2719 = fmul fast float %2716, %225
  %2720 = fadd fast float %2718, %252
  %2721 = fadd fast float %2720, %2719
  %2722 = call float @dx.op.binary.f32(i32 35, float %2721, float 0.000000e+00)  ; FMax(a,b)
  %2723 = fadd fast float %2722, 0x3F10000000000000
  br i1 %101, label %2724, label %2727, !dx.controlflow.hints !88

; <label>:2724                                    ; preds = %2714
  %2725 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %32, float %244, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %2723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  br label %2730

; <label>:2727                                    ; preds = %2714
  %2728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %32, float %244, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float %2723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  br label %2730

; <label>:2730                                    ; preds = %2727, %2724, %2711
  %2731 = phi float [ %2726, %2724 ], [ %2729, %2727 ], [ 1.000000e+00, %2711 ]
  %2732 = fsub fast float %2697, %2682
  %2733 = fmul fast float %2732, %1974
  %2734 = fadd fast float %2733, %2682
  %2735 = fsub fast float %2712, %2734
  %2736 = fmul fast float %2735, %1973
  %2737 = fadd fast float %2736, %2734
  %2738 = fsub fast float %2731, %2737
  %2739 = fmul fast float %2738, %2004
  %2740 = fadd fast float %2739, %2737
  br label %2741

; <label>:2741                                    ; preds = %2730, %1877, %1033, %962, %640, %366, %363, %342, %321, %300, %279
  %2742 = phi float [ %2740, %2730 ], [ %297, %279 ], [ %318, %300 ], [ %339, %321 ], [ %360, %342 ], [ %1887, %1877 ], [ %1032, %962 ], [ 1.000000e+00, %366 ], [ 1.000000e+00, %640 ], [ 1.000000e+00, %363 ], [ 0.000000e+00, %1033 ]
  %2743 = fcmp fast une float %2742, 0.000000e+00
  br i1 %2743, label %2744, label %2952, !dx.controlflow.hints !89

; <label>:2744                                    ; preds = %2741
  %2745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2746 = extractvalue %dx.types.CBufRet.f32 %2745, 0
  %2747 = extractvalue %dx.types.CBufRet.f32 %2745, 1
  %2748 = extractvalue %dx.types.CBufRet.f32 %2745, 2
  %2749 = extractvalue %dx.types.CBufRet.f32 %2745, 3
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.CBufRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.CBufRet.f32 %2750, 2
  %2754 = extractvalue %dx.types.CBufRet.f32 %2750, 3
  %2755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2756 = extractvalue %dx.types.CBufRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.CBufRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.CBufRet.f32 %2755, 2
  %2759 = extractvalue %dx.types.CBufRet.f32 %2755, 3
  %2760 = fmul fast float %2746, %164
  %2761 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2747, float %2760)  ; FMad(a,b,c)
  %2762 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2748, float %2761)  ; FMad(a,b,c)
  %2763 = fadd fast float %2762, %2749
  %2764 = fmul fast float %2751, %164
  %2765 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2752, float %2764)  ; FMad(a,b,c)
  %2766 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2753, float %2765)  ; FMad(a,b,c)
  %2767 = fadd fast float %2766, %2754
  %2768 = fmul fast float %2756, %164
  %2769 = call float @dx.op.tertiary.f32(i32 46, float %165, float %2757, float %2768)  ; FMad(a,b,c)
  %2770 = call float @dx.op.tertiary.f32(i32 46, float %166, float %2758, float %2769)  ; FMad(a,b,c)
  %2771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %2772 = extractvalue %dx.types.CBufRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.CBufRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.CBufRet.f32 %2771, 3
  %2775 = fmul fast float %2774, %2763
  %2776 = fmul fast float %2774, %2767
  %2777 = fadd fast float %2775, %2772
  %2778 = fadd fast float %2776, %2773
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = fsub fast float %2777, %2780
  %2783 = fsub fast float %2778, %2781
  %2784 = fcmp fast olt float %2782, 0.000000e+00
  %2785 = fcmp fast olt float %2783, 0.000000e+00
  %2786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %2787 = extractvalue %dx.types.CBufRet.f32 %2786, 0
  %2788 = extractvalue %dx.types.CBufRet.f32 %2786, 1
  %2789 = extractvalue %dx.types.CBufRet.f32 %2786, 2
  %2790 = extractvalue %dx.types.CBufRet.f32 %2786, 3
  %2791 = select i1 %2784, float %2787, float %2789
  %2792 = select i1 %2785, float %2788, float %2790
  %2793 = fmul fast float %2791, %2782
  %2794 = fmul fast float %2792, %2783
  %2795 = call float @dx.op.unary.f32(i32 6, float %2793)  ; FAbs(value)
  %2796 = call float @dx.op.unary.f32(i32 6, float %2794)  ; FAbs(value)
  %2797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2798 = extractvalue %dx.types.CBufRet.f32 %2797, 0
  %2799 = call float @dx.op.binary.f32(i32 35, float %2795, float %2796)  ; FMax(a,b)
  %2800 = fsub fast float %2798, %2799
  %2801 = call float @dx.op.unary.f32(i32 7, float %2800)  ; Saturate(value)
  %2802 = fcmp fast ogt float %2801, 0.000000e+00
  br i1 %2802, label %2803, label %2844, !dx.controlflow.hints !90

; <label>:2803                                    ; preds = %2744
  %2804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 1
  %2806 = fcmp fast ogt float %2805, 0.000000e+00
  br i1 %2806, label %2807, label %2839, !dx.controlflow.hints !91

; <label>:2807                                    ; preds = %2803
  %2808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %30, float %2777, float %2778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2809 = extractvalue %dx.types.ResRet.f32 %2808, 0
  %2810 = extractvalue %dx.types.ResRet.f32 %2808, 1
  %2811 = extractvalue %dx.types.ResRet.f32 %2808, 2
  %2812 = extractvalue %dx.types.ResRet.f32 %2808, 3
  %2813 = fsub fast float 1.000000e+00, %2759
  %2814 = fsub fast float %2813, %2770
  %2815 = fmul fast float %2814, 0x400921FB60000000
  %2816 = fadd fast float %2815, 0x3FF921FB60000000
  %2817 = call float @dx.op.unary.f32(i32 13, float %2816)  ; Sin(value)
  %2818 = fadd fast float %2817, -1.000000e+00
  %2819 = fmul fast float %2818, 0x3FD45F3060000000
  %2820 = fmul fast float %2814, 0x401921FB60000000
  %2821 = fadd fast float %2820, 0x400921FB60000000
  %2822 = call float @dx.op.unary.f32(i32 13, float %2821)  ; Sin(value)
  %2823 = fadd fast float %2822, 0x3E7777A5C0000000
  %2824 = fmul fast float %2823, 0x3FC45F3060000000
  %2825 = fmul fast float %2814, 0x4022D97C80000000
  %2826 = fadd fast float %2825, 0x4012D97C80000000
  %2827 = call float @dx.op.unary.f32(i32 13, float %2826)  ; Sin(value)
  %2828 = fadd fast float %2827, 1.000000e+00
  %2829 = fmul fast float %2828, 0x3FBB2995E0000000
  %2830 = fmul fast float %2814, 0x402921FB60000000
  %2831 = fadd fast float %2830, 0x401921FB60000000
  %2832 = call float @dx.op.unary.f32(i32 13, float %2831)  ; Sin(value)
  %2833 = fadd fast float %2832, 0xBE8777A5C0000000
  %2834 = fmul fast float %2833, 0x3FB45F3060000000
  %2835 = call float @dx.op.dot4.f32(i32 56, float %2809, float %2810, float %2811, float %2812, float %2819, float %2824, float %2829, float %2834)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2836 = fmul fast float %2835, 0xBFF7154760000000
  %2837 = call float @dx.op.unary.f32(i32 21, float %2836)  ; Exp(value)
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  br label %2839

; <label>:2839                                    ; preds = %2807, %2803
  %2840 = phi float [ %2838, %2807 ], [ 1.000000e+00, %2803 ]
  %2841 = fadd fast float %2840, -1.000000e+00
  %2842 = fmul fast float %2841, %2801
  %2843 = fadd fast float %2842, 1.000000e+00
  br label %2844

; <label>:2844                                    ; preds = %2839, %2744
  %2845 = phi float [ %2843, %2839 ], [ 1.000000e+00, %2744 ]
  %2846 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2847 = fmul fast float %2846, %2742
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 2
  %2850 = fcmp fast ugt float %2849, 0.000000e+00
  br i1 %2850, label %2851, label %2886, !dx.controlflow.hints !92

; <label>:2851                                    ; preds = %2844
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = extractvalue %dx.types.CBufRet.f32 %2852, 2
  %2856 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = extractvalue %dx.types.CBufRet.f32 %2857, 2
  %2861 = extractvalue %dx.types.CBufRet.f32 %2857, 3
  %2862 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2863 = extractvalue %dx.types.CBufRet.f32 %2848, 1
  %2864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2865 = extractvalue %dx.types.CBufRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.CBufRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.CBufRet.f32 %2864, 2
  %2868 = fadd fast float %2865, %164
  %2869 = fadd fast float %2866, %165
  %2870 = fadd fast float %2867, %166
  %2871 = fmul fast float %2868, %2853
  %2872 = call float @dx.op.tertiary.f32(i32 46, float %2854, float %2869, float %2871)  ; FMad(a,b,c)
  %2873 = call float @dx.op.tertiary.f32(i32 46, float %2855, float %2870, float %2872)  ; FMad(a,b,c)
  %2874 = fadd fast float %2873, %2856
  %2875 = fmul fast float %2868, %2858
  %2876 = call float @dx.op.tertiary.f32(i32 46, float %2859, float %2869, float %2875)  ; FMad(a,b,c)
  %2877 = call float @dx.op.tertiary.f32(i32 46, float %2860, float %2870, float %2876)  ; FMad(a,b,c)
  %2878 = fadd fast float %2877, %2861
  %2879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %27, float %2874, float %2878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = fmul fast float %2880, %2863
  %2882 = fadd fast float %2881, %2862
  %2883 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2884 = fmul fast float %2883, %2849
  %2885 = fsub fast float 1.000000e+00, %2884
  br label %2886

; <label>:2886                                    ; preds = %2851, %2844
  %2887 = phi float [ %2885, %2851 ], [ 1.000000e+00, %2844 ]
  %2888 = fmul fast float %2847, %2887
  %2889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2890 = extractvalue %dx.types.CBufRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.CBufRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.CBufRet.f32 %2889, 2
  %2893 = fadd fast float %2890, %164
  %2894 = fadd fast float %2891, %165
  %2895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %2896 = extractvalue %dx.types.CBufRet.f32 %2895, 1
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 0
  %2899 = extractvalue %dx.types.CBufRet.f32 %2897, 1
  %2900 = extractvalue %dx.types.CBufRet.f32 %2897, 2
  %2901 = fsub fast float -0.000000e+00, %2893
  %2902 = fsub fast float -0.000000e+00, %2894
  %2903 = fsub fast float -0.000000e+00, %166
  %2904 = fsub fast float %2903, %2892
  %2905 = fadd fast float %2904, %2896
  %2906 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2901, float %2902, float %2905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2907 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2898, float %2899, float %2900)  ; Dot3(ax,ay,az,bx,by,bz)
  %2908 = fdiv fast float 1.000000e+00, %2907
  %2909 = fmul fast float %2908, %2906
  %2910 = fmul fast float %2898, %2909
  %2911 = fmul fast float %2899, %2909
  %2912 = fadd fast float %2910, %2893
  %2913 = fadd fast float %2911, %2894
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 0
  %2916 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2917 = fsub fast float %2912, %2915
  %2918 = fsub fast float %2913, %2916
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 2
  %2921 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %2922 = fmul fast float %2917, %2920
  %2923 = fmul fast float %2918, %2921
  %2924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.i32 %2924, 3
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %2932, label %2927, !dx.controlflow.hints !93

; <label>:2927                                    ; preds = %2886
  %2928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %29, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  br label %2937

; <label>:2932                                    ; preds = %2886
  %2933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %30, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2934 = extractvalue %dx.types.ResRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.ResRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.ResRet.f32 %2933, 2
  br label %2937

; <label>:2937                                    ; preds = %2932, %2927
  %2938 = phi float [ %2929, %2927 ], [ %2934, %2932 ]
  %2939 = phi float [ %2930, %2927 ], [ %2935, %2932 ]
  %2940 = phi float [ %2931, %2927 ], [ %2936, %2932 ]
  %2941 = extractvalue %dx.types.CBufRet.f32 %2895, 2
  %2942 = fmul fast float %2941, %2938
  %2943 = extractvalue %dx.types.CBufRet.f32 %2895, 0
  %2944 = fsub fast float %2909, %2943
  %2945 = fsub fast float %2944, %2942
  %2946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2945)  ; FMax(a,b)
  %2947 = fmul fast float %2946, %2939
  %2948 = call float @dx.op.binary.f32(i32 36, float %2940, float %2947)  ; FMin(a,b)
  %2949 = fmul fast float %2948, 0xBFF7154760000000
  %2950 = call float @dx.op.unary.f32(i32 21, float %2949)  ; Exp(value)
  %2951 = fmul fast float %2888, %2950
  br label %2952

; <label>:2952                                    ; preds = %2937, %2741
  %2953 = phi float [ %2951, %2937 ], [ %2742, %2741 ]
  %2954 = fcmp fast ogt float %2953, 0.000000e+00
  %2955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2956 = extractvalue %dx.types.CBufRet.f32 %2955, 1
  %2957 = fcmp fast ogt float %215, %2956
  %2958 = and i1 %2954, %2957
  br i1 %2958, label %2959, label %3228, !dx.controlflow.hints !94

; <label>:2959                                    ; preds = %2952
  %2960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.i32 %2960, 0
  %2962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2963 = extractvalue %dx.types.CBufRet.i32 %2962, 0
  %2964 = select i1 %101, i32 %2961, i32 %2963
  %2965 = icmp sgt i32 %2964, 0
  br i1 %2965, label %2966, label %3228, !dx.controlflow.hints !95

; <label>:2966                                    ; preds = %2959
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2971 = select i1 %101, float %2968, float %2970
  %2972 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %2973 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2974 = select i1 %101, float %2972, float %2973
  %2975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.i32 %2975, 0
  %2977 = uitofp i32 %2976 to float
  %2978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2979 = extractvalue %dx.types.CBufRet.f32 %2978, 2
  %2980 = extractvalue %dx.types.CBufRet.f32 %2978, 3
  %2981 = fmul fast float %2979, 5.000000e-01
  %2982 = fmul fast float %2980, 5.000000e-01
  %2983 = fsub fast float %97, %2981
  %2984 = fsub fast float %98, %2982
  %2985 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %31, float %2983, float %2984, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = extractvalue %dx.types.ResRet.f32 %2985, 1
  %2988 = extractvalue %dx.types.ResRet.f32 %2985, 2
  %2989 = fcmp fast ogt float %2986, -1.000000e+00
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 1
  %2992 = select i1 %2989, float %2991, float 1.000000e+00
  %2993 = fadd fast float %2986, 1.000000e+00
  %2994 = fmul fast float %2992, %2993
  %2995 = call float @dx.op.unary.f32(i32 6, float %2994)  ; FAbs(value)
  %2996 = fcmp fast ogt float %2987, -1.000000e+00
  %2997 = select i1 %2996, float %2991, float 1.000000e+00
  %2998 = fadd fast float %2987, 1.000000e+00
  %2999 = fmul fast float %2997, %2998
  %3000 = call float @dx.op.unary.f32(i32 6, float %2999)  ; FAbs(value)
  %3001 = fcmp fast ogt float %2988, -1.000000e+00
  %3002 = select i1 %3001, float %2991, float 1.000000e+00
  %3003 = fadd fast float %2988, 1.000000e+00
  %3004 = fmul fast float %3002, %3003
  %3005 = call float @dx.op.unary.f32(i32 6, float %3004)  ; FAbs(value)
  %3006 = fadd fast float %2981, %97
  %3007 = fadd fast float %2982, %98
  %3008 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %25, %dx.types.Handle %31, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = extractvalue %dx.types.ResRet.f32 %3008, 2
  %3011 = fcmp fast ogt float %3009, -1.000000e+00
  %3012 = select i1 %3011, float %2991, float 1.000000e+00
  %3013 = fadd fast float %3009, 1.000000e+00
  %3014 = fmul fast float %3012, %3013
  %3015 = call float @dx.op.unary.f32(i32 6, float %3014)  ; FAbs(value)
  %3016 = fcmp fast ogt float %3010, -1.000000e+00
  %3017 = select i1 %3016, float %2991, float 1.000000e+00
  %3018 = fadd fast float %3010, 1.000000e+00
  %3019 = fmul fast float %3017, %3018
  %3020 = call float @dx.op.unary.f32(i32 6, float %3019)  ; FAbs(value)
  %3021 = fsub fast float %3005, %3000
  %3022 = fsub fast float %3015, %3000
  %3023 = fsub fast float %2995, %3000
  %3024 = fsub fast float %3020, %3000
  %3025 = call float @dx.op.unary.f32(i32 6, float %3022)  ; FAbs(value)
  %3026 = call float @dx.op.unary.f32(i32 6, float %3021)  ; FAbs(value)
  %3027 = call float @dx.op.binary.f32(i32 35, float %3026, float %3025)  ; FMax(a,b)
  %3028 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3029 = call float @dx.op.unary.f32(i32 6, float %3023)  ; FAbs(value)
  %3030 = call float @dx.op.binary.f32(i32 35, float %3029, float %3028)  ; FMax(a,b)
  %3031 = fadd fast float %3022, %3021
  %3032 = call float @dx.op.unary.f32(i32 6, float %3031)  ; FAbs(value)
  %3033 = fadd fast float %3024, %3023
  %3034 = call float @dx.op.unary.f32(i32 6, float %3033)  ; FAbs(value)
  %3035 = fsub fast float %3030, %3034
  %3036 = call float @dx.op.unary.f32(i32 6, float %3035)  ; FAbs(value)
  %3037 = fsub fast float %3027, %3032
  %3038 = call float @dx.op.unary.f32(i32 6, float %3037)  ; FAbs(value)
  %3039 = call float @dx.op.binary.f32(i32 35, float %3038, float %3036)  ; FMax(a,b)
  %3040 = extractvalue %dx.types.CBufRet.f32 %2978, 0
  %3041 = extractvalue %dx.types.CBufRet.f32 %2978, 1
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = extractvalue %dx.types.CBufRet.f32 %3042, 1
  %3045 = extractvalue %dx.types.CBufRet.f32 %3042, 2
  %3046 = extractvalue %dx.types.CBufRet.f32 %3042, 3
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3050 = extractvalue %dx.types.CBufRet.f32 %3047, 2
  %3051 = extractvalue %dx.types.CBufRet.f32 %3047, 3
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3055 = extractvalue %dx.types.CBufRet.f32 %3052, 2
  %3056 = extractvalue %dx.types.CBufRet.f32 %3052, 3
  %3057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.CBufRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.CBufRet.f32 %3057, 2
  %3061 = extractvalue %dx.types.CBufRet.f32 %3057, 3
  %3062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %3063 = extractvalue %dx.types.CBufRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.CBufRet.f32 %3062, 1
  %3065 = extractvalue %dx.types.CBufRet.f32 %3062, 2
  %3066 = extractvalue %dx.types.CBufRet.f32 %3062, 3
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.CBufRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3067, 2
  %3071 = extractvalue %dx.types.CBufRet.f32 %3067, 3
  %3072 = select i1 %101, float %3043, float %3058
  %3073 = select i1 %101, float %3048, float %3063
  %3074 = select i1 %101, float %3053, float %3068
  %3075 = select i1 %101, float %3044, float %3059
  %3076 = select i1 %101, float %3049, float %3064
  %3077 = select i1 %101, float %3054, float %3069
  %3078 = select i1 %101, float %3045, float %3060
  %3079 = select i1 %101, float %3050, float %3065
  %3080 = select i1 %101, float %3055, float %3070
  %3081 = select i1 %101, float %3046, float %3061
  %3082 = select i1 %101, float %3051, float %3066
  %3083 = select i1 %101, float %3056, float %3071
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = extractvalue %dx.types.CBufRet.f32 %3084, 1
  %3087 = extractvalue %dx.types.CBufRet.f32 %3084, 2
  %3088 = fdiv fast float 1.000000e+00, %108
  %3089 = fmul fast float %2979, %92
  %3090 = fmul fast float %2980, %93
  %3091 = fmul fast float %3085, %2971
  %3092 = fmul fast float %3086, %2971
  %3093 = fmul fast float %3087, %2971
  %3094 = fadd fast float %3091, %164
  %3095 = fadd fast float %3092, %165
  %3096 = fadd fast float %3093, %166
  %3097 = fmul fast float %3094, %3072
  %3098 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3075, float %3097)  ; FMad(a,b,c)
  %3099 = call float @dx.op.tertiary.f32(i32 46, float %3096, float %3078, float %3098)  ; FMad(a,b,c)
  %3100 = fadd fast float %3099, %3081
  %3101 = fmul fast float %3094, %3073
  %3102 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3076, float %3101)  ; FMad(a,b,c)
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3096, float %3079, float %3102)  ; FMad(a,b,c)
  %3104 = fadd fast float %3103, %3082
  %3105 = fmul fast float %3094, %3074
  %3106 = call float @dx.op.tertiary.f32(i32 46, float %3095, float %3077, float %3105)  ; FMad(a,b,c)
  %3107 = call float @dx.op.tertiary.f32(i32 46, float %3096, float %3080, float %3106)  ; FMad(a,b,c)
  %3108 = fadd fast float %3107, %3083
  %3109 = fdiv fast float 1.000000e+00, %3108
  %3110 = fmul fast float %3100, 5.000000e-01
  %3111 = fmul fast float %3104, -5.000000e-01
  %3112 = fmul fast float %3110, %3109
  %3113 = fmul fast float %3111, %3109
  %3114 = fsub fast float 5.000000e-01, %3089
  %3115 = fadd fast float %3114, %3112
  %3116 = fsub fast float 5.000000e-01, %3090
  %3117 = fadd fast float %3116, %3113
  %3118 = fsub fast float %3109, %3088
  %3119 = call float @dx.op.dot2.f32(i32 54, float %3115, float %3117, float %3115, float %3117)  ; Dot2(ax,ay,bx,by)
  %3120 = call float @dx.op.binary.f32(i32 35, float %3119, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %3121 = call float @dx.op.dot2.f32(i32 54, float %3040, float %3041, float %3040, float %3041)  ; Dot2(ax,ay,bx,by)
  %3122 = fmul fast float %3121, %3120
  %3123 = call float @dx.op.unary.f32(i32 25, float %3122)  ; Rsqrt(value)
  %3124 = fmul fast float %3123, %3115
  %3125 = fmul fast float %3123, %3117
  %3126 = fadd fast float %3124, %3089
  %3127 = fadd fast float %3125, %3090
  %3128 = fmul fast float %3115, %3040
  %3129 = fmul fast float %3117, %3041
  %3130 = fmul fast float %3128, %3128
  %3131 = fmul fast float %3129, %3129
  %3132 = fadd fast float %3130, %3131
  %3133 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3134 = fdiv fast float 1.000000e+00, %3133
  %3135 = fmul fast float %3133, 3.906250e-03
  %3136 = fmul fast float %3039, 0x3F70624DE0000000
  %3137 = fadd fast float %3136, 0x3F70624DE0000000
  br label %3138

; <label>:3138                                    ; preds = %3194, %2966
  %3139 = phi float [ %3170, %3194 ], [ %108, %2966 ]
  %3140 = phi float [ %3157, %3194 ], [ %108, %2966 ]
  %3141 = phi float [ %3140, %3194 ], [ %108, %2966 ]
  %3142 = phi i32 [ %3195, %3194 ], [ 0, %2966 ]
  %3143 = sitofp i32 %3142 to float
  %3144 = fadd fast float %263, 5.000000e-01
  %3145 = call float @dx.op.unary.f32(i32 22, float %3144)  ; Frc(value)
  %3146 = fadd fast float %3143, %3145
  %3147 = sitofp i32 %2964 to float
  %3148 = fdiv fast float %3146, %3147
  %3149 = fmul fast float %3148, %3148
  %3150 = call float @dx.op.binary.f32(i32 36, float %3149, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %3151 = fmul fast float %3150, %3115
  %3152 = fmul fast float %3150, %3117
  %3153 = fmul fast float %3150, %3118
  %3154 = fadd fast float %3151, %3126
  %3155 = fadd fast float %3152, %3127
  %3156 = fadd fast float %3153, %3088
  %3157 = fdiv fast float 1.000000e+00, %3156
  %3158 = icmp ne i32 %2976, 0
  %3159 = fmul fast float %3135, %3150
  %3160 = call float @dx.op.binary.f32(i32 36, float %3159, float %2977)  ; FMin(a,b)
  %3161 = select i1 %3158, float %3160, float 0.000000e+00
  %3162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %3154, float %3155, float undef, float undef, i32 0, i32 0, i32 undef, float %3161)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3163 = extractvalue %dx.types.ResRet.f32 %3162, 0
  %3164 = fcmp fast ogt float %3163, -1.000000e+00
  %3165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3166 = extractvalue %dx.types.CBufRet.f32 %3165, 1
  %3167 = select i1 %3164, float %3166, float 1.000000e+00
  %3168 = fadd fast float %3163, 1.000000e+00
  %3169 = fmul fast float %3167, %3168
  %3170 = call float @dx.op.unary.f32(i32 6, float %3169)  ; FAbs(value)
  %3171 = fmul fast float %3170, %3137
  %3172 = fsub fast float %3157, %3170
  %3173 = fsub fast float %3172, %3171
  %3174 = fcmp fast ogt float %3173, 0.000000e+00
  %3175 = fcmp fast ogt float %2974, 0.000000e+00
  br i1 %3175, label %3176, label %3179, !dx.controlflow.hints !96

; <label>:3176                                    ; preds = %3138
  %3177 = fsub fast float %3157, %3141
  %3178 = call float @dx.op.binary.f32(i32 35, float %3177, float %2974)  ; FMax(a,b)
  br label %3179

; <label>:3179                                    ; preds = %3176, %3138
  %3180 = phi float [ %3178, %3176 ], [ %2971, %3138 ]
  %3181 = fcmp fast olt float %3173, %3180
  %3182 = fcmp uge float %3163, -1.000000e+00
  %3183 = xor i1 %101, %3182
  %3184 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3185 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  %3186 = fcmp fast oeq float %3154, %3184
  %3187 = fcmp fast oeq float %3155, %3185
  %3188 = and i1 %3186, %3187
  %3189 = and i1 %3183, %3188
  %3190 = and i1 %3174, %3181
  %3191 = and i1 %3190, %3189
  %3192 = fcmp fast ogt float %3150, %3134
  %3193 = and i1 %3192, %3191
  br i1 %3193, label %3197, label %3194, !dx.controlflow.hints !97

; <label>:3194                                    ; preds = %3179
  %3195 = add nuw nsw i32 %3142, 1
  %3196 = icmp slt i32 %3142, %2964
  br i1 %3196, label %3138, label %3197

; <label>:3197                                    ; preds = %3194, %3179
  %3198 = phi i1 [ false, %3194 ], [ true, %3179 ]
  %3199 = fsub fast float %3140, %3139
  %3200 = fsub fast float %3199, %3172
  %3201 = fcmp fast une float %3200, 0.000000e+00
  %3202 = fmul fast float %3157, %3199
  %3203 = fmul fast float %3172, %3140
  %3204 = fsub fast float %3202, %3203
  %3205 = fdiv fast float 1.000000e+00, %3200
  %3206 = fmul fast float %3205, %3204
  %3207 = select i1 %3201, float %3206, float %3157
  %3208 = fdiv fast float 1.000000e+00, %3207
  %3209 = fsub fast float %3208, %3088
  %3210 = fdiv fast float %3209, %3118
  %3211 = call float @dx.op.unary.f32(i32 7, float %3210)  ; Saturate(value)
  %3212 = fmul fast float %3211, %3115
  %3213 = fmul fast float %3211, %3117
  %3214 = fadd fast float %3126, -5.000000e-01
  %3215 = fadd fast float %3214, %3212
  %3216 = fadd fast float %3127, -5.000000e-01
  %3217 = fadd fast float %3216, %3213
  %3218 = call float @dx.op.unary.f32(i32 6, float %3215)  ; FAbs(value)
  %3219 = call float @dx.op.unary.f32(i32 6, float %3217)  ; FAbs(value)
  %3220 = fadd fast float %3218, -5.000000e-01
  %3221 = fadd fast float %3219, -5.000000e-01
  %3222 = call float @dx.op.binary.f32(i32 35, float %3220, float %3221)  ; FMax(a,b)
  %3223 = fcmp fast olt float %3222, 0.000000e+00
  %3224 = or i1 %101, %3223
  %3225 = and i1 %3198, %3224
  %3226 = select i1 %3225, float 0.000000e+00, float 1.000000e+00
  %3227 = call float @dx.op.binary.f32(i32 36, float %2953, float %3226)  ; FMin(a,b)
  br label %3228

; <label>:3228                                    ; preds = %3197, %2959, %2952
  %3229 = phi float [ %3227, %3197 ], [ %2953, %2959 ], [ %2953, %2952 ]
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 114688
  %3233 = icmp ne i32 %3232, 0
  %3234 = fcmp fast ogt float %3229, 0.000000e+00
  %3235 = and i1 %3234, %3233
  br i1 %3235, label %3236, label %3668, !dx.controlflow.hints !98

; <label>:3236                                    ; preds = %3228
  %3237 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %90, i32 %91, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = fmul fast float %3238, 2.550000e+02
  %3240 = fptoui float %3239 to i32
  %3241 = icmp eq i32 %3240, 0
  br i1 %3241, label %3581, label %3242, !dx.controlflow.hints !99

; <label>:3242                                    ; preds = %3236
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = fadd fast float %3244, %164
  %3248 = fadd fast float %3245, %165
  %3249 = fadd fast float %3246, %166
  %3250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3251 = extractvalue %dx.types.CBufRet.f32 %3250, 0
  %3252 = extractvalue %dx.types.CBufRet.f32 %3250, 1
  %3253 = fsub fast float %3247, %3251
  %3254 = fsub fast float %3248, %3252
  %3255 = fmul fast float %3253, %3253
  %3256 = fmul fast float %3254, %3254
  %3257 = fadd fast float %3255, %3256
  %3258 = call float @dx.op.unary.f32(i32 24, float %3257)  ; Sqrt(value)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3250, 2
  %3260 = fcmp fast olt float %3258, %3259
  br i1 %3260, label %3261, label %3326, !dx.controlflow.hints !100

; <label>:3261                                    ; preds = %3242
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3265 = extractvalue %dx.types.CBufRet.f32 %3264, 0
  %3266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3267 = extractvalue %dx.types.CBufRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3269 = extractvalue %dx.types.CBufRet.f32 %3264, 1
  %3270 = extractvalue %dx.types.CBufRet.f32 %3266, 1
  %3271 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3272 = extractvalue %dx.types.CBufRet.f32 %3264, 3
  %3273 = extractvalue %dx.types.CBufRet.f32 %3266, 3
  %3274 = fadd fast float %3271, %3247
  %3275 = fadd fast float %3272, %3248
  %3276 = fadd fast float %3273, %3249
  %3277 = fmul fast float %3274, %3263
  %3278 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3265, float %3277)  ; FMad(a,b,c)
  %3279 = call float @dx.op.tertiary.f32(i32 46, float %3276, float %3267, float %3278)  ; FMad(a,b,c)
  %3280 = fmul fast float %3274, %3268
  %3281 = call float @dx.op.tertiary.f32(i32 46, float %3275, float %3269, float %3280)  ; FMad(a,b,c)
  %3282 = call float @dx.op.tertiary.f32(i32 46, float %3276, float %3270, float %3281)  ; FMad(a,b,c)
  %3283 = fsub fast float %3279, %3271
  %3284 = fsub fast float %3282, %3272
  %3285 = fsub fast float %3283, %3251
  %3286 = fadd fast float %3285, %3259
  %3287 = fsub fast float %3284, %3252
  %3288 = fadd fast float %3287, %3259
  %3289 = extractvalue %dx.types.CBufRet.f32 %3250, 3
  %3290 = fmul fast float %3286, %3289
  %3291 = fmul fast float %3288, %3289
  %3292 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3293 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  %3294 = fsub fast float 1.000000e+00, %3292
  %3295 = fsub fast float 1.000000e+00, %3293
  %3296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %30, float %3294, float %3295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = fcmp fast ugt float %3297, 0.000000e+00
  br i1 %3298, label %3299, label %3581, !dx.controlflow.hints !101

; <label>:3299                                    ; preds = %3261
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3302 = fmul fast float %3301, %3297
  %3303 = extractvalue %dx.types.CBufRet.f32 %3300, 3
  %3304 = fadd fast float %3303, %3302
  %3305 = extractvalue %dx.types.CBufRet.f32 %3266, 2
  %3306 = fadd fast float %3304, %3273
  %3307 = fmul fast float %3279, %3267
  %3308 = call float @dx.op.tertiary.f32(i32 46, float %3282, float %3270, float %3307)  ; FMad(a,b,c)
  %3309 = call float @dx.op.tertiary.f32(i32 46, float %3306, float %3305, float %3308)  ; FMad(a,b,c)
  %3310 = fsub fast float %3309, %3273
  %3311 = fsub fast float %3310, %3246
  %3312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %30, float %3294, float %3295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = extractvalue %dx.types.ResRet.f32 %3312, 1
  %3315 = extractvalue %dx.types.ResRet.f32 %3312, 2
  %3316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %30, float %3294, float %3295, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = fadd fast float %3317, %3313
  %3321 = fmul fast float %3320, 0x3F847AE140000000
  %3322 = fadd fast float %3318, %3314
  %3323 = fmul fast float %3322, 0x3F847AE140000000
  %3324 = fadd fast float %3319, %3315
  %3325 = fmul fast float %3324, 0x3F847AE140000000
  br label %3581

; <label>:3326                                    ; preds = %3242
  %3327 = and i32 %3240, -3
  %3328 = icmp eq i32 %3327, 1
  br i1 %3328, label %3329, label %3581, !dx.controlflow.hints !102

; <label>:3329                                    ; preds = %3326
  %3330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.f32 %3330, 0
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3335 = extractvalue %dx.types.CBufRet.f32 %3334, 0
  %3336 = extractvalue %dx.types.CBufRet.f32 %3330, 1
  %3337 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3338 = extractvalue %dx.types.CBufRet.f32 %3334, 1
  %3339 = extractvalue %dx.types.CBufRet.f32 %3330, 3
  %3340 = extractvalue %dx.types.CBufRet.f32 %3332, 3
  %3341 = extractvalue %dx.types.CBufRet.f32 %3334, 3
  %3342 = fadd fast float %3339, %3247
  %3343 = fadd fast float %3340, %3248
  %3344 = fadd fast float %3341, %3249
  %3345 = fmul fast float %3342, %3331
  %3346 = call float @dx.op.tertiary.f32(i32 46, float %3343, float %3333, float %3345)  ; FMad(a,b,c)
  %3347 = call float @dx.op.tertiary.f32(i32 46, float %3344, float %3335, float %3346)  ; FMad(a,b,c)
  %3348 = fmul fast float %3342, %3336
  %3349 = call float @dx.op.tertiary.f32(i32 46, float %3343, float %3337, float %3348)  ; FMad(a,b,c)
  %3350 = call float @dx.op.tertiary.f32(i32 46, float %3344, float %3338, float %3349)  ; FMad(a,b,c)
  %3351 = fsub fast float %3347, %3339
  %3352 = fsub fast float %3350, %3340
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.CBufRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.CBufRet.f32 %3353, 2
  %3357 = extractvalue %dx.types.CBufRet.f32 %3353, 3
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 3
  %3360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.i32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.i32 %3360, 1
  %3363 = udiv i32 %3362, %3361
  %3364 = fsub fast float %3351, %3354
  %3365 = fsub fast float %3352, %3355
  %3366 = call float @dx.op.binary.f32(i32 35, float %3364, float 0.000000e+00)  ; FMax(a,b)
  %3367 = call float @dx.op.binary.f32(i32 35, float %3365, float 0.000000e+00)  ; FMax(a,b)
  %3368 = call float @dx.op.binary.f32(i32 36, float %3366, float %3356)  ; FMin(a,b)
  %3369 = call float @dx.op.binary.f32(i32 36, float %3367, float %3357)  ; FMin(a,b)
  %3370 = add i32 %3361, -1
  %3371 = add i32 %3363, -1
  %3372 = fmul fast float %3368, %3359
  %3373 = fmul fast float %3369, %3359
  %3374 = fptoui float %3372 to i32
  %3375 = fptoui float %3373 to i32
  %3376 = call i32 @dx.op.binary.i32(i32 40, i32 %3374, i32 %3370)  ; UMin(a,b)
  %3377 = call i32 @dx.op.binary.i32(i32 40, i32 %3375, i32 %3371)  ; UMin(a,b)
  %3378 = mul i32 %3377, %3361
  %3379 = add i32 %3378, %3376
  %3380 = shl i32 %3379, 2
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = icmp eq i32 %3382, -1
  br i1 %3383, label %3581, label %3384, !dx.controlflow.hints !103

; <label>:3384                                    ; preds = %3329
  %3385 = mul i32 %3382, 148
  %3386 = add i32 %3385, 4
  %3387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = add i32 %3385, 8
  %3390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.f32 %3390, 0
  %3392 = add i32 %3385, 36
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = add i32 %3385, 60
  %3396 = add i32 %3385, 92
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = add i32 %3385, 116
  %3400 = fsub fast float %3351, %3388
  %3401 = fsub fast float %3352, %3391
  %3402 = fmul fast float %3359, %3400
  %3403 = fmul fast float %3359, %3401
  %3404 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3405 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3406 = fsub fast float 1.000000e+00, %3405
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3409 = fadd fast float %3408, 2.000000e+00
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 3
  %3412 = fadd fast float %3409, %3411
  %3413 = add i32 %3398, 0
  %3414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3413, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3415 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3414, i32 0)  ; GetDimensions(handle,mipLevel)
  %3416 = extractvalue %dx.types.Dimensions %3415, 0
  %3417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3416)  ; FirstbitLo(value)
  %3418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.i32 %3418, 1
  %3420 = sub nsw i32 %3419, %3417
  %3421 = sitofp i32 %3420 to float
  %3422 = fsub fast float %3412, %3421
  %3423 = call float @dx.op.binary.f32(i32 35, float %3422, float 0.000000e+00)  ; FMax(a,b)
  %3424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3414, %dx.types.Handle %28, float %3404, float %3406, float %3394, float undef, i32 0, i32 0, i32 undef, float %3423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3426 = fcmp ule float %3425, 0x3FE0101020000000
  %3427 = extractvalue %dx.types.CBufRet.i32 %3418, 0
  %3428 = and i32 %3427, 128
  %3429 = icmp ne i32 %3428, 0
  %3430 = and i1 %3426, %3429
  br i1 %3430, label %3581, label %3431, !dx.controlflow.hints !104

; <label>:3431                                    ; preds = %3384
  %3432 = add i32 %3385, 20
  %3433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.f32 %3433, 0
  %3435 = add i32 %3385, 24
  %3436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.f32 %3436, 0
  %3438 = add i32 %3385, 40
  %3439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.f32 %3439, 0
  %3441 = add i32 %3385, 96
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 2
  %3446 = fmul fast float %3445, %3404
  %3447 = fmul fast float %3445, %3406
  %3448 = extractvalue %dx.types.CBufRet.f32 %3444, 3
  %3449 = fadd fast float %3446, %3448
  %3450 = fadd fast float %3447, %3448
  %3451 = add i32 %3443, 0
  %3452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3453 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3452, i32 0)  ; GetDimensions(handle,mipLevel)
  %3454 = extractvalue %dx.types.Dimensions %3453, 0
  %3455 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3454)  ; FirstbitLo(value)
  %3456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3457 = extractvalue %dx.types.CBufRet.i32 %3456, 1
  %3458 = sub nsw i32 %3457, %3455
  %3459 = sitofp i32 %3458 to float
  %3460 = fsub fast float %3409, %3459
  %3461 = call float @dx.op.binary.f32(i32 35, float %3460, float 0.000000e+00)  ; FMax(a,b)
  %3462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3452, %dx.types.Handle %28, float %3449, float %3450, float %3440, float undef, i32 0, i32 0, i32 undef, float %3461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = fmul fast float %3463, %3434
  %3465 = fadd fast float %3464, %3437
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.CBufRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.CBufRet.f32 %3466, 2
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 3
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 3
  %3474 = extractvalue %dx.types.CBufRet.f32 %3466, 3
  %3475 = fadd fast float %3471, %3351
  %3476 = fadd fast float %3473, %3352
  %3477 = fadd fast float %3465, %3474
  %3478 = fmul fast float %3475, %3467
  %3479 = call float @dx.op.tertiary.f32(i32 46, float %3476, float %3468, float %3478)  ; FMad(a,b,c)
  %3480 = call float @dx.op.tertiary.f32(i32 46, float %3477, float %3469, float %3479)  ; FMad(a,b,c)
  %3481 = fsub fast float %3480, %3474
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 2
  %3484 = fsub fast float %3481, %3483
  %3485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.i32 %3485, 0
  %3487 = call i32 @dx.op.binary.i32(i32 40, i32 %3382, i32 %3486)  ; UMin(a,b)
  %3488 = mul i32 %3487, 36
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = add i32 %3488, 4
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = fmul fast float %3493, %3404
  %3495 = fmul fast float %3493, %3406
  %3496 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3497 = fadd fast float %3494, %3496
  %3498 = fadd fast float %3495, %3496
  %3499 = icmp eq i32 %3490, 0
  br i1 %3499, label %3568, label %3500

; <label>:3500                                    ; preds = %3431
  br label %3501

; <label>:3501                                    ; preds = %3558, %3500
  %3502 = phi float [ %3559, %3558 ], [ 0.000000e+00, %3500 ]
  %3503 = phi float [ %3560, %3558 ], [ 0.000000e+00, %3500 ]
  %3504 = phi float [ %3561, %3558 ], [ 0.000000e+00, %3500 ]
  %3505 = phi float [ %3562, %3558 ], [ 0.000000e+00, %3500 ]
  %3506 = phi float [ %3563, %3558 ], [ 0.000000e+00, %3500 ]
  %3507 = phi float [ %3564, %3558 ], [ 0.000000e+00, %3500 ]
  %3508 = phi i32 [ %3565, %3558 ], [ 0, %3500 ]
  %3509 = shl i32 %3508, 2
  %3510 = add i32 %3395, %3509
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = add i32 %3399, %3509
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = add i32 %3515, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3517, i32 0)  ; GetDimensions(handle,mipLevel)
  %3519 = extractvalue %dx.types.Dimensions %3518, 0
  %3520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3519)  ; FirstbitLo(value)
  %3521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.i32 %3521, 1
  %3523 = sub nsw i32 %3522, %3520
  %3524 = sitofp i32 %3523 to float
  %3525 = fsub fast float %3409, %3524
  %3526 = call float @dx.op.binary.f32(i32 35, float %3525, float 0.000000e+00)  ; FMax(a,b)
  %3527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3517, %dx.types.Handle %28, float %3497, float %3498, float %3512, float undef, i32 0, i32 0, i32 undef, float %3526)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = fcmp fast ogt float %3528, 0.000000e+00
  br i1 %3529, label %3530, label %3558, !dx.controlflow.hints !105

; <label>:3530                                    ; preds = %3501
  %3531 = add i32 %3491, %3509
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 32767
  %3535 = mul nuw nsw i32 %3534, 928
  %3536 = add nuw nsw i32 %3535, 48
  %3537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = extractvalue %dx.types.ResRet.f32 %3537, 1
  %3540 = extractvalue %dx.types.ResRet.f32 %3537, 2
  %3541 = add nuw nsw i32 %3535, 60
  %3542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fmul fast float %3538, %3528
  %3547 = fmul fast float %3539, %3528
  %3548 = fmul fast float %3540, %3528
  %3549 = fadd fast float %3546, %3502
  %3550 = fadd fast float %3547, %3503
  %3551 = fadd fast float %3548, %3504
  %3552 = fmul fast float %3543, %3528
  %3553 = fmul fast float %3544, %3528
  %3554 = fmul fast float %3545, %3528
  %3555 = fadd fast float %3552, %3505
  %3556 = fadd fast float %3553, %3506
  %3557 = fadd fast float %3554, %3507
  br label %3558

; <label>:3558                                    ; preds = %3530, %3501
  %3559 = phi float [ %3549, %3530 ], [ %3502, %3501 ]
  %3560 = phi float [ %3550, %3530 ], [ %3503, %3501 ]
  %3561 = phi float [ %3551, %3530 ], [ %3504, %3501 ]
  %3562 = phi float [ %3555, %3530 ], [ %3505, %3501 ]
  %3563 = phi float [ %3556, %3530 ], [ %3506, %3501 ]
  %3564 = phi float [ %3557, %3530 ], [ %3507, %3501 ]
  %3565 = add nuw i32 %3508, 1
  %3566 = icmp eq i32 %3565, %3490
  br i1 %3566, label %3567, label %3501

; <label>:3567                                    ; preds = %3558
  br label %3568

; <label>:3568                                    ; preds = %3567, %3431
  %3569 = phi float [ 0.000000e+00, %3431 ], [ %3559, %3567 ]
  %3570 = phi float [ 0.000000e+00, %3431 ], [ %3560, %3567 ]
  %3571 = phi float [ 0.000000e+00, %3431 ], [ %3561, %3567 ]
  %3572 = phi float [ 0.000000e+00, %3431 ], [ %3562, %3567 ]
  %3573 = phi float [ 0.000000e+00, %3431 ], [ %3563, %3567 ]
  %3574 = phi float [ 0.000000e+00, %3431 ], [ %3564, %3567 ]
  %3575 = fadd fast float %3572, %3569
  %3576 = fmul fast float %3575, 0x3F847AE140000000
  %3577 = fadd fast float %3573, %3570
  %3578 = fmul fast float %3577, 0x3F847AE140000000
  %3579 = fadd fast float %3574, %3571
  %3580 = fmul fast float %3579, 0x3F847AE140000000
  br label %3581

; <label>:3581                                    ; preds = %3568, %3384, %3329, %3326, %3299, %3261, %3236
  %3582 = phi i1 [ true, %3236 ], [ false, %3299 ], [ true, %3261 ], [ false, %3568 ], [ true, %3329 ], [ true, %3384 ], [ true, %3326 ]
  %3583 = phi float [ 0.000000e+00, %3236 ], [ %3311, %3299 ], [ -1.310720e+05, %3261 ], [ %3484, %3568 ], [ -1.310720e+05, %3329 ], [ -1.310720e+05, %3384 ], [ -1.310720e+05, %3326 ]
  %3584 = phi float [ 0.000000e+00, %3236 ], [ %3321, %3299 ], [ 0.000000e+00, %3261 ], [ %3576, %3568 ], [ 0.000000e+00, %3329 ], [ 0.000000e+00, %3384 ], [ 0.000000e+00, %3326 ]
  %3585 = phi float [ 0.000000e+00, %3236 ], [ %3323, %3299 ], [ 0.000000e+00, %3261 ], [ %3578, %3568 ], [ 0.000000e+00, %3329 ], [ 0.000000e+00, %3384 ], [ 0.000000e+00, %3326 ]
  %3586 = phi float [ 0.000000e+00, %3236 ], [ %3325, %3299 ], [ 0.000000e+00, %3261 ], [ %3580, %3568 ], [ 0.000000e+00, %3329 ], [ 0.000000e+00, %3384 ], [ 0.000000e+00, %3326 ]
  br i1 %3582, label %3668, label %3587, !dx.controlflow.hints !106

; <label>:3587                                    ; preds = %3581
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.CBufRet.f32 %3588, 2
  %3592 = fsub fast float %166, %3583
  %3593 = fcmp fast ogt float %3592, 0.000000e+00
  %3594 = fmul fast float %3589, 5.120000e+02
  %3595 = fmul fast float %3590, 5.120000e+02
  %3596 = fmul fast float %3591, 5.120000e+02
  %3597 = fadd fast float %3596, %166
  %3598 = fsub fast float %3583, %3597
  %3599 = fmul fast float %3598, 2.000000e+00
  %3600 = fadd fast float %3599, %3597
  %3601 = select i1 %3593, float %3600, float %3597
  %3602 = fsub fast float %3601, %166
  %3603 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3602, float %3594, float %3595, float %3602)  ; Dot3(ax,ay,az,bx,by,bz)
  %3604 = call float @dx.op.unary.f32(i32 25, float %3603)  ; Rsqrt(value)
  %3605 = fmul fast float %3594, %3604
  %3606 = fmul fast float %3595, %3604
  %3607 = fmul fast float %3602, %3604
  %3608 = fsub fast float %3583, %166
  %3609 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3605, float %3606, float %3607)  ; Dot3(ax,ay,az,bx,by,bz)
  %3611 = fdiv fast float 1.000000e+00, %3610
  %3612 = fmul fast float %3611, %3609
  %3613 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3592, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = fcmp fast ogt float %3613, 0.000000e+00
  %3615 = fcmp fast olt float %3613, 0.000000e+00
  %3616 = zext i1 %3614 to i32
  %3617 = zext i1 %3615 to i32
  %3618 = sub nsw i32 %3616, %3617
  %3619 = sitofp i32 %3618 to float
  %3620 = fsub fast float %3601, %3583
  %3621 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3620, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3622 = fcmp fast ogt float %3621, 0.000000e+00
  %3623 = fcmp fast olt float %3621, 0.000000e+00
  %3624 = zext i1 %3622 to i32
  %3625 = zext i1 %3623 to i32
  %3626 = sub nsw i32 %3624, %3625
  %3627 = sitofp i32 %3626 to float
  %3628 = fcmp fast une float %3619, %3627
  br i1 %3628, label %3629, label %3639, !dx.controlflow.hints !107

; <label>:3629                                    ; preds = %3587
  %3630 = fmul fast float %3607, %3612
  %3631 = fmul fast float %3612, %3606
  %3632 = fmul fast float %3612, %3605
  %3633 = fmul fast float %3632, %3632
  %3634 = fmul fast float %3631, %3631
  %3635 = fadd fast float %3633, %3634
  %3636 = fmul fast float %3630, %3630
  %3637 = fadd fast float %3635, %3636
  %3638 = call float @dx.op.unary.f32(i32 24, float %3637)  ; Sqrt(value)
  br label %3649

; <label>:3639                                    ; preds = %3587
  %3640 = icmp slt i32 %3618, 0
  br i1 %3640, label %3641, label %3649, !dx.controlflow.hints !108

; <label>:3641                                    ; preds = %3639
  %3642 = fsub fast float %166, %3601
  %3643 = fmul fast float %3594, %3594
  %3644 = fmul fast float %3595, %3595
  %3645 = fadd fast float %3643, %3644
  %3646 = fmul fast float %3642, %3642
  %3647 = fadd fast float %3645, %3646
  %3648 = call float @dx.op.unary.f32(i32 24, float %3647)  ; Sqrt(value)
  br label %3649

; <label>:3649                                    ; preds = %3641, %3639, %3629
  %3650 = phi float [ %3638, %3629 ], [ %3648, %3641 ], [ 0.000000e+00, %3639 ]
  %3651 = fsub fast float -0.000000e+00, %3650
  %3652 = select i1 %3593, float -0.000000e+00, float %3651
  %3653 = fmul fast float %3584, 0x3FF7154760000000
  %3654 = fmul fast float %3653, %3652
  %3655 = fmul fast float %3585, 0x3FF7154760000000
  %3656 = fmul fast float %3655, %3652
  %3657 = fmul fast float %3586, 0x3FF7154760000000
  %3658 = fmul fast float %3657, %3652
  %3659 = call float @dx.op.unary.f32(i32 21, float %3654)  ; Exp(value)
  %3660 = call float @dx.op.unary.f32(i32 21, float %3656)  ; Exp(value)
  %3661 = call float @dx.op.unary.f32(i32 21, float %3658)  ; Exp(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3663 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3664 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3665 = fmul fast float %3662, %3229
  %3666 = fmul fast float %3663, %3229
  %3667 = fmul fast float %3664, %3229
  br label %3668

; <label>:3668                                    ; preds = %3649, %3581, %3228
  %3669 = phi float [ %3665, %3649 ], [ %3229, %3581 ], [ %3229, %3228 ]
  %3670 = phi float [ %3666, %3649 ], [ %3229, %3581 ], [ %3229, %3228 ]
  %3671 = phi float [ %3667, %3649 ], [ %3229, %3581 ], [ %3229, %3228 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %111, i32 %112, i32 %89, float %3669, float %3670, float %3671, float %3669, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3672

; <label>:3672                                    ; preds = %3668, %113
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
!33 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!35 = !{!36}
!36 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
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
!49 = !{i32 8, i32 8, i32 1}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 2}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 2}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 2}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 2}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 2}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 2}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 2}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 2}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 2}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
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
!107 = distinct !{!107, !"dx.controlflow.hints", i32 2}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 2}

