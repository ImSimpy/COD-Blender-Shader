;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 96dbf703d119096303bb16bbc1cc91ef
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=1
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
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
;   [144 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb2     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
;                                   sampler      NA          NA      S7             s6     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t49,space1     1
;                                   texture    byte         r/o     T12     t50,space1     1
;                                   texture    byte         r/o     T13     t51,space1     1
;                                   texture    byte         r/o     T14     t52,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t0     1
;                                   texture     f32          2d     T19             t1     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     u32          2d     T29     t56,space2     1
;                                   texture     f32     2darray     T30     t35,space2     1
;                                   texture     f32          2d     T31     t34,space2     1
;                                   texture     f32          3d     T32     t31,space2     1
;                                   texture    byte         r/o     T33     t10,space1     1
;                                   texture    byte         r/o     T34      t1,space1     1
;                                   texture     f32          1d     T35     t32,space2     1
;                                   texture     f32     2darray     T36      t8,space2     1
;                                   texture     f32          2d     T37      t2,space2     1
;                                   texture     f32          2d     T38      t3,space2     1
;                                   texture     f32          2d     T39      t4,space2     1
;                                   textureunorm_f32     2darray     T40     t80,space2     1
;                                   texture    byte         r/o     T41     t67,space1     1
;                                   texture     f32          2d     T42      t7,space2     1
;                                   texture     f32          2d     T43      t6,space2     1
;                                   texture     f32          2d     T44      t5,space2     1
;                                   texture     f32          2d     T45     t38,space2     1
;                                   texture    byte         r/o     T46     t12,space1     1
;                                   texture    byte         r/o     T47     t13,space1     1
;                                   texture     f32          1d     T48     t30,space2     1
;                                   texture     f32          3d     T49     t44,space2     1
;                                   texture     f32          3d     T50     t45,space2     1
;                                   texture     f32     2darray     T51     t47,space2     1
;                                   textureunorm_f32     2darray     T52     t85,space2     1
;                                   texture     f32          2d     T53     t83,space2     1
;                                   texture     f32          2d     T54     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = alloca [4 x i32], align 4
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %96
  %112 = fmul fast float %110, %97
  %113 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %117, %87
  %119 = fmul fast float %117, %88
  %120 = fmul fast float %117, %89
  %121 = fmul fast float %88, %85
  %122 = fmul fast float %89, %84
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %89, %83
  %125 = fmul fast float %87, %85
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %87, %84
  %128 = fmul fast float %88, %83
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %123, %86
  %131 = fmul fast float %126, %86
  %132 = fmul fast float %129, %86
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %111, 2.000000e+00
  %137 = fmul fast float %136, %134
  %138 = fmul fast float %112, 2.000000e+00
  %139 = fmul fast float %138, %135
  %140 = fsub fast float 1.000000e+00, %137
  %141 = fsub fast float 1.000000e+00, %139
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %142, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %142, 2
  %146 = fmul fast float %140, %143
  %147 = fmul fast float %140, %144
  %148 = fmul fast float %140, %145
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = fmul fast float %141, %150
  %154 = fmul fast float %141, %151
  %155 = fmul fast float %141, %152
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = fadd fast float %153, %157
  %161 = fadd fast float %160, %146
  %162 = fadd fast float %154, %158
  %163 = fadd fast float %162, %147
  %164 = fadd fast float %155, %159
  %165 = fadd fast float %164, %148
  %166 = fmul fast float %161, %99
  %167 = fmul fast float %163, %99
  %168 = fmul fast float %165, %99
  %169 = add i32 %62, 360
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %180, %118
  %182 = fmul fast float %180, %119
  %183 = fmul fast float %180, %120
  %184 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %185 = call float @dx.op.unary.f32(i32 25, float %184)  ; Rsqrt(value)
  %186 = fmul fast float %185, %166
  %187 = fmul fast float %185, %167
  %188 = fmul fast float %185, %168
  %189 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %181, float %182, float %183)  ; Dot3(ax,ay,az,bx,by,bz)
  %190 = fmul fast float %189, %189
  %191 = fmul fast float %190, %177
  %192 = fadd fast float %191, %178
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %196 = fmul fast float %195, %184
  %197 = fsub fast float %175, %196
  %198 = fmul fast float %197, %176
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fmul fast float %199, %193
  %201 = fmul fast float %111, 5.000000e-01
  %202 = fmul fast float %112, 5.000000e-01
  %203 = fptosi float %201 to i32
  %204 = fptosi float %202 to i32
  %205 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %203, i32 %204, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = lshr i32 %206, 18
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F4C00EBA0000000
  %210 = call float @dx.op.unary.f32(i32 21, float %209)  ; Exp(value)
  %211 = fadd fast float %210, -1.000000e+00
  %212 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %213 = extractvalue %dx.types.Dimensions %212, 0
  %214 = sitofp i32 %213 to float
  %215 = extractvalue %dx.types.Dimensions %212, 1
  %216 = sitofp i32 %215 to float
  %217 = fcmp fast oge float %201, %214
  %218 = fcmp fast oge float %202, %216
  %219 = or i1 %217, %218
  %220 = select i1 %219, float 0x4197782600000000, float %211
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %224 = fmul fast float %222, %111
  %225 = fmul fast float %223, %112
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 114688
  %229 = icmp ne i32 %228, 0
  %230 = select i1 %229, float %224, float 0.000000e+00
  %231 = select i1 %229, float %225, float 0.000000e+00
  %232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %57, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %233 = extractvalue %dx.types.ResRet.f32 %232, 0
  %234 = fmul fast float %233, 2.550000e+02
  %235 = fptoui float %234 to i32
  %236 = select i1 %229, i32 %235, i32 0
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.i32 %238, 3
  %240 = and i32 %239, 3
  %241 = icmp ne i32 %240, 0
  %242 = and i32 %239, 4
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %241, %243
  br i1 %244, label %245, label %256

; <label>:245                                     ; preds = %0
  %246 = extractvalue %dx.types.CBufRet.f32 %237, 3
  %247 = fmul fast float %246, %112
  %248 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %249 = fmul fast float %248, %111
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %56, float %249, float %247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %242, 0
  %258 = and i1 %241, %257
  br label %259

; <label>:259                                     ; preds = %256, %245
  %260 = phi i1 [ %255, %245 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %111, 2.560000e+02
  %265 = frem fast float %112, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = fadd fast float %269, %263
  %272 = fadd fast float %270, %263
  %273 = call float @dx.op.unary.f32(i32 22, float %271)  ; Frc(value)
  %274 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %275 = add i32 %62, 156
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 4
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %277, 7
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %277, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %62, 216
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %289, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %289, 16
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = add i32 %62, 36
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %62, 288
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %312, 0x3F50624DE0000000
  %316 = fmul fast float %314, 0x3F50624DE0000000
  %317 = add i32 %62, 172
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %62, 232
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %331, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %331, 16
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = add i32 %62, 52
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %62, 304
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = fmul fast float %354, 0x3F50624DE0000000
  %358 = fmul fast float %356, 0x3F50624DE0000000
  %359 = add i32 %62, 188
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = shl i32 %361, 4
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %361, 7
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %361, 22
  %369 = shl nuw nsw i32 %368, 5
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = add i32 %62, 248
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %373, 8
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %373, 16
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = add i32 %62, 68
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %387, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = add i32 %62, 320
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = fmul fast float %396, 0x3F50624DE0000000
  %400 = fmul fast float %398, 0x3F50624DE0000000
  %401 = add i32 %62, 204
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = shl i32 %403, 4
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %403, 7
  %408 = and i32 %407, 32752
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = lshr i32 %403, 22
  %411 = shl nuw nsw i32 %410, 5
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = add i32 %62, 264
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %415, 8
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = lshr i32 %415, 16
  %424 = and i32 %423, 255
  %425 = uitofp i32 %424 to float
  %426 = fmul fast float %425, 0x3F70101020000000
  %427 = add i32 %62, 84
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %429, 16
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = add i32 %62, 336
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 65535
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %436, 16
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = fmul fast float %438, 0x3F50624DE0000000
  %442 = fmul fast float %440, 0x3F50624DE0000000
  %443 = add i32 %62, 348
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 32
  %447 = icmp eq i32 %446, 0
  %448 = and i32 %445, 64
  %449 = icmp eq i32 %448, 0
  %450 = and i32 %445, 128
  %451 = icmp eq i32 %450, 0
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = and i32 %453, 2
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %471, label %456

; <label>:456                                     ; preds = %259
  %457 = add i32 %62, 556
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %459, 0
  %461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %461, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = extractvalue %dx.types.ResRet.f32 %462, 3
  %467 = fmul fast float %466, %92
  %468 = fmul fast float %463, %93
  %469 = fmul fast float %464, %94
  %470 = fmul fast float %465, %95
  br label %471

; <label>:471                                     ; preds = %456, %259
  %472 = phi float [ %95, %259 ], [ %470, %456 ]
  %473 = phi float [ %94, %259 ], [ %469, %456 ]
  %474 = phi float [ %93, %259 ], [ %468, %456 ]
  %475 = phi float [ %92, %259 ], [ %467, %456 ]
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 2
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %499, label %480

; <label>:480                                     ; preds = %471
  %481 = add i32 %62, 44
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %474, float 1.000000e+00
  %487 = add i32 %62, 60
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = and i32 %489, 1
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %491, float %473, float 1.000000e+00
  %493 = add i32 %62, 76
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 1
  %497 = icmp ne i32 %496, 0
  %498 = select i1 %497, float %472, float 1.000000e+00
  br label %499

; <label>:499                                     ; preds = %480, %471
  %500 = phi float [ %472, %471 ], [ %498, %480 ]
  %501 = phi float [ %473, %471 ], [ %492, %480 ]
  %502 = phi float [ %474, %471 ], [ %486, %480 ]
  %503 = lshr i32 %477, 20
  %504 = and i32 %503, 3
  %505 = add nuw nsw i32 %504, 1
  %506 = add i32 %62, 24
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = add i32 %62, 28
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = or i32 %511, %508
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %1274, label %514

; <label>:514                                     ; preds = %499
  %515 = and i32 %508, 262144
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %65, float 1.000000e+00
  %518 = select i1 %516, float %66, float 0.000000e+00
  %519 = select i1 %516, float %67, float 0.000000e+00
  %520 = select i1 %516, float %68, float 1.000000e+00
  %521 = select i1 %516, float %69, float %90
  %522 = select i1 %516, float %70, float %91
  %523 = add i32 %62, 284
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = lshr i32 %525, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = fmul fast float %527, 0x3F50624DE0000000
  %529 = add i32 %62, 88
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 16
  %533 = and i32 %532, 255
  %534 = lshr i32 %531, 24
  %535 = add i32 %62, 292
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 65535
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %537, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = add i32 %62, 32
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 22
  %546 = shl nuw nsw i32 %545, 5
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = shl i32 %544, 4
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = lshr i32 %544, 7
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %556 = fmul fast float %555, 1.000000e+03
  %557 = fmul fast float %315, %556
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fadd fast float %558, %305
  %560 = fmul fast float %316, %556
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = fadd fast float %561, %307
  %563 = fmul fast float %528, %556
  %564 = call float @dx.op.unary.f32(i32 22, float %563)  ; Frc(value)
  %565 = fmul fast float %564, 0x401921FB60000000
  %566 = fadd fast float %565, %547
  %567 = call float @dx.op.unary.f32(i32 13, float %566)  ; Sin(value)
  %568 = call float @dx.op.unary.f32(i32 12, float %566)  ; Cos(value)
  %569 = fsub fast float -0.000000e+00, %567
  %570 = fadd fast float %521, -5.000000e-01
  %571 = fadd fast float %522, -5.000000e-01
  %572 = fmul fast float %539, %570
  %573 = fmul fast float %541, %571
  %574 = fadd fast float %572, 5.000000e-01
  %575 = fadd fast float %573, 5.000000e-01
  %576 = fmul fast float %550, %574
  %577 = fmul fast float %553, %575
  %578 = fmul fast float %568, %576
  %579 = call float @dx.op.tertiary.f32(i32 46, float %569, float %577, float %578)  ; FMad(a,b,c)
  %580 = fmul fast float %567, %576
  %581 = call float @dx.op.tertiary.f32(i32 46, float %568, float %577, float %580)  ; FMad(a,b,c)
  %582 = fadd fast float %559, %579
  %583 = fadd fast float %562, %581
  %584 = icmp ugt i32 %533, 1
  %585 = icmp ugt i32 %531, 33554431
  %586 = or i1 %585, %584
  br i1 %586, label %587, label %612

; <label>:587                                     ; preds = %514
  %588 = add i32 %62, 228
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 16
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = fmul fast float %555, %592
  %594 = call float @dx.op.unary.f32(i32 22, float %593)  ; Frc(value)
  %595 = mul nuw nsw i32 %533, %534
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %594, %596
  %598 = call float @dx.op.unary.f32(i32 27, float %597)  ; Round_ni(value)
  %599 = fptoui float %598 to i32
  %600 = urem i32 %599, %533
  %601 = udiv i32 %599, %534
  %602 = call float @dx.op.unary.f32(i32 22, float %582)  ; Frc(value)
  %603 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %604 = uitofp i32 %600 to float
  %605 = uitofp i32 %601 to float
  %606 = fadd fast float %602, %604
  %607 = fadd fast float %603, %605
  %608 = uitofp i32 %533 to float
  %609 = uitofp i32 %534 to float
  %610 = fdiv fast float %606, %608
  %611 = fdiv fast float %607, %609
  br label %612

; <label>:612                                     ; preds = %587, %514
  %613 = phi float [ %610, %587 ], [ %582, %514 ]
  %614 = phi float [ %611, %587 ], [ %583, %514 ]
  %615 = and i32 %508, 16777216
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %726, label %617

; <label>:617                                     ; preds = %612
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %621 = extractvalue %dx.types.CBufRet.f32 %618, 2
  %622 = fadd fast float %619, %166
  %623 = fadd fast float %620, %167
  %624 = fadd fast float %621, %168
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = icmp eq i32 %63, 65535
  br i1 %628, label %723, label %629

; <label>:629                                     ; preds = %617
  %630 = lshr i32 %63, 1
  %631 = shl i32 %630, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %63, 1
  %635 = icmp ne i32 %634, 0
  %636 = lshr i32 %633, 16
  %637 = and i32 %633, 65535
  %638 = select i1 %635, i32 %636, i32 %637
  %639 = icmp eq i32 %638, 65535
  br i1 %639, label %719, label %640

; <label>:640                                     ; preds = %629
  %641 = mul nuw nsw i32 %638, 40
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = add nuw nsw i32 %641, 12
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = add nuw nsw i32 %641, 24
  %652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = extractvalue %dx.types.ResRet.f32 %652, 1
  %655 = extractvalue %dx.types.ResRet.f32 %652, 2
  %656 = add nuw nsw i32 %641, 36
  %657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = fsub fast float %622, %643
  %660 = fsub fast float %623, %644
  %661 = fsub fast float %624, %645
  %662 = fmul fast float %658, %659
  %663 = fmul fast float %658, %660
  %664 = fmul fast float %658, %661
  %665 = call float @dx.op.unary.f32(i32 27, float %662)  ; Round_ni(value)
  %666 = call float @dx.op.unary.f32(i32 27, float %663)  ; Round_ni(value)
  %667 = call float @dx.op.unary.f32(i32 27, float %664)  ; Round_ni(value)
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fmul fast float %668, %648
  %672 = fmul fast float %669, %649
  %673 = fmul fast float %670, %650
  %674 = shl i32 %63, 2
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call float @dx.op.unary.f32(i32 22, float %671)  ; Frc(value)
  %680 = call float @dx.op.unary.f32(i32 22, float %672)  ; Frc(value)
  %681 = call float @dx.op.unary.f32(i32 22, float %673)  ; Frc(value)
  %682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %678, %dx.types.Handle %57, float %679, float %680, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %683 = extractvalue %dx.types.ResRet.f32 %682, 0
  %684 = extractvalue %dx.types.ResRet.f32 %682, 1
  %685 = extractvalue %dx.types.ResRet.f32 %682, 2
  %686 = fmul fast float %683, 1.023000e+03
  %687 = fmul fast float %684, 1.023000e+03
  %688 = fmul fast float %685, 1.023000e+03
  %689 = fadd fast float %686, 5.000000e-01
  %690 = fadd fast float %687, 5.000000e-01
  %691 = fadd fast float %688, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 27, float %689)  ; Round_ni(value)
  %693 = call float @dx.op.unary.f32(i32 27, float %690)  ; Round_ni(value)
  %694 = call float @dx.op.unary.f32(i32 27, float %691)  ; Round_ni(value)
  %695 = fsub fast float %662, %665
  %696 = fsub fast float %663, %666
  %697 = fsub fast float %664, %667
  %698 = fmul fast float %695, 7.500000e-01
  %699 = fmul fast float %696, 7.500000e-01
  %700 = fmul fast float %697, 7.500000e-01
  %701 = fadd fast float %665, 1.250000e-01
  %702 = fadd fast float %701, %698
  %703 = fadd fast float %702, %692
  %704 = fadd fast float %666, 1.250000e-01
  %705 = fadd fast float %704, %699
  %706 = fadd fast float %705, %693
  %707 = fadd fast float %667, 1.250000e-01
  %708 = fadd fast float %707, %700
  %709 = fadd fast float %708, %694
  %710 = fmul fast float %703, %653
  %711 = fmul fast float %706, %654
  %712 = fmul fast float %709, %655
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = add i32 %714, 0
  %716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %716, %dx.types.Handle %55, float %710, float %711, float %712, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  br label %719

; <label>:719                                     ; preds = %640, %629
  %720 = phi float [ %718, %640 ], [ -1.000000e+00, %629 ]
  %721 = fadd fast float %720, %627
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  br label %723

; <label>:723                                     ; preds = %719, %617
  %724 = phi float [ %722, %719 ], [ %627, %617 ]
  %725 = fmul fast float %724, %475
  br label %726

; <label>:726                                     ; preds = %723, %612
  %727 = phi float [ %725, %723 ], [ %475, %612 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 256
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %778, label %732

; <label>:732                                     ; preds = %726
  %733 = add i32 %62, 488
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = add i32 %62, 100
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = shl i32 %742, 4
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %742, 7
  %747 = and i32 %746, 32752
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = fsub fast float 1.000000e+00, %727
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %751 = bitcast float %727 to i32
  %752 = sitofp i32 %751 to float
  %753 = fadd fast float %752, 0xC1CFBF8940000000
  %754 = fmul fast float %748, %753
  %755 = fadd fast float %754, 0x41CFBF8940000000
  %756 = fptosi float %755 to i32
  %757 = bitcast i32 %756 to float
  %758 = bitcast float %750 to i32
  %759 = sitofp i32 %758 to float
  %760 = fadd fast float %759, 0xC1CFBF8940000000
  %761 = fmul fast float %760, %748
  %762 = fadd fast float %761, 0x41CFBF8940000000
  %763 = fptosi float %762 to i32
  %764 = bitcast i32 %763 to float
  %765 = fmul fast float %757, %745
  %766 = fmul fast float %764, %745
  %767 = fsub fast float %750, %765
  %768 = fadd fast float %766, %750
  %769 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %770 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %771 = fsub fast float %739, %769
  %772 = fsub fast float %770, %769
  %773 = bitcast float %772 to i32
  %774 = sub nsw i32 2129859010, %773
  %775 = bitcast i32 %774 to float
  %776 = fmul fast float %775, %771
  %777 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  br label %778

; <label>:778                                     ; preds = %732, %726
  %779 = phi float [ %777, %732 ], [ %727, %726 ]
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 128
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %800, label %784

; <label>:784                                     ; preds = %778
  %785 = add i32 %62, 472
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %787, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 524288
  %795 = icmp ne i32 %794, 0
  %796 = fcmp fast ogt float %791, 0x3FE0101020000000
  %797 = select i1 %796, float 1.000000e+00, float 0.000000e+00
  %798 = select i1 %795, float %797, float %791
  %799 = fmul fast float %798, %779
  br label %800

; <label>:800                                     ; preds = %784, %778
  %801 = phi float [ %799, %784 ], [ %779, %778 ]
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 16
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %1004, label %806

; <label>:806                                     ; preds = %800
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = add i32 %62, 424
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = add i32 %811, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %813, %dx.types.Handle %107, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = and i32 %808, 255
  %820 = uitofp i32 %819 to float
  %821 = lshr i32 %808, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %818, %820
  %825 = fadd fast float %824, %823
  %826 = fmul fast float %825, 0x3F70101000000000
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 512
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %839, label %831

; <label>:831                                     ; preds = %806
  %832 = add i32 %62, 508
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = add i32 %834, 0
  %836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %835, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %836, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  br label %839

; <label>:839                                     ; preds = %831, %806
  %840 = phi float [ %838, %831 ], [ 1.000000e+00, %806 ]
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 33554432
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %951, label %845

; <label>:845                                     ; preds = %839
  %846 = add i32 %62, 224
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 65535
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = lshr i32 %848, 16
  %852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %851)  ; LegacyF16ToF32(value)
  %853 = add i32 %62, 228
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = and i32 %855, 65535
  %857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %856)  ; LegacyF16ToF32(value)
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = lshr i32 %859, 24
  %861 = uitofp i32 %860 to float
  %862 = fmul fast float %861, 0x3F70101020000000
  %863 = and i32 %859, 255
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = lshr i32 %859, 8
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F70101020000000
  %870 = lshr i32 %859, 16
  %871 = and i32 %870, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101020000000
  %874 = add i32 %62, 220
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 24
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F70101020000000
  %880 = and i32 %876, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F70101020000000
  %883 = lshr i32 %876, 8
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = fmul fast float %885, 0x3F70101020000000
  %887 = lshr i32 %876, 16
  %888 = and i32 %887, 255
  %889 = uitofp i32 %888 to float
  %890 = fmul fast float %889, 0x3F70101020000000
  %891 = bitcast float %815 to i32
  %892 = ashr i32 %891, 1
  %893 = sub nsw i32 1597463174, %892
  %894 = bitcast i32 %893 to float
  %895 = fmul fast float %815, 5.000000e-01
  %896 = fmul fast float %894, %894
  %897 = fmul fast float %896, %895
  %898 = fsub fast float 1.500000e+00, %897
  %899 = fmul fast float %894, %815
  %900 = fmul fast float %899, %898
  %901 = bitcast float %816 to i32
  %902 = ashr i32 %901, 1
  %903 = sub nsw i32 1597463174, %902
  %904 = bitcast i32 %903 to float
  %905 = fmul fast float %816, 5.000000e-01
  %906 = fmul fast float %904, %904
  %907 = fmul fast float %906, %905
  %908 = fsub fast float 1.500000e+00, %907
  %909 = fmul fast float %904, %816
  %910 = fmul fast float %909, %908
  %911 = bitcast float %817 to i32
  %912 = ashr i32 %911, 1
  %913 = sub nsw i32 1597463174, %912
  %914 = bitcast i32 %913 to float
  %915 = fmul fast float %817, 5.000000e-01
  %916 = fmul fast float %914, %914
  %917 = fmul fast float %916, %915
  %918 = fsub fast float 1.500000e+00, %917
  %919 = fmul fast float %914, %817
  %920 = fmul fast float %919, %918
  %921 = fsub fast float %900, %882
  %922 = fsub fast float %910, %886
  %923 = fsub fast float %920, %890
  %924 = fmul fast float %921, %850
  %925 = fmul fast float %922, %852
  %926 = fmul fast float %923, %857
  %927 = fadd fast float %924, %865
  %928 = fadd fast float %925, %869
  %929 = fadd fast float %926, %873
  %930 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %931 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %933 = fmul fast float %930, %930
  %934 = fmul fast float %931, %931
  %935 = fmul fast float %932, %932
  %936 = fsub fast float %933, %815
  %937 = fsub fast float %934, %816
  %938 = fsub fast float %935, %817
  %939 = fmul fast float %936, %840
  %940 = fmul fast float %937, %840
  %941 = fmul fast float %938, %840
  %942 = fadd fast float %939, %815
  %943 = fadd fast float %940, %816
  %944 = fadd fast float %941, %817
  %945 = fadd fast float %862, %826
  %946 = fsub fast float %945, %879
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = fsub fast float %947, %826
  %949 = fmul fast float %948, %840
  %950 = fadd fast float %949, %826
  br label %1004

; <label>:951                                     ; preds = %839
  %952 = and i32 %842, 134217728
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %988, label %954

; <label>:954                                     ; preds = %951
  %955 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %956 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %957 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %958 = fadd fast float %955, -5.000000e-01
  %959 = fadd fast float %956, -5.000000e-01
  %960 = fadd fast float %957, -5.000000e-01
  %961 = fmul fast float %958, %840
  %962 = fmul fast float %959, %840
  %963 = fmul fast float %960, %840
  %964 = fadd fast float %961, 5.000000e-01
  %965 = fadd fast float %962, 5.000000e-01
  %966 = fadd fast float %963, 5.000000e-01
  %967 = call float @dx.op.unary.f32(i32 24, float %815)  ; Sqrt(value)
  %968 = call float @dx.op.unary.f32(i32 24, float %816)  ; Sqrt(value)
  %969 = call float @dx.op.unary.f32(i32 24, float %817)  ; Sqrt(value)
  %970 = fmul fast float %964, 2.000000e+00
  %971 = fsub fast float 1.000000e+00, %970
  %972 = fmul fast float %971, %967
  %973 = fadd fast float %972, %970
  %974 = fmul fast float %973, %967
  %975 = fmul fast float %965, 2.000000e+00
  %976 = fsub fast float 1.000000e+00, %975
  %977 = fmul fast float %976, %968
  %978 = fadd fast float %977, %975
  %979 = fmul fast float %978, %968
  %980 = fmul fast float %966, 2.000000e+00
  %981 = fsub fast float 1.000000e+00, %980
  %982 = fmul fast float %981, %969
  %983 = fadd fast float %982, %980
  %984 = fmul fast float %983, %969
  %985 = fmul fast float %974, %974
  %986 = fmul fast float %979, %979
  %987 = fmul fast float %984, %984
  br label %1004

; <label>:988                                     ; preds = %951
  %989 = fmul fast float %292, %292
  %990 = fmul fast float %296, %296
  %991 = fmul fast float %300, %300
  %992 = fadd fast float %989, -1.000000e+00
  %993 = fadd fast float %990, -1.000000e+00
  %994 = fadd fast float %991, -1.000000e+00
  %995 = fmul fast float %840, %992
  %996 = fmul fast float %840, %993
  %997 = fmul fast float %840, %994
  %998 = fadd fast float %995, 1.000000e+00
  %999 = fadd fast float %996, 1.000000e+00
  %1000 = fadd fast float %997, 1.000000e+00
  %1001 = fmul fast float %998, %815
  %1002 = fmul fast float %999, %816
  %1003 = fmul fast float %1000, %817
  br label %1004

; <label>:1004                                    ; preds = %988, %954, %845, %800
  %1005 = phi float [ %950, %845 ], [ %826, %954 ], [ %826, %988 ], [ 0x3FA23C0BE0000000, %800 ]
  %1006 = phi float [ %942, %845 ], [ %985, %954 ], [ %1001, %988 ], [ 1.000000e+00, %800 ]
  %1007 = phi float [ %943, %845 ], [ %986, %954 ], [ %1002, %988 ], [ 1.000000e+00, %800 ]
  %1008 = phi float [ %944, %845 ], [ %987, %954 ], [ %1003, %988 ], [ 1.000000e+00, %800 ]
  %1009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.i32 %1009, 1
  %1011 = and i32 %1010, 1
  %1012 = icmp ne i32 %1011, 0
  %1013 = add i32 %62, 356
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = and i32 %1015, 32
  %1017 = icmp ne i32 %1016, 0
  %1018 = and i1 %1012, %1017
  %1019 = select i1 %1018, float 1.000000e+00, float %1006
  %1020 = select i1 %1018, float 0x3FD3333340000000, float %1007
  %1021 = select i1 %1018, float 0x3FD3333340000000, float %1008
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = and i32 %1023, 32
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1098, label %1026

; <label>:1026                                    ; preds = %1004
  %1027 = add i32 %62, 92
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = add i32 %62, 440
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %107, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = and i32 %1029, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = lshr i32 %1029, 8
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = lshr i32 %1029, 16
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = fmul fast float %1047, 0x3F70101000000000
  %1049 = fmul fast float %1036, %1041
  %1050 = fadd fast float %1049, %1044
  %1051 = fmul fast float %1050, 0x3F70101000000000
  %1052 = fadd fast float %1037, -5.000000e-01
  %1053 = fadd fast float %1039, -5.000000e-01
  %1054 = fmul fast float %1052, %1048
  %1055 = fmul fast float %1053, %1048
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fadd fast float %1055, 5.000000e-01
  %1058 = fmul fast float %1056, 2.000000e+00
  %1059 = fadd fast float %1058, -1.000000e+00
  %1060 = fmul fast float %1057, 2.000000e+00
  %1061 = fadd fast float %1060, -1.000000e+00
  %1062 = fadd fast float %1059, %1061
  %1063 = fmul fast float %1062, 5.000000e-01
  %1064 = fsub fast float %1059, %1061
  %1065 = fmul fast float %1064, 5.000000e-01
  %1066 = call float @dx.op.unary.f32(i32 6, float %1063)  ; FAbs(value)
  %1067 = fsub fast float 1.000000e+00, %1066
  %1068 = call float @dx.op.unary.f32(i32 6, float %1065)  ; FAbs(value)
  %1069 = fsub fast float %1067, %1068
  %1070 = call float @dx.op.dot3.f32(i32 55, float %1063, float %1065, float %1069, float %1063, float %1065, float %1069)  ; Dot3(ax,ay,az,bx,by,bz)
  %1071 = call float @dx.op.unary.f32(i32 25, float %1070)  ; Rsqrt(value)
  %1072 = fmul fast float %1063, %1071
  %1073 = fmul fast float %1065, %1071
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 67108864
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1094, label %1078

; <label>:1078                                    ; preds = %1026
  %1079 = add i32 %62, 280
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 65535
  %1087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1086)  ; LegacyF16ToF32(value)
  %1088 = lshr i32 %1081, 16
  %1089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1088)  ; LegacyF16ToF32(value)
  %1090 = fsub fast float %1051, %1089
  %1091 = fmul fast float %1090, %1083
  %1092 = fadd fast float %1091, %1087
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  br label %1094

; <label>:1094                                    ; preds = %1078, %1026
  %1095 = phi float [ %1093, %1078 ], [ %1051, %1026 ]
  %1096 = call float @dx.op.dot2.f32(i32 54, float %1072, float %1073, float %517, float %518)  ; Dot2(ax,ay,bx,by)
  %1097 = call float @dx.op.dot2.f32(i32 54, float %1072, float %1073, float %519, float %520)  ; Dot2(ax,ay,bx,by)
  br label %1098

; <label>:1098                                    ; preds = %1094, %1004
  %1099 = phi float [ %1095, %1094 ], [ 0x3FD6666660000000, %1004 ]
  %1100 = phi float [ %1096, %1094 ], [ 0.000000e+00, %1004 ]
  %1101 = phi float [ %1097, %1094 ], [ 0.000000e+00, %1004 ]
  %1102 = phi float [ %1038, %1094 ], [ 1.000000e+00, %1004 ]
  %1103 = add i32 %62, 160
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = lshr i32 %1105, 22
  %1107 = shl nuw nsw i32 %1106, 5
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 64
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1146, label %1113

; <label>:1113                                    ; preds = %1098
  %1114 = add i32 %62, 456
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 131072
  %1122 = icmp eq i32 %1121, 0
  %1123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %107, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = fmul fast float %1124, %280
  %1128 = fmul fast float %1125, %283
  %1129 = fmul fast float %1126, %286
  br i1 %1122, label %1136, label %1130

; <label>:1130                                    ; preds = %1113
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = fmul fast float %1132, %1127
  %1134 = fmul fast float %1132, %1128
  %1135 = fmul fast float %1132, %1129
  br label %1136

; <label>:1136                                    ; preds = %1130, %1113
  %1137 = phi float [ %1133, %1130 ], [ %1127, %1113 ]
  %1138 = phi float [ %1134, %1130 ], [ %1128, %1113 ]
  %1139 = phi float [ %1135, %1130 ], [ %1129, %1113 ]
  %1140 = fmul fast float %1137, %1108
  %1141 = select i1 %260, float %1140, float %1137
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1141, float %1138, float %1139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = select i1 %260, float 0.000000e+00, float %1137
  %1144 = select i1 %260, float %1142, float %1138
  %1145 = select i1 %260, float 0.000000e+00, float %1139
  br label %1146

; <label>:1146                                    ; preds = %1136, %1098
  %1147 = phi float [ %1143, %1136 ], [ 0.000000e+00, %1098 ]
  %1148 = phi float [ %1144, %1136 ], [ 0.000000e+00, %1098 ]
  %1149 = phi float [ %1145, %1136 ], [ 0.000000e+00, %1098 ]
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 1024
  %1153 = icmp eq i32 %1152, 0
  br i1 %1153, label %1184, label %1154

; <label>:1154                                    ; preds = %1146
  %1155 = add i32 %62, 152
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = fmul fast float %1159, 0x3F70101020000000
  %1161 = lshr i32 %1157, 8
  %1162 = and i32 %1161, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = lshr i32 %1157, 16
  %1166 = and i32 %1165, 255
  %1167 = uitofp i32 %1166 to float
  %1168 = fmul fast float %1167, 0x3F70101020000000
  %1169 = fmul fast float %1160, %1160
  %1170 = fmul fast float %1164, %1164
  %1171 = fmul fast float %1168, %1168
  %1172 = add i32 %62, 524
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = fmul fast float %1169, %1178
  %1182 = fmul fast float %1170, %1179
  %1183 = fmul fast float %1171, %1180
  br label %1184

; <label>:1184                                    ; preds = %1154, %1146
  %1185 = phi float [ %1181, %1154 ], [ 0.000000e+00, %1146 ]
  %1186 = phi float [ %1182, %1154 ], [ 0.000000e+00, %1146 ]
  %1187 = phi float [ %1183, %1154 ], [ 0.000000e+00, %1146 ]
  %1188 = fcmp fast ogt float %1185, 0.000000e+00
  %1189 = fcmp fast ogt float %1186, 0.000000e+00
  %1190 = fcmp fast ogt float %1187, 0.000000e+00
  %1191 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1192 = call float @dx.op.unary.f32(i32 23, float %1186)  ; Log(value)
  %1193 = call float @dx.op.unary.f32(i32 23, float %1187)  ; Log(value)
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = lshr i32 %1195, 7
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = fmul fast float %1191, 0xBFE62E4300000000
  %1200 = fmul fast float %1199, %1198
  %1201 = fmul fast float %1192, 0xBFE62E4300000000
  %1202 = fmul fast float %1201, %1198
  %1203 = fmul fast float %1193, 0xBFE62E4300000000
  %1204 = fmul fast float %1203, %1198
  %1205 = select i1 %1188, float %1200, float 1.270000e+02
  %1206 = select i1 %1189, float %1202, float 1.270000e+02
  %1207 = select i1 %1190, float %1204, float 1.270000e+02
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 10240
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1256, label %1212

; <label>:1212                                    ; preds = %1184
  %1213 = add i32 %62, 540
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 1048576
  %1224 = icmp ne i32 %1223, 0
  %1225 = and i32 %1222, 8192
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1242, label %1227

; <label>:1227                                    ; preds = %1212
  %1228 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1229 = select i1 %1224, float %1228, float %1219
  %1230 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1231 = select i1 %1224, float %1230, float %1219
  %1232 = add i32 %62, 96
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = lshr i32 %1234, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F80101020000000
  %1239 = fmul fast float %1238, %1231
  %1240 = fmul fast float %1238, %1219
  %1241 = fmul fast float %1238, %1229
  br label %1242

; <label>:1242                                    ; preds = %1227, %1212
  %1243 = phi float [ %1239, %1227 ], [ 0.000000e+00, %1212 ]
  %1244 = phi float [ %1240, %1227 ], [ 0.000000e+00, %1212 ]
  %1245 = phi float [ %1241, %1227 ], [ 0.000000e+00, %1212 ]
  %1246 = and i32 %1222, 2048
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1256, label %1248

; <label>:1248                                    ; preds = %1242
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = shl i32 %1250, 4
  %1252 = and i32 %1251, 32752
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = fmul fast float %1253, %1220
  %1255 = call float @dx.op.binary.f32(i32 35, float %1254, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1256

; <label>:1256                                    ; preds = %1248, %1242, %1184
  %1257 = phi float [ %1243, %1248 ], [ %1243, %1242 ], [ 0.000000e+00, %1184 ]
  %1258 = phi float [ %1244, %1248 ], [ %1244, %1242 ], [ 0.000000e+00, %1184 ]
  %1259 = phi float [ %1245, %1248 ], [ %1245, %1242 ], [ 0.000000e+00, %1184 ]
  %1260 = phi float [ %1255, %1248 ], [ 0x3F70101020000000, %1242 ], [ 0x3F70101020000000, %1184 ]
  %1261 = add i32 %62, 96
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = lshr i32 %1263, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1270 = fmul fast float %1268, %1269
  %1271 = fadd fast float %1270, %1265
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  br label %1274

; <label>:1274                                    ; preds = %1256, %499
  %1275 = phi float [ 0.000000e+00, %499 ], [ %1100, %1256 ]
  %1276 = phi float [ 0.000000e+00, %499 ], [ %1101, %1256 ]
  %1277 = phi float [ 0.000000e+00, %499 ], [ %1019, %1256 ]
  %1278 = phi float [ 0.000000e+00, %499 ], [ %1020, %1256 ]
  %1279 = phi float [ 0.000000e+00, %499 ], [ %1021, %1256 ]
  %1280 = phi float [ 0.000000e+00, %499 ], [ %1147, %1256 ]
  %1281 = phi float [ 0.000000e+00, %499 ], [ %1148, %1256 ]
  %1282 = phi float [ 0.000000e+00, %499 ], [ %1149, %1256 ]
  %1283 = phi float [ 0.000000e+00, %499 ], [ %1257, %1256 ]
  %1284 = phi float [ 0.000000e+00, %499 ], [ %1258, %1256 ]
  %1285 = phi float [ 0.000000e+00, %499 ], [ %1259, %1256 ]
  %1286 = phi float [ 0.000000e+00, %499 ], [ %1205, %1256 ]
  %1287 = phi float [ 0.000000e+00, %499 ], [ %1206, %1256 ]
  %1288 = phi float [ 0.000000e+00, %499 ], [ %1207, %1256 ]
  %1289 = phi float [ 0.000000e+00, %499 ], [ %1005, %1256 ]
  %1290 = phi float [ 0.000000e+00, %499 ], [ %801, %1256 ]
  %1291 = phi float [ 0.000000e+00, %499 ], [ %1099, %1256 ]
  %1292 = phi float [ 0.000000e+00, %499 ], [ %1102, %1256 ]
  %1293 = phi float [ 0.000000e+00, %499 ], [ %1260, %1256 ]
  %1294 = phi float [ 0.000000e+00, %499 ], [ %1273, %1256 ]
  br i1 %447, label %2332, label %1295

; <label>:1295                                    ; preds = %1274
  %1296 = icmp ult i32 %505, 2
  %1297 = add i32 %62, 40
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = add i32 %62, 44
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = or i32 %1302, %1299
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %2332, label %1305

; <label>:1305                                    ; preds = %1295
  %1306 = and i32 %1299, 262144
  %1307 = icmp ne i32 %1306, 0
  %1308 = select i1 %1307, float %65, float 1.000000e+00
  %1309 = select i1 %1307, float %66, float 0.000000e+00
  %1310 = select i1 %1307, float %67, float 0.000000e+00
  %1311 = select i1 %1307, float %68, float 1.000000e+00
  %1312 = select i1 %1307, float %69, float %90
  %1313 = select i1 %1307, float %70, float %91
  %1314 = add i32 %62, 300
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = lshr i32 %1316, 16
  %1318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1317)  ; LegacyF16ToF32(value)
  %1319 = fmul fast float %1318, 0x3F50624DE0000000
  %1320 = add i32 %62, 104
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 16
  %1324 = and i32 %1323, 255
  %1325 = lshr i32 %1322, 24
  %1326 = add i32 %62, 308
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 65535
  %1330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1329)  ; LegacyF16ToF32(value)
  %1331 = lshr i32 %1328, 16
  %1332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1331)  ; LegacyF16ToF32(value)
  %1333 = add i32 %62, 48
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = lshr i32 %1335, 22
  %1337 = shl nuw nsw i32 %1336, 5
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = shl i32 %1335, 4
  %1340 = and i32 %1339, 32752
  %1341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1340)  ; LegacyF16ToF32(value)
  %1342 = lshr i32 %1335, 7
  %1343 = and i32 %1342, 32752
  %1344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1343)  ; LegacyF16ToF32(value)
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 3
  %1347 = fmul fast float %1346, 1.000000e+03
  %1348 = fmul fast float %357, %1347
  %1349 = call float @dx.op.unary.f32(i32 22, float %1348)  ; Frc(value)
  %1350 = fadd fast float %1349, %347
  %1351 = fmul fast float %358, %1347
  %1352 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1353 = fadd fast float %1352, %349
  %1354 = fmul fast float %1319, %1347
  %1355 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1356 = fmul fast float %1355, 0x401921FB60000000
  %1357 = fadd fast float %1356, %1338
  %1358 = call float @dx.op.unary.f32(i32 13, float %1357)  ; Sin(value)
  %1359 = call float @dx.op.unary.f32(i32 12, float %1357)  ; Cos(value)
  %1360 = fsub fast float -0.000000e+00, %1358
  %1361 = fadd fast float %1312, -5.000000e-01
  %1362 = fadd fast float %1313, -5.000000e-01
  %1363 = fmul fast float %1330, %1361
  %1364 = fmul fast float %1332, %1362
  %1365 = fadd fast float %1363, 5.000000e-01
  %1366 = fadd fast float %1364, 5.000000e-01
  %1367 = fmul fast float %1341, %1365
  %1368 = fmul fast float %1344, %1366
  %1369 = fmul fast float %1359, %1367
  %1370 = call float @dx.op.tertiary.f32(i32 46, float %1360, float %1368, float %1369)  ; FMad(a,b,c)
  %1371 = fmul fast float %1358, %1367
  %1372 = call float @dx.op.tertiary.f32(i32 46, float %1359, float %1368, float %1371)  ; FMad(a,b,c)
  %1373 = fadd fast float %1350, %1370
  %1374 = fadd fast float %1353, %1372
  %1375 = icmp ugt i32 %1324, 1
  %1376 = icmp ugt i32 %1322, 33554431
  %1377 = or i1 %1376, %1375
  br i1 %1377, label %1378, label %1403

; <label>:1378                                    ; preds = %1305
  %1379 = add i32 %62, 244
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = lshr i32 %1381, 16
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = fmul fast float %1346, %1383
  %1385 = call float @dx.op.unary.f32(i32 22, float %1384)  ; Frc(value)
  %1386 = mul nuw nsw i32 %1324, %1325
  %1387 = uitofp i32 %1386 to float
  %1388 = fmul fast float %1385, %1387
  %1389 = call float @dx.op.unary.f32(i32 27, float %1388)  ; Round_ni(value)
  %1390 = fptoui float %1389 to i32
  %1391 = urem i32 %1390, %1324
  %1392 = udiv i32 %1390, %1325
  %1393 = call float @dx.op.unary.f32(i32 22, float %1373)  ; Frc(value)
  %1394 = call float @dx.op.unary.f32(i32 22, float %1374)  ; Frc(value)
  %1395 = uitofp i32 %1391 to float
  %1396 = uitofp i32 %1392 to float
  %1397 = fadd fast float %1393, %1395
  %1398 = fadd fast float %1394, %1396
  %1399 = uitofp i32 %1324 to float
  %1400 = uitofp i32 %1325 to float
  %1401 = fdiv fast float %1397, %1399
  %1402 = fdiv fast float %1398, %1400
  br label %1403

; <label>:1403                                    ; preds = %1378, %1305
  %1404 = phi float [ %1401, %1378 ], [ %1373, %1305 ]
  %1405 = phi float [ %1402, %1378 ], [ %1374, %1305 ]
  %1406 = and i32 %1299, 16777216
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1517, label %1408

; <label>:1408                                    ; preds = %1403
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = fadd fast float %1410, %166
  %1414 = fadd fast float %1411, %167
  %1415 = fadd fast float %1412, %168
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = icmp eq i32 %63, 65535
  br i1 %1419, label %1514, label %1420

; <label>:1420                                    ; preds = %1408
  %1421 = lshr i32 %63, 1
  %1422 = shl i32 %1421, 2
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1422, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %63, 1
  %1426 = icmp ne i32 %1425, 0
  %1427 = lshr i32 %1424, 16
  %1428 = and i32 %1424, 65535
  %1429 = select i1 %1426, i32 %1427, i32 %1428
  %1430 = icmp eq i32 %1429, 65535
  br i1 %1430, label %1510, label %1431

; <label>:1431                                    ; preds = %1420
  %1432 = mul nuw nsw i32 %1429, 40
  %1433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = add nuw nsw i32 %1432, 12
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = add nuw nsw i32 %1432, 24
  %1443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = add nuw nsw i32 %1432, 36
  %1448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = fsub fast float %1413, %1434
  %1451 = fsub fast float %1414, %1435
  %1452 = fsub fast float %1415, %1436
  %1453 = fmul fast float %1449, %1450
  %1454 = fmul fast float %1449, %1451
  %1455 = fmul fast float %1449, %1452
  %1456 = call float @dx.op.unary.f32(i32 27, float %1453)  ; Round_ni(value)
  %1457 = call float @dx.op.unary.f32(i32 27, float %1454)  ; Round_ni(value)
  %1458 = call float @dx.op.unary.f32(i32 27, float %1455)  ; Round_ni(value)
  %1459 = fadd fast float %1456, 5.000000e-01
  %1460 = fadd fast float %1457, 5.000000e-01
  %1461 = fadd fast float %1458, 5.000000e-01
  %1462 = fmul fast float %1459, %1439
  %1463 = fmul fast float %1460, %1440
  %1464 = fmul fast float %1461, %1441
  %1465 = shl i32 %63, 2
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call float @dx.op.unary.f32(i32 22, float %1462)  ; Frc(value)
  %1471 = call float @dx.op.unary.f32(i32 22, float %1463)  ; Frc(value)
  %1472 = call float @dx.op.unary.f32(i32 22, float %1464)  ; Frc(value)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1469, %dx.types.Handle %57, float %1470, float %1471, float %1472, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = fmul fast float %1474, 1.023000e+03
  %1478 = fmul fast float %1475, 1.023000e+03
  %1479 = fmul fast float %1476, 1.023000e+03
  %1480 = fadd fast float %1477, 5.000000e-01
  %1481 = fadd fast float %1478, 5.000000e-01
  %1482 = fadd fast float %1479, 5.000000e-01
  %1483 = call float @dx.op.unary.f32(i32 27, float %1480)  ; Round_ni(value)
  %1484 = call float @dx.op.unary.f32(i32 27, float %1481)  ; Round_ni(value)
  %1485 = call float @dx.op.unary.f32(i32 27, float %1482)  ; Round_ni(value)
  %1486 = fsub fast float %1453, %1456
  %1487 = fsub fast float %1454, %1457
  %1488 = fsub fast float %1455, %1458
  %1489 = fmul fast float %1486, 7.500000e-01
  %1490 = fmul fast float %1487, 7.500000e-01
  %1491 = fmul fast float %1488, 7.500000e-01
  %1492 = fadd fast float %1456, 1.250000e-01
  %1493 = fadd fast float %1492, %1489
  %1494 = fadd fast float %1493, %1483
  %1495 = fadd fast float %1457, 1.250000e-01
  %1496 = fadd fast float %1495, %1490
  %1497 = fadd fast float %1496, %1484
  %1498 = fadd fast float %1458, 1.250000e-01
  %1499 = fadd fast float %1498, %1491
  %1500 = fadd fast float %1499, %1485
  %1501 = fmul fast float %1494, %1444
  %1502 = fmul fast float %1497, %1445
  %1503 = fmul fast float %1500, %1446
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1507, %dx.types.Handle %55, float %1501, float %1502, float %1503, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  br label %1510

; <label>:1510                                    ; preds = %1431, %1420
  %1511 = phi float [ %1509, %1431 ], [ -1.000000e+00, %1420 ]
  %1512 = fadd fast float %1511, %1418
  %1513 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  br label %1514

; <label>:1514                                    ; preds = %1510, %1408
  %1515 = phi float [ %1513, %1510 ], [ %1418, %1408 ]
  %1516 = fmul fast float %1515, %502
  br label %1517

; <label>:1517                                    ; preds = %1514, %1403
  %1518 = phi float [ %1516, %1514 ], [ %502, %1403 ]
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 256
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1569, label %1523

; <label>:1523                                    ; preds = %1517
  %1524 = add i32 %62, 492
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %1526, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %108, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = add i32 %62, 116
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = shl i32 %1533, 4
  %1535 = and i32 %1534, 32752
  %1536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1535)  ; LegacyF16ToF32(value)
  %1537 = lshr i32 %1533, 7
  %1538 = and i32 %1537, 32752
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = fsub fast float 1.000000e+00, %1518
  %1541 = call float @dx.op.binary.f32(i32 35, float %1540, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1542 = bitcast float %1518 to i32
  %1543 = sitofp i32 %1542 to float
  %1544 = fadd fast float %1543, 0xC1CFBF8940000000
  %1545 = fmul fast float %1539, %1544
  %1546 = fadd fast float %1545, 0x41CFBF8940000000
  %1547 = fptosi float %1546 to i32
  %1548 = bitcast i32 %1547 to float
  %1549 = bitcast float %1541 to i32
  %1550 = sitofp i32 %1549 to float
  %1551 = fadd fast float %1550, 0xC1CFBF8940000000
  %1552 = fmul fast float %1551, %1539
  %1553 = fadd fast float %1552, 0x41CFBF8940000000
  %1554 = fptosi float %1553 to i32
  %1555 = bitcast i32 %1554 to float
  %1556 = fmul fast float %1548, %1536
  %1557 = fmul fast float %1555, %1536
  %1558 = fsub fast float %1541, %1556
  %1559 = fadd fast float %1557, %1541
  %1560 = call float @dx.op.unary.f32(i32 7, float %1558)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1559)  ; Saturate(value)
  %1562 = fsub fast float %1530, %1560
  %1563 = fsub fast float %1561, %1560
  %1564 = bitcast float %1563 to i32
  %1565 = sub nsw i32 2129859010, %1564
  %1566 = bitcast i32 %1565 to float
  %1567 = fmul fast float %1566, %1562
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  br label %1569

; <label>:1569                                    ; preds = %1523, %1517
  %1570 = phi float [ %1568, %1523 ], [ %1518, %1517 ]
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 128
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1591, label %1575

; <label>:1575                                    ; preds = %1569
  %1576 = add i32 %62, 476
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1580, %dx.types.Handle %108, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 524288
  %1586 = icmp ne i32 %1585, 0
  %1587 = fcmp fast ogt float %1582, 0x3FE0101020000000
  %1588 = select i1 %1587, float 1.000000e+00, float 0.000000e+00
  %1589 = select i1 %1586, float %1588, float %1582
  %1590 = fmul fast float %1589, %1570
  br label %1591

; <label>:1591                                    ; preds = %1575, %1569
  %1592 = phi float [ %1590, %1575 ], [ %1570, %1569 ]
  %1593 = fcmp fast ult float %1592, 0x3F70101020000000
  br i1 %1593, label %2332, label %1594

; <label>:1594                                    ; preds = %1591
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 16
  %1598 = icmp eq i32 %1597, 0
  br i1 %1598, label %1797, label %1599

; <label>:1599                                    ; preds = %1594
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = add i32 %62, 428
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1602, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = add i32 %1604, 0
  %1606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1606, %dx.types.Handle %107, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.ResRet.f32 %1607, 1
  %1610 = extractvalue %dx.types.ResRet.f32 %1607, 2
  %1611 = extractvalue %dx.types.ResRet.f32 %1607, 3
  %1612 = and i32 %1601, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = lshr i32 %1601, 8
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1611, %1613
  %1618 = fadd fast float %1617, %1616
  %1619 = fmul fast float %1618, 0x3F70101000000000
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 512
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1632, label %1624

; <label>:1624                                    ; preds = %1599
  %1625 = add i32 %62, 512
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1625, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = add i32 %1627, 0
  %1629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1629, %dx.types.Handle %108, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1631 = extractvalue %dx.types.ResRet.f32 %1630, 0
  br label %1632

; <label>:1632                                    ; preds = %1624, %1599
  %1633 = phi float [ %1631, %1624 ], [ 1.000000e+00, %1599 ]
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = and i32 %1635, 33554432
  %1637 = icmp eq i32 %1636, 0
  br i1 %1637, label %1744, label %1638

; <label>:1638                                    ; preds = %1632
  %1639 = add i32 %62, 240
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1639, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 65535
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = lshr i32 %1641, 16
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = add i32 %62, 244
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1646, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = and i32 %1648, 65535
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = lshr i32 %1652, 24
  %1654 = uitofp i32 %1653 to float
  %1655 = fmul fast float %1654, 0x3F70101020000000
  %1656 = and i32 %1652, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101020000000
  %1659 = lshr i32 %1652, 8
  %1660 = and i32 %1659, 255
  %1661 = uitofp i32 %1660 to float
  %1662 = fmul fast float %1661, 0x3F70101020000000
  %1663 = lshr i32 %1652, 16
  %1664 = and i32 %1663, 255
  %1665 = uitofp i32 %1664 to float
  %1666 = fmul fast float %1665, 0x3F70101020000000
  %1667 = add i32 %62, 236
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = lshr i32 %1669, 24
  %1671 = uitofp i32 %1670 to float
  %1672 = fmul fast float %1671, 0x3F70101020000000
  %1673 = and i32 %1669, 255
  %1674 = uitofp i32 %1673 to float
  %1675 = fmul fast float %1674, 0x3F70101020000000
  %1676 = lshr i32 %1669, 8
  %1677 = and i32 %1676, 255
  %1678 = uitofp i32 %1677 to float
  %1679 = fmul fast float %1678, 0x3F70101020000000
  %1680 = lshr i32 %1669, 16
  %1681 = and i32 %1680, 255
  %1682 = uitofp i32 %1681 to float
  %1683 = fmul fast float %1682, 0x3F70101020000000
  %1684 = bitcast float %1608 to i32
  %1685 = ashr i32 %1684, 1
  %1686 = sub nsw i32 1597463174, %1685
  %1687 = bitcast i32 %1686 to float
  %1688 = fmul fast float %1608, 5.000000e-01
  %1689 = fmul fast float %1687, %1687
  %1690 = fmul fast float %1689, %1688
  %1691 = fsub fast float 1.500000e+00, %1690
  %1692 = fmul fast float %1687, %1608
  %1693 = fmul fast float %1692, %1691
  %1694 = bitcast float %1609 to i32
  %1695 = ashr i32 %1694, 1
  %1696 = sub nsw i32 1597463174, %1695
  %1697 = bitcast i32 %1696 to float
  %1698 = fmul fast float %1609, 5.000000e-01
  %1699 = fmul fast float %1697, %1697
  %1700 = fmul fast float %1699, %1698
  %1701 = fsub fast float 1.500000e+00, %1700
  %1702 = fmul fast float %1697, %1609
  %1703 = fmul fast float %1702, %1701
  %1704 = bitcast float %1610 to i32
  %1705 = ashr i32 %1704, 1
  %1706 = sub nsw i32 1597463174, %1705
  %1707 = bitcast i32 %1706 to float
  %1708 = fmul fast float %1610, 5.000000e-01
  %1709 = fmul fast float %1707, %1707
  %1710 = fmul fast float %1709, %1708
  %1711 = fsub fast float 1.500000e+00, %1710
  %1712 = fmul fast float %1707, %1610
  %1713 = fmul fast float %1712, %1711
  %1714 = fsub fast float %1693, %1675
  %1715 = fsub fast float %1703, %1679
  %1716 = fsub fast float %1713, %1683
  %1717 = fmul fast float %1714, %1643
  %1718 = fmul fast float %1715, %1645
  %1719 = fmul fast float %1716, %1650
  %1720 = fadd fast float %1717, %1658
  %1721 = fadd fast float %1718, %1662
  %1722 = fadd fast float %1719, %1666
  %1723 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1724 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1726 = fmul fast float %1723, %1723
  %1727 = fmul fast float %1724, %1724
  %1728 = fmul fast float %1725, %1725
  %1729 = fsub fast float %1726, %1608
  %1730 = fsub fast float %1727, %1609
  %1731 = fsub fast float %1728, %1610
  %1732 = fmul fast float %1729, %1633
  %1733 = fmul fast float %1730, %1633
  %1734 = fmul fast float %1731, %1633
  %1735 = fadd fast float %1732, %1608
  %1736 = fadd fast float %1733, %1609
  %1737 = fadd fast float %1734, %1610
  %1738 = fadd fast float %1655, %1619
  %1739 = fsub fast float %1738, %1672
  %1740 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1741 = fsub fast float %1740, %1619
  %1742 = fmul fast float %1741, %1633
  %1743 = fadd fast float %1742, %1619
  br label %1797

; <label>:1744                                    ; preds = %1632
  %1745 = and i32 %1635, 134217728
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1781, label %1747

; <label>:1747                                    ; preds = %1744
  %1748 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1749 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %1751 = fadd fast float %1748, -5.000000e-01
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fmul fast float %1751, %1633
  %1755 = fmul fast float %1752, %1633
  %1756 = fmul fast float %1753, %1633
  %1757 = fadd fast float %1754, 5.000000e-01
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = call float @dx.op.unary.f32(i32 24, float %1608)  ; Sqrt(value)
  %1761 = call float @dx.op.unary.f32(i32 24, float %1609)  ; Sqrt(value)
  %1762 = call float @dx.op.unary.f32(i32 24, float %1610)  ; Sqrt(value)
  %1763 = fmul fast float %1757, 2.000000e+00
  %1764 = fsub fast float 1.000000e+00, %1763
  %1765 = fmul fast float %1764, %1760
  %1766 = fadd fast float %1765, %1763
  %1767 = fmul fast float %1766, %1760
  %1768 = fmul fast float %1758, 2.000000e+00
  %1769 = fsub fast float 1.000000e+00, %1768
  %1770 = fmul fast float %1769, %1761
  %1771 = fadd fast float %1770, %1768
  %1772 = fmul fast float %1771, %1761
  %1773 = fmul fast float %1759, 2.000000e+00
  %1774 = fsub fast float 1.000000e+00, %1773
  %1775 = fmul fast float %1774, %1762
  %1776 = fadd fast float %1775, %1773
  %1777 = fmul fast float %1776, %1762
  %1778 = fmul fast float %1767, %1767
  %1779 = fmul fast float %1772, %1772
  %1780 = fmul fast float %1777, %1777
  br label %1797

; <label>:1781                                    ; preds = %1744
  %1782 = fmul fast float %334, %334
  %1783 = fmul fast float %338, %338
  %1784 = fmul fast float %342, %342
  %1785 = fadd fast float %1782, -1.000000e+00
  %1786 = fadd fast float %1783, -1.000000e+00
  %1787 = fadd fast float %1784, -1.000000e+00
  %1788 = fmul fast float %1633, %1785
  %1789 = fmul fast float %1633, %1786
  %1790 = fmul fast float %1633, %1787
  %1791 = fadd fast float %1788, 1.000000e+00
  %1792 = fadd fast float %1789, 1.000000e+00
  %1793 = fadd fast float %1790, 1.000000e+00
  %1794 = fmul fast float %1791, %1608
  %1795 = fmul fast float %1792, %1609
  %1796 = fmul fast float %1793, %1610
  br label %1797

; <label>:1797                                    ; preds = %1781, %1747, %1638, %1594
  %1798 = phi float [ %1743, %1638 ], [ %1619, %1747 ], [ %1619, %1781 ], [ 0x3FA23C0BE0000000, %1594 ]
  %1799 = phi float [ %1735, %1638 ], [ %1778, %1747 ], [ %1794, %1781 ], [ 1.000000e+00, %1594 ]
  %1800 = phi float [ %1736, %1638 ], [ %1779, %1747 ], [ %1795, %1781 ], [ 1.000000e+00, %1594 ]
  %1801 = phi float [ %1737, %1638 ], [ %1780, %1747 ], [ %1796, %1781 ], [ 1.000000e+00, %1594 ]
  %1802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1803 = extractvalue %dx.types.CBufRet.i32 %1802, 1
  %1804 = and i32 %1803, 1
  %1805 = icmp ne i32 %1804, 0
  %1806 = add i32 %62, 356
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 32
  %1810 = icmp ne i32 %1809, 0
  %1811 = and i1 %1805, %1810
  %1812 = select i1 %1811, float 1.000000e+00, float %1799
  %1813 = select i1 %1811, float 0x3FD3333340000000, float %1800
  %1814 = select i1 %1811, float 0x3FD3333340000000, float %1801
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 32
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1891, label %1819

; <label>:1819                                    ; preds = %1797
  %1820 = add i32 %62, 108
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = add i32 %62, 444
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = add i32 %1825, 0
  %1827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1827, %dx.types.Handle %107, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1832 = extractvalue %dx.types.ResRet.f32 %1828, 3
  %1833 = and i32 %1822, 255
  %1834 = uitofp i32 %1833 to float
  %1835 = lshr i32 %1822, 8
  %1836 = and i32 %1835, 255
  %1837 = uitofp i32 %1836 to float
  %1838 = lshr i32 %1822, 16
  %1839 = and i32 %1838, 255
  %1840 = uitofp i32 %1839 to float
  %1841 = fmul fast float %1840, 0x3F70101000000000
  %1842 = fmul fast float %1829, %1834
  %1843 = fadd fast float %1842, %1837
  %1844 = fmul fast float %1843, 0x3F70101000000000
  %1845 = fadd fast float %1830, -5.000000e-01
  %1846 = fadd fast float %1832, -5.000000e-01
  %1847 = fmul fast float %1845, %1841
  %1848 = fmul fast float %1846, %1841
  %1849 = fadd fast float %1847, 5.000000e-01
  %1850 = fadd fast float %1848, 5.000000e-01
  %1851 = fmul fast float %1849, 2.000000e+00
  %1852 = fadd fast float %1851, -1.000000e+00
  %1853 = fmul fast float %1850, 2.000000e+00
  %1854 = fadd fast float %1853, -1.000000e+00
  %1855 = fadd fast float %1852, %1854
  %1856 = fmul fast float %1855, 5.000000e-01
  %1857 = fsub fast float %1852, %1854
  %1858 = fmul fast float %1857, 5.000000e-01
  %1859 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1860 = fsub fast float 1.000000e+00, %1859
  %1861 = call float @dx.op.unary.f32(i32 6, float %1858)  ; FAbs(value)
  %1862 = fsub fast float %1860, %1861
  %1863 = call float @dx.op.dot3.f32(i32 55, float %1856, float %1858, float %1862, float %1856, float %1858, float %1862)  ; Dot3(ax,ay,az,bx,by,bz)
  %1864 = call float @dx.op.unary.f32(i32 25, float %1863)  ; Rsqrt(value)
  %1865 = fmul fast float %1856, %1864
  %1866 = fmul fast float %1858, %1864
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 67108864
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1887, label %1871

; <label>:1871                                    ; preds = %1819
  %1872 = add i32 %62, 296
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 65535
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 65535
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1874, 16
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = fsub fast float %1844, %1882
  %1884 = fmul fast float %1883, %1876
  %1885 = fadd fast float %1884, %1880
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  br label %1887

; <label>:1887                                    ; preds = %1871, %1819
  %1888 = phi float [ %1886, %1871 ], [ %1844, %1819 ]
  %1889 = call float @dx.op.dot2.f32(i32 54, float %1865, float %1866, float %1308, float %1309)  ; Dot2(ax,ay,bx,by)
  %1890 = call float @dx.op.dot2.f32(i32 54, float %1865, float %1866, float %1310, float %1311)  ; Dot2(ax,ay,bx,by)
  br label %1891

; <label>:1891                                    ; preds = %1887, %1797
  %1892 = phi float [ %1888, %1887 ], [ 0x3FD6666660000000, %1797 ]
  %1893 = phi float [ %1889, %1887 ], [ 0.000000e+00, %1797 ]
  %1894 = phi float [ %1890, %1887 ], [ 0.000000e+00, %1797 ]
  %1895 = phi float [ %1831, %1887 ], [ 1.000000e+00, %1797 ]
  %1896 = add i32 %62, 176
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = lshr i32 %1898, 22
  %1900 = shl nuw nsw i32 %1899, 5
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 64
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1939, label %1906

; <label>:1906                                    ; preds = %1891
  %1907 = add i32 %62, 460
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = add i32 %1909, 0
  %1911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 131072
  %1915 = icmp eq i32 %1914, 0
  %1916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1911, %dx.types.Handle %107, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.ResRet.f32 %1916, 1
  %1919 = extractvalue %dx.types.ResRet.f32 %1916, 2
  %1920 = fmul fast float %1917, %322
  %1921 = fmul fast float %1918, %325
  %1922 = fmul fast float %1919, %328
  br i1 %1915, label %1929, label %1923

; <label>:1923                                    ; preds = %1906
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 0
  %1926 = fmul fast float %1925, %1920
  %1927 = fmul fast float %1925, %1921
  %1928 = fmul fast float %1925, %1922
  br label %1929

; <label>:1929                                    ; preds = %1923, %1906
  %1930 = phi float [ %1926, %1923 ], [ %1920, %1906 ]
  %1931 = phi float [ %1927, %1923 ], [ %1921, %1906 ]
  %1932 = phi float [ %1928, %1923 ], [ %1922, %1906 ]
  %1933 = fmul fast float %1930, %1901
  %1934 = select i1 %260, float %1933, float %1930
  %1935 = call float @dx.op.dot3.f32(i32 55, float %1934, float %1931, float %1932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1936 = select i1 %260, float 0.000000e+00, float %1930
  %1937 = select i1 %260, float %1935, float %1931
  %1938 = select i1 %260, float 0.000000e+00, float %1932
  br label %1939

; <label>:1939                                    ; preds = %1929, %1891
  %1940 = phi float [ %1936, %1929 ], [ 0.000000e+00, %1891 ]
  %1941 = phi float [ %1937, %1929 ], [ 0.000000e+00, %1891 ]
  %1942 = phi float [ %1938, %1929 ], [ 0.000000e+00, %1891 ]
  %1943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.i32 %1943, 0
  %1945 = and i32 %1944, 1024
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %1977, label %1947

; <label>:1947                                    ; preds = %1939
  %1948 = add i32 %62, 168
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = and i32 %1950, 255
  %1952 = uitofp i32 %1951 to float
  %1953 = fmul fast float %1952, 0x3F70101020000000
  %1954 = lshr i32 %1950, 8
  %1955 = and i32 %1954, 255
  %1956 = uitofp i32 %1955 to float
  %1957 = fmul fast float %1956, 0x3F70101020000000
  %1958 = lshr i32 %1950, 16
  %1959 = and i32 %1958, 255
  %1960 = uitofp i32 %1959 to float
  %1961 = fmul fast float %1960, 0x3F70101020000000
  %1962 = fmul fast float %1953, %1953
  %1963 = fmul fast float %1957, %1957
  %1964 = fmul fast float %1961, %1961
  %1965 = add i32 %62, 528
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %108, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = fmul fast float %1962, %1971
  %1975 = fmul fast float %1963, %1972
  %1976 = fmul fast float %1964, %1973
  br label %1977

; <label>:1977                                    ; preds = %1947, %1939
  %1978 = phi float [ %1974, %1947 ], [ 0.000000e+00, %1939 ]
  %1979 = phi float [ %1975, %1947 ], [ 0.000000e+00, %1939 ]
  %1980 = phi float [ %1976, %1947 ], [ 0.000000e+00, %1939 ]
  %1981 = fcmp fast ogt float %1978, 0.000000e+00
  %1982 = fcmp fast ogt float %1979, 0.000000e+00
  %1983 = fcmp fast ogt float %1980, 0.000000e+00
  %1984 = call float @dx.op.unary.f32(i32 23, float %1978)  ; Log(value)
  %1985 = call float @dx.op.unary.f32(i32 23, float %1979)  ; Log(value)
  %1986 = call float @dx.op.unary.f32(i32 23, float %1980)  ; Log(value)
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = lshr i32 %1988, 7
  %1990 = and i32 %1989, 32752
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = fmul fast float %1984, 0xBFE62E4300000000
  %1993 = fmul fast float %1992, %1991
  %1994 = fmul fast float %1985, 0xBFE62E4300000000
  %1995 = fmul fast float %1994, %1991
  %1996 = fmul fast float %1986, 0xBFE62E4300000000
  %1997 = fmul fast float %1996, %1991
  %1998 = select i1 %1981, float %1993, float 1.270000e+02
  %1999 = select i1 %1982, float %1995, float 1.270000e+02
  %2000 = select i1 %1983, float %1997, float 1.270000e+02
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 10240
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2049, label %2005

; <label>:2005                                    ; preds = %1977
  %2006 = add i32 %62, 544
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = add i32 %2008, 0
  %2010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2011 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2010, %dx.types.Handle %108, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 3
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 1048576
  %2017 = icmp ne i32 %2016, 0
  %2018 = and i32 %2015, 8192
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2035, label %2020

; <label>:2020                                    ; preds = %2005
  %2021 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2022 = select i1 %2017, float %2021, float %2012
  %2023 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2024 = select i1 %2017, float %2023, float %2012
  %2025 = add i32 %62, 112
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = lshr i32 %2027, 16
  %2029 = and i32 %2028, 255
  %2030 = uitofp i32 %2029 to float
  %2031 = fmul fast float %2030, 0x3F80101020000000
  %2032 = fmul fast float %2031, %2024
  %2033 = fmul fast float %2031, %2012
  %2034 = fmul fast float %2031, %2022
  br label %2035

; <label>:2035                                    ; preds = %2020, %2005
  %2036 = phi float [ %2032, %2020 ], [ 0.000000e+00, %2005 ]
  %2037 = phi float [ %2033, %2020 ], [ 0.000000e+00, %2005 ]
  %2038 = phi float [ %2034, %2020 ], [ 0.000000e+00, %2005 ]
  %2039 = and i32 %2015, 2048
  %2040 = icmp eq i32 %2039, 0
  br i1 %2040, label %2049, label %2041

; <label>:2041                                    ; preds = %2035
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = shl i32 %2043, 4
  %2045 = and i32 %2044, 32752
  %2046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2045)  ; LegacyF16ToF32(value)
  %2047 = fmul fast float %2046, %2013
  %2048 = call float @dx.op.binary.f32(i32 35, float %2047, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2049

; <label>:2049                                    ; preds = %2041, %2035, %1977
  %2050 = phi float [ %2036, %2041 ], [ %2036, %2035 ], [ 0.000000e+00, %1977 ]
  %2051 = phi float [ %2037, %2041 ], [ %2037, %2035 ], [ 0.000000e+00, %1977 ]
  %2052 = phi float [ %2038, %2041 ], [ %2038, %2035 ], [ 0.000000e+00, %1977 ]
  %2053 = phi float [ %2048, %2041 ], [ 0x3F70101020000000, %2035 ], [ 0x3F70101020000000, %1977 ]
  %2054 = add i32 %62, 112
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = lshr i32 %2056, 8
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = call float @dx.op.dot3.f32(i32 55, float %1812, float %1813, float %1814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2063 = fmul fast float %2061, %2062
  %2064 = fadd fast float %2063, %2058
  %2065 = fmul fast float %2064, 0x3F70101020000000
  %2066 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  br i1 %1296, label %2067, label %2102

; <label>:2067                                    ; preds = %2049
  %2068 = fmul fast float %2053, 2.000000e+00
  %2069 = fcmp fast olt float %1998, 1.270000e+02
  %2070 = fcmp fast olt float %1999, 1.270000e+02
  %2071 = fcmp fast olt float %2000, 1.270000e+02
  %2072 = fmul fast float %1998, 0xBFF7154760000000
  %2073 = fmul fast float %2072, %2068
  %2074 = fmul fast float %1999, 0xBFF7154760000000
  %2075 = fmul fast float %2074, %2068
  %2076 = fmul fast float %2000, 0xBFF7154760000000
  %2077 = fmul fast float %2076, %2068
  %2078 = call float @dx.op.unary.f32(i32 21, float %2073)  ; Exp(value)
  %2079 = call float @dx.op.unary.f32(i32 21, float %2075)  ; Exp(value)
  %2080 = call float @dx.op.unary.f32(i32 21, float %2077)  ; Exp(value)
  %2081 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2082 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2083 = call float @dx.op.unary.f32(i32 7, float %2080)  ; Saturate(value)
  %2084 = fadd fast float %2081, -1.000000e+00
  %2085 = select i1 %2069, float %2084, float -1.000000e+00
  %2086 = fadd fast float %2082, -1.000000e+00
  %2087 = select i1 %2070, float %2086, float -1.000000e+00
  %2088 = fadd fast float %2083, -1.000000e+00
  %2089 = select i1 %2071, float %2088, float -1.000000e+00
  %2090 = fmul fast float %2085, %1592
  %2091 = fmul fast float %2087, %1592
  %2092 = fmul fast float %2089, %1592
  %2093 = fadd fast float %2090, 1.000000e+00
  %2094 = fadd fast float %2091, 1.000000e+00
  %2095 = fadd fast float %2092, 1.000000e+00
  %2096 = fmul fast float %2093, %1277
  %2097 = fmul fast float %2094, %1278
  %2098 = fmul fast float %2095, %1279
  %2099 = fmul fast float %2093, %1280
  %2100 = fmul fast float %2094, %1281
  %2101 = fmul fast float %2095, %1282
  br label %2102

; <label>:2102                                    ; preds = %2067, %2049
  %2103 = phi float [ %2096, %2067 ], [ %1277, %2049 ]
  %2104 = phi float [ %2097, %2067 ], [ %1278, %2049 ]
  %2105 = phi float [ %2098, %2067 ], [ %1279, %2049 ]
  %2106 = phi float [ %2099, %2067 ], [ %1280, %2049 ]
  %2107 = phi float [ %2100, %2067 ], [ %1281, %2049 ]
  %2108 = phi float [ %2101, %2067 ], [ %1282, %2049 ]
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 3
  %2112 = icmp eq i32 %2111, 3
  br i1 %2112, label %2191, label %2113

; <label>:2113                                    ; preds = %2102
  %2114 = and i32 %2110, 16
  %2115 = icmp ne i32 %2114, 0
  %2116 = select i1 %2115, float %1592, float 0.000000e+00
  %2117 = icmp eq i32 %2111, 0
  br i1 %2117, label %2118, label %2146

; <label>:2118                                    ; preds = %2113
  %2119 = and i32 %2110, 64
  %2120 = icmp ne i32 %2119, 0
  %2121 = select i1 %2120, float %1592, float 0.000000e+00
  %2122 = fsub fast float %1812, %2103
  %2123 = fsub fast float %1813, %2104
  %2124 = fsub fast float %1814, %2105
  %2125 = fmul fast float %2116, %2122
  %2126 = fmul fast float %2116, %2123
  %2127 = fmul fast float %2116, %2124
  %2128 = fadd fast float %2125, %2103
  %2129 = fadd fast float %2126, %2104
  %2130 = fadd fast float %2127, %2105
  %2131 = fsub fast float %1798, %1289
  %2132 = fmul fast float %2116, %2131
  %2133 = fadd fast float %2132, %1289
  %2134 = fsub fast float %1940, %2106
  %2135 = fsub fast float %1941, %2107
  %2136 = fsub fast float %1942, %2108
  %2137 = fmul fast float %2121, %2134
  %2138 = fmul fast float %2121, %2135
  %2139 = fmul fast float %2121, %2136
  %2140 = fadd fast float %2137, %2106
  %2141 = fadd fast float %2138, %2107
  %2142 = fadd fast float %2139, %2108
  %2143 = fsub fast float %2066, %1294
  %2144 = fmul fast float %2116, %2143
  %2145 = fadd fast float %2144, %1294
  br label %2191

; <label>:2146                                    ; preds = %2113
  %2147 = icmp eq i32 %2111, 1
  br i1 %2147, label %2148, label %2161

; <label>:2148                                    ; preds = %2146
  %2149 = fadd fast float %1812, -1.000000e+00
  %2150 = fadd fast float %1813, -1.000000e+00
  %2151 = fadd fast float %1814, -1.000000e+00
  %2152 = fmul fast float %2116, %2149
  %2153 = fmul fast float %2116, %2150
  %2154 = fmul fast float %2116, %2151
  %2155 = fadd fast float %2152, 1.000000e+00
  %2156 = fadd fast float %2153, 1.000000e+00
  %2157 = fadd fast float %2154, 1.000000e+00
  %2158 = fmul fast float %2155, %2103
  %2159 = fmul fast float %2156, %2104
  %2160 = fmul fast float %2157, %2105
  br label %2191

; <label>:2161                                    ; preds = %2146
  %2162 = icmp eq i32 %2111, 2
  br i1 %2162, label %2163, label %2191

; <label>:2163                                    ; preds = %2161
  %2164 = call float @dx.op.unary.f32(i32 24, float %1812)  ; Sqrt(value)
  %2165 = call float @dx.op.unary.f32(i32 24, float %1813)  ; Sqrt(value)
  %2166 = call float @dx.op.unary.f32(i32 24, float %1814)  ; Sqrt(value)
  %2167 = fadd fast float %2164, -5.000000e-01
  %2168 = fadd fast float %2165, -5.000000e-01
  %2169 = fadd fast float %2166, -5.000000e-01
  %2170 = fmul fast float %2167, %2116
  %2171 = fmul fast float %2168, %2116
  %2172 = fmul fast float %2169, %2116
  %2173 = fadd fast float %2170, 5.000000e-01
  %2174 = fadd fast float %2171, 5.000000e-01
  %2175 = fadd fast float %2172, 5.000000e-01
  %2176 = fmul fast float %2173, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2103
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2103
  %2181 = fmul fast float %2174, 2.000000e+00
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2104
  %2184 = fadd fast float %2183, %2181
  %2185 = fmul fast float %2184, %2104
  %2186 = fmul fast float %2175, 2.000000e+00
  %2187 = fsub fast float 1.000000e+00, %2186
  %2188 = fmul fast float %2187, %2105
  %2189 = fadd fast float %2188, %2186
  %2190 = fmul fast float %2189, %2105
  br label %2191

; <label>:2191                                    ; preds = %2163, %2161, %2148, %2118, %2102
  %2192 = phi float [ %2103, %2102 ], [ %2180, %2163 ], [ %2103, %2161 ], [ %2158, %2148 ], [ %2128, %2118 ]
  %2193 = phi float [ %2104, %2102 ], [ %2185, %2163 ], [ %2104, %2161 ], [ %2159, %2148 ], [ %2129, %2118 ]
  %2194 = phi float [ %2105, %2102 ], [ %2190, %2163 ], [ %2105, %2161 ], [ %2160, %2148 ], [ %2130, %2118 ]
  %2195 = phi float [ %2106, %2102 ], [ %2106, %2163 ], [ %2106, %2161 ], [ %2106, %2148 ], [ %2140, %2118 ]
  %2196 = phi float [ %2107, %2102 ], [ %2107, %2163 ], [ %2107, %2161 ], [ %2107, %2148 ], [ %2141, %2118 ]
  %2197 = phi float [ %2108, %2102 ], [ %2108, %2163 ], [ %2108, %2161 ], [ %2108, %2148 ], [ %2142, %2118 ]
  %2198 = phi float [ %1289, %2102 ], [ %1289, %2163 ], [ %1289, %2161 ], [ %1289, %2148 ], [ %2133, %2118 ]
  %2199 = phi float [ %1294, %2102 ], [ %1294, %2163 ], [ %1294, %2161 ], [ %1294, %2148 ], [ %2145, %2118 ]
  %2200 = and i32 %2110, 12
  %2201 = icmp eq i32 %2200, 12
  br i1 %2201, label %2332, label %2202

; <label>:2202                                    ; preds = %2191
  %2203 = and i32 %2110, 2097184
  %2204 = icmp eq i32 %2203, 2097184
  %2205 = select i1 %2204, float %1592, float 0.000000e+00
  %2206 = and i32 %2110, 4194336
  %2207 = icmp eq i32 %2206, 4194336
  %2208 = select i1 %2207, float %1592, float 0.000000e+00
  %2209 = and i32 %2110, 8388640
  %2210 = icmp eq i32 %2209, 8388640
  %2211 = select i1 %2210, float %1592, float 0.000000e+00
  %2212 = and i32 %2110, 1024
  %2213 = icmp ne i32 %2212, 0
  %2214 = select i1 %2213, float %1592, float 0.000000e+00
  %2215 = and i32 %2110, 2048
  %2216 = icmp ne i32 %2215, 0
  %2217 = select i1 %2216, float %1592, float 0.000000e+00
  %2218 = and i32 %2110, 8192
  %2219 = icmp ne i32 %2218, 0
  %2220 = select i1 %2219, float %1592, float 0.000000e+00
  %2221 = icmp eq i32 %2200, 0
  br i1 %2221, label %2222, label %2256

; <label>:2222                                    ; preds = %2202
  %2223 = fsub fast float %1893, %1275
  %2224 = fsub fast float %1894, %1276
  %2225 = fmul fast float %2205, %2223
  %2226 = fmul fast float %2205, %2224
  %2227 = fadd fast float %2225, %1275
  %2228 = fadd fast float %2226, %1276
  %2229 = fsub fast float %1895, %1292
  %2230 = fmul fast float %2208, %2229
  %2231 = fadd fast float %2230, %1292
  %2232 = fsub fast float %1892, %1291
  %2233 = fmul fast float %2211, %2232
  %2234 = fadd fast float %2233, %1291
  %2235 = fsub fast float %1998, %1286
  %2236 = fsub fast float %1999, %1287
  %2237 = fsub fast float %2000, %1288
  %2238 = fmul fast float %2214, %2235
  %2239 = fmul fast float %2214, %2236
  %2240 = fmul fast float %2214, %2237
  %2241 = fadd fast float %2238, %1286
  %2242 = fadd fast float %2239, %1287
  %2243 = fadd fast float %2240, %1288
  %2244 = fsub fast float %2053, %1293
  %2245 = fmul fast float %2217, %2244
  %2246 = fadd fast float %2245, %1293
  %2247 = fsub fast float %2050, %1283
  %2248 = fsub fast float %2051, %1284
  %2249 = fsub fast float %2052, %1285
  %2250 = fmul fast float %2220, %2247
  %2251 = fmul fast float %2220, %2248
  %2252 = fmul fast float %2220, %2249
  %2253 = fadd fast float %2250, %1283
  %2254 = fadd fast float %2251, %1284
  %2255 = fadd fast float %2252, %1285
  br label %2332

; <label>:2256                                    ; preds = %2202
  %2257 = icmp eq i32 %2200, 4
  br i1 %2257, label %2258, label %2304

; <label>:2258                                    ; preds = %2256
  %2259 = fmul fast float %2205, %1893
  %2260 = fmul fast float %2205, %1894
  %2261 = fadd fast float %2259, %1275
  %2262 = fadd fast float %2260, %1276
  %2263 = call float @dx.op.binary.f32(i32 36, float %1292, float %1895)  ; FMin(a,b)
  %2264 = fsub fast float %2263, %1292
  %2265 = fmul fast float %2264, %2208
  %2266 = fadd fast float %2265, %1292
  %2267 = fadd fast float %1892, %1291
  %2268 = fmul fast float %2267, 0x3FF337FAE0000000
  %2269 = fmul fast float %1291, %1291
  %2270 = fmul fast float %1892, %1892
  %2271 = fadd fast float %2270, %2269
  %2272 = fmul fast float %2271, 0x3FE5152B00000000
  %2273 = fmul fast float %1291, 0xBFCC1F85E0000000
  %2274 = fmul fast float %2273, %1892
  %2275 = fadd fast float %2274, 0xBFE1363700000000
  %2276 = fadd fast float %2275, %2268
  %2277 = fsub fast float %2276, %2272
  %2278 = fmul fast float %2267, 0x3FBA6F0D00000000
  %2279 = fmul fast float %2271, 0x3FD0432880000000
  %2280 = fmul fast float %1291, 0xBFEF110800000000
  %2281 = fmul fast float %2280, %1892
  %2282 = fadd fast float %2281, 1.000000e+00
  %2283 = fsub fast float %2282, %2278
  %2284 = fadd fast float %2283, %2279
  %2285 = fdiv fast float %2277, %2284
  %2286 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2287 = fsub fast float %2286, %1291
  %2288 = fmul fast float %2287, %2211
  %2289 = fadd fast float %2288, %1291
  %2290 = fmul fast float %2214, %1998
  %2291 = fmul fast float %2214, %1999
  %2292 = fmul fast float %2214, %2000
  %2293 = fadd fast float %2290, %1286
  %2294 = fadd fast float %2291, %1287
  %2295 = fadd fast float %2292, %1288
  %2296 = fmul fast float %2217, %2053
  %2297 = fadd fast float %2296, %1293
  %2298 = fmul fast float %2220, %2050
  %2299 = fmul fast float %2220, %2051
  %2300 = fmul fast float %2220, %2052
  %2301 = fadd fast float %2298, %1283
  %2302 = fadd fast float %2299, %1284
  %2303 = fadd fast float %2300, %1285
  br label %2332

; <label>:2304                                    ; preds = %2256
  %2305 = icmp eq i32 %2200, 8
  br i1 %2305, label %2306, label %2332

; <label>:2306                                    ; preds = %2304
  %2307 = fmul fast float %2205, %1893
  %2308 = fmul fast float %2205, %1894
  %2309 = fadd fast float %2307, %1275
  %2310 = fadd fast float %2308, %1276
  %2311 = call float @dx.op.binary.f32(i32 36, float %1292, float %1895)  ; FMin(a,b)
  %2312 = fsub fast float %2311, %1292
  %2313 = fmul fast float %2312, %2208
  %2314 = fadd fast float %2313, %1292
  %2315 = fsub fast float %1892, %1291
  %2316 = fmul fast float %2211, %2315
  %2317 = fadd fast float %2316, %1291
  %2318 = fmul fast float %2214, %1998
  %2319 = fmul fast float %2214, %1999
  %2320 = fmul fast float %2214, %2000
  %2321 = fadd fast float %2318, %1286
  %2322 = fadd fast float %2319, %1287
  %2323 = fadd fast float %2320, %1288
  %2324 = fmul fast float %2217, %2053
  %2325 = fadd fast float %2324, %1293
  %2326 = fmul fast float %2220, %2050
  %2327 = fmul fast float %2220, %2051
  %2328 = fmul fast float %2220, %2052
  %2329 = fadd fast float %2326, %1283
  %2330 = fadd fast float %2327, %1284
  %2331 = fadd fast float %2328, %1285
  br label %2332

; <label>:2332                                    ; preds = %2306, %2304, %2258, %2222, %2191, %1591, %1295, %1274
  %2333 = phi float [ %1275, %2191 ], [ %1275, %1591 ], [ %1275, %1274 ], [ %2309, %2306 ], [ %1275, %2304 ], [ %2261, %2258 ], [ %2227, %2222 ], [ %1275, %1295 ]
  %2334 = phi float [ %1276, %2191 ], [ %1276, %1591 ], [ %1276, %1274 ], [ %2310, %2306 ], [ %1276, %2304 ], [ %2262, %2258 ], [ %2228, %2222 ], [ %1276, %1295 ]
  %2335 = phi float [ %2192, %2191 ], [ %1277, %1591 ], [ %1277, %1274 ], [ %2192, %2306 ], [ %2192, %2304 ], [ %2192, %2258 ], [ %2192, %2222 ], [ %1277, %1295 ]
  %2336 = phi float [ %2193, %2191 ], [ %1278, %1591 ], [ %1278, %1274 ], [ %2193, %2306 ], [ %2193, %2304 ], [ %2193, %2258 ], [ %2193, %2222 ], [ %1278, %1295 ]
  %2337 = phi float [ %2194, %2191 ], [ %1279, %1591 ], [ %1279, %1274 ], [ %2194, %2306 ], [ %2194, %2304 ], [ %2194, %2258 ], [ %2194, %2222 ], [ %1279, %1295 ]
  %2338 = phi float [ %2195, %2191 ], [ %1280, %1591 ], [ %1280, %1274 ], [ %2195, %2306 ], [ %2195, %2304 ], [ %2195, %2258 ], [ %2195, %2222 ], [ %1280, %1295 ]
  %2339 = phi float [ %2196, %2191 ], [ %1281, %1591 ], [ %1281, %1274 ], [ %2196, %2306 ], [ %2196, %2304 ], [ %2196, %2258 ], [ %2196, %2222 ], [ %1281, %1295 ]
  %2340 = phi float [ %2197, %2191 ], [ %1282, %1591 ], [ %1282, %1274 ], [ %2197, %2306 ], [ %2197, %2304 ], [ %2197, %2258 ], [ %2197, %2222 ], [ %1282, %1295 ]
  %2341 = phi float [ %1283, %2191 ], [ %1283, %1591 ], [ %1283, %1274 ], [ %2329, %2306 ], [ %1283, %2304 ], [ %2301, %2258 ], [ %2253, %2222 ], [ %1283, %1295 ]
  %2342 = phi float [ %1284, %2191 ], [ %1284, %1591 ], [ %1284, %1274 ], [ %2330, %2306 ], [ %1284, %2304 ], [ %2302, %2258 ], [ %2254, %2222 ], [ %1284, %1295 ]
  %2343 = phi float [ %1285, %2191 ], [ %1285, %1591 ], [ %1285, %1274 ], [ %2331, %2306 ], [ %1285, %2304 ], [ %2303, %2258 ], [ %2255, %2222 ], [ %1285, %1295 ]
  %2344 = phi float [ %1286, %2191 ], [ %1286, %1591 ], [ %1286, %1274 ], [ %2321, %2306 ], [ %1286, %2304 ], [ %2293, %2258 ], [ %2241, %2222 ], [ %1286, %1295 ]
  %2345 = phi float [ %1287, %2191 ], [ %1287, %1591 ], [ %1287, %1274 ], [ %2322, %2306 ], [ %1287, %2304 ], [ %2294, %2258 ], [ %2242, %2222 ], [ %1287, %1295 ]
  %2346 = phi float [ %1288, %2191 ], [ %1288, %1591 ], [ %1288, %1274 ], [ %2323, %2306 ], [ %1288, %2304 ], [ %2295, %2258 ], [ %2243, %2222 ], [ %1288, %1295 ]
  %2347 = phi float [ %2198, %2191 ], [ %1289, %1591 ], [ %1289, %1274 ], [ %2198, %2306 ], [ %2198, %2304 ], [ %2198, %2258 ], [ %2198, %2222 ], [ %1289, %1295 ]
  %2348 = phi float [ %1291, %2191 ], [ %1291, %1591 ], [ %1291, %1274 ], [ %2317, %2306 ], [ %1291, %2304 ], [ %2289, %2258 ], [ %2234, %2222 ], [ %1291, %1295 ]
  %2349 = phi float [ %1292, %2191 ], [ %1292, %1591 ], [ %1292, %1274 ], [ %2314, %2306 ], [ %1292, %2304 ], [ %2266, %2258 ], [ %2231, %2222 ], [ %1292, %1295 ]
  %2350 = phi float [ %1293, %2191 ], [ %1293, %1591 ], [ %1293, %1274 ], [ %2325, %2306 ], [ %1293, %2304 ], [ %2297, %2258 ], [ %2246, %2222 ], [ %1293, %1295 ]
  %2351 = phi float [ %2199, %2191 ], [ %1294, %1591 ], [ %1294, %1274 ], [ %2199, %2306 ], [ %2199, %2304 ], [ %2199, %2258 ], [ %2199, %2222 ], [ %1294, %1295 ]
  br i1 %449, label %3389, label %2352

; <label>:2352                                    ; preds = %2332
  %2353 = icmp ult i32 %505, 3
  %2354 = add i32 %62, 56
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = add i32 %62, 60
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = or i32 %2359, %2356
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %3389, label %2362

; <label>:2362                                    ; preds = %2352
  %2363 = and i32 %2356, 262144
  %2364 = icmp ne i32 %2363, 0
  %2365 = select i1 %2364, float %65, float 1.000000e+00
  %2366 = select i1 %2364, float %66, float 0.000000e+00
  %2367 = select i1 %2364, float %67, float 0.000000e+00
  %2368 = select i1 %2364, float %68, float 1.000000e+00
  %2369 = select i1 %2364, float %69, float %90
  %2370 = select i1 %2364, float %70, float %91
  %2371 = add i32 %62, 316
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 16
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = fmul fast float %2375, 0x3F50624DE0000000
  %2377 = add i32 %62, 120
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = lshr i32 %2379, 16
  %2381 = and i32 %2380, 255
  %2382 = lshr i32 %2379, 24
  %2383 = add i32 %62, 324
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = lshr i32 %2385, 16
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = add i32 %62, 64
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 22
  %2394 = shl nuw nsw i32 %2393, 5
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = shl i32 %2392, 4
  %2397 = and i32 %2396, 32752
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = lshr i32 %2392, 7
  %2400 = and i32 %2399, 32752
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 3
  %2404 = fmul fast float %2403, 1.000000e+03
  %2405 = fmul fast float %399, %2404
  %2406 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2407 = fadd fast float %2406, %389
  %2408 = fmul fast float %400, %2404
  %2409 = call float @dx.op.unary.f32(i32 22, float %2408)  ; Frc(value)
  %2410 = fadd fast float %2409, %391
  %2411 = fmul fast float %2376, %2404
  %2412 = call float @dx.op.unary.f32(i32 22, float %2411)  ; Frc(value)
  %2413 = fmul fast float %2412, 0x401921FB60000000
  %2414 = fadd fast float %2413, %2395
  %2415 = call float @dx.op.unary.f32(i32 13, float %2414)  ; Sin(value)
  %2416 = call float @dx.op.unary.f32(i32 12, float %2414)  ; Cos(value)
  %2417 = fsub fast float -0.000000e+00, %2415
  %2418 = fadd fast float %2369, -5.000000e-01
  %2419 = fadd fast float %2370, -5.000000e-01
  %2420 = fmul fast float %2387, %2418
  %2421 = fmul fast float %2389, %2419
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = fmul fast float %2398, %2422
  %2425 = fmul fast float %2401, %2423
  %2426 = fmul fast float %2416, %2424
  %2427 = call float @dx.op.tertiary.f32(i32 46, float %2417, float %2425, float %2426)  ; FMad(a,b,c)
  %2428 = fmul fast float %2415, %2424
  %2429 = call float @dx.op.tertiary.f32(i32 46, float %2416, float %2425, float %2428)  ; FMad(a,b,c)
  %2430 = fadd fast float %2407, %2427
  %2431 = fadd fast float %2410, %2429
  %2432 = icmp ugt i32 %2381, 1
  %2433 = icmp ugt i32 %2379, 33554431
  %2434 = or i1 %2433, %2432
  br i1 %2434, label %2435, label %2460

; <label>:2435                                    ; preds = %2362
  %2436 = add i32 %62, 260
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 16
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = fmul fast float %2403, %2440
  %2442 = call float @dx.op.unary.f32(i32 22, float %2441)  ; Frc(value)
  %2443 = mul nuw nsw i32 %2381, %2382
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2442, %2444
  %2446 = call float @dx.op.unary.f32(i32 27, float %2445)  ; Round_ni(value)
  %2447 = fptoui float %2446 to i32
  %2448 = urem i32 %2447, %2381
  %2449 = udiv i32 %2447, %2382
  %2450 = call float @dx.op.unary.f32(i32 22, float %2430)  ; Frc(value)
  %2451 = call float @dx.op.unary.f32(i32 22, float %2431)  ; Frc(value)
  %2452 = uitofp i32 %2448 to float
  %2453 = uitofp i32 %2449 to float
  %2454 = fadd fast float %2450, %2452
  %2455 = fadd fast float %2451, %2453
  %2456 = uitofp i32 %2381 to float
  %2457 = uitofp i32 %2382 to float
  %2458 = fdiv fast float %2454, %2456
  %2459 = fdiv fast float %2455, %2457
  br label %2460

; <label>:2460                                    ; preds = %2435, %2362
  %2461 = phi float [ %2458, %2435 ], [ %2430, %2362 ]
  %2462 = phi float [ %2459, %2435 ], [ %2431, %2362 ]
  %2463 = and i32 %2356, 16777216
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2574, label %2465

; <label>:2465                                    ; preds = %2460
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = extractvalue %dx.types.CBufRet.f32 %2466, 1
  %2469 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2470 = fadd fast float %2467, %166
  %2471 = fadd fast float %2468, %167
  %2472 = fadd fast float %2469, %168
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = icmp eq i32 %63, 65535
  br i1 %2476, label %2571, label %2477

; <label>:2477                                    ; preds = %2465
  %2478 = lshr i32 %63, 1
  %2479 = shl i32 %2478, 2
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %63, 1
  %2483 = icmp ne i32 %2482, 0
  %2484 = lshr i32 %2481, 16
  %2485 = and i32 %2481, 65535
  %2486 = select i1 %2483, i32 %2484, i32 %2485
  %2487 = icmp eq i32 %2486, 65535
  br i1 %2487, label %2567, label %2488

; <label>:2488                                    ; preds = %2477
  %2489 = mul nuw nsw i32 %2486, 40
  %2490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2489, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = extractvalue %dx.types.ResRet.f32 %2490, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2490, 2
  %2494 = add nuw nsw i32 %2489, 12
  %2495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = add nuw nsw i32 %2489, 24
  %2500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = add nuw nsw i32 %2489, 36
  %2505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.f32 %2505, 0
  %2507 = fsub fast float %2470, %2491
  %2508 = fsub fast float %2471, %2492
  %2509 = fsub fast float %2472, %2493
  %2510 = fmul fast float %2506, %2507
  %2511 = fmul fast float %2506, %2508
  %2512 = fmul fast float %2506, %2509
  %2513 = call float @dx.op.unary.f32(i32 27, float %2510)  ; Round_ni(value)
  %2514 = call float @dx.op.unary.f32(i32 27, float %2511)  ; Round_ni(value)
  %2515 = call float @dx.op.unary.f32(i32 27, float %2512)  ; Round_ni(value)
  %2516 = fadd fast float %2513, 5.000000e-01
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fmul fast float %2516, %2496
  %2520 = fmul fast float %2517, %2497
  %2521 = fmul fast float %2518, %2498
  %2522 = shl i32 %63, 2
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call float @dx.op.unary.f32(i32 22, float %2519)  ; Frc(value)
  %2528 = call float @dx.op.unary.f32(i32 22, float %2520)  ; Frc(value)
  %2529 = call float @dx.op.unary.f32(i32 22, float %2521)  ; Frc(value)
  %2530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2526, %dx.types.Handle %57, float %2527, float %2528, float %2529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = fmul fast float %2531, 1.023000e+03
  %2535 = fmul fast float %2532, 1.023000e+03
  %2536 = fmul fast float %2533, 1.023000e+03
  %2537 = fadd fast float %2534, 5.000000e-01
  %2538 = fadd fast float %2535, 5.000000e-01
  %2539 = fadd fast float %2536, 5.000000e-01
  %2540 = call float @dx.op.unary.f32(i32 27, float %2537)  ; Round_ni(value)
  %2541 = call float @dx.op.unary.f32(i32 27, float %2538)  ; Round_ni(value)
  %2542 = call float @dx.op.unary.f32(i32 27, float %2539)  ; Round_ni(value)
  %2543 = fsub fast float %2510, %2513
  %2544 = fsub fast float %2511, %2514
  %2545 = fsub fast float %2512, %2515
  %2546 = fmul fast float %2543, 7.500000e-01
  %2547 = fmul fast float %2544, 7.500000e-01
  %2548 = fmul fast float %2545, 7.500000e-01
  %2549 = fadd fast float %2513, 1.250000e-01
  %2550 = fadd fast float %2549, %2546
  %2551 = fadd fast float %2550, %2540
  %2552 = fadd fast float %2514, 1.250000e-01
  %2553 = fadd fast float %2552, %2547
  %2554 = fadd fast float %2553, %2541
  %2555 = fadd fast float %2515, 1.250000e-01
  %2556 = fadd fast float %2555, %2548
  %2557 = fadd fast float %2556, %2542
  %2558 = fmul fast float %2551, %2501
  %2559 = fmul fast float %2554, %2502
  %2560 = fmul fast float %2557, %2503
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2564, %dx.types.Handle %55, float %2558, float %2559, float %2560, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  br label %2567

; <label>:2567                                    ; preds = %2488, %2477
  %2568 = phi float [ %2566, %2488 ], [ -1.000000e+00, %2477 ]
  %2569 = fadd fast float %2568, %2475
  %2570 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  br label %2571

; <label>:2571                                    ; preds = %2567, %2465
  %2572 = phi float [ %2570, %2567 ], [ %2475, %2465 ]
  %2573 = fmul fast float %2572, %501
  br label %2574

; <label>:2574                                    ; preds = %2571, %2460
  %2575 = phi float [ %2573, %2571 ], [ %501, %2460 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 256
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2626, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %62, 496
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = add i32 %2583, 0
  %2585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2585, %dx.types.Handle %108, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = add i32 %62, 132
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = shl i32 %2590, 4
  %2592 = and i32 %2591, 32752
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = lshr i32 %2590, 7
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = fsub fast float 1.000000e+00, %2575
  %2598 = call float @dx.op.binary.f32(i32 35, float %2597, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2599 = bitcast float %2575 to i32
  %2600 = sitofp i32 %2599 to float
  %2601 = fadd fast float %2600, 0xC1CFBF8940000000
  %2602 = fmul fast float %2596, %2601
  %2603 = fadd fast float %2602, 0x41CFBF8940000000
  %2604 = fptosi float %2603 to i32
  %2605 = bitcast i32 %2604 to float
  %2606 = bitcast float %2598 to i32
  %2607 = sitofp i32 %2606 to float
  %2608 = fadd fast float %2607, 0xC1CFBF8940000000
  %2609 = fmul fast float %2608, %2596
  %2610 = fadd fast float %2609, 0x41CFBF8940000000
  %2611 = fptosi float %2610 to i32
  %2612 = bitcast i32 %2611 to float
  %2613 = fmul fast float %2605, %2593
  %2614 = fmul fast float %2612, %2593
  %2615 = fsub fast float %2598, %2613
  %2616 = fadd fast float %2614, %2598
  %2617 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2618 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2619 = fsub fast float %2587, %2617
  %2620 = fsub fast float %2618, %2617
  %2621 = bitcast float %2620 to i32
  %2622 = sub nsw i32 2129859010, %2621
  %2623 = bitcast i32 %2622 to float
  %2624 = fmul fast float %2623, %2619
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  br label %2626

; <label>:2626                                    ; preds = %2580, %2574
  %2627 = phi float [ %2625, %2580 ], [ %2575, %2574 ]
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 128
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2648, label %2632

; <label>:2632                                    ; preds = %2626
  %2633 = add i32 %62, 480
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %2635, 0
  %2637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2637, %dx.types.Handle %108, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 524288
  %2643 = icmp ne i32 %2642, 0
  %2644 = fcmp fast ogt float %2639, 0x3FE0101020000000
  %2645 = select i1 %2644, float 1.000000e+00, float 0.000000e+00
  %2646 = select i1 %2643, float %2645, float %2639
  %2647 = fmul fast float %2646, %2627
  br label %2648

; <label>:2648                                    ; preds = %2632, %2626
  %2649 = phi float [ %2647, %2632 ], [ %2627, %2626 ]
  %2650 = fcmp fast ult float %2649, 0x3F70101020000000
  br i1 %2650, label %3389, label %2651

; <label>:2651                                    ; preds = %2648
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 16
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2854, label %2656

; <label>:2656                                    ; preds = %2651
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = add i32 %62, 432
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = add i32 %2661, 0
  %2663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2663, %dx.types.Handle %107, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = extractvalue %dx.types.ResRet.f32 %2664, 3
  %2669 = and i32 %2658, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = lshr i32 %2658, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2668, %2670
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2675, 0x3F70101000000000
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 512
  %2680 = icmp eq i32 %2679, 0
  br i1 %2680, label %2689, label %2681

; <label>:2681                                    ; preds = %2656
  %2682 = add i32 %62, 516
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = add i32 %2684, 0
  %2686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2686, %dx.types.Handle %108, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  br label %2689

; <label>:2689                                    ; preds = %2681, %2656
  %2690 = phi float [ %2688, %2681 ], [ 1.000000e+00, %2656 ]
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 33554432
  %2694 = icmp eq i32 %2693, 0
  br i1 %2694, label %2801, label %2695

; <label>:2695                                    ; preds = %2689
  %2696 = add i32 %62, 256
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 65535
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = lshr i32 %2698, 16
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = add i32 %62, 260
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = and i32 %2705, 65535
  %2707 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2706)  ; LegacyF16ToF32(value)
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = lshr i32 %2709, 24
  %2711 = uitofp i32 %2710 to float
  %2712 = fmul fast float %2711, 0x3F70101020000000
  %2713 = and i32 %2709, 255
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = lshr i32 %2709, 8
  %2717 = and i32 %2716, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = lshr i32 %2709, 16
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = add i32 %62, 252
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = lshr i32 %2726, 24
  %2728 = uitofp i32 %2727 to float
  %2729 = fmul fast float %2728, 0x3F70101020000000
  %2730 = and i32 %2726, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F70101020000000
  %2733 = lshr i32 %2726, 8
  %2734 = and i32 %2733, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 0x3F70101020000000
  %2737 = lshr i32 %2726, 16
  %2738 = and i32 %2737, 255
  %2739 = uitofp i32 %2738 to float
  %2740 = fmul fast float %2739, 0x3F70101020000000
  %2741 = bitcast float %2665 to i32
  %2742 = ashr i32 %2741, 1
  %2743 = sub nsw i32 1597463174, %2742
  %2744 = bitcast i32 %2743 to float
  %2745 = fmul fast float %2665, 5.000000e-01
  %2746 = fmul fast float %2744, %2744
  %2747 = fmul fast float %2746, %2745
  %2748 = fsub fast float 1.500000e+00, %2747
  %2749 = fmul fast float %2744, %2665
  %2750 = fmul fast float %2749, %2748
  %2751 = bitcast float %2666 to i32
  %2752 = ashr i32 %2751, 1
  %2753 = sub nsw i32 1597463174, %2752
  %2754 = bitcast i32 %2753 to float
  %2755 = fmul fast float %2666, 5.000000e-01
  %2756 = fmul fast float %2754, %2754
  %2757 = fmul fast float %2756, %2755
  %2758 = fsub fast float 1.500000e+00, %2757
  %2759 = fmul fast float %2754, %2666
  %2760 = fmul fast float %2759, %2758
  %2761 = bitcast float %2667 to i32
  %2762 = ashr i32 %2761, 1
  %2763 = sub nsw i32 1597463174, %2762
  %2764 = bitcast i32 %2763 to float
  %2765 = fmul fast float %2667, 5.000000e-01
  %2766 = fmul fast float %2764, %2764
  %2767 = fmul fast float %2766, %2765
  %2768 = fsub fast float 1.500000e+00, %2767
  %2769 = fmul fast float %2764, %2667
  %2770 = fmul fast float %2769, %2768
  %2771 = fsub fast float %2750, %2732
  %2772 = fsub fast float %2760, %2736
  %2773 = fsub fast float %2770, %2740
  %2774 = fmul fast float %2771, %2700
  %2775 = fmul fast float %2772, %2702
  %2776 = fmul fast float %2773, %2707
  %2777 = fadd fast float %2774, %2715
  %2778 = fadd fast float %2775, %2719
  %2779 = fadd fast float %2776, %2723
  %2780 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2781 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2782 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2783 = fmul fast float %2780, %2780
  %2784 = fmul fast float %2781, %2781
  %2785 = fmul fast float %2782, %2782
  %2786 = fsub fast float %2783, %2665
  %2787 = fsub fast float %2784, %2666
  %2788 = fsub fast float %2785, %2667
  %2789 = fmul fast float %2786, %2690
  %2790 = fmul fast float %2787, %2690
  %2791 = fmul fast float %2788, %2690
  %2792 = fadd fast float %2789, %2665
  %2793 = fadd fast float %2790, %2666
  %2794 = fadd fast float %2791, %2667
  %2795 = fadd fast float %2712, %2676
  %2796 = fsub fast float %2795, %2729
  %2797 = call float @dx.op.unary.f32(i32 7, float %2796)  ; Saturate(value)
  %2798 = fsub fast float %2797, %2676
  %2799 = fmul fast float %2798, %2690
  %2800 = fadd fast float %2799, %2676
  br label %2854

; <label>:2801                                    ; preds = %2689
  %2802 = and i32 %2692, 134217728
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2838, label %2804

; <label>:2804                                    ; preds = %2801
  %2805 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2806 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2807 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %2808 = fadd fast float %2805, -5.000000e-01
  %2809 = fadd fast float %2806, -5.000000e-01
  %2810 = fadd fast float %2807, -5.000000e-01
  %2811 = fmul fast float %2808, %2690
  %2812 = fmul fast float %2809, %2690
  %2813 = fmul fast float %2810, %2690
  %2814 = fadd fast float %2811, 5.000000e-01
  %2815 = fadd fast float %2812, 5.000000e-01
  %2816 = fadd fast float %2813, 5.000000e-01
  %2817 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2818 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2819 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2820 = fmul fast float %2814, 2.000000e+00
  %2821 = fsub fast float 1.000000e+00, %2820
  %2822 = fmul fast float %2821, %2817
  %2823 = fadd fast float %2822, %2820
  %2824 = fmul fast float %2823, %2817
  %2825 = fmul fast float %2815, 2.000000e+00
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2826, %2818
  %2828 = fadd fast float %2827, %2825
  %2829 = fmul fast float %2828, %2818
  %2830 = fmul fast float %2816, 2.000000e+00
  %2831 = fsub fast float 1.000000e+00, %2830
  %2832 = fmul fast float %2831, %2819
  %2833 = fadd fast float %2832, %2830
  %2834 = fmul fast float %2833, %2819
  %2835 = fmul fast float %2824, %2824
  %2836 = fmul fast float %2829, %2829
  %2837 = fmul fast float %2834, %2834
  br label %2854

; <label>:2838                                    ; preds = %2801
  %2839 = fmul fast float %376, %376
  %2840 = fmul fast float %380, %380
  %2841 = fmul fast float %384, %384
  %2842 = fadd fast float %2839, -1.000000e+00
  %2843 = fadd fast float %2840, -1.000000e+00
  %2844 = fadd fast float %2841, -1.000000e+00
  %2845 = fmul fast float %2690, %2842
  %2846 = fmul fast float %2690, %2843
  %2847 = fmul fast float %2690, %2844
  %2848 = fadd fast float %2845, 1.000000e+00
  %2849 = fadd fast float %2846, 1.000000e+00
  %2850 = fadd fast float %2847, 1.000000e+00
  %2851 = fmul fast float %2848, %2665
  %2852 = fmul fast float %2849, %2666
  %2853 = fmul fast float %2850, %2667
  br label %2854

; <label>:2854                                    ; preds = %2838, %2804, %2695, %2651
  %2855 = phi float [ %2800, %2695 ], [ %2676, %2804 ], [ %2676, %2838 ], [ 0x3FA23C0BE0000000, %2651 ]
  %2856 = phi float [ %2792, %2695 ], [ %2835, %2804 ], [ %2851, %2838 ], [ 1.000000e+00, %2651 ]
  %2857 = phi float [ %2793, %2695 ], [ %2836, %2804 ], [ %2852, %2838 ], [ 1.000000e+00, %2651 ]
  %2858 = phi float [ %2794, %2695 ], [ %2837, %2804 ], [ %2853, %2838 ], [ 1.000000e+00, %2651 ]
  %2859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.i32 %2859, 1
  %2861 = and i32 %2860, 1
  %2862 = icmp ne i32 %2861, 0
  %2863 = add i32 %62, 356
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 32
  %2867 = icmp ne i32 %2866, 0
  %2868 = and i1 %2862, %2867
  %2869 = select i1 %2868, float 1.000000e+00, float %2856
  %2870 = select i1 %2868, float 0x3FD3333340000000, float %2857
  %2871 = select i1 %2868, float 0x3FD3333340000000, float %2858
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 32
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2948, label %2876

; <label>:2876                                    ; preds = %2854
  %2877 = add i32 %62, 124
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %62, 448
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = add i32 %2882, 0
  %2884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2884, %dx.types.Handle %107, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = extractvalue %dx.types.ResRet.f32 %2885, 1
  %2888 = extractvalue %dx.types.ResRet.f32 %2885, 2
  %2889 = extractvalue %dx.types.ResRet.f32 %2885, 3
  %2890 = and i32 %2879, 255
  %2891 = uitofp i32 %2890 to float
  %2892 = lshr i32 %2879, 8
  %2893 = and i32 %2892, 255
  %2894 = uitofp i32 %2893 to float
  %2895 = lshr i32 %2879, 16
  %2896 = and i32 %2895, 255
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101000000000
  %2899 = fmul fast float %2886, %2891
  %2900 = fadd fast float %2899, %2894
  %2901 = fmul fast float %2900, 0x3F70101000000000
  %2902 = fadd fast float %2887, -5.000000e-01
  %2903 = fadd fast float %2889, -5.000000e-01
  %2904 = fmul fast float %2902, %2898
  %2905 = fmul fast float %2903, %2898
  %2906 = fadd fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2905, 5.000000e-01
  %2908 = fmul fast float %2906, 2.000000e+00
  %2909 = fadd fast float %2908, -1.000000e+00
  %2910 = fmul fast float %2907, 2.000000e+00
  %2911 = fadd fast float %2910, -1.000000e+00
  %2912 = fadd fast float %2909, %2911
  %2913 = fmul fast float %2912, 5.000000e-01
  %2914 = fsub fast float %2909, %2911
  %2915 = fmul fast float %2914, 5.000000e-01
  %2916 = call float @dx.op.unary.f32(i32 6, float %2913)  ; FAbs(value)
  %2917 = fsub fast float 1.000000e+00, %2916
  %2918 = call float @dx.op.unary.f32(i32 6, float %2915)  ; FAbs(value)
  %2919 = fsub fast float %2917, %2918
  %2920 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2915, float %2919, float %2913, float %2915, float %2919)  ; Dot3(ax,ay,az,bx,by,bz)
  %2921 = call float @dx.op.unary.f32(i32 25, float %2920)  ; Rsqrt(value)
  %2922 = fmul fast float %2913, %2921
  %2923 = fmul fast float %2915, %2921
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 67108864
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2944, label %2928

; <label>:2928                                    ; preds = %2876
  %2929 = add i32 %62, 312
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = lshr i32 %2931, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fsub fast float %2901, %2939
  %2941 = fmul fast float %2940, %2933
  %2942 = fadd fast float %2941, %2937
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  br label %2944

; <label>:2944                                    ; preds = %2928, %2876
  %2945 = phi float [ %2943, %2928 ], [ %2901, %2876 ]
  %2946 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2365, float %2366)  ; Dot2(ax,ay,bx,by)
  %2947 = call float @dx.op.dot2.f32(i32 54, float %2922, float %2923, float %2367, float %2368)  ; Dot2(ax,ay,bx,by)
  br label %2948

; <label>:2948                                    ; preds = %2944, %2854
  %2949 = phi float [ %2945, %2944 ], [ 0x3FD6666660000000, %2854 ]
  %2950 = phi float [ %2946, %2944 ], [ 0.000000e+00, %2854 ]
  %2951 = phi float [ %2947, %2944 ], [ 0.000000e+00, %2854 ]
  %2952 = phi float [ %2888, %2944 ], [ 1.000000e+00, %2854 ]
  %2953 = add i32 %62, 192
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 22
  %2957 = shl nuw nsw i32 %2956, 5
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 64
  %2962 = icmp eq i32 %2961, 0
  br i1 %2962, label %2996, label %2963

; <label>:2963                                    ; preds = %2948
  %2964 = add i32 %62, 464
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = add i32 %2966, 0
  %2968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 131072
  %2972 = icmp eq i32 %2971, 0
  %2973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2968, %dx.types.Handle %107, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = fmul fast float %2974, %364
  %2978 = fmul fast float %2975, %367
  %2979 = fmul fast float %2976, %370
  br i1 %2972, label %2986, label %2980

; <label>:2980                                    ; preds = %2963
  %2981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2982 = extractvalue %dx.types.CBufRet.f32 %2981, 0
  %2983 = fmul fast float %2982, %2977
  %2984 = fmul fast float %2982, %2978
  %2985 = fmul fast float %2982, %2979
  br label %2986

; <label>:2986                                    ; preds = %2980, %2963
  %2987 = phi float [ %2983, %2980 ], [ %2977, %2963 ]
  %2988 = phi float [ %2984, %2980 ], [ %2978, %2963 ]
  %2989 = phi float [ %2985, %2980 ], [ %2979, %2963 ]
  %2990 = fmul fast float %2987, %2958
  %2991 = select i1 %260, float %2990, float %2987
  %2992 = call float @dx.op.dot3.f32(i32 55, float %2991, float %2988, float %2989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2993 = select i1 %260, float 0.000000e+00, float %2987
  %2994 = select i1 %260, float %2992, float %2988
  %2995 = select i1 %260, float 0.000000e+00, float %2989
  br label %2996

; <label>:2996                                    ; preds = %2986, %2948
  %2997 = phi float [ %2993, %2986 ], [ 0.000000e+00, %2948 ]
  %2998 = phi float [ %2994, %2986 ], [ 0.000000e+00, %2948 ]
  %2999 = phi float [ %2995, %2986 ], [ 0.000000e+00, %2948 ]
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 1024
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3034, label %3004

; <label>:3004                                    ; preds = %2996
  %3005 = add i32 %62, 184
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = lshr i32 %3007, 8
  %3012 = and i32 %3011, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = lshr i32 %3007, 16
  %3016 = and i32 %3015, 255
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3017, 0x3F70101020000000
  %3019 = fmul fast float %3010, %3010
  %3020 = fmul fast float %3014, %3014
  %3021 = fmul fast float %3018, %3018
  %3022 = add i32 %62, 532
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = add i32 %3024, 0
  %3026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3026, %dx.types.Handle %108, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3028 = extractvalue %dx.types.ResRet.f32 %3027, 0
  %3029 = extractvalue %dx.types.ResRet.f32 %3027, 1
  %3030 = extractvalue %dx.types.ResRet.f32 %3027, 2
  %3031 = fmul fast float %3019, %3028
  %3032 = fmul fast float %3020, %3029
  %3033 = fmul fast float %3021, %3030
  br label %3034

; <label>:3034                                    ; preds = %3004, %2996
  %3035 = phi float [ %3031, %3004 ], [ 0.000000e+00, %2996 ]
  %3036 = phi float [ %3032, %3004 ], [ 0.000000e+00, %2996 ]
  %3037 = phi float [ %3033, %3004 ], [ 0.000000e+00, %2996 ]
  %3038 = fcmp fast ogt float %3035, 0.000000e+00
  %3039 = fcmp fast ogt float %3036, 0.000000e+00
  %3040 = fcmp fast ogt float %3037, 0.000000e+00
  %3041 = call float @dx.op.unary.f32(i32 23, float %3035)  ; Log(value)
  %3042 = call float @dx.op.unary.f32(i32 23, float %3036)  ; Log(value)
  %3043 = call float @dx.op.unary.f32(i32 23, float %3037)  ; Log(value)
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 7
  %3047 = and i32 %3046, 32752
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = fmul fast float %3041, 0xBFE62E4300000000
  %3050 = fmul fast float %3049, %3048
  %3051 = fmul fast float %3042, 0xBFE62E4300000000
  %3052 = fmul fast float %3051, %3048
  %3053 = fmul fast float %3043, 0xBFE62E4300000000
  %3054 = fmul fast float %3053, %3048
  %3055 = select i1 %3038, float %3050, float 1.270000e+02
  %3056 = select i1 %3039, float %3052, float 1.270000e+02
  %3057 = select i1 %3040, float %3054, float 1.270000e+02
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 10240
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3106, label %3062

; <label>:3062                                    ; preds = %3034
  %3063 = add i32 %62, 548
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3067, %dx.types.Handle %108, float %2461, float %2462, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 3
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 1048576
  %3074 = icmp ne i32 %3073, 0
  %3075 = and i32 %3072, 8192
  %3076 = icmp eq i32 %3075, 0
  br i1 %3076, label %3092, label %3077

; <label>:3077                                    ; preds = %3062
  %3078 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3079 = select i1 %3074, float %3078, float %3069
  %3080 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3081 = select i1 %3074, float %3080, float %3069
  %3082 = add i32 %62, 128
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F80101020000000
  %3089 = fmul fast float %3088, %3081
  %3090 = fmul fast float %3088, %3069
  %3091 = fmul fast float %3088, %3079
  br label %3092

; <label>:3092                                    ; preds = %3077, %3062
  %3093 = phi float [ %3089, %3077 ], [ 0.000000e+00, %3062 ]
  %3094 = phi float [ %3090, %3077 ], [ 0.000000e+00, %3062 ]
  %3095 = phi float [ %3091, %3077 ], [ 0.000000e+00, %3062 ]
  %3096 = and i32 %3072, 2048
  %3097 = icmp eq i32 %3096, 0
  br i1 %3097, label %3106, label %3098

; <label>:3098                                    ; preds = %3092
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = shl i32 %3100, 4
  %3102 = and i32 %3101, 32752
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = fmul fast float %3103, %3070
  %3105 = call float @dx.op.binary.f32(i32 35, float %3104, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3106

; <label>:3106                                    ; preds = %3098, %3092, %3034
  %3107 = phi float [ %3093, %3098 ], [ %3093, %3092 ], [ 0.000000e+00, %3034 ]
  %3108 = phi float [ %3094, %3098 ], [ %3094, %3092 ], [ 0.000000e+00, %3034 ]
  %3109 = phi float [ %3095, %3098 ], [ %3095, %3092 ], [ 0.000000e+00, %3034 ]
  %3110 = phi float [ %3105, %3098 ], [ 0x3F70101020000000, %3092 ], [ 0x3F70101020000000, %3034 ]
  %3111 = add i32 %62, 128
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 255
  %3115 = uitofp i32 %3114 to float
  %3116 = lshr i32 %3113, 8
  %3117 = and i32 %3116, 255
  %3118 = uitofp i32 %3117 to float
  %3119 = call float @dx.op.dot3.f32(i32 55, float %2869, float %2870, float %2871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3120 = fmul fast float %3118, %3119
  %3121 = fadd fast float %3120, %3115
  %3122 = fmul fast float %3121, 0x3F70101020000000
  %3123 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  br i1 %2353, label %3124, label %3159

; <label>:3124                                    ; preds = %3106
  %3125 = fmul fast float %3110, 2.000000e+00
  %3126 = fcmp fast olt float %3055, 1.270000e+02
  %3127 = fcmp fast olt float %3056, 1.270000e+02
  %3128 = fcmp fast olt float %3057, 1.270000e+02
  %3129 = fmul fast float %3055, 0xBFF7154760000000
  %3130 = fmul fast float %3129, %3125
  %3131 = fmul fast float %3056, 0xBFF7154760000000
  %3132 = fmul fast float %3131, %3125
  %3133 = fmul fast float %3057, 0xBFF7154760000000
  %3134 = fmul fast float %3133, %3125
  %3135 = call float @dx.op.unary.f32(i32 21, float %3130)  ; Exp(value)
  %3136 = call float @dx.op.unary.f32(i32 21, float %3132)  ; Exp(value)
  %3137 = call float @dx.op.unary.f32(i32 21, float %3134)  ; Exp(value)
  %3138 = call float @dx.op.unary.f32(i32 7, float %3135)  ; Saturate(value)
  %3139 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3141 = fadd fast float %3138, -1.000000e+00
  %3142 = select i1 %3126, float %3141, float -1.000000e+00
  %3143 = fadd fast float %3139, -1.000000e+00
  %3144 = select i1 %3127, float %3143, float -1.000000e+00
  %3145 = fadd fast float %3140, -1.000000e+00
  %3146 = select i1 %3128, float %3145, float -1.000000e+00
  %3147 = fmul fast float %3142, %2649
  %3148 = fmul fast float %3144, %2649
  %3149 = fmul fast float %3146, %2649
  %3150 = fadd fast float %3147, 1.000000e+00
  %3151 = fadd fast float %3148, 1.000000e+00
  %3152 = fadd fast float %3149, 1.000000e+00
  %3153 = fmul fast float %3150, %2335
  %3154 = fmul fast float %3151, %2336
  %3155 = fmul fast float %3152, %2337
  %3156 = fmul fast float %3150, %2338
  %3157 = fmul fast float %3151, %2339
  %3158 = fmul fast float %3152, %2340
  br label %3159

; <label>:3159                                    ; preds = %3124, %3106
  %3160 = phi float [ %3153, %3124 ], [ %2335, %3106 ]
  %3161 = phi float [ %3154, %3124 ], [ %2336, %3106 ]
  %3162 = phi float [ %3155, %3124 ], [ %2337, %3106 ]
  %3163 = phi float [ %3156, %3124 ], [ %2338, %3106 ]
  %3164 = phi float [ %3157, %3124 ], [ %2339, %3106 ]
  %3165 = phi float [ %3158, %3124 ], [ %2340, %3106 ]
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 3
  %3169 = icmp eq i32 %3168, 3
  br i1 %3169, label %3248, label %3170

; <label>:3170                                    ; preds = %3159
  %3171 = and i32 %3167, 16
  %3172 = icmp ne i32 %3171, 0
  %3173 = select i1 %3172, float %2649, float 0.000000e+00
  %3174 = icmp eq i32 %3168, 0
  br i1 %3174, label %3175, label %3203

; <label>:3175                                    ; preds = %3170
  %3176 = and i32 %3167, 64
  %3177 = icmp ne i32 %3176, 0
  %3178 = select i1 %3177, float %2649, float 0.000000e+00
  %3179 = fsub fast float %2869, %3160
  %3180 = fsub fast float %2870, %3161
  %3181 = fsub fast float %2871, %3162
  %3182 = fmul fast float %3173, %3179
  %3183 = fmul fast float %3173, %3180
  %3184 = fmul fast float %3173, %3181
  %3185 = fadd fast float %3182, %3160
  %3186 = fadd fast float %3183, %3161
  %3187 = fadd fast float %3184, %3162
  %3188 = fsub fast float %2855, %2347
  %3189 = fmul fast float %3173, %3188
  %3190 = fadd fast float %3189, %2347
  %3191 = fsub fast float %2997, %3163
  %3192 = fsub fast float %2998, %3164
  %3193 = fsub fast float %2999, %3165
  %3194 = fmul fast float %3178, %3191
  %3195 = fmul fast float %3178, %3192
  %3196 = fmul fast float %3178, %3193
  %3197 = fadd fast float %3194, %3163
  %3198 = fadd fast float %3195, %3164
  %3199 = fadd fast float %3196, %3165
  %3200 = fsub fast float %3123, %2351
  %3201 = fmul fast float %3173, %3200
  %3202 = fadd fast float %3201, %2351
  br label %3248

; <label>:3203                                    ; preds = %3170
  %3204 = icmp eq i32 %3168, 1
  br i1 %3204, label %3205, label %3218

; <label>:3205                                    ; preds = %3203
  %3206 = fadd fast float %2869, -1.000000e+00
  %3207 = fadd fast float %2870, -1.000000e+00
  %3208 = fadd fast float %2871, -1.000000e+00
  %3209 = fmul fast float %3173, %3206
  %3210 = fmul fast float %3173, %3207
  %3211 = fmul fast float %3173, %3208
  %3212 = fadd fast float %3209, 1.000000e+00
  %3213 = fadd fast float %3210, 1.000000e+00
  %3214 = fadd fast float %3211, 1.000000e+00
  %3215 = fmul fast float %3212, %3160
  %3216 = fmul fast float %3213, %3161
  %3217 = fmul fast float %3214, %3162
  br label %3248

; <label>:3218                                    ; preds = %3203
  %3219 = icmp eq i32 %3168, 2
  br i1 %3219, label %3220, label %3248

; <label>:3220                                    ; preds = %3218
  %3221 = call float @dx.op.unary.f32(i32 24, float %2869)  ; Sqrt(value)
  %3222 = call float @dx.op.unary.f32(i32 24, float %2870)  ; Sqrt(value)
  %3223 = call float @dx.op.unary.f32(i32 24, float %2871)  ; Sqrt(value)
  %3224 = fadd fast float %3221, -5.000000e-01
  %3225 = fadd fast float %3222, -5.000000e-01
  %3226 = fadd fast float %3223, -5.000000e-01
  %3227 = fmul fast float %3224, %3173
  %3228 = fmul fast float %3225, %3173
  %3229 = fmul fast float %3226, %3173
  %3230 = fadd fast float %3227, 5.000000e-01
  %3231 = fadd fast float %3228, 5.000000e-01
  %3232 = fadd fast float %3229, 5.000000e-01
  %3233 = fmul fast float %3230, 2.000000e+00
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3160
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3160
  %3238 = fmul fast float %3231, 2.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3238
  %3240 = fmul fast float %3239, %3161
  %3241 = fadd fast float %3240, %3238
  %3242 = fmul fast float %3241, %3161
  %3243 = fmul fast float %3232, 2.000000e+00
  %3244 = fsub fast float 1.000000e+00, %3243
  %3245 = fmul fast float %3244, %3162
  %3246 = fadd fast float %3245, %3243
  %3247 = fmul fast float %3246, %3162
  br label %3248

; <label>:3248                                    ; preds = %3220, %3218, %3205, %3175, %3159
  %3249 = phi float [ %3160, %3159 ], [ %3237, %3220 ], [ %3160, %3218 ], [ %3215, %3205 ], [ %3185, %3175 ]
  %3250 = phi float [ %3161, %3159 ], [ %3242, %3220 ], [ %3161, %3218 ], [ %3216, %3205 ], [ %3186, %3175 ]
  %3251 = phi float [ %3162, %3159 ], [ %3247, %3220 ], [ %3162, %3218 ], [ %3217, %3205 ], [ %3187, %3175 ]
  %3252 = phi float [ %3163, %3159 ], [ %3163, %3220 ], [ %3163, %3218 ], [ %3163, %3205 ], [ %3197, %3175 ]
  %3253 = phi float [ %3164, %3159 ], [ %3164, %3220 ], [ %3164, %3218 ], [ %3164, %3205 ], [ %3198, %3175 ]
  %3254 = phi float [ %3165, %3159 ], [ %3165, %3220 ], [ %3165, %3218 ], [ %3165, %3205 ], [ %3199, %3175 ]
  %3255 = phi float [ %2347, %3159 ], [ %2347, %3220 ], [ %2347, %3218 ], [ %2347, %3205 ], [ %3190, %3175 ]
  %3256 = phi float [ %2351, %3159 ], [ %2351, %3220 ], [ %2351, %3218 ], [ %2351, %3205 ], [ %3202, %3175 ]
  %3257 = and i32 %3167, 12
  %3258 = icmp eq i32 %3257, 12
  br i1 %3258, label %3389, label %3259

; <label>:3259                                    ; preds = %3248
  %3260 = and i32 %3167, 2097184
  %3261 = icmp eq i32 %3260, 2097184
  %3262 = select i1 %3261, float %2649, float 0.000000e+00
  %3263 = and i32 %3167, 4194336
  %3264 = icmp eq i32 %3263, 4194336
  %3265 = select i1 %3264, float %2649, float 0.000000e+00
  %3266 = and i32 %3167, 8388640
  %3267 = icmp eq i32 %3266, 8388640
  %3268 = select i1 %3267, float %2649, float 0.000000e+00
  %3269 = and i32 %3167, 1024
  %3270 = icmp ne i32 %3269, 0
  %3271 = select i1 %3270, float %2649, float 0.000000e+00
  %3272 = and i32 %3167, 2048
  %3273 = icmp ne i32 %3272, 0
  %3274 = select i1 %3273, float %2649, float 0.000000e+00
  %3275 = and i32 %3167, 8192
  %3276 = icmp ne i32 %3275, 0
  %3277 = select i1 %3276, float %2649, float 0.000000e+00
  %3278 = icmp eq i32 %3257, 0
  br i1 %3278, label %3279, label %3313

; <label>:3279                                    ; preds = %3259
  %3280 = fsub fast float %2950, %2333
  %3281 = fsub fast float %2951, %2334
  %3282 = fmul fast float %3262, %3280
  %3283 = fmul fast float %3262, %3281
  %3284 = fadd fast float %3282, %2333
  %3285 = fadd fast float %3283, %2334
  %3286 = fsub fast float %2952, %2349
  %3287 = fmul fast float %3265, %3286
  %3288 = fadd fast float %3287, %2349
  %3289 = fsub fast float %2949, %2348
  %3290 = fmul fast float %3268, %3289
  %3291 = fadd fast float %3290, %2348
  %3292 = fsub fast float %3055, %2344
  %3293 = fsub fast float %3056, %2345
  %3294 = fsub fast float %3057, %2346
  %3295 = fmul fast float %3271, %3292
  %3296 = fmul fast float %3271, %3293
  %3297 = fmul fast float %3271, %3294
  %3298 = fadd fast float %3295, %2344
  %3299 = fadd fast float %3296, %2345
  %3300 = fadd fast float %3297, %2346
  %3301 = fsub fast float %3110, %2350
  %3302 = fmul fast float %3274, %3301
  %3303 = fadd fast float %3302, %2350
  %3304 = fsub fast float %3107, %2341
  %3305 = fsub fast float %3108, %2342
  %3306 = fsub fast float %3109, %2343
  %3307 = fmul fast float %3277, %3304
  %3308 = fmul fast float %3277, %3305
  %3309 = fmul fast float %3277, %3306
  %3310 = fadd fast float %3307, %2341
  %3311 = fadd fast float %3308, %2342
  %3312 = fadd fast float %3309, %2343
  br label %3389

; <label>:3313                                    ; preds = %3259
  %3314 = icmp eq i32 %3257, 4
  br i1 %3314, label %3315, label %3361

; <label>:3315                                    ; preds = %3313
  %3316 = fmul fast float %3262, %2950
  %3317 = fmul fast float %3262, %2951
  %3318 = fadd fast float %3316, %2333
  %3319 = fadd fast float %3317, %2334
  %3320 = call float @dx.op.binary.f32(i32 36, float %2349, float %2952)  ; FMin(a,b)
  %3321 = fsub fast float %3320, %2349
  %3322 = fmul fast float %3321, %3265
  %3323 = fadd fast float %3322, %2349
  %3324 = fadd fast float %2949, %2348
  %3325 = fmul fast float %3324, 0x3FF337FAE0000000
  %3326 = fmul fast float %2348, %2348
  %3327 = fmul fast float %2949, %2949
  %3328 = fadd fast float %3327, %3326
  %3329 = fmul fast float %3328, 0x3FE5152B00000000
  %3330 = fmul fast float %2348, 0xBFCC1F85E0000000
  %3331 = fmul fast float %3330, %2949
  %3332 = fadd fast float %3331, 0xBFE1363700000000
  %3333 = fadd fast float %3332, %3325
  %3334 = fsub fast float %3333, %3329
  %3335 = fmul fast float %3324, 0x3FBA6F0D00000000
  %3336 = fmul fast float %3328, 0x3FD0432880000000
  %3337 = fmul fast float %2348, 0xBFEF110800000000
  %3338 = fmul fast float %3337, %2949
  %3339 = fadd fast float %3338, 1.000000e+00
  %3340 = fsub fast float %3339, %3335
  %3341 = fadd fast float %3340, %3336
  %3342 = fdiv fast float %3334, %3341
  %3343 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3344 = fsub fast float %3343, %2348
  %3345 = fmul fast float %3344, %3268
  %3346 = fadd fast float %3345, %2348
  %3347 = fmul fast float %3271, %3055
  %3348 = fmul fast float %3271, %3056
  %3349 = fmul fast float %3271, %3057
  %3350 = fadd fast float %3347, %2344
  %3351 = fadd fast float %3348, %2345
  %3352 = fadd fast float %3349, %2346
  %3353 = fmul fast float %3274, %3110
  %3354 = fadd fast float %3353, %2350
  %3355 = fmul fast float %3277, %3107
  %3356 = fmul fast float %3277, %3108
  %3357 = fmul fast float %3277, %3109
  %3358 = fadd fast float %3355, %2341
  %3359 = fadd fast float %3356, %2342
  %3360 = fadd fast float %3357, %2343
  br label %3389

; <label>:3361                                    ; preds = %3313
  %3362 = icmp eq i32 %3257, 8
  br i1 %3362, label %3363, label %3389

; <label>:3363                                    ; preds = %3361
  %3364 = fmul fast float %3262, %2950
  %3365 = fmul fast float %3262, %2951
  %3366 = fadd fast float %3364, %2333
  %3367 = fadd fast float %3365, %2334
  %3368 = call float @dx.op.binary.f32(i32 36, float %2349, float %2952)  ; FMin(a,b)
  %3369 = fsub fast float %3368, %2349
  %3370 = fmul fast float %3369, %3265
  %3371 = fadd fast float %3370, %2349
  %3372 = fsub fast float %2949, %2348
  %3373 = fmul fast float %3268, %3372
  %3374 = fadd fast float %3373, %2348
  %3375 = fmul fast float %3271, %3055
  %3376 = fmul fast float %3271, %3056
  %3377 = fmul fast float %3271, %3057
  %3378 = fadd fast float %3375, %2344
  %3379 = fadd fast float %3376, %2345
  %3380 = fadd fast float %3377, %2346
  %3381 = fmul fast float %3274, %3110
  %3382 = fadd fast float %3381, %2350
  %3383 = fmul fast float %3277, %3107
  %3384 = fmul fast float %3277, %3108
  %3385 = fmul fast float %3277, %3109
  %3386 = fadd fast float %3383, %2341
  %3387 = fadd fast float %3384, %2342
  %3388 = fadd fast float %3385, %2343
  br label %3389

; <label>:3389                                    ; preds = %3363, %3361, %3315, %3279, %3248, %2648, %2352, %2332
  %3390 = phi float [ %2333, %3248 ], [ %2333, %2648 ], [ %2333, %2332 ], [ %3366, %3363 ], [ %2333, %3361 ], [ %3318, %3315 ], [ %3284, %3279 ], [ %2333, %2352 ]
  %3391 = phi float [ %2334, %3248 ], [ %2334, %2648 ], [ %2334, %2332 ], [ %3367, %3363 ], [ %2334, %3361 ], [ %3319, %3315 ], [ %3285, %3279 ], [ %2334, %2352 ]
  %3392 = phi float [ %3249, %3248 ], [ %2335, %2648 ], [ %2335, %2332 ], [ %3249, %3363 ], [ %3249, %3361 ], [ %3249, %3315 ], [ %3249, %3279 ], [ %2335, %2352 ]
  %3393 = phi float [ %3250, %3248 ], [ %2336, %2648 ], [ %2336, %2332 ], [ %3250, %3363 ], [ %3250, %3361 ], [ %3250, %3315 ], [ %3250, %3279 ], [ %2336, %2352 ]
  %3394 = phi float [ %3251, %3248 ], [ %2337, %2648 ], [ %2337, %2332 ], [ %3251, %3363 ], [ %3251, %3361 ], [ %3251, %3315 ], [ %3251, %3279 ], [ %2337, %2352 ]
  %3395 = phi float [ %3252, %3248 ], [ %2338, %2648 ], [ %2338, %2332 ], [ %3252, %3363 ], [ %3252, %3361 ], [ %3252, %3315 ], [ %3252, %3279 ], [ %2338, %2352 ]
  %3396 = phi float [ %3253, %3248 ], [ %2339, %2648 ], [ %2339, %2332 ], [ %3253, %3363 ], [ %3253, %3361 ], [ %3253, %3315 ], [ %3253, %3279 ], [ %2339, %2352 ]
  %3397 = phi float [ %3254, %3248 ], [ %2340, %2648 ], [ %2340, %2332 ], [ %3254, %3363 ], [ %3254, %3361 ], [ %3254, %3315 ], [ %3254, %3279 ], [ %2340, %2352 ]
  %3398 = phi float [ %2341, %3248 ], [ %2341, %2648 ], [ %2341, %2332 ], [ %3386, %3363 ], [ %2341, %3361 ], [ %3358, %3315 ], [ %3310, %3279 ], [ %2341, %2352 ]
  %3399 = phi float [ %2342, %3248 ], [ %2342, %2648 ], [ %2342, %2332 ], [ %3387, %3363 ], [ %2342, %3361 ], [ %3359, %3315 ], [ %3311, %3279 ], [ %2342, %2352 ]
  %3400 = phi float [ %2343, %3248 ], [ %2343, %2648 ], [ %2343, %2332 ], [ %3388, %3363 ], [ %2343, %3361 ], [ %3360, %3315 ], [ %3312, %3279 ], [ %2343, %2352 ]
  %3401 = phi float [ %2344, %3248 ], [ %2344, %2648 ], [ %2344, %2332 ], [ %3378, %3363 ], [ %2344, %3361 ], [ %3350, %3315 ], [ %3298, %3279 ], [ %2344, %2352 ]
  %3402 = phi float [ %2345, %3248 ], [ %2345, %2648 ], [ %2345, %2332 ], [ %3379, %3363 ], [ %2345, %3361 ], [ %3351, %3315 ], [ %3299, %3279 ], [ %2345, %2352 ]
  %3403 = phi float [ %2346, %3248 ], [ %2346, %2648 ], [ %2346, %2332 ], [ %3380, %3363 ], [ %2346, %3361 ], [ %3352, %3315 ], [ %3300, %3279 ], [ %2346, %2352 ]
  %3404 = phi float [ %3255, %3248 ], [ %2347, %2648 ], [ %2347, %2332 ], [ %3255, %3363 ], [ %3255, %3361 ], [ %3255, %3315 ], [ %3255, %3279 ], [ %2347, %2352 ]
  %3405 = phi float [ %2348, %3248 ], [ %2348, %2648 ], [ %2348, %2332 ], [ %3374, %3363 ], [ %2348, %3361 ], [ %3346, %3315 ], [ %3291, %3279 ], [ %2348, %2352 ]
  %3406 = phi float [ %2349, %3248 ], [ %2349, %2648 ], [ %2349, %2332 ], [ %3371, %3363 ], [ %2349, %3361 ], [ %3323, %3315 ], [ %3288, %3279 ], [ %2349, %2352 ]
  %3407 = phi float [ %2350, %3248 ], [ %2350, %2648 ], [ %2350, %2332 ], [ %3382, %3363 ], [ %2350, %3361 ], [ %3354, %3315 ], [ %3303, %3279 ], [ %2350, %2352 ]
  %3408 = phi float [ %3256, %3248 ], [ %2351, %2648 ], [ %2351, %2332 ], [ %3256, %3363 ], [ %3256, %3361 ], [ %3256, %3315 ], [ %3256, %3279 ], [ %2351, %2352 ]
  br i1 %451, label %4446, label %3409

; <label>:3409                                    ; preds = %3389
  %3410 = icmp ult i32 %505, 4
  %3411 = add i32 %62, 72
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %62, 76
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = or i32 %3416, %3413
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %4446, label %3419

; <label>:3419                                    ; preds = %3409
  %3420 = and i32 %3413, 262144
  %3421 = icmp ne i32 %3420, 0
  %3422 = select i1 %3421, float %65, float 1.000000e+00
  %3423 = select i1 %3421, float %66, float 0.000000e+00
  %3424 = select i1 %3421, float %67, float 0.000000e+00
  %3425 = select i1 %3421, float %68, float 1.000000e+00
  %3426 = select i1 %3421, float %69, float %90
  %3427 = select i1 %3421, float %70, float %91
  %3428 = add i32 %62, 332
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = lshr i32 %3430, 16
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = fmul fast float %3432, 0x3F50624DE0000000
  %3434 = add i32 %62, 136
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = lshr i32 %3436, 16
  %3438 = and i32 %3437, 255
  %3439 = lshr i32 %3436, 24
  %3440 = add i32 %62, 340
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3440, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = and i32 %3442, 65535
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = lshr i32 %3442, 16
  %3446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3445)  ; LegacyF16ToF32(value)
  %3447 = add i32 %62, 80
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 22
  %3451 = shl nuw nsw i32 %3450, 5
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = shl i32 %3449, 4
  %3454 = and i32 %3453, 32752
  %3455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3454)  ; LegacyF16ToF32(value)
  %3456 = lshr i32 %3449, 7
  %3457 = and i32 %3456, 32752
  %3458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3457)  ; LegacyF16ToF32(value)
  %3459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3460 = extractvalue %dx.types.CBufRet.f32 %3459, 3
  %3461 = fmul fast float %3460, 1.000000e+03
  %3462 = fmul fast float %441, %3461
  %3463 = call float @dx.op.unary.f32(i32 22, float %3462)  ; Frc(value)
  %3464 = fadd fast float %3463, %431
  %3465 = fmul fast float %442, %3461
  %3466 = call float @dx.op.unary.f32(i32 22, float %3465)  ; Frc(value)
  %3467 = fadd fast float %3466, %433
  %3468 = fmul fast float %3433, %3461
  %3469 = call float @dx.op.unary.f32(i32 22, float %3468)  ; Frc(value)
  %3470 = fmul fast float %3469, 0x401921FB60000000
  %3471 = fadd fast float %3470, %3452
  %3472 = call float @dx.op.unary.f32(i32 13, float %3471)  ; Sin(value)
  %3473 = call float @dx.op.unary.f32(i32 12, float %3471)  ; Cos(value)
  %3474 = fsub fast float -0.000000e+00, %3472
  %3475 = fadd fast float %3426, -5.000000e-01
  %3476 = fadd fast float %3427, -5.000000e-01
  %3477 = fmul fast float %3444, %3475
  %3478 = fmul fast float %3446, %3476
  %3479 = fadd fast float %3477, 5.000000e-01
  %3480 = fadd fast float %3478, 5.000000e-01
  %3481 = fmul fast float %3455, %3479
  %3482 = fmul fast float %3458, %3480
  %3483 = fmul fast float %3473, %3481
  %3484 = call float @dx.op.tertiary.f32(i32 46, float %3474, float %3482, float %3483)  ; FMad(a,b,c)
  %3485 = fmul fast float %3472, %3481
  %3486 = call float @dx.op.tertiary.f32(i32 46, float %3473, float %3482, float %3485)  ; FMad(a,b,c)
  %3487 = fadd fast float %3464, %3484
  %3488 = fadd fast float %3467, %3486
  %3489 = icmp ugt i32 %3438, 1
  %3490 = icmp ugt i32 %3436, 33554431
  %3491 = or i1 %3490, %3489
  br i1 %3491, label %3492, label %3517

; <label>:3492                                    ; preds = %3419
  %3493 = add i32 %62, 276
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = lshr i32 %3495, 16
  %3497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3496)  ; LegacyF16ToF32(value)
  %3498 = fmul fast float %3460, %3497
  %3499 = call float @dx.op.unary.f32(i32 22, float %3498)  ; Frc(value)
  %3500 = mul nuw nsw i32 %3438, %3439
  %3501 = uitofp i32 %3500 to float
  %3502 = fmul fast float %3499, %3501
  %3503 = call float @dx.op.unary.f32(i32 27, float %3502)  ; Round_ni(value)
  %3504 = fptoui float %3503 to i32
  %3505 = urem i32 %3504, %3438
  %3506 = udiv i32 %3504, %3439
  %3507 = call float @dx.op.unary.f32(i32 22, float %3487)  ; Frc(value)
  %3508 = call float @dx.op.unary.f32(i32 22, float %3488)  ; Frc(value)
  %3509 = uitofp i32 %3505 to float
  %3510 = uitofp i32 %3506 to float
  %3511 = fadd fast float %3507, %3509
  %3512 = fadd fast float %3508, %3510
  %3513 = uitofp i32 %3438 to float
  %3514 = uitofp i32 %3439 to float
  %3515 = fdiv fast float %3511, %3513
  %3516 = fdiv fast float %3512, %3514
  br label %3517

; <label>:3517                                    ; preds = %3492, %3419
  %3518 = phi float [ %3515, %3492 ], [ %3487, %3419 ]
  %3519 = phi float [ %3516, %3492 ], [ %3488, %3419 ]
  %3520 = and i32 %3413, 16777216
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3631, label %3522

; <label>:3522                                    ; preds = %3517
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3527 = fadd fast float %3524, %166
  %3528 = fadd fast float %3525, %167
  %3529 = fadd fast float %3526, %168
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  %3533 = icmp eq i32 %63, 65535
  br i1 %3533, label %3628, label %3534

; <label>:3534                                    ; preds = %3522
  %3535 = lshr i32 %63, 1
  %3536 = shl i32 %3535, 2
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %63, 1
  %3540 = icmp ne i32 %3539, 0
  %3541 = lshr i32 %3538, 16
  %3542 = and i32 %3538, 65535
  %3543 = select i1 %3540, i32 %3541, i32 %3542
  %3544 = icmp eq i32 %3543, 65535
  br i1 %3544, label %3624, label %3545

; <label>:3545                                    ; preds = %3534
  %3546 = mul nuw nsw i32 %3543, 40
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = add nuw nsw i32 %3546, 12
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = add nuw nsw i32 %3546, 24
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.ResRet.f32 %3557, 1
  %3560 = extractvalue %dx.types.ResRet.f32 %3557, 2
  %3561 = add nuw nsw i32 %3546, 36
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = fsub fast float %3527, %3548
  %3565 = fsub fast float %3528, %3549
  %3566 = fsub fast float %3529, %3550
  %3567 = fmul fast float %3563, %3564
  %3568 = fmul fast float %3563, %3565
  %3569 = fmul fast float %3563, %3566
  %3570 = call float @dx.op.unary.f32(i32 27, float %3567)  ; Round_ni(value)
  %3571 = call float @dx.op.unary.f32(i32 27, float %3568)  ; Round_ni(value)
  %3572 = call float @dx.op.unary.f32(i32 27, float %3569)  ; Round_ni(value)
  %3573 = fadd fast float %3570, 5.000000e-01
  %3574 = fadd fast float %3571, 5.000000e-01
  %3575 = fadd fast float %3572, 5.000000e-01
  %3576 = fmul fast float %3573, %3553
  %3577 = fmul fast float %3574, %3554
  %3578 = fmul fast float %3575, %3555
  %3579 = shl i32 %63, 2
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = add i32 %3581, 0
  %3583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3584 = call float @dx.op.unary.f32(i32 22, float %3576)  ; Frc(value)
  %3585 = call float @dx.op.unary.f32(i32 22, float %3577)  ; Frc(value)
  %3586 = call float @dx.op.unary.f32(i32 22, float %3578)  ; Frc(value)
  %3587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3583, %dx.types.Handle %57, float %3584, float %3585, float %3586, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = fmul fast float %3588, 1.023000e+03
  %3592 = fmul fast float %3589, 1.023000e+03
  %3593 = fmul fast float %3590, 1.023000e+03
  %3594 = fadd fast float %3591, 5.000000e-01
  %3595 = fadd fast float %3592, 5.000000e-01
  %3596 = fadd fast float %3593, 5.000000e-01
  %3597 = call float @dx.op.unary.f32(i32 27, float %3594)  ; Round_ni(value)
  %3598 = call float @dx.op.unary.f32(i32 27, float %3595)  ; Round_ni(value)
  %3599 = call float @dx.op.unary.f32(i32 27, float %3596)  ; Round_ni(value)
  %3600 = fsub fast float %3567, %3570
  %3601 = fsub fast float %3568, %3571
  %3602 = fsub fast float %3569, %3572
  %3603 = fmul fast float %3600, 7.500000e-01
  %3604 = fmul fast float %3601, 7.500000e-01
  %3605 = fmul fast float %3602, 7.500000e-01
  %3606 = fadd fast float %3570, 1.250000e-01
  %3607 = fadd fast float %3606, %3603
  %3608 = fadd fast float %3607, %3597
  %3609 = fadd fast float %3571, 1.250000e-01
  %3610 = fadd fast float %3609, %3604
  %3611 = fadd fast float %3610, %3598
  %3612 = fadd fast float %3572, 1.250000e-01
  %3613 = fadd fast float %3612, %3605
  %3614 = fadd fast float %3613, %3599
  %3615 = fmul fast float %3608, %3558
  %3616 = fmul fast float %3611, %3559
  %3617 = fmul fast float %3614, %3560
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = add i32 %3619, 0
  %3621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3621, %dx.types.Handle %55, float %3615, float %3616, float %3617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  br label %3624

; <label>:3624                                    ; preds = %3545, %3534
  %3625 = phi float [ %3623, %3545 ], [ -1.000000e+00, %3534 ]
  %3626 = fadd fast float %3625, %3532
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  br label %3628

; <label>:3628                                    ; preds = %3624, %3522
  %3629 = phi float [ %3627, %3624 ], [ %3532, %3522 ]
  %3630 = fmul fast float %3629, %500
  br label %3631

; <label>:3631                                    ; preds = %3628, %3517
  %3632 = phi float [ %3630, %3628 ], [ %500, %3517 ]
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = and i32 %3634, 256
  %3636 = icmp eq i32 %3635, 0
  br i1 %3636, label %3683, label %3637

; <label>:3637                                    ; preds = %3631
  %3638 = add i32 %62, 500
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = add i32 %3640, 0
  %3642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3643 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3642, %dx.types.Handle %108, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = add i32 %62, 148
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = shl i32 %3647, 4
  %3649 = and i32 %3648, 32752
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = lshr i32 %3647, 7
  %3652 = and i32 %3651, 32752
  %3653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3652)  ; LegacyF16ToF32(value)
  %3654 = fsub fast float 1.000000e+00, %3632
  %3655 = call float @dx.op.binary.f32(i32 35, float %3654, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3656 = bitcast float %3632 to i32
  %3657 = sitofp i32 %3656 to float
  %3658 = fadd fast float %3657, 0xC1CFBF8940000000
  %3659 = fmul fast float %3653, %3658
  %3660 = fadd fast float %3659, 0x41CFBF8940000000
  %3661 = fptosi float %3660 to i32
  %3662 = bitcast i32 %3661 to float
  %3663 = bitcast float %3655 to i32
  %3664 = sitofp i32 %3663 to float
  %3665 = fadd fast float %3664, 0xC1CFBF8940000000
  %3666 = fmul fast float %3665, %3653
  %3667 = fadd fast float %3666, 0x41CFBF8940000000
  %3668 = fptosi float %3667 to i32
  %3669 = bitcast i32 %3668 to float
  %3670 = fmul fast float %3662, %3650
  %3671 = fmul fast float %3669, %3650
  %3672 = fsub fast float %3655, %3670
  %3673 = fadd fast float %3671, %3655
  %3674 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3676 = fsub fast float %3644, %3674
  %3677 = fsub fast float %3675, %3674
  %3678 = bitcast float %3677 to i32
  %3679 = sub nsw i32 2129859010, %3678
  %3680 = bitcast i32 %3679 to float
  %3681 = fmul fast float %3680, %3676
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  br label %3683

; <label>:3683                                    ; preds = %3637, %3631
  %3684 = phi float [ %3682, %3637 ], [ %3632, %3631 ]
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, 128
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3705, label %3689

; <label>:3689                                    ; preds = %3683
  %3690 = add i32 %62, 484
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = add i32 %3692, 0
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3694, %dx.types.Handle %108, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 524288
  %3700 = icmp ne i32 %3699, 0
  %3701 = fcmp fast ogt float %3696, 0x3FE0101020000000
  %3702 = select i1 %3701, float 1.000000e+00, float 0.000000e+00
  %3703 = select i1 %3700, float %3702, float %3696
  %3704 = fmul fast float %3703, %3684
  br label %3705

; <label>:3705                                    ; preds = %3689, %3683
  %3706 = phi float [ %3704, %3689 ], [ %3684, %3683 ]
  %3707 = fcmp fast ult float %3706, 0x3F70101020000000
  br i1 %3707, label %4446, label %3708

; <label>:3708                                    ; preds = %3705
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 16
  %3712 = icmp eq i32 %3711, 0
  br i1 %3712, label %3911, label %3713

; <label>:3713                                    ; preds = %3708
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = add i32 %62, 436
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3716, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = add i32 %3718, 0
  %3720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3720, %dx.types.Handle %107, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = extractvalue %dx.types.ResRet.f32 %3721, 3
  %3726 = and i32 %3715, 255
  %3727 = uitofp i32 %3726 to float
  %3728 = lshr i32 %3715, 8
  %3729 = and i32 %3728, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3725, %3727
  %3732 = fadd fast float %3731, %3730
  %3733 = fmul fast float %3732, 0x3F70101000000000
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 512
  %3737 = icmp eq i32 %3736, 0
  br i1 %3737, label %3746, label %3738

; <label>:3738                                    ; preds = %3713
  %3739 = add i32 %62, 520
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = add i32 %3741, 0
  %3743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3743, %dx.types.Handle %108, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  br label %3746

; <label>:3746                                    ; preds = %3738, %3713
  %3747 = phi float [ %3745, %3738 ], [ 1.000000e+00, %3713 ]
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 33554432
  %3751 = icmp eq i32 %3750, 0
  br i1 %3751, label %3858, label %3752

; <label>:3752                                    ; preds = %3746
  %3753 = add i32 %62, 272
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 65535
  %3757 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3756)  ; LegacyF16ToF32(value)
  %3758 = lshr i32 %3755, 16
  %3759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3758)  ; LegacyF16ToF32(value)
  %3760 = add i32 %62, 276
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = and i32 %3762, 65535
  %3764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3763)  ; LegacyF16ToF32(value)
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = lshr i32 %3766, 24
  %3768 = uitofp i32 %3767 to float
  %3769 = fmul fast float %3768, 0x3F70101020000000
  %3770 = and i32 %3766, 255
  %3771 = uitofp i32 %3770 to float
  %3772 = fmul fast float %3771, 0x3F70101020000000
  %3773 = lshr i32 %3766, 8
  %3774 = and i32 %3773, 255
  %3775 = uitofp i32 %3774 to float
  %3776 = fmul fast float %3775, 0x3F70101020000000
  %3777 = lshr i32 %3766, 16
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = fmul fast float %3779, 0x3F70101020000000
  %3781 = add i32 %62, 268
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = lshr i32 %3783, 24
  %3785 = uitofp i32 %3784 to float
  %3786 = fmul fast float %3785, 0x3F70101020000000
  %3787 = and i32 %3783, 255
  %3788 = uitofp i32 %3787 to float
  %3789 = fmul fast float %3788, 0x3F70101020000000
  %3790 = lshr i32 %3783, 8
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3792, 0x3F70101020000000
  %3794 = lshr i32 %3783, 16
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = fmul fast float %3796, 0x3F70101020000000
  %3798 = bitcast float %3722 to i32
  %3799 = ashr i32 %3798, 1
  %3800 = sub nsw i32 1597463174, %3799
  %3801 = bitcast i32 %3800 to float
  %3802 = fmul fast float %3722, 5.000000e-01
  %3803 = fmul fast float %3801, %3801
  %3804 = fmul fast float %3803, %3802
  %3805 = fsub fast float 1.500000e+00, %3804
  %3806 = fmul fast float %3801, %3722
  %3807 = fmul fast float %3806, %3805
  %3808 = bitcast float %3723 to i32
  %3809 = ashr i32 %3808, 1
  %3810 = sub nsw i32 1597463174, %3809
  %3811 = bitcast i32 %3810 to float
  %3812 = fmul fast float %3723, 5.000000e-01
  %3813 = fmul fast float %3811, %3811
  %3814 = fmul fast float %3813, %3812
  %3815 = fsub fast float 1.500000e+00, %3814
  %3816 = fmul fast float %3811, %3723
  %3817 = fmul fast float %3816, %3815
  %3818 = bitcast float %3724 to i32
  %3819 = ashr i32 %3818, 1
  %3820 = sub nsw i32 1597463174, %3819
  %3821 = bitcast i32 %3820 to float
  %3822 = fmul fast float %3724, 5.000000e-01
  %3823 = fmul fast float %3821, %3821
  %3824 = fmul fast float %3823, %3822
  %3825 = fsub fast float 1.500000e+00, %3824
  %3826 = fmul fast float %3821, %3724
  %3827 = fmul fast float %3826, %3825
  %3828 = fsub fast float %3807, %3789
  %3829 = fsub fast float %3817, %3793
  %3830 = fsub fast float %3827, %3797
  %3831 = fmul fast float %3828, %3757
  %3832 = fmul fast float %3829, %3759
  %3833 = fmul fast float %3830, %3764
  %3834 = fadd fast float %3831, %3772
  %3835 = fadd fast float %3832, %3776
  %3836 = fadd fast float %3833, %3780
  %3837 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3838 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3839 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3840 = fmul fast float %3837, %3837
  %3841 = fmul fast float %3838, %3838
  %3842 = fmul fast float %3839, %3839
  %3843 = fsub fast float %3840, %3722
  %3844 = fsub fast float %3841, %3723
  %3845 = fsub fast float %3842, %3724
  %3846 = fmul fast float %3843, %3747
  %3847 = fmul fast float %3844, %3747
  %3848 = fmul fast float %3845, %3747
  %3849 = fadd fast float %3846, %3722
  %3850 = fadd fast float %3847, %3723
  %3851 = fadd fast float %3848, %3724
  %3852 = fadd fast float %3769, %3733
  %3853 = fsub fast float %3852, %3786
  %3854 = call float @dx.op.unary.f32(i32 7, float %3853)  ; Saturate(value)
  %3855 = fsub fast float %3854, %3733
  %3856 = fmul fast float %3855, %3747
  %3857 = fadd fast float %3856, %3733
  br label %3911

; <label>:3858                                    ; preds = %3746
  %3859 = and i32 %3749, 134217728
  %3860 = icmp eq i32 %3859, 0
  br i1 %3860, label %3895, label %3861

; <label>:3861                                    ; preds = %3858
  %3862 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %3863 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %3864 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %3865 = fadd fast float %3862, -5.000000e-01
  %3866 = fadd fast float %3863, -5.000000e-01
  %3867 = fadd fast float %3864, -5.000000e-01
  %3868 = fmul fast float %3865, %3747
  %3869 = fmul fast float %3866, %3747
  %3870 = fmul fast float %3867, %3747
  %3871 = fadd fast float %3868, 5.000000e-01
  %3872 = fadd fast float %3869, 5.000000e-01
  %3873 = fadd fast float %3870, 5.000000e-01
  %3874 = call float @dx.op.unary.f32(i32 24, float %3722)  ; Sqrt(value)
  %3875 = call float @dx.op.unary.f32(i32 24, float %3723)  ; Sqrt(value)
  %3876 = call float @dx.op.unary.f32(i32 24, float %3724)  ; Sqrt(value)
  %3877 = fmul fast float %3871, 2.000000e+00
  %3878 = fsub fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3878, %3874
  %3880 = fadd fast float %3879, %3877
  %3881 = fmul fast float %3880, %3874
  %3882 = fmul fast float %3872, 2.000000e+00
  %3883 = fsub fast float 1.000000e+00, %3882
  %3884 = fmul fast float %3883, %3875
  %3885 = fadd fast float %3884, %3882
  %3886 = fmul fast float %3885, %3875
  %3887 = fmul fast float %3873, 2.000000e+00
  %3888 = fsub fast float 1.000000e+00, %3887
  %3889 = fmul fast float %3888, %3876
  %3890 = fadd fast float %3889, %3887
  %3891 = fmul fast float %3890, %3876
  %3892 = fmul fast float %3881, %3881
  %3893 = fmul fast float %3886, %3886
  %3894 = fmul fast float %3891, %3891
  br label %3911

; <label>:3895                                    ; preds = %3858
  %3896 = fmul fast float %418, %418
  %3897 = fmul fast float %422, %422
  %3898 = fmul fast float %426, %426
  %3899 = fadd fast float %3896, -1.000000e+00
  %3900 = fadd fast float %3897, -1.000000e+00
  %3901 = fadd fast float %3898, -1.000000e+00
  %3902 = fmul fast float %3747, %3899
  %3903 = fmul fast float %3747, %3900
  %3904 = fmul fast float %3747, %3901
  %3905 = fadd fast float %3902, 1.000000e+00
  %3906 = fadd fast float %3903, 1.000000e+00
  %3907 = fadd fast float %3904, 1.000000e+00
  %3908 = fmul fast float %3905, %3722
  %3909 = fmul fast float %3906, %3723
  %3910 = fmul fast float %3907, %3724
  br label %3911

; <label>:3911                                    ; preds = %3895, %3861, %3752, %3708
  %3912 = phi float [ %3857, %3752 ], [ %3733, %3861 ], [ %3733, %3895 ], [ 0x3FA23C0BE0000000, %3708 ]
  %3913 = phi float [ %3849, %3752 ], [ %3892, %3861 ], [ %3908, %3895 ], [ 1.000000e+00, %3708 ]
  %3914 = phi float [ %3850, %3752 ], [ %3893, %3861 ], [ %3909, %3895 ], [ 1.000000e+00, %3708 ]
  %3915 = phi float [ %3851, %3752 ], [ %3894, %3861 ], [ %3910, %3895 ], [ 1.000000e+00, %3708 ]
  %3916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.i32 %3916, 1
  %3918 = and i32 %3917, 1
  %3919 = icmp ne i32 %3918, 0
  %3920 = add i32 %62, 356
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = and i32 %3922, 32
  %3924 = icmp ne i32 %3923, 0
  %3925 = and i1 %3919, %3924
  %3926 = select i1 %3925, float 1.000000e+00, float %3913
  %3927 = select i1 %3925, float 0x3FD3333340000000, float %3914
  %3928 = select i1 %3925, float 0x3FD3333340000000, float %3915
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = and i32 %3930, 32
  %3932 = icmp eq i32 %3931, 0
  br i1 %3932, label %4005, label %3933

; <label>:3933                                    ; preds = %3911
  %3934 = add i32 %62, 140
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = add i32 %62, 452
  %3938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.i32 %3938, 0
  %3940 = add i32 %3939, 0
  %3941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3940, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3942 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3941, %dx.types.Handle %107, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = and i32 %3936, 255
  %3948 = uitofp i32 %3947 to float
  %3949 = lshr i32 %3936, 8
  %3950 = and i32 %3949, 255
  %3951 = uitofp i32 %3950 to float
  %3952 = lshr i32 %3936, 16
  %3953 = and i32 %3952, 255
  %3954 = uitofp i32 %3953 to float
  %3955 = fmul fast float %3954, 0x3F70101000000000
  %3956 = fmul fast float %3943, %3948
  %3957 = fadd fast float %3956, %3951
  %3958 = fmul fast float %3957, 0x3F70101000000000
  %3959 = fadd fast float %3944, -5.000000e-01
  %3960 = fadd fast float %3946, -5.000000e-01
  %3961 = fmul fast float %3959, %3955
  %3962 = fmul fast float %3960, %3955
  %3963 = fadd fast float %3961, 5.000000e-01
  %3964 = fadd fast float %3962, 5.000000e-01
  %3965 = fmul fast float %3963, 2.000000e+00
  %3966 = fadd fast float %3965, -1.000000e+00
  %3967 = fmul fast float %3964, 2.000000e+00
  %3968 = fadd fast float %3967, -1.000000e+00
  %3969 = fadd fast float %3966, %3968
  %3970 = fmul fast float %3969, 5.000000e-01
  %3971 = fsub fast float %3966, %3968
  %3972 = fmul fast float %3971, 5.000000e-01
  %3973 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3974 = fsub fast float 1.000000e+00, %3973
  %3975 = call float @dx.op.unary.f32(i32 6, float %3972)  ; FAbs(value)
  %3976 = fsub fast float %3974, %3975
  %3977 = call float @dx.op.dot3.f32(i32 55, float %3970, float %3972, float %3976, float %3970, float %3972, float %3976)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = call float @dx.op.unary.f32(i32 25, float %3977)  ; Rsqrt(value)
  %3979 = fmul fast float %3970, %3978
  %3980 = fmul fast float %3972, %3978
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = and i32 %3982, 67108864
  %3984 = icmp eq i32 %3983, 0
  br i1 %3984, label %4001, label %3985

; <label>:3985                                    ; preds = %3933
  %3986 = add i32 %62, 328
  %3987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.i32 %3987, 0
  %3989 = and i32 %3988, 65535
  %3990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3989)  ; LegacyF16ToF32(value)
  %3991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.i32 %3991, 0
  %3993 = and i32 %3992, 65535
  %3994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3993)  ; LegacyF16ToF32(value)
  %3995 = lshr i32 %3988, 16
  %3996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3995)  ; LegacyF16ToF32(value)
  %3997 = fsub fast float %3958, %3996
  %3998 = fmul fast float %3997, %3990
  %3999 = fadd fast float %3998, %3994
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  br label %4001

; <label>:4001                                    ; preds = %3985, %3933
  %4002 = phi float [ %4000, %3985 ], [ %3958, %3933 ]
  %4003 = call float @dx.op.dot2.f32(i32 54, float %3979, float %3980, float %3422, float %3423)  ; Dot2(ax,ay,bx,by)
  %4004 = call float @dx.op.dot2.f32(i32 54, float %3979, float %3980, float %3424, float %3425)  ; Dot2(ax,ay,bx,by)
  br label %4005

; <label>:4005                                    ; preds = %4001, %3911
  %4006 = phi float [ %4002, %4001 ], [ 0x3FD6666660000000, %3911 ]
  %4007 = phi float [ %4003, %4001 ], [ 0.000000e+00, %3911 ]
  %4008 = phi float [ %4004, %4001 ], [ 0.000000e+00, %3911 ]
  %4009 = phi float [ %3945, %4001 ], [ 1.000000e+00, %3911 ]
  %4010 = add i32 %62, 208
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = lshr i32 %4012, 22
  %4014 = shl nuw nsw i32 %4013, 5
  %4015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4014)  ; LegacyF16ToF32(value)
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 64
  %4019 = icmp eq i32 %4018, 0
  br i1 %4019, label %4053, label %4020

; <label>:4020                                    ; preds = %4005
  %4021 = add i32 %62, 468
  %4022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.i32 %4022, 0
  %4024 = add i32 %4023, 0
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = and i32 %4027, 131072
  %4029 = icmp eq i32 %4028, 0
  %4030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4025, %dx.types.Handle %107, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = fmul fast float %4031, %406
  %4035 = fmul fast float %4032, %409
  %4036 = fmul fast float %4033, %412
  br i1 %4029, label %4043, label %4037

; <label>:4037                                    ; preds = %4020
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = fmul fast float %4039, %4034
  %4041 = fmul fast float %4039, %4035
  %4042 = fmul fast float %4039, %4036
  br label %4043

; <label>:4043                                    ; preds = %4037, %4020
  %4044 = phi float [ %4040, %4037 ], [ %4034, %4020 ]
  %4045 = phi float [ %4041, %4037 ], [ %4035, %4020 ]
  %4046 = phi float [ %4042, %4037 ], [ %4036, %4020 ]
  %4047 = fmul fast float %4044, %4015
  %4048 = select i1 %260, float %4047, float %4044
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4045, float %4046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = select i1 %260, float 0.000000e+00, float %4044
  %4051 = select i1 %260, float %4049, float %4045
  %4052 = select i1 %260, float 0.000000e+00, float %4046
  br label %4053

; <label>:4053                                    ; preds = %4043, %4005
  %4054 = phi float [ %4050, %4043 ], [ 0.000000e+00, %4005 ]
  %4055 = phi float [ %4051, %4043 ], [ 0.000000e+00, %4005 ]
  %4056 = phi float [ %4052, %4043 ], [ 0.000000e+00, %4005 ]
  %4057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4058 = extractvalue %dx.types.ResRet.i32 %4057, 0
  %4059 = and i32 %4058, 1024
  %4060 = icmp eq i32 %4059, 0
  br i1 %4060, label %4091, label %4061

; <label>:4061                                    ; preds = %4053
  %4062 = add i32 %62, 200
  %4063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4062, i32 undef)  ; BufferLoad(srv,index,wot)
  %4064 = extractvalue %dx.types.ResRet.i32 %4063, 0
  %4065 = and i32 %4064, 255
  %4066 = uitofp i32 %4065 to float
  %4067 = fmul fast float %4066, 0x3F70101020000000
  %4068 = lshr i32 %4064, 8
  %4069 = and i32 %4068, 255
  %4070 = uitofp i32 %4069 to float
  %4071 = fmul fast float %4070, 0x3F70101020000000
  %4072 = lshr i32 %4064, 16
  %4073 = and i32 %4072, 255
  %4074 = uitofp i32 %4073 to float
  %4075 = fmul fast float %4074, 0x3F70101020000000
  %4076 = fmul fast float %4067, %4067
  %4077 = fmul fast float %4071, %4071
  %4078 = fmul fast float %4075, %4075
  %4079 = add i32 %62, 536
  %4080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4079, i32 undef)  ; BufferLoad(srv,index,wot)
  %4081 = extractvalue %dx.types.ResRet.i32 %4080, 0
  %4082 = add i32 %4081, 0
  %4083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4084 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4083, %dx.types.Handle %108, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = fmul fast float %4076, %4085
  %4089 = fmul fast float %4077, %4086
  %4090 = fmul fast float %4078, %4087
  br label %4091

; <label>:4091                                    ; preds = %4061, %4053
  %4092 = phi float [ %4088, %4061 ], [ 0.000000e+00, %4053 ]
  %4093 = phi float [ %4089, %4061 ], [ 0.000000e+00, %4053 ]
  %4094 = phi float [ %4090, %4061 ], [ 0.000000e+00, %4053 ]
  %4095 = fcmp fast ogt float %4092, 0.000000e+00
  %4096 = fcmp fast ogt float %4093, 0.000000e+00
  %4097 = fcmp fast ogt float %4094, 0.000000e+00
  %4098 = call float @dx.op.unary.f32(i32 23, float %4092)  ; Log(value)
  %4099 = call float @dx.op.unary.f32(i32 23, float %4093)  ; Log(value)
  %4100 = call float @dx.op.unary.f32(i32 23, float %4094)  ; Log(value)
  %4101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4102 = extractvalue %dx.types.ResRet.i32 %4101, 0
  %4103 = lshr i32 %4102, 7
  %4104 = and i32 %4103, 32752
  %4105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4104)  ; LegacyF16ToF32(value)
  %4106 = fmul fast float %4098, 0xBFE62E4300000000
  %4107 = fmul fast float %4106, %4105
  %4108 = fmul fast float %4099, 0xBFE62E4300000000
  %4109 = fmul fast float %4108, %4105
  %4110 = fmul fast float %4100, 0xBFE62E4300000000
  %4111 = fmul fast float %4110, %4105
  %4112 = select i1 %4095, float %4107, float 1.270000e+02
  %4113 = select i1 %4096, float %4109, float 1.270000e+02
  %4114 = select i1 %4097, float %4111, float 1.270000e+02
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = and i32 %4116, 10240
  %4118 = icmp eq i32 %4117, 0
  br i1 %4118, label %4163, label %4119

; <label>:4119                                    ; preds = %4091
  %4120 = add i32 %62, 552
  %4121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4120, i32 undef)  ; BufferLoad(srv,index,wot)
  %4122 = extractvalue %dx.types.ResRet.i32 %4121, 0
  %4123 = add i32 %4122, 0
  %4124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4124, %dx.types.Handle %108, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 3
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = and i32 %4129, 1048576
  %4131 = icmp ne i32 %4130, 0
  %4132 = and i32 %4129, 8192
  %4133 = icmp eq i32 %4132, 0
  br i1 %4133, label %4149, label %4134

; <label>:4134                                    ; preds = %4119
  %4135 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4136 = select i1 %4131, float %4135, float %4126
  %4137 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4138 = select i1 %4131, float %4137, float %4126
  %4139 = add i32 %62, 144
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = lshr i32 %4141, 16
  %4143 = and i32 %4142, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = fmul fast float %4144, 0x3F80101020000000
  %4146 = fmul fast float %4145, %4138
  %4147 = fmul fast float %4145, %4126
  %4148 = fmul fast float %4145, %4136
  br label %4149

; <label>:4149                                    ; preds = %4134, %4119
  %4150 = phi float [ %4146, %4134 ], [ 0.000000e+00, %4119 ]
  %4151 = phi float [ %4147, %4134 ], [ 0.000000e+00, %4119 ]
  %4152 = phi float [ %4148, %4134 ], [ 0.000000e+00, %4119 ]
  %4153 = and i32 %4129, 2048
  %4154 = icmp eq i32 %4153, 0
  br i1 %4154, label %4163, label %4155

; <label>:4155                                    ; preds = %4149
  %4156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.i32 %4156, 0
  %4158 = shl i32 %4157, 4
  %4159 = and i32 %4158, 32752
  %4160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4159)  ; LegacyF16ToF32(value)
  %4161 = fmul fast float %4160, %4127
  %4162 = call float @dx.op.binary.f32(i32 35, float %4161, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4163

; <label>:4163                                    ; preds = %4155, %4149, %4091
  %4164 = phi float [ %4150, %4155 ], [ %4150, %4149 ], [ 0.000000e+00, %4091 ]
  %4165 = phi float [ %4151, %4155 ], [ %4151, %4149 ], [ 0.000000e+00, %4091 ]
  %4166 = phi float [ %4152, %4155 ], [ %4152, %4149 ], [ 0.000000e+00, %4091 ]
  %4167 = phi float [ %4162, %4155 ], [ 0x3F70101020000000, %4149 ], [ 0x3F70101020000000, %4091 ]
  %4168 = add i32 %62, 144
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = and i32 %4170, 255
  %4172 = uitofp i32 %4171 to float
  %4173 = lshr i32 %4170, 8
  %4174 = and i32 %4173, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3927, float %3928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = fmul fast float %4175, %4176
  %4178 = fadd fast float %4177, %4172
  %4179 = fmul fast float %4178, 0x3F70101020000000
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  br i1 %3410, label %4181, label %4216

; <label>:4181                                    ; preds = %4163
  %4182 = fmul fast float %4167, 2.000000e+00
  %4183 = fcmp fast olt float %4112, 1.270000e+02
  %4184 = fcmp fast olt float %4113, 1.270000e+02
  %4185 = fcmp fast olt float %4114, 1.270000e+02
  %4186 = fmul fast float %4112, 0xBFF7154760000000
  %4187 = fmul fast float %4186, %4182
  %4188 = fmul fast float %4113, 0xBFF7154760000000
  %4189 = fmul fast float %4188, %4182
  %4190 = fmul fast float %4114, 0xBFF7154760000000
  %4191 = fmul fast float %4190, %4182
  %4192 = call float @dx.op.unary.f32(i32 21, float %4187)  ; Exp(value)
  %4193 = call float @dx.op.unary.f32(i32 21, float %4189)  ; Exp(value)
  %4194 = call float @dx.op.unary.f32(i32 21, float %4191)  ; Exp(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = call float @dx.op.unary.f32(i32 7, float %4194)  ; Saturate(value)
  %4198 = fadd fast float %4195, -1.000000e+00
  %4199 = select i1 %4183, float %4198, float -1.000000e+00
  %4200 = fadd fast float %4196, -1.000000e+00
  %4201 = select i1 %4184, float %4200, float -1.000000e+00
  %4202 = fadd fast float %4197, -1.000000e+00
  %4203 = select i1 %4185, float %4202, float -1.000000e+00
  %4204 = fmul fast float %4199, %3706
  %4205 = fmul fast float %4201, %3706
  %4206 = fmul fast float %4203, %3706
  %4207 = fadd fast float %4204, 1.000000e+00
  %4208 = fadd fast float %4205, 1.000000e+00
  %4209 = fadd fast float %4206, 1.000000e+00
  %4210 = fmul fast float %4207, %3392
  %4211 = fmul fast float %4208, %3393
  %4212 = fmul fast float %4209, %3394
  %4213 = fmul fast float %4207, %3395
  %4214 = fmul fast float %4208, %3396
  %4215 = fmul fast float %4209, %3397
  br label %4216

; <label>:4216                                    ; preds = %4181, %4163
  %4217 = phi float [ %4210, %4181 ], [ %3392, %4163 ]
  %4218 = phi float [ %4211, %4181 ], [ %3393, %4163 ]
  %4219 = phi float [ %4212, %4181 ], [ %3394, %4163 ]
  %4220 = phi float [ %4213, %4181 ], [ %3395, %4163 ]
  %4221 = phi float [ %4214, %4181 ], [ %3396, %4163 ]
  %4222 = phi float [ %4215, %4181 ], [ %3397, %4163 ]
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = and i32 %4224, 3
  %4226 = icmp eq i32 %4225, 3
  br i1 %4226, label %4305, label %4227

; <label>:4227                                    ; preds = %4216
  %4228 = and i32 %4224, 16
  %4229 = icmp ne i32 %4228, 0
  %4230 = select i1 %4229, float %3706, float 0.000000e+00
  %4231 = icmp eq i32 %4225, 0
  br i1 %4231, label %4232, label %4260

; <label>:4232                                    ; preds = %4227
  %4233 = and i32 %4224, 64
  %4234 = icmp ne i32 %4233, 0
  %4235 = select i1 %4234, float %3706, float 0.000000e+00
  %4236 = fsub fast float %3926, %4217
  %4237 = fsub fast float %3927, %4218
  %4238 = fsub fast float %3928, %4219
  %4239 = fmul fast float %4230, %4236
  %4240 = fmul fast float %4230, %4237
  %4241 = fmul fast float %4230, %4238
  %4242 = fadd fast float %4239, %4217
  %4243 = fadd fast float %4240, %4218
  %4244 = fadd fast float %4241, %4219
  %4245 = fsub fast float %3912, %3404
  %4246 = fmul fast float %4230, %4245
  %4247 = fadd fast float %4246, %3404
  %4248 = fsub fast float %4054, %4220
  %4249 = fsub fast float %4055, %4221
  %4250 = fsub fast float %4056, %4222
  %4251 = fmul fast float %4235, %4248
  %4252 = fmul fast float %4235, %4249
  %4253 = fmul fast float %4235, %4250
  %4254 = fadd fast float %4251, %4220
  %4255 = fadd fast float %4252, %4221
  %4256 = fadd fast float %4253, %4222
  %4257 = fsub fast float %4180, %3408
  %4258 = fmul fast float %4230, %4257
  %4259 = fadd fast float %4258, %3408
  br label %4305

; <label>:4260                                    ; preds = %4227
  %4261 = icmp eq i32 %4225, 1
  br i1 %4261, label %4262, label %4275

; <label>:4262                                    ; preds = %4260
  %4263 = fadd fast float %3926, -1.000000e+00
  %4264 = fadd fast float %3927, -1.000000e+00
  %4265 = fadd fast float %3928, -1.000000e+00
  %4266 = fmul fast float %4230, %4263
  %4267 = fmul fast float %4230, %4264
  %4268 = fmul fast float %4230, %4265
  %4269 = fadd fast float %4266, 1.000000e+00
  %4270 = fadd fast float %4267, 1.000000e+00
  %4271 = fadd fast float %4268, 1.000000e+00
  %4272 = fmul fast float %4269, %4217
  %4273 = fmul fast float %4270, %4218
  %4274 = fmul fast float %4271, %4219
  br label %4305

; <label>:4275                                    ; preds = %4260
  %4276 = icmp eq i32 %4225, 2
  br i1 %4276, label %4277, label %4305

; <label>:4277                                    ; preds = %4275
  %4278 = call float @dx.op.unary.f32(i32 24, float %3926)  ; Sqrt(value)
  %4279 = call float @dx.op.unary.f32(i32 24, float %3927)  ; Sqrt(value)
  %4280 = call float @dx.op.unary.f32(i32 24, float %3928)  ; Sqrt(value)
  %4281 = fadd fast float %4278, -5.000000e-01
  %4282 = fadd fast float %4279, -5.000000e-01
  %4283 = fadd fast float %4280, -5.000000e-01
  %4284 = fmul fast float %4281, %4230
  %4285 = fmul fast float %4282, %4230
  %4286 = fmul fast float %4283, %4230
  %4287 = fadd fast float %4284, 5.000000e-01
  %4288 = fadd fast float %4285, 5.000000e-01
  %4289 = fadd fast float %4286, 5.000000e-01
  %4290 = fmul fast float %4287, 2.000000e+00
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4291, %4217
  %4293 = fadd fast float %4292, %4290
  %4294 = fmul fast float %4293, %4217
  %4295 = fmul fast float %4288, 2.000000e+00
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = fmul fast float %4296, %4218
  %4298 = fadd fast float %4297, %4295
  %4299 = fmul fast float %4298, %4218
  %4300 = fmul fast float %4289, 2.000000e+00
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4301, %4219
  %4303 = fadd fast float %4302, %4300
  %4304 = fmul fast float %4303, %4219
  br label %4305

; <label>:4305                                    ; preds = %4277, %4275, %4262, %4232, %4216
  %4306 = phi float [ %4217, %4216 ], [ %4294, %4277 ], [ %4217, %4275 ], [ %4272, %4262 ], [ %4242, %4232 ]
  %4307 = phi float [ %4218, %4216 ], [ %4299, %4277 ], [ %4218, %4275 ], [ %4273, %4262 ], [ %4243, %4232 ]
  %4308 = phi float [ %4219, %4216 ], [ %4304, %4277 ], [ %4219, %4275 ], [ %4274, %4262 ], [ %4244, %4232 ]
  %4309 = phi float [ %4220, %4216 ], [ %4220, %4277 ], [ %4220, %4275 ], [ %4220, %4262 ], [ %4254, %4232 ]
  %4310 = phi float [ %4221, %4216 ], [ %4221, %4277 ], [ %4221, %4275 ], [ %4221, %4262 ], [ %4255, %4232 ]
  %4311 = phi float [ %4222, %4216 ], [ %4222, %4277 ], [ %4222, %4275 ], [ %4222, %4262 ], [ %4256, %4232 ]
  %4312 = phi float [ %3404, %4216 ], [ %3404, %4277 ], [ %3404, %4275 ], [ %3404, %4262 ], [ %4247, %4232 ]
  %4313 = phi float [ %3408, %4216 ], [ %3408, %4277 ], [ %3408, %4275 ], [ %3408, %4262 ], [ %4259, %4232 ]
  %4314 = and i32 %4224, 12
  %4315 = icmp eq i32 %4314, 12
  br i1 %4315, label %4446, label %4316

; <label>:4316                                    ; preds = %4305
  %4317 = and i32 %4224, 2097184
  %4318 = icmp eq i32 %4317, 2097184
  %4319 = select i1 %4318, float %3706, float 0.000000e+00
  %4320 = and i32 %4224, 4194336
  %4321 = icmp eq i32 %4320, 4194336
  %4322 = select i1 %4321, float %3706, float 0.000000e+00
  %4323 = and i32 %4224, 8388640
  %4324 = icmp eq i32 %4323, 8388640
  %4325 = select i1 %4324, float %3706, float 0.000000e+00
  %4326 = and i32 %4224, 1024
  %4327 = icmp ne i32 %4326, 0
  %4328 = select i1 %4327, float %3706, float 0.000000e+00
  %4329 = and i32 %4224, 2048
  %4330 = icmp ne i32 %4329, 0
  %4331 = select i1 %4330, float %3706, float 0.000000e+00
  %4332 = and i32 %4224, 8192
  %4333 = icmp ne i32 %4332, 0
  %4334 = select i1 %4333, float %3706, float 0.000000e+00
  %4335 = icmp eq i32 %4314, 0
  br i1 %4335, label %4336, label %4370

; <label>:4336                                    ; preds = %4316
  %4337 = fsub fast float %4007, %3390
  %4338 = fsub fast float %4008, %3391
  %4339 = fmul fast float %4319, %4337
  %4340 = fmul fast float %4319, %4338
  %4341 = fadd fast float %4339, %3390
  %4342 = fadd fast float %4340, %3391
  %4343 = fsub fast float %4009, %3406
  %4344 = fmul fast float %4322, %4343
  %4345 = fadd fast float %4344, %3406
  %4346 = fsub fast float %4006, %3405
  %4347 = fmul fast float %4325, %4346
  %4348 = fadd fast float %4347, %3405
  %4349 = fsub fast float %4112, %3401
  %4350 = fsub fast float %4113, %3402
  %4351 = fsub fast float %4114, %3403
  %4352 = fmul fast float %4328, %4349
  %4353 = fmul fast float %4328, %4350
  %4354 = fmul fast float %4328, %4351
  %4355 = fadd fast float %4352, %3401
  %4356 = fadd fast float %4353, %3402
  %4357 = fadd fast float %4354, %3403
  %4358 = fsub fast float %4167, %3407
  %4359 = fmul fast float %4331, %4358
  %4360 = fadd fast float %4359, %3407
  %4361 = fsub fast float %4164, %3398
  %4362 = fsub fast float %4165, %3399
  %4363 = fsub fast float %4166, %3400
  %4364 = fmul fast float %4334, %4361
  %4365 = fmul fast float %4334, %4362
  %4366 = fmul fast float %4334, %4363
  %4367 = fadd fast float %4364, %3398
  %4368 = fadd fast float %4365, %3399
  %4369 = fadd fast float %4366, %3400
  br label %4446

; <label>:4370                                    ; preds = %4316
  %4371 = icmp eq i32 %4314, 4
  br i1 %4371, label %4372, label %4418

; <label>:4372                                    ; preds = %4370
  %4373 = fmul fast float %4319, %4007
  %4374 = fmul fast float %4319, %4008
  %4375 = fadd fast float %4373, %3390
  %4376 = fadd fast float %4374, %3391
  %4377 = call float @dx.op.binary.f32(i32 36, float %3406, float %4009)  ; FMin(a,b)
  %4378 = fsub fast float %4377, %3406
  %4379 = fmul fast float %4378, %4322
  %4380 = fadd fast float %4379, %3406
  %4381 = fadd fast float %4006, %3405
  %4382 = fmul fast float %4381, 0x3FF337FAE0000000
  %4383 = fmul fast float %3405, %3405
  %4384 = fmul fast float %4006, %4006
  %4385 = fadd fast float %4384, %4383
  %4386 = fmul fast float %4385, 0x3FE5152B00000000
  %4387 = fmul fast float %3405, 0xBFCC1F85E0000000
  %4388 = fmul fast float %4387, %4006
  %4389 = fadd fast float %4388, 0xBFE1363700000000
  %4390 = fadd fast float %4389, %4382
  %4391 = fsub fast float %4390, %4386
  %4392 = fmul fast float %4381, 0x3FBA6F0D00000000
  %4393 = fmul fast float %4385, 0x3FD0432880000000
  %4394 = fmul fast float %3405, 0xBFEF110800000000
  %4395 = fmul fast float %4394, %4006
  %4396 = fadd fast float %4395, 1.000000e+00
  %4397 = fsub fast float %4396, %4392
  %4398 = fadd fast float %4397, %4393
  %4399 = fdiv fast float %4391, %4398
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4401 = fsub fast float %4400, %3405
  %4402 = fmul fast float %4401, %4325
  %4403 = fadd fast float %4402, %3405
  %4404 = fmul fast float %4328, %4112
  %4405 = fmul fast float %4328, %4113
  %4406 = fmul fast float %4328, %4114
  %4407 = fadd fast float %4404, %3401
  %4408 = fadd fast float %4405, %3402
  %4409 = fadd fast float %4406, %3403
  %4410 = fmul fast float %4331, %4167
  %4411 = fadd fast float %4410, %3407
  %4412 = fmul fast float %4334, %4164
  %4413 = fmul fast float %4334, %4165
  %4414 = fmul fast float %4334, %4166
  %4415 = fadd fast float %4412, %3398
  %4416 = fadd fast float %4413, %3399
  %4417 = fadd fast float %4414, %3400
  br label %4446

; <label>:4418                                    ; preds = %4370
  %4419 = icmp eq i32 %4314, 8
  br i1 %4419, label %4420, label %4446

; <label>:4420                                    ; preds = %4418
  %4421 = fmul fast float %4319, %4007
  %4422 = fmul fast float %4319, %4008
  %4423 = fadd fast float %4421, %3390
  %4424 = fadd fast float %4422, %3391
  %4425 = call float @dx.op.binary.f32(i32 36, float %3406, float %4009)  ; FMin(a,b)
  %4426 = fsub fast float %4425, %3406
  %4427 = fmul fast float %4426, %4322
  %4428 = fadd fast float %4427, %3406
  %4429 = fsub fast float %4006, %3405
  %4430 = fmul fast float %4325, %4429
  %4431 = fadd fast float %4430, %3405
  %4432 = fmul fast float %4328, %4112
  %4433 = fmul fast float %4328, %4113
  %4434 = fmul fast float %4328, %4114
  %4435 = fadd fast float %4432, %3401
  %4436 = fadd fast float %4433, %3402
  %4437 = fadd fast float %4434, %3403
  %4438 = fmul fast float %4331, %4167
  %4439 = fadd fast float %4438, %3407
  %4440 = fmul fast float %4334, %4164
  %4441 = fmul fast float %4334, %4165
  %4442 = fmul fast float %4334, %4166
  %4443 = fadd fast float %4440, %3398
  %4444 = fadd fast float %4441, %3399
  %4445 = fadd fast float %4442, %3400
  br label %4446

; <label>:4446                                    ; preds = %4420, %4418, %4372, %4336, %4305, %3705, %3409, %3389
  %4447 = phi float [ %3390, %4305 ], [ %3390, %3705 ], [ %3390, %3389 ], [ %3390, %3409 ], [ %4341, %4336 ], [ %4375, %4372 ], [ %3390, %4418 ], [ %4423, %4420 ]
  %4448 = phi float [ %3391, %4305 ], [ %3391, %3705 ], [ %3391, %3389 ], [ %3391, %3409 ], [ %4342, %4336 ], [ %4376, %4372 ], [ %3391, %4418 ], [ %4424, %4420 ]
  %4449 = phi float [ %4306, %4305 ], [ %3392, %3705 ], [ %3392, %3389 ], [ %3392, %3409 ], [ %4306, %4336 ], [ %4306, %4372 ], [ %4306, %4418 ], [ %4306, %4420 ]
  %4450 = phi float [ %4307, %4305 ], [ %3393, %3705 ], [ %3393, %3389 ], [ %3393, %3409 ], [ %4307, %4336 ], [ %4307, %4372 ], [ %4307, %4418 ], [ %4307, %4420 ]
  %4451 = phi float [ %4308, %4305 ], [ %3394, %3705 ], [ %3394, %3389 ], [ %3394, %3409 ], [ %4308, %4336 ], [ %4308, %4372 ], [ %4308, %4418 ], [ %4308, %4420 ]
  %4452 = phi float [ %4309, %4305 ], [ %3395, %3705 ], [ %3395, %3389 ], [ %3395, %3409 ], [ %4309, %4336 ], [ %4309, %4372 ], [ %4309, %4418 ], [ %4309, %4420 ]
  %4453 = phi float [ %4310, %4305 ], [ %3396, %3705 ], [ %3396, %3389 ], [ %3396, %3409 ], [ %4310, %4336 ], [ %4310, %4372 ], [ %4310, %4418 ], [ %4310, %4420 ]
  %4454 = phi float [ %4311, %4305 ], [ %3397, %3705 ], [ %3397, %3389 ], [ %3397, %3409 ], [ %4311, %4336 ], [ %4311, %4372 ], [ %4311, %4418 ], [ %4311, %4420 ]
  %4455 = phi float [ %3398, %4305 ], [ %3398, %3705 ], [ %3398, %3389 ], [ %3398, %3409 ], [ %4367, %4336 ], [ %4415, %4372 ], [ %3398, %4418 ], [ %4443, %4420 ]
  %4456 = phi float [ %3399, %4305 ], [ %3399, %3705 ], [ %3399, %3389 ], [ %3399, %3409 ], [ %4368, %4336 ], [ %4416, %4372 ], [ %3399, %4418 ], [ %4444, %4420 ]
  %4457 = phi float [ %3400, %4305 ], [ %3400, %3705 ], [ %3400, %3389 ], [ %3400, %3409 ], [ %4369, %4336 ], [ %4417, %4372 ], [ %3400, %4418 ], [ %4445, %4420 ]
  %4458 = phi float [ %3401, %4305 ], [ %3401, %3705 ], [ %3401, %3389 ], [ %3401, %3409 ], [ %4355, %4336 ], [ %4407, %4372 ], [ %3401, %4418 ], [ %4435, %4420 ]
  %4459 = phi float [ %3402, %4305 ], [ %3402, %3705 ], [ %3402, %3389 ], [ %3402, %3409 ], [ %4356, %4336 ], [ %4408, %4372 ], [ %3402, %4418 ], [ %4436, %4420 ]
  %4460 = phi float [ %3403, %4305 ], [ %3403, %3705 ], [ %3403, %3389 ], [ %3403, %3409 ], [ %4357, %4336 ], [ %4409, %4372 ], [ %3403, %4418 ], [ %4437, %4420 ]
  %4461 = phi float [ %4312, %4305 ], [ %3404, %3705 ], [ %3404, %3389 ], [ %3404, %3409 ], [ %4312, %4336 ], [ %4312, %4372 ], [ %4312, %4418 ], [ %4312, %4420 ]
  %4462 = phi float [ %3405, %4305 ], [ %3405, %3705 ], [ %3405, %3389 ], [ %3405, %3409 ], [ %4348, %4336 ], [ %4403, %4372 ], [ %3405, %4418 ], [ %4431, %4420 ]
  %4463 = phi float [ %3406, %4305 ], [ %3406, %3705 ], [ %3406, %3389 ], [ %3406, %3409 ], [ %4345, %4336 ], [ %4380, %4372 ], [ %3406, %4418 ], [ %4428, %4420 ]
  %4464 = phi float [ %3407, %4305 ], [ %3407, %3705 ], [ %3407, %3389 ], [ %3407, %3409 ], [ %4360, %4336 ], [ %4411, %4372 ], [ %3407, %4418 ], [ %4439, %4420 ]
  %4465 = phi float [ %4313, %4305 ], [ %3408, %3705 ], [ %3408, %3389 ], [ %3408, %3409 ], [ %4313, %4336 ], [ %4313, %4372 ], [ %4313, %4418 ], [ %4313, %4420 ]
  %4466 = add i32 %62, 408
  %4467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4466, i32 undef)  ; BufferLoad(srv,index,wot)
  %4468 = extractvalue %dx.types.ResRet.i32 %4467, 0
  %4469 = extractvalue %dx.types.ResRet.i32 %4467, 1
  %4470 = bitcast i32 %4468 to float
  %4471 = bitcast i32 %4469 to float
  %4472 = fcmp fast oge float %4470, 0.000000e+00
  %4473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.f32 %4473, 0
  %4475 = select i1 %4472, float %4470, float %4474
  %4476 = add i32 %62, 504
  %4477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4478 = extractvalue %dx.types.ResRet.i32 %4477, 0
  %4479 = add i32 %4478, 0
  %4480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4480, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = fmul fast float %4482, %4471
  %4484 = fadd fast float %4483, %4475
  %4485 = call float @dx.op.dot2.f32(i32 54, float %4447, float %4448, float %4447, float %4448)  ; Dot2(ax,ay,bx,by)
  %4486 = fmul fast float %4485, 0x3FE3333340000000
  %4487 = fsub fast float 1.000000e+00, %4486
  %4488 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4448, float %4487, float %4447, float %4448, float %4487)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = call float @dx.op.unary.f32(i32 25, float %4488)  ; Rsqrt(value)
  %4490 = fmul fast float %4489, %4447
  %4491 = fmul fast float %4489, %4448
  %4492 = fmul fast float %4487, %4489
  %4493 = fmul fast float %4492, %118
  %4494 = fmul fast float %4492, %119
  %4495 = fmul fast float %4492, %120
  %4496 = fmul fast float %4490, %83
  %4497 = fmul fast float %4490, %84
  %4498 = fmul fast float %4490, %85
  %4499 = fadd fast float %4493, %4496
  %4500 = fadd fast float %4494, %4497
  %4501 = fadd fast float %4495, %4498
  %4502 = fmul fast float %130, %4491
  %4503 = fmul fast float %131, %4491
  %4504 = fmul fast float %132, %4491
  %4505 = fadd fast float %4499, %4502
  %4506 = fadd fast float %4500, %4503
  %4507 = fadd fast float %4501, %4504
  %4508 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4507, float %4505, float %4506, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call float @dx.op.unary.f32(i32 25, float %4508)  ; Rsqrt(value)
  %4510 = fmul fast float %4505, %4509
  %4511 = fmul fast float %4506, %4509
  %4512 = fmul fast float %4507, %4509
  %4513 = and i32 %64, 1
  %4514 = icmp eq i32 %4513, 0
  br i1 %4514, label %4515, label %5107

; <label>:4515                                    ; preds = %4446
  %4516 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4517 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4518 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %4519 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4520 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4521 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %4522 = fadd fast float %4516, %166
  %4523 = fadd fast float %4517, %167
  %4524 = fadd fast float %4518, %168
  %4525 = fadd fast float %4519, %166
  %4526 = fadd fast float %4520, %167
  %4527 = fadd fast float %4521, %168
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 2
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4535 = fmul fast float %4529, %111
  %4536 = fmul fast float %4535, %4533
  %4537 = fmul fast float %4530, %112
  %4538 = fmul fast float %4537, %4534
  %4539 = fptoui float %4536 to i32
  %4540 = fptoui float %4538 to i32
  %4541 = fadd fast float %4529, -1.000000e+00
  %4542 = fadd fast float %4530, -1.000000e+00
  %4543 = fptoui float %4541 to i32
  %4544 = fptoui float %4542 to i32
  %4545 = call i32 @dx.op.binary.i32(i32 40, i32 %4539, i32 %4543)  ; UMin(a,b)
  %4546 = call i32 @dx.op.binary.i32(i32 40, i32 %4540, i32 %4544)  ; UMin(a,b)
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4550 = fmul fast float %4548, %99
  %4551 = fsub fast float %4550, %4549
  %4552 = fadd fast float %4531, -1.000000e+00
  %4553 = call float @dx.op.binary.f32(i32 36, float %4551, float %4552)  ; FMin(a,b)
  %4554 = fptoui float %4553 to i32
  %4555 = fptoui float %4529 to i32
  %4556 = fptoui float %4530 to i32
  %4557 = mul i32 %4554, %4556
  %4558 = add i32 %4557, %4546
  %4559 = mul i32 %4558, %4555
  %4560 = add i32 %4559, %4545
  %4561 = shl i32 %4560, 2
  %4562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.i32 %4562, 0
  %4564 = and i32 %4563, 1023
  %4565 = lshr i32 %4563, 10
  %4566 = icmp eq i32 %4564, 0
  br i1 %4566, label %5070, label %4567

; <label>:4567                                    ; preds = %4515
  %4568 = and i32 %4563, 1023
  br label %4569

; <label>:4569                                    ; preds = %4701, %4567
  %4570 = phi i32 [ %4651, %4701 ], [ 0, %4567 ]
  %4571 = phi float [ %4702, %4701 ], [ 0.000000e+00, %4567 ]
  %4572 = phi float [ %4703, %4701 ], [ %4484, %4567 ]
  %4573 = phi float [ %4704, %4701 ], [ %4465, %4567 ]
  %4574 = phi float [ %4705, %4701 ], [ %4458, %4567 ]
  %4575 = phi float [ %4706, %4701 ], [ %4459, %4567 ]
  %4576 = phi float [ %4707, %4701 ], [ %4460, %4567 ]
  %4577 = phi float [ %4708, %4701 ], [ 0.000000e+00, %4567 ]
  %4578 = phi float [ %4709, %4701 ], [ 0.000000e+00, %4567 ]
  %4579 = phi float [ %4710, %4701 ], [ %4455, %4567 ]
  %4580 = phi float [ %4711, %4701 ], [ %4456, %4567 ]
  %4581 = phi float [ %4712, %4701 ], [ %4457, %4567 ]
  %4582 = phi float [ %4713, %4701 ], [ %4452, %4567 ]
  %4583 = phi float [ %4714, %4701 ], [ %4453, %4567 ]
  %4584 = phi float [ %4715, %4701 ], [ %4454, %4567 ]
  %4585 = phi float [ %4716, %4701 ], [ %4510, %4567 ]
  %4586 = phi float [ %4717, %4701 ], [ %4511, %4567 ]
  %4587 = phi float [ %4718, %4701 ], [ %4512, %4567 ]
  %4588 = phi float [ %4719, %4701 ], [ %4463, %4567 ]
  %4589 = phi float [ %4720, %4701 ], [ %4462, %4567 ]
  %4590 = phi float [ %4721, %4701 ], [ 0.000000e+00, %4567 ]
  %4591 = phi float [ %4722, %4701 ], [ %4461, %4567 ]
  %4592 = phi float [ %4723, %4701 ], [ %4449, %4567 ]
  %4593 = phi float [ %4724, %4701 ], [ %4450, %4567 ]
  %4594 = phi float [ %4725, %4701 ], [ %4451, %4567 ]
  %4595 = add nuw nsw i32 %4570, %4565
  %4596 = shl i32 %4595, 2
  %4597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.i32 %4597, 0
  %4599 = shl i32 %4598, 8
  %4600 = or i32 %4599, 48
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = or i32 %4599, 64
  %4607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.i32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.i32 %4607, 1
  %4610 = or i32 %4599, 80
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4614 = or i32 %4599, 96
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = or i32 %4599, 112
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4623 = or i32 %4599, 128
  %4624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.ResRet.f32 %4624, 2
  %4628 = extractvalue %dx.types.ResRet.f32 %4624, 3
  %4629 = or i32 %4599, 144
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = extractvalue %dx.types.ResRet.f32 %4630, 2
  %4634 = extractvalue %dx.types.ResRet.f32 %4630, 3
  %4635 = or i32 %4599, 160
  %4636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = extractvalue %dx.types.ResRet.f32 %4636, 1
  %4639 = extractvalue %dx.types.ResRet.f32 %4636, 2
  %4640 = extractvalue %dx.types.ResRet.f32 %4636, 3
  %4641 = or i32 %4599, 192
  %4642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4641, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.i32 %4642, 0
  %4644 = or i32 %4599, 208
  %4645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = or i32 %4599, 248
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = add nuw nsw i32 %4570, 1
  %4652 = bitcast float %4605 to i32
  %4653 = and i32 %4652, 512
  %4654 = icmp eq i32 %4653, 0
  %4655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.ResRet.f32 %4655, 3
  %4660 = call float @dx.op.dot4.f32(i32 56, float %4656, float %4657, float %4658, float %4659, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4661 = or i32 %4599, 16
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.ResRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4662, 2
  %4666 = extractvalue %dx.types.ResRet.f32 %4662, 3
  %4667 = call float @dx.op.dot4.f32(i32 56, float %4663, float %4664, float %4665, float %4666, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4668 = or i32 %4599, 32
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = extractvalue %dx.types.ResRet.f32 %4669, 3
  %4674 = call float @dx.op.dot4.f32(i32 56, float %4670, float %4671, float %4672, float %4673, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4675 = call float @dx.op.unary.f32(i32 27, float %4660)  ; Round_ni(value)
  %4676 = call float @dx.op.unary.f32(i32 6, float %4675)  ; FAbs(value)
  %4677 = call float @dx.op.unary.f32(i32 27, float %4667)  ; Round_ni(value)
  %4678 = call float @dx.op.unary.f32(i32 6, float %4677)  ; FAbs(value)
  %4679 = call float @dx.op.unary.f32(i32 6, float %4674)  ; FAbs(value)
  %4680 = call float @dx.op.unary.f32(i32 27, float %4679)  ; Round_ni(value)
  %4681 = fadd fast float %4678, %4676
  %4682 = fadd fast float %4681, %4680
  %4683 = fcmp fast oeq float %4682, 0.000000e+00
  %4684 = call float @dx.op.dot4.f32(i32 56, float %4656, float %4657, float %4658, float %4659, float %4522, float %4523, float %4524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4685 = call float @dx.op.dot4.f32(i32 56, float %4663, float %4664, float %4665, float %4666, float %4522, float %4523, float %4524, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4686 = call float @dx.op.dot4.f32(i32 56, float %4656, float %4657, float %4658, float %4659, float %4525, float %4526, float %4527, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4687 = call float @dx.op.dot4.f32(i32 56, float %4663, float %4664, float %4665, float %4666, float %4525, float %4526, float %4527, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4688 = fsub fast float %4684, %4660
  %4689 = fsub fast float %4686, %4660
  %4690 = fsub fast float %4685, %4667
  %4691 = fsub fast float %4687, %4667
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 2
  %4695 = fadd fast float %4694, %4692
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4693, 0
  %4698 = fcmp fast ogt float %4696, %4697
  %4699 = and i1 %4683, %4698
  %4700 = and i1 %4654, %4699
  br i1 %4700, label %4727, label %4701

; <label>:4701                                    ; preds = %5056, %4808, %4727, %4569
  %4702 = phi float [ %4571, %4727 ], [ %4811, %4808 ], [ %4811, %5056 ], [ %4571, %4569 ]
  %4703 = phi float [ %4572, %4727 ], [ %4572, %4808 ], [ %5032, %5056 ], [ %4572, %4569 ]
  %4704 = phi float [ %4573, %4727 ], [ %4573, %4808 ], [ %5030, %5056 ], [ %4573, %4569 ]
  %4705 = phi float [ %4574, %4727 ], [ %4574, %4808 ], [ %5008, %5056 ], [ %4574, %4569 ]
  %4706 = phi float [ %4575, %4727 ], [ %4575, %4808 ], [ %5009, %5056 ], [ %4575, %4569 ]
  %4707 = phi float [ %4576, %4727 ], [ %4576, %4808 ], [ %5010, %5056 ], [ %4576, %4569 ]
  %4708 = phi float [ %4577, %4727 ], [ %4577, %4808 ], [ %4935, %5056 ], [ %4577, %4569 ]
  %4709 = phi float [ %4578, %4727 ], [ %4578, %4808 ], [ %4933, %5056 ], [ %4578, %4569 ]
  %4710 = phi float [ %4579, %4727 ], [ %4579, %4808 ], [ %4978, %5056 ], [ %4579, %4569 ]
  %4711 = phi float [ %4580, %4727 ], [ %4580, %4808 ], [ %4979, %5056 ], [ %4580, %4569 ]
  %4712 = phi float [ %4581, %4727 ], [ %4581, %4808 ], [ %4980, %5056 ], [ %4581, %4569 ]
  %4713 = phi float [ %4582, %4727 ], [ %4582, %4808 ], [ %5066, %5056 ], [ %4582, %4569 ]
  %4714 = phi float [ %4583, %4727 ], [ %4583, %4808 ], [ %5067, %5056 ], [ %4583, %4569 ]
  %4715 = phi float [ %4584, %4727 ], [ %4584, %4808 ], [ %5068, %5056 ], [ %4584, %4569 ]
  %4716 = phi float [ %4585, %4727 ], [ %4585, %4808 ], [ %4914, %5056 ], [ %4585, %4569 ]
  %4717 = phi float [ %4586, %4727 ], [ %4586, %4808 ], [ %4915, %5056 ], [ %4586, %4569 ]
  %4718 = phi float [ %4587, %4727 ], [ %4587, %4808 ], [ %4916, %5056 ], [ %4587, %4569 ]
  %4719 = phi float [ %4588, %4727 ], [ %4588, %4808 ], [ %4988, %5056 ], [ %4588, %4569 ]
  %4720 = phi float [ %4589, %4727 ], [ %4589, %4808 ], [ %4985, %5056 ], [ %4589, %4569 ]
  %4721 = phi float [ %4590, %4727 ], [ %4590, %4808 ], [ %4982, %5056 ], [ %4590, %4569 ]
  %4722 = phi float [ %4591, %4727 ], [ %4591, %4808 ], [ %4931, %5056 ], [ %4591, %4569 ]
  %4723 = phi float [ %4592, %4727 ], [ %4592, %4808 ], [ %4926, %5056 ], [ %4592, %4569 ]
  %4724 = phi float [ %4593, %4727 ], [ %4593, %4808 ], [ %4927, %5056 ], [ %4593, %4569 ]
  %4725 = phi float [ %4594, %4727 ], [ %4594, %4808 ], [ %4928, %5056 ], [ %4594, %4569 ]
  %4726 = icmp eq i32 %4651, %4568
  br i1 %4726, label %5069, label %4569

; <label>:4727                                    ; preds = %4569
  %4728 = extractvalue %dx.types.ResRet.f32 %4621, 3
  %4729 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4730 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4731 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4732 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4733 = extractvalue %dx.types.ResRet.i32 %4607, 3
  %4734 = extractvalue %dx.types.ResRet.i32 %4607, 2
  %4735 = add i32 %4733, 0
  %4736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4736, %dx.types.Handle %4737, float %4660, float %4667, float undef, float undef, i32 0, i32 0, i32 undef, float %4688, float %4690, float undef, float %4689, float %4691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = fmul fast float %4739, %4732
  %4741 = fadd fast float %4740, %4731
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = fmul fast float %4660, %4616
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4667, float %4743)  ; FMad(a,b,c)
  %4745 = fadd fast float %4744, %4730
  %4746 = fmul fast float %4660, %4618
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4667, float %4746)  ; FMad(a,b,c)
  %4748 = fadd fast float %4747, %4729
  %4749 = fmul fast float %4688, %4616
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4690, float %4749)  ; FMad(a,b,c)
  %4751 = fmul fast float %4688, %4618
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4690, float %4751)  ; FMad(a,b,c)
  %4753 = fmul fast float %4689, %4616
  %4754 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4691, float %4753)  ; FMad(a,b,c)
  %4755 = fmul fast float %4689, %4618
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4691, float %4755)  ; FMad(a,b,c)
  %4757 = add i32 %4734, 0
  %4758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4757, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4758, %dx.types.Handle %4737, float %4745, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4752, float undef, float %4754, float %4756, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = and i32 %4652, 1024
  %4762 = icmp ne i32 %4761, 0
  %4763 = fcmp fast ogt float %4760, 0x3FE0101020000000
  %4764 = uitofp i1 %4763 to float
  %4765 = select i1 %4762, float %4764, float %4760
  %4766 = and i32 %4652, 8192
  %4767 = icmp ne i32 %4766, 0
  %4768 = select i1 %4767, float %4728, float 1.000000e+00
  %4769 = fmul fast float %4660, 2.000000e+00
  %4770 = fadd fast float %4769, -1.000000e+00
  %4771 = call float @dx.op.unary.f32(i32 6, float %4770)  ; FAbs(value)
  %4772 = fmul fast float %4771, %4649
  %4773 = fsub fast float %4772, %4649
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fmul fast float %4667, 2.000000e+00
  %4776 = fadd fast float %4775, -1.000000e+00
  %4777 = call float @dx.op.unary.f32(i32 6, float %4776)  ; FAbs(value)
  %4778 = fmul fast float %4777, %4650
  %4779 = fsub fast float %4778, %4650
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = fmul fast float %4679, %4612
  %4782 = fsub fast float %4781, %4612
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = fmul fast float %4742, %4768
  %4785 = fmul fast float %4784, %4739
  %4786 = fmul fast float %4785, %4774
  %4787 = fmul fast float %4786, %4765
  %4788 = fmul fast float %4787, %4780
  %4789 = fmul fast float %4788, %4783
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 1
  %4792 = extractvalue %dx.types.CBufRet.f32 %4790, 0
  %4793 = fsub fast float %4696, %4792
  %4794 = fmul fast float %4793, %4791
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = fmul fast float %4789, %4613
  %4797 = fadd fast float %4789, %4613
  %4798 = fmul fast float %4797, %4622
  %4799 = fsub fast float %4798, %4622
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = and i32 %4652, 128
  %4802 = icmp ne i32 %4801, 0
  %4803 = select i1 %4802, float %4800, float %4796
  %4804 = fmul fast float %4803, %4795
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = fcmp fast ugt float %4804, %4806
  br i1 %4807, label %4808, label %4701

; <label>:4808                                    ; preds = %4727
  %4809 = select i1 %4767, float %4804, float 0.000000e+00
  %4810 = fadd fast float %4809, %4571
  %4811 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  br i1 %4767, label %4701, label %4812

; <label>:4812                                    ; preds = %4808
  %4813 = and i32 %4652, 4
  %4814 = and i32 %4652, 8
  %4815 = add i32 %4608, 0
  %4816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4815, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4816, %dx.types.Handle %4817, float %4745, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4752, float undef, float %4754, float %4756, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.ResRet.f32 %4818, 3
  %4823 = bitcast float %4634 to i32
  %4824 = and i32 %4823, 255
  %4825 = uitofp i32 %4824 to float
  %4826 = lshr i32 %4823, 8
  %4827 = and i32 %4826, 255
  %4828 = uitofp i32 %4827 to float
  %4829 = fmul fast float %4822, %4825
  %4830 = fadd fast float %4829, %4828
  %4831 = fmul fast float %4830, 0x3F70101000000000
  %4832 = add i32 %4609, 0
  %4833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4832, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4834 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4833, %dx.types.Handle %4817, float %4745, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4752, float undef, float %4754, float %4756, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4835 = extractvalue %dx.types.ResRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.ResRet.f32 %4834, 1
  %4837 = extractvalue %dx.types.ResRet.f32 %4834, 2
  %4838 = extractvalue %dx.types.ResRet.f32 %4834, 3
  %4839 = bitcast float %4628 to i32
  %4840 = and i32 %4839, 255
  %4841 = uitofp i32 %4840 to float
  %4842 = lshr i32 %4839, 8
  %4843 = and i32 %4842, 255
  %4844 = uitofp i32 %4843 to float
  %4845 = lshr i32 %4839, 16
  %4846 = and i32 %4845, 255
  %4847 = uitofp i32 %4846 to float
  %4848 = fmul fast float %4847, 0x3F70101000000000
  %4849 = fmul fast float %4835, %4841
  %4850 = fadd fast float %4849, %4844
  %4851 = fmul fast float %4850, 0x3F70101000000000
  %4852 = fadd fast float %4836, -5.000000e-01
  %4853 = fadd fast float %4838, -5.000000e-01
  %4854 = fmul fast float %4852, %4848
  %4855 = fmul fast float %4853, %4848
  %4856 = fadd fast float %4854, 5.000000e-01
  %4857 = fadd fast float %4855, 5.000000e-01
  %4858 = fmul fast float %4819, %4637
  %4859 = fmul fast float %4820, %4638
  %4860 = fmul fast float %4821, %4639
  %4861 = fmul fast float %4856, 2.000000e+00
  %4862 = fadd fast float %4861, -1.000000e+00
  %4863 = fmul fast float %4857, 2.000000e+00
  %4864 = fadd fast float %4863, -1.000000e+00
  %4865 = fadd fast float %4862, %4864
  %4866 = fmul fast float %4865, 5.000000e-01
  %4867 = fsub fast float %4862, %4864
  %4868 = fmul fast float %4867, 5.000000e-01
  %4869 = call float @dx.op.unary.f32(i32 6, float %4866)  ; FAbs(value)
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = call float @dx.op.unary.f32(i32 6, float %4868)  ; FAbs(value)
  %4872 = fsub fast float %4870, %4871
  %4873 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4868, float %4872, float %4866, float %4868, float %4872)  ; Dot3(ax,ay,az,bx,by,bz)
  %4874 = call float @dx.op.unary.f32(i32 25, float %4873)  ; Rsqrt(value)
  %4875 = fmul fast float %4866, %4874
  %4876 = fmul fast float %4868, %4874
  %4877 = fmul fast float %4874, %4872
  %4878 = fmul fast float %4877, %4602
  %4879 = fmul fast float %4877, %4603
  %4880 = fmul fast float %4877, %4604
  %4881 = fmul fast float %4875, %4625
  %4882 = fmul fast float %4875, %4626
  %4883 = fmul fast float %4875, %4627
  %4884 = fadd fast float %4881, %4878
  %4885 = fadd fast float %4882, %4879
  %4886 = fadd fast float %4883, %4880
  %4887 = fmul fast float %4876, %4631
  %4888 = fmul fast float %4876, %4632
  %4889 = fmul fast float %4876, %4633
  %4890 = fadd fast float %4884, %4887
  %4891 = fadd fast float %4885, %4888
  %4892 = fadd fast float %4886, %4889
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4891, float %4892, float %4890, float %4891, float %4892)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.unary.f32(i32 25, float %4893)  ; Rsqrt(value)
  %4895 = fmul fast float %4890, %4894
  %4896 = fmul fast float %4891, %4894
  %4897 = fmul fast float %4892, %4894
  %4898 = icmp ne i32 %4814, 0
  %4899 = select i1 %4898, float 1.000000e+00, float 0.000000e+00
  %4900 = fmul fast float %4804, %4899
  %4901 = and i32 %4652, 1
  %4902 = icmp eq i32 %4901, 0
  br i1 %4902, label %4903, label %4907

; <label>:4903                                    ; preds = %4812
  %4904 = fsub fast float %4895, %4585
  %4905 = fsub fast float %4896, %4586
  %4906 = fsub fast float %4897, %4587
  br label %4907

; <label>:4907                                    ; preds = %4903, %4812
  %4908 = phi float [ %4904, %4903 ], [ %4895, %4812 ]
  %4909 = phi float [ %4905, %4903 ], [ %4896, %4812 ]
  %4910 = phi float [ %4906, %4903 ], [ %4897, %4812 ]
  %4911 = fmul float %4910, %4900
  %4912 = fmul float %4909, %4900
  %4913 = fmul float %4908, %4900
  %4914 = fadd fast float %4913, %4585
  %4915 = fadd fast float %4912, %4586
  %4916 = fadd fast float %4911, %4587
  %4917 = icmp ne i32 %4813, 0
  %4918 = select i1 %4917, float 1.000000e+00, float 0.000000e+00
  %4919 = fmul fast float %4804, %4918
  %4920 = fsub fast float %4858, %4592
  %4921 = fsub fast float %4859, %4593
  %4922 = fsub fast float %4860, %4594
  %4923 = fmul fast float %4920, %4919
  %4924 = fmul fast float %4921, %4919
  %4925 = fmul fast float %4922, %4919
  %4926 = fadd fast float %4923, %4592
  %4927 = fadd fast float %4924, %4593
  %4928 = fadd fast float %4925, %4594
  %4929 = fsub fast float %4831, %4591
  %4930 = fmul fast float %4929, %4919
  %4931 = fadd fast float %4930, %4591
  %4932 = fmul fast float %4919, %4578
  %4933 = fsub fast float %4578, %4932
  %4934 = fmul fast float %4919, %4577
  %4935 = fsub fast float %4577, %4934
  %4936 = bitcast float %4646 to i32
  %4937 = lshr i32 %4936, 16
  %4938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4937)  ; LegacyF16ToF32(value)
  %4939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4940 = extractvalue %dx.types.ResRet.i32 %4939, 0
  %4941 = and i32 %4940, 1
  %4942 = icmp eq i32 %4941, 0
  br i1 %4942, label %4943, label %4968

; <label>:4943                                    ; preds = %4907
  %4944 = fadd fast float %4831, 0xBFB99999A0000000
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fmul fast float %4945, 0x3FF1C71C80000000
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4948, %4858
  %4950 = fmul fast float %4948, %4859
  %4951 = fmul fast float %4948, %4860
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = call float @dx.op.binary.f32(i32 35, float %4953, float %4954)  ; FMax(a,b)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4952, float %4955)  ; FMax(a,b)
  %4957 = fcmp fast ogt float %4956, 0.000000e+00
  %4958 = bitcast float %4956 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = select i1 %4957, float %4960, float 0.000000e+00
  %4962 = fmul fast float %4952, %4938
  %4963 = fmul fast float %4953, %4938
  %4964 = fmul fast float %4954, %4938
  %4965 = fmul fast float %4962, %4961
  %4966 = fmul fast float %4963, %4961
  %4967 = fmul fast float %4964, %4961
  br label %4968

; <label>:4968                                    ; preds = %4943, %4907
  %4969 = phi float [ %4938, %4907 ], [ %4965, %4943 ]
  %4970 = phi float [ %4938, %4907 ], [ %4966, %4943 ]
  %4971 = phi float [ %4938, %4907 ], [ %4967, %4943 ]
  %4972 = fsub fast float %4969, %4579
  %4973 = fsub fast float %4970, %4580
  %4974 = fsub fast float %4971, %4581
  %4975 = fmul fast float %4972, %4919
  %4976 = fmul fast float %4973, %4919
  %4977 = fmul fast float %4974, %4919
  %4978 = fadd fast float %4975, %4579
  %4979 = fadd fast float %4976, %4580
  %4980 = fadd fast float %4977, %4581
  %4981 = fadd fast float %4804, %4590
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fsub fast float %4851, %4589
  %4984 = fmul fast float %4983, %4900
  %4985 = fadd fast float %4984, %4589
  %4986 = fsub fast float %4837, %4588
  %4987 = fmul fast float %4986, %4900
  %4988 = fadd fast float %4987, %4588
  br i1 %4902, label %4997, label %4989

; <label>:4989                                    ; preds = %4968
  %4990 = and i32 %4652, 32768
  %4991 = icmp eq i32 %4990, 0
  br i1 %4991, label %5007, label %4992

; <label>:4992                                    ; preds = %4989
  %4993 = fmul fast float %4900, 1.270000e+02
  %4994 = fadd fast float %4993, %4574
  %4995 = fadd fast float %4993, %4575
  %4996 = fadd fast float %4993, %4576
  br label %5007

; <label>:4997                                    ; preds = %4968
  %4998 = fsub fast float 1.270000e+02, %4574
  %4999 = fsub fast float 1.270000e+02, %4575
  %5000 = fsub fast float 1.270000e+02, %4576
  %5001 = fmul fast float %4900, %4998
  %5002 = fmul fast float %4900, %4999
  %5003 = fmul fast float %4900, %5000
  %5004 = fadd fast float %5001, %4574
  %5005 = fadd fast float %5002, %4575
  %5006 = fadd fast float %5003, %4576
  br label %5007

; <label>:5007                                    ; preds = %4997, %4992, %4989
  %5008 = phi float [ %4994, %4992 ], [ %4574, %4989 ], [ %5004, %4997 ]
  %5009 = phi float [ %4995, %4992 ], [ %4575, %4989 ], [ %5005, %4997 ]
  %5010 = phi float [ %4996, %4992 ], [ %4576, %4989 ], [ %5006, %4997 ]
  %5011 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = fmul fast float %5014, %5011
  %5016 = fadd fast float %5015, %5013
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = bitcast float %4640 to i32
  %5019 = and i32 %5018, 65535
  %5020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5019)  ; LegacyF16ToF32(value)
  %5021 = lshr i32 %5018, 16
  %5022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5021)  ; LegacyF16ToF32(value)
  %5023 = fcmp fast oge float %5020, 0.000000e+00
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = select i1 %5023, float %5020, float %5025
  %5027 = fadd fast float %5026, %5022
  %5028 = fsub fast float %5017, %4573
  %5029 = fmul fast float %5028, %4804
  %5030 = fadd fast float %5029, %4573
  %5031 = fmul fast float %5027, %4804
  %5032 = call float @dx.op.binary.f32(i32 35, float %4572, float %5031)  ; FMax(a,b)
  %5033 = and i32 %4652, 16
  %5034 = icmp eq i32 %5033, 0
  br i1 %5034, label %5056, label %5035

; <label>:5035                                    ; preds = %5007
  %5036 = add i32 %4643, 0
  %5037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5036, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5038 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5037, %dx.types.Handle %4817, float %4745, float %4748, float undef, float undef, i32 0, i32 0, i32 undef, float %4750, float %4752, float undef, float %4754, float %4756, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5039 = extractvalue %dx.types.ResRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.ResRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.ResRet.f32 %5038, 2
  %5042 = and i32 %4936, 65535
  %5043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5042)  ; LegacyF16ToF32(value)
  %5044 = fmul fast float %5039, %4637
  %5045 = fmul fast float %5040, %4638
  %5046 = fmul fast float %5041, %4639
  %5047 = and i32 %4652, 16384
  %5048 = icmp ne i32 %5047, 0
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5051 = select i1 %5048, float %5050, float 1.000000e+00
  %5052 = fmul fast float %5051, %5043
  %5053 = fmul fast float %5044, %5052
  %5054 = fmul fast float %5045, %5052
  %5055 = fmul fast float %5046, %5052
  br label %5056

; <label>:5056                                    ; preds = %5035, %5007
  %5057 = phi float [ %5053, %5035 ], [ 0.000000e+00, %5007 ]
  %5058 = phi float [ %5054, %5035 ], [ 0.000000e+00, %5007 ]
  %5059 = phi float [ %5055, %5035 ], [ 0.000000e+00, %5007 ]
  %5060 = fsub fast float %5057, %4582
  %5061 = fsub fast float %5058, %4583
  %5062 = fsub fast float %5059, %4584
  %5063 = fmul fast float %5060, %4804
  %5064 = fmul fast float %5061, %4804
  %5065 = fmul fast float %5062, %4804
  %5066 = fadd fast float %5063, %4582
  %5067 = fadd fast float %5064, %4583
  %5068 = fadd fast float %5065, %4584
  br label %4701

; <label>:5069                                    ; preds = %4701
  br label %5070

; <label>:5070                                    ; preds = %5069, %4515
  %5071 = phi float [ 0.000000e+00, %4515 ], [ %4702, %5069 ]
  %5072 = phi float [ %4484, %4515 ], [ %4703, %5069 ]
  %5073 = phi float [ %4465, %4515 ], [ %4704, %5069 ]
  %5074 = phi float [ %4458, %4515 ], [ %4705, %5069 ]
  %5075 = phi float [ %4459, %4515 ], [ %4706, %5069 ]
  %5076 = phi float [ %4460, %4515 ], [ %4707, %5069 ]
  %5077 = phi float [ 0.000000e+00, %4515 ], [ %4708, %5069 ]
  %5078 = phi float [ 0.000000e+00, %4515 ], [ %4709, %5069 ]
  %5079 = phi float [ %4455, %4515 ], [ %4710, %5069 ]
  %5080 = phi float [ %4456, %4515 ], [ %4711, %5069 ]
  %5081 = phi float [ %4457, %4515 ], [ %4712, %5069 ]
  %5082 = phi float [ %4452, %4515 ], [ %4713, %5069 ]
  %5083 = phi float [ %4453, %4515 ], [ %4714, %5069 ]
  %5084 = phi float [ %4454, %4515 ], [ %4715, %5069 ]
  %5085 = phi float [ %4510, %4515 ], [ %4716, %5069 ]
  %5086 = phi float [ %4511, %4515 ], [ %4717, %5069 ]
  %5087 = phi float [ %4512, %4515 ], [ %4718, %5069 ]
  %5088 = phi float [ %4463, %4515 ], [ %4719, %5069 ]
  %5089 = phi float [ %4462, %4515 ], [ %4720, %5069 ]
  %5090 = phi float [ 0.000000e+00, %4515 ], [ %4721, %5069 ]
  %5091 = phi float [ %4461, %4515 ], [ %4722, %5069 ]
  %5092 = phi float [ %4449, %4515 ], [ %4723, %5069 ]
  %5093 = phi float [ %4450, %4515 ], [ %4724, %5069 ]
  %5094 = phi float [ %4451, %4515 ], [ %4725, %5069 ]
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %5085, float %5086, float %5087)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 25, float %5095)  ; Rsqrt(value)
  %5097 = fmul fast float %5096, %5085
  %5098 = fmul fast float %5096, %5086
  %5099 = fmul fast float %5096, %5087
  %5100 = fadd fast float %5090, %1290
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float %5097, float %5098, float %5099)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.unary.f32(i32 25, float %5102)  ; Rsqrt(value)
  %5104 = fmul fast float %5103, %5097
  %5105 = fmul fast float %5103, %5098
  %5106 = fmul fast float %5103, %5099
  br label %5107

; <label>:5107                                    ; preds = %5070, %4446
  %5108 = phi float [ %5092, %5070 ], [ %4449, %4446 ]
  %5109 = phi float [ %5093, %5070 ], [ %4450, %4446 ]
  %5110 = phi float [ %5094, %5070 ], [ %4451, %4446 ]
  %5111 = phi float [ %5082, %5070 ], [ %4452, %4446 ]
  %5112 = phi float [ %5083, %5070 ], [ %4453, %4446 ]
  %5113 = phi float [ %5084, %5070 ], [ %4454, %4446 ]
  %5114 = phi float [ %5074, %5070 ], [ %4458, %4446 ]
  %5115 = phi float [ %5075, %5070 ], [ %4459, %4446 ]
  %5116 = phi float [ %5076, %5070 ], [ %4460, %4446 ]
  %5117 = phi float [ %5079, %5070 ], [ %4455, %4446 ]
  %5118 = phi float [ %5080, %5070 ], [ %4456, %4446 ]
  %5119 = phi float [ %5081, %5070 ], [ %4457, %4446 ]
  %5120 = phi float [ %5104, %5070 ], [ %4510, %4446 ]
  %5121 = phi float [ %5105, %5070 ], [ %4511, %4446 ]
  %5122 = phi float [ %5106, %5070 ], [ %4512, %4446 ]
  %5123 = phi float [ %5091, %5070 ], [ %4461, %4446 ]
  %5124 = phi float [ %5101, %5070 ], [ %1290, %4446 ]
  %5125 = phi float [ %5089, %5070 ], [ %4462, %4446 ]
  %5126 = phi float [ %5088, %5070 ], [ %4463, %4446 ]
  %5127 = phi float [ %5078, %5070 ], [ 0.000000e+00, %4446 ]
  %5128 = phi float [ %5077, %5070 ], [ 0.000000e+00, %4446 ]
  %5129 = phi float [ %5071, %5070 ], [ 0.000000e+00, %4446 ]
  %5130 = phi float [ %5072, %5070 ], [ %4484, %4446 ]
  %5131 = phi float [ %5073, %5070 ], [ %4465, %4446 ]
  %5132 = add i32 %62, 392
  %5133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5132, i32 undef)  ; BufferLoad(srv,index,wot)
  %5134 = extractvalue %dx.types.ResRet.i32 %5133, 0
  %5135 = extractvalue %dx.types.ResRet.i32 %5133, 1
  %5136 = extractvalue %dx.types.ResRet.i32 %5133, 2
  %5137 = extractvalue %dx.types.ResRet.i32 %5133, 3
  %5138 = bitcast i32 %5134 to float
  %5139 = bitcast i32 %5135 to float
  %5140 = bitcast i32 %5136 to float
  %5141 = bitcast i32 %5137 to float
  %5142 = fsub fast float %5108, %5138
  %5143 = fsub fast float %5109, %5139
  %5144 = fsub fast float %5110, %5140
  %5145 = fmul fast float %5142, %200
  %5146 = fmul fast float %5143, %200
  %5147 = fmul fast float %5144, %200
  %5148 = fadd fast float %5145, %5138
  %5149 = fadd fast float %5146, %5139
  %5150 = fadd fast float %5147, %5140
  %5151 = fsub fast float %5124, %5141
  %5152 = fmul fast float %5151, %200
  %5153 = fadd fast float %5152, %5141
  %5154 = fadd fast float %5123, 0xBFB99999A0000000
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, 0x3FF1C71C80000000
  %5157 = call float @dx.op.binary.f32(i32 36, float %5123, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5158 = fsub fast float 1.000000e+00, %5156
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = fmul fast float %5148, %5159
  %5161 = fmul fast float %5149, %5159
  %5162 = fmul fast float %5150, %5159
  %5163 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = fmul fast float %5148, %5156
  %5167 = fmul fast float %5149, %5156
  %5168 = fmul fast float %5150, %5156
  %5169 = fadd fast float %5166, %5157
  %5170 = fadd fast float %5167, %5157
  %5171 = fadd fast float %5168, %5157
  %5172 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5173 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5177 = extractvalue %dx.types.ResRet.i32 %5176, 0
  %5178 = and i32 %5177, 1
  %5179 = icmp eq i32 %5178, 0
  br i1 %5179, label %5194, label %5180

; <label>:5180                                    ; preds = %5107
  %5181 = call float @dx.op.binary.f32(i32 35, float %5164, float %5165)  ; FMax(a,b)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5163, float %5181)  ; FMax(a,b)
  %5183 = fcmp fast ogt float %5182, 0.000000e+00
  %5184 = bitcast float %5182 to i32
  %5185 = sub nsw i32 2129859010, %5184
  %5186 = bitcast i32 %5185 to float
  %5187 = select i1 %5183, float %5186, float 0.000000e+00
  %5188 = fmul fast float %5163, %5117
  %5189 = fmul fast float %5164, %5118
  %5190 = fmul fast float %5165, %5119
  %5191 = fmul fast float %5188, %5187
  %5192 = fmul fast float %5189, %5187
  %5193 = fmul fast float %5190, %5187
  br label %5194

; <label>:5194                                    ; preds = %5180, %5107
  %5195 = phi float [ %5191, %5180 ], [ %5117, %5107 ]
  %5196 = phi float [ %5192, %5180 ], [ %5118, %5107 ]
  %5197 = phi float [ %5193, %5180 ], [ %5119, %5107 ]
  %5198 = call float @dx.op.binary.f32(i32 36, float %5114, float 1.270000e+02)  ; FMin(a,b)
  %5199 = call float @dx.op.binary.f32(i32 36, float %5115, float 1.270000e+02)  ; FMin(a,b)
  %5200 = call float @dx.op.binary.f32(i32 36, float %5116, float 1.270000e+02)  ; FMin(a,b)
  %5201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.i32 %5201, 3
  %5203 = and i32 %5202, 8
  %5204 = icmp ne i32 %5203, 0
  %5205 = call float @dx.op.binary.f32(i32 35, float %5163, float %5148)  ; FMax(a,b)
  %5206 = call float @dx.op.binary.f32(i32 35, float %5164, float %5148)  ; FMax(a,b)
  %5207 = call float @dx.op.binary.f32(i32 35, float %5165, float %5148)  ; FMax(a,b)
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5163, float %5164, float %5165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = select i1 %260, float %5148, float %5163
  %5210 = select i1 %260, float %5208, float %5164
  %5211 = select i1 %260, float 1.000000e+00, float %5165
  %5212 = select i1 %5204, float %5205, float %5209
  %5213 = select i1 %5204, float %5206, float %5210
  %5214 = select i1 %5204, float %5207, float %5211
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = select i1 %260, float %5215, float %5195
  %5217 = select i1 %260, float %5215, float %5196
  %5218 = select i1 %260, float %5215, float %5197
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5223 = fadd fast float %5220, %166
  %5224 = fadd fast float %5221, %167
  %5225 = fadd fast float %5222, %168
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5229 = fsub fast float %5223, %5227
  %5230 = fsub fast float %5224, %5228
  %5231 = fmul fast float %5229, %5229
  %5232 = fmul fast float %5230, %5230
  %5233 = fadd fast float %5231, %5232
  %5234 = call float @dx.op.unary.f32(i32 24, float %5233)  ; Sqrt(value)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5236 = fcmp fast olt float %5234, %5235
  br i1 %5236, label %5237, label %5304

; <label>:5237                                    ; preds = %5194
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5248 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5249 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5250 = fadd fast float %5247, %5223
  %5251 = fadd fast float %5248, %5224
  %5252 = fadd fast float %5249, %5225
  %5253 = fmul fast float %5250, %5239
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5241, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5243, float %5254)  ; FMad(a,b,c)
  %5256 = fmul fast float %5250, %5244
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5246, float %5257)  ; FMad(a,b,c)
  %5259 = fsub fast float %5255, %5247
  %5260 = fsub fast float %5258, %5248
  %5261 = fsub fast float %5259, %5227
  %5262 = fadd fast float %5261, %5235
  %5263 = fsub fast float %5260, %5228
  %5264 = fadd fast float %5263, %5235
  %5265 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5266 = fmul fast float %5262, %5265
  %5267 = fmul fast float %5264, %5265
  %5268 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5270 = fsub fast float 1.000000e+00, %5268
  %5271 = fsub fast float 1.000000e+00, %5269
  %5272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %5270, float %5271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = fcmp fast ugt float %5273, 0.000000e+00
  br i1 %5274, label %5275, label %5578

; <label>:5275                                    ; preds = %5237
  %5276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.f32 %5276, 2
  %5278 = fmul fast float %5277, %5273
  %5279 = extractvalue %dx.types.CBufRet.f32 %5276, 3
  %5280 = fadd fast float %5279, %5278
  %5281 = extractvalue %dx.types.CBufRet.f32 %5242, 2
  %5282 = fadd fast float %5280, %5249
  %5283 = fmul fast float %5255, %5243
  %5284 = call float @dx.op.tertiary.f32(i32 46, float %5258, float %5246, float %5283)  ; FMad(a,b,c)
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5282, float %5281, float %5284)  ; FMad(a,b,c)
  %5286 = fsub fast float %5285, %5249
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 2
  %5289 = fsub fast float %5286, %5288
  %5290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %5270, float %5271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %56, float %5270, float %5271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = fadd fast float %5295, %5291
  %5299 = fmul fast float %5298, 0x3F847AE140000000
  %5300 = fadd fast float %5296, %5292
  %5301 = fmul fast float %5300, 0x3F847AE140000000
  %5302 = fadd fast float %5297, %5293
  %5303 = fmul fast float %5302, 0x3F847AE140000000
  br label %5578

; <label>:5304                                    ; preds = %5194
  %5305 = and i32 %236, 1
  %5306 = icmp eq i32 %5305, 0
  br i1 %5306, label %5578, label %5307

; <label>:5307                                    ; preds = %5304
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5315 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5316 = extractvalue %dx.types.CBufRet.f32 %5312, 1
  %5317 = extractvalue %dx.types.CBufRet.f32 %5308, 3
  %5318 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5319 = extractvalue %dx.types.CBufRet.f32 %5312, 3
  %5320 = fadd fast float %5317, %5223
  %5321 = fadd fast float %5318, %5224
  %5322 = fadd fast float %5319, %5225
  %5323 = fmul fast float %5320, %5309
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5311, float %5323)  ; FMad(a,b,c)
  %5325 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5313, float %5324)  ; FMad(a,b,c)
  %5326 = fmul fast float %5320, %5314
  %5327 = call float @dx.op.tertiary.f32(i32 46, float %5321, float %5315, float %5326)  ; FMad(a,b,c)
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5322, float %5316, float %5327)  ; FMad(a,b,c)
  %5329 = fsub fast float %5325, %5317
  %5330 = fsub fast float %5328, %5318
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5335 = extractvalue %dx.types.CBufRet.f32 %5331, 3
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.i32 %5338, 0
  %5340 = extractvalue %dx.types.CBufRet.i32 %5338, 1
  %5341 = udiv i32 %5340, %5339
  %5342 = fsub fast float %5329, %5332
  %5343 = fsub fast float %5330, %5333
  %5344 = call float @dx.op.binary.f32(i32 35, float %5342, float 0.000000e+00)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float %5343, float 0.000000e+00)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 36, float %5344, float %5334)  ; FMin(a,b)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5345, float %5335)  ; FMin(a,b)
  %5348 = add i32 %5339, -1
  %5349 = add i32 %5341, -1
  %5350 = fmul fast float %5346, %5337
  %5351 = fmul fast float %5347, %5337
  %5352 = fptoui float %5350 to i32
  %5353 = fptoui float %5351 to i32
  %5354 = call i32 @dx.op.binary.i32(i32 40, i32 %5352, i32 %5348)  ; UMin(a,b)
  %5355 = call i32 @dx.op.binary.i32(i32 40, i32 %5353, i32 %5349)  ; UMin(a,b)
  %5356 = mul i32 %5355, %5339
  %5357 = add i32 %5356, %5354
  %5358 = shl i32 %5357, 2
  %5359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = icmp eq i32 %5360, -1
  br i1 %5361, label %5578, label %5362

; <label>:5362                                    ; preds = %5307
  %5363 = mul i32 %5360, 148
  %5364 = add i32 %5363, 4
  %5365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = add i32 %5363, 8
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = add i32 %5363, 36
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = add i32 %5363, 60
  %5374 = add i32 %5363, 92
  %5375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.i32 %5375, 0
  %5377 = add i32 %5363, 116
  %5378 = fsub fast float %5329, %5366
  %5379 = fsub fast float %5330, %5369
  %5380 = fmul fast float %5337, %5378
  %5381 = fmul fast float %5337, %5379
  %5382 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5383 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 2
  %5387 = call float @dx.op.unary.f32(i32 83, float %5382)  ; DerivCoarseX(value)
  %5388 = call float @dx.op.unary.f32(i32 83, float %5384)  ; DerivCoarseX(value)
  %5389 = call float @dx.op.unary.f32(i32 84, float %5382)  ; DerivCoarseY(value)
  %5390 = call float @dx.op.unary.f32(i32 84, float %5384)  ; DerivCoarseY(value)
  %5391 = fmul fast float %5387, %5386
  %5392 = fmul fast float %5388, %5386
  %5393 = fmul fast float %5389, %5386
  %5394 = fmul fast float %5390, %5386
  %5395 = call float @dx.op.dot2.f32(i32 54, float %5393, float %5394, float %5393, float %5394)  ; Dot2(ax,ay,bx,by)
  %5396 = call float @dx.op.dot2.f32(i32 54, float %5391, float %5392, float %5391, float %5392)  ; Dot2(ax,ay,bx,by)
  %5397 = call float @dx.op.binary.f32(i32 35, float %5396, float %5395)  ; FMax(a,b)
  %5398 = call float @dx.op.unary.f32(i32 23, float %5397)  ; Log(value)
  %5399 = fmul fast float %5398, 5.000000e-01
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5402 = fadd fast float %5401, %5399
  %5403 = call float @dx.op.binary.f32(i32 35, float %5402, float 0.000000e+00)  ; FMax(a,b)
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5406 = fadd fast float %5405, %5403
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 3
  %5409 = fadd fast float %5406, %5408
  %5410 = add i32 %5376, 0
  %5411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5410, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5412 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5411, i32 0)  ; GetDimensions(handle,mipLevel)
  %5413 = extractvalue %dx.types.Dimensions %5412, 0
  %5414 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5413)  ; FirstbitLo(value)
  %5415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.i32 %5415, 1
  %5417 = sub nsw i32 %5416, %5414
  %5418 = sitofp i32 %5417 to float
  %5419 = fsub fast float %5409, %5418
  %5420 = call float @dx.op.binary.f32(i32 35, float %5419, float 0.000000e+00)  ; FMax(a,b)
  %5421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5411, %dx.types.Handle %54, float %5382, float %5384, float %5372, float undef, i32 0, i32 0, i32 undef, float %5420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = fcmp ule float %5422, 0x3FE0101020000000
  %5424 = extractvalue %dx.types.CBufRet.i32 %5415, 0
  %5425 = and i32 %5424, 128
  %5426 = icmp ne i32 %5425, 0
  %5427 = and i1 %5423, %5426
  br i1 %5427, label %5578, label %5428

; <label>:5428                                    ; preds = %5362
  %5429 = add i32 %5363, 20
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = add i32 %5363, 24
  %5433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5432, i32 undef)  ; BufferLoad(srv,index,wot)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = add i32 %5363, 40
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = add i32 %5363, 96
  %5439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.i32 %5439, 0
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5443 = fmul fast float %5442, %5382
  %5444 = fmul fast float %5442, %5384
  %5445 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5446 = fadd fast float %5443, %5445
  %5447 = fadd fast float %5444, %5445
  %5448 = add i32 %5440, 0
  %5449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5450 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5449, i32 0)  ; GetDimensions(handle,mipLevel)
  %5451 = extractvalue %dx.types.Dimensions %5450, 0
  %5452 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5451)  ; FirstbitLo(value)
  %5453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.i32 %5453, 1
  %5455 = sub nsw i32 %5454, %5452
  %5456 = sitofp i32 %5455 to float
  %5457 = fsub fast float %5406, %5456
  %5458 = call float @dx.op.binary.f32(i32 35, float %5457, float 0.000000e+00)  ; FMax(a,b)
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5449, %dx.types.Handle %54, float %5446, float %5447, float %5437, float undef, i32 0, i32 0, i32 undef, float %5458)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = fmul fast float %5460, %5431
  %5462 = fadd fast float %5461, %5434
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.CBufRet.f32 %5463, 2
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 3
  %5471 = extractvalue %dx.types.CBufRet.f32 %5463, 3
  %5472 = fadd fast float %5468, %5329
  %5473 = fadd fast float %5470, %5330
  %5474 = fadd fast float %5462, %5471
  %5475 = fmul fast float %5472, %5464
  %5476 = call float @dx.op.tertiary.f32(i32 46, float %5473, float %5465, float %5475)  ; FMad(a,b,c)
  %5477 = call float @dx.op.tertiary.f32(i32 46, float %5474, float %5466, float %5476)  ; FMad(a,b,c)
  %5478 = fsub fast float %5477, %5471
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5481 = fsub fast float %5478, %5480
  %5482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5483 = extractvalue %dx.types.CBufRet.i32 %5482, 0
  %5484 = call i32 @dx.op.binary.i32(i32 40, i32 %5360, i32 %5483)  ; UMin(a,b)
  %5485 = mul i32 %5484, 36
  %5486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.i32 %5486, 0
  %5488 = add i32 %5485, 4
  %5489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5490 = extractvalue %dx.types.CBufRet.f32 %5489, 0
  %5491 = fmul fast float %5490, %5382
  %5492 = fmul fast float %5490, %5384
  %5493 = extractvalue %dx.types.CBufRet.f32 %5489, 1
  %5494 = fadd fast float %5491, %5493
  %5495 = fadd fast float %5492, %5493
  %5496 = icmp eq i32 %5487, 0
  br i1 %5496, label %5565, label %5497

; <label>:5497                                    ; preds = %5428
  br label %5498

; <label>:5498                                    ; preds = %5555, %5497
  %5499 = phi float [ %5556, %5555 ], [ 0.000000e+00, %5497 ]
  %5500 = phi float [ %5557, %5555 ], [ 0.000000e+00, %5497 ]
  %5501 = phi float [ %5558, %5555 ], [ 0.000000e+00, %5497 ]
  %5502 = phi float [ %5559, %5555 ], [ 0.000000e+00, %5497 ]
  %5503 = phi float [ %5560, %5555 ], [ 0.000000e+00, %5497 ]
  %5504 = phi float [ %5561, %5555 ], [ 0.000000e+00, %5497 ]
  %5505 = phi i32 [ %5562, %5555 ], [ 0, %5497 ]
  %5506 = shl i32 %5505, 2
  %5507 = add i32 %5373, %5506
  %5508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5507, i32 undef)  ; BufferLoad(srv,index,wot)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = add i32 %5377, %5506
  %5511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5510, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.i32 %5511, 0
  %5513 = add i32 %5512, 0
  %5514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5514, i32 0)  ; GetDimensions(handle,mipLevel)
  %5516 = extractvalue %dx.types.Dimensions %5515, 0
  %5517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5516)  ; FirstbitLo(value)
  %5518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.i32 %5518, 1
  %5520 = sub nsw i32 %5519, %5517
  %5521 = sitofp i32 %5520 to float
  %5522 = fsub fast float %5406, %5521
  %5523 = call float @dx.op.binary.f32(i32 35, float %5522, float 0.000000e+00)  ; FMax(a,b)
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5514, %dx.types.Handle %54, float %5494, float %5495, float %5509, float undef, i32 0, i32 0, i32 undef, float %5523)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = fcmp fast ogt float %5525, 0.000000e+00
  br i1 %5526, label %5527, label %5555

; <label>:5527                                    ; preds = %5498
  %5528 = add i32 %5488, %5506
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = and i32 %5530, 32767
  %5532 = mul nuw nsw i32 %5531, 928
  %5533 = add nuw nsw i32 %5532, 48
  %5534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = add nuw nsw i32 %5532, 60
  %5539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5538, i32 undef)  ; BufferLoad(srv,index,wot)
  %5540 = extractvalue %dx.types.ResRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.ResRet.f32 %5539, 1
  %5542 = extractvalue %dx.types.ResRet.f32 %5539, 2
  %5543 = fmul fast float %5535, %5525
  %5544 = fmul fast float %5536, %5525
  %5545 = fmul fast float %5537, %5525
  %5546 = fadd fast float %5543, %5499
  %5547 = fadd fast float %5544, %5500
  %5548 = fadd fast float %5545, %5501
  %5549 = fmul fast float %5540, %5525
  %5550 = fmul fast float %5541, %5525
  %5551 = fmul fast float %5542, %5525
  %5552 = fadd fast float %5549, %5502
  %5553 = fadd fast float %5550, %5503
  %5554 = fadd fast float %5551, %5504
  br label %5555

; <label>:5555                                    ; preds = %5527, %5498
  %5556 = phi float [ %5546, %5527 ], [ %5499, %5498 ]
  %5557 = phi float [ %5547, %5527 ], [ %5500, %5498 ]
  %5558 = phi float [ %5548, %5527 ], [ %5501, %5498 ]
  %5559 = phi float [ %5552, %5527 ], [ %5502, %5498 ]
  %5560 = phi float [ %5553, %5527 ], [ %5503, %5498 ]
  %5561 = phi float [ %5554, %5527 ], [ %5504, %5498 ]
  %5562 = add nuw i32 %5505, 1
  %5563 = icmp eq i32 %5562, %5487
  br i1 %5563, label %5564, label %5498

; <label>:5564                                    ; preds = %5555
  br label %5565

; <label>:5565                                    ; preds = %5564, %5428
  %5566 = phi float [ 0.000000e+00, %5428 ], [ %5556, %5564 ]
  %5567 = phi float [ 0.000000e+00, %5428 ], [ %5557, %5564 ]
  %5568 = phi float [ 0.000000e+00, %5428 ], [ %5558, %5564 ]
  %5569 = phi float [ 0.000000e+00, %5428 ], [ %5559, %5564 ]
  %5570 = phi float [ 0.000000e+00, %5428 ], [ %5560, %5564 ]
  %5571 = phi float [ 0.000000e+00, %5428 ], [ %5561, %5564 ]
  %5572 = fadd fast float %5569, %5566
  %5573 = fmul fast float %5572, 0x3F847AE140000000
  %5574 = fadd fast float %5570, %5567
  %5575 = fmul fast float %5574, 0x3F847AE140000000
  %5576 = fadd fast float %5571, %5568
  %5577 = fmul fast float %5576, 0x3F847AE140000000
  br label %5578

; <label>:5578                                    ; preds = %5565, %5362, %5307, %5304, %5275, %5237
  %5579 = phi float [ %5299, %5275 ], [ 0.000000e+00, %5237 ], [ %5573, %5565 ], [ 0.000000e+00, %5307 ], [ 0.000000e+00, %5362 ], [ 0.000000e+00, %5304 ]
  %5580 = phi float [ %5301, %5275 ], [ 0.000000e+00, %5237 ], [ %5575, %5565 ], [ 0.000000e+00, %5307 ], [ 0.000000e+00, %5362 ], [ 0.000000e+00, %5304 ]
  %5581 = phi float [ %5303, %5275 ], [ 0.000000e+00, %5237 ], [ %5577, %5565 ], [ 0.000000e+00, %5307 ], [ 0.000000e+00, %5362 ], [ 0.000000e+00, %5304 ]
  %5582 = phi float [ %5289, %5275 ], [ -1.310720e+05, %5237 ], [ %5481, %5565 ], [ -1.310720e+05, %5307 ], [ -1.310720e+05, %5362 ], [ -1.310720e+05, %5304 ]
  %5583 = phi i1 [ true, %5275 ], [ false, %5237 ], [ true, %5565 ], [ false, %5307 ], [ false, %5362 ], [ false, %5304 ]
  %5584 = and i32 %236, 3
  %5585 = icmp eq i32 %5584, 1
  %5586 = select i1 %5585, float 1.000000e+00, float 0.000000e+00
  %5587 = fsub fast float %5582, %168
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = select i1 %5583, float %5588, float 1.000000e+00
  %5590 = fmul fast float %5589, %5586
  %5591 = icmp eq i32 %5584, 3
  %5592 = select i1 %5591, float 1.000000e+00, float %5590
  %5593 = call float @dx.op.binary.f32(i32 35, float %5129, float %5592)  ; FMax(a,b)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fcmp fast une float %5594, 0.000000e+00
  %5596 = fsub fast float -0.000000e+00, %186
  %5597 = fsub fast float -0.000000e+00, %187
  %5598 = fsub fast float -0.000000e+00, %188
  br i1 %5595, label %5599, label %5761

; <label>:5599                                    ; preds = %5578
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = fmul fast float %5594, 2.500000e+00
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = fmul fast float %5594, 0x4013FFFFE0000000
  %5604 = fadd fast float %5603, 0xBFFFFFFFE0000000
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = fmul fast float %5594, 0x4004000020000000
  %5607 = fadd fast float %5606, 0xBFF8000040000000
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5610 = fmul fast float %5154, 1.000000e+01
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = fmul fast float %5611, 2.000000e+00
  %5613 = fsub fast float 3.000000e+00, %5612
  %5614 = fmul fast float %5611, %5611
  %5615 = fmul fast float %5614, %5613
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = fsub fast float 0x3FE3333340000000, %5175
  %5618 = fmul fast float %5617, 0x400AAAAAA0000000
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fmul fast float %5616, %5619
  %5621 = fmul fast float %5212, 0x3FEA2B8620000000
  %5622 = fmul fast float %5213, 0x3FEA2B8620000000
  %5623 = fmul fast float %5214, 0x3FEA2B8620000000
  %5624 = fadd fast float %5621, 0x3FC81DFBA0000000
  %5625 = fmul fast float %5624, %5212
  %5626 = fadd fast float %5625, 0x3F910E6020000000
  %5627 = fadd fast float %5622, 0x3FC81DFBA0000000
  %5628 = fmul fast float %5627, %5213
  %5629 = fadd fast float %5628, 0x3F910E6020000000
  %5630 = fadd fast float %5623, 0x3FC81DFBA0000000
  %5631 = fmul fast float %5630, %5214
  %5632 = fadd fast float %5631, 0x3F910E6020000000
  %5633 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5634 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5635 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5636 = fsub fast float %5633, %5212
  %5637 = fsub fast float %5634, %5213
  %5638 = fsub fast float %5635, %5214
  %5639 = fmul fast float %5636, %5609
  %5640 = fmul fast float %5639, %5620
  %5641 = fmul fast float %5637, %5609
  %5642 = fmul fast float %5641, %5620
  %5643 = fmul fast float %5638, %5609
  %5644 = fmul fast float %5643, %5620
  %5645 = fadd fast float %5640, %5212
  %5646 = fadd fast float %5642, %5213
  %5647 = fadd fast float %5644, %5214
  %5648 = fmul fast float %5126, %5126
  %5649 = fmul fast float %5648, %5648
  %5650 = fadd fast float %5605, 1.000000e+00
  %5651 = fsub fast float %5650, %5620
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = fsub fast float 1.000000e+00, %5649
  %5656 = call float @dx.op.binary.f32(i32 36, float %5652, float %5655)  ; FMin(a,b)
  %5657 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5658 = call float @dx.op.binary.f32(i32 35, float %5656, float %5657)  ; FMax(a,b)
  %5659 = fadd fast float %5654, 0xBFE4CCCCC0000000
  %5660 = fmul fast float %5659, 0x4006DB6DA0000000
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fmul fast float %5661, 2.000000e+00
  %5663 = fsub fast float 3.000000e+00, %5662
  %5664 = bitcast float %5172 to i32
  %5665 = ashr i32 %5664, 1
  %5666 = add nsw i32 %5665, 532487669
  %5667 = bitcast i32 %5666 to float
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5671, 2.000000e+00
  %5673 = bitcast float %5173 to i32
  %5674 = ashr i32 %5673, 1
  %5675 = add nsw i32 %5674, 532487669
  %5676 = bitcast i32 %5675 to float
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5680, 2.000000e+00
  %5682 = bitcast float %5174 to i32
  %5683 = ashr i32 %5682, 1
  %5684 = add nsw i32 %5683, 532487669
  %5685 = bitcast i32 %5684 to float
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = bitcast float %5686 to i32
  %5688 = sub nsw i32 2129859010, %5687
  %5689 = bitcast i32 %5688 to float
  %5690 = fmul fast float %5689, 2.000000e+00
  %5691 = fsub fast float 0x4002A9FBE0000000, %5672
  %5692 = fadd fast float %5672, 0x3FD54FDF00000000
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = fmul fast float %5695, %5691
  %5697 = fmul fast float %5696, %5696
  %5698 = fsub fast float 0x4002A9FBE0000000, %5681
  %5699 = fadd fast float %5681, 0x3FD54FDF00000000
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = fmul fast float %5702, %5698
  %5704 = fmul fast float %5703, %5703
  %5705 = fsub fast float 0x4002A9FBE0000000, %5690
  %5706 = fadd fast float %5690, 0x3FD54FDF00000000
  %5707 = bitcast float %5706 to i32
  %5708 = sub nsw i32 2129859010, %5707
  %5709 = bitcast i32 %5708 to float
  %5710 = fmul fast float %5709, %5705
  %5711 = fmul fast float %5710, %5710
  %5712 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5697)  ; FMax(a,b)
  %5713 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5704)  ; FMax(a,b)
  %5714 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5711)  ; FMax(a,b)
  %5715 = fsub fast float 1.000000e+00, %5600
  %5716 = fadd fast float %5715, %5616
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fsub fast float 1.000000e+00, %5592
  %5719 = fmul fast float %5658, %5718
  %5720 = fmul fast float %5661, %5661
  %5721 = fmul fast float %5720, %5719
  %5722 = fmul fast float %5721, %5663
  %5723 = fmul fast float %5718, 0xBFE99999A0000000
  %5724 = fmul fast float %5723, %5609
  %5725 = fmul fast float %5724, %5620
  %5726 = fadd fast float %5725, 1.000000e+00
  %5727 = fadd fast float %5175, -1.000000e+00
  %5728 = fmul fast float %5726, %5727
  %5729 = fadd fast float %5728, 1.000000e+00
  %5730 = fsub fast float %5712, %5172
  %5731 = fsub fast float %5713, %5173
  %5732 = fsub fast float %5714, %5174
  %5733 = fmul fast float %5722, %5730
  %5734 = fmul fast float %5722, %5731
  %5735 = fmul fast float %5722, %5732
  %5736 = fadd fast float %5733, %5172
  %5737 = fadd fast float %5734, %5173
  %5738 = fadd fast float %5735, %5174
  %5739 = fsub fast float %118, %5120
  %5740 = fsub fast float %119, %5121
  %5741 = fsub fast float %120, %5122
  %5742 = fmul fast float %5722, %5739
  %5743 = fmul fast float %5722, %5740
  %5744 = fmul fast float %5722, %5741
  %5745 = fadd fast float %5742, %5120
  %5746 = fadd fast float %5743, %5121
  %5747 = fadd fast float %5744, %5122
  %5748 = fmul fast float %5722, %5717
  %5749 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = fmul fast float %5748, %5750
  %5752 = fadd fast float %5751, %5749
  %5753 = fsub fast float 1.000000e+00, %5126
  %5754 = fmul fast float %5722, %5753
  %5755 = fadd fast float %5754, %5126
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5745, float %5746, float %5747, float %5745, float %5746, float %5747)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 25, float %5756)  ; Rsqrt(value)
  %5758 = fmul fast float %5745, %5757
  %5759 = fmul fast float %5746, %5757
  %5760 = fmul fast float %5747, %5757
  br label %5761

; <label>:5761                                    ; preds = %5599, %5578
  %5762 = phi float [ %5645, %5599 ], [ %5212, %5578 ]
  %5763 = phi float [ %5646, %5599 ], [ %5213, %5578 ]
  %5764 = phi float [ %5647, %5599 ], [ %5214, %5578 ]
  %5765 = phi float [ %5736, %5599 ], [ %5172, %5578 ]
  %5766 = phi float [ %5737, %5599 ], [ %5173, %5578 ]
  %5767 = phi float [ %5738, %5599 ], [ %5174, %5578 ]
  %5768 = phi float [ %5758, %5599 ], [ %5120, %5578 ]
  %5769 = phi float [ %5759, %5599 ], [ %5121, %5578 ]
  %5770 = phi float [ %5760, %5599 ], [ %5122, %5578 ]
  %5771 = phi float [ %5752, %5599 ], [ %5175, %5578 ]
  %5772 = phi float [ %5755, %5599 ], [ %5126, %5578 ]
  %5773 = fsub fast float -0.000000e+00, %168
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5777 = fmul fast float %136, %5775
  %5778 = fmul fast float %138, %5776
  %5779 = fsub fast float 1.000000e+00, %5777
  %5780 = fsub fast float 1.000000e+00, %5778
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5783 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5784 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5785 = fmul fast float %5779, %5782
  %5786 = fmul fast float %5779, %5783
  %5787 = fmul fast float %5779, %5784
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5792 = fmul fast float %5780, %5789
  %5793 = fmul fast float %5780, %5790
  %5794 = fmul fast float %5780, %5791
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5799 = fadd fast float %5792, %5796
  %5800 = fadd fast float %5799, %5785
  %5801 = fadd fast float %5793, %5797
  %5802 = fadd fast float %5801, %5786
  %5803 = fadd fast float %5794, %5798
  %5804 = fadd fast float %5803, %5787
  %5805 = fmul fast float %5800, %99
  %5806 = fmul fast float %5802, %99
  %5807 = fmul fast float %5804, %99
  %5808 = select i1 %260, float 0.000000e+00, float %5767
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %5596, float %5597, float %5598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = fmul fast float %5811, 2.000000e+00
  %5813 = fmul fast float %5812, %5768
  %5814 = fmul fast float %5812, %5769
  %5815 = fmul fast float %5812, %5770
  %5816 = fsub fast float %186, %5813
  %5817 = fsub fast float %187, %5814
  %5818 = fsub fast float %188, %5815
  %5819 = call float @dx.op.binary.f32(i32 36, float %5772, float 1.000000e+00)  ; FMin(a,b)
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = bitcast float %5820 to i32
  %5822 = ashr i32 %5821, 1
  %5823 = add nsw i32 %5822, 532487669
  %5824 = bitcast i32 %5823 to float
  %5825 = fsub fast float 1.000000e+00, %5771
  %5826 = call float @dx.op.binary.f32(i32 35, float %5825, float 0x3F847AE140000000)  ; FMax(a,b)
  %5827 = fmul fast float %5826, %5826
  %5828 = fmul fast float %5827, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %56, float %5824, float %5828, float %5829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = fsub fast float 1.000000e+00, %5772
  %5833 = bitcast float %5832 to i32
  %5834 = sub nsw i32 2129859010, %5833
  %5835 = bitcast i32 %5834 to float
  %5836 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fmul fast float %5836, 0x3FD20DD760000000
  %5838 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5839 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fcmp fast oeq float %5839, 0.000000e+00
  %5841 = fcmp fast oeq float %5838, 0.000000e+00
  %5842 = or i1 %5841, %5840
  br i1 %5842, label %5872, label %5843

; <label>:5843                                    ; preds = %5761
  %5844 = fsub fast float -0.000000e+00, %82
  %5845 = fsub fast float -0.000000e+00, %80
  %5846 = call float @dx.op.unary.f32(i32 24, float %5839)  ; Sqrt(value)
  %5847 = fdiv fast float %5846, %5838
  %5848 = fcmp fast ogt float %5847, 0x3FFB6F8900000000
  %5849 = select i1 %5848, float 0x3FFB6F8900000000, float %5847
  %5850 = fmul fast float %5849, 0x3FE8A23460000000
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = call float @dx.op.binary.f32(i32 35, float %5849, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5853 = fmul fast float %5851, %5838
  %5854 = fmul fast float %5852, 0x3FF279A740000000
  %5855 = fadd fast float %5854, -1.000000e+00
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %81, float %5844, float %5845, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.unary.f32(i32 25, float %5856)  ; Rsqrt(value)
  %5858 = fmul fast float %5857, %5844
  %5859 = fmul fast float %5857, %5845
  %5860 = fmul fast float %5857, %81
  %5861 = fmul fast float %5855, %5855
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = fmul fast float %5852, 0x40005F8BE0000000
  %5864 = fsub fast float 0x400C5BF8A0000000, %5863
  %5865 = fdiv fast float %5853, %5864
  %5866 = fmul fast float %5865, 0x3FEE31C3C0000000
  %5867 = fmul fast float %5866, %5862
  %5868 = fmul fast float %5852, 0x3FDACB7480000000
  %5869 = fadd fast float %5868, 0xBFD7347680000000
  %5870 = fmul fast float %5869, %5865
  %5871 = fmul fast float %5870, %5862
  br label %5872

; <label>:5872                                    ; preds = %5843, %5761
  %5873 = phi float [ %5858, %5843 ], [ 0.000000e+00, %5761 ]
  %5874 = phi float [ %5859, %5843 ], [ 0.000000e+00, %5761 ]
  %5875 = phi float [ %5860, %5843 ], [ 0.000000e+00, %5761 ]
  %5876 = phi float [ %5867, %5843 ], [ 0.000000e+00, %5761 ]
  %5877 = phi float [ %5871, %5843 ], [ 0.000000e+00, %5761 ]
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = fmul fast float %5878, %5878
  %5880 = fmul fast float %5879, 0x3FEE471020000000
  %5881 = fadd fast float %5880, 0xBFD42F6020000000
  %5882 = fmul fast float %5838, 0x3FD20DD760000000
  %5883 = fmul fast float %5881, %5877
  %5884 = fmul fast float %5876, 0x3FDF454380000000
  %5885 = fmul fast float %5884, %5878
  %5886 = fadd fast float %5885, %5882
  %5887 = fadd fast float %5886, %5883
  %5888 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = fmul fast float %5888, 0x3FDF454380000000
  %5890 = fmul fast float %5888, %5888
  %5891 = fmul fast float %5890, 0x3FEE471020000000
  %5892 = fadd fast float %5891, 0xBFD42F6020000000
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5838, float %5876, float %5877, float 0x3FD20DD760000000, float %5889, float %5892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5895 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = fcmp fast oeq float %5895, 0.000000e+00
  %5897 = fcmp fast oeq float %5894, 0.000000e+00
  %5898 = or i1 %5897, %5896
  br i1 %5898, label %5928, label %5899

; <label>:5899                                    ; preds = %5872
  %5900 = fsub fast float -0.000000e+00, %78
  %5901 = fsub fast float -0.000000e+00, %76
  %5902 = call float @dx.op.unary.f32(i32 24, float %5895)  ; Sqrt(value)
  %5903 = fdiv fast float %5902, %5894
  %5904 = fcmp fast ogt float %5903, 0x3FFB6F8900000000
  %5905 = select i1 %5904, float 0x3FFB6F8900000000, float %5903
  %5906 = fmul fast float %5905, 0x3FE8A23460000000
  %5907 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5905, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5909 = fmul fast float %5907, %5894
  %5910 = fmul fast float %5908, 0x3FF279A740000000
  %5911 = fadd fast float %5910, -1.000000e+00
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %77, float %5900, float %5901, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.unary.f32(i32 25, float %5912)  ; Rsqrt(value)
  %5914 = fmul fast float %5913, %5900
  %5915 = fmul fast float %5913, %5901
  %5916 = fmul fast float %5913, %77
  %5917 = fmul fast float %5911, %5911
  %5918 = fsub fast float 1.000000e+00, %5917
  %5919 = fmul fast float %5908, 0x40005F8BE0000000
  %5920 = fsub fast float 0x400C5BF8A0000000, %5919
  %5921 = fdiv fast float %5909, %5920
  %5922 = fmul fast float %5921, 0x3FEE31C3C0000000
  %5923 = fmul fast float %5922, %5918
  %5924 = fmul fast float %5908, 0x3FDACB7480000000
  %5925 = fadd fast float %5924, 0xBFD7347680000000
  %5926 = fmul fast float %5925, %5921
  %5927 = fmul fast float %5926, %5918
  br label %5928

; <label>:5928                                    ; preds = %5899, %5872
  %5929 = phi float [ %5914, %5899 ], [ 0.000000e+00, %5872 ]
  %5930 = phi float [ %5915, %5899 ], [ 0.000000e+00, %5872 ]
  %5931 = phi float [ %5916, %5899 ], [ 0.000000e+00, %5872 ]
  %5932 = phi float [ %5923, %5899 ], [ 0.000000e+00, %5872 ]
  %5933 = phi float [ %5927, %5899 ], [ 0.000000e+00, %5872 ]
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5930, float %5931, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fmul fast float %5934, %5934
  %5936 = fmul fast float %5935, 0x3FEE471020000000
  %5937 = fadd fast float %5936, 0xBFD42F6020000000
  %5938 = fmul fast float %5894, 0x3FD20DD760000000
  %5939 = fmul fast float %5937, %5933
  %5940 = fmul fast float %5932, 0x3FDF454380000000
  %5941 = fmul fast float %5940, %5934
  %5942 = fadd fast float %5941, %5938
  %5943 = fadd fast float %5942, %5939
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5930, float %5931, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fmul fast float %5944, 0x3FDF454380000000
  %5946 = fmul fast float %5944, %5944
  %5947 = fmul fast float %5946, 0x3FEE471020000000
  %5948 = fadd fast float %5947, 0xBFD42F6020000000
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5932, float %5933, float 0x3FD20DD760000000, float %5945, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5951 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = fcmp fast oeq float %5951, 0.000000e+00
  %5953 = fcmp fast oeq float %5950, 0.000000e+00
  %5954 = or i1 %5953, %5952
  br i1 %5954, label %5984, label %5955

; <label>:5955                                    ; preds = %5928
  %5956 = fsub fast float -0.000000e+00, %74
  %5957 = fsub fast float -0.000000e+00, %72
  %5958 = call float @dx.op.unary.f32(i32 24, float %5951)  ; Sqrt(value)
  %5959 = fdiv fast float %5958, %5950
  %5960 = fcmp fast ogt float %5959, 0x3FFB6F8900000000
  %5961 = select i1 %5960, float 0x3FFB6F8900000000, float %5959
  %5962 = fmul fast float %5961, 0x3FE8A23460000000
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5961, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5965 = fmul fast float %5963, %5950
  %5966 = fmul fast float %5964, 0x3FF279A740000000
  %5967 = fadd fast float %5966, -1.000000e+00
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5956, float %5957, float %73, float %5956, float %5957, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = call float @dx.op.unary.f32(i32 25, float %5968)  ; Rsqrt(value)
  %5970 = fmul fast float %5969, %5956
  %5971 = fmul fast float %5969, %5957
  %5972 = fmul fast float %5969, %73
  %5973 = fmul fast float %5967, %5967
  %5974 = fsub fast float 1.000000e+00, %5973
  %5975 = fmul fast float %5964, 0x40005F8BE0000000
  %5976 = fsub fast float 0x400C5BF8A0000000, %5975
  %5977 = fdiv fast float %5965, %5976
  %5978 = fmul fast float %5977, 0x3FEE31C3C0000000
  %5979 = fmul fast float %5978, %5974
  %5980 = fmul fast float %5964, 0x3FDACB7480000000
  %5981 = fadd fast float %5980, 0xBFD7347680000000
  %5982 = fmul fast float %5981, %5977
  %5983 = fmul fast float %5982, %5974
  br label %5984

; <label>:5984                                    ; preds = %5955, %5928
  %5985 = phi float [ %5970, %5955 ], [ 0.000000e+00, %5928 ]
  %5986 = phi float [ %5971, %5955 ], [ 0.000000e+00, %5928 ]
  %5987 = phi float [ %5972, %5955 ], [ 0.000000e+00, %5928 ]
  %5988 = phi float [ %5979, %5955 ], [ 0.000000e+00, %5928 ]
  %5989 = phi float [ %5983, %5955 ], [ 0.000000e+00, %5928 ]
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = fmul fast float %5990, %5990
  %5992 = fmul fast float %5991, 0x3FEE471020000000
  %5993 = fadd fast float %5992, 0xBFD42F6020000000
  %5994 = fmul fast float %5950, 0x3FD20DD760000000
  %5995 = fmul fast float %5993, %5989
  %5996 = fmul fast float %5988, 0x3FDF454380000000
  %5997 = fmul fast float %5996, %5990
  %5998 = fadd fast float %5997, %5994
  %5999 = fadd fast float %5998, %5995
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %5816, float %5817, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fmul fast float %6000, 0x3FDF454380000000
  %6002 = fmul fast float %6000, %6000
  %6003 = fmul fast float %6002, 0x3FEE471020000000
  %6004 = fadd fast float %6003, 0xBFD42F6020000000
  %6005 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5988, float %5989, float 0x3FD20DD760000000, float %6001, float %6004)  ; Dot3(ax,ay,az,bx,by,bz)
  %6006 = call float @dx.op.binary.f32(i32 35, float %5887, float 0.000000e+00)  ; FMax(a,b)
  %6007 = call float @dx.op.binary.f32(i32 35, float %5943, float 0.000000e+00)  ; FMax(a,b)
  %6008 = call float @dx.op.binary.f32(i32 35, float %5999, float 0.000000e+00)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 35, float %5893, float 0.000000e+00)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 35, float %5949, float 0.000000e+00)  ; FMax(a,b)
  %6011 = call float @dx.op.binary.f32(i32 35, float %6005, float 0.000000e+00)  ; FMax(a,b)
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6014 = call float @dx.op.binary.f32(i32 36, float %5762, float %6013)  ; FMin(a,b)
  %6015 = fmul fast float %6014, %5820
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = bitcast float %6016 to i32
  %6018 = sub nsw i32 2129859010, %6017
  %6019 = bitcast i32 %6018 to float
  %6020 = call float @dx.op.binary.f32(i32 36, float %5763, float %6013)  ; FMin(a,b)
  %6021 = fmul fast float %6020, %5820
  %6022 = fsub fast float 1.000000e+00, %6021
  %6023 = bitcast float %6022 to i32
  %6024 = sub nsw i32 2129859010, %6023
  %6025 = bitcast i32 %6024 to float
  %6026 = call float @dx.op.binary.f32(i32 36, float %5764, float %6013)  ; FMin(a,b)
  %6027 = fmul fast float %6026, %5820
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = bitcast float %6028 to i32
  %6030 = sub nsw i32 2129859010, %6029
  %6031 = bitcast i32 %6030 to float
  %6032 = fmul fast float %6006, %5819
  %6033 = fmul fast float %6032, %6019
  %6034 = fmul fast float %6007, %5819
  %6035 = fmul fast float %6034, %6025
  %6036 = fmul fast float %6008, %5819
  %6037 = fmul fast float %6036, %6031
  %6038 = call float @dx.op.binary.f32(i32 36, float %5765, float %6013)  ; FMin(a,b)
  %6039 = fmul fast float %6038, %5820
  %6040 = fsub fast float 1.000000e+00, %6039
  %6041 = bitcast float %6040 to i32
  %6042 = sub nsw i32 2129859010, %6041
  %6043 = bitcast i32 %6042 to float
  %6044 = call float @dx.op.binary.f32(i32 36, float %5766, float %6013)  ; FMin(a,b)
  %6045 = fmul fast float %6044, %5820
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = bitcast float %6046 to i32
  %6048 = sub nsw i32 2129859010, %6047
  %6049 = bitcast i32 %6048 to float
  %6050 = call float @dx.op.binary.f32(i32 36, float %5808, float %6013)  ; FMin(a,b)
  %6051 = fmul fast float %6050, %5820
  %6052 = fsub fast float 1.000000e+00, %6051
  %6053 = bitcast float %6052 to i32
  %6054 = sub nsw i32 2129859010, %6053
  %6055 = bitcast i32 %6054 to float
  %6056 = fmul fast float %6009, %5819
  %6057 = fmul fast float %6056, %6043
  %6058 = fmul fast float %6010, %5819
  %6059 = fmul fast float %6058, %6049
  %6060 = fmul fast float %6011, %5819
  %6061 = fmul fast float %6060, %6055
  %6062 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6035, float %6037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = select i1 %260, float 0.000000e+00, float %6033
  %6064 = select i1 %260, float %6062, float %6035
  %6065 = select i1 %260, float 0.000000e+00, float %6037
  %6066 = call float @dx.op.dot3.f32(i32 55, float %6057, float %6059, float %6061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = select i1 %260, float 0.000000e+00, float %6057
  %6068 = select i1 %260, float %6066, float %6059
  %6069 = select i1 %260, float 0.000000e+00, float %6061
  %6070 = fmul fast float %4464, %4464
  %6071 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6072 = fmul fast float %5810, 9.843750e-01
  %6073 = fmul fast float %5771, 9.843750e-01
  %6074 = fadd fast float %6072, 7.812500e-03
  %6075 = fadd fast float %6073, 7.812500e-03
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %6074, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6080 = extractvalue %dx.types.ResRet.f32 %6076, 3
  %6081 = fsub fast float 1.000000e+00, %6071
  %6082 = fsub fast float %6079, %6077
  %6083 = fsub fast float %6080, %6078
  %6084 = fmul fast float %6082, %6081
  %6085 = fmul fast float %6083, %6081
  %6086 = fadd fast float %6084, %6077
  %6087 = fadd fast float %6085, %6078
  %6088 = fmul fast float %6086, %5765
  %6089 = fmul fast float %6086, %5766
  %6090 = fmul fast float %6086, %5808
  %6091 = fadd fast float %6088, %6087
  %6092 = fadd fast float %6089, %6087
  %6093 = fadd fast float %6090, %6087
  %6094 = fcmp fast ogt float %5127, 0.000000e+00
  br i1 %6094, label %6095, label %6121

; <label>:6095                                    ; preds = %5984
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %5810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = fadd fast float %6097, -5.000000e-01
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fsub fast float 1.000000e+00, %5765
  %6104 = fsub fast float 1.000000e+00, %5766
  %6105 = fsub fast float 1.000000e+00, %5808
  %6106 = fmul fast float %5765, 4.000000e+00
  %6107 = fmul fast float %6106, %6103
  %6108 = fmul fast float %6107, %6100
  %6109 = fmul fast float %5766, 4.000000e+00
  %6110 = fmul fast float %6109, %6104
  %6111 = fmul fast float %6110, %6101
  %6112 = fmul fast float %5808, 4.000000e+00
  %6113 = fmul fast float %6112, %6105
  %6114 = fmul fast float %6113, %6102
  %6115 = fadd fast float %6108, %6091
  %6116 = fadd fast float %6111, %6092
  %6117 = fadd fast float %6114, %6093
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  br label %6121

; <label>:6121                                    ; preds = %6095, %5984
  %6122 = phi float [ %6118, %6095 ], [ %6091, %5984 ]
  %6123 = phi float [ %6119, %6095 ], [ %6092, %5984 ]
  %6124 = phi float [ %6120, %6095 ], [ %6093, %5984 ]
  %6125 = call float @dx.op.binary.f32(i32 35, float %6123, float %6124)  ; FMax(a,b)
  %6126 = call float @dx.op.binary.f32(i32 35, float %6122, float %6125)  ; FMax(a,b)
  %6127 = fsub fast float 1.000000e+00, %6126
  %6128 = fmul fast float %6126, %5771
  %6129 = fadd fast float %6128, %5771
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = extractvalue %dx.types.CBufRet.f32 %6130, 3
  %6133 = fmul fast float %6129, %6131
  %6134 = fadd fast float %6133, %6132
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = fsub fast float 1.000000e+00, %5831
  %6137 = fadd fast float %6136, %6135
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = fcmp fast olt float %6138, 1.000000e+00
  br i1 %6139, label %6140, label %6616

; <label>:6140                                    ; preds = %6121
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6144 = fmul fast float %6142, %111
  %6145 = fmul fast float %6143, %112
  %6146 = fptoui float %6144 to i32
  %6147 = fptoui float %6145 to i32
  %6148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6149 = extractvalue %dx.types.CBufRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.CBufRet.f32 %6148, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6148, 3
  %6152 = fadd fast float %99, -4.000000e+00
  %6153 = call float @dx.op.binary.f32(i32 35, float %6152, float 0.000000e+00)  ; FMax(a,b)
  %6154 = fadd fast float %6153, %6149
  %6155 = fmul fast float %6154, %6150
  %6156 = call float @dx.op.unary.f32(i32 23, float %6155)  ; Log(value)
  %6157 = fmul fast float %6156, %6151
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6160 = fmul fast float %6157, %6159
  %6161 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.i32 %6162, 1
  %6164 = add i32 %6163, -1
  %6165 = uitofp i32 %6163 to float
  %6166 = fmul fast float %6165, %6161
  %6167 = fptoui float %6166 to i32
  %6168 = call i32 @dx.op.binary.i32(i32 40, i32 %6167, i32 %6164)  ; UMin(a,b)
  %6169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.i32 %6169, 2
  %6171 = extractvalue %dx.types.CBufRet.i32 %6169, 3
  %6172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6147, i32 %6170, i32 %6146)  ; UMad(a,b,c)
  %6173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6168, i32 %6171, i32 %6172)  ; UMad(a,b,c)
  %6174 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6175 = fptoui float %6174 to i32
  %6176 = lshr i32 %6175, 5
  %6177 = call i32 @dx.op.binary.i32(i32 40, i32 %6176, i32 8191)  ; UMin(a,b)
  %6178 = fsub fast float %5582, %168
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = fcmp fast ogt float %6179, 0.000000e+00
  %6181 = fcmp fast ogt float %5818, 0.000000e+00
  %6182 = and i1 %6181, %6180
  br i1 %6182, label %6183, label %6212

; <label>:6183                                    ; preds = %6140
  %6184 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %5818, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = call float @dx.op.binary.f32(i32 35, float %6184, float -1.000000e+00)  ; FMax(a,b)
  %6186 = call float @dx.op.binary.f32(i32 36, float %6185, float 1.000000e+00)  ; FMin(a,b)
  %6187 = fmul fast float %6186, %6186
  %6188 = fsub fast float 1.000000e+00, %6187
  %6189 = fmul fast float %6188, 0x3FFC6E2300000000
  %6190 = fsub fast float 1.000000e+00, %6189
  %6191 = fcmp fast ogt float %6190, 0.000000e+00
  %6192 = call float @dx.op.unary.f32(i32 24, float %6190)  ; Sqrt(value)
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = call float @dx.op.unary.f32(i32 23, float %6193)  ; Log(value)
  %6195 = fmul fast float %6194, 5.000000e+00
  %6196 = call float @dx.op.unary.f32(i32 21, float %6195)  ; Exp(value)
  %6197 = fmul fast float %6196, 0x3FEF591A60000000
  %6198 = fadd fast float %6197, 0x3F94DCB540000000
  %6199 = select i1 %6191, float %6198, float 1.000000e+00
  %6200 = fcmp fast oge float %6199, 1.000000e+00
  %6201 = fmul fast float %6184, 2.000000e+00
  %6202 = fadd fast float %6201, %5818
  %6203 = select i1 %6200, float %6202, float %5818
  %6204 = fsub fast float %6203, %5818
  %6205 = fmul fast float %6204, %6179
  %6206 = fadd fast float %6205, %5818
  %6207 = call float @dx.op.dot3.f32(i32 55, float %5816, float %5817, float %6206, float %5816, float %5817, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = call float @dx.op.unary.f32(i32 25, float %6207)  ; Rsqrt(value)
  %6209 = fmul fast float %6208, %5816
  %6210 = fmul fast float %6208, %5817
  %6211 = fmul fast float %6206, %6208
  br label %6212

; <label>:6212                                    ; preds = %6183, %6140
  %6213 = phi float [ %6209, %6183 ], [ %5816, %6140 ]
  %6214 = phi float [ %6210, %6183 ], [ %5817, %6140 ]
  %6215 = phi float [ %6211, %6183 ], [ %5818, %6140 ]
  %6216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.i32 %6216, 2
  %6218 = add nsw i32 %6217, -1
  %6219 = call i32 @dx.op.binary.i32(i32 37, i32 %6218, i32 0)  ; IMax(a,b)
  %6220 = shl i32 %6177, 2
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6220, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = lshr i32 %6222, 16
  %6224 = and i32 %6222, 65535
  %6225 = lshr i32 %6222, 21
  %6226 = lshr i32 %6224, 5
  %6227 = call i32 @dx.op.binary.i32(i32 40, i32 %6226, i32 %6219)  ; UMin(a,b)
  %6228 = icmp ugt i32 %6225, %6227
  br i1 %6228, label %6592, label %6229

; <label>:6229                                    ; preds = %6212
  br label %6230

; <label>:6230                                    ; preds = %6584, %6229
  %6231 = phi float [ %6585, %6584 ], [ 0.000000e+00, %6229 ]
  %6232 = phi float [ %6586, %6584 ], [ 0.000000e+00, %6229 ]
  %6233 = phi float [ %6587, %6584 ], [ 0.000000e+00, %6229 ]
  %6234 = phi float [ %6588, %6584 ], [ 1.000000e+00, %6229 ]
  %6235 = phi i32 [ %6589, %6584 ], [ %6225, %6229 ]
  %6236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.i32 %6236, 2
  %6238 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6173, i32 %6237, i32 %6235)  ; UMad(a,b,c)
  %6239 = shl i32 %6238, 2
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = shl i32 %6235, 5
  %6243 = sub nsw i32 %6223, %6242
  %6244 = call i32 @dx.op.binary.i32(i32 37, i32 %6243, i32 0)  ; IMax(a,b)
  %6245 = call i32 @dx.op.binary.i32(i32 38, i32 %6244, i32 31)  ; IMin(a,b)
  %6246 = sub nsw i32 1, %6223
  %6247 = add nsw i32 %6246, %6224
  %6248 = call i32 @dx.op.binary.i32(i32 37, i32 %6247, i32 0)  ; IMax(a,b)
  %6249 = call i32 @dx.op.binary.i32(i32 38, i32 %6248, i32 32)  ; IMin(a,b)
  %6250 = and i32 %6249, 31
  %6251 = shl i32 -1, %6250
  %6252 = xor i32 %6251, -1
  %6253 = and i32 %6245, 31
  %6254 = shl i32 %6252, %6253
  %6255 = icmp eq i32 %6249, 32
  %6256 = select i1 %6255, i32 -1, i32 %6254
  %6257 = and i32 %6256, %6241
  %6258 = icmp eq i32 %6257, 0
  br i1 %6258, label %6584, label %6259

; <label>:6259                                    ; preds = %6230
  br label %6260

; <label>:6260                                    ; preds = %6367, %6259
  %6261 = phi float [ %6368, %6367 ], [ %6231, %6259 ]
  %6262 = phi float [ %6369, %6367 ], [ %6232, %6259 ]
  %6263 = phi float [ %6370, %6367 ], [ %6233, %6259 ]
  %6264 = phi float [ %6371, %6367 ], [ %6234, %6259 ]
  %6265 = phi i32 [ %6270, %6367 ], [ %6257, %6259 ]
  %6266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6265)  ; FirstbitLo(value)
  %6267 = add i32 %6266, %6242
  %6268 = and i32 %6266, 31
  %6269 = shl i32 1, %6268
  %6270 = xor i32 %6269, %6265
  %6271 = mul i32 %6267, 72
  %6272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.ResRet.f32 %6272, 2
  %6276 = add i32 %6271, 12
  %6277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6278 = extractvalue %dx.types.ResRet.i32 %6277, 0
  %6279 = add i32 %6271, 16
  %6280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6279, i32 undef)  ; BufferLoad(srv,index,wot)
  %6281 = extractvalue %dx.types.ResRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.ResRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.ResRet.f32 %6280, 2
  %6284 = add i32 %6271, 28
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6284, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = add i32 %6271, 32
  %6288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6287, i32 undef)  ; BufferLoad(srv,index,wot)
  %6289 = extractvalue %dx.types.ResRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.ResRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.ResRet.f32 %6288, 2
  %6292 = extractvalue %dx.types.ResRet.f32 %6288, 3
  %6293 = add i32 %6271, 48
  %6294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6293, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.ResRet.f32 %6294, 1
  %6297 = add i32 %6271, 56
  %6298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = add i32 %6271, 64
  %6302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6301, i32 undef)  ; BufferLoad(srv,index,wot)
  %6303 = extractvalue %dx.types.ResRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.ResRet.f32 %6302, 1
  %6305 = mul i32 %6267, 60
  %6306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6305, i32 undef)  ; BufferLoad(srv,index,wot)
  %6307 = extractvalue %dx.types.ResRet.f32 %6306, 0
  %6308 = extractvalue %dx.types.ResRet.f32 %6306, 1
  %6309 = extractvalue %dx.types.ResRet.f32 %6306, 2
  %6310 = add i32 %6305, 12
  %6311 = add i32 %6305, 48
  %6312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6311, i32 undef)  ; BufferLoad(srv,index,wot)
  %6313 = extractvalue %dx.types.ResRet.f32 %6312, 0
  %6314 = extractvalue %dx.types.ResRet.f32 %6312, 1
  %6315 = extractvalue %dx.types.ResRet.f32 %6312, 2
  %6316 = and i32 %6278, 32767
  %6317 = bitcast float %6273 to i32
  %6318 = icmp eq i32 %6317, -1
  %6319 = bitcast float %6274 to i32
  %6320 = and i32 %6278, 32768
  %6321 = icmp ne i32 %6320, 0
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.CBufRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.CBufRet.f32 %6322, 2
  %6326 = fsub fast float %6307, %6323
  %6327 = fsub fast float %6308, %6324
  %6328 = fsub fast float %6309, %6325
  %6329 = fsub fast float %166, %6326
  %6330 = fsub fast float %167, %6327
  %6331 = fsub fast float %168, %6328
  %6332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6310, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6333, float %6334, float %6335)  ; Dot3(ax,ay,az,bx,by,bz)
  %6337 = add i32 %6305, 24
  %6338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6337, i32 undef)  ; BufferLoad(srv,index,wot)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6342 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6339, float %6340, float %6341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = add i32 %6305, 36
  %6344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6343, i32 undef)  ; BufferLoad(srv,index,wot)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.ResRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.ResRet.f32 %6344, 2
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6345, float %6346, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = call float @dx.op.unary.f32(i32 6, float %6336)  ; FAbs(value)
  %6350 = call float @dx.op.unary.f32(i32 6, float %6342)  ; FAbs(value)
  %6351 = call float @dx.op.unary.f32(i32 6, float %6348)  ; FAbs(value)
  %6352 = fsub fast float %6313, %6349
  %6353 = fsub fast float %6314, %6350
  %6354 = fsub fast float %6315, %6351
  %6355 = fmul fast float %6352, %6281
  %6356 = fmul fast float %6353, %6282
  %6357 = fmul fast float %6354, %6283
  %6358 = call float @dx.op.binary.f32(i32 36, float %6356, float %6357)  ; FMin(a,b)
  %6359 = call float @dx.op.binary.f32(i32 36, float %6355, float %6358)  ; FMin(a,b)
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = call float @dx.op.binary.f32(i32 36, float %6264, float %6360)  ; FMin(a,b)
  %6362 = uitofp i1 %6321 to float
  %6363 = fadd fast float %6179, 1.000000e+00
  %6364 = fsub fast float %6363, %6362
  %6365 = fmul fast float %6361, %6364
  %6366 = fcmp fast ogt float %6365, 0.000000e+00
  br i1 %6366, label %6373, label %6367

; <label>:6367                                    ; preds = %6515, %6260
  %6368 = phi float [ %6579, %6515 ], [ %6261, %6260 ]
  %6369 = phi float [ %6580, %6515 ], [ %6262, %6260 ]
  %6370 = phi float [ %6581, %6515 ], [ %6263, %6260 ]
  %6371 = phi float [ %6582, %6515 ], [ %6264, %6260 ]
  %6372 = icmp eq i32 %6265, %6269
  br i1 %6372, label %6583, label %6260

; <label>:6373                                    ; preds = %6260
  br i1 %6318, label %6431, label %6374

; <label>:6374                                    ; preds = %6373
  %6375 = fsub fast float -0.000000e+00, %6333
  %6376 = fsub fast float -0.000000e+00, %6334
  %6377 = fsub fast float -0.000000e+00, %6335
  %6378 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6215, float %6375, float %6376, float %6377)  ; Dot3(ax,ay,az,bx,by,bz)
  %6379 = fsub fast float -0.000000e+00, %6378
  %6380 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6375, float %6376, float %6377)  ; Dot3(ax,ay,az,bx,by,bz)
  %6381 = fadd fast float %6380, %6296
  %6382 = fadd fast float %6295, %6380
  %6383 = fsub fast float -0.000000e+00, %6382
  %6384 = fcmp ogt float %6378, -0.000000e+00
  %6385 = select i1 %6384, float %6383, float %6381
  %6386 = call float @dx.op.unary.f32(i32 6, float %6379)  ; FAbs(value)
  %6387 = fdiv fast float 1.000000e+00, %6386
  %6388 = fmul fast float %6385, %6387
  %6389 = call float @dx.op.binary.f32(i32 35, float %6388, float 0.000000e+00)  ; FMax(a,b)
  %6390 = fsub fast float -0.000000e+00, %6339
  %6391 = fsub fast float -0.000000e+00, %6340
  %6392 = fsub fast float -0.000000e+00, %6341
  %6393 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6215, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = fsub fast float -0.000000e+00, %6393
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = fadd fast float %6395, %6300
  %6397 = fadd fast float %6299, %6395
  %6398 = fsub fast float -0.000000e+00, %6397
  %6399 = fcmp ogt float %6393, -0.000000e+00
  %6400 = select i1 %6399, float %6398, float %6396
  %6401 = call float @dx.op.unary.f32(i32 6, float %6394)  ; FAbs(value)
  %6402 = fdiv fast float 1.000000e+00, %6401
  %6403 = fmul fast float %6400, %6402
  %6404 = call float @dx.op.binary.f32(i32 35, float %6403, float 0.000000e+00)  ; FMax(a,b)
  %6405 = fsub fast float -0.000000e+00, %6345
  %6406 = fsub fast float -0.000000e+00, %6346
  %6407 = fsub fast float -0.000000e+00, %6347
  %6408 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6215, float %6405, float %6406, float %6407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6409 = fsub fast float -0.000000e+00, %6408
  %6410 = call float @dx.op.dot3.f32(i32 55, float %6329, float %6330, float %6331, float %6405, float %6406, float %6407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6411 = fadd fast float %6410, %6304
  %6412 = fadd fast float %6303, %6410
  %6413 = fsub fast float -0.000000e+00, %6412
  %6414 = fcmp ogt float %6408, -0.000000e+00
  %6415 = select i1 %6414, float %6413, float %6411
  %6416 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6417 = fdiv fast float 1.000000e+00, %6416
  %6418 = fmul fast float %6415, %6417
  %6419 = call float @dx.op.binary.f32(i32 35, float %6418, float 0.000000e+00)  ; FMax(a,b)
  %6420 = call float @dx.op.binary.f32(i32 36, float %6404, float %6419)  ; FMin(a,b)
  %6421 = call float @dx.op.binary.f32(i32 36, float %6389, float %6420)  ; FMin(a,b)
  %6422 = fmul fast float %6421, %6213
  %6423 = fmul fast float %6421, %6214
  %6424 = fmul fast float %6421, %6215
  %6425 = fadd fast float %6422, %166
  %6426 = fadd fast float %6423, %167
  %6427 = fadd fast float %6424, %168
  %6428 = fsub fast float %6425, %6273
  %6429 = fsub fast float %6426, %6274
  %6430 = fsub fast float %6427, %6275
  br label %6438

; <label>:6431                                    ; preds = %6373
  %6432 = fmul fast float %6213, 8.096000e+03
  %6433 = fmul fast float %6214, 8.096000e+03
  %6434 = fmul fast float %6215, 8.096000e+03
  %6435 = fadd fast float %6432, %166
  %6436 = fadd fast float %6433, %167
  %6437 = fadd fast float %6434, %168
  br label %6438

; <label>:6438                                    ; preds = %6431, %6374
  %6439 = phi float [ %6213, %6431 ], [ %6428, %6374 ]
  %6440 = phi float [ %6214, %6431 ], [ %6429, %6374 ]
  %6441 = phi float [ %6215, %6431 ], [ %6430, %6374 ]
  %6442 = phi float [ %6435, %6431 ], [ %6425, %6374 ]
  %6443 = phi float [ %6436, %6431 ], [ %6426, %6374 ]
  %6444 = phi float [ %6437, %6431 ], [ %6427, %6374 ]
  %6445 = fcmp fast olt float %6292, 1.000000e+00
  br i1 %6445, label %6446, label %6477, !dx.controlflow.hints !102

; <label>:6446                                    ; preds = %6438
  %6447 = fmul fast float %6441, %6290
  %6448 = fmul fast float %6440, %6291
  %6449 = fsub fast float %6447, %6448
  %6450 = fmul fast float %6439, %6291
  %6451 = fmul fast float %6441, %6289
  %6452 = fsub fast float %6450, %6451
  %6453 = fmul fast float %6440, %6289
  %6454 = fmul fast float %6439, %6290
  %6455 = fsub fast float %6453, %6454
  %6456 = fmul fast float %6449, 2.000000e+00
  %6457 = fmul fast float %6452, 2.000000e+00
  %6458 = fmul fast float %6455, 2.000000e+00
  %6459 = fmul fast float %6456, %6292
  %6460 = fmul fast float %6457, %6292
  %6461 = fmul fast float %6458, %6292
  %6462 = fmul fast float %6458, %6290
  %6463 = fmul fast float %6457, %6291
  %6464 = fmul fast float %6456, %6291
  %6465 = fmul fast float %6458, %6289
  %6466 = fmul fast float %6457, %6289
  %6467 = fmul fast float %6456, %6290
  %6468 = fadd fast float %6462, %6439
  %6469 = fadd fast float %6468, %6459
  %6470 = fsub fast float %6469, %6463
  %6471 = fsub fast float %6440, %6465
  %6472 = fadd fast float %6471, %6460
  %6473 = fadd fast float %6472, %6464
  %6474 = fadd fast float %6461, %6441
  %6475 = fsub fast float %6474, %6467
  %6476 = fadd fast float %6475, %6466
  br label %6477

; <label>:6477                                    ; preds = %6446, %6438
  %6478 = phi float [ %6470, %6446 ], [ %6439, %6438 ]
  %6479 = phi float [ %6473, %6446 ], [ %6440, %6438 ]
  %6480 = phi float [ %6476, %6446 ], [ %6441, %6438 ]
  br i1 %6318, label %6512, label %6481

; <label>:6481                                    ; preds = %6477
  %6482 = fmul fast float %5771, 0x400187C840000000
  %6483 = fadd fast float %6482, 0xC00EFC2120000000
  %6484 = fmul fast float %6483, %5771
  %6485 = fadd fast float %6484, 0x3FE5D16340000000
  %6486 = fmul fast float %6485, %5771
  %6487 = fadd fast float %6486, 1.000000e+00
  %6488 = call float @dx.op.unary.f32(i32 7, float %6487)  ; Saturate(value)
  %6489 = fsub fast float %6442, %166
  %6490 = fsub fast float %6443, %167
  %6491 = fsub fast float %6444, %168
  %6492 = fsub fast float %6442, %6273
  %6493 = fsub fast float %6443, %6274
  %6494 = fsub fast float %6444, %6275
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6489, float %6490, float %6491, float %6489, float %6490, float %6491)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = call float @dx.op.dot3.f32(i32 55, float %6492, float %6493, float %6494, float %6492, float %6493, float %6494)  ; Dot3(ax,ay,az,bx,by,bz)
  %6497 = fadd fast float %6496, 0x3EE4F8B580000000
  %6498 = fdiv fast float %6495, %6497
  %6499 = bitcast float %6498 to i32
  %6500 = ashr i32 %6499, 1
  %6501 = add nsw i32 %6500, 532487669
  %6502 = bitcast i32 %6501 to float
  %6503 = fmul fast float %6502, %6488
  %6504 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6505 = fmul fast float %6504, 0x4009981AE0000000
  %6506 = fsub fast float 0x40111BBD80000000, %6505
  %6507 = fmul fast float %6506, %6504
  %6508 = fadd fast float %6507, 0xC0009F6020000000
  %6509 = fmul fast float %6508, %6504
  %6510 = fadd fast float %6509, 1.000000e+00
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  br label %6515

; <label>:6512                                    ; preds = %6477
  %6513 = icmp ne i32 %6319, -1
  %6514 = zext i1 %6513 to i32
  br label %6515

; <label>:6515                                    ; preds = %6512, %6481
  %6516 = phi float [ %5771, %6512 ], [ %6511, %6481 ]
  %6517 = phi i32 [ %6514, %6512 ], [ 0, %6481 ]
  %6518 = fmul float %6516, 5.000000e+00
  %6519 = fsub float 5.000000e+00, %6518
  %6520 = icmp ne i32 %6517, 0
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6523 = fadd fast float %6522, %6519
  %6524 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6523)  ; FMax(a,b)
  %6525 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6526 = call float @dx.op.unary.f32(i32 6, float %6479)  ; FAbs(value)
  %6527 = fadd fast float %6526, %6525
  %6528 = call float @dx.op.unary.f32(i32 6, float %6480)  ; FAbs(value)
  %6529 = fadd fast float %6527, %6528
  %6530 = fcmp fast oeq float %6529, 0.000000e+00
  %6531 = fdiv fast float 1.000000e+00, %6529
  %6532 = select i1 %6530, float 1.000000e+00, float %6531
  %6533 = fmul fast float %6532, %6478
  %6534 = fmul fast float %6532, %6479
  %6535 = call float @dx.op.unary.f32(i32 6, float %6534)  ; FAbs(value)
  %6536 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6537 = fsub fast float 1.000000e+00, %6535
  %6538 = fsub fast float 1.000000e+00, %6536
  %6539 = fcmp fast oge float %6533, 0.000000e+00
  %6540 = fcmp fast oge float %6534, 0.000000e+00
  %6541 = select i1 %6539, float 1.000000e+00, float -1.000000e+00
  %6542 = select i1 %6540, float 1.000000e+00, float -1.000000e+00
  %6543 = fcmp fast ole float %6480, 0.000000e+00
  %6544 = fmul fast float %6541, %6537
  %6545 = fmul fast float %6542, %6538
  %6546 = select i1 %6543, float %6544, float %6533
  %6547 = select i1 %6543, float %6545, float %6534
  %6548 = fmul fast float %6546, 5.000000e-01
  %6549 = fmul fast float %6547, 5.000000e-01
  %6550 = fadd fast float %6548, 5.000000e-01
  %6551 = fadd fast float %6549, 5.000000e-01
  %6552 = uitofp i32 %6316 to float
  %6553 = call float @dx.op.binary.f32(i32 36, float %6524, float 3.000000e+00)  ; FMin(a,b)
  %6554 = fadd fast float %6553, 2.000000e+00
  %6555 = call float @dx.op.unary.f32(i32 21, float %6554)  ; Exp(value)
  %6556 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6557 = fmul fast float %6556, %6555
  %6558 = fmul fast float %6557, 2.000000e+00
  %6559 = fsub fast float 1.000000e+00, %6558
  %6560 = fmul fast float %6550, %6559
  %6561 = fmul fast float %6551, %6559
  %6562 = fadd fast float %6560, %6557
  %6563 = fadd fast float %6561, %6557
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %6562, float %6563, float %6552, float undef, i32 0, i32 0, i32 undef, float %6524)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.ResRet.f32 %6564, 2
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6570 = fmul fast float %6569, %6286
  %6571 = call float @dx.op.binary.f32(i32 36, float %5837, float %6570)  ; FMin(a,b)
  %6572 = select i1 %6520, float %6571, float %6570
  %6573 = fmul fast float %6565, %6365
  %6574 = fmul fast float %6573, %6572
  %6575 = fmul fast float %6566, %6365
  %6576 = fmul fast float %6575, %6572
  %6577 = fmul fast float %6567, %6365
  %6578 = fmul fast float %6577, %6572
  %6579 = fadd fast float %6574, %6261
  %6580 = fadd fast float %6576, %6262
  %6581 = fadd fast float %6578, %6263
  %6582 = fsub fast float %6264, %6365
  br label %6367

; <label>:6583                                    ; preds = %6367
  br label %6584

; <label>:6584                                    ; preds = %6583, %6230
  %6585 = phi float [ %6231, %6230 ], [ %6368, %6583 ]
  %6586 = phi float [ %6232, %6230 ], [ %6369, %6583 ]
  %6587 = phi float [ %6233, %6230 ], [ %6370, %6583 ]
  %6588 = phi float [ %6234, %6230 ], [ %6371, %6583 ]
  %6589 = add i32 %6235, 1
  %6590 = icmp ugt i32 %6589, %6227
  br i1 %6590, label %6591, label %6230, !llvm.loop !103

; <label>:6591                                    ; preds = %6584
  br label %6592

; <label>:6592                                    ; preds = %6591, %6212
  %6593 = phi float [ 0.000000e+00, %6212 ], [ %6585, %6591 ]
  %6594 = phi float [ 0.000000e+00, %6212 ], [ %6586, %6591 ]
  %6595 = phi float [ 0.000000e+00, %6212 ], [ %6587, %6591 ]
  %6596 = call float @dx.op.dot3.f32(i32 55, float %6593, float %6594, float %6595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = select i1 %260, float 0.000000e+00, float %6593
  %6598 = select i1 %260, float %6596, float %6594
  %6599 = select i1 %260, float 0.000000e+00, float %6595
  %6600 = fcmp fast olt float %6138, 0.000000e+00
  %6601 = call float @dx.op.unary.f32(i32 6, float %6138)  ; FAbs(value)
  %6602 = fmul fast float %6601, %6067
  %6603 = fmul fast float %6601, %6068
  %6604 = fmul fast float %6601, %6069
  %6605 = select i1 %6600, float %6067, float %6602
  %6606 = select i1 %6600, float %6068, float %6603
  %6607 = select i1 %6600, float %6069, float %6604
  %6608 = fsub fast float 1.000000e+00, %6601
  %6609 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6610 = fmul fast float %6609, %6597
  %6611 = fmul fast float %6609, %6598
  %6612 = fmul fast float %6609, %6599
  %6613 = fadd fast float %6605, %6610
  %6614 = fadd fast float %6606, %6611
  %6615 = fadd fast float %6607, %6612
  br label %6616

; <label>:6616                                    ; preds = %6592, %6121
  %6617 = phi float [ %6067, %6121 ], [ %6613, %6592 ]
  %6618 = phi float [ %6068, %6121 ], [ %6614, %6592 ]
  %6619 = phi float [ %6069, %6121 ], [ %6615, %6592 ]
  %6620 = fmul fast float %6127, %6063
  %6621 = fmul fast float %6127, %6064
  %6622 = fmul fast float %6127, %6065
  %6623 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6624 = fcmp fast ogt float %6623, 0x3E7FF19E20000000
  %6625 = fdiv fast float 1.000000e+00, %6623
  %6626 = select i1 %6624, float %6625, float 0.000000e+00
  %6627 = fmul fast float %6626, %5762
  %6628 = fmul fast float %6626, %5763
  %6629 = fmul fast float %6626, %5764
  %6630 = fadd fast float %6627, -1.000000e+00
  %6631 = fadd fast float %6628, -1.000000e+00
  %6632 = fadd fast float %6629, -1.000000e+00
  %6633 = fmul fast float %6630, 5.000000e-01
  %6634 = fmul fast float %6631, 5.000000e-01
  %6635 = fmul fast float %6632, 5.000000e-01
  %6636 = fadd fast float %6633, 1.000000e+00
  %6637 = fadd fast float %6634, 1.000000e+00
  %6638 = fadd fast float %6635, 1.000000e+00
  %6639 = call float @dx.op.binary.f32(i32 35, float %5810, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6640 = fdiv fast float %4464, %6639
  %6641 = fcmp fast olt float %5198, 1.270000e+02
  %6642 = fcmp fast olt float %5199, 1.270000e+02
  %6643 = fcmp fast olt float %5200, 1.270000e+02
  %6644 = fmul fast float %5198, 0xBFF7154760000000
  %6645 = fmul fast float %6644, %6640
  %6646 = fmul fast float %5199, 0xBFF7154760000000
  %6647 = fmul fast float %6646, %6640
  %6648 = fmul fast float %5200, 0xBFF7154760000000
  %6649 = fmul fast float %6648, %6640
  %6650 = call float @dx.op.unary.f32(i32 21, float %6645)  ; Exp(value)
  %6651 = call float @dx.op.unary.f32(i32 21, float %6647)  ; Exp(value)
  %6652 = call float @dx.op.unary.f32(i32 21, float %6649)  ; Exp(value)
  %6653 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6654 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6655 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6656 = select i1 %6641, float %6653, float 0.000000e+00
  %6657 = select i1 %6642, float %6654, float 0.000000e+00
  %6658 = select i1 %6643, float %6655, float 0.000000e+00
  %6659 = fmul fast float %6656, %6127
  %6660 = fmul fast float %6657, %6127
  %6661 = fmul fast float %6658, %6127
  %6662 = fadd fast float %6659, -1.000000e+00
  %6663 = fadd fast float %6660, -1.000000e+00
  %6664 = fadd fast float %6661, -1.000000e+00
  %6665 = fmul fast float %6662, %5153
  %6666 = fmul fast float %6663, %5153
  %6667 = fmul fast float %6664, %5153
  %6668 = fadd fast float %6665, 1.000000e+00
  %6669 = fadd fast float %6666, 1.000000e+00
  %6670 = fadd fast float %6667, 1.000000e+00
  %6671 = fmul fast float %5766, 0x401CF23780000000
  %6672 = fadd fast float %6671, 0x3FF32641C0000000
  %6673 = fdiv fast float 1.000000e+00, %6672
  %6674 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %6675 = fmul fast float %6673, %6673
  %6676 = fmul fast float %6674, %6674
  %6677 = fsub fast float 1.000000e+00, %6676
  %6678 = fmul fast float %6675, %6677
  %6679 = fsub fast float 1.000000e+00, %6678
  %6680 = fcmp fast oge float %6679, 0.000000e+00
  %6681 = fmul fast float %6673, %5596
  %6682 = fmul fast float %6673, %5597
  %6683 = fmul fast float %6673, %5598
  %6684 = call float @dx.op.unary.f32(i32 24, float %6679)  ; Sqrt(value)
  %6685 = fmul fast float %6674, %6673
  %6686 = fadd fast float %6685, %6684
  %6687 = fmul fast float %6686, %5768
  %6688 = fmul fast float %6686, %5769
  %6689 = fmul fast float %6686, %5770
  %6690 = fsub fast float %6681, %6687
  %6691 = fsub fast float %6682, %6688
  %6692 = fsub fast float %6683, %6689
  %6693 = select i1 %6680, float %6690, float 0.000000e+00
  %6694 = select i1 %6680, float %6691, float 0.000000e+00
  %6695 = select i1 %6680, float %6692, float 0.000000e+00
  %6696 = fmul fast float %6693, %4464
  %6697 = fmul fast float %6694, %4464
  %6698 = fmul fast float %6695, %4464
  %6699 = fadd fast float %6696, %5805
  %6700 = fadd fast float %6697, %5806
  %6701 = fadd fast float %6698, %5807
  %6702 = call float @dx.op.dot3.f32(i32 55, float %5216, float %5217, float %5218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6703 = fmul fast float %5825, %5153
  %6704 = fsub fast float 1.000000e+00, %6703
  %6705 = call float @dx.op.unary.f32(i32 7, float %6704)  ; Saturate(value)
  %6706 = fsub fast float 1.000000e+00, %6705
  %6707 = fmul fast float %5766, 0x4012D0A400000000
  %6708 = fadd fast float %6707, 0x3FDB6377A0000000
  %6709 = fmul fast float %6706, %6708
  %6710 = fadd fast float %6709, %6702
  %6711 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6712 = fmul fast float %6617, %6122
  %6713 = fmul fast float %6618, %6123
  %6714 = fmul fast float %6619, %6124
  %6715 = fsub fast float 1.000000e+00, %5810
  %6716 = bitcast float %6715 to i32
  %6717 = sitofp i32 %6716 to float
  %6718 = fmul fast float %6717, 5.000000e+00
  %6719 = fadd fast float %6718, 0xC1EFBF8940000000
  %6720 = fptosi float %6719 to i32
  %6721 = bitcast i32 %6720 to float
  %6722 = fmul fast float %6721, %5128
  %6723 = fmul fast float %6063, %6722
  %6724 = fmul fast float %6723, %6127
  %6725 = fmul fast float %6724, %6636
  %6726 = fmul fast float %6064, %6722
  %6727 = fmul fast float %6726, %6127
  %6728 = fmul fast float %6727, %6637
  %6729 = fmul fast float %6065, %6722
  %6730 = fmul fast float %6729, %6127
  %6731 = fmul fast float %6730, %6638
  %6732 = fmul fast float %6620, %5153
  %6733 = fmul fast float %6621, %5153
  %6734 = fmul fast float %6622, %5153
  %6735 = fsub fast float 1.000000e+00, %6711
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6739 = extractvalue %dx.types.CBufRet.f32 %6736, 2
  %6740 = extractvalue %dx.types.CBufRet.f32 %6736, 3
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6743 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6744 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %6745 = extractvalue %dx.types.CBufRet.f32 %6741, 3
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.CBufRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %6750 = extractvalue %dx.types.CBufRet.f32 %6746, 3
  %6751 = fmul fast float %6699, %6737
  %6752 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6738, float %6751)  ; FMad(a,b,c)
  %6753 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6739, float %6752)  ; FMad(a,b,c)
  %6754 = fadd fast float %6753, %6740
  %6755 = fmul fast float %6699, %6742
  %6756 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6743, float %6755)  ; FMad(a,b,c)
  %6757 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6744, float %6756)  ; FMad(a,b,c)
  %6758 = fadd fast float %6757, %6745
  %6759 = fmul fast float %6699, %6747
  %6760 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6748, float %6759)  ; FMad(a,b,c)
  %6761 = call float @dx.op.tertiary.f32(i32 46, float %6701, float %6749, float %6760)  ; FMad(a,b,c)
  %6762 = fadd fast float %6761, %6750
  %6763 = fdiv fast float %6754, %6762
  %6764 = fdiv fast float %6758, %6762
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = fmul fast float %6766, %6763
  %6769 = fmul fast float %6767, %6764
  %6770 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6771 = extractvalue %dx.types.CBufRet.f32 %6765, 3
  %6772 = fadd fast float %6768, %6770
  %6773 = fadd fast float %6769, %6771
  %6774 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6775 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6779 = fmul fast float %6777, %6774
  %6780 = fmul fast float %6778, %6775
  %6781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.f32 %6781, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6781, 2
  %6784 = fsub fast float %6782, %6783
  %6785 = fmul fast float %6784, %6735
  %6786 = fadd fast float %6785, %6783
  %6787 = fmul fast float %273, 2.000000e+00
  %6788 = fmul fast float %274, 2.000000e+00
  %6789 = fadd fast float %6787, -1.000000e+00
  %6790 = fadd fast float %6788, -1.000000e+00
  %6791 = fmul fast float %6786, %6789
  %6792 = fmul fast float %6786, %6790
  %6793 = fadd fast float %6791, %6779
  %6794 = fadd fast float %6792, %6780
  %6795 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6796 = extractvalue %dx.types.CBufRet.f32 %6776, 3
  %6797 = fmul fast float %6793, %6795
  %6798 = fmul fast float %6794, %6796
  %6799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %57, float %6797, float %6798, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6800 = extractvalue %dx.types.ResRet.f32 %6799, 0
  %6801 = fcmp fast ogt float %6800, -1.000000e+00
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6804 = select i1 %6801, float %6803, float 1.000000e+00
  %6805 = fadd fast float %6800, 1.000000e+00
  %6806 = fmul fast float %6804, %6805
  %6807 = call float @dx.op.unary.f32(i32 6, float %6806)  ; FAbs(value)
  %6808 = fsub fast float %6807, %6762
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6811 = fmul fast float %6810, %6807
  %6812 = fdiv fast float 1.600000e+02, %6811
  %6813 = fmul fast float %6711, %6711
  %6814 = fmul fast float %6813, 0xBFB5B17960000000
  %6815 = fmul fast float %6814, %6808
  %6816 = fmul fast float %6815, %6812
  %6817 = call float @dx.op.unary.f32(i32 21, float %6816)  ; Exp(value)
  %6818 = fmul fast float %6817, 0x3FF04B2960000000
  %6819 = fsub fast float 0x3FF04B2960000000, %6818
  %6820 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6821 = fmul fast float %6820, 4.000000e+00
  %6822 = fadd fast float %273, -5.000000e-01
  %6823 = fadd fast float %274, -5.000000e-01
  %6824 = fmul fast float %6820, 0x3FBEB851E0000000
  %6825 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6826 = fmul fast float %6825, %6822
  %6827 = fmul fast float %6825, %6823
  %6828 = fadd fast float %6826, %6772
  %6829 = fadd fast float %6827, %6773
  %6830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.i32 %6830, 0
  %6832 = icmp eq i32 %6831, 0
  br i1 %6832, label %6838, label %6833, !dx.controlflow.hints !105

; <label>:6833                                    ; preds = %6616
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %6828, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6821)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.ResRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.ResRet.f32 %6834, 2
  br label %6843

; <label>:6838                                    ; preds = %6616
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %6828, float %6829, float undef, float undef, i32 0, i32 0, i32 undef, float %6821)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.ResRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.ResRet.f32 %6839, 2
  br label %6843

; <label>:6843                                    ; preds = %6838, %6833
  %6844 = phi float [ %6835, %6833 ], [ %6840, %6838 ]
  %6845 = phi float [ %6836, %6833 ], [ %6841, %6838 ]
  %6846 = phi float [ %6837, %6833 ], [ %6842, %6838 ]
  %6847 = select i1 %260, float 0.000000e+00, float %6845
  %6848 = select i1 %260, float 0.000000e+00, float %6846
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6851 = fmul fast float %6844, %6668
  %6852 = fmul fast float %6851, %6850
  %6853 = fmul fast float %6847, %6669
  %6854 = fmul fast float %6853, %6850
  %6855 = fmul fast float %6848, %6670
  %6856 = fmul fast float %6855, %6850
  %6857 = fadd fast float %6712, %5111
  %6858 = fadd fast float %6857, %6725
  %6859 = fadd fast float %6858, %6852
  %6860 = fmul fast float %6859, %5153
  %6861 = fadd fast float %6713, %5112
  %6862 = fadd fast float %6861, %6728
  %6863 = fadd fast float %6862, %6854
  %6864 = fmul fast float %6863, %5153
  %6865 = fadd fast float %6714, %5113
  %6866 = fadd fast float %6865, %6731
  %6867 = fadd fast float %6866, %6856
  %6868 = fmul fast float %6867, %5153
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6871 = fcmp fast oeq float %6870, 0.000000e+00
  br i1 %6871, label %8549, label %6872

; <label>:6872                                    ; preds = %6843
  %6873 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6874 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6875 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6877 = extractvalue %dx.types.CBufRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.CBufRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.CBufRet.f32 %6876, 2
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = call float @dx.op.dot3.f32(i32 55, float %6877, float %6878, float %6879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6884 = select i1 %260, float %6881, float %6877
  %6885 = select i1 %260, float %6883, float %6878
  %6886 = select i1 %260, float %6882, float %6879
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 2
  %6889 = fmul fast float %6888, %118
  %6890 = fmul fast float %6888, %119
  %6891 = fmul fast float %6888, %120
  %6892 = fadd fast float %6889, %166
  %6893 = fadd fast float %6890, %167
  %6894 = fadd fast float %6891, %168
  %6895 = fcmp fast olt float %6870, 0.000000e+00
  br i1 %6895, label %7991, label %6896

; <label>:6896                                    ; preds = %6872
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %6902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6903 = extractvalue %dx.types.CBufRet.f32 %6902, 0
  %6904 = extractvalue %dx.types.CBufRet.f32 %6902, 1
  %6905 = extractvalue %dx.types.CBufRet.f32 %6902, 2
  %6906 = extractvalue %dx.types.CBufRet.f32 %6902, 3
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.CBufRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.CBufRet.f32 %6907, 2
  %6911 = extractvalue %dx.types.CBufRet.f32 %6907, 3
  %6912 = fmul fast float %6898, %6892
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6899, float %6912)  ; FMad(a,b,c)
  %6914 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %6900, float %6913)  ; FMad(a,b,c)
  %6915 = fadd fast float %6914, %6901
  %6916 = fmul fast float %6903, %6892
  %6917 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6904, float %6916)  ; FMad(a,b,c)
  %6918 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %6905, float %6917)  ; FMad(a,b,c)
  %6919 = fadd fast float %6918, %6906
  %6920 = fmul fast float %6908, %6892
  %6921 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6909, float %6920)  ; FMad(a,b,c)
  %6922 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %6910, float %6921)  ; FMad(a,b,c)
  %6923 = fadd fast float %6922, %6911
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 3
  %6928 = fmul fast float %6927, %6915
  %6929 = fmul fast float %6927, %6919
  %6930 = fadd fast float %6928, %6925
  %6931 = fadd fast float %6929, %6926
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6935 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6936 = fmul fast float %6935, %6915
  %6937 = fmul fast float %6935, %6919
  %6938 = fadd fast float %6936, %6933
  %6939 = fadd fast float %6937, %6934
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6942 = fsub fast float %6941, %6923
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6944 = fmul fast float %6942, %6943
  %6945 = fsub fast float 1.000000e+00, %6944
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 2
  %6950 = fadd fast float %6949, %6947
  %6951 = fcmp fast ogt float %6950, 0.000000e+00
  br i1 %6951, label %6952, label %6976

; <label>:6952                                    ; preds = %6896
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6956 = fsub fast float %6938, %6954
  %6957 = fsub fast float %6939, %6955
  %6958 = fcmp fast olt float %6956, 0.000000e+00
  %6959 = fcmp fast olt float %6957, 0.000000e+00
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = select i1 %6958, float %6961, float %6963
  %6966 = select i1 %6959, float %6962, float %6964
  %6967 = fmul fast float %6965, %6956
  %6968 = fmul fast float %6966, %6957
  %6969 = call float @dx.op.unary.f32(i32 6, float %6967)  ; FAbs(value)
  %6970 = call float @dx.op.unary.f32(i32 6, float %6968)  ; FAbs(value)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  %6972 = call float @dx.op.binary.f32(i32 35, float %6969, float %6970)  ; FMax(a,b)
  %6973 = fsub fast float %6971, %6972
  %6974 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  %6975 = fmul fast float %6974, %6946
  br label %6976

; <label>:6976                                    ; preds = %6952, %6896
  %6977 = phi float [ %6975, %6952 ], [ 0.000000e+00, %6896 ]
  %6978 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6979 = extractvalue %dx.types.CBufRet.f32 %6948, 1
  %6980 = fadd fast float %6979, %6978
  %6981 = fcmp fast ogt float %6980, 0.000000e+00
  %6982 = extractvalue %dx.types.CBufRet.f32 %6887, 0
  br i1 %6981, label %6983, label %7006

; <label>:6983                                    ; preds = %6976
  %6984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.CBufRet.f32 %6984, 1
  %6987 = fsub fast float %6930, %6985
  %6988 = fsub fast float %6931, %6986
  %6989 = fcmp fast olt float %6987, 0.000000e+00
  %6990 = fcmp fast olt float %6988, 0.000000e+00
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.CBufRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6995 = extractvalue %dx.types.CBufRet.f32 %6991, 3
  %6996 = select i1 %6989, float %6992, float %6994
  %6997 = select i1 %6990, float %6993, float %6995
  %6998 = fmul fast float %6996, %6987
  %6999 = fmul fast float %6997, %6988
  %7000 = call float @dx.op.unary.f32(i32 6, float %6998)  ; FAbs(value)
  %7001 = call float @dx.op.unary.f32(i32 6, float %6999)  ; FAbs(value)
  %7002 = call float @dx.op.binary.f32(i32 35, float %7000, float %7001)  ; FMax(a,b)
  %7003 = fsub fast float %6982, %7002
  %7004 = call float @dx.op.unary.f32(i32 7, float %7003)  ; Saturate(value)
  %7005 = fmul fast float %7004, %6946
  br label %7006

; <label>:7006                                    ; preds = %6983, %6976
  %7007 = phi float [ %7005, %6983 ], [ 0.000000e+00, %6976 ]
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 1
  %7010 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7012 = extractvalue %dx.types.CBufRet.f32 %7011, 0
  %7013 = extractvalue %dx.types.CBufRet.f32 %7011, 1
  %7014 = fsub fast float %6915, %7012
  %7015 = fsub fast float %6919, %7013
  %7016 = fcmp fast olt float %7014, 0.000000e+00
  %7017 = fcmp fast olt float %7015, 0.000000e+00
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.CBufRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.CBufRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.CBufRet.f32 %7018, 3
  %7023 = select i1 %7016, float %7019, float %7021
  %7024 = select i1 %7017, float %7020, float %7022
  %7025 = fmul fast float %7023, %7014
  %7026 = fmul fast float %7024, %7015
  %7027 = call float @dx.op.unary.f32(i32 6, float %7025)  ; FAbs(value)
  %7028 = call float @dx.op.unary.f32(i32 6, float %7026)  ; FAbs(value)
  %7029 = call float @dx.op.binary.f32(i32 35, float %7027, float %7028)  ; FMax(a,b)
  %7030 = fsub fast float %6982, %7029
  %7031 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7032 = call float @dx.op.binary.f32(i32 36, float %7031, float %7010)  ; FMin(a,b)
  %7033 = fmul fast float %7032, %6946
  %7034 = fsub fast float %7007, %7033
  %7035 = fsub fast float %6977, %7007
  %7036 = fsub fast float %7035, %7033
  %7037 = call float @dx.op.binary.f32(i32 35, float %7007, float %6977)  ; FMax(a,b)
  %7038 = call float @dx.op.binary.f32(i32 35, float %7033, float %7037)  ; FMax(a,b)
  %7039 = fcmp fast olt float %7038, 1.000000e+00
  br i1 %7039, label %7040, label %7438, !dx.controlflow.hints !106

; <label>:7040                                    ; preds = %7006
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 0
  %7043 = fcmp fast une float %7042, 0.000000e+00
  br i1 %7043, label %7044, label %7438, !dx.controlflow.hints !107

; <label>:7044                                    ; preds = %7040
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.CBufRet.f32 %7050, 2
  %7054 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 0
  %7057 = extractvalue %dx.types.CBufRet.f32 %7055, 1
  %7058 = extractvalue %dx.types.CBufRet.f32 %7055, 2
  %7059 = extractvalue %dx.types.CBufRet.f32 %7055, 3
  %7060 = fmul fast float %7046, %6892
  %7061 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %7047, float %7060)  ; FMad(a,b,c)
  %7062 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %7048, float %7061)  ; FMad(a,b,c)
  %7063 = fadd fast float %7062, %7049
  %7064 = fmul fast float %7051, %6892
  %7065 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %7052, float %7064)  ; FMad(a,b,c)
  %7066 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %7053, float %7065)  ; FMad(a,b,c)
  %7067 = fadd fast float %7066, %7054
  %7068 = fmul fast float %7056, %6892
  %7069 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %7057, float %7068)  ; FMad(a,b,c)
  %7070 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %7058, float %7069)  ; FMad(a,b,c)
  %7071 = fadd fast float %7070, %7059
  %7072 = fcmp fast oge float %7063, 1.000000e+00
  %7073 = fcmp fast oge float %7067, 1.000000e+00
  %7074 = or i1 %7072, %7073
  %7075 = fcmp fast olt float %7063, 0.000000e+00
  %7076 = fcmp fast olt float %7067, 0.000000e+00
  %7077 = or i1 %7075, %7076
  %7078 = or i1 %7074, %7077
  br i1 %7078, label %7438, label %7079, !dx.controlflow.hints !108

; <label>:7079                                    ; preds = %7044
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.CBufRet.f32 %7080, 1
  %7083 = extractvalue %dx.types.CBufRet.f32 %7080, 2
  %7084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.i32 %7084, 2
  %7086 = uitofp i32 %7085 to float
  %7087 = extractvalue %dx.types.CBufRet.i32 %7084, 3
  %7088 = uitofp i32 %7087 to float
  %7089 = extractvalue %dx.types.CBufRet.f32 %7080, 3
  %7090 = fmul fast float %7089, 2.000000e+00
  %7091 = fsub fast float %7063, %7081
  %7092 = fsub fast float %7067, %7082
  %7093 = fmul fast float %7090, %7091
  %7094 = fmul fast float %7090, %7092
  %7095 = fdiv fast float 1.000000e+00, %6875
  %7096 = fmul fast float %7094, %7095
  %7097 = call float @dx.op.unary.f32(i32 6, float %7096)  ; FAbs(value)
  %7098 = fmul fast float %7083, %6894
  %7099 = fmul fast float %7098, %7090
  %7100 = call float @dx.op.unary.f32(i32 6, float %7099)  ; FAbs(value)
  %7101 = call float @dx.op.unary.f32(i32 6, float %7093)  ; FAbs(value)
  %7102 = call float @dx.op.binary.f32(i32 35, float %7100, float %7097)  ; FMax(a,b)
  %7103 = call float @dx.op.binary.f32(i32 35, float %7101, float %7102)  ; FMax(a,b)
  %7104 = fmul fast float %7103, 2.000000e+00
  %7105 = call float @dx.op.unary.f32(i32 23, float %7104)  ; Log(value)
  %7106 = call float @dx.op.binary.f32(i32 35, float %7105, float %7086)  ; FMax(a,b)
  %7107 = call float @dx.op.unary.f32(i32 22, float %7106)  ; Frc(value)
  %7108 = fadd fast float %7107, 0xBFEA666660000000
  %7109 = fmul fast float %7108, 8.000000e+00
  %7110 = call float @dx.op.unary.f32(i32 7, float %7109)  ; Saturate(value)
  %7111 = call float @dx.op.unary.f32(i32 27, float %7106)  ; Round_ni(value)
  %7112 = fadd fast float %7111, %7110
  %7113 = call float @dx.op.binary.f32(i32 36, float %7112, float %7088)  ; FMin(a,b)
  %7114 = call float @dx.op.unary.f32(i32 27, float %7113)  ; Round_ni(value)
  %7115 = fsub fast float -0.000000e+00, %7114
  %7116 = call float @dx.op.unary.f32(i32 21, float %7115)  ; Exp(value)
  %7117 = fmul fast float %7116, %7090
  %7118 = fmul fast float %7117, %7063
  %7119 = fmul fast float %7117, %7067
  %7120 = fmul fast float %7118, 2.500000e-01
  %7121 = fmul fast float %7119, 2.500000e-01
  %7122 = fadd fast float %7120, 5.000000e-01
  %7123 = fadd fast float %7121, 5.000000e-01
  %7124 = fsub fast float %7088, %7086
  %7125 = fptoui float %7124 to i32
  %7126 = add i32 %7125, 320
  %7127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %7126)  ; CBufferLoadLegacy(handle,regIndex)
  %7128 = extractvalue %dx.types.CBufRet.f32 %7127, 0
  %7129 = extractvalue %dx.types.CBufRet.f32 %7127, 1
  %7130 = fcmp fast une float %7113, %7088
  %7131 = fsub fast float %7063, %7128
  %7132 = fsub fast float %7067, %7129
  %7133 = call float @dx.op.unary.f32(i32 6, float %7131)  ; FAbs(value)
  %7134 = call float @dx.op.unary.f32(i32 6, float %7132)  ; FAbs(value)
  %7135 = fmul fast float %7133, %7117
  %7136 = fmul fast float %7134, %7117
  %7137 = fcmp fast olt float %7135, 1.000000e+00
  %7138 = fcmp fast olt float %7136, 1.000000e+00
  %7139 = and i1 %7137, %7138
  %7140 = or i1 %7130, %7139
  br i1 %7140, label %7141, label %7438, !dx.controlflow.hints !109

; <label>:7141                                    ; preds = %7079
  %7142 = fmul fast float %7119, 5.000000e-01
  %7143 = fmul fast float %7118, 5.000000e-01
  %7144 = fadd fast float %7142, 5.000000e-01
  %7145 = fadd fast float %7143, 5.000000e-01
  %7146 = sitofp i32 %7085 to float
  %7147 = fsub fast float %7113, %7146
  %7148 = call float @dx.op.unary.f32(i32 27, float %7147)  ; Round_ni(value)
  %7149 = call float @dx.op.unary.f32(i32 22, float %7113)  ; Frc(value)
  %7150 = call float @dx.op.unary.f32(i32 22, float %7145)  ; Frc(value)
  %7151 = call float @dx.op.unary.f32(i32 22, float %7144)  ; Frc(value)
  %7152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7150, float %7151, float %7148, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.ResRet.f32 %7152, 3
  %7157 = fcmp fast ogt float %7149, 0.000000e+00
  br i1 %7157, label %7158, label %7179, !dx.controlflow.hints !110

; <label>:7158                                    ; preds = %7141
  %7159 = fadd fast float %7148, 1.000000e+00
  %7160 = call float @dx.op.unary.f32(i32 22, float %7122)  ; Frc(value)
  %7161 = call float @dx.op.unary.f32(i32 22, float %7123)  ; Frc(value)
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7160, float %7161, float %7159, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.ResRet.f32 %7162, 1
  %7165 = extractvalue %dx.types.ResRet.f32 %7162, 2
  %7166 = extractvalue %dx.types.ResRet.f32 %7162, 3
  %7167 = fsub fast float %7163, %7153
  %7168 = fsub fast float %7164, %7154
  %7169 = fsub fast float %7165, %7155
  %7170 = fsub fast float %7166, %7156
  %7171 = fmul fast float %7167, %7149
  %7172 = fmul fast float %7168, %7149
  %7173 = fmul fast float %7169, %7149
  %7174 = fmul fast float %7170, %7149
  %7175 = fadd fast float %7171, %7153
  %7176 = fadd fast float %7172, %7154
  %7177 = fadd fast float %7173, %7155
  %7178 = fadd fast float %7174, %7156
  br label %7179

; <label>:7179                                    ; preds = %7158, %7141
  %7180 = phi float [ %7175, %7158 ], [ %7153, %7141 ]
  %7181 = phi float [ %7176, %7158 ], [ %7154, %7141 ]
  %7182 = phi float [ %7177, %7158 ], [ %7155, %7141 ]
  %7183 = phi float [ %7178, %7158 ], [ %7156, %7141 ]
  %7184 = fadd fast float %7180, -5.000000e-01
  %7185 = fadd fast float %7182, -5.000000e-01
  %7186 = fmul fast float %7184, 0xBFD5555560000000
  %7187 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7185, float %7186)  ; FMad(a,b,c)
  %7188 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7181, float 0.000000e+00)  ; FMad(a,b,c)
  %7189 = fadd fast float %7188, %7183
  %7190 = fmul fast float %7184, -7.500000e-01
  %7191 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7185, float %7190)  ; FMad(a,b,c)
  %7192 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7181, float 0.000000e+00)  ; FMad(a,b,c)
  %7193 = fadd fast float %7192, %7183
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 0
  %7198 = extractvalue %dx.types.CBufRet.f32 %7196, 1
  %7199 = extractvalue %dx.types.CBufRet.f32 %7196, 2
  %7200 = extractvalue %dx.types.CBufRet.f32 %7196, 3
  %7201 = fsub fast float %7197, %7187
  %7202 = fsub fast float %7198, %7189
  %7203 = fsub fast float %7199, %7191
  %7204 = fsub fast float %7200, %7193
  %7205 = fmul fast float %7201, %7195
  %7206 = fmul fast float %7202, %7195
  %7207 = fmul fast float %7203, %7195
  %7208 = fmul fast float %7204, %7195
  %7209 = fadd fast float %7205, %7187
  %7210 = fadd fast float %7206, %7189
  %7211 = fadd fast float %7207, %7191
  %7212 = fadd fast float %7208, %7193
  %7213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7214 = extractvalue %dx.types.ResRet.i32 %7213, 0
  %7215 = and i32 %7214, 536870911
  %7216 = uitofp i32 %7215 to float
  %7217 = fmul fast float %7216, %7063
  %7218 = fmul fast float %7216, %7067
  %7219 = fptoui float %7217 to i32
  %7220 = fptoui float %7218 to i32
  %7221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7222 = extractvalue %dx.types.ResRet.i32 %7221, 0
  %7223 = and i32 %7222, 31
  %7224 = lshr i32 %7219, %7223
  %7225 = lshr i32 %7220, %7223
  %7226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7227 = extractvalue %dx.types.ResRet.i32 %7226, 0
  %7228 = and i32 %7227, 31
  %7229 = shl i32 1, %7228
  %7230 = call i32 @dx.op.binary.i32(i32 40, i32 %7229, i32 4)  ; UMin(a,b)
  %7231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7232 = extractvalue %dx.types.ResRet.i32 %7231, 0
  %7233 = extractvalue %dx.types.ResRet.i32 %7231, 1
  %7234 = icmp eq i32 %7230, 0
  br i1 %7234, label %7276, label %7235

; <label>:7235                                    ; preds = %7179
  br label %7236

; <label>:7236                                    ; preds = %7264, %7235
  %7237 = phi i32 [ %7267, %7264 ], [ 0, %7235 ]
  %7238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7239 = extractvalue %dx.types.ResRet.i32 %7238, 0
  %7240 = lshr i32 %7239, 16
  %7241 = and i32 %7240, 31
  %7242 = shl i32 %7225, %7241
  %7243 = add i32 %7242, %7224
  %7244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.i32 %7244, 0
  %7246 = and i32 %7245, 31
  %7247 = shl i32 %7243, %7246
  %7248 = add i32 %7247, %7237
  %7249 = shl i32 %7248, 2
  %7250 = add i32 %7249, 32
  %7251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7250, i32 undef)  ; BufferLoad(srv,index,wot)
  %7252 = extractvalue %dx.types.ResRet.i32 %7251, 0
  %7253 = icmp slt i32 %7252, 0
  %7254 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7237
  %7255 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7237
  %7256 = bitcast float* %7254 to i32*
  %7257 = bitcast float* %7255 to i32*
  br i1 %7253, label %7258, label %7264

; <label>:7258                                    ; preds = %7236
  %7259 = and i32 %7252, 1073741823
  %7260 = add nuw nsw i32 %7259, 20
  %7261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7260, i32 undef)  ; BufferLoad(srv,index,wot)
  %7262 = extractvalue %dx.types.ResRet.i32 %7261, 0
  %7263 = extractvalue %dx.types.ResRet.i32 %7261, 1
  br label %7264

; <label>:7264                                    ; preds = %7258, %7236
  %7265 = phi i32 [ %7262, %7258 ], [ %7232, %7236 ]
  %7266 = phi i32 [ %7263, %7258 ], [ %7233, %7236 ]
  store i32 %7265, i32* %7256, align 4
  store i32 %7266, i32* %7257, align 4
  %7267 = add nuw i32 %7237, 1
  %7268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.i32 %7268, 2
  %7270 = icmp eq i32 %7269, 0
  %7271 = icmp ugt i32 %7252, -1073741825
  %7272 = and i1 %7271, %7270
  %7273 = icmp ult i32 %7267, %7230
  %7274 = and i1 %7272, %7273
  br i1 %7274, label %7236, label %7275

; <label>:7275                                    ; preds = %7264
  br label %7276

; <label>:7276                                    ; preds = %7275, %7179
  %7277 = phi i32 [ 0, %7179 ], [ %7267, %7275 ]
  %7278 = extractvalue %dx.types.CBufRet.f32 %7041, 2
  %7279 = fptoui float %7278 to i32
  %7280 = icmp eq i32 %7279, 0
  br i1 %7280, label %7332, label %7281

; <label>:7281                                    ; preds = %7276
  br label %7282

; <label>:7282                                    ; preds = %7327, %7281
  %7283 = phi i32 [ %7328, %7327 ], [ %7277, %7281 ]
  %7284 = phi i32 [ %7329, %7327 ], [ 0, %7281 ]
  %7285 = lshr i32 %7284, 2
  %7286 = and i32 %7284, 3
  %7287 = add nuw nsw i32 %7285, 83
  %7288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %7287)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.i32 %7288, 0
  %7290 = extractvalue %dx.types.CBufRet.i32 %7288, 1
  %7291 = extractvalue %dx.types.CBufRet.i32 %7288, 2
  %7292 = extractvalue %dx.types.CBufRet.i32 %7288, 3
  %7293 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %7289, i32* %7293, align 4
  %7294 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %7290, i32* %7294, align 4
  %7295 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %7291, i32* %7295, align 4
  %7296 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %7292, i32* %7296, align 4
  %7297 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %7286
  %7298 = load i32, i32* %7297, align 4, !tbaa !111, !noalias !115
  %7299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7300 = extractvalue %dx.types.ResRet.i32 %7299, 0
  %7301 = lshr i32 %7300, 16
  %7302 = and i32 %7301, 31
  %7303 = shl i32 %7225, %7302
  %7304 = add i32 %7303, %7224
  %7305 = shl i32 %7304, 2
  %7306 = add i32 %7305, %7298
  %7307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7306, i32 undef)  ; BufferLoad(srv,index,wot)
  %7308 = extractvalue %dx.types.ResRet.i32 %7307, 0
  %7309 = icmp eq i32 %7308, 0
  br i1 %7309, label %7327, label %7310

; <label>:7310                                    ; preds = %7282
  %7311 = icmp slt i32 %7308, 0
  %7312 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7283
  %7313 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7283
  %7314 = bitcast float* %7312 to i32*
  %7315 = bitcast float* %7313 to i32*
  br i1 %7311, label %7316, label %7323

; <label>:7316                                    ; preds = %7310
  %7317 = and i32 %7308, 1073741823
  %7318 = add i32 %7298, 20
  %7319 = add i32 %7318, %7317
  %7320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7319, i32 undef)  ; BufferLoad(srv,index,wot)
  %7321 = extractvalue %dx.types.ResRet.i32 %7320, 0
  %7322 = extractvalue %dx.types.ResRet.i32 %7320, 1
  br label %7323

; <label>:7323                                    ; preds = %7316, %7310
  %7324 = phi i32 [ %7321, %7316 ], [ %7232, %7310 ]
  %7325 = phi i32 [ %7322, %7316 ], [ %7233, %7310 ]
  store i32 %7324, i32* %7314, align 4
  store i32 %7325, i32* %7315, align 4
  %7326 = add i32 %7283, 1
  br label %7327

; <label>:7327                                    ; preds = %7323, %7282
  %7328 = phi i32 [ %7283, %7282 ], [ %7326, %7323 ]
  %7329 = add nuw i32 %7284, 1
  %7330 = icmp eq i32 %7329, %7279
  br i1 %7330, label %7331, label %7282

; <label>:7331                                    ; preds = %7327
  br label %7332

; <label>:7332                                    ; preds = %7331, %7276
  %7333 = phi i32 [ %7277, %7276 ], [ %7328, %7331 ]
  %7334 = icmp eq i32 %7333, 1
  %7335 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7336 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7334, label %7337, label %7340

; <label>:7337                                    ; preds = %7332
  %7338 = load float, float* %7335, align 4
  %7339 = load float, float* %7336, align 4
  br label %7367

; <label>:7340                                    ; preds = %7332
  %7341 = load float, float* %7335, align 4
  %7342 = load float, float* %7336, align 4
  %7343 = fdiv fast float 1.000000e+00, %7342
  %7344 = fsub fast float %7341, %7343
  %7345 = icmp ugt i32 %7333, 1
  br i1 %7345, label %7346, label %7362

; <label>:7346                                    ; preds = %7340
  br label %7347

; <label>:7347                                    ; preds = %7347, %7346
  %7348 = phi float [ %7357, %7347 ], [ %7344, %7346 ]
  %7349 = phi float [ %7358, %7347 ], [ %7341, %7346 ]
  %7350 = phi i32 [ %7359, %7347 ], [ 1, %7346 ]
  %7351 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7350
  %7352 = load float, float* %7351, align 4
  %7353 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7350
  %7354 = load float, float* %7353, align 4
  %7355 = fdiv fast float 1.000000e+00, %7354
  %7356 = fsub fast float %7352, %7355
  %7357 = call float @dx.op.binary.f32(i32 36, float %7348, float %7356)  ; FMin(a,b)
  %7358 = call float @dx.op.binary.f32(i32 35, float %7349, float %7352)  ; FMax(a,b)
  %7359 = add nuw i32 %7350, 1
  %7360 = icmp eq i32 %7359, %7333
  br i1 %7360, label %7361, label %7347

; <label>:7361                                    ; preds = %7347
  br label %7362

; <label>:7362                                    ; preds = %7361, %7340
  %7363 = phi float [ %7344, %7340 ], [ %7357, %7361 ]
  %7364 = phi float [ %7341, %7340 ], [ %7358, %7361 ]
  %7365 = fsub fast float %7364, %7363
  %7366 = fdiv fast float 1.000000e+00, %7365
  br label %7367

; <label>:7367                                    ; preds = %7362, %7337
  %7368 = phi float [ %7338, %7337 ], [ %7364, %7362 ]
  %7369 = phi float [ %7339, %7337 ], [ %7366, %7362 ]
  %7370 = fadd fast float %7071, %7368
  %7371 = fmul fast float %7370, %7369
  %7372 = call float @dx.op.unary.f32(i32 7, float %7371)  ; Saturate(value)
  %7373 = fmul fast float %7372, 2.000000e+00
  %7374 = fsub fast float 1.000000e+00, %7373
  %7375 = fmul fast float %7209, %7209
  %7376 = fsub fast float %7210, %7375
  %7377 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7376)  ; FMax(a,b)
  %7378 = fdiv fast float 1.000000e+00, %7377
  %7379 = fmul fast float %7210, %7209
  %7380 = fsub fast float %7211, %7379
  %7381 = fsub fast float %7374, %7209
  %7382 = fmul fast float %7374, %7374
  %7383 = fsub fast float %7382, %7210
  %7384 = fmul fast float %7378, %7380
  %7385 = fmul fast float %7384, %7381
  %7386 = fsub fast float %7383, %7385
  %7387 = fmul fast float %7210, %7210
  %7388 = fsub fast float %7212, %7387
  %7389 = fmul fast float %7380, %7380
  %7390 = fmul fast float %7389, %7378
  %7391 = fsub fast float %7388, %7390
  %7392 = fdiv fast float %7386, %7391
  %7393 = fmul fast float %7392, %7380
  %7394 = fsub fast float %7381, %7393
  %7395 = fmul fast float %7394, %7378
  %7396 = fmul fast float %7395, %7209
  %7397 = fsub fast float 1.000000e+00, %7396
  %7398 = fmul fast float %7392, %7210
  %7399 = fsub fast float %7397, %7398
  %7400 = fmul fast float %7395, %7395
  %7401 = fmul fast float %7392, 4.000000e+00
  %7402 = fmul fast float %7401, %7399
  %7403 = fsub fast float %7400, %7402
  %7404 = call float @dx.op.unary.f32(i32 24, float %7403)  ; Sqrt(value)
  %7405 = fcmp fast oge float %7395, 0.000000e+00
  %7406 = fsub fast float -0.000000e+00, %7404
  %7407 = select i1 %7405, float %7406, float %7404
  %7408 = fsub fast float %7407, %7395
  %7409 = fdiv fast float %7408, %7392
  %7410 = fdiv fast float %7399, %7408
  %7411 = fmul fast float %7409, 5.000000e-01
  %7412 = fmul fast float %7410, 2.000000e+00
  %7413 = select i1 %7405, float %7411, float %7412
  %7414 = select i1 %7405, float %7412, float %7411
  %7415 = call float @dx.op.binary.f32(i32 35, float %7413, float %7414)  ; FMax(a,b)
  %7416 = call float @dx.op.binary.f32(i32 36, float %7413, float %7414)  ; FMin(a,b)
  %7417 = fcmp fast ogt float %7374, %7415
  %7418 = fsub fast float %7374, %7416
  %7419 = fsub fast float %7374, %7415
  %7420 = fsub fast float %7415, %7416
  %7421 = select i1 %7417, float %7419, float %7420
  %7422 = fmul float %7418, %7421
  %7423 = select i1 %7417, float %7416, float %7374
  %7424 = fcmp fast ogt float %7374, %7416
  %7425 = fmul fast float %7423, %7415
  %7426 = fadd fast float %7423, %7415
  %7427 = fmul fast float %7426, %7209
  %7428 = fadd fast float %7425, %7210
  %7429 = fsub fast float %7428, %7427
  %7430 = fdiv fast float %7429, %7422
  %7431 = select i1 %7424, float %7430, float 0.000000e+00
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = select i1 %7417, float %7432, float %7431
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7435 = extractvalue %dx.types.CBufRet.f32 %7194, 3
  %7436 = fmul fast float %7435, %7434
  %7437 = fsub fast float 1.000000e+00, %7436
  br label %7438

; <label>:7438                                    ; preds = %7367, %7079, %7044, %7040, %7006
  %7439 = phi float [ 1.000000e+00, %7006 ], [ %7437, %7367 ], [ 1.000000e+00, %7044 ], [ 1.000000e+00, %7079 ], [ 1.000000e+00, %7040 ]
  %7440 = fcmp fast ogt float %7036, 0.000000e+00
  br i1 %7440, label %7441, label %7603, !dx.controlflow.hints !124

; <label>:7441                                    ; preds = %7438
  %7442 = fadd fast float %6949, %6923
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7448 = call float @dx.op.binary.f32(i32 35, float %7442, float 0.000000e+00)  ; FMax(a,b)
  %7449 = fadd fast float %7448, 0x3F10000000000000
  %7450 = fcmp fast oeq float %7447, 0.000000e+00
  br i1 %7450, label %7451, label %7518

; <label>:7451                                    ; preds = %7441
  %7452 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7454 = fmul fast float %7453, %6938
  %7455 = fmul fast float %7452, %6939
  %7456 = fadd fast float %7454, 5.000000e-01
  %7457 = call float @dx.op.unary.f32(i32 27, float %7456)  ; Round_ni(value)
  %7458 = fadd fast float %7455, 5.000000e-01
  %7459 = call float @dx.op.unary.f32(i32 27, float %7458)  ; Round_ni(value)
  %7460 = fsub fast float %7456, %7457
  %7461 = fsub fast float %7458, %7459
  %7462 = fadd fast float %7457, -5.000000e-01
  %7463 = fadd fast float %7459, -5.000000e-01
  %7464 = fmul fast float %7460, 2.000000e+00
  %7465 = fsub fast float 3.000000e+00, %7464
  %7466 = fadd fast float %7464, 1.000000e+00
  %7467 = fsub fast float 2.000000e+00, %7460
  %7468 = bitcast float %7465 to i32
  %7469 = sub nsw i32 2129859010, %7468
  %7470 = bitcast i32 %7469 to float
  %7471 = fmul fast float %7470, %7467
  %7472 = fadd fast float %7471, -1.000000e+00
  %7473 = bitcast float %7466 to i32
  %7474 = sub nsw i32 2129859010, %7473
  %7475 = bitcast i32 %7474 to float
  %7476 = fmul fast float %7475, %7460
  %7477 = fadd fast float %7476, 1.000000e+00
  %7478 = fmul fast float %7461, 2.000000e+00
  %7479 = fsub fast float 3.000000e+00, %7478
  %7480 = fadd fast float %7478, 1.000000e+00
  %7481 = fsub fast float 2.000000e+00, %7461
  %7482 = bitcast float %7479 to i32
  %7483 = sub nsw i32 2129859010, %7482
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7484, %7481
  %7486 = fadd fast float %7485, -1.000000e+00
  %7487 = bitcast float %7480 to i32
  %7488 = sub nsw i32 2129859010, %7487
  %7489 = bitcast i32 %7488 to float
  %7490 = fmul fast float %7489, %7461
  %7491 = fadd fast float %7490, 1.000000e+00
  %7492 = fadd fast float %7472, %7462
  %7493 = fmul fast float %7492, %7444
  %7494 = fadd fast float %7486, %7463
  %7495 = fmul fast float %7494, %7445
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7493, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = fmul fast float %7497, %7465
  %7499 = fadd fast float %7477, %7462
  %7500 = fmul fast float %7499, %7444
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7500, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = fmul fast float %7502, %7466
  %7504 = fadd fast float %7491, %7463
  %7505 = fmul fast float %7504, %7445
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7493, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7465
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7500, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7510, %7466
  %7512 = fadd fast float %7511, %7508
  %7513 = fmul fast float %7512, %7480
  %7514 = fadd fast float %7503, %7498
  %7515 = fmul fast float %7514, %7479
  %7516 = fadd fast float %7515, %7513
  %7517 = fmul fast float %7516, 6.250000e-02
  br label %7603

; <label>:7518                                    ; preds = %7441
  %7519 = fmul fast float %273, 0x401921FB60000000
  %7520 = call float @dx.op.unary.f32(i32 13, float %7519)  ; Sin(value)
  %7521 = call float @dx.op.unary.f32(i32 12, float %7519)  ; Cos(value)
  %7522 = fsub fast float -0.000000e+00, %7520
  br label %7523

; <label>:7523                                    ; preds = %7572, %7518
  %7524 = phi float [ 0.000000e+00, %7518 ], [ %7567, %7572 ]
  %7525 = phi float [ 0.000000e+00, %7518 ], [ %7569, %7572 ]
  %7526 = phi i32 [ 0, %7518 ], [ %7573, %7572 ]
  %7527 = mul i32 %7526, 2
  %7528 = add i32 0, %7527
  %7529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7528
  %7530 = load float, float* %7529, align 4
  %7531 = mul i32 %7526, 2
  %7532 = add i32 1, %7531
  %7533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7532
  %7534 = load float, float* %7533, align 4
  %7535 = fmul fast float %7530, %7521
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7522, float %7535)  ; FMad(a,b,c)
  %7537 = fmul fast float %7530, %7520
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7521, float %7537)  ; FMad(a,b,c)
  %7539 = fmul fast float %7536, %7447
  %7540 = fmul fast float %7538, %7447
  %7541 = fadd fast float %7539, %6938
  %7542 = fadd fast float %7540, %6939
  %7543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %7541, float %7542, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7544 = extractvalue %dx.types.ResRet.f32 %7543, 0
  %7545 = extractvalue %dx.types.ResRet.f32 %7543, 1
  %7546 = extractvalue %dx.types.ResRet.f32 %7543, 2
  %7547 = extractvalue %dx.types.ResRet.f32 %7543, 3
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7544, float* %7548, align 4
  %7549 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7545, float* %7549, align 4
  %7550 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7546, float* %7550, align 4
  %7551 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7547, float* %7551, align 4
  %7552 = fsub fast float %7544, %7449
  %7553 = fcmp fast olt float %7552, 0.000000e+00
  %7554 = select i1 %7553, float 0.000000e+00, float 1.000000e+00
  %7555 = fadd fast float %7554, %7524
  %7556 = fmul fast float %7554, %7552
  %7557 = fadd fast float %7556, %7525
  br label %7558

; <label>:7558                                    ; preds = %7558, %7523
  %7559 = phi i32 [ 1, %7523 ], [ %7570, %7558 ]
  %7560 = phi float [ %7557, %7523 ], [ %7569, %7558 ]
  %7561 = phi float [ %7555, %7523 ], [ %7567, %7558 ]
  %7562 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7559
  %7563 = load float, float* %7562, align 4, !tbaa !125, !noalias !115
  %7564 = fsub fast float %7563, %7449
  %7565 = fcmp fast olt float %7564, 0.000000e+00
  %7566 = select i1 %7565, float 0.000000e+00, float 1.000000e+00
  %7567 = fadd fast float %7566, %7561
  %7568 = fmul fast float %7566, %7564
  %7569 = fadd fast float %7568, %7560
  %7570 = add nuw nsw i32 %7559, 1
  %7571 = icmp eq i32 %7570, 4
  br i1 %7571, label %7572, label %7558, !llvm.loop !127

; <label>:7572                                    ; preds = %7558
  %7573 = add nuw nsw i32 %7526, 1
  %7574 = icmp eq i32 %7573, 8
  br i1 %7574, label %7575, label %7523, !llvm.loop !128

; <label>:7575                                    ; preds = %7572
  %7576 = fdiv fast float 1.000000e+00, %7567
  %7577 = fmul fast float %7576, %7569
  %7578 = fdiv fast float 1.000000e+00, %7449
  %7579 = fmul fast float %7577, %7578
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7580, float 0.000000e+00)  ; FMax(a,b)
  %7582 = fmul fast float %7567, 3.125000e-02
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7583, 2.000000e+00
  %7585 = fadd fast float %7584, -1.000000e+00
  %7586 = fcmp fast ogt float %7585, 0.000000e+00
  %7587 = fcmp fast olt float %7585, 0.000000e+00
  %7588 = zext i1 %7586 to i32
  %7589 = zext i1 %7587 to i32
  %7590 = sub nsw i32 %7588, %7589
  %7591 = sitofp i32 %7590 to float
  %7592 = fmul fast float %7591, %7585
  %7593 = fsub fast float 1.000000e+00, %7592
  %7594 = fmul fast float %7593, %7593
  %7595 = fmul fast float %7594, %7593
  %7596 = fsub fast float %7593, %7595
  %7597 = fmul fast float %7596, %7581
  %7598 = fsub fast float 1.000000e+00, %7595
  %7599 = fsub fast float %7598, %7597
  %7600 = fmul fast float %7591, 5.000000e-01
  %7601 = fmul fast float %7600, %7599
  %7602 = fsub fast float 5.000000e-01, %7601
  br label %7603

; <label>:7603                                    ; preds = %7575, %7451, %7438
  %7604 = phi float [ 1.000000e+00, %7438 ], [ %7517, %7451 ], [ %7602, %7575 ]
  %7605 = fcmp fast ogt float %7034, 0.000000e+00
  br i1 %7605, label %7606, label %7770, !dx.controlflow.hints !129

; <label>:7606                                    ; preds = %7603
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7609 = fadd fast float %7608, %6923
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %7612 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 1
  %7615 = call float @dx.op.binary.f32(i32 35, float %7609, float 0.000000e+00)  ; FMax(a,b)
  %7616 = fadd fast float %7615, 0x3F10000000000000
  %7617 = fcmp fast oeq float %7614, 0.000000e+00
  br i1 %7617, label %7618, label %7685

; <label>:7618                                    ; preds = %7606
  %7619 = extractvalue %dx.types.CBufRet.f32 %7610, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7610, 0
  %7621 = fmul fast float %7620, %6930
  %7622 = fmul fast float %7619, %6931
  %7623 = fadd fast float %7621, 5.000000e-01
  %7624 = call float @dx.op.unary.f32(i32 27, float %7623)  ; Round_ni(value)
  %7625 = fadd fast float %7622, 5.000000e-01
  %7626 = call float @dx.op.unary.f32(i32 27, float %7625)  ; Round_ni(value)
  %7627 = fsub fast float %7623, %7624
  %7628 = fsub fast float %7625, %7626
  %7629 = fadd fast float %7624, -5.000000e-01
  %7630 = fadd fast float %7626, -5.000000e-01
  %7631 = fmul fast float %7627, 2.000000e+00
  %7632 = fsub fast float 3.000000e+00, %7631
  %7633 = fadd fast float %7631, 1.000000e+00
  %7634 = fsub fast float 2.000000e+00, %7627
  %7635 = bitcast float %7632 to i32
  %7636 = sub nsw i32 2129859010, %7635
  %7637 = bitcast i32 %7636 to float
  %7638 = fmul fast float %7637, %7634
  %7639 = fadd fast float %7638, -1.000000e+00
  %7640 = bitcast float %7633 to i32
  %7641 = sub nsw i32 2129859010, %7640
  %7642 = bitcast i32 %7641 to float
  %7643 = fmul fast float %7642, %7627
  %7644 = fadd fast float %7643, 1.000000e+00
  %7645 = fmul fast float %7628, 2.000000e+00
  %7646 = fsub fast float 3.000000e+00, %7645
  %7647 = fadd fast float %7645, 1.000000e+00
  %7648 = fsub fast float 2.000000e+00, %7628
  %7649 = bitcast float %7646 to i32
  %7650 = sub nsw i32 2129859010, %7649
  %7651 = bitcast i32 %7650 to float
  %7652 = fmul fast float %7651, %7648
  %7653 = fadd fast float %7652, -1.000000e+00
  %7654 = bitcast float %7647 to i32
  %7655 = sub nsw i32 2129859010, %7654
  %7656 = bitcast i32 %7655 to float
  %7657 = fmul fast float %7656, %7628
  %7658 = fadd fast float %7657, 1.000000e+00
  %7659 = fadd fast float %7639, %7629
  %7660 = fmul fast float %7659, %7611
  %7661 = fadd fast float %7653, %7630
  %7662 = fmul fast float %7661, %7612
  %7663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7660, float %7662, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = fmul fast float %7664, %7632
  %7666 = fadd fast float %7644, %7629
  %7667 = fmul fast float %7666, %7611
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7667, float %7662, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = fmul fast float %7669, %7633
  %7671 = fadd fast float %7658, %7630
  %7672 = fmul fast float %7671, %7612
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7660, float %7672, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = fmul fast float %7674, %7632
  %7676 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7667, float %7672, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7677 = extractvalue %dx.types.ResRet.f32 %7676, 0
  %7678 = fmul fast float %7677, %7633
  %7679 = fadd fast float %7678, %7675
  %7680 = fmul fast float %7679, %7647
  %7681 = fadd fast float %7670, %7665
  %7682 = fmul fast float %7681, %7646
  %7683 = fadd fast float %7682, %7680
  %7684 = fmul fast float %7683, 6.250000e-02
  br label %7770

; <label>:7685                                    ; preds = %7606
  %7686 = fmul fast float %273, 0x401921FB60000000
  %7687 = call float @dx.op.unary.f32(i32 13, float %7686)  ; Sin(value)
  %7688 = call float @dx.op.unary.f32(i32 12, float %7686)  ; Cos(value)
  %7689 = fsub fast float -0.000000e+00, %7687
  br label %7690

; <label>:7690                                    ; preds = %7739, %7685
  %7691 = phi float [ 0.000000e+00, %7685 ], [ %7734, %7739 ]
  %7692 = phi float [ 0.000000e+00, %7685 ], [ %7736, %7739 ]
  %7693 = phi i32 [ 0, %7685 ], [ %7740, %7739 ]
  %7694 = mul i32 %7693, 2
  %7695 = add i32 0, %7694
  %7696 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7695
  %7697 = load float, float* %7696, align 4
  %7698 = mul i32 %7693, 2
  %7699 = add i32 1, %7698
  %7700 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7699
  %7701 = load float, float* %7700, align 4
  %7702 = fmul fast float %7697, %7688
  %7703 = call float @dx.op.tertiary.f32(i32 46, float %7701, float %7689, float %7702)  ; FMad(a,b,c)
  %7704 = fmul fast float %7697, %7687
  %7705 = call float @dx.op.tertiary.f32(i32 46, float %7701, float %7688, float %7704)  ; FMad(a,b,c)
  %7706 = fmul fast float %7703, %7614
  %7707 = fmul fast float %7705, %7614
  %7708 = fadd fast float %7706, %6930
  %7709 = fadd fast float %7707, %6931
  %7710 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7708, float %7709, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.ResRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.ResRet.f32 %7710, 2
  %7714 = extractvalue %dx.types.ResRet.f32 %7710, 3
  %7715 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7711, float* %7715, align 4
  %7716 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7712, float* %7716, align 4
  %7717 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7713, float* %7717, align 4
  %7718 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7714, float* %7718, align 4
  %7719 = fsub fast float %7711, %7616
  %7720 = fcmp fast olt float %7719, 0.000000e+00
  %7721 = select i1 %7720, float 0.000000e+00, float 1.000000e+00
  %7722 = fadd fast float %7721, %7691
  %7723 = fmul fast float %7721, %7719
  %7724 = fadd fast float %7723, %7692
  br label %7725

; <label>:7725                                    ; preds = %7725, %7690
  %7726 = phi i32 [ 1, %7690 ], [ %7737, %7725 ]
  %7727 = phi float [ %7724, %7690 ], [ %7736, %7725 ]
  %7728 = phi float [ %7722, %7690 ], [ %7734, %7725 ]
  %7729 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7726
  %7730 = load float, float* %7729, align 4, !tbaa !125, !noalias !115
  %7731 = fsub fast float %7730, %7616
  %7732 = fcmp fast olt float %7731, 0.000000e+00
  %7733 = select i1 %7732, float 0.000000e+00, float 1.000000e+00
  %7734 = fadd fast float %7733, %7728
  %7735 = fmul fast float %7733, %7731
  %7736 = fadd fast float %7735, %7727
  %7737 = add nuw nsw i32 %7726, 1
  %7738 = icmp eq i32 %7737, 4
  br i1 %7738, label %7739, label %7725, !llvm.loop !127

; <label>:7739                                    ; preds = %7725
  %7740 = add nuw nsw i32 %7693, 1
  %7741 = icmp eq i32 %7740, 8
  br i1 %7741, label %7742, label %7690, !llvm.loop !128

; <label>:7742                                    ; preds = %7739
  %7743 = fdiv fast float 1.000000e+00, %7734
  %7744 = fmul fast float %7743, %7736
  %7745 = fdiv fast float 1.000000e+00, %7616
  %7746 = fmul fast float %7744, %7745
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = call float @dx.op.binary.f32(i32 35, float %7747, float 0.000000e+00)  ; FMax(a,b)
  %7749 = fmul fast float %7734, 3.125000e-02
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fmul fast float %7750, 2.000000e+00
  %7752 = fadd fast float %7751, -1.000000e+00
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  %7754 = fcmp fast olt float %7752, 0.000000e+00
  %7755 = zext i1 %7753 to i32
  %7756 = zext i1 %7754 to i32
  %7757 = sub nsw i32 %7755, %7756
  %7758 = sitofp i32 %7757 to float
  %7759 = fmul fast float %7758, %7752
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7760, %7760
  %7762 = fmul fast float %7761, %7760
  %7763 = fsub fast float %7760, %7762
  %7764 = fmul fast float %7763, %7748
  %7765 = fsub fast float 1.000000e+00, %7762
  %7766 = fsub fast float %7765, %7764
  %7767 = fmul fast float %7758, 5.000000e-01
  %7768 = fmul fast float %7767, %7766
  %7769 = fsub fast float 5.000000e-01, %7768
  br label %7770

; <label>:7770                                    ; preds = %7742, %7618, %7603
  %7771 = phi float [ 1.000000e+00, %7603 ], [ %7684, %7618 ], [ %7769, %7742 ]
  %7772 = fcmp fast ogt float %7033, 0.000000e+00
  br i1 %7772, label %7773, label %7937, !dx.controlflow.hints !130

; <label>:7773                                    ; preds = %7770
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = fadd fast float %7775, %6923
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = call float @dx.op.binary.f32(i32 35, float %7776, float 0.000000e+00)  ; FMax(a,b)
  %7783 = fadd fast float %7782, 0x3F10000000000000
  %7784 = fcmp fast oeq float %7781, 0.000000e+00
  br i1 %7784, label %7785, label %7852

; <label>:7785                                    ; preds = %7773
  %7786 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7787 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7788 = fmul fast float %7787, %6915
  %7789 = fmul fast float %7786, %6919
  %7790 = fadd fast float %7788, 5.000000e-01
  %7791 = call float @dx.op.unary.f32(i32 27, float %7790)  ; Round_ni(value)
  %7792 = fadd fast float %7789, 5.000000e-01
  %7793 = call float @dx.op.unary.f32(i32 27, float %7792)  ; Round_ni(value)
  %7794 = fsub fast float %7790, %7791
  %7795 = fsub fast float %7792, %7793
  %7796 = fadd fast float %7791, -5.000000e-01
  %7797 = fadd fast float %7793, -5.000000e-01
  %7798 = fmul fast float %7794, 2.000000e+00
  %7799 = fsub fast float 3.000000e+00, %7798
  %7800 = fadd fast float %7798, 1.000000e+00
  %7801 = fsub fast float 2.000000e+00, %7794
  %7802 = bitcast float %7799 to i32
  %7803 = sub nsw i32 2129859010, %7802
  %7804 = bitcast i32 %7803 to float
  %7805 = fmul fast float %7804, %7801
  %7806 = fadd fast float %7805, -1.000000e+00
  %7807 = bitcast float %7800 to i32
  %7808 = sub nsw i32 2129859010, %7807
  %7809 = bitcast i32 %7808 to float
  %7810 = fmul fast float %7809, %7794
  %7811 = fadd fast float %7810, 1.000000e+00
  %7812 = fmul fast float %7795, 2.000000e+00
  %7813 = fsub fast float 3.000000e+00, %7812
  %7814 = fadd fast float %7812, 1.000000e+00
  %7815 = fsub fast float 2.000000e+00, %7795
  %7816 = bitcast float %7813 to i32
  %7817 = sub nsw i32 2129859010, %7816
  %7818 = bitcast i32 %7817 to float
  %7819 = fmul fast float %7818, %7815
  %7820 = fadd fast float %7819, -1.000000e+00
  %7821 = bitcast float %7814 to i32
  %7822 = sub nsw i32 2129859010, %7821
  %7823 = bitcast i32 %7822 to float
  %7824 = fmul fast float %7823, %7795
  %7825 = fadd fast float %7824, 1.000000e+00
  %7826 = fadd fast float %7806, %7796
  %7827 = fmul fast float %7826, %7778
  %7828 = fadd fast float %7820, %7797
  %7829 = fmul fast float %7828, %7779
  %7830 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7827, float %7829, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = fmul fast float %7831, %7799
  %7833 = fadd fast float %7811, %7796
  %7834 = fmul fast float %7833, %7778
  %7835 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7834, float %7829, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = fmul fast float %7836, %7800
  %7838 = fadd fast float %7825, %7797
  %7839 = fmul fast float %7838, %7779
  %7840 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7827, float %7839, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 0
  %7842 = fmul fast float %7841, %7799
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7834, float %7839, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = fmul fast float %7844, %7800
  %7846 = fadd fast float %7845, %7842
  %7847 = fmul fast float %7846, %7814
  %7848 = fadd fast float %7837, %7832
  %7849 = fmul fast float %7848, %7813
  %7850 = fadd fast float %7849, %7847
  %7851 = fmul fast float %7850, 6.250000e-02
  br label %7937

; <label>:7852                                    ; preds = %7773
  %7853 = fmul fast float %273, 0x401921FB60000000
  %7854 = call float @dx.op.unary.f32(i32 13, float %7853)  ; Sin(value)
  %7855 = call float @dx.op.unary.f32(i32 12, float %7853)  ; Cos(value)
  %7856 = fsub fast float -0.000000e+00, %7854
  br label %7857

; <label>:7857                                    ; preds = %7906, %7852
  %7858 = phi float [ 0.000000e+00, %7852 ], [ %7901, %7906 ]
  %7859 = phi float [ 0.000000e+00, %7852 ], [ %7903, %7906 ]
  %7860 = phi i32 [ 0, %7852 ], [ %7907, %7906 ]
  %7861 = mul i32 %7860, 2
  %7862 = add i32 0, %7861
  %7863 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7862
  %7864 = load float, float* %7863, align 4
  %7865 = mul i32 %7860, 2
  %7866 = add i32 1, %7865
  %7867 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7866
  %7868 = load float, float* %7867, align 4
  %7869 = fmul fast float %7864, %7855
  %7870 = call float @dx.op.tertiary.f32(i32 46, float %7868, float %7856, float %7869)  ; FMad(a,b,c)
  %7871 = fmul fast float %7864, %7854
  %7872 = call float @dx.op.tertiary.f32(i32 46, float %7868, float %7855, float %7871)  ; FMad(a,b,c)
  %7873 = fmul fast float %7870, %7781
  %7874 = fmul fast float %7872, %7781
  %7875 = fadd fast float %7873, %6915
  %7876 = fadd fast float %7874, %6919
  %7877 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7875, float %7876, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = extractvalue %dx.types.ResRet.f32 %7877, 3
  %7882 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7878, float* %7882, align 4
  %7883 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7879, float* %7883, align 4
  %7884 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7880, float* %7884, align 4
  %7885 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7881, float* %7885, align 4
  %7886 = fsub fast float %7878, %7783
  %7887 = fcmp fast olt float %7886, 0.000000e+00
  %7888 = select i1 %7887, float 0.000000e+00, float 1.000000e+00
  %7889 = fadd fast float %7888, %7858
  %7890 = fmul fast float %7888, %7886
  %7891 = fadd fast float %7890, %7859
  br label %7892

; <label>:7892                                    ; preds = %7892, %7857
  %7893 = phi i32 [ 1, %7857 ], [ %7904, %7892 ]
  %7894 = phi float [ %7891, %7857 ], [ %7903, %7892 ]
  %7895 = phi float [ %7889, %7857 ], [ %7901, %7892 ]
  %7896 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7893
  %7897 = load float, float* %7896, align 4, !tbaa !125, !noalias !115
  %7898 = fsub fast float %7897, %7783
  %7899 = fcmp fast olt float %7898, 0.000000e+00
  %7900 = select i1 %7899, float 0.000000e+00, float 1.000000e+00
  %7901 = fadd fast float %7900, %7895
  %7902 = fmul fast float %7900, %7898
  %7903 = fadd fast float %7902, %7894
  %7904 = add nuw nsw i32 %7893, 1
  %7905 = icmp eq i32 %7904, 4
  br i1 %7905, label %7906, label %7892, !llvm.loop !127

; <label>:7906                                    ; preds = %7892
  %7907 = add nuw nsw i32 %7860, 1
  %7908 = icmp eq i32 %7907, 8
  br i1 %7908, label %7909, label %7857, !llvm.loop !128

; <label>:7909                                    ; preds = %7906
  %7910 = fdiv fast float 1.000000e+00, %7901
  %7911 = fmul fast float %7910, %7903
  %7912 = fdiv fast float 1.000000e+00, %7783
  %7913 = fmul fast float %7911, %7912
  %7914 = call float @dx.op.unary.f32(i32 7, float %7913)  ; Saturate(value)
  %7915 = call float @dx.op.binary.f32(i32 35, float %7914, float 0.000000e+00)  ; FMax(a,b)
  %7916 = fmul fast float %7901, 3.125000e-02
  %7917 = call float @dx.op.unary.f32(i32 7, float %7916)  ; Saturate(value)
  %7918 = fmul fast float %7917, 2.000000e+00
  %7919 = fadd fast float %7918, -1.000000e+00
  %7920 = fcmp fast ogt float %7919, 0.000000e+00
  %7921 = fcmp fast olt float %7919, 0.000000e+00
  %7922 = zext i1 %7920 to i32
  %7923 = zext i1 %7921 to i32
  %7924 = sub nsw i32 %7922, %7923
  %7925 = sitofp i32 %7924 to float
  %7926 = fmul fast float %7925, %7919
  %7927 = fsub fast float 1.000000e+00, %7926
  %7928 = fmul fast float %7927, %7927
  %7929 = fmul fast float %7928, %7927
  %7930 = fsub fast float %7927, %7929
  %7931 = fmul fast float %7930, %7915
  %7932 = fsub fast float 1.000000e+00, %7929
  %7933 = fsub fast float %7932, %7931
  %7934 = fmul fast float %7925, 5.000000e-01
  %7935 = fmul fast float %7934, %7933
  %7936 = fsub fast float 5.000000e-01, %7935
  br label %7937

; <label>:7937                                    ; preds = %7909, %7785, %7770
  %7938 = phi float [ 1.000000e+00, %7770 ], [ %7851, %7785 ], [ %7936, %7909 ]
  %7939 = fsub fast float %7604, %7439
  %7940 = fmul fast float %7939, %6977
  %7941 = fadd fast float %7940, %7439
  %7942 = fsub fast float %7771, %7941
  %7943 = fmul fast float %7942, %7007
  %7944 = fadd fast float %7943, %7941
  %7945 = fsub fast float %7938, %7944
  %7946 = fmul fast float %7945, %7033
  %7947 = fadd fast float %7946, %7944
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7950 = fcmp fast ogt float %7949, 0.000000e+00
  br i1 %7950, label %7951, label %7991, !dx.controlflow.hints !131

; <label>:7951                                    ; preds = %7937
  %7952 = fcmp fast ugt float %7949, 0.000000e+00
  br i1 %7952, label %7953, label %7988

; <label>:7953                                    ; preds = %7951
  %7954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.CBufRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.CBufRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7954, 3
  %7959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7960 = extractvalue %dx.types.CBufRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.CBufRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.CBufRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7959, 3
  %7964 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7965 = extractvalue %dx.types.CBufRet.f32 %7948, 1
  %7966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.f32 %7966, 0
  %7968 = extractvalue %dx.types.CBufRet.f32 %7966, 1
  %7969 = extractvalue %dx.types.CBufRet.f32 %7966, 2
  %7970 = fadd fast float %7967, %6892
  %7971 = fadd fast float %7968, %6893
  %7972 = fadd fast float %7969, %6894
  %7973 = fmul fast float %7970, %7955
  %7974 = call float @dx.op.tertiary.f32(i32 46, float %7956, float %7971, float %7973)  ; FMad(a,b,c)
  %7975 = call float @dx.op.tertiary.f32(i32 46, float %7957, float %7972, float %7974)  ; FMad(a,b,c)
  %7976 = fadd fast float %7975, %7958
  %7977 = fmul fast float %7970, %7960
  %7978 = call float @dx.op.tertiary.f32(i32 46, float %7961, float %7971, float %7977)  ; FMad(a,b,c)
  %7979 = call float @dx.op.tertiary.f32(i32 46, float %7962, float %7972, float %7978)  ; FMad(a,b,c)
  %7980 = fadd fast float %7979, %7963
  %7981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7976, float %7980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = fmul fast float %7982, %7965
  %7984 = fadd fast float %7983, %7964
  %7985 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7986 = fmul fast float %7985, %7949
  %7987 = fsub fast float 1.000000e+00, %7986
  br label %7988

; <label>:7988                                    ; preds = %7953, %7951
  %7989 = phi float [ %7987, %7953 ], [ 1.000000e+00, %7951 ]
  %7990 = fmul fast float %7989, %7947
  br label %7991

; <label>:7991                                    ; preds = %7988, %7937, %6872
  %7992 = phi float [ 1.000000e+00, %6872 ], [ %7990, %7988 ], [ %7947, %7937 ]
  %7993 = call float @dx.op.binary.f32(i32 36, float %7992, float %7992)  ; FMin(a,b)
  %7994 = call float @dx.op.binary.f32(i32 36, float %7992, float %7993)  ; FMin(a,b)
  %7995 = fcmp fast ogt float %7994, 0.000000e+00
  br i1 %7995, label %7996, label %8161, !dx.controlflow.hints !132

; <label>:7996                                    ; preds = %7991
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 0
  %7999 = extractvalue %dx.types.CBufRet.f32 %7997, 1
  %8000 = extractvalue %dx.types.CBufRet.f32 %7997, 2
  %8001 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 0
  %8004 = extractvalue %dx.types.CBufRet.f32 %8002, 1
  %8005 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8006 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.CBufRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.CBufRet.f32 %8007, 2
  %8011 = extractvalue %dx.types.CBufRet.f32 %8007, 3
  %8012 = fmul fast float %7998, %6892
  %8013 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %7999, float %8012)  ; FMad(a,b,c)
  %8014 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %8000, float %8013)  ; FMad(a,b,c)
  %8015 = fadd fast float %8014, %8001
  %8016 = fmul fast float %8003, %6892
  %8017 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %8004, float %8016)  ; FMad(a,b,c)
  %8018 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %8005, float %8017)  ; FMad(a,b,c)
  %8019 = fadd fast float %8018, %8006
  %8020 = fmul fast float %8008, %6892
  %8021 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %8009, float %8020)  ; FMad(a,b,c)
  %8022 = call float @dx.op.tertiary.f32(i32 46, float %6894, float %8010, float %8021)  ; FMad(a,b,c)
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.CBufRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.CBufRet.f32 %8023, 3
  %8027 = fmul fast float %8026, %8015
  %8028 = fmul fast float %8026, %8019
  %8029 = fadd fast float %8027, %8024
  %8030 = fadd fast float %8028, %8025
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8034 = fsub fast float %8029, %8032
  %8035 = fsub fast float %8030, %8033
  %8036 = fcmp fast olt float %8034, 0.000000e+00
  %8037 = fcmp fast olt float %8035, 0.000000e+00
  %8038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8039 = extractvalue %dx.types.CBufRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.CBufRet.f32 %8038, 1
  %8041 = extractvalue %dx.types.CBufRet.f32 %8038, 2
  %8042 = extractvalue %dx.types.CBufRet.f32 %8038, 3
  %8043 = select i1 %8036, float %8039, float %8041
  %8044 = select i1 %8037, float %8040, float %8042
  %8045 = fmul fast float %8043, %8034
  %8046 = fmul fast float %8044, %8035
  %8047 = call float @dx.op.unary.f32(i32 6, float %8045)  ; FAbs(value)
  %8048 = call float @dx.op.unary.f32(i32 6, float %8046)  ; FAbs(value)
  %8049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8050 = extractvalue %dx.types.CBufRet.f32 %8049, 0
  %8051 = call float @dx.op.binary.f32(i32 35, float %8047, float %8048)  ; FMax(a,b)
  %8052 = fsub fast float %8050, %8051
  %8053 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8054 = fcmp fast ogt float %8053, 0.000000e+00
  br i1 %8054, label %8055, label %8096, !dx.controlflow.hints !133

; <label>:8055                                    ; preds = %7996
  %8056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %8029, float %8030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8057 = extractvalue %dx.types.ResRet.f32 %8056, 1
  %8058 = fcmp fast ogt float %8057, 0.000000e+00
  br i1 %8058, label %8059, label %8091

; <label>:8059                                    ; preds = %8055
  %8060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %8029, float %8030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8061 = extractvalue %dx.types.ResRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.ResRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.ResRet.f32 %8060, 2
  %8064 = extractvalue %dx.types.ResRet.f32 %8060, 3
  %8065 = fsub fast float 1.000000e+00, %8011
  %8066 = fsub fast float %8065, %8022
  %8067 = fmul fast float %8066, 0x400921FB60000000
  %8068 = fadd fast float %8067, 0x3FF921FB60000000
  %8069 = call float @dx.op.unary.f32(i32 13, float %8068)  ; Sin(value)
  %8070 = fadd fast float %8069, -1.000000e+00
  %8071 = fmul fast float %8070, 0x3FD45F3060000000
  %8072 = fmul fast float %8066, 0x401921FB60000000
  %8073 = fadd fast float %8072, 0x400921FB60000000
  %8074 = call float @dx.op.unary.f32(i32 13, float %8073)  ; Sin(value)
  %8075 = fadd fast float %8074, 0x3E7777A5C0000000
  %8076 = fmul fast float %8075, 0x3FC45F3060000000
  %8077 = fmul fast float %8066, 0x4022D97C80000000
  %8078 = fadd fast float %8077, 0x4012D97C80000000
  %8079 = call float @dx.op.unary.f32(i32 13, float %8078)  ; Sin(value)
  %8080 = fadd fast float %8079, 1.000000e+00
  %8081 = fmul fast float %8080, 0x3FBB2995E0000000
  %8082 = fmul fast float %8066, 0x402921FB60000000
  %8083 = fadd fast float %8082, 0x401921FB60000000
  %8084 = call float @dx.op.unary.f32(i32 13, float %8083)  ; Sin(value)
  %8085 = fadd fast float %8084, 0xBE8777A5C0000000
  %8086 = fmul fast float %8085, 0x3FB45F3060000000
  %8087 = call float @dx.op.dot4.f32(i32 56, float %8061, float %8062, float %8063, float %8064, float %8071, float %8076, float %8081, float %8086)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8088 = fmul fast float %8087, 0xBFF7154760000000
  %8089 = call float @dx.op.unary.f32(i32 21, float %8088)  ; Exp(value)
  %8090 = call float @dx.op.unary.f32(i32 7, float %8089)  ; Saturate(value)
  br label %8091

; <label>:8091                                    ; preds = %8059, %8055
  %8092 = phi float [ %8090, %8059 ], [ 1.000000e+00, %8055 ]
  %8093 = fadd fast float %8092, -1.000000e+00
  %8094 = fmul fast float %8093, %8053
  %8095 = fadd fast float %8094, 1.000000e+00
  br label %8096

; <label>:8096                                    ; preds = %8091, %7996
  %8097 = phi float [ %8095, %8091 ], [ 1.000000e+00, %7996 ]
  %8098 = fmul fast float %8097, %7992
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = fadd fast float %8100, %166
  %8104 = fadd fast float %8101, %167
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.CBufRet.f32 %8107, 1
  %8110 = extractvalue %dx.types.CBufRet.f32 %8107, 2
  %8111 = fsub fast float -0.000000e+00, %8103
  %8112 = fsub fast float -0.000000e+00, %8104
  %8113 = fsub fast float %5773, %8102
  %8114 = fadd fast float %8113, %8106
  %8115 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8111, float %8112, float %8114)  ; Dot3(ax,ay,az,bx,by,bz)
  %8116 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8108, float %8109, float %8110)  ; Dot3(ax,ay,az,bx,by,bz)
  %8117 = fdiv fast float 1.000000e+00, %8116
  %8118 = fmul fast float %8117, %8115
  %8119 = fmul fast float %8108, %8118
  %8120 = fmul fast float %8109, %8118
  %8121 = fadd fast float %8119, %8103
  %8122 = fadd fast float %8120, %8104
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 0
  %8125 = extractvalue %dx.types.CBufRet.f32 %8123, 1
  %8126 = fsub fast float %8121, %8124
  %8127 = fsub fast float %8122, %8125
  %8128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.f32 %8128, 2
  %8130 = extractvalue %dx.types.CBufRet.f32 %8128, 3
  %8131 = fmul fast float %8126, %8129
  %8132 = fmul fast float %8127, %8130
  %8133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8134 = extractvalue %dx.types.CBufRet.i32 %8133, 3
  %8135 = icmp eq i32 %8134, 0
  br i1 %8135, label %8141, label %8136

; <label>:8136                                    ; preds = %8096
  %8137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8131, float %8132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8138 = extractvalue %dx.types.ResRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.ResRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.ResRet.f32 %8137, 2
  br label %8146

; <label>:8141                                    ; preds = %8096
  %8142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %8131, float %8132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8143 = extractvalue %dx.types.ResRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.ResRet.f32 %8142, 1
  %8145 = extractvalue %dx.types.ResRet.f32 %8142, 2
  br label %8146

; <label>:8146                                    ; preds = %8141, %8136
  %8147 = phi float [ %8138, %8136 ], [ %8143, %8141 ]
  %8148 = phi float [ %8139, %8136 ], [ %8144, %8141 ]
  %8149 = phi float [ %8140, %8136 ], [ %8145, %8141 ]
  %8150 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8151 = fmul fast float %8150, %8147
  %8152 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8153 = fsub fast float %8118, %8152
  %8154 = fsub fast float %8153, %8151
  %8155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8154)  ; FMax(a,b)
  %8156 = fmul fast float %8155, %8148
  %8157 = call float @dx.op.binary.f32(i32 36, float %8149, float %8156)  ; FMin(a,b)
  %8158 = fmul fast float %8157, 0xBFF7154760000000
  %8159 = call float @dx.op.unary.f32(i32 21, float %8158)  ; Exp(value)
  %8160 = fmul fast float %8098, %8159
  br label %8161

; <label>:8161                                    ; preds = %8146, %7991
  %8162 = phi float [ %8160, %8146 ], [ %7992, %7991 ]
  %8163 = call float @dx.op.binary.f32(i32 36, float %8162, float %8162)  ; FMin(a,b)
  %8164 = call float @dx.op.binary.f32(i32 36, float %8162, float %8163)  ; FMin(a,b)
  %8165 = fcmp fast ogt float %8164, 0.000000e+00
  br i1 %8165, label %8166, label %8549, !dx.controlflow.hints !134

; <label>:8166                                    ; preds = %8161
  %8167 = fmul fast float %8162, %6884
  %8168 = fmul fast float %8162, %6885
  %8169 = fmul fast float %8162, %6886
  %8170 = fsub fast float %168, %5582
  %8171 = fcmp fast ogt float %8170, 0.000000e+00
  %8172 = fmul fast float %6873, 5.120000e+02
  %8173 = fmul fast float %6874, 5.120000e+02
  %8174 = fmul fast float %6875, 5.120000e+02
  %8175 = fadd fast float %8174, %168
  %8176 = fsub fast float %5582, %8175
  %8177 = fmul fast float %8176, 2.000000e+00
  %8178 = fadd fast float %8177, %8175
  %8179 = select i1 %8171, float %8178, float %8175
  %8180 = fsub fast float %8179, %168
  %8181 = call float @dx.op.dot3.f32(i32 55, float %8172, float %8173, float %8180, float %8172, float %8173, float %8180)  ; Dot3(ax,ay,az,bx,by,bz)
  %8182 = call float @dx.op.unary.f32(i32 25, float %8181)  ; Rsqrt(value)
  %8183 = fmul fast float %8182, %8172
  %8184 = fmul fast float %8182, %8173
  %8185 = fmul fast float %8182, %8180
  %8186 = fsub fast float %5582, %168
  %8187 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8186)  ; Dot3(ax,ay,az,bx,by,bz)
  %8188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8189 = fdiv fast float 1.000000e+00, %8188
  %8190 = fmul fast float %8189, %8187
  %8191 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8170, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8192 = fcmp fast ogt float %8191, 0.000000e+00
  %8193 = fcmp fast olt float %8191, 0.000000e+00
  %8194 = zext i1 %8192 to i32
  %8195 = zext i1 %8193 to i32
  %8196 = sub nsw i32 %8194, %8195
  %8197 = sitofp i32 %8196 to float
  %8198 = fsub fast float %8179, %5582
  %8199 = call float @dx.op.dot3.f32(i32 55, float %8172, float %8173, float %8198, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8200 = fcmp fast ogt float %8199, 0.000000e+00
  %8201 = fcmp fast olt float %8199, 0.000000e+00
  %8202 = zext i1 %8200 to i32
  %8203 = zext i1 %8201 to i32
  %8204 = sub nsw i32 %8202, %8203
  %8205 = sitofp i32 %8204 to float
  %8206 = fcmp fast une float %8197, %8205
  br i1 %8206, label %8207, label %8217

; <label>:8207                                    ; preds = %8166
  %8208 = fmul fast float %8190, %8185
  %8209 = fmul fast float %8190, %8184
  %8210 = fmul fast float %8190, %8183
  %8211 = fmul fast float %8210, %8210
  %8212 = fmul fast float %8209, %8209
  %8213 = fadd fast float %8211, %8212
  %8214 = fmul fast float %8208, %8208
  %8215 = fadd fast float %8213, %8214
  %8216 = call float @dx.op.unary.f32(i32 24, float %8215)  ; Sqrt(value)
  br label %8227

; <label>:8217                                    ; preds = %8166
  %8218 = icmp slt i32 %8196, 0
  br i1 %8218, label %8219, label %8227

; <label>:8219                                    ; preds = %8217
  %8220 = fsub fast float %168, %8179
  %8221 = fmul fast float %8172, %8172
  %8222 = fmul fast float %8173, %8173
  %8223 = fadd fast float %8221, %8222
  %8224 = fmul fast float %8220, %8220
  %8225 = fadd fast float %8223, %8224
  %8226 = call float @dx.op.unary.f32(i32 24, float %8225)  ; Sqrt(value)
  br label %8227

; <label>:8227                                    ; preds = %8219, %8217, %8207
  %8228 = phi float [ %8216, %8207 ], [ %8226, %8219 ], [ 0.000000e+00, %8217 ]
  %8229 = fsub fast float -0.000000e+00, %8228
  %8230 = select i1 %8171, float -0.000000e+00, float %8229
  %8231 = fmul fast float %5579, 0x3FF7154760000000
  %8232 = fmul fast float %8231, %8230
  %8233 = fmul fast float %5580, 0x3FF7154760000000
  %8234 = fmul fast float %8233, %8230
  %8235 = fmul fast float %5581, 0x3FF7154760000000
  %8236 = fmul fast float %8235, %8230
  %8237 = call float @dx.op.unary.f32(i32 21, float %8232)  ; Exp(value)
  %8238 = call float @dx.op.unary.f32(i32 21, float %8234)  ; Exp(value)
  %8239 = call float @dx.op.unary.f32(i32 21, float %8236)  ; Exp(value)
  %8240 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  %8241 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8242 = call float @dx.op.unary.f32(i32 7, float %8239)  ; Saturate(value)
  %8243 = fmul fast float %8167, %8240
  %8244 = fmul fast float %8168, %8241
  %8245 = fmul fast float %8169, %8242
  %8246 = fsub fast float %6873, %186
  %8247 = fsub fast float %6874, %187
  %8248 = fsub fast float %6875, %188
  %8249 = call float @dx.op.dot3.f32(i32 55, float %8246, float %8247, float %8248, float %8246, float %8247, float %8248)  ; Dot3(ax,ay,az,bx,by,bz)
  %8250 = call float @dx.op.unary.f32(i32 25, float %8249)  ; Rsqrt(value)
  %8251 = fmul fast float %8250, %8246
  %8252 = fmul fast float %8250, %8247
  %8253 = fmul fast float %8250, %8248
  %8254 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6875, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %8255 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %8251, float %8252, float %8253)  ; Dot3(ax,ay,az,bx,by,bz)
  %8256 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8257 = fmul fast float %8256, %8256
  %8258 = fmul fast float %8257, %5835
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = fmul fast float %8259, %8256
  %8261 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %8251, float %8252, float %8253)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = fmul fast float %8261, %8261
  %8263 = call float @dx.op.unary.f32(i32 6, float %8254)  ; FAbs(value)
  %8264 = fsub fast float 1.000000e+00, %5828
  %8265 = fmul fast float %5810, %5810
  %8266 = fmul fast float %8265, %8264
  %8267 = fadd fast float %8266, %5828
  %8268 = bitcast float %8267 to i32
  %8269 = ashr i32 %8268, 1
  %8270 = add nsw i32 %8269, 532487669
  %8271 = bitcast i32 %8270 to float
  %8272 = fadd fast float %8271, %5810
  %8273 = fmul fast float %5828, %8262
  %8274 = fsub fast float 1.000000e+00, %8262
  %8275 = fadd fast float %8274, %8273
  %8276 = fmul fast float %8263, %8263
  %8277 = fmul fast float %8276, %8264
  %8278 = fadd fast float %8277, %5828
  %8279 = bitcast float %8278 to i32
  %8280 = ashr i32 %8279, 1
  %8281 = add nsw i32 %8280, 532487669
  %8282 = bitcast i32 %8281 to float
  %8283 = fadd fast float %8282, %8263
  %8284 = fmul fast float %8275, %8275
  %8285 = fmul fast float %8284, %8272
  %8286 = fmul fast float %8285, %8283
  %8287 = fdiv fast float 0x3FF0A00000000000, %8286
  %8288 = fmul fast float %8287, %5828
  %8289 = fmul fast float %6071, 0x3FF9999980000000
  %8290 = fsub fast float 5.000000e+00, %8289
  %8291 = call float @dx.op.unary.f32(i32 6, float %8255)  ; FAbs(value)
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fmul fast float %6071, 0x41D9660740000000
  %8294 = fadd fast float %8293, 0xC1EFBF8940000000
  %8295 = bitcast float %8292 to i32
  %8296 = sitofp i32 %8295 to float
  %8297 = fmul fast float %8296, %8290
  %8298 = fadd fast float %8294, %8297
  %8299 = fptosi float %8298 to i32
  %8300 = bitcast i32 %8299 to float
  %8301 = fsub fast float 1.000000e+00, %5765
  %8302 = fsub fast float 1.000000e+00, %5766
  %8303 = fsub fast float 1.000000e+00, %5808
  %8304 = fmul fast float %8300, %8301
  %8305 = fmul fast float %8300, %8302
  %8306 = fmul fast float %8300, %8303
  %8307 = fadd fast float %8304, %5765
  %8308 = fadd fast float %8305, %5766
  %8309 = fadd fast float %8306, %5808
  br i1 %6094, label %8310, label %8333

; <label>:8310                                    ; preds = %8227
  %8311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %8291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8312 = extractvalue %dx.types.ResRet.f32 %8311, 0
  %8313 = extractvalue %dx.types.ResRet.f32 %8311, 1
  %8314 = extractvalue %dx.types.ResRet.f32 %8311, 2
  %8315 = fadd fast float %8312, -5.000000e-01
  %8316 = fadd fast float %8313, -5.000000e-01
  %8317 = fadd fast float %8314, -5.000000e-01
  %8318 = fmul fast float %5765, 4.000000e+00
  %8319 = fmul fast float %8318, %8301
  %8320 = fmul fast float %8319, %8315
  %8321 = fmul fast float %5766, 4.000000e+00
  %8322 = fmul fast float %8321, %8302
  %8323 = fmul fast float %8322, %8316
  %8324 = fmul fast float %5808, 4.000000e+00
  %8325 = fmul fast float %8324, %8303
  %8326 = fmul fast float %8325, %8317
  %8327 = fadd fast float %8320, %8307
  %8328 = fadd fast float %8323, %8308
  %8329 = fadd fast float %8326, %8309
  %8330 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8331 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  %8332 = call float @dx.op.unary.f32(i32 7, float %8329)  ; Saturate(value)
  br label %8333

; <label>:8333                                    ; preds = %8310, %8227
  %8334 = phi float [ %8330, %8310 ], [ %8307, %8227 ]
  %8335 = phi float [ %8331, %8310 ], [ %8308, %8227 ]
  %8336 = phi float [ %8332, %8310 ], [ %8309, %8227 ]
  %8337 = fmul fast float %8254, 9.843750e-01
  %8338 = fadd fast float %8337, 7.812500e-03
  %8339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8338, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.ResRet.f32 %8339, 2
  %8343 = extractvalue %dx.types.ResRet.f32 %8339, 3
  %8344 = fsub fast float %8342, %8340
  %8345 = fsub fast float %8343, %8341
  %8346 = fmul fast float %8344, %6081
  %8347 = fmul fast float %8345, %6081
  %8348 = fadd fast float %8346, %8340
  %8349 = fadd fast float %8347, %8341
  %8350 = fmul fast float %8348, %5765
  %8351 = fmul fast float %8348, %5766
  %8352 = fmul fast float %8348, %5808
  %8353 = fadd fast float %8350, %8349
  %8354 = fadd fast float %8351, %8349
  %8355 = fadd fast float %8352, %8349
  br i1 %6094, label %8356, label %8379

; <label>:8356                                    ; preds = %8333
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %8254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  %8361 = fadd fast float %8358, -5.000000e-01
  %8362 = fadd fast float %8359, -5.000000e-01
  %8363 = fadd fast float %8360, -5.000000e-01
  %8364 = fmul fast float %5765, 4.000000e+00
  %8365 = fmul fast float %8364, %8301
  %8366 = fmul fast float %8365, %8361
  %8367 = fmul fast float %5766, 4.000000e+00
  %8368 = fmul fast float %8367, %8302
  %8369 = fmul fast float %8368, %8362
  %8370 = fmul fast float %5808, 4.000000e+00
  %8371 = fmul fast float %8370, %8303
  %8372 = fmul fast float %8371, %8363
  %8373 = fadd fast float %8366, %8353
  %8374 = fadd fast float %8369, %8354
  %8375 = fadd fast float %8372, %8355
  %8376 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8377 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8378 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  br label %8379

; <label>:8379                                    ; preds = %8356, %8333
  %8380 = phi float [ %8376, %8356 ], [ %8353, %8333 ]
  %8381 = phi float [ %8377, %8356 ], [ %8354, %8333 ]
  %8382 = phi float [ %8378, %8356 ], [ %8355, %8333 ]
  %8383 = call float @dx.op.binary.f32(i32 35, float %8381, float %8382)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 35, float %8380, float %8383)  ; FMax(a,b)
  %8385 = fsub fast float 1.000000e+00, %8384
  %8386 = call float @dx.op.binary.f32(i32 35, float %8263, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8387 = fdiv fast float %4464, %8386
  %8388 = fmul fast float %6644, %8387
  %8389 = fmul fast float %6646, %8387
  %8390 = fmul fast float %6648, %8387
  %8391 = call float @dx.op.unary.f32(i32 21, float %8388)  ; Exp(value)
  %8392 = call float @dx.op.unary.f32(i32 21, float %8389)  ; Exp(value)
  %8393 = call float @dx.op.unary.f32(i32 21, float %8390)  ; Exp(value)
  %8394 = call float @dx.op.unary.f32(i32 7, float %8391)  ; Saturate(value)
  %8395 = call float @dx.op.unary.f32(i32 7, float %8392)  ; Saturate(value)
  %8396 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8397 = select i1 %6641, float %8394, float 0.000000e+00
  %8398 = select i1 %6642, float %8395, float 0.000000e+00
  %8399 = select i1 %6643, float %8396, float 0.000000e+00
  %8400 = fsub fast float -0.000000e+00, %5768
  %8401 = fsub fast float -0.000000e+00, %5769
  %8402 = fsub fast float -0.000000e+00, %5770
  %8403 = call float @dx.op.dot3.f32(i32 55, float %6873, float %6874, float %6875, float %8400, float %8401, float %8402)  ; Dot3(ax,ay,az,bx,by,bz)
  %8404 = call float @dx.op.unary.f32(i32 7, float %8403)  ; Saturate(value)
  %8405 = fmul fast float %8404, 9.843750e-01
  %8406 = fadd fast float %8405, 7.812500e-03
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8406, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = extractvalue %dx.types.ResRet.f32 %8407, 3
  %8412 = fsub fast float %8410, %8408
  %8413 = fsub fast float %8411, %8409
  %8414 = fmul fast float %8412, %6081
  %8415 = fmul fast float %8413, %6081
  %8416 = fadd fast float %8414, %8408
  %8417 = fadd fast float %8415, %8409
  %8418 = fmul fast float %8416, %5765
  %8419 = fmul fast float %8416, %5766
  %8420 = fmul fast float %8416, %5808
  %8421 = fadd fast float %8418, %8417
  %8422 = fadd fast float %8419, %8417
  %8423 = fadd fast float %8420, %8417
  br i1 %6094, label %8424, label %8447

; <label>:8424                                    ; preds = %8379
  %8425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %8404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8426 = extractvalue %dx.types.ResRet.f32 %8425, 0
  %8427 = extractvalue %dx.types.ResRet.f32 %8425, 1
  %8428 = extractvalue %dx.types.ResRet.f32 %8425, 2
  %8429 = fadd fast float %8426, -5.000000e-01
  %8430 = fadd fast float %8427, -5.000000e-01
  %8431 = fadd fast float %8428, -5.000000e-01
  %8432 = fmul fast float %5765, 4.000000e+00
  %8433 = fmul fast float %8432, %8301
  %8434 = fmul fast float %8433, %8429
  %8435 = fmul fast float %5766, 4.000000e+00
  %8436 = fmul fast float %8435, %8302
  %8437 = fmul fast float %8436, %8430
  %8438 = fmul fast float %5808, 4.000000e+00
  %8439 = fmul fast float %8438, %8303
  %8440 = fmul fast float %8439, %8431
  %8441 = fadd fast float %8434, %8421
  %8442 = fadd fast float %8437, %8422
  %8443 = fadd fast float %8440, %8423
  %8444 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8445 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8446 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  br label %8447

; <label>:8447                                    ; preds = %8424, %8379
  %8448 = phi float [ %8444, %8424 ], [ %8421, %8379 ]
  %8449 = phi float [ %8445, %8424 ], [ %8422, %8379 ]
  %8450 = phi float [ %8446, %8424 ], [ %8423, %8379 ]
  %8451 = call float @dx.op.binary.f32(i32 35, float %8449, float %8450)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8448, float %8451)  ; FMax(a,b)
  %8453 = fsub fast float 1.000000e+00, %8452
  %8454 = fmul fast float %5825, %6708
  %8455 = fadd fast float %6702, %8454
  %8456 = call float @dx.op.unary.f32(i32 7, float %8455)  ; Saturate(value)
  %8457 = fsub fast float %6873, %5816
  %8458 = fsub fast float %6874, %5817
  %8459 = fsub fast float %6875, %5818
  %8460 = call float @dx.op.dot3.f32(i32 55, float %8457, float %8458, float %8459, float %8457, float %8458, float %8459)  ; Dot3(ax,ay,az,bx,by,bz)
  %8461 = call float @dx.op.unary.f32(i32 25, float %8460)  ; Rsqrt(value)
  %8462 = fmul fast float %8461, %8457
  %8463 = fmul fast float %8461, %8458
  %8464 = fmul fast float %8461, %8459
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8400, float %8401, float %8402, float %8462, float %8463, float %8464)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = fmul fast float %8465, %8465
  %8467 = call float @dx.op.unary.f32(i32 6, float %8404)  ; FAbs(value)
  %8468 = call float @dx.op.binary.f32(i32 35, float %8456, float 0x3F847AE140000000)  ; FMax(a,b)
  %8469 = fmul fast float %8468, %8468
  %8470 = fmul fast float %8469, %8469
  %8471 = fsub fast float 1.000000e+00, %8470
  %8472 = fmul fast float %8265, %8471
  %8473 = fadd fast float %8472, %8470
  %8474 = bitcast float %8473 to i32
  %8475 = ashr i32 %8474, 1
  %8476 = add nsw i32 %8475, 532487669
  %8477 = bitcast i32 %8476 to float
  %8478 = fadd fast float %8477, %5810
  %8479 = fmul fast float %8470, %8466
  %8480 = fsub fast float 1.000000e+00, %8466
  %8481 = fadd fast float %8480, %8479
  %8482 = fmul fast float %8467, %8467
  %8483 = fmul fast float %8482, %8471
  %8484 = fadd fast float %8483, %8470
  %8485 = bitcast float %8484 to i32
  %8486 = ashr i32 %8485, 1
  %8487 = add nsw i32 %8486, 532487669
  %8488 = bitcast i32 %8487 to float
  %8489 = fadd fast float %8488, %8467
  %8490 = fmul fast float %8481, %8481
  %8491 = fmul fast float %8490, %8478
  %8492 = fmul fast float %8491, %8489
  %8493 = fdiv fast float 0x3FF0A00000000000, %8492
  %8494 = fmul fast float %8493, %8470
  %8495 = fmul fast float %8404, %8397
  %8496 = fmul fast float %8404, %8398
  %8497 = fmul fast float %8404, %8399
  %8498 = fmul fast float %8495, %8453
  %8499 = fmul fast float %8498, %8494
  %8500 = fmul fast float %8496, %8453
  %8501 = fmul fast float %8500, %8494
  %8502 = fmul fast float %8497, %8453
  %8503 = fmul fast float %8502, %8494
  %8504 = fmul fast float %8334, %8288
  %8505 = fmul fast float %8335, %8288
  %8506 = fmul fast float %8336, %8288
  %8507 = fsub fast float 1.000000e+00, %8255
  %8508 = bitcast float %8507 to i32
  %8509 = sitofp i32 %8508 to float
  %8510 = fmul fast float %8509, 5.000000e+00
  %8511 = fadd fast float %8510, 0xC1EFBF8940000000
  %8512 = fptosi float %8511 to i32
  %8513 = bitcast i32 %8512 to float
  %8514 = fmul fast float %8513, %5128
  %8515 = fmul fast float %8385, %8514
  %8516 = fmul fast float %8515, %6636
  %8517 = fmul fast float %8515, %6637
  %8518 = fmul fast float %8515, %6638
  %8519 = fadd fast float %8516, %8504
  %8520 = fadd fast float %8517, %8505
  %8521 = fadd fast float %8518, %8506
  %8522 = fmul fast float %8519, %8260
  %8523 = fmul fast float %8520, %8260
  %8524 = fmul fast float %8521, %8260
  %8525 = fmul fast float %8260, %8243
  %8526 = fmul fast float %8525, %8385
  %8527 = fmul fast float %8260, %8244
  %8528 = fmul fast float %8527, %8385
  %8529 = fmul fast float %8260, %8245
  %8530 = fmul fast float %8529, %8385
  %8531 = fadd fast float %8522, %8499
  %8532 = fadd fast float %8523, %8501
  %8533 = fadd fast float %8524, %8503
  %8534 = fmul fast float %8531, %8243
  %8535 = fmul fast float %8532, %8244
  %8536 = fmul fast float %8533, %8245
  %8537 = fadd fast float %8526, %6620
  %8538 = fmul fast float %8537, %5153
  %8539 = fadd fast float %8528, %6621
  %8540 = fmul fast float %8539, %5153
  %8541 = fadd fast float %8530, %6622
  %8542 = fmul fast float %8541, %5153
  %8543 = fadd fast float %8534, %6859
  %8544 = fmul fast float %8543, %5153
  %8545 = fadd fast float %8535, %6863
  %8546 = fmul fast float %8545, %5153
  %8547 = fadd fast float %8536, %6867
  %8548 = fmul fast float %8547, %5153
  br label %8549

; <label>:8549                                    ; preds = %8447, %8161, %6843
  %8550 = phi float [ %6860, %6843 ], [ %6860, %8161 ], [ %8544, %8447 ]
  %8551 = phi float [ %6864, %6843 ], [ %6864, %8161 ], [ %8546, %8447 ]
  %8552 = phi float [ %6868, %6843 ], [ %6868, %8161 ], [ %8548, %8447 ]
  %8553 = phi float [ %6732, %6843 ], [ %6732, %8161 ], [ %8538, %8447 ]
  %8554 = phi float [ %6733, %6843 ], [ %6733, %8161 ], [ %8540, %8447 ]
  %8555 = phi float [ %6734, %6843 ], [ %6734, %8161 ], [ %8542, %8447 ]
  %8556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.i32 %8556, 0
  %8558 = icmp eq i32 %8557, 0
  br i1 %8558, label %9376, label %8559

; <label>:8559                                    ; preds = %8549
  %8560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8561 = extractvalue %dx.types.CBufRet.f32 %8560, 2
  %8562 = extractvalue %dx.types.CBufRet.f32 %8560, 3
  %8563 = fmul fast float %8561, %111
  %8564 = fmul fast float %8562, %112
  %8565 = fptoui float %8563 to i32
  %8566 = fptoui float %8564 to i32
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 0
  %8569 = extractvalue %dx.types.CBufRet.f32 %8567, 2
  %8570 = extractvalue %dx.types.CBufRet.f32 %8567, 3
  %8571 = fadd fast float %99, -4.000000e+00
  %8572 = call float @dx.op.binary.f32(i32 35, float %8571, float 0.000000e+00)  ; FMax(a,b)
  %8573 = fadd fast float %8572, %8568
  %8574 = fmul fast float %8573, %8569
  %8575 = call float @dx.op.unary.f32(i32 23, float %8574)  ; Log(value)
  %8576 = fmul fast float %8575, %8570
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 2
  %8579 = fmul fast float %8576, %8578
  %8580 = call float @dx.op.unary.f32(i32 7, float %8579)  ; Saturate(value)
  %8581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.i32 %8581, 1
  %8583 = add i32 %8582, -1
  %8584 = uitofp i32 %8582 to float
  %8585 = fmul fast float %8584, %8580
  %8586 = fptoui float %8585 to i32
  %8587 = call i32 @dx.op.binary.i32(i32 40, i32 %8586, i32 %8583)  ; UMin(a,b)
  %8588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.i32 %8588, 2
  %8590 = extractvalue %dx.types.CBufRet.i32 %8588, 3
  %8591 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8566, i32 %8589, i32 %8565)  ; UMad(a,b,c)
  %8592 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8587, i32 %8590, i32 %8591)  ; UMad(a,b,c)
  %8593 = add nsw i32 %8557, -1
  %8594 = call i32 @dx.op.binary.i32(i32 37, i32 %8593, i32 0)  ; IMax(a,b)
  %8595 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %8596 = fptoui float %8595 to i32
  %8597 = lshr i32 %8596, 5
  %8598 = call i32 @dx.op.binary.i32(i32 40, i32 %8597, i32 8191)  ; UMin(a,b)
  %8599 = shl i32 %8598, 2
  %8600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8599, i32 undef)  ; BufferLoad(srv,index,wot)
  %8601 = extractvalue %dx.types.ResRet.i32 %8600, 0
  %8602 = lshr i32 %8601, 16
  %8603 = and i32 %8601, 65535
  %8604 = lshr i32 %8601, 21
  %8605 = lshr i32 %8603, 5
  %8606 = call i32 @dx.op.binary.i32(i32 40, i32 %8605, i32 %8594)  ; UMin(a,b)
  %8607 = icmp ugt i32 %8604, %8606
  br i1 %8607, label %9376, label %8608

; <label>:8608                                    ; preds = %8559
  br label %8609

; <label>:8609                                    ; preds = %9366, %8608
  %8610 = phi i32 [ %9373, %9366 ], [ %8604, %8608 ]
  %8611 = phi float [ %9367, %9366 ], [ %8550, %8608 ]
  %8612 = phi float [ %9368, %9366 ], [ %8551, %8608 ]
  %8613 = phi float [ %9369, %9366 ], [ %8552, %8608 ]
  %8614 = phi float [ %9370, %9366 ], [ %8553, %8608 ]
  %8615 = phi float [ %9371, %9366 ], [ %8554, %8608 ]
  %8616 = phi float [ %9372, %9366 ], [ %8555, %8608 ]
  %8617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.i32 %8617, 0
  %8619 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8592, i32 %8618, i32 %8610)  ; UMad(a,b,c)
  %8620 = shl i32 %8619, 2
  %8621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8620, i32 undef)  ; BufferLoad(srv,index,wot)
  %8622 = extractvalue %dx.types.ResRet.i32 %8621, 0
  %8623 = shl i32 %8610, 5
  %8624 = sub nsw i32 %8602, %8623
  %8625 = call i32 @dx.op.binary.i32(i32 37, i32 %8624, i32 0)  ; IMax(a,b)
  %8626 = call i32 @dx.op.binary.i32(i32 38, i32 %8625, i32 31)  ; IMin(a,b)
  %8627 = sub nsw i32 1, %8602
  %8628 = add nsw i32 %8627, %8603
  %8629 = call i32 @dx.op.binary.i32(i32 37, i32 %8628, i32 0)  ; IMax(a,b)
  %8630 = call i32 @dx.op.binary.i32(i32 38, i32 %8629, i32 32)  ; IMin(a,b)
  %8631 = and i32 %8630, 31
  %8632 = shl i32 -1, %8631
  %8633 = xor i32 %8632, -1
  %8634 = and i32 %8626, 31
  %8635 = shl i32 %8633, %8634
  %8636 = icmp eq i32 %8630, 32
  %8637 = select i1 %8636, i32 -1, i32 %8635
  %8638 = and i32 %8637, %8622
  %8639 = icmp eq i32 %8638, 0
  br i1 %8639, label %9366, label %8640

; <label>:8640                                    ; preds = %8609
  br label %8641

; <label>:8641                                    ; preds = %8776, %8640
  %8642 = phi i32 [ %8653, %8776 ], [ %8638, %8640 ]
  %8643 = phi float [ %8777, %8776 ], [ %8611, %8640 ]
  %8644 = phi float [ %8778, %8776 ], [ %8612, %8640 ]
  %8645 = phi float [ %8779, %8776 ], [ %8613, %8640 ]
  %8646 = phi float [ %8780, %8776 ], [ %8614, %8640 ]
  %8647 = phi float [ %8781, %8776 ], [ %8615, %8640 ]
  %8648 = phi float [ %8782, %8776 ], [ %8616, %8640 ]
  %8649 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8642)  ; FirstbitLo(value)
  %8650 = add i32 %8649, %8623
  %8651 = and i32 %8649, 31
  %8652 = shl i32 1, %8651
  %8653 = xor i32 %8652, %8642
  %8654 = mul i32 %8650, 112
  %8655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8654, i32 undef)  ; BufferLoad(srv,index,wot)
  %8656 = extractvalue %dx.types.ResRet.f32 %8655, 0
  %8657 = extractvalue %dx.types.ResRet.f32 %8655, 1
  %8658 = extractvalue %dx.types.ResRet.f32 %8655, 2
  %8659 = or i32 %8654, 12
  %8660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8659, i32 undef)  ; BufferLoad(srv,index,wot)
  %8661 = extractvalue %dx.types.ResRet.f32 %8660, 0
  %8662 = add i32 %8654, 16
  %8663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8662, i32 undef)  ; BufferLoad(srv,index,wot)
  %8664 = extractvalue %dx.types.ResRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.ResRet.f32 %8663, 1
  %8666 = extractvalue %dx.types.ResRet.f32 %8663, 2
  %8667 = add i32 %8654, 28
  %8668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8667, i32 undef)  ; BufferLoad(srv,index,wot)
  %8669 = extractvalue %dx.types.ResRet.i32 %8668, 0
  %8670 = add i32 %8654, 44
  %8671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8670, i32 undef)  ; BufferLoad(srv,index,wot)
  %8672 = extractvalue %dx.types.ResRet.f32 %8671, 0
  %8673 = add i32 %8654, 48
  %8674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8673, i32 undef)  ; BufferLoad(srv,index,wot)
  %8675 = extractvalue %dx.types.ResRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.ResRet.f32 %8674, 1
  %8677 = extractvalue %dx.types.ResRet.f32 %8674, 2
  %8678 = extractvalue %dx.types.ResRet.f32 %8674, 3
  %8679 = add i32 %8654, 64
  %8680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8679, i32 undef)  ; BufferLoad(srv,index,wot)
  %8681 = extractvalue %dx.types.ResRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.ResRet.f32 %8680, 1
  %8683 = extractvalue %dx.types.ResRet.f32 %8680, 2
  %8684 = extractvalue %dx.types.ResRet.f32 %8680, 3
  %8685 = add i32 %8654, 80
  %8686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8685, i32 undef)  ; BufferLoad(srv,index,wot)
  %8687 = extractvalue %dx.types.ResRet.f32 %8686, 1
  %8688 = extractvalue %dx.types.ResRet.f32 %8686, 2
  %8689 = add i32 %8654, 92
  %8690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8689, i32 undef)  ; BufferLoad(srv,index,wot)
  %8691 = extractvalue %dx.types.ResRet.i32 %8690, 0
  %8692 = call float @dx.op.dot3.f32(i32 55, float %8656, float %8657, float %8658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8693 = select i1 %260, float %8687, float %8656
  %8694 = select i1 %260, float %8692, float %8657
  %8695 = select i1 %260, float %8688, float %8658
  %8696 = and i32 %8691, 65535
  %8697 = uitofp i32 %8696 to float
  %8698 = lshr i32 %8691, 16
  %8699 = uitofp i32 %8698 to float
  %8700 = and i32 %8669, 65535
  %8701 = and i32 %8669, 50331648
  %8702 = icmp slt i32 %8669, 0
  %8703 = icmp eq i32 %8701, 33554432
  %8704 = fsub fast float %8675, %166
  %8705 = fsub fast float %8676, %167
  %8706 = fsub fast float %8677, %168
  %8707 = call float @dx.op.dot3.f32(i32 55, float %8704, float %8705, float %8706, float %8704, float %8705, float %8706)  ; Dot3(ax,ay,az,bx,by,bz)
  %8708 = call float @dx.op.unary.f32(i32 24, float %8707)  ; Sqrt(value)
  %8709 = fdiv fast float 1.000000e+00, %8708
  %8710 = fmul fast float %8709, %8704
  %8711 = fmul fast float %8709, %8705
  %8712 = fmul fast float %8709, %8706
  %8713 = fadd fast float %8708, %8661
  %8714 = fdiv fast float 1.000000e+00, %8713
  %8715 = fmul float %8672, %8714
  %8716 = fmul float %8715, %8715
  %8717 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  br i1 %8703, label %8718, label %8739

; <label>:8718                                    ; preds = %8641
  %8719 = fmul fast float %8683, %8664
  %8720 = fmul fast float %8683, %8665
  %8721 = fmul fast float %8683, %8666
  %8722 = fadd fast float %8704, %8719
  %8723 = fadd fast float %8705, %8720
  %8724 = fadd fast float %8706, %8721
  %8725 = call float @dx.op.dot3.f32(i32 55, float %8722, float %8723, float %8724, float %8722, float %8723, float %8724)  ; Dot3(ax,ay,az,bx,by,bz)
  %8726 = call float @dx.op.unary.f32(i32 25, float %8725)  ; Rsqrt(value)
  %8727 = fmul fast float %8726, %8722
  %8728 = fmul fast float %8726, %8723
  %8729 = fmul fast float %8726, %8724
  %8730 = fsub fast float %166, %8675
  %8731 = fsub fast float %167, %8676
  %8732 = fsub fast float %168, %8677
  %8733 = fsub fast float -0.000000e+00, %8730
  %8734 = fsub fast float -0.000000e+00, %8731
  %8735 = fsub fast float -0.000000e+00, %8732
  %8736 = call float @dx.op.dot3.f32(i32 55, float %8733, float %8734, float %8735, float %8664, float %8665, float %8666)  ; Dot3(ax,ay,az,bx,by,bz)
  %8737 = fcmp fast ogt float %8736, 0.000000e+00
  %8738 = uitofp i1 %8737 to float
  br label %8739

; <label>:8739                                    ; preds = %8718, %8641
  %8740 = phi float [ %8738, %8718 ], [ 1.000000e+00, %8641 ]
  %8741 = phi float [ %8727, %8718 ], [ %8710, %8641 ]
  %8742 = phi float [ %8728, %8718 ], [ %8711, %8641 ]
  %8743 = phi float [ %8729, %8718 ], [ %8712, %8641 ]
  %8744 = call float @dx.op.dot3.f32(i32 55, float %8664, float %8665, float %8666, float %8741, float %8742, float %8743)  ; Dot3(ax,ay,az,bx,by,bz)
  %8745 = fmul fast float %8744, %8744
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fsub fast float 1.000000e+00, %8746
  %8748 = fmul fast float %8747, 5.000000e-01
  %8749 = fcmp fast ogt float %8744, 0.000000e+00
  %8750 = fsub fast float 1.000000e+00, %8748
  %8751 = select i1 %8749, float %8748, float %8750
  %8752 = fmul fast float %8751, %8699
  %8753 = fadd fast float %8752, %8697
  %8754 = fmul fast float %8753, 0x3EF0001000000000
  %8755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8754, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8756 = extractvalue %dx.types.ResRet.f32 %8755, 0
  %8757 = fmul fast float %8744, %8681
  %8758 = fadd fast float %8757, %8682
  %8759 = call float @dx.op.unary.f32(i32 7, float %8758)  ; Saturate(value)
  %8760 = select i1 %8703, float 1.000000e+00, float %8759
  %8761 = select i1 %8703, float %8759, float 1.000000e+00
  %8762 = fmul fast float %8708, %8678
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8763, %8684
  %8765 = call float @dx.op.unary.f32(i32 7, float %8764)  ; Saturate(value)
  %8766 = fmul fast float %8765, %8761
  %8767 = fmul fast float %8766, 2.000000e+00
  %8768 = fsub fast float 3.000000e+00, %8767
  %8769 = fmul fast float %8756, %8740
  %8770 = fmul fast float %8766, %8766
  %8771 = fmul fast float %8770, %8769
  %8772 = fmul fast float %8771, %8768
  %8773 = call float @dx.op.binary.f32(i32 36, float %8772, float %8772)  ; FMin(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8772, float %8773)  ; FMin(a,b)
  %8775 = fcmp fast ogt float %8774, 0.000000e+00
  br i1 %8775, label %8784, label %8776, !dx.controlflow.hints !135

; <label>:8776                                    ; preds = %9319, %8930, %8739
  %8777 = phi float [ %8643, %8930 ], [ %8643, %8739 ], [ %9362, %9319 ]
  %8778 = phi float [ %8644, %8930 ], [ %8644, %8739 ], [ %9363, %9319 ]
  %8779 = phi float [ %8645, %8930 ], [ %8645, %8739 ], [ %9364, %9319 ]
  %8780 = phi float [ %8646, %8930 ], [ %8646, %8739 ], [ %9356, %9319 ]
  %8781 = phi float [ %8647, %8930 ], [ %8647, %8739 ], [ %9357, %9319 ]
  %8782 = phi float [ %8648, %8930 ], [ %8648, %8739 ], [ %9358, %9319 ]
  %8783 = icmp eq i32 %8642, %8652
  br i1 %8783, label %9365, label %8641

; <label>:8784                                    ; preds = %8739
  %8785 = icmp eq i32 %8700, 255
  br i1 %8785, label %8930, label %8786, !dx.controlflow.hints !136

; <label>:8786                                    ; preds = %8784
  %8787 = mul nuw nsw i32 %8700, 176
  %8788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8787, i32 undef)  ; BufferLoad(srv,index,wot)
  %8789 = extractvalue %dx.types.ResRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.ResRet.f32 %8788, 1
  %8791 = extractvalue %dx.types.ResRet.f32 %8788, 2
  %8792 = extractvalue %dx.types.ResRet.f32 %8788, 3
  %8793 = add nuw nsw i32 %8787, 16
  %8794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8793, i32 undef)  ; BufferLoad(srv,index,wot)
  %8795 = extractvalue %dx.types.ResRet.f32 %8794, 0
  %8796 = extractvalue %dx.types.ResRet.f32 %8794, 1
  %8797 = add nuw nsw i32 %8787, 32
  %8798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8797, i32 undef)  ; BufferLoad(srv,index,wot)
  %8799 = extractvalue %dx.types.ResRet.f32 %8798, 0
  %8800 = extractvalue %dx.types.ResRet.f32 %8798, 1
  %8801 = extractvalue %dx.types.ResRet.f32 %8798, 2
  %8802 = add nuw nsw i32 %8787, 48
  %8803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8802, i32 undef)  ; BufferLoad(srv,index,wot)
  %8804 = extractvalue %dx.types.ResRet.f32 %8803, 0
  %8805 = extractvalue %dx.types.ResRet.f32 %8803, 1
  %8806 = extractvalue %dx.types.ResRet.f32 %8803, 2
  %8807 = extractvalue %dx.types.ResRet.f32 %8803, 3
  %8808 = add nuw nsw i32 %8787, 64
  %8809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8808, i32 undef)  ; BufferLoad(srv,index,wot)
  %8810 = extractvalue %dx.types.ResRet.f32 %8809, 0
  %8811 = extractvalue %dx.types.ResRet.f32 %8809, 1
  %8812 = extractvalue %dx.types.ResRet.f32 %8809, 2
  %8813 = extractvalue %dx.types.ResRet.f32 %8809, 3
  %8814 = add nuw nsw i32 %8787, 80
  %8815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8814, i32 undef)  ; BufferLoad(srv,index,wot)
  %8816 = extractvalue %dx.types.ResRet.f32 %8815, 0
  %8817 = extractvalue %dx.types.ResRet.f32 %8815, 1
  %8818 = extractvalue %dx.types.ResRet.f32 %8815, 2
  %8819 = extractvalue %dx.types.ResRet.f32 %8815, 3
  %8820 = add nuw nsw i32 %8787, 96
  %8821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8820, i32 undef)  ; BufferLoad(srv,index,wot)
  %8822 = extractvalue %dx.types.ResRet.f32 %8821, 0
  %8823 = extractvalue %dx.types.ResRet.f32 %8821, 1
  %8824 = extractvalue %dx.types.ResRet.f32 %8821, 2
  %8825 = extractvalue %dx.types.ResRet.f32 %8821, 3
  %8826 = bitcast float %8796 to i32
  %8827 = fmul fast float %8801, %118
  %8828 = fmul fast float %8801, %119
  %8829 = fmul fast float %8801, %120
  %8830 = fadd fast float %8827, %166
  %8831 = fadd fast float %8828, %167
  %8832 = fadd fast float %8829, %168
  %8833 = fmul fast float %8830, %8804
  %8834 = call float @dx.op.tertiary.f32(i32 46, float %8831, float %8810, float %8833)  ; FMad(a,b,c)
  %8835 = call float @dx.op.tertiary.f32(i32 46, float %8832, float %8816, float %8834)  ; FMad(a,b,c)
  %8836 = fadd fast float %8835, %8822
  %8837 = fmul fast float %8830, %8805
  %8838 = call float @dx.op.tertiary.f32(i32 46, float %8831, float %8811, float %8837)  ; FMad(a,b,c)
  %8839 = call float @dx.op.tertiary.f32(i32 46, float %8832, float %8817, float %8838)  ; FMad(a,b,c)
  %8840 = fadd fast float %8839, %8823
  %8841 = fmul fast float %8830, %8806
  %8842 = call float @dx.op.tertiary.f32(i32 46, float %8831, float %8812, float %8841)  ; FMad(a,b,c)
  %8843 = call float @dx.op.tertiary.f32(i32 46, float %8832, float %8818, float %8842)  ; FMad(a,b,c)
  %8844 = fadd fast float %8843, %8824
  %8845 = fmul fast float %8830, %8807
  %8846 = call float @dx.op.tertiary.f32(i32 46, float %8831, float %8813, float %8845)  ; FMad(a,b,c)
  %8847 = call float @dx.op.tertiary.f32(i32 46, float %8832, float %8819, float %8846)  ; FMad(a,b,c)
  %8848 = fadd fast float %8847, %8825
  %8849 = fdiv fast float %8836, %8848
  %8850 = fdiv fast float %8840, %8848
  %8851 = fdiv fast float %8844, %8848
  %8852 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8851)  ; FMax(a,b)
  %8853 = fmul fast float %273, 0x401921FB60000000
  %8854 = call float @dx.op.unary.f32(i32 13, float %8853)  ; Sin(value)
  %8855 = call float @dx.op.unary.f32(i32 12, float %8853)  ; Cos(value)
  %8856 = fmul fast float %8855, %8800
  %8857 = call float @dx.op.tertiary.f32(i32 46, float %8854, float %8800, float 0.000000e+00)  ; FMad(a,b,c)
  %8858 = fmul fast float %8800, %8854
  %8859 = fsub fast float -0.000000e+00, %8858
  %8860 = call float @dx.op.tertiary.f32(i32 46, float %8855, float %8800, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8861

; <label>:8861                                    ; preds = %8861, %8786
  %8862 = phi float [ 0.000000e+00, %8786 ], [ %8894, %8861 ]
  %8863 = phi float [ 0.000000e+00, %8786 ], [ %8896, %8861 ]
  %8864 = phi i32 [ 0, %8786 ], [ %8897, %8861 ]
  %8865 = mul i32 %8864, 2
  %8866 = add i32 0, %8865
  %8867 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8866
  %8868 = load float, float* %8867, align 4
  %8869 = mul i32 %8864, 2
  %8870 = add i32 1, %8869
  %8871 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8870
  %8872 = load float, float* %8871, align 4
  %8873 = fmul fast float %8856, %8868
  %8874 = call float @dx.op.tertiary.f32(i32 46, float %8872, float %8859, float %8873)  ; FMad(a,b,c)
  %8875 = fmul fast float %8868, %8857
  %8876 = call float @dx.op.tertiary.f32(i32 46, float %8872, float %8860, float %8875)  ; FMad(a,b,c)
  %8877 = fadd fast float %8874, %8849
  %8878 = fadd fast float %8876, %8850
  %8879 = fmul fast float %8877, %8795
  %8880 = fmul fast float %8878, %8795
  %8881 = call float @dx.op.binary.f32(i32 35, float %8879, float %8791)  ; FMax(a,b)
  %8882 = call float @dx.op.binary.f32(i32 35, float %8880, float %8791)  ; FMax(a,b)
  %8883 = call float @dx.op.binary.f32(i32 36, float %8881, float %8792)  ; FMin(a,b)
  %8884 = call float @dx.op.binary.f32(i32 36, float %8882, float %8792)  ; FMin(a,b)
  %8885 = fadd fast float %8883, %8789
  %8886 = fadd fast float %8884, %8790
  %8887 = uitofp i32 %8826 to float
  %8888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %57, float %8885, float %8886, float %8887, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8889 = extractvalue %dx.types.ResRet.f32 %8888, 0
  %8890 = fsub fast float %8889, %8852
  %8891 = fsub fast float %8890, %8799
  %8892 = fcmp fast ogt float %8891, 0.000000e+00
  %8893 = select i1 %8892, float 1.000000e+00, float 0.000000e+00
  %8894 = fadd fast float %8893, %8862
  %8895 = select i1 %8892, float %8891, float 0.000000e+00
  %8896 = fadd fast float %8895, %8863
  %8897 = add nuw nsw i32 %8864, 1
  %8898 = icmp eq i32 %8897, 8
  br i1 %8898, label %8899, label %8861

; <label>:8899                                    ; preds = %8861
  %8900 = fdiv fast float 1.000000e+00, %8894
  %8901 = fmul fast float %8900, %8896
  %8902 = fdiv fast float 1.000000e+00, %8852
  %8903 = fmul fast float %8901, %8902
  %8904 = call float @dx.op.unary.f32(i32 7, float %8903)  ; Saturate(value)
  %8905 = call float @dx.op.binary.f32(i32 35, float %8904, float 0.000000e+00)  ; FMax(a,b)
  %8906 = fmul fast float %8894, 1.250000e-01
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8908 = fmul fast float %8907, 2.000000e+00
  %8909 = fadd fast float %8908, -1.000000e+00
  %8910 = fcmp fast ogt float %8909, 0.000000e+00
  %8911 = fcmp fast olt float %8909, 0.000000e+00
  %8912 = zext i1 %8910 to i32
  %8913 = zext i1 %8911 to i32
  %8914 = sub nsw i32 %8912, %8913
  %8915 = sitofp i32 %8914 to float
  %8916 = fmul fast float %8915, %8909
  %8917 = fsub fast float 1.000000e+00, %8916
  %8918 = fmul fast float %8917, %8917
  %8919 = fmul fast float %8918, %8917
  %8920 = fsub fast float %8917, %8919
  %8921 = fmul fast float %8920, %8905
  %8922 = fsub fast float 1.000000e+00, %8919
  %8923 = fsub fast float %8922, %8921
  %8924 = fmul fast float %8915, 5.000000e-01
  %8925 = fmul fast float %8924, %8923
  %8926 = fsub fast float -5.000000e-01, %8925
  %8927 = fmul fast float %8926, %8760
  %8928 = fadd fast float %8927, 1.000000e+00
  %8929 = fmul fast float %8928, %8772
  br label %8930

; <label>:8930                                    ; preds = %8899, %8784
  %8931 = phi float [ %8929, %8899 ], [ %8772, %8784 ]
  %8932 = call float @dx.op.binary.f32(i32 36, float %8931, float %8931)  ; FMin(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8931, float %8932)  ; FMin(a,b)
  %8934 = fcmp fast ogt float %8933, 0.000000e+00
  br i1 %8934, label %8935, label %8776, !dx.controlflow.hints !137

; <label>:8935                                    ; preds = %8930
  %8936 = fmul fast float %8931, %8693
  %8937 = fmul fast float %8931, %8694
  %8938 = fmul fast float %8931, %8695
  %8939 = fsub fast float %8677, %5582
  %8940 = fcmp fast ogt float %8939, 0.000000e+00
  %8941 = fsub fast float %168, %5582
  %8942 = fcmp fast ogt float %8941, 0.000000e+00
  %8943 = xor i1 %8942, %8940
  %8944 = fsub fast float %5582, %8677
  %8945 = fmul fast float %8944, 2.000000e+00
  %8946 = fadd fast float %8945, %8677
  %8947 = select i1 %8943, float %8677, float %8946
  %8948 = fsub fast float %8947, %168
  %8949 = call float @dx.op.dot3.f32(i32 55, float %8704, float %8705, float %8948, float %8704, float %8705, float %8948)  ; Dot3(ax,ay,az,bx,by,bz)
  %8950 = call float @dx.op.unary.f32(i32 25, float %8949)  ; Rsqrt(value)
  %8951 = fmul fast float %8950, %8704
  %8952 = fmul fast float %8950, %8705
  %8953 = fmul fast float %8950, %8948
  %8954 = fsub fast float %5582, %168
  %8955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8954)  ; Dot3(ax,ay,az,bx,by,bz)
  %8956 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8951, float %8952, float %8953)  ; Dot3(ax,ay,az,bx,by,bz)
  %8957 = fdiv fast float 1.000000e+00, %8956
  %8958 = fmul fast float %8957, %8955
  %8959 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8941, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8960 = fcmp fast ogt float %8959, 0.000000e+00
  %8961 = fcmp fast olt float %8959, 0.000000e+00
  %8962 = zext i1 %8960 to i32
  %8963 = zext i1 %8961 to i32
  %8964 = sub nsw i32 %8962, %8963
  %8965 = sitofp i32 %8964 to float
  %8966 = fsub fast float %8947, %5582
  %8967 = call float @dx.op.dot3.f32(i32 55, float %8704, float %8705, float %8966, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8968 = fcmp fast ogt float %8967, 0.000000e+00
  %8969 = fcmp fast olt float %8967, 0.000000e+00
  %8970 = zext i1 %8968 to i32
  %8971 = zext i1 %8969 to i32
  %8972 = sub nsw i32 %8970, %8971
  %8973 = sitofp i32 %8972 to float
  %8974 = fcmp fast une float %8965, %8973
  br i1 %8974, label %8975, label %8985

; <label>:8975                                    ; preds = %8935
  %8976 = fmul fast float %8958, %8953
  %8977 = fmul fast float %8958, %8952
  %8978 = fmul fast float %8958, %8951
  %8979 = fmul fast float %8978, %8978
  %8980 = fmul fast float %8977, %8977
  %8981 = fadd fast float %8979, %8980
  %8982 = fmul fast float %8976, %8976
  %8983 = fadd fast float %8981, %8982
  %8984 = call float @dx.op.unary.f32(i32 24, float %8983)  ; Sqrt(value)
  br label %8997

; <label>:8985                                    ; preds = %8935
  %8986 = icmp slt i32 %8964, 0
  br i1 %8986, label %8987, label %8997

; <label>:8987                                    ; preds = %8985
  %8988 = fsub fast float %166, %8675
  %8989 = fsub fast float %167, %8676
  %8990 = fsub fast float %168, %8947
  %8991 = fmul fast float %8988, %8988
  %8992 = fmul fast float %8989, %8989
  %8993 = fadd fast float %8991, %8992
  %8994 = fmul fast float %8990, %8990
  %8995 = fadd fast float %8993, %8994
  %8996 = call float @dx.op.unary.f32(i32 24, float %8995)  ; Sqrt(value)
  br label %8997

; <label>:8997                                    ; preds = %8987, %8985, %8975
  %8998 = phi float [ %8984, %8975 ], [ %8996, %8987 ], [ 0.000000e+00, %8985 ]
  %8999 = and i1 %8942, %8940
  %9000 = fsub fast float -0.000000e+00, %8998
  %9001 = select i1 %8999, float -0.000000e+00, float %9000
  %9002 = fmul fast float %5579, 0x3FF7154760000000
  %9003 = fmul fast float %9002, %9001
  %9004 = fmul fast float %5580, 0x3FF7154760000000
  %9005 = fmul fast float %9004, %9001
  %9006 = fmul fast float %5581, 0x3FF7154760000000
  %9007 = fmul fast float %9006, %9001
  %9008 = call float @dx.op.unary.f32(i32 21, float %9003)  ; Exp(value)
  %9009 = call float @dx.op.unary.f32(i32 21, float %9005)  ; Exp(value)
  %9010 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9011 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  %9012 = call float @dx.op.unary.f32(i32 7, float %9009)  ; Saturate(value)
  %9013 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  %9014 = fmul fast float %8936, %9011
  %9015 = fmul fast float %8937, %9012
  %9016 = fmul fast float %8938, %9013
  %9017 = fsub fast float %8710, %186
  %9018 = fsub fast float %8711, %187
  %9019 = fsub fast float %8712, %188
  %9020 = call float @dx.op.dot3.f32(i32 55, float %9017, float %9018, float %9019, float %9017, float %9018, float %9019)  ; Dot3(ax,ay,az,bx,by,bz)
  %9021 = call float @dx.op.unary.f32(i32 25, float %9020)  ; Rsqrt(value)
  %9022 = fmul fast float %9021, %9017
  %9023 = fmul fast float %9021, %9018
  %9024 = fmul fast float %9021, %9019
  %9025 = call float @dx.op.dot3.f32(i32 55, float %8710, float %8711, float %8712, float %5768, float %5769, float %5770)  ; Dot3(ax,ay,az,bx,by,bz)
  %9026 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %9022, float %9023, float %9024)  ; Dot3(ax,ay,az,bx,by,bz)
  %9027 = call float @dx.op.unary.f32(i32 7, float %9025)  ; Saturate(value)
  %9028 = fmul fast float %9027, %8717
  %9029 = fmul fast float %9027, %9027
  %9030 = fmul fast float %9029, %5835
  %9031 = call float @dx.op.unary.f32(i32 7, float %9030)  ; Saturate(value)
  %9032 = fmul fast float %9028, %9031
  %9033 = bitcast float %8707 to i32
  %9034 = ashr i32 %9033, 1
  %9035 = sub nsw i32 1597463007, %9034
  %9036 = bitcast i32 %9035 to float
  %9037 = fmul fast float %9036, %8704
  %9038 = fmul fast float %9036, %8705
  %9039 = fmul fast float %9036, %8706
  %9040 = fsub fast float %9037, %186
  %9041 = fsub fast float %9038, %187
  %9042 = fsub fast float %9039, %188
  %9043 = call float @dx.op.dot3.f32(i32 55, float %9040, float %9041, float %9042, float %9040, float %9041, float %9042)  ; Dot3(ax,ay,az,bx,by,bz)
  %9044 = call float @dx.op.unary.f32(i32 25, float %9043)  ; Rsqrt(value)
  %9045 = fmul fast float %9040, %9044
  %9046 = fmul fast float %9041, %9044
  %9047 = fmul fast float %9042, %9044
  %9048 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float %9045, float %9046, float %9047)  ; Dot3(ax,ay,az,bx,by,bz)
  %9049 = fmul fast float %9048, %9048
  %9050 = call float @dx.op.unary.f32(i32 6, float %9025)  ; FAbs(value)
  %9051 = fsub fast float 1.000000e+00, %5828
  %9052 = fmul fast float %5810, %5810
  %9053 = fmul fast float %9052, %9051
  %9054 = fadd fast float %9053, %5828
  %9055 = bitcast float %9054 to i32
  %9056 = ashr i32 %9055, 1
  %9057 = add nsw i32 %9056, 532487669
  %9058 = bitcast i32 %9057 to float
  %9059 = fadd fast float %9058, %5810
  %9060 = fmul fast float %5828, %9049
  %9061 = fsub fast float 1.000000e+00, %9049
  %9062 = fadd fast float %9061, %9060
  %9063 = fmul fast float %9050, %9050
  %9064 = fmul fast float %9063, %9051
  %9065 = fadd fast float %9064, %5828
  %9066 = bitcast float %9065 to i32
  %9067 = ashr i32 %9066, 1
  %9068 = add nsw i32 %9067, 532487669
  %9069 = bitcast i32 %9068 to float
  %9070 = fadd fast float %9069, %9050
  %9071 = fmul fast float %9062, %9062
  %9072 = fmul fast float %9071, %9059
  %9073 = fmul fast float %9072, %9070
  %9074 = fdiv fast float 1.000000e+00, %9073
  %9075 = bitcast float %5828 to i32
  %9076 = sitofp i32 %9075 to float
  %9077 = fmul fast float %9076, 0x3FE7F73180000000
  %9078 = fadd fast float %9077, 0x41AFE27C40000000
  %9079 = fptosi float %9078 to i32
  %9080 = bitcast i32 %9079 to float
  %9081 = fmul fast float %8672, 0x3FD80E9D60000000
  %9082 = fmul fast float %9081, %9036
  %9083 = fadd fast float %9080, %9082
  %9084 = bitcast float %9083 to i32
  %9085 = sub nsw i32 2129859010, %9084
  %9086 = bitcast i32 %9085 to float
  %9087 = fmul fast float %5828, %9074
  %9088 = fmul fast float %9087, %9080
  %9089 = fmul fast float %9088, %9086
  %9090 = fmul fast float %6071, 0x3FF9999980000000
  %9091 = fsub fast float 5.000000e+00, %9090
  %9092 = call float @dx.op.unary.f32(i32 6, float %9026)  ; FAbs(value)
  %9093 = fsub fast float 1.000000e+00, %9092
  %9094 = fmul fast float %6071, 0x41D9660740000000
  %9095 = fadd fast float %9094, 0xC1EFBF8940000000
  %9096 = bitcast float %9093 to i32
  %9097 = sitofp i32 %9096 to float
  %9098 = fmul fast float %9097, %9091
  %9099 = fadd fast float %9095, %9098
  %9100 = fptosi float %9099 to i32
  %9101 = bitcast i32 %9100 to float
  %9102 = fsub fast float 1.000000e+00, %5765
  %9103 = fsub fast float 1.000000e+00, %5766
  %9104 = fsub fast float 1.000000e+00, %5808
  %9105 = fmul fast float %9101, %9102
  %9106 = fmul fast float %9101, %9103
  %9107 = fmul fast float %9101, %9104
  %9108 = fadd fast float %9105, %5765
  %9109 = fadd fast float %9106, %5766
  %9110 = fadd fast float %9107, %5808
  br i1 %6094, label %9111, label %9134

; <label>:9111                                    ; preds = %8997
  %9112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %9092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9113 = extractvalue %dx.types.ResRet.f32 %9112, 0
  %9114 = extractvalue %dx.types.ResRet.f32 %9112, 1
  %9115 = extractvalue %dx.types.ResRet.f32 %9112, 2
  %9116 = fadd fast float %9113, -5.000000e-01
  %9117 = fadd fast float %9114, -5.000000e-01
  %9118 = fadd fast float %9115, -5.000000e-01
  %9119 = fmul fast float %5765, 4.000000e+00
  %9120 = fmul fast float %9119, %9102
  %9121 = fmul fast float %9120, %9116
  %9122 = fmul fast float %5766, 4.000000e+00
  %9123 = fmul fast float %9122, %9103
  %9124 = fmul fast float %9123, %9117
  %9125 = fmul fast float %5808, 4.000000e+00
  %9126 = fmul fast float %9125, %9104
  %9127 = fmul fast float %9126, %9118
  %9128 = fadd fast float %9121, %9108
  %9129 = fadd fast float %9124, %9109
  %9130 = fadd fast float %9127, %9110
  %9131 = call float @dx.op.unary.f32(i32 7, float %9128)  ; Saturate(value)
  %9132 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  %9133 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  br label %9134

; <label>:9134                                    ; preds = %9111, %8997
  %9135 = phi float [ %9131, %9111 ], [ %9108, %8997 ]
  %9136 = phi float [ %9132, %9111 ], [ %9109, %8997 ]
  %9137 = phi float [ %9133, %9111 ], [ %9110, %8997 ]
  %9138 = fmul fast float %9025, 9.843750e-01
  %9139 = fadd fast float %9138, 7.812500e-03
  %9140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9139, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9141 = extractvalue %dx.types.ResRet.f32 %9140, 0
  %9142 = extractvalue %dx.types.ResRet.f32 %9140, 1
  %9143 = extractvalue %dx.types.ResRet.f32 %9140, 2
  %9144 = extractvalue %dx.types.ResRet.f32 %9140, 3
  %9145 = fsub fast float %9143, %9141
  %9146 = fsub fast float %9144, %9142
  %9147 = fmul fast float %9145, %6081
  %9148 = fmul fast float %9146, %6081
  %9149 = fadd fast float %9147, %9141
  %9150 = fadd fast float %9148, %9142
  %9151 = fmul fast float %9149, %5765
  %9152 = fmul fast float %9149, %5766
  %9153 = fmul fast float %9149, %5808
  %9154 = fadd fast float %9151, %9150
  %9155 = fadd fast float %9152, %9150
  %9156 = fadd fast float %9153, %9150
  br i1 %6094, label %9157, label %9180

; <label>:9157                                    ; preds = %9134
  %9158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %9025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9159 = extractvalue %dx.types.ResRet.f32 %9158, 0
  %9160 = extractvalue %dx.types.ResRet.f32 %9158, 1
  %9161 = extractvalue %dx.types.ResRet.f32 %9158, 2
  %9162 = fadd fast float %9159, -5.000000e-01
  %9163 = fadd fast float %9160, -5.000000e-01
  %9164 = fadd fast float %9161, -5.000000e-01
  %9165 = fmul fast float %5765, 4.000000e+00
  %9166 = fmul fast float %9165, %9102
  %9167 = fmul fast float %9166, %9162
  %9168 = fmul fast float %5766, 4.000000e+00
  %9169 = fmul fast float %9168, %9103
  %9170 = fmul fast float %9169, %9163
  %9171 = fmul fast float %5808, 4.000000e+00
  %9172 = fmul fast float %9171, %9104
  %9173 = fmul fast float %9172, %9164
  %9174 = fadd fast float %9167, %9154
  %9175 = fadd fast float %9170, %9155
  %9176 = fadd fast float %9173, %9156
  %9177 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9178 = call float @dx.op.unary.f32(i32 7, float %9175)  ; Saturate(value)
  %9179 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  br label %9180

; <label>:9180                                    ; preds = %9157, %9134
  %9181 = phi float [ %9177, %9157 ], [ %9154, %9134 ]
  %9182 = phi float [ %9178, %9157 ], [ %9155, %9134 ]
  %9183 = phi float [ %9179, %9157 ], [ %9156, %9134 ]
  %9184 = call float @dx.op.binary.f32(i32 35, float %9182, float %9183)  ; FMax(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9181, float %9184)  ; FMax(a,b)
  %9186 = fsub fast float 1.000000e+00, %9185
  %9187 = call float @dx.op.binary.f32(i32 35, float %9050, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9188 = fdiv fast float %4464, %9187
  %9189 = fmul fast float %6644, %9188
  %9190 = fmul fast float %6646, %9188
  %9191 = fmul fast float %6648, %9188
  %9192 = call float @dx.op.unary.f32(i32 21, float %9189)  ; Exp(value)
  %9193 = call float @dx.op.unary.f32(i32 21, float %9190)  ; Exp(value)
  %9194 = call float @dx.op.unary.f32(i32 21, float %9191)  ; Exp(value)
  %9195 = call float @dx.op.unary.f32(i32 7, float %9192)  ; Saturate(value)
  %9196 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9197 = call float @dx.op.unary.f32(i32 7, float %9194)  ; Saturate(value)
  %9198 = select i1 %6641, float %9195, float 0.000000e+00
  %9199 = select i1 %6642, float %9196, float 0.000000e+00
  %9200 = select i1 %6643, float %9197, float 0.000000e+00
  %9201 = fsub fast float -0.000000e+00, %5768
  %9202 = fsub fast float -0.000000e+00, %5769
  %9203 = fsub fast float -0.000000e+00, %5770
  %9204 = call float @dx.op.dot3.f32(i32 55, float %8710, float %8711, float %8712, float %9201, float %9202, float %9203)  ; Dot3(ax,ay,az,bx,by,bz)
  %9205 = call float @dx.op.unary.f32(i32 7, float %9204)  ; Saturate(value)
  %9206 = fmul fast float %9205, %8717
  %9207 = fmul fast float %9205, 9.843750e-01
  %9208 = fadd fast float %9207, 7.812500e-03
  %9209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9208, float %6075, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.ResRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.ResRet.f32 %9209, 2
  %9213 = extractvalue %dx.types.ResRet.f32 %9209, 3
  %9214 = fsub fast float %9212, %9210
  %9215 = fsub fast float %9213, %9211
  %9216 = fmul fast float %9214, %6081
  %9217 = fmul fast float %9215, %6081
  %9218 = fadd fast float %9216, %9210
  %9219 = fadd fast float %9217, %9211
  %9220 = fmul fast float %9218, %5765
  %9221 = fmul fast float %9218, %5766
  %9222 = fmul fast float %9218, %5808
  %9223 = fadd fast float %9220, %9219
  %9224 = fadd fast float %9221, %9219
  %9225 = fadd fast float %9222, %9219
  br i1 %6094, label %9226, label %9249

; <label>:9226                                    ; preds = %9180
  %9227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5127, float %9205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9228 = extractvalue %dx.types.ResRet.f32 %9227, 0
  %9229 = extractvalue %dx.types.ResRet.f32 %9227, 1
  %9230 = extractvalue %dx.types.ResRet.f32 %9227, 2
  %9231 = fadd fast float %9228, -5.000000e-01
  %9232 = fadd fast float %9229, -5.000000e-01
  %9233 = fadd fast float %9230, -5.000000e-01
  %9234 = fmul fast float %5765, 4.000000e+00
  %9235 = fmul fast float %9234, %9102
  %9236 = fmul fast float %9235, %9231
  %9237 = fmul fast float %5766, 4.000000e+00
  %9238 = fmul fast float %9237, %9103
  %9239 = fmul fast float %9238, %9232
  %9240 = fmul fast float %5808, 4.000000e+00
  %9241 = fmul fast float %9240, %9104
  %9242 = fmul fast float %9241, %9233
  %9243 = fadd fast float %9236, %9223
  %9244 = fadd fast float %9239, %9224
  %9245 = fadd fast float %9242, %9225
  %9246 = call float @dx.op.unary.f32(i32 7, float %9243)  ; Saturate(value)
  %9247 = call float @dx.op.unary.f32(i32 7, float %9244)  ; Saturate(value)
  %9248 = call float @dx.op.unary.f32(i32 7, float %9245)  ; Saturate(value)
  br label %9249

; <label>:9249                                    ; preds = %9226, %9180
  %9250 = phi float [ %9246, %9226 ], [ %9223, %9180 ]
  %9251 = phi float [ %9247, %9226 ], [ %9224, %9180 ]
  %9252 = phi float [ %9248, %9226 ], [ %9225, %9180 ]
  %9253 = call float @dx.op.binary.f32(i32 35, float %9251, float %9252)  ; FMax(a,b)
  %9254 = call float @dx.op.binary.f32(i32 35, float %9250, float %9253)  ; FMax(a,b)
  %9255 = fsub fast float 1.000000e+00, %9254
  %9256 = fmul fast float %5825, %6708
  %9257 = fadd fast float %6702, %9256
  %9258 = call float @dx.op.unary.f32(i32 7, float %9257)  ; Saturate(value)
  %9259 = fsub fast float %9037, %5816
  %9260 = fsub fast float %9038, %5817
  %9261 = fsub fast float %9039, %5818
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9259, float %9260, float %9261, float %9259, float %9260, float %9261)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = call float @dx.op.unary.f32(i32 25, float %9262)  ; Rsqrt(value)
  %9264 = fmul fast float %9259, %9263
  %9265 = fmul fast float %9260, %9263
  %9266 = fmul fast float %9261, %9263
  %9267 = call float @dx.op.dot3.f32(i32 55, float %9201, float %9202, float %9203, float %9264, float %9265, float %9266)  ; Dot3(ax,ay,az,bx,by,bz)
  %9268 = fmul fast float %9267, %9267
  %9269 = call float @dx.op.unary.f32(i32 6, float %9205)  ; FAbs(value)
  %9270 = call float @dx.op.binary.f32(i32 35, float %9258, float 0x3F847AE140000000)  ; FMax(a,b)
  %9271 = fmul fast float %9270, %9270
  %9272 = fmul fast float %9271, %9271
  %9273 = fsub fast float 1.000000e+00, %9272
  %9274 = fmul fast float %9052, %9273
  %9275 = fadd fast float %9274, %9272
  %9276 = bitcast float %9275 to i32
  %9277 = ashr i32 %9276, 1
  %9278 = add nsw i32 %9277, 532487669
  %9279 = bitcast i32 %9278 to float
  %9280 = fadd fast float %9279, %5810
  %9281 = fmul fast float %9272, %9268
  %9282 = fsub fast float 1.000000e+00, %9268
  %9283 = fadd fast float %9282, %9281
  %9284 = fmul fast float %9269, %9269
  %9285 = fmul fast float %9284, %9273
  %9286 = fadd fast float %9285, %9272
  %9287 = bitcast float %9286 to i32
  %9288 = ashr i32 %9287, 1
  %9289 = add nsw i32 %9288, 532487669
  %9290 = bitcast i32 %9289 to float
  %9291 = fadd fast float %9290, %9269
  %9292 = fmul fast float %9283, %9283
  %9293 = fmul fast float %9292, %9280
  %9294 = fmul fast float %9293, %9291
  %9295 = fdiv fast float 1.000000e+00, %9294
  %9296 = bitcast float %9272 to i32
  %9297 = sitofp i32 %9296 to float
  %9298 = fmul fast float %9297, 0x3FE7F73180000000
  %9299 = fadd fast float %9298, 0x41AFE27C40000000
  %9300 = fptosi float %9299 to i32
  %9301 = bitcast i32 %9300 to float
  %9302 = fadd fast float %9301, %9082
  %9303 = bitcast float %9302 to i32
  %9304 = sub nsw i32 2129859010, %9303
  %9305 = bitcast i32 %9304 to float
  %9306 = fmul fast float %9272, %9295
  %9307 = fmul fast float %9306, %9301
  %9308 = fmul fast float %9307, %9305
  br i1 %8702, label %9309, label %9319

; <label>:9309                                    ; preds = %9249
  %9310 = fmul fast float %9206, %9198
  %9311 = fmul fast float %9206, %9199
  %9312 = fmul fast float %9206, %9200
  %9313 = fmul fast float %9310, %9255
  %9314 = fmul fast float %9313, %9308
  %9315 = fmul fast float %9311, %9255
  %9316 = fmul fast float %9315, %9308
  %9317 = fmul fast float %9312, %9255
  %9318 = fmul fast float %9317, %9308
  br label %9319

; <label>:9319                                    ; preds = %9309, %9249
  %9320 = phi float [ %9314, %9309 ], [ 0.000000e+00, %9249 ]
  %9321 = phi float [ %9316, %9309 ], [ 0.000000e+00, %9249 ]
  %9322 = phi float [ %9318, %9309 ], [ 0.000000e+00, %9249 ]
  %9323 = fmul fast float %9135, %9089
  %9324 = fmul fast float %9136, %9089
  %9325 = fmul fast float %9137, %9089
  %9326 = fsub fast float 1.000000e+00, %9026
  %9327 = bitcast float %9326 to i32
  %9328 = sitofp i32 %9327 to float
  %9329 = fmul fast float %9328, 5.000000e+00
  %9330 = fadd fast float %9329, 0xC1EFBF8940000000
  %9331 = fptosi float %9330 to i32
  %9332 = bitcast i32 %9331 to float
  %9333 = fmul fast float %9332, %5128
  %9334 = fmul fast float %9186, %9333
  %9335 = fmul fast float %9334, %6636
  %9336 = fmul fast float %9334, %6637
  %9337 = fmul fast float %9334, %6638
  %9338 = fadd fast float %9335, %9323
  %9339 = fadd fast float %9336, %9324
  %9340 = fadd fast float %9337, %9325
  %9341 = fmul fast float %9338, %9032
  %9342 = fmul fast float %9339, %9032
  %9343 = fmul fast float %9340, %9032
  %9344 = fadd fast float %9341, %9320
  %9345 = fadd fast float %9342, %9321
  %9346 = fadd fast float %9343, %9322
  %9347 = fmul fast float %9014, %5153
  %9348 = fmul fast float %9347, %9032
  %9349 = fmul fast float %9348, %9186
  %9350 = fmul fast float %9015, %5153
  %9351 = fmul fast float %9350, %9032
  %9352 = fmul fast float %9351, %9186
  %9353 = fmul fast float %9016, %5153
  %9354 = fmul fast float %9353, %9032
  %9355 = fmul fast float %9354, %9186
  %9356 = fadd fast float %9349, %8646
  %9357 = fadd fast float %9352, %8647
  %9358 = fadd fast float %9355, %8648
  %9359 = fmul fast float %9347, %9344
  %9360 = fmul fast float %9350, %9345
  %9361 = fmul fast float %9353, %9346
  %9362 = fadd fast float %9359, %8643
  %9363 = fadd fast float %9360, %8644
  %9364 = fadd fast float %9361, %8645
  br label %8776

; <label>:9365                                    ; preds = %8776
  br label %9366

; <label>:9366                                    ; preds = %9365, %8609
  %9367 = phi float [ %8611, %8609 ], [ %8777, %9365 ]
  %9368 = phi float [ %8612, %8609 ], [ %8778, %9365 ]
  %9369 = phi float [ %8613, %8609 ], [ %8779, %9365 ]
  %9370 = phi float [ %8614, %8609 ], [ %8780, %9365 ]
  %9371 = phi float [ %8615, %8609 ], [ %8781, %9365 ]
  %9372 = phi float [ %8616, %8609 ], [ %8782, %9365 ]
  %9373 = add i32 %8610, 1
  %9374 = icmp ugt i32 %9373, %8606
  br i1 %9374, label %9375, label %8609

; <label>:9375                                    ; preds = %9366
  br label %9376

; <label>:9376                                    ; preds = %9375, %8559, %8549
  %9377 = phi float [ %8550, %8549 ], [ %8550, %8559 ], [ %9367, %9375 ]
  %9378 = phi float [ %8551, %8549 ], [ %8551, %8559 ], [ %9368, %9375 ]
  %9379 = phi float [ %8552, %8549 ], [ %8552, %8559 ], [ %9369, %9375 ]
  %9380 = phi float [ %8553, %8549 ], [ %8553, %8559 ], [ %9370, %9375 ]
  %9381 = phi float [ %8554, %8549 ], [ %8554, %8559 ], [ %9371, %9375 ]
  %9382 = phi float [ %8555, %8549 ], [ %8555, %8559 ], [ %9372, %9375 ]
  %9383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9384 = extractvalue %dx.types.CBufRet.f32 %9383, 0
  %9385 = fmul fast float %9384, %6715
  %9386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9387 = extractvalue %dx.types.CBufRet.f32 %9386, 3
  %9388 = fsub fast float 1.000000e+00, %5131
  %9389 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9390 = fadd fast float %9382, %5130
  %9391 = fmul fast float %9390, %5131
  %9392 = fmul fast float %9389, %9387
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 3
  %9395 = fmul fast float %9380, %5762
  %9396 = fmul fast float %9381, %5763
  %9397 = fmul fast float %9382, %5764
  %9398 = fcmp fast ogt float %99, %220
  %9399 = and i1 %9398, %5585
  %9400 = or i1 %5591, %9399
  %9401 = icmp eq i32 %5584, 2
  %9402 = fcmp fast ole float %99, %220
  %9403 = and i1 %9402, %9401
  %9404 = or i1 %9403, %9400
  br i1 %9399, label %9405, label %9659

; <label>:9405                                    ; preds = %9376
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 2
  %9408 = extractvalue %dx.types.CBufRet.f32 %9406, 3
  %9409 = fmul fast float %9407, %111
  %9410 = fmul fast float %9408, %112
  %9411 = call float @dx.op.unary.f32(i32 7, float %9409)  ; Saturate(value)
  %9412 = call float @dx.op.unary.f32(i32 7, float %9410)  ; Saturate(value)
  %9413 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9411, float %9412, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9414 = extractvalue %dx.types.ResRet.f32 %9413, 0
  %9415 = extractvalue %dx.types.ResRet.f32 %9413, 1
  %9416 = extractvalue %dx.types.ResRet.f32 %9413, 2
  %9417 = extractvalue %dx.types.ResRet.f32 %9413, 3
  %9418 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9411, float %9412, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9419 = extractvalue %dx.types.ResRet.f32 %9418, 0
  %9420 = extractvalue %dx.types.ResRet.f32 %9418, 1
  %9421 = extractvalue %dx.types.ResRet.f32 %9418, 2
  %9422 = extractvalue %dx.types.ResRet.f32 %9418, 3
  %9423 = call float @dx.op.binary.f32(i32 35, float %9415, float %9416)  ; FMax(a,b)
  %9424 = call float @dx.op.binary.f32(i32 35, float %9414, float %9423)  ; FMax(a,b)
  %9425 = call float @dx.op.binary.f32(i32 35, float %9424, float %9417)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9420, float %9421)  ; FMin(a,b)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9419, float %9426)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9427, float %9422)  ; FMin(a,b)
  %9429 = fmul fast float %9425, 2.550000e+02
  %9430 = fadd fast float %9429, 0x3F70101020000000
  %9431 = fptoui float %9430 to i32
  %9432 = fmul fast float %9428, 2.550000e+02
  %9433 = fadd fast float %9432, 0x3F70101020000000
  %9434 = fptoui float %9433 to i32
  %9435 = icmp ult i32 %9431, %9434
  br i1 %9435, label %9436, label %9604

; <label>:9436                                    ; preds = %9405
  %9437 = fcmp fast ogt float %98, 9.843750e-01
  %9438 = fadd fast float %99, -4.000000e+00
  %9439 = select i1 %9437, float -4.000000e+00, float %9438
  %9440 = call float @dx.op.binary.f32(i32 35, float %9439, float 0.000000e+00)  ; FMax(a,b)
  %9441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9442 = extractvalue %dx.types.CBufRet.f32 %9441, 0
  %9443 = fadd fast float %9442, %9440
  %9444 = extractvalue %dx.types.CBufRet.f32 %9441, 2
  %9445 = fmul fast float %9443, %9444
  %9446 = call float @dx.op.unary.f32(i32 23, float %9445)  ; Log(value)
  %9447 = extractvalue %dx.types.CBufRet.f32 %9441, 3
  %9448 = fmul fast float %9447, %9446
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 2
  %9451 = fmul fast float %9448, %9450
  %9452 = call float @dx.op.unary.f32(i32 7, float %9451)  ; Saturate(value)
  %9453 = uitofp i32 %9431 to float
  %9454 = uitofp i32 %9434 to float
  %9455 = fadd fast float %9453, 5.000000e-01
  %9456 = fadd fast float %9454, 5.000000e-01
  %9457 = fmul fast float %9450, %9455
  %9458 = fmul fast float %9450, %9456
  %9459 = fadd fast float %9457, 0x3F0FFB4800000000
  %9460 = fadd fast float %9458, 0xBF0FFB4800000000
  %9461 = call float @dx.op.binary.f32(i32 35, float %9452, float %9459)  ; FMax(a,b)
  %9462 = call float @dx.op.binary.f32(i32 36, float %9461, float %9460)  ; FMin(a,b)
  %9463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9464 = extractvalue %dx.types.CBufRet.f32 %9463, 1
  %9465 = extractvalue %dx.types.CBufRet.f32 %9463, 2
  %9466 = extractvalue %dx.types.CBufRet.f32 %9463, 0
  %9467 = fmul fast float %9464, %9462
  %9468 = fadd fast float %9466, %9467
  %9469 = fadd fast float %9466, %9465
  %9470 = fsub fast float %9464, %9465
  %9471 = fadd fast float %9470, %9466
  %9472 = call float @dx.op.binary.f32(i32 35, float %9468, float %9469)  ; FMax(a,b)
  %9473 = call float @dx.op.binary.f32(i32 36, float %9472, float %9471)  ; FMin(a,b)
  %9474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %9411, float %9412, float %9473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9475 = extractvalue %dx.types.ResRet.f32 %9474, 0
  %9476 = extractvalue %dx.types.ResRet.f32 %9474, 1
  %9477 = extractvalue %dx.types.ResRet.f32 %9474, 2
  %9478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.i32 %9478, 0
  %9480 = extractvalue %dx.types.CBufRet.i32 %9478, 1
  %9481 = uitofp i32 %9479 to float
  %9482 = uitofp i32 %9480 to float
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 0
  %9485 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9486 = fmul fast float %9481, %9411
  %9487 = fmul fast float %9482, %9412
  %9488 = fadd fast float %9486, -5.000000e-01
  %9489 = fadd fast float %9487, -5.000000e-01
  %9490 = call float @dx.op.unary.f32(i32 22, float %9488)  ; Frc(value)
  %9491 = call float @dx.op.unary.f32(i32 22, float %9489)  ; Frc(value)
  %9492 = fmul fast float %9490, %9490
  %9493 = fmul fast float %9492, %9490
  %9494 = fsub fast float 3.000000e+00, %9490
  %9495 = fmul fast float %9492, %9494
  %9496 = fmul fast float %9490, 3.000000e+00
  %9497 = fmul fast float %9493, 3.000000e+00
  %9498 = fmul fast float %9492, 6.000000e+00
  %9499 = fsub fast float %9497, %9498
  %9500 = fadd fast float %9499, 4.000000e+00
  %9501 = fmul fast float %9500, 0x3FC5555560000000
  %9502 = fmul fast float %9493, -3.000000e+00
  %9503 = fadd fast float %9492, %9490
  %9504 = fmul fast float %9503, 3.000000e+00
  %9505 = fadd fast float %9502, 1.000000e+00
  %9506 = fadd fast float %9505, %9504
  %9507 = fmul fast float %9493, 0x3FC5555560000000
  %9508 = fmul fast float %9491, %9491
  %9509 = fmul fast float %9508, %9491
  %9510 = fsub fast float 3.000000e+00, %9491
  %9511 = fmul fast float %9508, %9510
  %9512 = fmul fast float %9491, 3.000000e+00
  %9513 = fmul fast float %9509, 3.000000e+00
  %9514 = fmul fast float %9508, 6.000000e+00
  %9515 = fsub fast float %9513, %9514
  %9516 = fadd fast float %9515, 4.000000e+00
  %9517 = fmul fast float %9516, 0x3FC5555560000000
  %9518 = fmul fast float %9509, -3.000000e+00
  %9519 = fadd fast float %9508, %9491
  %9520 = fmul fast float %9519, 3.000000e+00
  %9521 = fadd fast float %9518, 1.000000e+00
  %9522 = fadd fast float %9521, %9520
  %9523 = fmul fast float %9509, 0x3FC5555560000000
  %9524 = fadd fast float %9490, 1.000000e+00
  %9525 = fsub fast float 1.000000e+00, %9496
  %9526 = fadd fast float %9525, %9495
  %9527 = fadd fast float %9526, %9500
  %9528 = fmul fast float %9527, 0x3FC5555560000000
  %9529 = fdiv fast float %9501, %9528
  %9530 = fsub fast float %9524, %9529
  %9531 = fsub fast float 1.000000e+00, %9490
  %9532 = fadd fast float %9506, %9493
  %9533 = fmul fast float %9532, 0x3FC5555560000000
  %9534 = fdiv fast float %9507, %9533
  %9535 = fadd fast float %9531, %9534
  %9536 = fadd fast float %9491, 1.000000e+00
  %9537 = fsub fast float 1.000000e+00, %9512
  %9538 = fadd fast float %9537, %9511
  %9539 = fadd fast float %9538, %9516
  %9540 = fmul fast float %9539, 0x3FC5555560000000
  %9541 = fdiv fast float %9517, %9540
  %9542 = fsub fast float %9536, %9541
  %9543 = fsub fast float 1.000000e+00, %9491
  %9544 = fadd fast float %9522, %9509
  %9545 = fmul fast float %9544, 0x3FC5555560000000
  %9546 = fdiv fast float %9523, %9545
  %9547 = fadd fast float %9546, %9543
  %9548 = fmul fast float %9530, %9484
  %9549 = fsub fast float %9411, %9548
  %9550 = fmul fast float %9535, %9484
  %9551 = fadd fast float %9550, %9411
  %9552 = fmul fast float %9547, %9485
  %9553 = fadd fast float %9552, %9412
  %9554 = fmul fast float %9542, %9485
  %9555 = fsub fast float %9412, %9554
  %9556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9549, float %9555, float %9473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.ResRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.ResRet.f32 %9556, 2
  %9560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9551, float %9555, float %9473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9561 = extractvalue %dx.types.ResRet.f32 %9560, 0
  %9562 = extractvalue %dx.types.ResRet.f32 %9560, 1
  %9563 = extractvalue %dx.types.ResRet.f32 %9560, 2
  %9564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9549, float %9553, float %9473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9565 = extractvalue %dx.types.ResRet.f32 %9564, 0
  %9566 = extractvalue %dx.types.ResRet.f32 %9564, 1
  %9567 = extractvalue %dx.types.ResRet.f32 %9564, 2
  %9568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9551, float %9553, float %9473, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9569 = extractvalue %dx.types.ResRet.f32 %9568, 0
  %9570 = extractvalue %dx.types.ResRet.f32 %9568, 1
  %9571 = extractvalue %dx.types.ResRet.f32 %9568, 2
  %9572 = fsub fast float %9565, %9557
  %9573 = fsub fast float %9566, %9558
  %9574 = fsub fast float %9567, %9559
  %9575 = fmul fast float %9572, %9545
  %9576 = fmul fast float %9573, %9545
  %9577 = fmul fast float %9574, %9545
  %9578 = fadd fast float %9575, %9557
  %9579 = fadd fast float %9576, %9558
  %9580 = fadd fast float %9577, %9559
  %9581 = fsub fast float %9569, %9561
  %9582 = fsub fast float %9570, %9562
  %9583 = fsub fast float %9571, %9563
  %9584 = fmul fast float %9581, %9545
  %9585 = fmul fast float %9582, %9545
  %9586 = fmul fast float %9583, %9545
  %9587 = fsub fast float %9561, %9578
  %9588 = fadd fast float %9587, %9584
  %9589 = fsub fast float %9562, %9579
  %9590 = fadd fast float %9589, %9585
  %9591 = fsub fast float %9563, %9580
  %9592 = fadd fast float %9591, %9586
  %9593 = fmul fast float %9588, %9533
  %9594 = fmul fast float %9590, %9533
  %9595 = fmul fast float %9592, %9533
  %9596 = fadd fast float %9593, %9578
  %9597 = fadd fast float %9594, %9579
  %9598 = fadd fast float %9595, %9580
  %9599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.f32 %9599, 1
  %9601 = fmul fast float %9596, %9600
  %9602 = fmul fast float %9597, %9600
  %9603 = fmul fast float %9598, %9600
  br label %9604

; <label>:9604                                    ; preds = %9436, %9405
  %9605 = phi float [ %9475, %9436 ], [ 1.000000e+00, %9405 ]
  %9606 = phi float [ %9476, %9436 ], [ 1.000000e+00, %9405 ]
  %9607 = phi float [ %9477, %9436 ], [ 1.000000e+00, %9405 ]
  %9608 = phi float [ %9601, %9436 ], [ 0.000000e+00, %9405 ]
  %9609 = phi float [ %9602, %9436 ], [ 0.000000e+00, %9405 ]
  %9610 = phi float [ %9603, %9436 ], [ 0.000000e+00, %9405 ]
  %9611 = call float @dx.op.dot3.f32(i32 55, float %9605, float %9606, float %9607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9612 = call float @dx.op.dot3.f32(i32 55, float %9608, float %9609, float %9610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9613 = select i1 %260, float %9611, float %9605
  %9614 = select i1 %260, float %9611, float %9606
  %9615 = select i1 %260, float 1.000000e+00, float %9607
  %9616 = select i1 %260, float %9612, float %9608
  %9617 = select i1 %260, float 0.000000e+00, float %9609
  %9618 = select i1 %260, float 0.000000e+00, float %9610
  %9619 = fmul fast float %9613, %9395
  %9620 = fmul fast float %9614, %9396
  %9621 = fmul fast float %9615, %9397
  %9622 = fadd fast float %9619, %9616
  %9623 = fadd fast float %9620, %9617
  %9624 = fadd fast float %9618, %9621
  %9625 = fmul fast float %9613, %9377
  %9626 = fmul fast float %9614, %9378
  %9627 = fmul fast float %9615, %9379
  %9628 = fmul fast float %136, %9407
  %9629 = fmul fast float %138, %9408
  %9630 = fsub fast float 1.000000e+00, %9628
  %9631 = fsub fast float 1.000000e+00, %9629
  %9632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9633 = extractvalue %dx.types.CBufRet.f32 %9632, 0
  %9634 = extractvalue %dx.types.CBufRet.f32 %9632, 1
  %9635 = extractvalue %dx.types.CBufRet.f32 %9632, 2
  %9636 = fmul fast float %9630, %9633
  %9637 = fmul fast float %9630, %9634
  %9638 = fmul fast float %9630, %9635
  %9639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9639, 0
  %9641 = extractvalue %dx.types.CBufRet.f32 %9639, 1
  %9642 = extractvalue %dx.types.CBufRet.f32 %9639, 2
  %9643 = fmul fast float %9631, %9640
  %9644 = fmul fast float %9631, %9641
  %9645 = fmul fast float %9631, %9642
  %9646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9647 = extractvalue %dx.types.CBufRet.f32 %9646, 0
  %9648 = extractvalue %dx.types.CBufRet.f32 %9646, 1
  %9649 = extractvalue %dx.types.CBufRet.f32 %9646, 2
  %9650 = fadd fast float %9643, %9647
  %9651 = fadd fast float %9650, %9636
  %9652 = fadd fast float %9644, %9648
  %9653 = fadd fast float %9652, %9637
  %9654 = fadd fast float %9645, %9649
  %9655 = fadd fast float %9654, %9638
  %9656 = fmul fast float %9651, %220
  %9657 = fmul fast float %9653, %220
  %9658 = fmul fast float %9655, %220
  br label %9659

; <label>:9659                                    ; preds = %9604, %9376
  %9660 = phi float [ %9656, %9604 ], [ %166, %9376 ]
  %9661 = phi float [ %9657, %9604 ], [ %167, %9376 ]
  %9662 = phi float [ %9658, %9604 ], [ %168, %9376 ]
  %9663 = phi float [ %220, %9604 ], [ %99, %9376 ]
  %9664 = phi float [ %9622, %9604 ], [ %9395, %9376 ]
  %9665 = phi float [ %9623, %9604 ], [ %9396, %9376 ]
  %9666 = phi float [ %9624, %9604 ], [ %9397, %9376 ]
  %9667 = phi float [ %9625, %9604 ], [ %9377, %9376 ]
  %9668 = phi float [ %9626, %9604 ], [ %9378, %9376 ]
  %9669 = phi float [ %9627, %9604 ], [ %9379, %9376 ]
  %9670 = phi float [ %9605, %9604 ], [ 1.000000e+00, %9376 ]
  br i1 %9404, label %10819, label %9671

; <label>:9671                                    ; preds = %9659
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.f32 %9672, 0
  %9674 = extractvalue %dx.types.CBufRet.f32 %9672, 1
  %9675 = extractvalue %dx.types.CBufRet.f32 %9672, 2
  %9676 = extractvalue %dx.types.CBufRet.f32 %9672, 3
  %9677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9678 = extractvalue %dx.types.CBufRet.f32 %9677, 0
  %9679 = extractvalue %dx.types.CBufRet.f32 %9677, 1
  %9680 = extractvalue %dx.types.CBufRet.f32 %9677, 2
  %9681 = extractvalue %dx.types.CBufRet.f32 %9677, 3
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 0
  %9684 = extractvalue %dx.types.CBufRet.f32 %9682, 1
  %9685 = extractvalue %dx.types.CBufRet.f32 %9682, 2
  %9686 = extractvalue %dx.types.CBufRet.f32 %9682, 3
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 0
  %9689 = extractvalue %dx.types.CBufRet.f32 %9687, 1
  %9690 = extractvalue %dx.types.CBufRet.f32 %9687, 2
  %9691 = extractvalue %dx.types.CBufRet.f32 %9687, 3
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 3
  %9694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9695 = extractvalue %dx.types.CBufRet.f32 %9694, 3
  %9696 = extractvalue %dx.types.CBufRet.f32 %9694, 0
  %9697 = extractvalue %dx.types.CBufRet.f32 %9694, 1
  %9698 = extractvalue %dx.types.CBufRet.f32 %9694, 2
  %9699 = fcmp fast olt float %9698, -5.000000e-01
  %9700 = call float @dx.op.dot3.f32(i32 55, float %9660, float %9661, float %9662, float %9660, float %9661, float %9662)  ; Dot3(ax,ay,az,bx,by,bz)
  %9701 = call float @dx.op.unary.f32(i32 25, float %9700)  ; Rsqrt(value)
  %9702 = fmul fast float %9701, %9700
  %9703 = fmul fast float %9701, %9660
  %9704 = fmul fast float %9701, %9661
  %9705 = fmul fast float %9701, %9662
  %9706 = fadd fast float %9702, %9676
  %9707 = call float @dx.op.dot3.f32(i32 55, float %9703, float %9704, float %9705, float %9673, float %9674, float %9675)  ; Dot3(ax,ay,az,bx,by,bz)
  %9708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9709 = extractvalue %dx.types.CBufRet.i32 %9708, 1
  %9710 = and i32 %9709, 1
  %9711 = icmp ne i32 %9710, 0
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9714 = fcmp fast ogt float %9713, 0.000000e+00
  %9715 = and i1 %9711, %9714
  br i1 %9715, label %9716, label %10122, !dx.controlflow.hints !138

; <label>:9716                                    ; preds = %9671
  %9717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9718 = extractvalue %dx.types.CBufRet.f32 %9717, 3
  %9719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9720 = extractvalue %dx.types.CBufRet.f32 %9719, 2
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 2
  %9723 = fsub fast float %9720, %9722
  %9724 = and i32 %9709, 2
  %9725 = extractvalue %dx.types.CBufRet.i32 %9708, 0
  %9726 = call i32 @dx.op.binary.i32(i32 40, i32 %9725, i32 3)  ; UMin(a,b)
  %9727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9728 = extractvalue %dx.types.CBufRet.f32 %9727, 0
  %9729 = extractvalue %dx.types.CBufRet.f32 %9727, 1
  %9730 = extractvalue %dx.types.CBufRet.f32 %9721, 0
  %9731 = extractvalue %dx.types.CBufRet.f32 %9721, 1
  %9732 = fsub fast float %9728, %9730
  %9733 = fsub fast float %9729, %9731
  %9734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9735 = extractvalue %dx.types.CBufRet.f32 %9734, 0
  %9736 = fcmp fast ogt float %9735, 0.000000e+00
  %9737 = fsub fast float -0.000000e+00, %9732
  %9738 = fsub fast float -0.000000e+00, %9733
  %9739 = call float @dx.op.dot2.f32(i32 54, float %9703, float %9704, float %9703, float %9704)  ; Dot2(ax,ay,bx,by)
  %9740 = call float @dx.op.dot2.f32(i32 54, float %9703, float %9704, float %9737, float %9738)  ; Dot2(ax,ay,bx,by)
  %9741 = fmul fast float %9740, 2.000000e+00
  %9742 = call float @dx.op.dot2.f32(i32 54, float %9737, float %9738, float %9737, float %9738)  ; Dot2(ax,ay,bx,by)
  %9743 = fmul fast float %9735, %9735
  %9744 = fsub fast float %9742, %9743
  %9745 = fmul fast float %9741, %9741
  %9746 = fmul fast float %9739, 4.000000e+00
  %9747 = fmul fast float %9746, %9744
  %9748 = fsub fast float %9745, %9747
  %9749 = fcmp fast ogt float %9748, 0.000000e+00
  br i1 %9749, label %9750, label %9765

; <label>:9750                                    ; preds = %9716
  %9751 = fcmp fast ogt float %9741, 0.000000e+00
  %9752 = call float @dx.op.unary.f32(i32 24, float %9748)  ; Sqrt(value)
  %9753 = fsub fast float -0.000000e+00, %9752
  %9754 = select i1 %9751, float %9752, float %9753
  %9755 = fadd fast float %9754, %9741
  %9756 = fmul float %9755, -5.000000e-01
  %9757 = fdiv fast float %9756, %9739
  %9758 = call float @dx.op.binary.f32(i32 35, float %9757, float 0.000000e+00)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 36, float %9702, float %9758)  ; FMin(a,b)
  %9760 = fdiv fast float %9744, %9756
  %9761 = call float @dx.op.binary.f32(i32 35, float %9760, float 0.000000e+00)  ; FMax(a,b)
  %9762 = call float @dx.op.binary.f32(i32 36, float %9702, float %9761)  ; FMin(a,b)
  %9763 = call float @dx.op.binary.f32(i32 36, float %9759, float %9762)  ; FMin(a,b)
  %9764 = call float @dx.op.binary.f32(i32 35, float %9759, float %9762)  ; FMax(a,b)
  br label %9765

; <label>:9765                                    ; preds = %9750, %9716
  %9766 = phi float [ %9764, %9750 ], [ -1.000000e+00, %9716 ]
  %9767 = phi float [ %9763, %9750 ], [ -1.000000e+00, %9716 ]
  %9768 = phi i1 [ true, %9750 ], [ false, %9716 ]
  %9769 = and i1 %9736, %9768
  br i1 %9769, label %9770, label %9772

; <label>:9770                                    ; preds = %9765
  %9771 = fcmp fast oeq float %9767, %9766
  br i1 %9771, label %10075, label %9773

; <label>:9772                                    ; preds = %9765
  br i1 %9736, label %10075, label %9773

; <label>:9773                                    ; preds = %9772, %9770
  %9774 = phi float [ %9702, %9772 ], [ %9766, %9770 ]
  %9775 = phi float [ 0.000000e+00, %9772 ], [ %9767, %9770 ]
  %9776 = icmp ne i32 %9724, 0
  %9777 = fmul fast float %9774, %9705
  %9778 = fadd fast float %9777, %9718
  %9779 = fmul fast float %9778, %9774
  %9780 = select i1 %9776, float 0.000000e+00, float %9779
  %9781 = fcmp fast oeq float %9705, 0.000000e+00
  %9782 = fdiv fast float %9723, %9705
  %9783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9782)  ; FMax(a,b)
  %9784 = select i1 %9781, float %9774, float %9783
  %9785 = call float @dx.op.binary.f32(i32 36, float %9774, float %9784)  ; FMin(a,b)
  %9786 = fcmp fast ogt float %9705, 0.000000e+00
  %9787 = fcmp fast olt float %9723, 0.000000e+00
  br i1 %9786, label %9788, label %9845

; <label>:9788                                    ; preds = %9773
  %9789 = icmp eq i32 %9724, 0
  br i1 %9787, label %9790, label %9834

; <label>:9790                                    ; preds = %9788
  %9791 = select i1 %9789, float %9774, float 0.000000e+00
  %9792 = fsub fast float -0.000000e+00, %9791
  %9793 = call float @dx.op.unary.f32(i32 6, float %9792)  ; FAbs(value)
  %9794 = fmul fast float %9791, %9705
  %9795 = fadd fast float %9794, %9718
  %9796 = fmul fast float %9793, %9795
  %9797 = fsub fast float %9780, %9796
  %9798 = fsub fast float %9774, %9793
  %9799 = select i1 %9789, float %9798, float 0.000000e+00
  %9800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9801 = extractvalue %dx.types.CBufRet.f32 %9800, 0
  %9802 = extractvalue %dx.types.CBufRet.f32 %9800, 1
  %9803 = extractvalue %dx.types.CBufRet.f32 %9800, 2
  %9804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9805 = extractvalue %dx.types.CBufRet.f32 %9804, 0
  %9806 = extractvalue %dx.types.CBufRet.f32 %9804, 1
  %9807 = extractvalue %dx.types.CBufRet.f32 %9804, 2
  %9808 = extractvalue %dx.types.CBufRet.f32 %9804, 3
  %9809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9810 = extractvalue %dx.types.CBufRet.f32 %9809, 3
  %9811 = call float @dx.op.binary.f32(i32 36, float %9797, float %9810)  ; FMin(a,b)
  %9812 = fmul fast float %9808, %9799
  %9813 = call float @dx.op.unary.f32(i32 7, float %9812)  ; Saturate(value)
  %9814 = fsub fast float %9805, %9801
  %9815 = fsub fast float %9806, %9802
  %9816 = fsub fast float %9807, %9803
  %9817 = fmul fast float %9813, %9814
  %9818 = fmul fast float %9813, %9815
  %9819 = fmul fast float %9813, %9816
  %9820 = fadd fast float %9817, %9801
  %9821 = fadd fast float %9818, %9802
  %9822 = fadd fast float %9819, %9803
  %9823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9824 = extractvalue %dx.types.CBufRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.CBufRet.f32 %9823, 1
  %9826 = fadd fast float %9825, %9824
  %9827 = call float @dx.op.unary.f32(i32 7, float %9826)  ; Saturate(value)
  %9828 = extractvalue %dx.types.CBufRet.f32 %9823, 2
  %9829 = extractvalue %dx.types.CBufRet.f32 %9823, 3
  %9830 = fadd fast float %9829, %9828
  %9831 = call float @dx.op.unary.f32(i32 7, float %9830)  ; Saturate(value)
  %9832 = fmul fast float %9827, %9811
  %9833 = fmul fast float %9832, %9831
  br label %10075

; <label>:9834                                    ; preds = %9788
  br i1 %9789, label %9835, label %9856

; <label>:9835                                    ; preds = %9834
  %9836 = call float @dx.op.binary.f32(i32 36, float %9785, float %9775)  ; FMin(a,b)
  %9837 = fsub fast float %9785, %9836
  %9838 = fsub fast float %9837, %9774
  %9839 = call float @dx.op.unary.f32(i32 6, float %9838)  ; FAbs(value)
  %9840 = fadd fast float %9837, %9774
  %9841 = fmul fast float %9840, %9705
  %9842 = fadd fast float %9841, %9718
  %9843 = fmul fast float %9842, %9839
  %9844 = fsub fast float %9780, %9843
  br label %9856

; <label>:9845                                    ; preds = %9773
  br i1 %9787, label %9846, label %9856

; <label>:9846                                    ; preds = %9845
  %9847 = call float @dx.op.binary.f32(i32 35, float %9775, float %9785)  ; FMax(a,b)
  %9848 = icmp eq i32 %9724, 0
  %9849 = select i1 %9848, float %9785, float 0.000000e+00
  %9850 = fsub fast float -0.000000e+00, %9849
  %9851 = call float @dx.op.unary.f32(i32 6, float %9850)  ; FAbs(value)
  %9852 = fmul fast float %9849, %9705
  %9853 = fadd fast float %9852, %9718
  %9854 = fmul fast float %9851, %9853
  %9855 = fsub fast float %9780, %9854
  br label %9856

; <label>:9856                                    ; preds = %9846, %9845, %9835, %9834
  %9857 = phi float [ %9775, %9834 ], [ %9775, %9835 ], [ %9847, %9846 ], [ %9775, %9845 ]
  %9858 = phi float [ 0.000000e+00, %9834 ], [ %9839, %9835 ], [ %9851, %9846 ], [ 0.000000e+00, %9845 ]
  %9859 = phi float [ %9780, %9834 ], [ %9844, %9835 ], [ %9855, %9846 ], [ %9780, %9845 ]
  %9860 = phi float [ %9785, %9834 ], [ %9785, %9835 ], [ %9774, %9846 ], [ %9774, %9845 ]
  %9861 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9861, align 4, !tbaa !125, !noalias !139
  %9862 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9862, align 4, !tbaa !125, !noalias !139
  %9863 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9863, align 4, !tbaa !125, !noalias !139
  %9864 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9864, align 4, !tbaa !125, !noalias !139
  %9865 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9865, align 4, !tbaa !125, !noalias !139
  %9866 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9866, align 4, !tbaa !125, !noalias !139
  %9867 = icmp sgt i32 %9726, 0
  br i1 %9867, label %9868, label %9929

; <label>:9868                                    ; preds = %9856
  br label %9869

; <label>:9869                                    ; preds = %9918, %9868
  %9870 = phi i32 [ %9919, %9918 ], [ 0, %9868 ]
  %9871 = phi i32 [ %9920, %9918 ], [ 0, %9868 ]
  %9872 = add nuw i32 %9871, 171
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9872)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 0
  %9875 = extractvalue %dx.types.CBufRet.f32 %9873, 1
  %9876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.f32 %9876, 0
  %9878 = extractvalue %dx.types.CBufRet.f32 %9876, 1
  %9879 = fsub fast float %9874, %9877
  %9880 = fsub fast float %9875, %9878
  %9881 = extractvalue %dx.types.CBufRet.f32 %9873, 2
  %9882 = fsub fast float -0.000000e+00, %9879
  %9883 = fsub fast float -0.000000e+00, %9880
  %9884 = call float @dx.op.dot2.f32(i32 54, float %9703, float %9704, float %9882, float %9883)  ; Dot2(ax,ay,bx,by)
  %9885 = fmul fast float %9884, 2.000000e+00
  %9886 = call float @dx.op.dot2.f32(i32 54, float %9882, float %9883, float %9882, float %9883)  ; Dot2(ax,ay,bx,by)
  %9887 = fmul fast float %9881, %9881
  %9888 = fsub fast float %9886, %9887
  %9889 = fmul fast float %9885, %9885
  %9890 = fmul fast float %9746, %9888
  %9891 = fsub fast float %9889, %9890
  %9892 = fcmp fast ogt float %9891, 0.000000e+00
  br i1 %9892, label %9893, label %9908

; <label>:9893                                    ; preds = %9869
  %9894 = fcmp fast ogt float %9885, 0.000000e+00
  %9895 = call float @dx.op.unary.f32(i32 24, float %9891)  ; Sqrt(value)
  %9896 = fsub fast float -0.000000e+00, %9895
  %9897 = select i1 %9894, float %9895, float %9896
  %9898 = fadd fast float %9897, %9885
  %9899 = fmul float %9898, -5.000000e-01
  %9900 = fdiv fast float %9899, %9739
  %9901 = call float @dx.op.binary.f32(i32 35, float %9900, float 0.000000e+00)  ; FMax(a,b)
  %9902 = call float @dx.op.binary.f32(i32 36, float %9774, float %9901)  ; FMin(a,b)
  %9903 = fdiv fast float %9888, %9899
  %9904 = call float @dx.op.binary.f32(i32 35, float %9903, float 0.000000e+00)  ; FMax(a,b)
  %9905 = call float @dx.op.binary.f32(i32 36, float %9774, float %9904)  ; FMin(a,b)
  %9906 = call float @dx.op.binary.f32(i32 36, float %9902, float %9905)  ; FMin(a,b)
  %9907 = call float @dx.op.binary.f32(i32 35, float %9902, float %9905)  ; FMax(a,b)
  br label %9908

; <label>:9908                                    ; preds = %9893, %9869
  %9909 = phi float [ %9907, %9893 ], [ -1.000000e+00, %9869 ]
  %9910 = phi float [ %9906, %9893 ], [ -1.000000e+00, %9869 ]
  %9911 = phi i1 [ true, %9893 ], [ false, %9869 ]
  br i1 %9911, label %9912, label %9918

; <label>:9912                                    ; preds = %9908
  %9913 = call float @dx.op.binary.f32(i32 35, float %9857, float %9910)  ; FMax(a,b)
  %9914 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9871
  store float %9913, float* %9914, align 4, !tbaa !125, !noalias !139
  %9915 = call float @dx.op.binary.f32(i32 35, float %9857, float %9909)  ; FMax(a,b)
  %9916 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9871
  store float %9915, float* %9916, align 4, !tbaa !125, !noalias !139
  %9917 = add nsw i32 %9870, 1
  br label %9918

; <label>:9918                                    ; preds = %9912, %9908
  %9919 = phi i32 [ %9917, %9912 ], [ %9870, %9908 ]
  %9920 = add nuw nsw i32 %9871, 1
  %9921 = icmp eq i32 %9920, %9726
  br i1 %9921, label %9922, label %9869

; <label>:9922                                    ; preds = %9918
  %9923 = load float, float* %9863, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %9924 = load float, float* %9862, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  %9925 = load float, float* %9861, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  %9926 = load float, float* %9866, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %9927 = load float, float* %9865, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  %9928 = load float, float* %9864, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  br label %9929

; <label>:9929                                    ; preds = %9922, %9856
  %9930 = phi float [ -1.000000e+00, %9856 ], [ %9928, %9922 ]
  %9931 = phi float [ -1.000000e+00, %9856 ], [ %9927, %9922 ]
  %9932 = phi float [ -1.000000e+00, %9856 ], [ %9926, %9922 ]
  %9933 = phi float [ -1.000000e+00, %9856 ], [ %9925, %9922 ]
  %9934 = phi float [ -1.000000e+00, %9856 ], [ %9924, %9922 ]
  %9935 = phi float [ -1.000000e+00, %9856 ], [ %9923, %9922 ]
  %9936 = phi i32 [ 0, %9856 ], [ %9919, %9922 ]
  %9937 = call float @dx.op.binary.f32(i32 36, float %9934, float %9935)  ; FMin(a,b)
  %9938 = call float @dx.op.binary.f32(i32 36, float %9933, float %9937)  ; FMin(a,b)
  %9939 = call float @dx.op.binary.f32(i32 35, float %9933, float %9934)  ; FMax(a,b)
  %9940 = call float @dx.op.binary.f32(i32 36, float %9939, float %9935)  ; FMin(a,b)
  %9941 = call float @dx.op.binary.f32(i32 36, float %9933, float %9934)  ; FMin(a,b)
  %9942 = call float @dx.op.binary.f32(i32 35, float %9941, float %9940)  ; FMax(a,b)
  %9943 = call float @dx.op.binary.f32(i32 35, float %9934, float %9935)  ; FMax(a,b)
  %9944 = call float @dx.op.binary.f32(i32 35, float %9933, float %9943)  ; FMax(a,b)
  store float %9938, float* %9861, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  store float %9942, float* %9862, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %9944, float* %9863, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %9945 = call float @dx.op.binary.f32(i32 36, float %9931, float %9932)  ; FMin(a,b)
  %9946 = call float @dx.op.binary.f32(i32 36, float %9930, float %9945)  ; FMin(a,b)
  %9947 = call float @dx.op.binary.f32(i32 35, float %9930, float %9931)  ; FMax(a,b)
  %9948 = call float @dx.op.binary.f32(i32 36, float %9947, float %9932)  ; FMin(a,b)
  %9949 = call float @dx.op.binary.f32(i32 36, float %9930, float %9931)  ; FMin(a,b)
  %9950 = call float @dx.op.binary.f32(i32 35, float %9949, float %9948)  ; FMax(a,b)
  %9951 = call float @dx.op.binary.f32(i32 35, float %9931, float %9932)  ; FMax(a,b)
  %9952 = call float @dx.op.binary.f32(i32 35, float %9930, float %9951)  ; FMax(a,b)
  store float %9946, float* %9864, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  store float %9950, float* %9865, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  store float %9952, float* %9866, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %9953 = sub nsw i32 3, %9936
  %9954 = icmp sgt i32 %9953, 2
  br i1 %9954, label %9955, label %9993

; <label>:9955                                    ; preds = %9929
  %9956 = icmp eq i32 %9724, 0
  %9957 = fsub fast float %9774, %9858
  %9958 = select i1 %9956, float %9957, float %9858
  %9959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9960 = extractvalue %dx.types.CBufRet.f32 %9959, 0
  %9961 = extractvalue %dx.types.CBufRet.f32 %9959, 1
  %9962 = extractvalue %dx.types.CBufRet.f32 %9959, 2
  %9963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9964 = extractvalue %dx.types.CBufRet.f32 %9963, 0
  %9965 = extractvalue %dx.types.CBufRet.f32 %9963, 1
  %9966 = extractvalue %dx.types.CBufRet.f32 %9963, 2
  %9967 = extractvalue %dx.types.CBufRet.f32 %9963, 3
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 3
  %9970 = call float @dx.op.binary.f32(i32 36, float %9859, float %9969)  ; FMin(a,b)
  %9971 = fmul fast float %9967, %9958
  %9972 = call float @dx.op.unary.f32(i32 7, float %9971)  ; Saturate(value)
  %9973 = fsub fast float %9964, %9960
  %9974 = fsub fast float %9965, %9961
  %9975 = fsub fast float %9966, %9962
  %9976 = fmul fast float %9972, %9973
  %9977 = fmul fast float %9972, %9974
  %9978 = fmul fast float %9972, %9975
  %9979 = fadd fast float %9976, %9960
  %9980 = fadd fast float %9977, %9961
  %9981 = fadd fast float %9978, %9962
  %9982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9983 = extractvalue %dx.types.CBufRet.f32 %9982, 0
  %9984 = extractvalue %dx.types.CBufRet.f32 %9982, 1
  %9985 = fadd fast float %9984, %9983
  %9986 = call float @dx.op.unary.f32(i32 7, float %9985)  ; Saturate(value)
  %9987 = extractvalue %dx.types.CBufRet.f32 %9982, 2
  %9988 = extractvalue %dx.types.CBufRet.f32 %9982, 3
  %9989 = fadd fast float %9988, %9987
  %9990 = call float @dx.op.unary.f32(i32 7, float %9989)  ; Saturate(value)
  %9991 = fmul fast float %9986, %9970
  %9992 = fmul fast float %9991, %9990
  br label %10075

; <label>:9993                                    ; preds = %9929
  %9994 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9953
  %9995 = load float, float* %9994, align 4, !tbaa !125, !noalias !139
  %9996 = fcmp fast olt float %9995, %9860
  %9997 = icmp sgt i32 %9936, 0
  %9998 = and i1 %9997, %9996
  br i1 %9998, label %9999, label %10036

; <label>:9999                                    ; preds = %9993
  br label %10000

; <label>:10000                                   ; preds = %10029, %9999
  %10001 = phi float [ %10030, %10029 ], [ %9858, %9999 ]
  %10002 = phi float [ %10031, %10029 ], [ %9859, %9999 ]
  %10003 = phi float [ %10011, %10029 ], [ %9995, %9999 ]
  %10004 = phi i32 [ %10008, %10029 ], [ %9953, %9999 ]
  %10005 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %10004
  %10006 = load float, float* %10005, align 4, !tbaa !125, !noalias !139
  %10007 = icmp slt i32 %10004, 2
  %10008 = add nsw i32 %10004, 1
  %10009 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %10008
  %10010 = load float, float* %10009, align 4, !tbaa !125, !noalias !139
  %10011 = select i1 %10007, float %10010, float %9774
  %10012 = call float @dx.op.binary.f32(i32 36, float %10011, float %10006)  ; FMin(a,b)
  %10013 = call float @dx.op.binary.f32(i32 36, float %9860, float %10012)  ; FMin(a,b)
  %10014 = icmp eq i32 %9724, 0
  %10015 = fadd fast float %10013, %10003
  %10016 = fmul fast float %10015, %9705
  %10017 = fadd fast float %10016, %9718
  br i1 %10014, label %10023, label %10018

; <label>:10018                                   ; preds = %10000
  %10019 = fsub fast float %10013, %10003
  %10020 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10019)  ; FMax(a,b)
  %10021 = fmul fast float %10020, %10017
  %10022 = fadd fast float %10021, %10002
  br label %10029

; <label>:10023                                   ; preds = %10000
  %10024 = fsub fast float %10003, %10013
  %10025 = call float @dx.op.unary.f32(i32 6, float %10024)  ; FAbs(value)
  %10026 = fadd fast float %10025, %10001
  %10027 = fmul fast float %10025, %10017
  %10028 = fsub fast float %10002, %10027
  br label %10029

; <label>:10029                                   ; preds = %10023, %10018
  %10030 = phi float [ %10020, %10018 ], [ %10026, %10023 ]
  %10031 = phi float [ %10022, %10018 ], [ %10028, %10023 ]
  %10032 = fcmp fast olt float %10011, %9860
  %10033 = icmp slt i32 %10008, 3
  %10034 = and i1 %10033, %10032
  br i1 %10034, label %10000, label %10035

; <label>:10035                                   ; preds = %10029
  br label %10036

; <label>:10036                                   ; preds = %10035, %9993
  %10037 = phi float [ %9858, %9993 ], [ %10030, %10035 ]
  %10038 = phi float [ %9859, %9993 ], [ %10031, %10035 ]
  %10039 = fsub fast float %9774, %10037
  %10040 = select i1 %9776, float %10037, float %10039
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 0
  %10043 = extractvalue %dx.types.CBufRet.f32 %10041, 1
  %10044 = extractvalue %dx.types.CBufRet.f32 %10041, 2
  %10045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10046 = extractvalue %dx.types.CBufRet.f32 %10045, 0
  %10047 = extractvalue %dx.types.CBufRet.f32 %10045, 1
  %10048 = extractvalue %dx.types.CBufRet.f32 %10045, 2
  %10049 = extractvalue %dx.types.CBufRet.f32 %10045, 3
  %10050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10051 = extractvalue %dx.types.CBufRet.f32 %10050, 3
  %10052 = call float @dx.op.binary.f32(i32 36, float %10038, float %10051)  ; FMin(a,b)
  %10053 = fmul fast float %10049, %10040
  %10054 = call float @dx.op.unary.f32(i32 7, float %10053)  ; Saturate(value)
  %10055 = fsub fast float %10046, %10042
  %10056 = fsub fast float %10047, %10043
  %10057 = fsub fast float %10048, %10044
  %10058 = fmul fast float %10054, %10055
  %10059 = fmul fast float %10054, %10056
  %10060 = fmul fast float %10054, %10057
  %10061 = fadd fast float %10058, %10042
  %10062 = fadd fast float %10059, %10043
  %10063 = fadd fast float %10060, %10044
  %10064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10065 = extractvalue %dx.types.CBufRet.f32 %10064, 0
  %10066 = extractvalue %dx.types.CBufRet.f32 %10064, 1
  %10067 = fadd fast float %10066, %10065
  %10068 = call float @dx.op.unary.f32(i32 7, float %10067)  ; Saturate(value)
  %10069 = extractvalue %dx.types.CBufRet.f32 %10064, 2
  %10070 = extractvalue %dx.types.CBufRet.f32 %10064, 3
  %10071 = fadd fast float %10070, %10069
  %10072 = call float @dx.op.unary.f32(i32 7, float %10071)  ; Saturate(value)
  %10073 = fmul fast float %10068, %10052
  %10074 = fmul fast float %10073, %10072
  br label %10075

; <label>:10075                                   ; preds = %10036, %9955, %9790, %9772, %9770
  %10076 = phi float [ %9799, %9790 ], [ %9958, %9955 ], [ %10040, %10036 ], [ 0.000000e+00, %9770 ], [ 0.000000e+00, %9772 ]
  %10077 = phi float [ %9833, %9790 ], [ %9992, %9955 ], [ %10074, %10036 ], [ 0.000000e+00, %9770 ], [ 0.000000e+00, %9772 ]
  %10078 = phi float [ %9820, %9790 ], [ %9979, %9955 ], [ %10061, %10036 ], [ 0.000000e+00, %9770 ], [ 0.000000e+00, %9772 ]
  %10079 = phi float [ %9821, %9790 ], [ %9980, %9955 ], [ %10062, %10036 ], [ 0.000000e+00, %9770 ], [ 0.000000e+00, %9772 ]
  %10080 = phi float [ %9822, %9790 ], [ %9981, %9955 ], [ %10063, %10036 ], [ 0.000000e+00, %9770 ], [ 0.000000e+00, %9772 ]
  %10081 = fmul fast float %9713, %10077
  %10082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10083 = extractvalue %dx.types.CBufRet.f32 %10082, 2
  %10084 = fsub fast float %9720, %10083
  %10085 = fcmp fast olt float %10081, -2.000000e+01
  %10086 = call float @dx.op.unary.f32(i32 21, float %10081)  ; Exp(value)
  %10087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10088 = extractvalue %dx.types.CBufRet.f32 %10087, 2
  %10089 = extractvalue %dx.types.CBufRet.f32 %10087, 3
  %10090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10091 = extractvalue %dx.types.CBufRet.f32 %10090, 2
  %10092 = fmul fast float %10089, %10084
  %10093 = call float @dx.op.unary.f32(i32 7, float %10092)  ; Saturate(value)
  %10094 = fsub fast float 1.000000e+00, %10093
  %10095 = fmul fast float %9705, 5.000000e-01
  %10096 = fadd fast float %10095, 5.000000e-01
  %10097 = call float @dx.op.unary.f32(i32 7, float %10096)  ; Saturate(value)
  %10098 = fsub fast float 1.000000e+00, %10097
  %10099 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10094)  ; FMax(a,b)
  %10100 = fdiv fast float %10098, %10099
  %10101 = fsub fast float %10084, %9662
  %10102 = call float @dx.op.unary.f32(i32 6, float %10101)  ; FAbs(value)
  %10103 = fmul fast float %10102, %10088
  %10104 = call float @dx.op.unary.f32(i32 7, float %10100)  ; Saturate(value)
  %10105 = fsub fast float 1.000000e+00, %10103
  %10106 = fmul fast float %10105, %10104
  %10107 = fadd fast float %10106, %10103
  %10108 = fmul fast float %10091, %10084
  %10109 = call float @dx.op.unary.f32(i32 7, float %10108)  ; Saturate(value)
  %10110 = fsub fast float 1.000000e+00, %10107
  %10111 = fmul fast float %10110, %10109
  %10112 = fadd fast float %10111, %10107
  %10113 = call float @dx.op.unary.f32(i32 7, float %10112)  ; Saturate(value)
  %10114 = fadd fast float %10086, -1.000000e+00
  %10115 = select i1 %10085, float -1.000000e+00, float %10114
  %10116 = fmul fast float %10113, %10115
  %10117 = fadd fast float %10116, 1.000000e+00
  %10118 = fsub fast float -0.000000e+00, %10116
  %10119 = fmul fast float %10078, %10118
  %10120 = fmul fast float %10079, %10118
  %10121 = fmul fast float %10080, %10118
  br label %10122

; <label>:10122                                   ; preds = %10075, %9671
  %10123 = phi float [ %10076, %10075 ], [ 0.000000e+00, %9671 ]
  %10124 = phi float [ %10117, %10075 ], [ 1.000000e+00, %9671 ]
  %10125 = phi float [ %10119, %10075 ], [ 0.000000e+00, %9671 ]
  %10126 = phi float [ %10120, %10075 ], [ 0.000000e+00, %9671 ]
  %10127 = phi float [ %10121, %10075 ], [ 0.000000e+00, %9671 ]
  %10128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10129 = extractvalue %dx.types.CBufRet.f32 %10128, 1
  %10130 = fsub fast float 1.000000e+00, %10124
  %10131 = fmul fast float %10130, %9706
  %10132 = fmul fast float %10131, %10129
  %10133 = fsub fast float %9706, %10132
  br i1 %9699, label %10134, label %10163, !dx.controlflow.hints !175

; <label>:10134                                   ; preds = %10122
  %10135 = fmul fast float %9707, %9696
  %10136 = fadd fast float %10135, %9697
  %10137 = call float @dx.op.unary.f32(i32 7, float %10136)  ; Saturate(value)
  %10138 = fmul fast float %9678, %10133
  %10139 = fsub fast float -0.000000e+00, %10138
  %10140 = fmul fast float %9679, %10133
  %10141 = fsub fast float -0.000000e+00, %10140
  %10142 = call float @dx.op.unary.f32(i32 21, float %10139)  ; Exp(value)
  %10143 = call float @dx.op.unary.f32(i32 21, float %10141)  ; Exp(value)
  %10144 = call float @dx.op.binary.f32(i32 35, float %9686, float %10142)  ; FMax(a,b)
  %10145 = call float @dx.op.binary.f32(i32 35, float %9686, float %10143)  ; FMax(a,b)
  %10146 = fsub fast float %10145, %10144
  %10147 = fmul fast float %10146, %10137
  %10148 = fadd fast float %10147, %10144
  %10149 = call float @dx.op.unary.f32(i32 7, float %10148)  ; Saturate(value)
  %10150 = fsub fast float %9683, %9688
  %10151 = fsub fast float %9684, %9689
  %10152 = fsub fast float %9685, %9690
  %10153 = fmul fast float %10137, %10150
  %10154 = fmul fast float %10137, %10151
  %10155 = fmul fast float %10137, %10152
  %10156 = fadd fast float %10153, %9688
  %10157 = fadd fast float %10154, %9689
  %10158 = fadd fast float %10155, %9690
  %10159 = fsub fast float 1.000000e+00, %10149
  %10160 = fmul fast float %10159, %10156
  %10161 = fmul fast float %10159, %10157
  %10162 = fmul fast float %10159, %10158
  br label %10222

; <label>:10163                                   ; preds = %10122
  %10164 = fmul fast float %10133, %9695
  %10165 = call float @dx.op.unary.f32(i32 7, float %10164)  ; Saturate(value)
  %10166 = fsub fast float 2.000000e+00, %10165
  %10167 = fmul fast float %10165, 9.921875e-01
  %10168 = fmul fast float %10167, %10166
  %10169 = fadd fast float %10168, 3.906250e-03
  %10170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %10169, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10171 = extractvalue %dx.types.ResRet.f32 %10170, 0
  %10172 = fsub fast float %10165, %10171
  %10173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10172)  ; FMax(a,b)
  %10174 = fmul fast float %9681, %9662
  %10175 = call float @dx.op.unary.f32(i32 6, float %10174)  ; FAbs(value)
  %10176 = fcmp fast ogt float %10175, 0x3EB0C6F7A0000000
  br i1 %10176, label %10177, label %10183, !dx.controlflow.hints !176

; <label>:10177                                   ; preds = %10163
  %10178 = fmul fast float %10174, 0xBFF7154760000000
  %10179 = call float @dx.op.unary.f32(i32 21, float %10178)  ; Exp(value)
  %10180 = fsub fast float 1.000000e+00, %10179
  %10181 = fdiv fast float %10180, %10174
  %10182 = fmul fast float %10181, %9691
  br label %10183

; <label>:10183                                   ; preds = %10177, %10163
  %10184 = phi float [ %10182, %10177 ], [ %9691, %10163 ]
  %10185 = fadd fast float %10184, %9693
  %10186 = fmul fast float %10185, %10173
  %10187 = fmul fast float %9678, %10186
  %10188 = fsub fast float -0.000000e+00, %10187
  %10189 = fmul fast float %9679, %10186
  %10190 = fsub fast float -0.000000e+00, %10189
  %10191 = fmul fast float %9680, %10186
  %10192 = fsub fast float -0.000000e+00, %10191
  %10193 = call float @dx.op.unary.f32(i32 21, float %10188)  ; Exp(value)
  %10194 = call float @dx.op.unary.f32(i32 21, float %10190)  ; Exp(value)
  %10195 = call float @dx.op.unary.f32(i32 21, float %10192)  ; Exp(value)
  %10196 = fmul fast float %9707, %9707
  %10197 = fadd fast float %10196, 1.000000e+00
  %10198 = fmul fast float %10197, 0x3FAE8EC8A0000000
  %10199 = fmul fast float %10198, %9688
  %10200 = fmul fast float %10198, %9689
  %10201 = fmul fast float %10198, %9690
  %10202 = fmul fast float %9707, %9686
  %10203 = fsub fast float 1.000000e+00, %10202
  %10204 = fmul fast float %9686, %9686
  %10205 = fsub fast float 1.000000e+00, %10204
  %10206 = fmul fast float %10205, 0x3FB45F3060000000
  %10207 = fmul fast float %10203, %10203
  %10208 = fdiv fast float 1.000000e+00, %10207
  %10209 = fmul fast float %10206, %10208
  %10210 = fmul fast float %10209, %9683
  %10211 = fmul fast float %10209, %9684
  %10212 = fmul fast float %10209, %9685
  %10213 = fadd fast float %10210, %10199
  %10214 = fadd fast float %10211, %10200
  %10215 = fadd fast float %10212, %10201
  %10216 = fsub fast float 1.000000e+00, %10193
  %10217 = fsub fast float 1.000000e+00, %10194
  %10218 = fsub fast float 1.000000e+00, %10195
  %10219 = fmul fast float %10213, %10216
  %10220 = fmul fast float %10214, %10217
  %10221 = fmul fast float %10215, %10218
  br label %10222

; <label>:10222                                   ; preds = %10183, %10134
  %10223 = phi float [ %10160, %10134 ], [ %10219, %10183 ]
  %10224 = phi float [ %10161, %10134 ], [ %10220, %10183 ]
  %10225 = phi float [ %10162, %10134 ], [ %10221, %10183 ]
  %10226 = phi float [ %10149, %10134 ], [ %10193, %10183 ]
  %10227 = phi float [ %10149, %10134 ], [ %10194, %10183 ]
  %10228 = phi float [ %10149, %10134 ], [ %10195, %10183 ]
  br i1 %9715, label %10229, label %10427, !dx.controlflow.hints !177

; <label>:10229                                   ; preds = %10222
  %10230 = extractvalue %dx.types.CBufRet.f32 %10128, 0
  %10231 = fmul fast float %10230, %10130
  %10232 = fsub fast float %10125, %10223
  %10233 = fsub fast float %10126, %10224
  %10234 = fsub fast float %10127, %10225
  %10235 = fmul fast float %10231, %10232
  %10236 = fmul fast float %10231, %10233
  %10237 = fmul fast float %10231, %10234
  %10238 = fadd fast float %10235, %10223
  %10239 = fadd fast float %10236, %10224
  %10240 = fadd fast float %10237, %10225
  %10241 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10226)  ; FMax(a,b)
  %10242 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10227)  ; FMax(a,b)
  %10243 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10228)  ; FMax(a,b)
  %10244 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10124)  ; FMax(a,b)
  %10245 = call float @dx.op.binary.f32(i32 35, float %10123, float %10133)  ; FMax(a,b)
  %10246 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10245)  ; FMax(a,b)
  %10247 = fdiv fast float %10123, %10246
  %10248 = call float @dx.op.unary.f32(i32 7, float %10247)  ; Saturate(value)
  %10249 = fdiv fast float %10133, %10246
  %10250 = call float @dx.op.unary.f32(i32 7, float %10249)  ; Saturate(value)
  %10251 = fcmp fast une float %10244, 1.000000e+00
  br i1 %10251, label %10252, label %10265, !dx.controlflow.hints !178

; <label>:10252                                   ; preds = %10229
  %10253 = call float @dx.op.unary.f32(i32 23, float %10244)  ; Log(value)
  %10254 = fmul fast float %10253, 0x3FE62E4300000000
  %10255 = fmul fast float %10125, %10254
  %10256 = fsub fast float -0.000000e+00, %10255
  %10257 = fmul fast float %10126, %10254
  %10258 = fsub fast float -0.000000e+00, %10257
  %10259 = fmul fast float %10127, %10254
  %10260 = fsub fast float -0.000000e+00, %10259
  %10261 = fsub fast float 1.000000e+00, %10244
  %10262 = fdiv fast float %10256, %10261
  %10263 = fdiv fast float %10258, %10261
  %10264 = fdiv fast float %10260, %10261
  br label %10265

; <label>:10265                                   ; preds = %10252, %10229
  %10266 = phi float [ %10262, %10252 ], [ %10125, %10229 ]
  %10267 = phi float [ %10263, %10252 ], [ %10126, %10229 ]
  %10268 = phi float [ %10264, %10252 ], [ %10127, %10229 ]
  %10269 = phi float [ %10254, %10252 ], [ 0.000000e+00, %10229 ]
  %10270 = fcmp fast une float %10241, 1.000000e+00
  br i1 %10270, label %10271, label %10278, !dx.controlflow.hints !179

; <label>:10271                                   ; preds = %10265
  %10272 = call float @dx.op.unary.f32(i32 23, float %10241)  ; Log(value)
  %10273 = fmul fast float %10272, 0x3FE62E4300000000
  %10274 = fmul fast float %10238, %10273
  %10275 = fsub fast float -0.000000e+00, %10274
  %10276 = fsub fast float 1.000000e+00, %10241
  %10277 = fdiv fast float %10275, %10276
  br label %10278

; <label>:10278                                   ; preds = %10271, %10265
  %10279 = phi float [ %10277, %10271 ], [ %10238, %10265 ]
  %10280 = phi float [ %10273, %10271 ], [ 0.000000e+00, %10265 ]
  %10281 = fcmp fast une float %10242, 1.000000e+00
  br i1 %10281, label %10282, label %10289, !dx.controlflow.hints !179

; <label>:10282                                   ; preds = %10278
  %10283 = call float @dx.op.unary.f32(i32 23, float %10242)  ; Log(value)
  %10284 = fmul fast float %10283, 0x3FE62E4300000000
  %10285 = fmul fast float %10239, %10284
  %10286 = fsub fast float -0.000000e+00, %10285
  %10287 = fsub fast float 1.000000e+00, %10242
  %10288 = fdiv fast float %10286, %10287
  br label %10289

; <label>:10289                                   ; preds = %10282, %10278
  %10290 = phi float [ %10288, %10282 ], [ %10239, %10278 ]
  %10291 = phi float [ %10284, %10282 ], [ 0.000000e+00, %10278 ]
  %10292 = fcmp fast une float %10243, 1.000000e+00
  br i1 %10292, label %10293, label %10300, !dx.controlflow.hints !179

; <label>:10293                                   ; preds = %10289
  %10294 = call float @dx.op.unary.f32(i32 23, float %10243)  ; Log(value)
  %10295 = fmul fast float %10294, 0x3FE62E4300000000
  %10296 = fmul fast float %10240, %10295
  %10297 = fsub fast float -0.000000e+00, %10296
  %10298 = fsub fast float 1.000000e+00, %10243
  %10299 = fdiv fast float %10297, %10298
  br label %10300

; <label>:10300                                   ; preds = %10293, %10289
  %10301 = phi float [ %10299, %10293 ], [ %10240, %10289 ]
  %10302 = phi float [ %10295, %10293 ], [ 0.000000e+00, %10289 ]
  %10303 = fmul fast float %10266, %10250
  %10304 = fmul fast float %10267, %10250
  %10305 = fmul fast float %10268, %10250
  %10306 = fmul fast float %10269, %10250
  %10307 = fmul fast float %10279, %10248
  %10308 = fmul fast float %10290, %10248
  %10309 = fmul fast float %10301, %10248
  %10310 = fmul fast float %10280, %10248
  %10311 = fmul fast float %10291, %10248
  %10312 = fmul fast float %10302, %10248
  %10313 = fadd fast float %10307, %10303
  %10314 = fadd fast float %10308, %10304
  %10315 = fadd fast float %10309, %10305
  %10316 = fadd fast float %10310, %10306
  %10317 = fadd fast float %10311, %10306
  %10318 = fadd fast float %10312, %10306
  %10319 = fcmp fast une float %10316, 0.000000e+00
  br i1 %10319, label %10320, label %10327, !dx.controlflow.hints !180

; <label>:10320                                   ; preds = %10300
  %10321 = fmul fast float %10316, 0x3FF7154760000000
  %10322 = call float @dx.op.unary.f32(i32 21, float %10321)  ; Exp(value)
  %10323 = fsub fast float 1.000000e+00, %10322
  %10324 = fmul fast float %10313, %10323
  %10325 = fsub fast float -0.000000e+00, %10324
  %10326 = fdiv fast float %10325, %10316
  br label %10327

; <label>:10327                                   ; preds = %10320, %10300
  %10328 = phi float [ %10322, %10320 ], [ 1.000000e+00, %10300 ]
  %10329 = phi float [ %10326, %10320 ], [ %10313, %10300 ]
  %10330 = fcmp fast une float %10317, 0.000000e+00
  br i1 %10330, label %10331, label %10338, !dx.controlflow.hints !180

; <label>:10331                                   ; preds = %10327
  %10332 = fmul fast float %10317, 0x3FF7154760000000
  %10333 = call float @dx.op.unary.f32(i32 21, float %10332)  ; Exp(value)
  %10334 = fsub fast float 1.000000e+00, %10333
  %10335 = fmul fast float %10314, %10334
  %10336 = fsub fast float -0.000000e+00, %10335
  %10337 = fdiv fast float %10336, %10317
  br label %10338

; <label>:10338                                   ; preds = %10331, %10327
  %10339 = phi float [ %10333, %10331 ], [ 1.000000e+00, %10327 ]
  %10340 = phi float [ %10337, %10331 ], [ %10314, %10327 ]
  %10341 = fcmp fast une float %10318, 0.000000e+00
  br i1 %10341, label %10342, label %10349, !dx.controlflow.hints !180

; <label>:10342                                   ; preds = %10338
  %10343 = fmul fast float %10318, 0x3FF7154760000000
  %10344 = call float @dx.op.unary.f32(i32 21, float %10343)  ; Exp(value)
  %10345 = fsub fast float 1.000000e+00, %10344
  %10346 = fmul fast float %10315, %10345
  %10347 = fsub fast float -0.000000e+00, %10346
  %10348 = fdiv fast float %10347, %10318
  br label %10349

; <label>:10349                                   ; preds = %10342, %10338
  %10350 = phi float [ %10344, %10342 ], [ 1.000000e+00, %10338 ]
  %10351 = phi float [ %10348, %10342 ], [ %10315, %10338 ]
  %10352 = fcmp fast ogt float %10248, %10250
  br i1 %10352, label %10353, label %10373

; <label>:10353                                   ; preds = %10349
  %10354 = fsub fast float 1.000000e+00, %10250
  %10355 = fmul fast float %10266, %10354
  %10356 = fmul fast float %10267, %10354
  %10357 = fmul fast float %10268, %10354
  %10358 = fmul fast float %10269, %10354
  %10359 = fcmp fast une float %10358, 0.000000e+00
  br i1 %10359, label %10360, label %10411, !dx.controlflow.hints !181

; <label>:10360                                   ; preds = %10353
  %10361 = fmul fast float %10358, 0x3FF7154760000000
  %10362 = call float @dx.op.unary.f32(i32 21, float %10361)  ; Exp(value)
  %10363 = fsub fast float 1.000000e+00, %10362
  %10364 = fmul fast float %10355, %10363
  %10365 = fsub fast float -0.000000e+00, %10364
  %10366 = fmul fast float %10356, %10363
  %10367 = fsub fast float -0.000000e+00, %10366
  %10368 = fmul fast float %10357, %10363
  %10369 = fsub fast float -0.000000e+00, %10368
  %10370 = fdiv fast float %10365, %10358
  %10371 = fdiv fast float %10367, %10358
  %10372 = fdiv fast float %10369, %10358
  br label %10411

; <label>:10373                                   ; preds = %10349
  %10374 = fsub fast float 1.000000e+00, %10248
  %10375 = fmul fast float %10279, %10374
  %10376 = fmul fast float %10290, %10374
  %10377 = fmul fast float %10301, %10374
  %10378 = fmul fast float %10280, %10374
  %10379 = fmul fast float %10291, %10374
  %10380 = fmul fast float %10302, %10374
  %10381 = fcmp fast une float %10378, 0.000000e+00
  br i1 %10381, label %10382, label %10389, !dx.controlflow.hints !180

; <label>:10382                                   ; preds = %10373
  %10383 = fmul fast float %10378, 0x3FF7154760000000
  %10384 = call float @dx.op.unary.f32(i32 21, float %10383)  ; Exp(value)
  %10385 = fsub fast float 1.000000e+00, %10384
  %10386 = fmul fast float %10375, %10385
  %10387 = fsub fast float -0.000000e+00, %10386
  %10388 = fdiv fast float %10387, %10378
  br label %10389

; <label>:10389                                   ; preds = %10382, %10373
  %10390 = phi float [ %10388, %10382 ], [ %10375, %10373 ]
  %10391 = phi float [ %10384, %10382 ], [ 1.000000e+00, %10373 ]
  %10392 = fcmp fast une float %10379, 0.000000e+00
  br i1 %10392, label %10393, label %10400, !dx.controlflow.hints !180

; <label>:10393                                   ; preds = %10389
  %10394 = fmul fast float %10379, 0x3FF7154760000000
  %10395 = call float @dx.op.unary.f32(i32 21, float %10394)  ; Exp(value)
  %10396 = fsub fast float 1.000000e+00, %10395
  %10397 = fmul fast float %10376, %10396
  %10398 = fsub fast float -0.000000e+00, %10397
  %10399 = fdiv fast float %10398, %10379
  br label %10400

; <label>:10400                                   ; preds = %10393, %10389
  %10401 = phi float [ %10399, %10393 ], [ %10376, %10389 ]
  %10402 = phi float [ %10395, %10393 ], [ 1.000000e+00, %10389 ]
  %10403 = fcmp fast une float %10380, 0.000000e+00
  br i1 %10403, label %10404, label %10411, !dx.controlflow.hints !180

; <label>:10404                                   ; preds = %10400
  %10405 = fmul fast float %10380, 0x3FF7154760000000
  %10406 = call float @dx.op.unary.f32(i32 21, float %10405)  ; Exp(value)
  %10407 = fsub fast float 1.000000e+00, %10406
  %10408 = fmul fast float %10377, %10407
  %10409 = fsub fast float -0.000000e+00, %10408
  %10410 = fdiv fast float %10409, %10380
  br label %10411

; <label>:10411                                   ; preds = %10404, %10400, %10360, %10353
  %10412 = phi float [ %10410, %10404 ], [ %10372, %10360 ], [ %10357, %10353 ], [ %10377, %10400 ]
  %10413 = phi float [ %10401, %10404 ], [ %10371, %10360 ], [ %10356, %10353 ], [ %10401, %10400 ]
  %10414 = phi float [ %10390, %10404 ], [ %10370, %10360 ], [ %10355, %10353 ], [ %10390, %10400 ]
  %10415 = phi float [ %10406, %10404 ], [ %10362, %10360 ], [ 1.000000e+00, %10353 ], [ 1.000000e+00, %10400 ]
  %10416 = phi float [ %10402, %10404 ], [ %10362, %10360 ], [ 1.000000e+00, %10353 ], [ %10402, %10400 ]
  %10417 = phi float [ %10391, %10404 ], [ %10362, %10360 ], [ 1.000000e+00, %10353 ], [ %10391, %10400 ]
  %10418 = fmul fast float %10417, %10329
  %10419 = fmul fast float %10416, %10340
  %10420 = fmul fast float %10415, %10351
  %10421 = fadd fast float %10418, %10414
  %10422 = fadd fast float %10419, %10413
  %10423 = fadd fast float %10420, %10412
  %10424 = fmul fast float %10417, %10328
  %10425 = fmul fast float %10416, %10339
  %10426 = fmul fast float %10415, %10350
  br label %10427

; <label>:10427                                   ; preds = %10411, %10222
  %10428 = phi float [ %10426, %10411 ], [ %10228, %10222 ]
  %10429 = phi float [ %10425, %10411 ], [ %10227, %10222 ]
  %10430 = phi float [ %10424, %10411 ], [ %10226, %10222 ]
  %10431 = phi float [ %10423, %10411 ], [ %10225, %10222 ]
  %10432 = phi float [ %10422, %10411 ], [ %10224, %10222 ]
  %10433 = phi float [ %10421, %10411 ], [ %10223, %10222 ]
  %10434 = fmul fast float %10430, %9670
  %10435 = call float @dx.op.dot3.f32(i32 55, float %10430, float %10429, float %10428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10436 = call float @dx.op.dot3.f32(i32 55, float %10433, float %10432, float %10431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10437 = select i1 %260, float %10435, float %10430
  %10438 = select i1 %260, float %10435, float %10429
  %10439 = select i1 %260, float 1.000000e+00, float %10428
  %10440 = select i1 %260, float %10436, float %10433
  %10441 = select i1 %260, float 0.000000e+00, float %10432
  %10442 = select i1 %260, float 0.000000e+00, float %10431
  %10443 = fmul fast float %10437, %9664
  %10444 = fmul fast float %10438, %9665
  %10445 = fmul fast float %10439, %9666
  %10446 = fadd fast float %10443, %10440
  %10447 = fadd fast float %10444, %10441
  %10448 = fadd fast float %10442, %10445
  %10449 = fmul fast float %10437, %9667
  %10450 = fmul fast float %10438, %9668
  %10451 = fmul fast float %10439, %9669
  %10452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10453 = extractvalue %dx.types.CBufRet.i32 %10452, 0
  %10454 = icmp eq i32 %10453, 0
  br i1 %10454, label %10819, label %10455, !dx.controlflow.hints !182

; <label>:10455                                   ; preds = %10427
  %10456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10457 = extractvalue %dx.types.CBufRet.f32 %10456, 2
  %10458 = extractvalue %dx.types.CBufRet.f32 %10456, 3
  %10459 = fmul fast float %10457, %111
  %10460 = fmul fast float %10458, %112
  %10461 = fmul fast float %10459, 2.000000e+00
  %10462 = fmul fast float %10460, 2.000000e+00
  %10463 = fsub fast float 1.000000e+00, %10461
  %10464 = fsub fast float 1.000000e+00, %10462
  %10465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10466 = extractvalue %dx.types.CBufRet.f32 %10465, 0
  %10467 = extractvalue %dx.types.CBufRet.f32 %10465, 1
  %10468 = extractvalue %dx.types.CBufRet.f32 %10465, 2
  %10469 = fmul fast float %10463, %10466
  %10470 = fmul fast float %10463, %10467
  %10471 = fmul fast float %10463, %10468
  %10472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10473 = extractvalue %dx.types.CBufRet.f32 %10472, 0
  %10474 = extractvalue %dx.types.CBufRet.f32 %10472, 1
  %10475 = extractvalue %dx.types.CBufRet.f32 %10472, 2
  %10476 = fmul fast float %10464, %10473
  %10477 = fmul fast float %10464, %10474
  %10478 = fmul fast float %10464, %10475
  %10479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10480 = extractvalue %dx.types.CBufRet.f32 %10479, 0
  %10481 = extractvalue %dx.types.CBufRet.f32 %10479, 1
  %10482 = extractvalue %dx.types.CBufRet.f32 %10479, 2
  %10483 = fadd fast float %10476, %10480
  %10484 = fadd fast float %10483, %10469
  %10485 = fadd fast float %10477, %10481
  %10486 = fadd fast float %10485, %10470
  %10487 = fadd fast float %10478, %10482
  %10488 = fadd fast float %10487, %10471
  %10489 = fmul fast float %10484, %9663
  %10490 = fmul fast float %10486, %9663
  %10491 = fmul fast float %10488, %9663
  %10492 = fmul fast float %10489, %10489
  %10493 = fmul fast float %10490, %10490
  %10494 = fadd fast float %10492, %10493
  %10495 = fmul fast float %10491, %10491
  %10496 = fadd fast float %10494, %10495
  %10497 = call float @dx.op.unary.f32(i32 24, float %10496)  ; Sqrt(value)
  %10498 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  %10499 = fsub fast float %10497, %10498
  %10500 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %10501 = fmul fast float %10499, %10500
  %10502 = call float @dx.op.unary.f32(i32 7, float %10501)  ; Saturate(value)
  %10503 = fadd fast float %10502, -5.000000e-01
  %10504 = fmul fast float %10503, 2.000000e+00
  %10505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10506 = extractvalue %dx.types.CBufRet.f32 %10505, 2
  %10507 = call float @dx.op.binary.f32(i32 36, float %10506, float %10504)  ; FMin(a,b)
  %10508 = fsub fast float -0.000000e+00, %10506
  %10509 = fcmp fast ogt float %10507, %10508
  br i1 %10509, label %10510, label %10819, !dx.controlflow.hints !183

; <label>:10510                                   ; preds = %10455
  %10511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10512 = extractvalue %dx.types.CBufRet.f32 %10511, 3
  %10513 = fcmp fast ogt float %10512, 0.000000e+00
  br i1 %10513, label %10514, label %10589, !dx.controlflow.hints !184

; <label>:10514                                   ; preds = %10510
  %10515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10516 = extractvalue %dx.types.Dimensions %10515, 0
  %10517 = sitofp i32 %10516 to float
  %10518 = extractvalue %dx.types.Dimensions %10515, 1
  %10519 = sitofp i32 %10518 to float
  %10520 = fmul fast float %10459, %10517
  %10521 = fmul fast float %10460, %10519
  %10522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10523 = extractvalue %dx.types.CBufRet.f32 %10522, 1
  %10524 = fsub fast float -0.000000e+00, %10523
  %10525 = fptoui float %10524 to i32
  %10526 = fptoui float %10520 to i32
  %10527 = fptoui float %10521 to i32
  %10528 = and i32 %10525, 31
  %10529 = lshr i32 %10526, %10528
  %10530 = lshr i32 %10527, %10528
  %10531 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10525, i32 %10529, i32 %10530, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10532 = extractvalue %dx.types.ResRet.f32 %10531, 0
  %10533 = fcmp fast olt float %10532, -1.000000e+00
  %10534 = fcmp fast ogt float %10532, -1.000000e+00
  %10535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10536 = extractvalue %dx.types.CBufRet.f32 %10535, 1
  %10537 = select i1 %10534, float %10536, float 1.000000e+00
  %10538 = fadd fast float %10532, 1.000000e+00
  %10539 = fmul fast float %10537, %10538
  %10540 = call float @dx.op.unary.f32(i32 6, float %10539)  ; FAbs(value)
  %10541 = extractvalue %dx.types.CBufRet.f32 %10535, 3
  %10542 = fcmp fast oge float %10540, %10541
  %10543 = select i1 %10542, float 0x4197782600000000, float %10540
  %10544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10545 = extractvalue %dx.types.CBufRet.f32 %10544, 0
  %10546 = extractvalue %dx.types.CBufRet.f32 %10544, 1
  %10547 = extractvalue %dx.types.CBufRet.f32 %10544, 2
  %10548 = select i1 %10533, float %10545, float %10466
  %10549 = select i1 %10533, float %10546, float %10467
  %10550 = select i1 %10533, float %10547, float %10468
  %10551 = fmul fast float %10548, %10463
  %10552 = fmul fast float %10549, %10463
  %10553 = fmul fast float %10550, %10463
  %10554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10555 = extractvalue %dx.types.CBufRet.f32 %10554, 0
  %10556 = extractvalue %dx.types.CBufRet.f32 %10554, 1
  %10557 = extractvalue %dx.types.CBufRet.f32 %10554, 2
  %10558 = select i1 %10533, float %10555, float %10473
  %10559 = select i1 %10533, float %10556, float %10474
  %10560 = select i1 %10533, float %10557, float %10475
  %10561 = fmul fast float %10558, %10464
  %10562 = fmul fast float %10559, %10464
  %10563 = fmul fast float %10560, %10464
  %10564 = fadd fast float %10561, %10551
  %10565 = fadd fast float %10562, %10552
  %10566 = fadd fast float %10563, %10553
  %10567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10568 = extractvalue %dx.types.CBufRet.f32 %10567, 0
  %10569 = extractvalue %dx.types.CBufRet.f32 %10567, 1
  %10570 = extractvalue %dx.types.CBufRet.f32 %10567, 2
  %10571 = select i1 %10533, float %10568, float %10480
  %10572 = select i1 %10533, float %10569, float %10481
  %10573 = select i1 %10533, float %10570, float %10482
  %10574 = fadd fast float %10564, %10571
  %10575 = fadd fast float %10565, %10572
  %10576 = fadd fast float %10566, %10573
  %10577 = fmul fast float %10574, %10543
  %10578 = fmul fast float %10575, %10543
  %10579 = fmul fast float %10576, %10543
  %10580 = fmul fast float %10577, %10577
  %10581 = fmul fast float %10578, %10578
  %10582 = fadd fast float %10580, %10581
  %10583 = fmul fast float %10579, %10579
  %10584 = fadd fast float %10582, %10583
  %10585 = call float @dx.op.unary.f32(i32 24, float %10584)  ; Sqrt(value)
  %10586 = fsub fast float %10585, %10498
  %10587 = fmul fast float %10586, %10500
  %10588 = call float @dx.op.unary.f32(i32 7, float %10587)  ; Saturate(value)
  br label %10589

; <label>:10589                                   ; preds = %10514, %10510
  %10590 = phi float [ %10588, %10514 ], [ 1.000000e+00, %10510 ]
  %10591 = fmul fast float %10507, 5.000000e-01
  %10592 = fadd fast float %10591, 5.000000e-01
  %10593 = call float @dx.op.unary.f32(i32 22, float %10592)  ; Frc(value)
  %10594 = call float @dx.op.unary.f32(i32 27, float %10593)  ; Round_ni(value)
  %10595 = call float @dx.op.unary.f32(i32 22, float %10593)  ; Frc(value)
  %10596 = fmul fast float %10595, 2.000000e+00
  %10597 = fadd fast float %10596, -1.000000e+00
  %10598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %10459, float %10460, float %10594, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10599 = extractvalue %dx.types.ResRet.f32 %10598, 0
  %10600 = extractvalue %dx.types.ResRet.f32 %10598, 1
  %10601 = extractvalue %dx.types.ResRet.f32 %10598, 2
  %10602 = extractvalue %dx.types.ResRet.f32 %10598, 3
  %10603 = fadd fast float %10599, -5.000000e-01
  %10604 = fadd fast float %10601, -5.000000e-01
  %10605 = fmul fast float %10603, 0xBFD5555560000000
  %10606 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10604, float %10605)  ; FMad(a,b,c)
  %10607 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10600, float 0.000000e+00)  ; FMad(a,b,c)
  %10608 = fadd fast float %10607, %10602
  %10609 = fmul fast float %10603, -7.500000e-01
  %10610 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10604, float %10609)  ; FMad(a,b,c)
  %10611 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10600, float 0.000000e+00)  ; FMad(a,b,c)
  %10612 = fadd fast float %10611, %10602
  %10613 = call float @dx.op.binary.f32(i32 35, float %10606, float -1.000000e+00)  ; FMax(a,b)
  %10614 = call float @dx.op.binary.f32(i32 35, float %10608, float -1.000000e+00)  ; FMax(a,b)
  %10615 = call float @dx.op.binary.f32(i32 35, float %10610, float -1.000000e+00)  ; FMax(a,b)
  %10616 = call float @dx.op.binary.f32(i32 35, float %10612, float -1.000000e+00)  ; FMax(a,b)
  %10617 = call float @dx.op.binary.f32(i32 36, float %10613, float 1.000000e+00)  ; FMin(a,b)
  %10618 = call float @dx.op.binary.f32(i32 36, float %10614, float 1.000000e+00)  ; FMin(a,b)
  %10619 = call float @dx.op.binary.f32(i32 36, float %10615, float 1.000000e+00)  ; FMin(a,b)
  %10620 = call float @dx.op.binary.f32(i32 36, float %10616, float 1.000000e+00)  ; FMin(a,b)
  %10621 = fcmp fast olt float %10617, 0x3FEFFF8020000000
  br i1 %10621, label %10622, label %10737, !dx.controlflow.hints !185

; <label>:10622                                   ; preds = %10589
  %10623 = extractvalue %dx.types.CBufRet.f32 %10505, 3
  %10624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10625 = extractvalue %dx.types.CBufRet.f32 %10624, 0
  %10626 = extractvalue %dx.types.CBufRet.f32 %10624, 1
  %10627 = extractvalue %dx.types.CBufRet.f32 %10624, 2
  %10628 = extractvalue %dx.types.CBufRet.f32 %10624, 3
  %10629 = fsub fast float %10625, %10617
  %10630 = fsub fast float %10626, %10618
  %10631 = fsub fast float %10627, %10619
  %10632 = fsub fast float %10628, %10620
  %10633 = fmul fast float %10629, %10623
  %10634 = fmul fast float %10630, %10623
  %10635 = fmul fast float %10631, %10623
  %10636 = fmul fast float %10632, %10623
  %10637 = fadd fast float %10633, %10617
  %10638 = fadd fast float %10634, %10618
  %10639 = fsub fast float -0.000000e+00, %10638
  %10640 = fadd fast float %10635, %10619
  %10641 = fadd fast float %10636, %10620
  %10642 = fmul fast float %10637, %10637
  %10643 = fsub fast float %10638, %10642
  %10644 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10643)  ; FMax(a,b)
  %10645 = fdiv fast float 1.000000e+00, %10644
  %10646 = fmul fast float %10638, %10637
  %10647 = fsub fast float %10640, %10646
  %10648 = fsub fast float %10597, %10637
  %10649 = fmul fast float %10597, %10597
  %10650 = fsub fast float %10649, %10638
  %10651 = fmul fast float %10648, %10645
  %10652 = fmul fast float %10651, %10647
  %10653 = fsub fast float %10650, %10652
  %10654 = fmul fast float %10638, %10638
  %10655 = fsub fast float %10641, %10654
  %10656 = fmul fast float %10647, %10647
  %10657 = fmul fast float %10656, %10645
  %10658 = fsub fast float %10655, %10657
  %10659 = fdiv fast float %10653, %10658
  %10660 = fmul fast float %10647, %10659
  %10661 = fsub fast float %10648, %10660
  %10662 = fmul fast float %10661, %10645
  %10663 = fmul fast float %10662, %10637
  %10664 = fsub fast float 1.000000e+00, %10663
  %10665 = fmul fast float %10638, %10659
  %10666 = fsub fast float %10664, %10665
  %10667 = fmul fast float %10662, %10662
  %10668 = fmul fast float %10659, 4.000000e+00
  %10669 = fmul fast float %10668, %10666
  %10670 = fsub fast float %10667, %10669
  %10671 = call float @dx.op.unary.f32(i32 24, float %10670)  ; Sqrt(value)
  %10672 = fcmp fast oge float %10662, 0.000000e+00
  %10673 = fsub fast float -0.000000e+00, %10671
  %10674 = select i1 %10672, float %10673, float %10671
  %10675 = fsub fast float %10674, %10662
  %10676 = fdiv fast float %10675, %10659
  %10677 = fdiv fast float %10666, %10675
  %10678 = fmul fast float %10676, 5.000000e-01
  %10679 = fmul fast float %10677, 2.000000e+00
  %10680 = select i1 %10672, float %10678, float %10679
  %10681 = select i1 %10672, float %10679, float %10678
  %10682 = call float @dx.op.binary.f32(i32 35, float %10680, float %10681)  ; FMax(a,b)
  %10683 = call float @dx.op.binary.f32(i32 36, float %10680, float %10681)  ; FMin(a,b)
  %10684 = fcmp fast ogt float %10597, %10683
  br i1 %10684, label %10685, label %10695

; <label>:10685                                   ; preds = %10622
  %10686 = fsub fast float %10597, %10683
  %10687 = fsub fast float %10682, %10683
  %10688 = fmul fast float %10686, %10687
  %10689 = fmul fast float %10682, %10597
  %10690 = fadd fast float %10682, %10597
  %10691 = fmul fast float %10690, %10637
  %10692 = fadd fast float %10689, %10638
  %10693 = fsub fast float %10692, %10691
  %10694 = fdiv fast float %10693, %10688
  br label %10695

; <label>:10695                                   ; preds = %10685, %10622
  %10696 = phi float [ %10694, %10685 ], [ 0.000000e+00, %10622 ]
  %10697 = fcmp fast ogt float %10597, %10682
  %10698 = fsub fast float %10597, %10682
  br i1 %10697, label %10699, label %10709

; <label>:10699                                   ; preds = %10695
  %10700 = fsub fast float %10682, %10683
  %10701 = fmul fast float %10700, %10698
  %10702 = fmul fast float %10683, %10597
  %10703 = fadd fast float %10683, %10597
  %10704 = fmul fast float %10703, %10637
  %10705 = fsub fast float %10639, %10702
  %10706 = fadd fast float %10705, %10704
  %10707 = fdiv fast float %10706, %10701
  %10708 = fadd fast float %10707, %10696
  br label %10709

; <label>:10709                                   ; preds = %10699, %10695
  %10710 = phi float [ %10708, %10699 ], [ %10696, %10695 ]
  %10711 = fsub fast float %10597, %10683
  %10712 = fmul fast float %10711, %10698
  %10713 = fmul fast float %10683, %10682
  %10714 = fadd fast float %10683, %10682
  %10715 = fmul fast float %10714, %10637
  %10716 = fadd fast float %10713, %10638
  %10717 = fsub fast float %10716, %10715
  %10718 = fdiv fast float %10717, %10712
  %10719 = call float @dx.op.unary.f32(i32 7, float %10710)  ; Saturate(value)
  %10720 = fcmp fast oeq float %9394, 0.000000e+00
  %10721 = extractvalue %dx.types.CBufRet.f32 %10505, 0
  %10722 = fcmp fast oeq float %10721, 0.000000e+00
  %10723 = or i1 %10720, %10722
  %10724 = fmul fast float %10721, 2.000000e+00
  %10725 = fadd fast float %10506, %10507
  %10726 = fdiv fast float %10725, %10724
  %10727 = call float @dx.op.unary.f32(i32 7, float %10726)  ; Saturate(value)
  %10728 = fmul fast float %10727, 2.000000e+00
  %10729 = fsub fast float 3.000000e+00, %10728
  %10730 = fmul fast float %10727, %10727
  %10731 = fmul fast float %10730, %10729
  %10732 = select i1 %10723, float 1.000000e+00, float %10731
  %10733 = fmul fast float %10718, %9394
  %10734 = fadd fast float %10719, %10733
  %10735 = call float @dx.op.unary.f32(i32 7, float %10734)  ; Saturate(value)
  %10736 = fmul fast float %10732, %10735
  br label %10737

; <label>:10737                                   ; preds = %10709, %10589
  %10738 = phi float [ %10736, %10709 ], [ 0.000000e+00, %10589 ]
  %10739 = fsub fast float 1.000000e+00, %10738
  %10740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %10459, float %10460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10741 = extractvalue %dx.types.ResRet.f32 %10740, 0
  %10742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10743 = extractvalue %dx.types.CBufRet.i32 %10742, 2
  %10744 = icmp eq i32 %10743, 0
  br i1 %10744, label %10750, label %10745

; <label>:10745                                   ; preds = %10737
  %10746 = call float @dx.op.unary.f32(i32 7, float %10738)  ; Saturate(value)
  %10747 = fadd fast float %10741, -1.000000e+00
  %10748 = fmul fast float %10746, %10747
  %10749 = fadd fast float %10748, 1.000000e+00
  br label %10750

; <label>:10750                                   ; preds = %10745, %10737
  %10751 = phi float [ %10749, %10745 ], [ %10739, %10737 ]
  br i1 %10513, label %10752, label %10770

; <label>:10752                                   ; preds = %10750
  %10753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10754 = extractvalue %dx.types.CBufRet.f32 %10753, 1
  %10755 = fsub fast float %10590, %10754
  %10756 = call float @dx.op.unary.f32(i32 7, float %10755)  ; Saturate(value)
  %10757 = fsub fast float %10590, %10512
  %10758 = call float @dx.op.unary.f32(i32 7, float %10757)  ; Saturate(value)
  %10759 = fsub fast float %10756, %10758
  %10760 = fsub fast float %10592, %10758
  %10761 = fdiv fast float %10760, %10759
  %10762 = call float @dx.op.unary.f32(i32 7, float %10761)  ; Saturate(value)
  %10763 = fmul fast float %10762, 2.000000e+00
  %10764 = fsub fast float 3.000000e+00, %10763
  %10765 = fsub fast float %10741, %10751
  %10766 = fmul fast float %10762, %10762
  %10767 = fmul fast float %10766, %10765
  %10768 = fmul fast float %10767, %10764
  %10769 = fadd fast float %10768, %10751
  br label %10770

; <label>:10770                                   ; preds = %10752, %10750
  %10771 = phi float [ %10769, %10752 ], [ %10751, %10750 ]
  %10772 = call float @dx.op.binary.f32(i32 35, float %10741, float %10771)  ; FMax(a,b)
  %10773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10774 = extractvalue %dx.types.CBufRet.i32 %10773, 2
  %10775 = and i32 %10774, 1
  %10776 = icmp eq i32 %10775, 0
  %10777 = fcmp fast une float %10772, 1.000000e+00
  %10778 = and i1 %10777, %10776
  br i1 %10778, label %10779, label %10798

; <label>:10779                                   ; preds = %10770
  %10780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %10459, float %10460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10781 = extractvalue %dx.types.ResRet.f32 %10780, 0
  %10782 = extractvalue %dx.types.ResRet.f32 %10780, 1
  %10783 = extractvalue %dx.types.ResRet.f32 %10780, 2
  %10784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10785 = extractvalue %dx.types.CBufRet.f32 %10784, 1
  %10786 = fmul fast float %10785, %10781
  %10787 = fmul fast float %10785, %10782
  %10788 = fmul fast float %10785, %10783
  %10789 = fcmp fast ogt float %10741, 0x3FEFFF2E40000000
  %10790 = fsub fast float 1.000000e+00, %10772
  %10791 = fsub fast float 1.000000e+00, %10741
  %10792 = fdiv fast float %10790, %10791
  %10793 = call float @dx.op.unary.f32(i32 7, float %10792)  ; Saturate(value)
  %10794 = select i1 %10789, float 0.000000e+00, float %10793
  %10795 = fmul fast float %10786, %10794
  %10796 = fmul fast float %10787, %10794
  %10797 = fmul fast float %10788, %10794
  br label %10798

; <label>:10798                                   ; preds = %10779, %10770
  %10799 = phi float [ 0.000000e+00, %10770 ], [ %10795, %10779 ]
  %10800 = phi float [ 0.000000e+00, %10770 ], [ %10796, %10779 ]
  %10801 = phi float [ 0.000000e+00, %10770 ], [ %10797, %10779 ]
  %10802 = fmul fast float %10772, %10434
  %10803 = call float @dx.op.dot3.f32(i32 55, float %10772, float %10772, float %10772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10804 = call float @dx.op.dot3.f32(i32 55, float %10799, float %10800, float %10801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10805 = select i1 %260, float %10803, float %10772
  %10806 = select i1 %260, float 1.000000e+00, float %10772
  %10807 = select i1 %260, float %10804, float %10799
  %10808 = select i1 %260, float 0.000000e+00, float %10800
  %10809 = select i1 %260, float 0.000000e+00, float %10801
  %10810 = fmul fast float %10805, %10446
  %10811 = fmul fast float %10805, %10447
  %10812 = fmul fast float %10806, %10448
  %10813 = fadd fast float %10810, %10807
  %10814 = fadd fast float %10811, %10808
  %10815 = fadd fast float %10809, %10812
  %10816 = fmul fast float %10805, %10449
  %10817 = fmul fast float %10805, %10450
  %10818 = fmul fast float %10806, %10451
  br label %10819

; <label>:10819                                   ; preds = %10798, %10455, %10427, %9659
  %10820 = phi float [ %9664, %9659 ], [ %10446, %10427 ], [ %10813, %10798 ], [ %10446, %10455 ]
  %10821 = phi float [ %9665, %9659 ], [ %10447, %10427 ], [ %10814, %10798 ], [ %10447, %10455 ]
  %10822 = phi float [ %9666, %9659 ], [ %10448, %10427 ], [ %10815, %10798 ], [ %10448, %10455 ]
  %10823 = phi float [ %9667, %9659 ], [ %10449, %10427 ], [ %10816, %10798 ], [ %10449, %10455 ]
  %10824 = phi float [ %9668, %9659 ], [ %10450, %10427 ], [ %10817, %10798 ], [ %10450, %10455 ]
  %10825 = phi float [ %9669, %9659 ], [ %10451, %10427 ], [ %10818, %10798 ], [ %10451, %10455 ]
  %10826 = phi float [ %9670, %9659 ], [ %10434, %10427 ], [ %10802, %10798 ], [ %10434, %10455 ]
  %10827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10828 = extractvalue %dx.types.CBufRet.f32 %10827, 2
  %10829 = extractvalue %dx.types.CBufRet.f32 %10827, 3
  %10830 = fmul fast float %10828, %111
  %10831 = fmul fast float %10829, %112
  %10832 = call float @dx.op.unary.f32(i32 7, float %10830)  ; Saturate(value)
  %10833 = call float @dx.op.unary.f32(i32 7, float %10831)  ; Saturate(value)
  %10834 = select i1 %9404, i32 2, i32 0
  %10835 = or i32 %10834, 1
  %10836 = uitofp i32 %10835 to float
  %10837 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10832, float %10833, float %10836, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10838 = extractvalue %dx.types.ResRet.f32 %10837, 0
  %10839 = extractvalue %dx.types.ResRet.f32 %10837, 1
  %10840 = extractvalue %dx.types.ResRet.f32 %10837, 2
  %10841 = extractvalue %dx.types.ResRet.f32 %10837, 3
  %10842 = add nuw nsw i32 %10834, 2
  %10843 = uitofp i32 %10842 to float
  %10844 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10832, float %10833, float %10843, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10845 = extractvalue %dx.types.ResRet.f32 %10844, 0
  %10846 = extractvalue %dx.types.ResRet.f32 %10844, 1
  %10847 = extractvalue %dx.types.ResRet.f32 %10844, 2
  %10848 = extractvalue %dx.types.ResRet.f32 %10844, 3
  %10849 = call float @dx.op.binary.f32(i32 35, float %10839, float %10840)  ; FMax(a,b)
  %10850 = call float @dx.op.binary.f32(i32 35, float %10838, float %10849)  ; FMax(a,b)
  %10851 = call float @dx.op.binary.f32(i32 35, float %10850, float %10841)  ; FMax(a,b)
  %10852 = call float @dx.op.binary.f32(i32 36, float %10846, float %10847)  ; FMin(a,b)
  %10853 = call float @dx.op.binary.f32(i32 36, float %10845, float %10852)  ; FMin(a,b)
  %10854 = call float @dx.op.binary.f32(i32 36, float %10853, float %10848)  ; FMin(a,b)
  %10855 = fmul fast float %10851, 2.550000e+02
  %10856 = fadd fast float %10855, 0x3F70101020000000
  %10857 = fptoui float %10856 to i32
  %10858 = fmul fast float %10854, 2.550000e+02
  %10859 = fadd fast float %10858, 0x3F70101020000000
  %10860 = fptoui float %10859 to i32
  %10861 = icmp ult i32 %10857, %10860
  br i1 %10861, label %10862, label %11031

; <label>:10862                                   ; preds = %10819
  %10863 = fcmp fast ogt float %98, 9.843750e-01
  %10864 = fadd fast float %9663, -4.000000e+00
  %10865 = select i1 %10863, float -4.000000e+00, float %10864
  %10866 = call float @dx.op.binary.f32(i32 35, float %10865, float 0.000000e+00)  ; FMax(a,b)
  %10867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10868 = extractvalue %dx.types.CBufRet.f32 %10867, 0
  %10869 = fadd fast float %10868, %10866
  %10870 = extractvalue %dx.types.CBufRet.f32 %10867, 2
  %10871 = fmul fast float %10869, %10870
  %10872 = call float @dx.op.unary.f32(i32 23, float %10871)  ; Log(value)
  %10873 = extractvalue %dx.types.CBufRet.f32 %10867, 3
  %10874 = fmul fast float %10873, %10872
  %10875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10876 = extractvalue %dx.types.CBufRet.f32 %10875, 2
  %10877 = fmul fast float %10874, %10876
  %10878 = call float @dx.op.unary.f32(i32 7, float %10877)  ; Saturate(value)
  %10879 = uitofp i32 %10857 to float
  %10880 = uitofp i32 %10860 to float
  %10881 = fadd fast float %10879, 5.000000e-01
  %10882 = fadd fast float %10880, 5.000000e-01
  %10883 = fmul fast float %10876, %10881
  %10884 = fmul fast float %10876, %10882
  %10885 = fadd fast float %10883, 0x3F0FFB4800000000
  %10886 = fadd fast float %10884, 0xBF0FFB4800000000
  %10887 = call float @dx.op.binary.f32(i32 35, float %10878, float %10885)  ; FMax(a,b)
  %10888 = call float @dx.op.binary.f32(i32 36, float %10887, float %10886)  ; FMin(a,b)
  %10889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10890 = extractvalue %dx.types.CBufRet.f32 %10889, 1
  %10891 = extractvalue %dx.types.CBufRet.f32 %10889, 2
  %10892 = extractvalue %dx.types.CBufRet.f32 %10889, 0
  %10893 = select i1 %9404, float %10892, float 0.000000e+00
  %10894 = fmul fast float %10890, %10888
  %10895 = fadd fast float %10893, %10894
  %10896 = fadd fast float %10893, %10891
  %10897 = fsub fast float %10890, %10891
  %10898 = fadd fast float %10897, %10893
  %10899 = call float @dx.op.binary.f32(i32 35, float %10895, float %10896)  ; FMax(a,b)
  %10900 = call float @dx.op.binary.f32(i32 36, float %10899, float %10898)  ; FMin(a,b)
  %10901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10832, float %10833, float %10900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10902 = extractvalue %dx.types.ResRet.f32 %10901, 0
  %10903 = extractvalue %dx.types.ResRet.f32 %10901, 1
  %10904 = extractvalue %dx.types.ResRet.f32 %10901, 2
  %10905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10906 = extractvalue %dx.types.CBufRet.i32 %10905, 0
  %10907 = extractvalue %dx.types.CBufRet.i32 %10905, 1
  %10908 = uitofp i32 %10906 to float
  %10909 = uitofp i32 %10907 to float
  %10910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10911 = extractvalue %dx.types.CBufRet.f32 %10910, 0
  %10912 = extractvalue %dx.types.CBufRet.f32 %10910, 1
  %10913 = fmul fast float %10908, %10832
  %10914 = fmul fast float %10909, %10833
  %10915 = fadd fast float %10913, -5.000000e-01
  %10916 = fadd fast float %10914, -5.000000e-01
  %10917 = call float @dx.op.unary.f32(i32 22, float %10915)  ; Frc(value)
  %10918 = call float @dx.op.unary.f32(i32 22, float %10916)  ; Frc(value)
  %10919 = fmul fast float %10917, %10917
  %10920 = fmul fast float %10919, %10917
  %10921 = fsub fast float 3.000000e+00, %10917
  %10922 = fmul fast float %10919, %10921
  %10923 = fmul fast float %10917, 3.000000e+00
  %10924 = fmul fast float %10920, 3.000000e+00
  %10925 = fmul fast float %10919, 6.000000e+00
  %10926 = fsub fast float %10924, %10925
  %10927 = fadd fast float %10926, 4.000000e+00
  %10928 = fmul fast float %10927, 0x3FC5555560000000
  %10929 = fmul fast float %10920, -3.000000e+00
  %10930 = fadd fast float %10919, %10917
  %10931 = fmul fast float %10930, 3.000000e+00
  %10932 = fadd fast float %10929, 1.000000e+00
  %10933 = fadd fast float %10932, %10931
  %10934 = fmul fast float %10920, 0x3FC5555560000000
  %10935 = fmul fast float %10918, %10918
  %10936 = fmul fast float %10935, %10918
  %10937 = fsub fast float 3.000000e+00, %10918
  %10938 = fmul fast float %10935, %10937
  %10939 = fmul fast float %10918, 3.000000e+00
  %10940 = fmul fast float %10936, 3.000000e+00
  %10941 = fmul fast float %10935, 6.000000e+00
  %10942 = fsub fast float %10940, %10941
  %10943 = fadd fast float %10942, 4.000000e+00
  %10944 = fmul fast float %10943, 0x3FC5555560000000
  %10945 = fmul fast float %10936, -3.000000e+00
  %10946 = fadd fast float %10935, %10918
  %10947 = fmul fast float %10946, 3.000000e+00
  %10948 = fadd fast float %10945, 1.000000e+00
  %10949 = fadd fast float %10948, %10947
  %10950 = fmul fast float %10936, 0x3FC5555560000000
  %10951 = fadd fast float %10917, 1.000000e+00
  %10952 = fsub fast float 1.000000e+00, %10923
  %10953 = fadd fast float %10952, %10922
  %10954 = fadd fast float %10953, %10927
  %10955 = fmul fast float %10954, 0x3FC5555560000000
  %10956 = fdiv fast float %10928, %10955
  %10957 = fsub fast float %10951, %10956
  %10958 = fsub fast float 1.000000e+00, %10917
  %10959 = fadd fast float %10933, %10920
  %10960 = fmul fast float %10959, 0x3FC5555560000000
  %10961 = fdiv fast float %10934, %10960
  %10962 = fadd fast float %10958, %10961
  %10963 = fadd fast float %10918, 1.000000e+00
  %10964 = fsub fast float 1.000000e+00, %10939
  %10965 = fadd fast float %10964, %10938
  %10966 = fadd fast float %10965, %10943
  %10967 = fmul fast float %10966, 0x3FC5555560000000
  %10968 = fdiv fast float %10944, %10967
  %10969 = fsub fast float %10963, %10968
  %10970 = fsub fast float 1.000000e+00, %10918
  %10971 = fadd fast float %10949, %10936
  %10972 = fmul fast float %10971, 0x3FC5555560000000
  %10973 = fdiv fast float %10950, %10972
  %10974 = fadd fast float %10973, %10970
  %10975 = fmul fast float %10957, %10911
  %10976 = fsub fast float %10832, %10975
  %10977 = fmul fast float %10962, %10911
  %10978 = fadd fast float %10977, %10832
  %10979 = fmul fast float %10974, %10912
  %10980 = fadd fast float %10979, %10833
  %10981 = fmul fast float %10969, %10912
  %10982 = fsub fast float %10833, %10981
  %10983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10976, float %10982, float %10900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10984 = extractvalue %dx.types.ResRet.f32 %10983, 0
  %10985 = extractvalue %dx.types.ResRet.f32 %10983, 1
  %10986 = extractvalue %dx.types.ResRet.f32 %10983, 2
  %10987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10978, float %10982, float %10900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10988 = extractvalue %dx.types.ResRet.f32 %10987, 0
  %10989 = extractvalue %dx.types.ResRet.f32 %10987, 1
  %10990 = extractvalue %dx.types.ResRet.f32 %10987, 2
  %10991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10976, float %10980, float %10900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10992 = extractvalue %dx.types.ResRet.f32 %10991, 0
  %10993 = extractvalue %dx.types.ResRet.f32 %10991, 1
  %10994 = extractvalue %dx.types.ResRet.f32 %10991, 2
  %10995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10978, float %10980, float %10900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10996 = extractvalue %dx.types.ResRet.f32 %10995, 0
  %10997 = extractvalue %dx.types.ResRet.f32 %10995, 1
  %10998 = extractvalue %dx.types.ResRet.f32 %10995, 2
  %10999 = fsub fast float %10992, %10984
  %11000 = fsub fast float %10993, %10985
  %11001 = fsub fast float %10994, %10986
  %11002 = fmul fast float %10999, %10972
  %11003 = fmul fast float %11000, %10972
  %11004 = fmul fast float %11001, %10972
  %11005 = fadd fast float %11002, %10984
  %11006 = fadd fast float %11003, %10985
  %11007 = fadd fast float %11004, %10986
  %11008 = fsub fast float %10996, %10988
  %11009 = fsub fast float %10997, %10989
  %11010 = fsub fast float %10998, %10990
  %11011 = fmul fast float %11008, %10972
  %11012 = fmul fast float %11009, %10972
  %11013 = fmul fast float %11010, %10972
  %11014 = fsub fast float %10988, %11005
  %11015 = fadd fast float %11014, %11011
  %11016 = fsub fast float %10989, %11006
  %11017 = fadd fast float %11016, %11012
  %11018 = fsub fast float %10990, %11007
  %11019 = fadd fast float %11018, %11013
  %11020 = fmul fast float %11015, %10960
  %11021 = fmul fast float %11017, %10960
  %11022 = fmul fast float %11019, %10960
  %11023 = fadd fast float %11020, %11005
  %11024 = fadd fast float %11021, %11006
  %11025 = fadd fast float %11022, %11007
  %11026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11027 = extractvalue %dx.types.CBufRet.f32 %11026, 1
  %11028 = fmul fast float %11023, %11027
  %11029 = fmul fast float %11024, %11027
  %11030 = fmul fast float %11025, %11027
  br label %11031

; <label>:11031                                   ; preds = %10862, %10819
  %11032 = phi float [ %10902, %10862 ], [ 1.000000e+00, %10819 ]
  %11033 = phi float [ %10903, %10862 ], [ 1.000000e+00, %10819 ]
  %11034 = phi float [ %10904, %10862 ], [ 1.000000e+00, %10819 ]
  %11035 = phi float [ %11028, %10862 ], [ 0.000000e+00, %10819 ]
  %11036 = phi float [ %11029, %10862 ], [ 0.000000e+00, %10819 ]
  %11037 = phi float [ %11030, %10862 ], [ 0.000000e+00, %10819 ]
  %11038 = fmul fast float %11032, %10826
  %11039 = call float @dx.op.dot3.f32(i32 55, float %11032, float %11033, float %11034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11040 = call float @dx.op.dot3.f32(i32 55, float %11035, float %11036, float %11037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11041 = select i1 %260, float %11039, float %11032
  %11042 = select i1 %260, float %11039, float %11033
  %11043 = select i1 %260, float 1.000000e+00, float %11034
  %11044 = select i1 %260, float %11040, float %11035
  %11045 = select i1 %260, float 0.000000e+00, float %11036
  %11046 = select i1 %260, float 0.000000e+00, float %11037
  %11047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %11048 = extractvalue %dx.types.CBufRet.i32 %11047, 3
  %11049 = and i32 %11048, 3
  %11050 = icmp ne i32 %11049, 0
  %11051 = and i32 %11048, 4
  %11052 = icmp ne i32 %11051, 0
  %11053 = and i1 %11050, %11052
  %11054 = and i1 %260, %11053
  br i1 %11054, label %11055, label %11061

; <label>:11055                                   ; preds = %11031
  %11056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11057 = extractvalue %dx.types.CBufRet.f32 %11056, 1
  %11058 = fadd fast float %11038, -1.000000e+00
  %11059 = fmul fast float %11057, %11058
  %11060 = fadd fast float %11059, 1.000000e+00
  br label %11061

; <label>:11061                                   ; preds = %11055, %11031
  %11062 = phi float [ %11060, %11055 ], [ %11038, %11031 ]
  %11063 = fadd fast float %10823, %10820
  %11064 = fmul fast float %11041, %11063
  %11065 = fadd fast float %11064, %11044
  %11066 = fadd fast float %10824, %10821
  %11067 = fmul fast float %11042, %11066
  %11068 = fadd fast float %11067, %11045
  %11069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11070 = extractvalue %dx.types.CBufRet.f32 %11069, 0
  br i1 %260, label %11071, label %11086

; <label>:11071                                   ; preds = %11061
  %11072 = fadd fast float %11065, %11068
  %11073 = fmul fast float %11070, %11072
  %11074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11075 = extractvalue %dx.types.CBufRet.f32 %11074, 3
  %11076 = extractvalue %dx.types.CBufRet.f32 %9386, 1
  %11077 = fsub fast float %9391, %9385
  %11078 = fadd fast float %11077, %9392
  %11079 = fsub fast float %11078, %11076
  %11080 = extractvalue %dx.types.CBufRet.f32 %9386, 2
  %11081 = fmul fast float %11079, %11080
  %11082 = call float @dx.op.unary.f32(i32 7, float %11081)  ; Saturate(value)
  %11083 = fsub fast float %11082, %11075
  %11084 = fmul fast float %11083, %11062
  %11085 = fadd fast float %11084, %11075
  br label %11110

; <label>:11086                                   ; preds = %11061
  %11087 = fadd fast float %10825, %10822
  %11088 = fmul fast float %11043, %11087
  %11089 = fadd fast float %11088, %11046
  %11090 = fmul fast float %11070, %11065
  %11091 = fmul fast float %11070, %11068
  %11092 = fmul fast float %11070, %11089
  %11093 = call float @dx.op.binary.f32(i32 35, float %11091, float %11092)  ; FMax(a,b)
  %11094 = call float @dx.op.binary.f32(i32 35, float %11090, float %11093)  ; FMax(a,b)
  %11095 = call float @dx.op.binary.f32(i32 35, float %11094, float 1.000000e+00)  ; FMax(a,b)
  %11096 = fcmp fast ugt float %11095, 0x3F10000000000000
  br i1 %11096, label %11098, label %11097

; <label>:11097                                   ; preds = %11086
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11098

; <label>:11098                                   ; preds = %11097, %11086
  %11099 = add i32 %62, 356
  %11100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %11099, i32 undef)  ; BufferLoad(srv,index,wot)
  %11101 = extractvalue %dx.types.ResRet.i32 %11100, 0
  %11102 = and i32 %11101, 32
  %11103 = icmp eq i32 %11102, 0
  br i1 %11103, label %11110, label %11104

; <label>:11104                                   ; preds = %11098
  %11105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11106 = extractvalue %dx.types.CBufRet.f32 %11105, 0
  %11107 = fmul fast float %11106, 0x3FE99999A0000000
  %11108 = fadd fast float %11106, %11090
  %11109 = fadd fast float %11107, %11092
  br label %11110

; <label>:11110                                   ; preds = %11104, %11098, %11071
  %11111 = phi float [ %11073, %11071 ], [ %11108, %11104 ], [ %11090, %11098 ]
  %11112 = phi float [ %11085, %11071 ], [ %11091, %11104 ], [ %11091, %11098 ]
  %11113 = phi float [ 1.000000e+00, %11071 ], [ %11109, %11104 ], [ %11092, %11098 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11114 = call float @dx.op.binary.f32(i32 36, float %11111, float 3.225500e+04)  ; FMin(a,b)
  %11115 = call float @dx.op.binary.f32(i32 36, float %11112, float 3.225500e+04)  ; FMin(a,b)
  %11116 = call float @dx.op.binary.f32(i32 36, float %11113, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11114)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11115)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!76}
!dx.entryPoints = !{!77}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !64, !67}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 29, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !37}
!37 = !{i32 0, i32 5}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!44 = !{i32 36, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !49}
!49 = !{i32 0, i32 14}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!61 = !{i32 52, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !49}
!62 = !{i32 53, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!64 = !{!65, !66}
!65 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!66 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!76 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!77 = !{void ()* @ps_main, !"ps_main", !78, !4, !101}
!78 = !{!79, !97, null}
!79 = !{!80, !83, !84, !86, !88, !89, !90, !91, !92, !93, !94, !96}
!80 = !{i32 0, !"SV_Position", i8 9, i8 3, !81, i8 4, i32 1, i8 4, i32 0, i8 0, !82}
!81 = !{i32 0}
!82 = !{i32 3, i32 15}
!83 = !{i32 1, !"COLOR", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 1, i8 0, !82}
!84 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 2, i8 0, !85}
!85 = !{i32 3, i32 3}
!86 = !{i32 3, !"NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 3, i32 3, i8 0, !87}
!87 = !{i32 3, i32 7}
!88 = !{i32 4, !"TANGENT", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 4, i8 0, !82}
!89 = !{i32 5, !"SH_RED", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 5, i8 0, !82}
!90 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 6, i8 0, !82}
!91 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 7, i8 0, !82}
!92 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !81, i8 2, i32 1, i8 2, i32 8, i8 0, !85}
!93 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !81, i8 2, i32 1, i8 4, i32 9, i8 0, !82}
!94 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !81, i8 1, i32 1, i8 4, i32 10, i8 0, !95}
!95 = !{i32 3, i32 13}
!96 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !81, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !81, i8 0, i32 1, i8 4, i32 0, i8 0, !82}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !82}
!100 = !{i32 1}
!101 = !{i32 0, i64 16}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = !{!112, !112, i64 0}
!112 = !{!"int", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!116, !118, !120, !122}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!119 = distinct !{!119, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!122 = distinct !{!122, !123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!123 = distinct !{!123, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !113, i64 0}
!127 = distinct !{!127, !104}
!128 = distinct !{!128, !104}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = !{!140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!140 = distinct !{!140, !141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!141 = distinct !{!141, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!142 = distinct !{!142, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!143 = distinct !{!143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!144 = distinct !{!144, !143, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!153 = distinct !{!153, !154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!154 = distinct !{!154, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!163 = !{!159}
!164 = !{!160, !156, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!165 = !{!166}
!166 = distinct !{!166, !167, !"\01?sort@@YAXAIAM00@Z: %c"}
!167 = distinct !{!167, !"\01?sort@@YAXAIAM00@Z"}
!168 = !{!169, !170, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!169 = distinct !{!169, !167, !"\01?sort@@YAXAIAM00@Z: %a"}
!170 = distinct !{!170, !167, !"\01?sort@@YAXAIAM00@Z: %b"}
!171 = !{!170}
!172 = !{!169, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!173 = !{!169}
!174 = !{!170, !166, !140, !142, !144, !145, !147, !148, !149, !151, !152, !153}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 2}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}
!184 = distinct !{!184, !"dx.controlflow.hints", i32 1}
!185 = distinct !{!185, !"dx.controlflow.hints", i32 1}

