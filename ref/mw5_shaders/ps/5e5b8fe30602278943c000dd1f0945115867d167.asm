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
; shader hash: 32264f57df211b4d3e944a718f5ee333
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
  %457 = add i32 %62, 536
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
  br i1 %513, label %1288, label %514

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
  %733 = add i32 %62, 472
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
  %785 = add i32 %62, 456
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
  %809 = add i32 %62, 408
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
  %832 = add i32 %62, 488
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
  %1030 = add i32 %62, 424
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
  %1114 = add i32 %62, 440
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
  %1172 = add i32 %62, 504
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
  %1210 = and i32 %1209, 26624
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1269, label %1212

; <label>:1212                                    ; preds = %1184
  %1213 = add i32 %62, 520
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %108, float %613, float %614, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 1048576
  %1225 = icmp ne i32 %1224, 0
  %1226 = and i32 %1223, 8192
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1242, label %1228

; <label>:1228                                    ; preds = %1212
  %1229 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1230 = select i1 %1225, float %1229, float %1220
  %1231 = select i1 %1225, float %1219, float %1220
  %1232 = add i32 %62, 96
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = lshr i32 %1234, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F80101020000000
  %1239 = fmul fast float %1238, %1231
  %1240 = fmul fast float %1238, %1220
  %1241 = fmul fast float %1238, %1230
  br label %1242

; <label>:1242                                    ; preds = %1228, %1212
  %1243 = phi float [ %1239, %1228 ], [ 0.000000e+00, %1212 ]
  %1244 = phi float [ %1240, %1228 ], [ 0.000000e+00, %1212 ]
  %1245 = phi float [ %1241, %1228 ], [ 0.000000e+00, %1212 ]
  %1246 = and i32 %1223, 2048
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1256, label %1248

; <label>:1248                                    ; preds = %1242
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = shl i32 %1250, 4
  %1252 = and i32 %1251, 32752
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = fmul fast float %1253, %1221
  %1255 = call float @dx.op.binary.f32(i32 35, float %1254, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1256

; <label>:1256                                    ; preds = %1248, %1242
  %1257 = phi float [ %1255, %1248 ], [ 0x3F70101020000000, %1242 ]
  %1258 = and i32 %1223, 16384
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1269, label %1260

; <label>:1260                                    ; preds = %1256
  %1261 = add i32 %62, 96
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 24
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1219, 0x3F70101020000000
  %1267 = select i1 %1225, float 0x3F70101020000000, float %1266
  %1268 = fmul fast float %1267, %1265
  br label %1269

; <label>:1269                                    ; preds = %1260, %1256, %1184
  %1270 = phi float [ %1243, %1260 ], [ %1243, %1256 ], [ 0.000000e+00, %1184 ]
  %1271 = phi float [ %1244, %1260 ], [ %1244, %1256 ], [ 0.000000e+00, %1184 ]
  %1272 = phi float [ %1245, %1260 ], [ %1245, %1256 ], [ 0.000000e+00, %1184 ]
  %1273 = phi float [ %1257, %1260 ], [ %1257, %1256 ], [ 0x3F70101020000000, %1184 ]
  %1274 = phi float [ %1268, %1260 ], [ 0.000000e+00, %1256 ], [ 0.000000e+00, %1184 ]
  %1275 = add i32 %62, 96
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = lshr i32 %1277, 8
  %1281 = and i32 %1280, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = call float @dx.op.dot3.f32(i32 55, float %1019, float %1020, float %1021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1284 = fmul fast float %1282, %1283
  %1285 = fadd fast float %1284, %1279
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  br label %1288

; <label>:1288                                    ; preds = %1269, %499
  %1289 = phi float [ 0.000000e+00, %499 ], [ %1100, %1269 ]
  %1290 = phi float [ 0.000000e+00, %499 ], [ %1101, %1269 ]
  %1291 = phi float [ 0.000000e+00, %499 ], [ %1019, %1269 ]
  %1292 = phi float [ 0.000000e+00, %499 ], [ %1020, %1269 ]
  %1293 = phi float [ 0.000000e+00, %499 ], [ %1021, %1269 ]
  %1294 = phi float [ 0.000000e+00, %499 ], [ %1147, %1269 ]
  %1295 = phi float [ 0.000000e+00, %499 ], [ %1148, %1269 ]
  %1296 = phi float [ 0.000000e+00, %499 ], [ %1149, %1269 ]
  %1297 = phi float [ 0.000000e+00, %499 ], [ %1270, %1269 ]
  %1298 = phi float [ 0.000000e+00, %499 ], [ %1271, %1269 ]
  %1299 = phi float [ 0.000000e+00, %499 ], [ %1272, %1269 ]
  %1300 = phi float [ 0.000000e+00, %499 ], [ %1205, %1269 ]
  %1301 = phi float [ 0.000000e+00, %499 ], [ %1206, %1269 ]
  %1302 = phi float [ 0.000000e+00, %499 ], [ %1207, %1269 ]
  %1303 = phi float [ 0.000000e+00, %499 ], [ %1005, %1269 ]
  %1304 = phi float [ 0.000000e+00, %499 ], [ %801, %1269 ]
  %1305 = phi float [ 0.000000e+00, %499 ], [ %1099, %1269 ]
  %1306 = phi float [ 0.000000e+00, %499 ], [ %1102, %1269 ]
  %1307 = phi float [ 0.000000e+00, %499 ], [ %1273, %1269 ]
  %1308 = phi float [ 0.000000e+00, %499 ], [ %1274, %1269 ]
  %1309 = phi float [ 0.000000e+00, %499 ], [ %1287, %1269 ]
  br i1 %447, label %2371, label %1310

; <label>:1310                                    ; preds = %1288
  %1311 = icmp ult i32 %505, 2
  %1312 = add i32 %62, 40
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = add i32 %62, 44
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = or i32 %1317, %1314
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %2371, label %1320

; <label>:1320                                    ; preds = %1310
  %1321 = and i32 %1314, 262144
  %1322 = icmp ne i32 %1321, 0
  %1323 = select i1 %1322, float %65, float 1.000000e+00
  %1324 = select i1 %1322, float %66, float 0.000000e+00
  %1325 = select i1 %1322, float %67, float 0.000000e+00
  %1326 = select i1 %1322, float %68, float 1.000000e+00
  %1327 = select i1 %1322, float %69, float %90
  %1328 = select i1 %1322, float %70, float %91
  %1329 = add i32 %62, 300
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 16
  %1333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1332)  ; LegacyF16ToF32(value)
  %1334 = fmul fast float %1333, 0x3F50624DE0000000
  %1335 = add i32 %62, 104
  %1336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1337 = extractvalue %dx.types.ResRet.i32 %1336, 0
  %1338 = lshr i32 %1337, 16
  %1339 = and i32 %1338, 255
  %1340 = lshr i32 %1337, 24
  %1341 = add i32 %62, 308
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 65535
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = lshr i32 %1343, 16
  %1347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1346)  ; LegacyF16ToF32(value)
  %1348 = add i32 %62, 48
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 22
  %1352 = shl nuw nsw i32 %1351, 5
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = shl i32 %1350, 4
  %1355 = and i32 %1354, 32752
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = lshr i32 %1350, 7
  %1358 = and i32 %1357, 32752
  %1359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1358)  ; LegacyF16ToF32(value)
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 3
  %1362 = fmul fast float %1361, 1.000000e+03
  %1363 = fmul fast float %357, %1362
  %1364 = call float @dx.op.unary.f32(i32 22, float %1363)  ; Frc(value)
  %1365 = fadd fast float %1364, %347
  %1366 = fmul fast float %358, %1362
  %1367 = call float @dx.op.unary.f32(i32 22, float %1366)  ; Frc(value)
  %1368 = fadd fast float %1367, %349
  %1369 = fmul fast float %1334, %1362
  %1370 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1371 = fmul fast float %1370, 0x401921FB60000000
  %1372 = fadd fast float %1371, %1353
  %1373 = call float @dx.op.unary.f32(i32 13, float %1372)  ; Sin(value)
  %1374 = call float @dx.op.unary.f32(i32 12, float %1372)  ; Cos(value)
  %1375 = fsub fast float -0.000000e+00, %1373
  %1376 = fadd fast float %1327, -5.000000e-01
  %1377 = fadd fast float %1328, -5.000000e-01
  %1378 = fmul fast float %1345, %1376
  %1379 = fmul fast float %1347, %1377
  %1380 = fadd fast float %1378, 5.000000e-01
  %1381 = fadd fast float %1379, 5.000000e-01
  %1382 = fmul fast float %1356, %1380
  %1383 = fmul fast float %1359, %1381
  %1384 = fmul fast float %1374, %1382
  %1385 = call float @dx.op.tertiary.f32(i32 46, float %1375, float %1383, float %1384)  ; FMad(a,b,c)
  %1386 = fmul fast float %1373, %1382
  %1387 = call float @dx.op.tertiary.f32(i32 46, float %1374, float %1383, float %1386)  ; FMad(a,b,c)
  %1388 = fadd fast float %1365, %1385
  %1389 = fadd fast float %1368, %1387
  %1390 = icmp ugt i32 %1339, 1
  %1391 = icmp ugt i32 %1337, 33554431
  %1392 = or i1 %1391, %1390
  br i1 %1392, label %1393, label %1418

; <label>:1393                                    ; preds = %1320
  %1394 = add i32 %62, 244
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = lshr i32 %1396, 16
  %1398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1397)  ; LegacyF16ToF32(value)
  %1399 = fmul fast float %1361, %1398
  %1400 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1401 = mul nuw nsw i32 %1339, %1340
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1400, %1402
  %1404 = call float @dx.op.unary.f32(i32 27, float %1403)  ; Round_ni(value)
  %1405 = fptoui float %1404 to i32
  %1406 = urem i32 %1405, %1339
  %1407 = udiv i32 %1405, %1340
  %1408 = call float @dx.op.unary.f32(i32 22, float %1388)  ; Frc(value)
  %1409 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1410 = uitofp i32 %1406 to float
  %1411 = uitofp i32 %1407 to float
  %1412 = fadd fast float %1408, %1410
  %1413 = fadd fast float %1409, %1411
  %1414 = uitofp i32 %1339 to float
  %1415 = uitofp i32 %1340 to float
  %1416 = fdiv fast float %1412, %1414
  %1417 = fdiv fast float %1413, %1415
  br label %1418

; <label>:1418                                    ; preds = %1393, %1320
  %1419 = phi float [ %1416, %1393 ], [ %1388, %1320 ]
  %1420 = phi float [ %1417, %1393 ], [ %1389, %1320 ]
  %1421 = and i32 %1314, 16777216
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1532, label %1423

; <label>:1423                                    ; preds = %1418
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1428 = fadd fast float %1425, %166
  %1429 = fadd fast float %1426, %167
  %1430 = fadd fast float %1427, %168
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = icmp eq i32 %63, 65535
  br i1 %1434, label %1529, label %1435

; <label>:1435                                    ; preds = %1423
  %1436 = lshr i32 %63, 1
  %1437 = shl i32 %1436, 2
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = and i32 %63, 1
  %1441 = icmp ne i32 %1440, 0
  %1442 = lshr i32 %1439, 16
  %1443 = and i32 %1439, 65535
  %1444 = select i1 %1441, i32 %1442, i32 %1443
  %1445 = icmp eq i32 %1444, 65535
  br i1 %1445, label %1525, label %1446

; <label>:1446                                    ; preds = %1435
  %1447 = mul nuw nsw i32 %1444, 40
  %1448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = add nuw nsw i32 %1447, 12
  %1453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = add nuw nsw i32 %1447, 24
  %1458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.f32 %1458, 0
  %1460 = extractvalue %dx.types.ResRet.f32 %1458, 1
  %1461 = extractvalue %dx.types.ResRet.f32 %1458, 2
  %1462 = add nuw nsw i32 %1447, 36
  %1463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = fsub fast float %1428, %1449
  %1466 = fsub fast float %1429, %1450
  %1467 = fsub fast float %1430, %1451
  %1468 = fmul fast float %1464, %1465
  %1469 = fmul fast float %1464, %1466
  %1470 = fmul fast float %1464, %1467
  %1471 = call float @dx.op.unary.f32(i32 27, float %1468)  ; Round_ni(value)
  %1472 = call float @dx.op.unary.f32(i32 27, float %1469)  ; Round_ni(value)
  %1473 = call float @dx.op.unary.f32(i32 27, float %1470)  ; Round_ni(value)
  %1474 = fadd fast float %1471, 5.000000e-01
  %1475 = fadd fast float %1472, 5.000000e-01
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = fmul fast float %1474, %1454
  %1478 = fmul fast float %1475, %1455
  %1479 = fmul fast float %1476, %1456
  %1480 = shl i32 %63, 2
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = add i32 %1482, 0
  %1484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1485 = call float @dx.op.unary.f32(i32 22, float %1477)  ; Frc(value)
  %1486 = call float @dx.op.unary.f32(i32 22, float %1478)  ; Frc(value)
  %1487 = call float @dx.op.unary.f32(i32 22, float %1479)  ; Frc(value)
  %1488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1484, %dx.types.Handle %57, float %1485, float %1486, float %1487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  %1492 = fmul fast float %1489, 1.023000e+03
  %1493 = fmul fast float %1490, 1.023000e+03
  %1494 = fmul fast float %1491, 1.023000e+03
  %1495 = fadd fast float %1492, 5.000000e-01
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = fadd fast float %1494, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 27, float %1495)  ; Round_ni(value)
  %1499 = call float @dx.op.unary.f32(i32 27, float %1496)  ; Round_ni(value)
  %1500 = call float @dx.op.unary.f32(i32 27, float %1497)  ; Round_ni(value)
  %1501 = fsub fast float %1468, %1471
  %1502 = fsub fast float %1469, %1472
  %1503 = fsub fast float %1470, %1473
  %1504 = fmul fast float %1501, 7.500000e-01
  %1505 = fmul fast float %1502, 7.500000e-01
  %1506 = fmul fast float %1503, 7.500000e-01
  %1507 = fadd fast float %1471, 1.250000e-01
  %1508 = fadd fast float %1507, %1504
  %1509 = fadd fast float %1508, %1498
  %1510 = fadd fast float %1472, 1.250000e-01
  %1511 = fadd fast float %1510, %1505
  %1512 = fadd fast float %1511, %1499
  %1513 = fadd fast float %1473, 1.250000e-01
  %1514 = fadd fast float %1513, %1506
  %1515 = fadd fast float %1514, %1500
  %1516 = fmul fast float %1509, %1459
  %1517 = fmul fast float %1512, %1460
  %1518 = fmul fast float %1515, %1461
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1522, %dx.types.Handle %55, float %1516, float %1517, float %1518, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  br label %1525

; <label>:1525                                    ; preds = %1446, %1435
  %1526 = phi float [ %1524, %1446 ], [ -1.000000e+00, %1435 ]
  %1527 = fadd fast float %1526, %1433
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1525, %1423
  %1530 = phi float [ %1528, %1525 ], [ %1433, %1423 ]
  %1531 = fmul fast float %1530, %502
  br label %1532

; <label>:1532                                    ; preds = %1529, %1418
  %1533 = phi float [ %1531, %1529 ], [ %502, %1418 ]
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 256
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1584, label %1538

; <label>:1538                                    ; preds = %1532
  %1539 = add i32 %62, 476
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %1541, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1543, %dx.types.Handle %108, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = add i32 %62, 116
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = shl i32 %1548, 4
  %1550 = and i32 %1549, 32752
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = lshr i32 %1548, 7
  %1553 = and i32 %1552, 32752
  %1554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1553)  ; LegacyF16ToF32(value)
  %1555 = fsub fast float 1.000000e+00, %1533
  %1556 = call float @dx.op.binary.f32(i32 35, float %1555, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1557 = bitcast float %1533 to i32
  %1558 = sitofp i32 %1557 to float
  %1559 = fadd fast float %1558, 0xC1CFBF8940000000
  %1560 = fmul fast float %1554, %1559
  %1561 = fadd fast float %1560, 0x41CFBF8940000000
  %1562 = fptosi float %1561 to i32
  %1563 = bitcast i32 %1562 to float
  %1564 = bitcast float %1556 to i32
  %1565 = sitofp i32 %1564 to float
  %1566 = fadd fast float %1565, 0xC1CFBF8940000000
  %1567 = fmul fast float %1566, %1554
  %1568 = fadd fast float %1567, 0x41CFBF8940000000
  %1569 = fptosi float %1568 to i32
  %1570 = bitcast i32 %1569 to float
  %1571 = fmul fast float %1563, %1551
  %1572 = fmul fast float %1570, %1551
  %1573 = fsub fast float %1556, %1571
  %1574 = fadd fast float %1572, %1556
  %1575 = call float @dx.op.unary.f32(i32 7, float %1573)  ; Saturate(value)
  %1576 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1577 = fsub fast float %1545, %1575
  %1578 = fsub fast float %1576, %1575
  %1579 = bitcast float %1578 to i32
  %1580 = sub nsw i32 2129859010, %1579
  %1581 = bitcast i32 %1580 to float
  %1582 = fmul fast float %1581, %1577
  %1583 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  br label %1584

; <label>:1584                                    ; preds = %1538, %1532
  %1585 = phi float [ %1583, %1538 ], [ %1533, %1532 ]
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 128
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1606, label %1590

; <label>:1590                                    ; preds = %1584
  %1591 = add i32 %62, 460
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = add i32 %1593, 0
  %1595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1595, %dx.types.Handle %108, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 524288
  %1601 = icmp ne i32 %1600, 0
  %1602 = fcmp fast ogt float %1597, 0x3FE0101020000000
  %1603 = select i1 %1602, float 1.000000e+00, float 0.000000e+00
  %1604 = select i1 %1601, float %1603, float %1597
  %1605 = fmul fast float %1604, %1585
  br label %1606

; <label>:1606                                    ; preds = %1590, %1584
  %1607 = phi float [ %1605, %1590 ], [ %1585, %1584 ]
  %1608 = fcmp fast ult float %1607, 0x3F70101020000000
  br i1 %1608, label %2371, label %1609

; <label>:1609                                    ; preds = %1606
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 16
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1812, label %1614

; <label>:1614                                    ; preds = %1609
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = add i32 %62, 412
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = add i32 %1619, 0
  %1621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1620, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1621, %dx.types.Handle %107, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.ResRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1622, 2
  %1626 = extractvalue %dx.types.ResRet.f32 %1622, 3
  %1627 = and i32 %1616, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = lshr i32 %1616, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1626, %1628
  %1633 = fadd fast float %1632, %1631
  %1634 = fmul fast float %1633, 0x3F70101000000000
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 512
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1647, label %1639

; <label>:1639                                    ; preds = %1614
  %1640 = add i32 %62, 492
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1640, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = add i32 %1642, 0
  %1644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1644, %dx.types.Handle %108, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1646 = extractvalue %dx.types.ResRet.f32 %1645, 0
  br label %1647

; <label>:1647                                    ; preds = %1639, %1614
  %1648 = phi float [ %1646, %1639 ], [ 1.000000e+00, %1614 ]
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 33554432
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1759, label %1653

; <label>:1653                                    ; preds = %1647
  %1654 = add i32 %62, 240
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = and i32 %1656, 65535
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = lshr i32 %1656, 16
  %1660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1659)  ; LegacyF16ToF32(value)
  %1661 = add i32 %62, 244
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 65535
  %1665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1664)  ; LegacyF16ToF32(value)
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = lshr i32 %1667, 24
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = and i32 %1667, 255
  %1672 = uitofp i32 %1671 to float
  %1673 = fmul fast float %1672, 0x3F70101020000000
  %1674 = lshr i32 %1667, 8
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = fmul fast float %1676, 0x3F70101020000000
  %1678 = lshr i32 %1667, 16
  %1679 = and i32 %1678, 255
  %1680 = uitofp i32 %1679 to float
  %1681 = fmul fast float %1680, 0x3F70101020000000
  %1682 = add i32 %62, 236
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = lshr i32 %1684, 24
  %1686 = uitofp i32 %1685 to float
  %1687 = fmul fast float %1686, 0x3F70101020000000
  %1688 = and i32 %1684, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101020000000
  %1691 = lshr i32 %1684, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = fmul fast float %1693, 0x3F70101020000000
  %1695 = lshr i32 %1684, 16
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3F70101020000000
  %1699 = bitcast float %1623 to i32
  %1700 = ashr i32 %1699, 1
  %1701 = sub nsw i32 1597463174, %1700
  %1702 = bitcast i32 %1701 to float
  %1703 = fmul fast float %1623, 5.000000e-01
  %1704 = fmul fast float %1702, %1702
  %1705 = fmul fast float %1704, %1703
  %1706 = fsub fast float 1.500000e+00, %1705
  %1707 = fmul fast float %1702, %1623
  %1708 = fmul fast float %1707, %1706
  %1709 = bitcast float %1624 to i32
  %1710 = ashr i32 %1709, 1
  %1711 = sub nsw i32 1597463174, %1710
  %1712 = bitcast i32 %1711 to float
  %1713 = fmul fast float %1624, 5.000000e-01
  %1714 = fmul fast float %1712, %1712
  %1715 = fmul fast float %1714, %1713
  %1716 = fsub fast float 1.500000e+00, %1715
  %1717 = fmul fast float %1712, %1624
  %1718 = fmul fast float %1717, %1716
  %1719 = bitcast float %1625 to i32
  %1720 = ashr i32 %1719, 1
  %1721 = sub nsw i32 1597463174, %1720
  %1722 = bitcast i32 %1721 to float
  %1723 = fmul fast float %1625, 5.000000e-01
  %1724 = fmul fast float %1722, %1722
  %1725 = fmul fast float %1724, %1723
  %1726 = fsub fast float 1.500000e+00, %1725
  %1727 = fmul fast float %1722, %1625
  %1728 = fmul fast float %1727, %1726
  %1729 = fsub fast float %1708, %1690
  %1730 = fsub fast float %1718, %1694
  %1731 = fsub fast float %1728, %1698
  %1732 = fmul fast float %1729, %1658
  %1733 = fmul fast float %1730, %1660
  %1734 = fmul fast float %1731, %1665
  %1735 = fadd fast float %1732, %1673
  %1736 = fadd fast float %1733, %1677
  %1737 = fadd fast float %1734, %1681
  %1738 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1739 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1740 = call float @dx.op.unary.f32(i32 7, float %1737)  ; Saturate(value)
  %1741 = fmul fast float %1738, %1738
  %1742 = fmul fast float %1739, %1739
  %1743 = fmul fast float %1740, %1740
  %1744 = fsub fast float %1741, %1623
  %1745 = fsub fast float %1742, %1624
  %1746 = fsub fast float %1743, %1625
  %1747 = fmul fast float %1744, %1648
  %1748 = fmul fast float %1745, %1648
  %1749 = fmul fast float %1746, %1648
  %1750 = fadd fast float %1747, %1623
  %1751 = fadd fast float %1748, %1624
  %1752 = fadd fast float %1749, %1625
  %1753 = fadd fast float %1670, %1634
  %1754 = fsub fast float %1753, %1687
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = fsub fast float %1755, %1634
  %1757 = fmul fast float %1756, %1648
  %1758 = fadd fast float %1757, %1634
  br label %1812

; <label>:1759                                    ; preds = %1647
  %1760 = and i32 %1650, 134217728
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1796, label %1762

; <label>:1762                                    ; preds = %1759
  %1763 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1764 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1765 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %1766 = fadd fast float %1763, -5.000000e-01
  %1767 = fadd fast float %1764, -5.000000e-01
  %1768 = fadd fast float %1765, -5.000000e-01
  %1769 = fmul fast float %1766, %1648
  %1770 = fmul fast float %1767, %1648
  %1771 = fmul fast float %1768, %1648
  %1772 = fadd fast float %1769, 5.000000e-01
  %1773 = fadd fast float %1770, 5.000000e-01
  %1774 = fadd fast float %1771, 5.000000e-01
  %1775 = call float @dx.op.unary.f32(i32 24, float %1623)  ; Sqrt(value)
  %1776 = call float @dx.op.unary.f32(i32 24, float %1624)  ; Sqrt(value)
  %1777 = call float @dx.op.unary.f32(i32 24, float %1625)  ; Sqrt(value)
  %1778 = fmul fast float %1772, 2.000000e+00
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = fmul fast float %1779, %1775
  %1781 = fadd fast float %1780, %1778
  %1782 = fmul fast float %1781, %1775
  %1783 = fmul fast float %1773, 2.000000e+00
  %1784 = fsub fast float 1.000000e+00, %1783
  %1785 = fmul fast float %1784, %1776
  %1786 = fadd fast float %1785, %1783
  %1787 = fmul fast float %1786, %1776
  %1788 = fmul fast float %1774, 2.000000e+00
  %1789 = fsub fast float 1.000000e+00, %1788
  %1790 = fmul fast float %1789, %1777
  %1791 = fadd fast float %1790, %1788
  %1792 = fmul fast float %1791, %1777
  %1793 = fmul fast float %1782, %1782
  %1794 = fmul fast float %1787, %1787
  %1795 = fmul fast float %1792, %1792
  br label %1812

; <label>:1796                                    ; preds = %1759
  %1797 = fmul fast float %334, %334
  %1798 = fmul fast float %338, %338
  %1799 = fmul fast float %342, %342
  %1800 = fadd fast float %1797, -1.000000e+00
  %1801 = fadd fast float %1798, -1.000000e+00
  %1802 = fadd fast float %1799, -1.000000e+00
  %1803 = fmul fast float %1648, %1800
  %1804 = fmul fast float %1648, %1801
  %1805 = fmul fast float %1648, %1802
  %1806 = fadd fast float %1803, 1.000000e+00
  %1807 = fadd fast float %1804, 1.000000e+00
  %1808 = fadd fast float %1805, 1.000000e+00
  %1809 = fmul fast float %1806, %1623
  %1810 = fmul fast float %1807, %1624
  %1811 = fmul fast float %1808, %1625
  br label %1812

; <label>:1812                                    ; preds = %1796, %1762, %1653, %1609
  %1813 = phi float [ %1758, %1653 ], [ %1634, %1762 ], [ %1634, %1796 ], [ 0x3FA23C0BE0000000, %1609 ]
  %1814 = phi float [ %1750, %1653 ], [ %1793, %1762 ], [ %1809, %1796 ], [ 1.000000e+00, %1609 ]
  %1815 = phi float [ %1751, %1653 ], [ %1794, %1762 ], [ %1810, %1796 ], [ 1.000000e+00, %1609 ]
  %1816 = phi float [ %1752, %1653 ], [ %1795, %1762 ], [ %1811, %1796 ], [ 1.000000e+00, %1609 ]
  %1817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.i32 %1817, 1
  %1819 = and i32 %1818, 1
  %1820 = icmp ne i32 %1819, 0
  %1821 = add i32 %62, 356
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 32
  %1825 = icmp ne i32 %1824, 0
  %1826 = and i1 %1820, %1825
  %1827 = select i1 %1826, float 1.000000e+00, float %1814
  %1828 = select i1 %1826, float 0x3FD3333340000000, float %1815
  %1829 = select i1 %1826, float 0x3FD3333340000000, float %1816
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 32
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1906, label %1834

; <label>:1834                                    ; preds = %1812
  %1835 = add i32 %62, 108
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = add i32 %62, 428
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = add i32 %1840, 0
  %1842 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1841, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1842, %dx.types.Handle %107, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = extractvalue %dx.types.ResRet.f32 %1843, 3
  %1848 = and i32 %1837, 255
  %1849 = uitofp i32 %1848 to float
  %1850 = lshr i32 %1837, 8
  %1851 = and i32 %1850, 255
  %1852 = uitofp i32 %1851 to float
  %1853 = lshr i32 %1837, 16
  %1854 = and i32 %1853, 255
  %1855 = uitofp i32 %1854 to float
  %1856 = fmul fast float %1855, 0x3F70101000000000
  %1857 = fmul fast float %1844, %1849
  %1858 = fadd fast float %1857, %1852
  %1859 = fmul fast float %1858, 0x3F70101000000000
  %1860 = fadd fast float %1845, -5.000000e-01
  %1861 = fadd fast float %1847, -5.000000e-01
  %1862 = fmul fast float %1860, %1856
  %1863 = fmul fast float %1861, %1856
  %1864 = fadd fast float %1862, 5.000000e-01
  %1865 = fadd fast float %1863, 5.000000e-01
  %1866 = fmul fast float %1864, 2.000000e+00
  %1867 = fadd fast float %1866, -1.000000e+00
  %1868 = fmul fast float %1865, 2.000000e+00
  %1869 = fadd fast float %1868, -1.000000e+00
  %1870 = fadd fast float %1867, %1869
  %1871 = fmul fast float %1870, 5.000000e-01
  %1872 = fsub fast float %1867, %1869
  %1873 = fmul fast float %1872, 5.000000e-01
  %1874 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1875 = fsub fast float 1.000000e+00, %1874
  %1876 = call float @dx.op.unary.f32(i32 6, float %1873)  ; FAbs(value)
  %1877 = fsub fast float %1875, %1876
  %1878 = call float @dx.op.dot3.f32(i32 55, float %1871, float %1873, float %1877, float %1871, float %1873, float %1877)  ; Dot3(ax,ay,az,bx,by,bz)
  %1879 = call float @dx.op.unary.f32(i32 25, float %1878)  ; Rsqrt(value)
  %1880 = fmul fast float %1871, %1879
  %1881 = fmul fast float %1873, %1879
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 67108864
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1902, label %1886

; <label>:1886                                    ; preds = %1834
  %1887 = add i32 %62, 296
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 65535
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %1893, 65535
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = lshr i32 %1889, 16
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = fsub fast float %1859, %1897
  %1899 = fmul fast float %1898, %1891
  %1900 = fadd fast float %1899, %1895
  %1901 = call float @dx.op.unary.f32(i32 7, float %1900)  ; Saturate(value)
  br label %1902

; <label>:1902                                    ; preds = %1886, %1834
  %1903 = phi float [ %1901, %1886 ], [ %1859, %1834 ]
  %1904 = call float @dx.op.dot2.f32(i32 54, float %1880, float %1881, float %1323, float %1324)  ; Dot2(ax,ay,bx,by)
  %1905 = call float @dx.op.dot2.f32(i32 54, float %1880, float %1881, float %1325, float %1326)  ; Dot2(ax,ay,bx,by)
  br label %1906

; <label>:1906                                    ; preds = %1902, %1812
  %1907 = phi float [ %1903, %1902 ], [ 0x3FD6666660000000, %1812 ]
  %1908 = phi float [ %1904, %1902 ], [ 0.000000e+00, %1812 ]
  %1909 = phi float [ %1905, %1902 ], [ 0.000000e+00, %1812 ]
  %1910 = phi float [ %1846, %1902 ], [ 1.000000e+00, %1812 ]
  %1911 = add i32 %62, 176
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = lshr i32 %1913, 22
  %1915 = shl nuw nsw i32 %1914, 5
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 64
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1954, label %1921

; <label>:1921                                    ; preds = %1906
  %1922 = add i32 %62, 444
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = add i32 %1924, 0
  %1926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 131072
  %1930 = icmp eq i32 %1929, 0
  %1931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1926, %dx.types.Handle %107, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1932 = extractvalue %dx.types.ResRet.f32 %1931, 0
  %1933 = extractvalue %dx.types.ResRet.f32 %1931, 1
  %1934 = extractvalue %dx.types.ResRet.f32 %1931, 2
  %1935 = fmul fast float %1932, %322
  %1936 = fmul fast float %1933, %325
  %1937 = fmul fast float %1934, %328
  br i1 %1930, label %1944, label %1938

; <label>:1938                                    ; preds = %1921
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = fmul fast float %1940, %1935
  %1942 = fmul fast float %1940, %1936
  %1943 = fmul fast float %1940, %1937
  br label %1944

; <label>:1944                                    ; preds = %1938, %1921
  %1945 = phi float [ %1941, %1938 ], [ %1935, %1921 ]
  %1946 = phi float [ %1942, %1938 ], [ %1936, %1921 ]
  %1947 = phi float [ %1943, %1938 ], [ %1937, %1921 ]
  %1948 = fmul fast float %1945, %1916
  %1949 = select i1 %260, float %1948, float %1945
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1949, float %1946, float %1947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = select i1 %260, float 0.000000e+00, float %1945
  %1952 = select i1 %260, float %1950, float %1946
  %1953 = select i1 %260, float 0.000000e+00, float %1947
  br label %1954

; <label>:1954                                    ; preds = %1944, %1906
  %1955 = phi float [ %1951, %1944 ], [ 0.000000e+00, %1906 ]
  %1956 = phi float [ %1952, %1944 ], [ 0.000000e+00, %1906 ]
  %1957 = phi float [ %1953, %1944 ], [ 0.000000e+00, %1906 ]
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 1024
  %1961 = icmp eq i32 %1960, 0
  br i1 %1961, label %1992, label %1962

; <label>:1962                                    ; preds = %1954
  %1963 = add i32 %62, 168
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 255
  %1967 = uitofp i32 %1966 to float
  %1968 = fmul fast float %1967, 0x3F70101020000000
  %1969 = lshr i32 %1965, 8
  %1970 = and i32 %1969, 255
  %1971 = uitofp i32 %1970 to float
  %1972 = fmul fast float %1971, 0x3F70101020000000
  %1973 = lshr i32 %1965, 16
  %1974 = and i32 %1973, 255
  %1975 = uitofp i32 %1974 to float
  %1976 = fmul fast float %1975, 0x3F70101020000000
  %1977 = fmul fast float %1968, %1968
  %1978 = fmul fast float %1972, %1972
  %1979 = fmul fast float %1976, %1976
  %1980 = add i32 %62, 508
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %108, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = fmul fast float %1977, %1986
  %1990 = fmul fast float %1978, %1987
  %1991 = fmul fast float %1979, %1988
  br label %1992

; <label>:1992                                    ; preds = %1962, %1954
  %1993 = phi float [ %1989, %1962 ], [ 0.000000e+00, %1954 ]
  %1994 = phi float [ %1990, %1962 ], [ 0.000000e+00, %1954 ]
  %1995 = phi float [ %1991, %1962 ], [ 0.000000e+00, %1954 ]
  %1996 = fcmp fast ogt float %1993, 0.000000e+00
  %1997 = fcmp fast ogt float %1994, 0.000000e+00
  %1998 = fcmp fast ogt float %1995, 0.000000e+00
  %1999 = call float @dx.op.unary.f32(i32 23, float %1993)  ; Log(value)
  %2000 = call float @dx.op.unary.f32(i32 23, float %1994)  ; Log(value)
  %2001 = call float @dx.op.unary.f32(i32 23, float %1995)  ; Log(value)
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = lshr i32 %2003, 7
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fmul fast float %1999, 0xBFE62E4300000000
  %2008 = fmul fast float %2007, %2006
  %2009 = fmul fast float %2000, 0xBFE62E4300000000
  %2010 = fmul fast float %2009, %2006
  %2011 = fmul fast float %2001, 0xBFE62E4300000000
  %2012 = fmul fast float %2011, %2006
  %2013 = select i1 %1996, float %2008, float 1.270000e+02
  %2014 = select i1 %1997, float %2010, float 1.270000e+02
  %2015 = select i1 %1998, float %2012, float 1.270000e+02
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 26624
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2077, label %2020

; <label>:2020                                    ; preds = %1992
  %2021 = add i32 %62, 524
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %108, float %1419, float %1420, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 3
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 1048576
  %2033 = icmp ne i32 %2032, 0
  %2034 = and i32 %2031, 8192
  %2035 = icmp eq i32 %2034, 0
  br i1 %2035, label %2050, label %2036

; <label>:2036                                    ; preds = %2020
  %2037 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2038 = select i1 %2033, float %2037, float %2028
  %2039 = select i1 %2033, float %2027, float %2028
  %2040 = add i32 %62, 112
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = lshr i32 %2042, 16
  %2044 = and i32 %2043, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = fmul fast float %2045, 0x3F80101020000000
  %2047 = fmul fast float %2046, %2039
  %2048 = fmul fast float %2046, %2028
  %2049 = fmul fast float %2046, %2038
  br label %2050

; <label>:2050                                    ; preds = %2036, %2020
  %2051 = phi float [ %2047, %2036 ], [ 0.000000e+00, %2020 ]
  %2052 = phi float [ %2048, %2036 ], [ 0.000000e+00, %2020 ]
  %2053 = phi float [ %2049, %2036 ], [ 0.000000e+00, %2020 ]
  %2054 = and i32 %2031, 2048
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2064, label %2056

; <label>:2056                                    ; preds = %2050
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = shl i32 %2058, 4
  %2060 = and i32 %2059, 32752
  %2061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2060)  ; LegacyF16ToF32(value)
  %2062 = fmul fast float %2061, %2029
  %2063 = call float @dx.op.binary.f32(i32 35, float %2062, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2064

; <label>:2064                                    ; preds = %2056, %2050
  %2065 = phi float [ %2063, %2056 ], [ 0x3F70101020000000, %2050 ]
  %2066 = and i32 %2031, 16384
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2077, label %2068

; <label>:2068                                    ; preds = %2064
  %2069 = add i32 %62, 112
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = lshr i32 %2071, 24
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2027, 0x3F70101020000000
  %2075 = select i1 %2033, float 0x3F70101020000000, float %2074
  %2076 = fmul fast float %2075, %2073
  br label %2077

; <label>:2077                                    ; preds = %2068, %2064, %1992
  %2078 = phi float [ %2051, %2068 ], [ %2051, %2064 ], [ 0.000000e+00, %1992 ]
  %2079 = phi float [ %2052, %2068 ], [ %2052, %2064 ], [ 0.000000e+00, %1992 ]
  %2080 = phi float [ %2053, %2068 ], [ %2053, %2064 ], [ 0.000000e+00, %1992 ]
  %2081 = phi float [ %2065, %2068 ], [ %2065, %2064 ], [ 0x3F70101020000000, %1992 ]
  %2082 = phi float [ %2076, %2068 ], [ 0.000000e+00, %2064 ], [ 0.000000e+00, %1992 ]
  %2083 = add i32 %62, 112
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 255
  %2087 = uitofp i32 %2086 to float
  %2088 = lshr i32 %2085, 8
  %2089 = and i32 %2088, 255
  %2090 = uitofp i32 %2089 to float
  %2091 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1828, float %1829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2092 = fmul fast float %2090, %2091
  %2093 = fadd fast float %2092, %2087
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  br i1 %1311, label %2096, label %2131

; <label>:2096                                    ; preds = %2077
  %2097 = fmul fast float %2081, 2.000000e+00
  %2098 = fcmp fast olt float %2013, 1.270000e+02
  %2099 = fcmp fast olt float %2014, 1.270000e+02
  %2100 = fcmp fast olt float %2015, 1.270000e+02
  %2101 = fmul fast float %2013, 0xBFF7154760000000
  %2102 = fmul fast float %2101, %2097
  %2103 = fmul fast float %2014, 0xBFF7154760000000
  %2104 = fmul fast float %2103, %2097
  %2105 = fmul fast float %2015, 0xBFF7154760000000
  %2106 = fmul fast float %2105, %2097
  %2107 = call float @dx.op.unary.f32(i32 21, float %2102)  ; Exp(value)
  %2108 = call float @dx.op.unary.f32(i32 21, float %2104)  ; Exp(value)
  %2109 = call float @dx.op.unary.f32(i32 21, float %2106)  ; Exp(value)
  %2110 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2111 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2113 = fadd fast float %2110, -1.000000e+00
  %2114 = select i1 %2098, float %2113, float -1.000000e+00
  %2115 = fadd fast float %2111, -1.000000e+00
  %2116 = select i1 %2099, float %2115, float -1.000000e+00
  %2117 = fadd fast float %2112, -1.000000e+00
  %2118 = select i1 %2100, float %2117, float -1.000000e+00
  %2119 = fmul fast float %2114, %1607
  %2120 = fmul fast float %2116, %1607
  %2121 = fmul fast float %2118, %1607
  %2122 = fadd fast float %2119, 1.000000e+00
  %2123 = fadd fast float %2120, 1.000000e+00
  %2124 = fadd fast float %2121, 1.000000e+00
  %2125 = fmul fast float %2122, %1291
  %2126 = fmul fast float %2123, %1292
  %2127 = fmul fast float %2124, %1293
  %2128 = fmul fast float %2122, %1294
  %2129 = fmul fast float %2123, %1295
  %2130 = fmul fast float %2124, %1296
  br label %2131

; <label>:2131                                    ; preds = %2096, %2077
  %2132 = phi float [ %2125, %2096 ], [ %1291, %2077 ]
  %2133 = phi float [ %2126, %2096 ], [ %1292, %2077 ]
  %2134 = phi float [ %2127, %2096 ], [ %1293, %2077 ]
  %2135 = phi float [ %2128, %2096 ], [ %1294, %2077 ]
  %2136 = phi float [ %2129, %2096 ], [ %1295, %2077 ]
  %2137 = phi float [ %2130, %2096 ], [ %1296, %2077 ]
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = and i32 %2139, 3
  %2141 = icmp eq i32 %2140, 3
  br i1 %2141, label %2220, label %2142

; <label>:2142                                    ; preds = %2131
  %2143 = and i32 %2139, 16
  %2144 = icmp ne i32 %2143, 0
  %2145 = select i1 %2144, float %1607, float 0.000000e+00
  %2146 = icmp eq i32 %2140, 0
  br i1 %2146, label %2147, label %2175

; <label>:2147                                    ; preds = %2142
  %2148 = and i32 %2139, 64
  %2149 = icmp ne i32 %2148, 0
  %2150 = select i1 %2149, float %1607, float 0.000000e+00
  %2151 = fsub fast float %1827, %2132
  %2152 = fsub fast float %1828, %2133
  %2153 = fsub fast float %1829, %2134
  %2154 = fmul fast float %2145, %2151
  %2155 = fmul fast float %2145, %2152
  %2156 = fmul fast float %2145, %2153
  %2157 = fadd fast float %2154, %2132
  %2158 = fadd fast float %2155, %2133
  %2159 = fadd fast float %2156, %2134
  %2160 = fsub fast float %1813, %1303
  %2161 = fmul fast float %2145, %2160
  %2162 = fadd fast float %2161, %1303
  %2163 = fsub fast float %1955, %2135
  %2164 = fsub fast float %1956, %2136
  %2165 = fsub fast float %1957, %2137
  %2166 = fmul fast float %2150, %2163
  %2167 = fmul fast float %2150, %2164
  %2168 = fmul fast float %2150, %2165
  %2169 = fadd fast float %2166, %2135
  %2170 = fadd fast float %2167, %2136
  %2171 = fadd fast float %2168, %2137
  %2172 = fsub fast float %2095, %1309
  %2173 = fmul fast float %2145, %2172
  %2174 = fadd fast float %2173, %1309
  br label %2220

; <label>:2175                                    ; preds = %2142
  %2176 = icmp eq i32 %2140, 1
  br i1 %2176, label %2177, label %2190

; <label>:2177                                    ; preds = %2175
  %2178 = fadd fast float %1827, -1.000000e+00
  %2179 = fadd fast float %1828, -1.000000e+00
  %2180 = fadd fast float %1829, -1.000000e+00
  %2181 = fmul fast float %2145, %2178
  %2182 = fmul fast float %2145, %2179
  %2183 = fmul fast float %2145, %2180
  %2184 = fadd fast float %2181, 1.000000e+00
  %2185 = fadd fast float %2182, 1.000000e+00
  %2186 = fadd fast float %2183, 1.000000e+00
  %2187 = fmul fast float %2184, %2132
  %2188 = fmul fast float %2185, %2133
  %2189 = fmul fast float %2186, %2134
  br label %2220

; <label>:2190                                    ; preds = %2175
  %2191 = icmp eq i32 %2140, 2
  br i1 %2191, label %2192, label %2220

; <label>:2192                                    ; preds = %2190
  %2193 = call float @dx.op.unary.f32(i32 24, float %1827)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %1828)  ; Sqrt(value)
  %2195 = call float @dx.op.unary.f32(i32 24, float %1829)  ; Sqrt(value)
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fadd fast float %2195, -5.000000e-01
  %2199 = fmul fast float %2196, %2145
  %2200 = fmul fast float %2197, %2145
  %2201 = fmul fast float %2198, %2145
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = fadd fast float %2201, 5.000000e-01
  %2205 = fmul fast float %2202, 2.000000e+00
  %2206 = fsub fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2206, %2132
  %2208 = fadd fast float %2207, %2205
  %2209 = fmul fast float %2208, %2132
  %2210 = fmul fast float %2203, 2.000000e+00
  %2211 = fsub fast float 1.000000e+00, %2210
  %2212 = fmul fast float %2211, %2133
  %2213 = fadd fast float %2212, %2210
  %2214 = fmul fast float %2213, %2133
  %2215 = fmul fast float %2204, 2.000000e+00
  %2216 = fsub fast float 1.000000e+00, %2215
  %2217 = fmul fast float %2216, %2134
  %2218 = fadd fast float %2217, %2215
  %2219 = fmul fast float %2218, %2134
  br label %2220

; <label>:2220                                    ; preds = %2192, %2190, %2177, %2147, %2131
  %2221 = phi float [ %2132, %2131 ], [ %2209, %2192 ], [ %2132, %2190 ], [ %2187, %2177 ], [ %2157, %2147 ]
  %2222 = phi float [ %2133, %2131 ], [ %2214, %2192 ], [ %2133, %2190 ], [ %2188, %2177 ], [ %2158, %2147 ]
  %2223 = phi float [ %2134, %2131 ], [ %2219, %2192 ], [ %2134, %2190 ], [ %2189, %2177 ], [ %2159, %2147 ]
  %2224 = phi float [ %2135, %2131 ], [ %2135, %2192 ], [ %2135, %2190 ], [ %2135, %2177 ], [ %2169, %2147 ]
  %2225 = phi float [ %2136, %2131 ], [ %2136, %2192 ], [ %2136, %2190 ], [ %2136, %2177 ], [ %2170, %2147 ]
  %2226 = phi float [ %2137, %2131 ], [ %2137, %2192 ], [ %2137, %2190 ], [ %2137, %2177 ], [ %2171, %2147 ]
  %2227 = phi float [ %1303, %2131 ], [ %1303, %2192 ], [ %1303, %2190 ], [ %1303, %2177 ], [ %2162, %2147 ]
  %2228 = phi float [ %1309, %2131 ], [ %1309, %2192 ], [ %1309, %2190 ], [ %1309, %2177 ], [ %2174, %2147 ]
  %2229 = and i32 %2139, 12
  %2230 = icmp eq i32 %2229, 12
  br i1 %2230, label %2371, label %2231

; <label>:2231                                    ; preds = %2220
  %2232 = and i32 %2139, 2097184
  %2233 = icmp eq i32 %2232, 2097184
  %2234 = select i1 %2233, float %1607, float 0.000000e+00
  %2235 = and i32 %2139, 4194336
  %2236 = icmp eq i32 %2235, 4194336
  %2237 = select i1 %2236, float %1607, float 0.000000e+00
  %2238 = and i32 %2139, 8388640
  %2239 = icmp eq i32 %2238, 8388640
  %2240 = select i1 %2239, float %1607, float 0.000000e+00
  %2241 = and i32 %2139, 1024
  %2242 = icmp ne i32 %2241, 0
  %2243 = select i1 %2242, float %1607, float 0.000000e+00
  %2244 = and i32 %2139, 2048
  %2245 = icmp ne i32 %2244, 0
  %2246 = select i1 %2245, float %1607, float 0.000000e+00
  %2247 = and i32 %2139, 8192
  %2248 = icmp ne i32 %2247, 0
  %2249 = select i1 %2248, float %1607, float 0.000000e+00
  %2250 = and i32 %2139, 16384
  %2251 = icmp ne i32 %2250, 0
  %2252 = select i1 %2251, float %1607, float 0.000000e+00
  %2253 = icmp eq i32 %2229, 0
  br i1 %2253, label %2254, label %2291

; <label>:2254                                    ; preds = %2231
  %2255 = fsub fast float %1908, %1289
  %2256 = fsub fast float %1909, %1290
  %2257 = fmul fast float %2234, %2255
  %2258 = fmul fast float %2234, %2256
  %2259 = fadd fast float %2257, %1289
  %2260 = fadd fast float %2258, %1290
  %2261 = fsub fast float %1910, %1306
  %2262 = fmul fast float %2237, %2261
  %2263 = fadd fast float %2262, %1306
  %2264 = fsub fast float %1907, %1305
  %2265 = fmul fast float %2240, %2264
  %2266 = fadd fast float %2265, %1305
  %2267 = fsub fast float %2013, %1300
  %2268 = fsub fast float %2014, %1301
  %2269 = fsub fast float %2015, %1302
  %2270 = fmul fast float %2243, %2267
  %2271 = fmul fast float %2243, %2268
  %2272 = fmul fast float %2243, %2269
  %2273 = fadd fast float %2270, %1300
  %2274 = fadd fast float %2271, %1301
  %2275 = fadd fast float %2272, %1302
  %2276 = fsub fast float %2081, %1307
  %2277 = fmul fast float %2246, %2276
  %2278 = fadd fast float %2277, %1307
  %2279 = fsub fast float %2078, %1297
  %2280 = fsub fast float %2079, %1298
  %2281 = fsub fast float %2080, %1299
  %2282 = fmul fast float %2249, %2279
  %2283 = fmul fast float %2249, %2280
  %2284 = fmul fast float %2249, %2281
  %2285 = fadd fast float %2282, %1297
  %2286 = fadd fast float %2283, %1298
  %2287 = fadd fast float %2284, %1299
  %2288 = fsub fast float %2082, %1308
  %2289 = fmul fast float %2252, %2288
  %2290 = fadd fast float %2289, %1308
  br label %2371

; <label>:2291                                    ; preds = %2231
  %2292 = icmp eq i32 %2229, 4
  br i1 %2292, label %2293, label %2341

; <label>:2293                                    ; preds = %2291
  %2294 = fmul fast float %2234, %1908
  %2295 = fmul fast float %2234, %1909
  %2296 = fadd fast float %2294, %1289
  %2297 = fadd fast float %2295, %1290
  %2298 = call float @dx.op.binary.f32(i32 36, float %1306, float %1910)  ; FMin(a,b)
  %2299 = fsub fast float %2298, %1306
  %2300 = fmul fast float %2299, %2237
  %2301 = fadd fast float %2300, %1306
  %2302 = fadd fast float %1907, %1305
  %2303 = fmul fast float %2302, 0x3FF337FAE0000000
  %2304 = fmul fast float %1305, %1305
  %2305 = fmul fast float %1907, %1907
  %2306 = fadd fast float %2305, %2304
  %2307 = fmul fast float %2306, 0x3FE5152B00000000
  %2308 = fmul fast float %1305, 0xBFCC1F85E0000000
  %2309 = fmul fast float %2308, %1907
  %2310 = fadd fast float %2309, 0xBFE1363700000000
  %2311 = fadd fast float %2310, %2303
  %2312 = fsub fast float %2311, %2307
  %2313 = fmul fast float %2302, 0x3FBA6F0D00000000
  %2314 = fmul fast float %2306, 0x3FD0432880000000
  %2315 = fmul fast float %1305, 0xBFEF110800000000
  %2316 = fmul fast float %2315, %1907
  %2317 = fadd fast float %2316, 1.000000e+00
  %2318 = fsub fast float %2317, %2313
  %2319 = fadd fast float %2318, %2314
  %2320 = fdiv fast float %2312, %2319
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  %2322 = fsub fast float %2321, %1305
  %2323 = fmul fast float %2322, %2240
  %2324 = fadd fast float %2323, %1305
  %2325 = fmul fast float %2243, %2013
  %2326 = fmul fast float %2243, %2014
  %2327 = fmul fast float %2243, %2015
  %2328 = fadd fast float %2325, %1300
  %2329 = fadd fast float %2326, %1301
  %2330 = fadd fast float %2327, %1302
  %2331 = fmul fast float %2246, %2081
  %2332 = fadd fast float %2331, %1307
  %2333 = fmul fast float %2249, %2078
  %2334 = fmul fast float %2249, %2079
  %2335 = fmul fast float %2249, %2080
  %2336 = fadd fast float %2333, %1297
  %2337 = fadd fast float %2334, %1298
  %2338 = fadd fast float %2335, %1299
  %2339 = fmul fast float %2252, %2082
  %2340 = fadd fast float %2339, %1308
  br label %2371

; <label>:2341                                    ; preds = %2291
  %2342 = icmp eq i32 %2229, 8
  br i1 %2342, label %2343, label %2371

; <label>:2343                                    ; preds = %2341
  %2344 = fmul fast float %2234, %1908
  %2345 = fmul fast float %2234, %1909
  %2346 = fadd fast float %2344, %1289
  %2347 = fadd fast float %2345, %1290
  %2348 = call float @dx.op.binary.f32(i32 36, float %1306, float %1910)  ; FMin(a,b)
  %2349 = fsub fast float %2348, %1306
  %2350 = fmul fast float %2349, %2237
  %2351 = fadd fast float %2350, %1306
  %2352 = fsub fast float %1907, %1305
  %2353 = fmul fast float %2240, %2352
  %2354 = fadd fast float %2353, %1305
  %2355 = fmul fast float %2243, %2013
  %2356 = fmul fast float %2243, %2014
  %2357 = fmul fast float %2243, %2015
  %2358 = fadd fast float %2355, %1300
  %2359 = fadd fast float %2356, %1301
  %2360 = fadd fast float %2357, %1302
  %2361 = fmul fast float %2246, %2081
  %2362 = fadd fast float %2361, %1307
  %2363 = fmul fast float %2249, %2078
  %2364 = fmul fast float %2249, %2079
  %2365 = fmul fast float %2249, %2080
  %2366 = fadd fast float %2363, %1297
  %2367 = fadd fast float %2364, %1298
  %2368 = fadd fast float %2365, %1299
  %2369 = fmul fast float %2252, %2082
  %2370 = fadd fast float %2369, %1308
  br label %2371

; <label>:2371                                    ; preds = %2343, %2341, %2293, %2254, %2220, %1606, %1310, %1288
  %2372 = phi float [ %1289, %2220 ], [ %1289, %1606 ], [ %1289, %1288 ], [ %2346, %2343 ], [ %1289, %2341 ], [ %2296, %2293 ], [ %2259, %2254 ], [ %1289, %1310 ]
  %2373 = phi float [ %1290, %2220 ], [ %1290, %1606 ], [ %1290, %1288 ], [ %2347, %2343 ], [ %1290, %2341 ], [ %2297, %2293 ], [ %2260, %2254 ], [ %1290, %1310 ]
  %2374 = phi float [ %2221, %2220 ], [ %1291, %1606 ], [ %1291, %1288 ], [ %2221, %2343 ], [ %2221, %2341 ], [ %2221, %2293 ], [ %2221, %2254 ], [ %1291, %1310 ]
  %2375 = phi float [ %2222, %2220 ], [ %1292, %1606 ], [ %1292, %1288 ], [ %2222, %2343 ], [ %2222, %2341 ], [ %2222, %2293 ], [ %2222, %2254 ], [ %1292, %1310 ]
  %2376 = phi float [ %2223, %2220 ], [ %1293, %1606 ], [ %1293, %1288 ], [ %2223, %2343 ], [ %2223, %2341 ], [ %2223, %2293 ], [ %2223, %2254 ], [ %1293, %1310 ]
  %2377 = phi float [ %2224, %2220 ], [ %1294, %1606 ], [ %1294, %1288 ], [ %2224, %2343 ], [ %2224, %2341 ], [ %2224, %2293 ], [ %2224, %2254 ], [ %1294, %1310 ]
  %2378 = phi float [ %2225, %2220 ], [ %1295, %1606 ], [ %1295, %1288 ], [ %2225, %2343 ], [ %2225, %2341 ], [ %2225, %2293 ], [ %2225, %2254 ], [ %1295, %1310 ]
  %2379 = phi float [ %2226, %2220 ], [ %1296, %1606 ], [ %1296, %1288 ], [ %2226, %2343 ], [ %2226, %2341 ], [ %2226, %2293 ], [ %2226, %2254 ], [ %1296, %1310 ]
  %2380 = phi float [ %1297, %2220 ], [ %1297, %1606 ], [ %1297, %1288 ], [ %2366, %2343 ], [ %1297, %2341 ], [ %2336, %2293 ], [ %2285, %2254 ], [ %1297, %1310 ]
  %2381 = phi float [ %1298, %2220 ], [ %1298, %1606 ], [ %1298, %1288 ], [ %2367, %2343 ], [ %1298, %2341 ], [ %2337, %2293 ], [ %2286, %2254 ], [ %1298, %1310 ]
  %2382 = phi float [ %1299, %2220 ], [ %1299, %1606 ], [ %1299, %1288 ], [ %2368, %2343 ], [ %1299, %2341 ], [ %2338, %2293 ], [ %2287, %2254 ], [ %1299, %1310 ]
  %2383 = phi float [ %1300, %2220 ], [ %1300, %1606 ], [ %1300, %1288 ], [ %2358, %2343 ], [ %1300, %2341 ], [ %2328, %2293 ], [ %2273, %2254 ], [ %1300, %1310 ]
  %2384 = phi float [ %1301, %2220 ], [ %1301, %1606 ], [ %1301, %1288 ], [ %2359, %2343 ], [ %1301, %2341 ], [ %2329, %2293 ], [ %2274, %2254 ], [ %1301, %1310 ]
  %2385 = phi float [ %1302, %2220 ], [ %1302, %1606 ], [ %1302, %1288 ], [ %2360, %2343 ], [ %1302, %2341 ], [ %2330, %2293 ], [ %2275, %2254 ], [ %1302, %1310 ]
  %2386 = phi float [ %2227, %2220 ], [ %1303, %1606 ], [ %1303, %1288 ], [ %2227, %2343 ], [ %2227, %2341 ], [ %2227, %2293 ], [ %2227, %2254 ], [ %1303, %1310 ]
  %2387 = phi float [ %1305, %2220 ], [ %1305, %1606 ], [ %1305, %1288 ], [ %2354, %2343 ], [ %1305, %2341 ], [ %2324, %2293 ], [ %2266, %2254 ], [ %1305, %1310 ]
  %2388 = phi float [ %1306, %2220 ], [ %1306, %1606 ], [ %1306, %1288 ], [ %2351, %2343 ], [ %1306, %2341 ], [ %2301, %2293 ], [ %2263, %2254 ], [ %1306, %1310 ]
  %2389 = phi float [ %1307, %2220 ], [ %1307, %1606 ], [ %1307, %1288 ], [ %2362, %2343 ], [ %1307, %2341 ], [ %2332, %2293 ], [ %2278, %2254 ], [ %1307, %1310 ]
  %2390 = phi float [ %1308, %2220 ], [ %1308, %1606 ], [ %1308, %1288 ], [ %2370, %2343 ], [ %1308, %2341 ], [ %2340, %2293 ], [ %2290, %2254 ], [ %1308, %1310 ]
  %2391 = phi float [ %2228, %2220 ], [ %1309, %1606 ], [ %1309, %1288 ], [ %2228, %2343 ], [ %2228, %2341 ], [ %2228, %2293 ], [ %2228, %2254 ], [ %1309, %1310 ]
  br i1 %449, label %3453, label %2392

; <label>:2392                                    ; preds = %2371
  %2393 = icmp ult i32 %505, 3
  %2394 = add i32 %62, 56
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = add i32 %62, 60
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = or i32 %2399, %2396
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %3453, label %2402

; <label>:2402                                    ; preds = %2392
  %2403 = and i32 %2396, 262144
  %2404 = icmp ne i32 %2403, 0
  %2405 = select i1 %2404, float %65, float 1.000000e+00
  %2406 = select i1 %2404, float %66, float 0.000000e+00
  %2407 = select i1 %2404, float %67, float 0.000000e+00
  %2408 = select i1 %2404, float %68, float 1.000000e+00
  %2409 = select i1 %2404, float %69, float %90
  %2410 = select i1 %2404, float %70, float %91
  %2411 = add i32 %62, 316
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = lshr i32 %2413, 16
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = fmul fast float %2415, 0x3F50624DE0000000
  %2417 = add i32 %62, 120
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = lshr i32 %2419, 16
  %2421 = and i32 %2420, 255
  %2422 = lshr i32 %2419, 24
  %2423 = add i32 %62, 324
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 65535
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = lshr i32 %2425, 16
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = add i32 %62, 64
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = lshr i32 %2432, 22
  %2434 = shl nuw nsw i32 %2433, 5
  %2435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2434)  ; LegacyF16ToF32(value)
  %2436 = shl i32 %2432, 4
  %2437 = and i32 %2436, 32752
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = lshr i32 %2432, 7
  %2440 = and i32 %2439, 32752
  %2441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2440)  ; LegacyF16ToF32(value)
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 3
  %2444 = fmul fast float %2443, 1.000000e+03
  %2445 = fmul fast float %399, %2444
  %2446 = call float @dx.op.unary.f32(i32 22, float %2445)  ; Frc(value)
  %2447 = fadd fast float %2446, %389
  %2448 = fmul fast float %400, %2444
  %2449 = call float @dx.op.unary.f32(i32 22, float %2448)  ; Frc(value)
  %2450 = fadd fast float %2449, %391
  %2451 = fmul fast float %2416, %2444
  %2452 = call float @dx.op.unary.f32(i32 22, float %2451)  ; Frc(value)
  %2453 = fmul fast float %2452, 0x401921FB60000000
  %2454 = fadd fast float %2453, %2435
  %2455 = call float @dx.op.unary.f32(i32 13, float %2454)  ; Sin(value)
  %2456 = call float @dx.op.unary.f32(i32 12, float %2454)  ; Cos(value)
  %2457 = fsub fast float -0.000000e+00, %2455
  %2458 = fadd fast float %2409, -5.000000e-01
  %2459 = fadd fast float %2410, -5.000000e-01
  %2460 = fmul fast float %2427, %2458
  %2461 = fmul fast float %2429, %2459
  %2462 = fadd fast float %2460, 5.000000e-01
  %2463 = fadd fast float %2461, 5.000000e-01
  %2464 = fmul fast float %2438, %2462
  %2465 = fmul fast float %2441, %2463
  %2466 = fmul fast float %2456, %2464
  %2467 = call float @dx.op.tertiary.f32(i32 46, float %2457, float %2465, float %2466)  ; FMad(a,b,c)
  %2468 = fmul fast float %2455, %2464
  %2469 = call float @dx.op.tertiary.f32(i32 46, float %2456, float %2465, float %2468)  ; FMad(a,b,c)
  %2470 = fadd fast float %2447, %2467
  %2471 = fadd fast float %2450, %2469
  %2472 = icmp ugt i32 %2421, 1
  %2473 = icmp ugt i32 %2419, 33554431
  %2474 = or i1 %2473, %2472
  br i1 %2474, label %2475, label %2500

; <label>:2475                                    ; preds = %2402
  %2476 = add i32 %62, 260
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = lshr i32 %2478, 16
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = fmul fast float %2443, %2480
  %2482 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2483 = mul nuw nsw i32 %2421, %2422
  %2484 = uitofp i32 %2483 to float
  %2485 = fmul fast float %2482, %2484
  %2486 = call float @dx.op.unary.f32(i32 27, float %2485)  ; Round_ni(value)
  %2487 = fptoui float %2486 to i32
  %2488 = urem i32 %2487, %2421
  %2489 = udiv i32 %2487, %2422
  %2490 = call float @dx.op.unary.f32(i32 22, float %2470)  ; Frc(value)
  %2491 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2492 = uitofp i32 %2488 to float
  %2493 = uitofp i32 %2489 to float
  %2494 = fadd fast float %2490, %2492
  %2495 = fadd fast float %2491, %2493
  %2496 = uitofp i32 %2421 to float
  %2497 = uitofp i32 %2422 to float
  %2498 = fdiv fast float %2494, %2496
  %2499 = fdiv fast float %2495, %2497
  br label %2500

; <label>:2500                                    ; preds = %2475, %2402
  %2501 = phi float [ %2498, %2475 ], [ %2470, %2402 ]
  %2502 = phi float [ %2499, %2475 ], [ %2471, %2402 ]
  %2503 = and i32 %2396, 16777216
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2614, label %2505

; <label>:2505                                    ; preds = %2500
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2510 = fadd fast float %2507, %166
  %2511 = fadd fast float %2508, %167
  %2512 = fadd fast float %2509, %168
  %2513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2514 = extractvalue %dx.types.CBufRet.f32 %2513, 0
  %2515 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2516 = icmp eq i32 %63, 65535
  br i1 %2516, label %2611, label %2517

; <label>:2517                                    ; preds = %2505
  %2518 = lshr i32 %63, 1
  %2519 = shl i32 %2518, 2
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %63, 1
  %2523 = icmp ne i32 %2522, 0
  %2524 = lshr i32 %2521, 16
  %2525 = and i32 %2521, 65535
  %2526 = select i1 %2523, i32 %2524, i32 %2525
  %2527 = icmp eq i32 %2526, 65535
  br i1 %2527, label %2607, label %2528

; <label>:2528                                    ; preds = %2517
  %2529 = mul nuw nsw i32 %2526, 40
  %2530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.ResRet.f32 %2530, 1
  %2533 = extractvalue %dx.types.ResRet.f32 %2530, 2
  %2534 = add nuw nsw i32 %2529, 12
  %2535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.f32 %2535, 0
  %2537 = extractvalue %dx.types.ResRet.f32 %2535, 1
  %2538 = extractvalue %dx.types.ResRet.f32 %2535, 2
  %2539 = add nuw nsw i32 %2529, 24
  %2540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.ResRet.f32 %2540, 1
  %2543 = extractvalue %dx.types.ResRet.f32 %2540, 2
  %2544 = add nuw nsw i32 %2529, 36
  %2545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2547 = fsub fast float %2510, %2531
  %2548 = fsub fast float %2511, %2532
  %2549 = fsub fast float %2512, %2533
  %2550 = fmul fast float %2546, %2547
  %2551 = fmul fast float %2546, %2548
  %2552 = fmul fast float %2546, %2549
  %2553 = call float @dx.op.unary.f32(i32 27, float %2550)  ; Round_ni(value)
  %2554 = call float @dx.op.unary.f32(i32 27, float %2551)  ; Round_ni(value)
  %2555 = call float @dx.op.unary.f32(i32 27, float %2552)  ; Round_ni(value)
  %2556 = fadd fast float %2553, 5.000000e-01
  %2557 = fadd fast float %2554, 5.000000e-01
  %2558 = fadd fast float %2555, 5.000000e-01
  %2559 = fmul fast float %2556, %2536
  %2560 = fmul fast float %2557, %2537
  %2561 = fmul fast float %2558, %2538
  %2562 = shl i32 %63, 2
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = add i32 %2564, 0
  %2566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2567 = call float @dx.op.unary.f32(i32 22, float %2559)  ; Frc(value)
  %2568 = call float @dx.op.unary.f32(i32 22, float %2560)  ; Frc(value)
  %2569 = call float @dx.op.unary.f32(i32 22, float %2561)  ; Frc(value)
  %2570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2566, %dx.types.Handle %57, float %2567, float %2568, float %2569, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2571 = extractvalue %dx.types.ResRet.f32 %2570, 0
  %2572 = extractvalue %dx.types.ResRet.f32 %2570, 1
  %2573 = extractvalue %dx.types.ResRet.f32 %2570, 2
  %2574 = fmul fast float %2571, 1.023000e+03
  %2575 = fmul fast float %2572, 1.023000e+03
  %2576 = fmul fast float %2573, 1.023000e+03
  %2577 = fadd fast float %2574, 5.000000e-01
  %2578 = fadd fast float %2575, 5.000000e-01
  %2579 = fadd fast float %2576, 5.000000e-01
  %2580 = call float @dx.op.unary.f32(i32 27, float %2577)  ; Round_ni(value)
  %2581 = call float @dx.op.unary.f32(i32 27, float %2578)  ; Round_ni(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2579)  ; Round_ni(value)
  %2583 = fsub fast float %2550, %2553
  %2584 = fsub fast float %2551, %2554
  %2585 = fsub fast float %2552, %2555
  %2586 = fmul fast float %2583, 7.500000e-01
  %2587 = fmul fast float %2584, 7.500000e-01
  %2588 = fmul fast float %2585, 7.500000e-01
  %2589 = fadd fast float %2553, 1.250000e-01
  %2590 = fadd fast float %2589, %2586
  %2591 = fadd fast float %2590, %2580
  %2592 = fadd fast float %2554, 1.250000e-01
  %2593 = fadd fast float %2592, %2587
  %2594 = fadd fast float %2593, %2581
  %2595 = fadd fast float %2555, 1.250000e-01
  %2596 = fadd fast float %2595, %2588
  %2597 = fadd fast float %2596, %2582
  %2598 = fmul fast float %2591, %2541
  %2599 = fmul fast float %2594, %2542
  %2600 = fmul fast float %2597, %2543
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = add i32 %2602, 0
  %2604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2604, %dx.types.Handle %55, float %2598, float %2599, float %2600, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  br label %2607

; <label>:2607                                    ; preds = %2528, %2517
  %2608 = phi float [ %2606, %2528 ], [ -1.000000e+00, %2517 ]
  %2609 = fadd fast float %2608, %2515
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  br label %2611

; <label>:2611                                    ; preds = %2607, %2505
  %2612 = phi float [ %2610, %2607 ], [ %2515, %2505 ]
  %2613 = fmul fast float %2612, %501
  br label %2614

; <label>:2614                                    ; preds = %2611, %2500
  %2615 = phi float [ %2613, %2611 ], [ %501, %2500 ]
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 256
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2666, label %2620

; <label>:2620                                    ; preds = %2614
  %2621 = add i32 %62, 480
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = add i32 %2623, 0
  %2625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2625, %dx.types.Handle %108, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = add i32 %62, 132
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = shl i32 %2630, 4
  %2632 = and i32 %2631, 32752
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = lshr i32 %2630, 7
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = fsub fast float 1.000000e+00, %2615
  %2638 = call float @dx.op.binary.f32(i32 35, float %2637, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2639 = bitcast float %2615 to i32
  %2640 = sitofp i32 %2639 to float
  %2641 = fadd fast float %2640, 0xC1CFBF8940000000
  %2642 = fmul fast float %2636, %2641
  %2643 = fadd fast float %2642, 0x41CFBF8940000000
  %2644 = fptosi float %2643 to i32
  %2645 = bitcast i32 %2644 to float
  %2646 = bitcast float %2638 to i32
  %2647 = sitofp i32 %2646 to float
  %2648 = fadd fast float %2647, 0xC1CFBF8940000000
  %2649 = fmul fast float %2648, %2636
  %2650 = fadd fast float %2649, 0x41CFBF8940000000
  %2651 = fptosi float %2650 to i32
  %2652 = bitcast i32 %2651 to float
  %2653 = fmul fast float %2645, %2633
  %2654 = fmul fast float %2652, %2633
  %2655 = fsub fast float %2638, %2653
  %2656 = fadd fast float %2654, %2638
  %2657 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2658 = call float @dx.op.unary.f32(i32 7, float %2656)  ; Saturate(value)
  %2659 = fsub fast float %2627, %2657
  %2660 = fsub fast float %2658, %2657
  %2661 = bitcast float %2660 to i32
  %2662 = sub nsw i32 2129859010, %2661
  %2663 = bitcast i32 %2662 to float
  %2664 = fmul fast float %2663, %2659
  %2665 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  br label %2666

; <label>:2666                                    ; preds = %2620, %2614
  %2667 = phi float [ %2665, %2620 ], [ %2615, %2614 ]
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 128
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2688, label %2672

; <label>:2672                                    ; preds = %2666
  %2673 = add i32 %62, 464
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %2675, 0
  %2677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2677, %dx.types.Handle %108, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = and i32 %2681, 524288
  %2683 = icmp ne i32 %2682, 0
  %2684 = fcmp fast ogt float %2679, 0x3FE0101020000000
  %2685 = select i1 %2684, float 1.000000e+00, float 0.000000e+00
  %2686 = select i1 %2683, float %2685, float %2679
  %2687 = fmul fast float %2686, %2667
  br label %2688

; <label>:2688                                    ; preds = %2672, %2666
  %2689 = phi float [ %2687, %2672 ], [ %2667, %2666 ]
  %2690 = fcmp fast ult float %2689, 0x3F70101020000000
  br i1 %2690, label %3453, label %2691

; <label>:2691                                    ; preds = %2688
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = and i32 %2693, 16
  %2695 = icmp eq i32 %2694, 0
  br i1 %2695, label %2894, label %2696

; <label>:2696                                    ; preds = %2691
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = add i32 %62, 416
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = add i32 %2701, 0
  %2703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2703, %dx.types.Handle %107, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = extractvalue %dx.types.ResRet.f32 %2704, 3
  %2709 = and i32 %2698, 255
  %2710 = uitofp i32 %2709 to float
  %2711 = lshr i32 %2698, 8
  %2712 = and i32 %2711, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2708, %2710
  %2715 = fadd fast float %2714, %2713
  %2716 = fmul fast float %2715, 0x3F70101000000000
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 512
  %2720 = icmp eq i32 %2719, 0
  br i1 %2720, label %2729, label %2721

; <label>:2721                                    ; preds = %2696
  %2722 = add i32 %62, 496
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = add i32 %2724, 0
  %2726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2726, %dx.types.Handle %108, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  br label %2729

; <label>:2729                                    ; preds = %2721, %2696
  %2730 = phi float [ %2728, %2721 ], [ 1.000000e+00, %2696 ]
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = and i32 %2732, 33554432
  %2734 = icmp eq i32 %2733, 0
  br i1 %2734, label %2841, label %2735

; <label>:2735                                    ; preds = %2729
  %2736 = add i32 %62, 256
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 65535
  %2740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2739)  ; LegacyF16ToF32(value)
  %2741 = lshr i32 %2738, 16
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = add i32 %62, 260
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %2745, 65535
  %2747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2746)  ; LegacyF16ToF32(value)
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = lshr i32 %2749, 24
  %2751 = uitofp i32 %2750 to float
  %2752 = fmul fast float %2751, 0x3F70101020000000
  %2753 = and i32 %2749, 255
  %2754 = uitofp i32 %2753 to float
  %2755 = fmul fast float %2754, 0x3F70101020000000
  %2756 = lshr i32 %2749, 8
  %2757 = and i32 %2756, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = fmul fast float %2758, 0x3F70101020000000
  %2760 = lshr i32 %2749, 16
  %2761 = and i32 %2760, 255
  %2762 = uitofp i32 %2761 to float
  %2763 = fmul fast float %2762, 0x3F70101020000000
  %2764 = add i32 %62, 252
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = lshr i32 %2766, 24
  %2768 = uitofp i32 %2767 to float
  %2769 = fmul fast float %2768, 0x3F70101020000000
  %2770 = and i32 %2766, 255
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F70101020000000
  %2773 = lshr i32 %2766, 8
  %2774 = and i32 %2773, 255
  %2775 = uitofp i32 %2774 to float
  %2776 = fmul fast float %2775, 0x3F70101020000000
  %2777 = lshr i32 %2766, 16
  %2778 = and i32 %2777, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = fmul fast float %2779, 0x3F70101020000000
  %2781 = bitcast float %2705 to i32
  %2782 = ashr i32 %2781, 1
  %2783 = sub nsw i32 1597463174, %2782
  %2784 = bitcast i32 %2783 to float
  %2785 = fmul fast float %2705, 5.000000e-01
  %2786 = fmul fast float %2784, %2784
  %2787 = fmul fast float %2786, %2785
  %2788 = fsub fast float 1.500000e+00, %2787
  %2789 = fmul fast float %2784, %2705
  %2790 = fmul fast float %2789, %2788
  %2791 = bitcast float %2706 to i32
  %2792 = ashr i32 %2791, 1
  %2793 = sub nsw i32 1597463174, %2792
  %2794 = bitcast i32 %2793 to float
  %2795 = fmul fast float %2706, 5.000000e-01
  %2796 = fmul fast float %2794, %2794
  %2797 = fmul fast float %2796, %2795
  %2798 = fsub fast float 1.500000e+00, %2797
  %2799 = fmul fast float %2794, %2706
  %2800 = fmul fast float %2799, %2798
  %2801 = bitcast float %2707 to i32
  %2802 = ashr i32 %2801, 1
  %2803 = sub nsw i32 1597463174, %2802
  %2804 = bitcast i32 %2803 to float
  %2805 = fmul fast float %2707, 5.000000e-01
  %2806 = fmul fast float %2804, %2804
  %2807 = fmul fast float %2806, %2805
  %2808 = fsub fast float 1.500000e+00, %2807
  %2809 = fmul fast float %2804, %2707
  %2810 = fmul fast float %2809, %2808
  %2811 = fsub fast float %2790, %2772
  %2812 = fsub fast float %2800, %2776
  %2813 = fsub fast float %2810, %2780
  %2814 = fmul fast float %2811, %2740
  %2815 = fmul fast float %2812, %2742
  %2816 = fmul fast float %2813, %2747
  %2817 = fadd fast float %2814, %2755
  %2818 = fadd fast float %2815, %2759
  %2819 = fadd fast float %2816, %2763
  %2820 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2821 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  %2822 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2823 = fmul fast float %2820, %2820
  %2824 = fmul fast float %2821, %2821
  %2825 = fmul fast float %2822, %2822
  %2826 = fsub fast float %2823, %2705
  %2827 = fsub fast float %2824, %2706
  %2828 = fsub fast float %2825, %2707
  %2829 = fmul fast float %2826, %2730
  %2830 = fmul fast float %2827, %2730
  %2831 = fmul fast float %2828, %2730
  %2832 = fadd fast float %2829, %2705
  %2833 = fadd fast float %2830, %2706
  %2834 = fadd fast float %2831, %2707
  %2835 = fadd fast float %2752, %2716
  %2836 = fsub fast float %2835, %2769
  %2837 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  %2838 = fsub fast float %2837, %2716
  %2839 = fmul fast float %2838, %2730
  %2840 = fadd fast float %2839, %2716
  br label %2894

; <label>:2841                                    ; preds = %2729
  %2842 = and i32 %2732, 134217728
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2878, label %2844

; <label>:2844                                    ; preds = %2841
  %2845 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2846 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2847 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %2848 = fadd fast float %2845, -5.000000e-01
  %2849 = fadd fast float %2846, -5.000000e-01
  %2850 = fadd fast float %2847, -5.000000e-01
  %2851 = fmul fast float %2848, %2730
  %2852 = fmul fast float %2849, %2730
  %2853 = fmul fast float %2850, %2730
  %2854 = fadd fast float %2851, 5.000000e-01
  %2855 = fadd fast float %2852, 5.000000e-01
  %2856 = fadd fast float %2853, 5.000000e-01
  %2857 = call float @dx.op.unary.f32(i32 24, float %2705)  ; Sqrt(value)
  %2858 = call float @dx.op.unary.f32(i32 24, float %2706)  ; Sqrt(value)
  %2859 = call float @dx.op.unary.f32(i32 24, float %2707)  ; Sqrt(value)
  %2860 = fmul fast float %2854, 2.000000e+00
  %2861 = fsub fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2861, %2857
  %2863 = fadd fast float %2862, %2860
  %2864 = fmul fast float %2863, %2857
  %2865 = fmul fast float %2855, 2.000000e+00
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %2866, %2858
  %2868 = fadd fast float %2867, %2865
  %2869 = fmul fast float %2868, %2858
  %2870 = fmul fast float %2856, 2.000000e+00
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = fmul fast float %2871, %2859
  %2873 = fadd fast float %2872, %2870
  %2874 = fmul fast float %2873, %2859
  %2875 = fmul fast float %2864, %2864
  %2876 = fmul fast float %2869, %2869
  %2877 = fmul fast float %2874, %2874
  br label %2894

; <label>:2878                                    ; preds = %2841
  %2879 = fmul fast float %376, %376
  %2880 = fmul fast float %380, %380
  %2881 = fmul fast float %384, %384
  %2882 = fadd fast float %2879, -1.000000e+00
  %2883 = fadd fast float %2880, -1.000000e+00
  %2884 = fadd fast float %2881, -1.000000e+00
  %2885 = fmul fast float %2730, %2882
  %2886 = fmul fast float %2730, %2883
  %2887 = fmul fast float %2730, %2884
  %2888 = fadd fast float %2885, 1.000000e+00
  %2889 = fadd fast float %2886, 1.000000e+00
  %2890 = fadd fast float %2887, 1.000000e+00
  %2891 = fmul fast float %2888, %2705
  %2892 = fmul fast float %2889, %2706
  %2893 = fmul fast float %2890, %2707
  br label %2894

; <label>:2894                                    ; preds = %2878, %2844, %2735, %2691
  %2895 = phi float [ %2840, %2735 ], [ %2716, %2844 ], [ %2716, %2878 ], [ 0x3FA23C0BE0000000, %2691 ]
  %2896 = phi float [ %2832, %2735 ], [ %2875, %2844 ], [ %2891, %2878 ], [ 1.000000e+00, %2691 ]
  %2897 = phi float [ %2833, %2735 ], [ %2876, %2844 ], [ %2892, %2878 ], [ 1.000000e+00, %2691 ]
  %2898 = phi float [ %2834, %2735 ], [ %2877, %2844 ], [ %2893, %2878 ], [ 1.000000e+00, %2691 ]
  %2899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.i32 %2899, 1
  %2901 = and i32 %2900, 1
  %2902 = icmp ne i32 %2901, 0
  %2903 = add i32 %62, 356
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 32
  %2907 = icmp ne i32 %2906, 0
  %2908 = and i1 %2902, %2907
  %2909 = select i1 %2908, float 1.000000e+00, float %2896
  %2910 = select i1 %2908, float 0x3FD3333340000000, float %2897
  %2911 = select i1 %2908, float 0x3FD3333340000000, float %2898
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 32
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %2988, label %2916

; <label>:2916                                    ; preds = %2894
  %2917 = add i32 %62, 124
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %62, 432
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %2922, 0
  %2924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2924, %dx.types.Handle %107, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.ResRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.ResRet.f32 %2925, 2
  %2929 = extractvalue %dx.types.ResRet.f32 %2925, 3
  %2930 = and i32 %2919, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = lshr i32 %2919, 8
  %2933 = and i32 %2932, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = lshr i32 %2919, 16
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2937, 0x3F70101000000000
  %2939 = fmul fast float %2926, %2931
  %2940 = fadd fast float %2939, %2934
  %2941 = fmul fast float %2940, 0x3F70101000000000
  %2942 = fadd fast float %2927, -5.000000e-01
  %2943 = fadd fast float %2929, -5.000000e-01
  %2944 = fmul fast float %2942, %2938
  %2945 = fmul fast float %2943, %2938
  %2946 = fadd fast float %2944, 5.000000e-01
  %2947 = fadd fast float %2945, 5.000000e-01
  %2948 = fmul fast float %2946, 2.000000e+00
  %2949 = fadd fast float %2948, -1.000000e+00
  %2950 = fmul fast float %2947, 2.000000e+00
  %2951 = fadd fast float %2950, -1.000000e+00
  %2952 = fadd fast float %2949, %2951
  %2953 = fmul fast float %2952, 5.000000e-01
  %2954 = fsub fast float %2949, %2951
  %2955 = fmul fast float %2954, 5.000000e-01
  %2956 = call float @dx.op.unary.f32(i32 6, float %2953)  ; FAbs(value)
  %2957 = fsub fast float 1.000000e+00, %2956
  %2958 = call float @dx.op.unary.f32(i32 6, float %2955)  ; FAbs(value)
  %2959 = fsub fast float %2957, %2958
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2955, float %2959, float %2953, float %2955, float %2959)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = call float @dx.op.unary.f32(i32 25, float %2960)  ; Rsqrt(value)
  %2962 = fmul fast float %2953, %2961
  %2963 = fmul fast float %2955, %2961
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 67108864
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %2984, label %2968

; <label>:2968                                    ; preds = %2916
  %2969 = add i32 %62, 312
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 65535
  %2977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2976)  ; LegacyF16ToF32(value)
  %2978 = lshr i32 %2971, 16
  %2979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2978)  ; LegacyF16ToF32(value)
  %2980 = fsub fast float %2941, %2979
  %2981 = fmul fast float %2980, %2973
  %2982 = fadd fast float %2981, %2977
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  br label %2984

; <label>:2984                                    ; preds = %2968, %2916
  %2985 = phi float [ %2983, %2968 ], [ %2941, %2916 ]
  %2986 = call float @dx.op.dot2.f32(i32 54, float %2962, float %2963, float %2405, float %2406)  ; Dot2(ax,ay,bx,by)
  %2987 = call float @dx.op.dot2.f32(i32 54, float %2962, float %2963, float %2407, float %2408)  ; Dot2(ax,ay,bx,by)
  br label %2988

; <label>:2988                                    ; preds = %2984, %2894
  %2989 = phi float [ %2985, %2984 ], [ 0x3FD6666660000000, %2894 ]
  %2990 = phi float [ %2986, %2984 ], [ 0.000000e+00, %2894 ]
  %2991 = phi float [ %2987, %2984 ], [ 0.000000e+00, %2894 ]
  %2992 = phi float [ %2928, %2984 ], [ 1.000000e+00, %2894 ]
  %2993 = add i32 %62, 192
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = lshr i32 %2995, 22
  %2997 = shl nuw nsw i32 %2996, 5
  %2998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2997)  ; LegacyF16ToF32(value)
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = and i32 %3000, 64
  %3002 = icmp eq i32 %3001, 0
  br i1 %3002, label %3036, label %3003

; <label>:3003                                    ; preds = %2988
  %3004 = add i32 %62, 448
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %3006, 0
  %3008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 131072
  %3012 = icmp eq i32 %3011, 0
  %3013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3008, %dx.types.Handle %107, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3014 = extractvalue %dx.types.ResRet.f32 %3013, 0
  %3015 = extractvalue %dx.types.ResRet.f32 %3013, 1
  %3016 = extractvalue %dx.types.ResRet.f32 %3013, 2
  %3017 = fmul fast float %3014, %364
  %3018 = fmul fast float %3015, %367
  %3019 = fmul fast float %3016, %370
  br i1 %3012, label %3026, label %3020

; <label>:3020                                    ; preds = %3003
  %3021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.f32 %3021, 0
  %3023 = fmul fast float %3022, %3017
  %3024 = fmul fast float %3022, %3018
  %3025 = fmul fast float %3022, %3019
  br label %3026

; <label>:3026                                    ; preds = %3020, %3003
  %3027 = phi float [ %3023, %3020 ], [ %3017, %3003 ]
  %3028 = phi float [ %3024, %3020 ], [ %3018, %3003 ]
  %3029 = phi float [ %3025, %3020 ], [ %3019, %3003 ]
  %3030 = fmul fast float %3027, %2998
  %3031 = select i1 %260, float %3030, float %3027
  %3032 = call float @dx.op.dot3.f32(i32 55, float %3031, float %3028, float %3029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3033 = select i1 %260, float 0.000000e+00, float %3027
  %3034 = select i1 %260, float %3032, float %3028
  %3035 = select i1 %260, float 0.000000e+00, float %3029
  br label %3036

; <label>:3036                                    ; preds = %3026, %2988
  %3037 = phi float [ %3033, %3026 ], [ 0.000000e+00, %2988 ]
  %3038 = phi float [ %3034, %3026 ], [ 0.000000e+00, %2988 ]
  %3039 = phi float [ %3035, %3026 ], [ 0.000000e+00, %2988 ]
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 1024
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3074, label %3044

; <label>:3044                                    ; preds = %3036
  %3045 = add i32 %62, 184
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3049, 0x3F70101020000000
  %3051 = lshr i32 %3047, 8
  %3052 = and i32 %3051, 255
  %3053 = uitofp i32 %3052 to float
  %3054 = fmul fast float %3053, 0x3F70101020000000
  %3055 = lshr i32 %3047, 16
  %3056 = and i32 %3055, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = fmul fast float %3057, 0x3F70101020000000
  %3059 = fmul fast float %3050, %3050
  %3060 = fmul fast float %3054, %3054
  %3061 = fmul fast float %3058, %3058
  %3062 = add i32 %62, 512
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = add i32 %3064, 0
  %3066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3066, %dx.types.Handle %108, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3068 = extractvalue %dx.types.ResRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.ResRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.ResRet.f32 %3067, 2
  %3071 = fmul fast float %3059, %3068
  %3072 = fmul fast float %3060, %3069
  %3073 = fmul fast float %3061, %3070
  br label %3074

; <label>:3074                                    ; preds = %3044, %3036
  %3075 = phi float [ %3071, %3044 ], [ 0.000000e+00, %3036 ]
  %3076 = phi float [ %3072, %3044 ], [ 0.000000e+00, %3036 ]
  %3077 = phi float [ %3073, %3044 ], [ 0.000000e+00, %3036 ]
  %3078 = fcmp fast ogt float %3075, 0.000000e+00
  %3079 = fcmp fast ogt float %3076, 0.000000e+00
  %3080 = fcmp fast ogt float %3077, 0.000000e+00
  %3081 = call float @dx.op.unary.f32(i32 23, float %3075)  ; Log(value)
  %3082 = call float @dx.op.unary.f32(i32 23, float %3076)  ; Log(value)
  %3083 = call float @dx.op.unary.f32(i32 23, float %3077)  ; Log(value)
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = lshr i32 %3085, 7
  %3087 = and i32 %3086, 32752
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = fmul fast float %3081, 0xBFE62E4300000000
  %3090 = fmul fast float %3089, %3088
  %3091 = fmul fast float %3082, 0xBFE62E4300000000
  %3092 = fmul fast float %3091, %3088
  %3093 = fmul fast float %3083, 0xBFE62E4300000000
  %3094 = fmul fast float %3093, %3088
  %3095 = select i1 %3078, float %3090, float 1.270000e+02
  %3096 = select i1 %3079, float %3092, float 1.270000e+02
  %3097 = select i1 %3080, float %3094, float 1.270000e+02
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 26624
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3159, label %3102

; <label>:3102                                    ; preds = %3074
  %3103 = add i32 %62, 528
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %3105, 0
  %3107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3107, %dx.types.Handle %108, float %2501, float %2502, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.ResRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.ResRet.f32 %3108, 3
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 1048576
  %3115 = icmp ne i32 %3114, 0
  %3116 = and i32 %3113, 8192
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3132, label %3118

; <label>:3118                                    ; preds = %3102
  %3119 = extractvalue %dx.types.ResRet.f32 %3108, 2
  %3120 = select i1 %3115, float %3119, float %3110
  %3121 = select i1 %3115, float %3109, float %3110
  %3122 = add i32 %62, 128
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = lshr i32 %3124, 16
  %3126 = and i32 %3125, 255
  %3127 = uitofp i32 %3126 to float
  %3128 = fmul fast float %3127, 0x3F80101020000000
  %3129 = fmul fast float %3128, %3121
  %3130 = fmul fast float %3128, %3110
  %3131 = fmul fast float %3128, %3120
  br label %3132

; <label>:3132                                    ; preds = %3118, %3102
  %3133 = phi float [ %3129, %3118 ], [ 0.000000e+00, %3102 ]
  %3134 = phi float [ %3130, %3118 ], [ 0.000000e+00, %3102 ]
  %3135 = phi float [ %3131, %3118 ], [ 0.000000e+00, %3102 ]
  %3136 = and i32 %3113, 2048
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3146, label %3138

; <label>:3138                                    ; preds = %3132
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = shl i32 %3140, 4
  %3142 = and i32 %3141, 32752
  %3143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3142)  ; LegacyF16ToF32(value)
  %3144 = fmul fast float %3143, %3111
  %3145 = call float @dx.op.binary.f32(i32 35, float %3144, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3146

; <label>:3146                                    ; preds = %3138, %3132
  %3147 = phi float [ %3145, %3138 ], [ 0x3F70101020000000, %3132 ]
  %3148 = and i32 %3113, 16384
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3159, label %3150

; <label>:3150                                    ; preds = %3146
  %3151 = add i32 %62, 128
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = lshr i32 %3153, 24
  %3155 = uitofp i32 %3154 to float
  %3156 = fmul fast float %3109, 0x3F70101020000000
  %3157 = select i1 %3115, float 0x3F70101020000000, float %3156
  %3158 = fmul fast float %3157, %3155
  br label %3159

; <label>:3159                                    ; preds = %3150, %3146, %3074
  %3160 = phi float [ %3133, %3150 ], [ %3133, %3146 ], [ 0.000000e+00, %3074 ]
  %3161 = phi float [ %3134, %3150 ], [ %3134, %3146 ], [ 0.000000e+00, %3074 ]
  %3162 = phi float [ %3135, %3150 ], [ %3135, %3146 ], [ 0.000000e+00, %3074 ]
  %3163 = phi float [ %3147, %3150 ], [ %3147, %3146 ], [ 0x3F70101020000000, %3074 ]
  %3164 = phi float [ %3158, %3150 ], [ 0.000000e+00, %3146 ], [ 0.000000e+00, %3074 ]
  %3165 = add i32 %62, 128
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3165, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = lshr i32 %3167, 8
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2910, float %2911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3174 = fmul fast float %3172, %3173
  %3175 = fadd fast float %3174, %3169
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = call float @dx.op.unary.f32(i32 7, float %3176)  ; Saturate(value)
  br i1 %2393, label %3178, label %3213

; <label>:3178                                    ; preds = %3159
  %3179 = fmul fast float %3163, 2.000000e+00
  %3180 = fcmp fast olt float %3095, 1.270000e+02
  %3181 = fcmp fast olt float %3096, 1.270000e+02
  %3182 = fcmp fast olt float %3097, 1.270000e+02
  %3183 = fmul fast float %3095, 0xBFF7154760000000
  %3184 = fmul fast float %3183, %3179
  %3185 = fmul fast float %3096, 0xBFF7154760000000
  %3186 = fmul fast float %3185, %3179
  %3187 = fmul fast float %3097, 0xBFF7154760000000
  %3188 = fmul fast float %3187, %3179
  %3189 = call float @dx.op.unary.f32(i32 21, float %3184)  ; Exp(value)
  %3190 = call float @dx.op.unary.f32(i32 21, float %3186)  ; Exp(value)
  %3191 = call float @dx.op.unary.f32(i32 21, float %3188)  ; Exp(value)
  %3192 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3193 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3194 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3195 = fadd fast float %3192, -1.000000e+00
  %3196 = select i1 %3180, float %3195, float -1.000000e+00
  %3197 = fadd fast float %3193, -1.000000e+00
  %3198 = select i1 %3181, float %3197, float -1.000000e+00
  %3199 = fadd fast float %3194, -1.000000e+00
  %3200 = select i1 %3182, float %3199, float -1.000000e+00
  %3201 = fmul fast float %3196, %2689
  %3202 = fmul fast float %3198, %2689
  %3203 = fmul fast float %3200, %2689
  %3204 = fadd fast float %3201, 1.000000e+00
  %3205 = fadd fast float %3202, 1.000000e+00
  %3206 = fadd fast float %3203, 1.000000e+00
  %3207 = fmul fast float %3204, %2374
  %3208 = fmul fast float %3205, %2375
  %3209 = fmul fast float %3206, %2376
  %3210 = fmul fast float %3204, %2377
  %3211 = fmul fast float %3205, %2378
  %3212 = fmul fast float %3206, %2379
  br label %3213

; <label>:3213                                    ; preds = %3178, %3159
  %3214 = phi float [ %3207, %3178 ], [ %2374, %3159 ]
  %3215 = phi float [ %3208, %3178 ], [ %2375, %3159 ]
  %3216 = phi float [ %3209, %3178 ], [ %2376, %3159 ]
  %3217 = phi float [ %3210, %3178 ], [ %2377, %3159 ]
  %3218 = phi float [ %3211, %3178 ], [ %2378, %3159 ]
  %3219 = phi float [ %3212, %3178 ], [ %2379, %3159 ]
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 3
  %3223 = icmp eq i32 %3222, 3
  br i1 %3223, label %3302, label %3224

; <label>:3224                                    ; preds = %3213
  %3225 = and i32 %3221, 16
  %3226 = icmp ne i32 %3225, 0
  %3227 = select i1 %3226, float %2689, float 0.000000e+00
  %3228 = icmp eq i32 %3222, 0
  br i1 %3228, label %3229, label %3257

; <label>:3229                                    ; preds = %3224
  %3230 = and i32 %3221, 64
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2689, float 0.000000e+00
  %3233 = fsub fast float %2909, %3214
  %3234 = fsub fast float %2910, %3215
  %3235 = fsub fast float %2911, %3216
  %3236 = fmul fast float %3227, %3233
  %3237 = fmul fast float %3227, %3234
  %3238 = fmul fast float %3227, %3235
  %3239 = fadd fast float %3236, %3214
  %3240 = fadd fast float %3237, %3215
  %3241 = fadd fast float %3238, %3216
  %3242 = fsub fast float %2895, %2386
  %3243 = fmul fast float %3227, %3242
  %3244 = fadd fast float %3243, %2386
  %3245 = fsub fast float %3037, %3217
  %3246 = fsub fast float %3038, %3218
  %3247 = fsub fast float %3039, %3219
  %3248 = fmul fast float %3232, %3245
  %3249 = fmul fast float %3232, %3246
  %3250 = fmul fast float %3232, %3247
  %3251 = fadd fast float %3248, %3217
  %3252 = fadd fast float %3249, %3218
  %3253 = fadd fast float %3250, %3219
  %3254 = fsub fast float %3177, %2391
  %3255 = fmul fast float %3227, %3254
  %3256 = fadd fast float %3255, %2391
  br label %3302

; <label>:3257                                    ; preds = %3224
  %3258 = icmp eq i32 %3222, 1
  br i1 %3258, label %3259, label %3272

; <label>:3259                                    ; preds = %3257
  %3260 = fadd fast float %2909, -1.000000e+00
  %3261 = fadd fast float %2910, -1.000000e+00
  %3262 = fadd fast float %2911, -1.000000e+00
  %3263 = fmul fast float %3227, %3260
  %3264 = fmul fast float %3227, %3261
  %3265 = fmul fast float %3227, %3262
  %3266 = fadd fast float %3263, 1.000000e+00
  %3267 = fadd fast float %3264, 1.000000e+00
  %3268 = fadd fast float %3265, 1.000000e+00
  %3269 = fmul fast float %3266, %3214
  %3270 = fmul fast float %3267, %3215
  %3271 = fmul fast float %3268, %3216
  br label %3302

; <label>:3272                                    ; preds = %3257
  %3273 = icmp eq i32 %3222, 2
  br i1 %3273, label %3274, label %3302

; <label>:3274                                    ; preds = %3272
  %3275 = call float @dx.op.unary.f32(i32 24, float %2909)  ; Sqrt(value)
  %3276 = call float @dx.op.unary.f32(i32 24, float %2910)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %2911)  ; Sqrt(value)
  %3278 = fadd fast float %3275, -5.000000e-01
  %3279 = fadd fast float %3276, -5.000000e-01
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fmul fast float %3278, %3227
  %3282 = fmul fast float %3279, %3227
  %3283 = fmul fast float %3280, %3227
  %3284 = fadd fast float %3281, 5.000000e-01
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fmul fast float %3284, 2.000000e+00
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %3288, %3214
  %3290 = fadd fast float %3289, %3287
  %3291 = fmul fast float %3290, %3214
  %3292 = fmul fast float %3285, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3215
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3215
  %3297 = fmul fast float %3286, 2.000000e+00
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3216
  %3300 = fadd fast float %3299, %3297
  %3301 = fmul fast float %3300, %3216
  br label %3302

; <label>:3302                                    ; preds = %3274, %3272, %3259, %3229, %3213
  %3303 = phi float [ %3214, %3213 ], [ %3291, %3274 ], [ %3214, %3272 ], [ %3269, %3259 ], [ %3239, %3229 ]
  %3304 = phi float [ %3215, %3213 ], [ %3296, %3274 ], [ %3215, %3272 ], [ %3270, %3259 ], [ %3240, %3229 ]
  %3305 = phi float [ %3216, %3213 ], [ %3301, %3274 ], [ %3216, %3272 ], [ %3271, %3259 ], [ %3241, %3229 ]
  %3306 = phi float [ %3217, %3213 ], [ %3217, %3274 ], [ %3217, %3272 ], [ %3217, %3259 ], [ %3251, %3229 ]
  %3307 = phi float [ %3218, %3213 ], [ %3218, %3274 ], [ %3218, %3272 ], [ %3218, %3259 ], [ %3252, %3229 ]
  %3308 = phi float [ %3219, %3213 ], [ %3219, %3274 ], [ %3219, %3272 ], [ %3219, %3259 ], [ %3253, %3229 ]
  %3309 = phi float [ %2386, %3213 ], [ %2386, %3274 ], [ %2386, %3272 ], [ %2386, %3259 ], [ %3244, %3229 ]
  %3310 = phi float [ %2391, %3213 ], [ %2391, %3274 ], [ %2391, %3272 ], [ %2391, %3259 ], [ %3256, %3229 ]
  %3311 = and i32 %3221, 12
  %3312 = icmp eq i32 %3311, 12
  br i1 %3312, label %3453, label %3313

; <label>:3313                                    ; preds = %3302
  %3314 = and i32 %3221, 2097184
  %3315 = icmp eq i32 %3314, 2097184
  %3316 = select i1 %3315, float %2689, float 0.000000e+00
  %3317 = and i32 %3221, 4194336
  %3318 = icmp eq i32 %3317, 4194336
  %3319 = select i1 %3318, float %2689, float 0.000000e+00
  %3320 = and i32 %3221, 8388640
  %3321 = icmp eq i32 %3320, 8388640
  %3322 = select i1 %3321, float %2689, float 0.000000e+00
  %3323 = and i32 %3221, 1024
  %3324 = icmp ne i32 %3323, 0
  %3325 = select i1 %3324, float %2689, float 0.000000e+00
  %3326 = and i32 %3221, 2048
  %3327 = icmp ne i32 %3326, 0
  %3328 = select i1 %3327, float %2689, float 0.000000e+00
  %3329 = and i32 %3221, 8192
  %3330 = icmp ne i32 %3329, 0
  %3331 = select i1 %3330, float %2689, float 0.000000e+00
  %3332 = and i32 %3221, 16384
  %3333 = icmp ne i32 %3332, 0
  %3334 = select i1 %3333, float %2689, float 0.000000e+00
  %3335 = icmp eq i32 %3311, 0
  br i1 %3335, label %3336, label %3373

; <label>:3336                                    ; preds = %3313
  %3337 = fsub fast float %2990, %2372
  %3338 = fsub fast float %2991, %2373
  %3339 = fmul fast float %3316, %3337
  %3340 = fmul fast float %3316, %3338
  %3341 = fadd fast float %3339, %2372
  %3342 = fadd fast float %3340, %2373
  %3343 = fsub fast float %2992, %2388
  %3344 = fmul fast float %3319, %3343
  %3345 = fadd fast float %3344, %2388
  %3346 = fsub fast float %2989, %2387
  %3347 = fmul fast float %3322, %3346
  %3348 = fadd fast float %3347, %2387
  %3349 = fsub fast float %3095, %2383
  %3350 = fsub fast float %3096, %2384
  %3351 = fsub fast float %3097, %2385
  %3352 = fmul fast float %3325, %3349
  %3353 = fmul fast float %3325, %3350
  %3354 = fmul fast float %3325, %3351
  %3355 = fadd fast float %3352, %2383
  %3356 = fadd fast float %3353, %2384
  %3357 = fadd fast float %3354, %2385
  %3358 = fsub fast float %3163, %2389
  %3359 = fmul fast float %3328, %3358
  %3360 = fadd fast float %3359, %2389
  %3361 = fsub fast float %3160, %2380
  %3362 = fsub fast float %3161, %2381
  %3363 = fsub fast float %3162, %2382
  %3364 = fmul fast float %3331, %3361
  %3365 = fmul fast float %3331, %3362
  %3366 = fmul fast float %3331, %3363
  %3367 = fadd fast float %3364, %2380
  %3368 = fadd fast float %3365, %2381
  %3369 = fadd fast float %3366, %2382
  %3370 = fsub fast float %3164, %2390
  %3371 = fmul fast float %3334, %3370
  %3372 = fadd fast float %3371, %2390
  br label %3453

; <label>:3373                                    ; preds = %3313
  %3374 = icmp eq i32 %3311, 4
  br i1 %3374, label %3375, label %3423

; <label>:3375                                    ; preds = %3373
  %3376 = fmul fast float %3316, %2990
  %3377 = fmul fast float %3316, %2991
  %3378 = fadd fast float %3376, %2372
  %3379 = fadd fast float %3377, %2373
  %3380 = call float @dx.op.binary.f32(i32 36, float %2388, float %2992)  ; FMin(a,b)
  %3381 = fsub fast float %3380, %2388
  %3382 = fmul fast float %3381, %3319
  %3383 = fadd fast float %3382, %2388
  %3384 = fadd fast float %2989, %2387
  %3385 = fmul fast float %3384, 0x3FF337FAE0000000
  %3386 = fmul fast float %2387, %2387
  %3387 = fmul fast float %2989, %2989
  %3388 = fadd fast float %3387, %3386
  %3389 = fmul fast float %3388, 0x3FE5152B00000000
  %3390 = fmul fast float %2387, 0xBFCC1F85E0000000
  %3391 = fmul fast float %3390, %2989
  %3392 = fadd fast float %3391, 0xBFE1363700000000
  %3393 = fadd fast float %3392, %3385
  %3394 = fsub fast float %3393, %3389
  %3395 = fmul fast float %3384, 0x3FBA6F0D00000000
  %3396 = fmul fast float %3388, 0x3FD0432880000000
  %3397 = fmul fast float %2387, 0xBFEF110800000000
  %3398 = fmul fast float %3397, %2989
  %3399 = fadd fast float %3398, 1.000000e+00
  %3400 = fsub fast float %3399, %3395
  %3401 = fadd fast float %3400, %3396
  %3402 = fdiv fast float %3394, %3401
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fsub fast float %3403, %2387
  %3405 = fmul fast float %3404, %3322
  %3406 = fadd fast float %3405, %2387
  %3407 = fmul fast float %3325, %3095
  %3408 = fmul fast float %3325, %3096
  %3409 = fmul fast float %3325, %3097
  %3410 = fadd fast float %3407, %2383
  %3411 = fadd fast float %3408, %2384
  %3412 = fadd fast float %3409, %2385
  %3413 = fmul fast float %3328, %3163
  %3414 = fadd fast float %3413, %2389
  %3415 = fmul fast float %3331, %3160
  %3416 = fmul fast float %3331, %3161
  %3417 = fmul fast float %3331, %3162
  %3418 = fadd fast float %3415, %2380
  %3419 = fadd fast float %3416, %2381
  %3420 = fadd fast float %3417, %2382
  %3421 = fmul fast float %3334, %3164
  %3422 = fadd fast float %3421, %2390
  br label %3453

; <label>:3423                                    ; preds = %3373
  %3424 = icmp eq i32 %3311, 8
  br i1 %3424, label %3425, label %3453

; <label>:3425                                    ; preds = %3423
  %3426 = fmul fast float %3316, %2990
  %3427 = fmul fast float %3316, %2991
  %3428 = fadd fast float %3426, %2372
  %3429 = fadd fast float %3427, %2373
  %3430 = call float @dx.op.binary.f32(i32 36, float %2388, float %2992)  ; FMin(a,b)
  %3431 = fsub fast float %3430, %2388
  %3432 = fmul fast float %3431, %3319
  %3433 = fadd fast float %3432, %2388
  %3434 = fsub fast float %2989, %2387
  %3435 = fmul fast float %3322, %3434
  %3436 = fadd fast float %3435, %2387
  %3437 = fmul fast float %3325, %3095
  %3438 = fmul fast float %3325, %3096
  %3439 = fmul fast float %3325, %3097
  %3440 = fadd fast float %3437, %2383
  %3441 = fadd fast float %3438, %2384
  %3442 = fadd fast float %3439, %2385
  %3443 = fmul fast float %3328, %3163
  %3444 = fadd fast float %3443, %2389
  %3445 = fmul fast float %3331, %3160
  %3446 = fmul fast float %3331, %3161
  %3447 = fmul fast float %3331, %3162
  %3448 = fadd fast float %3445, %2380
  %3449 = fadd fast float %3446, %2381
  %3450 = fadd fast float %3447, %2382
  %3451 = fmul fast float %3334, %3164
  %3452 = fadd fast float %3451, %2390
  br label %3453

; <label>:3453                                    ; preds = %3425, %3423, %3375, %3336, %3302, %2688, %2392, %2371
  %3454 = phi float [ %2372, %3302 ], [ %2372, %2688 ], [ %2372, %2371 ], [ %3428, %3425 ], [ %2372, %3423 ], [ %3378, %3375 ], [ %3341, %3336 ], [ %2372, %2392 ]
  %3455 = phi float [ %2373, %3302 ], [ %2373, %2688 ], [ %2373, %2371 ], [ %3429, %3425 ], [ %2373, %3423 ], [ %3379, %3375 ], [ %3342, %3336 ], [ %2373, %2392 ]
  %3456 = phi float [ %3303, %3302 ], [ %2374, %2688 ], [ %2374, %2371 ], [ %3303, %3425 ], [ %3303, %3423 ], [ %3303, %3375 ], [ %3303, %3336 ], [ %2374, %2392 ]
  %3457 = phi float [ %3304, %3302 ], [ %2375, %2688 ], [ %2375, %2371 ], [ %3304, %3425 ], [ %3304, %3423 ], [ %3304, %3375 ], [ %3304, %3336 ], [ %2375, %2392 ]
  %3458 = phi float [ %3305, %3302 ], [ %2376, %2688 ], [ %2376, %2371 ], [ %3305, %3425 ], [ %3305, %3423 ], [ %3305, %3375 ], [ %3305, %3336 ], [ %2376, %2392 ]
  %3459 = phi float [ %3306, %3302 ], [ %2377, %2688 ], [ %2377, %2371 ], [ %3306, %3425 ], [ %3306, %3423 ], [ %3306, %3375 ], [ %3306, %3336 ], [ %2377, %2392 ]
  %3460 = phi float [ %3307, %3302 ], [ %2378, %2688 ], [ %2378, %2371 ], [ %3307, %3425 ], [ %3307, %3423 ], [ %3307, %3375 ], [ %3307, %3336 ], [ %2378, %2392 ]
  %3461 = phi float [ %3308, %3302 ], [ %2379, %2688 ], [ %2379, %2371 ], [ %3308, %3425 ], [ %3308, %3423 ], [ %3308, %3375 ], [ %3308, %3336 ], [ %2379, %2392 ]
  %3462 = phi float [ %2380, %3302 ], [ %2380, %2688 ], [ %2380, %2371 ], [ %3448, %3425 ], [ %2380, %3423 ], [ %3418, %3375 ], [ %3367, %3336 ], [ %2380, %2392 ]
  %3463 = phi float [ %2381, %3302 ], [ %2381, %2688 ], [ %2381, %2371 ], [ %3449, %3425 ], [ %2381, %3423 ], [ %3419, %3375 ], [ %3368, %3336 ], [ %2381, %2392 ]
  %3464 = phi float [ %2382, %3302 ], [ %2382, %2688 ], [ %2382, %2371 ], [ %3450, %3425 ], [ %2382, %3423 ], [ %3420, %3375 ], [ %3369, %3336 ], [ %2382, %2392 ]
  %3465 = phi float [ %2383, %3302 ], [ %2383, %2688 ], [ %2383, %2371 ], [ %3440, %3425 ], [ %2383, %3423 ], [ %3410, %3375 ], [ %3355, %3336 ], [ %2383, %2392 ]
  %3466 = phi float [ %2384, %3302 ], [ %2384, %2688 ], [ %2384, %2371 ], [ %3441, %3425 ], [ %2384, %3423 ], [ %3411, %3375 ], [ %3356, %3336 ], [ %2384, %2392 ]
  %3467 = phi float [ %2385, %3302 ], [ %2385, %2688 ], [ %2385, %2371 ], [ %3442, %3425 ], [ %2385, %3423 ], [ %3412, %3375 ], [ %3357, %3336 ], [ %2385, %2392 ]
  %3468 = phi float [ %3309, %3302 ], [ %2386, %2688 ], [ %2386, %2371 ], [ %3309, %3425 ], [ %3309, %3423 ], [ %3309, %3375 ], [ %3309, %3336 ], [ %2386, %2392 ]
  %3469 = phi float [ %2387, %3302 ], [ %2387, %2688 ], [ %2387, %2371 ], [ %3436, %3425 ], [ %2387, %3423 ], [ %3406, %3375 ], [ %3348, %3336 ], [ %2387, %2392 ]
  %3470 = phi float [ %2388, %3302 ], [ %2388, %2688 ], [ %2388, %2371 ], [ %3433, %3425 ], [ %2388, %3423 ], [ %3383, %3375 ], [ %3345, %3336 ], [ %2388, %2392 ]
  %3471 = phi float [ %2389, %3302 ], [ %2389, %2688 ], [ %2389, %2371 ], [ %3444, %3425 ], [ %2389, %3423 ], [ %3414, %3375 ], [ %3360, %3336 ], [ %2389, %2392 ]
  %3472 = phi float [ %2390, %3302 ], [ %2390, %2688 ], [ %2390, %2371 ], [ %3452, %3425 ], [ %2390, %3423 ], [ %3422, %3375 ], [ %3372, %3336 ], [ %2390, %2392 ]
  %3473 = phi float [ %3310, %3302 ], [ %2391, %2688 ], [ %2391, %2371 ], [ %3310, %3425 ], [ %3310, %3423 ], [ %3310, %3375 ], [ %3310, %3336 ], [ %2391, %2392 ]
  br i1 %451, label %4535, label %3474

; <label>:3474                                    ; preds = %3453
  %3475 = icmp ult i32 %505, 4
  %3476 = add i32 %62, 72
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %62, 76
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = or i32 %3481, %3478
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %4535, label %3484

; <label>:3484                                    ; preds = %3474
  %3485 = and i32 %3478, 262144
  %3486 = icmp ne i32 %3485, 0
  %3487 = select i1 %3486, float %65, float 1.000000e+00
  %3488 = select i1 %3486, float %66, float 0.000000e+00
  %3489 = select i1 %3486, float %67, float 0.000000e+00
  %3490 = select i1 %3486, float %68, float 1.000000e+00
  %3491 = select i1 %3486, float %69, float %90
  %3492 = select i1 %3486, float %70, float %91
  %3493 = add i32 %62, 332
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = lshr i32 %3495, 16
  %3497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3496)  ; LegacyF16ToF32(value)
  %3498 = fmul fast float %3497, 0x3F50624DE0000000
  %3499 = add i32 %62, 136
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 16
  %3503 = and i32 %3502, 255
  %3504 = lshr i32 %3501, 24
  %3505 = add i32 %62, 340
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = and i32 %3507, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %3507, 16
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = add i32 %62, 80
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = lshr i32 %3514, 22
  %3516 = shl nuw nsw i32 %3515, 5
  %3517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3516)  ; LegacyF16ToF32(value)
  %3518 = shl i32 %3514, 4
  %3519 = and i32 %3518, 32752
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = lshr i32 %3514, 7
  %3522 = and i32 %3521, 32752
  %3523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3522)  ; LegacyF16ToF32(value)
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3526 = fmul fast float %3525, 1.000000e+03
  %3527 = fmul fast float %441, %3526
  %3528 = call float @dx.op.unary.f32(i32 22, float %3527)  ; Frc(value)
  %3529 = fadd fast float %3528, %431
  %3530 = fmul fast float %442, %3526
  %3531 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3532 = fadd fast float %3531, %433
  %3533 = fmul fast float %3498, %3526
  %3534 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3535 = fmul fast float %3534, 0x401921FB60000000
  %3536 = fadd fast float %3535, %3517
  %3537 = call float @dx.op.unary.f32(i32 13, float %3536)  ; Sin(value)
  %3538 = call float @dx.op.unary.f32(i32 12, float %3536)  ; Cos(value)
  %3539 = fsub fast float -0.000000e+00, %3537
  %3540 = fadd fast float %3491, -5.000000e-01
  %3541 = fadd fast float %3492, -5.000000e-01
  %3542 = fmul fast float %3509, %3540
  %3543 = fmul fast float %3511, %3541
  %3544 = fadd fast float %3542, 5.000000e-01
  %3545 = fadd fast float %3543, 5.000000e-01
  %3546 = fmul fast float %3520, %3544
  %3547 = fmul fast float %3523, %3545
  %3548 = fmul fast float %3538, %3546
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3539, float %3547, float %3548)  ; FMad(a,b,c)
  %3550 = fmul fast float %3537, %3546
  %3551 = call float @dx.op.tertiary.f32(i32 46, float %3538, float %3547, float %3550)  ; FMad(a,b,c)
  %3552 = fadd fast float %3529, %3549
  %3553 = fadd fast float %3532, %3551
  %3554 = icmp ugt i32 %3503, 1
  %3555 = icmp ugt i32 %3501, 33554431
  %3556 = or i1 %3555, %3554
  br i1 %3556, label %3557, label %3582

; <label>:3557                                    ; preds = %3484
  %3558 = add i32 %62, 276
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = lshr i32 %3560, 16
  %3562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3561)  ; LegacyF16ToF32(value)
  %3563 = fmul fast float %3525, %3562
  %3564 = call float @dx.op.unary.f32(i32 22, float %3563)  ; Frc(value)
  %3565 = mul nuw nsw i32 %3503, %3504
  %3566 = uitofp i32 %3565 to float
  %3567 = fmul fast float %3564, %3566
  %3568 = call float @dx.op.unary.f32(i32 27, float %3567)  ; Round_ni(value)
  %3569 = fptoui float %3568 to i32
  %3570 = urem i32 %3569, %3503
  %3571 = udiv i32 %3569, %3504
  %3572 = call float @dx.op.unary.f32(i32 22, float %3552)  ; Frc(value)
  %3573 = call float @dx.op.unary.f32(i32 22, float %3553)  ; Frc(value)
  %3574 = uitofp i32 %3570 to float
  %3575 = uitofp i32 %3571 to float
  %3576 = fadd fast float %3572, %3574
  %3577 = fadd fast float %3573, %3575
  %3578 = uitofp i32 %3503 to float
  %3579 = uitofp i32 %3504 to float
  %3580 = fdiv fast float %3576, %3578
  %3581 = fdiv fast float %3577, %3579
  br label %3582

; <label>:3582                                    ; preds = %3557, %3484
  %3583 = phi float [ %3580, %3557 ], [ %3552, %3484 ]
  %3584 = phi float [ %3581, %3557 ], [ %3553, %3484 ]
  %3585 = and i32 %3478, 16777216
  %3586 = icmp eq i32 %3585, 0
  br i1 %3586, label %3696, label %3587

; <label>:3587                                    ; preds = %3582
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.CBufRet.f32 %3588, 2
  %3592 = fadd fast float %3589, %166
  %3593 = fadd fast float %3590, %167
  %3594 = fadd fast float %3591, %168
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  %3598 = icmp eq i32 %63, 65535
  br i1 %3598, label %3693, label %3599

; <label>:3599                                    ; preds = %3587
  %3600 = lshr i32 %63, 1
  %3601 = shl i32 %3600, 2
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %63, 1
  %3605 = icmp ne i32 %3604, 0
  %3606 = lshr i32 %3603, 16
  %3607 = and i32 %3603, 65535
  %3608 = select i1 %3605, i32 %3606, i32 %3607
  %3609 = icmp eq i32 %3608, 65535
  br i1 %3609, label %3689, label %3610

; <label>:3610                                    ; preds = %3599
  %3611 = mul nuw nsw i32 %3608, 40
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = add nuw nsw i32 %3611, 12
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = add nuw nsw i32 %3611, 24
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = add nuw nsw i32 %3611, 36
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = fsub fast float %3592, %3613
  %3630 = fsub fast float %3593, %3614
  %3631 = fsub fast float %3594, %3615
  %3632 = fmul fast float %3628, %3629
  %3633 = fmul fast float %3628, %3630
  %3634 = fmul fast float %3628, %3631
  %3635 = call float @dx.op.unary.f32(i32 27, float %3632)  ; Round_ni(value)
  %3636 = call float @dx.op.unary.f32(i32 27, float %3633)  ; Round_ni(value)
  %3637 = call float @dx.op.unary.f32(i32 27, float %3634)  ; Round_ni(value)
  %3638 = fadd fast float %3635, 5.000000e-01
  %3639 = fadd fast float %3636, 5.000000e-01
  %3640 = fadd fast float %3637, 5.000000e-01
  %3641 = fmul fast float %3638, %3618
  %3642 = fmul fast float %3639, %3619
  %3643 = fmul fast float %3640, %3620
  %3644 = shl i32 %63, 2
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %3646, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call float @dx.op.unary.f32(i32 22, float %3641)  ; Frc(value)
  %3650 = call float @dx.op.unary.f32(i32 22, float %3642)  ; Frc(value)
  %3651 = call float @dx.op.unary.f32(i32 22, float %3643)  ; Frc(value)
  %3652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3648, %dx.types.Handle %57, float %3649, float %3650, float %3651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = fmul fast float %3653, 1.023000e+03
  %3657 = fmul fast float %3654, 1.023000e+03
  %3658 = fmul fast float %3655, 1.023000e+03
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3660)  ; Round_ni(value)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3661)  ; Round_ni(value)
  %3665 = fsub fast float %3632, %3635
  %3666 = fsub fast float %3633, %3636
  %3667 = fsub fast float %3634, %3637
  %3668 = fmul fast float %3665, 7.500000e-01
  %3669 = fmul fast float %3666, 7.500000e-01
  %3670 = fmul fast float %3667, 7.500000e-01
  %3671 = fadd fast float %3635, 1.250000e-01
  %3672 = fadd fast float %3671, %3668
  %3673 = fadd fast float %3672, %3662
  %3674 = fadd fast float %3636, 1.250000e-01
  %3675 = fadd fast float %3674, %3669
  %3676 = fadd fast float %3675, %3663
  %3677 = fadd fast float %3637, 1.250000e-01
  %3678 = fadd fast float %3677, %3670
  %3679 = fadd fast float %3678, %3664
  %3680 = fmul fast float %3673, %3623
  %3681 = fmul fast float %3676, %3624
  %3682 = fmul fast float %3679, %3625
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = add i32 %3684, 0
  %3686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3685, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3686, %dx.types.Handle %55, float %3680, float %3681, float %3682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  br label %3689

; <label>:3689                                    ; preds = %3610, %3599
  %3690 = phi float [ %3688, %3610 ], [ -1.000000e+00, %3599 ]
  %3691 = fadd fast float %3690, %3597
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  br label %3693

; <label>:3693                                    ; preds = %3689, %3587
  %3694 = phi float [ %3692, %3689 ], [ %3597, %3587 ]
  %3695 = fmul fast float %3694, %500
  br label %3696

; <label>:3696                                    ; preds = %3693, %3582
  %3697 = phi float [ %3695, %3693 ], [ %500, %3582 ]
  %3698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.i32 %3698, 0
  %3700 = and i32 %3699, 256
  %3701 = icmp eq i32 %3700, 0
  br i1 %3701, label %3748, label %3702

; <label>:3702                                    ; preds = %3696
  %3703 = add i32 %62, 484
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = add i32 %3705, 0
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3707, %dx.types.Handle %108, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = add i32 %62, 148
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = shl i32 %3712, 4
  %3714 = and i32 %3713, 32752
  %3715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3714)  ; LegacyF16ToF32(value)
  %3716 = lshr i32 %3712, 7
  %3717 = and i32 %3716, 32752
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = fsub fast float 1.000000e+00, %3697
  %3720 = call float @dx.op.binary.f32(i32 35, float %3719, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3721 = bitcast float %3697 to i32
  %3722 = sitofp i32 %3721 to float
  %3723 = fadd fast float %3722, 0xC1CFBF8940000000
  %3724 = fmul fast float %3718, %3723
  %3725 = fadd fast float %3724, 0x41CFBF8940000000
  %3726 = fptosi float %3725 to i32
  %3727 = bitcast i32 %3726 to float
  %3728 = bitcast float %3720 to i32
  %3729 = sitofp i32 %3728 to float
  %3730 = fadd fast float %3729, 0xC1CFBF8940000000
  %3731 = fmul fast float %3730, %3718
  %3732 = fadd fast float %3731, 0x41CFBF8940000000
  %3733 = fptosi float %3732 to i32
  %3734 = bitcast i32 %3733 to float
  %3735 = fmul fast float %3727, %3715
  %3736 = fmul fast float %3734, %3715
  %3737 = fsub fast float %3720, %3735
  %3738 = fadd fast float %3736, %3720
  %3739 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3740 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3741 = fsub fast float %3709, %3739
  %3742 = fsub fast float %3740, %3739
  %3743 = bitcast float %3742 to i32
  %3744 = sub nsw i32 2129859010, %3743
  %3745 = bitcast i32 %3744 to float
  %3746 = fmul fast float %3745, %3741
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  br label %3748

; <label>:3748                                    ; preds = %3702, %3696
  %3749 = phi float [ %3747, %3702 ], [ %3697, %3696 ]
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = and i32 %3751, 128
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3770, label %3754

; <label>:3754                                    ; preds = %3748
  %3755 = add i32 %62, 468
  %3756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.i32 %3756, 0
  %3758 = add i32 %3757, 0
  %3759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3759, %dx.types.Handle %108, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = and i32 %3763, 524288
  %3765 = icmp ne i32 %3764, 0
  %3766 = fcmp fast ogt float %3761, 0x3FE0101020000000
  %3767 = select i1 %3766, float 1.000000e+00, float 0.000000e+00
  %3768 = select i1 %3765, float %3767, float %3761
  %3769 = fmul fast float %3768, %3749
  br label %3770

; <label>:3770                                    ; preds = %3754, %3748
  %3771 = phi float [ %3769, %3754 ], [ %3749, %3748 ]
  %3772 = fcmp fast ult float %3771, 0x3F70101020000000
  br i1 %3772, label %4535, label %3773

; <label>:3773                                    ; preds = %3770
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = and i32 %3775, 16
  %3777 = icmp eq i32 %3776, 0
  br i1 %3777, label %3976, label %3778

; <label>:3778                                    ; preds = %3773
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = add i32 %62, 420
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = add i32 %3783, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3785, %dx.types.Handle %107, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3789 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3790 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3791 = and i32 %3780, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = lshr i32 %3780, 8
  %3794 = and i32 %3793, 255
  %3795 = uitofp i32 %3794 to float
  %3796 = fmul fast float %3790, %3792
  %3797 = fadd fast float %3796, %3795
  %3798 = fmul fast float %3797, 0x3F70101000000000
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = and i32 %3800, 512
  %3802 = icmp eq i32 %3801, 0
  br i1 %3802, label %3811, label %3803

; <label>:3803                                    ; preds = %3778
  %3804 = add i32 %62, 500
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = add i32 %3806, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3807, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3808, %dx.types.Handle %108, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  br label %3811

; <label>:3811                                    ; preds = %3803, %3778
  %3812 = phi float [ %3810, %3803 ], [ 1.000000e+00, %3778 ]
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = and i32 %3814, 33554432
  %3816 = icmp eq i32 %3815, 0
  br i1 %3816, label %3923, label %3817

; <label>:3817                                    ; preds = %3811
  %3818 = add i32 %62, 272
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = and i32 %3820, 65535
  %3822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3821)  ; LegacyF16ToF32(value)
  %3823 = lshr i32 %3820, 16
  %3824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3823)  ; LegacyF16ToF32(value)
  %3825 = add i32 %62, 276
  %3826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.i32 %3826, 0
  %3828 = and i32 %3827, 65535
  %3829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3828)  ; LegacyF16ToF32(value)
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = lshr i32 %3831, 24
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3833, 0x3F70101020000000
  %3835 = and i32 %3831, 255
  %3836 = uitofp i32 %3835 to float
  %3837 = fmul fast float %3836, 0x3F70101020000000
  %3838 = lshr i32 %3831, 8
  %3839 = and i32 %3838, 255
  %3840 = uitofp i32 %3839 to float
  %3841 = fmul fast float %3840, 0x3F70101020000000
  %3842 = lshr i32 %3831, 16
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3844, 0x3F70101020000000
  %3846 = add i32 %62, 268
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = lshr i32 %3848, 24
  %3850 = uitofp i32 %3849 to float
  %3851 = fmul fast float %3850, 0x3F70101020000000
  %3852 = and i32 %3848, 255
  %3853 = uitofp i32 %3852 to float
  %3854 = fmul fast float %3853, 0x3F70101020000000
  %3855 = lshr i32 %3848, 8
  %3856 = and i32 %3855, 255
  %3857 = uitofp i32 %3856 to float
  %3858 = fmul fast float %3857, 0x3F70101020000000
  %3859 = lshr i32 %3848, 16
  %3860 = and i32 %3859, 255
  %3861 = uitofp i32 %3860 to float
  %3862 = fmul fast float %3861, 0x3F70101020000000
  %3863 = bitcast float %3787 to i32
  %3864 = ashr i32 %3863, 1
  %3865 = sub nsw i32 1597463174, %3864
  %3866 = bitcast i32 %3865 to float
  %3867 = fmul fast float %3787, 5.000000e-01
  %3868 = fmul fast float %3866, %3866
  %3869 = fmul fast float %3868, %3867
  %3870 = fsub fast float 1.500000e+00, %3869
  %3871 = fmul fast float %3866, %3787
  %3872 = fmul fast float %3871, %3870
  %3873 = bitcast float %3788 to i32
  %3874 = ashr i32 %3873, 1
  %3875 = sub nsw i32 1597463174, %3874
  %3876 = bitcast i32 %3875 to float
  %3877 = fmul fast float %3788, 5.000000e-01
  %3878 = fmul fast float %3876, %3876
  %3879 = fmul fast float %3878, %3877
  %3880 = fsub fast float 1.500000e+00, %3879
  %3881 = fmul fast float %3876, %3788
  %3882 = fmul fast float %3881, %3880
  %3883 = bitcast float %3789 to i32
  %3884 = ashr i32 %3883, 1
  %3885 = sub nsw i32 1597463174, %3884
  %3886 = bitcast i32 %3885 to float
  %3887 = fmul fast float %3789, 5.000000e-01
  %3888 = fmul fast float %3886, %3886
  %3889 = fmul fast float %3888, %3887
  %3890 = fsub fast float 1.500000e+00, %3889
  %3891 = fmul fast float %3886, %3789
  %3892 = fmul fast float %3891, %3890
  %3893 = fsub fast float %3872, %3854
  %3894 = fsub fast float %3882, %3858
  %3895 = fsub fast float %3892, %3862
  %3896 = fmul fast float %3893, %3822
  %3897 = fmul fast float %3894, %3824
  %3898 = fmul fast float %3895, %3829
  %3899 = fadd fast float %3896, %3837
  %3900 = fadd fast float %3897, %3841
  %3901 = fadd fast float %3898, %3845
  %3902 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = fmul fast float %3902, %3902
  %3906 = fmul fast float %3903, %3903
  %3907 = fmul fast float %3904, %3904
  %3908 = fsub fast float %3905, %3787
  %3909 = fsub fast float %3906, %3788
  %3910 = fsub fast float %3907, %3789
  %3911 = fmul fast float %3908, %3812
  %3912 = fmul fast float %3909, %3812
  %3913 = fmul fast float %3910, %3812
  %3914 = fadd fast float %3911, %3787
  %3915 = fadd fast float %3912, %3788
  %3916 = fadd fast float %3913, %3789
  %3917 = fadd fast float %3834, %3798
  %3918 = fsub fast float %3917, %3851
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = fsub fast float %3919, %3798
  %3921 = fmul fast float %3920, %3812
  %3922 = fadd fast float %3921, %3798
  br label %3976

; <label>:3923                                    ; preds = %3811
  %3924 = and i32 %3814, 134217728
  %3925 = icmp eq i32 %3924, 0
  br i1 %3925, label %3960, label %3926

; <label>:3926                                    ; preds = %3923
  %3927 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %3928 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %3929 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %3930 = fadd fast float %3927, -5.000000e-01
  %3931 = fadd fast float %3928, -5.000000e-01
  %3932 = fadd fast float %3929, -5.000000e-01
  %3933 = fmul fast float %3930, %3812
  %3934 = fmul fast float %3931, %3812
  %3935 = fmul fast float %3932, %3812
  %3936 = fadd fast float %3933, 5.000000e-01
  %3937 = fadd fast float %3934, 5.000000e-01
  %3938 = fadd fast float %3935, 5.000000e-01
  %3939 = call float @dx.op.unary.f32(i32 24, float %3787)  ; Sqrt(value)
  %3940 = call float @dx.op.unary.f32(i32 24, float %3788)  ; Sqrt(value)
  %3941 = call float @dx.op.unary.f32(i32 24, float %3789)  ; Sqrt(value)
  %3942 = fmul fast float %3936, 2.000000e+00
  %3943 = fsub fast float 1.000000e+00, %3942
  %3944 = fmul fast float %3943, %3939
  %3945 = fadd fast float %3944, %3942
  %3946 = fmul fast float %3945, %3939
  %3947 = fmul fast float %3937, 2.000000e+00
  %3948 = fsub fast float 1.000000e+00, %3947
  %3949 = fmul fast float %3948, %3940
  %3950 = fadd fast float %3949, %3947
  %3951 = fmul fast float %3950, %3940
  %3952 = fmul fast float %3938, 2.000000e+00
  %3953 = fsub fast float 1.000000e+00, %3952
  %3954 = fmul fast float %3953, %3941
  %3955 = fadd fast float %3954, %3952
  %3956 = fmul fast float %3955, %3941
  %3957 = fmul fast float %3946, %3946
  %3958 = fmul fast float %3951, %3951
  %3959 = fmul fast float %3956, %3956
  br label %3976

; <label>:3960                                    ; preds = %3923
  %3961 = fmul fast float %418, %418
  %3962 = fmul fast float %422, %422
  %3963 = fmul fast float %426, %426
  %3964 = fadd fast float %3961, -1.000000e+00
  %3965 = fadd fast float %3962, -1.000000e+00
  %3966 = fadd fast float %3963, -1.000000e+00
  %3967 = fmul fast float %3812, %3964
  %3968 = fmul fast float %3812, %3965
  %3969 = fmul fast float %3812, %3966
  %3970 = fadd fast float %3967, 1.000000e+00
  %3971 = fadd fast float %3968, 1.000000e+00
  %3972 = fadd fast float %3969, 1.000000e+00
  %3973 = fmul fast float %3970, %3787
  %3974 = fmul fast float %3971, %3788
  %3975 = fmul fast float %3972, %3789
  br label %3976

; <label>:3976                                    ; preds = %3960, %3926, %3817, %3773
  %3977 = phi float [ %3922, %3817 ], [ %3798, %3926 ], [ %3798, %3960 ], [ 0x3FA23C0BE0000000, %3773 ]
  %3978 = phi float [ %3914, %3817 ], [ %3957, %3926 ], [ %3973, %3960 ], [ 1.000000e+00, %3773 ]
  %3979 = phi float [ %3915, %3817 ], [ %3958, %3926 ], [ %3974, %3960 ], [ 1.000000e+00, %3773 ]
  %3980 = phi float [ %3916, %3817 ], [ %3959, %3926 ], [ %3975, %3960 ], [ 1.000000e+00, %3773 ]
  %3981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.i32 %3981, 1
  %3983 = and i32 %3982, 1
  %3984 = icmp ne i32 %3983, 0
  %3985 = add i32 %62, 356
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = and i32 %3987, 32
  %3989 = icmp ne i32 %3988, 0
  %3990 = and i1 %3984, %3989
  %3991 = select i1 %3990, float 1.000000e+00, float %3978
  %3992 = select i1 %3990, float 0x3FD3333340000000, float %3979
  %3993 = select i1 %3990, float 0x3FD3333340000000, float %3980
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = and i32 %3995, 32
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %4070, label %3998

; <label>:3998                                    ; preds = %3976
  %3999 = add i32 %62, 140
  %4000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3999, i32 undef)  ; BufferLoad(srv,index,wot)
  %4001 = extractvalue %dx.types.ResRet.i32 %4000, 0
  %4002 = add i32 %62, 436
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4002, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = add i32 %4004, 0
  %4006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4006, %dx.types.Handle %107, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = extractvalue %dx.types.ResRet.f32 %4007, 3
  %4012 = and i32 %4001, 255
  %4013 = uitofp i32 %4012 to float
  %4014 = lshr i32 %4001, 8
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = lshr i32 %4001, 16
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = fmul fast float %4019, 0x3F70101000000000
  %4021 = fmul fast float %4008, %4013
  %4022 = fadd fast float %4021, %4016
  %4023 = fmul fast float %4022, 0x3F70101000000000
  %4024 = fadd fast float %4009, -5.000000e-01
  %4025 = fadd fast float %4011, -5.000000e-01
  %4026 = fmul fast float %4024, %4020
  %4027 = fmul fast float %4025, %4020
  %4028 = fadd fast float %4026, 5.000000e-01
  %4029 = fadd fast float %4027, 5.000000e-01
  %4030 = fmul fast float %4028, 2.000000e+00
  %4031 = fadd fast float %4030, -1.000000e+00
  %4032 = fmul fast float %4029, 2.000000e+00
  %4033 = fadd fast float %4032, -1.000000e+00
  %4034 = fadd fast float %4031, %4033
  %4035 = fmul fast float %4034, 5.000000e-01
  %4036 = fsub fast float %4031, %4033
  %4037 = fmul fast float %4036, 5.000000e-01
  %4038 = call float @dx.op.unary.f32(i32 6, float %4035)  ; FAbs(value)
  %4039 = fsub fast float 1.000000e+00, %4038
  %4040 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4041 = fsub fast float %4039, %4040
  %4042 = call float @dx.op.dot3.f32(i32 55, float %4035, float %4037, float %4041, float %4035, float %4037, float %4041)  ; Dot3(ax,ay,az,bx,by,bz)
  %4043 = call float @dx.op.unary.f32(i32 25, float %4042)  ; Rsqrt(value)
  %4044 = fmul fast float %4035, %4043
  %4045 = fmul fast float %4037, %4043
  %4046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.i32 %4046, 0
  %4048 = and i32 %4047, 67108864
  %4049 = icmp eq i32 %4048, 0
  br i1 %4049, label %4066, label %4050

; <label>:4050                                    ; preds = %3998
  %4051 = add i32 %62, 328
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = and i32 %4053, 65535
  %4055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4054)  ; LegacyF16ToF32(value)
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = and i32 %4057, 65535
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = lshr i32 %4053, 16
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = fsub fast float %4023, %4061
  %4063 = fmul fast float %4062, %4055
  %4064 = fadd fast float %4063, %4059
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  br label %4066

; <label>:4066                                    ; preds = %4050, %3998
  %4067 = phi float [ %4065, %4050 ], [ %4023, %3998 ]
  %4068 = call float @dx.op.dot2.f32(i32 54, float %4044, float %4045, float %3487, float %3488)  ; Dot2(ax,ay,bx,by)
  %4069 = call float @dx.op.dot2.f32(i32 54, float %4044, float %4045, float %3489, float %3490)  ; Dot2(ax,ay,bx,by)
  br label %4070

; <label>:4070                                    ; preds = %4066, %3976
  %4071 = phi float [ %4067, %4066 ], [ 0x3FD6666660000000, %3976 ]
  %4072 = phi float [ %4068, %4066 ], [ 0.000000e+00, %3976 ]
  %4073 = phi float [ %4069, %4066 ], [ 0.000000e+00, %3976 ]
  %4074 = phi float [ %4010, %4066 ], [ 1.000000e+00, %3976 ]
  %4075 = add i32 %62, 208
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = lshr i32 %4077, 22
  %4079 = shl nuw nsw i32 %4078, 5
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = and i32 %4082, 64
  %4084 = icmp eq i32 %4083, 0
  br i1 %4084, label %4118, label %4085

; <label>:4085                                    ; preds = %4070
  %4086 = add i32 %62, 452
  %4087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.i32 %4087, 0
  %4089 = add i32 %4088, 0
  %4090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = and i32 %4092, 131072
  %4094 = icmp eq i32 %4093, 0
  %4095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4090, %dx.types.Handle %107, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4096 = extractvalue %dx.types.ResRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.ResRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.ResRet.f32 %4095, 2
  %4099 = fmul fast float %4096, %406
  %4100 = fmul fast float %4097, %409
  %4101 = fmul fast float %4098, %412
  br i1 %4094, label %4108, label %4102

; <label>:4102                                    ; preds = %4085
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = fmul fast float %4104, %4099
  %4106 = fmul fast float %4104, %4100
  %4107 = fmul fast float %4104, %4101
  br label %4108

; <label>:4108                                    ; preds = %4102, %4085
  %4109 = phi float [ %4105, %4102 ], [ %4099, %4085 ]
  %4110 = phi float [ %4106, %4102 ], [ %4100, %4085 ]
  %4111 = phi float [ %4107, %4102 ], [ %4101, %4085 ]
  %4112 = fmul fast float %4109, %4080
  %4113 = select i1 %260, float %4112, float %4109
  %4114 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4110, float %4111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4115 = select i1 %260, float 0.000000e+00, float %4109
  %4116 = select i1 %260, float %4114, float %4110
  %4117 = select i1 %260, float 0.000000e+00, float %4111
  br label %4118

; <label>:4118                                    ; preds = %4108, %4070
  %4119 = phi float [ %4115, %4108 ], [ 0.000000e+00, %4070 ]
  %4120 = phi float [ %4116, %4108 ], [ 0.000000e+00, %4070 ]
  %4121 = phi float [ %4117, %4108 ], [ 0.000000e+00, %4070 ]
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = and i32 %4123, 1024
  %4125 = icmp eq i32 %4124, 0
  br i1 %4125, label %4156, label %4126

; <label>:4126                                    ; preds = %4118
  %4127 = add i32 %62, 200
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = fmul fast float %4131, 0x3F70101020000000
  %4133 = lshr i32 %4129, 8
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4135, 0x3F70101020000000
  %4137 = lshr i32 %4129, 16
  %4138 = and i32 %4137, 255
  %4139 = uitofp i32 %4138 to float
  %4140 = fmul fast float %4139, 0x3F70101020000000
  %4141 = fmul fast float %4132, %4132
  %4142 = fmul fast float %4136, %4136
  %4143 = fmul fast float %4140, %4140
  %4144 = add i32 %62, 516
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = add i32 %4146, 0
  %4148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4148, %dx.types.Handle %108, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = fmul fast float %4141, %4150
  %4154 = fmul fast float %4142, %4151
  %4155 = fmul fast float %4143, %4152
  br label %4156

; <label>:4156                                    ; preds = %4126, %4118
  %4157 = phi float [ %4153, %4126 ], [ 0.000000e+00, %4118 ]
  %4158 = phi float [ %4154, %4126 ], [ 0.000000e+00, %4118 ]
  %4159 = phi float [ %4155, %4126 ], [ 0.000000e+00, %4118 ]
  %4160 = fcmp fast ogt float %4157, 0.000000e+00
  %4161 = fcmp fast ogt float %4158, 0.000000e+00
  %4162 = fcmp fast ogt float %4159, 0.000000e+00
  %4163 = call float @dx.op.unary.f32(i32 23, float %4157)  ; Log(value)
  %4164 = call float @dx.op.unary.f32(i32 23, float %4158)  ; Log(value)
  %4165 = call float @dx.op.unary.f32(i32 23, float %4159)  ; Log(value)
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = lshr i32 %4167, 7
  %4169 = and i32 %4168, 32752
  %4170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4169)  ; LegacyF16ToF32(value)
  %4171 = fmul fast float %4163, 0xBFE62E4300000000
  %4172 = fmul fast float %4171, %4170
  %4173 = fmul fast float %4164, 0xBFE62E4300000000
  %4174 = fmul fast float %4173, %4170
  %4175 = fmul fast float %4165, 0xBFE62E4300000000
  %4176 = fmul fast float %4175, %4170
  %4177 = select i1 %4160, float %4172, float 1.270000e+02
  %4178 = select i1 %4161, float %4174, float 1.270000e+02
  %4179 = select i1 %4162, float %4176, float 1.270000e+02
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = and i32 %4181, 26624
  %4183 = icmp eq i32 %4182, 0
  br i1 %4183, label %4241, label %4184

; <label>:4184                                    ; preds = %4156
  %4185 = add i32 %62, 532
  %4186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.i32 %4186, 0
  %4188 = add i32 %4187, 0
  %4189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4189, %dx.types.Handle %108, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = and i32 %4195, 1048576
  %4197 = icmp ne i32 %4196, 0
  %4198 = and i32 %4195, 8192
  %4199 = icmp eq i32 %4198, 0
  br i1 %4199, label %4214, label %4200

; <label>:4200                                    ; preds = %4184
  %4201 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4202 = select i1 %4197, float %4201, float %4192
  %4203 = select i1 %4197, float %4191, float %4192
  %4204 = add i32 %62, 144
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = lshr i32 %4206, 16
  %4208 = and i32 %4207, 255
  %4209 = uitofp i32 %4208 to float
  %4210 = fmul fast float %4209, 0x3F80101020000000
  %4211 = fmul fast float %4210, %4203
  %4212 = fmul fast float %4210, %4192
  %4213 = fmul fast float %4210, %4202
  br label %4214

; <label>:4214                                    ; preds = %4200, %4184
  %4215 = phi float [ %4211, %4200 ], [ 0.000000e+00, %4184 ]
  %4216 = phi float [ %4212, %4200 ], [ 0.000000e+00, %4184 ]
  %4217 = phi float [ %4213, %4200 ], [ 0.000000e+00, %4184 ]
  %4218 = and i32 %4195, 2048
  %4219 = icmp eq i32 %4218, 0
  br i1 %4219, label %4228, label %4220

; <label>:4220                                    ; preds = %4214
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = shl i32 %4222, 4
  %4224 = and i32 %4223, 32752
  %4225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4224)  ; LegacyF16ToF32(value)
  %4226 = fmul fast float %4225, %4193
  %4227 = call float @dx.op.binary.f32(i32 35, float %4226, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4228

; <label>:4228                                    ; preds = %4220, %4214
  %4229 = phi float [ %4227, %4220 ], [ 0x3F70101020000000, %4214 ]
  %4230 = and i32 %4195, 16384
  %4231 = icmp eq i32 %4230, 0
  br i1 %4231, label %4241, label %4232

; <label>:4232                                    ; preds = %4228
  %4233 = add i32 %62, 144
  %4234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.i32 %4234, 0
  %4236 = lshr i32 %4235, 24
  %4237 = uitofp i32 %4236 to float
  %4238 = fmul fast float %4191, 0x3F70101020000000
  %4239 = select i1 %4197, float 0x3F70101020000000, float %4238
  %4240 = fmul fast float %4239, %4237
  br label %4241

; <label>:4241                                    ; preds = %4232, %4228, %4156
  %4242 = phi float [ %4215, %4232 ], [ %4215, %4228 ], [ 0.000000e+00, %4156 ]
  %4243 = phi float [ %4216, %4232 ], [ %4216, %4228 ], [ 0.000000e+00, %4156 ]
  %4244 = phi float [ %4217, %4232 ], [ %4217, %4228 ], [ 0.000000e+00, %4156 ]
  %4245 = phi float [ %4229, %4232 ], [ %4229, %4228 ], [ 0x3F70101020000000, %4156 ]
  %4246 = phi float [ %4240, %4232 ], [ 0.000000e+00, %4228 ], [ 0.000000e+00, %4156 ]
  %4247 = add i32 %62, 144
  %4248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4247, i32 undef)  ; BufferLoad(srv,index,wot)
  %4249 = extractvalue %dx.types.ResRet.i32 %4248, 0
  %4250 = and i32 %4249, 255
  %4251 = uitofp i32 %4250 to float
  %4252 = lshr i32 %4249, 8
  %4253 = and i32 %4252, 255
  %4254 = uitofp i32 %4253 to float
  %4255 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4256 = fmul fast float %4254, %4255
  %4257 = fadd fast float %4256, %4251
  %4258 = fmul fast float %4257, 0x3F70101020000000
  %4259 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  br i1 %3475, label %4260, label %4295

; <label>:4260                                    ; preds = %4241
  %4261 = fmul fast float %4245, 2.000000e+00
  %4262 = fcmp fast olt float %4177, 1.270000e+02
  %4263 = fcmp fast olt float %4178, 1.270000e+02
  %4264 = fcmp fast olt float %4179, 1.270000e+02
  %4265 = fmul fast float %4177, 0xBFF7154760000000
  %4266 = fmul fast float %4265, %4261
  %4267 = fmul fast float %4178, 0xBFF7154760000000
  %4268 = fmul fast float %4267, %4261
  %4269 = fmul fast float %4179, 0xBFF7154760000000
  %4270 = fmul fast float %4269, %4261
  %4271 = call float @dx.op.unary.f32(i32 21, float %4266)  ; Exp(value)
  %4272 = call float @dx.op.unary.f32(i32 21, float %4268)  ; Exp(value)
  %4273 = call float @dx.op.unary.f32(i32 21, float %4270)  ; Exp(value)
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = fadd fast float %4274, -1.000000e+00
  %4278 = select i1 %4262, float %4277, float -1.000000e+00
  %4279 = fadd fast float %4275, -1.000000e+00
  %4280 = select i1 %4263, float %4279, float -1.000000e+00
  %4281 = fadd fast float %4276, -1.000000e+00
  %4282 = select i1 %4264, float %4281, float -1.000000e+00
  %4283 = fmul fast float %4278, %3771
  %4284 = fmul fast float %4280, %3771
  %4285 = fmul fast float %4282, %3771
  %4286 = fadd fast float %4283, 1.000000e+00
  %4287 = fadd fast float %4284, 1.000000e+00
  %4288 = fadd fast float %4285, 1.000000e+00
  %4289 = fmul fast float %4286, %3456
  %4290 = fmul fast float %4287, %3457
  %4291 = fmul fast float %4288, %3458
  %4292 = fmul fast float %4286, %3459
  %4293 = fmul fast float %4287, %3460
  %4294 = fmul fast float %4288, %3461
  br label %4295

; <label>:4295                                    ; preds = %4260, %4241
  %4296 = phi float [ %4289, %4260 ], [ %3456, %4241 ]
  %4297 = phi float [ %4290, %4260 ], [ %3457, %4241 ]
  %4298 = phi float [ %4291, %4260 ], [ %3458, %4241 ]
  %4299 = phi float [ %4292, %4260 ], [ %3459, %4241 ]
  %4300 = phi float [ %4293, %4260 ], [ %3460, %4241 ]
  %4301 = phi float [ %4294, %4260 ], [ %3461, %4241 ]
  %4302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.i32 %4302, 0
  %4304 = and i32 %4303, 3
  %4305 = icmp eq i32 %4304, 3
  br i1 %4305, label %4384, label %4306

; <label>:4306                                    ; preds = %4295
  %4307 = and i32 %4303, 16
  %4308 = icmp ne i32 %4307, 0
  %4309 = select i1 %4308, float %3771, float 0.000000e+00
  %4310 = icmp eq i32 %4304, 0
  br i1 %4310, label %4311, label %4339

; <label>:4311                                    ; preds = %4306
  %4312 = and i32 %4303, 64
  %4313 = icmp ne i32 %4312, 0
  %4314 = select i1 %4313, float %3771, float 0.000000e+00
  %4315 = fsub fast float %3991, %4296
  %4316 = fsub fast float %3992, %4297
  %4317 = fsub fast float %3993, %4298
  %4318 = fmul fast float %4309, %4315
  %4319 = fmul fast float %4309, %4316
  %4320 = fmul fast float %4309, %4317
  %4321 = fadd fast float %4318, %4296
  %4322 = fadd fast float %4319, %4297
  %4323 = fadd fast float %4320, %4298
  %4324 = fsub fast float %3977, %3468
  %4325 = fmul fast float %4309, %4324
  %4326 = fadd fast float %4325, %3468
  %4327 = fsub fast float %4119, %4299
  %4328 = fsub fast float %4120, %4300
  %4329 = fsub fast float %4121, %4301
  %4330 = fmul fast float %4314, %4327
  %4331 = fmul fast float %4314, %4328
  %4332 = fmul fast float %4314, %4329
  %4333 = fadd fast float %4330, %4299
  %4334 = fadd fast float %4331, %4300
  %4335 = fadd fast float %4332, %4301
  %4336 = fsub fast float %4259, %3473
  %4337 = fmul fast float %4309, %4336
  %4338 = fadd fast float %4337, %3473
  br label %4384

; <label>:4339                                    ; preds = %4306
  %4340 = icmp eq i32 %4304, 1
  br i1 %4340, label %4341, label %4354

; <label>:4341                                    ; preds = %4339
  %4342 = fadd fast float %3991, -1.000000e+00
  %4343 = fadd fast float %3992, -1.000000e+00
  %4344 = fadd fast float %3993, -1.000000e+00
  %4345 = fmul fast float %4309, %4342
  %4346 = fmul fast float %4309, %4343
  %4347 = fmul fast float %4309, %4344
  %4348 = fadd fast float %4345, 1.000000e+00
  %4349 = fadd fast float %4346, 1.000000e+00
  %4350 = fadd fast float %4347, 1.000000e+00
  %4351 = fmul fast float %4348, %4296
  %4352 = fmul fast float %4349, %4297
  %4353 = fmul fast float %4350, %4298
  br label %4384

; <label>:4354                                    ; preds = %4339
  %4355 = icmp eq i32 %4304, 2
  br i1 %4355, label %4356, label %4384

; <label>:4356                                    ; preds = %4354
  %4357 = call float @dx.op.unary.f32(i32 24, float %3991)  ; Sqrt(value)
  %4358 = call float @dx.op.unary.f32(i32 24, float %3992)  ; Sqrt(value)
  %4359 = call float @dx.op.unary.f32(i32 24, float %3993)  ; Sqrt(value)
  %4360 = fadd fast float %4357, -5.000000e-01
  %4361 = fadd fast float %4358, -5.000000e-01
  %4362 = fadd fast float %4359, -5.000000e-01
  %4363 = fmul fast float %4360, %4309
  %4364 = fmul fast float %4361, %4309
  %4365 = fmul fast float %4362, %4309
  %4366 = fadd fast float %4363, 5.000000e-01
  %4367 = fadd fast float %4364, 5.000000e-01
  %4368 = fadd fast float %4365, 5.000000e-01
  %4369 = fmul fast float %4366, 2.000000e+00
  %4370 = fsub fast float 1.000000e+00, %4369
  %4371 = fmul fast float %4370, %4296
  %4372 = fadd fast float %4371, %4369
  %4373 = fmul fast float %4372, %4296
  %4374 = fmul fast float %4367, 2.000000e+00
  %4375 = fsub fast float 1.000000e+00, %4374
  %4376 = fmul fast float %4375, %4297
  %4377 = fadd fast float %4376, %4374
  %4378 = fmul fast float %4377, %4297
  %4379 = fmul fast float %4368, 2.000000e+00
  %4380 = fsub fast float 1.000000e+00, %4379
  %4381 = fmul fast float %4380, %4298
  %4382 = fadd fast float %4381, %4379
  %4383 = fmul fast float %4382, %4298
  br label %4384

; <label>:4384                                    ; preds = %4356, %4354, %4341, %4311, %4295
  %4385 = phi float [ %4296, %4295 ], [ %4373, %4356 ], [ %4296, %4354 ], [ %4351, %4341 ], [ %4321, %4311 ]
  %4386 = phi float [ %4297, %4295 ], [ %4378, %4356 ], [ %4297, %4354 ], [ %4352, %4341 ], [ %4322, %4311 ]
  %4387 = phi float [ %4298, %4295 ], [ %4383, %4356 ], [ %4298, %4354 ], [ %4353, %4341 ], [ %4323, %4311 ]
  %4388 = phi float [ %4299, %4295 ], [ %4299, %4356 ], [ %4299, %4354 ], [ %4299, %4341 ], [ %4333, %4311 ]
  %4389 = phi float [ %4300, %4295 ], [ %4300, %4356 ], [ %4300, %4354 ], [ %4300, %4341 ], [ %4334, %4311 ]
  %4390 = phi float [ %4301, %4295 ], [ %4301, %4356 ], [ %4301, %4354 ], [ %4301, %4341 ], [ %4335, %4311 ]
  %4391 = phi float [ %3468, %4295 ], [ %3468, %4356 ], [ %3468, %4354 ], [ %3468, %4341 ], [ %4326, %4311 ]
  %4392 = phi float [ %3473, %4295 ], [ %3473, %4356 ], [ %3473, %4354 ], [ %3473, %4341 ], [ %4338, %4311 ]
  %4393 = and i32 %4303, 12
  %4394 = icmp eq i32 %4393, 12
  br i1 %4394, label %4535, label %4395

; <label>:4395                                    ; preds = %4384
  %4396 = and i32 %4303, 2097184
  %4397 = icmp eq i32 %4396, 2097184
  %4398 = select i1 %4397, float %3771, float 0.000000e+00
  %4399 = and i32 %4303, 4194336
  %4400 = icmp eq i32 %4399, 4194336
  %4401 = select i1 %4400, float %3771, float 0.000000e+00
  %4402 = and i32 %4303, 8388640
  %4403 = icmp eq i32 %4402, 8388640
  %4404 = select i1 %4403, float %3771, float 0.000000e+00
  %4405 = and i32 %4303, 1024
  %4406 = icmp ne i32 %4405, 0
  %4407 = select i1 %4406, float %3771, float 0.000000e+00
  %4408 = and i32 %4303, 2048
  %4409 = icmp ne i32 %4408, 0
  %4410 = select i1 %4409, float %3771, float 0.000000e+00
  %4411 = and i32 %4303, 8192
  %4412 = icmp ne i32 %4411, 0
  %4413 = select i1 %4412, float %3771, float 0.000000e+00
  %4414 = and i32 %4303, 16384
  %4415 = icmp ne i32 %4414, 0
  %4416 = select i1 %4415, float %3771, float 0.000000e+00
  %4417 = icmp eq i32 %4393, 0
  br i1 %4417, label %4418, label %4455

; <label>:4418                                    ; preds = %4395
  %4419 = fsub fast float %4072, %3454
  %4420 = fsub fast float %4073, %3455
  %4421 = fmul fast float %4398, %4419
  %4422 = fmul fast float %4398, %4420
  %4423 = fadd fast float %4421, %3454
  %4424 = fadd fast float %4422, %3455
  %4425 = fsub fast float %4074, %3470
  %4426 = fmul fast float %4401, %4425
  %4427 = fadd fast float %4426, %3470
  %4428 = fsub fast float %4071, %3469
  %4429 = fmul fast float %4404, %4428
  %4430 = fadd fast float %4429, %3469
  %4431 = fsub fast float %4177, %3465
  %4432 = fsub fast float %4178, %3466
  %4433 = fsub fast float %4179, %3467
  %4434 = fmul fast float %4407, %4431
  %4435 = fmul fast float %4407, %4432
  %4436 = fmul fast float %4407, %4433
  %4437 = fadd fast float %4434, %3465
  %4438 = fadd fast float %4435, %3466
  %4439 = fadd fast float %4436, %3467
  %4440 = fsub fast float %4245, %3471
  %4441 = fmul fast float %4410, %4440
  %4442 = fadd fast float %4441, %3471
  %4443 = fsub fast float %4242, %3462
  %4444 = fsub fast float %4243, %3463
  %4445 = fsub fast float %4244, %3464
  %4446 = fmul fast float %4413, %4443
  %4447 = fmul fast float %4413, %4444
  %4448 = fmul fast float %4413, %4445
  %4449 = fadd fast float %4446, %3462
  %4450 = fadd fast float %4447, %3463
  %4451 = fadd fast float %4448, %3464
  %4452 = fsub fast float %4246, %3472
  %4453 = fmul fast float %4416, %4452
  %4454 = fadd fast float %4453, %3472
  br label %4535

; <label>:4455                                    ; preds = %4395
  %4456 = icmp eq i32 %4393, 4
  br i1 %4456, label %4457, label %4505

; <label>:4457                                    ; preds = %4455
  %4458 = fmul fast float %4398, %4072
  %4459 = fmul fast float %4398, %4073
  %4460 = fadd fast float %4458, %3454
  %4461 = fadd fast float %4459, %3455
  %4462 = call float @dx.op.binary.f32(i32 36, float %3470, float %4074)  ; FMin(a,b)
  %4463 = fsub fast float %4462, %3470
  %4464 = fmul fast float %4463, %4401
  %4465 = fadd fast float %4464, %3470
  %4466 = fadd fast float %4071, %3469
  %4467 = fmul fast float %4466, 0x3FF337FAE0000000
  %4468 = fmul fast float %3469, %3469
  %4469 = fmul fast float %4071, %4071
  %4470 = fadd fast float %4469, %4468
  %4471 = fmul fast float %4470, 0x3FE5152B00000000
  %4472 = fmul fast float %3469, 0xBFCC1F85E0000000
  %4473 = fmul fast float %4472, %4071
  %4474 = fadd fast float %4473, 0xBFE1363700000000
  %4475 = fadd fast float %4474, %4467
  %4476 = fsub fast float %4475, %4471
  %4477 = fmul fast float %4466, 0x3FBA6F0D00000000
  %4478 = fmul fast float %4470, 0x3FD0432880000000
  %4479 = fmul fast float %3469, 0xBFEF110800000000
  %4480 = fmul fast float %4479, %4071
  %4481 = fadd fast float %4480, 1.000000e+00
  %4482 = fsub fast float %4481, %4477
  %4483 = fadd fast float %4482, %4478
  %4484 = fdiv fast float %4476, %4483
  %4485 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4486 = fsub fast float %4485, %3469
  %4487 = fmul fast float %4486, %4404
  %4488 = fadd fast float %4487, %3469
  %4489 = fmul fast float %4407, %4177
  %4490 = fmul fast float %4407, %4178
  %4491 = fmul fast float %4407, %4179
  %4492 = fadd fast float %4489, %3465
  %4493 = fadd fast float %4490, %3466
  %4494 = fadd fast float %4491, %3467
  %4495 = fmul fast float %4410, %4245
  %4496 = fadd fast float %4495, %3471
  %4497 = fmul fast float %4413, %4242
  %4498 = fmul fast float %4413, %4243
  %4499 = fmul fast float %4413, %4244
  %4500 = fadd fast float %4497, %3462
  %4501 = fadd fast float %4498, %3463
  %4502 = fadd fast float %4499, %3464
  %4503 = fmul fast float %4416, %4246
  %4504 = fadd fast float %4503, %3472
  br label %4535

; <label>:4505                                    ; preds = %4455
  %4506 = icmp eq i32 %4393, 8
  br i1 %4506, label %4507, label %4535

; <label>:4507                                    ; preds = %4505
  %4508 = fmul fast float %4398, %4072
  %4509 = fmul fast float %4398, %4073
  %4510 = fadd fast float %4508, %3454
  %4511 = fadd fast float %4509, %3455
  %4512 = call float @dx.op.binary.f32(i32 36, float %3470, float %4074)  ; FMin(a,b)
  %4513 = fsub fast float %4512, %3470
  %4514 = fmul fast float %4513, %4401
  %4515 = fadd fast float %4514, %3470
  %4516 = fsub fast float %4071, %3469
  %4517 = fmul fast float %4404, %4516
  %4518 = fadd fast float %4517, %3469
  %4519 = fmul fast float %4407, %4177
  %4520 = fmul fast float %4407, %4178
  %4521 = fmul fast float %4407, %4179
  %4522 = fadd fast float %4519, %3465
  %4523 = fadd fast float %4520, %3466
  %4524 = fadd fast float %4521, %3467
  %4525 = fmul fast float %4410, %4245
  %4526 = fadd fast float %4525, %3471
  %4527 = fmul fast float %4413, %4242
  %4528 = fmul fast float %4413, %4243
  %4529 = fmul fast float %4413, %4244
  %4530 = fadd fast float %4527, %3462
  %4531 = fadd fast float %4528, %3463
  %4532 = fadd fast float %4529, %3464
  %4533 = fmul fast float %4416, %4246
  %4534 = fadd fast float %4533, %3472
  br label %4535

; <label>:4535                                    ; preds = %4507, %4505, %4457, %4418, %4384, %3770, %3474, %3453
  %4536 = phi float [ %3454, %4384 ], [ %3454, %3770 ], [ %3454, %3453 ], [ %3454, %3474 ], [ %4423, %4418 ], [ %4460, %4457 ], [ %3454, %4505 ], [ %4510, %4507 ]
  %4537 = phi float [ %3455, %4384 ], [ %3455, %3770 ], [ %3455, %3453 ], [ %3455, %3474 ], [ %4424, %4418 ], [ %4461, %4457 ], [ %3455, %4505 ], [ %4511, %4507 ]
  %4538 = phi float [ %4385, %4384 ], [ %3456, %3770 ], [ %3456, %3453 ], [ %3456, %3474 ], [ %4385, %4418 ], [ %4385, %4457 ], [ %4385, %4505 ], [ %4385, %4507 ]
  %4539 = phi float [ %4386, %4384 ], [ %3457, %3770 ], [ %3457, %3453 ], [ %3457, %3474 ], [ %4386, %4418 ], [ %4386, %4457 ], [ %4386, %4505 ], [ %4386, %4507 ]
  %4540 = phi float [ %4387, %4384 ], [ %3458, %3770 ], [ %3458, %3453 ], [ %3458, %3474 ], [ %4387, %4418 ], [ %4387, %4457 ], [ %4387, %4505 ], [ %4387, %4507 ]
  %4541 = phi float [ %4388, %4384 ], [ %3459, %3770 ], [ %3459, %3453 ], [ %3459, %3474 ], [ %4388, %4418 ], [ %4388, %4457 ], [ %4388, %4505 ], [ %4388, %4507 ]
  %4542 = phi float [ %4389, %4384 ], [ %3460, %3770 ], [ %3460, %3453 ], [ %3460, %3474 ], [ %4389, %4418 ], [ %4389, %4457 ], [ %4389, %4505 ], [ %4389, %4507 ]
  %4543 = phi float [ %4390, %4384 ], [ %3461, %3770 ], [ %3461, %3453 ], [ %3461, %3474 ], [ %4390, %4418 ], [ %4390, %4457 ], [ %4390, %4505 ], [ %4390, %4507 ]
  %4544 = phi float [ %3462, %4384 ], [ %3462, %3770 ], [ %3462, %3453 ], [ %3462, %3474 ], [ %4449, %4418 ], [ %4500, %4457 ], [ %3462, %4505 ], [ %4530, %4507 ]
  %4545 = phi float [ %3463, %4384 ], [ %3463, %3770 ], [ %3463, %3453 ], [ %3463, %3474 ], [ %4450, %4418 ], [ %4501, %4457 ], [ %3463, %4505 ], [ %4531, %4507 ]
  %4546 = phi float [ %3464, %4384 ], [ %3464, %3770 ], [ %3464, %3453 ], [ %3464, %3474 ], [ %4451, %4418 ], [ %4502, %4457 ], [ %3464, %4505 ], [ %4532, %4507 ]
  %4547 = phi float [ %3465, %4384 ], [ %3465, %3770 ], [ %3465, %3453 ], [ %3465, %3474 ], [ %4437, %4418 ], [ %4492, %4457 ], [ %3465, %4505 ], [ %4522, %4507 ]
  %4548 = phi float [ %3466, %4384 ], [ %3466, %3770 ], [ %3466, %3453 ], [ %3466, %3474 ], [ %4438, %4418 ], [ %4493, %4457 ], [ %3466, %4505 ], [ %4523, %4507 ]
  %4549 = phi float [ %3467, %4384 ], [ %3467, %3770 ], [ %3467, %3453 ], [ %3467, %3474 ], [ %4439, %4418 ], [ %4494, %4457 ], [ %3467, %4505 ], [ %4524, %4507 ]
  %4550 = phi float [ %4391, %4384 ], [ %3468, %3770 ], [ %3468, %3453 ], [ %3468, %3474 ], [ %4391, %4418 ], [ %4391, %4457 ], [ %4391, %4505 ], [ %4391, %4507 ]
  %4551 = phi float [ %3469, %4384 ], [ %3469, %3770 ], [ %3469, %3453 ], [ %3469, %3474 ], [ %4430, %4418 ], [ %4488, %4457 ], [ %3469, %4505 ], [ %4518, %4507 ]
  %4552 = phi float [ %3470, %4384 ], [ %3470, %3770 ], [ %3470, %3453 ], [ %3470, %3474 ], [ %4427, %4418 ], [ %4465, %4457 ], [ %3470, %4505 ], [ %4515, %4507 ]
  %4553 = phi float [ %3471, %4384 ], [ %3471, %3770 ], [ %3471, %3453 ], [ %3471, %3474 ], [ %4442, %4418 ], [ %4496, %4457 ], [ %3471, %4505 ], [ %4526, %4507 ]
  %4554 = phi float [ %3472, %4384 ], [ %3472, %3770 ], [ %3472, %3453 ], [ %3472, %3474 ], [ %4454, %4418 ], [ %4504, %4457 ], [ %3472, %4505 ], [ %4534, %4507 ]
  %4555 = phi float [ %4392, %4384 ], [ %3473, %3770 ], [ %3473, %3453 ], [ %3473, %3474 ], [ %4392, %4418 ], [ %4392, %4457 ], [ %4392, %4505 ], [ %4392, %4507 ]
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = call float @dx.op.dot2.f32(i32 54, float %4536, float %4537, float %4536, float %4537)  ; Dot2(ax,ay,bx,by)
  %4559 = fmul fast float %4558, 0x3FE3333340000000
  %4560 = fsub fast float 1.000000e+00, %4559
  %4561 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4560, float %4536, float %4537, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %4562 = call float @dx.op.unary.f32(i32 25, float %4561)  ; Rsqrt(value)
  %4563 = fmul fast float %4562, %4536
  %4564 = fmul fast float %4562, %4537
  %4565 = fmul fast float %4560, %4562
  %4566 = fmul fast float %4565, %118
  %4567 = fmul fast float %4565, %119
  %4568 = fmul fast float %4565, %120
  %4569 = fmul fast float %4563, %83
  %4570 = fmul fast float %4563, %84
  %4571 = fmul fast float %4563, %85
  %4572 = fadd fast float %4566, %4569
  %4573 = fadd fast float %4567, %4570
  %4574 = fadd fast float %4568, %4571
  %4575 = fmul fast float %130, %4564
  %4576 = fmul fast float %131, %4564
  %4577 = fmul fast float %132, %4564
  %4578 = fadd fast float %4572, %4575
  %4579 = fadd fast float %4573, %4576
  %4580 = fadd fast float %4574, %4577
  %4581 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = call float @dx.op.unary.f32(i32 25, float %4581)  ; Rsqrt(value)
  %4583 = fmul fast float %4578, %4582
  %4584 = fmul fast float %4579, %4582
  %4585 = fmul fast float %4580, %4582
  %4586 = and i32 %64, 1
  %4587 = icmp eq i32 %4586, 0
  br i1 %4587, label %4588, label %5180

; <label>:4588                                    ; preds = %4535
  %4589 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4590 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4591 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %4592 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4593 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4594 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %4595 = fadd fast float %4589, %166
  %4596 = fadd fast float %4590, %167
  %4597 = fadd fast float %4591, %168
  %4598 = fadd fast float %4592, %166
  %4599 = fadd fast float %4593, %167
  %4600 = fadd fast float %4594, %168
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 2
  %4607 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4608 = fmul fast float %4602, %111
  %4609 = fmul fast float %4608, %4606
  %4610 = fmul fast float %4603, %112
  %4611 = fmul fast float %4610, %4607
  %4612 = fptoui float %4609 to i32
  %4613 = fptoui float %4611 to i32
  %4614 = fadd fast float %4602, -1.000000e+00
  %4615 = fadd fast float %4603, -1.000000e+00
  %4616 = fptoui float %4614 to i32
  %4617 = fptoui float %4615 to i32
  %4618 = call i32 @dx.op.binary.i32(i32 40, i32 %4612, i32 %4616)  ; UMin(a,b)
  %4619 = call i32 @dx.op.binary.i32(i32 40, i32 %4613, i32 %4617)  ; UMin(a,b)
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 3
  %4623 = fmul fast float %4621, %99
  %4624 = fsub fast float %4623, %4622
  %4625 = fadd fast float %4604, -1.000000e+00
  %4626 = call float @dx.op.binary.f32(i32 36, float %4624, float %4625)  ; FMin(a,b)
  %4627 = fptoui float %4626 to i32
  %4628 = fptoui float %4602 to i32
  %4629 = fptoui float %4603 to i32
  %4630 = mul i32 %4627, %4629
  %4631 = add i32 %4630, %4619
  %4632 = mul i32 %4631, %4628
  %4633 = add i32 %4632, %4618
  %4634 = shl i32 %4633, 2
  %4635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.i32 %4635, 0
  %4637 = and i32 %4636, 1023
  %4638 = lshr i32 %4636, 10
  %4639 = icmp eq i32 %4637, 0
  br i1 %4639, label %5143, label %4640

; <label>:4640                                    ; preds = %4588
  %4641 = and i32 %4636, 1023
  br label %4642

; <label>:4642                                    ; preds = %4774, %4640
  %4643 = phi i32 [ %4724, %4774 ], [ 0, %4640 ]
  %4644 = phi float [ %4775, %4774 ], [ 0.000000e+00, %4640 ]
  %4645 = phi float [ %4776, %4774 ], [ %4557, %4640 ]
  %4646 = phi float [ %4777, %4774 ], [ %4555, %4640 ]
  %4647 = phi float [ %4778, %4774 ], [ %4547, %4640 ]
  %4648 = phi float [ %4779, %4774 ], [ %4548, %4640 ]
  %4649 = phi float [ %4780, %4774 ], [ %4549, %4640 ]
  %4650 = phi float [ %4781, %4774 ], [ %4554, %4640 ]
  %4651 = phi float [ %4782, %4774 ], [ 0.000000e+00, %4640 ]
  %4652 = phi float [ %4783, %4774 ], [ %4544, %4640 ]
  %4653 = phi float [ %4784, %4774 ], [ %4545, %4640 ]
  %4654 = phi float [ %4785, %4774 ], [ %4546, %4640 ]
  %4655 = phi float [ %4786, %4774 ], [ %4541, %4640 ]
  %4656 = phi float [ %4787, %4774 ], [ %4542, %4640 ]
  %4657 = phi float [ %4788, %4774 ], [ %4543, %4640 ]
  %4658 = phi float [ %4789, %4774 ], [ %4583, %4640 ]
  %4659 = phi float [ %4790, %4774 ], [ %4584, %4640 ]
  %4660 = phi float [ %4791, %4774 ], [ %4585, %4640 ]
  %4661 = phi float [ %4792, %4774 ], [ %4552, %4640 ]
  %4662 = phi float [ %4793, %4774 ], [ %4551, %4640 ]
  %4663 = phi float [ %4794, %4774 ], [ 0.000000e+00, %4640 ]
  %4664 = phi float [ %4795, %4774 ], [ %4550, %4640 ]
  %4665 = phi float [ %4796, %4774 ], [ %4538, %4640 ]
  %4666 = phi float [ %4797, %4774 ], [ %4539, %4640 ]
  %4667 = phi float [ %4798, %4774 ], [ %4540, %4640 ]
  %4668 = add nuw nsw i32 %4643, %4638
  %4669 = shl i32 %4668, 2
  %4670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.i32 %4670, 0
  %4672 = shl i32 %4671, 8
  %4673 = or i32 %4672, 48
  %4674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4673, i32 undef)  ; BufferLoad(srv,index,wot)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.ResRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.ResRet.f32 %4674, 2
  %4678 = extractvalue %dx.types.ResRet.f32 %4674, 3
  %4679 = or i32 %4672, 64
  %4680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.i32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.i32 %4680, 1
  %4683 = or i32 %4672, 80
  %4684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4683, i32 undef)  ; BufferLoad(srv,index,wot)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 3
  %4687 = or i32 %4672, 96
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = extractvalue %dx.types.ResRet.f32 %4688, 3
  %4693 = or i32 %4672, 112
  %4694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4696 = or i32 %4672, 128
  %4697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4696, i32 undef)  ; BufferLoad(srv,index,wot)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.ResRet.f32 %4697, 2
  %4701 = extractvalue %dx.types.ResRet.f32 %4697, 3
  %4702 = or i32 %4672, 144
  %4703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.ResRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.ResRet.f32 %4703, 2
  %4707 = extractvalue %dx.types.ResRet.f32 %4703, 3
  %4708 = or i32 %4672, 160
  %4709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.ResRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4709, 2
  %4713 = extractvalue %dx.types.ResRet.f32 %4709, 3
  %4714 = or i32 %4672, 192
  %4715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4714, i32 undef)  ; BufferLoad(srv,index,wot)
  %4716 = extractvalue %dx.types.ResRet.i32 %4715, 0
  %4717 = or i32 %4672, 208
  %4718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4717, i32 undef)  ; BufferLoad(srv,index,wot)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = or i32 %4672, 248
  %4721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4720, i32 undef)  ; BufferLoad(srv,index,wot)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.ResRet.f32 %4721, 1
  %4724 = add nuw nsw i32 %4643, 1
  %4725 = bitcast float %4678 to i32
  %4726 = and i32 %4725, 512
  %4727 = icmp eq i32 %4726, 0
  %4728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4672, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = extractvalue %dx.types.ResRet.f32 %4728, 1
  %4731 = extractvalue %dx.types.ResRet.f32 %4728, 2
  %4732 = extractvalue %dx.types.ResRet.f32 %4728, 3
  %4733 = call float @dx.op.dot4.f32(i32 56, float %4729, float %4730, float %4731, float %4732, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4734 = or i32 %4672, 16
  %4735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4734, i32 undef)  ; BufferLoad(srv,index,wot)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  %4737 = extractvalue %dx.types.ResRet.f32 %4735, 1
  %4738 = extractvalue %dx.types.ResRet.f32 %4735, 2
  %4739 = extractvalue %dx.types.ResRet.f32 %4735, 3
  %4740 = call float @dx.op.dot4.f32(i32 56, float %4736, float %4737, float %4738, float %4739, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4741 = or i32 %4672, 32
  %4742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4741, i32 undef)  ; BufferLoad(srv,index,wot)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4746 = extractvalue %dx.types.ResRet.f32 %4742, 3
  %4747 = call float @dx.op.dot4.f32(i32 56, float %4743, float %4744, float %4745, float %4746, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4748 = call float @dx.op.unary.f32(i32 27, float %4733)  ; Round_ni(value)
  %4749 = call float @dx.op.unary.f32(i32 6, float %4748)  ; FAbs(value)
  %4750 = call float @dx.op.unary.f32(i32 27, float %4740)  ; Round_ni(value)
  %4751 = call float @dx.op.unary.f32(i32 6, float %4750)  ; FAbs(value)
  %4752 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4753 = call float @dx.op.unary.f32(i32 27, float %4752)  ; Round_ni(value)
  %4754 = fadd fast float %4751, %4749
  %4755 = fadd fast float %4754, %4753
  %4756 = fcmp fast oeq float %4755, 0.000000e+00
  %4757 = call float @dx.op.dot4.f32(i32 56, float %4729, float %4730, float %4731, float %4732, float %4595, float %4596, float %4597, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4758 = call float @dx.op.dot4.f32(i32 56, float %4736, float %4737, float %4738, float %4739, float %4595, float %4596, float %4597, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4759 = call float @dx.op.dot4.f32(i32 56, float %4729, float %4730, float %4731, float %4732, float %4598, float %4599, float %4600, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4760 = call float @dx.op.dot4.f32(i32 56, float %4736, float %4737, float %4738, float %4739, float %4598, float %4599, float %4600, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4761 = fsub fast float %4757, %4733
  %4762 = fsub fast float %4759, %4733
  %4763 = fsub fast float %4758, %4740
  %4764 = fsub fast float %4760, %4740
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 2
  %4768 = fadd fast float %4767, %4765
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4771 = fcmp fast ogt float %4769, %4770
  %4772 = and i1 %4756, %4771
  %4773 = and i1 %4727, %4772
  br i1 %4773, label %4800, label %4774

; <label>:4774                                    ; preds = %5129, %4881, %4800, %4642
  %4775 = phi float [ %4644, %4800 ], [ %4884, %4881 ], [ %4884, %5129 ], [ %4644, %4642 ]
  %4776 = phi float [ %4645, %4800 ], [ %4645, %4881 ], [ %5105, %5129 ], [ %4645, %4642 ]
  %4777 = phi float [ %4646, %4800 ], [ %4646, %4881 ], [ %5103, %5129 ], [ %4646, %4642 ]
  %4778 = phi float [ %4647, %4800 ], [ %4647, %4881 ], [ %5081, %5129 ], [ %4647, %4642 ]
  %4779 = phi float [ %4648, %4800 ], [ %4648, %4881 ], [ %5082, %5129 ], [ %4648, %4642 ]
  %4780 = phi float [ %4649, %4800 ], [ %4649, %4881 ], [ %5083, %5129 ], [ %4649, %4642 ]
  %4781 = phi float [ %4650, %4800 ], [ %4650, %4881 ], [ %5008, %5129 ], [ %4650, %4642 ]
  %4782 = phi float [ %4651, %4800 ], [ %4651, %4881 ], [ %5006, %5129 ], [ %4651, %4642 ]
  %4783 = phi float [ %4652, %4800 ], [ %4652, %4881 ], [ %5051, %5129 ], [ %4652, %4642 ]
  %4784 = phi float [ %4653, %4800 ], [ %4653, %4881 ], [ %5052, %5129 ], [ %4653, %4642 ]
  %4785 = phi float [ %4654, %4800 ], [ %4654, %4881 ], [ %5053, %5129 ], [ %4654, %4642 ]
  %4786 = phi float [ %4655, %4800 ], [ %4655, %4881 ], [ %5139, %5129 ], [ %4655, %4642 ]
  %4787 = phi float [ %4656, %4800 ], [ %4656, %4881 ], [ %5140, %5129 ], [ %4656, %4642 ]
  %4788 = phi float [ %4657, %4800 ], [ %4657, %4881 ], [ %5141, %5129 ], [ %4657, %4642 ]
  %4789 = phi float [ %4658, %4800 ], [ %4658, %4881 ], [ %4987, %5129 ], [ %4658, %4642 ]
  %4790 = phi float [ %4659, %4800 ], [ %4659, %4881 ], [ %4988, %5129 ], [ %4659, %4642 ]
  %4791 = phi float [ %4660, %4800 ], [ %4660, %4881 ], [ %4989, %5129 ], [ %4660, %4642 ]
  %4792 = phi float [ %4661, %4800 ], [ %4661, %4881 ], [ %5061, %5129 ], [ %4661, %4642 ]
  %4793 = phi float [ %4662, %4800 ], [ %4662, %4881 ], [ %5058, %5129 ], [ %4662, %4642 ]
  %4794 = phi float [ %4663, %4800 ], [ %4663, %4881 ], [ %5055, %5129 ], [ %4663, %4642 ]
  %4795 = phi float [ %4664, %4800 ], [ %4664, %4881 ], [ %5004, %5129 ], [ %4664, %4642 ]
  %4796 = phi float [ %4665, %4800 ], [ %4665, %4881 ], [ %4999, %5129 ], [ %4665, %4642 ]
  %4797 = phi float [ %4666, %4800 ], [ %4666, %4881 ], [ %5000, %5129 ], [ %4666, %4642 ]
  %4798 = phi float [ %4667, %4800 ], [ %4667, %4881 ], [ %5001, %5129 ], [ %4667, %4642 ]
  %4799 = icmp eq i32 %4724, %4641
  br i1 %4799, label %5142, label %4642

; <label>:4800                                    ; preds = %4642
  %4801 = extractvalue %dx.types.ResRet.f32 %4694, 3
  %4802 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4806 = extractvalue %dx.types.ResRet.i32 %4680, 3
  %4807 = extractvalue %dx.types.ResRet.i32 %4680, 2
  %4808 = add i32 %4806, 0
  %4809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4809, %dx.types.Handle %4810, float %4733, float %4740, float undef, float undef, i32 0, i32 0, i32 undef, float %4761, float %4763, float undef, float %4762, float %4764, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4812 = extractvalue %dx.types.ResRet.f32 %4811, 0
  %4813 = fmul fast float %4812, %4805
  %4814 = fadd fast float %4813, %4804
  %4815 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4816 = fmul fast float %4733, %4689
  %4817 = call float @dx.op.tertiary.f32(i32 46, float %4690, float %4740, float %4816)  ; FMad(a,b,c)
  %4818 = fadd fast float %4817, %4803
  %4819 = fmul fast float %4733, %4691
  %4820 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4740, float %4819)  ; FMad(a,b,c)
  %4821 = fadd fast float %4820, %4802
  %4822 = fmul fast float %4761, %4689
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4690, float %4763, float %4822)  ; FMad(a,b,c)
  %4824 = fmul fast float %4761, %4691
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4763, float %4824)  ; FMad(a,b,c)
  %4826 = fmul fast float %4762, %4689
  %4827 = call float @dx.op.tertiary.f32(i32 46, float %4690, float %4764, float %4826)  ; FMad(a,b,c)
  %4828 = fmul fast float %4762, %4691
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4692, float %4764, float %4828)  ; FMad(a,b,c)
  %4830 = add i32 %4807, 0
  %4831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4830, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4832 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4831, %dx.types.Handle %4810, float %4818, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4825, float undef, float %4827, float %4829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = and i32 %4725, 1024
  %4835 = icmp ne i32 %4834, 0
  %4836 = fcmp fast ogt float %4833, 0x3FE0101020000000
  %4837 = uitofp i1 %4836 to float
  %4838 = select i1 %4835, float %4837, float %4833
  %4839 = and i32 %4725, 8192
  %4840 = icmp ne i32 %4839, 0
  %4841 = select i1 %4840, float %4801, float 1.000000e+00
  %4842 = fmul fast float %4733, 2.000000e+00
  %4843 = fadd fast float %4842, -1.000000e+00
  %4844 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4845 = fmul fast float %4844, %4722
  %4846 = fsub fast float %4845, %4722
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fmul fast float %4740, 2.000000e+00
  %4849 = fadd fast float %4848, -1.000000e+00
  %4850 = call float @dx.op.unary.f32(i32 6, float %4849)  ; FAbs(value)
  %4851 = fmul fast float %4850, %4723
  %4852 = fsub fast float %4851, %4723
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4752, %4685
  %4855 = fsub fast float %4854, %4685
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4815, %4841
  %4858 = fmul fast float %4857, %4812
  %4859 = fmul fast float %4858, %4847
  %4860 = fmul fast float %4859, %4838
  %4861 = fmul fast float %4860, %4853
  %4862 = fmul fast float %4861, %4856
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4865 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4866 = fsub fast float %4769, %4865
  %4867 = fmul fast float %4866, %4864
  %4868 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4869 = fmul fast float %4862, %4686
  %4870 = fadd fast float %4862, %4686
  %4871 = fmul fast float %4870, %4695
  %4872 = fsub fast float %4871, %4695
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = and i32 %4725, 128
  %4875 = icmp ne i32 %4874, 0
  %4876 = select i1 %4875, float %4873, float %4869
  %4877 = fmul fast float %4876, %4868
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4880 = fcmp fast ugt float %4877, %4879
  br i1 %4880, label %4881, label %4774

; <label>:4881                                    ; preds = %4800
  %4882 = select i1 %4840, float %4877, float 0.000000e+00
  %4883 = fadd fast float %4882, %4644
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  br i1 %4840, label %4774, label %4885

; <label>:4885                                    ; preds = %4881
  %4886 = and i32 %4725, 4
  %4887 = and i32 %4725, 8
  %4888 = add i32 %4681, 0
  %4889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4888, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4891 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4889, %dx.types.Handle %4890, float %4818, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4825, float undef, float %4827, float %4829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = extractvalue %dx.types.ResRet.f32 %4891, 3
  %4896 = bitcast float %4707 to i32
  %4897 = and i32 %4896, 255
  %4898 = uitofp i32 %4897 to float
  %4899 = lshr i32 %4896, 8
  %4900 = and i32 %4899, 255
  %4901 = uitofp i32 %4900 to float
  %4902 = fmul fast float %4895, %4898
  %4903 = fadd fast float %4902, %4901
  %4904 = fmul fast float %4903, 0x3F70101000000000
  %4905 = add i32 %4682, 0
  %4906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4905, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4906, %dx.types.Handle %4890, float %4818, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4825, float undef, float %4827, float %4829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = extractvalue %dx.types.ResRet.f32 %4907, 3
  %4912 = bitcast float %4701 to i32
  %4913 = and i32 %4912, 255
  %4914 = uitofp i32 %4913 to float
  %4915 = lshr i32 %4912, 8
  %4916 = and i32 %4915, 255
  %4917 = uitofp i32 %4916 to float
  %4918 = lshr i32 %4912, 16
  %4919 = and i32 %4918, 255
  %4920 = uitofp i32 %4919 to float
  %4921 = fmul fast float %4920, 0x3F70101000000000
  %4922 = fmul fast float %4908, %4914
  %4923 = fadd fast float %4922, %4917
  %4924 = fmul fast float %4923, 0x3F70101000000000
  %4925 = fadd fast float %4909, -5.000000e-01
  %4926 = fadd fast float %4911, -5.000000e-01
  %4927 = fmul fast float %4925, %4921
  %4928 = fmul fast float %4926, %4921
  %4929 = fadd fast float %4927, 5.000000e-01
  %4930 = fadd fast float %4928, 5.000000e-01
  %4931 = fmul fast float %4892, %4710
  %4932 = fmul fast float %4893, %4711
  %4933 = fmul fast float %4894, %4712
  %4934 = fmul fast float %4929, 2.000000e+00
  %4935 = fadd fast float %4934, -1.000000e+00
  %4936 = fmul fast float %4930, 2.000000e+00
  %4937 = fadd fast float %4936, -1.000000e+00
  %4938 = fadd fast float %4935, %4937
  %4939 = fmul fast float %4938, 5.000000e-01
  %4940 = fsub fast float %4935, %4937
  %4941 = fmul fast float %4940, 5.000000e-01
  %4942 = call float @dx.op.unary.f32(i32 6, float %4939)  ; FAbs(value)
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = call float @dx.op.unary.f32(i32 6, float %4941)  ; FAbs(value)
  %4945 = fsub fast float %4943, %4944
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4941, float %4945, float %4939, float %4941, float %4945)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call float @dx.op.unary.f32(i32 25, float %4946)  ; Rsqrt(value)
  %4948 = fmul fast float %4939, %4947
  %4949 = fmul fast float %4941, %4947
  %4950 = fmul fast float %4947, %4945
  %4951 = fmul fast float %4950, %4675
  %4952 = fmul fast float %4950, %4676
  %4953 = fmul fast float %4950, %4677
  %4954 = fmul fast float %4948, %4698
  %4955 = fmul fast float %4948, %4699
  %4956 = fmul fast float %4948, %4700
  %4957 = fadd fast float %4954, %4951
  %4958 = fadd fast float %4955, %4952
  %4959 = fadd fast float %4956, %4953
  %4960 = fmul fast float %4949, %4704
  %4961 = fmul fast float %4949, %4705
  %4962 = fmul fast float %4949, %4706
  %4963 = fadd fast float %4957, %4960
  %4964 = fadd fast float %4958, %4961
  %4965 = fadd fast float %4959, %4962
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.unary.f32(i32 25, float %4966)  ; Rsqrt(value)
  %4968 = fmul fast float %4963, %4967
  %4969 = fmul fast float %4964, %4967
  %4970 = fmul fast float %4965, %4967
  %4971 = icmp ne i32 %4887, 0
  %4972 = select i1 %4971, float 1.000000e+00, float 0.000000e+00
  %4973 = fmul fast float %4877, %4972
  %4974 = and i32 %4725, 1
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %4976, label %4980

; <label>:4976                                    ; preds = %4885
  %4977 = fsub fast float %4968, %4658
  %4978 = fsub fast float %4969, %4659
  %4979 = fsub fast float %4970, %4660
  br label %4980

; <label>:4980                                    ; preds = %4976, %4885
  %4981 = phi float [ %4977, %4976 ], [ %4968, %4885 ]
  %4982 = phi float [ %4978, %4976 ], [ %4969, %4885 ]
  %4983 = phi float [ %4979, %4976 ], [ %4970, %4885 ]
  %4984 = fmul float %4983, %4973
  %4985 = fmul float %4982, %4973
  %4986 = fmul float %4981, %4973
  %4987 = fadd fast float %4986, %4658
  %4988 = fadd fast float %4985, %4659
  %4989 = fadd fast float %4984, %4660
  %4990 = icmp ne i32 %4886, 0
  %4991 = select i1 %4990, float 1.000000e+00, float 0.000000e+00
  %4992 = fmul fast float %4877, %4991
  %4993 = fsub fast float %4931, %4665
  %4994 = fsub fast float %4932, %4666
  %4995 = fsub fast float %4933, %4667
  %4996 = fmul fast float %4993, %4992
  %4997 = fmul fast float %4994, %4992
  %4998 = fmul fast float %4995, %4992
  %4999 = fadd fast float %4996, %4665
  %5000 = fadd fast float %4997, %4666
  %5001 = fadd fast float %4998, %4667
  %5002 = fsub fast float %4904, %4664
  %5003 = fmul fast float %5002, %4992
  %5004 = fadd fast float %5003, %4664
  %5005 = fmul fast float %4992, %4651
  %5006 = fsub fast float %4651, %5005
  %5007 = fmul fast float %4992, %4650
  %5008 = fsub fast float %4650, %5007
  %5009 = bitcast float %4719 to i32
  %5010 = lshr i32 %5009, 16
  %5011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5010)  ; LegacyF16ToF32(value)
  %5012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5013 = extractvalue %dx.types.ResRet.i32 %5012, 0
  %5014 = and i32 %5013, 1
  %5015 = icmp eq i32 %5014, 0
  br i1 %5015, label %5016, label %5041

; <label>:5016                                    ; preds = %4980
  %5017 = fadd fast float %4904, 0xBFB99999A0000000
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5018, 0x3FF1C71C80000000
  %5020 = fsub fast float 1.000000e+00, %5019
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fmul fast float %5021, %4931
  %5023 = fmul fast float %5021, %4932
  %5024 = fmul fast float %5021, %4933
  %5025 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5026 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5027 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5026, float %5027)  ; FMax(a,b)
  %5029 = call float @dx.op.binary.f32(i32 35, float %5025, float %5028)  ; FMax(a,b)
  %5030 = fcmp fast ogt float %5029, 0.000000e+00
  %5031 = bitcast float %5029 to i32
  %5032 = sub nsw i32 2129859010, %5031
  %5033 = bitcast i32 %5032 to float
  %5034 = select i1 %5030, float %5033, float 0.000000e+00
  %5035 = fmul fast float %5025, %5011
  %5036 = fmul fast float %5026, %5011
  %5037 = fmul fast float %5027, %5011
  %5038 = fmul fast float %5035, %5034
  %5039 = fmul fast float %5036, %5034
  %5040 = fmul fast float %5037, %5034
  br label %5041

; <label>:5041                                    ; preds = %5016, %4980
  %5042 = phi float [ %5011, %4980 ], [ %5038, %5016 ]
  %5043 = phi float [ %5011, %4980 ], [ %5039, %5016 ]
  %5044 = phi float [ %5011, %4980 ], [ %5040, %5016 ]
  %5045 = fsub fast float %5042, %4652
  %5046 = fsub fast float %5043, %4653
  %5047 = fsub fast float %5044, %4654
  %5048 = fmul fast float %5045, %4992
  %5049 = fmul fast float %5046, %4992
  %5050 = fmul fast float %5047, %4992
  %5051 = fadd fast float %5048, %4652
  %5052 = fadd fast float %5049, %4653
  %5053 = fadd fast float %5050, %4654
  %5054 = fadd fast float %4877, %4663
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fsub fast float %4924, %4662
  %5057 = fmul fast float %5056, %4973
  %5058 = fadd fast float %5057, %4662
  %5059 = fsub fast float %4910, %4661
  %5060 = fmul fast float %5059, %4973
  %5061 = fadd fast float %5060, %4661
  br i1 %4975, label %5070, label %5062

; <label>:5062                                    ; preds = %5041
  %5063 = and i32 %4725, 32768
  %5064 = icmp eq i32 %5063, 0
  br i1 %5064, label %5080, label %5065

; <label>:5065                                    ; preds = %5062
  %5066 = fmul fast float %4973, 1.270000e+02
  %5067 = fadd fast float %5066, %4647
  %5068 = fadd fast float %5066, %4648
  %5069 = fadd fast float %5066, %4649
  br label %5080

; <label>:5070                                    ; preds = %5041
  %5071 = fsub fast float 1.270000e+02, %4647
  %5072 = fsub fast float 1.270000e+02, %4648
  %5073 = fsub fast float 1.270000e+02, %4649
  %5074 = fmul fast float %4973, %5071
  %5075 = fmul fast float %4973, %5072
  %5076 = fmul fast float %4973, %5073
  %5077 = fadd fast float %5074, %4647
  %5078 = fadd fast float %5075, %4648
  %5079 = fadd fast float %5076, %4649
  br label %5080

; <label>:5080                                    ; preds = %5070, %5065, %5062
  %5081 = phi float [ %5067, %5065 ], [ %4647, %5062 ], [ %5077, %5070 ]
  %5082 = phi float [ %5068, %5065 ], [ %4648, %5062 ], [ %5078, %5070 ]
  %5083 = phi float [ %5069, %5065 ], [ %4649, %5062 ], [ %5079, %5070 ]
  %5084 = call float @dx.op.dot3.f32(i32 55, float %4931, float %4932, float %4933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 1
  %5088 = fmul fast float %5087, %5084
  %5089 = fadd fast float %5088, %5086
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = bitcast float %4713 to i32
  %5092 = and i32 %5091, 65535
  %5093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5092)  ; LegacyF16ToF32(value)
  %5094 = lshr i32 %5091, 16
  %5095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5094)  ; LegacyF16ToF32(value)
  %5096 = fcmp fast oge float %5093, 0.000000e+00
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 0
  %5099 = select i1 %5096, float %5093, float %5098
  %5100 = fadd fast float %5099, %5095
  %5101 = fsub fast float %5090, %4646
  %5102 = fmul fast float %5101, %4877
  %5103 = fadd fast float %5102, %4646
  %5104 = fmul fast float %5100, %4877
  %5105 = call float @dx.op.binary.f32(i32 35, float %4645, float %5104)  ; FMax(a,b)
  %5106 = and i32 %4725, 16
  %5107 = icmp eq i32 %5106, 0
  br i1 %5107, label %5129, label %5108

; <label>:5108                                    ; preds = %5080
  %5109 = add i32 %4716, 0
  %5110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5109, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5111 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5110, %dx.types.Handle %4890, float %4818, float %4821, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4825, float undef, float %4827, float %4829, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.ResRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.ResRet.f32 %5111, 2
  %5115 = and i32 %5009, 65535
  %5116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5115)  ; LegacyF16ToF32(value)
  %5117 = fmul fast float %5112, %4710
  %5118 = fmul fast float %5113, %4711
  %5119 = fmul fast float %5114, %4712
  %5120 = and i32 %4725, 16384
  %5121 = icmp ne i32 %5120, 0
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = select i1 %5121, float %5123, float 1.000000e+00
  %5125 = fmul fast float %5124, %5116
  %5126 = fmul fast float %5117, %5125
  %5127 = fmul fast float %5118, %5125
  %5128 = fmul fast float %5119, %5125
  br label %5129

; <label>:5129                                    ; preds = %5108, %5080
  %5130 = phi float [ %5126, %5108 ], [ 0.000000e+00, %5080 ]
  %5131 = phi float [ %5127, %5108 ], [ 0.000000e+00, %5080 ]
  %5132 = phi float [ %5128, %5108 ], [ 0.000000e+00, %5080 ]
  %5133 = fsub fast float %5130, %4655
  %5134 = fsub fast float %5131, %4656
  %5135 = fsub fast float %5132, %4657
  %5136 = fmul fast float %5133, %4877
  %5137 = fmul fast float %5134, %4877
  %5138 = fmul fast float %5135, %4877
  %5139 = fadd fast float %5136, %4655
  %5140 = fadd fast float %5137, %4656
  %5141 = fadd fast float %5138, %4657
  br label %4774

; <label>:5142                                    ; preds = %4774
  br label %5143

; <label>:5143                                    ; preds = %5142, %4588
  %5144 = phi float [ 0.000000e+00, %4588 ], [ %4775, %5142 ]
  %5145 = phi float [ %4557, %4588 ], [ %4776, %5142 ]
  %5146 = phi float [ %4555, %4588 ], [ %4777, %5142 ]
  %5147 = phi float [ %4547, %4588 ], [ %4778, %5142 ]
  %5148 = phi float [ %4548, %4588 ], [ %4779, %5142 ]
  %5149 = phi float [ %4549, %4588 ], [ %4780, %5142 ]
  %5150 = phi float [ %4554, %4588 ], [ %4781, %5142 ]
  %5151 = phi float [ 0.000000e+00, %4588 ], [ %4782, %5142 ]
  %5152 = phi float [ %4544, %4588 ], [ %4783, %5142 ]
  %5153 = phi float [ %4545, %4588 ], [ %4784, %5142 ]
  %5154 = phi float [ %4546, %4588 ], [ %4785, %5142 ]
  %5155 = phi float [ %4541, %4588 ], [ %4786, %5142 ]
  %5156 = phi float [ %4542, %4588 ], [ %4787, %5142 ]
  %5157 = phi float [ %4543, %4588 ], [ %4788, %5142 ]
  %5158 = phi float [ %4583, %4588 ], [ %4789, %5142 ]
  %5159 = phi float [ %4584, %4588 ], [ %4790, %5142 ]
  %5160 = phi float [ %4585, %4588 ], [ %4791, %5142 ]
  %5161 = phi float [ %4552, %4588 ], [ %4792, %5142 ]
  %5162 = phi float [ %4551, %4588 ], [ %4793, %5142 ]
  %5163 = phi float [ 0.000000e+00, %4588 ], [ %4794, %5142 ]
  %5164 = phi float [ %4550, %4588 ], [ %4795, %5142 ]
  %5165 = phi float [ %4538, %4588 ], [ %4796, %5142 ]
  %5166 = phi float [ %4539, %4588 ], [ %4797, %5142 ]
  %5167 = phi float [ %4540, %4588 ], [ %4798, %5142 ]
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5158, float %5159, float %5160, float %5158, float %5159, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 25, float %5168)  ; Rsqrt(value)
  %5170 = fmul fast float %5169, %5158
  %5171 = fmul fast float %5169, %5159
  %5172 = fmul fast float %5169, %5160
  %5173 = fadd fast float %5163, %1304
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5176 = call float @dx.op.unary.f32(i32 25, float %5175)  ; Rsqrt(value)
  %5177 = fmul fast float %5176, %5170
  %5178 = fmul fast float %5176, %5171
  %5179 = fmul fast float %5176, %5172
  br label %5180

; <label>:5180                                    ; preds = %5143, %4535
  %5181 = phi float [ %5165, %5143 ], [ %4538, %4535 ]
  %5182 = phi float [ %5166, %5143 ], [ %4539, %4535 ]
  %5183 = phi float [ %5167, %5143 ], [ %4540, %4535 ]
  %5184 = phi float [ %5155, %5143 ], [ %4541, %4535 ]
  %5185 = phi float [ %5156, %5143 ], [ %4542, %4535 ]
  %5186 = phi float [ %5157, %5143 ], [ %4543, %4535 ]
  %5187 = phi float [ %5152, %5143 ], [ %4544, %4535 ]
  %5188 = phi float [ %5153, %5143 ], [ %4545, %4535 ]
  %5189 = phi float [ %5154, %5143 ], [ %4546, %4535 ]
  %5190 = phi float [ %5147, %5143 ], [ %4547, %4535 ]
  %5191 = phi float [ %5148, %5143 ], [ %4548, %4535 ]
  %5192 = phi float [ %5149, %5143 ], [ %4549, %4535 ]
  %5193 = phi float [ %5177, %5143 ], [ %4583, %4535 ]
  %5194 = phi float [ %5178, %5143 ], [ %4584, %4535 ]
  %5195 = phi float [ %5179, %5143 ], [ %4585, %4535 ]
  %5196 = phi float [ %5164, %5143 ], [ %4550, %4535 ]
  %5197 = phi float [ %5174, %5143 ], [ %1304, %4535 ]
  %5198 = phi float [ %5162, %5143 ], [ %4551, %4535 ]
  %5199 = phi float [ %5161, %5143 ], [ %4552, %4535 ]
  %5200 = phi float [ %5151, %5143 ], [ 0.000000e+00, %4535 ]
  %5201 = phi float [ %5150, %5143 ], [ %4554, %4535 ]
  %5202 = phi float [ %5144, %5143 ], [ 0.000000e+00, %4535 ]
  %5203 = phi float [ %5145, %5143 ], [ %4557, %4535 ]
  %5204 = phi float [ %5146, %5143 ], [ %4555, %4535 ]
  %5205 = add i32 %62, 392
  %5206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5205, i32 undef)  ; BufferLoad(srv,index,wot)
  %5207 = extractvalue %dx.types.ResRet.i32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.i32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.i32 %5206, 2
  %5210 = extractvalue %dx.types.ResRet.i32 %5206, 3
  %5211 = bitcast i32 %5207 to float
  %5212 = bitcast i32 %5208 to float
  %5213 = bitcast i32 %5209 to float
  %5214 = bitcast i32 %5210 to float
  %5215 = fsub fast float %5181, %5211
  %5216 = fsub fast float %5182, %5212
  %5217 = fsub fast float %5183, %5213
  %5218 = fmul fast float %5215, %200
  %5219 = fmul fast float %5216, %200
  %5220 = fmul fast float %5217, %200
  %5221 = fadd fast float %5218, %5211
  %5222 = fadd fast float %5219, %5212
  %5223 = fadd fast float %5220, %5213
  %5224 = fsub fast float %5197, %5214
  %5225 = fmul fast float %5224, %200
  %5226 = fadd fast float %5225, %5214
  %5227 = fadd fast float %5196, 0xBFB99999A0000000
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fmul fast float %5228, 0x3FF1C71C80000000
  %5230 = call float @dx.op.binary.f32(i32 36, float %5196, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5231 = fsub fast float 1.000000e+00, %5229
  %5232 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5233 = fmul fast float %5221, %5232
  %5234 = fmul fast float %5222, %5232
  %5235 = fmul fast float %5223, %5232
  %5236 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5239 = fmul fast float %5221, %5229
  %5240 = fmul fast float %5222, %5229
  %5241 = fmul fast float %5223, %5229
  %5242 = fadd fast float %5239, %5230
  %5243 = fadd fast float %5240, %5230
  %5244 = fadd fast float %5241, %5230
  %5245 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = and i32 %5250, 1
  %5252 = icmp eq i32 %5251, 0
  br i1 %5252, label %5267, label %5253

; <label>:5253                                    ; preds = %5180
  %5254 = call float @dx.op.binary.f32(i32 35, float %5237, float %5238)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %5236, float %5254)  ; FMax(a,b)
  %5256 = fcmp fast ogt float %5255, 0.000000e+00
  %5257 = bitcast float %5255 to i32
  %5258 = sub nsw i32 2129859010, %5257
  %5259 = bitcast i32 %5258 to float
  %5260 = select i1 %5256, float %5259, float 0.000000e+00
  %5261 = fmul fast float %5236, %5187
  %5262 = fmul fast float %5237, %5188
  %5263 = fmul fast float %5238, %5189
  %5264 = fmul fast float %5261, %5260
  %5265 = fmul fast float %5262, %5260
  %5266 = fmul fast float %5263, %5260
  br label %5267

; <label>:5267                                    ; preds = %5253, %5180
  %5268 = phi float [ %5264, %5253 ], [ %5187, %5180 ]
  %5269 = phi float [ %5265, %5253 ], [ %5188, %5180 ]
  %5270 = phi float [ %5266, %5253 ], [ %5189, %5180 ]
  %5271 = call float @dx.op.binary.f32(i32 36, float %5190, float 1.270000e+02)  ; FMin(a,b)
  %5272 = call float @dx.op.binary.f32(i32 36, float %5191, float 1.270000e+02)  ; FMin(a,b)
  %5273 = call float @dx.op.binary.f32(i32 36, float %5192, float 1.270000e+02)  ; FMin(a,b)
  %5274 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.i32 %5274, 3
  %5276 = and i32 %5275, 8
  %5277 = icmp ne i32 %5276, 0
  %5278 = call float @dx.op.binary.f32(i32 35, float %5236, float %5221)  ; FMax(a,b)
  %5279 = call float @dx.op.binary.f32(i32 35, float %5237, float %5221)  ; FMax(a,b)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5238, float %5221)  ; FMax(a,b)
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = select i1 %260, float %5221, float %5236
  %5283 = select i1 %260, float %5281, float %5237
  %5284 = select i1 %260, float 1.000000e+00, float %5238
  %5285 = select i1 %5277, float %5278, float %5282
  %5286 = select i1 %5277, float %5279, float %5283
  %5287 = select i1 %5277, float %5280, float %5284
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5269, float %5270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = select i1 %260, float %5288, float %5268
  %5290 = select i1 %260, float %5288, float %5269
  %5291 = select i1 %260, float %5288, float %5270
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5292, 2
  %5296 = fadd fast float %5293, %166
  %5297 = fadd fast float %5294, %167
  %5298 = fadd fast float %5295, %168
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = fsub fast float %5296, %5300
  %5303 = fsub fast float %5297, %5301
  %5304 = fmul fast float %5302, %5302
  %5305 = fmul fast float %5303, %5303
  %5306 = fadd fast float %5304, %5305
  %5307 = call float @dx.op.unary.f32(i32 24, float %5306)  ; Sqrt(value)
  %5308 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5309 = fcmp fast olt float %5307, %5308
  br i1 %5309, label %5310, label %5377

; <label>:5310                                    ; preds = %5267
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5313, 0
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5318 = extractvalue %dx.types.CBufRet.f32 %5313, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5320 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5321 = extractvalue %dx.types.CBufRet.f32 %5313, 3
  %5322 = extractvalue %dx.types.CBufRet.f32 %5315, 3
  %5323 = fadd fast float %5320, %5296
  %5324 = fadd fast float %5321, %5297
  %5325 = fadd fast float %5322, %5298
  %5326 = fmul fast float %5323, %5312
  %5327 = call float @dx.op.tertiary.f32(i32 46, float %5324, float %5314, float %5326)  ; FMad(a,b,c)
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5325, float %5316, float %5327)  ; FMad(a,b,c)
  %5329 = fmul fast float %5323, %5317
  %5330 = call float @dx.op.tertiary.f32(i32 46, float %5324, float %5318, float %5329)  ; FMad(a,b,c)
  %5331 = call float @dx.op.tertiary.f32(i32 46, float %5325, float %5319, float %5330)  ; FMad(a,b,c)
  %5332 = fsub fast float %5328, %5320
  %5333 = fsub fast float %5331, %5321
  %5334 = fsub fast float %5332, %5300
  %5335 = fadd fast float %5334, %5308
  %5336 = fsub fast float %5333, %5301
  %5337 = fadd fast float %5336, %5308
  %5338 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5339 = fmul fast float %5335, %5338
  %5340 = fmul fast float %5337, %5338
  %5341 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5340)  ; Saturate(value)
  %5343 = fsub fast float 1.000000e+00, %5341
  %5344 = fsub fast float 1.000000e+00, %5342
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %5343, float %5344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = fcmp fast ugt float %5346, 0.000000e+00
  br i1 %5347, label %5348, label %5651

; <label>:5348                                    ; preds = %5310
  %5349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5350 = extractvalue %dx.types.CBufRet.f32 %5349, 2
  %5351 = fmul fast float %5350, %5346
  %5352 = extractvalue %dx.types.CBufRet.f32 %5349, 3
  %5353 = fadd fast float %5352, %5351
  %5354 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5355 = fadd fast float %5353, %5322
  %5356 = fmul fast float %5328, %5316
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %5331, float %5319, float %5356)  ; FMad(a,b,c)
  %5358 = call float @dx.op.tertiary.f32(i32 46, float %5355, float %5354, float %5357)  ; FMad(a,b,c)
  %5359 = fsub fast float %5358, %5322
  %5360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5361 = extractvalue %dx.types.CBufRet.f32 %5360, 2
  %5362 = fsub fast float %5359, %5361
  %5363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %5343, float %5344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %56, float %5343, float %5344, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5371 = fadd fast float %5368, %5364
  %5372 = fmul fast float %5371, 0x3F847AE140000000
  %5373 = fadd fast float %5369, %5365
  %5374 = fmul fast float %5373, 0x3F847AE140000000
  %5375 = fadd fast float %5370, %5366
  %5376 = fmul fast float %5375, 0x3F847AE140000000
  br label %5651

; <label>:5377                                    ; preds = %5267
  %5378 = and i32 %236, 1
  %5379 = icmp eq i32 %5378, 0
  br i1 %5379, label %5651, label %5380

; <label>:5380                                    ; preds = %5377
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5388 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5389 = extractvalue %dx.types.CBufRet.f32 %5385, 1
  %5390 = extractvalue %dx.types.CBufRet.f32 %5381, 3
  %5391 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5392 = extractvalue %dx.types.CBufRet.f32 %5385, 3
  %5393 = fadd fast float %5390, %5296
  %5394 = fadd fast float %5391, %5297
  %5395 = fadd fast float %5392, %5298
  %5396 = fmul fast float %5393, %5382
  %5397 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5384, float %5396)  ; FMad(a,b,c)
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5386, float %5397)  ; FMad(a,b,c)
  %5399 = fmul fast float %5393, %5387
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5388, float %5399)  ; FMad(a,b,c)
  %5401 = call float @dx.op.tertiary.f32(i32 46, float %5395, float %5389, float %5400)  ; FMad(a,b,c)
  %5402 = fsub fast float %5398, %5390
  %5403 = fsub fast float %5401, %5391
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.CBufRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.CBufRet.f32 %5404, 2
  %5408 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.i32 %5411, 1
  %5414 = udiv i32 %5413, %5412
  %5415 = fsub fast float %5402, %5405
  %5416 = fsub fast float %5403, %5406
  %5417 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5416, float 0.000000e+00)  ; FMax(a,b)
  %5419 = call float @dx.op.binary.f32(i32 36, float %5417, float %5407)  ; FMin(a,b)
  %5420 = call float @dx.op.binary.f32(i32 36, float %5418, float %5408)  ; FMin(a,b)
  %5421 = add i32 %5412, -1
  %5422 = add i32 %5414, -1
  %5423 = fmul fast float %5419, %5410
  %5424 = fmul fast float %5420, %5410
  %5425 = fptoui float %5423 to i32
  %5426 = fptoui float %5424 to i32
  %5427 = call i32 @dx.op.binary.i32(i32 40, i32 %5425, i32 %5421)  ; UMin(a,b)
  %5428 = call i32 @dx.op.binary.i32(i32 40, i32 %5426, i32 %5422)  ; UMin(a,b)
  %5429 = mul i32 %5428, %5412
  %5430 = add i32 %5429, %5427
  %5431 = shl i32 %5430, 2
  %5432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.i32 %5432, 0
  %5434 = icmp eq i32 %5433, -1
  br i1 %5434, label %5651, label %5435

; <label>:5435                                    ; preds = %5380
  %5436 = mul i32 %5433, 148
  %5437 = add i32 %5436, 4
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = add i32 %5436, 8
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = add i32 %5436, 36
  %5444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = add i32 %5436, 60
  %5447 = add i32 %5436, 92
  %5448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.i32 %5448, 0
  %5450 = add i32 %5436, 116
  %5451 = fsub fast float %5402, %5439
  %5452 = fsub fast float %5403, %5442
  %5453 = fmul fast float %5410, %5451
  %5454 = fmul fast float %5410, %5452
  %5455 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = call float @dx.op.unary.f32(i32 83, float %5455)  ; DerivCoarseX(value)
  %5461 = call float @dx.op.unary.f32(i32 83, float %5457)  ; DerivCoarseX(value)
  %5462 = call float @dx.op.unary.f32(i32 84, float %5455)  ; DerivCoarseY(value)
  %5463 = call float @dx.op.unary.f32(i32 84, float %5457)  ; DerivCoarseY(value)
  %5464 = fmul fast float %5460, %5459
  %5465 = fmul fast float %5461, %5459
  %5466 = fmul fast float %5462, %5459
  %5467 = fmul fast float %5463, %5459
  %5468 = call float @dx.op.dot2.f32(i32 54, float %5466, float %5467, float %5466, float %5467)  ; Dot2(ax,ay,bx,by)
  %5469 = call float @dx.op.dot2.f32(i32 54, float %5464, float %5465, float %5464, float %5465)  ; Dot2(ax,ay,bx,by)
  %5470 = call float @dx.op.binary.f32(i32 35, float %5469, float %5468)  ; FMax(a,b)
  %5471 = call float @dx.op.unary.f32(i32 23, float %5470)  ; Log(value)
  %5472 = fmul fast float %5471, 5.000000e-01
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5475 = fadd fast float %5474, %5472
  %5476 = call float @dx.op.binary.f32(i32 35, float %5475, float 0.000000e+00)  ; FMax(a,b)
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 3
  %5479 = fadd fast float %5478, %5476
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5482 = fadd fast float %5479, %5481
  %5483 = add i32 %5449, 0
  %5484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5485 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5484, i32 0)  ; GetDimensions(handle,mipLevel)
  %5486 = extractvalue %dx.types.Dimensions %5485, 0
  %5487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5486)  ; FirstbitLo(value)
  %5488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.i32 %5488, 1
  %5490 = sub nsw i32 %5489, %5487
  %5491 = sitofp i32 %5490 to float
  %5492 = fsub fast float %5482, %5491
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float 0.000000e+00)  ; FMax(a,b)
  %5494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5484, %dx.types.Handle %54, float %5455, float %5457, float %5445, float undef, i32 0, i32 0, i32 undef, float %5493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5495 = extractvalue %dx.types.ResRet.f32 %5494, 0
  %5496 = fcmp ule float %5495, 0x3FE0101020000000
  %5497 = extractvalue %dx.types.CBufRet.i32 %5488, 0
  %5498 = and i32 %5497, 128
  %5499 = icmp ne i32 %5498, 0
  %5500 = and i1 %5496, %5499
  br i1 %5500, label %5651, label %5501

; <label>:5501                                    ; preds = %5435
  %5502 = add i32 %5436, 20
  %5503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5502, i32 undef)  ; BufferLoad(srv,index,wot)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = add i32 %5436, 24
  %5506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  %5508 = add i32 %5436, 40
  %5509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = add i32 %5436, 96
  %5512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.i32 %5512, 0
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 2
  %5516 = fmul fast float %5515, %5455
  %5517 = fmul fast float %5515, %5457
  %5518 = extractvalue %dx.types.CBufRet.f32 %5514, 3
  %5519 = fadd fast float %5516, %5518
  %5520 = fadd fast float %5517, %5518
  %5521 = add i32 %5513, 0
  %5522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5523 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5522, i32 0)  ; GetDimensions(handle,mipLevel)
  %5524 = extractvalue %dx.types.Dimensions %5523, 0
  %5525 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5524)  ; FirstbitLo(value)
  %5526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5527 = extractvalue %dx.types.CBufRet.i32 %5526, 1
  %5528 = sub nsw i32 %5527, %5525
  %5529 = sitofp i32 %5528 to float
  %5530 = fsub fast float %5479, %5529
  %5531 = call float @dx.op.binary.f32(i32 35, float %5530, float 0.000000e+00)  ; FMax(a,b)
  %5532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5522, %dx.types.Handle %54, float %5519, float %5520, float %5510, float undef, i32 0, i32 0, i32 undef, float %5531)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5533 = extractvalue %dx.types.ResRet.f32 %5532, 0
  %5534 = fmul fast float %5533, %5504
  %5535 = fadd fast float %5534, %5507
  %5536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5537 = extractvalue %dx.types.CBufRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.CBufRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.CBufRet.f32 %5536, 2
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 3
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 3
  %5544 = extractvalue %dx.types.CBufRet.f32 %5536, 3
  %5545 = fadd fast float %5541, %5402
  %5546 = fadd fast float %5543, %5403
  %5547 = fadd fast float %5535, %5544
  %5548 = fmul fast float %5545, %5537
  %5549 = call float @dx.op.tertiary.f32(i32 46, float %5546, float %5538, float %5548)  ; FMad(a,b,c)
  %5550 = call float @dx.op.tertiary.f32(i32 46, float %5547, float %5539, float %5549)  ; FMad(a,b,c)
  %5551 = fsub fast float %5550, %5544
  %5552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.f32 %5552, 2
  %5554 = fsub fast float %5551, %5553
  %5555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.i32 %5555, 0
  %5557 = call i32 @dx.op.binary.i32(i32 40, i32 %5433, i32 %5556)  ; UMin(a,b)
  %5558 = mul i32 %5557, 36
  %5559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.i32 %5559, 0
  %5561 = add i32 %5558, 4
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  %5564 = fmul fast float %5563, %5455
  %5565 = fmul fast float %5563, %5457
  %5566 = extractvalue %dx.types.CBufRet.f32 %5562, 1
  %5567 = fadd fast float %5564, %5566
  %5568 = fadd fast float %5565, %5566
  %5569 = icmp eq i32 %5560, 0
  br i1 %5569, label %5638, label %5570

; <label>:5570                                    ; preds = %5501
  br label %5571

; <label>:5571                                    ; preds = %5628, %5570
  %5572 = phi float [ %5629, %5628 ], [ 0.000000e+00, %5570 ]
  %5573 = phi float [ %5630, %5628 ], [ 0.000000e+00, %5570 ]
  %5574 = phi float [ %5631, %5628 ], [ 0.000000e+00, %5570 ]
  %5575 = phi float [ %5632, %5628 ], [ 0.000000e+00, %5570 ]
  %5576 = phi float [ %5633, %5628 ], [ 0.000000e+00, %5570 ]
  %5577 = phi float [ %5634, %5628 ], [ 0.000000e+00, %5570 ]
  %5578 = phi i32 [ %5635, %5628 ], [ 0, %5570 ]
  %5579 = shl i32 %5578, 2
  %5580 = add i32 %5446, %5579
  %5581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5580, i32 undef)  ; BufferLoad(srv,index,wot)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 0
  %5583 = add i32 %5450, %5579
  %5584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5583, i32 undef)  ; BufferLoad(srv,index,wot)
  %5585 = extractvalue %dx.types.ResRet.i32 %5584, 0
  %5586 = add i32 %5585, 0
  %5587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5586, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5587, i32 0)  ; GetDimensions(handle,mipLevel)
  %5589 = extractvalue %dx.types.Dimensions %5588, 0
  %5590 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5589)  ; FirstbitLo(value)
  %5591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.i32 %5591, 1
  %5593 = sub nsw i32 %5592, %5590
  %5594 = sitofp i32 %5593 to float
  %5595 = fsub fast float %5479, %5594
  %5596 = call float @dx.op.binary.f32(i32 35, float %5595, float 0.000000e+00)  ; FMax(a,b)
  %5597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5587, %dx.types.Handle %54, float %5567, float %5568, float %5582, float undef, i32 0, i32 0, i32 undef, float %5596)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = fcmp fast ogt float %5598, 0.000000e+00
  br i1 %5599, label %5600, label %5628

; <label>:5600                                    ; preds = %5571
  %5601 = add i32 %5561, %5579
  %5602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5601, i32 undef)  ; BufferLoad(srv,index,wot)
  %5603 = extractvalue %dx.types.ResRet.i32 %5602, 0
  %5604 = and i32 %5603, 32767
  %5605 = mul nuw nsw i32 %5604, 928
  %5606 = add nuw nsw i32 %5605, 48
  %5607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5606, i32 undef)  ; BufferLoad(srv,index,wot)
  %5608 = extractvalue %dx.types.ResRet.f32 %5607, 0
  %5609 = extractvalue %dx.types.ResRet.f32 %5607, 1
  %5610 = extractvalue %dx.types.ResRet.f32 %5607, 2
  %5611 = add nuw nsw i32 %5605, 60
  %5612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5611, i32 undef)  ; BufferLoad(srv,index,wot)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = fmul fast float %5608, %5598
  %5617 = fmul fast float %5609, %5598
  %5618 = fmul fast float %5610, %5598
  %5619 = fadd fast float %5616, %5572
  %5620 = fadd fast float %5617, %5573
  %5621 = fadd fast float %5618, %5574
  %5622 = fmul fast float %5613, %5598
  %5623 = fmul fast float %5614, %5598
  %5624 = fmul fast float %5615, %5598
  %5625 = fadd fast float %5622, %5575
  %5626 = fadd fast float %5623, %5576
  %5627 = fadd fast float %5624, %5577
  br label %5628

; <label>:5628                                    ; preds = %5600, %5571
  %5629 = phi float [ %5619, %5600 ], [ %5572, %5571 ]
  %5630 = phi float [ %5620, %5600 ], [ %5573, %5571 ]
  %5631 = phi float [ %5621, %5600 ], [ %5574, %5571 ]
  %5632 = phi float [ %5625, %5600 ], [ %5575, %5571 ]
  %5633 = phi float [ %5626, %5600 ], [ %5576, %5571 ]
  %5634 = phi float [ %5627, %5600 ], [ %5577, %5571 ]
  %5635 = add nuw i32 %5578, 1
  %5636 = icmp eq i32 %5635, %5560
  br i1 %5636, label %5637, label %5571

; <label>:5637                                    ; preds = %5628
  br label %5638

; <label>:5638                                    ; preds = %5637, %5501
  %5639 = phi float [ 0.000000e+00, %5501 ], [ %5629, %5637 ]
  %5640 = phi float [ 0.000000e+00, %5501 ], [ %5630, %5637 ]
  %5641 = phi float [ 0.000000e+00, %5501 ], [ %5631, %5637 ]
  %5642 = phi float [ 0.000000e+00, %5501 ], [ %5632, %5637 ]
  %5643 = phi float [ 0.000000e+00, %5501 ], [ %5633, %5637 ]
  %5644 = phi float [ 0.000000e+00, %5501 ], [ %5634, %5637 ]
  %5645 = fadd fast float %5642, %5639
  %5646 = fmul fast float %5645, 0x3F847AE140000000
  %5647 = fadd fast float %5643, %5640
  %5648 = fmul fast float %5647, 0x3F847AE140000000
  %5649 = fadd fast float %5644, %5641
  %5650 = fmul fast float %5649, 0x3F847AE140000000
  br label %5651

; <label>:5651                                    ; preds = %5638, %5435, %5380, %5377, %5348, %5310
  %5652 = phi float [ %5372, %5348 ], [ 0.000000e+00, %5310 ], [ %5646, %5638 ], [ 0.000000e+00, %5380 ], [ 0.000000e+00, %5435 ], [ 0.000000e+00, %5377 ]
  %5653 = phi float [ %5374, %5348 ], [ 0.000000e+00, %5310 ], [ %5648, %5638 ], [ 0.000000e+00, %5380 ], [ 0.000000e+00, %5435 ], [ 0.000000e+00, %5377 ]
  %5654 = phi float [ %5376, %5348 ], [ 0.000000e+00, %5310 ], [ %5650, %5638 ], [ 0.000000e+00, %5380 ], [ 0.000000e+00, %5435 ], [ 0.000000e+00, %5377 ]
  %5655 = phi float [ %5362, %5348 ], [ -1.310720e+05, %5310 ], [ %5554, %5638 ], [ -1.310720e+05, %5380 ], [ -1.310720e+05, %5435 ], [ -1.310720e+05, %5377 ]
  %5656 = phi i1 [ true, %5348 ], [ false, %5310 ], [ true, %5638 ], [ false, %5380 ], [ false, %5435 ], [ false, %5377 ]
  %5657 = and i32 %236, 3
  %5658 = icmp eq i32 %5657, 1
  %5659 = select i1 %5658, float 1.000000e+00, float 0.000000e+00
  %5660 = fsub fast float %5655, %168
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = select i1 %5656, float %5661, float 1.000000e+00
  %5663 = fmul fast float %5662, %5659
  %5664 = icmp eq i32 %5657, 3
  %5665 = select i1 %5664, float 1.000000e+00, float %5663
  %5666 = call float @dx.op.binary.f32(i32 35, float %5202, float %5665)  ; FMax(a,b)
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fcmp fast une float %5667, 0.000000e+00
  %5669 = fsub fast float -0.000000e+00, %186
  %5670 = fsub fast float -0.000000e+00, %187
  %5671 = fsub fast float -0.000000e+00, %188
  br i1 %5668, label %5672, label %5834

; <label>:5672                                    ; preds = %5651
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fmul fast float %5667, 2.500000e+00
  %5675 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5676 = fmul fast float %5667, 0x4013FFFFE0000000
  %5677 = fadd fast float %5676, 0xBFFFFFFFE0000000
  %5678 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5679 = fmul fast float %5667, 0x4004000020000000
  %5680 = fadd fast float %5679, 0xBFF8000040000000
  %5681 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5682 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5683 = fmul fast float %5227, 1.000000e+01
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5684, 2.000000e+00
  %5686 = fsub fast float 3.000000e+00, %5685
  %5687 = fmul fast float %5684, %5684
  %5688 = fmul fast float %5687, %5686
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = fsub fast float 0x3FE3333340000000, %5248
  %5691 = fmul fast float %5690, 0x400AAAAAA0000000
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5689, %5692
  %5694 = fmul fast float %5285, 0x3FEA2B8620000000
  %5695 = fmul fast float %5286, 0x3FEA2B8620000000
  %5696 = fmul fast float %5287, 0x3FEA2B8620000000
  %5697 = fadd fast float %5694, 0x3FC81DFBA0000000
  %5698 = fmul fast float %5697, %5285
  %5699 = fadd fast float %5698, 0x3F910E6020000000
  %5700 = fadd fast float %5695, 0x3FC81DFBA0000000
  %5701 = fmul fast float %5700, %5286
  %5702 = fadd fast float %5701, 0x3F910E6020000000
  %5703 = fadd fast float %5696, 0x3FC81DFBA0000000
  %5704 = fmul fast float %5703, %5287
  %5705 = fadd fast float %5704, 0x3F910E6020000000
  %5706 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5709 = fsub fast float %5706, %5285
  %5710 = fsub fast float %5707, %5286
  %5711 = fsub fast float %5708, %5287
  %5712 = fmul fast float %5709, %5682
  %5713 = fmul fast float %5712, %5693
  %5714 = fmul fast float %5710, %5682
  %5715 = fmul fast float %5714, %5693
  %5716 = fmul fast float %5711, %5682
  %5717 = fmul fast float %5716, %5693
  %5718 = fadd fast float %5713, %5285
  %5719 = fadd fast float %5715, %5286
  %5720 = fadd fast float %5717, %5287
  %5721 = fmul fast float %5199, %5199
  %5722 = fmul fast float %5721, %5721
  %5723 = fadd fast float %5678, 1.000000e+00
  %5724 = fsub fast float %5723, %5693
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fsub fast float 1.000000e+00, %5722
  %5729 = call float @dx.op.binary.f32(i32 36, float %5725, float %5728)  ; FMin(a,b)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5729, float %5730)  ; FMax(a,b)
  %5732 = fadd fast float %5727, 0xBFE4CCCCC0000000
  %5733 = fmul fast float %5732, 0x4006DB6DA0000000
  %5734 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5735 = fmul fast float %5734, 2.000000e+00
  %5736 = fsub fast float 3.000000e+00, %5735
  %5737 = bitcast float %5245 to i32
  %5738 = ashr i32 %5737, 1
  %5739 = add nsw i32 %5738, 532487669
  %5740 = bitcast i32 %5739 to float
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = bitcast float %5741 to i32
  %5743 = sub nsw i32 2129859010, %5742
  %5744 = bitcast i32 %5743 to float
  %5745 = fmul fast float %5744, 2.000000e+00
  %5746 = bitcast float %5246 to i32
  %5747 = ashr i32 %5746, 1
  %5748 = add nsw i32 %5747, 532487669
  %5749 = bitcast i32 %5748 to float
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = bitcast float %5750 to i32
  %5752 = sub nsw i32 2129859010, %5751
  %5753 = bitcast i32 %5752 to float
  %5754 = fmul fast float %5753, 2.000000e+00
  %5755 = bitcast float %5247 to i32
  %5756 = ashr i32 %5755, 1
  %5757 = add nsw i32 %5756, 532487669
  %5758 = bitcast i32 %5757 to float
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5762, 2.000000e+00
  %5764 = fsub fast float 0x4002A9FBE0000000, %5745
  %5765 = fadd fast float %5745, 0x3FD54FDF00000000
  %5766 = bitcast float %5765 to i32
  %5767 = sub nsw i32 2129859010, %5766
  %5768 = bitcast i32 %5767 to float
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %5769, %5769
  %5771 = fsub fast float 0x4002A9FBE0000000, %5754
  %5772 = fadd fast float %5754, 0x3FD54FDF00000000
  %5773 = bitcast float %5772 to i32
  %5774 = sub nsw i32 2129859010, %5773
  %5775 = bitcast i32 %5774 to float
  %5776 = fmul fast float %5775, %5771
  %5777 = fmul fast float %5776, %5776
  %5778 = fsub fast float 0x4002A9FBE0000000, %5763
  %5779 = fadd fast float %5763, 0x3FD54FDF00000000
  %5780 = bitcast float %5779 to i32
  %5781 = sub nsw i32 2129859010, %5780
  %5782 = bitcast i32 %5781 to float
  %5783 = fmul fast float %5782, %5778
  %5784 = fmul fast float %5783, %5783
  %5785 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5770)  ; FMax(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5777)  ; FMax(a,b)
  %5787 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5784)  ; FMax(a,b)
  %5788 = fsub fast float 1.000000e+00, %5673
  %5789 = fadd fast float %5788, %5689
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = fsub fast float 1.000000e+00, %5665
  %5792 = fmul fast float %5731, %5791
  %5793 = fmul fast float %5734, %5734
  %5794 = fmul fast float %5793, %5792
  %5795 = fmul fast float %5794, %5736
  %5796 = fmul fast float %5791, 0xBFE99999A0000000
  %5797 = fmul fast float %5796, %5682
  %5798 = fmul fast float %5797, %5693
  %5799 = fadd fast float %5798, 1.000000e+00
  %5800 = fadd fast float %5248, -1.000000e+00
  %5801 = fmul fast float %5799, %5800
  %5802 = fadd fast float %5801, 1.000000e+00
  %5803 = fsub fast float %5785, %5245
  %5804 = fsub fast float %5786, %5246
  %5805 = fsub fast float %5787, %5247
  %5806 = fmul fast float %5795, %5803
  %5807 = fmul fast float %5795, %5804
  %5808 = fmul fast float %5795, %5805
  %5809 = fadd fast float %5806, %5245
  %5810 = fadd fast float %5807, %5246
  %5811 = fadd fast float %5808, %5247
  %5812 = fsub fast float %118, %5193
  %5813 = fsub fast float %119, %5194
  %5814 = fsub fast float %120, %5195
  %5815 = fmul fast float %5795, %5812
  %5816 = fmul fast float %5795, %5813
  %5817 = fmul fast float %5795, %5814
  %5818 = fadd fast float %5815, %5193
  %5819 = fadd fast float %5816, %5194
  %5820 = fadd fast float %5817, %5195
  %5821 = fmul fast float %5795, %5790
  %5822 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5823 = fsub fast float 1.000000e+00, %5822
  %5824 = fmul fast float %5821, %5823
  %5825 = fadd fast float %5824, %5822
  %5826 = fsub fast float 1.000000e+00, %5199
  %5827 = fmul fast float %5795, %5826
  %5828 = fadd fast float %5827, %5199
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5818, float %5819, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = call float @dx.op.unary.f32(i32 25, float %5829)  ; Rsqrt(value)
  %5831 = fmul fast float %5818, %5830
  %5832 = fmul fast float %5819, %5830
  %5833 = fmul fast float %5820, %5830
  br label %5834

; <label>:5834                                    ; preds = %5672, %5651
  %5835 = phi float [ %5718, %5672 ], [ %5285, %5651 ]
  %5836 = phi float [ %5719, %5672 ], [ %5286, %5651 ]
  %5837 = phi float [ %5720, %5672 ], [ %5287, %5651 ]
  %5838 = phi float [ %5809, %5672 ], [ %5245, %5651 ]
  %5839 = phi float [ %5810, %5672 ], [ %5246, %5651 ]
  %5840 = phi float [ %5811, %5672 ], [ %5247, %5651 ]
  %5841 = phi float [ %5831, %5672 ], [ %5193, %5651 ]
  %5842 = phi float [ %5832, %5672 ], [ %5194, %5651 ]
  %5843 = phi float [ %5833, %5672 ], [ %5195, %5651 ]
  %5844 = phi float [ %5825, %5672 ], [ %5248, %5651 ]
  %5845 = phi float [ %5828, %5672 ], [ %5199, %5651 ]
  %5846 = fsub fast float -0.000000e+00, %168
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5850 = fmul fast float %136, %5848
  %5851 = fmul fast float %138, %5849
  %5852 = fsub fast float 1.000000e+00, %5850
  %5853 = fsub fast float 1.000000e+00, %5851
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.CBufRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.CBufRet.f32 %5854, 2
  %5858 = fmul fast float %5852, %5855
  %5859 = fmul fast float %5852, %5856
  %5860 = fmul fast float %5852, %5857
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5865 = fmul fast float %5853, %5862
  %5866 = fmul fast float %5853, %5863
  %5867 = fmul fast float %5853, %5864
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5872 = fadd fast float %5865, %5869
  %5873 = fadd fast float %5872, %5858
  %5874 = fadd fast float %5866, %5870
  %5875 = fadd fast float %5874, %5859
  %5876 = fadd fast float %5867, %5871
  %5877 = fadd fast float %5876, %5860
  %5878 = fmul fast float %5873, %99
  %5879 = fmul fast float %5875, %99
  %5880 = fmul fast float %5877, %99
  %5881 = select i1 %260, float 0.000000e+00, float %5840
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %5669, float %5670, float %5671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5884 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = fmul fast float %5884, 2.000000e+00
  %5886 = fmul fast float %5885, %5841
  %5887 = fmul fast float %5885, %5842
  %5888 = fmul fast float %5885, %5843
  %5889 = fsub fast float %186, %5886
  %5890 = fsub fast float %187, %5887
  %5891 = fsub fast float %188, %5888
  %5892 = call float @dx.op.binary.f32(i32 36, float %5845, float 1.000000e+00)  ; FMin(a,b)
  %5893 = fsub fast float 1.000000e+00, %5892
  %5894 = bitcast float %5893 to i32
  %5895 = ashr i32 %5894, 1
  %5896 = add nsw i32 %5895, 532487669
  %5897 = bitcast i32 %5896 to float
  %5898 = fsub fast float 1.000000e+00, %5844
  %5899 = call float @dx.op.binary.f32(i32 35, float %5898, float 0x3F847AE140000000)  ; FMax(a,b)
  %5900 = fmul fast float %5899, %5899
  %5901 = fmul fast float %5900, %5900
  %5902 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %56, float %5897, float %5901, float %5902, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = fsub fast float 1.000000e+00, %5845
  %5906 = bitcast float %5905 to i32
  %5907 = sub nsw i32 2129859010, %5906
  %5908 = bitcast i32 %5907 to float
  %5909 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = fmul fast float %5909, 0x3FD20DD760000000
  %5911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5912 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fcmp fast oeq float %5912, 0.000000e+00
  %5914 = fcmp fast oeq float %5911, 0.000000e+00
  %5915 = or i1 %5914, %5913
  br i1 %5915, label %5945, label %5916

; <label>:5916                                    ; preds = %5834
  %5917 = fsub fast float -0.000000e+00, %82
  %5918 = fsub fast float -0.000000e+00, %80
  %5919 = call float @dx.op.unary.f32(i32 24, float %5912)  ; Sqrt(value)
  %5920 = fdiv fast float %5919, %5911
  %5921 = fcmp fast ogt float %5920, 0x3FFB6F8900000000
  %5922 = select i1 %5921, float 0x3FFB6F8900000000, float %5920
  %5923 = fmul fast float %5922, 0x3FE8A23460000000
  %5924 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5922, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5926 = fmul fast float %5924, %5911
  %5927 = fmul fast float %5925, 0x3FF279A740000000
  %5928 = fadd fast float %5927, -1.000000e+00
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5917, float %5918, float %81, float %5917, float %5918, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.unary.f32(i32 25, float %5929)  ; Rsqrt(value)
  %5931 = fmul fast float %5930, %5917
  %5932 = fmul fast float %5930, %5918
  %5933 = fmul fast float %5930, %81
  %5934 = fmul fast float %5928, %5928
  %5935 = fsub fast float 1.000000e+00, %5934
  %5936 = fmul fast float %5925, 0x40005F8BE0000000
  %5937 = fsub fast float 0x400C5BF8A0000000, %5936
  %5938 = fdiv fast float %5926, %5937
  %5939 = fmul fast float %5938, 0x3FEE31C3C0000000
  %5940 = fmul fast float %5939, %5935
  %5941 = fmul fast float %5925, 0x3FDACB7480000000
  %5942 = fadd fast float %5941, 0xBFD7347680000000
  %5943 = fmul fast float %5942, %5938
  %5944 = fmul fast float %5943, %5935
  br label %5945

; <label>:5945                                    ; preds = %5916, %5834
  %5946 = phi float [ %5931, %5916 ], [ 0.000000e+00, %5834 ]
  %5947 = phi float [ %5932, %5916 ], [ 0.000000e+00, %5834 ]
  %5948 = phi float [ %5933, %5916 ], [ 0.000000e+00, %5834 ]
  %5949 = phi float [ %5940, %5916 ], [ 0.000000e+00, %5834 ]
  %5950 = phi float [ %5944, %5916 ], [ 0.000000e+00, %5834 ]
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5946, float %5947, float %5948, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = fmul fast float %5951, %5951
  %5953 = fmul fast float %5952, 0x3FEE471020000000
  %5954 = fadd fast float %5953, 0xBFD42F6020000000
  %5955 = fmul fast float %5911, 0x3FD20DD760000000
  %5956 = fmul fast float %5954, %5950
  %5957 = fmul fast float %5949, 0x3FDF454380000000
  %5958 = fmul fast float %5957, %5951
  %5959 = fadd fast float %5958, %5955
  %5960 = fadd fast float %5959, %5956
  %5961 = call float @dx.op.dot3.f32(i32 55, float %5946, float %5947, float %5948, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = fmul fast float %5961, 0x3FDF454380000000
  %5963 = fmul fast float %5961, %5961
  %5964 = fmul fast float %5963, 0x3FEE471020000000
  %5965 = fadd fast float %5964, 0xBFD42F6020000000
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5949, float %5950, float 0x3FD20DD760000000, float %5962, float %5965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5968 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fcmp fast oeq float %5968, 0.000000e+00
  %5970 = fcmp fast oeq float %5967, 0.000000e+00
  %5971 = or i1 %5970, %5969
  br i1 %5971, label %6001, label %5972

; <label>:5972                                    ; preds = %5945
  %5973 = fsub fast float -0.000000e+00, %78
  %5974 = fsub fast float -0.000000e+00, %76
  %5975 = call float @dx.op.unary.f32(i32 24, float %5968)  ; Sqrt(value)
  %5976 = fdiv fast float %5975, %5967
  %5977 = fcmp fast ogt float %5976, 0x3FFB6F8900000000
  %5978 = select i1 %5977, float 0x3FFB6F8900000000, float %5976
  %5979 = fmul fast float %5978, 0x3FE8A23460000000
  %5980 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5978, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5982 = fmul fast float %5980, %5967
  %5983 = fmul fast float %5981, 0x3FF279A740000000
  %5984 = fadd fast float %5983, -1.000000e+00
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %77, float %5973, float %5974, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.unary.f32(i32 25, float %5985)  ; Rsqrt(value)
  %5987 = fmul fast float %5986, %5973
  %5988 = fmul fast float %5986, %5974
  %5989 = fmul fast float %5986, %77
  %5990 = fmul fast float %5984, %5984
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = fmul fast float %5981, 0x40005F8BE0000000
  %5993 = fsub fast float 0x400C5BF8A0000000, %5992
  %5994 = fdiv fast float %5982, %5993
  %5995 = fmul fast float %5994, 0x3FEE31C3C0000000
  %5996 = fmul fast float %5995, %5991
  %5997 = fmul fast float %5981, 0x3FDACB7480000000
  %5998 = fadd fast float %5997, 0xBFD7347680000000
  %5999 = fmul fast float %5998, %5994
  %6000 = fmul fast float %5999, %5991
  br label %6001

; <label>:6001                                    ; preds = %5972, %5945
  %6002 = phi float [ %5987, %5972 ], [ 0.000000e+00, %5945 ]
  %6003 = phi float [ %5988, %5972 ], [ 0.000000e+00, %5945 ]
  %6004 = phi float [ %5989, %5972 ], [ 0.000000e+00, %5945 ]
  %6005 = phi float [ %5996, %5972 ], [ 0.000000e+00, %5945 ]
  %6006 = phi float [ %6000, %5972 ], [ 0.000000e+00, %5945 ]
  %6007 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = fmul fast float %6007, %6007
  %6009 = fmul fast float %6008, 0x3FEE471020000000
  %6010 = fadd fast float %6009, 0xBFD42F6020000000
  %6011 = fmul fast float %5967, 0x3FD20DD760000000
  %6012 = fmul fast float %6010, %6006
  %6013 = fmul fast float %6005, 0x3FDF454380000000
  %6014 = fmul fast float %6013, %6007
  %6015 = fadd fast float %6014, %6011
  %6016 = fadd fast float %6015, %6012
  %6017 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = fmul fast float %6017, 0x3FDF454380000000
  %6019 = fmul fast float %6017, %6017
  %6020 = fmul fast float %6019, 0x3FEE471020000000
  %6021 = fadd fast float %6020, 0xBFD42F6020000000
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5967, float %6005, float %6006, float 0x3FD20DD760000000, float %6018, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %6024 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = fcmp fast oeq float %6024, 0.000000e+00
  %6026 = fcmp fast oeq float %6023, 0.000000e+00
  %6027 = or i1 %6026, %6025
  br i1 %6027, label %6057, label %6028

; <label>:6028                                    ; preds = %6001
  %6029 = fsub fast float -0.000000e+00, %74
  %6030 = fsub fast float -0.000000e+00, %72
  %6031 = call float @dx.op.unary.f32(i32 24, float %6024)  ; Sqrt(value)
  %6032 = fdiv fast float %6031, %6023
  %6033 = fcmp fast ogt float %6032, 0x3FFB6F8900000000
  %6034 = select i1 %6033, float 0x3FFB6F8900000000, float %6032
  %6035 = fmul fast float %6034, 0x3FE8A23460000000
  %6036 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6034, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6038 = fmul fast float %6036, %6023
  %6039 = fmul fast float %6037, 0x3FF279A740000000
  %6040 = fadd fast float %6039, -1.000000e+00
  %6041 = call float @dx.op.dot3.f32(i32 55, float %6029, float %6030, float %73, float %6029, float %6030, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = call float @dx.op.unary.f32(i32 25, float %6041)  ; Rsqrt(value)
  %6043 = fmul fast float %6042, %6029
  %6044 = fmul fast float %6042, %6030
  %6045 = fmul fast float %6042, %73
  %6046 = fmul fast float %6040, %6040
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = fmul fast float %6037, 0x40005F8BE0000000
  %6049 = fsub fast float 0x400C5BF8A0000000, %6048
  %6050 = fdiv fast float %6038, %6049
  %6051 = fmul fast float %6050, 0x3FEE31C3C0000000
  %6052 = fmul fast float %6051, %6047
  %6053 = fmul fast float %6037, 0x3FDACB7480000000
  %6054 = fadd fast float %6053, 0xBFD7347680000000
  %6055 = fmul fast float %6054, %6050
  %6056 = fmul fast float %6055, %6047
  br label %6057

; <label>:6057                                    ; preds = %6028, %6001
  %6058 = phi float [ %6043, %6028 ], [ 0.000000e+00, %6001 ]
  %6059 = phi float [ %6044, %6028 ], [ 0.000000e+00, %6001 ]
  %6060 = phi float [ %6045, %6028 ], [ 0.000000e+00, %6001 ]
  %6061 = phi float [ %6052, %6028 ], [ 0.000000e+00, %6001 ]
  %6062 = phi float [ %6056, %6028 ], [ 0.000000e+00, %6001 ]
  %6063 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = fmul fast float %6063, %6063
  %6065 = fmul fast float %6064, 0x3FEE471020000000
  %6066 = fadd fast float %6065, 0xBFD42F6020000000
  %6067 = fmul fast float %6023, 0x3FD20DD760000000
  %6068 = fmul fast float %6066, %6062
  %6069 = fmul fast float %6061, 0x3FDF454380000000
  %6070 = fmul fast float %6069, %6063
  %6071 = fadd fast float %6070, %6067
  %6072 = fadd fast float %6071, %6068
  %6073 = call float @dx.op.dot3.f32(i32 55, float %6058, float %6059, float %6060, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = fmul fast float %6073, 0x3FDF454380000000
  %6075 = fmul fast float %6073, %6073
  %6076 = fmul fast float %6075, 0x3FEE471020000000
  %6077 = fadd fast float %6076, 0xBFD42F6020000000
  %6078 = call float @dx.op.dot3.f32(i32 55, float %6023, float %6061, float %6062, float 0x3FD20DD760000000, float %6074, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = call float @dx.op.binary.f32(i32 35, float %5960, float 0.000000e+00)  ; FMax(a,b)
  %6080 = call float @dx.op.binary.f32(i32 35, float %6016, float 0.000000e+00)  ; FMax(a,b)
  %6081 = call float @dx.op.binary.f32(i32 35, float %6072, float 0.000000e+00)  ; FMax(a,b)
  %6082 = call float @dx.op.binary.f32(i32 35, float %5966, float 0.000000e+00)  ; FMax(a,b)
  %6083 = call float @dx.op.binary.f32(i32 35, float %6022, float 0.000000e+00)  ; FMax(a,b)
  %6084 = call float @dx.op.binary.f32(i32 35, float %6078, float 0.000000e+00)  ; FMax(a,b)
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 0
  %6087 = call float @dx.op.binary.f32(i32 36, float %5835, float %6086)  ; FMin(a,b)
  %6088 = fmul fast float %6087, %5893
  %6089 = fsub fast float 1.000000e+00, %6088
  %6090 = bitcast float %6089 to i32
  %6091 = sub nsw i32 2129859010, %6090
  %6092 = bitcast i32 %6091 to float
  %6093 = call float @dx.op.binary.f32(i32 36, float %5836, float %6086)  ; FMin(a,b)
  %6094 = fmul fast float %6093, %5893
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = bitcast float %6095 to i32
  %6097 = sub nsw i32 2129859010, %6096
  %6098 = bitcast i32 %6097 to float
  %6099 = call float @dx.op.binary.f32(i32 36, float %5837, float %6086)  ; FMin(a,b)
  %6100 = fmul fast float %6099, %5893
  %6101 = fsub fast float 1.000000e+00, %6100
  %6102 = bitcast float %6101 to i32
  %6103 = sub nsw i32 2129859010, %6102
  %6104 = bitcast i32 %6103 to float
  %6105 = fmul fast float %6079, %5892
  %6106 = fmul fast float %6105, %6092
  %6107 = fmul fast float %6080, %5892
  %6108 = fmul fast float %6107, %6098
  %6109 = fmul fast float %6081, %5892
  %6110 = fmul fast float %6109, %6104
  %6111 = call float @dx.op.binary.f32(i32 36, float %5838, float %6086)  ; FMin(a,b)
  %6112 = fmul fast float %6111, %5893
  %6113 = fsub fast float 1.000000e+00, %6112
  %6114 = bitcast float %6113 to i32
  %6115 = sub nsw i32 2129859010, %6114
  %6116 = bitcast i32 %6115 to float
  %6117 = call float @dx.op.binary.f32(i32 36, float %5839, float %6086)  ; FMin(a,b)
  %6118 = fmul fast float %6117, %5893
  %6119 = fsub fast float 1.000000e+00, %6118
  %6120 = bitcast float %6119 to i32
  %6121 = sub nsw i32 2129859010, %6120
  %6122 = bitcast i32 %6121 to float
  %6123 = call float @dx.op.binary.f32(i32 36, float %5881, float %6086)  ; FMin(a,b)
  %6124 = fmul fast float %6123, %5893
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = bitcast float %6125 to i32
  %6127 = sub nsw i32 2129859010, %6126
  %6128 = bitcast i32 %6127 to float
  %6129 = fmul fast float %6082, %5892
  %6130 = fmul fast float %6129, %6116
  %6131 = fmul fast float %6083, %5892
  %6132 = fmul fast float %6131, %6122
  %6133 = fmul fast float %6084, %5892
  %6134 = fmul fast float %6133, %6128
  %6135 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6108, float %6110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = select i1 %260, float 0.000000e+00, float %6106
  %6137 = select i1 %260, float %6135, float %6108
  %6138 = select i1 %260, float 0.000000e+00, float %6110
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6130, float %6132, float %6134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = select i1 %260, float 0.000000e+00, float %6130
  %6141 = select i1 %260, float %6139, float %6132
  %6142 = select i1 %260, float 0.000000e+00, float %6134
  %6143 = fmul fast float %4553, %4553
  %6144 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  %6145 = fmul fast float %5883, 9.843750e-01
  %6146 = fmul fast float %5844, 9.843750e-01
  %6147 = fadd fast float %6145, 7.812500e-03
  %6148 = fadd fast float %6146, 7.812500e-03
  %6149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %6147, float %6148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6153 = extractvalue %dx.types.ResRet.f32 %6149, 3
  %6154 = fsub fast float 1.000000e+00, %6144
  %6155 = fsub fast float %6152, %6150
  %6156 = fsub fast float %6153, %6151
  %6157 = fmul fast float %6155, %6154
  %6158 = fmul fast float %6156, %6154
  %6159 = fadd fast float %6157, %6150
  %6160 = fadd fast float %6158, %6151
  %6161 = fmul fast float %6159, %5838
  %6162 = fmul fast float %6159, %5839
  %6163 = fmul fast float %6159, %5881
  %6164 = fadd fast float %6161, %6160
  %6165 = fadd fast float %6162, %6160
  %6166 = fadd fast float %6163, %6160
  %6167 = fcmp fast ogt float %5200, 0.000000e+00
  br i1 %6167, label %6168, label %6194

; <label>:6168                                    ; preds = %6057
  %6169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %5883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.ResRet.f32 %6169, 2
  %6173 = fadd fast float %6170, -5.000000e-01
  %6174 = fadd fast float %6171, -5.000000e-01
  %6175 = fadd fast float %6172, -5.000000e-01
  %6176 = fsub fast float 1.000000e+00, %5838
  %6177 = fsub fast float 1.000000e+00, %5839
  %6178 = fsub fast float 1.000000e+00, %5881
  %6179 = fmul fast float %5838, 4.000000e+00
  %6180 = fmul fast float %6179, %6176
  %6181 = fmul fast float %6180, %6173
  %6182 = fmul fast float %5839, 4.000000e+00
  %6183 = fmul fast float %6182, %6177
  %6184 = fmul fast float %6183, %6174
  %6185 = fmul fast float %5881, 4.000000e+00
  %6186 = fmul fast float %6185, %6178
  %6187 = fmul fast float %6186, %6175
  %6188 = fadd fast float %6181, %6164
  %6189 = fadd fast float %6184, %6165
  %6190 = fadd fast float %6187, %6166
  %6191 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6192 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6193 = call float @dx.op.unary.f32(i32 7, float %6190)  ; Saturate(value)
  br label %6194

; <label>:6194                                    ; preds = %6168, %6057
  %6195 = phi float [ %6191, %6168 ], [ %6164, %6057 ]
  %6196 = phi float [ %6192, %6168 ], [ %6165, %6057 ]
  %6197 = phi float [ %6193, %6168 ], [ %6166, %6057 ]
  %6198 = call float @dx.op.binary.f32(i32 35, float %6196, float %6197)  ; FMax(a,b)
  %6199 = call float @dx.op.binary.f32(i32 35, float %6195, float %6198)  ; FMax(a,b)
  %6200 = fsub fast float 1.000000e+00, %6199
  %6201 = fmul fast float %6199, %5844
  %6202 = fadd fast float %6201, %5844
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 2
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 3
  %6206 = fmul fast float %6202, %6204
  %6207 = fadd fast float %6206, %6205
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fsub fast float 1.000000e+00, %5904
  %6210 = fadd fast float %6209, %6208
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fcmp fast olt float %6211, 1.000000e+00
  br i1 %6212, label %6213, label %6689

; <label>:6213                                    ; preds = %6194
  %6214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6215 = extractvalue %dx.types.CBufRet.f32 %6214, 2
  %6216 = extractvalue %dx.types.CBufRet.f32 %6214, 3
  %6217 = fmul fast float %6215, %111
  %6218 = fmul fast float %6216, %112
  %6219 = fptoui float %6217 to i32
  %6220 = fptoui float %6218 to i32
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.CBufRet.f32 %6221, 2
  %6224 = extractvalue %dx.types.CBufRet.f32 %6221, 3
  %6225 = fadd fast float %99, -4.000000e+00
  %6226 = call float @dx.op.binary.f32(i32 35, float %6225, float 0.000000e+00)  ; FMax(a,b)
  %6227 = fadd fast float %6226, %6222
  %6228 = fmul fast float %6227, %6223
  %6229 = call float @dx.op.unary.f32(i32 23, float %6228)  ; Log(value)
  %6230 = fmul fast float %6229, %6224
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6233 = fmul fast float %6230, %6232
  %6234 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 1
  %6237 = add i32 %6236, -1
  %6238 = uitofp i32 %6236 to float
  %6239 = fmul fast float %6238, %6234
  %6240 = fptoui float %6239 to i32
  %6241 = call i32 @dx.op.binary.i32(i32 40, i32 %6240, i32 %6237)  ; UMin(a,b)
  %6242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.i32 %6242, 2
  %6244 = extractvalue %dx.types.CBufRet.i32 %6242, 3
  %6245 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6220, i32 %6243, i32 %6219)  ; UMad(a,b,c)
  %6246 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6241, i32 %6244, i32 %6245)  ; UMad(a,b,c)
  %6247 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6248 = fptoui float %6247 to i32
  %6249 = lshr i32 %6248, 5
  %6250 = call i32 @dx.op.binary.i32(i32 40, i32 %6249, i32 8191)  ; UMin(a,b)
  %6251 = fsub fast float %5655, %168
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = fcmp fast ogt float %6252, 0.000000e+00
  %6254 = fcmp fast ogt float %5891, 0.000000e+00
  %6255 = and i1 %6254, %6253
  br i1 %6255, label %6256, label %6285

; <label>:6256                                    ; preds = %6213
  %6257 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %5891, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6258 = call float @dx.op.binary.f32(i32 35, float %6257, float -1.000000e+00)  ; FMax(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6258, float 1.000000e+00)  ; FMin(a,b)
  %6260 = fmul fast float %6259, %6259
  %6261 = fsub fast float 1.000000e+00, %6260
  %6262 = fmul fast float %6261, 0x3FFC6E2300000000
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = fcmp fast ogt float %6263, 0.000000e+00
  %6265 = call float @dx.op.unary.f32(i32 24, float %6263)  ; Sqrt(value)
  %6266 = fsub fast float 1.000000e+00, %6265
  %6267 = call float @dx.op.unary.f32(i32 23, float %6266)  ; Log(value)
  %6268 = fmul fast float %6267, 5.000000e+00
  %6269 = call float @dx.op.unary.f32(i32 21, float %6268)  ; Exp(value)
  %6270 = fmul fast float %6269, 0x3FEF591A60000000
  %6271 = fadd fast float %6270, 0x3F94DCB540000000
  %6272 = select i1 %6264, float %6271, float 1.000000e+00
  %6273 = fcmp fast oge float %6272, 1.000000e+00
  %6274 = fmul fast float %6257, 2.000000e+00
  %6275 = fadd fast float %6274, %5891
  %6276 = select i1 %6273, float %6275, float %5891
  %6277 = fsub fast float %6276, %5891
  %6278 = fmul fast float %6277, %6252
  %6279 = fadd fast float %6278, %5891
  %6280 = call float @dx.op.dot3.f32(i32 55, float %5889, float %5890, float %6279, float %5889, float %5890, float %6279)  ; Dot3(ax,ay,az,bx,by,bz)
  %6281 = call float @dx.op.unary.f32(i32 25, float %6280)  ; Rsqrt(value)
  %6282 = fmul fast float %6281, %5889
  %6283 = fmul fast float %6281, %5890
  %6284 = fmul fast float %6279, %6281
  br label %6285

; <label>:6285                                    ; preds = %6256, %6213
  %6286 = phi float [ %6282, %6256 ], [ %5889, %6213 ]
  %6287 = phi float [ %6283, %6256 ], [ %5890, %6213 ]
  %6288 = phi float [ %6284, %6256 ], [ %5891, %6213 ]
  %6289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.i32 %6289, 2
  %6291 = add nsw i32 %6290, -1
  %6292 = call i32 @dx.op.binary.i32(i32 37, i32 %6291, i32 0)  ; IMax(a,b)
  %6293 = shl i32 %6250, 2
  %6294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6293, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.i32 %6294, 0
  %6296 = lshr i32 %6295, 16
  %6297 = and i32 %6295, 65535
  %6298 = lshr i32 %6295, 21
  %6299 = lshr i32 %6297, 5
  %6300 = call i32 @dx.op.binary.i32(i32 40, i32 %6299, i32 %6292)  ; UMin(a,b)
  %6301 = icmp ugt i32 %6298, %6300
  br i1 %6301, label %6665, label %6302

; <label>:6302                                    ; preds = %6285
  br label %6303

; <label>:6303                                    ; preds = %6657, %6302
  %6304 = phi float [ %6658, %6657 ], [ 0.000000e+00, %6302 ]
  %6305 = phi float [ %6659, %6657 ], [ 0.000000e+00, %6302 ]
  %6306 = phi float [ %6660, %6657 ], [ 0.000000e+00, %6302 ]
  %6307 = phi float [ %6661, %6657 ], [ 1.000000e+00, %6302 ]
  %6308 = phi i32 [ %6662, %6657 ], [ %6298, %6302 ]
  %6309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.i32 %6309, 2
  %6311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6246, i32 %6310, i32 %6308)  ; UMad(a,b,c)
  %6312 = shl i32 %6311, 2
  %6313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6312, i32 undef)  ; BufferLoad(srv,index,wot)
  %6314 = extractvalue %dx.types.ResRet.i32 %6313, 0
  %6315 = shl i32 %6308, 5
  %6316 = sub nsw i32 %6296, %6315
  %6317 = call i32 @dx.op.binary.i32(i32 37, i32 %6316, i32 0)  ; IMax(a,b)
  %6318 = call i32 @dx.op.binary.i32(i32 38, i32 %6317, i32 31)  ; IMin(a,b)
  %6319 = sub nsw i32 1, %6296
  %6320 = add nsw i32 %6319, %6297
  %6321 = call i32 @dx.op.binary.i32(i32 37, i32 %6320, i32 0)  ; IMax(a,b)
  %6322 = call i32 @dx.op.binary.i32(i32 38, i32 %6321, i32 32)  ; IMin(a,b)
  %6323 = and i32 %6322, 31
  %6324 = shl i32 -1, %6323
  %6325 = xor i32 %6324, -1
  %6326 = and i32 %6318, 31
  %6327 = shl i32 %6325, %6326
  %6328 = icmp eq i32 %6322, 32
  %6329 = select i1 %6328, i32 -1, i32 %6327
  %6330 = and i32 %6329, %6314
  %6331 = icmp eq i32 %6330, 0
  br i1 %6331, label %6657, label %6332

; <label>:6332                                    ; preds = %6303
  br label %6333

; <label>:6333                                    ; preds = %6440, %6332
  %6334 = phi float [ %6441, %6440 ], [ %6304, %6332 ]
  %6335 = phi float [ %6442, %6440 ], [ %6305, %6332 ]
  %6336 = phi float [ %6443, %6440 ], [ %6306, %6332 ]
  %6337 = phi float [ %6444, %6440 ], [ %6307, %6332 ]
  %6338 = phi i32 [ %6343, %6440 ], [ %6330, %6332 ]
  %6339 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6338)  ; FirstbitLo(value)
  %6340 = add i32 %6339, %6315
  %6341 = and i32 %6339, 31
  %6342 = shl i32 1, %6341
  %6343 = xor i32 %6342, %6338
  %6344 = mul i32 %6340, 72
  %6345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6344, i32 undef)  ; BufferLoad(srv,index,wot)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.ResRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.ResRet.f32 %6345, 2
  %6349 = add i32 %6344, 12
  %6350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %6349, i32 undef)  ; BufferLoad(srv,index,wot)
  %6351 = extractvalue %dx.types.ResRet.i32 %6350, 0
  %6352 = add i32 %6344, 16
  %6353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6352, i32 undef)  ; BufferLoad(srv,index,wot)
  %6354 = extractvalue %dx.types.ResRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.ResRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.ResRet.f32 %6353, 2
  %6357 = add i32 %6344, 28
  %6358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6357, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = add i32 %6344, 32
  %6361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6360, i32 undef)  ; BufferLoad(srv,index,wot)
  %6362 = extractvalue %dx.types.ResRet.f32 %6361, 0
  %6363 = extractvalue %dx.types.ResRet.f32 %6361, 1
  %6364 = extractvalue %dx.types.ResRet.f32 %6361, 2
  %6365 = extractvalue %dx.types.ResRet.f32 %6361, 3
  %6366 = add i32 %6344, 48
  %6367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6366, i32 undef)  ; BufferLoad(srv,index,wot)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 1
  %6370 = add i32 %6344, 56
  %6371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6370, i32 undef)  ; BufferLoad(srv,index,wot)
  %6372 = extractvalue %dx.types.ResRet.f32 %6371, 0
  %6373 = extractvalue %dx.types.ResRet.f32 %6371, 1
  %6374 = add i32 %6344, 64
  %6375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6374, i32 undef)  ; BufferLoad(srv,index,wot)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.ResRet.f32 %6375, 1
  %6378 = mul i32 %6340, 60
  %6379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6378, i32 undef)  ; BufferLoad(srv,index,wot)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  %6383 = add i32 %6378, 12
  %6384 = add i32 %6378, 48
  %6385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6384, i32 undef)  ; BufferLoad(srv,index,wot)
  %6386 = extractvalue %dx.types.ResRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.ResRet.f32 %6385, 1
  %6388 = extractvalue %dx.types.ResRet.f32 %6385, 2
  %6389 = and i32 %6351, 32767
  %6390 = bitcast float %6346 to i32
  %6391 = icmp eq i32 %6390, -1
  %6392 = bitcast float %6347 to i32
  %6393 = and i32 %6351, 32768
  %6394 = icmp ne i32 %6393, 0
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6399 = fsub fast float %6380, %6396
  %6400 = fsub fast float %6381, %6397
  %6401 = fsub fast float %6382, %6398
  %6402 = fsub fast float %166, %6399
  %6403 = fsub fast float %167, %6400
  %6404 = fsub fast float %168, %6401
  %6405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6383, i32 undef)  ; BufferLoad(srv,index,wot)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.ResRet.f32 %6405, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6405, 2
  %6409 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6406, float %6407, float %6408)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = add i32 %6378, 24
  %6411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6410, i32 undef)  ; BufferLoad(srv,index,wot)
  %6412 = extractvalue %dx.types.ResRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.ResRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6411, 2
  %6415 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6412, float %6413, float %6414)  ; Dot3(ax,ay,az,bx,by,bz)
  %6416 = add i32 %6378, 36
  %6417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6416, i32 undef)  ; BufferLoad(srv,index,wot)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.ResRet.f32 %6417, 2
  %6421 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6418, float %6419, float %6420)  ; Dot3(ax,ay,az,bx,by,bz)
  %6422 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6423 = call float @dx.op.unary.f32(i32 6, float %6415)  ; FAbs(value)
  %6424 = call float @dx.op.unary.f32(i32 6, float %6421)  ; FAbs(value)
  %6425 = fsub fast float %6386, %6422
  %6426 = fsub fast float %6387, %6423
  %6427 = fsub fast float %6388, %6424
  %6428 = fmul fast float %6425, %6354
  %6429 = fmul fast float %6426, %6355
  %6430 = fmul fast float %6427, %6356
  %6431 = call float @dx.op.binary.f32(i32 36, float %6429, float %6430)  ; FMin(a,b)
  %6432 = call float @dx.op.binary.f32(i32 36, float %6428, float %6431)  ; FMin(a,b)
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  %6434 = call float @dx.op.binary.f32(i32 36, float %6337, float %6433)  ; FMin(a,b)
  %6435 = uitofp i1 %6394 to float
  %6436 = fadd fast float %6252, 1.000000e+00
  %6437 = fsub fast float %6436, %6435
  %6438 = fmul fast float %6434, %6437
  %6439 = fcmp fast ogt float %6438, 0.000000e+00
  br i1 %6439, label %6446, label %6440

; <label>:6440                                    ; preds = %6588, %6333
  %6441 = phi float [ %6652, %6588 ], [ %6334, %6333 ]
  %6442 = phi float [ %6653, %6588 ], [ %6335, %6333 ]
  %6443 = phi float [ %6654, %6588 ], [ %6336, %6333 ]
  %6444 = phi float [ %6655, %6588 ], [ %6337, %6333 ]
  %6445 = icmp eq i32 %6338, %6342
  br i1 %6445, label %6656, label %6333

; <label>:6446                                    ; preds = %6333
  br i1 %6391, label %6504, label %6447

; <label>:6447                                    ; preds = %6446
  %6448 = fsub fast float -0.000000e+00, %6406
  %6449 = fsub fast float -0.000000e+00, %6407
  %6450 = fsub fast float -0.000000e+00, %6408
  %6451 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6287, float %6288, float %6448, float %6449, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = fsub fast float -0.000000e+00, %6451
  %6453 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6448, float %6449, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6454 = fadd fast float %6453, %6369
  %6455 = fadd fast float %6368, %6453
  %6456 = fsub fast float -0.000000e+00, %6455
  %6457 = fcmp ogt float %6451, -0.000000e+00
  %6458 = select i1 %6457, float %6456, float %6454
  %6459 = call float @dx.op.unary.f32(i32 6, float %6452)  ; FAbs(value)
  %6460 = fdiv fast float 1.000000e+00, %6459
  %6461 = fmul fast float %6458, %6460
  %6462 = call float @dx.op.binary.f32(i32 35, float %6461, float 0.000000e+00)  ; FMax(a,b)
  %6463 = fsub fast float -0.000000e+00, %6412
  %6464 = fsub fast float -0.000000e+00, %6413
  %6465 = fsub fast float -0.000000e+00, %6414
  %6466 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6287, float %6288, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = fsub fast float -0.000000e+00, %6466
  %6468 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = fadd fast float %6468, %6373
  %6470 = fadd fast float %6372, %6468
  %6471 = fsub fast float -0.000000e+00, %6470
  %6472 = fcmp ogt float %6466, -0.000000e+00
  %6473 = select i1 %6472, float %6471, float %6469
  %6474 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6475 = fdiv fast float 1.000000e+00, %6474
  %6476 = fmul fast float %6473, %6475
  %6477 = call float @dx.op.binary.f32(i32 35, float %6476, float 0.000000e+00)  ; FMax(a,b)
  %6478 = fsub fast float -0.000000e+00, %6418
  %6479 = fsub fast float -0.000000e+00, %6419
  %6480 = fsub fast float -0.000000e+00, %6420
  %6481 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6287, float %6288, float %6478, float %6479, float %6480)  ; Dot3(ax,ay,az,bx,by,bz)
  %6482 = fsub fast float -0.000000e+00, %6481
  %6483 = call float @dx.op.dot3.f32(i32 55, float %6402, float %6403, float %6404, float %6478, float %6479, float %6480)  ; Dot3(ax,ay,az,bx,by,bz)
  %6484 = fadd fast float %6483, %6377
  %6485 = fadd fast float %6376, %6483
  %6486 = fsub fast float -0.000000e+00, %6485
  %6487 = fcmp ogt float %6481, -0.000000e+00
  %6488 = select i1 %6487, float %6486, float %6484
  %6489 = call float @dx.op.unary.f32(i32 6, float %6482)  ; FAbs(value)
  %6490 = fdiv fast float 1.000000e+00, %6489
  %6491 = fmul fast float %6488, %6490
  %6492 = call float @dx.op.binary.f32(i32 35, float %6491, float 0.000000e+00)  ; FMax(a,b)
  %6493 = call float @dx.op.binary.f32(i32 36, float %6477, float %6492)  ; FMin(a,b)
  %6494 = call float @dx.op.binary.f32(i32 36, float %6462, float %6493)  ; FMin(a,b)
  %6495 = fmul fast float %6494, %6286
  %6496 = fmul fast float %6494, %6287
  %6497 = fmul fast float %6494, %6288
  %6498 = fadd fast float %6495, %166
  %6499 = fadd fast float %6496, %167
  %6500 = fadd fast float %6497, %168
  %6501 = fsub fast float %6498, %6346
  %6502 = fsub fast float %6499, %6347
  %6503 = fsub fast float %6500, %6348
  br label %6511

; <label>:6504                                    ; preds = %6446
  %6505 = fmul fast float %6286, 8.096000e+03
  %6506 = fmul fast float %6287, 8.096000e+03
  %6507 = fmul fast float %6288, 8.096000e+03
  %6508 = fadd fast float %6505, %166
  %6509 = fadd fast float %6506, %167
  %6510 = fadd fast float %6507, %168
  br label %6511

; <label>:6511                                    ; preds = %6504, %6447
  %6512 = phi float [ %6286, %6504 ], [ %6501, %6447 ]
  %6513 = phi float [ %6287, %6504 ], [ %6502, %6447 ]
  %6514 = phi float [ %6288, %6504 ], [ %6503, %6447 ]
  %6515 = phi float [ %6508, %6504 ], [ %6498, %6447 ]
  %6516 = phi float [ %6509, %6504 ], [ %6499, %6447 ]
  %6517 = phi float [ %6510, %6504 ], [ %6500, %6447 ]
  %6518 = fcmp fast olt float %6365, 1.000000e+00
  br i1 %6518, label %6519, label %6550, !dx.controlflow.hints !102

; <label>:6519                                    ; preds = %6511
  %6520 = fmul fast float %6514, %6363
  %6521 = fmul fast float %6513, %6364
  %6522 = fsub fast float %6520, %6521
  %6523 = fmul fast float %6512, %6364
  %6524 = fmul fast float %6514, %6362
  %6525 = fsub fast float %6523, %6524
  %6526 = fmul fast float %6513, %6362
  %6527 = fmul fast float %6512, %6363
  %6528 = fsub fast float %6526, %6527
  %6529 = fmul fast float %6522, 2.000000e+00
  %6530 = fmul fast float %6525, 2.000000e+00
  %6531 = fmul fast float %6528, 2.000000e+00
  %6532 = fmul fast float %6529, %6365
  %6533 = fmul fast float %6530, %6365
  %6534 = fmul fast float %6531, %6365
  %6535 = fmul fast float %6531, %6363
  %6536 = fmul fast float %6530, %6364
  %6537 = fmul fast float %6529, %6364
  %6538 = fmul fast float %6531, %6362
  %6539 = fmul fast float %6530, %6362
  %6540 = fmul fast float %6529, %6363
  %6541 = fadd fast float %6535, %6512
  %6542 = fadd fast float %6541, %6532
  %6543 = fsub fast float %6542, %6536
  %6544 = fsub fast float %6513, %6538
  %6545 = fadd fast float %6544, %6533
  %6546 = fadd fast float %6545, %6537
  %6547 = fadd fast float %6534, %6514
  %6548 = fsub fast float %6547, %6540
  %6549 = fadd fast float %6548, %6539
  br label %6550

; <label>:6550                                    ; preds = %6519, %6511
  %6551 = phi float [ %6543, %6519 ], [ %6512, %6511 ]
  %6552 = phi float [ %6546, %6519 ], [ %6513, %6511 ]
  %6553 = phi float [ %6549, %6519 ], [ %6514, %6511 ]
  br i1 %6391, label %6585, label %6554

; <label>:6554                                    ; preds = %6550
  %6555 = fmul fast float %5844, 0x400187C840000000
  %6556 = fadd fast float %6555, 0xC00EFC2120000000
  %6557 = fmul fast float %6556, %5844
  %6558 = fadd fast float %6557, 0x3FE5D16340000000
  %6559 = fmul fast float %6558, %5844
  %6560 = fadd fast float %6559, 1.000000e+00
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = fsub fast float %6515, %166
  %6563 = fsub fast float %6516, %167
  %6564 = fsub fast float %6517, %168
  %6565 = fsub fast float %6515, %6346
  %6566 = fsub fast float %6516, %6347
  %6567 = fsub fast float %6517, %6348
  %6568 = call float @dx.op.dot3.f32(i32 55, float %6562, float %6563, float %6564, float %6562, float %6563, float %6564)  ; Dot3(ax,ay,az,bx,by,bz)
  %6569 = call float @dx.op.dot3.f32(i32 55, float %6565, float %6566, float %6567, float %6565, float %6566, float %6567)  ; Dot3(ax,ay,az,bx,by,bz)
  %6570 = fadd fast float %6569, 0x3EE4F8B580000000
  %6571 = fdiv fast float %6568, %6570
  %6572 = bitcast float %6571 to i32
  %6573 = ashr i32 %6572, 1
  %6574 = add nsw i32 %6573, 532487669
  %6575 = bitcast i32 %6574 to float
  %6576 = fmul fast float %6575, %6561
  %6577 = call float @dx.op.unary.f32(i32 7, float %6576)  ; Saturate(value)
  %6578 = fmul fast float %6577, 0x4009981AE0000000
  %6579 = fsub fast float 0x40111BBD80000000, %6578
  %6580 = fmul fast float %6579, %6577
  %6581 = fadd fast float %6580, 0xC0009F6020000000
  %6582 = fmul fast float %6581, %6577
  %6583 = fadd fast float %6582, 1.000000e+00
  %6584 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  br label %6588

; <label>:6585                                    ; preds = %6550
  %6586 = icmp ne i32 %6392, -1
  %6587 = zext i1 %6586 to i32
  br label %6588

; <label>:6588                                    ; preds = %6585, %6554
  %6589 = phi float [ %5844, %6585 ], [ %6584, %6554 ]
  %6590 = phi i32 [ %6587, %6585 ], [ 0, %6554 ]
  %6591 = fmul float %6589, 5.000000e+00
  %6592 = fsub float 5.000000e+00, %6591
  %6593 = icmp ne i32 %6590, 0
  %6594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.f32 %6594, 3
  %6596 = fadd fast float %6595, %6592
  %6597 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6596)  ; FMax(a,b)
  %6598 = call float @dx.op.unary.f32(i32 6, float %6551)  ; FAbs(value)
  %6599 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6600 = fadd fast float %6599, %6598
  %6601 = call float @dx.op.unary.f32(i32 6, float %6553)  ; FAbs(value)
  %6602 = fadd fast float %6600, %6601
  %6603 = fcmp fast oeq float %6602, 0.000000e+00
  %6604 = fdiv fast float 1.000000e+00, %6602
  %6605 = select i1 %6603, float 1.000000e+00, float %6604
  %6606 = fmul fast float %6605, %6551
  %6607 = fmul fast float %6605, %6552
  %6608 = call float @dx.op.unary.f32(i32 6, float %6607)  ; FAbs(value)
  %6609 = call float @dx.op.unary.f32(i32 6, float %6606)  ; FAbs(value)
  %6610 = fsub fast float 1.000000e+00, %6608
  %6611 = fsub fast float 1.000000e+00, %6609
  %6612 = fcmp fast oge float %6606, 0.000000e+00
  %6613 = fcmp fast oge float %6607, 0.000000e+00
  %6614 = select i1 %6612, float 1.000000e+00, float -1.000000e+00
  %6615 = select i1 %6613, float 1.000000e+00, float -1.000000e+00
  %6616 = fcmp fast ole float %6553, 0.000000e+00
  %6617 = fmul fast float %6614, %6610
  %6618 = fmul fast float %6615, %6611
  %6619 = select i1 %6616, float %6617, float %6606
  %6620 = select i1 %6616, float %6618, float %6607
  %6621 = fmul fast float %6619, 5.000000e-01
  %6622 = fmul fast float %6620, 5.000000e-01
  %6623 = fadd fast float %6621, 5.000000e-01
  %6624 = fadd fast float %6622, 5.000000e-01
  %6625 = uitofp i32 %6389 to float
  %6626 = call float @dx.op.binary.f32(i32 36, float %6597, float 3.000000e+00)  ; FMin(a,b)
  %6627 = fadd fast float %6626, 2.000000e+00
  %6628 = call float @dx.op.unary.f32(i32 21, float %6627)  ; Exp(value)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6594, 1
  %6630 = fmul fast float %6629, %6628
  %6631 = fmul fast float %6630, 2.000000e+00
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6623, %6632
  %6634 = fmul fast float %6624, %6632
  %6635 = fadd fast float %6633, %6630
  %6636 = fadd fast float %6634, %6630
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %6635, float %6636, float %6625, float undef, i32 0, i32 0, i32 undef, float %6597)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 3
  %6643 = fmul fast float %6642, %6359
  %6644 = call float @dx.op.binary.f32(i32 36, float %5910, float %6643)  ; FMin(a,b)
  %6645 = select i1 %6593, float %6644, float %6643
  %6646 = fmul fast float %6638, %6438
  %6647 = fmul fast float %6646, %6645
  %6648 = fmul fast float %6639, %6438
  %6649 = fmul fast float %6648, %6645
  %6650 = fmul fast float %6640, %6438
  %6651 = fmul fast float %6650, %6645
  %6652 = fadd fast float %6647, %6334
  %6653 = fadd fast float %6649, %6335
  %6654 = fadd fast float %6651, %6336
  %6655 = fsub fast float %6337, %6438
  br label %6440

; <label>:6656                                    ; preds = %6440
  br label %6657

; <label>:6657                                    ; preds = %6656, %6303
  %6658 = phi float [ %6304, %6303 ], [ %6441, %6656 ]
  %6659 = phi float [ %6305, %6303 ], [ %6442, %6656 ]
  %6660 = phi float [ %6306, %6303 ], [ %6443, %6656 ]
  %6661 = phi float [ %6307, %6303 ], [ %6444, %6656 ]
  %6662 = add i32 %6308, 1
  %6663 = icmp ugt i32 %6662, %6300
  br i1 %6663, label %6664, label %6303, !llvm.loop !103

; <label>:6664                                    ; preds = %6657
  br label %6665

; <label>:6665                                    ; preds = %6664, %6285
  %6666 = phi float [ 0.000000e+00, %6285 ], [ %6658, %6664 ]
  %6667 = phi float [ 0.000000e+00, %6285 ], [ %6659, %6664 ]
  %6668 = phi float [ 0.000000e+00, %6285 ], [ %6660, %6664 ]
  %6669 = call float @dx.op.dot3.f32(i32 55, float %6666, float %6667, float %6668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6670 = select i1 %260, float 0.000000e+00, float %6666
  %6671 = select i1 %260, float %6669, float %6667
  %6672 = select i1 %260, float 0.000000e+00, float %6668
  %6673 = fcmp fast olt float %6211, 0.000000e+00
  %6674 = call float @dx.op.unary.f32(i32 6, float %6211)  ; FAbs(value)
  %6675 = fmul fast float %6674, %6140
  %6676 = fmul fast float %6674, %6141
  %6677 = fmul fast float %6674, %6142
  %6678 = select i1 %6673, float %6140, float %6675
  %6679 = select i1 %6673, float %6141, float %6676
  %6680 = select i1 %6673, float %6142, float %6677
  %6681 = fsub fast float 1.000000e+00, %6674
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fmul fast float %6682, %6670
  %6684 = fmul fast float %6682, %6671
  %6685 = fmul fast float %6682, %6672
  %6686 = fadd fast float %6678, %6683
  %6687 = fadd fast float %6679, %6684
  %6688 = fadd fast float %6680, %6685
  br label %6689

; <label>:6689                                    ; preds = %6665, %6194
  %6690 = phi float [ %6140, %6194 ], [ %6686, %6665 ]
  %6691 = phi float [ %6141, %6194 ], [ %6687, %6665 ]
  %6692 = phi float [ %6142, %6194 ], [ %6688, %6665 ]
  %6693 = fmul fast float %6200, %6136
  %6694 = fmul fast float %6200, %6137
  %6695 = fmul fast float %6200, %6138
  %6696 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6697 = fcmp fast ogt float %6696, 0x3E7FF19E20000000
  %6698 = fdiv fast float 1.000000e+00, %6696
  %6699 = select i1 %6697, float %6698, float 0.000000e+00
  %6700 = fmul fast float %6699, %5835
  %6701 = fmul fast float %6699, %5836
  %6702 = fmul fast float %6699, %5837
  %6703 = fadd fast float %6700, -1.000000e+00
  %6704 = fadd fast float %6701, -1.000000e+00
  %6705 = fadd fast float %6702, -1.000000e+00
  %6706 = fmul fast float %6703, 5.000000e-01
  %6707 = fmul fast float %6704, 5.000000e-01
  %6708 = fmul fast float %6705, 5.000000e-01
  %6709 = fadd fast float %6706, 1.000000e+00
  %6710 = fadd fast float %6707, 1.000000e+00
  %6711 = fadd fast float %6708, 1.000000e+00
  %6712 = call float @dx.op.binary.f32(i32 35, float %5883, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6713 = fdiv fast float %4553, %6712
  %6714 = fcmp fast olt float %5271, 1.270000e+02
  %6715 = fcmp fast olt float %5272, 1.270000e+02
  %6716 = fcmp fast olt float %5273, 1.270000e+02
  %6717 = fmul fast float %5271, 0xBFF7154760000000
  %6718 = fmul fast float %6717, %6713
  %6719 = fmul fast float %5272, 0xBFF7154760000000
  %6720 = fmul fast float %6719, %6713
  %6721 = fmul fast float %5273, 0xBFF7154760000000
  %6722 = fmul fast float %6721, %6713
  %6723 = call float @dx.op.unary.f32(i32 21, float %6718)  ; Exp(value)
  %6724 = call float @dx.op.unary.f32(i32 21, float %6720)  ; Exp(value)
  %6725 = call float @dx.op.unary.f32(i32 21, float %6722)  ; Exp(value)
  %6726 = call float @dx.op.unary.f32(i32 7, float %6723)  ; Saturate(value)
  %6727 = call float @dx.op.unary.f32(i32 7, float %6724)  ; Saturate(value)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6729 = select i1 %6714, float %6726, float 0.000000e+00
  %6730 = select i1 %6715, float %6727, float 0.000000e+00
  %6731 = select i1 %6716, float %6728, float 0.000000e+00
  %6732 = fmul fast float %6729, %6200
  %6733 = fmul fast float %6730, %6200
  %6734 = fmul fast float %6731, %6200
  %6735 = fadd fast float %6732, -1.000000e+00
  %6736 = fadd fast float %6733, -1.000000e+00
  %6737 = fadd fast float %6734, -1.000000e+00
  %6738 = fmul fast float %6735, %5226
  %6739 = fmul fast float %6736, %5226
  %6740 = fmul fast float %6737, %5226
  %6741 = fadd fast float %6738, 1.000000e+00
  %6742 = fadd fast float %6739, 1.000000e+00
  %6743 = fadd fast float %6740, 1.000000e+00
  %6744 = fmul fast float %5839, 0x401CF23780000000
  %6745 = fadd fast float %6744, 0x3FF32641C0000000
  %6746 = fdiv fast float 1.000000e+00, %6745
  %6747 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6748 = fmul fast float %6746, %6746
  %6749 = fmul fast float %6747, %6747
  %6750 = fsub fast float 1.000000e+00, %6749
  %6751 = fmul fast float %6748, %6750
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fcmp fast oge float %6752, 0.000000e+00
  %6754 = fmul fast float %6746, %5669
  %6755 = fmul fast float %6746, %5670
  %6756 = fmul fast float %6746, %5671
  %6757 = call float @dx.op.unary.f32(i32 24, float %6752)  ; Sqrt(value)
  %6758 = fmul fast float %6747, %6746
  %6759 = fadd fast float %6758, %6757
  %6760 = fmul fast float %6759, %5841
  %6761 = fmul fast float %6759, %5842
  %6762 = fmul fast float %6759, %5843
  %6763 = fsub fast float %6754, %6760
  %6764 = fsub fast float %6755, %6761
  %6765 = fsub fast float %6756, %6762
  %6766 = select i1 %6753, float %6763, float 0.000000e+00
  %6767 = select i1 %6753, float %6764, float 0.000000e+00
  %6768 = select i1 %6753, float %6765, float 0.000000e+00
  %6769 = fmul fast float %6766, %4553
  %6770 = fmul fast float %6767, %4553
  %6771 = fmul fast float %6768, %4553
  %6772 = fadd fast float %6769, %5878
  %6773 = fadd fast float %6770, %5879
  %6774 = fadd fast float %6771, %5880
  %6775 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6776 = fmul fast float %5898, %5226
  %6777 = fsub fast float 1.000000e+00, %6776
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fsub fast float 1.000000e+00, %6778
  %6780 = fmul fast float %5839, 0x4012D0A400000000
  %6781 = fadd fast float %6780, 0x3FDB6377A0000000
  %6782 = fmul fast float %6779, %6781
  %6783 = fadd fast float %6782, %6775
  %6784 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6785 = fmul fast float %6690, %6195
  %6786 = fmul fast float %6691, %6196
  %6787 = fmul fast float %6692, %6197
  %6788 = fsub fast float 1.000000e+00, %5883
  %6789 = bitcast float %6788 to i32
  %6790 = sitofp i32 %6789 to float
  %6791 = fmul fast float %6790, 5.000000e+00
  %6792 = fadd fast float %6791, 0xC1EFBF8940000000
  %6793 = fptosi float %6792 to i32
  %6794 = bitcast i32 %6793 to float
  %6795 = fmul fast float %6794, %5201
  %6796 = fmul fast float %6136, %6795
  %6797 = fmul fast float %6796, %6200
  %6798 = fmul fast float %6797, %6709
  %6799 = fmul fast float %6137, %6795
  %6800 = fmul fast float %6799, %6200
  %6801 = fmul fast float %6800, %6710
  %6802 = fmul fast float %6138, %6795
  %6803 = fmul fast float %6802, %6200
  %6804 = fmul fast float %6803, %6711
  %6805 = fmul fast float %6693, %5226
  %6806 = fmul fast float %6694, %5226
  %6807 = fmul fast float %6695, %5226
  %6808 = fsub fast float 1.000000e+00, %6784
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.CBufRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6819, 2
  %6823 = extractvalue %dx.types.CBufRet.f32 %6819, 3
  %6824 = fmul fast float %6772, %6810
  %6825 = call float @dx.op.tertiary.f32(i32 46, float %6773, float %6811, float %6824)  ; FMad(a,b,c)
  %6826 = call float @dx.op.tertiary.f32(i32 46, float %6774, float %6812, float %6825)  ; FMad(a,b,c)
  %6827 = fadd fast float %6826, %6813
  %6828 = fmul fast float %6772, %6815
  %6829 = call float @dx.op.tertiary.f32(i32 46, float %6773, float %6816, float %6828)  ; FMad(a,b,c)
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6774, float %6817, float %6829)  ; FMad(a,b,c)
  %6831 = fadd fast float %6830, %6818
  %6832 = fmul fast float %6772, %6820
  %6833 = call float @dx.op.tertiary.f32(i32 46, float %6773, float %6821, float %6832)  ; FMad(a,b,c)
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6774, float %6822, float %6833)  ; FMad(a,b,c)
  %6835 = fadd fast float %6834, %6823
  %6836 = fdiv fast float %6827, %6835
  %6837 = fdiv fast float %6831, %6835
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = fmul fast float %6839, %6836
  %6842 = fmul fast float %6840, %6837
  %6843 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6844 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6845 = fadd fast float %6841, %6843
  %6846 = fadd fast float %6842, %6844
  %6847 = call float @dx.op.unary.f32(i32 7, float %6845)  ; Saturate(value)
  %6848 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = fmul fast float %6850, %6847
  %6853 = fmul fast float %6851, %6848
  %6854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6855 = extractvalue %dx.types.CBufRet.f32 %6854, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6854, 2
  %6857 = fsub fast float %6855, %6856
  %6858 = fmul fast float %6857, %6808
  %6859 = fadd fast float %6858, %6856
  %6860 = fmul fast float %273, 2.000000e+00
  %6861 = fmul fast float %274, 2.000000e+00
  %6862 = fadd fast float %6860, -1.000000e+00
  %6863 = fadd fast float %6861, -1.000000e+00
  %6864 = fmul fast float %6859, %6862
  %6865 = fmul fast float %6859, %6863
  %6866 = fadd fast float %6864, %6852
  %6867 = fadd fast float %6865, %6853
  %6868 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6869 = extractvalue %dx.types.CBufRet.f32 %6849, 3
  %6870 = fmul fast float %6866, %6868
  %6871 = fmul fast float %6867, %6869
  %6872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %57, float %6870, float %6871, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6873 = extractvalue %dx.types.ResRet.f32 %6872, 0
  %6874 = fcmp fast ogt float %6873, -1.000000e+00
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6877 = select i1 %6874, float %6876, float 1.000000e+00
  %6878 = fadd fast float %6873, 1.000000e+00
  %6879 = fmul fast float %6877, %6878
  %6880 = call float @dx.op.unary.f32(i32 6, float %6879)  ; FAbs(value)
  %6881 = fsub fast float %6880, %6835
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6884 = fmul fast float %6883, %6880
  %6885 = fdiv fast float 1.600000e+02, %6884
  %6886 = fmul fast float %6784, %6784
  %6887 = fmul fast float %6886, 0xBFB5B17960000000
  %6888 = fmul fast float %6887, %6881
  %6889 = fmul fast float %6888, %6885
  %6890 = call float @dx.op.unary.f32(i32 21, float %6889)  ; Exp(value)
  %6891 = fmul fast float %6890, 0x3FF04B2960000000
  %6892 = fsub fast float 0x3FF04B2960000000, %6891
  %6893 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6894 = fmul fast float %6893, 4.000000e+00
  %6895 = fadd fast float %273, -5.000000e-01
  %6896 = fadd fast float %274, -5.000000e-01
  %6897 = fmul fast float %6893, 0x3FBEB851E0000000
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fmul fast float %6898, %6895
  %6900 = fmul fast float %6898, %6896
  %6901 = fadd fast float %6899, %6845
  %6902 = fadd fast float %6900, %6846
  %6903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.i32 %6903, 0
  %6905 = icmp eq i32 %6904, 0
  br i1 %6905, label %6911, label %6906, !dx.controlflow.hints !105

; <label>:6906                                    ; preds = %6689
  %6907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %6901, float %6902, float undef, float undef, i32 0, i32 0, i32 undef, float %6894)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = extractvalue %dx.types.ResRet.f32 %6907, 1
  %6910 = extractvalue %dx.types.ResRet.f32 %6907, 2
  br label %6916

; <label>:6911                                    ; preds = %6689
  %6912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %6901, float %6902, float undef, float undef, i32 0, i32 0, i32 undef, float %6894)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  br label %6916

; <label>:6916                                    ; preds = %6911, %6906
  %6917 = phi float [ %6908, %6906 ], [ %6913, %6911 ]
  %6918 = phi float [ %6909, %6906 ], [ %6914, %6911 ]
  %6919 = phi float [ %6910, %6906 ], [ %6915, %6911 ]
  %6920 = select i1 %260, float 0.000000e+00, float %6918
  %6921 = select i1 %260, float 0.000000e+00, float %6919
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6924 = fmul fast float %6917, %6741
  %6925 = fmul fast float %6924, %6923
  %6926 = fmul fast float %6920, %6742
  %6927 = fmul fast float %6926, %6923
  %6928 = fmul fast float %6921, %6743
  %6929 = fmul fast float %6928, %6923
  %6930 = fadd fast float %6785, %5184
  %6931 = fadd fast float %6930, %6798
  %6932 = fadd fast float %6931, %6925
  %6933 = fmul fast float %6932, %5226
  %6934 = fadd fast float %6786, %5185
  %6935 = fadd fast float %6934, %6801
  %6936 = fadd fast float %6935, %6927
  %6937 = fmul fast float %6936, %5226
  %6938 = fadd fast float %6787, %5186
  %6939 = fadd fast float %6938, %6804
  %6940 = fadd fast float %6939, %6929
  %6941 = fmul fast float %6940, %5226
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 3
  %6944 = fcmp fast oeq float %6943, 0.000000e+00
  br i1 %6944, label %8622, label %6945

; <label>:6945                                    ; preds = %6916
  %6946 = extractvalue %dx.types.CBufRet.f32 %6942, 0
  %6947 = extractvalue %dx.types.CBufRet.f32 %6942, 1
  %6948 = extractvalue %dx.types.CBufRet.f32 %6942, 2
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6956 = call float @dx.op.dot3.f32(i32 55, float %6950, float %6951, float %6952, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6957 = select i1 %260, float %6954, float %6950
  %6958 = select i1 %260, float %6956, float %6951
  %6959 = select i1 %260, float %6955, float %6952
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6962 = fmul fast float %6961, %118
  %6963 = fmul fast float %6961, %119
  %6964 = fmul fast float %6961, %120
  %6965 = fadd fast float %6962, %166
  %6966 = fadd fast float %6963, %167
  %6967 = fadd fast float %6964, %168
  %6968 = fcmp fast olt float %6943, 0.000000e+00
  br i1 %6968, label %8064, label %6969

; <label>:6969                                    ; preds = %6945
  %6970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6970, 0
  %6972 = extractvalue %dx.types.CBufRet.f32 %6970, 1
  %6973 = extractvalue %dx.types.CBufRet.f32 %6970, 2
  %6974 = extractvalue %dx.types.CBufRet.f32 %6970, 3
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.f32 %6980, 0
  %6982 = extractvalue %dx.types.CBufRet.f32 %6980, 1
  %6983 = extractvalue %dx.types.CBufRet.f32 %6980, 2
  %6984 = extractvalue %dx.types.CBufRet.f32 %6980, 3
  %6985 = fmul fast float %6971, %6965
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %6972, float %6985)  ; FMad(a,b,c)
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6973, float %6986)  ; FMad(a,b,c)
  %6988 = fadd fast float %6987, %6974
  %6989 = fmul fast float %6976, %6965
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %6977, float %6989)  ; FMad(a,b,c)
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6978, float %6990)  ; FMad(a,b,c)
  %6992 = fadd fast float %6991, %6979
  %6993 = fmul fast float %6981, %6965
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %6982, float %6993)  ; FMad(a,b,c)
  %6995 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %6983, float %6994)  ; FMad(a,b,c)
  %6996 = fadd fast float %6995, %6984
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 0
  %6999 = extractvalue %dx.types.CBufRet.f32 %6997, 1
  %7000 = extractvalue %dx.types.CBufRet.f32 %6997, 3
  %7001 = fmul fast float %7000, %6988
  %7002 = fmul fast float %7000, %6992
  %7003 = fadd fast float %7001, %6998
  %7004 = fadd fast float %7002, %6999
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 0
  %7007 = extractvalue %dx.types.CBufRet.f32 %7005, 1
  %7008 = extractvalue %dx.types.CBufRet.f32 %7005, 3
  %7009 = fmul fast float %7008, %6988
  %7010 = fmul fast float %7008, %6992
  %7011 = fadd fast float %7009, %7006
  %7012 = fadd fast float %7010, %7007
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 1
  %7015 = fsub fast float %7014, %6996
  %7016 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7017 = fmul fast float %7015, %7016
  %7018 = fsub fast float 1.000000e+00, %7017
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7005, 2
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7023 = fadd fast float %7022, %7020
  %7024 = fcmp fast ogt float %7023, 0.000000e+00
  br i1 %7024, label %7025, label %7049

; <label>:7025                                    ; preds = %6969
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7029 = fsub fast float %7011, %7027
  %7030 = fsub fast float %7012, %7028
  %7031 = fcmp fast olt float %7029, 0.000000e+00
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7038 = select i1 %7031, float %7034, float %7036
  %7039 = select i1 %7032, float %7035, float %7037
  %7040 = fmul fast float %7038, %7029
  %7041 = fmul fast float %7039, %7030
  %7042 = call float @dx.op.unary.f32(i32 6, float %7040)  ; FAbs(value)
  %7043 = call float @dx.op.unary.f32(i32 6, float %7041)  ; FAbs(value)
  %7044 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %7045 = call float @dx.op.binary.f32(i32 35, float %7042, float %7043)  ; FMax(a,b)
  %7046 = fsub fast float %7044, %7045
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = fmul fast float %7047, %7019
  br label %7049

; <label>:7049                                    ; preds = %7025, %6969
  %7050 = phi float [ %7048, %7025 ], [ 0.000000e+00, %6969 ]
  %7051 = extractvalue %dx.types.CBufRet.f32 %6997, 2
  %7052 = extractvalue %dx.types.CBufRet.f32 %7021, 1
  %7053 = fadd fast float %7052, %7051
  %7054 = fcmp fast ogt float %7053, 0.000000e+00
  %7055 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  br i1 %7054, label %7056, label %7079

; <label>:7056                                    ; preds = %7049
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = fsub fast float %7003, %7058
  %7061 = fsub fast float %7004, %7059
  %7062 = fcmp fast olt float %7060, 0.000000e+00
  %7063 = fcmp fast olt float %7061, 0.000000e+00
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7068 = extractvalue %dx.types.CBufRet.f32 %7064, 3
  %7069 = select i1 %7062, float %7065, float %7067
  %7070 = select i1 %7063, float %7066, float %7068
  %7071 = fmul fast float %7069, %7060
  %7072 = fmul fast float %7070, %7061
  %7073 = call float @dx.op.unary.f32(i32 6, float %7071)  ; FAbs(value)
  %7074 = call float @dx.op.unary.f32(i32 6, float %7072)  ; FAbs(value)
  %7075 = call float @dx.op.binary.f32(i32 35, float %7073, float %7074)  ; FMax(a,b)
  %7076 = fsub fast float %7055, %7075
  %7077 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7078 = fmul fast float %7077, %7019
  br label %7079

; <label>:7079                                    ; preds = %7056, %7049
  %7080 = phi float [ %7078, %7056 ], [ 0.000000e+00, %7049 ]
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7083 = call float @dx.op.unary.f32(i32 7, float %7082)  ; Saturate(value)
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7087 = fsub fast float %6988, %7085
  %7088 = fsub fast float %6992, %7086
  %7089 = fcmp fast olt float %7087, 0.000000e+00
  %7090 = fcmp fast olt float %7088, 0.000000e+00
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7093 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7095 = extractvalue %dx.types.CBufRet.f32 %7091, 3
  %7096 = select i1 %7089, float %7092, float %7094
  %7097 = select i1 %7090, float %7093, float %7095
  %7098 = fmul fast float %7096, %7087
  %7099 = fmul fast float %7097, %7088
  %7100 = call float @dx.op.unary.f32(i32 6, float %7098)  ; FAbs(value)
  %7101 = call float @dx.op.unary.f32(i32 6, float %7099)  ; FAbs(value)
  %7102 = call float @dx.op.binary.f32(i32 35, float %7100, float %7101)  ; FMax(a,b)
  %7103 = fsub fast float %7055, %7102
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = call float @dx.op.binary.f32(i32 36, float %7104, float %7083)  ; FMin(a,b)
  %7106 = fmul fast float %7105, %7019
  %7107 = fsub fast float %7080, %7106
  %7108 = fsub fast float %7050, %7080
  %7109 = fsub fast float %7108, %7106
  %7110 = call float @dx.op.binary.f32(i32 35, float %7080, float %7050)  ; FMax(a,b)
  %7111 = call float @dx.op.binary.f32(i32 35, float %7106, float %7110)  ; FMax(a,b)
  %7112 = fcmp fast olt float %7111, 1.000000e+00
  br i1 %7112, label %7113, label %7511, !dx.controlflow.hints !106

; <label>:7113                                    ; preds = %7079
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 0
  %7116 = fcmp fast une float %7115, 0.000000e+00
  br i1 %7116, label %7117, label %7511, !dx.controlflow.hints !107

; <label>:7117                                    ; preds = %7113
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.CBufRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.CBufRet.f32 %7118, 2
  %7122 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7126 = extractvalue %dx.types.CBufRet.f32 %7123, 2
  %7127 = extractvalue %dx.types.CBufRet.f32 %7123, 3
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7132 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7133 = fmul fast float %7119, %6965
  %7134 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %7120, float %7133)  ; FMad(a,b,c)
  %7135 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7121, float %7134)  ; FMad(a,b,c)
  %7136 = fadd fast float %7135, %7122
  %7137 = fmul fast float %7124, %6965
  %7138 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %7125, float %7137)  ; FMad(a,b,c)
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7126, float %7138)  ; FMad(a,b,c)
  %7140 = fadd fast float %7139, %7127
  %7141 = fmul fast float %7129, %6965
  %7142 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %7130, float %7141)  ; FMad(a,b,c)
  %7143 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %7131, float %7142)  ; FMad(a,b,c)
  %7144 = fadd fast float %7143, %7132
  %7145 = fcmp fast oge float %7136, 1.000000e+00
  %7146 = fcmp fast oge float %7140, 1.000000e+00
  %7147 = or i1 %7145, %7146
  %7148 = fcmp fast olt float %7136, 0.000000e+00
  %7149 = fcmp fast olt float %7140, 0.000000e+00
  %7150 = or i1 %7148, %7149
  %7151 = or i1 %7147, %7150
  br i1 %7151, label %7511, label %7152, !dx.controlflow.hints !108

; <label>:7152                                    ; preds = %7117
  %7153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7154 = extractvalue %dx.types.CBufRet.f32 %7153, 0
  %7155 = extractvalue %dx.types.CBufRet.f32 %7153, 1
  %7156 = extractvalue %dx.types.CBufRet.f32 %7153, 2
  %7157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.i32 %7157, 2
  %7159 = uitofp i32 %7158 to float
  %7160 = extractvalue %dx.types.CBufRet.i32 %7157, 3
  %7161 = uitofp i32 %7160 to float
  %7162 = extractvalue %dx.types.CBufRet.f32 %7153, 3
  %7163 = fmul fast float %7162, 2.000000e+00
  %7164 = fsub fast float %7136, %7154
  %7165 = fsub fast float %7140, %7155
  %7166 = fmul fast float %7163, %7164
  %7167 = fmul fast float %7163, %7165
  %7168 = fdiv fast float 1.000000e+00, %6948
  %7169 = fmul fast float %7167, %7168
  %7170 = call float @dx.op.unary.f32(i32 6, float %7169)  ; FAbs(value)
  %7171 = fmul fast float %7156, %6967
  %7172 = fmul fast float %7171, %7163
  %7173 = call float @dx.op.unary.f32(i32 6, float %7172)  ; FAbs(value)
  %7174 = call float @dx.op.unary.f32(i32 6, float %7166)  ; FAbs(value)
  %7175 = call float @dx.op.binary.f32(i32 35, float %7173, float %7170)  ; FMax(a,b)
  %7176 = call float @dx.op.binary.f32(i32 35, float %7174, float %7175)  ; FMax(a,b)
  %7177 = fmul fast float %7176, 2.000000e+00
  %7178 = call float @dx.op.unary.f32(i32 23, float %7177)  ; Log(value)
  %7179 = call float @dx.op.binary.f32(i32 35, float %7178, float %7159)  ; FMax(a,b)
  %7180 = call float @dx.op.unary.f32(i32 22, float %7179)  ; Frc(value)
  %7181 = fadd fast float %7180, 0xBFEA666660000000
  %7182 = fmul fast float %7181, 8.000000e+00
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = call float @dx.op.unary.f32(i32 27, float %7179)  ; Round_ni(value)
  %7185 = fadd fast float %7184, %7183
  %7186 = call float @dx.op.binary.f32(i32 36, float %7185, float %7161)  ; FMin(a,b)
  %7187 = call float @dx.op.unary.f32(i32 27, float %7186)  ; Round_ni(value)
  %7188 = fsub fast float -0.000000e+00, %7187
  %7189 = call float @dx.op.unary.f32(i32 21, float %7188)  ; Exp(value)
  %7190 = fmul fast float %7189, %7163
  %7191 = fmul fast float %7190, %7136
  %7192 = fmul fast float %7190, %7140
  %7193 = fmul fast float %7191, 2.500000e-01
  %7194 = fmul fast float %7192, 2.500000e-01
  %7195 = fadd fast float %7193, 5.000000e-01
  %7196 = fadd fast float %7194, 5.000000e-01
  %7197 = fsub fast float %7161, %7159
  %7198 = fptoui float %7197 to i32
  %7199 = add i32 %7198, 320
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %7199)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 1
  %7203 = fcmp fast une float %7186, %7161
  %7204 = fsub fast float %7136, %7201
  %7205 = fsub fast float %7140, %7202
  %7206 = call float @dx.op.unary.f32(i32 6, float %7204)  ; FAbs(value)
  %7207 = call float @dx.op.unary.f32(i32 6, float %7205)  ; FAbs(value)
  %7208 = fmul fast float %7206, %7190
  %7209 = fmul fast float %7207, %7190
  %7210 = fcmp fast olt float %7208, 1.000000e+00
  %7211 = fcmp fast olt float %7209, 1.000000e+00
  %7212 = and i1 %7210, %7211
  %7213 = or i1 %7203, %7212
  br i1 %7213, label %7214, label %7511, !dx.controlflow.hints !109

; <label>:7214                                    ; preds = %7152
  %7215 = fmul fast float %7192, 5.000000e-01
  %7216 = fmul fast float %7191, 5.000000e-01
  %7217 = fadd fast float %7215, 5.000000e-01
  %7218 = fadd fast float %7216, 5.000000e-01
  %7219 = sitofp i32 %7158 to float
  %7220 = fsub fast float %7186, %7219
  %7221 = call float @dx.op.unary.f32(i32 27, float %7220)  ; Round_ni(value)
  %7222 = call float @dx.op.unary.f32(i32 22, float %7186)  ; Frc(value)
  %7223 = call float @dx.op.unary.f32(i32 22, float %7218)  ; Frc(value)
  %7224 = call float @dx.op.unary.f32(i32 22, float %7217)  ; Frc(value)
  %7225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7223, float %7224, float %7221, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = extractvalue %dx.types.ResRet.f32 %7225, 1
  %7228 = extractvalue %dx.types.ResRet.f32 %7225, 2
  %7229 = extractvalue %dx.types.ResRet.f32 %7225, 3
  %7230 = fcmp fast ogt float %7222, 0.000000e+00
  br i1 %7230, label %7231, label %7252, !dx.controlflow.hints !110

; <label>:7231                                    ; preds = %7214
  %7232 = fadd fast float %7221, 1.000000e+00
  %7233 = call float @dx.op.unary.f32(i32 22, float %7195)  ; Frc(value)
  %7234 = call float @dx.op.unary.f32(i32 22, float %7196)  ; Frc(value)
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7233, float %7234, float %7232, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = extractvalue %dx.types.ResRet.f32 %7235, 1
  %7238 = extractvalue %dx.types.ResRet.f32 %7235, 2
  %7239 = extractvalue %dx.types.ResRet.f32 %7235, 3
  %7240 = fsub fast float %7236, %7226
  %7241 = fsub fast float %7237, %7227
  %7242 = fsub fast float %7238, %7228
  %7243 = fsub fast float %7239, %7229
  %7244 = fmul fast float %7240, %7222
  %7245 = fmul fast float %7241, %7222
  %7246 = fmul fast float %7242, %7222
  %7247 = fmul fast float %7243, %7222
  %7248 = fadd fast float %7244, %7226
  %7249 = fadd fast float %7245, %7227
  %7250 = fadd fast float %7246, %7228
  %7251 = fadd fast float %7247, %7229
  br label %7252

; <label>:7252                                    ; preds = %7231, %7214
  %7253 = phi float [ %7248, %7231 ], [ %7226, %7214 ]
  %7254 = phi float [ %7249, %7231 ], [ %7227, %7214 ]
  %7255 = phi float [ %7250, %7231 ], [ %7228, %7214 ]
  %7256 = phi float [ %7251, %7231 ], [ %7229, %7214 ]
  %7257 = fadd fast float %7253, -5.000000e-01
  %7258 = fadd fast float %7255, -5.000000e-01
  %7259 = fmul fast float %7257, 0xBFD5555560000000
  %7260 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7258, float %7259)  ; FMad(a,b,c)
  %7261 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7254, float 0.000000e+00)  ; FMad(a,b,c)
  %7262 = fadd fast float %7261, %7256
  %7263 = fmul fast float %7257, -7.500000e-01
  %7264 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7258, float %7263)  ; FMad(a,b,c)
  %7265 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7254, float 0.000000e+00)  ; FMad(a,b,c)
  %7266 = fadd fast float %7265, %7256
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.CBufRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.CBufRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.CBufRet.f32 %7269, 3
  %7274 = fsub fast float %7270, %7260
  %7275 = fsub fast float %7271, %7262
  %7276 = fsub fast float %7272, %7264
  %7277 = fsub fast float %7273, %7266
  %7278 = fmul fast float %7274, %7268
  %7279 = fmul fast float %7275, %7268
  %7280 = fmul fast float %7276, %7268
  %7281 = fmul fast float %7277, %7268
  %7282 = fadd fast float %7278, %7260
  %7283 = fadd fast float %7279, %7262
  %7284 = fadd fast float %7280, %7264
  %7285 = fadd fast float %7281, %7266
  %7286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7287 = extractvalue %dx.types.ResRet.i32 %7286, 0
  %7288 = and i32 %7287, 536870911
  %7289 = uitofp i32 %7288 to float
  %7290 = fmul fast float %7289, %7136
  %7291 = fmul fast float %7289, %7140
  %7292 = fptoui float %7290 to i32
  %7293 = fptoui float %7291 to i32
  %7294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7295 = extractvalue %dx.types.ResRet.i32 %7294, 0
  %7296 = and i32 %7295, 31
  %7297 = lshr i32 %7292, %7296
  %7298 = lshr i32 %7293, %7296
  %7299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7300 = extractvalue %dx.types.ResRet.i32 %7299, 0
  %7301 = and i32 %7300, 31
  %7302 = shl i32 1, %7301
  %7303 = call i32 @dx.op.binary.i32(i32 40, i32 %7302, i32 4)  ; UMin(a,b)
  %7304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7305 = extractvalue %dx.types.ResRet.i32 %7304, 0
  %7306 = extractvalue %dx.types.ResRet.i32 %7304, 1
  %7307 = icmp eq i32 %7303, 0
  br i1 %7307, label %7349, label %7308

; <label>:7308                                    ; preds = %7252
  br label %7309

; <label>:7309                                    ; preds = %7337, %7308
  %7310 = phi i32 [ %7340, %7337 ], [ 0, %7308 ]
  %7311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7312 = extractvalue %dx.types.ResRet.i32 %7311, 0
  %7313 = lshr i32 %7312, 16
  %7314 = and i32 %7313, 31
  %7315 = shl i32 %7298, %7314
  %7316 = add i32 %7315, %7297
  %7317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7318 = extractvalue %dx.types.ResRet.i32 %7317, 0
  %7319 = and i32 %7318, 31
  %7320 = shl i32 %7316, %7319
  %7321 = add i32 %7320, %7310
  %7322 = shl i32 %7321, 2
  %7323 = add i32 %7322, 32
  %7324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7323, i32 undef)  ; BufferLoad(srv,index,wot)
  %7325 = extractvalue %dx.types.ResRet.i32 %7324, 0
  %7326 = icmp slt i32 %7325, 0
  %7327 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7310
  %7328 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7310
  %7329 = bitcast float* %7327 to i32*
  %7330 = bitcast float* %7328 to i32*
  br i1 %7326, label %7331, label %7337

; <label>:7331                                    ; preds = %7309
  %7332 = and i32 %7325, 1073741823
  %7333 = add nuw nsw i32 %7332, 20
  %7334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7333, i32 undef)  ; BufferLoad(srv,index,wot)
  %7335 = extractvalue %dx.types.ResRet.i32 %7334, 0
  %7336 = extractvalue %dx.types.ResRet.i32 %7334, 1
  br label %7337

; <label>:7337                                    ; preds = %7331, %7309
  %7338 = phi i32 [ %7335, %7331 ], [ %7305, %7309 ]
  %7339 = phi i32 [ %7336, %7331 ], [ %7306, %7309 ]
  store i32 %7338, i32* %7329, align 4
  store i32 %7339, i32* %7330, align 4
  %7340 = add nuw i32 %7310, 1
  %7341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.i32 %7341, 2
  %7343 = icmp eq i32 %7342, 0
  %7344 = icmp ugt i32 %7325, -1073741825
  %7345 = and i1 %7344, %7343
  %7346 = icmp ult i32 %7340, %7303
  %7347 = and i1 %7345, %7346
  br i1 %7347, label %7309, label %7348

; <label>:7348                                    ; preds = %7337
  br label %7349

; <label>:7349                                    ; preds = %7348, %7252
  %7350 = phi i32 [ 0, %7252 ], [ %7340, %7348 ]
  %7351 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %7352 = fptoui float %7351 to i32
  %7353 = icmp eq i32 %7352, 0
  br i1 %7353, label %7405, label %7354

; <label>:7354                                    ; preds = %7349
  br label %7355

; <label>:7355                                    ; preds = %7400, %7354
  %7356 = phi i32 [ %7401, %7400 ], [ %7350, %7354 ]
  %7357 = phi i32 [ %7402, %7400 ], [ 0, %7354 ]
  %7358 = lshr i32 %7357, 2
  %7359 = and i32 %7357, 3
  %7360 = add nuw nsw i32 %7358, 83
  %7361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %7360)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.i32 %7361, 0
  %7363 = extractvalue %dx.types.CBufRet.i32 %7361, 1
  %7364 = extractvalue %dx.types.CBufRet.i32 %7361, 2
  %7365 = extractvalue %dx.types.CBufRet.i32 %7361, 3
  %7366 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %7362, i32* %7366, align 4
  %7367 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %7363, i32* %7367, align 4
  %7368 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %7364, i32* %7368, align 4
  %7369 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %7365, i32* %7369, align 4
  %7370 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %7359
  %7371 = load i32, i32* %7370, align 4, !tbaa !111, !noalias !115
  %7372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7373 = extractvalue %dx.types.ResRet.i32 %7372, 0
  %7374 = lshr i32 %7373, 16
  %7375 = and i32 %7374, 31
  %7376 = shl i32 %7298, %7375
  %7377 = add i32 %7376, %7297
  %7378 = shl i32 %7377, 2
  %7379 = add i32 %7378, %7371
  %7380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7379, i32 undef)  ; BufferLoad(srv,index,wot)
  %7381 = extractvalue %dx.types.ResRet.i32 %7380, 0
  %7382 = icmp eq i32 %7381, 0
  br i1 %7382, label %7400, label %7383

; <label>:7383                                    ; preds = %7355
  %7384 = icmp slt i32 %7381, 0
  %7385 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7356
  %7386 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7356
  %7387 = bitcast float* %7385 to i32*
  %7388 = bitcast float* %7386 to i32*
  br i1 %7384, label %7389, label %7396

; <label>:7389                                    ; preds = %7383
  %7390 = and i32 %7381, 1073741823
  %7391 = add i32 %7371, 20
  %7392 = add i32 %7391, %7390
  %7393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7392, i32 undef)  ; BufferLoad(srv,index,wot)
  %7394 = extractvalue %dx.types.ResRet.i32 %7393, 0
  %7395 = extractvalue %dx.types.ResRet.i32 %7393, 1
  br label %7396

; <label>:7396                                    ; preds = %7389, %7383
  %7397 = phi i32 [ %7394, %7389 ], [ %7305, %7383 ]
  %7398 = phi i32 [ %7395, %7389 ], [ %7306, %7383 ]
  store i32 %7397, i32* %7387, align 4
  store i32 %7398, i32* %7388, align 4
  %7399 = add i32 %7356, 1
  br label %7400

; <label>:7400                                    ; preds = %7396, %7355
  %7401 = phi i32 [ %7356, %7355 ], [ %7399, %7396 ]
  %7402 = add nuw i32 %7357, 1
  %7403 = icmp eq i32 %7402, %7352
  br i1 %7403, label %7404, label %7355

; <label>:7404                                    ; preds = %7400
  br label %7405

; <label>:7405                                    ; preds = %7404, %7349
  %7406 = phi i32 [ %7350, %7349 ], [ %7401, %7404 ]
  %7407 = icmp eq i32 %7406, 1
  %7408 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7409 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7407, label %7410, label %7413

; <label>:7410                                    ; preds = %7405
  %7411 = load float, float* %7408, align 4
  %7412 = load float, float* %7409, align 4
  br label %7440

; <label>:7413                                    ; preds = %7405
  %7414 = load float, float* %7408, align 4
  %7415 = load float, float* %7409, align 4
  %7416 = fdiv fast float 1.000000e+00, %7415
  %7417 = fsub fast float %7414, %7416
  %7418 = icmp ugt i32 %7406, 1
  br i1 %7418, label %7419, label %7435

; <label>:7419                                    ; preds = %7413
  br label %7420

; <label>:7420                                    ; preds = %7420, %7419
  %7421 = phi float [ %7430, %7420 ], [ %7417, %7419 ]
  %7422 = phi float [ %7431, %7420 ], [ %7414, %7419 ]
  %7423 = phi i32 [ %7432, %7420 ], [ 1, %7419 ]
  %7424 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7423
  %7425 = load float, float* %7424, align 4
  %7426 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7423
  %7427 = load float, float* %7426, align 4
  %7428 = fdiv fast float 1.000000e+00, %7427
  %7429 = fsub fast float %7425, %7428
  %7430 = call float @dx.op.binary.f32(i32 36, float %7421, float %7429)  ; FMin(a,b)
  %7431 = call float @dx.op.binary.f32(i32 35, float %7422, float %7425)  ; FMax(a,b)
  %7432 = add nuw i32 %7423, 1
  %7433 = icmp eq i32 %7432, %7406
  br i1 %7433, label %7434, label %7420

; <label>:7434                                    ; preds = %7420
  br label %7435

; <label>:7435                                    ; preds = %7434, %7413
  %7436 = phi float [ %7417, %7413 ], [ %7430, %7434 ]
  %7437 = phi float [ %7414, %7413 ], [ %7431, %7434 ]
  %7438 = fsub fast float %7437, %7436
  %7439 = fdiv fast float 1.000000e+00, %7438
  br label %7440

; <label>:7440                                    ; preds = %7435, %7410
  %7441 = phi float [ %7411, %7410 ], [ %7437, %7435 ]
  %7442 = phi float [ %7412, %7410 ], [ %7439, %7435 ]
  %7443 = fadd fast float %7144, %7441
  %7444 = fmul fast float %7443, %7442
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = fmul fast float %7445, 2.000000e+00
  %7447 = fsub fast float 1.000000e+00, %7446
  %7448 = fmul fast float %7282, %7282
  %7449 = fsub fast float %7283, %7448
  %7450 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7449)  ; FMax(a,b)
  %7451 = fdiv fast float 1.000000e+00, %7450
  %7452 = fmul fast float %7283, %7282
  %7453 = fsub fast float %7284, %7452
  %7454 = fsub fast float %7447, %7282
  %7455 = fmul fast float %7447, %7447
  %7456 = fsub fast float %7455, %7283
  %7457 = fmul fast float %7451, %7453
  %7458 = fmul fast float %7457, %7454
  %7459 = fsub fast float %7456, %7458
  %7460 = fmul fast float %7283, %7283
  %7461 = fsub fast float %7285, %7460
  %7462 = fmul fast float %7453, %7453
  %7463 = fmul fast float %7462, %7451
  %7464 = fsub fast float %7461, %7463
  %7465 = fdiv fast float %7459, %7464
  %7466 = fmul fast float %7465, %7453
  %7467 = fsub fast float %7454, %7466
  %7468 = fmul fast float %7467, %7451
  %7469 = fmul fast float %7468, %7282
  %7470 = fsub fast float 1.000000e+00, %7469
  %7471 = fmul fast float %7465, %7283
  %7472 = fsub fast float %7470, %7471
  %7473 = fmul fast float %7468, %7468
  %7474 = fmul fast float %7465, 4.000000e+00
  %7475 = fmul fast float %7474, %7472
  %7476 = fsub fast float %7473, %7475
  %7477 = call float @dx.op.unary.f32(i32 24, float %7476)  ; Sqrt(value)
  %7478 = fcmp fast oge float %7468, 0.000000e+00
  %7479 = fsub fast float -0.000000e+00, %7477
  %7480 = select i1 %7478, float %7479, float %7477
  %7481 = fsub fast float %7480, %7468
  %7482 = fdiv fast float %7481, %7465
  %7483 = fdiv fast float %7472, %7481
  %7484 = fmul fast float %7482, 5.000000e-01
  %7485 = fmul fast float %7483, 2.000000e+00
  %7486 = select i1 %7478, float %7484, float %7485
  %7487 = select i1 %7478, float %7485, float %7484
  %7488 = call float @dx.op.binary.f32(i32 35, float %7486, float %7487)  ; FMax(a,b)
  %7489 = call float @dx.op.binary.f32(i32 36, float %7486, float %7487)  ; FMin(a,b)
  %7490 = fcmp fast ogt float %7447, %7488
  %7491 = fsub fast float %7447, %7489
  %7492 = fsub fast float %7447, %7488
  %7493 = fsub fast float %7488, %7489
  %7494 = select i1 %7490, float %7492, float %7493
  %7495 = fmul float %7491, %7494
  %7496 = select i1 %7490, float %7489, float %7447
  %7497 = fcmp fast ogt float %7447, %7489
  %7498 = fmul fast float %7496, %7488
  %7499 = fadd fast float %7496, %7488
  %7500 = fmul fast float %7499, %7282
  %7501 = fadd fast float %7498, %7283
  %7502 = fsub fast float %7501, %7500
  %7503 = fdiv fast float %7502, %7495
  %7504 = select i1 %7497, float %7503, float 0.000000e+00
  %7505 = fsub fast float 1.000000e+00, %7504
  %7506 = select i1 %7490, float %7505, float %7504
  %7507 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7267, 3
  %7509 = fmul fast float %7508, %7507
  %7510 = fsub fast float 1.000000e+00, %7509
  br label %7511

; <label>:7511                                    ; preds = %7440, %7152, %7117, %7113, %7079
  %7512 = phi float [ 1.000000e+00, %7079 ], [ %7510, %7440 ], [ 1.000000e+00, %7117 ], [ 1.000000e+00, %7152 ], [ 1.000000e+00, %7113 ]
  %7513 = fcmp fast ogt float %7109, 0.000000e+00
  br i1 %7513, label %7514, label %7676, !dx.controlflow.hints !124

; <label>:7514                                    ; preds = %7511
  %7515 = fadd fast float %7022, %6996
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 3
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7521 = call float @dx.op.binary.f32(i32 35, float %7515, float 0.000000e+00)  ; FMax(a,b)
  %7522 = fadd fast float %7521, 0x3F10000000000000
  %7523 = fcmp fast oeq float %7520, 0.000000e+00
  br i1 %7523, label %7524, label %7591

; <label>:7524                                    ; preds = %7514
  %7525 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7526 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7527 = fmul fast float %7526, %7011
  %7528 = fmul fast float %7525, %7012
  %7529 = fadd fast float %7527, 5.000000e-01
  %7530 = call float @dx.op.unary.f32(i32 27, float %7529)  ; Round_ni(value)
  %7531 = fadd fast float %7528, 5.000000e-01
  %7532 = call float @dx.op.unary.f32(i32 27, float %7531)  ; Round_ni(value)
  %7533 = fsub fast float %7529, %7530
  %7534 = fsub fast float %7531, %7532
  %7535 = fadd fast float %7530, -5.000000e-01
  %7536 = fadd fast float %7532, -5.000000e-01
  %7537 = fmul fast float %7533, 2.000000e+00
  %7538 = fsub fast float 3.000000e+00, %7537
  %7539 = fadd fast float %7537, 1.000000e+00
  %7540 = fsub fast float 2.000000e+00, %7533
  %7541 = bitcast float %7538 to i32
  %7542 = sub nsw i32 2129859010, %7541
  %7543 = bitcast i32 %7542 to float
  %7544 = fmul fast float %7543, %7540
  %7545 = fadd fast float %7544, -1.000000e+00
  %7546 = bitcast float %7539 to i32
  %7547 = sub nsw i32 2129859010, %7546
  %7548 = bitcast i32 %7547 to float
  %7549 = fmul fast float %7548, %7533
  %7550 = fadd fast float %7549, 1.000000e+00
  %7551 = fmul fast float %7534, 2.000000e+00
  %7552 = fsub fast float 3.000000e+00, %7551
  %7553 = fadd fast float %7551, 1.000000e+00
  %7554 = fsub fast float 2.000000e+00, %7534
  %7555 = bitcast float %7552 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7554
  %7559 = fadd fast float %7558, -1.000000e+00
  %7560 = bitcast float %7553 to i32
  %7561 = sub nsw i32 2129859010, %7560
  %7562 = bitcast i32 %7561 to float
  %7563 = fmul fast float %7562, %7534
  %7564 = fadd fast float %7563, 1.000000e+00
  %7565 = fadd fast float %7545, %7535
  %7566 = fmul fast float %7565, %7517
  %7567 = fadd fast float %7559, %7536
  %7568 = fmul fast float %7567, %7518
  %7569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7566, float %7568, float undef, float undef, i32 0, i32 0, i32 undef, float %7522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = fmul fast float %7570, %7538
  %7572 = fadd fast float %7550, %7535
  %7573 = fmul fast float %7572, %7517
  %7574 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7573, float %7568, float undef, float undef, i32 0, i32 0, i32 undef, float %7522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = fmul fast float %7575, %7539
  %7577 = fadd fast float %7564, %7536
  %7578 = fmul fast float %7577, %7518
  %7579 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7566, float %7578, float undef, float undef, i32 0, i32 0, i32 undef, float %7522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7580 = extractvalue %dx.types.ResRet.f32 %7579, 0
  %7581 = fmul fast float %7580, %7538
  %7582 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7573, float %7578, float undef, float undef, i32 0, i32 0, i32 undef, float %7522)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7583 = extractvalue %dx.types.ResRet.f32 %7582, 0
  %7584 = fmul fast float %7583, %7539
  %7585 = fadd fast float %7584, %7581
  %7586 = fmul fast float %7585, %7553
  %7587 = fadd fast float %7576, %7571
  %7588 = fmul fast float %7587, %7552
  %7589 = fadd fast float %7588, %7586
  %7590 = fmul fast float %7589, 6.250000e-02
  br label %7676

; <label>:7591                                    ; preds = %7514
  %7592 = fmul fast float %273, 0x401921FB60000000
  %7593 = call float @dx.op.unary.f32(i32 13, float %7592)  ; Sin(value)
  %7594 = call float @dx.op.unary.f32(i32 12, float %7592)  ; Cos(value)
  %7595 = fsub fast float -0.000000e+00, %7593
  br label %7596

; <label>:7596                                    ; preds = %7645, %7591
  %7597 = phi float [ 0.000000e+00, %7591 ], [ %7640, %7645 ]
  %7598 = phi float [ 0.000000e+00, %7591 ], [ %7642, %7645 ]
  %7599 = phi i32 [ 0, %7591 ], [ %7646, %7645 ]
  %7600 = mul i32 %7599, 2
  %7601 = add i32 0, %7600
  %7602 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7601
  %7603 = load float, float* %7602, align 4
  %7604 = mul i32 %7599, 2
  %7605 = add i32 1, %7604
  %7606 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7605
  %7607 = load float, float* %7606, align 4
  %7608 = fmul fast float %7603, %7594
  %7609 = call float @dx.op.tertiary.f32(i32 46, float %7607, float %7595, float %7608)  ; FMad(a,b,c)
  %7610 = fmul fast float %7603, %7593
  %7611 = call float @dx.op.tertiary.f32(i32 46, float %7607, float %7594, float %7610)  ; FMad(a,b,c)
  %7612 = fmul fast float %7609, %7520
  %7613 = fmul fast float %7611, %7520
  %7614 = fadd fast float %7612, %7011
  %7615 = fadd fast float %7613, %7012
  %7616 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %7614, float %7615, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.ResRet.f32 %7616, 2
  %7620 = extractvalue %dx.types.ResRet.f32 %7616, 3
  %7621 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7617, float* %7621, align 4
  %7622 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7618, float* %7622, align 4
  %7623 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7619, float* %7623, align 4
  %7624 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7620, float* %7624, align 4
  %7625 = fsub fast float %7617, %7522
  %7626 = fcmp fast olt float %7625, 0.000000e+00
  %7627 = select i1 %7626, float 0.000000e+00, float 1.000000e+00
  %7628 = fadd fast float %7627, %7597
  %7629 = fmul fast float %7627, %7625
  %7630 = fadd fast float %7629, %7598
  br label %7631

; <label>:7631                                    ; preds = %7631, %7596
  %7632 = phi i32 [ 1, %7596 ], [ %7643, %7631 ]
  %7633 = phi float [ %7630, %7596 ], [ %7642, %7631 ]
  %7634 = phi float [ %7628, %7596 ], [ %7640, %7631 ]
  %7635 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7632
  %7636 = load float, float* %7635, align 4, !tbaa !125, !noalias !115
  %7637 = fsub fast float %7636, %7522
  %7638 = fcmp fast olt float %7637, 0.000000e+00
  %7639 = select i1 %7638, float 0.000000e+00, float 1.000000e+00
  %7640 = fadd fast float %7639, %7634
  %7641 = fmul fast float %7639, %7637
  %7642 = fadd fast float %7641, %7633
  %7643 = add nuw nsw i32 %7632, 1
  %7644 = icmp eq i32 %7643, 4
  br i1 %7644, label %7645, label %7631, !llvm.loop !127

; <label>:7645                                    ; preds = %7631
  %7646 = add nuw nsw i32 %7599, 1
  %7647 = icmp eq i32 %7646, 8
  br i1 %7647, label %7648, label %7596, !llvm.loop !128

; <label>:7648                                    ; preds = %7645
  %7649 = fdiv fast float 1.000000e+00, %7640
  %7650 = fmul fast float %7649, %7642
  %7651 = fdiv fast float 1.000000e+00, %7522
  %7652 = fmul fast float %7650, %7651
  %7653 = call float @dx.op.unary.f32(i32 7, float %7652)  ; Saturate(value)
  %7654 = call float @dx.op.binary.f32(i32 35, float %7653, float 0.000000e+00)  ; FMax(a,b)
  %7655 = fmul fast float %7640, 3.125000e-02
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = fmul fast float %7656, 2.000000e+00
  %7658 = fadd fast float %7657, -1.000000e+00
  %7659 = fcmp fast ogt float %7658, 0.000000e+00
  %7660 = fcmp fast olt float %7658, 0.000000e+00
  %7661 = zext i1 %7659 to i32
  %7662 = zext i1 %7660 to i32
  %7663 = sub nsw i32 %7661, %7662
  %7664 = sitofp i32 %7663 to float
  %7665 = fmul fast float %7664, %7658
  %7666 = fsub fast float 1.000000e+00, %7665
  %7667 = fmul fast float %7666, %7666
  %7668 = fmul fast float %7667, %7666
  %7669 = fsub fast float %7666, %7668
  %7670 = fmul fast float %7669, %7654
  %7671 = fsub fast float 1.000000e+00, %7668
  %7672 = fsub fast float %7671, %7670
  %7673 = fmul fast float %7664, 5.000000e-01
  %7674 = fmul fast float %7673, %7672
  %7675 = fsub fast float 5.000000e-01, %7674
  br label %7676

; <label>:7676                                    ; preds = %7648, %7524, %7511
  %7677 = phi float [ 1.000000e+00, %7511 ], [ %7590, %7524 ], [ %7675, %7648 ]
  %7678 = fcmp fast ogt float %7107, 0.000000e+00
  br i1 %7678, label %7679, label %7843, !dx.controlflow.hints !129

; <label>:7679                                    ; preds = %7676
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7682 = fadd fast float %7681, %6996
  %7683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7684 = extractvalue %dx.types.CBufRet.f32 %7683, 2
  %7685 = extractvalue %dx.types.CBufRet.f32 %7683, 3
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7688 = call float @dx.op.binary.f32(i32 35, float %7682, float 0.000000e+00)  ; FMax(a,b)
  %7689 = fadd fast float %7688, 0x3F10000000000000
  %7690 = fcmp fast oeq float %7687, 0.000000e+00
  br i1 %7690, label %7691, label %7758

; <label>:7691                                    ; preds = %7679
  %7692 = extractvalue %dx.types.CBufRet.f32 %7683, 1
  %7693 = extractvalue %dx.types.CBufRet.f32 %7683, 0
  %7694 = fmul fast float %7693, %7003
  %7695 = fmul fast float %7692, %7004
  %7696 = fadd fast float %7694, 5.000000e-01
  %7697 = call float @dx.op.unary.f32(i32 27, float %7696)  ; Round_ni(value)
  %7698 = fadd fast float %7695, 5.000000e-01
  %7699 = call float @dx.op.unary.f32(i32 27, float %7698)  ; Round_ni(value)
  %7700 = fsub fast float %7696, %7697
  %7701 = fsub fast float %7698, %7699
  %7702 = fadd fast float %7697, -5.000000e-01
  %7703 = fadd fast float %7699, -5.000000e-01
  %7704 = fmul fast float %7700, 2.000000e+00
  %7705 = fsub fast float 3.000000e+00, %7704
  %7706 = fadd fast float %7704, 1.000000e+00
  %7707 = fsub fast float 2.000000e+00, %7700
  %7708 = bitcast float %7705 to i32
  %7709 = sub nsw i32 2129859010, %7708
  %7710 = bitcast i32 %7709 to float
  %7711 = fmul fast float %7710, %7707
  %7712 = fadd fast float %7711, -1.000000e+00
  %7713 = bitcast float %7706 to i32
  %7714 = sub nsw i32 2129859010, %7713
  %7715 = bitcast i32 %7714 to float
  %7716 = fmul fast float %7715, %7700
  %7717 = fadd fast float %7716, 1.000000e+00
  %7718 = fmul fast float %7701, 2.000000e+00
  %7719 = fsub fast float 3.000000e+00, %7718
  %7720 = fadd fast float %7718, 1.000000e+00
  %7721 = fsub fast float 2.000000e+00, %7701
  %7722 = bitcast float %7719 to i32
  %7723 = sub nsw i32 2129859010, %7722
  %7724 = bitcast i32 %7723 to float
  %7725 = fmul fast float %7724, %7721
  %7726 = fadd fast float %7725, -1.000000e+00
  %7727 = bitcast float %7720 to i32
  %7728 = sub nsw i32 2129859010, %7727
  %7729 = bitcast i32 %7728 to float
  %7730 = fmul fast float %7729, %7701
  %7731 = fadd fast float %7730, 1.000000e+00
  %7732 = fadd fast float %7712, %7702
  %7733 = fmul fast float %7732, %7684
  %7734 = fadd fast float %7726, %7703
  %7735 = fmul fast float %7734, %7685
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7733, float %7735, float undef, float undef, i32 0, i32 0, i32 undef, float %7689)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 0
  %7738 = fmul fast float %7737, %7705
  %7739 = fadd fast float %7717, %7702
  %7740 = fmul fast float %7739, %7684
  %7741 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7740, float %7735, float undef, float undef, i32 0, i32 0, i32 undef, float %7689)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = fmul fast float %7742, %7706
  %7744 = fadd fast float %7731, %7703
  %7745 = fmul fast float %7744, %7685
  %7746 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7733, float %7745, float undef, float undef, i32 0, i32 0, i32 undef, float %7689)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7747 = extractvalue %dx.types.ResRet.f32 %7746, 0
  %7748 = fmul fast float %7747, %7705
  %7749 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7740, float %7745, float undef, float undef, i32 0, i32 0, i32 undef, float %7689)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7750 = extractvalue %dx.types.ResRet.f32 %7749, 0
  %7751 = fmul fast float %7750, %7706
  %7752 = fadd fast float %7751, %7748
  %7753 = fmul fast float %7752, %7720
  %7754 = fadd fast float %7743, %7738
  %7755 = fmul fast float %7754, %7719
  %7756 = fadd fast float %7755, %7753
  %7757 = fmul fast float %7756, 6.250000e-02
  br label %7843

; <label>:7758                                    ; preds = %7679
  %7759 = fmul fast float %273, 0x401921FB60000000
  %7760 = call float @dx.op.unary.f32(i32 13, float %7759)  ; Sin(value)
  %7761 = call float @dx.op.unary.f32(i32 12, float %7759)  ; Cos(value)
  %7762 = fsub fast float -0.000000e+00, %7760
  br label %7763

; <label>:7763                                    ; preds = %7812, %7758
  %7764 = phi float [ 0.000000e+00, %7758 ], [ %7807, %7812 ]
  %7765 = phi float [ 0.000000e+00, %7758 ], [ %7809, %7812 ]
  %7766 = phi i32 [ 0, %7758 ], [ %7813, %7812 ]
  %7767 = mul i32 %7766, 2
  %7768 = add i32 0, %7767
  %7769 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7768
  %7770 = load float, float* %7769, align 4
  %7771 = mul i32 %7766, 2
  %7772 = add i32 1, %7771
  %7773 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7772
  %7774 = load float, float* %7773, align 4
  %7775 = fmul fast float %7770, %7761
  %7776 = call float @dx.op.tertiary.f32(i32 46, float %7774, float %7762, float %7775)  ; FMad(a,b,c)
  %7777 = fmul fast float %7770, %7760
  %7778 = call float @dx.op.tertiary.f32(i32 46, float %7774, float %7761, float %7777)  ; FMad(a,b,c)
  %7779 = fmul fast float %7776, %7687
  %7780 = fmul fast float %7778, %7687
  %7781 = fadd fast float %7779, %7003
  %7782 = fadd fast float %7780, %7004
  %7783 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7781, float %7782, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7784 = extractvalue %dx.types.ResRet.f32 %7783, 0
  %7785 = extractvalue %dx.types.ResRet.f32 %7783, 1
  %7786 = extractvalue %dx.types.ResRet.f32 %7783, 2
  %7787 = extractvalue %dx.types.ResRet.f32 %7783, 3
  %7788 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7784, float* %7788, align 4
  %7789 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7785, float* %7789, align 4
  %7790 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7786, float* %7790, align 4
  %7791 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7787, float* %7791, align 4
  %7792 = fsub fast float %7784, %7689
  %7793 = fcmp fast olt float %7792, 0.000000e+00
  %7794 = select i1 %7793, float 0.000000e+00, float 1.000000e+00
  %7795 = fadd fast float %7794, %7764
  %7796 = fmul fast float %7794, %7792
  %7797 = fadd fast float %7796, %7765
  br label %7798

; <label>:7798                                    ; preds = %7798, %7763
  %7799 = phi i32 [ 1, %7763 ], [ %7810, %7798 ]
  %7800 = phi float [ %7797, %7763 ], [ %7809, %7798 ]
  %7801 = phi float [ %7795, %7763 ], [ %7807, %7798 ]
  %7802 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7799
  %7803 = load float, float* %7802, align 4, !tbaa !125, !noalias !115
  %7804 = fsub fast float %7803, %7689
  %7805 = fcmp fast olt float %7804, 0.000000e+00
  %7806 = select i1 %7805, float 0.000000e+00, float 1.000000e+00
  %7807 = fadd fast float %7806, %7801
  %7808 = fmul fast float %7806, %7804
  %7809 = fadd fast float %7808, %7800
  %7810 = add nuw nsw i32 %7799, 1
  %7811 = icmp eq i32 %7810, 4
  br i1 %7811, label %7812, label %7798, !llvm.loop !127

; <label>:7812                                    ; preds = %7798
  %7813 = add nuw nsw i32 %7766, 1
  %7814 = icmp eq i32 %7813, 8
  br i1 %7814, label %7815, label %7763, !llvm.loop !128

; <label>:7815                                    ; preds = %7812
  %7816 = fdiv fast float 1.000000e+00, %7807
  %7817 = fmul fast float %7816, %7809
  %7818 = fdiv fast float 1.000000e+00, %7689
  %7819 = fmul fast float %7817, %7818
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = call float @dx.op.binary.f32(i32 35, float %7820, float 0.000000e+00)  ; FMax(a,b)
  %7822 = fmul fast float %7807, 3.125000e-02
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fmul fast float %7823, 2.000000e+00
  %7825 = fadd fast float %7824, -1.000000e+00
  %7826 = fcmp fast ogt float %7825, 0.000000e+00
  %7827 = fcmp fast olt float %7825, 0.000000e+00
  %7828 = zext i1 %7826 to i32
  %7829 = zext i1 %7827 to i32
  %7830 = sub nsw i32 %7828, %7829
  %7831 = sitofp i32 %7830 to float
  %7832 = fmul fast float %7831, %7825
  %7833 = fsub fast float 1.000000e+00, %7832
  %7834 = fmul fast float %7833, %7833
  %7835 = fmul fast float %7834, %7833
  %7836 = fsub fast float %7833, %7835
  %7837 = fmul fast float %7836, %7821
  %7838 = fsub fast float 1.000000e+00, %7835
  %7839 = fsub fast float %7838, %7837
  %7840 = fmul fast float %7831, 5.000000e-01
  %7841 = fmul fast float %7840, %7839
  %7842 = fsub fast float 5.000000e-01, %7841
  br label %7843

; <label>:7843                                    ; preds = %7815, %7691, %7676
  %7844 = phi float [ 1.000000e+00, %7676 ], [ %7757, %7691 ], [ %7842, %7815 ]
  %7845 = fcmp fast ogt float %7106, 0.000000e+00
  br i1 %7845, label %7846, label %8010, !dx.controlflow.hints !130

; <label>:7846                                    ; preds = %7843
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 0
  %7849 = fadd fast float %7848, %6996
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7855 = call float @dx.op.binary.f32(i32 35, float %7849, float 0.000000e+00)  ; FMax(a,b)
  %7856 = fadd fast float %7855, 0x3F10000000000000
  %7857 = fcmp fast oeq float %7854, 0.000000e+00
  br i1 %7857, label %7858, label %7925

; <label>:7858                                    ; preds = %7846
  %7859 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7861 = fmul fast float %7860, %6988
  %7862 = fmul fast float %7859, %6992
  %7863 = fadd fast float %7861, 5.000000e-01
  %7864 = call float @dx.op.unary.f32(i32 27, float %7863)  ; Round_ni(value)
  %7865 = fadd fast float %7862, 5.000000e-01
  %7866 = call float @dx.op.unary.f32(i32 27, float %7865)  ; Round_ni(value)
  %7867 = fsub fast float %7863, %7864
  %7868 = fsub fast float %7865, %7866
  %7869 = fadd fast float %7864, -5.000000e-01
  %7870 = fadd fast float %7866, -5.000000e-01
  %7871 = fmul fast float %7867, 2.000000e+00
  %7872 = fsub fast float 3.000000e+00, %7871
  %7873 = fadd fast float %7871, 1.000000e+00
  %7874 = fsub fast float 2.000000e+00, %7867
  %7875 = bitcast float %7872 to i32
  %7876 = sub nsw i32 2129859010, %7875
  %7877 = bitcast i32 %7876 to float
  %7878 = fmul fast float %7877, %7874
  %7879 = fadd fast float %7878, -1.000000e+00
  %7880 = bitcast float %7873 to i32
  %7881 = sub nsw i32 2129859010, %7880
  %7882 = bitcast i32 %7881 to float
  %7883 = fmul fast float %7882, %7867
  %7884 = fadd fast float %7883, 1.000000e+00
  %7885 = fmul fast float %7868, 2.000000e+00
  %7886 = fsub fast float 3.000000e+00, %7885
  %7887 = fadd fast float %7885, 1.000000e+00
  %7888 = fsub fast float 2.000000e+00, %7868
  %7889 = bitcast float %7886 to i32
  %7890 = sub nsw i32 2129859010, %7889
  %7891 = bitcast i32 %7890 to float
  %7892 = fmul fast float %7891, %7888
  %7893 = fadd fast float %7892, -1.000000e+00
  %7894 = bitcast float %7887 to i32
  %7895 = sub nsw i32 2129859010, %7894
  %7896 = bitcast i32 %7895 to float
  %7897 = fmul fast float %7896, %7868
  %7898 = fadd fast float %7897, 1.000000e+00
  %7899 = fadd fast float %7879, %7869
  %7900 = fmul fast float %7899, %7851
  %7901 = fadd fast float %7893, %7870
  %7902 = fmul fast float %7901, %7852
  %7903 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7900, float %7902, float undef, float undef, i32 0, i32 0, i32 undef, float %7856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7904 = extractvalue %dx.types.ResRet.f32 %7903, 0
  %7905 = fmul fast float %7904, %7872
  %7906 = fadd fast float %7884, %7869
  %7907 = fmul fast float %7906, %7851
  %7908 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7907, float %7902, float undef, float undef, i32 0, i32 0, i32 undef, float %7856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7909 = extractvalue %dx.types.ResRet.f32 %7908, 0
  %7910 = fmul fast float %7909, %7873
  %7911 = fadd fast float %7898, %7870
  %7912 = fmul fast float %7911, %7852
  %7913 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7900, float %7912, float undef, float undef, i32 0, i32 0, i32 undef, float %7856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7914 = extractvalue %dx.types.ResRet.f32 %7913, 0
  %7915 = fmul fast float %7914, %7872
  %7916 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7907, float %7912, float undef, float undef, i32 0, i32 0, i32 undef, float %7856)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 0
  %7918 = fmul fast float %7917, %7873
  %7919 = fadd fast float %7918, %7915
  %7920 = fmul fast float %7919, %7887
  %7921 = fadd fast float %7910, %7905
  %7922 = fmul fast float %7921, %7886
  %7923 = fadd fast float %7922, %7920
  %7924 = fmul fast float %7923, 6.250000e-02
  br label %8010

; <label>:7925                                    ; preds = %7846
  %7926 = fmul fast float %273, 0x401921FB60000000
  %7927 = call float @dx.op.unary.f32(i32 13, float %7926)  ; Sin(value)
  %7928 = call float @dx.op.unary.f32(i32 12, float %7926)  ; Cos(value)
  %7929 = fsub fast float -0.000000e+00, %7927
  br label %7930

; <label>:7930                                    ; preds = %7979, %7925
  %7931 = phi float [ 0.000000e+00, %7925 ], [ %7974, %7979 ]
  %7932 = phi float [ 0.000000e+00, %7925 ], [ %7976, %7979 ]
  %7933 = phi i32 [ 0, %7925 ], [ %7980, %7979 ]
  %7934 = mul i32 %7933, 2
  %7935 = add i32 0, %7934
  %7936 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7935
  %7937 = load float, float* %7936, align 4
  %7938 = mul i32 %7933, 2
  %7939 = add i32 1, %7938
  %7940 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7939
  %7941 = load float, float* %7940, align 4
  %7942 = fmul fast float %7937, %7928
  %7943 = call float @dx.op.tertiary.f32(i32 46, float %7941, float %7929, float %7942)  ; FMad(a,b,c)
  %7944 = fmul fast float %7937, %7927
  %7945 = call float @dx.op.tertiary.f32(i32 46, float %7941, float %7928, float %7944)  ; FMad(a,b,c)
  %7946 = fmul fast float %7943, %7854
  %7947 = fmul fast float %7945, %7854
  %7948 = fadd fast float %7946, %6988
  %7949 = fadd fast float %7947, %6992
  %7950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7948, float %7949, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.ResRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7950, 2
  %7954 = extractvalue %dx.types.ResRet.f32 %7950, 3
  %7955 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7951, float* %7955, align 4
  %7956 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7952, float* %7956, align 4
  %7957 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7953, float* %7957, align 4
  %7958 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7954, float* %7958, align 4
  %7959 = fsub fast float %7951, %7856
  %7960 = fcmp fast olt float %7959, 0.000000e+00
  %7961 = select i1 %7960, float 0.000000e+00, float 1.000000e+00
  %7962 = fadd fast float %7961, %7931
  %7963 = fmul fast float %7961, %7959
  %7964 = fadd fast float %7963, %7932
  br label %7965

; <label>:7965                                    ; preds = %7965, %7930
  %7966 = phi i32 [ 1, %7930 ], [ %7977, %7965 ]
  %7967 = phi float [ %7964, %7930 ], [ %7976, %7965 ]
  %7968 = phi float [ %7962, %7930 ], [ %7974, %7965 ]
  %7969 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7966
  %7970 = load float, float* %7969, align 4, !tbaa !125, !noalias !115
  %7971 = fsub fast float %7970, %7856
  %7972 = fcmp fast olt float %7971, 0.000000e+00
  %7973 = select i1 %7972, float 0.000000e+00, float 1.000000e+00
  %7974 = fadd fast float %7973, %7968
  %7975 = fmul fast float %7973, %7971
  %7976 = fadd fast float %7975, %7967
  %7977 = add nuw nsw i32 %7966, 1
  %7978 = icmp eq i32 %7977, 4
  br i1 %7978, label %7979, label %7965, !llvm.loop !127

; <label>:7979                                    ; preds = %7965
  %7980 = add nuw nsw i32 %7933, 1
  %7981 = icmp eq i32 %7980, 8
  br i1 %7981, label %7982, label %7930, !llvm.loop !128

; <label>:7982                                    ; preds = %7979
  %7983 = fdiv fast float 1.000000e+00, %7974
  %7984 = fmul fast float %7983, %7976
  %7985 = fdiv fast float 1.000000e+00, %7856
  %7986 = fmul fast float %7984, %7985
  %7987 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7988 = call float @dx.op.binary.f32(i32 35, float %7987, float 0.000000e+00)  ; FMax(a,b)
  %7989 = fmul fast float %7974, 3.125000e-02
  %7990 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7991 = fmul fast float %7990, 2.000000e+00
  %7992 = fadd fast float %7991, -1.000000e+00
  %7993 = fcmp fast ogt float %7992, 0.000000e+00
  %7994 = fcmp fast olt float %7992, 0.000000e+00
  %7995 = zext i1 %7993 to i32
  %7996 = zext i1 %7994 to i32
  %7997 = sub nsw i32 %7995, %7996
  %7998 = sitofp i32 %7997 to float
  %7999 = fmul fast float %7998, %7992
  %8000 = fsub fast float 1.000000e+00, %7999
  %8001 = fmul fast float %8000, %8000
  %8002 = fmul fast float %8001, %8000
  %8003 = fsub fast float %8000, %8002
  %8004 = fmul fast float %8003, %7988
  %8005 = fsub fast float 1.000000e+00, %8002
  %8006 = fsub fast float %8005, %8004
  %8007 = fmul fast float %7998, 5.000000e-01
  %8008 = fmul fast float %8007, %8006
  %8009 = fsub fast float 5.000000e-01, %8008
  br label %8010

; <label>:8010                                    ; preds = %7982, %7858, %7843
  %8011 = phi float [ 1.000000e+00, %7843 ], [ %7924, %7858 ], [ %8009, %7982 ]
  %8012 = fsub fast float %7677, %7512
  %8013 = fmul fast float %8012, %7050
  %8014 = fadd fast float %8013, %7512
  %8015 = fsub fast float %7844, %8014
  %8016 = fmul fast float %8015, %7080
  %8017 = fadd fast float %8016, %8014
  %8018 = fsub fast float %8011, %8017
  %8019 = fmul fast float %8018, %7106
  %8020 = fadd fast float %8019, %8017
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8023 = fcmp fast ogt float %8022, 0.000000e+00
  br i1 %8023, label %8024, label %8064, !dx.controlflow.hints !131

; <label>:8024                                    ; preds = %8010
  %8025 = fcmp fast ugt float %8022, 0.000000e+00
  br i1 %8025, label %8026, label %8061

; <label>:8026                                    ; preds = %8024
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.CBufRet.f32 %8027, 3
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.CBufRet.f32 %8032, 2
  %8036 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8037 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8038 = extractvalue %dx.types.CBufRet.f32 %8021, 1
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8043 = fadd fast float %8040, %6965
  %8044 = fadd fast float %8041, %6966
  %8045 = fadd fast float %8042, %6967
  %8046 = fmul fast float %8043, %8028
  %8047 = call float @dx.op.tertiary.f32(i32 46, float %8029, float %8044, float %8046)  ; FMad(a,b,c)
  %8048 = call float @dx.op.tertiary.f32(i32 46, float %8030, float %8045, float %8047)  ; FMad(a,b,c)
  %8049 = fadd fast float %8048, %8031
  %8050 = fmul fast float %8043, %8033
  %8051 = call float @dx.op.tertiary.f32(i32 46, float %8034, float %8044, float %8050)  ; FMad(a,b,c)
  %8052 = call float @dx.op.tertiary.f32(i32 46, float %8035, float %8045, float %8051)  ; FMad(a,b,c)
  %8053 = fadd fast float %8052, %8036
  %8054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %8049, float %8053, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = fmul fast float %8055, %8038
  %8057 = fadd fast float %8056, %8037
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = fmul fast float %8058, %8022
  %8060 = fsub fast float 1.000000e+00, %8059
  br label %8061

; <label>:8061                                    ; preds = %8026, %8024
  %8062 = phi float [ %8060, %8026 ], [ 1.000000e+00, %8024 ]
  %8063 = fmul fast float %8062, %8020
  br label %8064

; <label>:8064                                    ; preds = %8061, %8010, %6945
  %8065 = phi float [ 1.000000e+00, %6945 ], [ %8063, %8061 ], [ %8020, %8010 ]
  %8066 = call float @dx.op.binary.f32(i32 36, float %8065, float %8065)  ; FMin(a,b)
  %8067 = call float @dx.op.binary.f32(i32 36, float %8065, float %8066)  ; FMin(a,b)
  %8068 = fcmp fast ogt float %8067, 0.000000e+00
  br i1 %8068, label %8069, label %8234, !dx.controlflow.hints !132

; <label>:8069                                    ; preds = %8064
  %8070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8071 = extractvalue %dx.types.CBufRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.CBufRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.CBufRet.f32 %8070, 2
  %8074 = extractvalue %dx.types.CBufRet.f32 %8070, 3
  %8075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8076 = extractvalue %dx.types.CBufRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.CBufRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.CBufRet.f32 %8075, 2
  %8079 = extractvalue %dx.types.CBufRet.f32 %8075, 3
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.CBufRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.CBufRet.f32 %8080, 2
  %8084 = extractvalue %dx.types.CBufRet.f32 %8080, 3
  %8085 = fmul fast float %8071, %6965
  %8086 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %8072, float %8085)  ; FMad(a,b,c)
  %8087 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8073, float %8086)  ; FMad(a,b,c)
  %8088 = fadd fast float %8087, %8074
  %8089 = fmul fast float %8076, %6965
  %8090 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %8077, float %8089)  ; FMad(a,b,c)
  %8091 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8078, float %8090)  ; FMad(a,b,c)
  %8092 = fadd fast float %8091, %8079
  %8093 = fmul fast float %8081, %6965
  %8094 = call float @dx.op.tertiary.f32(i32 46, float %6966, float %8082, float %8093)  ; FMad(a,b,c)
  %8095 = call float @dx.op.tertiary.f32(i32 46, float %6967, float %8083, float %8094)  ; FMad(a,b,c)
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 0
  %8098 = extractvalue %dx.types.CBufRet.f32 %8096, 1
  %8099 = extractvalue %dx.types.CBufRet.f32 %8096, 3
  %8100 = fmul fast float %8099, %8088
  %8101 = fmul fast float %8099, %8092
  %8102 = fadd fast float %8100, %8097
  %8103 = fadd fast float %8101, %8098
  %8104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8105 = extractvalue %dx.types.CBufRet.f32 %8104, 0
  %8106 = extractvalue %dx.types.CBufRet.f32 %8104, 1
  %8107 = fsub fast float %8102, %8105
  %8108 = fsub fast float %8103, %8106
  %8109 = fcmp fast olt float %8107, 0.000000e+00
  %8110 = fcmp fast olt float %8108, 0.000000e+00
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.CBufRet.f32 %8111, 2
  %8115 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8116 = select i1 %8109, float %8112, float %8114
  %8117 = select i1 %8110, float %8113, float %8115
  %8118 = fmul fast float %8116, %8107
  %8119 = fmul fast float %8117, %8108
  %8120 = call float @dx.op.unary.f32(i32 6, float %8118)  ; FAbs(value)
  %8121 = call float @dx.op.unary.f32(i32 6, float %8119)  ; FAbs(value)
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 0
  %8124 = call float @dx.op.binary.f32(i32 35, float %8120, float %8121)  ; FMax(a,b)
  %8125 = fsub fast float %8123, %8124
  %8126 = call float @dx.op.unary.f32(i32 7, float %8125)  ; Saturate(value)
  %8127 = fcmp fast ogt float %8126, 0.000000e+00
  br i1 %8127, label %8128, label %8169, !dx.controlflow.hints !133

; <label>:8128                                    ; preds = %8069
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %8102, float %8103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8131 = fcmp fast ogt float %8130, 0.000000e+00
  br i1 %8131, label %8132, label %8164

; <label>:8132                                    ; preds = %8128
  %8133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %8102, float %8103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8134 = extractvalue %dx.types.ResRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.ResRet.f32 %8133, 1
  %8136 = extractvalue %dx.types.ResRet.f32 %8133, 2
  %8137 = extractvalue %dx.types.ResRet.f32 %8133, 3
  %8138 = fsub fast float 1.000000e+00, %8084
  %8139 = fsub fast float %8138, %8095
  %8140 = fmul fast float %8139, 0x400921FB60000000
  %8141 = fadd fast float %8140, 0x3FF921FB60000000
  %8142 = call float @dx.op.unary.f32(i32 13, float %8141)  ; Sin(value)
  %8143 = fadd fast float %8142, -1.000000e+00
  %8144 = fmul fast float %8143, 0x3FD45F3060000000
  %8145 = fmul fast float %8139, 0x401921FB60000000
  %8146 = fadd fast float %8145, 0x400921FB60000000
  %8147 = call float @dx.op.unary.f32(i32 13, float %8146)  ; Sin(value)
  %8148 = fadd fast float %8147, 0x3E7777A5C0000000
  %8149 = fmul fast float %8148, 0x3FC45F3060000000
  %8150 = fmul fast float %8139, 0x4022D97C80000000
  %8151 = fadd fast float %8150, 0x4012D97C80000000
  %8152 = call float @dx.op.unary.f32(i32 13, float %8151)  ; Sin(value)
  %8153 = fadd fast float %8152, 1.000000e+00
  %8154 = fmul fast float %8153, 0x3FBB2995E0000000
  %8155 = fmul fast float %8139, 0x402921FB60000000
  %8156 = fadd fast float %8155, 0x401921FB60000000
  %8157 = call float @dx.op.unary.f32(i32 13, float %8156)  ; Sin(value)
  %8158 = fadd fast float %8157, 0xBE8777A5C0000000
  %8159 = fmul fast float %8158, 0x3FB45F3060000000
  %8160 = call float @dx.op.dot4.f32(i32 56, float %8134, float %8135, float %8136, float %8137, float %8144, float %8149, float %8154, float %8159)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8161 = fmul fast float %8160, 0xBFF7154760000000
  %8162 = call float @dx.op.unary.f32(i32 21, float %8161)  ; Exp(value)
  %8163 = call float @dx.op.unary.f32(i32 7, float %8162)  ; Saturate(value)
  br label %8164

; <label>:8164                                    ; preds = %8132, %8128
  %8165 = phi float [ %8163, %8132 ], [ 1.000000e+00, %8128 ]
  %8166 = fadd fast float %8165, -1.000000e+00
  %8167 = fmul fast float %8166, %8126
  %8168 = fadd fast float %8167, 1.000000e+00
  br label %8169

; <label>:8169                                    ; preds = %8164, %8069
  %8170 = phi float [ %8168, %8164 ], [ 1.000000e+00, %8069 ]
  %8171 = fmul fast float %8170, %8065
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8176 = fadd fast float %8173, %166
  %8177 = fadd fast float %8174, %167
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = fsub fast float -0.000000e+00, %8176
  %8185 = fsub fast float -0.000000e+00, %8177
  %8186 = fsub fast float %5846, %8175
  %8187 = fadd fast float %8186, %8179
  %8188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8184, float %8185, float %8187)  ; Dot3(ax,ay,az,bx,by,bz)
  %8189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8181, float %8182, float %8183)  ; Dot3(ax,ay,az,bx,by,bz)
  %8190 = fdiv fast float 1.000000e+00, %8189
  %8191 = fmul fast float %8190, %8188
  %8192 = fmul fast float %8181, %8191
  %8193 = fmul fast float %8182, %8191
  %8194 = fadd fast float %8192, %8176
  %8195 = fadd fast float %8193, %8177
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = fsub fast float %8194, %8197
  %8200 = fsub fast float %8195, %8198
  %8201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.f32 %8201, 2
  %8203 = extractvalue %dx.types.CBufRet.f32 %8201, 3
  %8204 = fmul fast float %8199, %8202
  %8205 = fmul fast float %8200, %8203
  %8206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.i32 %8206, 3
  %8208 = icmp eq i32 %8207, 0
  br i1 %8208, label %8214, label %8209

; <label>:8209                                    ; preds = %8169
  %8210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8204, float %8205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.ResRet.f32 %8210, 2
  br label %8219

; <label>:8214                                    ; preds = %8169
  %8215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %8204, float %8205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8216 = extractvalue %dx.types.ResRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.ResRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.ResRet.f32 %8215, 2
  br label %8219

; <label>:8219                                    ; preds = %8214, %8209
  %8220 = phi float [ %8211, %8209 ], [ %8216, %8214 ]
  %8221 = phi float [ %8212, %8209 ], [ %8217, %8214 ]
  %8222 = phi float [ %8213, %8209 ], [ %8218, %8214 ]
  %8223 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8224 = fmul fast float %8223, %8220
  %8225 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8226 = fsub fast float %8191, %8225
  %8227 = fsub fast float %8226, %8224
  %8228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8227)  ; FMax(a,b)
  %8229 = fmul fast float %8228, %8221
  %8230 = call float @dx.op.binary.f32(i32 36, float %8222, float %8229)  ; FMin(a,b)
  %8231 = fmul fast float %8230, 0xBFF7154760000000
  %8232 = call float @dx.op.unary.f32(i32 21, float %8231)  ; Exp(value)
  %8233 = fmul fast float %8171, %8232
  br label %8234

; <label>:8234                                    ; preds = %8219, %8064
  %8235 = phi float [ %8233, %8219 ], [ %8065, %8064 ]
  %8236 = call float @dx.op.binary.f32(i32 36, float %8235, float %8235)  ; FMin(a,b)
  %8237 = call float @dx.op.binary.f32(i32 36, float %8235, float %8236)  ; FMin(a,b)
  %8238 = fcmp fast ogt float %8237, 0.000000e+00
  br i1 %8238, label %8239, label %8622, !dx.controlflow.hints !134

; <label>:8239                                    ; preds = %8234
  %8240 = fmul fast float %8235, %6957
  %8241 = fmul fast float %8235, %6958
  %8242 = fmul fast float %8235, %6959
  %8243 = fsub fast float %168, %5655
  %8244 = fcmp fast ogt float %8243, 0.000000e+00
  %8245 = fmul fast float %6946, 5.120000e+02
  %8246 = fmul fast float %6947, 5.120000e+02
  %8247 = fmul fast float %6948, 5.120000e+02
  %8248 = fadd fast float %8247, %168
  %8249 = fsub fast float %5655, %8248
  %8250 = fmul fast float %8249, 2.000000e+00
  %8251 = fadd fast float %8250, %8248
  %8252 = select i1 %8244, float %8251, float %8248
  %8253 = fsub fast float %8252, %168
  %8254 = call float @dx.op.dot3.f32(i32 55, float %8245, float %8246, float %8253, float %8245, float %8246, float %8253)  ; Dot3(ax,ay,az,bx,by,bz)
  %8255 = call float @dx.op.unary.f32(i32 25, float %8254)  ; Rsqrt(value)
  %8256 = fmul fast float %8255, %8245
  %8257 = fmul fast float %8255, %8246
  %8258 = fmul fast float %8255, %8253
  %8259 = fsub fast float %5655, %168
  %8260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8256, float %8257, float %8258)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = fdiv fast float 1.000000e+00, %8261
  %8263 = fmul fast float %8262, %8260
  %8264 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8243, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8265 = fcmp fast ogt float %8264, 0.000000e+00
  %8266 = fcmp fast olt float %8264, 0.000000e+00
  %8267 = zext i1 %8265 to i32
  %8268 = zext i1 %8266 to i32
  %8269 = sub nsw i32 %8267, %8268
  %8270 = sitofp i32 %8269 to float
  %8271 = fsub fast float %8252, %5655
  %8272 = call float @dx.op.dot3.f32(i32 55, float %8245, float %8246, float %8271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8273 = fcmp fast ogt float %8272, 0.000000e+00
  %8274 = fcmp fast olt float %8272, 0.000000e+00
  %8275 = zext i1 %8273 to i32
  %8276 = zext i1 %8274 to i32
  %8277 = sub nsw i32 %8275, %8276
  %8278 = sitofp i32 %8277 to float
  %8279 = fcmp fast une float %8270, %8278
  br i1 %8279, label %8280, label %8290

; <label>:8280                                    ; preds = %8239
  %8281 = fmul fast float %8263, %8258
  %8282 = fmul fast float %8263, %8257
  %8283 = fmul fast float %8263, %8256
  %8284 = fmul fast float %8283, %8283
  %8285 = fmul fast float %8282, %8282
  %8286 = fadd fast float %8284, %8285
  %8287 = fmul fast float %8281, %8281
  %8288 = fadd fast float %8286, %8287
  %8289 = call float @dx.op.unary.f32(i32 24, float %8288)  ; Sqrt(value)
  br label %8300

; <label>:8290                                    ; preds = %8239
  %8291 = icmp slt i32 %8269, 0
  br i1 %8291, label %8292, label %8300

; <label>:8292                                    ; preds = %8290
  %8293 = fsub fast float %168, %8252
  %8294 = fmul fast float %8245, %8245
  %8295 = fmul fast float %8246, %8246
  %8296 = fadd fast float %8294, %8295
  %8297 = fmul fast float %8293, %8293
  %8298 = fadd fast float %8296, %8297
  %8299 = call float @dx.op.unary.f32(i32 24, float %8298)  ; Sqrt(value)
  br label %8300

; <label>:8300                                    ; preds = %8292, %8290, %8280
  %8301 = phi float [ %8289, %8280 ], [ %8299, %8292 ], [ 0.000000e+00, %8290 ]
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = select i1 %8244, float -0.000000e+00, float %8302
  %8304 = fmul fast float %5652, 0x3FF7154760000000
  %8305 = fmul fast float %8304, %8303
  %8306 = fmul fast float %5653, 0x3FF7154760000000
  %8307 = fmul fast float %8306, %8303
  %8308 = fmul fast float %5654, 0x3FF7154760000000
  %8309 = fmul fast float %8308, %8303
  %8310 = call float @dx.op.unary.f32(i32 21, float %8305)  ; Exp(value)
  %8311 = call float @dx.op.unary.f32(i32 21, float %8307)  ; Exp(value)
  %8312 = call float @dx.op.unary.f32(i32 21, float %8309)  ; Exp(value)
  %8313 = call float @dx.op.unary.f32(i32 7, float %8310)  ; Saturate(value)
  %8314 = call float @dx.op.unary.f32(i32 7, float %8311)  ; Saturate(value)
  %8315 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8316 = fmul fast float %8240, %8313
  %8317 = fmul fast float %8241, %8314
  %8318 = fmul fast float %8242, %8315
  %8319 = fsub fast float %6946, %186
  %8320 = fsub fast float %6947, %187
  %8321 = fsub fast float %6948, %188
  %8322 = call float @dx.op.dot3.f32(i32 55, float %8319, float %8320, float %8321, float %8319, float %8320, float %8321)  ; Dot3(ax,ay,az,bx,by,bz)
  %8323 = call float @dx.op.unary.f32(i32 25, float %8322)  ; Rsqrt(value)
  %8324 = fmul fast float %8323, %8319
  %8325 = fmul fast float %8323, %8320
  %8326 = fmul fast float %8323, %8321
  %8327 = call float @dx.op.dot3.f32(i32 55, float %6946, float %6947, float %6948, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %8328 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %8324, float %8325, float %8326)  ; Dot3(ax,ay,az,bx,by,bz)
  %8329 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8330 = fmul fast float %8329, %8329
  %8331 = fmul fast float %8330, %5908
  %8332 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8333 = fmul fast float %8332, %8329
  %8334 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %8324, float %8325, float %8326)  ; Dot3(ax,ay,az,bx,by,bz)
  %8335 = fmul fast float %8334, %8334
  %8336 = call float @dx.op.unary.f32(i32 6, float %8327)  ; FAbs(value)
  %8337 = fsub fast float 1.000000e+00, %5901
  %8338 = fmul fast float %5883, %5883
  %8339 = fmul fast float %8338, %8337
  %8340 = fadd fast float %8339, %5901
  %8341 = bitcast float %8340 to i32
  %8342 = ashr i32 %8341, 1
  %8343 = add nsw i32 %8342, 532487669
  %8344 = bitcast i32 %8343 to float
  %8345 = fadd fast float %8344, %5883
  %8346 = fmul fast float %5901, %8335
  %8347 = fsub fast float 1.000000e+00, %8335
  %8348 = fadd fast float %8347, %8346
  %8349 = fmul fast float %8336, %8336
  %8350 = fmul fast float %8349, %8337
  %8351 = fadd fast float %8350, %5901
  %8352 = bitcast float %8351 to i32
  %8353 = ashr i32 %8352, 1
  %8354 = add nsw i32 %8353, 532487669
  %8355 = bitcast i32 %8354 to float
  %8356 = fadd fast float %8355, %8336
  %8357 = fmul fast float %8348, %8348
  %8358 = fmul fast float %8357, %8345
  %8359 = fmul fast float %8358, %8356
  %8360 = fdiv fast float 0x3FF0A00000000000, %8359
  %8361 = fmul fast float %8360, %5901
  %8362 = fmul fast float %6144, 0x3FF9999980000000
  %8363 = fsub fast float 5.000000e+00, %8362
  %8364 = call float @dx.op.unary.f32(i32 6, float %8328)  ; FAbs(value)
  %8365 = fsub fast float 1.000000e+00, %8364
  %8366 = fmul fast float %6144, 0x41D9660740000000
  %8367 = fadd fast float %8366, 0xC1EFBF8940000000
  %8368 = bitcast float %8365 to i32
  %8369 = sitofp i32 %8368 to float
  %8370 = fmul fast float %8369, %8363
  %8371 = fadd fast float %8367, %8370
  %8372 = fptosi float %8371 to i32
  %8373 = bitcast i32 %8372 to float
  %8374 = fsub fast float 1.000000e+00, %5838
  %8375 = fsub fast float 1.000000e+00, %5839
  %8376 = fsub fast float 1.000000e+00, %5881
  %8377 = fmul fast float %8373, %8374
  %8378 = fmul fast float %8373, %8375
  %8379 = fmul fast float %8373, %8376
  %8380 = fadd fast float %8377, %5838
  %8381 = fadd fast float %8378, %5839
  %8382 = fadd fast float %8379, %5881
  br i1 %6167, label %8383, label %8406

; <label>:8383                                    ; preds = %8300
  %8384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %8364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8385 = extractvalue %dx.types.ResRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.ResRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.ResRet.f32 %8384, 2
  %8388 = fadd fast float %8385, -5.000000e-01
  %8389 = fadd fast float %8386, -5.000000e-01
  %8390 = fadd fast float %8387, -5.000000e-01
  %8391 = fmul fast float %5838, 4.000000e+00
  %8392 = fmul fast float %8391, %8374
  %8393 = fmul fast float %8392, %8388
  %8394 = fmul fast float %5839, 4.000000e+00
  %8395 = fmul fast float %8394, %8375
  %8396 = fmul fast float %8395, %8389
  %8397 = fmul fast float %5881, 4.000000e+00
  %8398 = fmul fast float %8397, %8376
  %8399 = fmul fast float %8398, %8390
  %8400 = fadd fast float %8393, %8380
  %8401 = fadd fast float %8396, %8381
  %8402 = fadd fast float %8399, %8382
  %8403 = call float @dx.op.unary.f32(i32 7, float %8400)  ; Saturate(value)
  %8404 = call float @dx.op.unary.f32(i32 7, float %8401)  ; Saturate(value)
  %8405 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  br label %8406

; <label>:8406                                    ; preds = %8383, %8300
  %8407 = phi float [ %8403, %8383 ], [ %8380, %8300 ]
  %8408 = phi float [ %8404, %8383 ], [ %8381, %8300 ]
  %8409 = phi float [ %8405, %8383 ], [ %8382, %8300 ]
  %8410 = fmul fast float %8327, 9.843750e-01
  %8411 = fadd fast float %8410, 7.812500e-03
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8411, float %6148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = extractvalue %dx.types.ResRet.f32 %8412, 3
  %8417 = fsub fast float %8415, %8413
  %8418 = fsub fast float %8416, %8414
  %8419 = fmul fast float %8417, %6154
  %8420 = fmul fast float %8418, %6154
  %8421 = fadd fast float %8419, %8413
  %8422 = fadd fast float %8420, %8414
  %8423 = fmul fast float %8421, %5838
  %8424 = fmul fast float %8421, %5839
  %8425 = fmul fast float %8421, %5881
  %8426 = fadd fast float %8423, %8422
  %8427 = fadd fast float %8424, %8422
  %8428 = fadd fast float %8425, %8422
  br i1 %6167, label %8429, label %8452

; <label>:8429                                    ; preds = %8406
  %8430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %8327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8431 = extractvalue %dx.types.ResRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.ResRet.f32 %8430, 1
  %8433 = extractvalue %dx.types.ResRet.f32 %8430, 2
  %8434 = fadd fast float %8431, -5.000000e-01
  %8435 = fadd fast float %8432, -5.000000e-01
  %8436 = fadd fast float %8433, -5.000000e-01
  %8437 = fmul fast float %5838, 4.000000e+00
  %8438 = fmul fast float %8437, %8374
  %8439 = fmul fast float %8438, %8434
  %8440 = fmul fast float %5839, 4.000000e+00
  %8441 = fmul fast float %8440, %8375
  %8442 = fmul fast float %8441, %8435
  %8443 = fmul fast float %5881, 4.000000e+00
  %8444 = fmul fast float %8443, %8376
  %8445 = fmul fast float %8444, %8436
  %8446 = fadd fast float %8439, %8426
  %8447 = fadd fast float %8442, %8427
  %8448 = fadd fast float %8445, %8428
  %8449 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8450 = call float @dx.op.unary.f32(i32 7, float %8447)  ; Saturate(value)
  %8451 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  br label %8452

; <label>:8452                                    ; preds = %8429, %8406
  %8453 = phi float [ %8449, %8429 ], [ %8426, %8406 ]
  %8454 = phi float [ %8450, %8429 ], [ %8427, %8406 ]
  %8455 = phi float [ %8451, %8429 ], [ %8428, %8406 ]
  %8456 = call float @dx.op.binary.f32(i32 35, float %8454, float %8455)  ; FMax(a,b)
  %8457 = call float @dx.op.binary.f32(i32 35, float %8453, float %8456)  ; FMax(a,b)
  %8458 = fsub fast float 1.000000e+00, %8457
  %8459 = call float @dx.op.binary.f32(i32 35, float %8336, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8460 = fdiv fast float %4553, %8459
  %8461 = fmul fast float %6717, %8460
  %8462 = fmul fast float %6719, %8460
  %8463 = fmul fast float %6721, %8460
  %8464 = call float @dx.op.unary.f32(i32 21, float %8461)  ; Exp(value)
  %8465 = call float @dx.op.unary.f32(i32 21, float %8462)  ; Exp(value)
  %8466 = call float @dx.op.unary.f32(i32 21, float %8463)  ; Exp(value)
  %8467 = call float @dx.op.unary.f32(i32 7, float %8464)  ; Saturate(value)
  %8468 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8469 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8470 = select i1 %6714, float %8467, float 0.000000e+00
  %8471 = select i1 %6715, float %8468, float 0.000000e+00
  %8472 = select i1 %6716, float %8469, float 0.000000e+00
  %8473 = fsub fast float -0.000000e+00, %5841
  %8474 = fsub fast float -0.000000e+00, %5842
  %8475 = fsub fast float -0.000000e+00, %5843
  %8476 = call float @dx.op.dot3.f32(i32 55, float %6946, float %6947, float %6948, float %8473, float %8474, float %8475)  ; Dot3(ax,ay,az,bx,by,bz)
  %8477 = call float @dx.op.unary.f32(i32 7, float %8476)  ; Saturate(value)
  %8478 = fmul fast float %8477, 9.843750e-01
  %8479 = fadd fast float %8478, 7.812500e-03
  %8480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8479, float %6148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8481 = extractvalue %dx.types.ResRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.ResRet.f32 %8480, 1
  %8483 = extractvalue %dx.types.ResRet.f32 %8480, 2
  %8484 = extractvalue %dx.types.ResRet.f32 %8480, 3
  %8485 = fsub fast float %8483, %8481
  %8486 = fsub fast float %8484, %8482
  %8487 = fmul fast float %8485, %6154
  %8488 = fmul fast float %8486, %6154
  %8489 = fadd fast float %8487, %8481
  %8490 = fadd fast float %8488, %8482
  %8491 = fmul fast float %8489, %5838
  %8492 = fmul fast float %8489, %5839
  %8493 = fmul fast float %8489, %5881
  %8494 = fadd fast float %8491, %8490
  %8495 = fadd fast float %8492, %8490
  %8496 = fadd fast float %8493, %8490
  br i1 %6167, label %8497, label %8520

; <label>:8497                                    ; preds = %8452
  %8498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %8477, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8499 = extractvalue %dx.types.ResRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.ResRet.f32 %8498, 1
  %8501 = extractvalue %dx.types.ResRet.f32 %8498, 2
  %8502 = fadd fast float %8499, -5.000000e-01
  %8503 = fadd fast float %8500, -5.000000e-01
  %8504 = fadd fast float %8501, -5.000000e-01
  %8505 = fmul fast float %5838, 4.000000e+00
  %8506 = fmul fast float %8505, %8374
  %8507 = fmul fast float %8506, %8502
  %8508 = fmul fast float %5839, 4.000000e+00
  %8509 = fmul fast float %8508, %8375
  %8510 = fmul fast float %8509, %8503
  %8511 = fmul fast float %5881, 4.000000e+00
  %8512 = fmul fast float %8511, %8376
  %8513 = fmul fast float %8512, %8504
  %8514 = fadd fast float %8507, %8494
  %8515 = fadd fast float %8510, %8495
  %8516 = fadd fast float %8513, %8496
  %8517 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8518 = call float @dx.op.unary.f32(i32 7, float %8515)  ; Saturate(value)
  %8519 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  br label %8520

; <label>:8520                                    ; preds = %8497, %8452
  %8521 = phi float [ %8517, %8497 ], [ %8494, %8452 ]
  %8522 = phi float [ %8518, %8497 ], [ %8495, %8452 ]
  %8523 = phi float [ %8519, %8497 ], [ %8496, %8452 ]
  %8524 = call float @dx.op.binary.f32(i32 35, float %8522, float %8523)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 35, float %8521, float %8524)  ; FMax(a,b)
  %8526 = fsub fast float 1.000000e+00, %8525
  %8527 = fmul fast float %5898, %6781
  %8528 = fadd fast float %6775, %8527
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fsub fast float %6946, %5889
  %8531 = fsub fast float %6947, %5890
  %8532 = fsub fast float %6948, %5891
  %8533 = call float @dx.op.dot3.f32(i32 55, float %8530, float %8531, float %8532, float %8530, float %8531, float %8532)  ; Dot3(ax,ay,az,bx,by,bz)
  %8534 = call float @dx.op.unary.f32(i32 25, float %8533)  ; Rsqrt(value)
  %8535 = fmul fast float %8534, %8530
  %8536 = fmul fast float %8534, %8531
  %8537 = fmul fast float %8534, %8532
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8473, float %8474, float %8475, float %8535, float %8536, float %8537)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = fmul fast float %8538, %8538
  %8540 = call float @dx.op.unary.f32(i32 6, float %8477)  ; FAbs(value)
  %8541 = call float @dx.op.binary.f32(i32 35, float %8529, float 0x3F847AE140000000)  ; FMax(a,b)
  %8542 = fmul fast float %8541, %8541
  %8543 = fmul fast float %8542, %8542
  %8544 = fsub fast float 1.000000e+00, %8543
  %8545 = fmul fast float %8338, %8544
  %8546 = fadd fast float %8545, %8543
  %8547 = bitcast float %8546 to i32
  %8548 = ashr i32 %8547, 1
  %8549 = add nsw i32 %8548, 532487669
  %8550 = bitcast i32 %8549 to float
  %8551 = fadd fast float %8550, %5883
  %8552 = fmul fast float %8543, %8539
  %8553 = fsub fast float 1.000000e+00, %8539
  %8554 = fadd fast float %8553, %8552
  %8555 = fmul fast float %8540, %8540
  %8556 = fmul fast float %8555, %8544
  %8557 = fadd fast float %8556, %8543
  %8558 = bitcast float %8557 to i32
  %8559 = ashr i32 %8558, 1
  %8560 = add nsw i32 %8559, 532487669
  %8561 = bitcast i32 %8560 to float
  %8562 = fadd fast float %8561, %8540
  %8563 = fmul fast float %8554, %8554
  %8564 = fmul fast float %8563, %8551
  %8565 = fmul fast float %8564, %8562
  %8566 = fdiv fast float 0x3FF0A00000000000, %8565
  %8567 = fmul fast float %8566, %8543
  %8568 = fmul fast float %8477, %8470
  %8569 = fmul fast float %8477, %8471
  %8570 = fmul fast float %8477, %8472
  %8571 = fmul fast float %8568, %8526
  %8572 = fmul fast float %8571, %8567
  %8573 = fmul fast float %8569, %8526
  %8574 = fmul fast float %8573, %8567
  %8575 = fmul fast float %8570, %8526
  %8576 = fmul fast float %8575, %8567
  %8577 = fmul fast float %8407, %8361
  %8578 = fmul fast float %8408, %8361
  %8579 = fmul fast float %8409, %8361
  %8580 = fsub fast float 1.000000e+00, %8328
  %8581 = bitcast float %8580 to i32
  %8582 = sitofp i32 %8581 to float
  %8583 = fmul fast float %8582, 5.000000e+00
  %8584 = fadd fast float %8583, 0xC1EFBF8940000000
  %8585 = fptosi float %8584 to i32
  %8586 = bitcast i32 %8585 to float
  %8587 = fmul fast float %8586, %5201
  %8588 = fmul fast float %8458, %8587
  %8589 = fmul fast float %8588, %6709
  %8590 = fmul fast float %8588, %6710
  %8591 = fmul fast float %8588, %6711
  %8592 = fadd fast float %8589, %8577
  %8593 = fadd fast float %8590, %8578
  %8594 = fadd fast float %8591, %8579
  %8595 = fmul fast float %8592, %8333
  %8596 = fmul fast float %8593, %8333
  %8597 = fmul fast float %8594, %8333
  %8598 = fmul fast float %8333, %8316
  %8599 = fmul fast float %8598, %8458
  %8600 = fmul fast float %8333, %8317
  %8601 = fmul fast float %8600, %8458
  %8602 = fmul fast float %8333, %8318
  %8603 = fmul fast float %8602, %8458
  %8604 = fadd fast float %8595, %8572
  %8605 = fadd fast float %8596, %8574
  %8606 = fadd fast float %8597, %8576
  %8607 = fmul fast float %8604, %8316
  %8608 = fmul fast float %8605, %8317
  %8609 = fmul fast float %8606, %8318
  %8610 = fadd fast float %8599, %6693
  %8611 = fmul fast float %8610, %5226
  %8612 = fadd fast float %8601, %6694
  %8613 = fmul fast float %8612, %5226
  %8614 = fadd fast float %8603, %6695
  %8615 = fmul fast float %8614, %5226
  %8616 = fadd fast float %8607, %6932
  %8617 = fmul fast float %8616, %5226
  %8618 = fadd fast float %8608, %6936
  %8619 = fmul fast float %8618, %5226
  %8620 = fadd fast float %8609, %6940
  %8621 = fmul fast float %8620, %5226
  br label %8622

; <label>:8622                                    ; preds = %8520, %8234, %6916
  %8623 = phi float [ %6933, %6916 ], [ %6933, %8234 ], [ %8617, %8520 ]
  %8624 = phi float [ %6937, %6916 ], [ %6937, %8234 ], [ %8619, %8520 ]
  %8625 = phi float [ %6941, %6916 ], [ %6941, %8234 ], [ %8621, %8520 ]
  %8626 = phi float [ %6805, %6916 ], [ %6805, %8234 ], [ %8611, %8520 ]
  %8627 = phi float [ %6806, %6916 ], [ %6806, %8234 ], [ %8613, %8520 ]
  %8628 = phi float [ %6807, %6916 ], [ %6807, %8234 ], [ %8615, %8520 ]
  %8629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.i32 %8629, 0
  %8631 = icmp eq i32 %8630, 0
  br i1 %8631, label %9449, label %8632

; <label>:8632                                    ; preds = %8622
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 2
  %8635 = extractvalue %dx.types.CBufRet.f32 %8633, 3
  %8636 = fmul fast float %8634, %111
  %8637 = fmul fast float %8635, %112
  %8638 = fptoui float %8636 to i32
  %8639 = fptoui float %8637 to i32
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8643 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8644 = fadd fast float %99, -4.000000e+00
  %8645 = call float @dx.op.binary.f32(i32 35, float %8644, float 0.000000e+00)  ; FMax(a,b)
  %8646 = fadd fast float %8645, %8641
  %8647 = fmul fast float %8646, %8642
  %8648 = call float @dx.op.unary.f32(i32 23, float %8647)  ; Log(value)
  %8649 = fmul fast float %8648, %8643
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8652 = fmul fast float %8649, %8651
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.i32 %8654, 1
  %8656 = add i32 %8655, -1
  %8657 = uitofp i32 %8655 to float
  %8658 = fmul fast float %8657, %8653
  %8659 = fptoui float %8658 to i32
  %8660 = call i32 @dx.op.binary.i32(i32 40, i32 %8659, i32 %8656)  ; UMin(a,b)
  %8661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.i32 %8661, 2
  %8663 = extractvalue %dx.types.CBufRet.i32 %8661, 3
  %8664 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8639, i32 %8662, i32 %8638)  ; UMad(a,b,c)
  %8665 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8660, i32 %8663, i32 %8664)  ; UMad(a,b,c)
  %8666 = add nsw i32 %8630, -1
  %8667 = call i32 @dx.op.binary.i32(i32 37, i32 %8666, i32 0)  ; IMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %8669 = fptoui float %8668 to i32
  %8670 = lshr i32 %8669, 5
  %8671 = call i32 @dx.op.binary.i32(i32 40, i32 %8670, i32 8191)  ; UMin(a,b)
  %8672 = shl i32 %8671, 2
  %8673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8672, i32 undef)  ; BufferLoad(srv,index,wot)
  %8674 = extractvalue %dx.types.ResRet.i32 %8673, 0
  %8675 = lshr i32 %8674, 16
  %8676 = and i32 %8674, 65535
  %8677 = lshr i32 %8674, 21
  %8678 = lshr i32 %8676, 5
  %8679 = call i32 @dx.op.binary.i32(i32 40, i32 %8678, i32 %8667)  ; UMin(a,b)
  %8680 = icmp ugt i32 %8677, %8679
  br i1 %8680, label %9449, label %8681

; <label>:8681                                    ; preds = %8632
  br label %8682

; <label>:8682                                    ; preds = %9439, %8681
  %8683 = phi i32 [ %9446, %9439 ], [ %8677, %8681 ]
  %8684 = phi float [ %9440, %9439 ], [ %8623, %8681 ]
  %8685 = phi float [ %9441, %9439 ], [ %8624, %8681 ]
  %8686 = phi float [ %9442, %9439 ], [ %8625, %8681 ]
  %8687 = phi float [ %9443, %9439 ], [ %8626, %8681 ]
  %8688 = phi float [ %9444, %9439 ], [ %8627, %8681 ]
  %8689 = phi float [ %9445, %9439 ], [ %8628, %8681 ]
  %8690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.i32 %8690, 0
  %8692 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8665, i32 %8691, i32 %8683)  ; UMad(a,b,c)
  %8693 = shl i32 %8692, 2
  %8694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8693, i32 undef)  ; BufferLoad(srv,index,wot)
  %8695 = extractvalue %dx.types.ResRet.i32 %8694, 0
  %8696 = shl i32 %8683, 5
  %8697 = sub nsw i32 %8675, %8696
  %8698 = call i32 @dx.op.binary.i32(i32 37, i32 %8697, i32 0)  ; IMax(a,b)
  %8699 = call i32 @dx.op.binary.i32(i32 38, i32 %8698, i32 31)  ; IMin(a,b)
  %8700 = sub nsw i32 1, %8675
  %8701 = add nsw i32 %8700, %8676
  %8702 = call i32 @dx.op.binary.i32(i32 37, i32 %8701, i32 0)  ; IMax(a,b)
  %8703 = call i32 @dx.op.binary.i32(i32 38, i32 %8702, i32 32)  ; IMin(a,b)
  %8704 = and i32 %8703, 31
  %8705 = shl i32 -1, %8704
  %8706 = xor i32 %8705, -1
  %8707 = and i32 %8699, 31
  %8708 = shl i32 %8706, %8707
  %8709 = icmp eq i32 %8703, 32
  %8710 = select i1 %8709, i32 -1, i32 %8708
  %8711 = and i32 %8710, %8695
  %8712 = icmp eq i32 %8711, 0
  br i1 %8712, label %9439, label %8713

; <label>:8713                                    ; preds = %8682
  br label %8714

; <label>:8714                                    ; preds = %8849, %8713
  %8715 = phi i32 [ %8726, %8849 ], [ %8711, %8713 ]
  %8716 = phi float [ %8850, %8849 ], [ %8684, %8713 ]
  %8717 = phi float [ %8851, %8849 ], [ %8685, %8713 ]
  %8718 = phi float [ %8852, %8849 ], [ %8686, %8713 ]
  %8719 = phi float [ %8853, %8849 ], [ %8687, %8713 ]
  %8720 = phi float [ %8854, %8849 ], [ %8688, %8713 ]
  %8721 = phi float [ %8855, %8849 ], [ %8689, %8713 ]
  %8722 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8715)  ; FirstbitLo(value)
  %8723 = add i32 %8722, %8696
  %8724 = and i32 %8722, 31
  %8725 = shl i32 1, %8724
  %8726 = xor i32 %8725, %8715
  %8727 = mul i32 %8723, 112
  %8728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8727, i32 undef)  ; BufferLoad(srv,index,wot)
  %8729 = extractvalue %dx.types.ResRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.ResRet.f32 %8728, 1
  %8731 = extractvalue %dx.types.ResRet.f32 %8728, 2
  %8732 = or i32 %8727, 12
  %8733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8732, i32 undef)  ; BufferLoad(srv,index,wot)
  %8734 = extractvalue %dx.types.ResRet.f32 %8733, 0
  %8735 = add i32 %8727, 16
  %8736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8735, i32 undef)  ; BufferLoad(srv,index,wot)
  %8737 = extractvalue %dx.types.ResRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.ResRet.f32 %8736, 1
  %8739 = extractvalue %dx.types.ResRet.f32 %8736, 2
  %8740 = add i32 %8727, 28
  %8741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8740, i32 undef)  ; BufferLoad(srv,index,wot)
  %8742 = extractvalue %dx.types.ResRet.i32 %8741, 0
  %8743 = add i32 %8727, 44
  %8744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8743, i32 undef)  ; BufferLoad(srv,index,wot)
  %8745 = extractvalue %dx.types.ResRet.f32 %8744, 0
  %8746 = add i32 %8727, 48
  %8747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8746, i32 undef)  ; BufferLoad(srv,index,wot)
  %8748 = extractvalue %dx.types.ResRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.ResRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.ResRet.f32 %8747, 2
  %8751 = extractvalue %dx.types.ResRet.f32 %8747, 3
  %8752 = add i32 %8727, 64
  %8753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8752, i32 undef)  ; BufferLoad(srv,index,wot)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.ResRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.ResRet.f32 %8753, 2
  %8757 = extractvalue %dx.types.ResRet.f32 %8753, 3
  %8758 = add i32 %8727, 80
  %8759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8758, i32 undef)  ; BufferLoad(srv,index,wot)
  %8760 = extractvalue %dx.types.ResRet.f32 %8759, 1
  %8761 = extractvalue %dx.types.ResRet.f32 %8759, 2
  %8762 = add i32 %8727, 92
  %8763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8762, i32 undef)  ; BufferLoad(srv,index,wot)
  %8764 = extractvalue %dx.types.ResRet.i32 %8763, 0
  %8765 = call float @dx.op.dot3.f32(i32 55, float %8729, float %8730, float %8731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8766 = select i1 %260, float %8760, float %8729
  %8767 = select i1 %260, float %8765, float %8730
  %8768 = select i1 %260, float %8761, float %8731
  %8769 = and i32 %8764, 65535
  %8770 = uitofp i32 %8769 to float
  %8771 = lshr i32 %8764, 16
  %8772 = uitofp i32 %8771 to float
  %8773 = and i32 %8742, 65535
  %8774 = and i32 %8742, 50331648
  %8775 = icmp slt i32 %8742, 0
  %8776 = icmp eq i32 %8774, 33554432
  %8777 = fsub fast float %8748, %166
  %8778 = fsub fast float %8749, %167
  %8779 = fsub fast float %8750, %168
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8777, float %8778, float %8779, float %8777, float %8778, float %8779)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = call float @dx.op.unary.f32(i32 24, float %8780)  ; Sqrt(value)
  %8782 = fdiv fast float 1.000000e+00, %8781
  %8783 = fmul fast float %8782, %8777
  %8784 = fmul fast float %8782, %8778
  %8785 = fmul fast float %8782, %8779
  %8786 = fadd fast float %8781, %8734
  %8787 = fdiv fast float 1.000000e+00, %8786
  %8788 = fmul float %8745, %8787
  %8789 = fmul float %8788, %8788
  %8790 = call float @dx.op.unary.f32(i32 7, float %8789)  ; Saturate(value)
  br i1 %8776, label %8791, label %8812

; <label>:8791                                    ; preds = %8714
  %8792 = fmul fast float %8756, %8737
  %8793 = fmul fast float %8756, %8738
  %8794 = fmul fast float %8756, %8739
  %8795 = fadd fast float %8777, %8792
  %8796 = fadd fast float %8778, %8793
  %8797 = fadd fast float %8779, %8794
  %8798 = call float @dx.op.dot3.f32(i32 55, float %8795, float %8796, float %8797, float %8795, float %8796, float %8797)  ; Dot3(ax,ay,az,bx,by,bz)
  %8799 = call float @dx.op.unary.f32(i32 25, float %8798)  ; Rsqrt(value)
  %8800 = fmul fast float %8799, %8795
  %8801 = fmul fast float %8799, %8796
  %8802 = fmul fast float %8799, %8797
  %8803 = fsub fast float %166, %8748
  %8804 = fsub fast float %167, %8749
  %8805 = fsub fast float %168, %8750
  %8806 = fsub fast float -0.000000e+00, %8803
  %8807 = fsub fast float -0.000000e+00, %8804
  %8808 = fsub fast float -0.000000e+00, %8805
  %8809 = call float @dx.op.dot3.f32(i32 55, float %8806, float %8807, float %8808, float %8737, float %8738, float %8739)  ; Dot3(ax,ay,az,bx,by,bz)
  %8810 = fcmp fast ogt float %8809, 0.000000e+00
  %8811 = uitofp i1 %8810 to float
  br label %8812

; <label>:8812                                    ; preds = %8791, %8714
  %8813 = phi float [ %8811, %8791 ], [ 1.000000e+00, %8714 ]
  %8814 = phi float [ %8800, %8791 ], [ %8783, %8714 ]
  %8815 = phi float [ %8801, %8791 ], [ %8784, %8714 ]
  %8816 = phi float [ %8802, %8791 ], [ %8785, %8714 ]
  %8817 = call float @dx.op.dot3.f32(i32 55, float %8737, float %8738, float %8739, float %8814, float %8815, float %8816)  ; Dot3(ax,ay,az,bx,by,bz)
  %8818 = fmul fast float %8817, %8817
  %8819 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8820 = fsub fast float 1.000000e+00, %8819
  %8821 = fmul fast float %8820, 5.000000e-01
  %8822 = fcmp fast ogt float %8817, 0.000000e+00
  %8823 = fsub fast float 1.000000e+00, %8821
  %8824 = select i1 %8822, float %8821, float %8823
  %8825 = fmul fast float %8824, %8772
  %8826 = fadd fast float %8825, %8770
  %8827 = fmul fast float %8826, 0x3EF0001000000000
  %8828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8827, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = fmul fast float %8817, %8754
  %8831 = fadd fast float %8830, %8755
  %8832 = call float @dx.op.unary.f32(i32 7, float %8831)  ; Saturate(value)
  %8833 = select i1 %8776, float 1.000000e+00, float %8832
  %8834 = select i1 %8776, float %8832, float 1.000000e+00
  %8835 = fmul fast float %8781, %8751
  %8836 = fsub fast float 1.000000e+00, %8835
  %8837 = fmul fast float %8836, %8757
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fmul fast float %8838, %8834
  %8840 = fmul fast float %8839, 2.000000e+00
  %8841 = fsub fast float 3.000000e+00, %8840
  %8842 = fmul fast float %8829, %8813
  %8843 = fmul fast float %8839, %8839
  %8844 = fmul fast float %8843, %8842
  %8845 = fmul fast float %8844, %8841
  %8846 = call float @dx.op.binary.f32(i32 36, float %8845, float %8845)  ; FMin(a,b)
  %8847 = call float @dx.op.binary.f32(i32 36, float %8845, float %8846)  ; FMin(a,b)
  %8848 = fcmp fast ogt float %8847, 0.000000e+00
  br i1 %8848, label %8857, label %8849, !dx.controlflow.hints !135

; <label>:8849                                    ; preds = %9392, %9003, %8812
  %8850 = phi float [ %8716, %9003 ], [ %8716, %8812 ], [ %9435, %9392 ]
  %8851 = phi float [ %8717, %9003 ], [ %8717, %8812 ], [ %9436, %9392 ]
  %8852 = phi float [ %8718, %9003 ], [ %8718, %8812 ], [ %9437, %9392 ]
  %8853 = phi float [ %8719, %9003 ], [ %8719, %8812 ], [ %9429, %9392 ]
  %8854 = phi float [ %8720, %9003 ], [ %8720, %8812 ], [ %9430, %9392 ]
  %8855 = phi float [ %8721, %9003 ], [ %8721, %8812 ], [ %9431, %9392 ]
  %8856 = icmp eq i32 %8715, %8725
  br i1 %8856, label %9438, label %8714

; <label>:8857                                    ; preds = %8812
  %8858 = icmp eq i32 %8773, 255
  br i1 %8858, label %9003, label %8859, !dx.controlflow.hints !136

; <label>:8859                                    ; preds = %8857
  %8860 = mul nuw nsw i32 %8773, 176
  %8861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8860, i32 undef)  ; BufferLoad(srv,index,wot)
  %8862 = extractvalue %dx.types.ResRet.f32 %8861, 0
  %8863 = extractvalue %dx.types.ResRet.f32 %8861, 1
  %8864 = extractvalue %dx.types.ResRet.f32 %8861, 2
  %8865 = extractvalue %dx.types.ResRet.f32 %8861, 3
  %8866 = add nuw nsw i32 %8860, 16
  %8867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8866, i32 undef)  ; BufferLoad(srv,index,wot)
  %8868 = extractvalue %dx.types.ResRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.ResRet.f32 %8867, 1
  %8870 = add nuw nsw i32 %8860, 32
  %8871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8870, i32 undef)  ; BufferLoad(srv,index,wot)
  %8872 = extractvalue %dx.types.ResRet.f32 %8871, 0
  %8873 = extractvalue %dx.types.ResRet.f32 %8871, 1
  %8874 = extractvalue %dx.types.ResRet.f32 %8871, 2
  %8875 = add nuw nsw i32 %8860, 48
  %8876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8875, i32 undef)  ; BufferLoad(srv,index,wot)
  %8877 = extractvalue %dx.types.ResRet.f32 %8876, 0
  %8878 = extractvalue %dx.types.ResRet.f32 %8876, 1
  %8879 = extractvalue %dx.types.ResRet.f32 %8876, 2
  %8880 = extractvalue %dx.types.ResRet.f32 %8876, 3
  %8881 = add nuw nsw i32 %8860, 64
  %8882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8881, i32 undef)  ; BufferLoad(srv,index,wot)
  %8883 = extractvalue %dx.types.ResRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.ResRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.ResRet.f32 %8882, 2
  %8886 = extractvalue %dx.types.ResRet.f32 %8882, 3
  %8887 = add nuw nsw i32 %8860, 80
  %8888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8887, i32 undef)  ; BufferLoad(srv,index,wot)
  %8889 = extractvalue %dx.types.ResRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.ResRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.ResRet.f32 %8888, 2
  %8892 = extractvalue %dx.types.ResRet.f32 %8888, 3
  %8893 = add nuw nsw i32 %8860, 96
  %8894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8893, i32 undef)  ; BufferLoad(srv,index,wot)
  %8895 = extractvalue %dx.types.ResRet.f32 %8894, 0
  %8896 = extractvalue %dx.types.ResRet.f32 %8894, 1
  %8897 = extractvalue %dx.types.ResRet.f32 %8894, 2
  %8898 = extractvalue %dx.types.ResRet.f32 %8894, 3
  %8899 = bitcast float %8869 to i32
  %8900 = fmul fast float %8874, %118
  %8901 = fmul fast float %8874, %119
  %8902 = fmul fast float %8874, %120
  %8903 = fadd fast float %8900, %166
  %8904 = fadd fast float %8901, %167
  %8905 = fadd fast float %8902, %168
  %8906 = fmul fast float %8903, %8877
  %8907 = call float @dx.op.tertiary.f32(i32 46, float %8904, float %8883, float %8906)  ; FMad(a,b,c)
  %8908 = call float @dx.op.tertiary.f32(i32 46, float %8905, float %8889, float %8907)  ; FMad(a,b,c)
  %8909 = fadd fast float %8908, %8895
  %8910 = fmul fast float %8903, %8878
  %8911 = call float @dx.op.tertiary.f32(i32 46, float %8904, float %8884, float %8910)  ; FMad(a,b,c)
  %8912 = call float @dx.op.tertiary.f32(i32 46, float %8905, float %8890, float %8911)  ; FMad(a,b,c)
  %8913 = fadd fast float %8912, %8896
  %8914 = fmul fast float %8903, %8879
  %8915 = call float @dx.op.tertiary.f32(i32 46, float %8904, float %8885, float %8914)  ; FMad(a,b,c)
  %8916 = call float @dx.op.tertiary.f32(i32 46, float %8905, float %8891, float %8915)  ; FMad(a,b,c)
  %8917 = fadd fast float %8916, %8897
  %8918 = fmul fast float %8903, %8880
  %8919 = call float @dx.op.tertiary.f32(i32 46, float %8904, float %8886, float %8918)  ; FMad(a,b,c)
  %8920 = call float @dx.op.tertiary.f32(i32 46, float %8905, float %8892, float %8919)  ; FMad(a,b,c)
  %8921 = fadd fast float %8920, %8898
  %8922 = fdiv fast float %8909, %8921
  %8923 = fdiv fast float %8913, %8921
  %8924 = fdiv fast float %8917, %8921
  %8925 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8924)  ; FMax(a,b)
  %8926 = fmul fast float %273, 0x401921FB60000000
  %8927 = call float @dx.op.unary.f32(i32 13, float %8926)  ; Sin(value)
  %8928 = call float @dx.op.unary.f32(i32 12, float %8926)  ; Cos(value)
  %8929 = fmul fast float %8928, %8873
  %8930 = call float @dx.op.tertiary.f32(i32 46, float %8927, float %8873, float 0.000000e+00)  ; FMad(a,b,c)
  %8931 = fmul fast float %8873, %8927
  %8932 = fsub fast float -0.000000e+00, %8931
  %8933 = call float @dx.op.tertiary.f32(i32 46, float %8928, float %8873, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8934

; <label>:8934                                    ; preds = %8934, %8859
  %8935 = phi float [ 0.000000e+00, %8859 ], [ %8967, %8934 ]
  %8936 = phi float [ 0.000000e+00, %8859 ], [ %8969, %8934 ]
  %8937 = phi i32 [ 0, %8859 ], [ %8970, %8934 ]
  %8938 = mul i32 %8937, 2
  %8939 = add i32 0, %8938
  %8940 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8939
  %8941 = load float, float* %8940, align 4
  %8942 = mul i32 %8937, 2
  %8943 = add i32 1, %8942
  %8944 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8943
  %8945 = load float, float* %8944, align 4
  %8946 = fmul fast float %8929, %8941
  %8947 = call float @dx.op.tertiary.f32(i32 46, float %8945, float %8932, float %8946)  ; FMad(a,b,c)
  %8948 = fmul fast float %8941, %8930
  %8949 = call float @dx.op.tertiary.f32(i32 46, float %8945, float %8933, float %8948)  ; FMad(a,b,c)
  %8950 = fadd fast float %8947, %8922
  %8951 = fadd fast float %8949, %8923
  %8952 = fmul fast float %8950, %8868
  %8953 = fmul fast float %8951, %8868
  %8954 = call float @dx.op.binary.f32(i32 35, float %8952, float %8864)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 35, float %8953, float %8864)  ; FMax(a,b)
  %8956 = call float @dx.op.binary.f32(i32 36, float %8954, float %8865)  ; FMin(a,b)
  %8957 = call float @dx.op.binary.f32(i32 36, float %8955, float %8865)  ; FMin(a,b)
  %8958 = fadd fast float %8956, %8862
  %8959 = fadd fast float %8957, %8863
  %8960 = uitofp i32 %8899 to float
  %8961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %57, float %8958, float %8959, float %8960, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8962 = extractvalue %dx.types.ResRet.f32 %8961, 0
  %8963 = fsub fast float %8962, %8925
  %8964 = fsub fast float %8963, %8872
  %8965 = fcmp fast ogt float %8964, 0.000000e+00
  %8966 = select i1 %8965, float 1.000000e+00, float 0.000000e+00
  %8967 = fadd fast float %8966, %8935
  %8968 = select i1 %8965, float %8964, float 0.000000e+00
  %8969 = fadd fast float %8968, %8936
  %8970 = add nuw nsw i32 %8937, 1
  %8971 = icmp eq i32 %8970, 8
  br i1 %8971, label %8972, label %8934

; <label>:8972                                    ; preds = %8934
  %8973 = fdiv fast float 1.000000e+00, %8967
  %8974 = fmul fast float %8973, %8969
  %8975 = fdiv fast float 1.000000e+00, %8925
  %8976 = fmul fast float %8974, %8975
  %8977 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8977, float 0.000000e+00)  ; FMax(a,b)
  %8979 = fmul fast float %8967, 1.250000e-01
  %8980 = call float @dx.op.unary.f32(i32 7, float %8979)  ; Saturate(value)
  %8981 = fmul fast float %8980, 2.000000e+00
  %8982 = fadd fast float %8981, -1.000000e+00
  %8983 = fcmp fast ogt float %8982, 0.000000e+00
  %8984 = fcmp fast olt float %8982, 0.000000e+00
  %8985 = zext i1 %8983 to i32
  %8986 = zext i1 %8984 to i32
  %8987 = sub nsw i32 %8985, %8986
  %8988 = sitofp i32 %8987 to float
  %8989 = fmul fast float %8988, %8982
  %8990 = fsub fast float 1.000000e+00, %8989
  %8991 = fmul fast float %8990, %8990
  %8992 = fmul fast float %8991, %8990
  %8993 = fsub fast float %8990, %8992
  %8994 = fmul fast float %8993, %8978
  %8995 = fsub fast float 1.000000e+00, %8992
  %8996 = fsub fast float %8995, %8994
  %8997 = fmul fast float %8988, 5.000000e-01
  %8998 = fmul fast float %8997, %8996
  %8999 = fsub fast float -5.000000e-01, %8998
  %9000 = fmul fast float %8999, %8833
  %9001 = fadd fast float %9000, 1.000000e+00
  %9002 = fmul fast float %9001, %8845
  br label %9003

; <label>:9003                                    ; preds = %8972, %8857
  %9004 = phi float [ %9002, %8972 ], [ %8845, %8857 ]
  %9005 = call float @dx.op.binary.f32(i32 36, float %9004, float %9004)  ; FMin(a,b)
  %9006 = call float @dx.op.binary.f32(i32 36, float %9004, float %9005)  ; FMin(a,b)
  %9007 = fcmp fast ogt float %9006, 0.000000e+00
  br i1 %9007, label %9008, label %8849, !dx.controlflow.hints !137

; <label>:9008                                    ; preds = %9003
  %9009 = fmul fast float %9004, %8766
  %9010 = fmul fast float %9004, %8767
  %9011 = fmul fast float %9004, %8768
  %9012 = fsub fast float %8750, %5655
  %9013 = fcmp fast ogt float %9012, 0.000000e+00
  %9014 = fsub fast float %168, %5655
  %9015 = fcmp fast ogt float %9014, 0.000000e+00
  %9016 = xor i1 %9015, %9013
  %9017 = fsub fast float %5655, %8750
  %9018 = fmul fast float %9017, 2.000000e+00
  %9019 = fadd fast float %9018, %8750
  %9020 = select i1 %9016, float %8750, float %9019
  %9021 = fsub fast float %9020, %168
  %9022 = call float @dx.op.dot3.f32(i32 55, float %8777, float %8778, float %9021, float %8777, float %8778, float %9021)  ; Dot3(ax,ay,az,bx,by,bz)
  %9023 = call float @dx.op.unary.f32(i32 25, float %9022)  ; Rsqrt(value)
  %9024 = fmul fast float %9023, %8777
  %9025 = fmul fast float %9023, %8778
  %9026 = fmul fast float %9023, %9021
  %9027 = fsub fast float %5655, %168
  %9028 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %9027)  ; Dot3(ax,ay,az,bx,by,bz)
  %9029 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %9024, float %9025, float %9026)  ; Dot3(ax,ay,az,bx,by,bz)
  %9030 = fdiv fast float 1.000000e+00, %9029
  %9031 = fmul fast float %9030, %9028
  %9032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %9014, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %9033 = fcmp fast ogt float %9032, 0.000000e+00
  %9034 = fcmp fast olt float %9032, 0.000000e+00
  %9035 = zext i1 %9033 to i32
  %9036 = zext i1 %9034 to i32
  %9037 = sub nsw i32 %9035, %9036
  %9038 = sitofp i32 %9037 to float
  %9039 = fsub fast float %9020, %5655
  %9040 = call float @dx.op.dot3.f32(i32 55, float %8777, float %8778, float %9039, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %9041 = fcmp fast ogt float %9040, 0.000000e+00
  %9042 = fcmp fast olt float %9040, 0.000000e+00
  %9043 = zext i1 %9041 to i32
  %9044 = zext i1 %9042 to i32
  %9045 = sub nsw i32 %9043, %9044
  %9046 = sitofp i32 %9045 to float
  %9047 = fcmp fast une float %9038, %9046
  br i1 %9047, label %9048, label %9058

; <label>:9048                                    ; preds = %9008
  %9049 = fmul fast float %9031, %9026
  %9050 = fmul fast float %9031, %9025
  %9051 = fmul fast float %9031, %9024
  %9052 = fmul fast float %9051, %9051
  %9053 = fmul fast float %9050, %9050
  %9054 = fadd fast float %9052, %9053
  %9055 = fmul fast float %9049, %9049
  %9056 = fadd fast float %9054, %9055
  %9057 = call float @dx.op.unary.f32(i32 24, float %9056)  ; Sqrt(value)
  br label %9070

; <label>:9058                                    ; preds = %9008
  %9059 = icmp slt i32 %9037, 0
  br i1 %9059, label %9060, label %9070

; <label>:9060                                    ; preds = %9058
  %9061 = fsub fast float %166, %8748
  %9062 = fsub fast float %167, %8749
  %9063 = fsub fast float %168, %9020
  %9064 = fmul fast float %9061, %9061
  %9065 = fmul fast float %9062, %9062
  %9066 = fadd fast float %9064, %9065
  %9067 = fmul fast float %9063, %9063
  %9068 = fadd fast float %9066, %9067
  %9069 = call float @dx.op.unary.f32(i32 24, float %9068)  ; Sqrt(value)
  br label %9070

; <label>:9070                                    ; preds = %9060, %9058, %9048
  %9071 = phi float [ %9057, %9048 ], [ %9069, %9060 ], [ 0.000000e+00, %9058 ]
  %9072 = and i1 %9015, %9013
  %9073 = fsub fast float -0.000000e+00, %9071
  %9074 = select i1 %9072, float -0.000000e+00, float %9073
  %9075 = fmul fast float %5652, 0x3FF7154760000000
  %9076 = fmul fast float %9075, %9074
  %9077 = fmul fast float %5653, 0x3FF7154760000000
  %9078 = fmul fast float %9077, %9074
  %9079 = fmul fast float %5654, 0x3FF7154760000000
  %9080 = fmul fast float %9079, %9074
  %9081 = call float @dx.op.unary.f32(i32 21, float %9076)  ; Exp(value)
  %9082 = call float @dx.op.unary.f32(i32 21, float %9078)  ; Exp(value)
  %9083 = call float @dx.op.unary.f32(i32 21, float %9080)  ; Exp(value)
  %9084 = call float @dx.op.unary.f32(i32 7, float %9081)  ; Saturate(value)
  %9085 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9086 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9087 = fmul fast float %9009, %9084
  %9088 = fmul fast float %9010, %9085
  %9089 = fmul fast float %9011, %9086
  %9090 = fsub fast float %8783, %186
  %9091 = fsub fast float %8784, %187
  %9092 = fsub fast float %8785, %188
  %9093 = call float @dx.op.dot3.f32(i32 55, float %9090, float %9091, float %9092, float %9090, float %9091, float %9092)  ; Dot3(ax,ay,az,bx,by,bz)
  %9094 = call float @dx.op.unary.f32(i32 25, float %9093)  ; Rsqrt(value)
  %9095 = fmul fast float %9094, %9090
  %9096 = fmul fast float %9094, %9091
  %9097 = fmul fast float %9094, %9092
  %9098 = call float @dx.op.dot3.f32(i32 55, float %8783, float %8784, float %8785, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %9099 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %9095, float %9096, float %9097)  ; Dot3(ax,ay,az,bx,by,bz)
  %9100 = call float @dx.op.unary.f32(i32 7, float %9098)  ; Saturate(value)
  %9101 = fmul fast float %9100, %8790
  %9102 = fmul fast float %9100, %9100
  %9103 = fmul fast float %9102, %5908
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = fmul fast float %9101, %9104
  %9106 = bitcast float %8780 to i32
  %9107 = ashr i32 %9106, 1
  %9108 = sub nsw i32 1597463007, %9107
  %9109 = bitcast i32 %9108 to float
  %9110 = fmul fast float %9109, %8777
  %9111 = fmul fast float %9109, %8778
  %9112 = fmul fast float %9109, %8779
  %9113 = fsub fast float %9110, %186
  %9114 = fsub fast float %9111, %187
  %9115 = fsub fast float %9112, %188
  %9116 = call float @dx.op.dot3.f32(i32 55, float %9113, float %9114, float %9115, float %9113, float %9114, float %9115)  ; Dot3(ax,ay,az,bx,by,bz)
  %9117 = call float @dx.op.unary.f32(i32 25, float %9116)  ; Rsqrt(value)
  %9118 = fmul fast float %9113, %9117
  %9119 = fmul fast float %9114, %9117
  %9120 = fmul fast float %9115, %9117
  %9121 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %9118, float %9119, float %9120)  ; Dot3(ax,ay,az,bx,by,bz)
  %9122 = fmul fast float %9121, %9121
  %9123 = call float @dx.op.unary.f32(i32 6, float %9098)  ; FAbs(value)
  %9124 = fsub fast float 1.000000e+00, %5901
  %9125 = fmul fast float %5883, %5883
  %9126 = fmul fast float %9125, %9124
  %9127 = fadd fast float %9126, %5901
  %9128 = bitcast float %9127 to i32
  %9129 = ashr i32 %9128, 1
  %9130 = add nsw i32 %9129, 532487669
  %9131 = bitcast i32 %9130 to float
  %9132 = fadd fast float %9131, %5883
  %9133 = fmul fast float %5901, %9122
  %9134 = fsub fast float 1.000000e+00, %9122
  %9135 = fadd fast float %9134, %9133
  %9136 = fmul fast float %9123, %9123
  %9137 = fmul fast float %9136, %9124
  %9138 = fadd fast float %9137, %5901
  %9139 = bitcast float %9138 to i32
  %9140 = ashr i32 %9139, 1
  %9141 = add nsw i32 %9140, 532487669
  %9142 = bitcast i32 %9141 to float
  %9143 = fadd fast float %9142, %9123
  %9144 = fmul fast float %9135, %9135
  %9145 = fmul fast float %9144, %9132
  %9146 = fmul fast float %9145, %9143
  %9147 = fdiv fast float 1.000000e+00, %9146
  %9148 = bitcast float %5901 to i32
  %9149 = sitofp i32 %9148 to float
  %9150 = fmul fast float %9149, 0x3FE7F73180000000
  %9151 = fadd fast float %9150, 0x41AFE27C40000000
  %9152 = fptosi float %9151 to i32
  %9153 = bitcast i32 %9152 to float
  %9154 = fmul fast float %8745, 0x3FD80E9D60000000
  %9155 = fmul fast float %9154, %9109
  %9156 = fadd fast float %9153, %9155
  %9157 = bitcast float %9156 to i32
  %9158 = sub nsw i32 2129859010, %9157
  %9159 = bitcast i32 %9158 to float
  %9160 = fmul fast float %5901, %9147
  %9161 = fmul fast float %9160, %9153
  %9162 = fmul fast float %9161, %9159
  %9163 = fmul fast float %6144, 0x3FF9999980000000
  %9164 = fsub fast float 5.000000e+00, %9163
  %9165 = call float @dx.op.unary.f32(i32 6, float %9099)  ; FAbs(value)
  %9166 = fsub fast float 1.000000e+00, %9165
  %9167 = fmul fast float %6144, 0x41D9660740000000
  %9168 = fadd fast float %9167, 0xC1EFBF8940000000
  %9169 = bitcast float %9166 to i32
  %9170 = sitofp i32 %9169 to float
  %9171 = fmul fast float %9170, %9164
  %9172 = fadd fast float %9168, %9171
  %9173 = fptosi float %9172 to i32
  %9174 = bitcast i32 %9173 to float
  %9175 = fsub fast float 1.000000e+00, %5838
  %9176 = fsub fast float 1.000000e+00, %5839
  %9177 = fsub fast float 1.000000e+00, %5881
  %9178 = fmul fast float %9174, %9175
  %9179 = fmul fast float %9174, %9176
  %9180 = fmul fast float %9174, %9177
  %9181 = fadd fast float %9178, %5838
  %9182 = fadd fast float %9179, %5839
  %9183 = fadd fast float %9180, %5881
  br i1 %6167, label %9184, label %9207

; <label>:9184                                    ; preds = %9070
  %9185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %9165, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9186 = extractvalue %dx.types.ResRet.f32 %9185, 0
  %9187 = extractvalue %dx.types.ResRet.f32 %9185, 1
  %9188 = extractvalue %dx.types.ResRet.f32 %9185, 2
  %9189 = fadd fast float %9186, -5.000000e-01
  %9190 = fadd fast float %9187, -5.000000e-01
  %9191 = fadd fast float %9188, -5.000000e-01
  %9192 = fmul fast float %5838, 4.000000e+00
  %9193 = fmul fast float %9192, %9175
  %9194 = fmul fast float %9193, %9189
  %9195 = fmul fast float %5839, 4.000000e+00
  %9196 = fmul fast float %9195, %9176
  %9197 = fmul fast float %9196, %9190
  %9198 = fmul fast float %5881, 4.000000e+00
  %9199 = fmul fast float %9198, %9177
  %9200 = fmul fast float %9199, %9191
  %9201 = fadd fast float %9194, %9181
  %9202 = fadd fast float %9197, %9182
  %9203 = fadd fast float %9200, %9183
  %9204 = call float @dx.op.unary.f32(i32 7, float %9201)  ; Saturate(value)
  %9205 = call float @dx.op.unary.f32(i32 7, float %9202)  ; Saturate(value)
  %9206 = call float @dx.op.unary.f32(i32 7, float %9203)  ; Saturate(value)
  br label %9207

; <label>:9207                                    ; preds = %9184, %9070
  %9208 = phi float [ %9204, %9184 ], [ %9181, %9070 ]
  %9209 = phi float [ %9205, %9184 ], [ %9182, %9070 ]
  %9210 = phi float [ %9206, %9184 ], [ %9183, %9070 ]
  %9211 = fmul fast float %9098, 9.843750e-01
  %9212 = fadd fast float %9211, 7.812500e-03
  %9213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9212, float %6148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9214 = extractvalue %dx.types.ResRet.f32 %9213, 0
  %9215 = extractvalue %dx.types.ResRet.f32 %9213, 1
  %9216 = extractvalue %dx.types.ResRet.f32 %9213, 2
  %9217 = extractvalue %dx.types.ResRet.f32 %9213, 3
  %9218 = fsub fast float %9216, %9214
  %9219 = fsub fast float %9217, %9215
  %9220 = fmul fast float %9218, %6154
  %9221 = fmul fast float %9219, %6154
  %9222 = fadd fast float %9220, %9214
  %9223 = fadd fast float %9221, %9215
  %9224 = fmul fast float %9222, %5838
  %9225 = fmul fast float %9222, %5839
  %9226 = fmul fast float %9222, %5881
  %9227 = fadd fast float %9224, %9223
  %9228 = fadd fast float %9225, %9223
  %9229 = fadd fast float %9226, %9223
  br i1 %6167, label %9230, label %9253

; <label>:9230                                    ; preds = %9207
  %9231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %9098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9232 = extractvalue %dx.types.ResRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.ResRet.f32 %9231, 1
  %9234 = extractvalue %dx.types.ResRet.f32 %9231, 2
  %9235 = fadd fast float %9232, -5.000000e-01
  %9236 = fadd fast float %9233, -5.000000e-01
  %9237 = fadd fast float %9234, -5.000000e-01
  %9238 = fmul fast float %5838, 4.000000e+00
  %9239 = fmul fast float %9238, %9175
  %9240 = fmul fast float %9239, %9235
  %9241 = fmul fast float %5839, 4.000000e+00
  %9242 = fmul fast float %9241, %9176
  %9243 = fmul fast float %9242, %9236
  %9244 = fmul fast float %5881, 4.000000e+00
  %9245 = fmul fast float %9244, %9177
  %9246 = fmul fast float %9245, %9237
  %9247 = fadd fast float %9240, %9227
  %9248 = fadd fast float %9243, %9228
  %9249 = fadd fast float %9246, %9229
  %9250 = call float @dx.op.unary.f32(i32 7, float %9247)  ; Saturate(value)
  %9251 = call float @dx.op.unary.f32(i32 7, float %9248)  ; Saturate(value)
  %9252 = call float @dx.op.unary.f32(i32 7, float %9249)  ; Saturate(value)
  br label %9253

; <label>:9253                                    ; preds = %9230, %9207
  %9254 = phi float [ %9250, %9230 ], [ %9227, %9207 ]
  %9255 = phi float [ %9251, %9230 ], [ %9228, %9207 ]
  %9256 = phi float [ %9252, %9230 ], [ %9229, %9207 ]
  %9257 = call float @dx.op.binary.f32(i32 35, float %9255, float %9256)  ; FMax(a,b)
  %9258 = call float @dx.op.binary.f32(i32 35, float %9254, float %9257)  ; FMax(a,b)
  %9259 = fsub fast float 1.000000e+00, %9258
  %9260 = call float @dx.op.binary.f32(i32 35, float %9123, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9261 = fdiv fast float %4553, %9260
  %9262 = fmul fast float %6717, %9261
  %9263 = fmul fast float %6719, %9261
  %9264 = fmul fast float %6721, %9261
  %9265 = call float @dx.op.unary.f32(i32 21, float %9262)  ; Exp(value)
  %9266 = call float @dx.op.unary.f32(i32 21, float %9263)  ; Exp(value)
  %9267 = call float @dx.op.unary.f32(i32 21, float %9264)  ; Exp(value)
  %9268 = call float @dx.op.unary.f32(i32 7, float %9265)  ; Saturate(value)
  %9269 = call float @dx.op.unary.f32(i32 7, float %9266)  ; Saturate(value)
  %9270 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9271 = select i1 %6714, float %9268, float 0.000000e+00
  %9272 = select i1 %6715, float %9269, float 0.000000e+00
  %9273 = select i1 %6716, float %9270, float 0.000000e+00
  %9274 = fsub fast float -0.000000e+00, %5841
  %9275 = fsub fast float -0.000000e+00, %5842
  %9276 = fsub fast float -0.000000e+00, %5843
  %9277 = call float @dx.op.dot3.f32(i32 55, float %8783, float %8784, float %8785, float %9274, float %9275, float %9276)  ; Dot3(ax,ay,az,bx,by,bz)
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = fmul fast float %9278, %8790
  %9280 = fmul fast float %9278, 9.843750e-01
  %9281 = fadd fast float %9280, 7.812500e-03
  %9282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9281, float %6148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9283 = extractvalue %dx.types.ResRet.f32 %9282, 0
  %9284 = extractvalue %dx.types.ResRet.f32 %9282, 1
  %9285 = extractvalue %dx.types.ResRet.f32 %9282, 2
  %9286 = extractvalue %dx.types.ResRet.f32 %9282, 3
  %9287 = fsub fast float %9285, %9283
  %9288 = fsub fast float %9286, %9284
  %9289 = fmul fast float %9287, %6154
  %9290 = fmul fast float %9288, %6154
  %9291 = fadd fast float %9289, %9283
  %9292 = fadd fast float %9290, %9284
  %9293 = fmul fast float %9291, %5838
  %9294 = fmul fast float %9291, %5839
  %9295 = fmul fast float %9291, %5881
  %9296 = fadd fast float %9293, %9292
  %9297 = fadd fast float %9294, %9292
  %9298 = fadd fast float %9295, %9292
  br i1 %6167, label %9299, label %9322

; <label>:9299                                    ; preds = %9253
  %9300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5200, float %9278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9301 = extractvalue %dx.types.ResRet.f32 %9300, 0
  %9302 = extractvalue %dx.types.ResRet.f32 %9300, 1
  %9303 = extractvalue %dx.types.ResRet.f32 %9300, 2
  %9304 = fadd fast float %9301, -5.000000e-01
  %9305 = fadd fast float %9302, -5.000000e-01
  %9306 = fadd fast float %9303, -5.000000e-01
  %9307 = fmul fast float %5838, 4.000000e+00
  %9308 = fmul fast float %9307, %9175
  %9309 = fmul fast float %9308, %9304
  %9310 = fmul fast float %5839, 4.000000e+00
  %9311 = fmul fast float %9310, %9176
  %9312 = fmul fast float %9311, %9305
  %9313 = fmul fast float %5881, 4.000000e+00
  %9314 = fmul fast float %9313, %9177
  %9315 = fmul fast float %9314, %9306
  %9316 = fadd fast float %9309, %9296
  %9317 = fadd fast float %9312, %9297
  %9318 = fadd fast float %9315, %9298
  %9319 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9320 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9321 = call float @dx.op.unary.f32(i32 7, float %9318)  ; Saturate(value)
  br label %9322

; <label>:9322                                    ; preds = %9299, %9253
  %9323 = phi float [ %9319, %9299 ], [ %9296, %9253 ]
  %9324 = phi float [ %9320, %9299 ], [ %9297, %9253 ]
  %9325 = phi float [ %9321, %9299 ], [ %9298, %9253 ]
  %9326 = call float @dx.op.binary.f32(i32 35, float %9324, float %9325)  ; FMax(a,b)
  %9327 = call float @dx.op.binary.f32(i32 35, float %9323, float %9326)  ; FMax(a,b)
  %9328 = fsub fast float 1.000000e+00, %9327
  %9329 = fmul fast float %5898, %6781
  %9330 = fadd fast float %6775, %9329
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = fsub fast float %9110, %5889
  %9333 = fsub fast float %9111, %5890
  %9334 = fsub fast float %9112, %5891
  %9335 = call float @dx.op.dot3.f32(i32 55, float %9332, float %9333, float %9334, float %9332, float %9333, float %9334)  ; Dot3(ax,ay,az,bx,by,bz)
  %9336 = call float @dx.op.unary.f32(i32 25, float %9335)  ; Rsqrt(value)
  %9337 = fmul fast float %9332, %9336
  %9338 = fmul fast float %9333, %9336
  %9339 = fmul fast float %9334, %9336
  %9340 = call float @dx.op.dot3.f32(i32 55, float %9274, float %9275, float %9276, float %9337, float %9338, float %9339)  ; Dot3(ax,ay,az,bx,by,bz)
  %9341 = fmul fast float %9340, %9340
  %9342 = call float @dx.op.unary.f32(i32 6, float %9278)  ; FAbs(value)
  %9343 = call float @dx.op.binary.f32(i32 35, float %9331, float 0x3F847AE140000000)  ; FMax(a,b)
  %9344 = fmul fast float %9343, %9343
  %9345 = fmul fast float %9344, %9344
  %9346 = fsub fast float 1.000000e+00, %9345
  %9347 = fmul fast float %9125, %9346
  %9348 = fadd fast float %9347, %9345
  %9349 = bitcast float %9348 to i32
  %9350 = ashr i32 %9349, 1
  %9351 = add nsw i32 %9350, 532487669
  %9352 = bitcast i32 %9351 to float
  %9353 = fadd fast float %9352, %5883
  %9354 = fmul fast float %9345, %9341
  %9355 = fsub fast float 1.000000e+00, %9341
  %9356 = fadd fast float %9355, %9354
  %9357 = fmul fast float %9342, %9342
  %9358 = fmul fast float %9357, %9346
  %9359 = fadd fast float %9358, %9345
  %9360 = bitcast float %9359 to i32
  %9361 = ashr i32 %9360, 1
  %9362 = add nsw i32 %9361, 532487669
  %9363 = bitcast i32 %9362 to float
  %9364 = fadd fast float %9363, %9342
  %9365 = fmul fast float %9356, %9356
  %9366 = fmul fast float %9365, %9353
  %9367 = fmul fast float %9366, %9364
  %9368 = fdiv fast float 1.000000e+00, %9367
  %9369 = bitcast float %9345 to i32
  %9370 = sitofp i32 %9369 to float
  %9371 = fmul fast float %9370, 0x3FE7F73180000000
  %9372 = fadd fast float %9371, 0x41AFE27C40000000
  %9373 = fptosi float %9372 to i32
  %9374 = bitcast i32 %9373 to float
  %9375 = fadd fast float %9374, %9155
  %9376 = bitcast float %9375 to i32
  %9377 = sub nsw i32 2129859010, %9376
  %9378 = bitcast i32 %9377 to float
  %9379 = fmul fast float %9345, %9368
  %9380 = fmul fast float %9379, %9374
  %9381 = fmul fast float %9380, %9378
  br i1 %8775, label %9382, label %9392

; <label>:9382                                    ; preds = %9322
  %9383 = fmul fast float %9279, %9271
  %9384 = fmul fast float %9279, %9272
  %9385 = fmul fast float %9279, %9273
  %9386 = fmul fast float %9383, %9328
  %9387 = fmul fast float %9386, %9381
  %9388 = fmul fast float %9384, %9328
  %9389 = fmul fast float %9388, %9381
  %9390 = fmul fast float %9385, %9328
  %9391 = fmul fast float %9390, %9381
  br label %9392

; <label>:9392                                    ; preds = %9382, %9322
  %9393 = phi float [ %9387, %9382 ], [ 0.000000e+00, %9322 ]
  %9394 = phi float [ %9389, %9382 ], [ 0.000000e+00, %9322 ]
  %9395 = phi float [ %9391, %9382 ], [ 0.000000e+00, %9322 ]
  %9396 = fmul fast float %9208, %9162
  %9397 = fmul fast float %9209, %9162
  %9398 = fmul fast float %9210, %9162
  %9399 = fsub fast float 1.000000e+00, %9099
  %9400 = bitcast float %9399 to i32
  %9401 = sitofp i32 %9400 to float
  %9402 = fmul fast float %9401, 5.000000e+00
  %9403 = fadd fast float %9402, 0xC1EFBF8940000000
  %9404 = fptosi float %9403 to i32
  %9405 = bitcast i32 %9404 to float
  %9406 = fmul fast float %9405, %5201
  %9407 = fmul fast float %9259, %9406
  %9408 = fmul fast float %9407, %6709
  %9409 = fmul fast float %9407, %6710
  %9410 = fmul fast float %9407, %6711
  %9411 = fadd fast float %9408, %9396
  %9412 = fadd fast float %9409, %9397
  %9413 = fadd fast float %9410, %9398
  %9414 = fmul fast float %9411, %9105
  %9415 = fmul fast float %9412, %9105
  %9416 = fmul fast float %9413, %9105
  %9417 = fadd fast float %9414, %9393
  %9418 = fadd fast float %9415, %9394
  %9419 = fadd fast float %9416, %9395
  %9420 = fmul fast float %9087, %5226
  %9421 = fmul fast float %9420, %9105
  %9422 = fmul fast float %9421, %9259
  %9423 = fmul fast float %9088, %5226
  %9424 = fmul fast float %9423, %9105
  %9425 = fmul fast float %9424, %9259
  %9426 = fmul fast float %9089, %5226
  %9427 = fmul fast float %9426, %9105
  %9428 = fmul fast float %9427, %9259
  %9429 = fadd fast float %9422, %8719
  %9430 = fadd fast float %9425, %8720
  %9431 = fadd fast float %9428, %8721
  %9432 = fmul fast float %9420, %9417
  %9433 = fmul fast float %9423, %9418
  %9434 = fmul fast float %9426, %9419
  %9435 = fadd fast float %9432, %8716
  %9436 = fadd fast float %9433, %8717
  %9437 = fadd fast float %9434, %8718
  br label %8849

; <label>:9438                                    ; preds = %8849
  br label %9439

; <label>:9439                                    ; preds = %9438, %8682
  %9440 = phi float [ %8684, %8682 ], [ %8850, %9438 ]
  %9441 = phi float [ %8685, %8682 ], [ %8851, %9438 ]
  %9442 = phi float [ %8686, %8682 ], [ %8852, %9438 ]
  %9443 = phi float [ %8687, %8682 ], [ %8853, %9438 ]
  %9444 = phi float [ %8688, %8682 ], [ %8854, %9438 ]
  %9445 = phi float [ %8689, %8682 ], [ %8855, %9438 ]
  %9446 = add i32 %8683, 1
  %9447 = icmp ugt i32 %9446, %8679
  br i1 %9447, label %9448, label %8682

; <label>:9448                                    ; preds = %9439
  br label %9449

; <label>:9449                                    ; preds = %9448, %8632, %8622
  %9450 = phi float [ %8623, %8622 ], [ %8623, %8632 ], [ %9440, %9448 ]
  %9451 = phi float [ %8624, %8622 ], [ %8624, %8632 ], [ %9441, %9448 ]
  %9452 = phi float [ %8625, %8622 ], [ %8625, %8632 ], [ %9442, %9448 ]
  %9453 = phi float [ %8626, %8622 ], [ %8626, %8632 ], [ %9443, %9448 ]
  %9454 = phi float [ %8627, %8622 ], [ %8627, %8632 ], [ %9444, %9448 ]
  %9455 = phi float [ %8628, %8622 ], [ %8628, %8632 ], [ %9445, %9448 ]
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 0
  %9458 = fmul fast float %9457, %6788
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 3
  %9461 = fsub fast float 1.000000e+00, %5204
  %9462 = call float @dx.op.unary.f32(i32 7, float %9461)  ; Saturate(value)
  %9463 = fadd fast float %9455, %5203
  %9464 = fmul fast float %9463, %5204
  %9465 = fmul fast float %9462, %9460
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 3
  %9468 = fmul fast float %9453, %5835
  %9469 = fmul fast float %9454, %5836
  %9470 = fmul fast float %9455, %5837
  %9471 = fcmp fast ogt float %99, %220
  %9472 = and i1 %9471, %5658
  %9473 = or i1 %5664, %9472
  %9474 = icmp eq i32 %5657, 2
  %9475 = fcmp fast ole float %99, %220
  %9476 = and i1 %9475, %9474
  %9477 = or i1 %9476, %9473
  br i1 %9472, label %9478, label %9732

; <label>:9478                                    ; preds = %9449
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9482 = fmul fast float %9480, %111
  %9483 = fmul fast float %9481, %112
  %9484 = call float @dx.op.unary.f32(i32 7, float %9482)  ; Saturate(value)
  %9485 = call float @dx.op.unary.f32(i32 7, float %9483)  ; Saturate(value)
  %9486 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9484, float %9485, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9487 = extractvalue %dx.types.ResRet.f32 %9486, 0
  %9488 = extractvalue %dx.types.ResRet.f32 %9486, 1
  %9489 = extractvalue %dx.types.ResRet.f32 %9486, 2
  %9490 = extractvalue %dx.types.ResRet.f32 %9486, 3
  %9491 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9484, float %9485, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9492 = extractvalue %dx.types.ResRet.f32 %9491, 0
  %9493 = extractvalue %dx.types.ResRet.f32 %9491, 1
  %9494 = extractvalue %dx.types.ResRet.f32 %9491, 2
  %9495 = extractvalue %dx.types.ResRet.f32 %9491, 3
  %9496 = call float @dx.op.binary.f32(i32 35, float %9488, float %9489)  ; FMax(a,b)
  %9497 = call float @dx.op.binary.f32(i32 35, float %9487, float %9496)  ; FMax(a,b)
  %9498 = call float @dx.op.binary.f32(i32 35, float %9497, float %9490)  ; FMax(a,b)
  %9499 = call float @dx.op.binary.f32(i32 36, float %9493, float %9494)  ; FMin(a,b)
  %9500 = call float @dx.op.binary.f32(i32 36, float %9492, float %9499)  ; FMin(a,b)
  %9501 = call float @dx.op.binary.f32(i32 36, float %9500, float %9495)  ; FMin(a,b)
  %9502 = fmul fast float %9498, 2.550000e+02
  %9503 = fadd fast float %9502, 0x3F70101020000000
  %9504 = fptoui float %9503 to i32
  %9505 = fmul fast float %9501, 2.550000e+02
  %9506 = fadd fast float %9505, 0x3F70101020000000
  %9507 = fptoui float %9506 to i32
  %9508 = icmp ult i32 %9504, %9507
  br i1 %9508, label %9509, label %9677

; <label>:9509                                    ; preds = %9478
  %9510 = fcmp fast ogt float %98, 9.843750e-01
  %9511 = fadd fast float %99, -4.000000e+00
  %9512 = select i1 %9510, float -4.000000e+00, float %9511
  %9513 = call float @dx.op.binary.f32(i32 35, float %9512, float 0.000000e+00)  ; FMax(a,b)
  %9514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9515 = extractvalue %dx.types.CBufRet.f32 %9514, 0
  %9516 = fadd fast float %9515, %9513
  %9517 = extractvalue %dx.types.CBufRet.f32 %9514, 2
  %9518 = fmul fast float %9516, %9517
  %9519 = call float @dx.op.unary.f32(i32 23, float %9518)  ; Log(value)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9514, 3
  %9521 = fmul fast float %9520, %9519
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 2
  %9524 = fmul fast float %9521, %9523
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = uitofp i32 %9504 to float
  %9527 = uitofp i32 %9507 to float
  %9528 = fadd fast float %9526, 5.000000e-01
  %9529 = fadd fast float %9527, 5.000000e-01
  %9530 = fmul fast float %9523, %9528
  %9531 = fmul fast float %9523, %9529
  %9532 = fadd fast float %9530, 0x3F0FFB4800000000
  %9533 = fadd fast float %9531, 0xBF0FFB4800000000
  %9534 = call float @dx.op.binary.f32(i32 35, float %9525, float %9532)  ; FMax(a,b)
  %9535 = call float @dx.op.binary.f32(i32 36, float %9534, float %9533)  ; FMin(a,b)
  %9536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9537 = extractvalue %dx.types.CBufRet.f32 %9536, 1
  %9538 = extractvalue %dx.types.CBufRet.f32 %9536, 2
  %9539 = extractvalue %dx.types.CBufRet.f32 %9536, 0
  %9540 = fmul fast float %9537, %9535
  %9541 = fadd fast float %9539, %9540
  %9542 = fadd fast float %9539, %9538
  %9543 = fsub fast float %9537, %9538
  %9544 = fadd fast float %9543, %9539
  %9545 = call float @dx.op.binary.f32(i32 35, float %9541, float %9542)  ; FMax(a,b)
  %9546 = call float @dx.op.binary.f32(i32 36, float %9545, float %9544)  ; FMin(a,b)
  %9547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %9484, float %9485, float %9546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9548 = extractvalue %dx.types.ResRet.f32 %9547, 0
  %9549 = extractvalue %dx.types.ResRet.f32 %9547, 1
  %9550 = extractvalue %dx.types.ResRet.f32 %9547, 2
  %9551 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9552 = extractvalue %dx.types.CBufRet.i32 %9551, 0
  %9553 = extractvalue %dx.types.CBufRet.i32 %9551, 1
  %9554 = uitofp i32 %9552 to float
  %9555 = uitofp i32 %9553 to float
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.CBufRet.f32 %9556, 1
  %9559 = fmul fast float %9554, %9484
  %9560 = fmul fast float %9555, %9485
  %9561 = fadd fast float %9559, -5.000000e-01
  %9562 = fadd fast float %9560, -5.000000e-01
  %9563 = call float @dx.op.unary.f32(i32 22, float %9561)  ; Frc(value)
  %9564 = call float @dx.op.unary.f32(i32 22, float %9562)  ; Frc(value)
  %9565 = fmul fast float %9563, %9563
  %9566 = fmul fast float %9565, %9563
  %9567 = fsub fast float 3.000000e+00, %9563
  %9568 = fmul fast float %9565, %9567
  %9569 = fmul fast float %9563, 3.000000e+00
  %9570 = fmul fast float %9566, 3.000000e+00
  %9571 = fmul fast float %9565, 6.000000e+00
  %9572 = fsub fast float %9570, %9571
  %9573 = fadd fast float %9572, 4.000000e+00
  %9574 = fmul fast float %9573, 0x3FC5555560000000
  %9575 = fmul fast float %9566, -3.000000e+00
  %9576 = fadd fast float %9565, %9563
  %9577 = fmul fast float %9576, 3.000000e+00
  %9578 = fadd fast float %9575, 1.000000e+00
  %9579 = fadd fast float %9578, %9577
  %9580 = fmul fast float %9566, 0x3FC5555560000000
  %9581 = fmul fast float %9564, %9564
  %9582 = fmul fast float %9581, %9564
  %9583 = fsub fast float 3.000000e+00, %9564
  %9584 = fmul fast float %9581, %9583
  %9585 = fmul fast float %9564, 3.000000e+00
  %9586 = fmul fast float %9582, 3.000000e+00
  %9587 = fmul fast float %9581, 6.000000e+00
  %9588 = fsub fast float %9586, %9587
  %9589 = fadd fast float %9588, 4.000000e+00
  %9590 = fmul fast float %9589, 0x3FC5555560000000
  %9591 = fmul fast float %9582, -3.000000e+00
  %9592 = fadd fast float %9581, %9564
  %9593 = fmul fast float %9592, 3.000000e+00
  %9594 = fadd fast float %9591, 1.000000e+00
  %9595 = fadd fast float %9594, %9593
  %9596 = fmul fast float %9582, 0x3FC5555560000000
  %9597 = fadd fast float %9563, 1.000000e+00
  %9598 = fsub fast float 1.000000e+00, %9569
  %9599 = fadd fast float %9598, %9568
  %9600 = fadd fast float %9599, %9573
  %9601 = fmul fast float %9600, 0x3FC5555560000000
  %9602 = fdiv fast float %9574, %9601
  %9603 = fsub fast float %9597, %9602
  %9604 = fsub fast float 1.000000e+00, %9563
  %9605 = fadd fast float %9579, %9566
  %9606 = fmul fast float %9605, 0x3FC5555560000000
  %9607 = fdiv fast float %9580, %9606
  %9608 = fadd fast float %9604, %9607
  %9609 = fadd fast float %9564, 1.000000e+00
  %9610 = fsub fast float 1.000000e+00, %9585
  %9611 = fadd fast float %9610, %9584
  %9612 = fadd fast float %9611, %9589
  %9613 = fmul fast float %9612, 0x3FC5555560000000
  %9614 = fdiv fast float %9590, %9613
  %9615 = fsub fast float %9609, %9614
  %9616 = fsub fast float 1.000000e+00, %9564
  %9617 = fadd fast float %9595, %9582
  %9618 = fmul fast float %9617, 0x3FC5555560000000
  %9619 = fdiv fast float %9596, %9618
  %9620 = fadd fast float %9619, %9616
  %9621 = fmul fast float %9603, %9557
  %9622 = fsub fast float %9484, %9621
  %9623 = fmul fast float %9608, %9557
  %9624 = fadd fast float %9623, %9484
  %9625 = fmul fast float %9620, %9558
  %9626 = fadd fast float %9625, %9485
  %9627 = fmul fast float %9615, %9558
  %9628 = fsub fast float %9485, %9627
  %9629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9622, float %9628, float %9546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9630 = extractvalue %dx.types.ResRet.f32 %9629, 0
  %9631 = extractvalue %dx.types.ResRet.f32 %9629, 1
  %9632 = extractvalue %dx.types.ResRet.f32 %9629, 2
  %9633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9624, float %9628, float %9546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9634 = extractvalue %dx.types.ResRet.f32 %9633, 0
  %9635 = extractvalue %dx.types.ResRet.f32 %9633, 1
  %9636 = extractvalue %dx.types.ResRet.f32 %9633, 2
  %9637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9622, float %9626, float %9546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9638 = extractvalue %dx.types.ResRet.f32 %9637, 0
  %9639 = extractvalue %dx.types.ResRet.f32 %9637, 1
  %9640 = extractvalue %dx.types.ResRet.f32 %9637, 2
  %9641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9624, float %9626, float %9546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9642 = extractvalue %dx.types.ResRet.f32 %9641, 0
  %9643 = extractvalue %dx.types.ResRet.f32 %9641, 1
  %9644 = extractvalue %dx.types.ResRet.f32 %9641, 2
  %9645 = fsub fast float %9638, %9630
  %9646 = fsub fast float %9639, %9631
  %9647 = fsub fast float %9640, %9632
  %9648 = fmul fast float %9645, %9618
  %9649 = fmul fast float %9646, %9618
  %9650 = fmul fast float %9647, %9618
  %9651 = fadd fast float %9648, %9630
  %9652 = fadd fast float %9649, %9631
  %9653 = fadd fast float %9650, %9632
  %9654 = fsub fast float %9642, %9634
  %9655 = fsub fast float %9643, %9635
  %9656 = fsub fast float %9644, %9636
  %9657 = fmul fast float %9654, %9618
  %9658 = fmul fast float %9655, %9618
  %9659 = fmul fast float %9656, %9618
  %9660 = fsub fast float %9634, %9651
  %9661 = fadd fast float %9660, %9657
  %9662 = fsub fast float %9635, %9652
  %9663 = fadd fast float %9662, %9658
  %9664 = fsub fast float %9636, %9653
  %9665 = fadd fast float %9664, %9659
  %9666 = fmul fast float %9661, %9606
  %9667 = fmul fast float %9663, %9606
  %9668 = fmul fast float %9665, %9606
  %9669 = fadd fast float %9666, %9651
  %9670 = fadd fast float %9667, %9652
  %9671 = fadd fast float %9668, %9653
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.f32 %9672, 1
  %9674 = fmul fast float %9669, %9673
  %9675 = fmul fast float %9670, %9673
  %9676 = fmul fast float %9671, %9673
  br label %9677

; <label>:9677                                    ; preds = %9509, %9478
  %9678 = phi float [ %9548, %9509 ], [ 1.000000e+00, %9478 ]
  %9679 = phi float [ %9549, %9509 ], [ 1.000000e+00, %9478 ]
  %9680 = phi float [ %9550, %9509 ], [ 1.000000e+00, %9478 ]
  %9681 = phi float [ %9674, %9509 ], [ 0.000000e+00, %9478 ]
  %9682 = phi float [ %9675, %9509 ], [ 0.000000e+00, %9478 ]
  %9683 = phi float [ %9676, %9509 ], [ 0.000000e+00, %9478 ]
  %9684 = call float @dx.op.dot3.f32(i32 55, float %9678, float %9679, float %9680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9685 = call float @dx.op.dot3.f32(i32 55, float %9681, float %9682, float %9683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9686 = select i1 %260, float %9684, float %9678
  %9687 = select i1 %260, float %9684, float %9679
  %9688 = select i1 %260, float 1.000000e+00, float %9680
  %9689 = select i1 %260, float %9685, float %9681
  %9690 = select i1 %260, float 0.000000e+00, float %9682
  %9691 = select i1 %260, float 0.000000e+00, float %9683
  %9692 = fmul fast float %9686, %9468
  %9693 = fmul fast float %9687, %9469
  %9694 = fmul fast float %9688, %9470
  %9695 = fadd fast float %9692, %9689
  %9696 = fadd fast float %9693, %9690
  %9697 = fadd fast float %9691, %9694
  %9698 = fmul fast float %9686, %9450
  %9699 = fmul fast float %9687, %9451
  %9700 = fmul fast float %9688, %9452
  %9701 = fmul fast float %136, %9480
  %9702 = fmul fast float %138, %9481
  %9703 = fsub fast float 1.000000e+00, %9701
  %9704 = fsub fast float 1.000000e+00, %9702
  %9705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.f32 %9705, 0
  %9707 = extractvalue %dx.types.CBufRet.f32 %9705, 1
  %9708 = extractvalue %dx.types.CBufRet.f32 %9705, 2
  %9709 = fmul fast float %9703, %9706
  %9710 = fmul fast float %9703, %9707
  %9711 = fmul fast float %9703, %9708
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9714 = extractvalue %dx.types.CBufRet.f32 %9712, 1
  %9715 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9716 = fmul fast float %9704, %9713
  %9717 = fmul fast float %9704, %9714
  %9718 = fmul fast float %9704, %9715
  %9719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9720 = extractvalue %dx.types.CBufRet.f32 %9719, 0
  %9721 = extractvalue %dx.types.CBufRet.f32 %9719, 1
  %9722 = extractvalue %dx.types.CBufRet.f32 %9719, 2
  %9723 = fadd fast float %9716, %9720
  %9724 = fadd fast float %9723, %9709
  %9725 = fadd fast float %9717, %9721
  %9726 = fadd fast float %9725, %9710
  %9727 = fadd fast float %9718, %9722
  %9728 = fadd fast float %9727, %9711
  %9729 = fmul fast float %9724, %220
  %9730 = fmul fast float %9726, %220
  %9731 = fmul fast float %9728, %220
  br label %9732

; <label>:9732                                    ; preds = %9677, %9449
  %9733 = phi float [ %9729, %9677 ], [ %166, %9449 ]
  %9734 = phi float [ %9730, %9677 ], [ %167, %9449 ]
  %9735 = phi float [ %9731, %9677 ], [ %168, %9449 ]
  %9736 = phi float [ %220, %9677 ], [ %99, %9449 ]
  %9737 = phi float [ %9695, %9677 ], [ %9468, %9449 ]
  %9738 = phi float [ %9696, %9677 ], [ %9469, %9449 ]
  %9739 = phi float [ %9697, %9677 ], [ %9470, %9449 ]
  %9740 = phi float [ %9698, %9677 ], [ %9450, %9449 ]
  %9741 = phi float [ %9699, %9677 ], [ %9451, %9449 ]
  %9742 = phi float [ %9700, %9677 ], [ %9452, %9449 ]
  %9743 = phi float [ %9678, %9677 ], [ 1.000000e+00, %9449 ]
  br i1 %9477, label %10892, label %9744

; <label>:9744                                    ; preds = %9732
  %9745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.CBufRet.f32 %9745, 2
  %9749 = extractvalue %dx.types.CBufRet.f32 %9745, 3
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.CBufRet.f32 %9750, 1
  %9753 = extractvalue %dx.types.CBufRet.f32 %9750, 2
  %9754 = extractvalue %dx.types.CBufRet.f32 %9750, 3
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9757 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9758 = extractvalue %dx.types.CBufRet.f32 %9755, 2
  %9759 = extractvalue %dx.types.CBufRet.f32 %9755, 3
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9764 = extractvalue %dx.types.CBufRet.f32 %9760, 3
  %9765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9766 = extractvalue %dx.types.CBufRet.f32 %9765, 3
  %9767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.f32 %9767, 3
  %9769 = extractvalue %dx.types.CBufRet.f32 %9767, 0
  %9770 = extractvalue %dx.types.CBufRet.f32 %9767, 1
  %9771 = extractvalue %dx.types.CBufRet.f32 %9767, 2
  %9772 = fcmp fast olt float %9771, -5.000000e-01
  %9773 = call float @dx.op.dot3.f32(i32 55, float %9733, float %9734, float %9735, float %9733, float %9734, float %9735)  ; Dot3(ax,ay,az,bx,by,bz)
  %9774 = call float @dx.op.unary.f32(i32 25, float %9773)  ; Rsqrt(value)
  %9775 = fmul fast float %9774, %9773
  %9776 = fmul fast float %9774, %9733
  %9777 = fmul fast float %9774, %9734
  %9778 = fmul fast float %9774, %9735
  %9779 = fadd fast float %9775, %9749
  %9780 = call float @dx.op.dot3.f32(i32 55, float %9776, float %9777, float %9778, float %9746, float %9747, float %9748)  ; Dot3(ax,ay,az,bx,by,bz)
  %9781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.i32 %9781, 1
  %9783 = and i32 %9782, 1
  %9784 = icmp ne i32 %9783, 0
  %9785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9786 = extractvalue %dx.types.CBufRet.f32 %9785, 2
  %9787 = fcmp fast ogt float %9786, 0.000000e+00
  %9788 = and i1 %9784, %9787
  br i1 %9788, label %9789, label %10195, !dx.controlflow.hints !138

; <label>:9789                                    ; preds = %9744
  %9790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9791 = extractvalue %dx.types.CBufRet.f32 %9790, 3
  %9792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9792, 2
  %9794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9795 = extractvalue %dx.types.CBufRet.f32 %9794, 2
  %9796 = fsub fast float %9793, %9795
  %9797 = and i32 %9782, 2
  %9798 = extractvalue %dx.types.CBufRet.i32 %9781, 0
  %9799 = call i32 @dx.op.binary.i32(i32 40, i32 %9798, i32 3)  ; UMin(a,b)
  %9800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9801 = extractvalue %dx.types.CBufRet.f32 %9800, 0
  %9802 = extractvalue %dx.types.CBufRet.f32 %9800, 1
  %9803 = extractvalue %dx.types.CBufRet.f32 %9794, 0
  %9804 = extractvalue %dx.types.CBufRet.f32 %9794, 1
  %9805 = fsub fast float %9801, %9803
  %9806 = fsub fast float %9802, %9804
  %9807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9808 = extractvalue %dx.types.CBufRet.f32 %9807, 0
  %9809 = fcmp fast ogt float %9808, 0.000000e+00
  %9810 = fsub fast float -0.000000e+00, %9805
  %9811 = fsub fast float -0.000000e+00, %9806
  %9812 = call float @dx.op.dot2.f32(i32 54, float %9776, float %9777, float %9776, float %9777)  ; Dot2(ax,ay,bx,by)
  %9813 = call float @dx.op.dot2.f32(i32 54, float %9776, float %9777, float %9810, float %9811)  ; Dot2(ax,ay,bx,by)
  %9814 = fmul fast float %9813, 2.000000e+00
  %9815 = call float @dx.op.dot2.f32(i32 54, float %9810, float %9811, float %9810, float %9811)  ; Dot2(ax,ay,bx,by)
  %9816 = fmul fast float %9808, %9808
  %9817 = fsub fast float %9815, %9816
  %9818 = fmul fast float %9814, %9814
  %9819 = fmul fast float %9812, 4.000000e+00
  %9820 = fmul fast float %9819, %9817
  %9821 = fsub fast float %9818, %9820
  %9822 = fcmp fast ogt float %9821, 0.000000e+00
  br i1 %9822, label %9823, label %9838

; <label>:9823                                    ; preds = %9789
  %9824 = fcmp fast ogt float %9814, 0.000000e+00
  %9825 = call float @dx.op.unary.f32(i32 24, float %9821)  ; Sqrt(value)
  %9826 = fsub fast float -0.000000e+00, %9825
  %9827 = select i1 %9824, float %9825, float %9826
  %9828 = fadd fast float %9827, %9814
  %9829 = fmul float %9828, -5.000000e-01
  %9830 = fdiv fast float %9829, %9812
  %9831 = call float @dx.op.binary.f32(i32 35, float %9830, float 0.000000e+00)  ; FMax(a,b)
  %9832 = call float @dx.op.binary.f32(i32 36, float %9775, float %9831)  ; FMin(a,b)
  %9833 = fdiv fast float %9817, %9829
  %9834 = call float @dx.op.binary.f32(i32 35, float %9833, float 0.000000e+00)  ; FMax(a,b)
  %9835 = call float @dx.op.binary.f32(i32 36, float %9775, float %9834)  ; FMin(a,b)
  %9836 = call float @dx.op.binary.f32(i32 36, float %9832, float %9835)  ; FMin(a,b)
  %9837 = call float @dx.op.binary.f32(i32 35, float %9832, float %9835)  ; FMax(a,b)
  br label %9838

; <label>:9838                                    ; preds = %9823, %9789
  %9839 = phi float [ %9837, %9823 ], [ -1.000000e+00, %9789 ]
  %9840 = phi float [ %9836, %9823 ], [ -1.000000e+00, %9789 ]
  %9841 = phi i1 [ true, %9823 ], [ false, %9789 ]
  %9842 = and i1 %9809, %9841
  br i1 %9842, label %9843, label %9845

; <label>:9843                                    ; preds = %9838
  %9844 = fcmp fast oeq float %9840, %9839
  br i1 %9844, label %10148, label %9846

; <label>:9845                                    ; preds = %9838
  br i1 %9809, label %10148, label %9846

; <label>:9846                                    ; preds = %9845, %9843
  %9847 = phi float [ %9775, %9845 ], [ %9839, %9843 ]
  %9848 = phi float [ 0.000000e+00, %9845 ], [ %9840, %9843 ]
  %9849 = icmp ne i32 %9797, 0
  %9850 = fmul fast float %9847, %9778
  %9851 = fadd fast float %9850, %9791
  %9852 = fmul fast float %9851, %9847
  %9853 = select i1 %9849, float 0.000000e+00, float %9852
  %9854 = fcmp fast oeq float %9778, 0.000000e+00
  %9855 = fdiv fast float %9796, %9778
  %9856 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9855)  ; FMax(a,b)
  %9857 = select i1 %9854, float %9847, float %9856
  %9858 = call float @dx.op.binary.f32(i32 36, float %9847, float %9857)  ; FMin(a,b)
  %9859 = fcmp fast ogt float %9778, 0.000000e+00
  %9860 = fcmp fast olt float %9796, 0.000000e+00
  br i1 %9859, label %9861, label %9918

; <label>:9861                                    ; preds = %9846
  %9862 = icmp eq i32 %9797, 0
  br i1 %9860, label %9863, label %9907

; <label>:9863                                    ; preds = %9861
  %9864 = select i1 %9862, float %9847, float 0.000000e+00
  %9865 = fsub fast float -0.000000e+00, %9864
  %9866 = call float @dx.op.unary.f32(i32 6, float %9865)  ; FAbs(value)
  %9867 = fmul fast float %9864, %9778
  %9868 = fadd fast float %9867, %9791
  %9869 = fmul fast float %9866, %9868
  %9870 = fsub fast float %9853, %9869
  %9871 = fsub fast float %9847, %9866
  %9872 = select i1 %9862, float %9871, float 0.000000e+00
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 0
  %9875 = extractvalue %dx.types.CBufRet.f32 %9873, 1
  %9876 = extractvalue %dx.types.CBufRet.f32 %9873, 2
  %9877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9878 = extractvalue %dx.types.CBufRet.f32 %9877, 0
  %9879 = extractvalue %dx.types.CBufRet.f32 %9877, 1
  %9880 = extractvalue %dx.types.CBufRet.f32 %9877, 2
  %9881 = extractvalue %dx.types.CBufRet.f32 %9877, 3
  %9882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.f32 %9882, 3
  %9884 = call float @dx.op.binary.f32(i32 36, float %9870, float %9883)  ; FMin(a,b)
  %9885 = fmul fast float %9881, %9872
  %9886 = call float @dx.op.unary.f32(i32 7, float %9885)  ; Saturate(value)
  %9887 = fsub fast float %9878, %9874
  %9888 = fsub fast float %9879, %9875
  %9889 = fsub fast float %9880, %9876
  %9890 = fmul fast float %9886, %9887
  %9891 = fmul fast float %9886, %9888
  %9892 = fmul fast float %9886, %9889
  %9893 = fadd fast float %9890, %9874
  %9894 = fadd fast float %9891, %9875
  %9895 = fadd fast float %9892, %9876
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.CBufRet.f32 %9896, 1
  %9899 = fadd fast float %9898, %9897
  %9900 = call float @dx.op.unary.f32(i32 7, float %9899)  ; Saturate(value)
  %9901 = extractvalue %dx.types.CBufRet.f32 %9896, 2
  %9902 = extractvalue %dx.types.CBufRet.f32 %9896, 3
  %9903 = fadd fast float %9902, %9901
  %9904 = call float @dx.op.unary.f32(i32 7, float %9903)  ; Saturate(value)
  %9905 = fmul fast float %9900, %9884
  %9906 = fmul fast float %9905, %9904
  br label %10148

; <label>:9907                                    ; preds = %9861
  br i1 %9862, label %9908, label %9929

; <label>:9908                                    ; preds = %9907
  %9909 = call float @dx.op.binary.f32(i32 36, float %9858, float %9848)  ; FMin(a,b)
  %9910 = fsub fast float %9858, %9909
  %9911 = fsub fast float %9910, %9847
  %9912 = call float @dx.op.unary.f32(i32 6, float %9911)  ; FAbs(value)
  %9913 = fadd fast float %9910, %9847
  %9914 = fmul fast float %9913, %9778
  %9915 = fadd fast float %9914, %9791
  %9916 = fmul fast float %9915, %9912
  %9917 = fsub fast float %9853, %9916
  br label %9929

; <label>:9918                                    ; preds = %9846
  br i1 %9860, label %9919, label %9929

; <label>:9919                                    ; preds = %9918
  %9920 = call float @dx.op.binary.f32(i32 35, float %9848, float %9858)  ; FMax(a,b)
  %9921 = icmp eq i32 %9797, 0
  %9922 = select i1 %9921, float %9858, float 0.000000e+00
  %9923 = fsub fast float -0.000000e+00, %9922
  %9924 = call float @dx.op.unary.f32(i32 6, float %9923)  ; FAbs(value)
  %9925 = fmul fast float %9922, %9778
  %9926 = fadd fast float %9925, %9791
  %9927 = fmul fast float %9924, %9926
  %9928 = fsub fast float %9853, %9927
  br label %9929

; <label>:9929                                    ; preds = %9919, %9918, %9908, %9907
  %9930 = phi float [ %9848, %9907 ], [ %9848, %9908 ], [ %9920, %9919 ], [ %9848, %9918 ]
  %9931 = phi float [ 0.000000e+00, %9907 ], [ %9912, %9908 ], [ %9924, %9919 ], [ 0.000000e+00, %9918 ]
  %9932 = phi float [ %9853, %9907 ], [ %9917, %9908 ], [ %9928, %9919 ], [ %9853, %9918 ]
  %9933 = phi float [ %9858, %9907 ], [ %9858, %9908 ], [ %9847, %9919 ], [ %9847, %9918 ]
  %9934 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9934, align 4, !tbaa !125, !noalias !139
  %9935 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9935, align 4, !tbaa !125, !noalias !139
  %9936 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9936, align 4, !tbaa !125, !noalias !139
  %9937 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9937, align 4, !tbaa !125, !noalias !139
  %9938 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9938, align 4, !tbaa !125, !noalias !139
  %9939 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9939, align 4, !tbaa !125, !noalias !139
  %9940 = icmp sgt i32 %9799, 0
  br i1 %9940, label %9941, label %10002

; <label>:9941                                    ; preds = %9929
  br label %9942

; <label>:9942                                    ; preds = %9991, %9941
  %9943 = phi i32 [ %9992, %9991 ], [ 0, %9941 ]
  %9944 = phi i32 [ %9993, %9991 ], [ 0, %9941 ]
  %9945 = add nuw i32 %9944, 171
  %9946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9945)  ; CBufferLoadLegacy(handle,regIndex)
  %9947 = extractvalue %dx.types.CBufRet.f32 %9946, 0
  %9948 = extractvalue %dx.types.CBufRet.f32 %9946, 1
  %9949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9950 = extractvalue %dx.types.CBufRet.f32 %9949, 0
  %9951 = extractvalue %dx.types.CBufRet.f32 %9949, 1
  %9952 = fsub fast float %9947, %9950
  %9953 = fsub fast float %9948, %9951
  %9954 = extractvalue %dx.types.CBufRet.f32 %9946, 2
  %9955 = fsub fast float -0.000000e+00, %9952
  %9956 = fsub fast float -0.000000e+00, %9953
  %9957 = call float @dx.op.dot2.f32(i32 54, float %9776, float %9777, float %9955, float %9956)  ; Dot2(ax,ay,bx,by)
  %9958 = fmul fast float %9957, 2.000000e+00
  %9959 = call float @dx.op.dot2.f32(i32 54, float %9955, float %9956, float %9955, float %9956)  ; Dot2(ax,ay,bx,by)
  %9960 = fmul fast float %9954, %9954
  %9961 = fsub fast float %9959, %9960
  %9962 = fmul fast float %9958, %9958
  %9963 = fmul fast float %9819, %9961
  %9964 = fsub fast float %9962, %9963
  %9965 = fcmp fast ogt float %9964, 0.000000e+00
  br i1 %9965, label %9966, label %9981

; <label>:9966                                    ; preds = %9942
  %9967 = fcmp fast ogt float %9958, 0.000000e+00
  %9968 = call float @dx.op.unary.f32(i32 24, float %9964)  ; Sqrt(value)
  %9969 = fsub fast float -0.000000e+00, %9968
  %9970 = select i1 %9967, float %9968, float %9969
  %9971 = fadd fast float %9970, %9958
  %9972 = fmul float %9971, -5.000000e-01
  %9973 = fdiv fast float %9972, %9812
  %9974 = call float @dx.op.binary.f32(i32 35, float %9973, float 0.000000e+00)  ; FMax(a,b)
  %9975 = call float @dx.op.binary.f32(i32 36, float %9847, float %9974)  ; FMin(a,b)
  %9976 = fdiv fast float %9961, %9972
  %9977 = call float @dx.op.binary.f32(i32 35, float %9976, float 0.000000e+00)  ; FMax(a,b)
  %9978 = call float @dx.op.binary.f32(i32 36, float %9847, float %9977)  ; FMin(a,b)
  %9979 = call float @dx.op.binary.f32(i32 36, float %9975, float %9978)  ; FMin(a,b)
  %9980 = call float @dx.op.binary.f32(i32 35, float %9975, float %9978)  ; FMax(a,b)
  br label %9981

; <label>:9981                                    ; preds = %9966, %9942
  %9982 = phi float [ %9980, %9966 ], [ -1.000000e+00, %9942 ]
  %9983 = phi float [ %9979, %9966 ], [ -1.000000e+00, %9942 ]
  %9984 = phi i1 [ true, %9966 ], [ false, %9942 ]
  br i1 %9984, label %9985, label %9991

; <label>:9985                                    ; preds = %9981
  %9986 = call float @dx.op.binary.f32(i32 35, float %9930, float %9983)  ; FMax(a,b)
  %9987 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9944
  store float %9986, float* %9987, align 4, !tbaa !125, !noalias !139
  %9988 = call float @dx.op.binary.f32(i32 35, float %9930, float %9982)  ; FMax(a,b)
  %9989 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9944
  store float %9988, float* %9989, align 4, !tbaa !125, !noalias !139
  %9990 = add nsw i32 %9943, 1
  br label %9991

; <label>:9991                                    ; preds = %9985, %9981
  %9992 = phi i32 [ %9990, %9985 ], [ %9943, %9981 ]
  %9993 = add nuw nsw i32 %9944, 1
  %9994 = icmp eq i32 %9993, %9799
  br i1 %9994, label %9995, label %9942

; <label>:9995                                    ; preds = %9991
  %9996 = load float, float* %9936, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %9997 = load float, float* %9935, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  %9998 = load float, float* %9934, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  %9999 = load float, float* %9939, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %10000 = load float, float* %9938, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  %10001 = load float, float* %9937, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  br label %10002

; <label>:10002                                   ; preds = %9995, %9929
  %10003 = phi float [ -1.000000e+00, %9929 ], [ %10001, %9995 ]
  %10004 = phi float [ -1.000000e+00, %9929 ], [ %10000, %9995 ]
  %10005 = phi float [ -1.000000e+00, %9929 ], [ %9999, %9995 ]
  %10006 = phi float [ -1.000000e+00, %9929 ], [ %9998, %9995 ]
  %10007 = phi float [ -1.000000e+00, %9929 ], [ %9997, %9995 ]
  %10008 = phi float [ -1.000000e+00, %9929 ], [ %9996, %9995 ]
  %10009 = phi i32 [ 0, %9929 ], [ %9992, %9995 ]
  %10010 = call float @dx.op.binary.f32(i32 36, float %10007, float %10008)  ; FMin(a,b)
  %10011 = call float @dx.op.binary.f32(i32 36, float %10006, float %10010)  ; FMin(a,b)
  %10012 = call float @dx.op.binary.f32(i32 35, float %10006, float %10007)  ; FMax(a,b)
  %10013 = call float @dx.op.binary.f32(i32 36, float %10012, float %10008)  ; FMin(a,b)
  %10014 = call float @dx.op.binary.f32(i32 36, float %10006, float %10007)  ; FMin(a,b)
  %10015 = call float @dx.op.binary.f32(i32 35, float %10014, float %10013)  ; FMax(a,b)
  %10016 = call float @dx.op.binary.f32(i32 35, float %10007, float %10008)  ; FMax(a,b)
  %10017 = call float @dx.op.binary.f32(i32 35, float %10006, float %10016)  ; FMax(a,b)
  store float %10011, float* %9934, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  store float %10015, float* %9935, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %10017, float* %9936, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %10018 = call float @dx.op.binary.f32(i32 36, float %10004, float %10005)  ; FMin(a,b)
  %10019 = call float @dx.op.binary.f32(i32 36, float %10003, float %10018)  ; FMin(a,b)
  %10020 = call float @dx.op.binary.f32(i32 35, float %10003, float %10004)  ; FMax(a,b)
  %10021 = call float @dx.op.binary.f32(i32 36, float %10020, float %10005)  ; FMin(a,b)
  %10022 = call float @dx.op.binary.f32(i32 36, float %10003, float %10004)  ; FMin(a,b)
  %10023 = call float @dx.op.binary.f32(i32 35, float %10022, float %10021)  ; FMax(a,b)
  %10024 = call float @dx.op.binary.f32(i32 35, float %10004, float %10005)  ; FMax(a,b)
  %10025 = call float @dx.op.binary.f32(i32 35, float %10003, float %10024)  ; FMax(a,b)
  store float %10019, float* %9937, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  store float %10023, float* %9938, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  store float %10025, float* %9939, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %10026 = sub nsw i32 3, %10009
  %10027 = icmp sgt i32 %10026, 2
  br i1 %10027, label %10028, label %10066

; <label>:10028                                   ; preds = %10002
  %10029 = icmp eq i32 %9797, 0
  %10030 = fsub fast float %9847, %9931
  %10031 = select i1 %10029, float %10030, float %9931
  %10032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10033 = extractvalue %dx.types.CBufRet.f32 %10032, 0
  %10034 = extractvalue %dx.types.CBufRet.f32 %10032, 1
  %10035 = extractvalue %dx.types.CBufRet.f32 %10032, 2
  %10036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10037 = extractvalue %dx.types.CBufRet.f32 %10036, 0
  %10038 = extractvalue %dx.types.CBufRet.f32 %10036, 1
  %10039 = extractvalue %dx.types.CBufRet.f32 %10036, 2
  %10040 = extractvalue %dx.types.CBufRet.f32 %10036, 3
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 3
  %10043 = call float @dx.op.binary.f32(i32 36, float %9932, float %10042)  ; FMin(a,b)
  %10044 = fmul fast float %10040, %10031
  %10045 = call float @dx.op.unary.f32(i32 7, float %10044)  ; Saturate(value)
  %10046 = fsub fast float %10037, %10033
  %10047 = fsub fast float %10038, %10034
  %10048 = fsub fast float %10039, %10035
  %10049 = fmul fast float %10045, %10046
  %10050 = fmul fast float %10045, %10047
  %10051 = fmul fast float %10045, %10048
  %10052 = fadd fast float %10049, %10033
  %10053 = fadd fast float %10050, %10034
  %10054 = fadd fast float %10051, %10035
  %10055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10056 = extractvalue %dx.types.CBufRet.f32 %10055, 0
  %10057 = extractvalue %dx.types.CBufRet.f32 %10055, 1
  %10058 = fadd fast float %10057, %10056
  %10059 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10060 = extractvalue %dx.types.CBufRet.f32 %10055, 2
  %10061 = extractvalue %dx.types.CBufRet.f32 %10055, 3
  %10062 = fadd fast float %10061, %10060
  %10063 = call float @dx.op.unary.f32(i32 7, float %10062)  ; Saturate(value)
  %10064 = fmul fast float %10059, %10043
  %10065 = fmul fast float %10064, %10063
  br label %10148

; <label>:10066                                   ; preds = %10002
  %10067 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %10026
  %10068 = load float, float* %10067, align 4, !tbaa !125, !noalias !139
  %10069 = fcmp fast olt float %10068, %9933
  %10070 = icmp sgt i32 %10009, 0
  %10071 = and i1 %10070, %10069
  br i1 %10071, label %10072, label %10109

; <label>:10072                                   ; preds = %10066
  br label %10073

; <label>:10073                                   ; preds = %10102, %10072
  %10074 = phi float [ %10103, %10102 ], [ %9931, %10072 ]
  %10075 = phi float [ %10104, %10102 ], [ %9932, %10072 ]
  %10076 = phi float [ %10084, %10102 ], [ %10068, %10072 ]
  %10077 = phi i32 [ %10081, %10102 ], [ %10026, %10072 ]
  %10078 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %10077
  %10079 = load float, float* %10078, align 4, !tbaa !125, !noalias !139
  %10080 = icmp slt i32 %10077, 2
  %10081 = add nsw i32 %10077, 1
  %10082 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %10081
  %10083 = load float, float* %10082, align 4, !tbaa !125, !noalias !139
  %10084 = select i1 %10080, float %10083, float %9847
  %10085 = call float @dx.op.binary.f32(i32 36, float %10084, float %10079)  ; FMin(a,b)
  %10086 = call float @dx.op.binary.f32(i32 36, float %9933, float %10085)  ; FMin(a,b)
  %10087 = icmp eq i32 %9797, 0
  %10088 = fadd fast float %10086, %10076
  %10089 = fmul fast float %10088, %9778
  %10090 = fadd fast float %10089, %9791
  br i1 %10087, label %10096, label %10091

; <label>:10091                                   ; preds = %10073
  %10092 = fsub fast float %10086, %10076
  %10093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10092)  ; FMax(a,b)
  %10094 = fmul fast float %10093, %10090
  %10095 = fadd fast float %10094, %10075
  br label %10102

; <label>:10096                                   ; preds = %10073
  %10097 = fsub fast float %10076, %10086
  %10098 = call float @dx.op.unary.f32(i32 6, float %10097)  ; FAbs(value)
  %10099 = fadd fast float %10098, %10074
  %10100 = fmul fast float %10098, %10090
  %10101 = fsub fast float %10075, %10100
  br label %10102

; <label>:10102                                   ; preds = %10096, %10091
  %10103 = phi float [ %10093, %10091 ], [ %10099, %10096 ]
  %10104 = phi float [ %10095, %10091 ], [ %10101, %10096 ]
  %10105 = fcmp fast olt float %10084, %9933
  %10106 = icmp slt i32 %10081, 3
  %10107 = and i1 %10106, %10105
  br i1 %10107, label %10073, label %10108

; <label>:10108                                   ; preds = %10102
  br label %10109

; <label>:10109                                   ; preds = %10108, %10066
  %10110 = phi float [ %9931, %10066 ], [ %10103, %10108 ]
  %10111 = phi float [ %9932, %10066 ], [ %10104, %10108 ]
  %10112 = fsub fast float %9847, %10110
  %10113 = select i1 %9849, float %10110, float %10112
  %10114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10115 = extractvalue %dx.types.CBufRet.f32 %10114, 0
  %10116 = extractvalue %dx.types.CBufRet.f32 %10114, 1
  %10117 = extractvalue %dx.types.CBufRet.f32 %10114, 2
  %10118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10119 = extractvalue %dx.types.CBufRet.f32 %10118, 0
  %10120 = extractvalue %dx.types.CBufRet.f32 %10118, 1
  %10121 = extractvalue %dx.types.CBufRet.f32 %10118, 2
  %10122 = extractvalue %dx.types.CBufRet.f32 %10118, 3
  %10123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10124 = extractvalue %dx.types.CBufRet.f32 %10123, 3
  %10125 = call float @dx.op.binary.f32(i32 36, float %10111, float %10124)  ; FMin(a,b)
  %10126 = fmul fast float %10122, %10113
  %10127 = call float @dx.op.unary.f32(i32 7, float %10126)  ; Saturate(value)
  %10128 = fsub fast float %10119, %10115
  %10129 = fsub fast float %10120, %10116
  %10130 = fsub fast float %10121, %10117
  %10131 = fmul fast float %10127, %10128
  %10132 = fmul fast float %10127, %10129
  %10133 = fmul fast float %10127, %10130
  %10134 = fadd fast float %10131, %10115
  %10135 = fadd fast float %10132, %10116
  %10136 = fadd fast float %10133, %10117
  %10137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10138 = extractvalue %dx.types.CBufRet.f32 %10137, 0
  %10139 = extractvalue %dx.types.CBufRet.f32 %10137, 1
  %10140 = fadd fast float %10139, %10138
  %10141 = call float @dx.op.unary.f32(i32 7, float %10140)  ; Saturate(value)
  %10142 = extractvalue %dx.types.CBufRet.f32 %10137, 2
  %10143 = extractvalue %dx.types.CBufRet.f32 %10137, 3
  %10144 = fadd fast float %10143, %10142
  %10145 = call float @dx.op.unary.f32(i32 7, float %10144)  ; Saturate(value)
  %10146 = fmul fast float %10141, %10125
  %10147 = fmul fast float %10146, %10145
  br label %10148

; <label>:10148                                   ; preds = %10109, %10028, %9863, %9845, %9843
  %10149 = phi float [ %9872, %9863 ], [ %10031, %10028 ], [ %10113, %10109 ], [ 0.000000e+00, %9843 ], [ 0.000000e+00, %9845 ]
  %10150 = phi float [ %9906, %9863 ], [ %10065, %10028 ], [ %10147, %10109 ], [ 0.000000e+00, %9843 ], [ 0.000000e+00, %9845 ]
  %10151 = phi float [ %9893, %9863 ], [ %10052, %10028 ], [ %10134, %10109 ], [ 0.000000e+00, %9843 ], [ 0.000000e+00, %9845 ]
  %10152 = phi float [ %9894, %9863 ], [ %10053, %10028 ], [ %10135, %10109 ], [ 0.000000e+00, %9843 ], [ 0.000000e+00, %9845 ]
  %10153 = phi float [ %9895, %9863 ], [ %10054, %10028 ], [ %10136, %10109 ], [ 0.000000e+00, %9843 ], [ 0.000000e+00, %9845 ]
  %10154 = fmul fast float %9786, %10150
  %10155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10156 = extractvalue %dx.types.CBufRet.f32 %10155, 2
  %10157 = fsub fast float %9793, %10156
  %10158 = fcmp fast olt float %10154, -2.000000e+01
  %10159 = call float @dx.op.unary.f32(i32 21, float %10154)  ; Exp(value)
  %10160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10161 = extractvalue %dx.types.CBufRet.f32 %10160, 2
  %10162 = extractvalue %dx.types.CBufRet.f32 %10160, 3
  %10163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10164 = extractvalue %dx.types.CBufRet.f32 %10163, 2
  %10165 = fmul fast float %10162, %10157
  %10166 = call float @dx.op.unary.f32(i32 7, float %10165)  ; Saturate(value)
  %10167 = fsub fast float 1.000000e+00, %10166
  %10168 = fmul fast float %9778, 5.000000e-01
  %10169 = fadd fast float %10168, 5.000000e-01
  %10170 = call float @dx.op.unary.f32(i32 7, float %10169)  ; Saturate(value)
  %10171 = fsub fast float 1.000000e+00, %10170
  %10172 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10167)  ; FMax(a,b)
  %10173 = fdiv fast float %10171, %10172
  %10174 = fsub fast float %10157, %9735
  %10175 = call float @dx.op.unary.f32(i32 6, float %10174)  ; FAbs(value)
  %10176 = fmul fast float %10175, %10161
  %10177 = call float @dx.op.unary.f32(i32 7, float %10173)  ; Saturate(value)
  %10178 = fsub fast float 1.000000e+00, %10176
  %10179 = fmul fast float %10178, %10177
  %10180 = fadd fast float %10179, %10176
  %10181 = fmul fast float %10164, %10157
  %10182 = call float @dx.op.unary.f32(i32 7, float %10181)  ; Saturate(value)
  %10183 = fsub fast float 1.000000e+00, %10180
  %10184 = fmul fast float %10183, %10182
  %10185 = fadd fast float %10184, %10180
  %10186 = call float @dx.op.unary.f32(i32 7, float %10185)  ; Saturate(value)
  %10187 = fadd fast float %10159, -1.000000e+00
  %10188 = select i1 %10158, float -1.000000e+00, float %10187
  %10189 = fmul fast float %10186, %10188
  %10190 = fadd fast float %10189, 1.000000e+00
  %10191 = fsub fast float -0.000000e+00, %10189
  %10192 = fmul fast float %10151, %10191
  %10193 = fmul fast float %10152, %10191
  %10194 = fmul fast float %10153, %10191
  br label %10195

; <label>:10195                                   ; preds = %10148, %9744
  %10196 = phi float [ %10149, %10148 ], [ 0.000000e+00, %9744 ]
  %10197 = phi float [ %10190, %10148 ], [ 1.000000e+00, %9744 ]
  %10198 = phi float [ %10192, %10148 ], [ 0.000000e+00, %9744 ]
  %10199 = phi float [ %10193, %10148 ], [ 0.000000e+00, %9744 ]
  %10200 = phi float [ %10194, %10148 ], [ 0.000000e+00, %9744 ]
  %10201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10202 = extractvalue %dx.types.CBufRet.f32 %10201, 1
  %10203 = fsub fast float 1.000000e+00, %10197
  %10204 = fmul fast float %10203, %9779
  %10205 = fmul fast float %10204, %10202
  %10206 = fsub fast float %9779, %10205
  br i1 %9772, label %10207, label %10236, !dx.controlflow.hints !175

; <label>:10207                                   ; preds = %10195
  %10208 = fmul fast float %9780, %9769
  %10209 = fadd fast float %10208, %9770
  %10210 = call float @dx.op.unary.f32(i32 7, float %10209)  ; Saturate(value)
  %10211 = fmul fast float %9751, %10206
  %10212 = fsub fast float -0.000000e+00, %10211
  %10213 = fmul fast float %9752, %10206
  %10214 = fsub fast float -0.000000e+00, %10213
  %10215 = call float @dx.op.unary.f32(i32 21, float %10212)  ; Exp(value)
  %10216 = call float @dx.op.unary.f32(i32 21, float %10214)  ; Exp(value)
  %10217 = call float @dx.op.binary.f32(i32 35, float %9759, float %10215)  ; FMax(a,b)
  %10218 = call float @dx.op.binary.f32(i32 35, float %9759, float %10216)  ; FMax(a,b)
  %10219 = fsub fast float %10218, %10217
  %10220 = fmul fast float %10219, %10210
  %10221 = fadd fast float %10220, %10217
  %10222 = call float @dx.op.unary.f32(i32 7, float %10221)  ; Saturate(value)
  %10223 = fsub fast float %9756, %9761
  %10224 = fsub fast float %9757, %9762
  %10225 = fsub fast float %9758, %9763
  %10226 = fmul fast float %10210, %10223
  %10227 = fmul fast float %10210, %10224
  %10228 = fmul fast float %10210, %10225
  %10229 = fadd fast float %10226, %9761
  %10230 = fadd fast float %10227, %9762
  %10231 = fadd fast float %10228, %9763
  %10232 = fsub fast float 1.000000e+00, %10222
  %10233 = fmul fast float %10232, %10229
  %10234 = fmul fast float %10232, %10230
  %10235 = fmul fast float %10232, %10231
  br label %10295

; <label>:10236                                   ; preds = %10195
  %10237 = fmul fast float %10206, %9768
  %10238 = call float @dx.op.unary.f32(i32 7, float %10237)  ; Saturate(value)
  %10239 = fsub fast float 2.000000e+00, %10238
  %10240 = fmul fast float %10238, 9.921875e-01
  %10241 = fmul fast float %10240, %10239
  %10242 = fadd fast float %10241, 3.906250e-03
  %10243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %10242, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10244 = extractvalue %dx.types.ResRet.f32 %10243, 0
  %10245 = fsub fast float %10238, %10244
  %10246 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10245)  ; FMax(a,b)
  %10247 = fmul fast float %9754, %9735
  %10248 = call float @dx.op.unary.f32(i32 6, float %10247)  ; FAbs(value)
  %10249 = fcmp fast ogt float %10248, 0x3EB0C6F7A0000000
  br i1 %10249, label %10250, label %10256, !dx.controlflow.hints !176

; <label>:10250                                   ; preds = %10236
  %10251 = fmul fast float %10247, 0xBFF7154760000000
  %10252 = call float @dx.op.unary.f32(i32 21, float %10251)  ; Exp(value)
  %10253 = fsub fast float 1.000000e+00, %10252
  %10254 = fdiv fast float %10253, %10247
  %10255 = fmul fast float %10254, %9764
  br label %10256

; <label>:10256                                   ; preds = %10250, %10236
  %10257 = phi float [ %10255, %10250 ], [ %9764, %10236 ]
  %10258 = fadd fast float %10257, %9766
  %10259 = fmul fast float %10258, %10246
  %10260 = fmul fast float %9751, %10259
  %10261 = fsub fast float -0.000000e+00, %10260
  %10262 = fmul fast float %9752, %10259
  %10263 = fsub fast float -0.000000e+00, %10262
  %10264 = fmul fast float %9753, %10259
  %10265 = fsub fast float -0.000000e+00, %10264
  %10266 = call float @dx.op.unary.f32(i32 21, float %10261)  ; Exp(value)
  %10267 = call float @dx.op.unary.f32(i32 21, float %10263)  ; Exp(value)
  %10268 = call float @dx.op.unary.f32(i32 21, float %10265)  ; Exp(value)
  %10269 = fmul fast float %9780, %9780
  %10270 = fadd fast float %10269, 1.000000e+00
  %10271 = fmul fast float %10270, 0x3FAE8EC8A0000000
  %10272 = fmul fast float %10271, %9761
  %10273 = fmul fast float %10271, %9762
  %10274 = fmul fast float %10271, %9763
  %10275 = fmul fast float %9780, %9759
  %10276 = fsub fast float 1.000000e+00, %10275
  %10277 = fmul fast float %9759, %9759
  %10278 = fsub fast float 1.000000e+00, %10277
  %10279 = fmul fast float %10278, 0x3FB45F3060000000
  %10280 = fmul fast float %10276, %10276
  %10281 = fdiv fast float 1.000000e+00, %10280
  %10282 = fmul fast float %10279, %10281
  %10283 = fmul fast float %10282, %9756
  %10284 = fmul fast float %10282, %9757
  %10285 = fmul fast float %10282, %9758
  %10286 = fadd fast float %10283, %10272
  %10287 = fadd fast float %10284, %10273
  %10288 = fadd fast float %10285, %10274
  %10289 = fsub fast float 1.000000e+00, %10266
  %10290 = fsub fast float 1.000000e+00, %10267
  %10291 = fsub fast float 1.000000e+00, %10268
  %10292 = fmul fast float %10286, %10289
  %10293 = fmul fast float %10287, %10290
  %10294 = fmul fast float %10288, %10291
  br label %10295

; <label>:10295                                   ; preds = %10256, %10207
  %10296 = phi float [ %10233, %10207 ], [ %10292, %10256 ]
  %10297 = phi float [ %10234, %10207 ], [ %10293, %10256 ]
  %10298 = phi float [ %10235, %10207 ], [ %10294, %10256 ]
  %10299 = phi float [ %10222, %10207 ], [ %10266, %10256 ]
  %10300 = phi float [ %10222, %10207 ], [ %10267, %10256 ]
  %10301 = phi float [ %10222, %10207 ], [ %10268, %10256 ]
  br i1 %9788, label %10302, label %10500, !dx.controlflow.hints !177

; <label>:10302                                   ; preds = %10295
  %10303 = extractvalue %dx.types.CBufRet.f32 %10201, 0
  %10304 = fmul fast float %10303, %10203
  %10305 = fsub fast float %10198, %10296
  %10306 = fsub fast float %10199, %10297
  %10307 = fsub fast float %10200, %10298
  %10308 = fmul fast float %10304, %10305
  %10309 = fmul fast float %10304, %10306
  %10310 = fmul fast float %10304, %10307
  %10311 = fadd fast float %10308, %10296
  %10312 = fadd fast float %10309, %10297
  %10313 = fadd fast float %10310, %10298
  %10314 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10299)  ; FMax(a,b)
  %10315 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10300)  ; FMax(a,b)
  %10316 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10301)  ; FMax(a,b)
  %10317 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10197)  ; FMax(a,b)
  %10318 = call float @dx.op.binary.f32(i32 35, float %10196, float %10206)  ; FMax(a,b)
  %10319 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10318)  ; FMax(a,b)
  %10320 = fdiv fast float %10196, %10319
  %10321 = call float @dx.op.unary.f32(i32 7, float %10320)  ; Saturate(value)
  %10322 = fdiv fast float %10206, %10319
  %10323 = call float @dx.op.unary.f32(i32 7, float %10322)  ; Saturate(value)
  %10324 = fcmp fast une float %10317, 1.000000e+00
  br i1 %10324, label %10325, label %10338, !dx.controlflow.hints !178

; <label>:10325                                   ; preds = %10302
  %10326 = call float @dx.op.unary.f32(i32 23, float %10317)  ; Log(value)
  %10327 = fmul fast float %10326, 0x3FE62E4300000000
  %10328 = fmul fast float %10198, %10327
  %10329 = fsub fast float -0.000000e+00, %10328
  %10330 = fmul fast float %10199, %10327
  %10331 = fsub fast float -0.000000e+00, %10330
  %10332 = fmul fast float %10200, %10327
  %10333 = fsub fast float -0.000000e+00, %10332
  %10334 = fsub fast float 1.000000e+00, %10317
  %10335 = fdiv fast float %10329, %10334
  %10336 = fdiv fast float %10331, %10334
  %10337 = fdiv fast float %10333, %10334
  br label %10338

; <label>:10338                                   ; preds = %10325, %10302
  %10339 = phi float [ %10335, %10325 ], [ %10198, %10302 ]
  %10340 = phi float [ %10336, %10325 ], [ %10199, %10302 ]
  %10341 = phi float [ %10337, %10325 ], [ %10200, %10302 ]
  %10342 = phi float [ %10327, %10325 ], [ 0.000000e+00, %10302 ]
  %10343 = fcmp fast une float %10314, 1.000000e+00
  br i1 %10343, label %10344, label %10351, !dx.controlflow.hints !179

; <label>:10344                                   ; preds = %10338
  %10345 = call float @dx.op.unary.f32(i32 23, float %10314)  ; Log(value)
  %10346 = fmul fast float %10345, 0x3FE62E4300000000
  %10347 = fmul fast float %10311, %10346
  %10348 = fsub fast float -0.000000e+00, %10347
  %10349 = fsub fast float 1.000000e+00, %10314
  %10350 = fdiv fast float %10348, %10349
  br label %10351

; <label>:10351                                   ; preds = %10344, %10338
  %10352 = phi float [ %10350, %10344 ], [ %10311, %10338 ]
  %10353 = phi float [ %10346, %10344 ], [ 0.000000e+00, %10338 ]
  %10354 = fcmp fast une float %10315, 1.000000e+00
  br i1 %10354, label %10355, label %10362, !dx.controlflow.hints !179

; <label>:10355                                   ; preds = %10351
  %10356 = call float @dx.op.unary.f32(i32 23, float %10315)  ; Log(value)
  %10357 = fmul fast float %10356, 0x3FE62E4300000000
  %10358 = fmul fast float %10312, %10357
  %10359 = fsub fast float -0.000000e+00, %10358
  %10360 = fsub fast float 1.000000e+00, %10315
  %10361 = fdiv fast float %10359, %10360
  br label %10362

; <label>:10362                                   ; preds = %10355, %10351
  %10363 = phi float [ %10361, %10355 ], [ %10312, %10351 ]
  %10364 = phi float [ %10357, %10355 ], [ 0.000000e+00, %10351 ]
  %10365 = fcmp fast une float %10316, 1.000000e+00
  br i1 %10365, label %10366, label %10373, !dx.controlflow.hints !179

; <label>:10366                                   ; preds = %10362
  %10367 = call float @dx.op.unary.f32(i32 23, float %10316)  ; Log(value)
  %10368 = fmul fast float %10367, 0x3FE62E4300000000
  %10369 = fmul fast float %10313, %10368
  %10370 = fsub fast float -0.000000e+00, %10369
  %10371 = fsub fast float 1.000000e+00, %10316
  %10372 = fdiv fast float %10370, %10371
  br label %10373

; <label>:10373                                   ; preds = %10366, %10362
  %10374 = phi float [ %10372, %10366 ], [ %10313, %10362 ]
  %10375 = phi float [ %10368, %10366 ], [ 0.000000e+00, %10362 ]
  %10376 = fmul fast float %10339, %10323
  %10377 = fmul fast float %10340, %10323
  %10378 = fmul fast float %10341, %10323
  %10379 = fmul fast float %10342, %10323
  %10380 = fmul fast float %10352, %10321
  %10381 = fmul fast float %10363, %10321
  %10382 = fmul fast float %10374, %10321
  %10383 = fmul fast float %10353, %10321
  %10384 = fmul fast float %10364, %10321
  %10385 = fmul fast float %10375, %10321
  %10386 = fadd fast float %10380, %10376
  %10387 = fadd fast float %10381, %10377
  %10388 = fadd fast float %10382, %10378
  %10389 = fadd fast float %10383, %10379
  %10390 = fadd fast float %10384, %10379
  %10391 = fadd fast float %10385, %10379
  %10392 = fcmp fast une float %10389, 0.000000e+00
  br i1 %10392, label %10393, label %10400, !dx.controlflow.hints !180

; <label>:10393                                   ; preds = %10373
  %10394 = fmul fast float %10389, 0x3FF7154760000000
  %10395 = call float @dx.op.unary.f32(i32 21, float %10394)  ; Exp(value)
  %10396 = fsub fast float 1.000000e+00, %10395
  %10397 = fmul fast float %10386, %10396
  %10398 = fsub fast float -0.000000e+00, %10397
  %10399 = fdiv fast float %10398, %10389
  br label %10400

; <label>:10400                                   ; preds = %10393, %10373
  %10401 = phi float [ %10395, %10393 ], [ 1.000000e+00, %10373 ]
  %10402 = phi float [ %10399, %10393 ], [ %10386, %10373 ]
  %10403 = fcmp fast une float %10390, 0.000000e+00
  br i1 %10403, label %10404, label %10411, !dx.controlflow.hints !180

; <label>:10404                                   ; preds = %10400
  %10405 = fmul fast float %10390, 0x3FF7154760000000
  %10406 = call float @dx.op.unary.f32(i32 21, float %10405)  ; Exp(value)
  %10407 = fsub fast float 1.000000e+00, %10406
  %10408 = fmul fast float %10387, %10407
  %10409 = fsub fast float -0.000000e+00, %10408
  %10410 = fdiv fast float %10409, %10390
  br label %10411

; <label>:10411                                   ; preds = %10404, %10400
  %10412 = phi float [ %10406, %10404 ], [ 1.000000e+00, %10400 ]
  %10413 = phi float [ %10410, %10404 ], [ %10387, %10400 ]
  %10414 = fcmp fast une float %10391, 0.000000e+00
  br i1 %10414, label %10415, label %10422, !dx.controlflow.hints !180

; <label>:10415                                   ; preds = %10411
  %10416 = fmul fast float %10391, 0x3FF7154760000000
  %10417 = call float @dx.op.unary.f32(i32 21, float %10416)  ; Exp(value)
  %10418 = fsub fast float 1.000000e+00, %10417
  %10419 = fmul fast float %10388, %10418
  %10420 = fsub fast float -0.000000e+00, %10419
  %10421 = fdiv fast float %10420, %10391
  br label %10422

; <label>:10422                                   ; preds = %10415, %10411
  %10423 = phi float [ %10417, %10415 ], [ 1.000000e+00, %10411 ]
  %10424 = phi float [ %10421, %10415 ], [ %10388, %10411 ]
  %10425 = fcmp fast ogt float %10321, %10323
  br i1 %10425, label %10426, label %10446

; <label>:10426                                   ; preds = %10422
  %10427 = fsub fast float 1.000000e+00, %10323
  %10428 = fmul fast float %10339, %10427
  %10429 = fmul fast float %10340, %10427
  %10430 = fmul fast float %10341, %10427
  %10431 = fmul fast float %10342, %10427
  %10432 = fcmp fast une float %10431, 0.000000e+00
  br i1 %10432, label %10433, label %10484, !dx.controlflow.hints !181

; <label>:10433                                   ; preds = %10426
  %10434 = fmul fast float %10431, 0x3FF7154760000000
  %10435 = call float @dx.op.unary.f32(i32 21, float %10434)  ; Exp(value)
  %10436 = fsub fast float 1.000000e+00, %10435
  %10437 = fmul fast float %10428, %10436
  %10438 = fsub fast float -0.000000e+00, %10437
  %10439 = fmul fast float %10429, %10436
  %10440 = fsub fast float -0.000000e+00, %10439
  %10441 = fmul fast float %10430, %10436
  %10442 = fsub fast float -0.000000e+00, %10441
  %10443 = fdiv fast float %10438, %10431
  %10444 = fdiv fast float %10440, %10431
  %10445 = fdiv fast float %10442, %10431
  br label %10484

; <label>:10446                                   ; preds = %10422
  %10447 = fsub fast float 1.000000e+00, %10321
  %10448 = fmul fast float %10352, %10447
  %10449 = fmul fast float %10363, %10447
  %10450 = fmul fast float %10374, %10447
  %10451 = fmul fast float %10353, %10447
  %10452 = fmul fast float %10364, %10447
  %10453 = fmul fast float %10375, %10447
  %10454 = fcmp fast une float %10451, 0.000000e+00
  br i1 %10454, label %10455, label %10462, !dx.controlflow.hints !180

; <label>:10455                                   ; preds = %10446
  %10456 = fmul fast float %10451, 0x3FF7154760000000
  %10457 = call float @dx.op.unary.f32(i32 21, float %10456)  ; Exp(value)
  %10458 = fsub fast float 1.000000e+00, %10457
  %10459 = fmul fast float %10448, %10458
  %10460 = fsub fast float -0.000000e+00, %10459
  %10461 = fdiv fast float %10460, %10451
  br label %10462

; <label>:10462                                   ; preds = %10455, %10446
  %10463 = phi float [ %10461, %10455 ], [ %10448, %10446 ]
  %10464 = phi float [ %10457, %10455 ], [ 1.000000e+00, %10446 ]
  %10465 = fcmp fast une float %10452, 0.000000e+00
  br i1 %10465, label %10466, label %10473, !dx.controlflow.hints !180

; <label>:10466                                   ; preds = %10462
  %10467 = fmul fast float %10452, 0x3FF7154760000000
  %10468 = call float @dx.op.unary.f32(i32 21, float %10467)  ; Exp(value)
  %10469 = fsub fast float 1.000000e+00, %10468
  %10470 = fmul fast float %10449, %10469
  %10471 = fsub fast float -0.000000e+00, %10470
  %10472 = fdiv fast float %10471, %10452
  br label %10473

; <label>:10473                                   ; preds = %10466, %10462
  %10474 = phi float [ %10472, %10466 ], [ %10449, %10462 ]
  %10475 = phi float [ %10468, %10466 ], [ 1.000000e+00, %10462 ]
  %10476 = fcmp fast une float %10453, 0.000000e+00
  br i1 %10476, label %10477, label %10484, !dx.controlflow.hints !180

; <label>:10477                                   ; preds = %10473
  %10478 = fmul fast float %10453, 0x3FF7154760000000
  %10479 = call float @dx.op.unary.f32(i32 21, float %10478)  ; Exp(value)
  %10480 = fsub fast float 1.000000e+00, %10479
  %10481 = fmul fast float %10450, %10480
  %10482 = fsub fast float -0.000000e+00, %10481
  %10483 = fdiv fast float %10482, %10453
  br label %10484

; <label>:10484                                   ; preds = %10477, %10473, %10433, %10426
  %10485 = phi float [ %10483, %10477 ], [ %10445, %10433 ], [ %10430, %10426 ], [ %10450, %10473 ]
  %10486 = phi float [ %10474, %10477 ], [ %10444, %10433 ], [ %10429, %10426 ], [ %10474, %10473 ]
  %10487 = phi float [ %10463, %10477 ], [ %10443, %10433 ], [ %10428, %10426 ], [ %10463, %10473 ]
  %10488 = phi float [ %10479, %10477 ], [ %10435, %10433 ], [ 1.000000e+00, %10426 ], [ 1.000000e+00, %10473 ]
  %10489 = phi float [ %10475, %10477 ], [ %10435, %10433 ], [ 1.000000e+00, %10426 ], [ %10475, %10473 ]
  %10490 = phi float [ %10464, %10477 ], [ %10435, %10433 ], [ 1.000000e+00, %10426 ], [ %10464, %10473 ]
  %10491 = fmul fast float %10490, %10402
  %10492 = fmul fast float %10489, %10413
  %10493 = fmul fast float %10488, %10424
  %10494 = fadd fast float %10491, %10487
  %10495 = fadd fast float %10492, %10486
  %10496 = fadd fast float %10493, %10485
  %10497 = fmul fast float %10490, %10401
  %10498 = fmul fast float %10489, %10412
  %10499 = fmul fast float %10488, %10423
  br label %10500

; <label>:10500                                   ; preds = %10484, %10295
  %10501 = phi float [ %10499, %10484 ], [ %10301, %10295 ]
  %10502 = phi float [ %10498, %10484 ], [ %10300, %10295 ]
  %10503 = phi float [ %10497, %10484 ], [ %10299, %10295 ]
  %10504 = phi float [ %10496, %10484 ], [ %10298, %10295 ]
  %10505 = phi float [ %10495, %10484 ], [ %10297, %10295 ]
  %10506 = phi float [ %10494, %10484 ], [ %10296, %10295 ]
  %10507 = fmul fast float %10503, %9743
  %10508 = call float @dx.op.dot3.f32(i32 55, float %10503, float %10502, float %10501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10509 = call float @dx.op.dot3.f32(i32 55, float %10506, float %10505, float %10504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10510 = select i1 %260, float %10508, float %10503
  %10511 = select i1 %260, float %10508, float %10502
  %10512 = select i1 %260, float 1.000000e+00, float %10501
  %10513 = select i1 %260, float %10509, float %10506
  %10514 = select i1 %260, float 0.000000e+00, float %10505
  %10515 = select i1 %260, float 0.000000e+00, float %10504
  %10516 = fmul fast float %10510, %9737
  %10517 = fmul fast float %10511, %9738
  %10518 = fmul fast float %10512, %9739
  %10519 = fadd fast float %10516, %10513
  %10520 = fadd fast float %10517, %10514
  %10521 = fadd fast float %10515, %10518
  %10522 = fmul fast float %10510, %9740
  %10523 = fmul fast float %10511, %9741
  %10524 = fmul fast float %10512, %9742
  %10525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10526 = extractvalue %dx.types.CBufRet.i32 %10525, 0
  %10527 = icmp eq i32 %10526, 0
  br i1 %10527, label %10892, label %10528, !dx.controlflow.hints !182

; <label>:10528                                   ; preds = %10500
  %10529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10530 = extractvalue %dx.types.CBufRet.f32 %10529, 2
  %10531 = extractvalue %dx.types.CBufRet.f32 %10529, 3
  %10532 = fmul fast float %10530, %111
  %10533 = fmul fast float %10531, %112
  %10534 = fmul fast float %10532, 2.000000e+00
  %10535 = fmul fast float %10533, 2.000000e+00
  %10536 = fsub fast float 1.000000e+00, %10534
  %10537 = fsub fast float 1.000000e+00, %10535
  %10538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10539 = extractvalue %dx.types.CBufRet.f32 %10538, 0
  %10540 = extractvalue %dx.types.CBufRet.f32 %10538, 1
  %10541 = extractvalue %dx.types.CBufRet.f32 %10538, 2
  %10542 = fmul fast float %10536, %10539
  %10543 = fmul fast float %10536, %10540
  %10544 = fmul fast float %10536, %10541
  %10545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10546 = extractvalue %dx.types.CBufRet.f32 %10545, 0
  %10547 = extractvalue %dx.types.CBufRet.f32 %10545, 1
  %10548 = extractvalue %dx.types.CBufRet.f32 %10545, 2
  %10549 = fmul fast float %10537, %10546
  %10550 = fmul fast float %10537, %10547
  %10551 = fmul fast float %10537, %10548
  %10552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10553 = extractvalue %dx.types.CBufRet.f32 %10552, 0
  %10554 = extractvalue %dx.types.CBufRet.f32 %10552, 1
  %10555 = extractvalue %dx.types.CBufRet.f32 %10552, 2
  %10556 = fadd fast float %10549, %10553
  %10557 = fadd fast float %10556, %10542
  %10558 = fadd fast float %10550, %10554
  %10559 = fadd fast float %10558, %10543
  %10560 = fadd fast float %10551, %10555
  %10561 = fadd fast float %10560, %10544
  %10562 = fmul fast float %10557, %9736
  %10563 = fmul fast float %10559, %9736
  %10564 = fmul fast float %10561, %9736
  %10565 = fmul fast float %10562, %10562
  %10566 = fmul fast float %10563, %10563
  %10567 = fadd fast float %10565, %10566
  %10568 = fmul fast float %10564, %10564
  %10569 = fadd fast float %10567, %10568
  %10570 = call float @dx.op.unary.f32(i32 24, float %10569)  ; Sqrt(value)
  %10571 = extractvalue %dx.types.CBufRet.f32 %9466, 0
  %10572 = fsub fast float %10570, %10571
  %10573 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %10574 = fmul fast float %10572, %10573
  %10575 = call float @dx.op.unary.f32(i32 7, float %10574)  ; Saturate(value)
  %10576 = fadd fast float %10575, -5.000000e-01
  %10577 = fmul fast float %10576, 2.000000e+00
  %10578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10579 = extractvalue %dx.types.CBufRet.f32 %10578, 2
  %10580 = call float @dx.op.binary.f32(i32 36, float %10579, float %10577)  ; FMin(a,b)
  %10581 = fsub fast float -0.000000e+00, %10579
  %10582 = fcmp fast ogt float %10580, %10581
  br i1 %10582, label %10583, label %10892, !dx.controlflow.hints !183

; <label>:10583                                   ; preds = %10528
  %10584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10585 = extractvalue %dx.types.CBufRet.f32 %10584, 3
  %10586 = fcmp fast ogt float %10585, 0.000000e+00
  br i1 %10586, label %10587, label %10662, !dx.controlflow.hints !184

; <label>:10587                                   ; preds = %10583
  %10588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10589 = extractvalue %dx.types.Dimensions %10588, 0
  %10590 = sitofp i32 %10589 to float
  %10591 = extractvalue %dx.types.Dimensions %10588, 1
  %10592 = sitofp i32 %10591 to float
  %10593 = fmul fast float %10532, %10590
  %10594 = fmul fast float %10533, %10592
  %10595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10596 = extractvalue %dx.types.CBufRet.f32 %10595, 1
  %10597 = fsub fast float -0.000000e+00, %10596
  %10598 = fptoui float %10597 to i32
  %10599 = fptoui float %10593 to i32
  %10600 = fptoui float %10594 to i32
  %10601 = and i32 %10598, 31
  %10602 = lshr i32 %10599, %10601
  %10603 = lshr i32 %10600, %10601
  %10604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10598, i32 %10602, i32 %10603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10605 = extractvalue %dx.types.ResRet.f32 %10604, 0
  %10606 = fcmp fast olt float %10605, -1.000000e+00
  %10607 = fcmp fast ogt float %10605, -1.000000e+00
  %10608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10609 = extractvalue %dx.types.CBufRet.f32 %10608, 1
  %10610 = select i1 %10607, float %10609, float 1.000000e+00
  %10611 = fadd fast float %10605, 1.000000e+00
  %10612 = fmul fast float %10610, %10611
  %10613 = call float @dx.op.unary.f32(i32 6, float %10612)  ; FAbs(value)
  %10614 = extractvalue %dx.types.CBufRet.f32 %10608, 3
  %10615 = fcmp fast oge float %10613, %10614
  %10616 = select i1 %10615, float 0x4197782600000000, float %10613
  %10617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10618 = extractvalue %dx.types.CBufRet.f32 %10617, 0
  %10619 = extractvalue %dx.types.CBufRet.f32 %10617, 1
  %10620 = extractvalue %dx.types.CBufRet.f32 %10617, 2
  %10621 = select i1 %10606, float %10618, float %10539
  %10622 = select i1 %10606, float %10619, float %10540
  %10623 = select i1 %10606, float %10620, float %10541
  %10624 = fmul fast float %10621, %10536
  %10625 = fmul fast float %10622, %10536
  %10626 = fmul fast float %10623, %10536
  %10627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10628 = extractvalue %dx.types.CBufRet.f32 %10627, 0
  %10629 = extractvalue %dx.types.CBufRet.f32 %10627, 1
  %10630 = extractvalue %dx.types.CBufRet.f32 %10627, 2
  %10631 = select i1 %10606, float %10628, float %10546
  %10632 = select i1 %10606, float %10629, float %10547
  %10633 = select i1 %10606, float %10630, float %10548
  %10634 = fmul fast float %10631, %10537
  %10635 = fmul fast float %10632, %10537
  %10636 = fmul fast float %10633, %10537
  %10637 = fadd fast float %10634, %10624
  %10638 = fadd fast float %10635, %10625
  %10639 = fadd fast float %10636, %10626
  %10640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10641 = extractvalue %dx.types.CBufRet.f32 %10640, 0
  %10642 = extractvalue %dx.types.CBufRet.f32 %10640, 1
  %10643 = extractvalue %dx.types.CBufRet.f32 %10640, 2
  %10644 = select i1 %10606, float %10641, float %10553
  %10645 = select i1 %10606, float %10642, float %10554
  %10646 = select i1 %10606, float %10643, float %10555
  %10647 = fadd fast float %10637, %10644
  %10648 = fadd fast float %10638, %10645
  %10649 = fadd fast float %10639, %10646
  %10650 = fmul fast float %10647, %10616
  %10651 = fmul fast float %10648, %10616
  %10652 = fmul fast float %10649, %10616
  %10653 = fmul fast float %10650, %10650
  %10654 = fmul fast float %10651, %10651
  %10655 = fadd fast float %10653, %10654
  %10656 = fmul fast float %10652, %10652
  %10657 = fadd fast float %10655, %10656
  %10658 = call float @dx.op.unary.f32(i32 24, float %10657)  ; Sqrt(value)
  %10659 = fsub fast float %10658, %10571
  %10660 = fmul fast float %10659, %10573
  %10661 = call float @dx.op.unary.f32(i32 7, float %10660)  ; Saturate(value)
  br label %10662

; <label>:10662                                   ; preds = %10587, %10583
  %10663 = phi float [ %10661, %10587 ], [ 1.000000e+00, %10583 ]
  %10664 = fmul fast float %10580, 5.000000e-01
  %10665 = fadd fast float %10664, 5.000000e-01
  %10666 = call float @dx.op.unary.f32(i32 22, float %10665)  ; Frc(value)
  %10667 = call float @dx.op.unary.f32(i32 27, float %10666)  ; Round_ni(value)
  %10668 = call float @dx.op.unary.f32(i32 22, float %10666)  ; Frc(value)
  %10669 = fmul fast float %10668, 2.000000e+00
  %10670 = fadd fast float %10669, -1.000000e+00
  %10671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %10532, float %10533, float %10667, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10672 = extractvalue %dx.types.ResRet.f32 %10671, 0
  %10673 = extractvalue %dx.types.ResRet.f32 %10671, 1
  %10674 = extractvalue %dx.types.ResRet.f32 %10671, 2
  %10675 = extractvalue %dx.types.ResRet.f32 %10671, 3
  %10676 = fadd fast float %10672, -5.000000e-01
  %10677 = fadd fast float %10674, -5.000000e-01
  %10678 = fmul fast float %10676, 0xBFD5555560000000
  %10679 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10677, float %10678)  ; FMad(a,b,c)
  %10680 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10673, float 0.000000e+00)  ; FMad(a,b,c)
  %10681 = fadd fast float %10680, %10675
  %10682 = fmul fast float %10676, -7.500000e-01
  %10683 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10677, float %10682)  ; FMad(a,b,c)
  %10684 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10673, float 0.000000e+00)  ; FMad(a,b,c)
  %10685 = fadd fast float %10684, %10675
  %10686 = call float @dx.op.binary.f32(i32 35, float %10679, float -1.000000e+00)  ; FMax(a,b)
  %10687 = call float @dx.op.binary.f32(i32 35, float %10681, float -1.000000e+00)  ; FMax(a,b)
  %10688 = call float @dx.op.binary.f32(i32 35, float %10683, float -1.000000e+00)  ; FMax(a,b)
  %10689 = call float @dx.op.binary.f32(i32 35, float %10685, float -1.000000e+00)  ; FMax(a,b)
  %10690 = call float @dx.op.binary.f32(i32 36, float %10686, float 1.000000e+00)  ; FMin(a,b)
  %10691 = call float @dx.op.binary.f32(i32 36, float %10687, float 1.000000e+00)  ; FMin(a,b)
  %10692 = call float @dx.op.binary.f32(i32 36, float %10688, float 1.000000e+00)  ; FMin(a,b)
  %10693 = call float @dx.op.binary.f32(i32 36, float %10689, float 1.000000e+00)  ; FMin(a,b)
  %10694 = fcmp fast olt float %10690, 0x3FEFFF8020000000
  br i1 %10694, label %10695, label %10810, !dx.controlflow.hints !185

; <label>:10695                                   ; preds = %10662
  %10696 = extractvalue %dx.types.CBufRet.f32 %10578, 3
  %10697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10698 = extractvalue %dx.types.CBufRet.f32 %10697, 0
  %10699 = extractvalue %dx.types.CBufRet.f32 %10697, 1
  %10700 = extractvalue %dx.types.CBufRet.f32 %10697, 2
  %10701 = extractvalue %dx.types.CBufRet.f32 %10697, 3
  %10702 = fsub fast float %10698, %10690
  %10703 = fsub fast float %10699, %10691
  %10704 = fsub fast float %10700, %10692
  %10705 = fsub fast float %10701, %10693
  %10706 = fmul fast float %10702, %10696
  %10707 = fmul fast float %10703, %10696
  %10708 = fmul fast float %10704, %10696
  %10709 = fmul fast float %10705, %10696
  %10710 = fadd fast float %10706, %10690
  %10711 = fadd fast float %10707, %10691
  %10712 = fsub fast float -0.000000e+00, %10711
  %10713 = fadd fast float %10708, %10692
  %10714 = fadd fast float %10709, %10693
  %10715 = fmul fast float %10710, %10710
  %10716 = fsub fast float %10711, %10715
  %10717 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10716)  ; FMax(a,b)
  %10718 = fdiv fast float 1.000000e+00, %10717
  %10719 = fmul fast float %10711, %10710
  %10720 = fsub fast float %10713, %10719
  %10721 = fsub fast float %10670, %10710
  %10722 = fmul fast float %10670, %10670
  %10723 = fsub fast float %10722, %10711
  %10724 = fmul fast float %10721, %10718
  %10725 = fmul fast float %10724, %10720
  %10726 = fsub fast float %10723, %10725
  %10727 = fmul fast float %10711, %10711
  %10728 = fsub fast float %10714, %10727
  %10729 = fmul fast float %10720, %10720
  %10730 = fmul fast float %10729, %10718
  %10731 = fsub fast float %10728, %10730
  %10732 = fdiv fast float %10726, %10731
  %10733 = fmul fast float %10720, %10732
  %10734 = fsub fast float %10721, %10733
  %10735 = fmul fast float %10734, %10718
  %10736 = fmul fast float %10735, %10710
  %10737 = fsub fast float 1.000000e+00, %10736
  %10738 = fmul fast float %10711, %10732
  %10739 = fsub fast float %10737, %10738
  %10740 = fmul fast float %10735, %10735
  %10741 = fmul fast float %10732, 4.000000e+00
  %10742 = fmul fast float %10741, %10739
  %10743 = fsub fast float %10740, %10742
  %10744 = call float @dx.op.unary.f32(i32 24, float %10743)  ; Sqrt(value)
  %10745 = fcmp fast oge float %10735, 0.000000e+00
  %10746 = fsub fast float -0.000000e+00, %10744
  %10747 = select i1 %10745, float %10746, float %10744
  %10748 = fsub fast float %10747, %10735
  %10749 = fdiv fast float %10748, %10732
  %10750 = fdiv fast float %10739, %10748
  %10751 = fmul fast float %10749, 5.000000e-01
  %10752 = fmul fast float %10750, 2.000000e+00
  %10753 = select i1 %10745, float %10751, float %10752
  %10754 = select i1 %10745, float %10752, float %10751
  %10755 = call float @dx.op.binary.f32(i32 35, float %10753, float %10754)  ; FMax(a,b)
  %10756 = call float @dx.op.binary.f32(i32 36, float %10753, float %10754)  ; FMin(a,b)
  %10757 = fcmp fast ogt float %10670, %10756
  br i1 %10757, label %10758, label %10768

; <label>:10758                                   ; preds = %10695
  %10759 = fsub fast float %10670, %10756
  %10760 = fsub fast float %10755, %10756
  %10761 = fmul fast float %10759, %10760
  %10762 = fmul fast float %10755, %10670
  %10763 = fadd fast float %10755, %10670
  %10764 = fmul fast float %10763, %10710
  %10765 = fadd fast float %10762, %10711
  %10766 = fsub fast float %10765, %10764
  %10767 = fdiv fast float %10766, %10761
  br label %10768

; <label>:10768                                   ; preds = %10758, %10695
  %10769 = phi float [ %10767, %10758 ], [ 0.000000e+00, %10695 ]
  %10770 = fcmp fast ogt float %10670, %10755
  %10771 = fsub fast float %10670, %10755
  br i1 %10770, label %10772, label %10782

; <label>:10772                                   ; preds = %10768
  %10773 = fsub fast float %10755, %10756
  %10774 = fmul fast float %10773, %10771
  %10775 = fmul fast float %10756, %10670
  %10776 = fadd fast float %10756, %10670
  %10777 = fmul fast float %10776, %10710
  %10778 = fsub fast float %10712, %10775
  %10779 = fadd fast float %10778, %10777
  %10780 = fdiv fast float %10779, %10774
  %10781 = fadd fast float %10780, %10769
  br label %10782

; <label>:10782                                   ; preds = %10772, %10768
  %10783 = phi float [ %10781, %10772 ], [ %10769, %10768 ]
  %10784 = fsub fast float %10670, %10756
  %10785 = fmul fast float %10784, %10771
  %10786 = fmul fast float %10756, %10755
  %10787 = fadd fast float %10756, %10755
  %10788 = fmul fast float %10787, %10710
  %10789 = fadd fast float %10786, %10711
  %10790 = fsub fast float %10789, %10788
  %10791 = fdiv fast float %10790, %10785
  %10792 = call float @dx.op.unary.f32(i32 7, float %10783)  ; Saturate(value)
  %10793 = fcmp fast oeq float %9467, 0.000000e+00
  %10794 = extractvalue %dx.types.CBufRet.f32 %10578, 0
  %10795 = fcmp fast oeq float %10794, 0.000000e+00
  %10796 = or i1 %10793, %10795
  %10797 = fmul fast float %10794, 2.000000e+00
  %10798 = fadd fast float %10579, %10580
  %10799 = fdiv fast float %10798, %10797
  %10800 = call float @dx.op.unary.f32(i32 7, float %10799)  ; Saturate(value)
  %10801 = fmul fast float %10800, 2.000000e+00
  %10802 = fsub fast float 3.000000e+00, %10801
  %10803 = fmul fast float %10800, %10800
  %10804 = fmul fast float %10803, %10802
  %10805 = select i1 %10796, float 1.000000e+00, float %10804
  %10806 = fmul fast float %10791, %9467
  %10807 = fadd fast float %10792, %10806
  %10808 = call float @dx.op.unary.f32(i32 7, float %10807)  ; Saturate(value)
  %10809 = fmul fast float %10805, %10808
  br label %10810

; <label>:10810                                   ; preds = %10782, %10662
  %10811 = phi float [ %10809, %10782 ], [ 0.000000e+00, %10662 ]
  %10812 = fsub fast float 1.000000e+00, %10811
  %10813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %10532, float %10533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10814 = extractvalue %dx.types.ResRet.f32 %10813, 0
  %10815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10816 = extractvalue %dx.types.CBufRet.i32 %10815, 2
  %10817 = icmp eq i32 %10816, 0
  br i1 %10817, label %10823, label %10818

; <label>:10818                                   ; preds = %10810
  %10819 = call float @dx.op.unary.f32(i32 7, float %10811)  ; Saturate(value)
  %10820 = fadd fast float %10814, -1.000000e+00
  %10821 = fmul fast float %10819, %10820
  %10822 = fadd fast float %10821, 1.000000e+00
  br label %10823

; <label>:10823                                   ; preds = %10818, %10810
  %10824 = phi float [ %10822, %10818 ], [ %10812, %10810 ]
  br i1 %10586, label %10825, label %10843

; <label>:10825                                   ; preds = %10823
  %10826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10827 = extractvalue %dx.types.CBufRet.f32 %10826, 1
  %10828 = fsub fast float %10663, %10827
  %10829 = call float @dx.op.unary.f32(i32 7, float %10828)  ; Saturate(value)
  %10830 = fsub fast float %10663, %10585
  %10831 = call float @dx.op.unary.f32(i32 7, float %10830)  ; Saturate(value)
  %10832 = fsub fast float %10829, %10831
  %10833 = fsub fast float %10665, %10831
  %10834 = fdiv fast float %10833, %10832
  %10835 = call float @dx.op.unary.f32(i32 7, float %10834)  ; Saturate(value)
  %10836 = fmul fast float %10835, 2.000000e+00
  %10837 = fsub fast float 3.000000e+00, %10836
  %10838 = fsub fast float %10814, %10824
  %10839 = fmul fast float %10835, %10835
  %10840 = fmul fast float %10839, %10838
  %10841 = fmul fast float %10840, %10837
  %10842 = fadd fast float %10841, %10824
  br label %10843

; <label>:10843                                   ; preds = %10825, %10823
  %10844 = phi float [ %10842, %10825 ], [ %10824, %10823 ]
  %10845 = call float @dx.op.binary.f32(i32 35, float %10814, float %10844)  ; FMax(a,b)
  %10846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10847 = extractvalue %dx.types.CBufRet.i32 %10846, 2
  %10848 = and i32 %10847, 1
  %10849 = icmp eq i32 %10848, 0
  %10850 = fcmp fast une float %10845, 1.000000e+00
  %10851 = and i1 %10850, %10849
  br i1 %10851, label %10852, label %10871

; <label>:10852                                   ; preds = %10843
  %10853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %10532, float %10533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10854 = extractvalue %dx.types.ResRet.f32 %10853, 0
  %10855 = extractvalue %dx.types.ResRet.f32 %10853, 1
  %10856 = extractvalue %dx.types.ResRet.f32 %10853, 2
  %10857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10858 = extractvalue %dx.types.CBufRet.f32 %10857, 1
  %10859 = fmul fast float %10858, %10854
  %10860 = fmul fast float %10858, %10855
  %10861 = fmul fast float %10858, %10856
  %10862 = fcmp fast ogt float %10814, 0x3FEFFF2E40000000
  %10863 = fsub fast float 1.000000e+00, %10845
  %10864 = fsub fast float 1.000000e+00, %10814
  %10865 = fdiv fast float %10863, %10864
  %10866 = call float @dx.op.unary.f32(i32 7, float %10865)  ; Saturate(value)
  %10867 = select i1 %10862, float 0.000000e+00, float %10866
  %10868 = fmul fast float %10859, %10867
  %10869 = fmul fast float %10860, %10867
  %10870 = fmul fast float %10861, %10867
  br label %10871

; <label>:10871                                   ; preds = %10852, %10843
  %10872 = phi float [ 0.000000e+00, %10843 ], [ %10868, %10852 ]
  %10873 = phi float [ 0.000000e+00, %10843 ], [ %10869, %10852 ]
  %10874 = phi float [ 0.000000e+00, %10843 ], [ %10870, %10852 ]
  %10875 = fmul fast float %10845, %10507
  %10876 = call float @dx.op.dot3.f32(i32 55, float %10845, float %10845, float %10845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10877 = call float @dx.op.dot3.f32(i32 55, float %10872, float %10873, float %10874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10878 = select i1 %260, float %10876, float %10845
  %10879 = select i1 %260, float 1.000000e+00, float %10845
  %10880 = select i1 %260, float %10877, float %10872
  %10881 = select i1 %260, float 0.000000e+00, float %10873
  %10882 = select i1 %260, float 0.000000e+00, float %10874
  %10883 = fmul fast float %10878, %10519
  %10884 = fmul fast float %10878, %10520
  %10885 = fmul fast float %10879, %10521
  %10886 = fadd fast float %10883, %10880
  %10887 = fadd fast float %10884, %10881
  %10888 = fadd fast float %10882, %10885
  %10889 = fmul fast float %10878, %10522
  %10890 = fmul fast float %10878, %10523
  %10891 = fmul fast float %10879, %10524
  br label %10892

; <label>:10892                                   ; preds = %10871, %10528, %10500, %9732
  %10893 = phi float [ %9737, %9732 ], [ %10519, %10500 ], [ %10886, %10871 ], [ %10519, %10528 ]
  %10894 = phi float [ %9738, %9732 ], [ %10520, %10500 ], [ %10887, %10871 ], [ %10520, %10528 ]
  %10895 = phi float [ %9739, %9732 ], [ %10521, %10500 ], [ %10888, %10871 ], [ %10521, %10528 ]
  %10896 = phi float [ %9740, %9732 ], [ %10522, %10500 ], [ %10889, %10871 ], [ %10522, %10528 ]
  %10897 = phi float [ %9741, %9732 ], [ %10523, %10500 ], [ %10890, %10871 ], [ %10523, %10528 ]
  %10898 = phi float [ %9742, %9732 ], [ %10524, %10500 ], [ %10891, %10871 ], [ %10524, %10528 ]
  %10899 = phi float [ %9743, %9732 ], [ %10507, %10500 ], [ %10875, %10871 ], [ %10507, %10528 ]
  %10900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10901 = extractvalue %dx.types.CBufRet.f32 %10900, 2
  %10902 = extractvalue %dx.types.CBufRet.f32 %10900, 3
  %10903 = fmul fast float %10901, %111
  %10904 = fmul fast float %10902, %112
  %10905 = call float @dx.op.unary.f32(i32 7, float %10903)  ; Saturate(value)
  %10906 = call float @dx.op.unary.f32(i32 7, float %10904)  ; Saturate(value)
  %10907 = select i1 %9477, i32 2, i32 0
  %10908 = or i32 %10907, 1
  %10909 = uitofp i32 %10908 to float
  %10910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10905, float %10906, float %10909, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10911 = extractvalue %dx.types.ResRet.f32 %10910, 0
  %10912 = extractvalue %dx.types.ResRet.f32 %10910, 1
  %10913 = extractvalue %dx.types.ResRet.f32 %10910, 2
  %10914 = extractvalue %dx.types.ResRet.f32 %10910, 3
  %10915 = add nuw nsw i32 %10907, 2
  %10916 = uitofp i32 %10915 to float
  %10917 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10905, float %10906, float %10916, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10918 = extractvalue %dx.types.ResRet.f32 %10917, 0
  %10919 = extractvalue %dx.types.ResRet.f32 %10917, 1
  %10920 = extractvalue %dx.types.ResRet.f32 %10917, 2
  %10921 = extractvalue %dx.types.ResRet.f32 %10917, 3
  %10922 = call float @dx.op.binary.f32(i32 35, float %10912, float %10913)  ; FMax(a,b)
  %10923 = call float @dx.op.binary.f32(i32 35, float %10911, float %10922)  ; FMax(a,b)
  %10924 = call float @dx.op.binary.f32(i32 35, float %10923, float %10914)  ; FMax(a,b)
  %10925 = call float @dx.op.binary.f32(i32 36, float %10919, float %10920)  ; FMin(a,b)
  %10926 = call float @dx.op.binary.f32(i32 36, float %10918, float %10925)  ; FMin(a,b)
  %10927 = call float @dx.op.binary.f32(i32 36, float %10926, float %10921)  ; FMin(a,b)
  %10928 = fmul fast float %10924, 2.550000e+02
  %10929 = fadd fast float %10928, 0x3F70101020000000
  %10930 = fptoui float %10929 to i32
  %10931 = fmul fast float %10927, 2.550000e+02
  %10932 = fadd fast float %10931, 0x3F70101020000000
  %10933 = fptoui float %10932 to i32
  %10934 = icmp ult i32 %10930, %10933
  br i1 %10934, label %10935, label %11104

; <label>:10935                                   ; preds = %10892
  %10936 = fcmp fast ogt float %98, 9.843750e-01
  %10937 = fadd fast float %9736, -4.000000e+00
  %10938 = select i1 %10936, float -4.000000e+00, float %10937
  %10939 = call float @dx.op.binary.f32(i32 35, float %10938, float 0.000000e+00)  ; FMax(a,b)
  %10940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10941 = extractvalue %dx.types.CBufRet.f32 %10940, 0
  %10942 = fadd fast float %10941, %10939
  %10943 = extractvalue %dx.types.CBufRet.f32 %10940, 2
  %10944 = fmul fast float %10942, %10943
  %10945 = call float @dx.op.unary.f32(i32 23, float %10944)  ; Log(value)
  %10946 = extractvalue %dx.types.CBufRet.f32 %10940, 3
  %10947 = fmul fast float %10946, %10945
  %10948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10949 = extractvalue %dx.types.CBufRet.f32 %10948, 2
  %10950 = fmul fast float %10947, %10949
  %10951 = call float @dx.op.unary.f32(i32 7, float %10950)  ; Saturate(value)
  %10952 = uitofp i32 %10930 to float
  %10953 = uitofp i32 %10933 to float
  %10954 = fadd fast float %10952, 5.000000e-01
  %10955 = fadd fast float %10953, 5.000000e-01
  %10956 = fmul fast float %10949, %10954
  %10957 = fmul fast float %10949, %10955
  %10958 = fadd fast float %10956, 0x3F0FFB4800000000
  %10959 = fadd fast float %10957, 0xBF0FFB4800000000
  %10960 = call float @dx.op.binary.f32(i32 35, float %10951, float %10958)  ; FMax(a,b)
  %10961 = call float @dx.op.binary.f32(i32 36, float %10960, float %10959)  ; FMin(a,b)
  %10962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10963 = extractvalue %dx.types.CBufRet.f32 %10962, 1
  %10964 = extractvalue %dx.types.CBufRet.f32 %10962, 2
  %10965 = extractvalue %dx.types.CBufRet.f32 %10962, 0
  %10966 = select i1 %9477, float %10965, float 0.000000e+00
  %10967 = fmul fast float %10963, %10961
  %10968 = fadd fast float %10966, %10967
  %10969 = fadd fast float %10966, %10964
  %10970 = fsub fast float %10963, %10964
  %10971 = fadd fast float %10970, %10966
  %10972 = call float @dx.op.binary.f32(i32 35, float %10968, float %10969)  ; FMax(a,b)
  %10973 = call float @dx.op.binary.f32(i32 36, float %10972, float %10971)  ; FMin(a,b)
  %10974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10905, float %10906, float %10973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10975 = extractvalue %dx.types.ResRet.f32 %10974, 0
  %10976 = extractvalue %dx.types.ResRet.f32 %10974, 1
  %10977 = extractvalue %dx.types.ResRet.f32 %10974, 2
  %10978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10979 = extractvalue %dx.types.CBufRet.i32 %10978, 0
  %10980 = extractvalue %dx.types.CBufRet.i32 %10978, 1
  %10981 = uitofp i32 %10979 to float
  %10982 = uitofp i32 %10980 to float
  %10983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10984 = extractvalue %dx.types.CBufRet.f32 %10983, 0
  %10985 = extractvalue %dx.types.CBufRet.f32 %10983, 1
  %10986 = fmul fast float %10981, %10905
  %10987 = fmul fast float %10982, %10906
  %10988 = fadd fast float %10986, -5.000000e-01
  %10989 = fadd fast float %10987, -5.000000e-01
  %10990 = call float @dx.op.unary.f32(i32 22, float %10988)  ; Frc(value)
  %10991 = call float @dx.op.unary.f32(i32 22, float %10989)  ; Frc(value)
  %10992 = fmul fast float %10990, %10990
  %10993 = fmul fast float %10992, %10990
  %10994 = fsub fast float 3.000000e+00, %10990
  %10995 = fmul fast float %10992, %10994
  %10996 = fmul fast float %10990, 3.000000e+00
  %10997 = fmul fast float %10993, 3.000000e+00
  %10998 = fmul fast float %10992, 6.000000e+00
  %10999 = fsub fast float %10997, %10998
  %11000 = fadd fast float %10999, 4.000000e+00
  %11001 = fmul fast float %11000, 0x3FC5555560000000
  %11002 = fmul fast float %10993, -3.000000e+00
  %11003 = fadd fast float %10992, %10990
  %11004 = fmul fast float %11003, 3.000000e+00
  %11005 = fadd fast float %11002, 1.000000e+00
  %11006 = fadd fast float %11005, %11004
  %11007 = fmul fast float %10993, 0x3FC5555560000000
  %11008 = fmul fast float %10991, %10991
  %11009 = fmul fast float %11008, %10991
  %11010 = fsub fast float 3.000000e+00, %10991
  %11011 = fmul fast float %11008, %11010
  %11012 = fmul fast float %10991, 3.000000e+00
  %11013 = fmul fast float %11009, 3.000000e+00
  %11014 = fmul fast float %11008, 6.000000e+00
  %11015 = fsub fast float %11013, %11014
  %11016 = fadd fast float %11015, 4.000000e+00
  %11017 = fmul fast float %11016, 0x3FC5555560000000
  %11018 = fmul fast float %11009, -3.000000e+00
  %11019 = fadd fast float %11008, %10991
  %11020 = fmul fast float %11019, 3.000000e+00
  %11021 = fadd fast float %11018, 1.000000e+00
  %11022 = fadd fast float %11021, %11020
  %11023 = fmul fast float %11009, 0x3FC5555560000000
  %11024 = fadd fast float %10990, 1.000000e+00
  %11025 = fsub fast float 1.000000e+00, %10996
  %11026 = fadd fast float %11025, %10995
  %11027 = fadd fast float %11026, %11000
  %11028 = fmul fast float %11027, 0x3FC5555560000000
  %11029 = fdiv fast float %11001, %11028
  %11030 = fsub fast float %11024, %11029
  %11031 = fsub fast float 1.000000e+00, %10990
  %11032 = fadd fast float %11006, %10993
  %11033 = fmul fast float %11032, 0x3FC5555560000000
  %11034 = fdiv fast float %11007, %11033
  %11035 = fadd fast float %11031, %11034
  %11036 = fadd fast float %10991, 1.000000e+00
  %11037 = fsub fast float 1.000000e+00, %11012
  %11038 = fadd fast float %11037, %11011
  %11039 = fadd fast float %11038, %11016
  %11040 = fmul fast float %11039, 0x3FC5555560000000
  %11041 = fdiv fast float %11017, %11040
  %11042 = fsub fast float %11036, %11041
  %11043 = fsub fast float 1.000000e+00, %10991
  %11044 = fadd fast float %11022, %11009
  %11045 = fmul fast float %11044, 0x3FC5555560000000
  %11046 = fdiv fast float %11023, %11045
  %11047 = fadd fast float %11046, %11043
  %11048 = fmul fast float %11030, %10984
  %11049 = fsub fast float %10905, %11048
  %11050 = fmul fast float %11035, %10984
  %11051 = fadd fast float %11050, %10905
  %11052 = fmul fast float %11047, %10985
  %11053 = fadd fast float %11052, %10906
  %11054 = fmul fast float %11042, %10985
  %11055 = fsub fast float %10906, %11054
  %11056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %11049, float %11055, float %10973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11057 = extractvalue %dx.types.ResRet.f32 %11056, 0
  %11058 = extractvalue %dx.types.ResRet.f32 %11056, 1
  %11059 = extractvalue %dx.types.ResRet.f32 %11056, 2
  %11060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %11051, float %11055, float %10973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11061 = extractvalue %dx.types.ResRet.f32 %11060, 0
  %11062 = extractvalue %dx.types.ResRet.f32 %11060, 1
  %11063 = extractvalue %dx.types.ResRet.f32 %11060, 2
  %11064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %11049, float %11053, float %10973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11065 = extractvalue %dx.types.ResRet.f32 %11064, 0
  %11066 = extractvalue %dx.types.ResRet.f32 %11064, 1
  %11067 = extractvalue %dx.types.ResRet.f32 %11064, 2
  %11068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %11051, float %11053, float %10973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11069 = extractvalue %dx.types.ResRet.f32 %11068, 0
  %11070 = extractvalue %dx.types.ResRet.f32 %11068, 1
  %11071 = extractvalue %dx.types.ResRet.f32 %11068, 2
  %11072 = fsub fast float %11065, %11057
  %11073 = fsub fast float %11066, %11058
  %11074 = fsub fast float %11067, %11059
  %11075 = fmul fast float %11072, %11045
  %11076 = fmul fast float %11073, %11045
  %11077 = fmul fast float %11074, %11045
  %11078 = fadd fast float %11075, %11057
  %11079 = fadd fast float %11076, %11058
  %11080 = fadd fast float %11077, %11059
  %11081 = fsub fast float %11069, %11061
  %11082 = fsub fast float %11070, %11062
  %11083 = fsub fast float %11071, %11063
  %11084 = fmul fast float %11081, %11045
  %11085 = fmul fast float %11082, %11045
  %11086 = fmul fast float %11083, %11045
  %11087 = fsub fast float %11061, %11078
  %11088 = fadd fast float %11087, %11084
  %11089 = fsub fast float %11062, %11079
  %11090 = fadd fast float %11089, %11085
  %11091 = fsub fast float %11063, %11080
  %11092 = fadd fast float %11091, %11086
  %11093 = fmul fast float %11088, %11033
  %11094 = fmul fast float %11090, %11033
  %11095 = fmul fast float %11092, %11033
  %11096 = fadd fast float %11093, %11078
  %11097 = fadd fast float %11094, %11079
  %11098 = fadd fast float %11095, %11080
  %11099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11100 = extractvalue %dx.types.CBufRet.f32 %11099, 1
  %11101 = fmul fast float %11096, %11100
  %11102 = fmul fast float %11097, %11100
  %11103 = fmul fast float %11098, %11100
  br label %11104

; <label>:11104                                   ; preds = %10935, %10892
  %11105 = phi float [ %10975, %10935 ], [ 1.000000e+00, %10892 ]
  %11106 = phi float [ %10976, %10935 ], [ 1.000000e+00, %10892 ]
  %11107 = phi float [ %10977, %10935 ], [ 1.000000e+00, %10892 ]
  %11108 = phi float [ %11101, %10935 ], [ 0.000000e+00, %10892 ]
  %11109 = phi float [ %11102, %10935 ], [ 0.000000e+00, %10892 ]
  %11110 = phi float [ %11103, %10935 ], [ 0.000000e+00, %10892 ]
  %11111 = fmul fast float %11105, %10899
  %11112 = call float @dx.op.dot3.f32(i32 55, float %11105, float %11106, float %11107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11113 = call float @dx.op.dot3.f32(i32 55, float %11108, float %11109, float %11110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11114 = select i1 %260, float %11112, float %11105
  %11115 = select i1 %260, float %11112, float %11106
  %11116 = select i1 %260, float 1.000000e+00, float %11107
  %11117 = select i1 %260, float %11113, float %11108
  %11118 = select i1 %260, float 0.000000e+00, float %11109
  %11119 = select i1 %260, float 0.000000e+00, float %11110
  %11120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %11121 = extractvalue %dx.types.CBufRet.i32 %11120, 3
  %11122 = and i32 %11121, 3
  %11123 = icmp ne i32 %11122, 0
  %11124 = and i32 %11121, 4
  %11125 = icmp ne i32 %11124, 0
  %11126 = and i1 %11123, %11125
  %11127 = and i1 %260, %11126
  br i1 %11127, label %11128, label %11134

; <label>:11128                                   ; preds = %11104
  %11129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11130 = extractvalue %dx.types.CBufRet.f32 %11129, 1
  %11131 = fadd fast float %11111, -1.000000e+00
  %11132 = fmul fast float %11130, %11131
  %11133 = fadd fast float %11132, 1.000000e+00
  br label %11134

; <label>:11134                                   ; preds = %11128, %11104
  %11135 = phi float [ %11133, %11128 ], [ %11111, %11104 ]
  %11136 = fadd fast float %10896, %10893
  %11137 = fmul fast float %11114, %11136
  %11138 = fadd fast float %11137, %11117
  %11139 = fadd fast float %10897, %10894
  %11140 = fmul fast float %11115, %11139
  %11141 = fadd fast float %11140, %11118
  %11142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11143 = extractvalue %dx.types.CBufRet.f32 %11142, 0
  br i1 %260, label %11144, label %11159

; <label>:11144                                   ; preds = %11134
  %11145 = fadd fast float %11138, %11141
  %11146 = fmul fast float %11143, %11145
  %11147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11148 = extractvalue %dx.types.CBufRet.f32 %11147, 3
  %11149 = extractvalue %dx.types.CBufRet.f32 %9459, 1
  %11150 = fsub fast float %9464, %9458
  %11151 = fadd fast float %11150, %9465
  %11152 = fsub fast float %11151, %11149
  %11153 = extractvalue %dx.types.CBufRet.f32 %9459, 2
  %11154 = fmul fast float %11152, %11153
  %11155 = call float @dx.op.unary.f32(i32 7, float %11154)  ; Saturate(value)
  %11156 = fsub fast float %11155, %11148
  %11157 = fmul fast float %11156, %11135
  %11158 = fadd fast float %11157, %11148
  br label %11183

; <label>:11159                                   ; preds = %11134
  %11160 = fadd fast float %10898, %10895
  %11161 = fmul fast float %11116, %11160
  %11162 = fadd fast float %11161, %11119
  %11163 = fmul fast float %11143, %11138
  %11164 = fmul fast float %11143, %11141
  %11165 = fmul fast float %11143, %11162
  %11166 = call float @dx.op.binary.f32(i32 35, float %11164, float %11165)  ; FMax(a,b)
  %11167 = call float @dx.op.binary.f32(i32 35, float %11163, float %11166)  ; FMax(a,b)
  %11168 = call float @dx.op.binary.f32(i32 35, float %11167, float 1.000000e+00)  ; FMax(a,b)
  %11169 = fcmp fast ugt float %11168, 0x3F10000000000000
  br i1 %11169, label %11171, label %11170

; <label>:11170                                   ; preds = %11159
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11171

; <label>:11171                                   ; preds = %11170, %11159
  %11172 = add i32 %62, 356
  %11173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %11172, i32 undef)  ; BufferLoad(srv,index,wot)
  %11174 = extractvalue %dx.types.ResRet.i32 %11173, 0
  %11175 = and i32 %11174, 32
  %11176 = icmp eq i32 %11175, 0
  br i1 %11176, label %11183, label %11177

; <label>:11177                                   ; preds = %11171
  %11178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11179 = extractvalue %dx.types.CBufRet.f32 %11178, 0
  %11180 = fmul fast float %11179, 0x3FE99999A0000000
  %11181 = fadd fast float %11179, %11163
  %11182 = fadd fast float %11180, %11165
  br label %11183

; <label>:11183                                   ; preds = %11177, %11171, %11144
  %11184 = phi float [ %11146, %11144 ], [ %11181, %11177 ], [ %11163, %11171 ]
  %11185 = phi float [ %11158, %11144 ], [ %11164, %11177 ], [ %11164, %11171 ]
  %11186 = phi float [ 1.000000e+00, %11144 ], [ %11182, %11177 ], [ %11165, %11171 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11187 = call float @dx.op.binary.f32(i32 36, float %11184, float 3.225500e+04)  ; FMin(a,b)
  %11188 = call float @dx.op.binary.f32(i32 36, float %11185, float 3.225500e+04)  ; FMin(a,b)
  %11189 = call float @dx.op.binary.f32(i32 36, float %11186, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11187)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

