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
; shader hash: 4b2f352f7123c4c866c30c6458759f6f
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
;                                   texture     f32          2d     T25             t6     1
;                                   texture     f32          2d     T26             t5     1
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

define void @cs_sunvis_trans() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 28, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = alloca [4 x i32], align 4
  %37 = alloca [4 x i32], align 4
  %38 = alloca [4 x i32], align 4
  %39 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %40 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %41 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %42 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %43 = alloca [12 x float], align 4
  %44 = alloca [12 x float], align 4
  %45 = alloca [12 x float], align 4
  %46 = alloca [12 x float], align 4
  %47 = alloca [12 x float], align 4
  %48 = alloca [12 x float], align 4
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
  %59 = alloca [4 x float], align 4
  %60 = alloca [4 x float], align 4
  %61 = alloca [4 x i32], align 4
  %62 = shl i32 %41, 1
  %63 = shl i32 %42, 1
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %99, label %67, !dx.controlflow.hints !51

; <label>:67                                      ; preds = %0
  %68 = shl i32 %39, 2
  %69 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.i32 %69, 0
  %71 = lshr i32 %70, 28
  %72 = and i32 %71, 3
  %73 = lshr i32 %70, 14
  %74 = and i32 %73, 16383
  %75 = and i32 %70, 16383
  %76 = icmp eq i32 %72, 0
  %77 = shl nuw nsw i32 %74, 4
  %78 = shl nuw nsw i32 %75, 4
  br i1 %76, label %96, label %79, !dx.controlflow.hints !52

; <label>:79                                      ; preds = %67
  %80 = shl nuw nsw i32 %74, 3
  %81 = shl nuw nsw i32 %75, 3
  %82 = or i32 %80, %41
  %83 = or i32 %81, %42
  %84 = add nsw i32 %72, -1
  %85 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %82, i32 %83, i32 %84, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = lshr i32 %86, 4
  %88 = and i32 %87, 15
  %89 = and i32 %86, 15
  %90 = or i32 %88, %77
  %91 = or i32 %89, %78
  %92 = and i32 %87, 1
  %93 = shl i32 %86, 1
  %94 = and i32 %93, 2
  %95 = or i32 %92, %94
  br label %99

; <label>:96                                      ; preds = %67
  %97 = or i32 %77, %62
  %98 = or i32 %78, %63
  br label %99

; <label>:99                                      ; preds = %96, %79, %0
  %100 = phi i32 [ %74, %79 ], [ %74, %96 ], [ %39, %0 ]
  %101 = phi i32 [ %75, %79 ], [ %75, %96 ], [ %40, %0 ]
  %102 = phi i32 [ %95, %79 ], [ 0, %96 ], [ 0, %0 ]
  %103 = phi i32 [ %90, %79 ], [ %97, %96 ], [ 0, %0 ]
  %104 = phi i32 [ %91, %79 ], [ %98, %96 ], [ 0, %0 ]
  %105 = uitofp i32 %103 to float
  %106 = uitofp i32 %104 to float
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, %105
  %111 = fmul fast float %109, %106
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %103, i32 %104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fcmp fast olt float %113, -1.000000e+00
  %115 = fcmp fast ogt float %113, -1.000000e+00
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %118 = select i1 %115, float %117, float 1.000000e+00
  %119 = fadd fast float %113, 1.000000e+00
  %120 = fmul fast float %118, %119
  %121 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %122 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %123 = fcmp fast ult float %121, %122
  %124 = lshr i32 %103, 1
  %125 = lshr i32 %104, 1
  br i1 %123, label %127, label %126, !dx.controlflow.hints !53

; <label>:126                                     ; preds = %99
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %124, i32 %125, i32 %102, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5888

; <label>:127                                     ; preds = %99
  %128 = fmul fast float %110, 2.000000e+00
  %129 = fmul fast float %111, 2.000000e+00
  %130 = fsub fast float 1.000000e+00, %128
  %131 = fsub fast float 1.000000e+00, %129
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = select i1 %114, float %133, float %137
  %141 = select i1 %114, float %134, float %138
  %142 = select i1 %114, float %135, float %139
  %143 = fmul fast float %140, %130
  %144 = fmul fast float %141, %130
  %145 = fmul fast float %142, %130
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %153 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %154 = select i1 %114, float %147, float %151
  %155 = select i1 %114, float %148, float %152
  %156 = select i1 %114, float %149, float %153
  %157 = fmul fast float %154, %131
  %158 = fmul fast float %155, %131
  %159 = fmul fast float %156, %131
  %160 = fadd fast float %157, %143
  %161 = fadd fast float %158, %144
  %162 = fadd fast float %159, %145
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %167, 2
  %171 = select i1 %114, float %164, float %168
  %172 = select i1 %114, float %165, float %169
  %173 = select i1 %114, float %166, float %170
  %174 = fadd fast float %160, %171
  %175 = fadd fast float %161, %172
  %176 = fadd fast float %162, %173
  %177 = fmul fast float %174, %121
  %178 = fmul fast float %175, %121
  %179 = fmul fast float %176, %121
  %180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.i32 %180, 0
  %182 = extractvalue %dx.types.CBufRet.i32 %180, 1
  %183 = extractvalue %dx.types.CBufRet.i32 %180, 2
  %184 = extractvalue %dx.types.CBufRet.i32 %180, 3
  %185 = and i32 %103, 1
  %186 = shl i32 %104, 1
  %187 = and i32 %186, 2
  %188 = or i32 %187, %185
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %181, i32* %189, align 4
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %182, i32* %190, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %183, i32* %191, align 4
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %184, i32* %192, align 4
  %193 = getelementptr [4 x i32], [4 x i32]* %61, i32 0, i32 %188
  %194 = load i32, i32* %193, align 4, !tbaa !54
  %195 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 %194, i32 %124, i32 %125, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = lshr i32 %196, 8
  %198 = and i32 %196, 255
  %199 = and i32 %197, 255
  %200 = uitofp i32 %198 to float
  %201 = uitofp i32 %199 to float
  %202 = fmul fast float %200, 0x3F80101020000000
  %203 = fmul fast float %201, 0x3F80101020000000
  %204 = fadd fast float %202, -1.000000e+00
  %205 = fadd fast float %203, -1.000000e+00
  %206 = call float @dx.op.unary.f32(i32 6, float %204)  ; FAbs(value)
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call float @dx.op.unary.f32(i32 6, float %205)  ; FAbs(value)
  %209 = fsub fast float %207, %208
  %210 = fsub fast float -0.000000e+00, %209
  %211 = call float @dx.op.binary.f32(i32 35, float %210, float 0.000000e+00)  ; FMax(a,b)
  %212 = fcmp fast ogt float %204, 0.000000e+00
  %213 = fsub fast float -0.000000e+00, %211
  %214 = select i1 %212, float %213, float %211
  %215 = fadd fast float %214, %204
  %216 = fcmp fast ogt float %205, 0.000000e+00
  %217 = select i1 %216, float %213, float %211
  %218 = fadd fast float %217, %205
  %219 = call float @dx.op.dot3.f32(i32 55, float %215, float %218, float %209, float %215, float %218, float %209)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %215, %220
  %222 = fmul fast float %218, %220
  %223 = fmul fast float %220, %209
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %228 = call float @dx.op.dot3.f32(i32 55, float %225, float %226, float %227, float %221, float %222, float %223)  ; Dot3(ax,ay,az,bx,by,bz)
  %229 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %230 = fsub fast float 1.000000e+00, %229
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %233 = fsub fast float -0.000000e+00, %228
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %232, %234
  %236 = fsub fast float %230, %235
  %237 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %238 = fmul fast float %236, %237
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.f32 %244, 0
  %246 = extractvalue %dx.types.CBufRet.f32 %244, 1
  %247 = extractvalue %dx.types.CBufRet.f32 %244, 2
  %248 = extractvalue %dx.types.CBufRet.f32 %244, 3
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 0
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 1
  %252 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %253 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %254 = fmul fast float %240, %177
  %255 = call float @dx.op.tertiary.f32(i32 46, float %178, float %241, float %254)  ; FMad(a,b,c)
  %256 = call float @dx.op.tertiary.f32(i32 46, float %179, float %242, float %255)  ; FMad(a,b,c)
  %257 = fadd fast float %256, %243
  %258 = fmul fast float %245, %177
  %259 = call float @dx.op.tertiary.f32(i32 46, float %178, float %246, float %258)  ; FMad(a,b,c)
  %260 = call float @dx.op.tertiary.f32(i32 46, float %179, float %247, float %259)  ; FMad(a,b,c)
  %261 = fadd fast float %260, %248
  %262 = fmul fast float %250, %177
  %263 = call float @dx.op.tertiary.f32(i32 46, float %178, float %251, float %262)  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float %179, float %252, float %263)  ; FMad(a,b,c)
  %265 = fadd fast float %264, %253
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = fmul fast float %267, 0x3FE3C6EF40000000
  %269 = frem fast float %105, 2.560000e+02
  %270 = frem fast float %106, 2.560000e+02
  %271 = fptoui float %269 to i32
  %272 = fptoui float %270 to i32
  %273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 0, i32 %271, i32 %272, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 2
  %275 = fadd fast float %274, %268
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %279 = fcmp fast une float %278, 0.000000e+00
  br i1 %279, label %280, label %3143, !dx.controlflow.hints !58

; <label>:280                                     ; preds = %127
  %281 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %282 = fptoui float %281 to i32
  %283 = add i32 %282, 15
  %284 = lshr i32 %283, 4
  %285 = mul i32 %284, %101
  %286 = add i32 %285, %100
  %287 = shl i32 %286, 3
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = lshr i32 %289, 28
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %467, !dx.controlflow.hints !59

; <label>:292                                     ; preds = %280
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = fmul fast float %294, %238
  %298 = fadd fast float %296, %265
  %299 = fadd fast float %298, %297
  %300 = extractvalue %dx.types.CBufRet.f32 %293, 0
  %301 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %302 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %303 = fmul fast float %302, %257
  %304 = fmul fast float %302, %261
  %305 = fadd fast float %303, %300
  %306 = fadd fast float %304, %301
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = call float @dx.op.binary.f32(i32 35, float %299, float 0.000000e+00)  ; FMax(a,b)
  %313 = fadd fast float %312, 0x3F10000000000000
  %314 = fcmp fast oeq float %311, 0.000000e+00
  br i1 %314, label %315, label %382, !dx.controlflow.hints !60

; <label>:315                                     ; preds = %292
  %316 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %318 = fmul fast float %305, %317
  %319 = fmul fast float %306, %316
  %320 = fadd fast float %318, 5.000000e-01
  %321 = call float @dx.op.unary.f32(i32 27, float %320)  ; Round_ni(value)
  %322 = fadd fast float %319, 5.000000e-01
  %323 = call float @dx.op.unary.f32(i32 27, float %322)  ; Round_ni(value)
  %324 = fsub fast float %320, %321
  %325 = fsub fast float %322, %323
  %326 = fadd fast float %321, -5.000000e-01
  %327 = fadd fast float %323, -5.000000e-01
  %328 = fmul fast float %324, 2.000000e+00
  %329 = fsub fast float 3.000000e+00, %328
  %330 = fadd fast float %328, 1.000000e+00
  %331 = fsub fast float 2.000000e+00, %324
  %332 = bitcast float %329 to i32
  %333 = sub nsw i32 2129859010, %332
  %334 = bitcast i32 %333 to float
  %335 = fmul fast float %334, %331
  %336 = fadd fast float %335, -1.000000e+00
  %337 = bitcast float %330 to i32
  %338 = sub nsw i32 2129859010, %337
  %339 = bitcast i32 %338 to float
  %340 = fmul fast float %339, %324
  %341 = fadd fast float %340, 1.000000e+00
  %342 = fmul fast float %325, 2.000000e+00
  %343 = fsub fast float 3.000000e+00, %342
  %344 = fadd fast float %342, 1.000000e+00
  %345 = fsub fast float 2.000000e+00, %325
  %346 = bitcast float %343 to i32
  %347 = sub nsw i32 2129859010, %346
  %348 = bitcast i32 %347 to float
  %349 = fmul fast float %348, %345
  %350 = fadd fast float %349, -1.000000e+00
  %351 = bitcast float %344 to i32
  %352 = sub nsw i32 2129859010, %351
  %353 = bitcast i32 %352 to float
  %354 = fmul fast float %353, %325
  %355 = fadd fast float %354, 1.000000e+00
  %356 = fadd fast float %336, %326
  %357 = fmul fast float %356, %308
  %358 = fadd fast float %350, %327
  %359 = fmul fast float %358, %309
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %357, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = fmul fast float %361, %329
  %363 = fadd fast float %341, %326
  %364 = fmul fast float %363, %308
  %365 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %364, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = fmul fast float %366, %330
  %368 = fadd fast float %355, %327
  %369 = fmul fast float %368, %309
  %370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %357, float %369, float undef, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = fmul fast float %371, %329
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %364, float %369, float undef, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fmul fast float %374, %330
  %376 = fadd fast float %375, %372
  %377 = fmul fast float %376, %344
  %378 = fadd fast float %367, %362
  %379 = fmul fast float %378, %343
  %380 = fadd fast float %379, %377
  %381 = fmul fast float %380, 6.250000e-02
  br label %4614

; <label>:382                                     ; preds = %292
  %383 = fmul fast float %276, 0x401921FB60000000
  %384 = call float @dx.op.unary.f32(i32 13, float %383)  ; Sin(value)
  %385 = call float @dx.op.unary.f32(i32 12, float %383)  ; Cos(value)
  %386 = fsub fast float -0.000000e+00, %384
  br label %387

; <label>:387                                     ; preds = %436, %382
  %388 = phi float [ 0.000000e+00, %382 ], [ %431, %436 ]
  %389 = phi float [ 0.000000e+00, %382 ], [ %433, %436 ]
  %390 = phi i32 [ 0, %382 ], [ %437, %436 ]
  %391 = mul i32 %390, 2
  %392 = add i32 0, %391
  %393 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %392
  %394 = load float, float* %393, align 4
  %395 = mul i32 %390, 2
  %396 = add i32 1, %395
  %397 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %396
  %398 = load float, float* %397, align 4
  %399 = fmul fast float %394, %385
  %400 = call float @dx.op.tertiary.f32(i32 46, float %398, float %386, float %399)  ; FMad(a,b,c)
  %401 = fmul fast float %394, %384
  %402 = call float @dx.op.tertiary.f32(i32 46, float %398, float %385, float %401)  ; FMad(a,b,c)
  %403 = fmul fast float %400, %311
  %404 = fmul fast float %402, %311
  %405 = fadd fast float %403, %305
  %406 = fadd fast float %404, %306
  %407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %32, float %405, float %406, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %408 = extractvalue %dx.types.ResRet.f32 %407, 0
  %409 = extractvalue %dx.types.ResRet.f32 %407, 1
  %410 = extractvalue %dx.types.ResRet.f32 %407, 2
  %411 = extractvalue %dx.types.ResRet.f32 %407, 3
  %412 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 0
  store float %408, float* %412, align 4
  %413 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 1
  store float %409, float* %413, align 4
  %414 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 2
  store float %410, float* %414, align 4
  %415 = getelementptr inbounds [4 x float], [4 x float]* %60, i32 0, i32 3
  store float %411, float* %415, align 4
  %416 = fsub fast float %408, %313
  %417 = fcmp fast olt float %416, 0.000000e+00
  %418 = select i1 %417, float 0.000000e+00, float 1.000000e+00
  %419 = fadd fast float %418, %388
  %420 = fmul fast float %418, %416
  %421 = fadd fast float %420, %389
  br label %422

; <label>:422                                     ; preds = %422, %387
  %423 = phi i32 [ 1, %387 ], [ %434, %422 ]
  %424 = phi float [ %421, %387 ], [ %433, %422 ]
  %425 = phi float [ %419, %387 ], [ %431, %422 ]
  %426 = getelementptr [4 x float], [4 x float]* %60, i32 0, i32 %423
  %427 = load float, float* %426, align 4, !tbaa !61
  %428 = fsub fast float %427, %313
  %429 = fcmp fast olt float %428, 0.000000e+00
  %430 = select i1 %429, float 0.000000e+00, float 1.000000e+00
  %431 = fadd fast float %430, %425
  %432 = fmul fast float %430, %428
  %433 = fadd fast float %432, %424
  %434 = add nuw nsw i32 %423, 1
  %435 = icmp eq i32 %434, 4
  br i1 %435, label %436, label %422, !llvm.loop !63

; <label>:436                                     ; preds = %422
  %437 = add nuw nsw i32 %390, 1
  %438 = icmp eq i32 %437, 8
  br i1 %438, label %439, label %387, !llvm.loop !65

; <label>:439                                     ; preds = %436
  %440 = fdiv fast float 1.000000e+00, %431
  %441 = fmul fast float %440, %433
  %442 = fdiv fast float 1.000000e+00, %313
  %443 = fmul fast float %441, %442
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = call float @dx.op.binary.f32(i32 35, float %444, float 0.000000e+00)  ; FMax(a,b)
  %446 = fmul fast float %431, 3.125000e-02
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %447, 2.000000e+00
  %449 = fadd fast float %448, -1.000000e+00
  %450 = fcmp fast ogt float %449, 0.000000e+00
  %451 = fcmp fast olt float %449, 0.000000e+00
  %452 = zext i1 %450 to i32
  %453 = zext i1 %451 to i32
  %454 = sub nsw i32 %452, %453
  %455 = sitofp i32 %454 to float
  %456 = fmul fast float %455, %449
  %457 = fsub fast float 1.000000e+00, %456
  %458 = fmul fast float %457, %457
  %459 = fmul fast float %458, %457
  %460 = fsub fast float %457, %459
  %461 = fmul fast float %460, %445
  %462 = fsub fast float 1.000000e+00, %459
  %463 = fsub fast float %462, %461
  %464 = fmul fast float %455, 5.000000e-01
  %465 = fmul fast float %464, %463
  %466 = fsub fast float 5.000000e-01, %465
  br label %4614

; <label>:467                                     ; preds = %280
  %468 = icmp eq i32 %290, 1
  br i1 %468, label %469, label %644, !dx.controlflow.hints !66

; <label>:469                                     ; preds = %467
  %470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.f32 %470, 2
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 1
  %474 = fmul fast float %471, %238
  %475 = fadd fast float %473, %265
  %476 = fadd fast float %475, %474
  %477 = extractvalue %dx.types.CBufRet.f32 %470, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %470, 1
  %479 = extractvalue %dx.types.CBufRet.f32 %470, 3
  %480 = fmul fast float %479, %257
  %481 = fmul fast float %479, %261
  %482 = fadd fast float %480, %477
  %483 = fadd fast float %481, %478
  %484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %485 = extractvalue %dx.types.CBufRet.f32 %484, 2
  %486 = extractvalue %dx.types.CBufRet.f32 %484, 3
  %487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %488 = extractvalue %dx.types.CBufRet.f32 %487, 1
  %489 = call float @dx.op.binary.f32(i32 35, float %476, float 0.000000e+00)  ; FMax(a,b)
  %490 = fadd fast float %489, 0x3F10000000000000
  %491 = fcmp fast oeq float %488, 0.000000e+00
  br i1 %491, label %492, label %559, !dx.controlflow.hints !60

; <label>:492                                     ; preds = %469
  %493 = extractvalue %dx.types.CBufRet.f32 %484, 1
  %494 = extractvalue %dx.types.CBufRet.f32 %484, 0
  %495 = fmul fast float %482, %494
  %496 = fmul fast float %483, %493
  %497 = fadd fast float %495, 5.000000e-01
  %498 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %499 = fadd fast float %496, 5.000000e-01
  %500 = call float @dx.op.unary.f32(i32 27, float %499)  ; Round_ni(value)
  %501 = fsub fast float %497, %498
  %502 = fsub fast float %499, %500
  %503 = fadd fast float %498, -5.000000e-01
  %504 = fadd fast float %500, -5.000000e-01
  %505 = fmul fast float %501, 2.000000e+00
  %506 = fsub fast float 3.000000e+00, %505
  %507 = fadd fast float %505, 1.000000e+00
  %508 = fsub fast float 2.000000e+00, %501
  %509 = bitcast float %506 to i32
  %510 = sub nsw i32 2129859010, %509
  %511 = bitcast i32 %510 to float
  %512 = fmul fast float %511, %508
  %513 = fadd fast float %512, -1.000000e+00
  %514 = bitcast float %507 to i32
  %515 = sub nsw i32 2129859010, %514
  %516 = bitcast i32 %515 to float
  %517 = fmul fast float %516, %501
  %518 = fadd fast float %517, 1.000000e+00
  %519 = fmul fast float %502, 2.000000e+00
  %520 = fsub fast float 3.000000e+00, %519
  %521 = fadd fast float %519, 1.000000e+00
  %522 = fsub fast float 2.000000e+00, %502
  %523 = bitcast float %520 to i32
  %524 = sub nsw i32 2129859010, %523
  %525 = bitcast i32 %524 to float
  %526 = fmul fast float %525, %522
  %527 = fadd fast float %526, -1.000000e+00
  %528 = bitcast float %521 to i32
  %529 = sub nsw i32 2129859010, %528
  %530 = bitcast i32 %529 to float
  %531 = fmul fast float %530, %502
  %532 = fadd fast float %531, 1.000000e+00
  %533 = fadd fast float %513, %503
  %534 = fmul fast float %533, %485
  %535 = fadd fast float %527, %504
  %536 = fmul fast float %535, %486
  %537 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %534, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float %490)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = fmul fast float %538, %506
  %540 = fadd fast float %518, %503
  %541 = fmul fast float %540, %485
  %542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %541, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float %490)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = fmul fast float %543, %507
  %545 = fadd fast float %532, %504
  %546 = fmul fast float %545, %486
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %534, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float %490)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = fmul fast float %548, %506
  %550 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %541, float %546, float undef, float undef, i32 0, i32 0, i32 undef, float %490)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = fmul fast float %551, %507
  %553 = fadd fast float %552, %549
  %554 = fmul fast float %553, %521
  %555 = fadd fast float %544, %539
  %556 = fmul fast float %555, %520
  %557 = fadd fast float %556, %554
  %558 = fmul fast float %557, 6.250000e-02
  br label %4614

; <label>:559                                     ; preds = %469
  %560 = fmul fast float %276, 0x401921FB60000000
  %561 = call float @dx.op.unary.f32(i32 13, float %560)  ; Sin(value)
  %562 = call float @dx.op.unary.f32(i32 12, float %560)  ; Cos(value)
  %563 = fsub fast float -0.000000e+00, %561
  br label %564

; <label>:564                                     ; preds = %613, %559
  %565 = phi float [ 0.000000e+00, %559 ], [ %608, %613 ]
  %566 = phi float [ 0.000000e+00, %559 ], [ %610, %613 ]
  %567 = phi i32 [ 0, %559 ], [ %614, %613 ]
  %568 = mul i32 %567, 2
  %569 = add i32 0, %568
  %570 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %569
  %571 = load float, float* %570, align 4
  %572 = mul i32 %567, 2
  %573 = add i32 1, %572
  %574 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %573
  %575 = load float, float* %574, align 4
  %576 = fmul fast float %571, %562
  %577 = call float @dx.op.tertiary.f32(i32 46, float %575, float %563, float %576)  ; FMad(a,b,c)
  %578 = fmul fast float %571, %561
  %579 = call float @dx.op.tertiary.f32(i32 46, float %575, float %562, float %578)  ; FMad(a,b,c)
  %580 = fmul fast float %577, %488
  %581 = fmul fast float %579, %488
  %582 = fadd fast float %580, %482
  %583 = fadd fast float %581, %483
  %584 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %32, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = extractvalue %dx.types.ResRet.f32 %584, 3
  %589 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 0
  store float %585, float* %589, align 4
  %590 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 1
  store float %586, float* %590, align 4
  %591 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 2
  store float %587, float* %591, align 4
  %592 = getelementptr inbounds [4 x float], [4 x float]* %59, i32 0, i32 3
  store float %588, float* %592, align 4
  %593 = fsub fast float %585, %490
  %594 = fcmp fast olt float %593, 0.000000e+00
  %595 = select i1 %594, float 0.000000e+00, float 1.000000e+00
  %596 = fadd fast float %595, %565
  %597 = fmul fast float %595, %593
  %598 = fadd fast float %597, %566
  br label %599

; <label>:599                                     ; preds = %599, %564
  %600 = phi i32 [ 1, %564 ], [ %611, %599 ]
  %601 = phi float [ %598, %564 ], [ %610, %599 ]
  %602 = phi float [ %596, %564 ], [ %608, %599 ]
  %603 = getelementptr [4 x float], [4 x float]* %59, i32 0, i32 %600
  %604 = load float, float* %603, align 4, !tbaa !61
  %605 = fsub fast float %604, %490
  %606 = fcmp fast olt float %605, 0.000000e+00
  %607 = select i1 %606, float 0.000000e+00, float 1.000000e+00
  %608 = fadd fast float %607, %602
  %609 = fmul fast float %607, %605
  %610 = fadd fast float %609, %601
  %611 = add nuw nsw i32 %600, 1
  %612 = icmp eq i32 %611, 4
  br i1 %612, label %613, label %599, !llvm.loop !63

; <label>:613                                     ; preds = %599
  %614 = add nuw nsw i32 %567, 1
  %615 = icmp eq i32 %614, 8
  br i1 %615, label %616, label %564, !llvm.loop !65

; <label>:616                                     ; preds = %613
  %617 = fdiv fast float 1.000000e+00, %608
  %618 = fmul fast float %617, %610
  %619 = fdiv fast float 1.000000e+00, %490
  %620 = fmul fast float %618, %619
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float 0.000000e+00)  ; FMax(a,b)
  %623 = fmul fast float %608, 3.125000e-02
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %624, 2.000000e+00
  %626 = fadd fast float %625, -1.000000e+00
  %627 = fcmp fast ogt float %626, 0.000000e+00
  %628 = fcmp fast olt float %626, 0.000000e+00
  %629 = zext i1 %627 to i32
  %630 = zext i1 %628 to i32
  %631 = sub nsw i32 %629, %630
  %632 = sitofp i32 %631 to float
  %633 = fmul fast float %632, %626
  %634 = fsub fast float 1.000000e+00, %633
  %635 = fmul fast float %634, %634
  %636 = fmul fast float %635, %634
  %637 = fsub fast float %634, %636
  %638 = fmul fast float %637, %622
  %639 = fsub fast float 1.000000e+00, %636
  %640 = fsub fast float %639, %638
  %641 = fmul fast float %632, 5.000000e-01
  %642 = fmul fast float %641, %640
  %643 = fsub fast float 5.000000e-01, %642
  br label %4614

; <label>:644                                     ; preds = %467
  %645 = icmp eq i32 %290, 2
  br i1 %645, label %646, label %821, !dx.controlflow.hints !67

; <label>:646                                     ; preds = %644
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 2
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %651 = fmul fast float %648, %238
  %652 = fadd fast float %650, %265
  %653 = fadd fast float %652, %651
  %654 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %657 = fmul fast float %656, %257
  %658 = fmul fast float %656, %261
  %659 = fadd fast float %657, %654
  %660 = fadd fast float %658, %655
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %663 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %666 = call float @dx.op.binary.f32(i32 35, float %653, float 0.000000e+00)  ; FMax(a,b)
  %667 = fadd fast float %666, 0x3F10000000000000
  %668 = fcmp fast oeq float %665, 0.000000e+00
  br i1 %668, label %669, label %736, !dx.controlflow.hints !60

; <label>:669                                     ; preds = %646
  %670 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %671 = extractvalue %dx.types.CBufRet.f32 %661, 0
  %672 = fmul fast float %659, %671
  %673 = fmul fast float %660, %670
  %674 = fadd fast float %672, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 27, float %674)  ; Round_ni(value)
  %676 = fadd fast float %673, 5.000000e-01
  %677 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %678 = fsub fast float %674, %675
  %679 = fsub fast float %676, %677
  %680 = fadd fast float %675, -5.000000e-01
  %681 = fadd fast float %677, -5.000000e-01
  %682 = fmul fast float %678, 2.000000e+00
  %683 = fsub fast float 3.000000e+00, %682
  %684 = fadd fast float %682, 1.000000e+00
  %685 = fsub fast float 2.000000e+00, %678
  %686 = bitcast float %683 to i32
  %687 = sub nsw i32 2129859010, %686
  %688 = bitcast i32 %687 to float
  %689 = fmul fast float %688, %685
  %690 = fadd fast float %689, -1.000000e+00
  %691 = bitcast float %684 to i32
  %692 = sub nsw i32 2129859010, %691
  %693 = bitcast i32 %692 to float
  %694 = fmul fast float %693, %678
  %695 = fadd fast float %694, 1.000000e+00
  %696 = fmul fast float %679, 2.000000e+00
  %697 = fsub fast float 3.000000e+00, %696
  %698 = fadd fast float %696, 1.000000e+00
  %699 = fsub fast float 2.000000e+00, %679
  %700 = bitcast float %697 to i32
  %701 = sub nsw i32 2129859010, %700
  %702 = bitcast i32 %701 to float
  %703 = fmul fast float %702, %699
  %704 = fadd fast float %703, -1.000000e+00
  %705 = bitcast float %698 to i32
  %706 = sub nsw i32 2129859010, %705
  %707 = bitcast i32 %706 to float
  %708 = fmul fast float %707, %679
  %709 = fadd fast float %708, 1.000000e+00
  %710 = fadd fast float %690, %680
  %711 = fmul fast float %710, %662
  %712 = fadd fast float %704, %681
  %713 = fmul fast float %712, %663
  %714 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %711, float %713, float undef, float undef, i32 0, i32 0, i32 undef, float %667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = fmul fast float %715, %683
  %717 = fadd fast float %695, %680
  %718 = fmul fast float %717, %662
  %719 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %718, float %713, float undef, float undef, i32 0, i32 0, i32 undef, float %667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  %721 = fmul fast float %720, %684
  %722 = fadd fast float %709, %681
  %723 = fmul fast float %722, %663
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %711, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float %667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = fmul fast float %725, %683
  %727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %718, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float %667)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = fmul fast float %728, %684
  %730 = fadd fast float %729, %726
  %731 = fmul fast float %730, %698
  %732 = fadd fast float %721, %716
  %733 = fmul fast float %732, %697
  %734 = fadd fast float %733, %731
  %735 = fmul fast float %734, 6.250000e-02
  br label %4614

; <label>:736                                     ; preds = %646
  %737 = fmul fast float %276, 0x401921FB60000000
  %738 = call float @dx.op.unary.f32(i32 13, float %737)  ; Sin(value)
  %739 = call float @dx.op.unary.f32(i32 12, float %737)  ; Cos(value)
  %740 = fsub fast float -0.000000e+00, %738
  br label %741

; <label>:741                                     ; preds = %790, %736
  %742 = phi float [ 0.000000e+00, %736 ], [ %785, %790 ]
  %743 = phi float [ 0.000000e+00, %736 ], [ %787, %790 ]
  %744 = phi i32 [ 0, %736 ], [ %791, %790 ]
  %745 = mul i32 %744, 2
  %746 = add i32 0, %745
  %747 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %746
  %748 = load float, float* %747, align 4
  %749 = mul i32 %744, 2
  %750 = add i32 1, %749
  %751 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %750
  %752 = load float, float* %751, align 4
  %753 = fmul fast float %748, %739
  %754 = call float @dx.op.tertiary.f32(i32 46, float %752, float %740, float %753)  ; FMad(a,b,c)
  %755 = fmul fast float %748, %738
  %756 = call float @dx.op.tertiary.f32(i32 46, float %752, float %739, float %755)  ; FMad(a,b,c)
  %757 = fmul fast float %754, %665
  %758 = fmul fast float %756, %665
  %759 = fadd fast float %757, %659
  %760 = fadd fast float %758, %660
  %761 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %32, float %759, float %760, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = extractvalue %dx.types.ResRet.f32 %761, 3
  %766 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 0
  store float %762, float* %766, align 4
  %767 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 1
  store float %763, float* %767, align 4
  %768 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 2
  store float %764, float* %768, align 4
  %769 = getelementptr inbounds [4 x float], [4 x float]* %58, i32 0, i32 3
  store float %765, float* %769, align 4
  %770 = fsub fast float %762, %667
  %771 = fcmp fast olt float %770, 0.000000e+00
  %772 = select i1 %771, float 0.000000e+00, float 1.000000e+00
  %773 = fadd fast float %772, %742
  %774 = fmul fast float %772, %770
  %775 = fadd fast float %774, %743
  br label %776

; <label>:776                                     ; preds = %776, %741
  %777 = phi i32 [ 1, %741 ], [ %788, %776 ]
  %778 = phi float [ %775, %741 ], [ %787, %776 ]
  %779 = phi float [ %773, %741 ], [ %785, %776 ]
  %780 = getelementptr [4 x float], [4 x float]* %58, i32 0, i32 %777
  %781 = load float, float* %780, align 4, !tbaa !61
  %782 = fsub fast float %781, %667
  %783 = fcmp fast olt float %782, 0.000000e+00
  %784 = select i1 %783, float 0.000000e+00, float 1.000000e+00
  %785 = fadd fast float %784, %779
  %786 = fmul fast float %784, %782
  %787 = fadd fast float %786, %778
  %788 = add nuw nsw i32 %777, 1
  %789 = icmp eq i32 %788, 4
  br i1 %789, label %790, label %776, !llvm.loop !63

; <label>:790                                     ; preds = %776
  %791 = add nuw nsw i32 %744, 1
  %792 = icmp eq i32 %791, 8
  br i1 %792, label %793, label %741, !llvm.loop !65

; <label>:793                                     ; preds = %790
  %794 = fdiv fast float 1.000000e+00, %785
  %795 = fmul fast float %794, %787
  %796 = fdiv fast float 1.000000e+00, %667
  %797 = fmul fast float %795, %796
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = call float @dx.op.binary.f32(i32 35, float %798, float 0.000000e+00)  ; FMax(a,b)
  %800 = fmul fast float %785, 3.125000e-02
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %802 = fmul fast float %801, 2.000000e+00
  %803 = fadd fast float %802, -1.000000e+00
  %804 = fcmp fast ogt float %803, 0.000000e+00
  %805 = fcmp fast olt float %803, 0.000000e+00
  %806 = zext i1 %804 to i32
  %807 = zext i1 %805 to i32
  %808 = sub nsw i32 %806, %807
  %809 = sitofp i32 %808 to float
  %810 = fmul fast float %809, %803
  %811 = fsub fast float 1.000000e+00, %810
  %812 = fmul fast float %811, %811
  %813 = fmul fast float %812, %811
  %814 = fsub fast float %811, %813
  %815 = fmul fast float %814, %799
  %816 = fsub fast float 1.000000e+00, %813
  %817 = fsub fast float %816, %815
  %818 = fmul fast float %809, 5.000000e-01
  %819 = fmul fast float %818, %817
  %820 = fsub fast float 5.000000e-01, %819
  br label %4614

; <label>:821                                     ; preds = %644
  %822 = icmp eq i32 %290, 12
  br i1 %822, label %823, label %998, !dx.controlflow.hints !68

; <label>:823                                     ; preds = %821
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = fmul fast float %825, %238
  %829 = fadd fast float %827, %265
  %830 = fadd fast float %829, %828
  %831 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %832 = extractvalue %dx.types.CBufRet.f32 %824, 1
  %833 = extractvalue %dx.types.CBufRet.f32 %824, 3
  %834 = fmul fast float %833, %257
  %835 = fmul fast float %833, %261
  %836 = fadd fast float %834, %831
  %837 = fadd fast float %835, %832
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = call float @dx.op.binary.f32(i32 35, float %830, float 0.000000e+00)  ; FMax(a,b)
  %844 = fadd fast float %843, 0x3F10000000000000
  %845 = fcmp fast oeq float %842, 0.000000e+00
  br i1 %845, label %846, label %913, !dx.controlflow.hints !60

; <label>:846                                     ; preds = %823
  %847 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %848 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %849 = fmul fast float %836, %848
  %850 = fmul fast float %837, %847
  %851 = fadd fast float %849, 5.000000e-01
  %852 = call float @dx.op.unary.f32(i32 27, float %851)  ; Round_ni(value)
  %853 = fadd fast float %850, 5.000000e-01
  %854 = call float @dx.op.unary.f32(i32 27, float %853)  ; Round_ni(value)
  %855 = fsub fast float %851, %852
  %856 = fsub fast float %853, %854
  %857 = fadd fast float %852, -5.000000e-01
  %858 = fadd fast float %854, -5.000000e-01
  %859 = fmul fast float %855, 2.000000e+00
  %860 = fsub fast float 3.000000e+00, %859
  %861 = fadd fast float %859, 1.000000e+00
  %862 = fsub fast float 2.000000e+00, %855
  %863 = bitcast float %860 to i32
  %864 = sub nsw i32 2129859010, %863
  %865 = bitcast i32 %864 to float
  %866 = fmul fast float %865, %862
  %867 = fadd fast float %866, -1.000000e+00
  %868 = bitcast float %861 to i32
  %869 = sub nsw i32 2129859010, %868
  %870 = bitcast i32 %869 to float
  %871 = fmul fast float %870, %855
  %872 = fadd fast float %871, 1.000000e+00
  %873 = fmul fast float %856, 2.000000e+00
  %874 = fsub fast float 3.000000e+00, %873
  %875 = fadd fast float %873, 1.000000e+00
  %876 = fsub fast float 2.000000e+00, %856
  %877 = bitcast float %874 to i32
  %878 = sub nsw i32 2129859010, %877
  %879 = bitcast i32 %878 to float
  %880 = fmul fast float %879, %876
  %881 = fadd fast float %880, -1.000000e+00
  %882 = bitcast float %875 to i32
  %883 = sub nsw i32 2129859010, %882
  %884 = bitcast i32 %883 to float
  %885 = fmul fast float %884, %856
  %886 = fadd fast float %885, 1.000000e+00
  %887 = fadd fast float %867, %857
  %888 = fmul fast float %887, %839
  %889 = fadd fast float %881, %858
  %890 = fmul fast float %889, %840
  %891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %888, float %890, float undef, float undef, i32 0, i32 0, i32 undef, float %844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = fmul fast float %892, %860
  %894 = fadd fast float %872, %857
  %895 = fmul fast float %894, %839
  %896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %895, float %890, float undef, float undef, i32 0, i32 0, i32 undef, float %844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = fmul fast float %897, %861
  %899 = fadd fast float %886, %858
  %900 = fmul fast float %899, %840
  %901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %888, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float %844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = fmul fast float %902, %860
  %904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %895, float %900, float undef, float undef, i32 0, i32 0, i32 undef, float %844)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = fmul fast float %905, %861
  %907 = fadd fast float %906, %903
  %908 = fmul fast float %907, %875
  %909 = fadd fast float %898, %893
  %910 = fmul fast float %909, %874
  %911 = fadd fast float %910, %908
  %912 = fmul fast float %911, 6.250000e-02
  br label %4614

; <label>:913                                     ; preds = %823
  %914 = fmul fast float %276, 0x401921FB60000000
  %915 = call float @dx.op.unary.f32(i32 13, float %914)  ; Sin(value)
  %916 = call float @dx.op.unary.f32(i32 12, float %914)  ; Cos(value)
  %917 = fsub fast float -0.000000e+00, %915
  br label %918

; <label>:918                                     ; preds = %967, %913
  %919 = phi float [ 0.000000e+00, %913 ], [ %962, %967 ]
  %920 = phi float [ 0.000000e+00, %913 ], [ %964, %967 ]
  %921 = phi i32 [ 0, %913 ], [ %968, %967 ]
  %922 = mul i32 %921, 2
  %923 = add i32 0, %922
  %924 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %923
  %925 = load float, float* %924, align 4
  %926 = mul i32 %921, 2
  %927 = add i32 1, %926
  %928 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %927
  %929 = load float, float* %928, align 4
  %930 = fmul fast float %925, %916
  %931 = call float @dx.op.tertiary.f32(i32 46, float %929, float %917, float %930)  ; FMad(a,b,c)
  %932 = fmul fast float %925, %915
  %933 = call float @dx.op.tertiary.f32(i32 46, float %929, float %916, float %932)  ; FMad(a,b,c)
  %934 = fmul fast float %931, %842
  %935 = fmul fast float %933, %842
  %936 = fadd fast float %934, %836
  %937 = fadd fast float %935, %837
  %938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %32, float %936, float %937, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = extractvalue %dx.types.ResRet.f32 %938, 3
  %943 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %939, float* %943, align 4
  %944 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %940, float* %944, align 4
  %945 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %941, float* %945, align 4
  %946 = getelementptr inbounds [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %942, float* %946, align 4
  %947 = fsub fast float %939, %844
  %948 = fcmp fast olt float %947, 0.000000e+00
  %949 = select i1 %948, float 0.000000e+00, float 1.000000e+00
  %950 = fadd fast float %949, %919
  %951 = fmul fast float %949, %947
  %952 = fadd fast float %951, %920
  br label %953

; <label>:953                                     ; preds = %953, %918
  %954 = phi i32 [ 1, %918 ], [ %965, %953 ]
  %955 = phi float [ %952, %918 ], [ %964, %953 ]
  %956 = phi float [ %950, %918 ], [ %962, %953 ]
  %957 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 %954
  %958 = load float, float* %957, align 4, !tbaa !61
  %959 = fsub fast float %958, %844
  %960 = fcmp fast olt float %959, 0.000000e+00
  %961 = select i1 %960, float 0.000000e+00, float 1.000000e+00
  %962 = fadd fast float %961, %956
  %963 = fmul fast float %961, %959
  %964 = fadd fast float %963, %955
  %965 = add nuw nsw i32 %954, 1
  %966 = icmp eq i32 %965, 4
  br i1 %966, label %967, label %953, !llvm.loop !63

; <label>:967                                     ; preds = %953
  %968 = add nuw nsw i32 %921, 1
  %969 = icmp eq i32 %968, 8
  br i1 %969, label %970, label %918, !llvm.loop !65

; <label>:970                                     ; preds = %967
  %971 = fdiv fast float 1.000000e+00, %962
  %972 = fmul fast float %971, %964
  %973 = fdiv fast float 1.000000e+00, %844
  %974 = fmul fast float %972, %973
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = call float @dx.op.binary.f32(i32 35, float %975, float 0.000000e+00)  ; FMax(a,b)
  %977 = fmul fast float %962, 3.125000e-02
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fmul fast float %978, 2.000000e+00
  %980 = fadd fast float %979, -1.000000e+00
  %981 = fcmp fast ogt float %980, 0.000000e+00
  %982 = fcmp fast olt float %980, 0.000000e+00
  %983 = zext i1 %981 to i32
  %984 = zext i1 %982 to i32
  %985 = sub nsw i32 %983, %984
  %986 = sitofp i32 %985 to float
  %987 = fmul fast float %986, %980
  %988 = fsub fast float 1.000000e+00, %987
  %989 = fmul fast float %988, %988
  %990 = fmul fast float %989, %988
  %991 = fsub fast float %988, %990
  %992 = fmul fast float %991, %976
  %993 = fsub fast float 1.000000e+00, %990
  %994 = fsub fast float %993, %992
  %995 = fmul fast float %986, 5.000000e-01
  %996 = fmul fast float %995, %994
  %997 = fsub fast float 5.000000e-01, %996
  br label %4614

; <label>:998                                     ; preds = %821
  %999 = icmp eq i32 %290, 13
  br i1 %999, label %1000, label %1670, !dx.controlflow.hints !69

; <label>:1000                                    ; preds = %998
  %1001 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %1002 = fcmp fast une float %1001, 0.000000e+00
  br i1 %1002, label %1003, label %4614, !dx.controlflow.hints !70

; <label>:1003                                    ; preds = %1000
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1013 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.CBufRet.f32 %1014, 3
  %1019 = fmul fast float %1005, %177
  %1020 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1006, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1007, float %1020)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %1008
  %1023 = fmul fast float %1010, %177
  %1024 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1011, float %1023)  ; FMad(a,b,c)
  %1025 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1012, float %1024)  ; FMad(a,b,c)
  %1026 = fadd fast float %1025, %1013
  %1027 = fmul fast float %1015, %177
  %1028 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1016, float %1027)  ; FMad(a,b,c)
  %1029 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1017, float %1028)  ; FMad(a,b,c)
  %1030 = fadd fast float %1029, %1018
  %1031 = fcmp fast oge float %1022, 1.000000e+00
  %1032 = fcmp fast oge float %1026, 1.000000e+00
  %1033 = or i1 %1031, %1032
  %1034 = fcmp fast olt float %1022, 0.000000e+00
  %1035 = fcmp fast olt float %1026, 0.000000e+00
  %1036 = or i1 %1034, %1035
  %1037 = or i1 %1033, %1036
  br i1 %1037, label %4614, label %1038, !dx.controlflow.hints !71

; <label>:1038                                    ; preds = %1003
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.CBufRet.f32 %1039, 2
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.i32 %1045, 2
  %1047 = uitofp i32 %1046 to float
  %1048 = extractvalue %dx.types.CBufRet.i32 %1045, 3
  %1049 = uitofp i32 %1048 to float
  %1050 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1051 = fmul fast float %1050, 2.000000e+00
  %1052 = fsub fast float %1022, %1040
  %1053 = fsub fast float %1026, %1041
  %1054 = fmul fast float %1051, %1052
  %1055 = fmul fast float %1051, %1053
  %1056 = fdiv fast float 1.000000e+00, %227
  %1057 = fmul fast float %1055, %1056
  %1058 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1059 = fmul fast float %1042, %179
  %1060 = fmul fast float %1059, %1051
  %1061 = call float @dx.op.unary.f32(i32 6, float %1060)  ; FAbs(value)
  %1062 = call float @dx.op.unary.f32(i32 6, float %1054)  ; FAbs(value)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1061, float %1058)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 35, float %1062, float %1063)  ; FMax(a,b)
  %1065 = fmul fast float %1064, 2.000000e+00
  %1066 = call float @dx.op.unary.f32(i32 23, float %1065)  ; Log(value)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1066, float %1047)  ; FMax(a,b)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1067)  ; Frc(value)
  %1069 = fadd fast float %1068, 0xBFEA666660000000
  %1070 = fmul fast float %1069, 8.000000e+00
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1073 = fadd fast float %1072, %1071
  %1074 = call float @dx.op.binary.f32(i32 36, float %1073, float %1049)  ; FMin(a,b)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1076 = fsub fast float -0.000000e+00, %1075
  %1077 = call float @dx.op.unary.f32(i32 21, float %1076)  ; Exp(value)
  %1078 = fmul fast float %1077, %1051
  %1079 = fmul fast float %1078, %1022
  %1080 = fmul fast float %1078, %1026
  %1081 = fmul fast float %1079, 5.000000e-01
  %1082 = fmul fast float %1080, 5.000000e-01
  %1083 = fadd fast float %1081, 5.000000e-01
  %1084 = fadd fast float %1082, 5.000000e-01
  %1085 = fmul fast float %1079, 2.500000e-01
  %1086 = fmul fast float %1080, 2.500000e-01
  %1087 = fadd fast float %1085, 5.000000e-01
  %1088 = fadd fast float %1086, 5.000000e-01
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = and i32 %1090, 536870911
  %1092 = lshr i32 %1091, 9
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1093, %1022
  %1095 = fmul fast float %1093, %1026
  %1096 = call float @dx.op.unary.f32(i32 22, float %1094)  ; Frc(value)
  %1097 = call float @dx.op.unary.f32(i32 22, float %1095)  ; Frc(value)
  %1098 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1099 = fcmp fast une float %1098, 0.000000e+00
  br i1 %1099, label %1100, label %1198, !dx.controlflow.hints !72

; <label>:1100                                    ; preds = %1038
  %1101 = call float @dx.op.unary.f32(i32 21, float %1072)  ; Exp(value)
  %1102 = fmul fast float %1101, 1.953125e-03
  %1103 = fcmp fast olt float %1096, %1102
  %1104 = fcmp fast olt float %1097, %1102
  %1105 = or i1 %1103, %1104
  %1106 = fsub fast float 1.000000e+00, %1102
  %1107 = fcmp fast ogt float %1096, %1106
  %1108 = fcmp fast ogt float %1097, %1106
  %1109 = or i1 %1107, %1108
  %1110 = or i1 %1105, %1109
  br i1 %1110, label %1111, label %1277, !dx.controlflow.hints !73

; <label>:1111                                    ; preds = %1100
  %1112 = fmul fast float %1044, 5.000000e-01
  %1113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.i32 %1113, 0
  %1115 = fmul fast float %1026, 3.530000e+02
  %1116 = uitofp i32 %1091 to float
  %1117 = fmul fast float %1115, %1116
  %1118 = fmul fast float %1022, 6.130000e+02
  %1119 = fadd fast float %1117, %1118
  %1120 = fptoui float %1119 to i32
  %1121 = add i32 %1114, %1120
  %1122 = mul i32 %1121, -63
  %1123 = lshr i32 %1122, 17
  %1124 = xor i32 %1123, %1122
  %1125 = mul i32 %1124, -511
  %1126 = mul i32 %1124, -8176
  %1127 = xor i32 %1125, %1126
  %1128 = mul i32 %1127, -7
  %1129 = mul i32 %1127, -7168
  %1130 = xor i32 %1128, %1129
  %1131 = lshr i32 %1130, 15
  %1132 = xor i32 %1131, %1128
  %1133 = and i32 %1132, 15
  %1134 = mul i32 %1133, 2
  %1135 = add i32 0, %1134
  %1136 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1135
  %1137 = load float, float* %1136, align 4
  %1138 = mul i32 %1133, 2
  %1139 = add i32 1, %1138
  %1140 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1139
  %1141 = load float, float* %1140, align 4
  %1142 = fmul fast float %1026, 2.770000e+02
  %1143 = fmul fast float %1142, %1116
  %1144 = fmul fast float %1022, 5.990000e+02
  %1145 = fadd fast float %1143, %1144
  %1146 = fptoui float %1145 to i32
  %1147 = mul i32 %1146, -63
  %1148 = lshr i32 %1147, 17
  %1149 = xor i32 %1148, %1147
  %1150 = mul i32 %1149, -511
  %1151 = mul i32 %1149, -8176
  %1152 = xor i32 %1150, %1151
  %1153 = mul i32 %1152, -7
  %1154 = mul i32 %1152, -7168
  %1155 = xor i32 %1153, %1154
  %1156 = lshr i32 %1155, 15
  %1157 = xor i32 %1156, %1153
  %1158 = and i32 %1157, 63
  %1159 = mul i32 %1158, 2
  %1160 = add i32 0, %1159
  %1161 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1160
  %1162 = load float, float* %1161, align 4
  %1163 = mul i32 %1158, 2
  %1164 = add i32 1, %1163
  %1165 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1164
  %1166 = load float, float* %1165, align 4
  %1167 = call float @dx.op.dot2.f32(i32 54, float %1137, float %1141, float %1162, float %1166)  ; Dot2(ax,ay,bx,by)
  %1168 = fsub fast float -0.000000e+00, %1162
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1137, float %1141, float %1168, float %1166)  ; Dot2(ax,ay,bx,by)
  %1170 = fmul fast float %1167, %1112
  %1171 = fmul fast float %1169, %1112
  %1172 = fdiv fast float 2.000000e+00, %1078
  %1173 = fmul fast float %1101, 9.765625e-04
  %1174 = fcmp fast olt float %1096, %1173
  %1175 = fcmp fast olt float %1097, %1173
  %1176 = or i1 %1174, %1175
  %1177 = fsub fast float 1.000000e+00, %1173
  %1178 = fcmp fast ogt float %1096, %1177
  %1179 = fcmp fast ogt float %1097, %1177
  %1180 = or i1 %1178, %1179
  %1181 = or i1 %1176, %1180
  %1182 = fmul fast float %1170, 2.000000e+00
  br i1 %1181, label %1183, label %1187, !dx.controlflow.hints !74

; <label>:1183                                    ; preds = %1111
  %1184 = fmul fast float %1171, 2.000000e+00
  %1185 = fadd fast float %1182, %1083
  %1186 = fadd fast float %1184, %1084
  br label %1187

; <label>:1187                                    ; preds = %1183, %1111
  %1188 = phi float [ %1185, %1183 ], [ %1083, %1111 ]
  %1189 = phi float [ %1186, %1183 ], [ %1084, %1111 ]
  %1190 = phi i32 [ 3, %1183 ], [ 2, %1111 ]
  %1191 = fadd fast float %1170, %1087
  %1192 = fadd fast float %1171, %1088
  %1193 = fmul fast float %1182, %1172
  %1194 = fmul fast float %1172, 2.000000e+00
  %1195 = fmul fast float %1194, %1171
  %1196 = fadd fast float %1193, %1022
  %1197 = fadd fast float %1195, %1026
  br label %1277

; <label>:1198                                    ; preds = %1038
  %1199 = call float @dx.op.unary.f32(i32 21, float %1075)  ; Exp(value)
  %1200 = fmul fast float %1199, 9.765625e-04
  %1201 = fcmp fast olt float %1096, %1200
  %1202 = fcmp fast olt float %1097, %1200
  %1203 = or i1 %1201, %1202
  %1204 = fsub fast float 1.000000e+00, %1200
  %1205 = fcmp fast ogt float %1096, %1204
  %1206 = fcmp fast ogt float %1097, %1204
  %1207 = or i1 %1205, %1206
  %1208 = or i1 %1203, %1207
  br i1 %1208, label %1209, label %1277, !dx.controlflow.hints !75

; <label>:1209                                    ; preds = %1198
  %1210 = fmul fast float %1044, 5.000000e-01
  %1211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.i32 %1211, 0
  %1213 = fmul fast float %1026, 3.530000e+02
  %1214 = uitofp i32 %1091 to float
  %1215 = fmul fast float %1213, %1214
  %1216 = fmul fast float %1022, 6.130000e+02
  %1217 = fadd fast float %1215, %1216
  %1218 = fptoui float %1217 to i32
  %1219 = add i32 %1212, %1218
  %1220 = mul i32 %1219, -63
  %1221 = lshr i32 %1220, 17
  %1222 = xor i32 %1221, %1220
  %1223 = mul i32 %1222, -511
  %1224 = mul i32 %1222, -8176
  %1225 = xor i32 %1223, %1224
  %1226 = mul i32 %1225, -7
  %1227 = mul i32 %1225, -7168
  %1228 = xor i32 %1226, %1227
  %1229 = lshr i32 %1228, 15
  %1230 = xor i32 %1229, %1226
  %1231 = and i32 %1230, 15
  %1232 = mul i32 %1231, 2
  %1233 = add i32 0, %1232
  %1234 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1233
  %1235 = load float, float* %1234, align 4
  %1236 = mul i32 %1231, 2
  %1237 = add i32 1, %1236
  %1238 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1237
  %1239 = load float, float* %1238, align 4
  %1240 = fmul fast float %1026, 2.770000e+02
  %1241 = fmul fast float %1240, %1214
  %1242 = fmul fast float %1022, 5.990000e+02
  %1243 = fadd fast float %1241, %1242
  %1244 = fptoui float %1243 to i32
  %1245 = mul i32 %1244, -63
  %1246 = lshr i32 %1245, 17
  %1247 = xor i32 %1246, %1245
  %1248 = mul i32 %1247, -511
  %1249 = mul i32 %1247, -8176
  %1250 = xor i32 %1248, %1249
  %1251 = mul i32 %1250, -7
  %1252 = mul i32 %1250, -7168
  %1253 = xor i32 %1251, %1252
  %1254 = lshr i32 %1253, 15
  %1255 = xor i32 %1254, %1251
  %1256 = and i32 %1255, 63
  %1257 = mul i32 %1256, 2
  %1258 = add i32 0, %1257
  %1259 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1258
  %1260 = load float, float* %1259, align 4
  %1261 = mul i32 %1256, 2
  %1262 = add i32 1, %1261
  %1263 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1262
  %1264 = load float, float* %1263, align 4
  %1265 = call float @dx.op.dot2.f32(i32 54, float %1235, float %1239, float %1260, float %1264)  ; Dot2(ax,ay,bx,by)
  %1266 = fsub fast float -0.000000e+00, %1260
  %1267 = call float @dx.op.dot2.f32(i32 54, float %1235, float %1239, float %1266, float %1264)  ; Dot2(ax,ay,bx,by)
  %1268 = fmul fast float %1265, %1210
  %1269 = fmul fast float %1267, %1210
  %1270 = fadd fast float %1268, %1083
  %1271 = fadd fast float %1269, %1084
  %1272 = fdiv fast float 2.000000e+00, %1078
  %1273 = fmul fast float %1272, %1268
  %1274 = fmul fast float %1269, %1272
  %1275 = fadd fast float %1273, %1022
  %1276 = fadd fast float %1274, %1026
  br label %1277

; <label>:1277                                    ; preds = %1209, %1198, %1187, %1100
  %1278 = phi float [ %1191, %1187 ], [ %1087, %1100 ], [ %1087, %1209 ], [ %1087, %1198 ]
  %1279 = phi float [ %1192, %1187 ], [ %1088, %1100 ], [ %1088, %1209 ], [ %1088, %1198 ]
  %1280 = phi float [ %1188, %1187 ], [ %1083, %1100 ], [ %1270, %1209 ], [ %1083, %1198 ]
  %1281 = phi float [ %1189, %1187 ], [ %1084, %1100 ], [ %1271, %1209 ], [ %1084, %1198 ]
  %1282 = phi i32 [ %1190, %1187 ], [ 0, %1100 ], [ 1, %1209 ], [ 0, %1198 ]
  %1283 = phi float [ %1196, %1187 ], [ %1022, %1100 ], [ %1275, %1209 ], [ %1022, %1198 ]
  %1284 = phi float [ %1197, %1187 ], [ %1026, %1100 ], [ %1276, %1209 ], [ %1026, %1198 ]
  %1285 = fsub fast float %1049, %1047
  %1286 = fptoui float %1285 to i32
  %1287 = add i32 %1286, 320
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %1287)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = fcmp fast une float %1074, %1049
  %1292 = fsub fast float %1283, %1289
  %1293 = fsub fast float %1284, %1290
  %1294 = call float @dx.op.unary.f32(i32 6, float %1292)  ; FAbs(value)
  %1295 = call float @dx.op.unary.f32(i32 6, float %1293)  ; FAbs(value)
  %1296 = fmul fast float %1294, %1078
  %1297 = fmul fast float %1295, %1078
  %1298 = fcmp fast olt float %1296, 1.000000e+00
  %1299 = fcmp fast olt float %1297, 1.000000e+00
  %1300 = and i1 %1298, %1299
  %1301 = or i1 %1291, %1300
  br i1 %1301, label %1302, label %4614, !dx.controlflow.hints !76

; <label>:1302                                    ; preds = %1277
  %1303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.i32 %1303, 2
  %1305 = sitofp i32 %1304 to float
  %1306 = fsub fast float %1074, %1305
  %1307 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1309 = icmp eq i32 %1282, 0
  %1310 = call float @dx.op.unary.f32(i32 22, float %1280)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  br i1 %1309, label %1382, label %1312, !dx.controlflow.hints !77

; <label>:1312                                    ; preds = %1302
  %1313 = and i32 %1282, 1
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1328, label %1315, !dx.controlflow.hints !78

; <label>:1315                                    ; preds = %1312
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = fmul fast float %1310, %1317
  %1319 = fmul fast float %1311, %1317
  %1320 = fptoui float %1318 to i32
  %1321 = fptoui float %1319 to i32
  %1322 = fptoui float %1307 to i32
  %1323 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1320, i32 %1321, i32 %1322, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = extractvalue %dx.types.ResRet.f32 %1323, 3
  br label %1334

; <label>:1328                                    ; preds = %1312
  %1329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %1310, float %1311, float %1307, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1330 = extractvalue %dx.types.ResRet.f32 %1329, 0
  %1331 = extractvalue %dx.types.ResRet.f32 %1329, 1
  %1332 = extractvalue %dx.types.ResRet.f32 %1329, 2
  %1333 = extractvalue %dx.types.ResRet.f32 %1329, 3
  br label %1334

; <label>:1334                                    ; preds = %1328, %1315
  %1335 = phi float [ %1324, %1315 ], [ %1330, %1328 ]
  %1336 = phi float [ %1325, %1315 ], [ %1331, %1328 ]
  %1337 = phi float [ %1326, %1315 ], [ %1332, %1328 ]
  %1338 = phi float [ %1327, %1315 ], [ %1333, %1328 ]
  %1339 = fcmp fast ogt float %1308, 0.000000e+00
  br i1 %1339, label %1340, label %1410, !dx.controlflow.hints !79

; <label>:1340                                    ; preds = %1334
  %1341 = and i32 %1282, 2
  %1342 = icmp eq i32 %1341, 0
  %1343 = fadd fast float %1307, 1.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1345 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  br i1 %1342, label %1359, label %1346, !dx.controlflow.hints !80

; <label>:1346                                    ; preds = %1340
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 0
  %1349 = fmul fast float %1344, %1348
  %1350 = fmul fast float %1345, %1348
  %1351 = fptoui float %1349 to i32
  %1352 = fptoui float %1350 to i32
  %1353 = fptoui float %1343 to i32
  %1354 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %1351, i32 %1352, i32 %1353, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1355 = extractvalue %dx.types.ResRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.ResRet.f32 %1354, 1
  %1357 = extractvalue %dx.types.ResRet.f32 %1354, 2
  %1358 = extractvalue %dx.types.ResRet.f32 %1354, 3
  br label %1365

; <label>:1359                                    ; preds = %1340
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %1344, float %1345, float %1343, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = extractvalue %dx.types.ResRet.f32 %1360, 3
  br label %1365

; <label>:1365                                    ; preds = %1359, %1346
  %1366 = phi float [ %1355, %1346 ], [ %1361, %1359 ]
  %1367 = phi float [ %1356, %1346 ], [ %1362, %1359 ]
  %1368 = phi float [ %1357, %1346 ], [ %1363, %1359 ]
  %1369 = phi float [ %1358, %1346 ], [ %1364, %1359 ]
  %1370 = fsub fast float %1366, %1335
  %1371 = fsub fast float %1367, %1336
  %1372 = fsub fast float %1368, %1337
  %1373 = fsub fast float %1369, %1338
  %1374 = fmul fast float %1370, %1308
  %1375 = fmul fast float %1371, %1308
  %1376 = fmul fast float %1372, %1308
  %1377 = fmul fast float %1373, %1308
  %1378 = fadd fast float %1374, %1335
  %1379 = fadd fast float %1375, %1336
  %1380 = fadd fast float %1376, %1337
  %1381 = fadd fast float %1377, %1338
  br label %1410

; <label>:1382                                    ; preds = %1302
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %1310, float %1311, float %1307, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = extractvalue %dx.types.ResRet.f32 %1383, 3
  %1388 = fcmp fast ogt float %1308, 0.000000e+00
  br i1 %1388, label %1389, label %1410, !dx.controlflow.hints !81

; <label>:1389                                    ; preds = %1382
  %1390 = fadd fast float %1307, 1.000000e+00
  %1391 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1392 = call float @dx.op.unary.f32(i32 22, float %1279)  ; Frc(value)
  %1393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %1391, float %1392, float %1390, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.ResRet.f32 %1393, 3
  %1398 = fsub fast float %1394, %1384
  %1399 = fsub fast float %1395, %1385
  %1400 = fsub fast float %1396, %1386
  %1401 = fsub fast float %1397, %1387
  %1402 = fmul fast float %1398, %1308
  %1403 = fmul fast float %1399, %1308
  %1404 = fmul fast float %1400, %1308
  %1405 = fmul fast float %1401, %1308
  %1406 = fadd fast float %1402, %1384
  %1407 = fadd fast float %1403, %1385
  %1408 = fadd fast float %1404, %1386
  %1409 = fadd fast float %1405, %1387
  br label %1410

; <label>:1410                                    ; preds = %1389, %1382, %1365, %1334
  %1411 = phi float [ %1378, %1365 ], [ %1335, %1334 ], [ %1406, %1389 ], [ %1384, %1382 ]
  %1412 = phi float [ %1379, %1365 ], [ %1336, %1334 ], [ %1407, %1389 ], [ %1385, %1382 ]
  %1413 = phi float [ %1380, %1365 ], [ %1337, %1334 ], [ %1408, %1389 ], [ %1386, %1382 ]
  %1414 = phi float [ %1381, %1365 ], [ %1338, %1334 ], [ %1409, %1389 ], [ %1387, %1382 ]
  %1415 = fadd fast float %1411, -5.000000e-01
  %1416 = fadd fast float %1413, -5.000000e-01
  %1417 = fmul fast float %1415, 0xBFD5555560000000
  %1418 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1416, float %1417)  ; FMad(a,b,c)
  %1419 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1412, float 0.000000e+00)  ; FMad(a,b,c)
  %1420 = fadd fast float %1419, %1414
  %1421 = fmul fast float %1415, -7.500000e-01
  %1422 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1416, float %1421)  ; FMad(a,b,c)
  %1423 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1412, float 0.000000e+00)  ; FMad(a,b,c)
  %1424 = fadd fast float %1423, %1414
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1432 = fsub fast float %1428, %1418
  %1433 = fsub fast float %1429, %1420
  %1434 = fsub fast float %1430, %1422
  %1435 = fsub fast float %1431, %1424
  %1436 = fmul fast float %1432, %1426
  %1437 = fmul fast float %1433, %1426
  %1438 = fmul fast float %1434, %1426
  %1439 = fmul fast float %1435, %1426
  %1440 = fadd fast float %1436, %1418
  %1441 = fadd fast float %1437, %1420
  %1442 = fadd fast float %1438, %1422
  %1443 = fadd fast float %1439, %1424
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 536870911
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, %1283
  %1449 = fmul fast float %1447, %1284
  %1450 = fptoui float %1448 to i32
  %1451 = fptoui float %1449 to i32
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 31
  %1455 = lshr i32 %1450, %1454
  %1456 = lshr i32 %1451, %1454
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 31
  %1460 = shl i32 1, %1459
  %1461 = call i32 @dx.op.binary.i32(i32 40, i32 %1460, i32 4)  ; UMin(a,b)
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.i32 %1462, 1
  %1465 = icmp eq i32 %1461, 0
  br i1 %1465, label %1507, label %1466

; <label>:1466                                    ; preds = %1410
  br label %1467

; <label>:1467                                    ; preds = %1495, %1466
  %1468 = phi i32 [ %1498, %1495 ], [ 0, %1466 ]
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 16
  %1472 = and i32 %1471, 31
  %1473 = shl i32 %1456, %1472
  %1474 = add i32 %1473, %1455
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 31
  %1478 = shl i32 %1474, %1477
  %1479 = add i32 %1478, %1468
  %1480 = shl i32 %1479, 2
  %1481 = add i32 %1480, 32
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = icmp slt i32 %1483, 0
  %1485 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1468
  %1486 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %1468
  %1487 = bitcast float* %1485 to i32*
  %1488 = bitcast float* %1486 to i32*
  br i1 %1484, label %1489, label %1495, !dx.controlflow.hints !82

; <label>:1489                                    ; preds = %1467
  %1490 = and i32 %1483, 1073741823
  %1491 = add nuw nsw i32 %1490, 20
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.i32 %1492, 1
  br label %1495

; <label>:1495                                    ; preds = %1489, %1467
  %1496 = phi i32 [ %1493, %1489 ], [ %1463, %1467 ]
  %1497 = phi i32 [ %1494, %1489 ], [ %1464, %1467 ]
  store i32 %1496, i32* %1487, align 4
  store i32 %1497, i32* %1488, align 4
  %1498 = add nuw i32 %1468, 1
  %1499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.i32 %1499, 2
  %1501 = icmp eq i32 %1500, 0
  %1502 = icmp ugt i32 %1483, -1073741825
  %1503 = and i1 %1502, %1501
  %1504 = icmp ult i32 %1498, %1461
  %1505 = and i1 %1503, %1504
  br i1 %1505, label %1467, label %1506, !dx.controlflow.hints !83

; <label>:1506                                    ; preds = %1495
  br label %1507

; <label>:1507                                    ; preds = %1506, %1410
  %1508 = phi i32 [ 0, %1410 ], [ %1498, %1506 ]
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 2
  %1511 = fptoui float %1510 to i32
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1564, label %1513

; <label>:1513                                    ; preds = %1507
  br label %1514

; <label>:1514                                    ; preds = %1559, %1513
  %1515 = phi i32 [ %1560, %1559 ], [ %1508, %1513 ]
  %1516 = phi i32 [ %1561, %1559 ], [ 0, %1513 ]
  %1517 = lshr i32 %1516, 2
  %1518 = and i32 %1516, 3
  %1519 = add nuw nsw i32 %1517, 83
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %1519)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.i32 %1520, 1
  %1523 = extractvalue %dx.types.CBufRet.i32 %1520, 2
  %1524 = extractvalue %dx.types.CBufRet.i32 %1520, 3
  %1525 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 0
  store i32 %1521, i32* %1525, align 4
  %1526 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 1
  store i32 %1522, i32* %1526, align 4
  %1527 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 2
  store i32 %1523, i32* %1527, align 4
  %1528 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 3
  store i32 %1524, i32* %1528, align 4
  %1529 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i32 0, i32 %1518
  %1530 = load i32, i32* %1529, align 4, !tbaa !54
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = lshr i32 %1532, 16
  %1534 = and i32 %1533, 31
  %1535 = shl i32 %1456, %1534
  %1536 = add i32 %1535, %1455
  %1537 = shl i32 %1536, 2
  %1538 = add i32 %1537, %1530
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1559, label %1542, !dx.controlflow.hints !84

; <label>:1542                                    ; preds = %1514
  %1543 = icmp slt i32 %1540, 0
  %1544 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1515
  %1545 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %1515
  %1546 = bitcast float* %1544 to i32*
  %1547 = bitcast float* %1545 to i32*
  br i1 %1543, label %1548, label %1555, !dx.controlflow.hints !85

; <label>:1548                                    ; preds = %1542
  %1549 = and i32 %1540, 1073741823
  %1550 = add i32 %1530, 20
  %1551 = add i32 %1550, %1549
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.i32 %1552, 1
  br label %1555

; <label>:1555                                    ; preds = %1548, %1542
  %1556 = phi i32 [ %1553, %1548 ], [ %1463, %1542 ]
  %1557 = phi i32 [ %1554, %1548 ], [ %1464, %1542 ]
  store i32 %1556, i32* %1546, align 4
  store i32 %1557, i32* %1547, align 4
  %1558 = add i32 %1515, 1
  br label %1559

; <label>:1559                                    ; preds = %1555, %1514
  %1560 = phi i32 [ %1515, %1514 ], [ %1558, %1555 ]
  %1561 = add nuw i32 %1516, 1
  %1562 = icmp eq i32 %1561, %1511
  br i1 %1562, label %1563, label %1514

; <label>:1563                                    ; preds = %1559
  br label %1564

; <label>:1564                                    ; preds = %1563, %1507
  %1565 = phi i32 [ %1508, %1507 ], [ %1560, %1563 ]
  %1566 = icmp eq i32 %1565, 1
  %1567 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 0
  %1568 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 0
  br i1 %1566, label %1569, label %1572, !dx.controlflow.hints !86

; <label>:1569                                    ; preds = %1564
  %1570 = load float, float* %1567, align 4
  %1571 = load float, float* %1568, align 4
  br label %1599

; <label>:1572                                    ; preds = %1564
  %1573 = load float, float* %1567, align 4
  %1574 = load float, float* %1568, align 4
  %1575 = fdiv fast float 1.000000e+00, %1574
  %1576 = fsub fast float %1573, %1575
  %1577 = icmp ugt i32 %1565, 1
  br i1 %1577, label %1578, label %1594

; <label>:1578                                    ; preds = %1572
  br label %1579

; <label>:1579                                    ; preds = %1579, %1578
  %1580 = phi float [ %1589, %1579 ], [ %1576, %1578 ]
  %1581 = phi float [ %1590, %1579 ], [ %1573, %1578 ]
  %1582 = phi i32 [ %1591, %1579 ], [ 1, %1578 ]
  %1583 = getelementptr [12 x float], [12 x float]* %43, i32 0, i32 %1582
  %1584 = load float, float* %1583, align 4
  %1585 = getelementptr [12 x float], [12 x float]* %44, i32 0, i32 %1582
  %1586 = load float, float* %1585, align 4
  %1587 = fdiv fast float 1.000000e+00, %1586
  %1588 = fsub fast float %1584, %1587
  %1589 = call float @dx.op.binary.f32(i32 36, float %1580, float %1588)  ; FMin(a,b)
  %1590 = call float @dx.op.binary.f32(i32 35, float %1581, float %1584)  ; FMax(a,b)
  %1591 = add nuw i32 %1582, 1
  %1592 = icmp eq i32 %1591, %1565
  br i1 %1592, label %1593, label %1579

; <label>:1593                                    ; preds = %1579
  br label %1594

; <label>:1594                                    ; preds = %1593, %1572
  %1595 = phi float [ %1576, %1572 ], [ %1589, %1593 ]
  %1596 = phi float [ %1573, %1572 ], [ %1590, %1593 ]
  %1597 = fsub fast float %1596, %1595
  %1598 = fdiv fast float 1.000000e+00, %1597
  br label %1599

; <label>:1599                                    ; preds = %1594, %1569
  %1600 = phi float [ %1570, %1569 ], [ %1596, %1594 ]
  %1601 = phi float [ %1571, %1569 ], [ %1598, %1594 ]
  %1602 = fadd fast float %1030, %1600
  %1603 = fmul fast float %1602, %1601
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1605 = fmul fast float %1604, 2.000000e+00
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1440, %1440
  %1608 = fsub fast float %1441, %1607
  %1609 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1608)  ; FMax(a,b)
  %1610 = fdiv fast float 1.000000e+00, %1609
  %1611 = fmul fast float %1441, %1440
  %1612 = fsub fast float %1442, %1611
  %1613 = fsub fast float %1606, %1440
  %1614 = fmul fast float %1606, %1606
  %1615 = fsub fast float %1614, %1441
  %1616 = fmul fast float %1610, %1612
  %1617 = fmul fast float %1616, %1613
  %1618 = fsub fast float %1615, %1617
  %1619 = fmul fast float %1441, %1441
  %1620 = fsub fast float %1443, %1619
  %1621 = fmul fast float %1612, %1612
  %1622 = fmul fast float %1621, %1610
  %1623 = fsub fast float %1620, %1622
  %1624 = fdiv fast float %1618, %1623
  %1625 = fmul fast float %1624, %1612
  %1626 = fsub fast float %1613, %1625
  %1627 = fmul fast float %1626, %1610
  %1628 = fmul fast float %1627, %1440
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1624, %1441
  %1631 = fsub fast float %1629, %1630
  %1632 = fmul fast float %1627, %1627
  %1633 = fmul fast float %1624, 4.000000e+00
  %1634 = fmul fast float %1633, %1631
  %1635 = fsub fast float %1632, %1634
  %1636 = call float @dx.op.unary.f32(i32 24, float %1635)  ; Sqrt(value)
  %1637 = fcmp fast oge float %1627, 0.000000e+00
  %1638 = fsub fast float -0.000000e+00, %1636
  %1639 = select i1 %1637, float %1638, float %1636
  %1640 = fsub fast float %1639, %1627
  %1641 = fdiv fast float %1640, %1624
  %1642 = fdiv fast float %1631, %1640
  %1643 = fmul fast float %1641, 5.000000e-01
  %1644 = fmul fast float %1642, 2.000000e+00
  %1645 = select i1 %1637, float %1643, float %1644
  %1646 = select i1 %1637, float %1644, float %1643
  %1647 = call float @dx.op.binary.f32(i32 35, float %1645, float %1646)  ; FMax(a,b)
  %1648 = call float @dx.op.binary.f32(i32 36, float %1645, float %1646)  ; FMin(a,b)
  %1649 = fcmp fast ogt float %1606, %1647
  %1650 = fsub fast float %1606, %1648
  %1651 = fsub fast float %1606, %1647
  %1652 = fsub fast float %1647, %1648
  %1653 = select i1 %1649, float %1651, float %1652
  %1654 = fmul float %1650, %1653
  %1655 = select i1 %1649, float %1648, float %1606
  %1656 = fcmp fast ogt float %1606, %1648
  %1657 = fmul fast float %1655, %1647
  %1658 = fadd fast float %1655, %1647
  %1659 = fmul fast float %1658, %1440
  %1660 = fadd fast float %1657, %1441
  %1661 = fsub fast float %1660, %1659
  %1662 = fdiv fast float %1661, %1654
  %1663 = select i1 %1656, float %1662, float 0.000000e+00
  %1664 = fsub fast float 1.000000e+00, %1663
  %1665 = select i1 %1649, float %1664, float %1663
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float 1.000000e+00, %1668
  br label %4614

; <label>:1670                                    ; preds = %998
  %1671 = icmp eq i32 %290, 11
  br i1 %1671, label %4614, label %1672, !dx.controlflow.hints !87

; <label>:1672                                    ; preds = %1670
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.CBufRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.CBufRet.f32 %1673, 3
  %1677 = fmul fast float %1676, %257
  %1678 = fmul fast float %1676, %261
  %1679 = fadd fast float %1677, %1674
  %1680 = fadd fast float %1678, %1675
  %1681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1682 = extractvalue %dx.types.CBufRet.f32 %1681, 0
  %1683 = extractvalue %dx.types.CBufRet.f32 %1681, 1
  %1684 = extractvalue %dx.types.CBufRet.f32 %1681, 3
  %1685 = fmul fast float %1684, %257
  %1686 = fmul fast float %1684, %261
  %1687 = fadd fast float %1685, %1682
  %1688 = fadd fast float %1686, %1683
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1691 = fsub fast float %1690, %265
  %1692 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1693 = fmul fast float %1691, %1692
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  br i1 %114, label %1756, label %1696, !dx.controlflow.hints !88

; <label>:1696                                    ; preds = %1672
  %1697 = extractvalue %dx.types.CBufRet.f32 %1681, 2
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 2
  %1700 = fadd fast float %1699, %1697
  %1701 = fcmp fast ogt float %1700, 0.000000e+00
  br i1 %1701, label %1702, label %1726, !dx.controlflow.hints !89

; <label>:1702                                    ; preds = %1696
  %1703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1703, 0
  %1705 = extractvalue %dx.types.CBufRet.f32 %1703, 1
  %1706 = fsub fast float %1687, %1704
  %1707 = fsub fast float %1688, %1705
  %1708 = fcmp fast olt float %1706, 0.000000e+00
  %1709 = fcmp fast olt float %1707, 0.000000e+00
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.CBufRet.f32 %1710, 2
  %1714 = extractvalue %dx.types.CBufRet.f32 %1710, 3
  %1715 = select i1 %1708, float %1711, float %1713
  %1716 = select i1 %1709, float %1712, float %1714
  %1717 = fmul fast float %1715, %1706
  %1718 = fmul fast float %1716, %1707
  %1719 = call float @dx.op.unary.f32(i32 6, float %1717)  ; FAbs(value)
  %1720 = call float @dx.op.unary.f32(i32 6, float %1718)  ; FAbs(value)
  %1721 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %1722 = call float @dx.op.binary.f32(i32 35, float %1719, float %1720)  ; FMax(a,b)
  %1723 = fsub fast float %1721, %1722
  %1724 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1725 = fmul fast float %1724, %1695
  br label %1726

; <label>:1726                                    ; preds = %1702, %1696
  %1727 = phi float [ %1725, %1702 ], [ 0.000000e+00, %1696 ]
  %1728 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1729 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1730 = fadd fast float %1729, %1728
  %1731 = fcmp fast ogt float %1730, 0.000000e+00
  br i1 %1731, label %1732, label %1756, !dx.controlflow.hints !90

; <label>:1732                                    ; preds = %1726
  %1733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %1734 = extractvalue %dx.types.CBufRet.f32 %1733, 0
  %1735 = extractvalue %dx.types.CBufRet.f32 %1733, 1
  %1736 = fsub fast float %1679, %1734
  %1737 = fsub fast float %1680, %1735
  %1738 = fcmp fast olt float %1736, 0.000000e+00
  %1739 = fcmp fast olt float %1737, 0.000000e+00
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 2
  %1744 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1745 = select i1 %1738, float %1741, float %1743
  %1746 = select i1 %1739, float %1742, float %1744
  %1747 = fmul fast float %1745, %1736
  %1748 = fmul fast float %1746, %1737
  %1749 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1750 = call float @dx.op.unary.f32(i32 6, float %1748)  ; FAbs(value)
  %1751 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %1752 = call float @dx.op.binary.f32(i32 35, float %1749, float %1750)  ; FMax(a,b)
  %1753 = fsub fast float %1751, %1752
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = fmul fast float %1754, %1695
  br label %1756

; <label>:1756                                    ; preds = %1732, %1726, %1672
  %1757 = phi float [ 0.000000e+00, %1672 ], [ %1755, %1732 ], [ 0.000000e+00, %1726 ]
  %1758 = phi float [ 0.000000e+00, %1672 ], [ %1727, %1732 ], [ %1727, %1726 ]
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.CBufRet.f32 %1759, 1
  %1762 = fmul fast float %1760, %121
  %1763 = fadd fast float %1762, %1761
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1767 = extractvalue %dx.types.CBufRet.f32 %1765, 1
  %1768 = fsub fast float %257, %1766
  %1769 = fsub fast float %261, %1767
  %1770 = fcmp fast olt float %1768, 0.000000e+00
  %1771 = fcmp fast olt float %1769, 0.000000e+00
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = extractvalue %dx.types.CBufRet.f32 %1772, 2
  %1776 = extractvalue %dx.types.CBufRet.f32 %1772, 3
  %1777 = select i1 %1770, float %1773, float %1775
  %1778 = select i1 %1771, float %1774, float %1776
  %1779 = fmul fast float %1777, %1768
  %1780 = fmul fast float %1778, %1769
  %1781 = call float @dx.op.unary.f32(i32 6, float %1779)  ; FAbs(value)
  %1782 = call float @dx.op.unary.f32(i32 6, float %1780)  ; FAbs(value)
  %1783 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %1784 = call float @dx.op.binary.f32(i32 35, float %1781, float %1782)  ; FMax(a,b)
  %1785 = fsub fast float %1783, %1784
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = call float @dx.op.binary.f32(i32 36, float %1786, float %1764)  ; FMin(a,b)
  %1788 = fmul fast float %1787, %1695
  %1789 = fsub fast float %1757, %1788
  %1790 = fsub fast float %1758, %1757
  %1791 = fsub fast float %1790, %1788
  %1792 = call float @dx.op.binary.f32(i32 35, float %1757, float %1758)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1788, float %1792)  ; FMax(a,b)
  %1794 = fcmp fast olt float %1793, 1.000000e+00
  %1795 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %1796 = fcmp fast une float %1795, 0.000000e+00
  %1797 = and i1 %1794, %1796
  br i1 %1797, label %1798, label %2465, !dx.controlflow.hints !91

; <label>:1798                                    ; preds = %1756
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1803 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.CBufRet.f32 %1804, 2
  %1808 = extractvalue %dx.types.CBufRet.f32 %1804, 3
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1813 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1814 = fmul fast float %1800, %177
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1801, float %1814)  ; FMad(a,b,c)
  %1816 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1802, float %1815)  ; FMad(a,b,c)
  %1817 = fadd fast float %1816, %1803
  %1818 = fmul fast float %1805, %177
  %1819 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1806, float %1818)  ; FMad(a,b,c)
  %1820 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1807, float %1819)  ; FMad(a,b,c)
  %1821 = fadd fast float %1820, %1808
  %1822 = fmul fast float %1810, %177
  %1823 = call float @dx.op.tertiary.f32(i32 46, float %178, float %1811, float %1822)  ; FMad(a,b,c)
  %1824 = call float @dx.op.tertiary.f32(i32 46, float %179, float %1812, float %1823)  ; FMad(a,b,c)
  %1825 = fadd fast float %1824, %1813
  %1826 = fcmp fast oge float %1817, 1.000000e+00
  %1827 = fcmp fast oge float %1821, 1.000000e+00
  %1828 = or i1 %1826, %1827
  %1829 = fcmp fast olt float %1817, 0.000000e+00
  %1830 = fcmp fast olt float %1821, 0.000000e+00
  %1831 = or i1 %1829, %1830
  %1832 = or i1 %1828, %1831
  br i1 %1832, label %2465, label %1833, !dx.controlflow.hints !71

; <label>:1833                                    ; preds = %1798
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1837 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.i32 %1840, 2
  %1842 = uitofp i32 %1841 to float
  %1843 = extractvalue %dx.types.CBufRet.i32 %1840, 3
  %1844 = uitofp i32 %1843 to float
  %1845 = extractvalue %dx.types.CBufRet.f32 %1834, 3
  %1846 = fmul fast float %1845, 2.000000e+00
  %1847 = fsub fast float %1817, %1835
  %1848 = fsub fast float %1821, %1836
  %1849 = fmul fast float %1846, %1847
  %1850 = fmul fast float %1846, %1848
  %1851 = fdiv fast float 1.000000e+00, %227
  %1852 = fmul fast float %1850, %1851
  %1853 = call float @dx.op.unary.f32(i32 6, float %1852)  ; FAbs(value)
  %1854 = fmul fast float %1837, %179
  %1855 = fmul fast float %1854, %1846
  %1856 = call float @dx.op.unary.f32(i32 6, float %1855)  ; FAbs(value)
  %1857 = call float @dx.op.unary.f32(i32 6, float %1849)  ; FAbs(value)
  %1858 = call float @dx.op.binary.f32(i32 35, float %1856, float %1853)  ; FMax(a,b)
  %1859 = call float @dx.op.binary.f32(i32 35, float %1857, float %1858)  ; FMax(a,b)
  %1860 = fmul fast float %1859, 2.000000e+00
  %1861 = call float @dx.op.unary.f32(i32 23, float %1860)  ; Log(value)
  %1862 = call float @dx.op.binary.f32(i32 35, float %1861, float %1842)  ; FMax(a,b)
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, 0xBFEA666660000000
  %1865 = fmul fast float %1864, 8.000000e+00
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = call float @dx.op.unary.f32(i32 27, float %1862)  ; Round_ni(value)
  %1868 = fadd fast float %1867, %1866
  %1869 = call float @dx.op.binary.f32(i32 36, float %1868, float %1844)  ; FMin(a,b)
  %1870 = call float @dx.op.unary.f32(i32 27, float %1869)  ; Round_ni(value)
  %1871 = fsub fast float -0.000000e+00, %1870
  %1872 = call float @dx.op.unary.f32(i32 21, float %1871)  ; Exp(value)
  %1873 = fmul fast float %1872, %1846
  %1874 = fmul fast float %1873, %1817
  %1875 = fmul fast float %1873, %1821
  %1876 = fmul fast float %1874, 5.000000e-01
  %1877 = fmul fast float %1875, 5.000000e-01
  %1878 = fadd fast float %1876, 5.000000e-01
  %1879 = fadd fast float %1877, 5.000000e-01
  %1880 = fmul fast float %1874, 2.500000e-01
  %1881 = fmul fast float %1875, 2.500000e-01
  %1882 = fadd fast float %1880, 5.000000e-01
  %1883 = fadd fast float %1881, 5.000000e-01
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 536870911
  %1887 = lshr i32 %1886, 9
  %1888 = uitofp i32 %1887 to float
  %1889 = fmul fast float %1888, %1817
  %1890 = fmul fast float %1888, %1821
  %1891 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1892 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1893 = call float @dx.op.unary.f32(i32 22, float %1866)  ; Frc(value)
  %1894 = fcmp fast une float %1893, 0.000000e+00
  br i1 %1894, label %1895, label %1993, !dx.controlflow.hints !72

; <label>:1895                                    ; preds = %1833
  %1896 = call float @dx.op.unary.f32(i32 21, float %1867)  ; Exp(value)
  %1897 = fmul fast float %1896, 1.953125e-03
  %1898 = fcmp fast olt float %1891, %1897
  %1899 = fcmp fast olt float %1892, %1897
  %1900 = or i1 %1898, %1899
  %1901 = fsub fast float 1.000000e+00, %1897
  %1902 = fcmp fast ogt float %1891, %1901
  %1903 = fcmp fast ogt float %1892, %1901
  %1904 = or i1 %1902, %1903
  %1905 = or i1 %1900, %1904
  br i1 %1905, label %1906, label %2072, !dx.controlflow.hints !73

; <label>:1906                                    ; preds = %1895
  %1907 = fmul fast float %1839, 5.000000e-01
  %1908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.i32 %1908, 0
  %1910 = fmul fast float %1821, 3.530000e+02
  %1911 = uitofp i32 %1886 to float
  %1912 = fmul fast float %1910, %1911
  %1913 = fmul fast float %1817, 6.130000e+02
  %1914 = fadd fast float %1912, %1913
  %1915 = fptoui float %1914 to i32
  %1916 = add i32 %1909, %1915
  %1917 = mul i32 %1916, -63
  %1918 = lshr i32 %1917, 17
  %1919 = xor i32 %1918, %1917
  %1920 = mul i32 %1919, -511
  %1921 = mul i32 %1919, -8176
  %1922 = xor i32 %1920, %1921
  %1923 = mul i32 %1922, -7
  %1924 = mul i32 %1922, -7168
  %1925 = xor i32 %1923, %1924
  %1926 = lshr i32 %1925, 15
  %1927 = xor i32 %1926, %1923
  %1928 = and i32 %1927, 15
  %1929 = mul i32 %1928, 2
  %1930 = add i32 0, %1929
  %1931 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1930
  %1932 = load float, float* %1931, align 4
  %1933 = mul i32 %1928, 2
  %1934 = add i32 1, %1933
  %1935 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %1934
  %1936 = load float, float* %1935, align 4
  %1937 = fmul fast float %1821, 2.770000e+02
  %1938 = fmul fast float %1937, %1911
  %1939 = fmul fast float %1817, 5.990000e+02
  %1940 = fadd fast float %1938, %1939
  %1941 = fptoui float %1940 to i32
  %1942 = mul i32 %1941, -63
  %1943 = lshr i32 %1942, 17
  %1944 = xor i32 %1943, %1942
  %1945 = mul i32 %1944, -511
  %1946 = mul i32 %1944, -8176
  %1947 = xor i32 %1945, %1946
  %1948 = mul i32 %1947, -7
  %1949 = mul i32 %1947, -7168
  %1950 = xor i32 %1948, %1949
  %1951 = lshr i32 %1950, 15
  %1952 = xor i32 %1951, %1948
  %1953 = and i32 %1952, 63
  %1954 = mul i32 %1953, 2
  %1955 = add i32 0, %1954
  %1956 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1955
  %1957 = load float, float* %1956, align 4
  %1958 = mul i32 %1953, 2
  %1959 = add i32 1, %1958
  %1960 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %1959
  %1961 = load float, float* %1960, align 4
  %1962 = call float @dx.op.dot2.f32(i32 54, float %1932, float %1936, float %1957, float %1961)  ; Dot2(ax,ay,bx,by)
  %1963 = fsub fast float -0.000000e+00, %1957
  %1964 = call float @dx.op.dot2.f32(i32 54, float %1932, float %1936, float %1963, float %1961)  ; Dot2(ax,ay,bx,by)
  %1965 = fmul fast float %1962, %1907
  %1966 = fmul fast float %1964, %1907
  %1967 = fdiv fast float 2.000000e+00, %1873
  %1968 = fmul fast float %1896, 9.765625e-04
  %1969 = fcmp fast olt float %1891, %1968
  %1970 = fcmp fast olt float %1892, %1968
  %1971 = or i1 %1969, %1970
  %1972 = fsub fast float 1.000000e+00, %1968
  %1973 = fcmp fast ogt float %1891, %1972
  %1974 = fcmp fast ogt float %1892, %1972
  %1975 = or i1 %1973, %1974
  %1976 = or i1 %1971, %1975
  %1977 = fmul fast float %1965, 2.000000e+00
  br i1 %1976, label %1978, label %1982, !dx.controlflow.hints !74

; <label>:1978                                    ; preds = %1906
  %1979 = fmul fast float %1966, 2.000000e+00
  %1980 = fadd fast float %1977, %1878
  %1981 = fadd fast float %1979, %1879
  br label %1982

; <label>:1982                                    ; preds = %1978, %1906
  %1983 = phi float [ %1980, %1978 ], [ %1878, %1906 ]
  %1984 = phi float [ %1981, %1978 ], [ %1879, %1906 ]
  %1985 = phi i32 [ 3, %1978 ], [ 2, %1906 ]
  %1986 = fadd fast float %1965, %1882
  %1987 = fadd fast float %1966, %1883
  %1988 = fmul fast float %1977, %1967
  %1989 = fmul fast float %1967, 2.000000e+00
  %1990 = fmul fast float %1989, %1966
  %1991 = fadd fast float %1988, %1817
  %1992 = fadd fast float %1990, %1821
  br label %2072

; <label>:1993                                    ; preds = %1833
  %1994 = call float @dx.op.unary.f32(i32 21, float %1870)  ; Exp(value)
  %1995 = fmul fast float %1994, 9.765625e-04
  %1996 = fcmp fast olt float %1891, %1995
  %1997 = fcmp fast olt float %1892, %1995
  %1998 = or i1 %1996, %1997
  %1999 = fsub fast float 1.000000e+00, %1995
  %2000 = fcmp fast ogt float %1891, %1999
  %2001 = fcmp fast ogt float %1892, %1999
  %2002 = or i1 %2000, %2001
  %2003 = or i1 %1998, %2002
  br i1 %2003, label %2004, label %2072, !dx.controlflow.hints !75

; <label>:2004                                    ; preds = %1993
  %2005 = fmul fast float %1839, 5.000000e-01
  %2006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.i32 %2006, 0
  %2008 = fmul fast float %1821, 3.530000e+02
  %2009 = uitofp i32 %1886 to float
  %2010 = fmul fast float %2008, %2009
  %2011 = fmul fast float %1817, 6.130000e+02
  %2012 = fadd fast float %2010, %2011
  %2013 = fptoui float %2012 to i32
  %2014 = add i32 %2007, %2013
  %2015 = mul i32 %2014, -63
  %2016 = lshr i32 %2015, 17
  %2017 = xor i32 %2016, %2015
  %2018 = mul i32 %2017, -511
  %2019 = mul i32 %2017, -8176
  %2020 = xor i32 %2018, %2019
  %2021 = mul i32 %2020, -7
  %2022 = mul i32 %2020, -7168
  %2023 = xor i32 %2021, %2022
  %2024 = lshr i32 %2023, 15
  %2025 = xor i32 %2024, %2021
  %2026 = and i32 %2025, 15
  %2027 = mul i32 %2026, 2
  %2028 = add i32 0, %2027
  %2029 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2028
  %2030 = load float, float* %2029, align 4
  %2031 = mul i32 %2026, 2
  %2032 = add i32 1, %2031
  %2033 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %2032
  %2034 = load float, float* %2033, align 4
  %2035 = fmul fast float %1821, 2.770000e+02
  %2036 = fmul fast float %2035, %2009
  %2037 = fmul fast float %1817, 5.990000e+02
  %2038 = fadd fast float %2036, %2037
  %2039 = fptoui float %2038 to i32
  %2040 = mul i32 %2039, -63
  %2041 = lshr i32 %2040, 17
  %2042 = xor i32 %2041, %2040
  %2043 = mul i32 %2042, -511
  %2044 = mul i32 %2042, -8176
  %2045 = xor i32 %2043, %2044
  %2046 = mul i32 %2045, -7
  %2047 = mul i32 %2045, -7168
  %2048 = xor i32 %2046, %2047
  %2049 = lshr i32 %2048, 15
  %2050 = xor i32 %2049, %2046
  %2051 = and i32 %2050, 63
  %2052 = mul i32 %2051, 2
  %2053 = add i32 0, %2052
  %2054 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2053
  %2055 = load float, float* %2054, align 4
  %2056 = mul i32 %2051, 2
  %2057 = add i32 1, %2056
  %2058 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %2057
  %2059 = load float, float* %2058, align 4
  %2060 = call float @dx.op.dot2.f32(i32 54, float %2030, float %2034, float %2055, float %2059)  ; Dot2(ax,ay,bx,by)
  %2061 = fsub fast float -0.000000e+00, %2055
  %2062 = call float @dx.op.dot2.f32(i32 54, float %2030, float %2034, float %2061, float %2059)  ; Dot2(ax,ay,bx,by)
  %2063 = fmul fast float %2060, %2005
  %2064 = fmul fast float %2062, %2005
  %2065 = fadd fast float %2063, %1878
  %2066 = fadd fast float %2064, %1879
  %2067 = fdiv fast float 2.000000e+00, %1873
  %2068 = fmul fast float %2067, %2063
  %2069 = fmul fast float %2064, %2067
  %2070 = fadd fast float %2068, %1817
  %2071 = fadd fast float %2069, %1821
  br label %2072

; <label>:2072                                    ; preds = %2004, %1993, %1982, %1895
  %2073 = phi float [ %1986, %1982 ], [ %1882, %1895 ], [ %1882, %2004 ], [ %1882, %1993 ]
  %2074 = phi float [ %1987, %1982 ], [ %1883, %1895 ], [ %1883, %2004 ], [ %1883, %1993 ]
  %2075 = phi float [ %1983, %1982 ], [ %1878, %1895 ], [ %2065, %2004 ], [ %1878, %1993 ]
  %2076 = phi float [ %1984, %1982 ], [ %1879, %1895 ], [ %2066, %2004 ], [ %1879, %1993 ]
  %2077 = phi i32 [ %1985, %1982 ], [ 0, %1895 ], [ 1, %2004 ], [ 0, %1993 ]
  %2078 = phi float [ %1991, %1982 ], [ %1817, %1895 ], [ %2070, %2004 ], [ %1817, %1993 ]
  %2079 = phi float [ %1992, %1982 ], [ %1821, %1895 ], [ %2071, %2004 ], [ %1821, %1993 ]
  %2080 = fsub fast float %1844, %1842
  %2081 = fptoui float %2080 to i32
  %2082 = add i32 %2081, 320
  %2083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %2082)  ; CBufferLoadLegacy(handle,regIndex)
  %2084 = extractvalue %dx.types.CBufRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.CBufRet.f32 %2083, 1
  %2086 = fcmp fast une float %1869, %1844
  %2087 = fsub fast float %2078, %2084
  %2088 = fsub fast float %2079, %2085
  %2089 = call float @dx.op.unary.f32(i32 6, float %2087)  ; FAbs(value)
  %2090 = call float @dx.op.unary.f32(i32 6, float %2088)  ; FAbs(value)
  %2091 = fmul fast float %2089, %1873
  %2092 = fmul fast float %2090, %1873
  %2093 = fcmp fast olt float %2091, 1.000000e+00
  %2094 = fcmp fast olt float %2092, 1.000000e+00
  %2095 = and i1 %2093, %2094
  %2096 = or i1 %2086, %2095
  br i1 %2096, label %2097, label %2465, !dx.controlflow.hints !76

; <label>:2097                                    ; preds = %2072
  %2098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.i32 %2098, 2
  %2100 = sitofp i32 %2099 to float
  %2101 = fsub fast float %1869, %2100
  %2102 = call float @dx.op.unary.f32(i32 27, float %2101)  ; Round_ni(value)
  %2103 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %2104 = icmp eq i32 %2077, 0
  %2105 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2106 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  br i1 %2104, label %2177, label %2107, !dx.controlflow.hints !77

; <label>:2107                                    ; preds = %2097
  %2108 = and i32 %2077, 1
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2123, label %2110, !dx.controlflow.hints !78

; <label>:2110                                    ; preds = %2107
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = fmul fast float %2105, %2112
  %2114 = fmul fast float %2106, %2112
  %2115 = fptoui float %2113 to i32
  %2116 = fptoui float %2114 to i32
  %2117 = fptoui float %2102 to i32
  %2118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2115, i32 %2116, i32 %2117, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = extractvalue %dx.types.ResRet.f32 %2118, 3
  br label %2129

; <label>:2123                                    ; preds = %2107
  %2124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %2105, float %2106, float %2102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = extractvalue %dx.types.ResRet.f32 %2124, 1
  %2127 = extractvalue %dx.types.ResRet.f32 %2124, 2
  %2128 = extractvalue %dx.types.ResRet.f32 %2124, 3
  br label %2129

; <label>:2129                                    ; preds = %2123, %2110
  %2130 = phi float [ %2119, %2110 ], [ %2125, %2123 ]
  %2131 = phi float [ %2120, %2110 ], [ %2126, %2123 ]
  %2132 = phi float [ %2121, %2110 ], [ %2127, %2123 ]
  %2133 = phi float [ %2122, %2110 ], [ %2128, %2123 ]
  %2134 = fcmp fast ogt float %2103, 0.000000e+00
  br i1 %2134, label %2135, label %2205, !dx.controlflow.hints !79

; <label>:2135                                    ; preds = %2129
  %2136 = and i32 %2077, 2
  %2137 = icmp eq i32 %2136, 0
  %2138 = fadd fast float %2102, 1.000000e+00
  %2139 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2140 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  br i1 %2137, label %2154, label %2141, !dx.controlflow.hints !80

; <label>:2141                                    ; preds = %2135
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = fmul fast float %2139, %2143
  %2145 = fmul fast float %2140, %2143
  %2146 = fptoui float %2144 to i32
  %2147 = fptoui float %2145 to i32
  %2148 = fptoui float %2138 to i32
  %2149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %2146, i32 %2147, i32 %2148, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.ResRet.f32 %2149, 3
  br label %2160

; <label>:2154                                    ; preds = %2135
  %2155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %2139, float %2140, float %2138, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = extractvalue %dx.types.ResRet.f32 %2155, 1
  %2158 = extractvalue %dx.types.ResRet.f32 %2155, 2
  %2159 = extractvalue %dx.types.ResRet.f32 %2155, 3
  br label %2160

; <label>:2160                                    ; preds = %2154, %2141
  %2161 = phi float [ %2150, %2141 ], [ %2156, %2154 ]
  %2162 = phi float [ %2151, %2141 ], [ %2157, %2154 ]
  %2163 = phi float [ %2152, %2141 ], [ %2158, %2154 ]
  %2164 = phi float [ %2153, %2141 ], [ %2159, %2154 ]
  %2165 = fsub fast float %2161, %2130
  %2166 = fsub fast float %2162, %2131
  %2167 = fsub fast float %2163, %2132
  %2168 = fsub fast float %2164, %2133
  %2169 = fmul fast float %2165, %2103
  %2170 = fmul fast float %2166, %2103
  %2171 = fmul fast float %2167, %2103
  %2172 = fmul fast float %2168, %2103
  %2173 = fadd fast float %2169, %2130
  %2174 = fadd fast float %2170, %2131
  %2175 = fadd fast float %2171, %2132
  %2176 = fadd fast float %2172, %2133
  br label %2205

; <label>:2177                                    ; preds = %2097
  %2178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %2105, float %2106, float %2102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2182 = extractvalue %dx.types.ResRet.f32 %2178, 3
  %2183 = fcmp fast ogt float %2103, 0.000000e+00
  br i1 %2183, label %2184, label %2205, !dx.controlflow.hints !81

; <label>:2184                                    ; preds = %2177
  %2185 = fadd fast float %2102, 1.000000e+00
  %2186 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2187 = call float @dx.op.unary.f32(i32 22, float %2074)  ; Frc(value)
  %2188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %2186, float %2187, float %2185, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2189 = extractvalue %dx.types.ResRet.f32 %2188, 0
  %2190 = extractvalue %dx.types.ResRet.f32 %2188, 1
  %2191 = extractvalue %dx.types.ResRet.f32 %2188, 2
  %2192 = extractvalue %dx.types.ResRet.f32 %2188, 3
  %2193 = fsub fast float %2189, %2179
  %2194 = fsub fast float %2190, %2180
  %2195 = fsub fast float %2191, %2181
  %2196 = fsub fast float %2192, %2182
  %2197 = fmul fast float %2193, %2103
  %2198 = fmul fast float %2194, %2103
  %2199 = fmul fast float %2195, %2103
  %2200 = fmul fast float %2196, %2103
  %2201 = fadd fast float %2197, %2179
  %2202 = fadd fast float %2198, %2180
  %2203 = fadd fast float %2199, %2181
  %2204 = fadd fast float %2200, %2182
  br label %2205

; <label>:2205                                    ; preds = %2184, %2177, %2160, %2129
  %2206 = phi float [ %2173, %2160 ], [ %2130, %2129 ], [ %2201, %2184 ], [ %2179, %2177 ]
  %2207 = phi float [ %2174, %2160 ], [ %2131, %2129 ], [ %2202, %2184 ], [ %2180, %2177 ]
  %2208 = phi float [ %2175, %2160 ], [ %2132, %2129 ], [ %2203, %2184 ], [ %2181, %2177 ]
  %2209 = phi float [ %2176, %2160 ], [ %2133, %2129 ], [ %2204, %2184 ], [ %2182, %2177 ]
  %2210 = fadd fast float %2206, -5.000000e-01
  %2211 = fadd fast float %2208, -5.000000e-01
  %2212 = fmul fast float %2210, 0xBFD5555560000000
  %2213 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2211, float %2212)  ; FMad(a,b,c)
  %2214 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2207, float 0.000000e+00)  ; FMad(a,b,c)
  %2215 = fadd fast float %2214, %2209
  %2216 = fmul fast float %2210, -7.500000e-01
  %2217 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2211, float %2216)  ; FMad(a,b,c)
  %2218 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2207, float 0.000000e+00)  ; FMad(a,b,c)
  %2219 = fadd fast float %2218, %2209
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 0
  %2222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.CBufRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.CBufRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.CBufRet.f32 %2222, 3
  %2227 = fsub fast float %2223, %2213
  %2228 = fsub fast float %2224, %2215
  %2229 = fsub fast float %2225, %2217
  %2230 = fsub fast float %2226, %2219
  %2231 = fmul fast float %2227, %2221
  %2232 = fmul fast float %2228, %2221
  %2233 = fmul fast float %2229, %2221
  %2234 = fmul fast float %2230, %2221
  %2235 = fadd fast float %2231, %2213
  %2236 = fadd fast float %2232, %2215
  %2237 = fadd fast float %2233, %2217
  %2238 = fadd fast float %2234, %2219
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 536870911
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, %2078
  %2244 = fmul fast float %2242, %2079
  %2245 = fptoui float %2243 to i32
  %2246 = fptoui float %2244 to i32
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 31
  %2250 = lshr i32 %2245, %2249
  %2251 = lshr i32 %2246, %2249
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 31
  %2255 = shl i32 1, %2254
  %2256 = call i32 @dx.op.binary.i32(i32 40, i32 %2255, i32 4)  ; UMin(a,b)
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = extractvalue %dx.types.ResRet.i32 %2257, 1
  %2260 = icmp eq i32 %2256, 0
  br i1 %2260, label %2302, label %2261

; <label>:2261                                    ; preds = %2205
  br label %2262

; <label>:2262                                    ; preds = %2290, %2261
  %2263 = phi i32 [ %2293, %2290 ], [ 0, %2261 ]
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 16
  %2267 = and i32 %2266, 31
  %2268 = shl i32 %2251, %2267
  %2269 = add i32 %2268, %2250
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 31
  %2273 = shl i32 %2269, %2272
  %2274 = add i32 %2273, %2263
  %2275 = shl i32 %2274, 2
  %2276 = add i32 %2275, 32
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = icmp slt i32 %2278, 0
  %2280 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2263
  %2281 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2263
  %2282 = bitcast float* %2280 to i32*
  %2283 = bitcast float* %2281 to i32*
  br i1 %2279, label %2284, label %2290, !dx.controlflow.hints !82

; <label>:2284                                    ; preds = %2262
  %2285 = and i32 %2278, 1073741823
  %2286 = add nuw nsw i32 %2285, 20
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = extractvalue %dx.types.ResRet.i32 %2287, 1
  br label %2290

; <label>:2290                                    ; preds = %2284, %2262
  %2291 = phi i32 [ %2288, %2284 ], [ %2258, %2262 ]
  %2292 = phi i32 [ %2289, %2284 ], [ %2259, %2262 ]
  store i32 %2291, i32* %2282, align 4
  store i32 %2292, i32* %2283, align 4
  %2293 = add nuw i32 %2263, 1
  %2294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2295 = extractvalue %dx.types.CBufRet.i32 %2294, 2
  %2296 = icmp eq i32 %2295, 0
  %2297 = icmp ugt i32 %2278, -1073741825
  %2298 = and i1 %2297, %2296
  %2299 = icmp ult i32 %2293, %2256
  %2300 = and i1 %2298, %2299
  br i1 %2300, label %2262, label %2301, !dx.controlflow.hints !83

; <label>:2301                                    ; preds = %2290
  br label %2302

; <label>:2302                                    ; preds = %2301, %2205
  %2303 = phi i32 [ 0, %2205 ], [ %2293, %2301 ]
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 2
  %2306 = fptoui float %2305 to i32
  %2307 = icmp eq i32 %2306, 0
  br i1 %2307, label %2359, label %2308

; <label>:2308                                    ; preds = %2302
  br label %2309

; <label>:2309                                    ; preds = %2354, %2308
  %2310 = phi i32 [ %2355, %2354 ], [ %2303, %2308 ]
  %2311 = phi i32 [ %2356, %2354 ], [ 0, %2308 ]
  %2312 = lshr i32 %2311, 2
  %2313 = and i32 %2311, 3
  %2314 = add nuw nsw i32 %2312, 83
  %2315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %2314)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.i32 %2315, 0
  %2317 = extractvalue %dx.types.CBufRet.i32 %2315, 1
  %2318 = extractvalue %dx.types.CBufRet.i32 %2315, 2
  %2319 = extractvalue %dx.types.CBufRet.i32 %2315, 3
  %2320 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 0
  store i32 %2316, i32* %2320, align 4
  %2321 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 1
  store i32 %2317, i32* %2321, align 4
  %2322 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 2
  store i32 %2318, i32* %2322, align 4
  %2323 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 3
  store i32 %2319, i32* %2323, align 4
  %2324 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i32 0, i32 %2313
  %2325 = load i32, i32* %2324, align 4, !tbaa !54
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 16
  %2329 = and i32 %2328, 31
  %2330 = shl i32 %2251, %2329
  %2331 = add i32 %2330, %2250
  %2332 = shl i32 %2331, 2
  %2333 = add i32 %2332, %2325
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2354, label %2337, !dx.controlflow.hints !84

; <label>:2337                                    ; preds = %2309
  %2338 = icmp slt i32 %2335, 0
  %2339 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2310
  %2340 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2310
  %2341 = bitcast float* %2339 to i32*
  %2342 = bitcast float* %2340 to i32*
  br i1 %2338, label %2343, label %2350, !dx.controlflow.hints !85

; <label>:2343                                    ; preds = %2337
  %2344 = and i32 %2335, 1073741823
  %2345 = add i32 %2325, 20
  %2346 = add i32 %2345, %2344
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.i32 %2347, 1
  br label %2350

; <label>:2350                                    ; preds = %2343, %2337
  %2351 = phi i32 [ %2348, %2343 ], [ %2258, %2337 ]
  %2352 = phi i32 [ %2349, %2343 ], [ %2259, %2337 ]
  store i32 %2351, i32* %2341, align 4
  store i32 %2352, i32* %2342, align 4
  %2353 = add i32 %2310, 1
  br label %2354

; <label>:2354                                    ; preds = %2350, %2309
  %2355 = phi i32 [ %2310, %2309 ], [ %2353, %2350 ]
  %2356 = add nuw i32 %2311, 1
  %2357 = icmp eq i32 %2356, %2306
  br i1 %2357, label %2358, label %2309

; <label>:2358                                    ; preds = %2354
  br label %2359

; <label>:2359                                    ; preds = %2358, %2302
  %2360 = phi i32 [ %2303, %2302 ], [ %2355, %2358 ]
  %2361 = icmp eq i32 %2360, 1
  %2362 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 0
  %2363 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 0
  br i1 %2361, label %2364, label %2367, !dx.controlflow.hints !86

; <label>:2364                                    ; preds = %2359
  %2365 = load float, float* %2362, align 4
  %2366 = load float, float* %2363, align 4
  br label %2394

; <label>:2367                                    ; preds = %2359
  %2368 = load float, float* %2362, align 4
  %2369 = load float, float* %2363, align 4
  %2370 = fdiv fast float 1.000000e+00, %2369
  %2371 = fsub fast float %2368, %2370
  %2372 = icmp ugt i32 %2360, 1
  br i1 %2372, label %2373, label %2389

; <label>:2373                                    ; preds = %2367
  br label %2374

; <label>:2374                                    ; preds = %2374, %2373
  %2375 = phi float [ %2384, %2374 ], [ %2371, %2373 ]
  %2376 = phi float [ %2385, %2374 ], [ %2368, %2373 ]
  %2377 = phi i32 [ %2386, %2374 ], [ 1, %2373 ]
  %2378 = getelementptr [12 x float], [12 x float]* %47, i32 0, i32 %2377
  %2379 = load float, float* %2378, align 4
  %2380 = getelementptr [12 x float], [12 x float]* %48, i32 0, i32 %2377
  %2381 = load float, float* %2380, align 4
  %2382 = fdiv fast float 1.000000e+00, %2381
  %2383 = fsub fast float %2379, %2382
  %2384 = call float @dx.op.binary.f32(i32 36, float %2375, float %2383)  ; FMin(a,b)
  %2385 = call float @dx.op.binary.f32(i32 35, float %2376, float %2379)  ; FMax(a,b)
  %2386 = add nuw i32 %2377, 1
  %2387 = icmp eq i32 %2386, %2360
  br i1 %2387, label %2388, label %2374

; <label>:2388                                    ; preds = %2374
  br label %2389

; <label>:2389                                    ; preds = %2388, %2367
  %2390 = phi float [ %2371, %2367 ], [ %2384, %2388 ]
  %2391 = phi float [ %2368, %2367 ], [ %2385, %2388 ]
  %2392 = fsub fast float %2391, %2390
  %2393 = fdiv fast float 1.000000e+00, %2392
  br label %2394

; <label>:2394                                    ; preds = %2389, %2364
  %2395 = phi float [ %2365, %2364 ], [ %2391, %2389 ]
  %2396 = phi float [ %2366, %2364 ], [ %2393, %2389 ]
  %2397 = fadd fast float %1825, %2395
  %2398 = fmul fast float %2397, %2396
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = fmul fast float %2399, 2.000000e+00
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2235, %2235
  %2403 = fsub fast float %2236, %2402
  %2404 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2403)  ; FMax(a,b)
  %2405 = fdiv fast float 1.000000e+00, %2404
  %2406 = fmul fast float %2236, %2235
  %2407 = fsub fast float %2237, %2406
  %2408 = fsub fast float %2401, %2235
  %2409 = fmul fast float %2401, %2401
  %2410 = fsub fast float %2409, %2236
  %2411 = fmul fast float %2405, %2407
  %2412 = fmul fast float %2411, %2408
  %2413 = fsub fast float %2410, %2412
  %2414 = fmul fast float %2236, %2236
  %2415 = fsub fast float %2238, %2414
  %2416 = fmul fast float %2407, %2407
  %2417 = fmul fast float %2416, %2405
  %2418 = fsub fast float %2415, %2417
  %2419 = fdiv fast float %2413, %2418
  %2420 = fmul fast float %2419, %2407
  %2421 = fsub fast float %2408, %2420
  %2422 = fmul fast float %2421, %2405
  %2423 = fmul fast float %2422, %2235
  %2424 = fsub fast float 1.000000e+00, %2423
  %2425 = fmul fast float %2419, %2236
  %2426 = fsub fast float %2424, %2425
  %2427 = fmul fast float %2422, %2422
  %2428 = fmul fast float %2419, 4.000000e+00
  %2429 = fmul fast float %2428, %2426
  %2430 = fsub fast float %2427, %2429
  %2431 = call float @dx.op.unary.f32(i32 24, float %2430)  ; Sqrt(value)
  %2432 = fcmp fast oge float %2422, 0.000000e+00
  %2433 = fsub fast float -0.000000e+00, %2431
  %2434 = select i1 %2432, float %2433, float %2431
  %2435 = fsub fast float %2434, %2422
  %2436 = fdiv fast float %2435, %2419
  %2437 = fdiv fast float %2426, %2435
  %2438 = fmul fast float %2436, 5.000000e-01
  %2439 = fmul fast float %2437, 2.000000e+00
  %2440 = select i1 %2432, float %2438, float %2439
  %2441 = select i1 %2432, float %2439, float %2438
  %2442 = call float @dx.op.binary.f32(i32 35, float %2440, float %2441)  ; FMax(a,b)
  %2443 = call float @dx.op.binary.f32(i32 36, float %2440, float %2441)  ; FMin(a,b)
  %2444 = fcmp fast ogt float %2401, %2442
  %2445 = fsub fast float %2401, %2443
  %2446 = fsub fast float %2401, %2442
  %2447 = fsub fast float %2442, %2443
  %2448 = select i1 %2444, float %2446, float %2447
  %2449 = fmul float %2445, %2448
  %2450 = select i1 %2444, float %2443, float %2401
  %2451 = fcmp fast ogt float %2401, %2443
  %2452 = fmul fast float %2450, %2442
  %2453 = fadd fast float %2450, %2442
  %2454 = fmul fast float %2453, %2235
  %2455 = fadd fast float %2452, %2236
  %2456 = fsub fast float %2455, %2454
  %2457 = fdiv fast float %2456, %2449
  %2458 = select i1 %2451, float %2457, float 0.000000e+00
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = select i1 %2444, float %2459, float %2458
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2463 = fmul fast float %2462, %2461
  %2464 = fsub fast float 1.000000e+00, %2463
  br label %2465

; <label>:2465                                    ; preds = %2394, %2072, %1798, %1756
  %2466 = phi float [ 1.000000e+00, %1756 ], [ %2464, %2394 ], [ 1.000000e+00, %1798 ], [ 1.000000e+00, %2072 ]
  %2467 = fcmp fast ogt float %1791, 0.000000e+00
  br i1 %2467, label %2468, label %2636, !dx.controlflow.hints !92

; <label>:2468                                    ; preds = %2465
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2472 = extractvalue %dx.types.CBufRet.f32 %2471, 2
  %2473 = fmul fast float %2470, %238
  %2474 = fadd fast float %2472, %265
  %2475 = fadd fast float %2474, %2473
  %2476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2477 = extractvalue %dx.types.CBufRet.f32 %2476, 2
  %2478 = extractvalue %dx.types.CBufRet.f32 %2476, 3
  %2479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2480 = extractvalue %dx.types.CBufRet.f32 %2479, 2
  %2481 = call float @dx.op.binary.f32(i32 35, float %2475, float 0.000000e+00)  ; FMax(a,b)
  %2482 = fadd fast float %2481, 0x3F10000000000000
  %2483 = fcmp fast oeq float %2480, 0.000000e+00
  br i1 %2483, label %2484, label %2551, !dx.controlflow.hints !60

; <label>:2484                                    ; preds = %2468
  %2485 = extractvalue %dx.types.CBufRet.f32 %2476, 1
  %2486 = extractvalue %dx.types.CBufRet.f32 %2476, 0
  %2487 = fmul fast float %2486, %1687
  %2488 = fmul fast float %2485, %1688
  %2489 = fadd fast float %2487, 5.000000e-01
  %2490 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2493 = fsub fast float %2489, %2490
  %2494 = fsub fast float %2491, %2492
  %2495 = fadd fast float %2490, -5.000000e-01
  %2496 = fadd fast float %2492, -5.000000e-01
  %2497 = fmul fast float %2493, 2.000000e+00
  %2498 = fsub fast float 3.000000e+00, %2497
  %2499 = fadd fast float %2497, 1.000000e+00
  %2500 = fsub fast float 2.000000e+00, %2493
  %2501 = bitcast float %2498 to i32
  %2502 = sub nsw i32 2129859010, %2501
  %2503 = bitcast i32 %2502 to float
  %2504 = fmul fast float %2503, %2500
  %2505 = fadd fast float %2504, -1.000000e+00
  %2506 = bitcast float %2499 to i32
  %2507 = sub nsw i32 2129859010, %2506
  %2508 = bitcast i32 %2507 to float
  %2509 = fmul fast float %2508, %2493
  %2510 = fadd fast float %2509, 1.000000e+00
  %2511 = fmul fast float %2494, 2.000000e+00
  %2512 = fsub fast float 3.000000e+00, %2511
  %2513 = fadd fast float %2511, 1.000000e+00
  %2514 = fsub fast float 2.000000e+00, %2494
  %2515 = bitcast float %2512 to i32
  %2516 = sub nsw i32 2129859010, %2515
  %2517 = bitcast i32 %2516 to float
  %2518 = fmul fast float %2517, %2514
  %2519 = fadd fast float %2518, -1.000000e+00
  %2520 = bitcast float %2513 to i32
  %2521 = sub nsw i32 2129859010, %2520
  %2522 = bitcast i32 %2521 to float
  %2523 = fmul fast float %2522, %2494
  %2524 = fadd fast float %2523, 1.000000e+00
  %2525 = fadd fast float %2505, %2495
  %2526 = fmul fast float %2525, %2477
  %2527 = fadd fast float %2519, %2496
  %2528 = fmul fast float %2527, %2478
  %2529 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %2526, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float %2482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = fmul fast float %2530, %2498
  %2532 = fadd fast float %2510, %2495
  %2533 = fmul fast float %2532, %2477
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %2533, float %2528, float undef, float undef, i32 0, i32 0, i32 undef, float %2482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = fmul fast float %2535, %2499
  %2537 = fadd fast float %2524, %2496
  %2538 = fmul fast float %2537, %2478
  %2539 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %2526, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float %2482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = fmul fast float %2540, %2498
  %2542 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %2533, float %2538, float undef, float undef, i32 0, i32 0, i32 undef, float %2482)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2543 = extractvalue %dx.types.ResRet.f32 %2542, 0
  %2544 = fmul fast float %2543, %2499
  %2545 = fadd fast float %2544, %2541
  %2546 = fmul fast float %2545, %2513
  %2547 = fadd fast float %2536, %2531
  %2548 = fmul fast float %2547, %2512
  %2549 = fadd fast float %2548, %2546
  %2550 = fmul fast float %2549, 6.250000e-02
  br label %2636

; <label>:2551                                    ; preds = %2468
  %2552 = fmul fast float %276, 0x401921FB60000000
  %2553 = call float @dx.op.unary.f32(i32 13, float %2552)  ; Sin(value)
  %2554 = call float @dx.op.unary.f32(i32 12, float %2552)  ; Cos(value)
  %2555 = fsub fast float -0.000000e+00, %2553
  br label %2556

; <label>:2556                                    ; preds = %2605, %2551
  %2557 = phi float [ 0.000000e+00, %2551 ], [ %2600, %2605 ]
  %2558 = phi float [ 0.000000e+00, %2551 ], [ %2602, %2605 ]
  %2559 = phi i32 [ 0, %2551 ], [ %2606, %2605 ]
  %2560 = mul i32 %2559, 2
  %2561 = add i32 0, %2560
  %2562 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2561
  %2563 = load float, float* %2562, align 4
  %2564 = mul i32 %2559, 2
  %2565 = add i32 1, %2564
  %2566 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2565
  %2567 = load float, float* %2566, align 4
  %2568 = fmul fast float %2563, %2554
  %2569 = call float @dx.op.tertiary.f32(i32 46, float %2567, float %2555, float %2568)  ; FMad(a,b,c)
  %2570 = fmul fast float %2563, %2553
  %2571 = call float @dx.op.tertiary.f32(i32 46, float %2567, float %2554, float %2570)  ; FMad(a,b,c)
  %2572 = fmul fast float %2569, %2480
  %2573 = fmul fast float %2571, %2480
  %2574 = fadd fast float %2572, %1687
  %2575 = fadd fast float %2573, %1688
  %2576 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %32, float %2574, float %2575, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2577 = extractvalue %dx.types.ResRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.ResRet.f32 %2576, 1
  %2579 = extractvalue %dx.types.ResRet.f32 %2576, 2
  %2580 = extractvalue %dx.types.ResRet.f32 %2576, 3
  %2581 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 0
  store float %2577, float* %2581, align 4
  %2582 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 1
  store float %2578, float* %2582, align 4
  %2583 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 2
  store float %2579, float* %2583, align 4
  %2584 = getelementptr inbounds [4 x float], [4 x float]* %56, i32 0, i32 3
  store float %2580, float* %2584, align 4
  %2585 = fsub fast float %2577, %2482
  %2586 = fcmp fast olt float %2585, 0.000000e+00
  %2587 = select i1 %2586, float 0.000000e+00, float 1.000000e+00
  %2588 = fadd fast float %2587, %2557
  %2589 = fmul fast float %2587, %2585
  %2590 = fadd fast float %2589, %2558
  br label %2591

; <label>:2591                                    ; preds = %2591, %2556
  %2592 = phi i32 [ 1, %2556 ], [ %2603, %2591 ]
  %2593 = phi float [ %2590, %2556 ], [ %2602, %2591 ]
  %2594 = phi float [ %2588, %2556 ], [ %2600, %2591 ]
  %2595 = getelementptr [4 x float], [4 x float]* %56, i32 0, i32 %2592
  %2596 = load float, float* %2595, align 4, !tbaa !61
  %2597 = fsub fast float %2596, %2482
  %2598 = fcmp fast olt float %2597, 0.000000e+00
  %2599 = select i1 %2598, float 0.000000e+00, float 1.000000e+00
  %2600 = fadd fast float %2599, %2594
  %2601 = fmul fast float %2599, %2597
  %2602 = fadd fast float %2601, %2593
  %2603 = add nuw nsw i32 %2592, 1
  %2604 = icmp eq i32 %2603, 4
  br i1 %2604, label %2605, label %2591, !llvm.loop !63

; <label>:2605                                    ; preds = %2591
  %2606 = add nuw nsw i32 %2559, 1
  %2607 = icmp eq i32 %2606, 8
  br i1 %2607, label %2608, label %2556, !llvm.loop !65

; <label>:2608                                    ; preds = %2605
  %2609 = fdiv fast float 1.000000e+00, %2600
  %2610 = fmul fast float %2609, %2602
  %2611 = fdiv fast float 1.000000e+00, %2482
  %2612 = fmul fast float %2610, %2611
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = call float @dx.op.binary.f32(i32 35, float %2613, float 0.000000e+00)  ; FMax(a,b)
  %2615 = fmul fast float %2600, 3.125000e-02
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = fmul fast float %2616, 2.000000e+00
  %2618 = fadd fast float %2617, -1.000000e+00
  %2619 = fcmp fast ogt float %2618, 0.000000e+00
  %2620 = fcmp fast olt float %2618, 0.000000e+00
  %2621 = zext i1 %2619 to i32
  %2622 = zext i1 %2620 to i32
  %2623 = sub nsw i32 %2621, %2622
  %2624 = sitofp i32 %2623 to float
  %2625 = fmul fast float %2624, %2618
  %2626 = fsub fast float 1.000000e+00, %2625
  %2627 = fmul fast float %2626, %2626
  %2628 = fmul fast float %2627, %2626
  %2629 = fsub fast float %2626, %2628
  %2630 = fmul fast float %2629, %2614
  %2631 = fsub fast float 1.000000e+00, %2628
  %2632 = fsub fast float %2631, %2630
  %2633 = fmul fast float %2624, 5.000000e-01
  %2634 = fmul fast float %2633, %2632
  %2635 = fsub fast float 5.000000e-01, %2634
  br label %2636

; <label>:2636                                    ; preds = %2608, %2484, %2465
  %2637 = phi float [ 1.000000e+00, %2465 ], [ %2550, %2484 ], [ %2635, %2608 ]
  %2638 = fcmp fast ogt float %1789, 0.000000e+00
  br i1 %2638, label %2639, label %2807, !dx.controlflow.hints !93

; <label>:2639                                    ; preds = %2636
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 2
  %2642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2643 = extractvalue %dx.types.CBufRet.f32 %2642, 1
  %2644 = fmul fast float %2641, %238
  %2645 = fadd fast float %2643, %265
  %2646 = fadd fast float %2645, %2644
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 2
  %2649 = extractvalue %dx.types.CBufRet.f32 %2647, 3
  %2650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2651 = extractvalue %dx.types.CBufRet.f32 %2650, 1
  %2652 = call float @dx.op.binary.f32(i32 35, float %2646, float 0.000000e+00)  ; FMax(a,b)
  %2653 = fadd fast float %2652, 0x3F10000000000000
  %2654 = fcmp fast oeq float %2651, 0.000000e+00
  br i1 %2654, label %2655, label %2722, !dx.controlflow.hints !60

; <label>:2655                                    ; preds = %2639
  %2656 = extractvalue %dx.types.CBufRet.f32 %2647, 1
  %2657 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2658 = fmul fast float %2657, %1679
  %2659 = fmul fast float %2656, %1680
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = call float @dx.op.unary.f32(i32 27, float %2660)  ; Round_ni(value)
  %2662 = fadd fast float %2659, 5.000000e-01
  %2663 = call float @dx.op.unary.f32(i32 27, float %2662)  ; Round_ni(value)
  %2664 = fsub fast float %2660, %2661
  %2665 = fsub fast float %2662, %2663
  %2666 = fadd fast float %2661, -5.000000e-01
  %2667 = fadd fast float %2663, -5.000000e-01
  %2668 = fmul fast float %2664, 2.000000e+00
  %2669 = fsub fast float 3.000000e+00, %2668
  %2670 = fadd fast float %2668, 1.000000e+00
  %2671 = fsub fast float 2.000000e+00, %2664
  %2672 = bitcast float %2669 to i32
  %2673 = sub nsw i32 2129859010, %2672
  %2674 = bitcast i32 %2673 to float
  %2675 = fmul fast float %2674, %2671
  %2676 = fadd fast float %2675, -1.000000e+00
  %2677 = bitcast float %2670 to i32
  %2678 = sub nsw i32 2129859010, %2677
  %2679 = bitcast i32 %2678 to float
  %2680 = fmul fast float %2679, %2664
  %2681 = fadd fast float %2680, 1.000000e+00
  %2682 = fmul fast float %2665, 2.000000e+00
  %2683 = fsub fast float 3.000000e+00, %2682
  %2684 = fadd fast float %2682, 1.000000e+00
  %2685 = fsub fast float 2.000000e+00, %2665
  %2686 = bitcast float %2683 to i32
  %2687 = sub nsw i32 2129859010, %2686
  %2688 = bitcast i32 %2687 to float
  %2689 = fmul fast float %2688, %2685
  %2690 = fadd fast float %2689, -1.000000e+00
  %2691 = bitcast float %2684 to i32
  %2692 = sub nsw i32 2129859010, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2693, %2665
  %2695 = fadd fast float %2694, 1.000000e+00
  %2696 = fadd fast float %2676, %2666
  %2697 = fmul fast float %2696, %2648
  %2698 = fadd fast float %2690, %2667
  %2699 = fmul fast float %2698, %2649
  %2700 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %2697, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float %2653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2701 = extractvalue %dx.types.ResRet.f32 %2700, 0
  %2702 = fmul fast float %2701, %2669
  %2703 = fadd fast float %2681, %2666
  %2704 = fmul fast float %2703, %2648
  %2705 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %2704, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float %2653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2706 = extractvalue %dx.types.ResRet.f32 %2705, 0
  %2707 = fmul fast float %2706, %2670
  %2708 = fadd fast float %2695, %2667
  %2709 = fmul fast float %2708, %2649
  %2710 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %2697, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float %2653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = fmul fast float %2711, %2669
  %2713 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %2704, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float %2653)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2714 = extractvalue %dx.types.ResRet.f32 %2713, 0
  %2715 = fmul fast float %2714, %2670
  %2716 = fadd fast float %2715, %2712
  %2717 = fmul fast float %2716, %2684
  %2718 = fadd fast float %2707, %2702
  %2719 = fmul fast float %2718, %2683
  %2720 = fadd fast float %2719, %2717
  %2721 = fmul fast float %2720, 6.250000e-02
  br label %2807

; <label>:2722                                    ; preds = %2639
  %2723 = fmul fast float %276, 0x401921FB60000000
  %2724 = call float @dx.op.unary.f32(i32 13, float %2723)  ; Sin(value)
  %2725 = call float @dx.op.unary.f32(i32 12, float %2723)  ; Cos(value)
  %2726 = fsub fast float -0.000000e+00, %2724
  br label %2727

; <label>:2727                                    ; preds = %2776, %2722
  %2728 = phi float [ 0.000000e+00, %2722 ], [ %2771, %2776 ]
  %2729 = phi float [ 0.000000e+00, %2722 ], [ %2773, %2776 ]
  %2730 = phi i32 [ 0, %2722 ], [ %2777, %2776 ]
  %2731 = mul i32 %2730, 2
  %2732 = add i32 0, %2731
  %2733 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2732
  %2734 = load float, float* %2733, align 4
  %2735 = mul i32 %2730, 2
  %2736 = add i32 1, %2735
  %2737 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2736
  %2738 = load float, float* %2737, align 4
  %2739 = fmul fast float %2734, %2725
  %2740 = call float @dx.op.tertiary.f32(i32 46, float %2738, float %2726, float %2739)  ; FMad(a,b,c)
  %2741 = fmul fast float %2734, %2724
  %2742 = call float @dx.op.tertiary.f32(i32 46, float %2738, float %2725, float %2741)  ; FMad(a,b,c)
  %2743 = fmul fast float %2740, %2651
  %2744 = fmul fast float %2742, %2651
  %2745 = fadd fast float %2743, %1679
  %2746 = fadd fast float %2744, %1680
  %2747 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %32, float %2745, float %2746, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = extractvalue %dx.types.ResRet.f32 %2747, 3
  %2752 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 0
  store float %2748, float* %2752, align 4
  %2753 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 1
  store float %2749, float* %2753, align 4
  %2754 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 2
  store float %2750, float* %2754, align 4
  %2755 = getelementptr inbounds [4 x float], [4 x float]* %55, i32 0, i32 3
  store float %2751, float* %2755, align 4
  %2756 = fsub fast float %2748, %2653
  %2757 = fcmp fast olt float %2756, 0.000000e+00
  %2758 = select i1 %2757, float 0.000000e+00, float 1.000000e+00
  %2759 = fadd fast float %2758, %2728
  %2760 = fmul fast float %2758, %2756
  %2761 = fadd fast float %2760, %2729
  br label %2762

; <label>:2762                                    ; preds = %2762, %2727
  %2763 = phi i32 [ 1, %2727 ], [ %2774, %2762 ]
  %2764 = phi float [ %2761, %2727 ], [ %2773, %2762 ]
  %2765 = phi float [ %2759, %2727 ], [ %2771, %2762 ]
  %2766 = getelementptr [4 x float], [4 x float]* %55, i32 0, i32 %2763
  %2767 = load float, float* %2766, align 4, !tbaa !61
  %2768 = fsub fast float %2767, %2653
  %2769 = fcmp fast olt float %2768, 0.000000e+00
  %2770 = select i1 %2769, float 0.000000e+00, float 1.000000e+00
  %2771 = fadd fast float %2770, %2765
  %2772 = fmul fast float %2770, %2768
  %2773 = fadd fast float %2772, %2764
  %2774 = add nuw nsw i32 %2763, 1
  %2775 = icmp eq i32 %2774, 4
  br i1 %2775, label %2776, label %2762, !llvm.loop !63

; <label>:2776                                    ; preds = %2762
  %2777 = add nuw nsw i32 %2730, 1
  %2778 = icmp eq i32 %2777, 8
  br i1 %2778, label %2779, label %2727, !llvm.loop !65

; <label>:2779                                    ; preds = %2776
  %2780 = fdiv fast float 1.000000e+00, %2771
  %2781 = fmul fast float %2780, %2773
  %2782 = fdiv fast float 1.000000e+00, %2653
  %2783 = fmul fast float %2781, %2782
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = call float @dx.op.binary.f32(i32 35, float %2784, float 0.000000e+00)  ; FMax(a,b)
  %2786 = fmul fast float %2771, 3.125000e-02
  %2787 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2788 = fmul fast float %2787, 2.000000e+00
  %2789 = fadd fast float %2788, -1.000000e+00
  %2790 = fcmp fast ogt float %2789, 0.000000e+00
  %2791 = fcmp fast olt float %2789, 0.000000e+00
  %2792 = zext i1 %2790 to i32
  %2793 = zext i1 %2791 to i32
  %2794 = sub nsw i32 %2792, %2793
  %2795 = sitofp i32 %2794 to float
  %2796 = fmul fast float %2795, %2789
  %2797 = fsub fast float 1.000000e+00, %2796
  %2798 = fmul fast float %2797, %2797
  %2799 = fmul fast float %2798, %2797
  %2800 = fsub fast float %2797, %2799
  %2801 = fmul fast float %2800, %2785
  %2802 = fsub fast float 1.000000e+00, %2799
  %2803 = fsub fast float %2802, %2801
  %2804 = fmul fast float %2795, 5.000000e-01
  %2805 = fmul fast float %2804, %2803
  %2806 = fsub fast float 5.000000e-01, %2805
  br label %2807

; <label>:2807                                    ; preds = %2779, %2655, %2636
  %2808 = phi float [ 1.000000e+00, %2636 ], [ %2721, %2655 ], [ %2806, %2779 ]
  %2809 = fcmp fast ogt float %1788, 0.000000e+00
  br i1 %2809, label %2810, label %3132, !dx.controlflow.hints !94

; <label>:2810                                    ; preds = %2807
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 2
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = fmul fast float %2812, %238
  %2816 = fadd fast float %2814, %265
  %2817 = fadd fast float %2816, %2815
  %2818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2819 = extractvalue %dx.types.CBufRet.f32 %2818, 2
  %2820 = extractvalue %dx.types.CBufRet.f32 %2818, 3
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = call float @dx.op.binary.f32(i32 35, float %2817, float 0.000000e+00)  ; FMax(a,b)
  %2824 = fadd fast float %2823, 0x3F10000000000000
  %2825 = fcmp fast oeq float %2822, 0.000000e+00
  br i1 %114, label %2826, label %2979, !dx.controlflow.hints !95

; <label>:2826                                    ; preds = %2810
  br i1 %2825, label %2827, label %2894, !dx.controlflow.hints !60

; <label>:2827                                    ; preds = %2826
  %2828 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2830 = fmul fast float %2829, %257
  %2831 = fmul fast float %2828, %261
  %2832 = fadd fast float %2830, 5.000000e-01
  %2833 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2834 = fadd fast float %2831, 5.000000e-01
  %2835 = call float @dx.op.unary.f32(i32 27, float %2834)  ; Round_ni(value)
  %2836 = fsub fast float %2832, %2833
  %2837 = fsub fast float %2834, %2835
  %2838 = fadd fast float %2833, -5.000000e-01
  %2839 = fadd fast float %2835, -5.000000e-01
  %2840 = fmul fast float %2836, 2.000000e+00
  %2841 = fsub fast float 3.000000e+00, %2840
  %2842 = fadd fast float %2840, 1.000000e+00
  %2843 = fsub fast float 2.000000e+00, %2836
  %2844 = bitcast float %2841 to i32
  %2845 = sub nsw i32 2129859010, %2844
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2846, %2843
  %2848 = fadd fast float %2847, -1.000000e+00
  %2849 = bitcast float %2842 to i32
  %2850 = sub nsw i32 2129859010, %2849
  %2851 = bitcast i32 %2850 to float
  %2852 = fmul fast float %2851, %2836
  %2853 = fadd fast float %2852, 1.000000e+00
  %2854 = fmul fast float %2837, 2.000000e+00
  %2855 = fsub fast float 3.000000e+00, %2854
  %2856 = fadd fast float %2854, 1.000000e+00
  %2857 = fsub fast float 2.000000e+00, %2837
  %2858 = bitcast float %2855 to i32
  %2859 = sub nsw i32 2129859010, %2858
  %2860 = bitcast i32 %2859 to float
  %2861 = fmul fast float %2860, %2857
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = bitcast float %2856 to i32
  %2864 = sub nsw i32 2129859010, %2863
  %2865 = bitcast i32 %2864 to float
  %2866 = fmul fast float %2865, %2837
  %2867 = fadd fast float %2866, 1.000000e+00
  %2868 = fadd fast float %2848, %2838
  %2869 = fmul fast float %2868, %2819
  %2870 = fadd fast float %2862, %2839
  %2871 = fmul fast float %2870, %2820
  %2872 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %2869, float %2871, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = fmul fast float %2873, %2841
  %2875 = fadd fast float %2853, %2838
  %2876 = fmul fast float %2875, %2819
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %2876, float %2871, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = fmul fast float %2878, %2842
  %2880 = fadd fast float %2867, %2839
  %2881 = fmul fast float %2880, %2820
  %2882 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %2869, float %2881, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  %2884 = fmul fast float %2883, %2841
  %2885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %2876, float %2881, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = fmul fast float %2886, %2842
  %2888 = fadd fast float %2887, %2884
  %2889 = fmul fast float %2888, %2856
  %2890 = fadd fast float %2879, %2874
  %2891 = fmul fast float %2890, %2855
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, 6.250000e-02
  br label %3132

; <label>:2894                                    ; preds = %2826
  %2895 = fmul fast float %276, 0x401921FB60000000
  %2896 = call float @dx.op.unary.f32(i32 13, float %2895)  ; Sin(value)
  %2897 = call float @dx.op.unary.f32(i32 12, float %2895)  ; Cos(value)
  %2898 = fsub fast float -0.000000e+00, %2896
  br label %2899

; <label>:2899                                    ; preds = %2948, %2894
  %2900 = phi float [ 0.000000e+00, %2894 ], [ %2943, %2948 ]
  %2901 = phi float [ 0.000000e+00, %2894 ], [ %2945, %2948 ]
  %2902 = phi i32 [ 0, %2894 ], [ %2949, %2948 ]
  %2903 = mul i32 %2902, 2
  %2904 = add i32 0, %2903
  %2905 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2904
  %2906 = load float, float* %2905, align 4
  %2907 = mul i32 %2902, 2
  %2908 = add i32 1, %2907
  %2909 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %2908
  %2910 = load float, float* %2909, align 4
  %2911 = fmul fast float %2906, %2897
  %2912 = call float @dx.op.tertiary.f32(i32 46, float %2910, float %2898, float %2911)  ; FMad(a,b,c)
  %2913 = fmul fast float %2906, %2896
  %2914 = call float @dx.op.tertiary.f32(i32 46, float %2910, float %2897, float %2913)  ; FMad(a,b,c)
  %2915 = fmul fast float %2912, %2822
  %2916 = fmul fast float %2914, %2822
  %2917 = fadd fast float %2915, %257
  %2918 = fadd fast float %2916, %261
  %2919 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %32, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  %2921 = extractvalue %dx.types.ResRet.f32 %2919, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2919, 2
  %2923 = extractvalue %dx.types.ResRet.f32 %2919, 3
  %2924 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 0
  store float %2920, float* %2924, align 4
  %2925 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 1
  store float %2921, float* %2925, align 4
  %2926 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 2
  store float %2922, float* %2926, align 4
  %2927 = getelementptr inbounds [4 x float], [4 x float]* %54, i32 0, i32 3
  store float %2923, float* %2927, align 4
  %2928 = fsub fast float %2920, %2824
  %2929 = fcmp fast olt float %2928, 0.000000e+00
  %2930 = select i1 %2929, float 0.000000e+00, float 1.000000e+00
  %2931 = fadd fast float %2930, %2900
  %2932 = fmul fast float %2930, %2928
  %2933 = fadd fast float %2932, %2901
  br label %2934

; <label>:2934                                    ; preds = %2934, %2899
  %2935 = phi i32 [ 1, %2899 ], [ %2946, %2934 ]
  %2936 = phi float [ %2933, %2899 ], [ %2945, %2934 ]
  %2937 = phi float [ %2931, %2899 ], [ %2943, %2934 ]
  %2938 = getelementptr [4 x float], [4 x float]* %54, i32 0, i32 %2935
  %2939 = load float, float* %2938, align 4, !tbaa !61
  %2940 = fsub fast float %2939, %2824
  %2941 = fcmp fast olt float %2940, 0.000000e+00
  %2942 = select i1 %2941, float 0.000000e+00, float 1.000000e+00
  %2943 = fadd fast float %2942, %2937
  %2944 = fmul fast float %2942, %2940
  %2945 = fadd fast float %2944, %2936
  %2946 = add nuw nsw i32 %2935, 1
  %2947 = icmp eq i32 %2946, 4
  br i1 %2947, label %2948, label %2934, !llvm.loop !63

; <label>:2948                                    ; preds = %2934
  %2949 = add nuw nsw i32 %2902, 1
  %2950 = icmp eq i32 %2949, 8
  br i1 %2950, label %2951, label %2899, !llvm.loop !65

; <label>:2951                                    ; preds = %2948
  %2952 = fdiv fast float 1.000000e+00, %2943
  %2953 = fmul fast float %2952, %2945
  %2954 = fdiv fast float 1.000000e+00, %2824
  %2955 = fmul fast float %2953, %2954
  %2956 = call float @dx.op.unary.f32(i32 7, float %2955)  ; Saturate(value)
  %2957 = call float @dx.op.binary.f32(i32 35, float %2956, float 0.000000e+00)  ; FMax(a,b)
  %2958 = fmul fast float %2943, 3.125000e-02
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = fmul fast float %2959, 2.000000e+00
  %2961 = fadd fast float %2960, -1.000000e+00
  %2962 = fcmp fast ogt float %2961, 0.000000e+00
  %2963 = fcmp fast olt float %2961, 0.000000e+00
  %2964 = zext i1 %2962 to i32
  %2965 = zext i1 %2963 to i32
  %2966 = sub nsw i32 %2964, %2965
  %2967 = sitofp i32 %2966 to float
  %2968 = fmul fast float %2967, %2961
  %2969 = fsub fast float 1.000000e+00, %2968
  %2970 = fmul fast float %2969, %2969
  %2971 = fmul fast float %2970, %2969
  %2972 = fsub fast float %2969, %2971
  %2973 = fmul fast float %2972, %2957
  %2974 = fsub fast float 1.000000e+00, %2971
  %2975 = fsub fast float %2974, %2973
  %2976 = fmul fast float %2967, 5.000000e-01
  %2977 = fmul fast float %2976, %2975
  %2978 = fsub fast float 5.000000e-01, %2977
  br label %3132

; <label>:2979                                    ; preds = %2810
  br i1 %2825, label %2980, label %3047, !dx.controlflow.hints !60

; <label>:2980                                    ; preds = %2979
  %2981 = extractvalue %dx.types.CBufRet.f32 %2818, 1
  %2982 = extractvalue %dx.types.CBufRet.f32 %2818, 0
  %2983 = fmul fast float %2982, %257
  %2984 = fmul fast float %2981, %261
  %2985 = fadd fast float %2983, 5.000000e-01
  %2986 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2989 = fsub fast float %2985, %2986
  %2990 = fsub fast float %2987, %2988
  %2991 = fadd fast float %2986, -5.000000e-01
  %2992 = fadd fast float %2988, -5.000000e-01
  %2993 = fmul fast float %2989, 2.000000e+00
  %2994 = fsub fast float 3.000000e+00, %2993
  %2995 = fadd fast float %2993, 1.000000e+00
  %2996 = fsub fast float 2.000000e+00, %2989
  %2997 = bitcast float %2994 to i32
  %2998 = sub nsw i32 2129859010, %2997
  %2999 = bitcast i32 %2998 to float
  %3000 = fmul fast float %2999, %2996
  %3001 = fadd fast float %3000, -1.000000e+00
  %3002 = bitcast float %2995 to i32
  %3003 = sub nsw i32 2129859010, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %3004, %2989
  %3006 = fadd fast float %3005, 1.000000e+00
  %3007 = fmul fast float %2990, 2.000000e+00
  %3008 = fsub fast float 3.000000e+00, %3007
  %3009 = fadd fast float %3007, 1.000000e+00
  %3010 = fsub fast float 2.000000e+00, %2990
  %3011 = bitcast float %3008 to i32
  %3012 = sub nsw i32 2129859010, %3011
  %3013 = bitcast i32 %3012 to float
  %3014 = fmul fast float %3013, %3010
  %3015 = fadd fast float %3014, -1.000000e+00
  %3016 = bitcast float %3009 to i32
  %3017 = sub nsw i32 2129859010, %3016
  %3018 = bitcast i32 %3017 to float
  %3019 = fmul fast float %3018, %2990
  %3020 = fadd fast float %3019, 1.000000e+00
  %3021 = fadd fast float %3001, %2991
  %3022 = fmul fast float %3021, %2819
  %3023 = fadd fast float %3015, %2992
  %3024 = fmul fast float %3023, %2820
  %3025 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %3022, float %3024, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  %3027 = fmul fast float %3026, %2994
  %3028 = fadd fast float %3006, %2991
  %3029 = fmul fast float %3028, %2819
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %3029, float %3024, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = fmul fast float %3031, %2995
  %3033 = fadd fast float %3020, %2992
  %3034 = fmul fast float %3033, %2820
  %3035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %3022, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  %3037 = fmul fast float %3036, %2994
  %3038 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %3029, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float %2824)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = fmul fast float %3039, %2995
  %3041 = fadd fast float %3040, %3037
  %3042 = fmul fast float %3041, %3009
  %3043 = fadd fast float %3032, %3027
  %3044 = fmul fast float %3043, %3008
  %3045 = fadd fast float %3044, %3042
  %3046 = fmul fast float %3045, 6.250000e-02
  br label %3132

; <label>:3047                                    ; preds = %2979
  %3048 = fmul fast float %276, 0x401921FB60000000
  %3049 = call float @dx.op.unary.f32(i32 13, float %3048)  ; Sin(value)
  %3050 = call float @dx.op.unary.f32(i32 12, float %3048)  ; Cos(value)
  %3051 = fsub fast float -0.000000e+00, %3049
  br label %3052

; <label>:3052                                    ; preds = %3101, %3047
  %3053 = phi float [ 0.000000e+00, %3047 ], [ %3096, %3101 ]
  %3054 = phi float [ 0.000000e+00, %3047 ], [ %3098, %3101 ]
  %3055 = phi i32 [ 0, %3047 ], [ %3102, %3101 ]
  %3056 = mul i32 %3055, 2
  %3057 = add i32 0, %3056
  %3058 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3057
  %3059 = load float, float* %3058, align 4
  %3060 = mul i32 %3055, 2
  %3061 = add i32 1, %3060
  %3062 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3061
  %3063 = load float, float* %3062, align 4
  %3064 = fmul fast float %3059, %3050
  %3065 = call float @dx.op.tertiary.f32(i32 46, float %3063, float %3051, float %3064)  ; FMad(a,b,c)
  %3066 = fmul fast float %3059, %3049
  %3067 = call float @dx.op.tertiary.f32(i32 46, float %3063, float %3050, float %3066)  ; FMad(a,b,c)
  %3068 = fmul fast float %3065, %2822
  %3069 = fmul fast float %3067, %2822
  %3070 = fadd fast float %3068, %257
  %3071 = fadd fast float %3069, %261
  %3072 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %32, float %3070, float %3071, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = extractvalue %dx.types.ResRet.f32 %3072, 3
  %3077 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 0
  store float %3073, float* %3077, align 4
  %3078 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 1
  store float %3074, float* %3078, align 4
  %3079 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 2
  store float %3075, float* %3079, align 4
  %3080 = getelementptr inbounds [4 x float], [4 x float]* %53, i32 0, i32 3
  store float %3076, float* %3080, align 4
  %3081 = fsub fast float %3073, %2824
  %3082 = fcmp fast olt float %3081, 0.000000e+00
  %3083 = select i1 %3082, float 0.000000e+00, float 1.000000e+00
  %3084 = fadd fast float %3083, %3053
  %3085 = fmul fast float %3083, %3081
  %3086 = fadd fast float %3085, %3054
  br label %3087

; <label>:3087                                    ; preds = %3087, %3052
  %3088 = phi i32 [ 1, %3052 ], [ %3099, %3087 ]
  %3089 = phi float [ %3086, %3052 ], [ %3098, %3087 ]
  %3090 = phi float [ %3084, %3052 ], [ %3096, %3087 ]
  %3091 = getelementptr [4 x float], [4 x float]* %53, i32 0, i32 %3088
  %3092 = load float, float* %3091, align 4, !tbaa !61
  %3093 = fsub fast float %3092, %2824
  %3094 = fcmp fast olt float %3093, 0.000000e+00
  %3095 = select i1 %3094, float 0.000000e+00, float 1.000000e+00
  %3096 = fadd fast float %3095, %3090
  %3097 = fmul fast float %3095, %3093
  %3098 = fadd fast float %3097, %3089
  %3099 = add nuw nsw i32 %3088, 1
  %3100 = icmp eq i32 %3099, 4
  br i1 %3100, label %3101, label %3087, !llvm.loop !63

; <label>:3101                                    ; preds = %3087
  %3102 = add nuw nsw i32 %3055, 1
  %3103 = icmp eq i32 %3102, 8
  br i1 %3103, label %3104, label %3052, !llvm.loop !65

; <label>:3104                                    ; preds = %3101
  %3105 = fdiv fast float 1.000000e+00, %3096
  %3106 = fmul fast float %3105, %3098
  %3107 = fdiv fast float 1.000000e+00, %2824
  %3108 = fmul fast float %3106, %3107
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = call float @dx.op.binary.f32(i32 35, float %3109, float 0.000000e+00)  ; FMax(a,b)
  %3111 = fmul fast float %3096, 3.125000e-02
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  %3113 = fmul fast float %3112, 2.000000e+00
  %3114 = fadd fast float %3113, -1.000000e+00
  %3115 = fcmp fast ogt float %3114, 0.000000e+00
  %3116 = fcmp fast olt float %3114, 0.000000e+00
  %3117 = zext i1 %3115 to i32
  %3118 = zext i1 %3116 to i32
  %3119 = sub nsw i32 %3117, %3118
  %3120 = sitofp i32 %3119 to float
  %3121 = fmul fast float %3120, %3114
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3122, %3122
  %3124 = fmul fast float %3123, %3122
  %3125 = fsub fast float %3122, %3124
  %3126 = fmul fast float %3125, %3110
  %3127 = fsub fast float 1.000000e+00, %3124
  %3128 = fsub fast float %3127, %3126
  %3129 = fmul fast float %3120, 5.000000e-01
  %3130 = fmul fast float %3129, %3128
  %3131 = fsub fast float 5.000000e-01, %3130
  br label %3132

; <label>:3132                                    ; preds = %3104, %2980, %2951, %2827, %2807
  %3133 = phi float [ 1.000000e+00, %2807 ], [ %2893, %2827 ], [ %2978, %2951 ], [ %3046, %2980 ], [ %3131, %3104 ]
  %3134 = fsub fast float %2637, %2466
  %3135 = fmul fast float %3134, %1758
  %3136 = fadd fast float %3135, %2466
  %3137 = fsub fast float %2808, %3136
  %3138 = fmul fast float %3137, %1757
  %3139 = fadd fast float %3138, %3136
  %3140 = fsub fast float %3133, %3139
  %3141 = fmul fast float %3140, %1788
  %3142 = fadd fast float %3141, %3139
  br label %4614

; <label>:3143                                    ; preds = %127
  %3144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3145 = extractvalue %dx.types.CBufRet.f32 %3144, 0
  %3146 = extractvalue %dx.types.CBufRet.f32 %3144, 1
  %3147 = extractvalue %dx.types.CBufRet.f32 %3144, 3
  %3148 = fmul fast float %3147, %257
  %3149 = fmul fast float %3147, %261
  %3150 = fadd fast float %3148, %3145
  %3151 = fadd fast float %3149, %3146
  %3152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.f32 %3152, 0
  %3154 = extractvalue %dx.types.CBufRet.f32 %3152, 1
  %3155 = extractvalue %dx.types.CBufRet.f32 %3152, 3
  %3156 = fmul fast float %3155, %257
  %3157 = fmul fast float %3155, %261
  %3158 = fadd fast float %3156, %3153
  %3159 = fadd fast float %3157, %3154
  %3160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3161 = extractvalue %dx.types.CBufRet.f32 %3160, 1
  %3162 = fsub fast float %3161, %265
  %3163 = extractvalue %dx.types.CBufRet.f32 %3160, 2
  %3164 = fmul fast float %3162, %3163
  %3165 = fsub fast float 1.000000e+00, %3164
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  br i1 %114, label %3227, label %3167, !dx.controlflow.hints !88

; <label>:3167                                    ; preds = %3143
  %3168 = extractvalue %dx.types.CBufRet.f32 %3152, 2
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 2
  %3171 = fadd fast float %3170, %3168
  %3172 = fcmp fast ogt float %3171, 0.000000e+00
  br i1 %3172, label %3173, label %3197, !dx.controlflow.hints !89

; <label>:3173                                    ; preds = %3167
  %3174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3175 = extractvalue %dx.types.CBufRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.CBufRet.f32 %3174, 1
  %3177 = fsub fast float %3158, %3175
  %3178 = fsub fast float %3159, %3176
  %3179 = fcmp fast olt float %3177, 0.000000e+00
  %3180 = fcmp fast olt float %3178, 0.000000e+00
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3183 = extractvalue %dx.types.CBufRet.f32 %3181, 1
  %3184 = extractvalue %dx.types.CBufRet.f32 %3181, 2
  %3185 = extractvalue %dx.types.CBufRet.f32 %3181, 3
  %3186 = select i1 %3179, float %3182, float %3184
  %3187 = select i1 %3180, float %3183, float %3185
  %3188 = fmul fast float %3186, %3177
  %3189 = fmul fast float %3187, %3178
  %3190 = call float @dx.op.unary.f32(i32 6, float %3188)  ; FAbs(value)
  %3191 = call float @dx.op.unary.f32(i32 6, float %3189)  ; FAbs(value)
  %3192 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %3193 = call float @dx.op.binary.f32(i32 35, float %3190, float %3191)  ; FMax(a,b)
  %3194 = fsub fast float %3192, %3193
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = fmul fast float %3195, %3166
  br label %3197

; <label>:3197                                    ; preds = %3173, %3167
  %3198 = phi float [ %3196, %3173 ], [ 0.000000e+00, %3167 ]
  %3199 = extractvalue %dx.types.CBufRet.f32 %3144, 2
  %3200 = extractvalue %dx.types.CBufRet.f32 %3169, 1
  %3201 = fadd fast float %3200, %3199
  %3202 = fcmp fast ogt float %3201, 0.000000e+00
  br i1 %3202, label %3203, label %3227, !dx.controlflow.hints !90

; <label>:3203                                    ; preds = %3197
  %3204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3205 = extractvalue %dx.types.CBufRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.CBufRet.f32 %3204, 1
  %3207 = fsub fast float %3150, %3205
  %3208 = fsub fast float %3151, %3206
  %3209 = fcmp fast olt float %3207, 0.000000e+00
  %3210 = fcmp fast olt float %3208, 0.000000e+00
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.CBufRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.CBufRet.f32 %3211, 2
  %3215 = extractvalue %dx.types.CBufRet.f32 %3211, 3
  %3216 = select i1 %3209, float %3212, float %3214
  %3217 = select i1 %3210, float %3213, float %3215
  %3218 = fmul fast float %3216, %3207
  %3219 = fmul fast float %3217, %3208
  %3220 = call float @dx.op.unary.f32(i32 6, float %3218)  ; FAbs(value)
  %3221 = call float @dx.op.unary.f32(i32 6, float %3219)  ; FAbs(value)
  %3222 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %3223 = call float @dx.op.binary.f32(i32 35, float %3220, float %3221)  ; FMax(a,b)
  %3224 = fsub fast float %3222, %3223
  %3225 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3226 = fmul fast float %3225, %3166
  br label %3227

; <label>:3227                                    ; preds = %3203, %3197, %3143
  %3228 = phi float [ 0.000000e+00, %3143 ], [ %3226, %3203 ], [ 0.000000e+00, %3197 ]
  %3229 = phi float [ 0.000000e+00, %3143 ], [ %3198, %3203 ], [ %3198, %3197 ]
  %3230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.f32 %3230, 0
  %3232 = extractvalue %dx.types.CBufRet.f32 %3230, 1
  %3233 = fmul fast float %3231, %121
  %3234 = fadd fast float %3233, %3232
  %3235 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3237 = extractvalue %dx.types.CBufRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.CBufRet.f32 %3236, 1
  %3239 = fsub fast float %257, %3237
  %3240 = fsub fast float %261, %3238
  %3241 = fcmp fast olt float %3239, 0.000000e+00
  %3242 = fcmp fast olt float %3240, 0.000000e+00
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = extractvalue %dx.types.CBufRet.f32 %3243, 1
  %3246 = extractvalue %dx.types.CBufRet.f32 %3243, 2
  %3247 = extractvalue %dx.types.CBufRet.f32 %3243, 3
  %3248 = select i1 %3241, float %3244, float %3246
  %3249 = select i1 %3242, float %3245, float %3247
  %3250 = fmul fast float %3248, %3239
  %3251 = fmul fast float %3249, %3240
  %3252 = call float @dx.op.unary.f32(i32 6, float %3250)  ; FAbs(value)
  %3253 = call float @dx.op.unary.f32(i32 6, float %3251)  ; FAbs(value)
  %3254 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %3255 = call float @dx.op.binary.f32(i32 35, float %3252, float %3253)  ; FMax(a,b)
  %3256 = fsub fast float %3254, %3255
  %3257 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3258 = call float @dx.op.binary.f32(i32 36, float %3257, float %3235)  ; FMin(a,b)
  %3259 = fmul fast float %3258, %3166
  %3260 = fsub fast float %3228, %3259
  %3261 = fsub fast float %3229, %3228
  %3262 = fsub fast float %3261, %3259
  %3263 = call float @dx.op.binary.f32(i32 35, float %3228, float %3229)  ; FMax(a,b)
  %3264 = call float @dx.op.binary.f32(i32 35, float %3259, float %3263)  ; FMax(a,b)
  %3265 = fcmp fast olt float %3264, 1.000000e+00
  %3266 = extractvalue %dx.types.CBufRet.f32 %277, 0
  %3267 = fcmp fast une float %3266, 0.000000e+00
  %3268 = and i1 %3265, %3267
  br i1 %3268, label %3269, label %3936, !dx.controlflow.hints !91

; <label>:3269                                    ; preds = %3227
  %3270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3271 = extractvalue %dx.types.CBufRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.CBufRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.CBufRet.f32 %3270, 2
  %3274 = extractvalue %dx.types.CBufRet.f32 %3270, 3
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = extractvalue %dx.types.CBufRet.f32 %3275, 0
  %3277 = extractvalue %dx.types.CBufRet.f32 %3275, 1
  %3278 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3279 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3281 = extractvalue %dx.types.CBufRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.CBufRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.CBufRet.f32 %3280, 2
  %3284 = extractvalue %dx.types.CBufRet.f32 %3280, 3
  %3285 = fmul fast float %3271, %177
  %3286 = call float @dx.op.tertiary.f32(i32 46, float %178, float %3272, float %3285)  ; FMad(a,b,c)
  %3287 = call float @dx.op.tertiary.f32(i32 46, float %179, float %3273, float %3286)  ; FMad(a,b,c)
  %3288 = fadd fast float %3287, %3274
  %3289 = fmul fast float %3276, %177
  %3290 = call float @dx.op.tertiary.f32(i32 46, float %178, float %3277, float %3289)  ; FMad(a,b,c)
  %3291 = call float @dx.op.tertiary.f32(i32 46, float %179, float %3278, float %3290)  ; FMad(a,b,c)
  %3292 = fadd fast float %3291, %3279
  %3293 = fmul fast float %3281, %177
  %3294 = call float @dx.op.tertiary.f32(i32 46, float %178, float %3282, float %3293)  ; FMad(a,b,c)
  %3295 = call float @dx.op.tertiary.f32(i32 46, float %179, float %3283, float %3294)  ; FMad(a,b,c)
  %3296 = fadd fast float %3295, %3284
  %3297 = fcmp fast oge float %3288, 1.000000e+00
  %3298 = fcmp fast oge float %3292, 1.000000e+00
  %3299 = or i1 %3297, %3298
  %3300 = fcmp fast olt float %3288, 0.000000e+00
  %3301 = fcmp fast olt float %3292, 0.000000e+00
  %3302 = or i1 %3300, %3301
  %3303 = or i1 %3299, %3302
  br i1 %3303, label %3936, label %3304, !dx.controlflow.hints !71

; <label>:3304                                    ; preds = %3269
  %3305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3306 = extractvalue %dx.types.CBufRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.CBufRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.CBufRet.f32 %3305, 2
  %3309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.f32 %3309, 1
  %3311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.i32 %3311, 2
  %3313 = uitofp i32 %3312 to float
  %3314 = extractvalue %dx.types.CBufRet.i32 %3311, 3
  %3315 = uitofp i32 %3314 to float
  %3316 = extractvalue %dx.types.CBufRet.f32 %3305, 3
  %3317 = fmul fast float %3316, 2.000000e+00
  %3318 = fsub fast float %3288, %3306
  %3319 = fsub fast float %3292, %3307
  %3320 = fmul fast float %3317, %3318
  %3321 = fmul fast float %3317, %3319
  %3322 = fdiv fast float 1.000000e+00, %227
  %3323 = fmul fast float %3321, %3322
  %3324 = call float @dx.op.unary.f32(i32 6, float %3323)  ; FAbs(value)
  %3325 = fmul fast float %3308, %179
  %3326 = fmul fast float %3325, %3317
  %3327 = call float @dx.op.unary.f32(i32 6, float %3326)  ; FAbs(value)
  %3328 = call float @dx.op.unary.f32(i32 6, float %3320)  ; FAbs(value)
  %3329 = call float @dx.op.binary.f32(i32 35, float %3327, float %3324)  ; FMax(a,b)
  %3330 = call float @dx.op.binary.f32(i32 35, float %3328, float %3329)  ; FMax(a,b)
  %3331 = fmul fast float %3330, 2.000000e+00
  %3332 = call float @dx.op.unary.f32(i32 23, float %3331)  ; Log(value)
  %3333 = call float @dx.op.binary.f32(i32 35, float %3332, float %3313)  ; FMax(a,b)
  %3334 = call float @dx.op.unary.f32(i32 22, float %3333)  ; Frc(value)
  %3335 = fadd fast float %3334, 0xBFEA666660000000
  %3336 = fmul fast float %3335, 8.000000e+00
  %3337 = call float @dx.op.unary.f32(i32 7, float %3336)  ; Saturate(value)
  %3338 = call float @dx.op.unary.f32(i32 27, float %3333)  ; Round_ni(value)
  %3339 = fadd fast float %3338, %3337
  %3340 = call float @dx.op.binary.f32(i32 36, float %3339, float %3315)  ; FMin(a,b)
  %3341 = call float @dx.op.unary.f32(i32 27, float %3340)  ; Round_ni(value)
  %3342 = fsub fast float -0.000000e+00, %3341
  %3343 = call float @dx.op.unary.f32(i32 21, float %3342)  ; Exp(value)
  %3344 = fmul fast float %3343, %3317
  %3345 = fmul fast float %3344, %3288
  %3346 = fmul fast float %3344, %3292
  %3347 = fmul fast float %3345, 5.000000e-01
  %3348 = fmul fast float %3346, 5.000000e-01
  %3349 = fadd fast float %3347, 5.000000e-01
  %3350 = fadd fast float %3348, 5.000000e-01
  %3351 = fmul fast float %3345, 2.500000e-01
  %3352 = fmul fast float %3346, 2.500000e-01
  %3353 = fadd fast float %3351, 5.000000e-01
  %3354 = fadd fast float %3352, 5.000000e-01
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = and i32 %3356, 536870911
  %3358 = lshr i32 %3357, 9
  %3359 = uitofp i32 %3358 to float
  %3360 = fmul fast float %3359, %3288
  %3361 = fmul fast float %3359, %3292
  %3362 = call float @dx.op.unary.f32(i32 22, float %3360)  ; Frc(value)
  %3363 = call float @dx.op.unary.f32(i32 22, float %3361)  ; Frc(value)
  %3364 = call float @dx.op.unary.f32(i32 22, float %3337)  ; Frc(value)
  %3365 = fcmp fast une float %3364, 0.000000e+00
  br i1 %3365, label %3366, label %3464, !dx.controlflow.hints !72

; <label>:3366                                    ; preds = %3304
  %3367 = call float @dx.op.unary.f32(i32 21, float %3338)  ; Exp(value)
  %3368 = fmul fast float %3367, 1.953125e-03
  %3369 = fcmp fast olt float %3362, %3368
  %3370 = fcmp fast olt float %3363, %3368
  %3371 = or i1 %3369, %3370
  %3372 = fsub fast float 1.000000e+00, %3368
  %3373 = fcmp fast ogt float %3362, %3372
  %3374 = fcmp fast ogt float %3363, %3372
  %3375 = or i1 %3373, %3374
  %3376 = or i1 %3371, %3375
  br i1 %3376, label %3377, label %3543, !dx.controlflow.hints !73

; <label>:3377                                    ; preds = %3366
  %3378 = fmul fast float %3310, 5.000000e-01
  %3379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3380 = extractvalue %dx.types.CBufRet.i32 %3379, 0
  %3381 = fmul fast float %3292, 3.530000e+02
  %3382 = uitofp i32 %3357 to float
  %3383 = fmul fast float %3381, %3382
  %3384 = fmul fast float %3288, 6.130000e+02
  %3385 = fadd fast float %3383, %3384
  %3386 = fptoui float %3385 to i32
  %3387 = add i32 %3380, %3386
  %3388 = mul i32 %3387, -63
  %3389 = lshr i32 %3388, 17
  %3390 = xor i32 %3389, %3388
  %3391 = mul i32 %3390, -511
  %3392 = mul i32 %3390, -8176
  %3393 = xor i32 %3391, %3392
  %3394 = mul i32 %3393, -7
  %3395 = mul i32 %3393, -7168
  %3396 = xor i32 %3394, %3395
  %3397 = lshr i32 %3396, 15
  %3398 = xor i32 %3397, %3394
  %3399 = and i32 %3398, 15
  %3400 = mul i32 %3399, 2
  %3401 = add i32 0, %3400
  %3402 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3401
  %3403 = load float, float* %3402, align 4
  %3404 = mul i32 %3399, 2
  %3405 = add i32 1, %3404
  %3406 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3405
  %3407 = load float, float* %3406, align 4
  %3408 = fmul fast float %3292, 2.770000e+02
  %3409 = fmul fast float %3408, %3382
  %3410 = fmul fast float %3288, 5.990000e+02
  %3411 = fadd fast float %3409, %3410
  %3412 = fptoui float %3411 to i32
  %3413 = mul i32 %3412, -63
  %3414 = lshr i32 %3413, 17
  %3415 = xor i32 %3414, %3413
  %3416 = mul i32 %3415, -511
  %3417 = mul i32 %3415, -8176
  %3418 = xor i32 %3416, %3417
  %3419 = mul i32 %3418, -7
  %3420 = mul i32 %3418, -7168
  %3421 = xor i32 %3419, %3420
  %3422 = lshr i32 %3421, 15
  %3423 = xor i32 %3422, %3419
  %3424 = and i32 %3423, 63
  %3425 = mul i32 %3424, 2
  %3426 = add i32 0, %3425
  %3427 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3426
  %3428 = load float, float* %3427, align 4
  %3429 = mul i32 %3424, 2
  %3430 = add i32 1, %3429
  %3431 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3430
  %3432 = load float, float* %3431, align 4
  %3433 = call float @dx.op.dot2.f32(i32 54, float %3403, float %3407, float %3428, float %3432)  ; Dot2(ax,ay,bx,by)
  %3434 = fsub fast float -0.000000e+00, %3428
  %3435 = call float @dx.op.dot2.f32(i32 54, float %3403, float %3407, float %3434, float %3432)  ; Dot2(ax,ay,bx,by)
  %3436 = fmul fast float %3433, %3378
  %3437 = fmul fast float %3435, %3378
  %3438 = fdiv fast float 2.000000e+00, %3344
  %3439 = fmul fast float %3367, 9.765625e-04
  %3440 = fcmp fast olt float %3362, %3439
  %3441 = fcmp fast olt float %3363, %3439
  %3442 = or i1 %3440, %3441
  %3443 = fsub fast float 1.000000e+00, %3439
  %3444 = fcmp fast ogt float %3362, %3443
  %3445 = fcmp fast ogt float %3363, %3443
  %3446 = or i1 %3444, %3445
  %3447 = or i1 %3442, %3446
  %3448 = fmul fast float %3436, 2.000000e+00
  br i1 %3447, label %3449, label %3453, !dx.controlflow.hints !74

; <label>:3449                                    ; preds = %3377
  %3450 = fmul fast float %3437, 2.000000e+00
  %3451 = fadd fast float %3448, %3349
  %3452 = fadd fast float %3450, %3350
  br label %3453

; <label>:3453                                    ; preds = %3449, %3377
  %3454 = phi float [ %3451, %3449 ], [ %3349, %3377 ]
  %3455 = phi float [ %3452, %3449 ], [ %3350, %3377 ]
  %3456 = phi i32 [ 3, %3449 ], [ 2, %3377 ]
  %3457 = fadd fast float %3436, %3353
  %3458 = fadd fast float %3437, %3354
  %3459 = fmul fast float %3448, %3438
  %3460 = fmul fast float %3438, 2.000000e+00
  %3461 = fmul fast float %3460, %3437
  %3462 = fadd fast float %3459, %3288
  %3463 = fadd fast float %3461, %3292
  br label %3543

; <label>:3464                                    ; preds = %3304
  %3465 = call float @dx.op.unary.f32(i32 21, float %3341)  ; Exp(value)
  %3466 = fmul fast float %3465, 9.765625e-04
  %3467 = fcmp fast olt float %3362, %3466
  %3468 = fcmp fast olt float %3363, %3466
  %3469 = or i1 %3467, %3468
  %3470 = fsub fast float 1.000000e+00, %3466
  %3471 = fcmp fast ogt float %3362, %3470
  %3472 = fcmp fast ogt float %3363, %3470
  %3473 = or i1 %3471, %3472
  %3474 = or i1 %3469, %3473
  br i1 %3474, label %3475, label %3543, !dx.controlflow.hints !75

; <label>:3475                                    ; preds = %3464
  %3476 = fmul fast float %3310, 5.000000e-01
  %3477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.i32 %3477, 0
  %3479 = fmul fast float %3292, 3.530000e+02
  %3480 = uitofp i32 %3357 to float
  %3481 = fmul fast float %3479, %3480
  %3482 = fmul fast float %3288, 6.130000e+02
  %3483 = fadd fast float %3481, %3482
  %3484 = fptoui float %3483 to i32
  %3485 = add i32 %3478, %3484
  %3486 = mul i32 %3485, -63
  %3487 = lshr i32 %3486, 17
  %3488 = xor i32 %3487, %3486
  %3489 = mul i32 %3488, -511
  %3490 = mul i32 %3488, -8176
  %3491 = xor i32 %3489, %3490
  %3492 = mul i32 %3491, -7
  %3493 = mul i32 %3491, -7168
  %3494 = xor i32 %3492, %3493
  %3495 = lshr i32 %3494, 15
  %3496 = xor i32 %3495, %3492
  %3497 = and i32 %3496, 15
  %3498 = mul i32 %3497, 2
  %3499 = add i32 0, %3498
  %3500 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3499
  %3501 = load float, float* %3500, align 4
  %3502 = mul i32 %3497, 2
  %3503 = add i32 1, %3502
  %3504 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %3503
  %3505 = load float, float* %3504, align 4
  %3506 = fmul fast float %3292, 2.770000e+02
  %3507 = fmul fast float %3506, %3480
  %3508 = fmul fast float %3288, 5.990000e+02
  %3509 = fadd fast float %3507, %3508
  %3510 = fptoui float %3509 to i32
  %3511 = mul i32 %3510, -63
  %3512 = lshr i32 %3511, 17
  %3513 = xor i32 %3512, %3511
  %3514 = mul i32 %3513, -511
  %3515 = mul i32 %3513, -8176
  %3516 = xor i32 %3514, %3515
  %3517 = mul i32 %3516, -7
  %3518 = mul i32 %3516, -7168
  %3519 = xor i32 %3517, %3518
  %3520 = lshr i32 %3519, 15
  %3521 = xor i32 %3520, %3517
  %3522 = and i32 %3521, 63
  %3523 = mul i32 %3522, 2
  %3524 = add i32 0, %3523
  %3525 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3524
  %3526 = load float, float* %3525, align 4
  %3527 = mul i32 %3522, 2
  %3528 = add i32 1, %3527
  %3529 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %3528
  %3530 = load float, float* %3529, align 4
  %3531 = call float @dx.op.dot2.f32(i32 54, float %3501, float %3505, float %3526, float %3530)  ; Dot2(ax,ay,bx,by)
  %3532 = fsub fast float -0.000000e+00, %3526
  %3533 = call float @dx.op.dot2.f32(i32 54, float %3501, float %3505, float %3532, float %3530)  ; Dot2(ax,ay,bx,by)
  %3534 = fmul fast float %3531, %3476
  %3535 = fmul fast float %3533, %3476
  %3536 = fadd fast float %3534, %3349
  %3537 = fadd fast float %3535, %3350
  %3538 = fdiv fast float 2.000000e+00, %3344
  %3539 = fmul fast float %3538, %3534
  %3540 = fmul fast float %3535, %3538
  %3541 = fadd fast float %3539, %3288
  %3542 = fadd fast float %3540, %3292
  br label %3543

; <label>:3543                                    ; preds = %3475, %3464, %3453, %3366
  %3544 = phi float [ %3457, %3453 ], [ %3353, %3366 ], [ %3353, %3475 ], [ %3353, %3464 ]
  %3545 = phi float [ %3458, %3453 ], [ %3354, %3366 ], [ %3354, %3475 ], [ %3354, %3464 ]
  %3546 = phi float [ %3454, %3453 ], [ %3349, %3366 ], [ %3536, %3475 ], [ %3349, %3464 ]
  %3547 = phi float [ %3455, %3453 ], [ %3350, %3366 ], [ %3537, %3475 ], [ %3350, %3464 ]
  %3548 = phi i32 [ %3456, %3453 ], [ 0, %3366 ], [ 1, %3475 ], [ 0, %3464 ]
  %3549 = phi float [ %3462, %3453 ], [ %3288, %3366 ], [ %3541, %3475 ], [ %3288, %3464 ]
  %3550 = phi float [ %3463, %3453 ], [ %3292, %3366 ], [ %3542, %3475 ], [ %3292, %3464 ]
  %3551 = fsub fast float %3315, %3313
  %3552 = fptoui float %3551 to i32
  %3553 = add i32 %3552, 320
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 %3553)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3557 = fcmp fast une float %3340, %3315
  %3558 = fsub fast float %3549, %3555
  %3559 = fsub fast float %3550, %3556
  %3560 = call float @dx.op.unary.f32(i32 6, float %3558)  ; FAbs(value)
  %3561 = call float @dx.op.unary.f32(i32 6, float %3559)  ; FAbs(value)
  %3562 = fmul fast float %3560, %3344
  %3563 = fmul fast float %3561, %3344
  %3564 = fcmp fast olt float %3562, 1.000000e+00
  %3565 = fcmp fast olt float %3563, 1.000000e+00
  %3566 = and i1 %3564, %3565
  %3567 = or i1 %3557, %3566
  br i1 %3567, label %3568, label %3936, !dx.controlflow.hints !76

; <label>:3568                                    ; preds = %3543
  %3569 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.i32 %3569, 2
  %3571 = sitofp i32 %3570 to float
  %3572 = fsub fast float %3340, %3571
  %3573 = call float @dx.op.unary.f32(i32 27, float %3572)  ; Round_ni(value)
  %3574 = call float @dx.op.unary.f32(i32 22, float %3340)  ; Frc(value)
  %3575 = icmp eq i32 %3548, 0
  %3576 = call float @dx.op.unary.f32(i32 22, float %3546)  ; Frc(value)
  %3577 = call float @dx.op.unary.f32(i32 22, float %3547)  ; Frc(value)
  br i1 %3575, label %3648, label %3578, !dx.controlflow.hints !77

; <label>:3578                                    ; preds = %3568
  %3579 = and i32 %3548, 1
  %3580 = icmp eq i32 %3579, 0
  br i1 %3580, label %3594, label %3581, !dx.controlflow.hints !78

; <label>:3581                                    ; preds = %3578
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 0
  %3584 = fmul fast float %3576, %3583
  %3585 = fmul fast float %3577, %3583
  %3586 = fptoui float %3584 to i32
  %3587 = fptoui float %3585 to i32
  %3588 = fptoui float %3573 to i32
  %3589 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3586, i32 %3587, i32 %3588, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3592 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3593 = extractvalue %dx.types.ResRet.f32 %3589, 3
  br label %3600

; <label>:3594                                    ; preds = %3578
  %3595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3576, float %3577, float %3573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.ResRet.f32 %3595, 3
  br label %3600

; <label>:3600                                    ; preds = %3594, %3581
  %3601 = phi float [ %3590, %3581 ], [ %3596, %3594 ]
  %3602 = phi float [ %3591, %3581 ], [ %3597, %3594 ]
  %3603 = phi float [ %3592, %3581 ], [ %3598, %3594 ]
  %3604 = phi float [ %3593, %3581 ], [ %3599, %3594 ]
  %3605 = fcmp fast ogt float %3574, 0.000000e+00
  br i1 %3605, label %3606, label %3676, !dx.controlflow.hints !79

; <label>:3606                                    ; preds = %3600
  %3607 = and i32 %3548, 2
  %3608 = icmp eq i32 %3607, 0
  %3609 = fadd fast float %3573, 1.000000e+00
  %3610 = call float @dx.op.unary.f32(i32 22, float %3544)  ; Frc(value)
  %3611 = call float @dx.op.unary.f32(i32 22, float %3545)  ; Frc(value)
  br i1 %3608, label %3625, label %3612, !dx.controlflow.hints !80

; <label>:3612                                    ; preds = %3606
  %3613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3614 = extractvalue %dx.types.CBufRet.f32 %3613, 0
  %3615 = fmul fast float %3610, %3614
  %3616 = fmul fast float %3611, %3614
  %3617 = fptoui float %3615 to i32
  %3618 = fptoui float %3616 to i32
  %3619 = fptoui float %3609 to i32
  %3620 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %3617, i32 %3618, i32 %3619, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  br label %3631

; <label>:3625                                    ; preds = %3606
  %3626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3610, float %3611, float %3609, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.ResRet.f32 %3626, 3
  br label %3631

; <label>:3631                                    ; preds = %3625, %3612
  %3632 = phi float [ %3621, %3612 ], [ %3627, %3625 ]
  %3633 = phi float [ %3622, %3612 ], [ %3628, %3625 ]
  %3634 = phi float [ %3623, %3612 ], [ %3629, %3625 ]
  %3635 = phi float [ %3624, %3612 ], [ %3630, %3625 ]
  %3636 = fsub fast float %3632, %3601
  %3637 = fsub fast float %3633, %3602
  %3638 = fsub fast float %3634, %3603
  %3639 = fsub fast float %3635, %3604
  %3640 = fmul fast float %3636, %3574
  %3641 = fmul fast float %3637, %3574
  %3642 = fmul fast float %3638, %3574
  %3643 = fmul fast float %3639, %3574
  %3644 = fadd fast float %3640, %3601
  %3645 = fadd fast float %3641, %3602
  %3646 = fadd fast float %3642, %3603
  %3647 = fadd fast float %3643, %3604
  br label %3676

; <label>:3648                                    ; preds = %3568
  %3649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3576, float %3577, float %3573, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = fcmp fast ogt float %3574, 0.000000e+00
  br i1 %3654, label %3655, label %3676, !dx.controlflow.hints !81

; <label>:3655                                    ; preds = %3648
  %3656 = fadd fast float %3573, 1.000000e+00
  %3657 = call float @dx.op.unary.f32(i32 22, float %3544)  ; Frc(value)
  %3658 = call float @dx.op.unary.f32(i32 22, float %3545)  ; Frc(value)
  %3659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %30, float %3657, float %3658, float %3656, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3660 = extractvalue %dx.types.ResRet.f32 %3659, 0
  %3661 = extractvalue %dx.types.ResRet.f32 %3659, 1
  %3662 = extractvalue %dx.types.ResRet.f32 %3659, 2
  %3663 = extractvalue %dx.types.ResRet.f32 %3659, 3
  %3664 = fsub fast float %3660, %3650
  %3665 = fsub fast float %3661, %3651
  %3666 = fsub fast float %3662, %3652
  %3667 = fsub fast float %3663, %3653
  %3668 = fmul fast float %3664, %3574
  %3669 = fmul fast float %3665, %3574
  %3670 = fmul fast float %3666, %3574
  %3671 = fmul fast float %3667, %3574
  %3672 = fadd fast float %3668, %3650
  %3673 = fadd fast float %3669, %3651
  %3674 = fadd fast float %3670, %3652
  %3675 = fadd fast float %3671, %3653
  br label %3676

; <label>:3676                                    ; preds = %3655, %3648, %3631, %3600
  %3677 = phi float [ %3644, %3631 ], [ %3601, %3600 ], [ %3672, %3655 ], [ %3650, %3648 ]
  %3678 = phi float [ %3645, %3631 ], [ %3602, %3600 ], [ %3673, %3655 ], [ %3651, %3648 ]
  %3679 = phi float [ %3646, %3631 ], [ %3603, %3600 ], [ %3674, %3655 ], [ %3652, %3648 ]
  %3680 = phi float [ %3647, %3631 ], [ %3604, %3600 ], [ %3675, %3655 ], [ %3653, %3648 ]
  %3681 = fadd fast float %3677, -5.000000e-01
  %3682 = fadd fast float %3679, -5.000000e-01
  %3683 = fmul fast float %3681, 0xBFD5555560000000
  %3684 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3682, float %3683)  ; FMad(a,b,c)
  %3685 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3678, float 0.000000e+00)  ; FMad(a,b,c)
  %3686 = fadd fast float %3685, %3680
  %3687 = fmul fast float %3681, -7.500000e-01
  %3688 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3682, float %3687)  ; FMad(a,b,c)
  %3689 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3678, float 0.000000e+00)  ; FMad(a,b,c)
  %3690 = fadd fast float %3689, %3680
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.f32 %3693, 0
  %3695 = extractvalue %dx.types.CBufRet.f32 %3693, 1
  %3696 = extractvalue %dx.types.CBufRet.f32 %3693, 2
  %3697 = extractvalue %dx.types.CBufRet.f32 %3693, 3
  %3698 = fsub fast float %3694, %3684
  %3699 = fsub fast float %3695, %3686
  %3700 = fsub fast float %3696, %3688
  %3701 = fsub fast float %3697, %3690
  %3702 = fmul fast float %3698, %3692
  %3703 = fmul fast float %3699, %3692
  %3704 = fmul fast float %3700, %3692
  %3705 = fmul fast float %3701, %3692
  %3706 = fadd fast float %3702, %3684
  %3707 = fadd fast float %3703, %3686
  %3708 = fadd fast float %3704, %3688
  %3709 = fadd fast float %3705, %3690
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 536870911
  %3713 = uitofp i32 %3712 to float
  %3714 = fmul fast float %3713, %3549
  %3715 = fmul fast float %3713, %3550
  %3716 = fptoui float %3714 to i32
  %3717 = fptoui float %3715 to i32
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 31
  %3721 = lshr i32 %3716, %3720
  %3722 = lshr i32 %3717, %3720
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = and i32 %3724, 31
  %3726 = shl i32 1, %3725
  %3727 = call i32 @dx.op.binary.i32(i32 40, i32 %3726, i32 4)  ; UMin(a,b)
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.i32 %3728, 1
  %3731 = icmp eq i32 %3727, 0
  br i1 %3731, label %3773, label %3732

; <label>:3732                                    ; preds = %3676
  br label %3733

; <label>:3733                                    ; preds = %3761, %3732
  %3734 = phi i32 [ %3764, %3761 ], [ 0, %3732 ]
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = lshr i32 %3736, 16
  %3738 = and i32 %3737, 31
  %3739 = shl i32 %3722, %3738
  %3740 = add i32 %3739, %3721
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 31
  %3744 = shl i32 %3740, %3743
  %3745 = add i32 %3744, %3734
  %3746 = shl i32 %3745, 2
  %3747 = add i32 %3746, 32
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = icmp slt i32 %3749, 0
  %3751 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %3734
  %3752 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %3734
  %3753 = bitcast float* %3751 to i32*
  %3754 = bitcast float* %3752 to i32*
  br i1 %3750, label %3755, label %3761, !dx.controlflow.hints !82

; <label>:3755                                    ; preds = %3733
  %3756 = and i32 %3749, 1073741823
  %3757 = add nuw nsw i32 %3756, 20
  %3758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.i32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.i32 %3758, 1
  br label %3761

; <label>:3761                                    ; preds = %3755, %3733
  %3762 = phi i32 [ %3759, %3755 ], [ %3729, %3733 ]
  %3763 = phi i32 [ %3760, %3755 ], [ %3730, %3733 ]
  store i32 %3762, i32* %3753, align 4
  store i32 %3763, i32* %3754, align 4
  %3764 = add nuw i32 %3734, 1
  %3765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.i32 %3765, 2
  %3767 = icmp eq i32 %3766, 0
  %3768 = icmp ugt i32 %3749, -1073741825
  %3769 = and i1 %3768, %3767
  %3770 = icmp ult i32 %3764, %3727
  %3771 = and i1 %3769, %3770
  br i1 %3771, label %3733, label %3772, !dx.controlflow.hints !83

; <label>:3772                                    ; preds = %3761
  br label %3773

; <label>:3773                                    ; preds = %3772, %3676
  %3774 = phi i32 [ 0, %3676 ], [ %3764, %3772 ]
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3777 = fptoui float %3776 to i32
  %3778 = icmp eq i32 %3777, 0
  br i1 %3778, label %3830, label %3779

; <label>:3779                                    ; preds = %3773
  br label %3780

; <label>:3780                                    ; preds = %3825, %3779
  %3781 = phi i32 [ %3826, %3825 ], [ %3774, %3779 ]
  %3782 = phi i32 [ %3827, %3825 ], [ 0, %3779 ]
  %3783 = lshr i32 %3782, 2
  %3784 = and i32 %3782, 3
  %3785 = add nuw nsw i32 %3783, 83
  %3786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 %3785)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.i32 %3786, 0
  %3788 = extractvalue %dx.types.CBufRet.i32 %3786, 1
  %3789 = extractvalue %dx.types.CBufRet.i32 %3786, 2
  %3790 = extractvalue %dx.types.CBufRet.i32 %3786, 3
  %3791 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 0
  store i32 %3787, i32* %3791, align 4
  %3792 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 1
  store i32 %3788, i32* %3792, align 4
  %3793 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 2
  store i32 %3789, i32* %3793, align 4
  %3794 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 3
  store i32 %3790, i32* %3794, align 4
  %3795 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i32 0, i32 %3784
  %3796 = load i32, i32* %3795, align 4, !tbaa !54
  %3797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.i32 %3797, 0
  %3799 = lshr i32 %3798, 16
  %3800 = and i32 %3799, 31
  %3801 = shl i32 %3722, %3800
  %3802 = add i32 %3801, %3721
  %3803 = shl i32 %3802, 2
  %3804 = add i32 %3803, %3796
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = icmp eq i32 %3806, 0
  br i1 %3807, label %3825, label %3808, !dx.controlflow.hints !84

; <label>:3808                                    ; preds = %3780
  %3809 = icmp slt i32 %3806, 0
  %3810 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %3781
  %3811 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %3781
  %3812 = bitcast float* %3810 to i32*
  %3813 = bitcast float* %3811 to i32*
  br i1 %3809, label %3814, label %3821, !dx.controlflow.hints !85

; <label>:3814                                    ; preds = %3808
  %3815 = and i32 %3806, 1073741823
  %3816 = add i32 %3796, 20
  %3817 = add i32 %3816, %3815
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.i32 %3818, 1
  br label %3821

; <label>:3821                                    ; preds = %3814, %3808
  %3822 = phi i32 [ %3819, %3814 ], [ %3729, %3808 ]
  %3823 = phi i32 [ %3820, %3814 ], [ %3730, %3808 ]
  store i32 %3822, i32* %3812, align 4
  store i32 %3823, i32* %3813, align 4
  %3824 = add i32 %3781, 1
  br label %3825

; <label>:3825                                    ; preds = %3821, %3780
  %3826 = phi i32 [ %3781, %3780 ], [ %3824, %3821 ]
  %3827 = add nuw i32 %3782, 1
  %3828 = icmp eq i32 %3827, %3777
  br i1 %3828, label %3829, label %3780

; <label>:3829                                    ; preds = %3825
  br label %3830

; <label>:3830                                    ; preds = %3829, %3773
  %3831 = phi i32 [ %3774, %3773 ], [ %3826, %3829 ]
  %3832 = icmp eq i32 %3831, 1
  %3833 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 0
  %3834 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 0
  br i1 %3832, label %3835, label %3838, !dx.controlflow.hints !86

; <label>:3835                                    ; preds = %3830
  %3836 = load float, float* %3833, align 4
  %3837 = load float, float* %3834, align 4
  br label %3865

; <label>:3838                                    ; preds = %3830
  %3839 = load float, float* %3833, align 4
  %3840 = load float, float* %3834, align 4
  %3841 = fdiv fast float 1.000000e+00, %3840
  %3842 = fsub fast float %3839, %3841
  %3843 = icmp ugt i32 %3831, 1
  br i1 %3843, label %3844, label %3860

; <label>:3844                                    ; preds = %3838
  br label %3845

; <label>:3845                                    ; preds = %3845, %3844
  %3846 = phi float [ %3855, %3845 ], [ %3842, %3844 ]
  %3847 = phi float [ %3856, %3845 ], [ %3839, %3844 ]
  %3848 = phi i32 [ %3857, %3845 ], [ 1, %3844 ]
  %3849 = getelementptr [12 x float], [12 x float]* %45, i32 0, i32 %3848
  %3850 = load float, float* %3849, align 4
  %3851 = getelementptr [12 x float], [12 x float]* %46, i32 0, i32 %3848
  %3852 = load float, float* %3851, align 4
  %3853 = fdiv fast float 1.000000e+00, %3852
  %3854 = fsub fast float %3850, %3853
  %3855 = call float @dx.op.binary.f32(i32 36, float %3846, float %3854)  ; FMin(a,b)
  %3856 = call float @dx.op.binary.f32(i32 35, float %3847, float %3850)  ; FMax(a,b)
  %3857 = add nuw i32 %3848, 1
  %3858 = icmp eq i32 %3857, %3831
  br i1 %3858, label %3859, label %3845

; <label>:3859                                    ; preds = %3845
  br label %3860

; <label>:3860                                    ; preds = %3859, %3838
  %3861 = phi float [ %3842, %3838 ], [ %3855, %3859 ]
  %3862 = phi float [ %3839, %3838 ], [ %3856, %3859 ]
  %3863 = fsub fast float %3862, %3861
  %3864 = fdiv fast float 1.000000e+00, %3863
  br label %3865

; <label>:3865                                    ; preds = %3860, %3835
  %3866 = phi float [ %3836, %3835 ], [ %3862, %3860 ]
  %3867 = phi float [ %3837, %3835 ], [ %3864, %3860 ]
  %3868 = fadd fast float %3296, %3866
  %3869 = fmul fast float %3868, %3867
  %3870 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3871 = fmul fast float %3870, 2.000000e+00
  %3872 = fsub fast float 1.000000e+00, %3871
  %3873 = fmul fast float %3706, %3706
  %3874 = fsub fast float %3707, %3873
  %3875 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3874)  ; FMax(a,b)
  %3876 = fdiv fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3707, %3706
  %3878 = fsub fast float %3708, %3877
  %3879 = fsub fast float %3872, %3706
  %3880 = fmul fast float %3872, %3872
  %3881 = fsub fast float %3880, %3707
  %3882 = fmul fast float %3876, %3878
  %3883 = fmul fast float %3882, %3879
  %3884 = fsub fast float %3881, %3883
  %3885 = fmul fast float %3707, %3707
  %3886 = fsub fast float %3709, %3885
  %3887 = fmul fast float %3878, %3878
  %3888 = fmul fast float %3887, %3876
  %3889 = fsub fast float %3886, %3888
  %3890 = fdiv fast float %3884, %3889
  %3891 = fmul fast float %3890, %3878
  %3892 = fsub fast float %3879, %3891
  %3893 = fmul fast float %3892, %3876
  %3894 = fmul fast float %3893, %3706
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = fmul fast float %3890, %3707
  %3897 = fsub fast float %3895, %3896
  %3898 = fmul fast float %3893, %3893
  %3899 = fmul fast float %3890, 4.000000e+00
  %3900 = fmul fast float %3899, %3897
  %3901 = fsub fast float %3898, %3900
  %3902 = call float @dx.op.unary.f32(i32 24, float %3901)  ; Sqrt(value)
  %3903 = fcmp fast oge float %3893, 0.000000e+00
  %3904 = fsub fast float -0.000000e+00, %3902
  %3905 = select i1 %3903, float %3904, float %3902
  %3906 = fsub fast float %3905, %3893
  %3907 = fdiv fast float %3906, %3890
  %3908 = fdiv fast float %3897, %3906
  %3909 = fmul fast float %3907, 5.000000e-01
  %3910 = fmul fast float %3908, 2.000000e+00
  %3911 = select i1 %3903, float %3909, float %3910
  %3912 = select i1 %3903, float %3910, float %3909
  %3913 = call float @dx.op.binary.f32(i32 35, float %3911, float %3912)  ; FMax(a,b)
  %3914 = call float @dx.op.binary.f32(i32 36, float %3911, float %3912)  ; FMin(a,b)
  %3915 = fcmp fast ogt float %3872, %3913
  %3916 = fsub fast float %3872, %3914
  %3917 = fsub fast float %3872, %3913
  %3918 = fsub fast float %3913, %3914
  %3919 = select i1 %3915, float %3917, float %3918
  %3920 = fmul float %3916, %3919
  %3921 = select i1 %3915, float %3914, float %3872
  %3922 = fcmp fast ogt float %3872, %3914
  %3923 = fmul fast float %3921, %3913
  %3924 = fadd fast float %3921, %3913
  %3925 = fmul fast float %3924, %3706
  %3926 = fadd fast float %3923, %3707
  %3927 = fsub fast float %3926, %3925
  %3928 = fdiv fast float %3927, %3920
  %3929 = select i1 %3922, float %3928, float 0.000000e+00
  %3930 = fsub fast float 1.000000e+00, %3929
  %3931 = select i1 %3915, float %3930, float %3929
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3691, 3
  %3934 = fmul fast float %3933, %3932
  %3935 = fsub fast float 1.000000e+00, %3934
  br label %3936

; <label>:3936                                    ; preds = %3865, %3543, %3269, %3227
  %3937 = phi float [ 1.000000e+00, %3227 ], [ %3935, %3865 ], [ 1.000000e+00, %3269 ], [ 1.000000e+00, %3543 ]
  %3938 = fcmp fast ogt float %3262, 0.000000e+00
  br i1 %3938, label %3939, label %4107, !dx.controlflow.hints !92

; <label>:3939                                    ; preds = %3936
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3943 = extractvalue %dx.types.CBufRet.f32 %3942, 2
  %3944 = fmul fast float %3941, %238
  %3945 = fadd fast float %3943, %265
  %3946 = fadd fast float %3945, %3944
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 2
  %3949 = extractvalue %dx.types.CBufRet.f32 %3947, 3
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 2
  %3952 = call float @dx.op.binary.f32(i32 35, float %3946, float 0.000000e+00)  ; FMax(a,b)
  %3953 = fadd fast float %3952, 0x3F10000000000000
  %3954 = fcmp fast oeq float %3951, 0.000000e+00
  br i1 %3954, label %3955, label %4022, !dx.controlflow.hints !60

; <label>:3955                                    ; preds = %3939
  %3956 = extractvalue %dx.types.CBufRet.f32 %3947, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3958 = fmul fast float %3957, %3158
  %3959 = fmul fast float %3956, %3159
  %3960 = fadd fast float %3958, 5.000000e-01
  %3961 = call float @dx.op.unary.f32(i32 27, float %3960)  ; Round_ni(value)
  %3962 = fadd fast float %3959, 5.000000e-01
  %3963 = call float @dx.op.unary.f32(i32 27, float %3962)  ; Round_ni(value)
  %3964 = fsub fast float %3960, %3961
  %3965 = fsub fast float %3962, %3963
  %3966 = fadd fast float %3961, -5.000000e-01
  %3967 = fadd fast float %3963, -5.000000e-01
  %3968 = fmul fast float %3964, 2.000000e+00
  %3969 = fsub fast float 3.000000e+00, %3968
  %3970 = fadd fast float %3968, 1.000000e+00
  %3971 = fsub fast float 2.000000e+00, %3964
  %3972 = bitcast float %3969 to i32
  %3973 = sub nsw i32 2129859010, %3972
  %3974 = bitcast i32 %3973 to float
  %3975 = fmul fast float %3974, %3971
  %3976 = fadd fast float %3975, -1.000000e+00
  %3977 = bitcast float %3970 to i32
  %3978 = sub nsw i32 2129859010, %3977
  %3979 = bitcast i32 %3978 to float
  %3980 = fmul fast float %3979, %3964
  %3981 = fadd fast float %3980, 1.000000e+00
  %3982 = fmul fast float %3965, 2.000000e+00
  %3983 = fsub fast float 3.000000e+00, %3982
  %3984 = fadd fast float %3982, 1.000000e+00
  %3985 = fsub fast float 2.000000e+00, %3965
  %3986 = bitcast float %3983 to i32
  %3987 = sub nsw i32 2129859010, %3986
  %3988 = bitcast i32 %3987 to float
  %3989 = fmul fast float %3988, %3985
  %3990 = fadd fast float %3989, -1.000000e+00
  %3991 = bitcast float %3984 to i32
  %3992 = sub nsw i32 2129859010, %3991
  %3993 = bitcast i32 %3992 to float
  %3994 = fmul fast float %3993, %3965
  %3995 = fadd fast float %3994, 1.000000e+00
  %3996 = fadd fast float %3976, %3966
  %3997 = fmul fast float %3996, %3948
  %3998 = fadd fast float %3990, %3967
  %3999 = fmul fast float %3998, %3949
  %4000 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %3997, float %3999, float undef, float undef, i32 0, i32 0, i32 undef, float %3953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4001 = extractvalue %dx.types.ResRet.f32 %4000, 0
  %4002 = fmul fast float %4001, %3969
  %4003 = fadd fast float %3981, %3966
  %4004 = fmul fast float %4003, %3948
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %4004, float %3999, float undef, float undef, i32 0, i32 0, i32 undef, float %3953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = fmul fast float %4006, %3970
  %4008 = fadd fast float %3995, %3967
  %4009 = fmul fast float %4008, %3949
  %4010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %3997, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %3953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = fmul fast float %4011, %3969
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %7, %dx.types.Handle %33, float %4004, float %4009, float undef, float undef, i32 0, i32 0, i32 undef, float %3953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = fmul fast float %4014, %3970
  %4016 = fadd fast float %4015, %4012
  %4017 = fmul fast float %4016, %3984
  %4018 = fadd fast float %4007, %4002
  %4019 = fmul fast float %4018, %3983
  %4020 = fadd fast float %4019, %4017
  %4021 = fmul fast float %4020, 6.250000e-02
  br label %4107

; <label>:4022                                    ; preds = %3939
  %4023 = fmul fast float %276, 0x401921FB60000000
  %4024 = call float @dx.op.unary.f32(i32 13, float %4023)  ; Sin(value)
  %4025 = call float @dx.op.unary.f32(i32 12, float %4023)  ; Cos(value)
  %4026 = fsub fast float -0.000000e+00, %4024
  br label %4027

; <label>:4027                                    ; preds = %4076, %4022
  %4028 = phi float [ 0.000000e+00, %4022 ], [ %4071, %4076 ]
  %4029 = phi float [ 0.000000e+00, %4022 ], [ %4073, %4076 ]
  %4030 = phi i32 [ 0, %4022 ], [ %4077, %4076 ]
  %4031 = mul i32 %4030, 2
  %4032 = add i32 0, %4031
  %4033 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4032
  %4034 = load float, float* %4033, align 4
  %4035 = mul i32 %4030, 2
  %4036 = add i32 1, %4035
  %4037 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4036
  %4038 = load float, float* %4037, align 4
  %4039 = fmul fast float %4034, %4025
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4038, float %4026, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %4034, %4024
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %4038, float %4025, float %4041)  ; FMad(a,b,c)
  %4043 = fmul fast float %4040, %3951
  %4044 = fmul fast float %4042, %3951
  %4045 = fadd fast float %4043, %3158
  %4046 = fadd fast float %4044, %3159
  %4047 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %32, float %4045, float %4046, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = extractvalue %dx.types.ResRet.f32 %4047, 3
  %4052 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 0
  store float %4048, float* %4052, align 4
  %4053 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 1
  store float %4049, float* %4053, align 4
  %4054 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 2
  store float %4050, float* %4054, align 4
  %4055 = getelementptr inbounds [4 x float], [4 x float]* %52, i32 0, i32 3
  store float %4051, float* %4055, align 4
  %4056 = fsub fast float %4048, %3953
  %4057 = fcmp fast olt float %4056, 0.000000e+00
  %4058 = select i1 %4057, float 0.000000e+00, float 1.000000e+00
  %4059 = fadd fast float %4058, %4028
  %4060 = fmul fast float %4058, %4056
  %4061 = fadd fast float %4060, %4029
  br label %4062

; <label>:4062                                    ; preds = %4062, %4027
  %4063 = phi i32 [ 1, %4027 ], [ %4074, %4062 ]
  %4064 = phi float [ %4061, %4027 ], [ %4073, %4062 ]
  %4065 = phi float [ %4059, %4027 ], [ %4071, %4062 ]
  %4066 = getelementptr [4 x float], [4 x float]* %52, i32 0, i32 %4063
  %4067 = load float, float* %4066, align 4, !tbaa !61
  %4068 = fsub fast float %4067, %3953
  %4069 = fcmp fast olt float %4068, 0.000000e+00
  %4070 = select i1 %4069, float 0.000000e+00, float 1.000000e+00
  %4071 = fadd fast float %4070, %4065
  %4072 = fmul fast float %4070, %4068
  %4073 = fadd fast float %4072, %4064
  %4074 = add nuw nsw i32 %4063, 1
  %4075 = icmp eq i32 %4074, 4
  br i1 %4075, label %4076, label %4062, !llvm.loop !63

; <label>:4076                                    ; preds = %4062
  %4077 = add nuw nsw i32 %4030, 1
  %4078 = icmp eq i32 %4077, 8
  br i1 %4078, label %4079, label %4027, !llvm.loop !65

; <label>:4079                                    ; preds = %4076
  %4080 = fdiv fast float 1.000000e+00, %4071
  %4081 = fmul fast float %4080, %4073
  %4082 = fdiv fast float 1.000000e+00, %3953
  %4083 = fmul fast float %4081, %4082
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = call float @dx.op.binary.f32(i32 35, float %4084, float 0.000000e+00)  ; FMax(a,b)
  %4086 = fmul fast float %4071, 3.125000e-02
  %4087 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4088 = fmul fast float %4087, 2.000000e+00
  %4089 = fadd fast float %4088, -1.000000e+00
  %4090 = fcmp fast ogt float %4089, 0.000000e+00
  %4091 = fcmp fast olt float %4089, 0.000000e+00
  %4092 = zext i1 %4090 to i32
  %4093 = zext i1 %4091 to i32
  %4094 = sub nsw i32 %4092, %4093
  %4095 = sitofp i32 %4094 to float
  %4096 = fmul fast float %4095, %4089
  %4097 = fsub fast float 1.000000e+00, %4096
  %4098 = fmul fast float %4097, %4097
  %4099 = fmul fast float %4098, %4097
  %4100 = fsub fast float %4097, %4099
  %4101 = fmul fast float %4100, %4085
  %4102 = fsub fast float 1.000000e+00, %4099
  %4103 = fsub fast float %4102, %4101
  %4104 = fmul fast float %4095, 5.000000e-01
  %4105 = fmul fast float %4104, %4103
  %4106 = fsub fast float 5.000000e-01, %4105
  br label %4107

; <label>:4107                                    ; preds = %4079, %3955, %3936
  %4108 = phi float [ 1.000000e+00, %3936 ], [ %4021, %3955 ], [ %4106, %4079 ]
  %4109 = fcmp fast ogt float %3260, 0.000000e+00
  br i1 %4109, label %4110, label %4278, !dx.controlflow.hints !93

; <label>:4110                                    ; preds = %4107
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4115 = fmul fast float %4112, %238
  %4116 = fadd fast float %4114, %265
  %4117 = fadd fast float %4116, %4115
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 2
  %4120 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4123 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4124 = fadd fast float %4123, 0x3F10000000000000
  %4125 = fcmp fast oeq float %4122, 0.000000e+00
  br i1 %4125, label %4126, label %4193, !dx.controlflow.hints !60

; <label>:4126                                    ; preds = %4110
  %4127 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4129 = fmul fast float %4128, %3150
  %4130 = fmul fast float %4127, %3151
  %4131 = fadd fast float %4129, 5.000000e-01
  %4132 = call float @dx.op.unary.f32(i32 27, float %4131)  ; Round_ni(value)
  %4133 = fadd fast float %4130, 5.000000e-01
  %4134 = call float @dx.op.unary.f32(i32 27, float %4133)  ; Round_ni(value)
  %4135 = fsub fast float %4131, %4132
  %4136 = fsub fast float %4133, %4134
  %4137 = fadd fast float %4132, -5.000000e-01
  %4138 = fadd fast float %4134, -5.000000e-01
  %4139 = fmul fast float %4135, 2.000000e+00
  %4140 = fsub fast float 3.000000e+00, %4139
  %4141 = fadd fast float %4139, 1.000000e+00
  %4142 = fsub fast float 2.000000e+00, %4135
  %4143 = bitcast float %4140 to i32
  %4144 = sub nsw i32 2129859010, %4143
  %4145 = bitcast i32 %4144 to float
  %4146 = fmul fast float %4145, %4142
  %4147 = fadd fast float %4146, -1.000000e+00
  %4148 = bitcast float %4141 to i32
  %4149 = sub nsw i32 2129859010, %4148
  %4150 = bitcast i32 %4149 to float
  %4151 = fmul fast float %4150, %4135
  %4152 = fadd fast float %4151, 1.000000e+00
  %4153 = fmul fast float %4136, 2.000000e+00
  %4154 = fsub fast float 3.000000e+00, %4153
  %4155 = fadd fast float %4153, 1.000000e+00
  %4156 = fsub fast float 2.000000e+00, %4136
  %4157 = bitcast float %4154 to i32
  %4158 = sub nsw i32 2129859010, %4157
  %4159 = bitcast i32 %4158 to float
  %4160 = fmul fast float %4159, %4156
  %4161 = fadd fast float %4160, -1.000000e+00
  %4162 = bitcast float %4155 to i32
  %4163 = sub nsw i32 2129859010, %4162
  %4164 = bitcast i32 %4163 to float
  %4165 = fmul fast float %4164, %4136
  %4166 = fadd fast float %4165, 1.000000e+00
  %4167 = fadd fast float %4147, %4137
  %4168 = fmul fast float %4167, %4119
  %4169 = fadd fast float %4161, %4138
  %4170 = fmul fast float %4169, %4120
  %4171 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %4168, float %4170, float undef, float undef, i32 0, i32 0, i32 undef, float %4124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = fmul fast float %4172, %4140
  %4174 = fadd fast float %4152, %4137
  %4175 = fmul fast float %4174, %4119
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %4175, float %4170, float undef, float undef, i32 0, i32 0, i32 undef, float %4124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = fmul fast float %4177, %4141
  %4179 = fadd fast float %4166, %4138
  %4180 = fmul fast float %4179, %4120
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %4168, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float %4124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = fmul fast float %4182, %4140
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %8, %dx.types.Handle %33, float %4175, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float %4124)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fmul fast float %4185, %4141
  %4187 = fadd fast float %4186, %4183
  %4188 = fmul fast float %4187, %4155
  %4189 = fadd fast float %4178, %4173
  %4190 = fmul fast float %4189, %4154
  %4191 = fadd fast float %4190, %4188
  %4192 = fmul fast float %4191, 6.250000e-02
  br label %4278

; <label>:4193                                    ; preds = %4110
  %4194 = fmul fast float %276, 0x401921FB60000000
  %4195 = call float @dx.op.unary.f32(i32 13, float %4194)  ; Sin(value)
  %4196 = call float @dx.op.unary.f32(i32 12, float %4194)  ; Cos(value)
  %4197 = fsub fast float -0.000000e+00, %4195
  br label %4198

; <label>:4198                                    ; preds = %4247, %4193
  %4199 = phi float [ 0.000000e+00, %4193 ], [ %4242, %4247 ]
  %4200 = phi float [ 0.000000e+00, %4193 ], [ %4244, %4247 ]
  %4201 = phi i32 [ 0, %4193 ], [ %4248, %4247 ]
  %4202 = mul i32 %4201, 2
  %4203 = add i32 0, %4202
  %4204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4203
  %4205 = load float, float* %4204, align 4
  %4206 = mul i32 %4201, 2
  %4207 = add i32 1, %4206
  %4208 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4207
  %4209 = load float, float* %4208, align 4
  %4210 = fmul fast float %4205, %4196
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4197, float %4210)  ; FMad(a,b,c)
  %4212 = fmul fast float %4205, %4195
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4196, float %4212)  ; FMad(a,b,c)
  %4214 = fmul fast float %4211, %4122
  %4215 = fmul fast float %4213, %4122
  %4216 = fadd fast float %4214, %3150
  %4217 = fadd fast float %4215, %3151
  %4218 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %32, float %4216, float %4217, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = extractvalue %dx.types.ResRet.f32 %4218, 3
  %4223 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 0
  store float %4219, float* %4223, align 4
  %4224 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 1
  store float %4220, float* %4224, align 4
  %4225 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 2
  store float %4221, float* %4225, align 4
  %4226 = getelementptr inbounds [4 x float], [4 x float]* %51, i32 0, i32 3
  store float %4222, float* %4226, align 4
  %4227 = fsub fast float %4219, %4124
  %4228 = fcmp fast olt float %4227, 0.000000e+00
  %4229 = select i1 %4228, float 0.000000e+00, float 1.000000e+00
  %4230 = fadd fast float %4229, %4199
  %4231 = fmul fast float %4229, %4227
  %4232 = fadd fast float %4231, %4200
  br label %4233

; <label>:4233                                    ; preds = %4233, %4198
  %4234 = phi i32 [ 1, %4198 ], [ %4245, %4233 ]
  %4235 = phi float [ %4232, %4198 ], [ %4244, %4233 ]
  %4236 = phi float [ %4230, %4198 ], [ %4242, %4233 ]
  %4237 = getelementptr [4 x float], [4 x float]* %51, i32 0, i32 %4234
  %4238 = load float, float* %4237, align 4, !tbaa !61
  %4239 = fsub fast float %4238, %4124
  %4240 = fcmp fast olt float %4239, 0.000000e+00
  %4241 = select i1 %4240, float 0.000000e+00, float 1.000000e+00
  %4242 = fadd fast float %4241, %4236
  %4243 = fmul fast float %4241, %4239
  %4244 = fadd fast float %4243, %4235
  %4245 = add nuw nsw i32 %4234, 1
  %4246 = icmp eq i32 %4245, 4
  br i1 %4246, label %4247, label %4233, !llvm.loop !63

; <label>:4247                                    ; preds = %4233
  %4248 = add nuw nsw i32 %4201, 1
  %4249 = icmp eq i32 %4248, 8
  br i1 %4249, label %4250, label %4198, !llvm.loop !65

; <label>:4250                                    ; preds = %4247
  %4251 = fdiv fast float 1.000000e+00, %4242
  %4252 = fmul fast float %4251, %4244
  %4253 = fdiv fast float 1.000000e+00, %4124
  %4254 = fmul fast float %4252, %4253
  %4255 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4256 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4257 = fmul fast float %4242, 3.125000e-02
  %4258 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4259 = fmul fast float %4258, 2.000000e+00
  %4260 = fadd fast float %4259, -1.000000e+00
  %4261 = fcmp fast ogt float %4260, 0.000000e+00
  %4262 = fcmp fast olt float %4260, 0.000000e+00
  %4263 = zext i1 %4261 to i32
  %4264 = zext i1 %4262 to i32
  %4265 = sub nsw i32 %4263, %4264
  %4266 = sitofp i32 %4265 to float
  %4267 = fmul fast float %4266, %4260
  %4268 = fsub fast float 1.000000e+00, %4267
  %4269 = fmul fast float %4268, %4268
  %4270 = fmul fast float %4269, %4268
  %4271 = fsub fast float %4268, %4270
  %4272 = fmul fast float %4271, %4256
  %4273 = fsub fast float 1.000000e+00, %4270
  %4274 = fsub fast float %4273, %4272
  %4275 = fmul fast float %4266, 5.000000e-01
  %4276 = fmul fast float %4275, %4274
  %4277 = fsub fast float 5.000000e-01, %4276
  br label %4278

; <label>:4278                                    ; preds = %4250, %4126, %4107
  %4279 = phi float [ 1.000000e+00, %4107 ], [ %4192, %4126 ], [ %4277, %4250 ]
  %4280 = fcmp fast ogt float %3259, 0.000000e+00
  br i1 %4280, label %4281, label %4603, !dx.controlflow.hints !94

; <label>:4281                                    ; preds = %4278
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = fmul fast float %4283, %238
  %4287 = fadd fast float %4285, %265
  %4288 = fadd fast float %4287, %4286
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 0
  %4294 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4295 = fadd fast float %4294, 0x3F10000000000000
  %4296 = fcmp fast oeq float %4293, 0.000000e+00
  br i1 %114, label %4297, label %4450, !dx.controlflow.hints !95

; <label>:4297                                    ; preds = %4281
  br i1 %4296, label %4298, label %4365, !dx.controlflow.hints !60

; <label>:4298                                    ; preds = %4297
  %4299 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4300 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4301 = fmul fast float %4300, %257
  %4302 = fmul fast float %4299, %261
  %4303 = fadd fast float %4301, 5.000000e-01
  %4304 = call float @dx.op.unary.f32(i32 27, float %4303)  ; Round_ni(value)
  %4305 = fadd fast float %4302, 5.000000e-01
  %4306 = call float @dx.op.unary.f32(i32 27, float %4305)  ; Round_ni(value)
  %4307 = fsub fast float %4303, %4304
  %4308 = fsub fast float %4305, %4306
  %4309 = fadd fast float %4304, -5.000000e-01
  %4310 = fadd fast float %4306, -5.000000e-01
  %4311 = fmul fast float %4307, 2.000000e+00
  %4312 = fsub fast float 3.000000e+00, %4311
  %4313 = fadd fast float %4311, 1.000000e+00
  %4314 = fsub fast float 2.000000e+00, %4307
  %4315 = bitcast float %4312 to i32
  %4316 = sub nsw i32 2129859010, %4315
  %4317 = bitcast i32 %4316 to float
  %4318 = fmul fast float %4317, %4314
  %4319 = fadd fast float %4318, -1.000000e+00
  %4320 = bitcast float %4313 to i32
  %4321 = sub nsw i32 2129859010, %4320
  %4322 = bitcast i32 %4321 to float
  %4323 = fmul fast float %4322, %4307
  %4324 = fadd fast float %4323, 1.000000e+00
  %4325 = fmul fast float %4308, 2.000000e+00
  %4326 = fsub fast float 3.000000e+00, %4325
  %4327 = fadd fast float %4325, 1.000000e+00
  %4328 = fsub fast float 2.000000e+00, %4308
  %4329 = bitcast float %4326 to i32
  %4330 = sub nsw i32 2129859010, %4329
  %4331 = bitcast i32 %4330 to float
  %4332 = fmul fast float %4331, %4328
  %4333 = fadd fast float %4332, -1.000000e+00
  %4334 = bitcast float %4327 to i32
  %4335 = sub nsw i32 2129859010, %4334
  %4336 = bitcast i32 %4335 to float
  %4337 = fmul fast float %4336, %4308
  %4338 = fadd fast float %4337, 1.000000e+00
  %4339 = fadd fast float %4319, %4309
  %4340 = fmul fast float %4339, %4290
  %4341 = fadd fast float %4333, %4310
  %4342 = fmul fast float %4341, %4291
  %4343 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %4340, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = fmul fast float %4344, %4312
  %4346 = fadd fast float %4324, %4309
  %4347 = fmul fast float %4346, %4290
  %4348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %4347, float %4342, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = fmul fast float %4349, %4313
  %4351 = fadd fast float %4338, %4310
  %4352 = fmul fast float %4351, %4291
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %4340, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = fmul fast float %4354, %4312
  %4356 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %33, float %4347, float %4352, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = fmul fast float %4357, %4313
  %4359 = fadd fast float %4358, %4355
  %4360 = fmul fast float %4359, %4327
  %4361 = fadd fast float %4350, %4345
  %4362 = fmul fast float %4361, %4326
  %4363 = fadd fast float %4362, %4360
  %4364 = fmul fast float %4363, 6.250000e-02
  br label %4603

; <label>:4365                                    ; preds = %4297
  %4366 = fmul fast float %276, 0x401921FB60000000
  %4367 = call float @dx.op.unary.f32(i32 13, float %4366)  ; Sin(value)
  %4368 = call float @dx.op.unary.f32(i32 12, float %4366)  ; Cos(value)
  %4369 = fsub fast float -0.000000e+00, %4367
  br label %4370

; <label>:4370                                    ; preds = %4419, %4365
  %4371 = phi float [ 0.000000e+00, %4365 ], [ %4414, %4419 ]
  %4372 = phi float [ 0.000000e+00, %4365 ], [ %4416, %4419 ]
  %4373 = phi i32 [ 0, %4365 ], [ %4420, %4419 ]
  %4374 = mul i32 %4373, 2
  %4375 = add i32 0, %4374
  %4376 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4375
  %4377 = load float, float* %4376, align 4
  %4378 = mul i32 %4373, 2
  %4379 = add i32 1, %4378
  %4380 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4379
  %4381 = load float, float* %4380, align 4
  %4382 = fmul fast float %4377, %4368
  %4383 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4369, float %4382)  ; FMad(a,b,c)
  %4384 = fmul fast float %4377, %4367
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4368, float %4384)  ; FMad(a,b,c)
  %4386 = fmul fast float %4383, %4293
  %4387 = fmul fast float %4385, %4293
  %4388 = fadd fast float %4386, %257
  %4389 = fadd fast float %4387, %261
  %4390 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %32, float %4388, float %4389, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %4391, float* %4395, align 4
  %4396 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %4392, float* %4396, align 4
  %4397 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %4393, float* %4397, align 4
  %4398 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %4394, float* %4398, align 4
  %4399 = fsub fast float %4391, %4295
  %4400 = fcmp fast olt float %4399, 0.000000e+00
  %4401 = select i1 %4400, float 0.000000e+00, float 1.000000e+00
  %4402 = fadd fast float %4401, %4371
  %4403 = fmul fast float %4401, %4399
  %4404 = fadd fast float %4403, %4372
  br label %4405

; <label>:4405                                    ; preds = %4405, %4370
  %4406 = phi i32 [ 1, %4370 ], [ %4417, %4405 ]
  %4407 = phi float [ %4404, %4370 ], [ %4416, %4405 ]
  %4408 = phi float [ %4402, %4370 ], [ %4414, %4405 ]
  %4409 = getelementptr [4 x float], [4 x float]* %50, i32 0, i32 %4406
  %4410 = load float, float* %4409, align 4, !tbaa !61
  %4411 = fsub fast float %4410, %4295
  %4412 = fcmp fast olt float %4411, 0.000000e+00
  %4413 = select i1 %4412, float 0.000000e+00, float 1.000000e+00
  %4414 = fadd fast float %4413, %4408
  %4415 = fmul fast float %4413, %4411
  %4416 = fadd fast float %4415, %4407
  %4417 = add nuw nsw i32 %4406, 1
  %4418 = icmp eq i32 %4417, 4
  br i1 %4418, label %4419, label %4405, !llvm.loop !63

; <label>:4419                                    ; preds = %4405
  %4420 = add nuw nsw i32 %4373, 1
  %4421 = icmp eq i32 %4420, 8
  br i1 %4421, label %4422, label %4370, !llvm.loop !65

; <label>:4422                                    ; preds = %4419
  %4423 = fdiv fast float 1.000000e+00, %4414
  %4424 = fmul fast float %4423, %4416
  %4425 = fdiv fast float 1.000000e+00, %4295
  %4426 = fmul fast float %4424, %4425
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = call float @dx.op.binary.f32(i32 35, float %4427, float 0.000000e+00)  ; FMax(a,b)
  %4429 = fmul fast float %4414, 3.125000e-02
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fmul fast float %4430, 2.000000e+00
  %4432 = fadd fast float %4431, -1.000000e+00
  %4433 = fcmp fast ogt float %4432, 0.000000e+00
  %4434 = fcmp fast olt float %4432, 0.000000e+00
  %4435 = zext i1 %4433 to i32
  %4436 = zext i1 %4434 to i32
  %4437 = sub nsw i32 %4435, %4436
  %4438 = sitofp i32 %4437 to float
  %4439 = fmul fast float %4438, %4432
  %4440 = fsub fast float 1.000000e+00, %4439
  %4441 = fmul fast float %4440, %4440
  %4442 = fmul fast float %4441, %4440
  %4443 = fsub fast float %4440, %4442
  %4444 = fmul fast float %4443, %4428
  %4445 = fsub fast float 1.000000e+00, %4442
  %4446 = fsub fast float %4445, %4444
  %4447 = fmul fast float %4438, 5.000000e-01
  %4448 = fmul fast float %4447, %4446
  %4449 = fsub fast float 5.000000e-01, %4448
  br label %4603

; <label>:4450                                    ; preds = %4281
  br i1 %4296, label %4451, label %4518, !dx.controlflow.hints !60

; <label>:4451                                    ; preds = %4450
  %4452 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4453 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4454 = fmul fast float %4453, %257
  %4455 = fmul fast float %4452, %261
  %4456 = fadd fast float %4454, 5.000000e-01
  %4457 = call float @dx.op.unary.f32(i32 27, float %4456)  ; Round_ni(value)
  %4458 = fadd fast float %4455, 5.000000e-01
  %4459 = call float @dx.op.unary.f32(i32 27, float %4458)  ; Round_ni(value)
  %4460 = fsub fast float %4456, %4457
  %4461 = fsub fast float %4458, %4459
  %4462 = fadd fast float %4457, -5.000000e-01
  %4463 = fadd fast float %4459, -5.000000e-01
  %4464 = fmul fast float %4460, 2.000000e+00
  %4465 = fsub fast float 3.000000e+00, %4464
  %4466 = fadd fast float %4464, 1.000000e+00
  %4467 = fsub fast float 2.000000e+00, %4460
  %4468 = bitcast float %4465 to i32
  %4469 = sub nsw i32 2129859010, %4468
  %4470 = bitcast i32 %4469 to float
  %4471 = fmul fast float %4470, %4467
  %4472 = fadd fast float %4471, -1.000000e+00
  %4473 = bitcast float %4466 to i32
  %4474 = sub nsw i32 2129859010, %4473
  %4475 = bitcast i32 %4474 to float
  %4476 = fmul fast float %4475, %4460
  %4477 = fadd fast float %4476, 1.000000e+00
  %4478 = fmul fast float %4461, 2.000000e+00
  %4479 = fsub fast float 3.000000e+00, %4478
  %4480 = fadd fast float %4478, 1.000000e+00
  %4481 = fsub fast float 2.000000e+00, %4461
  %4482 = bitcast float %4479 to i32
  %4483 = sub nsw i32 2129859010, %4482
  %4484 = bitcast i32 %4483 to float
  %4485 = fmul fast float %4484, %4481
  %4486 = fadd fast float %4485, -1.000000e+00
  %4487 = bitcast float %4480 to i32
  %4488 = sub nsw i32 2129859010, %4487
  %4489 = bitcast i32 %4488 to float
  %4490 = fmul fast float %4489, %4461
  %4491 = fadd fast float %4490, 1.000000e+00
  %4492 = fadd fast float %4472, %4462
  %4493 = fmul fast float %4492, %4290
  %4494 = fadd fast float %4486, %4463
  %4495 = fmul fast float %4494, %4291
  %4496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %4493, float %4495, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = fmul fast float %4497, %4465
  %4499 = fadd fast float %4477, %4462
  %4500 = fmul fast float %4499, %4290
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %4500, float %4495, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fmul fast float %4502, %4466
  %4504 = fadd fast float %4491, %4463
  %4505 = fmul fast float %4504, %4291
  %4506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %4493, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = fmul fast float %4507, %4465
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %33, float %4500, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float %4295)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = fmul fast float %4510, %4466
  %4512 = fadd fast float %4511, %4508
  %4513 = fmul fast float %4512, %4480
  %4514 = fadd fast float %4503, %4498
  %4515 = fmul fast float %4514, %4479
  %4516 = fadd fast float %4515, %4513
  %4517 = fmul fast float %4516, 6.250000e-02
  br label %4603

; <label>:4518                                    ; preds = %4450
  %4519 = fmul fast float %276, 0x401921FB60000000
  %4520 = call float @dx.op.unary.f32(i32 13, float %4519)  ; Sin(value)
  %4521 = call float @dx.op.unary.f32(i32 12, float %4519)  ; Cos(value)
  %4522 = fsub fast float -0.000000e+00, %4520
  br label %4523

; <label>:4523                                    ; preds = %4572, %4518
  %4524 = phi float [ 0.000000e+00, %4518 ], [ %4567, %4572 ]
  %4525 = phi float [ 0.000000e+00, %4518 ], [ %4569, %4572 ]
  %4526 = phi i32 [ 0, %4518 ], [ %4573, %4572 ]
  %4527 = mul i32 %4526, 2
  %4528 = add i32 0, %4527
  %4529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4528
  %4530 = load float, float* %4529, align 4
  %4531 = mul i32 %4526, 2
  %4532 = add i32 1, %4531
  %4533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4532
  %4534 = load float, float* %4533, align 4
  %4535 = fmul fast float %4530, %4521
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4522, float %4535)  ; FMad(a,b,c)
  %4537 = fmul fast float %4530, %4520
  %4538 = call float @dx.op.tertiary.f32(i32 46, float %4534, float %4521, float %4537)  ; FMad(a,b,c)
  %4539 = fmul fast float %4536, %4293
  %4540 = fmul fast float %4538, %4293
  %4541 = fadd fast float %4539, %257
  %4542 = fadd fast float %4540, %261
  %4543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %32, float %4541, float %4542, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 0
  store float %4544, float* %4548, align 4
  %4549 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 1
  store float %4545, float* %4549, align 4
  %4550 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 2
  store float %4546, float* %4550, align 4
  %4551 = getelementptr inbounds [4 x float], [4 x float]* %49, i32 0, i32 3
  store float %4547, float* %4551, align 4
  %4552 = fsub fast float %4544, %4295
  %4553 = fcmp fast olt float %4552, 0.000000e+00
  %4554 = select i1 %4553, float 0.000000e+00, float 1.000000e+00
  %4555 = fadd fast float %4554, %4524
  %4556 = fmul fast float %4554, %4552
  %4557 = fadd fast float %4556, %4525
  br label %4558

; <label>:4558                                    ; preds = %4558, %4523
  %4559 = phi i32 [ 1, %4523 ], [ %4570, %4558 ]
  %4560 = phi float [ %4557, %4523 ], [ %4569, %4558 ]
  %4561 = phi float [ %4555, %4523 ], [ %4567, %4558 ]
  %4562 = getelementptr [4 x float], [4 x float]* %49, i32 0, i32 %4559
  %4563 = load float, float* %4562, align 4, !tbaa !61
  %4564 = fsub fast float %4563, %4295
  %4565 = fcmp fast olt float %4564, 0.000000e+00
  %4566 = select i1 %4565, float 0.000000e+00, float 1.000000e+00
  %4567 = fadd fast float %4566, %4561
  %4568 = fmul fast float %4566, %4564
  %4569 = fadd fast float %4568, %4560
  %4570 = add nuw nsw i32 %4559, 1
  %4571 = icmp eq i32 %4570, 4
  br i1 %4571, label %4572, label %4558, !llvm.loop !63

; <label>:4572                                    ; preds = %4558
  %4573 = add nuw nsw i32 %4526, 1
  %4574 = icmp eq i32 %4573, 8
  br i1 %4574, label %4575, label %4523, !llvm.loop !65

; <label>:4575                                    ; preds = %4572
  %4576 = fdiv fast float 1.000000e+00, %4567
  %4577 = fmul fast float %4576, %4569
  %4578 = fdiv fast float 1.000000e+00, %4295
  %4579 = fmul fast float %4577, %4578
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = call float @dx.op.binary.f32(i32 35, float %4580, float 0.000000e+00)  ; FMax(a,b)
  %4582 = fmul fast float %4567, 3.125000e-02
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = fadd fast float %4584, -1.000000e+00
  %4586 = fcmp fast ogt float %4585, 0.000000e+00
  %4587 = fcmp fast olt float %4585, 0.000000e+00
  %4588 = zext i1 %4586 to i32
  %4589 = zext i1 %4587 to i32
  %4590 = sub nsw i32 %4588, %4589
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, %4585
  %4593 = fsub fast float 1.000000e+00, %4592
  %4594 = fmul fast float %4593, %4593
  %4595 = fmul fast float %4594, %4593
  %4596 = fsub fast float %4593, %4595
  %4597 = fmul fast float %4596, %4581
  %4598 = fsub fast float 1.000000e+00, %4595
  %4599 = fsub fast float %4598, %4597
  %4600 = fmul fast float %4591, 5.000000e-01
  %4601 = fmul fast float %4600, %4599
  %4602 = fsub fast float 5.000000e-01, %4601
  br label %4603

; <label>:4603                                    ; preds = %4575, %4451, %4422, %4298, %4278
  %4604 = phi float [ 1.000000e+00, %4278 ], [ %4364, %4298 ], [ %4449, %4422 ], [ %4517, %4451 ], [ %4602, %4575 ]
  %4605 = fsub fast float %4108, %3937
  %4606 = fmul fast float %4605, %3229
  %4607 = fadd fast float %4606, %3937
  %4608 = fsub fast float %4279, %4607
  %4609 = fmul fast float %4608, %3228
  %4610 = fadd fast float %4609, %4607
  %4611 = fsub fast float %4604, %4610
  %4612 = fmul fast float %4611, %3259
  %4613 = fadd fast float %4612, %4610
  br label %4614

; <label>:4614                                    ; preds = %4603, %3132, %1670, %1599, %1277, %1003, %1000, %970, %846, %793, %669, %616, %492, %439, %315
  %4615 = phi float [ %4613, %4603 ], [ %3142, %3132 ], [ %381, %315 ], [ %466, %439 ], [ %558, %492 ], [ %643, %616 ], [ %735, %669 ], [ %820, %793 ], [ %912, %846 ], [ %997, %970 ], [ %1669, %1599 ], [ 1.000000e+00, %1003 ], [ 1.000000e+00, %1277 ], [ 1.000000e+00, %1000 ], [ 0.000000e+00, %1670 ]
  %4616 = fcmp fast une float %4615, 0.000000e+00
  br i1 %4616, label %4617, label %4825, !dx.controlflow.hints !96

; <label>:4617                                    ; preds = %4614
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4631 = extractvalue %dx.types.CBufRet.f32 %4628, 2
  %4632 = extractvalue %dx.types.CBufRet.f32 %4628, 3
  %4633 = fmul fast float %4619, %177
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %178, float %4620, float %4633)  ; FMad(a,b,c)
  %4635 = call float @dx.op.tertiary.f32(i32 46, float %179, float %4621, float %4634)  ; FMad(a,b,c)
  %4636 = fadd fast float %4635, %4622
  %4637 = fmul fast float %4624, %177
  %4638 = call float @dx.op.tertiary.f32(i32 46, float %178, float %4625, float %4637)  ; FMad(a,b,c)
  %4639 = call float @dx.op.tertiary.f32(i32 46, float %179, float %4626, float %4638)  ; FMad(a,b,c)
  %4640 = fadd fast float %4639, %4627
  %4641 = fmul fast float %4629, %177
  %4642 = call float @dx.op.tertiary.f32(i32 46, float %178, float %4630, float %4641)  ; FMad(a,b,c)
  %4643 = call float @dx.op.tertiary.f32(i32 46, float %179, float %4631, float %4642)  ; FMad(a,b,c)
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4648 = fmul fast float %4647, %4636
  %4649 = fmul fast float %4647, %4640
  %4650 = fadd fast float %4648, %4645
  %4651 = fadd fast float %4649, %4646
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 0
  %4654 = extractvalue %dx.types.CBufRet.f32 %4652, 1
  %4655 = fsub fast float %4650, %4653
  %4656 = fsub fast float %4651, %4654
  %4657 = fcmp fast olt float %4655, 0.000000e+00
  %4658 = fcmp fast olt float %4656, 0.000000e+00
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.CBufRet.f32 %4659, 2
  %4663 = extractvalue %dx.types.CBufRet.f32 %4659, 3
  %4664 = select i1 %4657, float %4660, float %4662
  %4665 = select i1 %4658, float %4661, float %4663
  %4666 = fmul fast float %4664, %4655
  %4667 = fmul fast float %4665, %4656
  %4668 = call float @dx.op.unary.f32(i32 6, float %4666)  ; FAbs(value)
  %4669 = call float @dx.op.unary.f32(i32 6, float %4667)  ; FAbs(value)
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 0
  %4672 = call float @dx.op.binary.f32(i32 35, float %4668, float %4669)  ; FMax(a,b)
  %4673 = fsub fast float %4671, %4672
  %4674 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4675 = fcmp fast ogt float %4674, 0.000000e+00
  br i1 %4675, label %4676, label %4717, !dx.controlflow.hints !97

; <label>:4676                                    ; preds = %4617
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %31, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4679 = fcmp fast ogt float %4678, 0.000000e+00
  br i1 %4679, label %4680, label %4712, !dx.controlflow.hints !98

; <label>:4680                                    ; preds = %4676
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %31, float %4650, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4681, 2
  %4685 = extractvalue %dx.types.ResRet.f32 %4681, 3
  %4686 = fsub fast float 1.000000e+00, %4632
  %4687 = fsub fast float %4686, %4643
  %4688 = fmul fast float %4687, 0x400921FB60000000
  %4689 = fadd fast float %4688, 0x3FF921FB60000000
  %4690 = call float @dx.op.unary.f32(i32 13, float %4689)  ; Sin(value)
  %4691 = fadd fast float %4690, -1.000000e+00
  %4692 = fmul fast float %4691, 0x3FD45F3060000000
  %4693 = fmul fast float %4687, 0x401921FB60000000
  %4694 = fadd fast float %4693, 0x400921FB60000000
  %4695 = call float @dx.op.unary.f32(i32 13, float %4694)  ; Sin(value)
  %4696 = fadd fast float %4695, 0x3E7777A5C0000000
  %4697 = fmul fast float %4696, 0x3FC45F3060000000
  %4698 = fmul fast float %4687, 0x4022D97C80000000
  %4699 = fadd fast float %4698, 0x4012D97C80000000
  %4700 = call float @dx.op.unary.f32(i32 13, float %4699)  ; Sin(value)
  %4701 = fadd fast float %4700, 1.000000e+00
  %4702 = fmul fast float %4701, 0x3FBB2995E0000000
  %4703 = fmul fast float %4687, 0x402921FB60000000
  %4704 = fadd fast float %4703, 0x401921FB60000000
  %4705 = call float @dx.op.unary.f32(i32 13, float %4704)  ; Sin(value)
  %4706 = fadd fast float %4705, 0xBE8777A5C0000000
  %4707 = fmul fast float %4706, 0x3FB45F3060000000
  %4708 = call float @dx.op.dot4.f32(i32 56, float %4682, float %4683, float %4684, float %4685, float %4692, float %4697, float %4702, float %4707)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4709 = fmul fast float %4708, 0xBFF7154760000000
  %4710 = call float @dx.op.unary.f32(i32 21, float %4709)  ; Exp(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  br label %4712

; <label>:4712                                    ; preds = %4680, %4676
  %4713 = phi float [ %4711, %4680 ], [ 1.000000e+00, %4676 ]
  %4714 = fadd fast float %4713, -1.000000e+00
  %4715 = fmul fast float %4714, %4674
  %4716 = fadd fast float %4715, 1.000000e+00
  br label %4717

; <label>:4717                                    ; preds = %4712, %4617
  %4718 = phi float [ %4716, %4712 ], [ 1.000000e+00, %4617 ]
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4719, %4615
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4723 = fcmp fast ugt float %4722, 0.000000e+00
  br i1 %4723, label %4724, label %4759, !dx.controlflow.hints !99

; <label>:4724                                    ; preds = %4717
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4729 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4733 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4734 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4735 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4736 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.CBufRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4737, 2
  %4741 = fadd fast float %4738, %177
  %4742 = fadd fast float %4739, %178
  %4743 = fadd fast float %4740, %179
  %4744 = fmul fast float %4741, %4726
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4727, float %4742, float %4744)  ; FMad(a,b,c)
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4728, float %4743, float %4745)  ; FMad(a,b,c)
  %4747 = fadd fast float %4746, %4729
  %4748 = fmul fast float %4741, %4731
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4732, float %4742, float %4748)  ; FMad(a,b,c)
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4733, float %4743, float %4749)  ; FMad(a,b,c)
  %4751 = fadd fast float %4750, %4734
  %4752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %28, float %4747, float %4751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4753 = extractvalue %dx.types.ResRet.f32 %4752, 0
  %4754 = fmul fast float %4753, %4736
  %4755 = fadd fast float %4754, %4735
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4756, %4722
  %4758 = fsub fast float 1.000000e+00, %4757
  br label %4759

; <label>:4759                                    ; preds = %4724, %4717
  %4760 = phi float [ %4758, %4724 ], [ 1.000000e+00, %4717 ]
  %4761 = fmul fast float %4720, %4760
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4766 = fadd fast float %4763, %177
  %4767 = fadd fast float %4764, %178
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4774 = fsub fast float -0.000000e+00, %4766
  %4775 = fsub fast float -0.000000e+00, %4767
  %4776 = fsub fast float -0.000000e+00, %179
  %4777 = fsub fast float %4776, %4765
  %4778 = fadd fast float %4777, %4769
  %4779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4774, float %4775, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4771, float %4772, float %4773)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = fdiv fast float 1.000000e+00, %4780
  %4782 = fmul fast float %4781, %4779
  %4783 = fmul fast float %4771, %4782
  %4784 = fmul fast float %4772, %4782
  %4785 = fadd fast float %4783, %4766
  %4786 = fadd fast float %4784, %4767
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4790 = fsub fast float %4785, %4788
  %4791 = fsub fast float %4786, %4789
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4794 = extractvalue %dx.types.CBufRet.f32 %4792, 3
  %4795 = fmul fast float %4790, %4793
  %4796 = fmul fast float %4791, %4794
  %4797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.i32 %4797, 3
  %4799 = icmp eq i32 %4798, 0
  br i1 %4799, label %4805, label %4800, !dx.controlflow.hints !100

; <label>:4800                                    ; preds = %4759
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %30, float %4795, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  br label %4810

; <label>:4805                                    ; preds = %4759
  %4806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %4795, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4807 = extractvalue %dx.types.ResRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.ResRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.ResRet.f32 %4806, 2
  br label %4810

; <label>:4810                                    ; preds = %4805, %4800
  %4811 = phi float [ %4802, %4800 ], [ %4807, %4805 ]
  %4812 = phi float [ %4803, %4800 ], [ %4808, %4805 ]
  %4813 = phi float [ %4804, %4800 ], [ %4809, %4805 ]
  %4814 = extractvalue %dx.types.CBufRet.f32 %4768, 2
  %4815 = fmul fast float %4814, %4811
  %4816 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4817 = fsub fast float %4782, %4816
  %4818 = fsub fast float %4817, %4815
  %4819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4818)  ; FMax(a,b)
  %4820 = fmul fast float %4819, %4812
  %4821 = call float @dx.op.binary.f32(i32 36, float %4813, float %4820)  ; FMin(a,b)
  %4822 = fmul fast float %4821, 0xBFF7154760000000
  %4823 = call float @dx.op.unary.f32(i32 21, float %4822)  ; Exp(value)
  %4824 = fmul fast float %4761, %4823
  br label %4825

; <label>:4825                                    ; preds = %4810, %4614
  %4826 = phi float [ %4824, %4810 ], [ %4615, %4614 ]
  %4827 = fcmp fast ogt float %4826, 0.000000e+00
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4830 = fcmp fast ogt float %228, %4829
  %4831 = and i1 %4827, %4830
  br i1 %4831, label %4832, label %5101, !dx.controlflow.hints !101

; <label>:4832                                    ; preds = %4825
  %4833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.i32 %4833, 0
  %4835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.i32 %4835, 0
  %4837 = select i1 %114, i32 %4834, i32 %4836
  %4838 = icmp sgt i32 %4837, 0
  br i1 %4838, label %4839, label %5101, !dx.controlflow.hints !102

; <label>:4839                                    ; preds = %4832
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 1
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4844 = select i1 %114, float %4841, float %4843
  %4845 = extractvalue %dx.types.CBufRet.f32 %4840, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4847 = select i1 %114, float %4845, float %4846
  %4848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.i32 %4848, 0
  %4850 = uitofp i32 %4849 to float
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4854 = fmul fast float %4852, 5.000000e-01
  %4855 = fmul fast float %4853, 5.000000e-01
  %4856 = fsub fast float %110, %4854
  %4857 = fsub fast float %111, %4855
  %4858 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %32, float %4856, float %4857, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4859 = extractvalue %dx.types.ResRet.f32 %4858, 0
  %4860 = extractvalue %dx.types.ResRet.f32 %4858, 1
  %4861 = extractvalue %dx.types.ResRet.f32 %4858, 2
  %4862 = fcmp fast ogt float %4859, -1.000000e+00
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4865 = select i1 %4862, float %4864, float 1.000000e+00
  %4866 = fadd fast float %4859, 1.000000e+00
  %4867 = fmul fast float %4865, %4866
  %4868 = call float @dx.op.unary.f32(i32 6, float %4867)  ; FAbs(value)
  %4869 = fcmp fast ogt float %4860, -1.000000e+00
  %4870 = select i1 %4869, float %4864, float 1.000000e+00
  %4871 = fadd fast float %4860, 1.000000e+00
  %4872 = fmul fast float %4870, %4871
  %4873 = call float @dx.op.unary.f32(i32 6, float %4872)  ; FAbs(value)
  %4874 = fcmp fast ogt float %4861, -1.000000e+00
  %4875 = select i1 %4874, float %4864, float 1.000000e+00
  %4876 = fadd fast float %4861, 1.000000e+00
  %4877 = fmul fast float %4875, %4876
  %4878 = call float @dx.op.unary.f32(i32 6, float %4877)  ; FAbs(value)
  %4879 = fadd fast float %4854, %110
  %4880 = fadd fast float %4855, %111
  %4881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %26, %dx.types.Handle %32, float %4879, float %4880, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.ResRet.f32 %4881, 2
  %4884 = fcmp fast ogt float %4882, -1.000000e+00
  %4885 = select i1 %4884, float %4864, float 1.000000e+00
  %4886 = fadd fast float %4882, 1.000000e+00
  %4887 = fmul fast float %4885, %4886
  %4888 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %4889 = fcmp fast ogt float %4883, -1.000000e+00
  %4890 = select i1 %4889, float %4864, float 1.000000e+00
  %4891 = fadd fast float %4883, 1.000000e+00
  %4892 = fmul fast float %4890, %4891
  %4893 = call float @dx.op.unary.f32(i32 6, float %4892)  ; FAbs(value)
  %4894 = fsub fast float %4878, %4873
  %4895 = fsub fast float %4888, %4873
  %4896 = fsub fast float %4868, %4873
  %4897 = fsub fast float %4893, %4873
  %4898 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4899 = call float @dx.op.unary.f32(i32 6, float %4894)  ; FAbs(value)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4899, float %4898)  ; FMax(a,b)
  %4901 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4902 = call float @dx.op.unary.f32(i32 6, float %4896)  ; FAbs(value)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4902, float %4901)  ; FMax(a,b)
  %4904 = fadd fast float %4895, %4894
  %4905 = call float @dx.op.unary.f32(i32 6, float %4904)  ; FAbs(value)
  %4906 = fadd fast float %4897, %4896
  %4907 = call float @dx.op.unary.f32(i32 6, float %4906)  ; FAbs(value)
  %4908 = fsub fast float %4903, %4907
  %4909 = call float @dx.op.unary.f32(i32 6, float %4908)  ; FAbs(value)
  %4910 = fsub fast float %4900, %4905
  %4911 = call float @dx.op.unary.f32(i32 6, float %4910)  ; FAbs(value)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float %4909)  ; FMax(a,b)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 0
  %4922 = extractvalue %dx.types.CBufRet.f32 %4920, 1
  %4923 = extractvalue %dx.types.CBufRet.f32 %4920, 2
  %4924 = extractvalue %dx.types.CBufRet.f32 %4920, 3
  %4925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4926 = extractvalue %dx.types.CBufRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.CBufRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.CBufRet.f32 %4925, 2
  %4929 = extractvalue %dx.types.CBufRet.f32 %4925, 3
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.CBufRet.f32 %4930, 2
  %4934 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.CBufRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.CBufRet.f32 %4940, 2
  %4944 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4945 = select i1 %114, float %4916, float %4931
  %4946 = select i1 %114, float %4921, float %4936
  %4947 = select i1 %114, float %4926, float %4941
  %4948 = select i1 %114, float %4917, float %4932
  %4949 = select i1 %114, float %4922, float %4937
  %4950 = select i1 %114, float %4927, float %4942
  %4951 = select i1 %114, float %4918, float %4933
  %4952 = select i1 %114, float %4923, float %4938
  %4953 = select i1 %114, float %4928, float %4943
  %4954 = select i1 %114, float %4919, float %4934
  %4955 = select i1 %114, float %4924, float %4939
  %4956 = select i1 %114, float %4929, float %4944
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4960 = extractvalue %dx.types.CBufRet.f32 %4957, 2
  %4961 = fdiv fast float 1.000000e+00, %121
  %4962 = fmul fast float %4852, %105
  %4963 = fmul fast float %4853, %106
  %4964 = fmul fast float %4958, %4844
  %4965 = fmul fast float %4959, %4844
  %4966 = fmul fast float %4960, %4844
  %4967 = fadd fast float %4964, %177
  %4968 = fadd fast float %4965, %178
  %4969 = fadd fast float %4966, %179
  %4970 = fmul fast float %4967, %4945
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4948, float %4970)  ; FMad(a,b,c)
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4951, float %4971)  ; FMad(a,b,c)
  %4973 = fadd fast float %4972, %4954
  %4974 = fmul fast float %4967, %4946
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4949, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4952, float %4975)  ; FMad(a,b,c)
  %4977 = fadd fast float %4976, %4955
  %4978 = fmul fast float %4967, %4947
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4950, float %4978)  ; FMad(a,b,c)
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4953, float %4979)  ; FMad(a,b,c)
  %4981 = fadd fast float %4980, %4956
  %4982 = fdiv fast float 1.000000e+00, %4981
  %4983 = fmul fast float %4973, 5.000000e-01
  %4984 = fmul fast float %4977, -5.000000e-01
  %4985 = fmul fast float %4983, %4982
  %4986 = fmul fast float %4984, %4982
  %4987 = fsub fast float 5.000000e-01, %4962
  %4988 = fadd fast float %4987, %4985
  %4989 = fsub fast float 5.000000e-01, %4963
  %4990 = fadd fast float %4989, %4986
  %4991 = fsub fast float %4982, %4961
  %4992 = call float @dx.op.dot2.f32(i32 54, float %4988, float %4990, float %4988, float %4990)  ; Dot2(ax,ay,bx,by)
  %4993 = call float @dx.op.binary.f32(i32 35, float %4992, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4994 = call float @dx.op.dot2.f32(i32 54, float %4913, float %4914, float %4913, float %4914)  ; Dot2(ax,ay,bx,by)
  %4995 = fmul fast float %4994, %4993
  %4996 = call float @dx.op.unary.f32(i32 25, float %4995)  ; Rsqrt(value)
  %4997 = fmul fast float %4996, %4988
  %4998 = fmul fast float %4996, %4990
  %4999 = fadd fast float %4997, %4962
  %5000 = fadd fast float %4998, %4963
  %5001 = fmul fast float %4988, %4913
  %5002 = fmul fast float %4990, %4914
  %5003 = fmul fast float %5001, %5001
  %5004 = fmul fast float %5002, %5002
  %5005 = fadd fast float %5003, %5004
  %5006 = call float @dx.op.unary.f32(i32 24, float %5005)  ; Sqrt(value)
  %5007 = fdiv fast float 1.000000e+00, %5006
  %5008 = fmul fast float %5006, 3.906250e-03
  %5009 = fmul fast float %4912, 0x3F70624DE0000000
  %5010 = fadd fast float %5009, 0x3F70624DE0000000
  br label %5011

; <label>:5011                                    ; preds = %5067, %4839
  %5012 = phi float [ %5043, %5067 ], [ %121, %4839 ]
  %5013 = phi float [ %5030, %5067 ], [ %121, %4839 ]
  %5014 = phi float [ %5013, %5067 ], [ %121, %4839 ]
  %5015 = phi i32 [ %5068, %5067 ], [ 0, %4839 ]
  %5016 = sitofp i32 %5015 to float
  %5017 = fadd fast float %276, 5.000000e-01
  %5018 = call float @dx.op.unary.f32(i32 22, float %5017)  ; Frc(value)
  %5019 = fadd fast float %5016, %5018
  %5020 = sitofp i32 %4837 to float
  %5021 = fdiv fast float %5019, %5020
  %5022 = fmul fast float %5021, %5021
  %5023 = call float @dx.op.binary.f32(i32 36, float %5022, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %5024 = fmul fast float %5023, %4988
  %5025 = fmul fast float %5023, %4990
  %5026 = fmul fast float %5023, %4991
  %5027 = fadd fast float %5024, %4999
  %5028 = fadd fast float %5025, %5000
  %5029 = fadd fast float %5026, %4961
  %5030 = fdiv fast float 1.000000e+00, %5029
  %5031 = icmp ne i32 %4849, 0
  %5032 = fmul fast float %5008, %5023
  %5033 = call float @dx.op.binary.f32(i32 36, float %5032, float %4850)  ; FMin(a,b)
  %5034 = select i1 %5031, float %5033, float 0.000000e+00
  %5035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %32, float %5027, float %5028, float undef, float undef, i32 0, i32 0, i32 undef, float %5034)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5036 = extractvalue %dx.types.ResRet.f32 %5035, 0
  %5037 = fcmp fast ogt float %5036, -1.000000e+00
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5040 = select i1 %5037, float %5039, float 1.000000e+00
  %5041 = fadd fast float %5036, 1.000000e+00
  %5042 = fmul fast float %5040, %5041
  %5043 = call float @dx.op.unary.f32(i32 6, float %5042)  ; FAbs(value)
  %5044 = fmul fast float %5043, %5010
  %5045 = fsub fast float %5030, %5043
  %5046 = fsub fast float %5045, %5044
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  %5048 = fcmp fast ogt float %4847, 0.000000e+00
  br i1 %5048, label %5049, label %5052, !dx.controlflow.hints !103

; <label>:5049                                    ; preds = %5011
  %5050 = fsub fast float %5030, %5014
  %5051 = call float @dx.op.binary.f32(i32 35, float %5050, float %4847)  ; FMax(a,b)
  br label %5052

; <label>:5052                                    ; preds = %5049, %5011
  %5053 = phi float [ %5051, %5049 ], [ %4844, %5011 ]
  %5054 = fcmp fast olt float %5046, %5053
  %5055 = fcmp uge float %5036, -1.000000e+00
  %5056 = xor i1 %114, %5055
  %5057 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5059 = fcmp fast oeq float %5027, %5057
  %5060 = fcmp fast oeq float %5028, %5058
  %5061 = and i1 %5059, %5060
  %5062 = and i1 %5056, %5061
  %5063 = and i1 %5047, %5054
  %5064 = and i1 %5063, %5062
  %5065 = fcmp fast ogt float %5023, %5007
  %5066 = and i1 %5065, %5064
  br i1 %5066, label %5070, label %5067, !dx.controlflow.hints !104

; <label>:5067                                    ; preds = %5052
  %5068 = add nuw nsw i32 %5015, 1
  %5069 = icmp slt i32 %5015, %4837
  br i1 %5069, label %5011, label %5070

; <label>:5070                                    ; preds = %5067, %5052
  %5071 = phi i1 [ false, %5067 ], [ true, %5052 ]
  %5072 = fsub fast float %5013, %5012
  %5073 = fsub fast float %5072, %5045
  %5074 = fcmp fast une float %5073, 0.000000e+00
  %5075 = fmul fast float %5030, %5072
  %5076 = fmul fast float %5045, %5013
  %5077 = fsub fast float %5075, %5076
  %5078 = fdiv fast float 1.000000e+00, %5073
  %5079 = fmul fast float %5078, %5077
  %5080 = select i1 %5074, float %5079, float %5030
  %5081 = fdiv fast float 1.000000e+00, %5080
  %5082 = fsub fast float %5081, %4961
  %5083 = fdiv fast float %5082, %4991
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, %4988
  %5086 = fmul fast float %5084, %4990
  %5087 = fadd fast float %4999, -5.000000e-01
  %5088 = fadd fast float %5087, %5085
  %5089 = fadd fast float %5000, -5.000000e-01
  %5090 = fadd fast float %5089, %5086
  %5091 = call float @dx.op.unary.f32(i32 6, float %5088)  ; FAbs(value)
  %5092 = call float @dx.op.unary.f32(i32 6, float %5090)  ; FAbs(value)
  %5093 = fadd fast float %5091, -5.000000e-01
  %5094 = fadd fast float %5092, -5.000000e-01
  %5095 = call float @dx.op.binary.f32(i32 35, float %5093, float %5094)  ; FMax(a,b)
  %5096 = fcmp fast olt float %5095, 0.000000e+00
  %5097 = or i1 %114, %5096
  %5098 = and i1 %5071, %5097
  %5099 = select i1 %5098, float 0.000000e+00, float 1.000000e+00
  %5100 = call float @dx.op.binary.f32(i32 36, float %4826, float %5099)  ; FMin(a,b)
  br label %5101

; <label>:5101                                    ; preds = %5070, %4832, %4825
  %5102 = phi float [ %5100, %5070 ], [ %4826, %4832 ], [ %4826, %4825 ]
  %5103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %5104 = extractvalue %dx.types.ResRet.i32 %5103, 0
  %5105 = and i32 %5104, 114688
  %5106 = icmp ne i32 %5105, 0
  %5107 = fcmp fast ogt float %5102, 0.000000e+00
  %5108 = and i1 %5107, %5106
  br i1 %5108, label %5109, label %5884, !dx.controlflow.hints !105

; <label>:5109                                    ; preds = %5101
  %5110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %103, i32 %104, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = fmul fast float %5111, 2.550000e+02
  %5113 = fptoui float %5112 to i32
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5116 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = call float @dx.op.unary.f32(i32 6, float %5116)  ; FAbs(value)
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = icmp eq i32 %5113, 0
  %5120 = fcmp ugt float %5118, %5115
  %5121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.i32 %5121, 0
  %5123 = and i32 %5122, 64
  %5124 = icmp eq i32 %5123, 0
  %5125 = or i1 %5120, %5124
  %5126 = and i1 %5119, %5125
  br i1 %5126, label %5465, label %5127, !dx.controlflow.hints !106

; <label>:5127                                    ; preds = %5109
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = extractvalue %dx.types.CBufRet.f32 %5128, 1
  %5131 = extractvalue %dx.types.CBufRet.f32 %5128, 2
  %5132 = fadd fast float %5129, %177
  %5133 = fadd fast float %5130, %178
  %5134 = fadd fast float %5131, %179
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = fsub fast float %5132, %5136
  %5139 = fsub fast float %5133, %5137
  %5140 = fmul fast float %5138, %5138
  %5141 = fmul fast float %5139, %5139
  %5142 = fadd fast float %5140, %5141
  %5143 = call float @dx.op.unary.f32(i32 24, float %5142)  ; Sqrt(value)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5145 = fcmp fast olt float %5143, %5144
  br i1 %5145, label %5146, label %5211, !dx.controlflow.hints !107

; <label>:5146                                    ; preds = %5127
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5147, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5155 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5156 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5157 = extractvalue %dx.types.CBufRet.f32 %5149, 3
  %5158 = extractvalue %dx.types.CBufRet.f32 %5151, 3
  %5159 = fadd fast float %5156, %5132
  %5160 = fadd fast float %5157, %5133
  %5161 = fadd fast float %5158, %5134
  %5162 = fmul fast float %5159, %5148
  %5163 = call float @dx.op.tertiary.f32(i32 46, float %5160, float %5150, float %5162)  ; FMad(a,b,c)
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %5161, float %5152, float %5163)  ; FMad(a,b,c)
  %5165 = fmul fast float %5159, %5153
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5160, float %5154, float %5165)  ; FMad(a,b,c)
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5161, float %5155, float %5166)  ; FMad(a,b,c)
  %5168 = fsub fast float %5164, %5156
  %5169 = fsub fast float %5167, %5157
  %5170 = fsub fast float %5168, %5136
  %5171 = fadd fast float %5170, %5144
  %5172 = fsub fast float %5169, %5137
  %5173 = fadd fast float %5172, %5144
  %5174 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5175 = fmul fast float %5171, %5174
  %5176 = fmul fast float %5173, %5174
  %5177 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5178 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5179 = fsub fast float 1.000000e+00, %5177
  %5180 = fsub fast float 1.000000e+00, %5178
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %5179, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = fcmp fast ugt float %5182, 0.000000e+00
  br i1 %5183, label %5184, label %5465, !dx.controlflow.hints !108

; <label>:5184                                    ; preds = %5146
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5187 = fmul fast float %5186, %5182
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 3
  %5189 = fadd fast float %5188, %5187
  %5190 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5191 = fadd fast float %5189, %5158
  %5192 = fmul fast float %5164, %5152
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5155, float %5192)  ; FMad(a,b,c)
  %5194 = call float @dx.op.tertiary.f32(i32 46, float %5191, float %5190, float %5193)  ; FMad(a,b,c)
  %5195 = fsub fast float %5194, %5158
  %5196 = fsub fast float %5195, %5131
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %31, float %5179, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.ResRet.f32 %5197, 1
  %5200 = extractvalue %dx.types.ResRet.f32 %5197, 2
  %5201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %31, float %5179, float %5180, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5202 = extractvalue %dx.types.ResRet.f32 %5201, 0
  %5203 = extractvalue %dx.types.ResRet.f32 %5201, 1
  %5204 = extractvalue %dx.types.ResRet.f32 %5201, 2
  %5205 = fadd fast float %5202, %5198
  %5206 = fmul fast float %5205, 0x3F847AE140000000
  %5207 = fadd fast float %5203, %5199
  %5208 = fmul fast float %5207, 0x3F847AE140000000
  %5209 = fadd fast float %5204, %5200
  %5210 = fmul fast float %5209, 0x3F847AE140000000
  br label %5465

; <label>:5211                                    ; preds = %5127
  %5212 = and i32 %5113, -3
  %5213 = icmp eq i32 %5212, 1
  br i1 %5213, label %5214, label %5465, !dx.controlflow.hints !109

; <label>:5214                                    ; preds = %5211
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5223 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5225 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5226 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5227 = fadd fast float %5224, %5132
  %5228 = fadd fast float %5225, %5133
  %5229 = fadd fast float %5226, %5134
  %5230 = fmul fast float %5227, %5216
  %5231 = call float @dx.op.tertiary.f32(i32 46, float %5228, float %5218, float %5230)  ; FMad(a,b,c)
  %5232 = call float @dx.op.tertiary.f32(i32 46, float %5229, float %5220, float %5231)  ; FMad(a,b,c)
  %5233 = fmul fast float %5227, %5221
  %5234 = call float @dx.op.tertiary.f32(i32 46, float %5228, float %5222, float %5233)  ; FMad(a,b,c)
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5229, float %5223, float %5234)  ; FMad(a,b,c)
  %5236 = fsub fast float %5232, %5224
  %5237 = fsub fast float %5235, %5225
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5242 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 3
  %5245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.i32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.i32 %5245, 1
  %5248 = udiv i32 %5247, %5246
  %5249 = fsub fast float %5236, %5239
  %5250 = fsub fast float %5237, %5240
  %5251 = call float @dx.op.binary.f32(i32 35, float %5249, float 0.000000e+00)  ; FMax(a,b)
  %5252 = call float @dx.op.binary.f32(i32 35, float %5250, float 0.000000e+00)  ; FMax(a,b)
  %5253 = call float @dx.op.binary.f32(i32 36, float %5251, float %5241)  ; FMin(a,b)
  %5254 = call float @dx.op.binary.f32(i32 36, float %5252, float %5242)  ; FMin(a,b)
  %5255 = add i32 %5246, -1
  %5256 = add i32 %5248, -1
  %5257 = fmul fast float %5253, %5244
  %5258 = fmul fast float %5254, %5244
  %5259 = fptoui float %5257 to i32
  %5260 = fptoui float %5258 to i32
  %5261 = call i32 @dx.op.binary.i32(i32 40, i32 %5259, i32 %5255)  ; UMin(a,b)
  %5262 = call i32 @dx.op.binary.i32(i32 40, i32 %5260, i32 %5256)  ; UMin(a,b)
  %5263 = mul i32 %5262, %5246
  %5264 = add i32 %5263, %5261
  %5265 = shl i32 %5264, 2
  %5266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.i32 %5266, 0
  %5268 = icmp eq i32 %5267, -1
  br i1 %5268, label %5465, label %5269, !dx.controlflow.hints !110

; <label>:5269                                    ; preds = %5214
  %5270 = mul i32 %5267, 148
  %5271 = add i32 %5270, 4
  %5272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5271, i32 undef)  ; BufferLoad(srv,index,wot)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = add i32 %5270, 8
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = add i32 %5270, 36
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = add i32 %5270, 60
  %5281 = add i32 %5270, 92
  %5282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.i32 %5282, 0
  %5284 = add i32 %5270, 116
  %5285 = fsub fast float %5236, %5273
  %5286 = fsub fast float %5237, %5276
  %5287 = fmul fast float %5244, %5285
  %5288 = fmul fast float %5244, %5286
  %5289 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = extractvalue %dx.types.CBufRet.f32 %5114, 3
  %5293 = fadd fast float %5292, 2.000000e+00
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5296 = fadd fast float %5293, %5295
  %5297 = add i32 %5283, 0
  %5298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5297, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5298, i32 0)  ; GetDimensions(handle,mipLevel)
  %5300 = extractvalue %dx.types.Dimensions %5299, 0
  %5301 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5300)  ; FirstbitLo(value)
  %5302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.i32 %5302, 1
  %5304 = sub nsw i32 %5303, %5301
  %5305 = sitofp i32 %5304 to float
  %5306 = fsub fast float %5296, %5305
  %5307 = call float @dx.op.binary.f32(i32 35, float %5306, float 0.000000e+00)  ; FMax(a,b)
  %5308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5298, %dx.types.Handle %29, float %5289, float %5291, float %5279, float undef, i32 0, i32 0, i32 undef, float %5307)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5309 = extractvalue %dx.types.ResRet.f32 %5308, 0
  %5310 = fcmp ule float %5309, 0x3FE0101020000000
  %5311 = extractvalue %dx.types.CBufRet.i32 %5302, 0
  %5312 = and i32 %5311, 128
  %5313 = icmp ne i32 %5312, 0
  %5314 = and i1 %5310, %5313
  br i1 %5314, label %5465, label %5315, !dx.controlflow.hints !111

; <label>:5315                                    ; preds = %5269
  %5316 = add i32 %5270, 20
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = add i32 %5270, 24
  %5320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5319, i32 undef)  ; BufferLoad(srv,index,wot)
  %5321 = extractvalue %dx.types.ResRet.f32 %5320, 0
  %5322 = add i32 %5270, 40
  %5323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = add i32 %5270, 96
  %5326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.i32 %5326, 0
  %5328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.f32 %5328, 2
  %5330 = fmul fast float %5329, %5289
  %5331 = fmul fast float %5329, %5291
  %5332 = extractvalue %dx.types.CBufRet.f32 %5328, 3
  %5333 = fadd fast float %5330, %5332
  %5334 = fadd fast float %5331, %5332
  %5335 = add i32 %5327, 0
  %5336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5335, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5337 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5336, i32 0)  ; GetDimensions(handle,mipLevel)
  %5338 = extractvalue %dx.types.Dimensions %5337, 0
  %5339 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5338)  ; FirstbitLo(value)
  %5340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.i32 %5340, 1
  %5342 = sub nsw i32 %5341, %5339
  %5343 = sitofp i32 %5342 to float
  %5344 = fsub fast float %5293, %5343
  %5345 = call float @dx.op.binary.f32(i32 35, float %5344, float 0.000000e+00)  ; FMax(a,b)
  %5346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5336, %dx.types.Handle %29, float %5333, float %5334, float %5324, float undef, i32 0, i32 0, i32 undef, float %5345)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = fmul fast float %5347, %5318
  %5349 = fadd fast float %5348, %5321
  %5350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.f32 %5350, 0
  %5352 = extractvalue %dx.types.CBufRet.f32 %5350, 1
  %5353 = extractvalue %dx.types.CBufRet.f32 %5350, 2
  %5354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5355 = extractvalue %dx.types.CBufRet.f32 %5354, 3
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5358 = extractvalue %dx.types.CBufRet.f32 %5350, 3
  %5359 = fadd fast float %5355, %5236
  %5360 = fadd fast float %5357, %5237
  %5361 = fadd fast float %5349, %5358
  %5362 = fmul fast float %5359, %5351
  %5363 = call float @dx.op.tertiary.f32(i32 46, float %5360, float %5352, float %5362)  ; FMad(a,b,c)
  %5364 = call float @dx.op.tertiary.f32(i32 46, float %5361, float %5353, float %5363)  ; FMad(a,b,c)
  %5365 = fsub fast float %5364, %5358
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5368 = fsub fast float %5365, %5367
  %5369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.i32 %5369, 0
  %5371 = call i32 @dx.op.binary.i32(i32 40, i32 %5267, i32 %5370)  ; UMin(a,b)
  %5372 = mul i32 %5371, 36
  %5373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5374 = extractvalue %dx.types.ResRet.i32 %5373, 0
  %5375 = add i32 %5372, 4
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = fmul fast float %5377, %5289
  %5379 = fmul fast float %5377, %5291
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5381 = fadd fast float %5378, %5380
  %5382 = fadd fast float %5379, %5380
  %5383 = icmp eq i32 %5374, 0
  br i1 %5383, label %5452, label %5384

; <label>:5384                                    ; preds = %5315
  br label %5385

; <label>:5385                                    ; preds = %5442, %5384
  %5386 = phi float [ %5443, %5442 ], [ 0.000000e+00, %5384 ]
  %5387 = phi float [ %5444, %5442 ], [ 0.000000e+00, %5384 ]
  %5388 = phi float [ %5445, %5442 ], [ 0.000000e+00, %5384 ]
  %5389 = phi float [ %5446, %5442 ], [ 0.000000e+00, %5384 ]
  %5390 = phi float [ %5447, %5442 ], [ 0.000000e+00, %5384 ]
  %5391 = phi float [ %5448, %5442 ], [ 0.000000e+00, %5384 ]
  %5392 = phi i32 [ %5449, %5442 ], [ 0, %5384 ]
  %5393 = shl i32 %5392, 2
  %5394 = add i32 %5280, %5393
  %5395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = add i32 %5284, %5393
  %5398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.i32 %5398, 0
  %5400 = add i32 %5399, 0
  %5401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5400, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5402 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5401, i32 0)  ; GetDimensions(handle,mipLevel)
  %5403 = extractvalue %dx.types.Dimensions %5402, 0
  %5404 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5403)  ; FirstbitLo(value)
  %5405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.i32 %5405, 1
  %5407 = sub nsw i32 %5406, %5404
  %5408 = sitofp i32 %5407 to float
  %5409 = fsub fast float %5293, %5408
  %5410 = call float @dx.op.binary.f32(i32 35, float %5409, float 0.000000e+00)  ; FMax(a,b)
  %5411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5401, %dx.types.Handle %29, float %5381, float %5382, float %5396, float undef, i32 0, i32 0, i32 undef, float %5410)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = fcmp fast ogt float %5412, 0.000000e+00
  br i1 %5413, label %5414, label %5442, !dx.controlflow.hints !112

; <label>:5414                                    ; preds = %5385
  %5415 = add i32 %5375, %5393
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = and i32 %5417, 32767
  %5419 = mul nuw nsw i32 %5418, 928
  %5420 = add nuw nsw i32 %5419, 48
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = add nuw nsw i32 %5419, 60
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.ResRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.ResRet.f32 %5426, 2
  %5430 = fmul fast float %5422, %5412
  %5431 = fmul fast float %5423, %5412
  %5432 = fmul fast float %5424, %5412
  %5433 = fadd fast float %5430, %5386
  %5434 = fadd fast float %5431, %5387
  %5435 = fadd fast float %5432, %5388
  %5436 = fmul fast float %5427, %5412
  %5437 = fmul fast float %5428, %5412
  %5438 = fmul fast float %5429, %5412
  %5439 = fadd fast float %5436, %5389
  %5440 = fadd fast float %5437, %5390
  %5441 = fadd fast float %5438, %5391
  br label %5442

; <label>:5442                                    ; preds = %5414, %5385
  %5443 = phi float [ %5433, %5414 ], [ %5386, %5385 ]
  %5444 = phi float [ %5434, %5414 ], [ %5387, %5385 ]
  %5445 = phi float [ %5435, %5414 ], [ %5388, %5385 ]
  %5446 = phi float [ %5439, %5414 ], [ %5389, %5385 ]
  %5447 = phi float [ %5440, %5414 ], [ %5390, %5385 ]
  %5448 = phi float [ %5441, %5414 ], [ %5391, %5385 ]
  %5449 = add nuw i32 %5392, 1
  %5450 = icmp eq i32 %5449, %5374
  br i1 %5450, label %5451, label %5385

; <label>:5451                                    ; preds = %5442
  br label %5452

; <label>:5452                                    ; preds = %5451, %5315
  %5453 = phi float [ 0.000000e+00, %5315 ], [ %5443, %5451 ]
  %5454 = phi float [ 0.000000e+00, %5315 ], [ %5444, %5451 ]
  %5455 = phi float [ 0.000000e+00, %5315 ], [ %5445, %5451 ]
  %5456 = phi float [ 0.000000e+00, %5315 ], [ %5446, %5451 ]
  %5457 = phi float [ 0.000000e+00, %5315 ], [ %5447, %5451 ]
  %5458 = phi float [ 0.000000e+00, %5315 ], [ %5448, %5451 ]
  %5459 = fadd fast float %5456, %5453
  %5460 = fmul fast float %5459, 0x3F847AE140000000
  %5461 = fadd fast float %5457, %5454
  %5462 = fmul fast float %5461, 0x3F847AE140000000
  %5463 = fadd fast float %5458, %5455
  %5464 = fmul fast float %5463, 0x3F847AE140000000
  br label %5465

; <label>:5465                                    ; preds = %5452, %5269, %5214, %5211, %5184, %5146, %5109
  %5466 = phi i1 [ true, %5109 ], [ false, %5184 ], [ true, %5146 ], [ false, %5452 ], [ true, %5214 ], [ true, %5269 ], [ true, %5211 ]
  %5467 = phi float [ 0.000000e+00, %5109 ], [ %5196, %5184 ], [ -1.310720e+05, %5146 ], [ %5368, %5452 ], [ -1.310720e+05, %5214 ], [ -1.310720e+05, %5269 ], [ -1.310720e+05, %5211 ]
  %5468 = phi float [ 0.000000e+00, %5109 ], [ %5206, %5184 ], [ 0.000000e+00, %5146 ], [ %5460, %5452 ], [ 0.000000e+00, %5214 ], [ 0.000000e+00, %5269 ], [ 0.000000e+00, %5211 ]
  %5469 = phi float [ 0.000000e+00, %5109 ], [ %5208, %5184 ], [ 0.000000e+00, %5146 ], [ %5462, %5452 ], [ 0.000000e+00, %5214 ], [ 0.000000e+00, %5269 ], [ 0.000000e+00, %5211 ]
  %5470 = phi float [ 0.000000e+00, %5109 ], [ %5210, %5184 ], [ 0.000000e+00, %5146 ], [ %5464, %5452 ], [ 0.000000e+00, %5214 ], [ 0.000000e+00, %5269 ], [ 0.000000e+00, %5211 ]
  br i1 %5466, label %5884, label %5471, !dx.controlflow.hints !113

; <label>:5471                                    ; preds = %5465
  %5472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.i32 %5472, 0
  %5474 = and i32 %5473, 64
  %5475 = icmp ne i32 %5474, 0
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = fsub fast float %179, %5467
  %5481 = fcmp fast ogt float %5480, 0.000000e+00
  %5482 = xor i1 %5481, true
  %5483 = fmul fast float %5477, 5.120000e+02
  %5484 = fmul fast float %5478, 5.120000e+02
  %5485 = fmul fast float %5479, 5.120000e+02
  %5486 = fadd fast float %5485, %179
  %5487 = fsub fast float %5467, %5486
  %5488 = fmul fast float %5487, 2.000000e+00
  %5489 = fadd fast float %5488, %5486
  %5490 = select i1 %5481, float %5489, float %5486
  %5491 = fsub fast float %5490, %179
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5491, float %5483, float %5484, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = call float @dx.op.unary.f32(i32 25, float %5492)  ; Rsqrt(value)
  %5494 = fmul fast float %5483, %5493
  %5495 = fmul fast float %5484, %5493
  %5496 = fmul fast float %5491, %5493
  %5497 = fsub fast float %5467, %179
  %5498 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fdiv fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5500, %5498
  %5502 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5480, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fcmp fast ogt float %5502, 0.000000e+00
  %5504 = fcmp fast olt float %5502, 0.000000e+00
  %5505 = zext i1 %5503 to i32
  %5506 = zext i1 %5504 to i32
  %5507 = sub nsw i32 %5505, %5506
  %5508 = sitofp i32 %5507 to float
  %5509 = fsub fast float %5490, %5467
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5509, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = fcmp fast ogt float %5510, 0.000000e+00
  %5512 = fcmp fast olt float %5510, 0.000000e+00
  %5513 = zext i1 %5511 to i32
  %5514 = zext i1 %5512 to i32
  %5515 = sub nsw i32 %5513, %5514
  %5516 = sitofp i32 %5515 to float
  %5517 = fcmp fast une float %5508, %5516
  br i1 %5517, label %5518, label %5528, !dx.controlflow.hints !114

; <label>:5518                                    ; preds = %5471
  %5519 = fmul fast float %5496, %5501
  %5520 = fmul fast float %5501, %5495
  %5521 = fmul fast float %5501, %5494
  %5522 = fmul fast float %5521, %5521
  %5523 = fmul fast float %5520, %5520
  %5524 = fadd fast float %5522, %5523
  %5525 = fmul fast float %5519, %5519
  %5526 = fadd fast float %5524, %5525
  %5527 = call float @dx.op.unary.f32(i32 24, float %5526)  ; Sqrt(value)
  br label %5538

; <label>:5528                                    ; preds = %5471
  %5529 = icmp slt i32 %5507, 0
  br i1 %5529, label %5530, label %5538, !dx.controlflow.hints !115

; <label>:5530                                    ; preds = %5528
  %5531 = fsub fast float %179, %5490
  %5532 = fmul fast float %5483, %5483
  %5533 = fmul fast float %5484, %5484
  %5534 = fadd fast float %5532, %5533
  %5535 = fmul fast float %5531, %5531
  %5536 = fadd fast float %5534, %5535
  %5537 = call float @dx.op.unary.f32(i32 24, float %5536)  ; Sqrt(value)
  br label %5538

; <label>:5538                                    ; preds = %5530, %5528, %5518
  %5539 = phi float [ %5527, %5518 ], [ %5537, %5530 ], [ 0.000000e+00, %5528 ]
  %5540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %35, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.i32 %5540, 1
  %5542 = icmp ne i32 %5541, 0
  %5543 = and i1 %5542, %5482
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fmul fast float %5544, %5544
  %5546 = fsub fast float 1.000000e+00, %5545
  %5547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.CBufRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.CBufRet.f32 %5547, 2
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.f32 %5553, 0
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5558 = extractvalue %dx.types.CBufRet.f32 %5553, 1
  %5559 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5560 = extractvalue %dx.types.CBufRet.f32 %5551, 3
  %5561 = extractvalue %dx.types.CBufRet.f32 %5553, 3
  %5562 = extractvalue %dx.types.CBufRet.f32 %5555, 3
  %5563 = fadd fast float %5548, %177
  %5564 = fadd fast float %5549, %178
  %5565 = fadd fast float %5550, %179
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5566, 3
  br i1 %5543, label %5571, label %5764, !dx.controlflow.hints !116

; <label>:5571                                    ; preds = %5538
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 349)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5574 = fmul fast float %5573, %5573
  %5575 = fmul fast float %5574, %5546
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fcmp fast oge float %5576, 0.000000e+00
  %5578 = fmul fast float %5573, %5494
  %5579 = fmul fast float %5573, %5495
  %5580 = fmul fast float %5573, %5496
  %5581 = call float @dx.op.unary.f32(i32 24, float %5576)  ; Sqrt(value)
  %5582 = fmul fast float %5573, %5544
  %5583 = fsub fast float -0.000000e+00, %5581
  %5584 = fsub fast float %5583, %5582
  %5585 = fadd fast float %5584, %5580
  %5586 = select i1 %5577, float %5578, float 0.000000e+00
  %5587 = select i1 %5577, float %5579, float 0.000000e+00
  %5588 = select i1 %5577, float %5585, float 0.000000e+00
  %5589 = fmul fast float %5586, %5539
  %5590 = fmul fast float %5587, %5539
  %5591 = fmul fast float %5588, %5539
  %5592 = fadd fast float %5563, %5589
  %5593 = fadd fast float %5592, %5560
  %5594 = fadd fast float %5564, %5590
  %5595 = fadd fast float %5594, %5561
  %5596 = fadd fast float %5565, %5591
  %5597 = fadd fast float %5596, %5562
  %5598 = fmul fast float %5593, %5552
  %5599 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5554, float %5598)  ; FMad(a,b,c)
  %5600 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5556, float %5599)  ; FMad(a,b,c)
  %5601 = fmul fast float %5593, %5557
  %5602 = call float @dx.op.tertiary.f32(i32 46, float %5595, float %5558, float %5601)  ; FMad(a,b,c)
  %5603 = call float @dx.op.tertiary.f32(i32 46, float %5597, float %5559, float %5602)  ; FMad(a,b,c)
  %5604 = fsub fast float %5600, %5560
  %5605 = fsub fast float %5604, %5567
  %5606 = fadd fast float %5605, %5569
  %5607 = fsub fast float %5603, %5561
  %5608 = fsub fast float %5607, %5568
  %5609 = fadd fast float %5608, %5569
  %5610 = fmul fast float %5606, %5570
  %5611 = fmul fast float %5609, %5570
  %5612 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5613 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5614 = fsub fast float 1.000000e+00, %5612
  %5615 = fsub fast float 1.000000e+00, %5613
  %5616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %5614, float %5615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = fmul fast float %5617, 0x3FBC5ABC00000000
  %5619 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5620 = fmul fast float %5619, %5619
  %5621 = fmul fast float %5620, %5546
  %5622 = fsub fast float 1.000000e+00, %5621
  %5623 = fcmp fast oge float %5622, 0.000000e+00
  %5624 = fmul fast float %5619, %5494
  %5625 = fmul fast float %5619, %5495
  %5626 = fmul fast float %5619, %5496
  %5627 = call float @dx.op.unary.f32(i32 24, float %5622)  ; Sqrt(value)
  %5628 = fmul fast float %5619, %5544
  %5629 = fsub fast float -0.000000e+00, %5627
  %5630 = fsub fast float %5629, %5628
  %5631 = fadd fast float %5630, %5626
  %5632 = select i1 %5623, float %5624, float 0.000000e+00
  %5633 = select i1 %5623, float %5625, float 0.000000e+00
  %5634 = select i1 %5623, float %5631, float 0.000000e+00
  %5635 = fmul fast float %5632, %5539
  %5636 = fmul fast float %5633, %5539
  %5637 = fmul fast float %5634, %5539
  %5638 = fadd fast float %5563, %5635
  %5639 = fadd fast float %5638, %5560
  %5640 = fadd fast float %5564, %5636
  %5641 = fadd fast float %5640, %5561
  %5642 = fadd fast float %5565, %5637
  %5643 = fadd fast float %5642, %5562
  %5644 = fmul fast float %5639, %5552
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %5641, float %5554, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %5643, float %5556, float %5645)  ; FMad(a,b,c)
  %5647 = fmul fast float %5639, %5557
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5641, float %5558, float %5647)  ; FMad(a,b,c)
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %5643, float %5559, float %5648)  ; FMad(a,b,c)
  %5650 = fsub fast float %5646, %5560
  %5651 = fsub fast float %5650, %5567
  %5652 = fadd fast float %5651, %5569
  %5653 = fsub fast float %5649, %5561
  %5654 = fsub fast float %5653, %5568
  %5655 = fadd fast float %5654, %5569
  %5656 = fmul fast float %5652, %5570
  %5657 = fmul fast float %5655, %5570
  %5658 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5659 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5658
  %5661 = fsub fast float 1.000000e+00, %5659
  %5662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %5660, float %5661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5663 = extractvalue %dx.types.ResRet.f32 %5662, 0
  %5664 = fmul fast float %5663, 0x3F9E4BBD60000000
  %5665 = extractvalue %dx.types.CBufRet.f32 %5572, 2
  %5666 = fmul fast float %5665, %5665
  %5667 = fmul fast float %5666, %5546
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = fcmp fast oge float %5668, 0.000000e+00
  %5670 = fmul fast float %5665, %5494
  %5671 = fmul fast float %5665, %5495
  %5672 = fmul fast float %5665, %5496
  %5673 = call float @dx.op.unary.f32(i32 24, float %5668)  ; Sqrt(value)
  %5674 = fmul fast float %5665, %5544
  %5675 = fsub fast float -0.000000e+00, %5673
  %5676 = fsub fast float %5675, %5674
  %5677 = fadd fast float %5676, %5672
  %5678 = select i1 %5669, float %5670, float 0.000000e+00
  %5679 = select i1 %5669, float %5671, float 0.000000e+00
  %5680 = select i1 %5669, float %5677, float 0.000000e+00
  %5681 = fmul fast float %5678, %5539
  %5682 = fmul fast float %5679, %5539
  %5683 = fmul fast float %5680, %5539
  %5684 = fadd fast float %5563, %5681
  %5685 = fadd fast float %5684, %5560
  %5686 = fadd fast float %5564, %5682
  %5687 = fadd fast float %5686, %5561
  %5688 = fadd fast float %5565, %5683
  %5689 = fadd fast float %5688, %5562
  %5690 = fmul fast float %5685, %5552
  %5691 = call float @dx.op.tertiary.f32(i32 46, float %5687, float %5554, float %5690)  ; FMad(a,b,c)
  %5692 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5556, float %5691)  ; FMad(a,b,c)
  %5693 = fmul fast float %5685, %5557
  %5694 = call float @dx.op.tertiary.f32(i32 46, float %5687, float %5558, float %5693)  ; FMad(a,b,c)
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5559, float %5694)  ; FMad(a,b,c)
  %5696 = fsub fast float %5692, %5560
  %5697 = fsub fast float %5696, %5567
  %5698 = fadd fast float %5697, %5569
  %5699 = fsub fast float %5695, %5561
  %5700 = fsub fast float %5699, %5568
  %5701 = fadd fast float %5700, %5569
  %5702 = fmul fast float %5698, %5570
  %5703 = fmul fast float %5701, %5570
  %5704 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5705 = call float @dx.op.unary.f32(i32 7, float %5703)  ; Saturate(value)
  %5706 = fsub fast float 1.000000e+00, %5704
  %5707 = fsub fast float 1.000000e+00, %5705
  %5708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %5706, float %5707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5709 = extractvalue %dx.types.ResRet.f32 %5708, 0
  %5710 = fmul fast float %5709, 0x3FDDEACB00000000
  %5711 = fadd fast float %5710, %5664
  %5712 = extractvalue %dx.types.CBufRet.f32 %5572, 3
  %5713 = fmul fast float %5712, %5712
  %5714 = fmul fast float %5713, %5546
  %5715 = fsub fast float 1.000000e+00, %5714
  %5716 = fcmp fast oge float %5715, 0.000000e+00
  %5717 = fmul fast float %5712, %5494
  %5718 = fmul fast float %5712, %5495
  %5719 = fmul fast float %5712, %5496
  %5720 = call float @dx.op.unary.f32(i32 24, float %5715)  ; Sqrt(value)
  %5721 = fmul fast float %5712, %5544
  %5722 = fsub fast float -0.000000e+00, %5720
  %5723 = fsub fast float %5722, %5721
  %5724 = fadd fast float %5723, %5719
  %5725 = select i1 %5716, float %5717, float 0.000000e+00
  %5726 = select i1 %5716, float %5718, float 0.000000e+00
  %5727 = select i1 %5716, float %5724, float 0.000000e+00
  %5728 = fmul fast float %5725, %5539
  %5729 = fmul fast float %5726, %5539
  %5730 = fmul fast float %5727, %5539
  %5731 = fadd fast float %5563, %5728
  %5732 = fadd fast float %5731, %5560
  %5733 = fadd fast float %5564, %5729
  %5734 = fadd fast float %5733, %5561
  %5735 = fadd fast float %5565, %5730
  %5736 = fadd fast float %5735, %5562
  %5737 = fmul fast float %5732, %5552
  %5738 = call float @dx.op.tertiary.f32(i32 46, float %5734, float %5554, float %5737)  ; FMad(a,b,c)
  %5739 = call float @dx.op.tertiary.f32(i32 46, float %5736, float %5556, float %5738)  ; FMad(a,b,c)
  %5740 = fmul fast float %5732, %5557
  %5741 = call float @dx.op.tertiary.f32(i32 46, float %5734, float %5558, float %5740)  ; FMad(a,b,c)
  %5742 = call float @dx.op.tertiary.f32(i32 46, float %5736, float %5559, float %5741)  ; FMad(a,b,c)
  %5743 = fsub fast float %5739, %5560
  %5744 = fsub fast float %5743, %5567
  %5745 = fadd fast float %5744, %5569
  %5746 = fsub fast float %5742, %5561
  %5747 = fsub fast float %5746, %5568
  %5748 = fadd fast float %5747, %5569
  %5749 = fmul fast float %5745, %5570
  %5750 = fmul fast float %5748, %5570
  %5751 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5752 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5753 = fsub fast float 1.000000e+00, %5751
  %5754 = fsub fast float 1.000000e+00, %5752
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %5753, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = fmul fast float %5756, 0x3FE0183CA0000000
  %5758 = fmul fast float %5756, 0x3FB51033E0000000
  %5759 = fadd fast float %5711, %5757
  %5760 = fadd fast float %5709, %5663
  %5761 = fmul fast float %5760, 0x3FD9D2A200000000
  %5762 = fadd fast float %5758, %5618
  %5763 = fadd fast float %5762, %5761
  br label %5810

; <label>:5764                                    ; preds = %5538
  %5765 = fmul fast float %5546, 0x3FE2024E20000000
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fcmp fast oge float %5766, 0.000000e+00
  %5768 = fmul fast float %5494, 0x3FE8018960000000
  %5769 = fmul fast float %5495, 0x3FE8018960000000
  %5770 = fmul fast float %5496, 0x3FE8018960000000
  %5771 = call float @dx.op.unary.f32(i32 24, float %5766)  ; Sqrt(value)
  %5772 = fmul fast float %5544, 0x3FE8018960000000
  %5773 = fsub fast float %5770, %5771
  %5774 = fsub fast float %5773, %5772
  %5775 = select i1 %5767, float %5768, float 0.000000e+00
  %5776 = select i1 %5767, float %5769, float 0.000000e+00
  %5777 = select i1 %5767, float %5774, float 0.000000e+00
  %5778 = select i1 %5481, float %5494, float %5775
  %5779 = select i1 %5481, float %5495, float %5776
  %5780 = select i1 %5481, float %5496, float %5777
  %5781 = fmul fast float %5778, %5539
  %5782 = fmul fast float %5779, %5539
  %5783 = fmul fast float %5780, %5539
  %5784 = fadd fast float %5563, %5781
  %5785 = fadd fast float %5784, %5560
  %5786 = fadd fast float %5564, %5782
  %5787 = fadd fast float %5786, %5561
  %5788 = fadd fast float %5565, %5783
  %5789 = fadd fast float %5788, %5562
  %5790 = fmul fast float %5785, %5552
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5554, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5556, float %5791)  ; FMad(a,b,c)
  %5793 = fmul fast float %5785, %5557
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5787, float %5558, float %5793)  ; FMad(a,b,c)
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5559, float %5794)  ; FMad(a,b,c)
  %5796 = fsub fast float %5792, %5560
  %5797 = fsub fast float %5796, %5567
  %5798 = fadd fast float %5797, %5569
  %5799 = fsub fast float %5795, %5561
  %5800 = fsub fast float %5799, %5568
  %5801 = fadd fast float %5800, %5569
  %5802 = fmul fast float %5798, %5570
  %5803 = fmul fast float %5801, %5570
  %5804 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5805 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5806 = fsub fast float 1.000000e+00, %5804
  %5807 = fsub fast float 1.000000e+00, %5805
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %31, float %5806, float %5807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  br label %5810

; <label>:5810                                    ; preds = %5764, %5571
  %5811 = phi float [ %5809, %5764 ], [ %5759, %5571 ]
  %5812 = phi float [ %5809, %5764 ], [ %5763, %5571 ]
  %5813 = phi float [ %5809, %5764 ], [ %5617, %5571 ]
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %35, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 0
  %5816 = call float @dx.op.unary.f32(i32 6, float %5815)  ; FAbs(value)
  %5817 = fmul fast float %5539, %5539
  %5818 = fadd fast float %5817, 1.000000e+00
  %5819 = fdiv fast float %5816, %5818
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fsub fast float -0.000000e+00, %5539
  %5822 = select i1 %5481, float -0.000000e+00, float %5821
  %5823 = fmul fast float %5468, 0x3FF7154760000000
  %5824 = fmul fast float %5823, %5822
  %5825 = fmul fast float %5469, 0x3FF7154760000000
  %5826 = fmul fast float %5825, %5822
  %5827 = fmul fast float %5470, 0x3FF7154760000000
  %5828 = fmul fast float %5827, %5822
  %5829 = call float @dx.op.unary.f32(i32 21, float %5824)  ; Exp(value)
  %5830 = call float @dx.op.unary.f32(i32 21, float %5826)  ; Exp(value)
  %5831 = call float @dx.op.unary.f32(i32 21, float %5828)  ; Exp(value)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5833 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5834 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5835 = call float @dx.op.unary.f32(i32 6, float %5544)  ; FAbs(value)
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = bitcast float %5836 to i32
  %5838 = sitofp i32 %5837 to float
  %5839 = fptosi float %5838 to i32
  %5840 = bitcast i32 %5839 to float
  %5841 = fmul fast float %5840, 0x3FEF333340000000
  %5842 = fadd fast float %5841, 0x3F999999A0000000
  %5843 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fadd fast float %5811, 1.000000e+00
  %5846 = fadd fast float %5812, 1.000000e+00
  %5847 = fadd fast float %5813, 1.000000e+00
  %5848 = fmul fast float %5832, %5845
  %5849 = fmul fast float %5833, %5846
  %5850 = fmul fast float %5834, %5847
  %5851 = fmul fast float %5848, %5844
  %5852 = fmul fast float %5849, %5844
  %5853 = fmul fast float %5850, %5844
  %5854 = fmul fast float %5820, %5845
  %5855 = fmul fast float %5854, %5832
  %5856 = fmul fast float %5855, %5843
  %5857 = fmul fast float %5820, %5846
  %5858 = fmul fast float %5857, %5833
  %5859 = fmul fast float %5858, %5843
  %5860 = fmul fast float %5820, %5847
  %5861 = fmul fast float %5860, %5834
  %5862 = fmul fast float %5861, %5843
  %5863 = fadd fast float %5856, %5832
  %5864 = fadd fast float %5859, %5833
  %5865 = fadd fast float %5862, %5834
  %5866 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = select i1 %5481, float %5863, float %5851
  %5869 = select i1 %5481, float %5864, float %5852
  %5870 = select i1 %5481, float %5865, float %5853
  %5871 = select i1 %5475, float %5867, float 0.000000e+00
  %5872 = fsub fast float %5868, %5832
  %5873 = fsub fast float %5869, %5833
  %5874 = fsub fast float %5870, %5834
  %5875 = fmul fast float %5872, %5871
  %5876 = fmul fast float %5873, %5871
  %5877 = fmul fast float %5874, %5871
  %5878 = fadd fast float %5875, %5832
  %5879 = fadd fast float %5876, %5833
  %5880 = fadd fast float %5877, %5834
  %5881 = fmul fast float %5878, %5102
  %5882 = fmul fast float %5879, %5102
  %5883 = fmul fast float %5880, %5102
  br label %5884

; <label>:5884                                    ; preds = %5810, %5465, %5101
  %5885 = phi float [ %5881, %5810 ], [ %5102, %5465 ], [ %5102, %5101 ]
  %5886 = phi float [ %5882, %5810 ], [ %5102, %5465 ], [ %5102, %5101 ]
  %5887 = phi float [ %5883, %5810 ], [ %5102, %5465 ], [ %5102, %5101 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %124, i32 %125, i32 %102, float %5885, float %5886, float %5887, float %5885, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %5888

; <label>:5888                                    ; preds = %5884, %126
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
!dx.entryPoints = !{!48}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !36, !38, !41}
!5 = !{!6, !8, !9, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35}
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
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 2, i32 0, !7}
!36 = !{!37}
!37 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!38 = !{!39, !40}
!39 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!40 = !{i32 1, %hostlayout.SunvisConstants* undef, !"", i32 0, i32 1, i32 1, i32 176, null}
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!43 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!44 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!45 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!46 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!47 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!48 = !{void ()* @cs_sunvis_trans, !"cs_sunvis_trans", null, !4, !49}
!49 = !{i32 0, i64 272, i32 4, !50}
!50 = !{i32 8, i32 8, i32 1}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !56, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 2}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 2}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 2}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 2}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 2}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 2}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 2}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 2}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 2}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 2}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 2}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 2}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 2}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
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
!115 = distinct !{!115, !"dx.controlflow.hints", i32 2}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 2}

