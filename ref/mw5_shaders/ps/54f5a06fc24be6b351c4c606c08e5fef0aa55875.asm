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
; shader hash: 91cc76985bbbeb4c9504cba71d9b7405
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
  %169 = fmul fast float %111, 5.000000e-01
  %170 = fmul fast float %112, 5.000000e-01
  %171 = fptosi float %169 to i32
  %172 = fptosi float %170 to i32
  %173 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %171, i32 %172, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = lshr i32 %174, 18
  %176 = uitofp i32 %175 to float
  %177 = fmul fast float %176, 0x3F4C00EBA0000000
  %178 = call float @dx.op.unary.f32(i32 21, float %177)  ; Exp(value)
  %179 = fadd fast float %178, -1.000000e+00
  %180 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %181 = extractvalue %dx.types.Dimensions %180, 0
  %182 = sitofp i32 %181 to float
  %183 = extractvalue %dx.types.Dimensions %180, 1
  %184 = sitofp i32 %183 to float
  %185 = fcmp fast oge float %169, %182
  %186 = fcmp fast oge float %170, %184
  %187 = or i1 %185, %186
  %188 = select i1 %187, float 0x4197782600000000, float %179
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %192 = fmul fast float %190, %111
  %193 = fmul fast float %191, %112
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = and i32 %195, 114688
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %197, float %192, float 0.000000e+00
  %199 = select i1 %197, float %193, float 0.000000e+00
  %200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %57, float %198, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, 2.550000e+02
  %203 = fptoui float %202 to i32
  %204 = select i1 %197, i32 %203, i32 0
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.i32 %206, 3
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  %210 = and i32 %207, 4
  %211 = icmp ne i32 %210, 0
  %212 = and i1 %209, %211
  br i1 %212, label %213, label %224

; <label>:213                                     ; preds = %0
  %214 = extractvalue %dx.types.CBufRet.f32 %205, 3
  %215 = fmul fast float %214, %112
  %216 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %217 = fmul fast float %216, %111
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %56, float %217, float %215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fsub fast float 1.000000e+00, %219
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = fcmp fast olt float %220, %222
  br label %227

; <label>:224                                     ; preds = %0
  %225 = icmp eq i32 %210, 0
  %226 = and i1 %209, %225
  br label %227

; <label>:227                                     ; preds = %224, %213
  %228 = phi i1 [ %223, %213 ], [ %226, %224 ]
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, 0x3FE3C6EF40000000
  %232 = frem fast float %111, 2.560000e+02
  %233 = frem fast float %112, 2.560000e+02
  %234 = fptoui float %232 to i32
  %235 = fptoui float %233 to i32
  %236 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = fadd fast float %237, %231
  %240 = fadd fast float %238, %231
  %241 = call float @dx.op.unary.f32(i32 22, float %239)  ; Frc(value)
  %242 = call float @dx.op.unary.f32(i32 22, float %240)  ; Frc(value)
  %243 = add i32 %62, 156
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %62, 216
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %62, 36
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %62, 288
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %62, 172
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %62, 232
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %62, 52
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %62, 304
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %62, 188
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %62, 248
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %62, 68
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %62, 320
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %62, 204
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %62, 264
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %62, 84
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %62, 336
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %62, 348
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 32
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %413, 64
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %413, 128
  %419 = icmp eq i32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %439, label %424

; <label>:424                                     ; preds = %227
  %425 = add i32 %62, 504
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = fmul fast float %434, %92
  %436 = fmul fast float %431, %93
  %437 = fmul fast float %432, %94
  %438 = fmul fast float %433, %95
  br label %439

; <label>:439                                     ; preds = %424, %227
  %440 = phi float [ %95, %227 ], [ %438, %424 ]
  %441 = phi float [ %94, %227 ], [ %437, %424 ]
  %442 = phi float [ %93, %227 ], [ %436, %424 ]
  %443 = phi float [ %92, %227 ], [ %435, %424 ]
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %467, label %448

; <label>:448                                     ; preds = %439
  %449 = add i32 %62, 44
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %442, float 1.000000e+00
  %455 = add i32 %62, 60
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %441, float 1.000000e+00
  %461 = add i32 %62, 76
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 1
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %440, float 1.000000e+00
  br label %467

; <label>:467                                     ; preds = %448, %439
  %468 = phi float [ %440, %439 ], [ %466, %448 ]
  %469 = phi float [ %441, %439 ], [ %460, %448 ]
  %470 = phi float [ %442, %439 ], [ %454, %448 ]
  %471 = lshr i32 %445, 20
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 1
  %474 = add i32 %62, 24
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %62, 28
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = or i32 %479, %476
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %1242, label %482

; <label>:482                                     ; preds = %467
  %483 = and i32 %476, 262144
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %65, float 1.000000e+00
  %486 = select i1 %484, float %66, float 0.000000e+00
  %487 = select i1 %484, float %67, float 0.000000e+00
  %488 = select i1 %484, float %68, float 1.000000e+00
  %489 = select i1 %484, float %69, float %90
  %490 = select i1 %484, float %70, float %91
  %491 = add i32 %62, 284
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = fmul fast float %495, 0x3F50624DE0000000
  %497 = add i32 %62, 88
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 16
  %501 = and i32 %500, 255
  %502 = lshr i32 %499, 24
  %503 = add i32 %62, 292
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = add i32 %62, 32
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 22
  %514 = shl nuw nsw i32 %513, 5
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = shl i32 %512, 4
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %512, 7
  %520 = and i32 %519, 32752
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fmul fast float %523, 1.000000e+03
  %525 = fmul fast float %283, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %273
  %528 = fmul fast float %284, %524
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fadd fast float %529, %275
  %531 = fmul fast float %496, %524
  %532 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %533 = fmul fast float %532, 0x401921FB60000000
  %534 = fadd fast float %533, %515
  %535 = call float @dx.op.unary.f32(i32 13, float %534)  ; Sin(value)
  %536 = call float @dx.op.unary.f32(i32 12, float %534)  ; Cos(value)
  %537 = fsub fast float -0.000000e+00, %535
  %538 = fadd fast float %489, -5.000000e-01
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fmul fast float %507, %538
  %541 = fmul fast float %509, %539
  %542 = fadd fast float %540, 5.000000e-01
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fmul fast float %518, %542
  %545 = fmul fast float %521, %543
  %546 = fmul fast float %536, %544
  %547 = call float @dx.op.tertiary.f32(i32 46, float %537, float %545, float %546)  ; FMad(a,b,c)
  %548 = fmul fast float %535, %544
  %549 = call float @dx.op.tertiary.f32(i32 46, float %536, float %545, float %548)  ; FMad(a,b,c)
  %550 = fadd fast float %527, %547
  %551 = fadd fast float %530, %549
  %552 = icmp ugt i32 %501, 1
  %553 = icmp ugt i32 %499, 33554431
  %554 = or i1 %553, %552
  br i1 %554, label %555, label %580

; <label>:555                                     ; preds = %482
  %556 = add i32 %62, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = fmul fast float %523, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = mul nuw nsw i32 %501, %502
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %562, %564
  %566 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %567 = fptoui float %566 to i32
  %568 = urem i32 %567, %501
  %569 = udiv i32 %567, %502
  %570 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = uitofp i32 %568 to float
  %573 = uitofp i32 %569 to float
  %574 = fadd fast float %570, %572
  %575 = fadd fast float %571, %573
  %576 = uitofp i32 %501 to float
  %577 = uitofp i32 %502 to float
  %578 = fdiv fast float %574, %576
  %579 = fdiv fast float %575, %577
  br label %580

; <label>:580                                     ; preds = %555, %482
  %581 = phi float [ %578, %555 ], [ %550, %482 ]
  %582 = phi float [ %579, %555 ], [ %551, %482 ]
  %583 = and i32 %476, 16777216
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %694, label %585

; <label>:585                                     ; preds = %580
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = fadd fast float %587, %166
  %591 = fadd fast float %588, %167
  %592 = fadd fast float %589, %168
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = icmp eq i32 %63, 65535
  br i1 %596, label %691, label %597

; <label>:597                                     ; preds = %585
  %598 = lshr i32 %63, 1
  %599 = shl i32 %598, 2
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %63, 1
  %603 = icmp ne i32 %602, 0
  %604 = lshr i32 %601, 16
  %605 = and i32 %601, 65535
  %606 = select i1 %603, i32 %604, i32 %605
  %607 = icmp eq i32 %606, 65535
  br i1 %607, label %687, label %608

; <label>:608                                     ; preds = %597
  %609 = mul nuw nsw i32 %606, 40
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = add nuw nsw i32 %609, 12
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add nuw nsw i32 %609, 24
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = add nuw nsw i32 %609, 36
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = fsub fast float %590, %611
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fmul fast float %626, %627
  %631 = fmul fast float %626, %628
  %632 = fmul fast float %626, %629
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = shl i32 %63, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %646, %dx.types.Handle %57, float %647, float %648, float %649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = fsub fast float %630, %633
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fadd fast float %633, 1.250000e-01
  %670 = fadd fast float %669, %666
  %671 = fadd fast float %670, %660
  %672 = fadd fast float %634, 1.250000e-01
  %673 = fadd fast float %672, %667
  %674 = fadd fast float %673, %661
  %675 = fadd fast float %635, 1.250000e-01
  %676 = fadd fast float %675, %668
  %677 = fadd fast float %676, %662
  %678 = fmul fast float %671, %621
  %679 = fmul fast float %674, %622
  %680 = fmul fast float %677, %623
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %684, %dx.types.Handle %55, float %678, float %679, float %680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  br label %687

; <label>:687                                     ; preds = %608, %597
  %688 = phi float [ %686, %608 ], [ -1.000000e+00, %597 ]
  %689 = fadd fast float %688, %595
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  br label %691

; <label>:691                                     ; preds = %687, %585
  %692 = phi float [ %690, %687 ], [ %595, %585 ]
  %693 = fmul fast float %692, %443
  br label %694

; <label>:694                                     ; preds = %691, %580
  %695 = phi float [ %693, %691 ], [ %443, %580 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 256
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %746, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %62, 440
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = add i32 %62, 100
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = shl i32 %710, 4
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %710, 7
  %715 = and i32 %714, 32752
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fsub fast float 1.000000e+00, %695
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %719 = bitcast float %695 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %716, %721
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = bitcast float %718 to i32
  %727 = sitofp i32 %726 to float
  %728 = fadd fast float %727, 0xC1CFBF8940000000
  %729 = fmul fast float %728, %716
  %730 = fadd fast float %729, 0x41CFBF8940000000
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %725, %713
  %734 = fmul fast float %732, %713
  %735 = fsub fast float %718, %733
  %736 = fadd fast float %734, %718
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = fsub fast float %707, %737
  %740 = fsub fast float %738, %737
  %741 = bitcast float %740 to i32
  %742 = sub nsw i32 2129859010, %741
  %743 = bitcast i32 %742 to float
  %744 = fmul fast float %743, %739
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  br label %746

; <label>:746                                     ; preds = %700, %694
  %747 = phi float [ %745, %700 ], [ %695, %694 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 128
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %768, label %752

; <label>:752                                     ; preds = %746
  %753 = add i32 %62, 424
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 524288
  %763 = icmp ne i32 %762, 0
  %764 = fcmp fast ogt float %759, 0x3FE0101020000000
  %765 = select i1 %764, float 1.000000e+00, float 0.000000e+00
  %766 = select i1 %763, float %765, float %759
  %767 = fmul fast float %766, %747
  br label %768

; <label>:768                                     ; preds = %752, %746
  %769 = phi float [ %767, %752 ], [ %747, %746 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 16
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %972, label %774

; <label>:774                                     ; preds = %768
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %62, 376
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = add i32 %779, 0
  %781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %781, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = and i32 %776, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %776, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %786, %788
  %793 = fadd fast float %792, %791
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 512
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %807, label %799

; <label>:799                                     ; preds = %774
  %800 = add i32 %62, 456
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  br label %807

; <label>:807                                     ; preds = %799, %774
  %808 = phi float [ %806, %799 ], [ 1.000000e+00, %774 ]
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 33554432
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %919, label %813

; <label>:813                                     ; preds = %807
  %814 = add i32 %62, 224
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %816, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = add i32 %62, 228
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = and i32 %827, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %827, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %827, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = add i32 %62, 220
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = and i32 %844, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %844, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %844, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = bitcast float %783 to i32
  %860 = ashr i32 %859, 1
  %861 = sub nsw i32 1597463174, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %783, 5.000000e-01
  %864 = fmul fast float %862, %862
  %865 = fmul fast float %864, %863
  %866 = fsub fast float 1.500000e+00, %865
  %867 = fmul fast float %862, %783
  %868 = fmul fast float %867, %866
  %869 = bitcast float %784 to i32
  %870 = ashr i32 %869, 1
  %871 = sub nsw i32 1597463174, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %784, 5.000000e-01
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %874, %873
  %876 = fsub fast float 1.500000e+00, %875
  %877 = fmul fast float %872, %784
  %878 = fmul fast float %877, %876
  %879 = bitcast float %785 to i32
  %880 = ashr i32 %879, 1
  %881 = sub nsw i32 1597463174, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %785, 5.000000e-01
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.500000e+00, %885
  %887 = fmul fast float %882, %785
  %888 = fmul fast float %887, %886
  %889 = fsub fast float %868, %850
  %890 = fsub fast float %878, %854
  %891 = fsub fast float %888, %858
  %892 = fmul fast float %889, %818
  %893 = fmul fast float %890, %820
  %894 = fmul fast float %891, %825
  %895 = fadd fast float %892, %833
  %896 = fadd fast float %893, %837
  %897 = fadd fast float %894, %841
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fsub fast float %901, %783
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fmul fast float %904, %808
  %908 = fmul fast float %905, %808
  %909 = fmul fast float %906, %808
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %830, %794
  %914 = fsub fast float %913, %847
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fsub fast float %915, %794
  %917 = fmul fast float %916, %808
  %918 = fadd fast float %917, %794
  br label %972

; <label>:919                                     ; preds = %807
  %920 = and i32 %810, 134217728
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %956, label %922

; <label>:922                                     ; preds = %919
  %923 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fmul fast float %926, %808
  %930 = fmul fast float %927, %808
  %931 = fmul fast float %928, %808
  %932 = fadd fast float %929, 5.000000e-01
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = fmul fast float %932, 2.000000e+00
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %935
  %941 = fadd fast float %940, %938
  %942 = fmul fast float %941, %935
  %943 = fmul fast float %933, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %936
  %946 = fadd fast float %945, %943
  %947 = fmul fast float %946, %936
  %948 = fmul fast float %934, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %937
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %937
  %953 = fmul fast float %942, %942
  %954 = fmul fast float %947, %947
  %955 = fmul fast float %952, %952
  br label %972

; <label>:956                                     ; preds = %919
  %957 = fmul fast float %260, %260
  %958 = fmul fast float %264, %264
  %959 = fmul fast float %268, %268
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fmul fast float %808, %960
  %964 = fmul fast float %808, %961
  %965 = fmul fast float %808, %962
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fmul fast float %966, %783
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  br label %972

; <label>:972                                     ; preds = %956, %922, %813, %768
  %973 = phi float [ %918, %813 ], [ %794, %922 ], [ %794, %956 ], [ 0x3FA23C0BE0000000, %768 ]
  %974 = phi float [ %910, %813 ], [ %953, %922 ], [ %969, %956 ], [ 1.000000e+00, %768 ]
  %975 = phi float [ %911, %813 ], [ %954, %922 ], [ %970, %956 ], [ 1.000000e+00, %768 ]
  %976 = phi float [ %912, %813 ], [ %955, %922 ], [ %971, %956 ], [ 1.000000e+00, %768 ]
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 1
  %979 = and i32 %978, 1
  %980 = icmp ne i32 %979, 0
  %981 = add i32 %62, 356
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp ne i32 %984, 0
  %986 = and i1 %980, %985
  %987 = select i1 %986, float 1.000000e+00, float %974
  %988 = select i1 %986, float 0x3FD3333340000000, float %975
  %989 = select i1 %986, float 0x3FD3333340000000, float %976
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 32
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1066, label %994

; <label>:994                                     ; preds = %972
  %995 = add i32 %62, 92
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %62, 392
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = and i32 %997, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %997, 8
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = lshr i32 %997, 16
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fmul fast float %1004, %1009
  %1018 = fadd fast float %1017, %1012
  %1019 = fmul fast float %1018, 0x3F70101000000000
  %1020 = fadd fast float %1005, -5.000000e-01
  %1021 = fadd fast float %1007, -5.000000e-01
  %1022 = fmul fast float %1020, %1016
  %1023 = fmul fast float %1021, %1016
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fmul fast float %1024, 2.000000e+00
  %1027 = fadd fast float %1026, -1.000000e+00
  %1028 = fmul fast float %1025, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fadd fast float %1027, %1029
  %1031 = fmul fast float %1030, 5.000000e-01
  %1032 = fsub fast float %1027, %1029
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float 1.000000e+00, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1035, %1036
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1033, float %1037, float %1031, float %1033, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1031, %1039
  %1041 = fmul fast float %1033, %1039
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 67108864
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1062, label %1046

; <label>:1046                                    ; preds = %994
  %1047 = add i32 %62, 280
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1049, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float %1019, %1057
  %1059 = fmul fast float %1058, %1051
  %1060 = fadd fast float %1059, %1055
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  br label %1062

; <label>:1062                                    ; preds = %1046, %994
  %1063 = phi float [ %1061, %1046 ], [ %1019, %994 ]
  %1064 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  br label %1066

; <label>:1066                                    ; preds = %1062, %972
  %1067 = phi float [ %1063, %1062 ], [ 0x3FD6666660000000, %972 ]
  %1068 = phi float [ %1064, %1062 ], [ 0.000000e+00, %972 ]
  %1069 = phi float [ %1065, %1062 ], [ 0.000000e+00, %972 ]
  %1070 = phi float [ %1006, %1062 ], [ 1.000000e+00, %972 ]
  %1071 = add i32 %62, 160
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 22
  %1075 = shl nuw nsw i32 %1074, 5
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 64
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1114, label %1081

; <label>:1081                                    ; preds = %1066
  %1082 = add i32 %62, 408
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 131072
  %1090 = icmp eq i32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1092, %248
  %1096 = fmul fast float %1093, %251
  %1097 = fmul fast float %1094, %254
  br i1 %1090, label %1104, label %1098

; <label>:1098                                    ; preds = %1081
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1095
  %1102 = fmul fast float %1100, %1096
  %1103 = fmul fast float %1100, %1097
  br label %1104

; <label>:1104                                    ; preds = %1098, %1081
  %1105 = phi float [ %1101, %1098 ], [ %1095, %1081 ]
  %1106 = phi float [ %1102, %1098 ], [ %1096, %1081 ]
  %1107 = phi float [ %1103, %1098 ], [ %1097, %1081 ]
  %1108 = fmul fast float %1105, %1076
  %1109 = select i1 %228, float %1108, float %1105
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1106, float %1107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = select i1 %228, float 0.000000e+00, float %1105
  %1112 = select i1 %228, float %1110, float %1106
  %1113 = select i1 %228, float 0.000000e+00, float %1107
  br label %1114

; <label>:1114                                    ; preds = %1104, %1066
  %1115 = phi float [ %1111, %1104 ], [ 0.000000e+00, %1066 ]
  %1116 = phi float [ %1112, %1104 ], [ 0.000000e+00, %1066 ]
  %1117 = phi float [ %1113, %1104 ], [ 0.000000e+00, %1066 ]
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 1024
  %1121 = icmp eq i32 %1120, 0
  br i1 %1121, label %1152, label %1122

; <label>:1122                                    ; preds = %1114
  %1123 = add i32 %62, 152
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = lshr i32 %1125, 8
  %1130 = and i32 %1129, 255
  %1131 = uitofp i32 %1130 to float
  %1132 = fmul fast float %1131, 0x3F70101020000000
  %1133 = lshr i32 %1125, 16
  %1134 = and i32 %1133, 255
  %1135 = uitofp i32 %1134 to float
  %1136 = fmul fast float %1135, 0x3F70101020000000
  %1137 = fmul fast float %1128, %1128
  %1138 = fmul fast float %1132, %1132
  %1139 = fmul fast float %1136, %1136
  %1140 = add i32 %62, 472
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = add i32 %1142, 0
  %1144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1144, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = fmul fast float %1137, %1146
  %1150 = fmul fast float %1138, %1147
  %1151 = fmul fast float %1139, %1148
  br label %1152

; <label>:1152                                    ; preds = %1122, %1114
  %1153 = phi float [ %1149, %1122 ], [ 0.000000e+00, %1114 ]
  %1154 = phi float [ %1150, %1122 ], [ 0.000000e+00, %1114 ]
  %1155 = phi float [ %1151, %1122 ], [ 0.000000e+00, %1114 ]
  %1156 = fcmp fast ogt float %1153, 0.000000e+00
  %1157 = fcmp fast ogt float %1154, 0.000000e+00
  %1158 = fcmp fast ogt float %1155, 0.000000e+00
  %1159 = call float @dx.op.unary.f32(i32 23, float %1153)  ; Log(value)
  %1160 = call float @dx.op.unary.f32(i32 23, float %1154)  ; Log(value)
  %1161 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 7
  %1165 = and i32 %1164, 32752
  %1166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1165)  ; LegacyF16ToF32(value)
  %1167 = fmul fast float %1159, 0xBFE62E4300000000
  %1168 = fmul fast float %1167, %1166
  %1169 = fmul fast float %1160, 0xBFE62E4300000000
  %1170 = fmul fast float %1169, %1166
  %1171 = fmul fast float %1161, 0xBFE62E4300000000
  %1172 = fmul fast float %1171, %1166
  %1173 = select i1 %1156, float %1168, float 1.270000e+02
  %1174 = select i1 %1157, float %1170, float 1.270000e+02
  %1175 = select i1 %1158, float %1172, float 1.270000e+02
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 10240
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1224, label %1180

; <label>:1180                                    ; preds = %1152
  %1181 = add i32 %62, 488
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %1183, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1185, %dx.types.Handle %108, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 3
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 1048576
  %1192 = icmp ne i32 %1191, 0
  %1193 = and i32 %1190, 8192
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1210, label %1195

; <label>:1195                                    ; preds = %1180
  %1196 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1197 = select i1 %1192, float %1196, float %1187
  %1198 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1199 = select i1 %1192, float %1198, float %1187
  %1200 = add i32 %62, 96
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 16
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = fmul fast float %1205, 0x3F80101020000000
  %1207 = fmul fast float %1206, %1199
  %1208 = fmul fast float %1206, %1187
  %1209 = fmul fast float %1206, %1197
  br label %1210

; <label>:1210                                    ; preds = %1195, %1180
  %1211 = phi float [ %1207, %1195 ], [ 0.000000e+00, %1180 ]
  %1212 = phi float [ %1208, %1195 ], [ 0.000000e+00, %1180 ]
  %1213 = phi float [ %1209, %1195 ], [ 0.000000e+00, %1180 ]
  %1214 = and i32 %1190, 2048
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1224, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = shl i32 %1218, 4
  %1220 = and i32 %1219, 32752
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = fmul fast float %1221, %1188
  %1223 = call float @dx.op.binary.f32(i32 35, float %1222, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1224

; <label>:1224                                    ; preds = %1216, %1210, %1152
  %1225 = phi float [ %1211, %1216 ], [ %1211, %1210 ], [ 0.000000e+00, %1152 ]
  %1226 = phi float [ %1212, %1216 ], [ %1212, %1210 ], [ 0.000000e+00, %1152 ]
  %1227 = phi float [ %1213, %1216 ], [ %1213, %1210 ], [ 0.000000e+00, %1152 ]
  %1228 = phi float [ %1223, %1216 ], [ 0x3F70101020000000, %1210 ], [ 0x3F70101020000000, %1152 ]
  %1229 = add i32 %62, 96
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = lshr i32 %1231, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = fmul fast float %1236, %1237
  %1239 = fadd fast float %1238, %1233
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  br label %1242

; <label>:1242                                    ; preds = %1224, %467
  %1243 = phi float [ 0.000000e+00, %467 ], [ %1068, %1224 ]
  %1244 = phi float [ 0.000000e+00, %467 ], [ %1069, %1224 ]
  %1245 = phi float [ 0.000000e+00, %467 ], [ %987, %1224 ]
  %1246 = phi float [ 0.000000e+00, %467 ], [ %988, %1224 ]
  %1247 = phi float [ 0.000000e+00, %467 ], [ %989, %1224 ]
  %1248 = phi float [ 0.000000e+00, %467 ], [ %1225, %1224 ]
  %1249 = phi float [ 0.000000e+00, %467 ], [ %1226, %1224 ]
  %1250 = phi float [ 0.000000e+00, %467 ], [ %1227, %1224 ]
  %1251 = phi float [ 0.000000e+00, %467 ], [ %1115, %1224 ]
  %1252 = phi float [ 0.000000e+00, %467 ], [ %1116, %1224 ]
  %1253 = phi float [ 0.000000e+00, %467 ], [ %1117, %1224 ]
  %1254 = phi float [ 0.000000e+00, %467 ], [ %1173, %1224 ]
  %1255 = phi float [ 0.000000e+00, %467 ], [ %1174, %1224 ]
  %1256 = phi float [ 0.000000e+00, %467 ], [ %1175, %1224 ]
  %1257 = phi float [ 0.000000e+00, %467 ], [ %973, %1224 ]
  %1258 = phi float [ 0.000000e+00, %467 ], [ %769, %1224 ]
  %1259 = phi float [ 0.000000e+00, %467 ], [ %1067, %1224 ]
  %1260 = phi float [ 0.000000e+00, %467 ], [ %1070, %1224 ]
  %1261 = phi float [ 0.000000e+00, %467 ], [ %1228, %1224 ]
  %1262 = phi float [ 0.000000e+00, %467 ], [ %1241, %1224 ]
  br i1 %415, label %2300, label %1263

; <label>:1263                                    ; preds = %1242
  %1264 = icmp ult i32 %473, 2
  %1265 = add i32 %62, 40
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %62, 44
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = or i32 %1270, %1267
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %2300, label %1273

; <label>:1273                                    ; preds = %1263
  %1274 = and i32 %1267, 262144
  %1275 = icmp ne i32 %1274, 0
  %1276 = select i1 %1275, float %65, float 1.000000e+00
  %1277 = select i1 %1275, float %66, float 0.000000e+00
  %1278 = select i1 %1275, float %67, float 0.000000e+00
  %1279 = select i1 %1275, float %68, float 1.000000e+00
  %1280 = select i1 %1275, float %69, float %90
  %1281 = select i1 %1275, float %70, float %91
  %1282 = add i32 %62, 300
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = fmul fast float %1286, 0x3F50624DE0000000
  %1288 = add i32 %62, 104
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 16
  %1292 = and i32 %1291, 255
  %1293 = lshr i32 %1290, 24
  %1294 = add i32 %62, 308
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 65535
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = lshr i32 %1296, 16
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = add i32 %62, 48
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = lshr i32 %1303, 22
  %1305 = shl nuw nsw i32 %1304, 5
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = shl i32 %1303, 4
  %1308 = and i32 %1307, 32752
  %1309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1308)  ; LegacyF16ToF32(value)
  %1310 = lshr i32 %1303, 7
  %1311 = and i32 %1310, 32752
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1315 = fmul fast float %1314, 1.000000e+03
  %1316 = fmul fast float %325, %1315
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fadd fast float %1317, %315
  %1319 = fmul fast float %326, %1315
  %1320 = call float @dx.op.unary.f32(i32 22, float %1319)  ; Frc(value)
  %1321 = fadd fast float %1320, %317
  %1322 = fmul fast float %1287, %1315
  %1323 = call float @dx.op.unary.f32(i32 22, float %1322)  ; Frc(value)
  %1324 = fmul fast float %1323, 0x401921FB60000000
  %1325 = fadd fast float %1324, %1306
  %1326 = call float @dx.op.unary.f32(i32 13, float %1325)  ; Sin(value)
  %1327 = call float @dx.op.unary.f32(i32 12, float %1325)  ; Cos(value)
  %1328 = fsub fast float -0.000000e+00, %1326
  %1329 = fadd fast float %1280, -5.000000e-01
  %1330 = fadd fast float %1281, -5.000000e-01
  %1331 = fmul fast float %1298, %1329
  %1332 = fmul fast float %1300, %1330
  %1333 = fadd fast float %1331, 5.000000e-01
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = fmul fast float %1309, %1333
  %1336 = fmul fast float %1312, %1334
  %1337 = fmul fast float %1327, %1335
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1336, float %1337)  ; FMad(a,b,c)
  %1339 = fmul fast float %1326, %1335
  %1340 = call float @dx.op.tertiary.f32(i32 46, float %1327, float %1336, float %1339)  ; FMad(a,b,c)
  %1341 = fadd fast float %1318, %1338
  %1342 = fadd fast float %1321, %1340
  %1343 = icmp ugt i32 %1292, 1
  %1344 = icmp ugt i32 %1290, 33554431
  %1345 = or i1 %1344, %1343
  br i1 %1345, label %1346, label %1371

; <label>:1346                                    ; preds = %1273
  %1347 = add i32 %62, 244
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = lshr i32 %1349, 16
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = fmul fast float %1314, %1351
  %1353 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1354 = mul nuw nsw i32 %1292, %1293
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1353, %1355
  %1357 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1358 = fptoui float %1357 to i32
  %1359 = urem i32 %1358, %1292
  %1360 = udiv i32 %1358, %1293
  %1361 = call float @dx.op.unary.f32(i32 22, float %1341)  ; Frc(value)
  %1362 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1363 = uitofp i32 %1359 to float
  %1364 = uitofp i32 %1360 to float
  %1365 = fadd fast float %1361, %1363
  %1366 = fadd fast float %1362, %1364
  %1367 = uitofp i32 %1292 to float
  %1368 = uitofp i32 %1293 to float
  %1369 = fdiv fast float %1365, %1367
  %1370 = fdiv fast float %1366, %1368
  br label %1371

; <label>:1371                                    ; preds = %1346, %1273
  %1372 = phi float [ %1369, %1346 ], [ %1341, %1273 ]
  %1373 = phi float [ %1370, %1346 ], [ %1342, %1273 ]
  %1374 = and i32 %1267, 16777216
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1485, label %1376

; <label>:1376                                    ; preds = %1371
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.CBufRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = fadd fast float %1378, %166
  %1382 = fadd fast float %1379, %167
  %1383 = fadd fast float %1380, %168
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = icmp eq i32 %63, 65535
  br i1 %1387, label %1482, label %1388

; <label>:1388                                    ; preds = %1376
  %1389 = lshr i32 %63, 1
  %1390 = shl i32 %1389, 2
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %63, 1
  %1394 = icmp ne i32 %1393, 0
  %1395 = lshr i32 %1392, 16
  %1396 = and i32 %1392, 65535
  %1397 = select i1 %1394, i32 %1395, i32 %1396
  %1398 = icmp eq i32 %1397, 65535
  br i1 %1398, label %1478, label %1399

; <label>:1399                                    ; preds = %1388
  %1400 = mul nuw nsw i32 %1397, 40
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.ResRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.ResRet.f32 %1401, 2
  %1405 = add nuw nsw i32 %1400, 12
  %1406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = add nuw nsw i32 %1400, 24
  %1411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = add nuw nsw i32 %1400, 36
  %1416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = fsub fast float %1381, %1402
  %1419 = fsub fast float %1382, %1403
  %1420 = fsub fast float %1383, %1404
  %1421 = fmul fast float %1417, %1418
  %1422 = fmul fast float %1417, %1419
  %1423 = fmul fast float %1417, %1420
  %1424 = call float @dx.op.unary.f32(i32 27, float %1421)  ; Round_ni(value)
  %1425 = call float @dx.op.unary.f32(i32 27, float %1422)  ; Round_ni(value)
  %1426 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fmul fast float %1427, %1407
  %1431 = fmul fast float %1428, %1408
  %1432 = fmul fast float %1429, %1409
  %1433 = shl i32 %63, 2
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1435, 0
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1439 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1440 = call float @dx.op.unary.f32(i32 22, float %1432)  ; Frc(value)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1437, %dx.types.Handle %57, float %1438, float %1439, float %1440, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = fmul fast float %1442, 1.023000e+03
  %1446 = fmul fast float %1443, 1.023000e+03
  %1447 = fmul fast float %1444, 1.023000e+03
  %1448 = fadd fast float %1445, 5.000000e-01
  %1449 = fadd fast float %1446, 5.000000e-01
  %1450 = fadd fast float %1447, 5.000000e-01
  %1451 = call float @dx.op.unary.f32(i32 27, float %1448)  ; Round_ni(value)
  %1452 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1453 = call float @dx.op.unary.f32(i32 27, float %1450)  ; Round_ni(value)
  %1454 = fsub fast float %1421, %1424
  %1455 = fsub fast float %1422, %1425
  %1456 = fsub fast float %1423, %1426
  %1457 = fmul fast float %1454, 7.500000e-01
  %1458 = fmul fast float %1455, 7.500000e-01
  %1459 = fmul fast float %1456, 7.500000e-01
  %1460 = fadd fast float %1424, 1.250000e-01
  %1461 = fadd fast float %1460, %1457
  %1462 = fadd fast float %1461, %1451
  %1463 = fadd fast float %1425, 1.250000e-01
  %1464 = fadd fast float %1463, %1458
  %1465 = fadd fast float %1464, %1452
  %1466 = fadd fast float %1426, 1.250000e-01
  %1467 = fadd fast float %1466, %1459
  %1468 = fadd fast float %1467, %1453
  %1469 = fmul fast float %1462, %1412
  %1470 = fmul fast float %1465, %1413
  %1471 = fmul fast float %1468, %1414
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = add i32 %1473, 0
  %1475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1474, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1475, %dx.types.Handle %55, float %1469, float %1470, float %1471, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  br label %1478

; <label>:1478                                    ; preds = %1399, %1388
  %1479 = phi float [ %1477, %1399 ], [ -1.000000e+00, %1388 ]
  %1480 = fadd fast float %1479, %1386
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  br label %1482

; <label>:1482                                    ; preds = %1478, %1376
  %1483 = phi float [ %1481, %1478 ], [ %1386, %1376 ]
  %1484 = fmul fast float %1483, %470
  br label %1485

; <label>:1485                                    ; preds = %1482, %1371
  %1486 = phi float [ %1484, %1482 ], [ %470, %1371 ]
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 256
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1537, label %1491

; <label>:1491                                    ; preds = %1485
  %1492 = add i32 %62, 444
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = add i32 %1494, 0
  %1496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1496, %dx.types.Handle %108, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = add i32 %62, 116
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = shl i32 %1501, 4
  %1503 = and i32 %1502, 32752
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = lshr i32 %1501, 7
  %1506 = and i32 %1505, 32752
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fsub fast float 1.000000e+00, %1486
  %1509 = call float @dx.op.binary.f32(i32 35, float %1508, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1510 = bitcast float %1486 to i32
  %1511 = sitofp i32 %1510 to float
  %1512 = fadd fast float %1511, 0xC1CFBF8940000000
  %1513 = fmul fast float %1507, %1512
  %1514 = fadd fast float %1513, 0x41CFBF8940000000
  %1515 = fptosi float %1514 to i32
  %1516 = bitcast i32 %1515 to float
  %1517 = bitcast float %1509 to i32
  %1518 = sitofp i32 %1517 to float
  %1519 = fadd fast float %1518, 0xC1CFBF8940000000
  %1520 = fmul fast float %1519, %1507
  %1521 = fadd fast float %1520, 0x41CFBF8940000000
  %1522 = fptosi float %1521 to i32
  %1523 = bitcast i32 %1522 to float
  %1524 = fmul fast float %1516, %1504
  %1525 = fmul fast float %1523, %1504
  %1526 = fsub fast float %1509, %1524
  %1527 = fadd fast float %1525, %1509
  %1528 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1529 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1530 = fsub fast float %1498, %1528
  %1531 = fsub fast float %1529, %1528
  %1532 = bitcast float %1531 to i32
  %1533 = sub nsw i32 2129859010, %1532
  %1534 = bitcast i32 %1533 to float
  %1535 = fmul fast float %1534, %1530
  %1536 = call float @dx.op.unary.f32(i32 7, float %1535)  ; Saturate(value)
  br label %1537

; <label>:1537                                    ; preds = %1491, %1485
  %1538 = phi float [ %1536, %1491 ], [ %1486, %1485 ]
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 128
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1559, label %1543

; <label>:1543                                    ; preds = %1537
  %1544 = add i32 %62, 428
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1546, 0
  %1548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1548, %dx.types.Handle %108, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1550 = extractvalue %dx.types.ResRet.f32 %1549, 0
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 524288
  %1554 = icmp ne i32 %1553, 0
  %1555 = fcmp fast ogt float %1550, 0x3FE0101020000000
  %1556 = select i1 %1555, float 1.000000e+00, float 0.000000e+00
  %1557 = select i1 %1554, float %1556, float %1550
  %1558 = fmul fast float %1557, %1538
  br label %1559

; <label>:1559                                    ; preds = %1543, %1537
  %1560 = phi float [ %1558, %1543 ], [ %1538, %1537 ]
  %1561 = fcmp fast ult float %1560, 0x3F70101020000000
  br i1 %1561, label %2300, label %1562

; <label>:1562                                    ; preds = %1559
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 16
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1765, label %1567

; <label>:1567                                    ; preds = %1562
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = add i32 %62, 380
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1570, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = add i32 %1572, 0
  %1574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1574, %dx.types.Handle %107, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1576 = extractvalue %dx.types.ResRet.f32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.f32 %1575, 1
  %1578 = extractvalue %dx.types.ResRet.f32 %1575, 2
  %1579 = extractvalue %dx.types.ResRet.f32 %1575, 3
  %1580 = and i32 %1569, 255
  %1581 = uitofp i32 %1580 to float
  %1582 = lshr i32 %1569, 8
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1579, %1581
  %1586 = fadd fast float %1585, %1584
  %1587 = fmul fast float %1586, 0x3F70101000000000
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 512
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1600, label %1592

; <label>:1592                                    ; preds = %1567
  %1593 = add i32 %62, 460
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %108, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  br label %1600

; <label>:1600                                    ; preds = %1592, %1567
  %1601 = phi float [ %1599, %1592 ], [ 1.000000e+00, %1567 ]
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 33554432
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1712, label %1606

; <label>:1606                                    ; preds = %1600
  %1607 = add i32 %62, 240
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 65535
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = lshr i32 %1609, 16
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = add i32 %62, 244
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = lshr i32 %1620, 24
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = and i32 %1620, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = lshr i32 %1620, 8
  %1628 = and i32 %1627, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1620, 16
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = add i32 %62, 236
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = lshr i32 %1637, 24
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = and i32 %1637, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F70101020000000
  %1644 = lshr i32 %1637, 8
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = lshr i32 %1637, 16
  %1649 = and i32 %1648, 255
  %1650 = uitofp i32 %1649 to float
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = bitcast float %1576 to i32
  %1653 = ashr i32 %1652, 1
  %1654 = sub nsw i32 1597463174, %1653
  %1655 = bitcast i32 %1654 to float
  %1656 = fmul fast float %1576, 5.000000e-01
  %1657 = fmul fast float %1655, %1655
  %1658 = fmul fast float %1657, %1656
  %1659 = fsub fast float 1.500000e+00, %1658
  %1660 = fmul fast float %1655, %1576
  %1661 = fmul fast float %1660, %1659
  %1662 = bitcast float %1577 to i32
  %1663 = ashr i32 %1662, 1
  %1664 = sub nsw i32 1597463174, %1663
  %1665 = bitcast i32 %1664 to float
  %1666 = fmul fast float %1577, 5.000000e-01
  %1667 = fmul fast float %1665, %1665
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float 1.500000e+00, %1668
  %1670 = fmul fast float %1665, %1577
  %1671 = fmul fast float %1670, %1669
  %1672 = bitcast float %1578 to i32
  %1673 = ashr i32 %1672, 1
  %1674 = sub nsw i32 1597463174, %1673
  %1675 = bitcast i32 %1674 to float
  %1676 = fmul fast float %1578, 5.000000e-01
  %1677 = fmul fast float %1675, %1675
  %1678 = fmul fast float %1677, %1676
  %1679 = fsub fast float 1.500000e+00, %1678
  %1680 = fmul fast float %1675, %1578
  %1681 = fmul fast float %1680, %1679
  %1682 = fsub fast float %1661, %1643
  %1683 = fsub fast float %1671, %1647
  %1684 = fsub fast float %1681, %1651
  %1685 = fmul fast float %1682, %1611
  %1686 = fmul fast float %1683, %1613
  %1687 = fmul fast float %1684, %1618
  %1688 = fadd fast float %1685, %1626
  %1689 = fadd fast float %1686, %1630
  %1690 = fadd fast float %1687, %1634
  %1691 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = fmul fast float %1691, %1691
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1693, %1693
  %1697 = fsub fast float %1694, %1576
  %1698 = fsub fast float %1695, %1577
  %1699 = fsub fast float %1696, %1578
  %1700 = fmul fast float %1697, %1601
  %1701 = fmul fast float %1698, %1601
  %1702 = fmul fast float %1699, %1601
  %1703 = fadd fast float %1700, %1576
  %1704 = fadd fast float %1701, %1577
  %1705 = fadd fast float %1702, %1578
  %1706 = fadd fast float %1623, %1587
  %1707 = fsub fast float %1706, %1640
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fsub fast float %1708, %1587
  %1710 = fmul fast float %1709, %1601
  %1711 = fadd fast float %1710, %1587
  br label %1765

; <label>:1712                                    ; preds = %1600
  %1713 = and i32 %1603, 134217728
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1749, label %1715

; <label>:1715                                    ; preds = %1712
  %1716 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1719 = fadd fast float %1716, -5.000000e-01
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fmul fast float %1719, %1601
  %1723 = fmul fast float %1720, %1601
  %1724 = fmul fast float %1721, %1601
  %1725 = fadd fast float %1722, 5.000000e-01
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1729 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1730 = call float @dx.op.unary.f32(i32 24, float %1578)  ; Sqrt(value)
  %1731 = fmul fast float %1725, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1728
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1728
  %1736 = fmul fast float %1726, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1729
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1729
  %1741 = fmul fast float %1727, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1730
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1730
  %1746 = fmul fast float %1735, %1735
  %1747 = fmul fast float %1740, %1740
  %1748 = fmul fast float %1745, %1745
  br label %1765

; <label>:1749                                    ; preds = %1712
  %1750 = fmul fast float %302, %302
  %1751 = fmul fast float %306, %306
  %1752 = fmul fast float %310, %310
  %1753 = fadd fast float %1750, -1.000000e+00
  %1754 = fadd fast float %1751, -1.000000e+00
  %1755 = fadd fast float %1752, -1.000000e+00
  %1756 = fmul fast float %1601, %1753
  %1757 = fmul fast float %1601, %1754
  %1758 = fmul fast float %1601, %1755
  %1759 = fadd fast float %1756, 1.000000e+00
  %1760 = fadd fast float %1757, 1.000000e+00
  %1761 = fadd fast float %1758, 1.000000e+00
  %1762 = fmul fast float %1759, %1576
  %1763 = fmul fast float %1760, %1577
  %1764 = fmul fast float %1761, %1578
  br label %1765

; <label>:1765                                    ; preds = %1749, %1715, %1606, %1562
  %1766 = phi float [ %1711, %1606 ], [ %1587, %1715 ], [ %1587, %1749 ], [ 0x3FA23C0BE0000000, %1562 ]
  %1767 = phi float [ %1703, %1606 ], [ %1746, %1715 ], [ %1762, %1749 ], [ 1.000000e+00, %1562 ]
  %1768 = phi float [ %1704, %1606 ], [ %1747, %1715 ], [ %1763, %1749 ], [ 1.000000e+00, %1562 ]
  %1769 = phi float [ %1705, %1606 ], [ %1748, %1715 ], [ %1764, %1749 ], [ 1.000000e+00, %1562 ]
  %1770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.i32 %1770, 1
  %1772 = and i32 %1771, 1
  %1773 = icmp ne i32 %1772, 0
  %1774 = add i32 %62, 356
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 32
  %1778 = icmp ne i32 %1777, 0
  %1779 = and i1 %1773, %1778
  %1780 = select i1 %1779, float 1.000000e+00, float %1767
  %1781 = select i1 %1779, float 0x3FD3333340000000, float %1768
  %1782 = select i1 %1779, float 0x3FD3333340000000, float %1769
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = and i32 %1784, 32
  %1786 = icmp eq i32 %1785, 0
  br i1 %1786, label %1859, label %1787

; <label>:1787                                    ; preds = %1765
  %1788 = add i32 %62, 108
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = add i32 %62, 396
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = add i32 %1793, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1795, %dx.types.Handle %107, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = and i32 %1790, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = lshr i32 %1790, 8
  %1804 = and i32 %1803, 255
  %1805 = uitofp i32 %1804 to float
  %1806 = lshr i32 %1790, 16
  %1807 = and i32 %1806, 255
  %1808 = uitofp i32 %1807 to float
  %1809 = fmul fast float %1808, 0x3F70101000000000
  %1810 = fmul fast float %1797, %1802
  %1811 = fadd fast float %1810, %1805
  %1812 = fmul fast float %1811, 0x3F70101000000000
  %1813 = fadd fast float %1798, -5.000000e-01
  %1814 = fadd fast float %1800, -5.000000e-01
  %1815 = fmul fast float %1813, %1809
  %1816 = fmul fast float %1814, %1809
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fmul fast float %1817, 2.000000e+00
  %1820 = fadd fast float %1819, -1.000000e+00
  %1821 = fmul fast float %1818, 2.000000e+00
  %1822 = fadd fast float %1821, -1.000000e+00
  %1823 = fadd fast float %1820, %1822
  %1824 = fmul fast float %1823, 5.000000e-01
  %1825 = fsub fast float %1820, %1822
  %1826 = fmul fast float %1825, 5.000000e-01
  %1827 = call float @dx.op.unary.f32(i32 6, float %1824)  ; FAbs(value)
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = call float @dx.op.unary.f32(i32 6, float %1826)  ; FAbs(value)
  %1830 = fsub fast float %1828, %1829
  %1831 = call float @dx.op.dot3.f32(i32 55, float %1824, float %1826, float %1830, float %1824, float %1826, float %1830)  ; Dot3(ax,ay,az,bx,by,bz)
  %1832 = call float @dx.op.unary.f32(i32 25, float %1831)  ; Rsqrt(value)
  %1833 = fmul fast float %1824, %1832
  %1834 = fmul fast float %1826, %1832
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 67108864
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1855, label %1839

; <label>:1839                                    ; preds = %1787
  %1840 = add i32 %62, 296
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 65535
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 65535
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = lshr i32 %1842, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = fsub fast float %1812, %1850
  %1852 = fmul fast float %1851, %1844
  %1853 = fadd fast float %1852, %1848
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  br label %1855

; <label>:1855                                    ; preds = %1839, %1787
  %1856 = phi float [ %1854, %1839 ], [ %1812, %1787 ]
  %1857 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1276, float %1277)  ; Dot2(ax,ay,bx,by)
  %1858 = call float @dx.op.dot2.f32(i32 54, float %1833, float %1834, float %1278, float %1279)  ; Dot2(ax,ay,bx,by)
  br label %1859

; <label>:1859                                    ; preds = %1855, %1765
  %1860 = phi float [ %1856, %1855 ], [ 0x3FD6666660000000, %1765 ]
  %1861 = phi float [ %1857, %1855 ], [ 0.000000e+00, %1765 ]
  %1862 = phi float [ %1858, %1855 ], [ 0.000000e+00, %1765 ]
  %1863 = phi float [ %1799, %1855 ], [ 1.000000e+00, %1765 ]
  %1864 = add i32 %62, 176
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = lshr i32 %1866, 22
  %1868 = shl nuw nsw i32 %1867, 5
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 64
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1907, label %1874

; <label>:1874                                    ; preds = %1859
  %1875 = add i32 %62, 412
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = add i32 %1877, 0
  %1879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 131072
  %1883 = icmp eq i32 %1882, 0
  %1884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1879, %dx.types.Handle %107, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = fmul fast float %1885, %290
  %1889 = fmul fast float %1886, %293
  %1890 = fmul fast float %1887, %296
  br i1 %1883, label %1897, label %1891

; <label>:1891                                    ; preds = %1874
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  %1894 = fmul fast float %1893, %1888
  %1895 = fmul fast float %1893, %1889
  %1896 = fmul fast float %1893, %1890
  br label %1897

; <label>:1897                                    ; preds = %1891, %1874
  %1898 = phi float [ %1894, %1891 ], [ %1888, %1874 ]
  %1899 = phi float [ %1895, %1891 ], [ %1889, %1874 ]
  %1900 = phi float [ %1896, %1891 ], [ %1890, %1874 ]
  %1901 = fmul fast float %1898, %1869
  %1902 = select i1 %228, float %1901, float %1898
  %1903 = call float @dx.op.dot3.f32(i32 55, float %1902, float %1899, float %1900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1904 = select i1 %228, float 0.000000e+00, float %1898
  %1905 = select i1 %228, float %1903, float %1899
  %1906 = select i1 %228, float 0.000000e+00, float %1900
  br label %1907

; <label>:1907                                    ; preds = %1897, %1859
  %1908 = phi float [ %1904, %1897 ], [ 0.000000e+00, %1859 ]
  %1909 = phi float [ %1905, %1897 ], [ 0.000000e+00, %1859 ]
  %1910 = phi float [ %1906, %1897 ], [ 0.000000e+00, %1859 ]
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 1024
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1945, label %1915

; <label>:1915                                    ; preds = %1907
  %1916 = add i32 %62, 168
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = and i32 %1918, 255
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1920, 0x3F70101020000000
  %1922 = lshr i32 %1918, 8
  %1923 = and i32 %1922, 255
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1924, 0x3F70101020000000
  %1926 = lshr i32 %1918, 16
  %1927 = and i32 %1926, 255
  %1928 = uitofp i32 %1927 to float
  %1929 = fmul fast float %1928, 0x3F70101020000000
  %1930 = fmul fast float %1921, %1921
  %1931 = fmul fast float %1925, %1925
  %1932 = fmul fast float %1929, %1929
  %1933 = add i32 %62, 476
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %1935, 0
  %1937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1937, %dx.types.Handle %108, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = fmul fast float %1930, %1939
  %1943 = fmul fast float %1931, %1940
  %1944 = fmul fast float %1932, %1941
  br label %1945

; <label>:1945                                    ; preds = %1915, %1907
  %1946 = phi float [ %1942, %1915 ], [ 0.000000e+00, %1907 ]
  %1947 = phi float [ %1943, %1915 ], [ 0.000000e+00, %1907 ]
  %1948 = phi float [ %1944, %1915 ], [ 0.000000e+00, %1907 ]
  %1949 = fcmp fast ogt float %1946, 0.000000e+00
  %1950 = fcmp fast ogt float %1947, 0.000000e+00
  %1951 = fcmp fast ogt float %1948, 0.000000e+00
  %1952 = call float @dx.op.unary.f32(i32 23, float %1946)  ; Log(value)
  %1953 = call float @dx.op.unary.f32(i32 23, float %1947)  ; Log(value)
  %1954 = call float @dx.op.unary.f32(i32 23, float %1948)  ; Log(value)
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = lshr i32 %1956, 7
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = fmul fast float %1952, 0xBFE62E4300000000
  %1961 = fmul fast float %1960, %1959
  %1962 = fmul fast float %1953, 0xBFE62E4300000000
  %1963 = fmul fast float %1962, %1959
  %1964 = fmul fast float %1954, 0xBFE62E4300000000
  %1965 = fmul fast float %1964, %1959
  %1966 = select i1 %1949, float %1961, float 1.270000e+02
  %1967 = select i1 %1950, float %1963, float 1.270000e+02
  %1968 = select i1 %1951, float %1965, float 1.270000e+02
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 10240
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %2017, label %1973

; <label>:1973                                    ; preds = %1945
  %1974 = add i32 %62, 492
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = add i32 %1976, 0
  %1978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1978, %dx.types.Handle %108, float %1372, float %1373, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 1
  %1981 = extractvalue %dx.types.ResRet.f32 %1979, 3
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 1048576
  %1985 = icmp ne i32 %1984, 0
  %1986 = and i32 %1983, 8192
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2003, label %1988

; <label>:1988                                    ; preds = %1973
  %1989 = extractvalue %dx.types.ResRet.f32 %1979, 2
  %1990 = select i1 %1985, float %1989, float %1980
  %1991 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1992 = select i1 %1985, float %1991, float %1980
  %1993 = add i32 %62, 112
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = lshr i32 %1995, 16
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = fmul fast float %1998, 0x3F80101020000000
  %2000 = fmul fast float %1999, %1992
  %2001 = fmul fast float %1999, %1980
  %2002 = fmul fast float %1999, %1990
  br label %2003

; <label>:2003                                    ; preds = %1988, %1973
  %2004 = phi float [ %2000, %1988 ], [ 0.000000e+00, %1973 ]
  %2005 = phi float [ %2001, %1988 ], [ 0.000000e+00, %1973 ]
  %2006 = phi float [ %2002, %1988 ], [ 0.000000e+00, %1973 ]
  %2007 = and i32 %1983, 2048
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2017, label %2009

; <label>:2009                                    ; preds = %2003
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = shl i32 %2011, 4
  %2013 = and i32 %2012, 32752
  %2014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2013)  ; LegacyF16ToF32(value)
  %2015 = fmul fast float %2014, %1981
  %2016 = call float @dx.op.binary.f32(i32 35, float %2015, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2017

; <label>:2017                                    ; preds = %2009, %2003, %1945
  %2018 = phi float [ %2004, %2009 ], [ %2004, %2003 ], [ 0.000000e+00, %1945 ]
  %2019 = phi float [ %2005, %2009 ], [ %2005, %2003 ], [ 0.000000e+00, %1945 ]
  %2020 = phi float [ %2006, %2009 ], [ %2006, %2003 ], [ 0.000000e+00, %1945 ]
  %2021 = phi float [ %2016, %2009 ], [ 0x3F70101020000000, %2003 ], [ 0x3F70101020000000, %1945 ]
  %2022 = add i32 %62, 112
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = lshr i32 %2024, 8
  %2028 = and i32 %2027, 255
  %2029 = uitofp i32 %2028 to float
  %2030 = call float @dx.op.dot3.f32(i32 55, float %1780, float %1781, float %1782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2031 = fmul fast float %2029, %2030
  %2032 = fadd fast float %2031, %2026
  %2033 = fmul fast float %2032, 0x3F70101020000000
  %2034 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  br i1 %1264, label %2035, label %2070

; <label>:2035                                    ; preds = %2017
  %2036 = fmul fast float %2021, 2.000000e+00
  %2037 = fcmp fast olt float %1966, 1.270000e+02
  %2038 = fcmp fast olt float %1967, 1.270000e+02
  %2039 = fcmp fast olt float %1968, 1.270000e+02
  %2040 = fmul fast float %1966, 0xBFF7154760000000
  %2041 = fmul fast float %2040, %2036
  %2042 = fmul fast float %1967, 0xBFF7154760000000
  %2043 = fmul fast float %2042, %2036
  %2044 = fmul fast float %1968, 0xBFF7154760000000
  %2045 = fmul fast float %2044, %2036
  %2046 = call float @dx.op.unary.f32(i32 21, float %2041)  ; Exp(value)
  %2047 = call float @dx.op.unary.f32(i32 21, float %2043)  ; Exp(value)
  %2048 = call float @dx.op.unary.f32(i32 21, float %2045)  ; Exp(value)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2051 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2052 = fadd fast float %2049, -1.000000e+00
  %2053 = select i1 %2037, float %2052, float -1.000000e+00
  %2054 = fadd fast float %2050, -1.000000e+00
  %2055 = select i1 %2038, float %2054, float -1.000000e+00
  %2056 = fadd fast float %2051, -1.000000e+00
  %2057 = select i1 %2039, float %2056, float -1.000000e+00
  %2058 = fmul fast float %2053, %1560
  %2059 = fmul fast float %2055, %1560
  %2060 = fmul fast float %2057, %1560
  %2061 = fadd fast float %2058, 1.000000e+00
  %2062 = fadd fast float %2059, 1.000000e+00
  %2063 = fadd fast float %2060, 1.000000e+00
  %2064 = fmul fast float %2061, %1245
  %2065 = fmul fast float %2062, %1246
  %2066 = fmul fast float %2063, %1247
  %2067 = fmul fast float %2061, %1251
  %2068 = fmul fast float %2062, %1252
  %2069 = fmul fast float %2063, %1253
  br label %2070

; <label>:2070                                    ; preds = %2035, %2017
  %2071 = phi float [ %2064, %2035 ], [ %1245, %2017 ]
  %2072 = phi float [ %2065, %2035 ], [ %1246, %2017 ]
  %2073 = phi float [ %2066, %2035 ], [ %1247, %2017 ]
  %2074 = phi float [ %2067, %2035 ], [ %1251, %2017 ]
  %2075 = phi float [ %2068, %2035 ], [ %1252, %2017 ]
  %2076 = phi float [ %2069, %2035 ], [ %1253, %2017 ]
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = and i32 %2078, 3
  %2080 = icmp eq i32 %2079, 3
  br i1 %2080, label %2159, label %2081

; <label>:2081                                    ; preds = %2070
  %2082 = and i32 %2078, 16
  %2083 = icmp ne i32 %2082, 0
  %2084 = select i1 %2083, float %1560, float 0.000000e+00
  %2085 = icmp eq i32 %2079, 0
  br i1 %2085, label %2086, label %2114

; <label>:2086                                    ; preds = %2081
  %2087 = and i32 %2078, 64
  %2088 = icmp ne i32 %2087, 0
  %2089 = select i1 %2088, float %1560, float 0.000000e+00
  %2090 = fsub fast float %1780, %2071
  %2091 = fsub fast float %1781, %2072
  %2092 = fsub fast float %1782, %2073
  %2093 = fmul fast float %2084, %2090
  %2094 = fmul fast float %2084, %2091
  %2095 = fmul fast float %2084, %2092
  %2096 = fadd fast float %2093, %2071
  %2097 = fadd fast float %2094, %2072
  %2098 = fadd fast float %2095, %2073
  %2099 = fsub fast float %1766, %1257
  %2100 = fmul fast float %2084, %2099
  %2101 = fadd fast float %2100, %1257
  %2102 = fsub fast float %1908, %2074
  %2103 = fsub fast float %1909, %2075
  %2104 = fsub fast float %1910, %2076
  %2105 = fmul fast float %2089, %2102
  %2106 = fmul fast float %2089, %2103
  %2107 = fmul fast float %2089, %2104
  %2108 = fadd fast float %2105, %2074
  %2109 = fadd fast float %2106, %2075
  %2110 = fadd fast float %2107, %2076
  %2111 = fsub fast float %2034, %1262
  %2112 = fmul fast float %2084, %2111
  %2113 = fadd fast float %2112, %1262
  br label %2159

; <label>:2114                                    ; preds = %2081
  %2115 = icmp eq i32 %2079, 1
  br i1 %2115, label %2116, label %2129

; <label>:2116                                    ; preds = %2114
  %2117 = fadd fast float %1780, -1.000000e+00
  %2118 = fadd fast float %1781, -1.000000e+00
  %2119 = fadd fast float %1782, -1.000000e+00
  %2120 = fmul fast float %2084, %2117
  %2121 = fmul fast float %2084, %2118
  %2122 = fmul fast float %2084, %2119
  %2123 = fadd fast float %2120, 1.000000e+00
  %2124 = fadd fast float %2121, 1.000000e+00
  %2125 = fadd fast float %2122, 1.000000e+00
  %2126 = fmul fast float %2123, %2071
  %2127 = fmul fast float %2124, %2072
  %2128 = fmul fast float %2125, %2073
  br label %2159

; <label>:2129                                    ; preds = %2114
  %2130 = icmp eq i32 %2079, 2
  br i1 %2130, label %2131, label %2159

; <label>:2131                                    ; preds = %2129
  %2132 = call float @dx.op.unary.f32(i32 24, float %1780)  ; Sqrt(value)
  %2133 = call float @dx.op.unary.f32(i32 24, float %1781)  ; Sqrt(value)
  %2134 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fadd fast float %2134, -5.000000e-01
  %2138 = fmul fast float %2135, %2084
  %2139 = fmul fast float %2136, %2084
  %2140 = fmul fast float %2137, %2084
  %2141 = fadd fast float %2138, 5.000000e-01
  %2142 = fadd fast float %2139, 5.000000e-01
  %2143 = fadd fast float %2140, 5.000000e-01
  %2144 = fmul fast float %2141, 2.000000e+00
  %2145 = fsub fast float 1.000000e+00, %2144
  %2146 = fmul fast float %2145, %2071
  %2147 = fadd fast float %2146, %2144
  %2148 = fmul fast float %2147, %2071
  %2149 = fmul fast float %2142, 2.000000e+00
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, %2072
  %2152 = fadd fast float %2151, %2149
  %2153 = fmul fast float %2152, %2072
  %2154 = fmul fast float %2143, 2.000000e+00
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = fmul fast float %2155, %2073
  %2157 = fadd fast float %2156, %2154
  %2158 = fmul fast float %2157, %2073
  br label %2159

; <label>:2159                                    ; preds = %2131, %2129, %2116, %2086, %2070
  %2160 = phi float [ %2071, %2070 ], [ %2148, %2131 ], [ %2071, %2129 ], [ %2126, %2116 ], [ %2096, %2086 ]
  %2161 = phi float [ %2072, %2070 ], [ %2153, %2131 ], [ %2072, %2129 ], [ %2127, %2116 ], [ %2097, %2086 ]
  %2162 = phi float [ %2073, %2070 ], [ %2158, %2131 ], [ %2073, %2129 ], [ %2128, %2116 ], [ %2098, %2086 ]
  %2163 = phi float [ %2074, %2070 ], [ %2074, %2131 ], [ %2074, %2129 ], [ %2074, %2116 ], [ %2108, %2086 ]
  %2164 = phi float [ %2075, %2070 ], [ %2075, %2131 ], [ %2075, %2129 ], [ %2075, %2116 ], [ %2109, %2086 ]
  %2165 = phi float [ %2076, %2070 ], [ %2076, %2131 ], [ %2076, %2129 ], [ %2076, %2116 ], [ %2110, %2086 ]
  %2166 = phi float [ %1257, %2070 ], [ %1257, %2131 ], [ %1257, %2129 ], [ %1257, %2116 ], [ %2101, %2086 ]
  %2167 = phi float [ %1262, %2070 ], [ %1262, %2131 ], [ %1262, %2129 ], [ %1262, %2116 ], [ %2113, %2086 ]
  %2168 = and i32 %2078, 12
  %2169 = icmp eq i32 %2168, 12
  br i1 %2169, label %2300, label %2170

; <label>:2170                                    ; preds = %2159
  %2171 = and i32 %2078, 2097184
  %2172 = icmp eq i32 %2171, 2097184
  %2173 = select i1 %2172, float %1560, float 0.000000e+00
  %2174 = and i32 %2078, 4194336
  %2175 = icmp eq i32 %2174, 4194336
  %2176 = select i1 %2175, float %1560, float 0.000000e+00
  %2177 = and i32 %2078, 8388640
  %2178 = icmp eq i32 %2177, 8388640
  %2179 = select i1 %2178, float %1560, float 0.000000e+00
  %2180 = and i32 %2078, 1024
  %2181 = icmp ne i32 %2180, 0
  %2182 = select i1 %2181, float %1560, float 0.000000e+00
  %2183 = and i32 %2078, 2048
  %2184 = icmp ne i32 %2183, 0
  %2185 = select i1 %2184, float %1560, float 0.000000e+00
  %2186 = and i32 %2078, 8192
  %2187 = icmp ne i32 %2186, 0
  %2188 = select i1 %2187, float %1560, float 0.000000e+00
  %2189 = icmp eq i32 %2168, 0
  br i1 %2189, label %2190, label %2224

; <label>:2190                                    ; preds = %2170
  %2191 = fsub fast float %1861, %1243
  %2192 = fsub fast float %1862, %1244
  %2193 = fmul fast float %2173, %2191
  %2194 = fmul fast float %2173, %2192
  %2195 = fadd fast float %2193, %1243
  %2196 = fadd fast float %2194, %1244
  %2197 = fsub fast float %1863, %1260
  %2198 = fmul fast float %2176, %2197
  %2199 = fadd fast float %2198, %1260
  %2200 = fsub fast float %1860, %1259
  %2201 = fmul fast float %2179, %2200
  %2202 = fadd fast float %2201, %1259
  %2203 = fsub fast float %1966, %1254
  %2204 = fsub fast float %1967, %1255
  %2205 = fsub fast float %1968, %1256
  %2206 = fmul fast float %2182, %2203
  %2207 = fmul fast float %2182, %2204
  %2208 = fmul fast float %2182, %2205
  %2209 = fadd fast float %2206, %1254
  %2210 = fadd fast float %2207, %1255
  %2211 = fadd fast float %2208, %1256
  %2212 = fsub fast float %2021, %1261
  %2213 = fmul fast float %2185, %2212
  %2214 = fadd fast float %2213, %1261
  %2215 = fsub fast float %2018, %1248
  %2216 = fsub fast float %2019, %1249
  %2217 = fsub fast float %2020, %1250
  %2218 = fmul fast float %2188, %2215
  %2219 = fmul fast float %2188, %2216
  %2220 = fmul fast float %2188, %2217
  %2221 = fadd fast float %2218, %1248
  %2222 = fadd fast float %2219, %1249
  %2223 = fadd fast float %2220, %1250
  br label %2300

; <label>:2224                                    ; preds = %2170
  %2225 = icmp eq i32 %2168, 4
  br i1 %2225, label %2226, label %2272

; <label>:2226                                    ; preds = %2224
  %2227 = fmul fast float %2173, %1861
  %2228 = fmul fast float %2173, %1862
  %2229 = fadd fast float %2227, %1243
  %2230 = fadd fast float %2228, %1244
  %2231 = call float @dx.op.binary.f32(i32 36, float %1260, float %1863)  ; FMin(a,b)
  %2232 = fsub fast float %2231, %1260
  %2233 = fmul fast float %2232, %2176
  %2234 = fadd fast float %2233, %1260
  %2235 = fadd fast float %1860, %1259
  %2236 = fmul fast float %2235, 0x3FF337FAE0000000
  %2237 = fmul fast float %1259, %1259
  %2238 = fmul fast float %1860, %1860
  %2239 = fadd fast float %2238, %2237
  %2240 = fmul fast float %2239, 0x3FE5152B00000000
  %2241 = fmul fast float %1259, 0xBFCC1F85E0000000
  %2242 = fmul fast float %2241, %1860
  %2243 = fadd fast float %2242, 0xBFE1363700000000
  %2244 = fadd fast float %2243, %2236
  %2245 = fsub fast float %2244, %2240
  %2246 = fmul fast float %2235, 0x3FBA6F0D00000000
  %2247 = fmul fast float %2239, 0x3FD0432880000000
  %2248 = fmul fast float %1259, 0xBFEF110800000000
  %2249 = fmul fast float %2248, %1860
  %2250 = fadd fast float %2249, 1.000000e+00
  %2251 = fsub fast float %2250, %2246
  %2252 = fadd fast float %2251, %2247
  %2253 = fdiv fast float %2245, %2252
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = fsub fast float %2254, %1259
  %2256 = fmul fast float %2255, %2179
  %2257 = fadd fast float %2256, %1259
  %2258 = fmul fast float %2182, %1966
  %2259 = fmul fast float %2182, %1967
  %2260 = fmul fast float %2182, %1968
  %2261 = fadd fast float %2258, %1254
  %2262 = fadd fast float %2259, %1255
  %2263 = fadd fast float %2260, %1256
  %2264 = fmul fast float %2185, %2021
  %2265 = fadd fast float %2264, %1261
  %2266 = fmul fast float %2188, %2018
  %2267 = fmul fast float %2188, %2019
  %2268 = fmul fast float %2188, %2020
  %2269 = fadd fast float %2266, %1248
  %2270 = fadd fast float %2267, %1249
  %2271 = fadd fast float %2268, %1250
  br label %2300

; <label>:2272                                    ; preds = %2224
  %2273 = icmp eq i32 %2168, 8
  br i1 %2273, label %2274, label %2300

; <label>:2274                                    ; preds = %2272
  %2275 = fmul fast float %2173, %1861
  %2276 = fmul fast float %2173, %1862
  %2277 = fadd fast float %2275, %1243
  %2278 = fadd fast float %2276, %1244
  %2279 = call float @dx.op.binary.f32(i32 36, float %1260, float %1863)  ; FMin(a,b)
  %2280 = fsub fast float %2279, %1260
  %2281 = fmul fast float %2280, %2176
  %2282 = fadd fast float %2281, %1260
  %2283 = fsub fast float %1860, %1259
  %2284 = fmul fast float %2179, %2283
  %2285 = fadd fast float %2284, %1259
  %2286 = fmul fast float %2182, %1966
  %2287 = fmul fast float %2182, %1967
  %2288 = fmul fast float %2182, %1968
  %2289 = fadd fast float %2286, %1254
  %2290 = fadd fast float %2287, %1255
  %2291 = fadd fast float %2288, %1256
  %2292 = fmul fast float %2185, %2021
  %2293 = fadd fast float %2292, %1261
  %2294 = fmul fast float %2188, %2018
  %2295 = fmul fast float %2188, %2019
  %2296 = fmul fast float %2188, %2020
  %2297 = fadd fast float %2294, %1248
  %2298 = fadd fast float %2295, %1249
  %2299 = fadd fast float %2296, %1250
  br label %2300

; <label>:2300                                    ; preds = %2274, %2272, %2226, %2190, %2159, %1559, %1263, %1242
  %2301 = phi float [ %1243, %2159 ], [ %1243, %1559 ], [ %1243, %1242 ], [ %2277, %2274 ], [ %1243, %2272 ], [ %2229, %2226 ], [ %2195, %2190 ], [ %1243, %1263 ]
  %2302 = phi float [ %1244, %2159 ], [ %1244, %1559 ], [ %1244, %1242 ], [ %2278, %2274 ], [ %1244, %2272 ], [ %2230, %2226 ], [ %2196, %2190 ], [ %1244, %1263 ]
  %2303 = phi float [ %2160, %2159 ], [ %1245, %1559 ], [ %1245, %1242 ], [ %2160, %2274 ], [ %2160, %2272 ], [ %2160, %2226 ], [ %2160, %2190 ], [ %1245, %1263 ]
  %2304 = phi float [ %2161, %2159 ], [ %1246, %1559 ], [ %1246, %1242 ], [ %2161, %2274 ], [ %2161, %2272 ], [ %2161, %2226 ], [ %2161, %2190 ], [ %1246, %1263 ]
  %2305 = phi float [ %2162, %2159 ], [ %1247, %1559 ], [ %1247, %1242 ], [ %2162, %2274 ], [ %2162, %2272 ], [ %2162, %2226 ], [ %2162, %2190 ], [ %1247, %1263 ]
  %2306 = phi float [ %1248, %2159 ], [ %1248, %1559 ], [ %1248, %1242 ], [ %2297, %2274 ], [ %1248, %2272 ], [ %2269, %2226 ], [ %2221, %2190 ], [ %1248, %1263 ]
  %2307 = phi float [ %1249, %2159 ], [ %1249, %1559 ], [ %1249, %1242 ], [ %2298, %2274 ], [ %1249, %2272 ], [ %2270, %2226 ], [ %2222, %2190 ], [ %1249, %1263 ]
  %2308 = phi float [ %1250, %2159 ], [ %1250, %1559 ], [ %1250, %1242 ], [ %2299, %2274 ], [ %1250, %2272 ], [ %2271, %2226 ], [ %2223, %2190 ], [ %1250, %1263 ]
  %2309 = phi float [ %2163, %2159 ], [ %1251, %1559 ], [ %1251, %1242 ], [ %2163, %2274 ], [ %2163, %2272 ], [ %2163, %2226 ], [ %2163, %2190 ], [ %1251, %1263 ]
  %2310 = phi float [ %2164, %2159 ], [ %1252, %1559 ], [ %1252, %1242 ], [ %2164, %2274 ], [ %2164, %2272 ], [ %2164, %2226 ], [ %2164, %2190 ], [ %1252, %1263 ]
  %2311 = phi float [ %2165, %2159 ], [ %1253, %1559 ], [ %1253, %1242 ], [ %2165, %2274 ], [ %2165, %2272 ], [ %2165, %2226 ], [ %2165, %2190 ], [ %1253, %1263 ]
  %2312 = phi float [ %1254, %2159 ], [ %1254, %1559 ], [ %1254, %1242 ], [ %2289, %2274 ], [ %1254, %2272 ], [ %2261, %2226 ], [ %2209, %2190 ], [ %1254, %1263 ]
  %2313 = phi float [ %1255, %2159 ], [ %1255, %1559 ], [ %1255, %1242 ], [ %2290, %2274 ], [ %1255, %2272 ], [ %2262, %2226 ], [ %2210, %2190 ], [ %1255, %1263 ]
  %2314 = phi float [ %1256, %2159 ], [ %1256, %1559 ], [ %1256, %1242 ], [ %2291, %2274 ], [ %1256, %2272 ], [ %2263, %2226 ], [ %2211, %2190 ], [ %1256, %1263 ]
  %2315 = phi float [ %2166, %2159 ], [ %1257, %1559 ], [ %1257, %1242 ], [ %2166, %2274 ], [ %2166, %2272 ], [ %2166, %2226 ], [ %2166, %2190 ], [ %1257, %1263 ]
  %2316 = phi float [ %1259, %2159 ], [ %1259, %1559 ], [ %1259, %1242 ], [ %2285, %2274 ], [ %1259, %2272 ], [ %2257, %2226 ], [ %2202, %2190 ], [ %1259, %1263 ]
  %2317 = phi float [ %1260, %2159 ], [ %1260, %1559 ], [ %1260, %1242 ], [ %2282, %2274 ], [ %1260, %2272 ], [ %2234, %2226 ], [ %2199, %2190 ], [ %1260, %1263 ]
  %2318 = phi float [ %1261, %2159 ], [ %1261, %1559 ], [ %1261, %1242 ], [ %2293, %2274 ], [ %1261, %2272 ], [ %2265, %2226 ], [ %2214, %2190 ], [ %1261, %1263 ]
  %2319 = phi float [ %2167, %2159 ], [ %1262, %1559 ], [ %1262, %1242 ], [ %2167, %2274 ], [ %2167, %2272 ], [ %2167, %2226 ], [ %2167, %2190 ], [ %1262, %1263 ]
  br i1 %417, label %3357, label %2320

; <label>:2320                                    ; preds = %2300
  %2321 = icmp ult i32 %473, 3
  %2322 = add i32 %62, 56
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = add i32 %62, 60
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = or i32 %2327, %2324
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %3357, label %2330

; <label>:2330                                    ; preds = %2320
  %2331 = and i32 %2324, 262144
  %2332 = icmp ne i32 %2331, 0
  %2333 = select i1 %2332, float %65, float 1.000000e+00
  %2334 = select i1 %2332, float %66, float 0.000000e+00
  %2335 = select i1 %2332, float %67, float 0.000000e+00
  %2336 = select i1 %2332, float %68, float 1.000000e+00
  %2337 = select i1 %2332, float %69, float %90
  %2338 = select i1 %2332, float %70, float %91
  %2339 = add i32 %62, 316
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = lshr i32 %2341, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = fmul fast float %2343, 0x3F50624DE0000000
  %2345 = add i32 %62, 120
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = lshr i32 %2347, 16
  %2349 = and i32 %2348, 255
  %2350 = lshr i32 %2347, 24
  %2351 = add i32 %62, 324
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 65535
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = lshr i32 %2353, 16
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = add i32 %62, 64
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = lshr i32 %2360, 22
  %2362 = shl nuw nsw i32 %2361, 5
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = shl i32 %2360, 4
  %2365 = and i32 %2364, 32752
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = lshr i32 %2360, 7
  %2368 = and i32 %2367, 32752
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.f32 %2370, 3
  %2372 = fmul fast float %2371, 1.000000e+03
  %2373 = fmul fast float %367, %2372
  %2374 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2375 = fadd fast float %2374, %357
  %2376 = fmul fast float %368, %2372
  %2377 = call float @dx.op.unary.f32(i32 22, float %2376)  ; Frc(value)
  %2378 = fadd fast float %2377, %359
  %2379 = fmul fast float %2344, %2372
  %2380 = call float @dx.op.unary.f32(i32 22, float %2379)  ; Frc(value)
  %2381 = fmul fast float %2380, 0x401921FB60000000
  %2382 = fadd fast float %2381, %2363
  %2383 = call float @dx.op.unary.f32(i32 13, float %2382)  ; Sin(value)
  %2384 = call float @dx.op.unary.f32(i32 12, float %2382)  ; Cos(value)
  %2385 = fsub fast float -0.000000e+00, %2383
  %2386 = fadd fast float %2337, -5.000000e-01
  %2387 = fadd fast float %2338, -5.000000e-01
  %2388 = fmul fast float %2355, %2386
  %2389 = fmul fast float %2357, %2387
  %2390 = fadd fast float %2388, 5.000000e-01
  %2391 = fadd fast float %2389, 5.000000e-01
  %2392 = fmul fast float %2366, %2390
  %2393 = fmul fast float %2369, %2391
  %2394 = fmul fast float %2384, %2392
  %2395 = call float @dx.op.tertiary.f32(i32 46, float %2385, float %2393, float %2394)  ; FMad(a,b,c)
  %2396 = fmul fast float %2383, %2392
  %2397 = call float @dx.op.tertiary.f32(i32 46, float %2384, float %2393, float %2396)  ; FMad(a,b,c)
  %2398 = fadd fast float %2375, %2395
  %2399 = fadd fast float %2378, %2397
  %2400 = icmp ugt i32 %2349, 1
  %2401 = icmp ugt i32 %2347, 33554431
  %2402 = or i1 %2401, %2400
  br i1 %2402, label %2403, label %2428

; <label>:2403                                    ; preds = %2330
  %2404 = add i32 %62, 260
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = lshr i32 %2406, 16
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = fmul fast float %2371, %2408
  %2410 = call float @dx.op.unary.f32(i32 22, float %2409)  ; Frc(value)
  %2411 = mul nuw nsw i32 %2349, %2350
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2410, %2412
  %2414 = call float @dx.op.unary.f32(i32 27, float %2413)  ; Round_ni(value)
  %2415 = fptoui float %2414 to i32
  %2416 = urem i32 %2415, %2349
  %2417 = udiv i32 %2415, %2350
  %2418 = call float @dx.op.unary.f32(i32 22, float %2398)  ; Frc(value)
  %2419 = call float @dx.op.unary.f32(i32 22, float %2399)  ; Frc(value)
  %2420 = uitofp i32 %2416 to float
  %2421 = uitofp i32 %2417 to float
  %2422 = fadd fast float %2418, %2420
  %2423 = fadd fast float %2419, %2421
  %2424 = uitofp i32 %2349 to float
  %2425 = uitofp i32 %2350 to float
  %2426 = fdiv fast float %2422, %2424
  %2427 = fdiv fast float %2423, %2425
  br label %2428

; <label>:2428                                    ; preds = %2403, %2330
  %2429 = phi float [ %2426, %2403 ], [ %2398, %2330 ]
  %2430 = phi float [ %2427, %2403 ], [ %2399, %2330 ]
  %2431 = and i32 %2324, 16777216
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2542, label %2433

; <label>:2433                                    ; preds = %2428
  %2434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.CBufRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.CBufRet.f32 %2434, 2
  %2438 = fadd fast float %2435, %166
  %2439 = fadd fast float %2436, %167
  %2440 = fadd fast float %2437, %168
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  %2444 = icmp eq i32 %63, 65535
  br i1 %2444, label %2539, label %2445

; <label>:2445                                    ; preds = %2433
  %2446 = lshr i32 %63, 1
  %2447 = shl i32 %2446, 2
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %63, 1
  %2451 = icmp ne i32 %2450, 0
  %2452 = lshr i32 %2449, 16
  %2453 = and i32 %2449, 65535
  %2454 = select i1 %2451, i32 %2452, i32 %2453
  %2455 = icmp eq i32 %2454, 65535
  br i1 %2455, label %2535, label %2456

; <label>:2456                                    ; preds = %2445
  %2457 = mul nuw nsw i32 %2454, 40
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = add nuw nsw i32 %2457, 12
  %2463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.f32 %2463, 0
  %2465 = extractvalue %dx.types.ResRet.f32 %2463, 1
  %2466 = extractvalue %dx.types.ResRet.f32 %2463, 2
  %2467 = add nuw nsw i32 %2457, 24
  %2468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.f32 %2468, 0
  %2470 = extractvalue %dx.types.ResRet.f32 %2468, 1
  %2471 = extractvalue %dx.types.ResRet.f32 %2468, 2
  %2472 = add nuw nsw i32 %2457, 36
  %2473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.f32 %2473, 0
  %2475 = fsub fast float %2438, %2459
  %2476 = fsub fast float %2439, %2460
  %2477 = fsub fast float %2440, %2461
  %2478 = fmul fast float %2474, %2475
  %2479 = fmul fast float %2474, %2476
  %2480 = fmul fast float %2474, %2477
  %2481 = call float @dx.op.unary.f32(i32 27, float %2478)  ; Round_ni(value)
  %2482 = call float @dx.op.unary.f32(i32 27, float %2479)  ; Round_ni(value)
  %2483 = call float @dx.op.unary.f32(i32 27, float %2480)  ; Round_ni(value)
  %2484 = fadd fast float %2481, 5.000000e-01
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = fadd fast float %2483, 5.000000e-01
  %2487 = fmul fast float %2484, %2464
  %2488 = fmul fast float %2485, %2465
  %2489 = fmul fast float %2486, %2466
  %2490 = shl i32 %63, 2
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = add i32 %2492, 0
  %2494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2495 = call float @dx.op.unary.f32(i32 22, float %2487)  ; Frc(value)
  %2496 = call float @dx.op.unary.f32(i32 22, float %2488)  ; Frc(value)
  %2497 = call float @dx.op.unary.f32(i32 22, float %2489)  ; Frc(value)
  %2498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2494, %dx.types.Handle %57, float %2495, float %2496, float %2497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2499 = extractvalue %dx.types.ResRet.f32 %2498, 0
  %2500 = extractvalue %dx.types.ResRet.f32 %2498, 1
  %2501 = extractvalue %dx.types.ResRet.f32 %2498, 2
  %2502 = fmul fast float %2499, 1.023000e+03
  %2503 = fmul fast float %2500, 1.023000e+03
  %2504 = fmul fast float %2501, 1.023000e+03
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = call float @dx.op.unary.f32(i32 27, float %2505)  ; Round_ni(value)
  %2509 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2510 = call float @dx.op.unary.f32(i32 27, float %2507)  ; Round_ni(value)
  %2511 = fsub fast float %2478, %2481
  %2512 = fsub fast float %2479, %2482
  %2513 = fsub fast float %2480, %2483
  %2514 = fmul fast float %2511, 7.500000e-01
  %2515 = fmul fast float %2512, 7.500000e-01
  %2516 = fmul fast float %2513, 7.500000e-01
  %2517 = fadd fast float %2481, 1.250000e-01
  %2518 = fadd fast float %2517, %2514
  %2519 = fadd fast float %2518, %2508
  %2520 = fadd fast float %2482, 1.250000e-01
  %2521 = fadd fast float %2520, %2515
  %2522 = fadd fast float %2521, %2509
  %2523 = fadd fast float %2483, 1.250000e-01
  %2524 = fadd fast float %2523, %2516
  %2525 = fadd fast float %2524, %2510
  %2526 = fmul fast float %2519, %2469
  %2527 = fmul fast float %2522, %2470
  %2528 = fmul fast float %2525, %2471
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = add i32 %2530, 0
  %2532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2532, %dx.types.Handle %55, float %2526, float %2527, float %2528, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  br label %2535

; <label>:2535                                    ; preds = %2456, %2445
  %2536 = phi float [ %2534, %2456 ], [ -1.000000e+00, %2445 ]
  %2537 = fadd fast float %2536, %2443
  %2538 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  br label %2539

; <label>:2539                                    ; preds = %2535, %2433
  %2540 = phi float [ %2538, %2535 ], [ %2443, %2433 ]
  %2541 = fmul fast float %2540, %469
  br label %2542

; <label>:2542                                    ; preds = %2539, %2428
  %2543 = phi float [ %2541, %2539 ], [ %469, %2428 ]
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, 256
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2594, label %2548

; <label>:2548                                    ; preds = %2542
  %2549 = add i32 %62, 448
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = add i32 %2551, 0
  %2553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2553, %dx.types.Handle %108, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2555 = extractvalue %dx.types.ResRet.f32 %2554, 0
  %2556 = add i32 %62, 132
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = shl i32 %2558, 4
  %2560 = and i32 %2559, 32752
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = lshr i32 %2558, 7
  %2563 = and i32 %2562, 32752
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = fsub fast float 1.000000e+00, %2543
  %2566 = call float @dx.op.binary.f32(i32 35, float %2565, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2567 = bitcast float %2543 to i32
  %2568 = sitofp i32 %2567 to float
  %2569 = fadd fast float %2568, 0xC1CFBF8940000000
  %2570 = fmul fast float %2564, %2569
  %2571 = fadd fast float %2570, 0x41CFBF8940000000
  %2572 = fptosi float %2571 to i32
  %2573 = bitcast i32 %2572 to float
  %2574 = bitcast float %2566 to i32
  %2575 = sitofp i32 %2574 to float
  %2576 = fadd fast float %2575, 0xC1CFBF8940000000
  %2577 = fmul fast float %2576, %2564
  %2578 = fadd fast float %2577, 0x41CFBF8940000000
  %2579 = fptosi float %2578 to i32
  %2580 = bitcast i32 %2579 to float
  %2581 = fmul fast float %2573, %2561
  %2582 = fmul fast float %2580, %2561
  %2583 = fsub fast float %2566, %2581
  %2584 = fadd fast float %2582, %2566
  %2585 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2586 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2587 = fsub fast float %2555, %2585
  %2588 = fsub fast float %2586, %2585
  %2589 = bitcast float %2588 to i32
  %2590 = sub nsw i32 2129859010, %2589
  %2591 = bitcast i32 %2590 to float
  %2592 = fmul fast float %2591, %2587
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  br label %2594

; <label>:2594                                    ; preds = %2548, %2542
  %2595 = phi float [ %2593, %2548 ], [ %2543, %2542 ]
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = and i32 %2597, 128
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2616, label %2600

; <label>:2600                                    ; preds = %2594
  %2601 = add i32 %62, 432
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = add i32 %2603, 0
  %2605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2605, %dx.types.Handle %108, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2607 = extractvalue %dx.types.ResRet.f32 %2606, 0
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 524288
  %2611 = icmp ne i32 %2610, 0
  %2612 = fcmp fast ogt float %2607, 0x3FE0101020000000
  %2613 = select i1 %2612, float 1.000000e+00, float 0.000000e+00
  %2614 = select i1 %2611, float %2613, float %2607
  %2615 = fmul fast float %2614, %2595
  br label %2616

; <label>:2616                                    ; preds = %2600, %2594
  %2617 = phi float [ %2615, %2600 ], [ %2595, %2594 ]
  %2618 = fcmp fast ult float %2617, 0x3F70101020000000
  br i1 %2618, label %3357, label %2619

; <label>:2619                                    ; preds = %2616
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 16
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2822, label %2624

; <label>:2624                                    ; preds = %2619
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = add i32 %62, 384
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = add i32 %2629, 0
  %2631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2631, %dx.types.Handle %107, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2633 = extractvalue %dx.types.ResRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.ResRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.ResRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.ResRet.f32 %2632, 3
  %2637 = and i32 %2626, 255
  %2638 = uitofp i32 %2637 to float
  %2639 = lshr i32 %2626, 8
  %2640 = and i32 %2639, 255
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2636, %2638
  %2643 = fadd fast float %2642, %2641
  %2644 = fmul fast float %2643, 0x3F70101000000000
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 512
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2657, label %2649

; <label>:2649                                    ; preds = %2624
  %2650 = add i32 %62, 464
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = add i32 %2652, 0
  %2654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2654, %dx.types.Handle %108, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2656 = extractvalue %dx.types.ResRet.f32 %2655, 0
  br label %2657

; <label>:2657                                    ; preds = %2649, %2624
  %2658 = phi float [ %2656, %2649 ], [ 1.000000e+00, %2624 ]
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 33554432
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2769, label %2663

; <label>:2663                                    ; preds = %2657
  %2664 = add i32 %62, 256
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = and i32 %2666, 65535
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = lshr i32 %2666, 16
  %2670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2669)  ; LegacyF16ToF32(value)
  %2671 = add i32 %62, 260
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 65535
  %2675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2674)  ; LegacyF16ToF32(value)
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = lshr i32 %2677, 24
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = and i32 %2677, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = lshr i32 %2677, 8
  %2685 = and i32 %2684, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2677, 16
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = add i32 %62, 252
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = lshr i32 %2694, 24
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = and i32 %2694, 255
  %2699 = uitofp i32 %2698 to float
  %2700 = fmul fast float %2699, 0x3F70101020000000
  %2701 = lshr i32 %2694, 8
  %2702 = and i32 %2701, 255
  %2703 = uitofp i32 %2702 to float
  %2704 = fmul fast float %2703, 0x3F70101020000000
  %2705 = lshr i32 %2694, 16
  %2706 = and i32 %2705, 255
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2707, 0x3F70101020000000
  %2709 = bitcast float %2633 to i32
  %2710 = ashr i32 %2709, 1
  %2711 = sub nsw i32 1597463174, %2710
  %2712 = bitcast i32 %2711 to float
  %2713 = fmul fast float %2633, 5.000000e-01
  %2714 = fmul fast float %2712, %2712
  %2715 = fmul fast float %2714, %2713
  %2716 = fsub fast float 1.500000e+00, %2715
  %2717 = fmul fast float %2712, %2633
  %2718 = fmul fast float %2717, %2716
  %2719 = bitcast float %2634 to i32
  %2720 = ashr i32 %2719, 1
  %2721 = sub nsw i32 1597463174, %2720
  %2722 = bitcast i32 %2721 to float
  %2723 = fmul fast float %2634, 5.000000e-01
  %2724 = fmul fast float %2722, %2722
  %2725 = fmul fast float %2724, %2723
  %2726 = fsub fast float 1.500000e+00, %2725
  %2727 = fmul fast float %2722, %2634
  %2728 = fmul fast float %2727, %2726
  %2729 = bitcast float %2635 to i32
  %2730 = ashr i32 %2729, 1
  %2731 = sub nsw i32 1597463174, %2730
  %2732 = bitcast i32 %2731 to float
  %2733 = fmul fast float %2635, 5.000000e-01
  %2734 = fmul fast float %2732, %2732
  %2735 = fmul fast float %2734, %2733
  %2736 = fsub fast float 1.500000e+00, %2735
  %2737 = fmul fast float %2732, %2635
  %2738 = fmul fast float %2737, %2736
  %2739 = fsub fast float %2718, %2700
  %2740 = fsub fast float %2728, %2704
  %2741 = fsub fast float %2738, %2708
  %2742 = fmul fast float %2739, %2668
  %2743 = fmul fast float %2740, %2670
  %2744 = fmul fast float %2741, %2675
  %2745 = fadd fast float %2742, %2683
  %2746 = fadd fast float %2743, %2687
  %2747 = fadd fast float %2744, %2691
  %2748 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2749 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2750 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2751 = fmul fast float %2748, %2748
  %2752 = fmul fast float %2749, %2749
  %2753 = fmul fast float %2750, %2750
  %2754 = fsub fast float %2751, %2633
  %2755 = fsub fast float %2752, %2634
  %2756 = fsub fast float %2753, %2635
  %2757 = fmul fast float %2754, %2658
  %2758 = fmul fast float %2755, %2658
  %2759 = fmul fast float %2756, %2658
  %2760 = fadd fast float %2757, %2633
  %2761 = fadd fast float %2758, %2634
  %2762 = fadd fast float %2759, %2635
  %2763 = fadd fast float %2680, %2644
  %2764 = fsub fast float %2763, %2697
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2766 = fsub fast float %2765, %2644
  %2767 = fmul fast float %2766, %2658
  %2768 = fadd fast float %2767, %2644
  br label %2822

; <label>:2769                                    ; preds = %2657
  %2770 = and i32 %2660, 134217728
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %2806, label %2772

; <label>:2772                                    ; preds = %2769
  %2773 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2774 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2775 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2776 = fadd fast float %2773, -5.000000e-01
  %2777 = fadd fast float %2774, -5.000000e-01
  %2778 = fadd fast float %2775, -5.000000e-01
  %2779 = fmul fast float %2776, %2658
  %2780 = fmul fast float %2777, %2658
  %2781 = fmul fast float %2778, %2658
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fadd fast float %2780, 5.000000e-01
  %2784 = fadd fast float %2781, 5.000000e-01
  %2785 = call float @dx.op.unary.f32(i32 24, float %2633)  ; Sqrt(value)
  %2786 = call float @dx.op.unary.f32(i32 24, float %2634)  ; Sqrt(value)
  %2787 = call float @dx.op.unary.f32(i32 24, float %2635)  ; Sqrt(value)
  %2788 = fmul fast float %2782, 2.000000e+00
  %2789 = fsub fast float 1.000000e+00, %2788
  %2790 = fmul fast float %2789, %2785
  %2791 = fadd fast float %2790, %2788
  %2792 = fmul fast float %2791, %2785
  %2793 = fmul fast float %2783, 2.000000e+00
  %2794 = fsub fast float 1.000000e+00, %2793
  %2795 = fmul fast float %2794, %2786
  %2796 = fadd fast float %2795, %2793
  %2797 = fmul fast float %2796, %2786
  %2798 = fmul fast float %2784, 2.000000e+00
  %2799 = fsub fast float 1.000000e+00, %2798
  %2800 = fmul fast float %2799, %2787
  %2801 = fadd fast float %2800, %2798
  %2802 = fmul fast float %2801, %2787
  %2803 = fmul fast float %2792, %2792
  %2804 = fmul fast float %2797, %2797
  %2805 = fmul fast float %2802, %2802
  br label %2822

; <label>:2806                                    ; preds = %2769
  %2807 = fmul fast float %344, %344
  %2808 = fmul fast float %348, %348
  %2809 = fmul fast float %352, %352
  %2810 = fadd fast float %2807, -1.000000e+00
  %2811 = fadd fast float %2808, -1.000000e+00
  %2812 = fadd fast float %2809, -1.000000e+00
  %2813 = fmul fast float %2658, %2810
  %2814 = fmul fast float %2658, %2811
  %2815 = fmul fast float %2658, %2812
  %2816 = fadd fast float %2813, 1.000000e+00
  %2817 = fadd fast float %2814, 1.000000e+00
  %2818 = fadd fast float %2815, 1.000000e+00
  %2819 = fmul fast float %2816, %2633
  %2820 = fmul fast float %2817, %2634
  %2821 = fmul fast float %2818, %2635
  br label %2822

; <label>:2822                                    ; preds = %2806, %2772, %2663, %2619
  %2823 = phi float [ %2768, %2663 ], [ %2644, %2772 ], [ %2644, %2806 ], [ 0x3FA23C0BE0000000, %2619 ]
  %2824 = phi float [ %2760, %2663 ], [ %2803, %2772 ], [ %2819, %2806 ], [ 1.000000e+00, %2619 ]
  %2825 = phi float [ %2761, %2663 ], [ %2804, %2772 ], [ %2820, %2806 ], [ 1.000000e+00, %2619 ]
  %2826 = phi float [ %2762, %2663 ], [ %2805, %2772 ], [ %2821, %2806 ], [ 1.000000e+00, %2619 ]
  %2827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2828 = extractvalue %dx.types.CBufRet.i32 %2827, 1
  %2829 = and i32 %2828, 1
  %2830 = icmp ne i32 %2829, 0
  %2831 = add i32 %62, 356
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 32
  %2835 = icmp ne i32 %2834, 0
  %2836 = and i1 %2830, %2835
  %2837 = select i1 %2836, float 1.000000e+00, float %2824
  %2838 = select i1 %2836, float 0x3FD3333340000000, float %2825
  %2839 = select i1 %2836, float 0x3FD3333340000000, float %2826
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = and i32 %2841, 32
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2916, label %2844

; <label>:2844                                    ; preds = %2822
  %2845 = add i32 %62, 124
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = add i32 %62, 400
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = add i32 %2850, 0
  %2852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2851, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2853 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2852, %dx.types.Handle %107, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.ResRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.ResRet.f32 %2853, 2
  %2857 = extractvalue %dx.types.ResRet.f32 %2853, 3
  %2858 = and i32 %2847, 255
  %2859 = uitofp i32 %2858 to float
  %2860 = lshr i32 %2847, 8
  %2861 = and i32 %2860, 255
  %2862 = uitofp i32 %2861 to float
  %2863 = lshr i32 %2847, 16
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F70101000000000
  %2867 = fmul fast float %2854, %2859
  %2868 = fadd fast float %2867, %2862
  %2869 = fmul fast float %2868, 0x3F70101000000000
  %2870 = fadd fast float %2855, -5.000000e-01
  %2871 = fadd fast float %2857, -5.000000e-01
  %2872 = fmul fast float %2870, %2866
  %2873 = fmul fast float %2871, %2866
  %2874 = fadd fast float %2872, 5.000000e-01
  %2875 = fadd fast float %2873, 5.000000e-01
  %2876 = fmul fast float %2874, 2.000000e+00
  %2877 = fadd fast float %2876, -1.000000e+00
  %2878 = fmul fast float %2875, 2.000000e+00
  %2879 = fadd fast float %2878, -1.000000e+00
  %2880 = fadd fast float %2877, %2879
  %2881 = fmul fast float %2880, 5.000000e-01
  %2882 = fsub fast float %2877, %2879
  %2883 = fmul fast float %2882, 5.000000e-01
  %2884 = call float @dx.op.unary.f32(i32 6, float %2881)  ; FAbs(value)
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = call float @dx.op.unary.f32(i32 6, float %2883)  ; FAbs(value)
  %2887 = fsub fast float %2885, %2886
  %2888 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2883, float %2887, float %2881, float %2883, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %2889 = call float @dx.op.unary.f32(i32 25, float %2888)  ; Rsqrt(value)
  %2890 = fmul fast float %2881, %2889
  %2891 = fmul fast float %2883, %2889
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 67108864
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2912, label %2896

; <label>:2896                                    ; preds = %2844
  %2897 = add i32 %62, 312
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = and i32 %2899, 65535
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 65535
  %2905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2904)  ; LegacyF16ToF32(value)
  %2906 = lshr i32 %2899, 16
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = fsub fast float %2869, %2907
  %2909 = fmul fast float %2908, %2901
  %2910 = fadd fast float %2909, %2905
  %2911 = call float @dx.op.unary.f32(i32 7, float %2910)  ; Saturate(value)
  br label %2912

; <label>:2912                                    ; preds = %2896, %2844
  %2913 = phi float [ %2911, %2896 ], [ %2869, %2844 ]
  %2914 = call float @dx.op.dot2.f32(i32 54, float %2890, float %2891, float %2333, float %2334)  ; Dot2(ax,ay,bx,by)
  %2915 = call float @dx.op.dot2.f32(i32 54, float %2890, float %2891, float %2335, float %2336)  ; Dot2(ax,ay,bx,by)
  br label %2916

; <label>:2916                                    ; preds = %2912, %2822
  %2917 = phi float [ %2913, %2912 ], [ 0x3FD6666660000000, %2822 ]
  %2918 = phi float [ %2914, %2912 ], [ 0.000000e+00, %2822 ]
  %2919 = phi float [ %2915, %2912 ], [ 0.000000e+00, %2822 ]
  %2920 = phi float [ %2856, %2912 ], [ 1.000000e+00, %2822 ]
  %2921 = add i32 %62, 192
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = lshr i32 %2923, 22
  %2925 = shl nuw nsw i32 %2924, 5
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 64
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2964, label %2931

; <label>:2931                                    ; preds = %2916
  %2932 = add i32 %62, 416
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 131072
  %2940 = icmp eq i32 %2939, 0
  %2941 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2936, %dx.types.Handle %107, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = fmul fast float %2942, %332
  %2946 = fmul fast float %2943, %335
  %2947 = fmul fast float %2944, %338
  br i1 %2940, label %2954, label %2948

; <label>:2948                                    ; preds = %2931
  %2949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2950 = extractvalue %dx.types.CBufRet.f32 %2949, 0
  %2951 = fmul fast float %2950, %2945
  %2952 = fmul fast float %2950, %2946
  %2953 = fmul fast float %2950, %2947
  br label %2954

; <label>:2954                                    ; preds = %2948, %2931
  %2955 = phi float [ %2951, %2948 ], [ %2945, %2931 ]
  %2956 = phi float [ %2952, %2948 ], [ %2946, %2931 ]
  %2957 = phi float [ %2953, %2948 ], [ %2947, %2931 ]
  %2958 = fmul fast float %2955, %2926
  %2959 = select i1 %228, float %2958, float %2955
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2959, float %2956, float %2957, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = select i1 %228, float 0.000000e+00, float %2955
  %2962 = select i1 %228, float %2960, float %2956
  %2963 = select i1 %228, float 0.000000e+00, float %2957
  br label %2964

; <label>:2964                                    ; preds = %2954, %2916
  %2965 = phi float [ %2961, %2954 ], [ 0.000000e+00, %2916 ]
  %2966 = phi float [ %2962, %2954 ], [ 0.000000e+00, %2916 ]
  %2967 = phi float [ %2963, %2954 ], [ 0.000000e+00, %2916 ]
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 1024
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %3002, label %2972

; <label>:2972                                    ; preds = %2964
  %2973 = add i32 %62, 184
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = lshr i32 %2975, 8
  %2980 = and i32 %2979, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = lshr i32 %2975, 16
  %2984 = and i32 %2983, 255
  %2985 = uitofp i32 %2984 to float
  %2986 = fmul fast float %2985, 0x3F70101020000000
  %2987 = fmul fast float %2978, %2978
  %2988 = fmul fast float %2982, %2982
  %2989 = fmul fast float %2986, %2986
  %2990 = add i32 %62, 480
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = add i32 %2992, 0
  %2994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2994, %dx.types.Handle %108, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2996 = extractvalue %dx.types.ResRet.f32 %2995, 0
  %2997 = extractvalue %dx.types.ResRet.f32 %2995, 1
  %2998 = extractvalue %dx.types.ResRet.f32 %2995, 2
  %2999 = fmul fast float %2987, %2996
  %3000 = fmul fast float %2988, %2997
  %3001 = fmul fast float %2989, %2998
  br label %3002

; <label>:3002                                    ; preds = %2972, %2964
  %3003 = phi float [ %2999, %2972 ], [ 0.000000e+00, %2964 ]
  %3004 = phi float [ %3000, %2972 ], [ 0.000000e+00, %2964 ]
  %3005 = phi float [ %3001, %2972 ], [ 0.000000e+00, %2964 ]
  %3006 = fcmp fast ogt float %3003, 0.000000e+00
  %3007 = fcmp fast ogt float %3004, 0.000000e+00
  %3008 = fcmp fast ogt float %3005, 0.000000e+00
  %3009 = call float @dx.op.unary.f32(i32 23, float %3003)  ; Log(value)
  %3010 = call float @dx.op.unary.f32(i32 23, float %3004)  ; Log(value)
  %3011 = call float @dx.op.unary.f32(i32 23, float %3005)  ; Log(value)
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = lshr i32 %3013, 7
  %3015 = and i32 %3014, 32752
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = fmul fast float %3009, 0xBFE62E4300000000
  %3018 = fmul fast float %3017, %3016
  %3019 = fmul fast float %3010, 0xBFE62E4300000000
  %3020 = fmul fast float %3019, %3016
  %3021 = fmul fast float %3011, 0xBFE62E4300000000
  %3022 = fmul fast float %3021, %3016
  %3023 = select i1 %3006, float %3018, float 1.270000e+02
  %3024 = select i1 %3007, float %3020, float 1.270000e+02
  %3025 = select i1 %3008, float %3022, float 1.270000e+02
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 10240
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3074, label %3030

; <label>:3030                                    ; preds = %3002
  %3031 = add i32 %62, 496
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3035, %dx.types.Handle %108, float %2429, float %2430, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 3
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 1048576
  %3042 = icmp ne i32 %3041, 0
  %3043 = and i32 %3040, 8192
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3060, label %3045

; <label>:3045                                    ; preds = %3030
  %3046 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3047 = select i1 %3042, float %3046, float %3037
  %3048 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3049 = select i1 %3042, float %3048, float %3037
  %3050 = add i32 %62, 128
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = lshr i32 %3052, 16
  %3054 = and i32 %3053, 255
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3055, 0x3F80101020000000
  %3057 = fmul fast float %3056, %3049
  %3058 = fmul fast float %3056, %3037
  %3059 = fmul fast float %3056, %3047
  br label %3060

; <label>:3060                                    ; preds = %3045, %3030
  %3061 = phi float [ %3057, %3045 ], [ 0.000000e+00, %3030 ]
  %3062 = phi float [ %3058, %3045 ], [ 0.000000e+00, %3030 ]
  %3063 = phi float [ %3059, %3045 ], [ 0.000000e+00, %3030 ]
  %3064 = and i32 %3040, 2048
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3074, label %3066

; <label>:3066                                    ; preds = %3060
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = shl i32 %3068, 4
  %3070 = and i32 %3069, 32752
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = fmul fast float %3071, %3038
  %3073 = call float @dx.op.binary.f32(i32 35, float %3072, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3074

; <label>:3074                                    ; preds = %3066, %3060, %3002
  %3075 = phi float [ %3061, %3066 ], [ %3061, %3060 ], [ 0.000000e+00, %3002 ]
  %3076 = phi float [ %3062, %3066 ], [ %3062, %3060 ], [ 0.000000e+00, %3002 ]
  %3077 = phi float [ %3063, %3066 ], [ %3063, %3060 ], [ 0.000000e+00, %3002 ]
  %3078 = phi float [ %3073, %3066 ], [ 0x3F70101020000000, %3060 ], [ 0x3F70101020000000, %3002 ]
  %3079 = add i32 %62, 128
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = lshr i32 %3081, 8
  %3085 = and i32 %3084, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = call float @dx.op.dot3.f32(i32 55, float %2837, float %2838, float %2839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = fmul fast float %3086, %3087
  %3089 = fadd fast float %3088, %3083
  %3090 = fmul fast float %3089, 0x3F70101020000000
  %3091 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  br i1 %2321, label %3092, label %3127

; <label>:3092                                    ; preds = %3074
  %3093 = fmul fast float %3078, 2.000000e+00
  %3094 = fcmp fast olt float %3023, 1.270000e+02
  %3095 = fcmp fast olt float %3024, 1.270000e+02
  %3096 = fcmp fast olt float %3025, 1.270000e+02
  %3097 = fmul fast float %3023, 0xBFF7154760000000
  %3098 = fmul fast float %3097, %3093
  %3099 = fmul fast float %3024, 0xBFF7154760000000
  %3100 = fmul fast float %3099, %3093
  %3101 = fmul fast float %3025, 0xBFF7154760000000
  %3102 = fmul fast float %3101, %3093
  %3103 = call float @dx.op.unary.f32(i32 21, float %3098)  ; Exp(value)
  %3104 = call float @dx.op.unary.f32(i32 21, float %3100)  ; Exp(value)
  %3105 = call float @dx.op.unary.f32(i32 21, float %3102)  ; Exp(value)
  %3106 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  %3107 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = select i1 %3094, float %3109, float -1.000000e+00
  %3111 = fadd fast float %3107, -1.000000e+00
  %3112 = select i1 %3095, float %3111, float -1.000000e+00
  %3113 = fadd fast float %3108, -1.000000e+00
  %3114 = select i1 %3096, float %3113, float -1.000000e+00
  %3115 = fmul fast float %3110, %2617
  %3116 = fmul fast float %3112, %2617
  %3117 = fmul fast float %3114, %2617
  %3118 = fadd fast float %3115, 1.000000e+00
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fadd fast float %3117, 1.000000e+00
  %3121 = fmul fast float %3118, %2303
  %3122 = fmul fast float %3119, %2304
  %3123 = fmul fast float %3120, %2305
  %3124 = fmul fast float %3118, %2309
  %3125 = fmul fast float %3119, %2310
  %3126 = fmul fast float %3120, %2311
  br label %3127

; <label>:3127                                    ; preds = %3092, %3074
  %3128 = phi float [ %3121, %3092 ], [ %2303, %3074 ]
  %3129 = phi float [ %3122, %3092 ], [ %2304, %3074 ]
  %3130 = phi float [ %3123, %3092 ], [ %2305, %3074 ]
  %3131 = phi float [ %3124, %3092 ], [ %2309, %3074 ]
  %3132 = phi float [ %3125, %3092 ], [ %2310, %3074 ]
  %3133 = phi float [ %3126, %3092 ], [ %2311, %3074 ]
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 3
  %3137 = icmp eq i32 %3136, 3
  br i1 %3137, label %3216, label %3138

; <label>:3138                                    ; preds = %3127
  %3139 = and i32 %3135, 16
  %3140 = icmp ne i32 %3139, 0
  %3141 = select i1 %3140, float %2617, float 0.000000e+00
  %3142 = icmp eq i32 %3136, 0
  br i1 %3142, label %3143, label %3171

; <label>:3143                                    ; preds = %3138
  %3144 = and i32 %3135, 64
  %3145 = icmp ne i32 %3144, 0
  %3146 = select i1 %3145, float %2617, float 0.000000e+00
  %3147 = fsub fast float %2837, %3128
  %3148 = fsub fast float %2838, %3129
  %3149 = fsub fast float %2839, %3130
  %3150 = fmul fast float %3141, %3147
  %3151 = fmul fast float %3141, %3148
  %3152 = fmul fast float %3141, %3149
  %3153 = fadd fast float %3150, %3128
  %3154 = fadd fast float %3151, %3129
  %3155 = fadd fast float %3152, %3130
  %3156 = fsub fast float %2823, %2315
  %3157 = fmul fast float %3141, %3156
  %3158 = fadd fast float %3157, %2315
  %3159 = fsub fast float %2965, %3131
  %3160 = fsub fast float %2966, %3132
  %3161 = fsub fast float %2967, %3133
  %3162 = fmul fast float %3146, %3159
  %3163 = fmul fast float %3146, %3160
  %3164 = fmul fast float %3146, %3161
  %3165 = fadd fast float %3162, %3131
  %3166 = fadd fast float %3163, %3132
  %3167 = fadd fast float %3164, %3133
  %3168 = fsub fast float %3091, %2319
  %3169 = fmul fast float %3141, %3168
  %3170 = fadd fast float %3169, %2319
  br label %3216

; <label>:3171                                    ; preds = %3138
  %3172 = icmp eq i32 %3136, 1
  br i1 %3172, label %3173, label %3186

; <label>:3173                                    ; preds = %3171
  %3174 = fadd fast float %2837, -1.000000e+00
  %3175 = fadd fast float %2838, -1.000000e+00
  %3176 = fadd fast float %2839, -1.000000e+00
  %3177 = fmul fast float %3141, %3174
  %3178 = fmul fast float %3141, %3175
  %3179 = fmul fast float %3141, %3176
  %3180 = fadd fast float %3177, 1.000000e+00
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fadd fast float %3179, 1.000000e+00
  %3183 = fmul fast float %3180, %3128
  %3184 = fmul fast float %3181, %3129
  %3185 = fmul fast float %3182, %3130
  br label %3216

; <label>:3186                                    ; preds = %3171
  %3187 = icmp eq i32 %3136, 2
  br i1 %3187, label %3188, label %3216

; <label>:3188                                    ; preds = %3186
  %3189 = call float @dx.op.unary.f32(i32 24, float %2837)  ; Sqrt(value)
  %3190 = call float @dx.op.unary.f32(i32 24, float %2838)  ; Sqrt(value)
  %3191 = call float @dx.op.unary.f32(i32 24, float %2839)  ; Sqrt(value)
  %3192 = fadd fast float %3189, -5.000000e-01
  %3193 = fadd fast float %3190, -5.000000e-01
  %3194 = fadd fast float %3191, -5.000000e-01
  %3195 = fmul fast float %3192, %3141
  %3196 = fmul fast float %3193, %3141
  %3197 = fmul fast float %3194, %3141
  %3198 = fadd fast float %3195, 5.000000e-01
  %3199 = fadd fast float %3196, 5.000000e-01
  %3200 = fadd fast float %3197, 5.000000e-01
  %3201 = fmul fast float %3198, 2.000000e+00
  %3202 = fsub fast float 1.000000e+00, %3201
  %3203 = fmul fast float %3202, %3128
  %3204 = fadd fast float %3203, %3201
  %3205 = fmul fast float %3204, %3128
  %3206 = fmul fast float %3199, 2.000000e+00
  %3207 = fsub fast float 1.000000e+00, %3206
  %3208 = fmul fast float %3207, %3129
  %3209 = fadd fast float %3208, %3206
  %3210 = fmul fast float %3209, %3129
  %3211 = fmul fast float %3200, 2.000000e+00
  %3212 = fsub fast float 1.000000e+00, %3211
  %3213 = fmul fast float %3212, %3130
  %3214 = fadd fast float %3213, %3211
  %3215 = fmul fast float %3214, %3130
  br label %3216

; <label>:3216                                    ; preds = %3188, %3186, %3173, %3143, %3127
  %3217 = phi float [ %3128, %3127 ], [ %3205, %3188 ], [ %3128, %3186 ], [ %3183, %3173 ], [ %3153, %3143 ]
  %3218 = phi float [ %3129, %3127 ], [ %3210, %3188 ], [ %3129, %3186 ], [ %3184, %3173 ], [ %3154, %3143 ]
  %3219 = phi float [ %3130, %3127 ], [ %3215, %3188 ], [ %3130, %3186 ], [ %3185, %3173 ], [ %3155, %3143 ]
  %3220 = phi float [ %3131, %3127 ], [ %3131, %3188 ], [ %3131, %3186 ], [ %3131, %3173 ], [ %3165, %3143 ]
  %3221 = phi float [ %3132, %3127 ], [ %3132, %3188 ], [ %3132, %3186 ], [ %3132, %3173 ], [ %3166, %3143 ]
  %3222 = phi float [ %3133, %3127 ], [ %3133, %3188 ], [ %3133, %3186 ], [ %3133, %3173 ], [ %3167, %3143 ]
  %3223 = phi float [ %2315, %3127 ], [ %2315, %3188 ], [ %2315, %3186 ], [ %2315, %3173 ], [ %3158, %3143 ]
  %3224 = phi float [ %2319, %3127 ], [ %2319, %3188 ], [ %2319, %3186 ], [ %2319, %3173 ], [ %3170, %3143 ]
  %3225 = and i32 %3135, 12
  %3226 = icmp eq i32 %3225, 12
  br i1 %3226, label %3357, label %3227

; <label>:3227                                    ; preds = %3216
  %3228 = and i32 %3135, 2097184
  %3229 = icmp eq i32 %3228, 2097184
  %3230 = select i1 %3229, float %2617, float 0.000000e+00
  %3231 = and i32 %3135, 4194336
  %3232 = icmp eq i32 %3231, 4194336
  %3233 = select i1 %3232, float %2617, float 0.000000e+00
  %3234 = and i32 %3135, 8388640
  %3235 = icmp eq i32 %3234, 8388640
  %3236 = select i1 %3235, float %2617, float 0.000000e+00
  %3237 = and i32 %3135, 1024
  %3238 = icmp ne i32 %3237, 0
  %3239 = select i1 %3238, float %2617, float 0.000000e+00
  %3240 = and i32 %3135, 2048
  %3241 = icmp ne i32 %3240, 0
  %3242 = select i1 %3241, float %2617, float 0.000000e+00
  %3243 = and i32 %3135, 8192
  %3244 = icmp ne i32 %3243, 0
  %3245 = select i1 %3244, float %2617, float 0.000000e+00
  %3246 = icmp eq i32 %3225, 0
  br i1 %3246, label %3247, label %3281

; <label>:3247                                    ; preds = %3227
  %3248 = fsub fast float %2918, %2301
  %3249 = fsub fast float %2919, %2302
  %3250 = fmul fast float %3230, %3248
  %3251 = fmul fast float %3230, %3249
  %3252 = fadd fast float %3250, %2301
  %3253 = fadd fast float %3251, %2302
  %3254 = fsub fast float %2920, %2317
  %3255 = fmul fast float %3233, %3254
  %3256 = fadd fast float %3255, %2317
  %3257 = fsub fast float %2917, %2316
  %3258 = fmul fast float %3236, %3257
  %3259 = fadd fast float %3258, %2316
  %3260 = fsub fast float %3023, %2312
  %3261 = fsub fast float %3024, %2313
  %3262 = fsub fast float %3025, %2314
  %3263 = fmul fast float %3239, %3260
  %3264 = fmul fast float %3239, %3261
  %3265 = fmul fast float %3239, %3262
  %3266 = fadd fast float %3263, %2312
  %3267 = fadd fast float %3264, %2313
  %3268 = fadd fast float %3265, %2314
  %3269 = fsub fast float %3078, %2318
  %3270 = fmul fast float %3242, %3269
  %3271 = fadd fast float %3270, %2318
  %3272 = fsub fast float %3075, %2306
  %3273 = fsub fast float %3076, %2307
  %3274 = fsub fast float %3077, %2308
  %3275 = fmul fast float %3245, %3272
  %3276 = fmul fast float %3245, %3273
  %3277 = fmul fast float %3245, %3274
  %3278 = fadd fast float %3275, %2306
  %3279 = fadd fast float %3276, %2307
  %3280 = fadd fast float %3277, %2308
  br label %3357

; <label>:3281                                    ; preds = %3227
  %3282 = icmp eq i32 %3225, 4
  br i1 %3282, label %3283, label %3329

; <label>:3283                                    ; preds = %3281
  %3284 = fmul fast float %3230, %2918
  %3285 = fmul fast float %3230, %2919
  %3286 = fadd fast float %3284, %2301
  %3287 = fadd fast float %3285, %2302
  %3288 = call float @dx.op.binary.f32(i32 36, float %2317, float %2920)  ; FMin(a,b)
  %3289 = fsub fast float %3288, %2317
  %3290 = fmul fast float %3289, %3233
  %3291 = fadd fast float %3290, %2317
  %3292 = fadd fast float %2917, %2316
  %3293 = fmul fast float %3292, 0x3FF337FAE0000000
  %3294 = fmul fast float %2316, %2316
  %3295 = fmul fast float %2917, %2917
  %3296 = fadd fast float %3295, %3294
  %3297 = fmul fast float %3296, 0x3FE5152B00000000
  %3298 = fmul fast float %2316, 0xBFCC1F85E0000000
  %3299 = fmul fast float %3298, %2917
  %3300 = fadd fast float %3299, 0xBFE1363700000000
  %3301 = fadd fast float %3300, %3293
  %3302 = fsub fast float %3301, %3297
  %3303 = fmul fast float %3292, 0x3FBA6F0D00000000
  %3304 = fmul fast float %3296, 0x3FD0432880000000
  %3305 = fmul fast float %2316, 0xBFEF110800000000
  %3306 = fmul fast float %3305, %2917
  %3307 = fadd fast float %3306, 1.000000e+00
  %3308 = fsub fast float %3307, %3303
  %3309 = fadd fast float %3308, %3304
  %3310 = fdiv fast float %3302, %3309
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  %3312 = fsub fast float %3311, %2316
  %3313 = fmul fast float %3312, %3236
  %3314 = fadd fast float %3313, %2316
  %3315 = fmul fast float %3239, %3023
  %3316 = fmul fast float %3239, %3024
  %3317 = fmul fast float %3239, %3025
  %3318 = fadd fast float %3315, %2312
  %3319 = fadd fast float %3316, %2313
  %3320 = fadd fast float %3317, %2314
  %3321 = fmul fast float %3242, %3078
  %3322 = fadd fast float %3321, %2318
  %3323 = fmul fast float %3245, %3075
  %3324 = fmul fast float %3245, %3076
  %3325 = fmul fast float %3245, %3077
  %3326 = fadd fast float %3323, %2306
  %3327 = fadd fast float %3324, %2307
  %3328 = fadd fast float %3325, %2308
  br label %3357

; <label>:3329                                    ; preds = %3281
  %3330 = icmp eq i32 %3225, 8
  br i1 %3330, label %3331, label %3357

; <label>:3331                                    ; preds = %3329
  %3332 = fmul fast float %3230, %2918
  %3333 = fmul fast float %3230, %2919
  %3334 = fadd fast float %3332, %2301
  %3335 = fadd fast float %3333, %2302
  %3336 = call float @dx.op.binary.f32(i32 36, float %2317, float %2920)  ; FMin(a,b)
  %3337 = fsub fast float %3336, %2317
  %3338 = fmul fast float %3337, %3233
  %3339 = fadd fast float %3338, %2317
  %3340 = fsub fast float %2917, %2316
  %3341 = fmul fast float %3236, %3340
  %3342 = fadd fast float %3341, %2316
  %3343 = fmul fast float %3239, %3023
  %3344 = fmul fast float %3239, %3024
  %3345 = fmul fast float %3239, %3025
  %3346 = fadd fast float %3343, %2312
  %3347 = fadd fast float %3344, %2313
  %3348 = fadd fast float %3345, %2314
  %3349 = fmul fast float %3242, %3078
  %3350 = fadd fast float %3349, %2318
  %3351 = fmul fast float %3245, %3075
  %3352 = fmul fast float %3245, %3076
  %3353 = fmul fast float %3245, %3077
  %3354 = fadd fast float %3351, %2306
  %3355 = fadd fast float %3352, %2307
  %3356 = fadd fast float %3353, %2308
  br label %3357

; <label>:3357                                    ; preds = %3331, %3329, %3283, %3247, %3216, %2616, %2320, %2300
  %3358 = phi float [ %2301, %3216 ], [ %2301, %2616 ], [ %2301, %2300 ], [ %3334, %3331 ], [ %2301, %3329 ], [ %3286, %3283 ], [ %3252, %3247 ], [ %2301, %2320 ]
  %3359 = phi float [ %2302, %3216 ], [ %2302, %2616 ], [ %2302, %2300 ], [ %3335, %3331 ], [ %2302, %3329 ], [ %3287, %3283 ], [ %3253, %3247 ], [ %2302, %2320 ]
  %3360 = phi float [ %3217, %3216 ], [ %2303, %2616 ], [ %2303, %2300 ], [ %3217, %3331 ], [ %3217, %3329 ], [ %3217, %3283 ], [ %3217, %3247 ], [ %2303, %2320 ]
  %3361 = phi float [ %3218, %3216 ], [ %2304, %2616 ], [ %2304, %2300 ], [ %3218, %3331 ], [ %3218, %3329 ], [ %3218, %3283 ], [ %3218, %3247 ], [ %2304, %2320 ]
  %3362 = phi float [ %3219, %3216 ], [ %2305, %2616 ], [ %2305, %2300 ], [ %3219, %3331 ], [ %3219, %3329 ], [ %3219, %3283 ], [ %3219, %3247 ], [ %2305, %2320 ]
  %3363 = phi float [ %2306, %3216 ], [ %2306, %2616 ], [ %2306, %2300 ], [ %3354, %3331 ], [ %2306, %3329 ], [ %3326, %3283 ], [ %3278, %3247 ], [ %2306, %2320 ]
  %3364 = phi float [ %2307, %3216 ], [ %2307, %2616 ], [ %2307, %2300 ], [ %3355, %3331 ], [ %2307, %3329 ], [ %3327, %3283 ], [ %3279, %3247 ], [ %2307, %2320 ]
  %3365 = phi float [ %2308, %3216 ], [ %2308, %2616 ], [ %2308, %2300 ], [ %3356, %3331 ], [ %2308, %3329 ], [ %3328, %3283 ], [ %3280, %3247 ], [ %2308, %2320 ]
  %3366 = phi float [ %3220, %3216 ], [ %2309, %2616 ], [ %2309, %2300 ], [ %3220, %3331 ], [ %3220, %3329 ], [ %3220, %3283 ], [ %3220, %3247 ], [ %2309, %2320 ]
  %3367 = phi float [ %3221, %3216 ], [ %2310, %2616 ], [ %2310, %2300 ], [ %3221, %3331 ], [ %3221, %3329 ], [ %3221, %3283 ], [ %3221, %3247 ], [ %2310, %2320 ]
  %3368 = phi float [ %3222, %3216 ], [ %2311, %2616 ], [ %2311, %2300 ], [ %3222, %3331 ], [ %3222, %3329 ], [ %3222, %3283 ], [ %3222, %3247 ], [ %2311, %2320 ]
  %3369 = phi float [ %2312, %3216 ], [ %2312, %2616 ], [ %2312, %2300 ], [ %3346, %3331 ], [ %2312, %3329 ], [ %3318, %3283 ], [ %3266, %3247 ], [ %2312, %2320 ]
  %3370 = phi float [ %2313, %3216 ], [ %2313, %2616 ], [ %2313, %2300 ], [ %3347, %3331 ], [ %2313, %3329 ], [ %3319, %3283 ], [ %3267, %3247 ], [ %2313, %2320 ]
  %3371 = phi float [ %2314, %3216 ], [ %2314, %2616 ], [ %2314, %2300 ], [ %3348, %3331 ], [ %2314, %3329 ], [ %3320, %3283 ], [ %3268, %3247 ], [ %2314, %2320 ]
  %3372 = phi float [ %3223, %3216 ], [ %2315, %2616 ], [ %2315, %2300 ], [ %3223, %3331 ], [ %3223, %3329 ], [ %3223, %3283 ], [ %3223, %3247 ], [ %2315, %2320 ]
  %3373 = phi float [ %2316, %3216 ], [ %2316, %2616 ], [ %2316, %2300 ], [ %3342, %3331 ], [ %2316, %3329 ], [ %3314, %3283 ], [ %3259, %3247 ], [ %2316, %2320 ]
  %3374 = phi float [ %2317, %3216 ], [ %2317, %2616 ], [ %2317, %2300 ], [ %3339, %3331 ], [ %2317, %3329 ], [ %3291, %3283 ], [ %3256, %3247 ], [ %2317, %2320 ]
  %3375 = phi float [ %2318, %3216 ], [ %2318, %2616 ], [ %2318, %2300 ], [ %3350, %3331 ], [ %2318, %3329 ], [ %3322, %3283 ], [ %3271, %3247 ], [ %2318, %2320 ]
  %3376 = phi float [ %3224, %3216 ], [ %2319, %2616 ], [ %2319, %2300 ], [ %3224, %3331 ], [ %3224, %3329 ], [ %3224, %3283 ], [ %3224, %3247 ], [ %2319, %2320 ]
  br i1 %419, label %4414, label %3377

; <label>:3377                                    ; preds = %3357
  %3378 = icmp ult i32 %473, 4
  %3379 = add i32 %62, 72
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = add i32 %62, 76
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = or i32 %3384, %3381
  %3386 = icmp eq i32 %3385, 0
  br i1 %3386, label %4414, label %3387

; <label>:3387                                    ; preds = %3377
  %3388 = and i32 %3381, 262144
  %3389 = icmp ne i32 %3388, 0
  %3390 = select i1 %3389, float %65, float 1.000000e+00
  %3391 = select i1 %3389, float %66, float 0.000000e+00
  %3392 = select i1 %3389, float %67, float 0.000000e+00
  %3393 = select i1 %3389, float %68, float 1.000000e+00
  %3394 = select i1 %3389, float %69, float %90
  %3395 = select i1 %3389, float %70, float %91
  %3396 = add i32 %62, 332
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = lshr i32 %3398, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = fmul fast float %3400, 0x3F50624DE0000000
  %3402 = add i32 %62, 136
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = lshr i32 %3404, 16
  %3406 = and i32 %3405, 255
  %3407 = lshr i32 %3404, 24
  %3408 = add i32 %62, 340
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 65535
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = lshr i32 %3410, 16
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = add i32 %62, 80
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = lshr i32 %3417, 22
  %3419 = shl nuw nsw i32 %3418, 5
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = shl i32 %3417, 4
  %3422 = and i32 %3421, 32752
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = lshr i32 %3417, 7
  %3425 = and i32 %3424, 32752
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3428 = extractvalue %dx.types.CBufRet.f32 %3427, 3
  %3429 = fmul fast float %3428, 1.000000e+03
  %3430 = fmul fast float %409, %3429
  %3431 = call float @dx.op.unary.f32(i32 22, float %3430)  ; Frc(value)
  %3432 = fadd fast float %3431, %399
  %3433 = fmul fast float %410, %3429
  %3434 = call float @dx.op.unary.f32(i32 22, float %3433)  ; Frc(value)
  %3435 = fadd fast float %3434, %401
  %3436 = fmul fast float %3401, %3429
  %3437 = call float @dx.op.unary.f32(i32 22, float %3436)  ; Frc(value)
  %3438 = fmul fast float %3437, 0x401921FB60000000
  %3439 = fadd fast float %3438, %3420
  %3440 = call float @dx.op.unary.f32(i32 13, float %3439)  ; Sin(value)
  %3441 = call float @dx.op.unary.f32(i32 12, float %3439)  ; Cos(value)
  %3442 = fsub fast float -0.000000e+00, %3440
  %3443 = fadd fast float %3394, -5.000000e-01
  %3444 = fadd fast float %3395, -5.000000e-01
  %3445 = fmul fast float %3412, %3443
  %3446 = fmul fast float %3414, %3444
  %3447 = fadd fast float %3445, 5.000000e-01
  %3448 = fadd fast float %3446, 5.000000e-01
  %3449 = fmul fast float %3423, %3447
  %3450 = fmul fast float %3426, %3448
  %3451 = fmul fast float %3441, %3449
  %3452 = call float @dx.op.tertiary.f32(i32 46, float %3442, float %3450, float %3451)  ; FMad(a,b,c)
  %3453 = fmul fast float %3440, %3449
  %3454 = call float @dx.op.tertiary.f32(i32 46, float %3441, float %3450, float %3453)  ; FMad(a,b,c)
  %3455 = fadd fast float %3432, %3452
  %3456 = fadd fast float %3435, %3454
  %3457 = icmp ugt i32 %3406, 1
  %3458 = icmp ugt i32 %3404, 33554431
  %3459 = or i1 %3458, %3457
  br i1 %3459, label %3460, label %3485

; <label>:3460                                    ; preds = %3387
  %3461 = add i32 %62, 276
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = lshr i32 %3463, 16
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = fmul fast float %3428, %3465
  %3467 = call float @dx.op.unary.f32(i32 22, float %3466)  ; Frc(value)
  %3468 = mul nuw nsw i32 %3406, %3407
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3467, %3469
  %3471 = call float @dx.op.unary.f32(i32 27, float %3470)  ; Round_ni(value)
  %3472 = fptoui float %3471 to i32
  %3473 = urem i32 %3472, %3406
  %3474 = udiv i32 %3472, %3407
  %3475 = call float @dx.op.unary.f32(i32 22, float %3455)  ; Frc(value)
  %3476 = call float @dx.op.unary.f32(i32 22, float %3456)  ; Frc(value)
  %3477 = uitofp i32 %3473 to float
  %3478 = uitofp i32 %3474 to float
  %3479 = fadd fast float %3475, %3477
  %3480 = fadd fast float %3476, %3478
  %3481 = uitofp i32 %3406 to float
  %3482 = uitofp i32 %3407 to float
  %3483 = fdiv fast float %3479, %3481
  %3484 = fdiv fast float %3480, %3482
  br label %3485

; <label>:3485                                    ; preds = %3460, %3387
  %3486 = phi float [ %3483, %3460 ], [ %3455, %3387 ]
  %3487 = phi float [ %3484, %3460 ], [ %3456, %3387 ]
  %3488 = and i32 %3381, 16777216
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3599, label %3490

; <label>:3490                                    ; preds = %3485
  %3491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3492 = extractvalue %dx.types.CBufRet.f32 %3491, 0
  %3493 = extractvalue %dx.types.CBufRet.f32 %3491, 1
  %3494 = extractvalue %dx.types.CBufRet.f32 %3491, 2
  %3495 = fadd fast float %3492, %166
  %3496 = fadd fast float %3493, %167
  %3497 = fadd fast float %3494, %168
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3500 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3501 = icmp eq i32 %63, 65535
  br i1 %3501, label %3596, label %3502

; <label>:3502                                    ; preds = %3490
  %3503 = lshr i32 %63, 1
  %3504 = shl i32 %3503, 2
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %63, 1
  %3508 = icmp ne i32 %3507, 0
  %3509 = lshr i32 %3506, 16
  %3510 = and i32 %3506, 65535
  %3511 = select i1 %3508, i32 %3509, i32 %3510
  %3512 = icmp eq i32 %3511, 65535
  br i1 %3512, label %3592, label %3513

; <label>:3513                                    ; preds = %3502
  %3514 = mul nuw nsw i32 %3511, 40
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = add nuw nsw i32 %3514, 12
  %3520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3519, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = add nuw nsw i32 %3514, 24
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = add nuw nsw i32 %3514, 36
  %3530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = fsub fast float %3495, %3516
  %3533 = fsub fast float %3496, %3517
  %3534 = fsub fast float %3497, %3518
  %3535 = fmul fast float %3531, %3532
  %3536 = fmul fast float %3531, %3533
  %3537 = fmul fast float %3531, %3534
  %3538 = call float @dx.op.unary.f32(i32 27, float %3535)  ; Round_ni(value)
  %3539 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3540 = call float @dx.op.unary.f32(i32 27, float %3537)  ; Round_ni(value)
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = fadd fast float %3540, 5.000000e-01
  %3544 = fmul fast float %3541, %3521
  %3545 = fmul fast float %3542, %3522
  %3546 = fmul fast float %3543, %3523
  %3547 = shl i32 %63, 2
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = add i32 %3549, 0
  %3551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3552 = call float @dx.op.unary.f32(i32 22, float %3544)  ; Frc(value)
  %3553 = call float @dx.op.unary.f32(i32 22, float %3545)  ; Frc(value)
  %3554 = call float @dx.op.unary.f32(i32 22, float %3546)  ; Frc(value)
  %3555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3551, %dx.types.Handle %57, float %3552, float %3553, float %3554, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3559 = fmul fast float %3556, 1.023000e+03
  %3560 = fmul fast float %3557, 1.023000e+03
  %3561 = fmul fast float %3558, 1.023000e+03
  %3562 = fadd fast float %3559, 5.000000e-01
  %3563 = fadd fast float %3560, 5.000000e-01
  %3564 = fadd fast float %3561, 5.000000e-01
  %3565 = call float @dx.op.unary.f32(i32 27, float %3562)  ; Round_ni(value)
  %3566 = call float @dx.op.unary.f32(i32 27, float %3563)  ; Round_ni(value)
  %3567 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3568 = fsub fast float %3535, %3538
  %3569 = fsub fast float %3536, %3539
  %3570 = fsub fast float %3537, %3540
  %3571 = fmul fast float %3568, 7.500000e-01
  %3572 = fmul fast float %3569, 7.500000e-01
  %3573 = fmul fast float %3570, 7.500000e-01
  %3574 = fadd fast float %3538, 1.250000e-01
  %3575 = fadd fast float %3574, %3571
  %3576 = fadd fast float %3575, %3565
  %3577 = fadd fast float %3539, 1.250000e-01
  %3578 = fadd fast float %3577, %3572
  %3579 = fadd fast float %3578, %3566
  %3580 = fadd fast float %3540, 1.250000e-01
  %3581 = fadd fast float %3580, %3573
  %3582 = fadd fast float %3581, %3567
  %3583 = fmul fast float %3576, %3526
  %3584 = fmul fast float %3579, %3527
  %3585 = fmul fast float %3582, %3528
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = add i32 %3587, 0
  %3589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3589, %dx.types.Handle %55, float %3583, float %3584, float %3585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  br label %3592

; <label>:3592                                    ; preds = %3513, %3502
  %3593 = phi float [ %3591, %3513 ], [ -1.000000e+00, %3502 ]
  %3594 = fadd fast float %3593, %3500
  %3595 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  br label %3596

; <label>:3596                                    ; preds = %3592, %3490
  %3597 = phi float [ %3595, %3592 ], [ %3500, %3490 ]
  %3598 = fmul fast float %3597, %468
  br label %3599

; <label>:3599                                    ; preds = %3596, %3485
  %3600 = phi float [ %3598, %3596 ], [ %468, %3485 ]
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = and i32 %3602, 256
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3651, label %3605

; <label>:3605                                    ; preds = %3599
  %3606 = add i32 %62, 452
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = add i32 %3608, 0
  %3610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3609, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3610, %dx.types.Handle %108, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = add i32 %62, 148
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = shl i32 %3615, 4
  %3617 = and i32 %3616, 32752
  %3618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3617)  ; LegacyF16ToF32(value)
  %3619 = lshr i32 %3615, 7
  %3620 = and i32 %3619, 32752
  %3621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3620)  ; LegacyF16ToF32(value)
  %3622 = fsub fast float 1.000000e+00, %3600
  %3623 = call float @dx.op.binary.f32(i32 35, float %3622, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3624 = bitcast float %3600 to i32
  %3625 = sitofp i32 %3624 to float
  %3626 = fadd fast float %3625, 0xC1CFBF8940000000
  %3627 = fmul fast float %3621, %3626
  %3628 = fadd fast float %3627, 0x41CFBF8940000000
  %3629 = fptosi float %3628 to i32
  %3630 = bitcast i32 %3629 to float
  %3631 = bitcast float %3623 to i32
  %3632 = sitofp i32 %3631 to float
  %3633 = fadd fast float %3632, 0xC1CFBF8940000000
  %3634 = fmul fast float %3633, %3621
  %3635 = fadd fast float %3634, 0x41CFBF8940000000
  %3636 = fptosi float %3635 to i32
  %3637 = bitcast i32 %3636 to float
  %3638 = fmul fast float %3630, %3618
  %3639 = fmul fast float %3637, %3618
  %3640 = fsub fast float %3623, %3638
  %3641 = fadd fast float %3639, %3623
  %3642 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3643 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3644 = fsub fast float %3612, %3642
  %3645 = fsub fast float %3643, %3642
  %3646 = bitcast float %3645 to i32
  %3647 = sub nsw i32 2129859010, %3646
  %3648 = bitcast i32 %3647 to float
  %3649 = fmul fast float %3648, %3644
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  br label %3651

; <label>:3651                                    ; preds = %3605, %3599
  %3652 = phi float [ %3650, %3605 ], [ %3600, %3599 ]
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = and i32 %3654, 128
  %3656 = icmp eq i32 %3655, 0
  br i1 %3656, label %3673, label %3657

; <label>:3657                                    ; preds = %3651
  %3658 = add i32 %62, 436
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = add i32 %3660, 0
  %3662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3662, %dx.types.Handle %108, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 524288
  %3668 = icmp ne i32 %3667, 0
  %3669 = fcmp fast ogt float %3664, 0x3FE0101020000000
  %3670 = select i1 %3669, float 1.000000e+00, float 0.000000e+00
  %3671 = select i1 %3668, float %3670, float %3664
  %3672 = fmul fast float %3671, %3652
  br label %3673

; <label>:3673                                    ; preds = %3657, %3651
  %3674 = phi float [ %3672, %3657 ], [ %3652, %3651 ]
  %3675 = fcmp fast ult float %3674, 0x3F70101020000000
  br i1 %3675, label %4414, label %3676

; <label>:3676                                    ; preds = %3673
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = and i32 %3678, 16
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3879, label %3681

; <label>:3681                                    ; preds = %3676
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = add i32 %62, 388
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = add i32 %3686, 0
  %3688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3687, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3688, %dx.types.Handle %107, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3690 = extractvalue %dx.types.ResRet.f32 %3689, 0
  %3691 = extractvalue %dx.types.ResRet.f32 %3689, 1
  %3692 = extractvalue %dx.types.ResRet.f32 %3689, 2
  %3693 = extractvalue %dx.types.ResRet.f32 %3689, 3
  %3694 = and i32 %3683, 255
  %3695 = uitofp i32 %3694 to float
  %3696 = lshr i32 %3683, 8
  %3697 = and i32 %3696, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = fmul fast float %3693, %3695
  %3700 = fadd fast float %3699, %3698
  %3701 = fmul fast float %3700, 0x3F70101000000000
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 512
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3714, label %3706

; <label>:3706                                    ; preds = %3681
  %3707 = add i32 %62, 468
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = add i32 %3709, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3711, %dx.types.Handle %108, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  br label %3714

; <label>:3714                                    ; preds = %3706, %3681
  %3715 = phi float [ %3713, %3706 ], [ 1.000000e+00, %3681 ]
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 33554432
  %3719 = icmp eq i32 %3718, 0
  br i1 %3719, label %3826, label %3720

; <label>:3720                                    ; preds = %3714
  %3721 = add i32 %62, 272
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 65535
  %3725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3724)  ; LegacyF16ToF32(value)
  %3726 = lshr i32 %3723, 16
  %3727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3726)  ; LegacyF16ToF32(value)
  %3728 = add i32 %62, 276
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 65535
  %3732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3731)  ; LegacyF16ToF32(value)
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = lshr i32 %3734, 24
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3736, 0x3F70101020000000
  %3738 = and i32 %3734, 255
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = lshr i32 %3734, 8
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = lshr i32 %3734, 16
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = add i32 %62, 268
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = lshr i32 %3751, 24
  %3753 = uitofp i32 %3752 to float
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = and i32 %3751, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F70101020000000
  %3758 = lshr i32 %3751, 8
  %3759 = and i32 %3758, 255
  %3760 = uitofp i32 %3759 to float
  %3761 = fmul fast float %3760, 0x3F70101020000000
  %3762 = lshr i32 %3751, 16
  %3763 = and i32 %3762, 255
  %3764 = uitofp i32 %3763 to float
  %3765 = fmul fast float %3764, 0x3F70101020000000
  %3766 = bitcast float %3690 to i32
  %3767 = ashr i32 %3766, 1
  %3768 = sub nsw i32 1597463174, %3767
  %3769 = bitcast i32 %3768 to float
  %3770 = fmul fast float %3690, 5.000000e-01
  %3771 = fmul fast float %3769, %3769
  %3772 = fmul fast float %3771, %3770
  %3773 = fsub fast float 1.500000e+00, %3772
  %3774 = fmul fast float %3769, %3690
  %3775 = fmul fast float %3774, %3773
  %3776 = bitcast float %3691 to i32
  %3777 = ashr i32 %3776, 1
  %3778 = sub nsw i32 1597463174, %3777
  %3779 = bitcast i32 %3778 to float
  %3780 = fmul fast float %3691, 5.000000e-01
  %3781 = fmul fast float %3779, %3779
  %3782 = fmul fast float %3781, %3780
  %3783 = fsub fast float 1.500000e+00, %3782
  %3784 = fmul fast float %3779, %3691
  %3785 = fmul fast float %3784, %3783
  %3786 = bitcast float %3692 to i32
  %3787 = ashr i32 %3786, 1
  %3788 = sub nsw i32 1597463174, %3787
  %3789 = bitcast i32 %3788 to float
  %3790 = fmul fast float %3692, 5.000000e-01
  %3791 = fmul fast float %3789, %3789
  %3792 = fmul fast float %3791, %3790
  %3793 = fsub fast float 1.500000e+00, %3792
  %3794 = fmul fast float %3789, %3692
  %3795 = fmul fast float %3794, %3793
  %3796 = fsub fast float %3775, %3757
  %3797 = fsub fast float %3785, %3761
  %3798 = fsub fast float %3795, %3765
  %3799 = fmul fast float %3796, %3725
  %3800 = fmul fast float %3797, %3727
  %3801 = fmul fast float %3798, %3732
  %3802 = fadd fast float %3799, %3740
  %3803 = fadd fast float %3800, %3744
  %3804 = fadd fast float %3801, %3748
  %3805 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3806 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3807 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3808 = fmul fast float %3805, %3805
  %3809 = fmul fast float %3806, %3806
  %3810 = fmul fast float %3807, %3807
  %3811 = fsub fast float %3808, %3690
  %3812 = fsub fast float %3809, %3691
  %3813 = fsub fast float %3810, %3692
  %3814 = fmul fast float %3811, %3715
  %3815 = fmul fast float %3812, %3715
  %3816 = fmul fast float %3813, %3715
  %3817 = fadd fast float %3814, %3690
  %3818 = fadd fast float %3815, %3691
  %3819 = fadd fast float %3816, %3692
  %3820 = fadd fast float %3737, %3701
  %3821 = fsub fast float %3820, %3754
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3823 = fsub fast float %3822, %3701
  %3824 = fmul fast float %3823, %3715
  %3825 = fadd fast float %3824, %3701
  br label %3879

; <label>:3826                                    ; preds = %3714
  %3827 = and i32 %3717, 134217728
  %3828 = icmp eq i32 %3827, 0
  br i1 %3828, label %3863, label %3829

; <label>:3829                                    ; preds = %3826
  %3830 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3831 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3832 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %3833 = fadd fast float %3830, -5.000000e-01
  %3834 = fadd fast float %3831, -5.000000e-01
  %3835 = fadd fast float %3832, -5.000000e-01
  %3836 = fmul fast float %3833, %3715
  %3837 = fmul fast float %3834, %3715
  %3838 = fmul fast float %3835, %3715
  %3839 = fadd fast float %3836, 5.000000e-01
  %3840 = fadd fast float %3837, 5.000000e-01
  %3841 = fadd fast float %3838, 5.000000e-01
  %3842 = call float @dx.op.unary.f32(i32 24, float %3690)  ; Sqrt(value)
  %3843 = call float @dx.op.unary.f32(i32 24, float %3691)  ; Sqrt(value)
  %3844 = call float @dx.op.unary.f32(i32 24, float %3692)  ; Sqrt(value)
  %3845 = fmul fast float %3839, 2.000000e+00
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = fmul fast float %3846, %3842
  %3848 = fadd fast float %3847, %3845
  %3849 = fmul fast float %3848, %3842
  %3850 = fmul fast float %3840, 2.000000e+00
  %3851 = fsub fast float 1.000000e+00, %3850
  %3852 = fmul fast float %3851, %3843
  %3853 = fadd fast float %3852, %3850
  %3854 = fmul fast float %3853, %3843
  %3855 = fmul fast float %3841, 2.000000e+00
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = fmul fast float %3856, %3844
  %3858 = fadd fast float %3857, %3855
  %3859 = fmul fast float %3858, %3844
  %3860 = fmul fast float %3849, %3849
  %3861 = fmul fast float %3854, %3854
  %3862 = fmul fast float %3859, %3859
  br label %3879

; <label>:3863                                    ; preds = %3826
  %3864 = fmul fast float %386, %386
  %3865 = fmul fast float %390, %390
  %3866 = fmul fast float %394, %394
  %3867 = fadd fast float %3864, -1.000000e+00
  %3868 = fadd fast float %3865, -1.000000e+00
  %3869 = fadd fast float %3866, -1.000000e+00
  %3870 = fmul fast float %3715, %3867
  %3871 = fmul fast float %3715, %3868
  %3872 = fmul fast float %3715, %3869
  %3873 = fadd fast float %3870, 1.000000e+00
  %3874 = fadd fast float %3871, 1.000000e+00
  %3875 = fadd fast float %3872, 1.000000e+00
  %3876 = fmul fast float %3873, %3690
  %3877 = fmul fast float %3874, %3691
  %3878 = fmul fast float %3875, %3692
  br label %3879

; <label>:3879                                    ; preds = %3863, %3829, %3720, %3676
  %3880 = phi float [ %3825, %3720 ], [ %3701, %3829 ], [ %3701, %3863 ], [ 0x3FA23C0BE0000000, %3676 ]
  %3881 = phi float [ %3817, %3720 ], [ %3860, %3829 ], [ %3876, %3863 ], [ 1.000000e+00, %3676 ]
  %3882 = phi float [ %3818, %3720 ], [ %3861, %3829 ], [ %3877, %3863 ], [ 1.000000e+00, %3676 ]
  %3883 = phi float [ %3819, %3720 ], [ %3862, %3829 ], [ %3878, %3863 ], [ 1.000000e+00, %3676 ]
  %3884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.i32 %3884, 1
  %3886 = and i32 %3885, 1
  %3887 = icmp ne i32 %3886, 0
  %3888 = add i32 %62, 356
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = and i32 %3890, 32
  %3892 = icmp ne i32 %3891, 0
  %3893 = and i1 %3887, %3892
  %3894 = select i1 %3893, float 1.000000e+00, float %3881
  %3895 = select i1 %3893, float 0x3FD3333340000000, float %3882
  %3896 = select i1 %3893, float 0x3FD3333340000000, float %3883
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = and i32 %3898, 32
  %3900 = icmp eq i32 %3899, 0
  br i1 %3900, label %3973, label %3901

; <label>:3901                                    ; preds = %3879
  %3902 = add i32 %62, 140
  %3903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.i32 %3903, 0
  %3905 = add i32 %62, 404
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = add i32 %3907, 0
  %3909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3910 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3909, %dx.types.Handle %107, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %3912 = extractvalue %dx.types.ResRet.f32 %3910, 1
  %3913 = extractvalue %dx.types.ResRet.f32 %3910, 2
  %3914 = extractvalue %dx.types.ResRet.f32 %3910, 3
  %3915 = and i32 %3904, 255
  %3916 = uitofp i32 %3915 to float
  %3917 = lshr i32 %3904, 8
  %3918 = and i32 %3917, 255
  %3919 = uitofp i32 %3918 to float
  %3920 = lshr i32 %3904, 16
  %3921 = and i32 %3920, 255
  %3922 = uitofp i32 %3921 to float
  %3923 = fmul fast float %3922, 0x3F70101000000000
  %3924 = fmul fast float %3911, %3916
  %3925 = fadd fast float %3924, %3919
  %3926 = fmul fast float %3925, 0x3F70101000000000
  %3927 = fadd fast float %3912, -5.000000e-01
  %3928 = fadd fast float %3914, -5.000000e-01
  %3929 = fmul fast float %3927, %3923
  %3930 = fmul fast float %3928, %3923
  %3931 = fadd fast float %3929, 5.000000e-01
  %3932 = fadd fast float %3930, 5.000000e-01
  %3933 = fmul fast float %3931, 2.000000e+00
  %3934 = fadd fast float %3933, -1.000000e+00
  %3935 = fmul fast float %3932, 2.000000e+00
  %3936 = fadd fast float %3935, -1.000000e+00
  %3937 = fadd fast float %3934, %3936
  %3938 = fmul fast float %3937, 5.000000e-01
  %3939 = fsub fast float %3934, %3936
  %3940 = fmul fast float %3939, 5.000000e-01
  %3941 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3942 = fsub fast float 1.000000e+00, %3941
  %3943 = call float @dx.op.unary.f32(i32 6, float %3940)  ; FAbs(value)
  %3944 = fsub fast float %3942, %3943
  %3945 = call float @dx.op.dot3.f32(i32 55, float %3938, float %3940, float %3944, float %3938, float %3940, float %3944)  ; Dot3(ax,ay,az,bx,by,bz)
  %3946 = call float @dx.op.unary.f32(i32 25, float %3945)  ; Rsqrt(value)
  %3947 = fmul fast float %3938, %3946
  %3948 = fmul fast float %3940, %3946
  %3949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.i32 %3949, 0
  %3951 = and i32 %3950, 67108864
  %3952 = icmp eq i32 %3951, 0
  br i1 %3952, label %3969, label %3953

; <label>:3953                                    ; preds = %3901
  %3954 = add i32 %62, 328
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = and i32 %3956, 65535
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = and i32 %3960, 65535
  %3962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3961)  ; LegacyF16ToF32(value)
  %3963 = lshr i32 %3956, 16
  %3964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3963)  ; LegacyF16ToF32(value)
  %3965 = fsub fast float %3926, %3964
  %3966 = fmul fast float %3965, %3958
  %3967 = fadd fast float %3966, %3962
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  br label %3969

; <label>:3969                                    ; preds = %3953, %3901
  %3970 = phi float [ %3968, %3953 ], [ %3926, %3901 ]
  %3971 = call float @dx.op.dot2.f32(i32 54, float %3947, float %3948, float %3390, float %3391)  ; Dot2(ax,ay,bx,by)
  %3972 = call float @dx.op.dot2.f32(i32 54, float %3947, float %3948, float %3392, float %3393)  ; Dot2(ax,ay,bx,by)
  br label %3973

; <label>:3973                                    ; preds = %3969, %3879
  %3974 = phi float [ %3970, %3969 ], [ 0x3FD6666660000000, %3879 ]
  %3975 = phi float [ %3971, %3969 ], [ 0.000000e+00, %3879 ]
  %3976 = phi float [ %3972, %3969 ], [ 0.000000e+00, %3879 ]
  %3977 = phi float [ %3913, %3969 ], [ 1.000000e+00, %3879 ]
  %3978 = add i32 %62, 208
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = lshr i32 %3980, 22
  %3982 = shl nuw nsw i32 %3981, 5
  %3983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3982)  ; LegacyF16ToF32(value)
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = and i32 %3985, 64
  %3987 = icmp eq i32 %3986, 0
  br i1 %3987, label %4021, label %3988

; <label>:3988                                    ; preds = %3973
  %3989 = add i32 %62, 420
  %3990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3991 = extractvalue %dx.types.ResRet.i32 %3990, 0
  %3992 = add i32 %3991, 0
  %3993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = and i32 %3995, 131072
  %3997 = icmp eq i32 %3996, 0
  %3998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3993, %dx.types.Handle %107, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = fmul fast float %3999, %374
  %4003 = fmul fast float %4000, %377
  %4004 = fmul fast float %4001, %380
  br i1 %3997, label %4011, label %4005

; <label>:4005                                    ; preds = %3988
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = fmul fast float %4007, %4002
  %4009 = fmul fast float %4007, %4003
  %4010 = fmul fast float %4007, %4004
  br label %4011

; <label>:4011                                    ; preds = %4005, %3988
  %4012 = phi float [ %4008, %4005 ], [ %4002, %3988 ]
  %4013 = phi float [ %4009, %4005 ], [ %4003, %3988 ]
  %4014 = phi float [ %4010, %4005 ], [ %4004, %3988 ]
  %4015 = fmul fast float %4012, %3983
  %4016 = select i1 %228, float %4015, float %4012
  %4017 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4013, float %4014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = select i1 %228, float 0.000000e+00, float %4012
  %4019 = select i1 %228, float %4017, float %4013
  %4020 = select i1 %228, float 0.000000e+00, float %4014
  br label %4021

; <label>:4021                                    ; preds = %4011, %3973
  %4022 = phi float [ %4018, %4011 ], [ 0.000000e+00, %3973 ]
  %4023 = phi float [ %4019, %4011 ], [ 0.000000e+00, %3973 ]
  %4024 = phi float [ %4020, %4011 ], [ 0.000000e+00, %3973 ]
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = and i32 %4026, 1024
  %4028 = icmp eq i32 %4027, 0
  br i1 %4028, label %4059, label %4029

; <label>:4029                                    ; preds = %4021
  %4030 = add i32 %62, 200
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3F70101020000000
  %4036 = lshr i32 %4032, 8
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = fmul fast float %4038, 0x3F70101020000000
  %4040 = lshr i32 %4032, 16
  %4041 = and i32 %4040, 255
  %4042 = uitofp i32 %4041 to float
  %4043 = fmul fast float %4042, 0x3F70101020000000
  %4044 = fmul fast float %4035, %4035
  %4045 = fmul fast float %4039, %4039
  %4046 = fmul fast float %4043, %4043
  %4047 = add i32 %62, 484
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = add i32 %4049, 0
  %4051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4051, %dx.types.Handle %108, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.ResRet.f32 %4052, 1
  %4055 = extractvalue %dx.types.ResRet.f32 %4052, 2
  %4056 = fmul fast float %4044, %4053
  %4057 = fmul fast float %4045, %4054
  %4058 = fmul fast float %4046, %4055
  br label %4059

; <label>:4059                                    ; preds = %4029, %4021
  %4060 = phi float [ %4056, %4029 ], [ 0.000000e+00, %4021 ]
  %4061 = phi float [ %4057, %4029 ], [ 0.000000e+00, %4021 ]
  %4062 = phi float [ %4058, %4029 ], [ 0.000000e+00, %4021 ]
  %4063 = fcmp fast ogt float %4060, 0.000000e+00
  %4064 = fcmp fast ogt float %4061, 0.000000e+00
  %4065 = fcmp fast ogt float %4062, 0.000000e+00
  %4066 = call float @dx.op.unary.f32(i32 23, float %4060)  ; Log(value)
  %4067 = call float @dx.op.unary.f32(i32 23, float %4061)  ; Log(value)
  %4068 = call float @dx.op.unary.f32(i32 23, float %4062)  ; Log(value)
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = lshr i32 %4070, 7
  %4072 = and i32 %4071, 32752
  %4073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4072)  ; LegacyF16ToF32(value)
  %4074 = fmul fast float %4066, 0xBFE62E4300000000
  %4075 = fmul fast float %4074, %4073
  %4076 = fmul fast float %4067, 0xBFE62E4300000000
  %4077 = fmul fast float %4076, %4073
  %4078 = fmul fast float %4068, 0xBFE62E4300000000
  %4079 = fmul fast float %4078, %4073
  %4080 = select i1 %4063, float %4075, float 1.270000e+02
  %4081 = select i1 %4064, float %4077, float 1.270000e+02
  %4082 = select i1 %4065, float %4079, float 1.270000e+02
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = and i32 %4084, 10240
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4131, label %4087

; <label>:4087                                    ; preds = %4059
  %4088 = add i32 %62, 500
  %4089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.i32 %4089, 0
  %4091 = add i32 %4090, 0
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4092, %dx.types.Handle %108, float %3486, float %3487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 3
  %4096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.i32 %4096, 0
  %4098 = and i32 %4097, 1048576
  %4099 = icmp ne i32 %4098, 0
  %4100 = and i32 %4097, 8192
  %4101 = icmp eq i32 %4100, 0
  br i1 %4101, label %4117, label %4102

; <label>:4102                                    ; preds = %4087
  %4103 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4104 = select i1 %4099, float %4103, float %4094
  %4105 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4106 = select i1 %4099, float %4105, float %4094
  %4107 = add i32 %62, 144
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = lshr i32 %4109, 16
  %4111 = and i32 %4110, 255
  %4112 = uitofp i32 %4111 to float
  %4113 = fmul fast float %4112, 0x3F80101020000000
  %4114 = fmul fast float %4113, %4106
  %4115 = fmul fast float %4113, %4094
  %4116 = fmul fast float %4113, %4104
  br label %4117

; <label>:4117                                    ; preds = %4102, %4087
  %4118 = phi float [ %4114, %4102 ], [ 0.000000e+00, %4087 ]
  %4119 = phi float [ %4115, %4102 ], [ 0.000000e+00, %4087 ]
  %4120 = phi float [ %4116, %4102 ], [ 0.000000e+00, %4087 ]
  %4121 = and i32 %4097, 2048
  %4122 = icmp eq i32 %4121, 0
  br i1 %4122, label %4131, label %4123

; <label>:4123                                    ; preds = %4117
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = shl i32 %4125, 4
  %4127 = and i32 %4126, 32752
  %4128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4127)  ; LegacyF16ToF32(value)
  %4129 = fmul fast float %4128, %4095
  %4130 = call float @dx.op.binary.f32(i32 35, float %4129, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4131

; <label>:4131                                    ; preds = %4123, %4117, %4059
  %4132 = phi float [ %4118, %4123 ], [ %4118, %4117 ], [ 0.000000e+00, %4059 ]
  %4133 = phi float [ %4119, %4123 ], [ %4119, %4117 ], [ 0.000000e+00, %4059 ]
  %4134 = phi float [ %4120, %4123 ], [ %4120, %4117 ], [ 0.000000e+00, %4059 ]
  %4135 = phi float [ %4130, %4123 ], [ 0x3F70101020000000, %4117 ], [ 0x3F70101020000000, %4059 ]
  %4136 = add i32 %62, 144
  %4137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.i32 %4137, 0
  %4139 = and i32 %4138, 255
  %4140 = uitofp i32 %4139 to float
  %4141 = lshr i32 %4138, 8
  %4142 = and i32 %4141, 255
  %4143 = uitofp i32 %4142 to float
  %4144 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4145 = fmul fast float %4143, %4144
  %4146 = fadd fast float %4145, %4140
  %4147 = fmul fast float %4146, 0x3F70101020000000
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  br i1 %3378, label %4149, label %4184

; <label>:4149                                    ; preds = %4131
  %4150 = fmul fast float %4135, 2.000000e+00
  %4151 = fcmp fast olt float %4080, 1.270000e+02
  %4152 = fcmp fast olt float %4081, 1.270000e+02
  %4153 = fcmp fast olt float %4082, 1.270000e+02
  %4154 = fmul fast float %4080, 0xBFF7154760000000
  %4155 = fmul fast float %4154, %4150
  %4156 = fmul fast float %4081, 0xBFF7154760000000
  %4157 = fmul fast float %4156, %4150
  %4158 = fmul fast float %4082, 0xBFF7154760000000
  %4159 = fmul fast float %4158, %4150
  %4160 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4161 = call float @dx.op.unary.f32(i32 21, float %4157)  ; Exp(value)
  %4162 = call float @dx.op.unary.f32(i32 21, float %4159)  ; Exp(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = fadd fast float %4163, -1.000000e+00
  %4167 = select i1 %4151, float %4166, float -1.000000e+00
  %4168 = fadd fast float %4164, -1.000000e+00
  %4169 = select i1 %4152, float %4168, float -1.000000e+00
  %4170 = fadd fast float %4165, -1.000000e+00
  %4171 = select i1 %4153, float %4170, float -1.000000e+00
  %4172 = fmul fast float %4167, %3674
  %4173 = fmul fast float %4169, %3674
  %4174 = fmul fast float %4171, %3674
  %4175 = fadd fast float %4172, 1.000000e+00
  %4176 = fadd fast float %4173, 1.000000e+00
  %4177 = fadd fast float %4174, 1.000000e+00
  %4178 = fmul fast float %4175, %3360
  %4179 = fmul fast float %4176, %3361
  %4180 = fmul fast float %4177, %3362
  %4181 = fmul fast float %4175, %3366
  %4182 = fmul fast float %4176, %3367
  %4183 = fmul fast float %4177, %3368
  br label %4184

; <label>:4184                                    ; preds = %4149, %4131
  %4185 = phi float [ %4178, %4149 ], [ %3360, %4131 ]
  %4186 = phi float [ %4179, %4149 ], [ %3361, %4131 ]
  %4187 = phi float [ %4180, %4149 ], [ %3362, %4131 ]
  %4188 = phi float [ %4181, %4149 ], [ %3366, %4131 ]
  %4189 = phi float [ %4182, %4149 ], [ %3367, %4131 ]
  %4190 = phi float [ %4183, %4149 ], [ %3368, %4131 ]
  %4191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.i32 %4191, 0
  %4193 = and i32 %4192, 3
  %4194 = icmp eq i32 %4193, 3
  br i1 %4194, label %4273, label %4195

; <label>:4195                                    ; preds = %4184
  %4196 = and i32 %4192, 16
  %4197 = icmp ne i32 %4196, 0
  %4198 = select i1 %4197, float %3674, float 0.000000e+00
  %4199 = icmp eq i32 %4193, 0
  br i1 %4199, label %4200, label %4228

; <label>:4200                                    ; preds = %4195
  %4201 = and i32 %4192, 64
  %4202 = icmp ne i32 %4201, 0
  %4203 = select i1 %4202, float %3674, float 0.000000e+00
  %4204 = fsub fast float %3894, %4185
  %4205 = fsub fast float %3895, %4186
  %4206 = fsub fast float %3896, %4187
  %4207 = fmul fast float %4198, %4204
  %4208 = fmul fast float %4198, %4205
  %4209 = fmul fast float %4198, %4206
  %4210 = fadd fast float %4207, %4185
  %4211 = fadd fast float %4208, %4186
  %4212 = fadd fast float %4209, %4187
  %4213 = fsub fast float %3880, %3372
  %4214 = fmul fast float %4198, %4213
  %4215 = fadd fast float %4214, %3372
  %4216 = fsub fast float %4022, %4188
  %4217 = fsub fast float %4023, %4189
  %4218 = fsub fast float %4024, %4190
  %4219 = fmul fast float %4203, %4216
  %4220 = fmul fast float %4203, %4217
  %4221 = fmul fast float %4203, %4218
  %4222 = fadd fast float %4219, %4188
  %4223 = fadd fast float %4220, %4189
  %4224 = fadd fast float %4221, %4190
  %4225 = fsub fast float %4148, %3376
  %4226 = fmul fast float %4198, %4225
  %4227 = fadd fast float %4226, %3376
  br label %4273

; <label>:4228                                    ; preds = %4195
  %4229 = icmp eq i32 %4193, 1
  br i1 %4229, label %4230, label %4243

; <label>:4230                                    ; preds = %4228
  %4231 = fadd fast float %3894, -1.000000e+00
  %4232 = fadd fast float %3895, -1.000000e+00
  %4233 = fadd fast float %3896, -1.000000e+00
  %4234 = fmul fast float %4198, %4231
  %4235 = fmul fast float %4198, %4232
  %4236 = fmul fast float %4198, %4233
  %4237 = fadd fast float %4234, 1.000000e+00
  %4238 = fadd fast float %4235, 1.000000e+00
  %4239 = fadd fast float %4236, 1.000000e+00
  %4240 = fmul fast float %4237, %4185
  %4241 = fmul fast float %4238, %4186
  %4242 = fmul fast float %4239, %4187
  br label %4273

; <label>:4243                                    ; preds = %4228
  %4244 = icmp eq i32 %4193, 2
  br i1 %4244, label %4245, label %4273

; <label>:4245                                    ; preds = %4243
  %4246 = call float @dx.op.unary.f32(i32 24, float %3894)  ; Sqrt(value)
  %4247 = call float @dx.op.unary.f32(i32 24, float %3895)  ; Sqrt(value)
  %4248 = call float @dx.op.unary.f32(i32 24, float %3896)  ; Sqrt(value)
  %4249 = fadd fast float %4246, -5.000000e-01
  %4250 = fadd fast float %4247, -5.000000e-01
  %4251 = fadd fast float %4248, -5.000000e-01
  %4252 = fmul fast float %4249, %4198
  %4253 = fmul fast float %4250, %4198
  %4254 = fmul fast float %4251, %4198
  %4255 = fadd fast float %4252, 5.000000e-01
  %4256 = fadd fast float %4253, 5.000000e-01
  %4257 = fadd fast float %4254, 5.000000e-01
  %4258 = fmul fast float %4255, 2.000000e+00
  %4259 = fsub fast float 1.000000e+00, %4258
  %4260 = fmul fast float %4259, %4185
  %4261 = fadd fast float %4260, %4258
  %4262 = fmul fast float %4261, %4185
  %4263 = fmul fast float %4256, 2.000000e+00
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = fmul fast float %4264, %4186
  %4266 = fadd fast float %4265, %4263
  %4267 = fmul fast float %4266, %4186
  %4268 = fmul fast float %4257, 2.000000e+00
  %4269 = fsub fast float 1.000000e+00, %4268
  %4270 = fmul fast float %4269, %4187
  %4271 = fadd fast float %4270, %4268
  %4272 = fmul fast float %4271, %4187
  br label %4273

; <label>:4273                                    ; preds = %4245, %4243, %4230, %4200, %4184
  %4274 = phi float [ %4185, %4184 ], [ %4262, %4245 ], [ %4185, %4243 ], [ %4240, %4230 ], [ %4210, %4200 ]
  %4275 = phi float [ %4186, %4184 ], [ %4267, %4245 ], [ %4186, %4243 ], [ %4241, %4230 ], [ %4211, %4200 ]
  %4276 = phi float [ %4187, %4184 ], [ %4272, %4245 ], [ %4187, %4243 ], [ %4242, %4230 ], [ %4212, %4200 ]
  %4277 = phi float [ %4188, %4184 ], [ %4188, %4245 ], [ %4188, %4243 ], [ %4188, %4230 ], [ %4222, %4200 ]
  %4278 = phi float [ %4189, %4184 ], [ %4189, %4245 ], [ %4189, %4243 ], [ %4189, %4230 ], [ %4223, %4200 ]
  %4279 = phi float [ %4190, %4184 ], [ %4190, %4245 ], [ %4190, %4243 ], [ %4190, %4230 ], [ %4224, %4200 ]
  %4280 = phi float [ %3372, %4184 ], [ %3372, %4245 ], [ %3372, %4243 ], [ %3372, %4230 ], [ %4215, %4200 ]
  %4281 = phi float [ %3376, %4184 ], [ %3376, %4245 ], [ %3376, %4243 ], [ %3376, %4230 ], [ %4227, %4200 ]
  %4282 = and i32 %4192, 12
  %4283 = icmp eq i32 %4282, 12
  br i1 %4283, label %4414, label %4284

; <label>:4284                                    ; preds = %4273
  %4285 = and i32 %4192, 2097184
  %4286 = icmp eq i32 %4285, 2097184
  %4287 = select i1 %4286, float %3674, float 0.000000e+00
  %4288 = and i32 %4192, 4194336
  %4289 = icmp eq i32 %4288, 4194336
  %4290 = select i1 %4289, float %3674, float 0.000000e+00
  %4291 = and i32 %4192, 8388640
  %4292 = icmp eq i32 %4291, 8388640
  %4293 = select i1 %4292, float %3674, float 0.000000e+00
  %4294 = and i32 %4192, 1024
  %4295 = icmp ne i32 %4294, 0
  %4296 = select i1 %4295, float %3674, float 0.000000e+00
  %4297 = and i32 %4192, 2048
  %4298 = icmp ne i32 %4297, 0
  %4299 = select i1 %4298, float %3674, float 0.000000e+00
  %4300 = and i32 %4192, 8192
  %4301 = icmp ne i32 %4300, 0
  %4302 = select i1 %4301, float %3674, float 0.000000e+00
  %4303 = icmp eq i32 %4282, 0
  br i1 %4303, label %4304, label %4338

; <label>:4304                                    ; preds = %4284
  %4305 = fsub fast float %3975, %3358
  %4306 = fsub fast float %3976, %3359
  %4307 = fmul fast float %4287, %4305
  %4308 = fmul fast float %4287, %4306
  %4309 = fadd fast float %4307, %3358
  %4310 = fadd fast float %4308, %3359
  %4311 = fsub fast float %3977, %3374
  %4312 = fmul fast float %4290, %4311
  %4313 = fadd fast float %4312, %3374
  %4314 = fsub fast float %3974, %3373
  %4315 = fmul fast float %4293, %4314
  %4316 = fadd fast float %4315, %3373
  %4317 = fsub fast float %4080, %3369
  %4318 = fsub fast float %4081, %3370
  %4319 = fsub fast float %4082, %3371
  %4320 = fmul fast float %4296, %4317
  %4321 = fmul fast float %4296, %4318
  %4322 = fmul fast float %4296, %4319
  %4323 = fadd fast float %4320, %3369
  %4324 = fadd fast float %4321, %3370
  %4325 = fadd fast float %4322, %3371
  %4326 = fsub fast float %4135, %3375
  %4327 = fmul fast float %4299, %4326
  %4328 = fadd fast float %4327, %3375
  %4329 = fsub fast float %4132, %3363
  %4330 = fsub fast float %4133, %3364
  %4331 = fsub fast float %4134, %3365
  %4332 = fmul fast float %4302, %4329
  %4333 = fmul fast float %4302, %4330
  %4334 = fmul fast float %4302, %4331
  %4335 = fadd fast float %4332, %3363
  %4336 = fadd fast float %4333, %3364
  %4337 = fadd fast float %4334, %3365
  br label %4414

; <label>:4338                                    ; preds = %4284
  %4339 = icmp eq i32 %4282, 4
  br i1 %4339, label %4340, label %4386

; <label>:4340                                    ; preds = %4338
  %4341 = fmul fast float %4287, %3975
  %4342 = fmul fast float %4287, %3976
  %4343 = fadd fast float %4341, %3358
  %4344 = fadd fast float %4342, %3359
  %4345 = call float @dx.op.binary.f32(i32 36, float %3374, float %3977)  ; FMin(a,b)
  %4346 = fsub fast float %4345, %3374
  %4347 = fmul fast float %4346, %4290
  %4348 = fadd fast float %4347, %3374
  %4349 = fadd fast float %3974, %3373
  %4350 = fmul fast float %4349, 0x3FF337FAE0000000
  %4351 = fmul fast float %3373, %3373
  %4352 = fmul fast float %3974, %3974
  %4353 = fadd fast float %4352, %4351
  %4354 = fmul fast float %4353, 0x3FE5152B00000000
  %4355 = fmul fast float %3373, 0xBFCC1F85E0000000
  %4356 = fmul fast float %4355, %3974
  %4357 = fadd fast float %4356, 0xBFE1363700000000
  %4358 = fadd fast float %4357, %4350
  %4359 = fsub fast float %4358, %4354
  %4360 = fmul fast float %4349, 0x3FBA6F0D00000000
  %4361 = fmul fast float %4353, 0x3FD0432880000000
  %4362 = fmul fast float %3373, 0xBFEF110800000000
  %4363 = fmul fast float %4362, %3974
  %4364 = fadd fast float %4363, 1.000000e+00
  %4365 = fsub fast float %4364, %4360
  %4366 = fadd fast float %4365, %4361
  %4367 = fdiv fast float %4359, %4366
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fsub fast float %4368, %3373
  %4370 = fmul fast float %4369, %4293
  %4371 = fadd fast float %4370, %3373
  %4372 = fmul fast float %4296, %4080
  %4373 = fmul fast float %4296, %4081
  %4374 = fmul fast float %4296, %4082
  %4375 = fadd fast float %4372, %3369
  %4376 = fadd fast float %4373, %3370
  %4377 = fadd fast float %4374, %3371
  %4378 = fmul fast float %4299, %4135
  %4379 = fadd fast float %4378, %3375
  %4380 = fmul fast float %4302, %4132
  %4381 = fmul fast float %4302, %4133
  %4382 = fmul fast float %4302, %4134
  %4383 = fadd fast float %4380, %3363
  %4384 = fadd fast float %4381, %3364
  %4385 = fadd fast float %4382, %3365
  br label %4414

; <label>:4386                                    ; preds = %4338
  %4387 = icmp eq i32 %4282, 8
  br i1 %4387, label %4388, label %4414

; <label>:4388                                    ; preds = %4386
  %4389 = fmul fast float %4287, %3975
  %4390 = fmul fast float %4287, %3976
  %4391 = fadd fast float %4389, %3358
  %4392 = fadd fast float %4390, %3359
  %4393 = call float @dx.op.binary.f32(i32 36, float %3374, float %3977)  ; FMin(a,b)
  %4394 = fsub fast float %4393, %3374
  %4395 = fmul fast float %4394, %4290
  %4396 = fadd fast float %4395, %3374
  %4397 = fsub fast float %3974, %3373
  %4398 = fmul fast float %4293, %4397
  %4399 = fadd fast float %4398, %3373
  %4400 = fmul fast float %4296, %4080
  %4401 = fmul fast float %4296, %4081
  %4402 = fmul fast float %4296, %4082
  %4403 = fadd fast float %4400, %3369
  %4404 = fadd fast float %4401, %3370
  %4405 = fadd fast float %4402, %3371
  %4406 = fmul fast float %4299, %4135
  %4407 = fadd fast float %4406, %3375
  %4408 = fmul fast float %4302, %4132
  %4409 = fmul fast float %4302, %4133
  %4410 = fmul fast float %4302, %4134
  %4411 = fadd fast float %4408, %3363
  %4412 = fadd fast float %4409, %3364
  %4413 = fadd fast float %4410, %3365
  br label %4414

; <label>:4414                                    ; preds = %4388, %4386, %4340, %4304, %4273, %3673, %3377, %3357
  %4415 = phi float [ %3358, %4273 ], [ %3358, %3673 ], [ %3358, %3357 ], [ %3358, %3377 ], [ %4309, %4304 ], [ %4343, %4340 ], [ %3358, %4386 ], [ %4391, %4388 ]
  %4416 = phi float [ %3359, %4273 ], [ %3359, %3673 ], [ %3359, %3357 ], [ %3359, %3377 ], [ %4310, %4304 ], [ %4344, %4340 ], [ %3359, %4386 ], [ %4392, %4388 ]
  %4417 = phi float [ %4274, %4273 ], [ %3360, %3673 ], [ %3360, %3357 ], [ %3360, %3377 ], [ %4274, %4304 ], [ %4274, %4340 ], [ %4274, %4386 ], [ %4274, %4388 ]
  %4418 = phi float [ %4275, %4273 ], [ %3361, %3673 ], [ %3361, %3357 ], [ %3361, %3377 ], [ %4275, %4304 ], [ %4275, %4340 ], [ %4275, %4386 ], [ %4275, %4388 ]
  %4419 = phi float [ %4276, %4273 ], [ %3362, %3673 ], [ %3362, %3357 ], [ %3362, %3377 ], [ %4276, %4304 ], [ %4276, %4340 ], [ %4276, %4386 ], [ %4276, %4388 ]
  %4420 = phi float [ %3363, %4273 ], [ %3363, %3673 ], [ %3363, %3357 ], [ %3363, %3377 ], [ %4335, %4304 ], [ %4383, %4340 ], [ %3363, %4386 ], [ %4411, %4388 ]
  %4421 = phi float [ %3364, %4273 ], [ %3364, %3673 ], [ %3364, %3357 ], [ %3364, %3377 ], [ %4336, %4304 ], [ %4384, %4340 ], [ %3364, %4386 ], [ %4412, %4388 ]
  %4422 = phi float [ %3365, %4273 ], [ %3365, %3673 ], [ %3365, %3357 ], [ %3365, %3377 ], [ %4337, %4304 ], [ %4385, %4340 ], [ %3365, %4386 ], [ %4413, %4388 ]
  %4423 = phi float [ %4277, %4273 ], [ %3366, %3673 ], [ %3366, %3357 ], [ %3366, %3377 ], [ %4277, %4304 ], [ %4277, %4340 ], [ %4277, %4386 ], [ %4277, %4388 ]
  %4424 = phi float [ %4278, %4273 ], [ %3367, %3673 ], [ %3367, %3357 ], [ %3367, %3377 ], [ %4278, %4304 ], [ %4278, %4340 ], [ %4278, %4386 ], [ %4278, %4388 ]
  %4425 = phi float [ %4279, %4273 ], [ %3368, %3673 ], [ %3368, %3357 ], [ %3368, %3377 ], [ %4279, %4304 ], [ %4279, %4340 ], [ %4279, %4386 ], [ %4279, %4388 ]
  %4426 = phi float [ %3369, %4273 ], [ %3369, %3673 ], [ %3369, %3357 ], [ %3369, %3377 ], [ %4323, %4304 ], [ %4375, %4340 ], [ %3369, %4386 ], [ %4403, %4388 ]
  %4427 = phi float [ %3370, %4273 ], [ %3370, %3673 ], [ %3370, %3357 ], [ %3370, %3377 ], [ %4324, %4304 ], [ %4376, %4340 ], [ %3370, %4386 ], [ %4404, %4388 ]
  %4428 = phi float [ %3371, %4273 ], [ %3371, %3673 ], [ %3371, %3357 ], [ %3371, %3377 ], [ %4325, %4304 ], [ %4377, %4340 ], [ %3371, %4386 ], [ %4405, %4388 ]
  %4429 = phi float [ %4280, %4273 ], [ %3372, %3673 ], [ %3372, %3357 ], [ %3372, %3377 ], [ %4280, %4304 ], [ %4280, %4340 ], [ %4280, %4386 ], [ %4280, %4388 ]
  %4430 = phi float [ %3373, %4273 ], [ %3373, %3673 ], [ %3373, %3357 ], [ %3373, %3377 ], [ %4316, %4304 ], [ %4371, %4340 ], [ %3373, %4386 ], [ %4399, %4388 ]
  %4431 = phi float [ %3374, %4273 ], [ %3374, %3673 ], [ %3374, %3357 ], [ %3374, %3377 ], [ %4313, %4304 ], [ %4348, %4340 ], [ %3374, %4386 ], [ %4396, %4388 ]
  %4432 = phi float [ %3375, %4273 ], [ %3375, %3673 ], [ %3375, %3357 ], [ %3375, %3377 ], [ %4328, %4304 ], [ %4379, %4340 ], [ %3375, %4386 ], [ %4407, %4388 ]
  %4433 = phi float [ %4281, %4273 ], [ %3376, %3673 ], [ %3376, %3357 ], [ %3376, %3377 ], [ %4281, %4304 ], [ %4281, %4340 ], [ %4281, %4386 ], [ %4281, %4388 ]
  %4434 = add i32 %62, 360
  %4435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.i32 %4435, 0
  %4437 = bitcast i32 %4436 to float
  %4438 = fcmp fast oge float %4437, 0.000000e+00
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 0
  %4441 = select i1 %4438, float %4437, float %4440
  %4442 = call float @dx.op.dot2.f32(i32 54, float %4415, float %4416, float %4415, float %4416)  ; Dot2(ax,ay,bx,by)
  %4443 = fmul fast float %4442, 0x3FE3333340000000
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4416, float %4444, float %4415, float %4416, float %4444)  ; Dot3(ax,ay,az,bx,by,bz)
  %4446 = call float @dx.op.unary.f32(i32 25, float %4445)  ; Rsqrt(value)
  %4447 = fmul fast float %4446, %4415
  %4448 = fmul fast float %4446, %4416
  %4449 = fmul fast float %4444, %4446
  %4450 = fmul fast float %4449, %118
  %4451 = fmul fast float %4449, %119
  %4452 = fmul fast float %4449, %120
  %4453 = fmul fast float %4447, %83
  %4454 = fmul fast float %4447, %84
  %4455 = fmul fast float %4447, %85
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = fmul fast float %130, %4448
  %4460 = fmul fast float %131, %4448
  %4461 = fmul fast float %132, %4448
  %4462 = fadd fast float %4456, %4459
  %4463 = fadd fast float %4457, %4460
  %4464 = fadd fast float %4458, %4461
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float %4462, float %4463, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = call float @dx.op.unary.f32(i32 25, float %4465)  ; Rsqrt(value)
  %4467 = fmul fast float %4462, %4466
  %4468 = fmul fast float %4463, %4466
  %4469 = fmul fast float %4464, %4466
  %4470 = and i32 %64, 1
  %4471 = icmp eq i32 %4470, 0
  br i1 %4471, label %4472, label %5064

; <label>:4472                                    ; preds = %4414
  %4473 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4474 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4475 = call float @dx.op.unary.f32(i32 83, float %168)  ; DerivCoarseX(value)
  %4476 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4477 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4478 = call float @dx.op.unary.f32(i32 84, float %168)  ; DerivCoarseY(value)
  %4479 = fadd fast float %4473, %166
  %4480 = fadd fast float %4474, %167
  %4481 = fadd fast float %4475, %168
  %4482 = fadd fast float %4476, %166
  %4483 = fadd fast float %4477, %167
  %4484 = fadd fast float %4478, %168
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 0
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 1
  %4488 = extractvalue %dx.types.CBufRet.f32 %4485, 2
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4492 = fmul fast float %4486, %111
  %4493 = fmul fast float %4492, %4490
  %4494 = fmul fast float %4487, %112
  %4495 = fmul fast float %4494, %4491
  %4496 = fptoui float %4493 to i32
  %4497 = fptoui float %4495 to i32
  %4498 = fadd fast float %4486, -1.000000e+00
  %4499 = fadd fast float %4487, -1.000000e+00
  %4500 = fptoui float %4498 to i32
  %4501 = fptoui float %4499 to i32
  %4502 = call i32 @dx.op.binary.i32(i32 40, i32 %4496, i32 %4500)  ; UMin(a,b)
  %4503 = call i32 @dx.op.binary.i32(i32 40, i32 %4497, i32 %4501)  ; UMin(a,b)
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 3
  %4507 = fmul fast float %4505, %99
  %4508 = fsub fast float %4507, %4506
  %4509 = fadd fast float %4488, -1.000000e+00
  %4510 = call float @dx.op.binary.f32(i32 36, float %4508, float %4509)  ; FMin(a,b)
  %4511 = fptoui float %4510 to i32
  %4512 = fptoui float %4486 to i32
  %4513 = fptoui float %4487 to i32
  %4514 = mul i32 %4511, %4513
  %4515 = add i32 %4514, %4503
  %4516 = mul i32 %4515, %4512
  %4517 = add i32 %4516, %4502
  %4518 = shl i32 %4517, 2
  %4519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4518, i32 undef)  ; BufferLoad(srv,index,wot)
  %4520 = extractvalue %dx.types.ResRet.i32 %4519, 0
  %4521 = and i32 %4520, 1023
  %4522 = lshr i32 %4520, 10
  %4523 = icmp eq i32 %4521, 0
  br i1 %4523, label %5027, label %4524

; <label>:4524                                    ; preds = %4472
  %4525 = and i32 %4520, 1023
  br label %4526

; <label>:4526                                    ; preds = %4658, %4524
  %4527 = phi i32 [ %4608, %4658 ], [ 0, %4524 ]
  %4528 = phi float [ %4659, %4658 ], [ 0.000000e+00, %4524 ]
  %4529 = phi float [ %4660, %4658 ], [ %4441, %4524 ]
  %4530 = phi float [ %4661, %4658 ], [ %4433, %4524 ]
  %4531 = phi float [ %4662, %4658 ], [ %4426, %4524 ]
  %4532 = phi float [ %4663, %4658 ], [ %4427, %4524 ]
  %4533 = phi float [ %4664, %4658 ], [ %4428, %4524 ]
  %4534 = phi float [ %4665, %4658 ], [ 0.000000e+00, %4524 ]
  %4535 = phi float [ %4666, %4658 ], [ 0.000000e+00, %4524 ]
  %4536 = phi float [ %4667, %4658 ], [ %4420, %4524 ]
  %4537 = phi float [ %4668, %4658 ], [ %4421, %4524 ]
  %4538 = phi float [ %4669, %4658 ], [ %4422, %4524 ]
  %4539 = phi float [ %4670, %4658 ], [ %4423, %4524 ]
  %4540 = phi float [ %4671, %4658 ], [ %4424, %4524 ]
  %4541 = phi float [ %4672, %4658 ], [ %4425, %4524 ]
  %4542 = phi float [ %4673, %4658 ], [ %4467, %4524 ]
  %4543 = phi float [ %4674, %4658 ], [ %4468, %4524 ]
  %4544 = phi float [ %4675, %4658 ], [ %4469, %4524 ]
  %4545 = phi float [ %4676, %4658 ], [ %4431, %4524 ]
  %4546 = phi float [ %4677, %4658 ], [ %4430, %4524 ]
  %4547 = phi float [ %4678, %4658 ], [ 0.000000e+00, %4524 ]
  %4548 = phi float [ %4679, %4658 ], [ %4429, %4524 ]
  %4549 = phi float [ %4680, %4658 ], [ %4417, %4524 ]
  %4550 = phi float [ %4681, %4658 ], [ %4418, %4524 ]
  %4551 = phi float [ %4682, %4658 ], [ %4419, %4524 ]
  %4552 = add nuw nsw i32 %4527, %4522
  %4553 = shl i32 %4552, 2
  %4554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.i32 %4554, 0
  %4556 = shl i32 %4555, 8
  %4557 = or i32 %4556, 48
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4556, 64
  %4564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.i32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.i32 %4564, 1
  %4567 = or i32 %4556, 80
  %4568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4567, i32 undef)  ; BufferLoad(srv,index,wot)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 3
  %4571 = or i32 %4556, 96
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4556, 112
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4580 = or i32 %4556, 128
  %4581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.ResRet.f32 %4581, 3
  %4586 = or i32 %4556, 144
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = extractvalue %dx.types.ResRet.f32 %4587, 3
  %4592 = or i32 %4556, 160
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = or i32 %4556, 192
  %4599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.i32 %4599, 0
  %4601 = or i32 %4556, 208
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = or i32 %4556, 248
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = add nuw nsw i32 %4527, 1
  %4609 = bitcast float %4562 to i32
  %4610 = and i32 %4609, 512
  %4611 = icmp eq i32 %4610, 0
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = or i32 %4556, 16
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4620, float %4621, float %4622, float %4623, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = or i32 %4556, 32
  %4626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.ResRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.ResRet.f32 %4626, 2
  %4630 = extractvalue %dx.types.ResRet.f32 %4626, 3
  %4631 = call float @dx.op.dot4.f32(i32 56, float %4627, float %4628, float %4629, float %4630, float %166, float %167, float %168, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4632 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4633 = call float @dx.op.unary.f32(i32 6, float %4632)  ; FAbs(value)
  %4634 = call float @dx.op.unary.f32(i32 27, float %4624)  ; Round_ni(value)
  %4635 = call float @dx.op.unary.f32(i32 6, float %4634)  ; FAbs(value)
  %4636 = call float @dx.op.unary.f32(i32 6, float %4631)  ; FAbs(value)
  %4637 = call float @dx.op.unary.f32(i32 27, float %4636)  ; Round_ni(value)
  %4638 = fadd fast float %4635, %4633
  %4639 = fadd fast float %4638, %4637
  %4640 = fcmp fast oeq float %4639, 0.000000e+00
  %4641 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4479, float %4480, float %4481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4642 = call float @dx.op.dot4.f32(i32 56, float %4620, float %4621, float %4622, float %4623, float %4479, float %4480, float %4481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4643 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4482, float %4483, float %4484, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4644 = call float @dx.op.dot4.f32(i32 56, float %4620, float %4621, float %4622, float %4623, float %4482, float %4483, float %4484, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4645 = fsub fast float %4641, %4617
  %4646 = fsub fast float %4643, %4617
  %4647 = fsub fast float %4642, %4624
  %4648 = fsub fast float %4644, %4624
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4559, float %4560, float %4561, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4652 = fadd fast float %4651, %4649
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4655 = fcmp fast ogt float %4653, %4654
  %4656 = and i1 %4640, %4655
  %4657 = and i1 %4611, %4656
  br i1 %4657, label %4684, label %4658

; <label>:4658                                    ; preds = %5013, %4765, %4684, %4526
  %4659 = phi float [ %4528, %4684 ], [ %4768, %4765 ], [ %4768, %5013 ], [ %4528, %4526 ]
  %4660 = phi float [ %4529, %4684 ], [ %4529, %4765 ], [ %4989, %5013 ], [ %4529, %4526 ]
  %4661 = phi float [ %4530, %4684 ], [ %4530, %4765 ], [ %4987, %5013 ], [ %4530, %4526 ]
  %4662 = phi float [ %4531, %4684 ], [ %4531, %4765 ], [ %4965, %5013 ], [ %4531, %4526 ]
  %4663 = phi float [ %4532, %4684 ], [ %4532, %4765 ], [ %4966, %5013 ], [ %4532, %4526 ]
  %4664 = phi float [ %4533, %4684 ], [ %4533, %4765 ], [ %4967, %5013 ], [ %4533, %4526 ]
  %4665 = phi float [ %4534, %4684 ], [ %4534, %4765 ], [ %4892, %5013 ], [ %4534, %4526 ]
  %4666 = phi float [ %4535, %4684 ], [ %4535, %4765 ], [ %4890, %5013 ], [ %4535, %4526 ]
  %4667 = phi float [ %4536, %4684 ], [ %4536, %4765 ], [ %4935, %5013 ], [ %4536, %4526 ]
  %4668 = phi float [ %4537, %4684 ], [ %4537, %4765 ], [ %4936, %5013 ], [ %4537, %4526 ]
  %4669 = phi float [ %4538, %4684 ], [ %4538, %4765 ], [ %4937, %5013 ], [ %4538, %4526 ]
  %4670 = phi float [ %4539, %4684 ], [ %4539, %4765 ], [ %5023, %5013 ], [ %4539, %4526 ]
  %4671 = phi float [ %4540, %4684 ], [ %4540, %4765 ], [ %5024, %5013 ], [ %4540, %4526 ]
  %4672 = phi float [ %4541, %4684 ], [ %4541, %4765 ], [ %5025, %5013 ], [ %4541, %4526 ]
  %4673 = phi float [ %4542, %4684 ], [ %4542, %4765 ], [ %4871, %5013 ], [ %4542, %4526 ]
  %4674 = phi float [ %4543, %4684 ], [ %4543, %4765 ], [ %4872, %5013 ], [ %4543, %4526 ]
  %4675 = phi float [ %4544, %4684 ], [ %4544, %4765 ], [ %4873, %5013 ], [ %4544, %4526 ]
  %4676 = phi float [ %4545, %4684 ], [ %4545, %4765 ], [ %4945, %5013 ], [ %4545, %4526 ]
  %4677 = phi float [ %4546, %4684 ], [ %4546, %4765 ], [ %4942, %5013 ], [ %4546, %4526 ]
  %4678 = phi float [ %4547, %4684 ], [ %4547, %4765 ], [ %4939, %5013 ], [ %4547, %4526 ]
  %4679 = phi float [ %4548, %4684 ], [ %4548, %4765 ], [ %4888, %5013 ], [ %4548, %4526 ]
  %4680 = phi float [ %4549, %4684 ], [ %4549, %4765 ], [ %4883, %5013 ], [ %4549, %4526 ]
  %4681 = phi float [ %4550, %4684 ], [ %4550, %4765 ], [ %4884, %5013 ], [ %4550, %4526 ]
  %4682 = phi float [ %4551, %4684 ], [ %4551, %4765 ], [ %4885, %5013 ], [ %4551, %4526 ]
  %4683 = icmp eq i32 %4608, %4525
  br i1 %4683, label %5026, label %4526

; <label>:4684                                    ; preds = %4526
  %4685 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4686 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4690 = extractvalue %dx.types.ResRet.i32 %4564, 3
  %4691 = extractvalue %dx.types.ResRet.i32 %4564, 2
  %4692 = add i32 %4690, 0
  %4693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4693, %dx.types.Handle %4694, float %4617, float %4624, float undef, float undef, i32 0, i32 0, i32 undef, float %4645, float %4647, float undef, float %4646, float %4648, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = fmul fast float %4696, %4689
  %4698 = fadd fast float %4697, %4688
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4617, %4573
  %4701 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4624, float %4700)  ; FMad(a,b,c)
  %4702 = fadd fast float %4701, %4687
  %4703 = fmul fast float %4617, %4575
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4624, float %4703)  ; FMad(a,b,c)
  %4705 = fadd fast float %4704, %4686
  %4706 = fmul fast float %4645, %4573
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4647, float %4706)  ; FMad(a,b,c)
  %4708 = fmul fast float %4645, %4575
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4647, float %4708)  ; FMad(a,b,c)
  %4710 = fmul fast float %4646, %4573
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4648, float %4710)  ; FMad(a,b,c)
  %4712 = fmul fast float %4646, %4575
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4648, float %4712)  ; FMad(a,b,c)
  %4714 = add i32 %4691, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4715, %dx.types.Handle %4694, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = and i32 %4609, 1024
  %4719 = icmp ne i32 %4718, 0
  %4720 = fcmp fast ogt float %4717, 0x3FE0101020000000
  %4721 = uitofp i1 %4720 to float
  %4722 = select i1 %4719, float %4721, float %4717
  %4723 = and i32 %4609, 8192
  %4724 = icmp ne i32 %4723, 0
  %4725 = select i1 %4724, float %4685, float 1.000000e+00
  %4726 = fmul fast float %4617, 2.000000e+00
  %4727 = fadd fast float %4726, -1.000000e+00
  %4728 = call float @dx.op.unary.f32(i32 6, float %4727)  ; FAbs(value)
  %4729 = fmul fast float %4728, %4606
  %4730 = fsub fast float %4729, %4606
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4624, 2.000000e+00
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = call float @dx.op.unary.f32(i32 6, float %4733)  ; FAbs(value)
  %4735 = fmul fast float %4734, %4607
  %4736 = fsub fast float %4735, %4607
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4636, %4569
  %4739 = fsub fast float %4738, %4569
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = fmul fast float %4699, %4725
  %4742 = fmul fast float %4741, %4696
  %4743 = fmul fast float %4742, %4731
  %4744 = fmul fast float %4743, %4722
  %4745 = fmul fast float %4744, %4737
  %4746 = fmul fast float %4745, %4740
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4750 = fsub fast float %4653, %4749
  %4751 = fmul fast float %4750, %4748
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4746, %4570
  %4754 = fadd fast float %4746, %4570
  %4755 = fmul fast float %4754, %4579
  %4756 = fsub fast float %4755, %4579
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = and i32 %4609, 128
  %4759 = icmp ne i32 %4758, 0
  %4760 = select i1 %4759, float %4757, float %4753
  %4761 = fmul fast float %4760, %4752
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = fcmp fast ugt float %4761, %4763
  br i1 %4764, label %4765, label %4658

; <label>:4765                                    ; preds = %4684
  %4766 = select i1 %4724, float %4761, float 0.000000e+00
  %4767 = fadd fast float %4766, %4528
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  br i1 %4724, label %4658, label %4769

; <label>:4769                                    ; preds = %4765
  %4770 = and i32 %4609, 4
  %4771 = and i32 %4609, 8
  %4772 = add i32 %4565, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 1
  %4778 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4779 = extractvalue %dx.types.ResRet.f32 %4775, 3
  %4780 = bitcast float %4591 to i32
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = lshr i32 %4780, 8
  %4784 = and i32 %4783, 255
  %4785 = uitofp i32 %4784 to float
  %4786 = fmul fast float %4779, %4782
  %4787 = fadd fast float %4786, %4785
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = add i32 %4566, 0
  %4790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4789, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4791 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4790, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4792 = extractvalue %dx.types.ResRet.f32 %4791, 0
  %4793 = extractvalue %dx.types.ResRet.f32 %4791, 1
  %4794 = extractvalue %dx.types.ResRet.f32 %4791, 2
  %4795 = extractvalue %dx.types.ResRet.f32 %4791, 3
  %4796 = bitcast float %4585 to i32
  %4797 = and i32 %4796, 255
  %4798 = uitofp i32 %4797 to float
  %4799 = lshr i32 %4796, 8
  %4800 = and i32 %4799, 255
  %4801 = uitofp i32 %4800 to float
  %4802 = lshr i32 %4796, 16
  %4803 = and i32 %4802, 255
  %4804 = uitofp i32 %4803 to float
  %4805 = fmul fast float %4804, 0x3F70101000000000
  %4806 = fmul fast float %4792, %4798
  %4807 = fadd fast float %4806, %4801
  %4808 = fmul fast float %4807, 0x3F70101000000000
  %4809 = fadd fast float %4793, -5.000000e-01
  %4810 = fadd fast float %4795, -5.000000e-01
  %4811 = fmul fast float %4809, %4805
  %4812 = fmul fast float %4810, %4805
  %4813 = fadd fast float %4811, 5.000000e-01
  %4814 = fadd fast float %4812, 5.000000e-01
  %4815 = fmul fast float %4776, %4594
  %4816 = fmul fast float %4777, %4595
  %4817 = fmul fast float %4778, %4596
  %4818 = fmul fast float %4813, 2.000000e+00
  %4819 = fadd fast float %4818, -1.000000e+00
  %4820 = fmul fast float %4814, 2.000000e+00
  %4821 = fadd fast float %4820, -1.000000e+00
  %4822 = fadd fast float %4819, %4821
  %4823 = fmul fast float %4822, 5.000000e-01
  %4824 = fsub fast float %4819, %4821
  %4825 = fmul fast float %4824, 5.000000e-01
  %4826 = call float @dx.op.unary.f32(i32 6, float %4823)  ; FAbs(value)
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = call float @dx.op.unary.f32(i32 6, float %4825)  ; FAbs(value)
  %4829 = fsub fast float %4827, %4828
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4825, float %4829, float %4823, float %4825, float %4829)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 25, float %4830)  ; Rsqrt(value)
  %4832 = fmul fast float %4823, %4831
  %4833 = fmul fast float %4825, %4831
  %4834 = fmul fast float %4831, %4829
  %4835 = fmul fast float %4834, %4559
  %4836 = fmul fast float %4834, %4560
  %4837 = fmul fast float %4834, %4561
  %4838 = fmul fast float %4832, %4582
  %4839 = fmul fast float %4832, %4583
  %4840 = fmul fast float %4832, %4584
  %4841 = fadd fast float %4838, %4835
  %4842 = fadd fast float %4839, %4836
  %4843 = fadd fast float %4840, %4837
  %4844 = fmul fast float %4833, %4588
  %4845 = fmul fast float %4833, %4589
  %4846 = fmul fast float %4833, %4590
  %4847 = fadd fast float %4841, %4844
  %4848 = fadd fast float %4842, %4845
  %4849 = fadd fast float %4843, %4846
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4847, float %4848, float %4849, float %4847, float %4848, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.unary.f32(i32 25, float %4850)  ; Rsqrt(value)
  %4852 = fmul fast float %4847, %4851
  %4853 = fmul fast float %4848, %4851
  %4854 = fmul fast float %4849, %4851
  %4855 = icmp ne i32 %4771, 0
  %4856 = select i1 %4855, float 1.000000e+00, float 0.000000e+00
  %4857 = fmul fast float %4761, %4856
  %4858 = and i32 %4609, 1
  %4859 = icmp eq i32 %4858, 0
  br i1 %4859, label %4860, label %4864

; <label>:4860                                    ; preds = %4769
  %4861 = fsub fast float %4852, %4542
  %4862 = fsub fast float %4853, %4543
  %4863 = fsub fast float %4854, %4544
  br label %4864

; <label>:4864                                    ; preds = %4860, %4769
  %4865 = phi float [ %4861, %4860 ], [ %4852, %4769 ]
  %4866 = phi float [ %4862, %4860 ], [ %4853, %4769 ]
  %4867 = phi float [ %4863, %4860 ], [ %4854, %4769 ]
  %4868 = fmul float %4867, %4857
  %4869 = fmul float %4866, %4857
  %4870 = fmul float %4865, %4857
  %4871 = fadd fast float %4870, %4542
  %4872 = fadd fast float %4869, %4543
  %4873 = fadd fast float %4868, %4544
  %4874 = icmp ne i32 %4770, 0
  %4875 = select i1 %4874, float 1.000000e+00, float 0.000000e+00
  %4876 = fmul fast float %4761, %4875
  %4877 = fsub fast float %4815, %4549
  %4878 = fsub fast float %4816, %4550
  %4879 = fsub fast float %4817, %4551
  %4880 = fmul fast float %4877, %4876
  %4881 = fmul fast float %4878, %4876
  %4882 = fmul fast float %4879, %4876
  %4883 = fadd fast float %4880, %4549
  %4884 = fadd fast float %4881, %4550
  %4885 = fadd fast float %4882, %4551
  %4886 = fsub fast float %4788, %4548
  %4887 = fmul fast float %4886, %4876
  %4888 = fadd fast float %4887, %4548
  %4889 = fmul fast float %4876, %4535
  %4890 = fsub fast float %4535, %4889
  %4891 = fmul fast float %4876, %4534
  %4892 = fsub fast float %4534, %4891
  %4893 = bitcast float %4603 to i32
  %4894 = lshr i32 %4893, 16
  %4895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4894)  ; LegacyF16ToF32(value)
  %4896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.i32 %4896, 0
  %4898 = and i32 %4897, 1
  %4899 = icmp eq i32 %4898, 0
  br i1 %4899, label %4900, label %4925

; <label>:4900                                    ; preds = %4864
  %4901 = fadd fast float %4788, 0xBFB99999A0000000
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4902, 0x3FF1C71C80000000
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = fmul fast float %4905, %4815
  %4907 = fmul fast float %4905, %4816
  %4908 = fmul fast float %4905, %4817
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.binary.f32(i32 35, float %4910, float %4911)  ; FMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 35, float %4909, float %4912)  ; FMax(a,b)
  %4914 = fcmp fast ogt float %4913, 0.000000e+00
  %4915 = bitcast float %4913 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = select i1 %4914, float %4917, float 0.000000e+00
  %4919 = fmul fast float %4909, %4895
  %4920 = fmul fast float %4910, %4895
  %4921 = fmul fast float %4911, %4895
  %4922 = fmul fast float %4919, %4918
  %4923 = fmul fast float %4920, %4918
  %4924 = fmul fast float %4921, %4918
  br label %4925

; <label>:4925                                    ; preds = %4900, %4864
  %4926 = phi float [ %4895, %4864 ], [ %4922, %4900 ]
  %4927 = phi float [ %4895, %4864 ], [ %4923, %4900 ]
  %4928 = phi float [ %4895, %4864 ], [ %4924, %4900 ]
  %4929 = fsub fast float %4926, %4536
  %4930 = fsub fast float %4927, %4537
  %4931 = fsub fast float %4928, %4538
  %4932 = fmul fast float %4929, %4876
  %4933 = fmul fast float %4930, %4876
  %4934 = fmul fast float %4931, %4876
  %4935 = fadd fast float %4932, %4536
  %4936 = fadd fast float %4933, %4537
  %4937 = fadd fast float %4934, %4538
  %4938 = fadd fast float %4761, %4547
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = fsub fast float %4808, %4546
  %4941 = fmul fast float %4940, %4857
  %4942 = fadd fast float %4941, %4546
  %4943 = fsub fast float %4794, %4545
  %4944 = fmul fast float %4943, %4857
  %4945 = fadd fast float %4944, %4545
  br i1 %4859, label %4954, label %4946

; <label>:4946                                    ; preds = %4925
  %4947 = and i32 %4609, 32768
  %4948 = icmp eq i32 %4947, 0
  br i1 %4948, label %4964, label %4949

; <label>:4949                                    ; preds = %4946
  %4950 = fmul fast float %4857, 1.270000e+02
  %4951 = fadd fast float %4950, %4531
  %4952 = fadd fast float %4950, %4532
  %4953 = fadd fast float %4950, %4533
  br label %4964

; <label>:4954                                    ; preds = %4925
  %4955 = fsub fast float 1.270000e+02, %4531
  %4956 = fsub fast float 1.270000e+02, %4532
  %4957 = fsub fast float 1.270000e+02, %4533
  %4958 = fmul fast float %4857, %4955
  %4959 = fmul fast float %4857, %4956
  %4960 = fmul fast float %4857, %4957
  %4961 = fadd fast float %4958, %4531
  %4962 = fadd fast float %4959, %4532
  %4963 = fadd fast float %4960, %4533
  br label %4964

; <label>:4964                                    ; preds = %4954, %4949, %4946
  %4965 = phi float [ %4951, %4949 ], [ %4531, %4946 ], [ %4961, %4954 ]
  %4966 = phi float [ %4952, %4949 ], [ %4532, %4946 ], [ %4962, %4954 ]
  %4967 = phi float [ %4953, %4949 ], [ %4533, %4946 ], [ %4963, %4954 ]
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4816, float %4817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4972 = fmul fast float %4971, %4968
  %4973 = fadd fast float %4972, %4970
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = bitcast float %4597 to i32
  %4976 = and i32 %4975, 65535
  %4977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4976)  ; LegacyF16ToF32(value)
  %4978 = lshr i32 %4975, 16
  %4979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4978)  ; LegacyF16ToF32(value)
  %4980 = fcmp fast oge float %4977, 0.000000e+00
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = select i1 %4980, float %4977, float %4982
  %4984 = fadd fast float %4983, %4979
  %4985 = fsub fast float %4974, %4530
  %4986 = fmul fast float %4985, %4761
  %4987 = fadd fast float %4986, %4530
  %4988 = fmul fast float %4984, %4761
  %4989 = call float @dx.op.binary.f32(i32 35, float %4529, float %4988)  ; FMax(a,b)
  %4990 = and i32 %4609, 16
  %4991 = icmp eq i32 %4990, 0
  br i1 %4991, label %5013, label %4992

; <label>:4992                                    ; preds = %4964
  %4993 = add i32 %4600, 0
  %4994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4993, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4994, %dx.types.Handle %4774, float %4702, float %4705, float undef, float undef, i32 0, i32 0, i32 undef, float %4707, float %4709, float undef, float %4711, float %4713, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = and i32 %4893, 65535
  %5000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4999)  ; LegacyF16ToF32(value)
  %5001 = fmul fast float %4996, %4594
  %5002 = fmul fast float %4997, %4595
  %5003 = fmul fast float %4998, %4596
  %5004 = and i32 %4609, 16384
  %5005 = icmp ne i32 %5004, 0
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = select i1 %5005, float %5007, float 1.000000e+00
  %5009 = fmul fast float %5008, %5000
  %5010 = fmul fast float %5001, %5009
  %5011 = fmul fast float %5002, %5009
  %5012 = fmul fast float %5003, %5009
  br label %5013

; <label>:5013                                    ; preds = %4992, %4964
  %5014 = phi float [ %5010, %4992 ], [ 0.000000e+00, %4964 ]
  %5015 = phi float [ %5011, %4992 ], [ 0.000000e+00, %4964 ]
  %5016 = phi float [ %5012, %4992 ], [ 0.000000e+00, %4964 ]
  %5017 = fsub fast float %5014, %4539
  %5018 = fsub fast float %5015, %4540
  %5019 = fsub fast float %5016, %4541
  %5020 = fmul fast float %5017, %4761
  %5021 = fmul fast float %5018, %4761
  %5022 = fmul fast float %5019, %4761
  %5023 = fadd fast float %5020, %4539
  %5024 = fadd fast float %5021, %4540
  %5025 = fadd fast float %5022, %4541
  br label %4658

; <label>:5026                                    ; preds = %4658
  br label %5027

; <label>:5027                                    ; preds = %5026, %4472
  %5028 = phi float [ 0.000000e+00, %4472 ], [ %4659, %5026 ]
  %5029 = phi float [ %4441, %4472 ], [ %4660, %5026 ]
  %5030 = phi float [ %4433, %4472 ], [ %4661, %5026 ]
  %5031 = phi float [ %4426, %4472 ], [ %4662, %5026 ]
  %5032 = phi float [ %4427, %4472 ], [ %4663, %5026 ]
  %5033 = phi float [ %4428, %4472 ], [ %4664, %5026 ]
  %5034 = phi float [ 0.000000e+00, %4472 ], [ %4665, %5026 ]
  %5035 = phi float [ 0.000000e+00, %4472 ], [ %4666, %5026 ]
  %5036 = phi float [ %4420, %4472 ], [ %4667, %5026 ]
  %5037 = phi float [ %4421, %4472 ], [ %4668, %5026 ]
  %5038 = phi float [ %4422, %4472 ], [ %4669, %5026 ]
  %5039 = phi float [ %4423, %4472 ], [ %4670, %5026 ]
  %5040 = phi float [ %4424, %4472 ], [ %4671, %5026 ]
  %5041 = phi float [ %4425, %4472 ], [ %4672, %5026 ]
  %5042 = phi float [ %4467, %4472 ], [ %4673, %5026 ]
  %5043 = phi float [ %4468, %4472 ], [ %4674, %5026 ]
  %5044 = phi float [ %4469, %4472 ], [ %4675, %5026 ]
  %5045 = phi float [ %4431, %4472 ], [ %4676, %5026 ]
  %5046 = phi float [ %4430, %4472 ], [ %4677, %5026 ]
  %5047 = phi float [ 0.000000e+00, %4472 ], [ %4678, %5026 ]
  %5048 = phi float [ %4429, %4472 ], [ %4679, %5026 ]
  %5049 = phi float [ %4417, %4472 ], [ %4680, %5026 ]
  %5050 = phi float [ %4418, %4472 ], [ %4681, %5026 ]
  %5051 = phi float [ %4419, %4472 ], [ %4682, %5026 ]
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5043, float %5044, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5042
  %5055 = fmul fast float %5053, %5043
  %5056 = fmul fast float %5053, %5044
  %5057 = fadd fast float %5047, %1258
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 25, float %5059)  ; Rsqrt(value)
  %5061 = fmul fast float %5060, %5054
  %5062 = fmul fast float %5060, %5055
  %5063 = fmul fast float %5060, %5056
  br label %5064

; <label>:5064                                    ; preds = %5027, %4414
  %5065 = phi float [ %5049, %5027 ], [ %4417, %4414 ]
  %5066 = phi float [ %5050, %5027 ], [ %4418, %4414 ]
  %5067 = phi float [ %5051, %5027 ], [ %4419, %4414 ]
  %5068 = phi float [ %5039, %5027 ], [ %4423, %4414 ]
  %5069 = phi float [ %5040, %5027 ], [ %4424, %4414 ]
  %5070 = phi float [ %5041, %5027 ], [ %4425, %4414 ]
  %5071 = phi float [ %5036, %5027 ], [ %4420, %4414 ]
  %5072 = phi float [ %5037, %5027 ], [ %4421, %4414 ]
  %5073 = phi float [ %5038, %5027 ], [ %4422, %4414 ]
  %5074 = phi float [ %5031, %5027 ], [ %4426, %4414 ]
  %5075 = phi float [ %5032, %5027 ], [ %4427, %4414 ]
  %5076 = phi float [ %5033, %5027 ], [ %4428, %4414 ]
  %5077 = phi float [ %5061, %5027 ], [ %4467, %4414 ]
  %5078 = phi float [ %5062, %5027 ], [ %4468, %4414 ]
  %5079 = phi float [ %5063, %5027 ], [ %4469, %4414 ]
  %5080 = phi float [ %5048, %5027 ], [ %4429, %4414 ]
  %5081 = phi float [ %5058, %5027 ], [ %1258, %4414 ]
  %5082 = phi float [ %5046, %5027 ], [ %4430, %4414 ]
  %5083 = phi float [ %5045, %5027 ], [ %4431, %4414 ]
  %5084 = phi float [ %5035, %5027 ], [ 0.000000e+00, %4414 ]
  %5085 = phi float [ %5034, %5027 ], [ 0.000000e+00, %4414 ]
  %5086 = phi float [ %5028, %5027 ], [ 0.000000e+00, %4414 ]
  %5087 = phi float [ %5029, %5027 ], [ %4441, %4414 ]
  %5088 = phi float [ %5030, %5027 ], [ %4433, %4414 ]
  %5089 = fadd fast float %5080, 0xBFB99999A0000000
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %5090, 0x3FF1C71C80000000
  %5092 = call float @dx.op.binary.f32(i32 36, float %5080, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5093 = fsub fast float 1.000000e+00, %5091
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fmul fast float %5094, %5065
  %5096 = fmul fast float %5094, %5066
  %5097 = fmul fast float %5094, %5067
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = fmul fast float %5091, %5065
  %5102 = fmul fast float %5091, %5066
  %5103 = fmul fast float %5091, %5067
  %5104 = fadd fast float %5101, %5092
  %5105 = fadd fast float %5102, %5092
  %5106 = fadd fast float %5103, %5092
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.i32 %5111, 0
  %5113 = and i32 %5112, 1
  %5114 = icmp eq i32 %5113, 0
  br i1 %5114, label %5129, label %5115

; <label>:5115                                    ; preds = %5064
  %5116 = call float @dx.op.binary.f32(i32 35, float %5099, float %5100)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5098, float %5116)  ; FMax(a,b)
  %5118 = fcmp fast ogt float %5117, 0.000000e+00
  %5119 = bitcast float %5117 to i32
  %5120 = sub nsw i32 2129859010, %5119
  %5121 = bitcast i32 %5120 to float
  %5122 = select i1 %5118, float %5121, float 0.000000e+00
  %5123 = fmul fast float %5098, %5071
  %5124 = fmul fast float %5099, %5072
  %5125 = fmul fast float %5100, %5073
  %5126 = fmul fast float %5123, %5122
  %5127 = fmul fast float %5124, %5122
  %5128 = fmul fast float %5125, %5122
  br label %5129

; <label>:5129                                    ; preds = %5115, %5064
  %5130 = phi float [ %5126, %5115 ], [ %5071, %5064 ]
  %5131 = phi float [ %5127, %5115 ], [ %5072, %5064 ]
  %5132 = phi float [ %5128, %5115 ], [ %5073, %5064 ]
  %5133 = call float @dx.op.binary.f32(i32 36, float %5074, float 1.270000e+02)  ; FMin(a,b)
  %5134 = call float @dx.op.binary.f32(i32 36, float %5075, float 1.270000e+02)  ; FMin(a,b)
  %5135 = call float @dx.op.binary.f32(i32 36, float %5076, float 1.270000e+02)  ; FMin(a,b)
  %5136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.i32 %5136, 3
  %5138 = and i32 %5137, 8
  %5139 = icmp ne i32 %5138, 0
  %5140 = call float @dx.op.binary.f32(i32 35, float %5098, float %5065)  ; FMax(a,b)
  %5141 = call float @dx.op.binary.f32(i32 35, float %5099, float %5065)  ; FMax(a,b)
  %5142 = call float @dx.op.binary.f32(i32 35, float %5100, float %5065)  ; FMax(a,b)
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5099, float %5100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = select i1 %228, float %5065, float %5098
  %5145 = select i1 %228, float %5143, float %5099
  %5146 = select i1 %228, float 1.000000e+00, float %5100
  %5147 = select i1 %5139, float %5140, float %5144
  %5148 = select i1 %5139, float %5141, float %5145
  %5149 = select i1 %5139, float %5142, float %5146
  %5150 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = select i1 %228, float %5150, float %5130
  %5152 = select i1 %228, float %5150, float %5131
  %5153 = select i1 %228, float %5150, float %5132
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5158 = fadd fast float %5155, %166
  %5159 = fadd fast float %5156, %167
  %5160 = fadd fast float %5157, %168
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5164 = fsub fast float %5158, %5162
  %5165 = fsub fast float %5159, %5163
  %5166 = fmul fast float %5164, %5164
  %5167 = fmul fast float %5165, %5165
  %5168 = fadd fast float %5166, %5167
  %5169 = call float @dx.op.unary.f32(i32 24, float %5168)  ; Sqrt(value)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5161, 2
  %5171 = fcmp fast olt float %5169, %5170
  br i1 %5171, label %5172, label %5239

; <label>:5172                                    ; preds = %5129
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 0
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = extractvalue %dx.types.CBufRet.f32 %5173, 1
  %5180 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5181 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5173, 3
  %5183 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5184 = extractvalue %dx.types.CBufRet.f32 %5177, 3
  %5185 = fadd fast float %5182, %5158
  %5186 = fadd fast float %5183, %5159
  %5187 = fadd fast float %5184, %5160
  %5188 = fmul fast float %5185, %5174
  %5189 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5176, float %5188)  ; FMad(a,b,c)
  %5190 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5178, float %5189)  ; FMad(a,b,c)
  %5191 = fmul fast float %5185, %5179
  %5192 = call float @dx.op.tertiary.f32(i32 46, float %5186, float %5180, float %5191)  ; FMad(a,b,c)
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5181, float %5192)  ; FMad(a,b,c)
  %5194 = fsub fast float %5190, %5182
  %5195 = fsub fast float %5193, %5183
  %5196 = fsub fast float %5194, %5162
  %5197 = fadd fast float %5196, %5170
  %5198 = fsub fast float %5195, %5163
  %5199 = fadd fast float %5198, %5170
  %5200 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5201 = fmul fast float %5197, %5200
  %5202 = fmul fast float %5199, %5200
  %5203 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5204 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5205 = fsub fast float 1.000000e+00, %5203
  %5206 = fsub fast float 1.000000e+00, %5204
  %5207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %5205, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 0
  %5209 = fcmp fast ugt float %5208, 0.000000e+00
  br i1 %5209, label %5210, label %5513

; <label>:5210                                    ; preds = %5172
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5213 = fmul fast float %5212, %5208
  %5214 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5215 = fadd fast float %5214, %5213
  %5216 = extractvalue %dx.types.CBufRet.f32 %5177, 2
  %5217 = fadd fast float %5215, %5184
  %5218 = fmul fast float %5190, %5178
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5181, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5216, float %5219)  ; FMad(a,b,c)
  %5221 = fsub fast float %5220, %5184
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5224 = fsub fast float %5221, %5223
  %5225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %56, float %5205, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %56, float %5205, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = fadd fast float %5230, %5226
  %5234 = fmul fast float %5233, 0x3F847AE140000000
  %5235 = fadd fast float %5231, %5227
  %5236 = fmul fast float %5235, 0x3F847AE140000000
  %5237 = fadd fast float %5232, %5228
  %5238 = fmul fast float %5237, 0x3F847AE140000000
  br label %5513

; <label>:5239                                    ; preds = %5129
  %5240 = and i32 %204, 1
  %5241 = icmp eq i32 %5240, 0
  br i1 %5241, label %5513, label %5242

; <label>:5242                                    ; preds = %5239
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5248 = extractvalue %dx.types.CBufRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.CBufRet.f32 %5243, 1
  %5250 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5251 = extractvalue %dx.types.CBufRet.f32 %5247, 1
  %5252 = extractvalue %dx.types.CBufRet.f32 %5243, 3
  %5253 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5254 = extractvalue %dx.types.CBufRet.f32 %5247, 3
  %5255 = fadd fast float %5252, %5158
  %5256 = fadd fast float %5253, %5159
  %5257 = fadd fast float %5254, %5160
  %5258 = fmul fast float %5255, %5244
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %5256, float %5246, float %5258)  ; FMad(a,b,c)
  %5260 = call float @dx.op.tertiary.f32(i32 46, float %5257, float %5248, float %5259)  ; FMad(a,b,c)
  %5261 = fmul fast float %5255, %5249
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5256, float %5250, float %5261)  ; FMad(a,b,c)
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %5257, float %5251, float %5262)  ; FMad(a,b,c)
  %5264 = fsub fast float %5260, %5252
  %5265 = fsub fast float %5263, %5253
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 0
  %5275 = extractvalue %dx.types.CBufRet.i32 %5273, 1
  %5276 = udiv i32 %5275, %5274
  %5277 = fsub fast float %5264, %5267
  %5278 = fsub fast float %5265, %5268
  %5279 = call float @dx.op.binary.f32(i32 35, float %5277, float 0.000000e+00)  ; FMax(a,b)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5278, float 0.000000e+00)  ; FMax(a,b)
  %5281 = call float @dx.op.binary.f32(i32 36, float %5279, float %5269)  ; FMin(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5280, float %5270)  ; FMin(a,b)
  %5283 = add i32 %5274, -1
  %5284 = add i32 %5276, -1
  %5285 = fmul fast float %5281, %5272
  %5286 = fmul fast float %5282, %5272
  %5287 = fptoui float %5285 to i32
  %5288 = fptoui float %5286 to i32
  %5289 = call i32 @dx.op.binary.i32(i32 40, i32 %5287, i32 %5283)  ; UMin(a,b)
  %5290 = call i32 @dx.op.binary.i32(i32 40, i32 %5288, i32 %5284)  ; UMin(a,b)
  %5291 = mul i32 %5290, %5274
  %5292 = add i32 %5291, %5289
  %5293 = shl i32 %5292, 2
  %5294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.i32 %5294, 0
  %5296 = icmp eq i32 %5295, -1
  br i1 %5296, label %5513, label %5297

; <label>:5297                                    ; preds = %5242
  %5298 = mul i32 %5295, 148
  %5299 = add i32 %5298, 4
  %5300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 0
  %5302 = add i32 %5298, 8
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = add i32 %5298, 36
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = add i32 %5298, 60
  %5309 = add i32 %5298, 92
  %5310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5309, i32 undef)  ; BufferLoad(srv,index,wot)
  %5311 = extractvalue %dx.types.ResRet.i32 %5310, 0
  %5312 = add i32 %5298, 116
  %5313 = fsub fast float %5264, %5301
  %5314 = fsub fast float %5265, %5304
  %5315 = fmul fast float %5272, %5313
  %5316 = fmul fast float %5272, %5314
  %5317 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 2
  %5322 = call float @dx.op.unary.f32(i32 83, float %5317)  ; DerivCoarseX(value)
  %5323 = call float @dx.op.unary.f32(i32 83, float %5319)  ; DerivCoarseX(value)
  %5324 = call float @dx.op.unary.f32(i32 84, float %5317)  ; DerivCoarseY(value)
  %5325 = call float @dx.op.unary.f32(i32 84, float %5319)  ; DerivCoarseY(value)
  %5326 = fmul fast float %5322, %5321
  %5327 = fmul fast float %5323, %5321
  %5328 = fmul fast float %5324, %5321
  %5329 = fmul fast float %5325, %5321
  %5330 = call float @dx.op.dot2.f32(i32 54, float %5328, float %5329, float %5328, float %5329)  ; Dot2(ax,ay,bx,by)
  %5331 = call float @dx.op.dot2.f32(i32 54, float %5326, float %5327, float %5326, float %5327)  ; Dot2(ax,ay,bx,by)
  %5332 = call float @dx.op.binary.f32(i32 35, float %5331, float %5330)  ; FMax(a,b)
  %5333 = call float @dx.op.unary.f32(i32 23, float %5332)  ; Log(value)
  %5334 = fmul fast float %5333, 5.000000e-01
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5337 = fadd fast float %5336, %5334
  %5338 = call float @dx.op.binary.f32(i32 35, float %5337, float 0.000000e+00)  ; FMax(a,b)
  %5339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5340 = extractvalue %dx.types.CBufRet.f32 %5339, 3
  %5341 = fadd fast float %5340, %5338
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 3
  %5344 = fadd fast float %5341, %5343
  %5345 = add i32 %5311, 0
  %5346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5347 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5346, i32 0)  ; GetDimensions(handle,mipLevel)
  %5348 = extractvalue %dx.types.Dimensions %5347, 0
  %5349 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5348)  ; FirstbitLo(value)
  %5350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.i32 %5350, 1
  %5352 = sub nsw i32 %5351, %5349
  %5353 = sitofp i32 %5352 to float
  %5354 = fsub fast float %5344, %5353
  %5355 = call float @dx.op.binary.f32(i32 35, float %5354, float 0.000000e+00)  ; FMax(a,b)
  %5356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5346, %dx.types.Handle %54, float %5317, float %5319, float %5307, float undef, i32 0, i32 0, i32 undef, float %5355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = fcmp ule float %5357, 0x3FE0101020000000
  %5359 = extractvalue %dx.types.CBufRet.i32 %5350, 0
  %5360 = and i32 %5359, 128
  %5361 = icmp ne i32 %5360, 0
  %5362 = and i1 %5358, %5361
  br i1 %5362, label %5513, label %5363

; <label>:5363                                    ; preds = %5297
  %5364 = add i32 %5298, 20
  %5365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.f32 %5365, 0
  %5367 = add i32 %5298, 24
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = add i32 %5298, 40
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = add i32 %5298, 96
  %5374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.i32 %5374, 0
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5378 = fmul fast float %5377, %5317
  %5379 = fmul fast float %5377, %5319
  %5380 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5381 = fadd fast float %5378, %5380
  %5382 = fadd fast float %5379, %5380
  %5383 = add i32 %5375, 0
  %5384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5385 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5384, i32 0)  ; GetDimensions(handle,mipLevel)
  %5386 = extractvalue %dx.types.Dimensions %5385, 0
  %5387 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5386)  ; FirstbitLo(value)
  %5388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.i32 %5388, 1
  %5390 = sub nsw i32 %5389, %5387
  %5391 = sitofp i32 %5390 to float
  %5392 = fsub fast float %5341, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float %5392, float 0.000000e+00)  ; FMax(a,b)
  %5394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5384, %dx.types.Handle %54, float %5381, float %5382, float %5372, float undef, i32 0, i32 0, i32 undef, float %5393)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = fmul fast float %5395, %5366
  %5397 = fadd fast float %5396, %5369
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.CBufRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.CBufRet.f32 %5398, 2
  %5402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.f32 %5402, 3
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5406 = extractvalue %dx.types.CBufRet.f32 %5398, 3
  %5407 = fadd fast float %5403, %5264
  %5408 = fadd fast float %5405, %5265
  %5409 = fadd fast float %5397, %5406
  %5410 = fmul fast float %5407, %5399
  %5411 = call float @dx.op.tertiary.f32(i32 46, float %5408, float %5400, float %5410)  ; FMad(a,b,c)
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %5409, float %5401, float %5411)  ; FMad(a,b,c)
  %5413 = fsub fast float %5412, %5406
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5416 = fsub fast float %5413, %5415
  %5417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.i32 %5417, 0
  %5419 = call i32 @dx.op.binary.i32(i32 40, i32 %5295, i32 %5418)  ; UMin(a,b)
  %5420 = mul i32 %5419, 36
  %5421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.i32 %5421, 0
  %5423 = add i32 %5420, 4
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = fmul fast float %5425, %5317
  %5427 = fmul fast float %5425, %5319
  %5428 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5429 = fadd fast float %5426, %5428
  %5430 = fadd fast float %5427, %5428
  %5431 = icmp eq i32 %5422, 0
  br i1 %5431, label %5500, label %5432

; <label>:5432                                    ; preds = %5363
  br label %5433

; <label>:5433                                    ; preds = %5490, %5432
  %5434 = phi float [ %5491, %5490 ], [ 0.000000e+00, %5432 ]
  %5435 = phi float [ %5492, %5490 ], [ 0.000000e+00, %5432 ]
  %5436 = phi float [ %5493, %5490 ], [ 0.000000e+00, %5432 ]
  %5437 = phi float [ %5494, %5490 ], [ 0.000000e+00, %5432 ]
  %5438 = phi float [ %5495, %5490 ], [ 0.000000e+00, %5432 ]
  %5439 = phi float [ %5496, %5490 ], [ 0.000000e+00, %5432 ]
  %5440 = phi i32 [ %5497, %5490 ], [ 0, %5432 ]
  %5441 = shl i32 %5440, 2
  %5442 = add i32 %5308, %5441
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = add i32 %5312, %5441
  %5446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.i32 %5446, 0
  %5448 = add i32 %5447, 0
  %5449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5450 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5449, i32 0)  ; GetDimensions(handle,mipLevel)
  %5451 = extractvalue %dx.types.Dimensions %5450, 0
  %5452 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5451)  ; FirstbitLo(value)
  %5453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.i32 %5453, 1
  %5455 = sub nsw i32 %5454, %5452
  %5456 = sitofp i32 %5455 to float
  %5457 = fsub fast float %5341, %5456
  %5458 = call float @dx.op.binary.f32(i32 35, float %5457, float 0.000000e+00)  ; FMax(a,b)
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5449, %dx.types.Handle %54, float %5429, float %5430, float %5444, float undef, i32 0, i32 0, i32 undef, float %5458)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = fcmp fast ogt float %5460, 0.000000e+00
  br i1 %5461, label %5462, label %5490

; <label>:5462                                    ; preds = %5433
  %5463 = add i32 %5423, %5441
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = and i32 %5465, 32767
  %5467 = mul nuw nsw i32 %5466, 928
  %5468 = add nuw nsw i32 %5467, 48
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = add nuw nsw i32 %5467, 60
  %5474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5473, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.ResRet.f32 %5474, 2
  %5478 = fmul fast float %5470, %5460
  %5479 = fmul fast float %5471, %5460
  %5480 = fmul fast float %5472, %5460
  %5481 = fadd fast float %5478, %5434
  %5482 = fadd fast float %5479, %5435
  %5483 = fadd fast float %5480, %5436
  %5484 = fmul fast float %5475, %5460
  %5485 = fmul fast float %5476, %5460
  %5486 = fmul fast float %5477, %5460
  %5487 = fadd fast float %5484, %5437
  %5488 = fadd fast float %5485, %5438
  %5489 = fadd fast float %5486, %5439
  br label %5490

; <label>:5490                                    ; preds = %5462, %5433
  %5491 = phi float [ %5481, %5462 ], [ %5434, %5433 ]
  %5492 = phi float [ %5482, %5462 ], [ %5435, %5433 ]
  %5493 = phi float [ %5483, %5462 ], [ %5436, %5433 ]
  %5494 = phi float [ %5487, %5462 ], [ %5437, %5433 ]
  %5495 = phi float [ %5488, %5462 ], [ %5438, %5433 ]
  %5496 = phi float [ %5489, %5462 ], [ %5439, %5433 ]
  %5497 = add nuw i32 %5440, 1
  %5498 = icmp eq i32 %5497, %5422
  br i1 %5498, label %5499, label %5433

; <label>:5499                                    ; preds = %5490
  br label %5500

; <label>:5500                                    ; preds = %5499, %5363
  %5501 = phi float [ 0.000000e+00, %5363 ], [ %5491, %5499 ]
  %5502 = phi float [ 0.000000e+00, %5363 ], [ %5492, %5499 ]
  %5503 = phi float [ 0.000000e+00, %5363 ], [ %5493, %5499 ]
  %5504 = phi float [ 0.000000e+00, %5363 ], [ %5494, %5499 ]
  %5505 = phi float [ 0.000000e+00, %5363 ], [ %5495, %5499 ]
  %5506 = phi float [ 0.000000e+00, %5363 ], [ %5496, %5499 ]
  %5507 = fadd fast float %5504, %5501
  %5508 = fmul fast float %5507, 0x3F847AE140000000
  %5509 = fadd fast float %5505, %5502
  %5510 = fmul fast float %5509, 0x3F847AE140000000
  %5511 = fadd fast float %5506, %5503
  %5512 = fmul fast float %5511, 0x3F847AE140000000
  br label %5513

; <label>:5513                                    ; preds = %5500, %5297, %5242, %5239, %5210, %5172
  %5514 = phi float [ %5234, %5210 ], [ 0.000000e+00, %5172 ], [ %5508, %5500 ], [ 0.000000e+00, %5242 ], [ 0.000000e+00, %5297 ], [ 0.000000e+00, %5239 ]
  %5515 = phi float [ %5236, %5210 ], [ 0.000000e+00, %5172 ], [ %5510, %5500 ], [ 0.000000e+00, %5242 ], [ 0.000000e+00, %5297 ], [ 0.000000e+00, %5239 ]
  %5516 = phi float [ %5238, %5210 ], [ 0.000000e+00, %5172 ], [ %5512, %5500 ], [ 0.000000e+00, %5242 ], [ 0.000000e+00, %5297 ], [ 0.000000e+00, %5239 ]
  %5517 = phi float [ %5224, %5210 ], [ -1.310720e+05, %5172 ], [ %5416, %5500 ], [ -1.310720e+05, %5242 ], [ -1.310720e+05, %5297 ], [ -1.310720e+05, %5239 ]
  %5518 = phi i1 [ true, %5210 ], [ false, %5172 ], [ true, %5500 ], [ false, %5242 ], [ false, %5297 ], [ false, %5239 ]
  %5519 = and i32 %204, 3
  %5520 = icmp eq i32 %5519, 1
  %5521 = select i1 %5520, float 1.000000e+00, float 0.000000e+00
  %5522 = fsub fast float %5517, %168
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = select i1 %5518, float %5523, float 1.000000e+00
  %5525 = fmul fast float %5524, %5521
  %5526 = icmp eq i32 %5519, 3
  %5527 = select i1 %5526, float 1.000000e+00, float %5525
  %5528 = call float @dx.op.binary.f32(i32 35, float %5086, float %5527)  ; FMax(a,b)
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fcmp fast une float %5529, 0.000000e+00
  %5531 = call float @dx.op.dot3.f32(i32 55, float %166, float %167, float %168, float %166, float %167, float %168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = call float @dx.op.unary.f32(i32 25, float %5531)  ; Rsqrt(value)
  br i1 %5530, label %5540, label %5533

; <label>:5533                                    ; preds = %5513
  %5534 = fmul fast float %5532, %166
  %5535 = fmul fast float %5532, %167
  %5536 = fmul fast float %5532, %168
  %5537 = fsub fast float -0.000000e+00, %5534
  %5538 = fsub fast float -0.000000e+00, %5535
  %5539 = fsub fast float -0.000000e+00, %5536
  br label %5708

; <label>:5540                                    ; preds = %5513
  %5541 = fmul fast float %166, %5532
  %5542 = fsub fast float -0.000000e+00, %5541
  %5543 = fmul fast float %167, %5532
  %5544 = fsub fast float -0.000000e+00, %5543
  %5545 = fmul fast float %168, %5532
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5544, float %5546, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fmul fast float %5529, 2.500000e+00
  %5549 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5550 = fmul fast float %5529, 0x4013FFFFE0000000
  %5551 = fadd fast float %5550, 0xBFFFFFFFE0000000
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5529, 0x4004000020000000
  %5554 = fadd fast float %5553, 0xBFF8000040000000
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5557 = fmul fast float %5089, 1.000000e+01
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fmul fast float %5558, 2.000000e+00
  %5560 = fsub fast float 3.000000e+00, %5559
  %5561 = fmul fast float %5558, %5558
  %5562 = fmul fast float %5561, %5560
  %5563 = fsub fast float 1.000000e+00, %5562
  %5564 = fsub fast float 0x3FE3333340000000, %5110
  %5565 = fmul fast float %5564, 0x400AAAAAA0000000
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = fmul fast float %5563, %5566
  %5568 = fmul fast float %5147, 0x3FEA2B8620000000
  %5569 = fmul fast float %5148, 0x3FEA2B8620000000
  %5570 = fmul fast float %5149, 0x3FEA2B8620000000
  %5571 = fadd fast float %5568, 0x3FC81DFBA0000000
  %5572 = fmul fast float %5571, %5147
  %5573 = fadd fast float %5572, 0x3F910E6020000000
  %5574 = fadd fast float %5569, 0x3FC81DFBA0000000
  %5575 = fmul fast float %5574, %5148
  %5576 = fadd fast float %5575, 0x3F910E6020000000
  %5577 = fadd fast float %5570, 0x3FC81DFBA0000000
  %5578 = fmul fast float %5577, %5149
  %5579 = fadd fast float %5578, 0x3F910E6020000000
  %5580 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5581 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5582 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5583 = fsub fast float %5580, %5147
  %5584 = fsub fast float %5581, %5148
  %5585 = fsub fast float %5582, %5149
  %5586 = fmul fast float %5583, %5556
  %5587 = fmul fast float %5586, %5567
  %5588 = fmul fast float %5584, %5556
  %5589 = fmul fast float %5588, %5567
  %5590 = fmul fast float %5585, %5556
  %5591 = fmul fast float %5590, %5567
  %5592 = fadd fast float %5587, %5147
  %5593 = fadd fast float %5589, %5148
  %5594 = fadd fast float %5591, %5149
  %5595 = fmul fast float %5083, %5083
  %5596 = fmul fast float %5595, %5595
  %5597 = fadd fast float %5552, 1.000000e+00
  %5598 = fsub fast float %5597, %5567
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fsub fast float 1.000000e+00, %5596
  %5603 = call float @dx.op.binary.f32(i32 36, float %5599, float %5602)  ; FMin(a,b)
  %5604 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5605 = call float @dx.op.binary.f32(i32 35, float %5603, float %5604)  ; FMax(a,b)
  %5606 = fadd fast float %5601, 0xBFE4CCCCC0000000
  %5607 = fmul fast float %5606, 0x4006DB6DA0000000
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = fmul fast float %5608, 2.000000e+00
  %5610 = fsub fast float 3.000000e+00, %5609
  %5611 = bitcast float %5107 to i32
  %5612 = ashr i32 %5611, 1
  %5613 = add nsw i32 %5612, 532487669
  %5614 = bitcast i32 %5613 to float
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5618, 2.000000e+00
  %5620 = bitcast float %5108 to i32
  %5621 = ashr i32 %5620, 1
  %5622 = add nsw i32 %5621, 532487669
  %5623 = bitcast i32 %5622 to float
  %5624 = fsub fast float 1.000000e+00, %5623
  %5625 = bitcast float %5624 to i32
  %5626 = sub nsw i32 2129859010, %5625
  %5627 = bitcast i32 %5626 to float
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = bitcast float %5109 to i32
  %5630 = ashr i32 %5629, 1
  %5631 = add nsw i32 %5630, 532487669
  %5632 = bitcast i32 %5631 to float
  %5633 = fsub fast float 1.000000e+00, %5632
  %5634 = bitcast float %5633 to i32
  %5635 = sub nsw i32 2129859010, %5634
  %5636 = bitcast i32 %5635 to float
  %5637 = fmul fast float %5636, 2.000000e+00
  %5638 = fsub fast float 0x4002A9FBE0000000, %5619
  %5639 = fadd fast float %5619, 0x3FD54FDF00000000
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, %5643
  %5645 = fsub fast float 0x4002A9FBE0000000, %5628
  %5646 = fadd fast float %5628, 0x3FD54FDF00000000
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5649, %5645
  %5651 = fmul fast float %5650, %5650
  %5652 = fsub fast float 0x4002A9FBE0000000, %5637
  %5653 = fadd fast float %5637, 0x3FD54FDF00000000
  %5654 = bitcast float %5653 to i32
  %5655 = sub nsw i32 2129859010, %5654
  %5656 = bitcast i32 %5655 to float
  %5657 = fmul fast float %5656, %5652
  %5658 = fmul fast float %5657, %5657
  %5659 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5644)  ; FMax(a,b)
  %5660 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5651)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5658)  ; FMax(a,b)
  %5662 = fsub fast float 1.000000e+00, %5547
  %5663 = fadd fast float %5662, %5563
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fsub fast float 1.000000e+00, %5527
  %5666 = fmul fast float %5605, %5665
  %5667 = fmul fast float %5608, %5608
  %5668 = fmul fast float %5667, %5666
  %5669 = fmul fast float %5668, %5610
  %5670 = fmul fast float %5665, 0xBFE99999A0000000
  %5671 = fmul fast float %5670, %5556
  %5672 = fmul fast float %5671, %5567
  %5673 = fadd fast float %5672, 1.000000e+00
  %5674 = fadd fast float %5110, -1.000000e+00
  %5675 = fmul fast float %5673, %5674
  %5676 = fadd fast float %5675, 1.000000e+00
  %5677 = fsub fast float %5659, %5107
  %5678 = fsub fast float %5660, %5108
  %5679 = fsub fast float %5661, %5109
  %5680 = fmul fast float %5669, %5677
  %5681 = fmul fast float %5669, %5678
  %5682 = fmul fast float %5669, %5679
  %5683 = fadd fast float %5680, %5107
  %5684 = fadd fast float %5681, %5108
  %5685 = fadd fast float %5682, %5109
  %5686 = fsub fast float %118, %5077
  %5687 = fsub fast float %119, %5078
  %5688 = fsub fast float %120, %5079
  %5689 = fmul fast float %5669, %5686
  %5690 = fmul fast float %5669, %5687
  %5691 = fmul fast float %5669, %5688
  %5692 = fadd fast float %5689, %5077
  %5693 = fadd fast float %5690, %5078
  %5694 = fadd fast float %5691, %5079
  %5695 = fmul fast float %5669, %5664
  %5696 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = fmul fast float %5695, %5697
  %5699 = fadd fast float %5698, %5696
  %5700 = fsub fast float 1.000000e+00, %5083
  %5701 = fmul fast float %5669, %5700
  %5702 = fadd fast float %5701, %5083
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5692, float %5693, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = call float @dx.op.unary.f32(i32 25, float %5703)  ; Rsqrt(value)
  %5705 = fmul fast float %5692, %5704
  %5706 = fmul fast float %5693, %5704
  %5707 = fmul fast float %5694, %5704
  br label %5708

; <label>:5708                                    ; preds = %5540, %5533
  %5709 = phi float [ %5539, %5533 ], [ %5546, %5540 ]
  %5710 = phi float [ %5538, %5533 ], [ %5544, %5540 ]
  %5711 = phi float [ %5537, %5533 ], [ %5542, %5540 ]
  %5712 = phi float [ %5536, %5533 ], [ %5545, %5540 ]
  %5713 = phi float [ %5535, %5533 ], [ %5543, %5540 ]
  %5714 = phi float [ %5534, %5533 ], [ %5541, %5540 ]
  %5715 = phi float [ %5107, %5533 ], [ %5683, %5540 ]
  %5716 = phi float [ %5108, %5533 ], [ %5684, %5540 ]
  %5717 = phi float [ %5109, %5533 ], [ %5685, %5540 ]
  %5718 = phi float [ %5147, %5533 ], [ %5592, %5540 ]
  %5719 = phi float [ %5148, %5533 ], [ %5593, %5540 ]
  %5720 = phi float [ %5149, %5533 ], [ %5594, %5540 ]
  %5721 = phi float [ %5077, %5533 ], [ %5705, %5540 ]
  %5722 = phi float [ %5078, %5533 ], [ %5706, %5540 ]
  %5723 = phi float [ %5079, %5533 ], [ %5707, %5540 ]
  %5724 = phi float [ %5110, %5533 ], [ %5699, %5540 ]
  %5725 = phi float [ %5083, %5533 ], [ %5702, %5540 ]
  %5726 = fsub fast float -0.000000e+00, %168
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5729 = extractvalue %dx.types.CBufRet.f32 %5727, 3
  %5730 = fmul fast float %136, %5728
  %5731 = fmul fast float %138, %5729
  %5732 = fsub fast float 1.000000e+00, %5730
  %5733 = fsub fast float 1.000000e+00, %5731
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5738 = fmul fast float %5732, %5735
  %5739 = fmul fast float %5732, %5736
  %5740 = fmul fast float %5732, %5737
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.CBufRet.f32 %5741, 2
  %5745 = fmul fast float %5733, %5742
  %5746 = fmul fast float %5733, %5743
  %5747 = fmul fast float %5733, %5744
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 0
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5752 = fadd fast float %5745, %5749
  %5753 = fadd fast float %5752, %5738
  %5754 = fadd fast float %5746, %5750
  %5755 = fadd fast float %5754, %5739
  %5756 = fadd fast float %5747, %5751
  %5757 = fadd fast float %5756, %5740
  %5758 = fmul fast float %5753, %99
  %5759 = fmul fast float %5755, %99
  %5760 = fmul fast float %5757, %99
  %5761 = select i1 %228, float 0.000000e+00, float %5717
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5711, float %5710, float %5709)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5764 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5713, float %5712, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = fmul fast float %5764, 2.000000e+00
  %5766 = fmul fast float %5765, %5721
  %5767 = fmul fast float %5765, %5722
  %5768 = fmul fast float %5765, %5723
  %5769 = fsub fast float %5714, %5766
  %5770 = fsub fast float %5713, %5767
  %5771 = fsub fast float %5712, %5768
  %5772 = call float @dx.op.binary.f32(i32 36, float %5725, float 1.000000e+00)  ; FMin(a,b)
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = bitcast float %5773 to i32
  %5775 = ashr i32 %5774, 1
  %5776 = add nsw i32 %5775, 532487669
  %5777 = bitcast i32 %5776 to float
  %5778 = fsub fast float 1.000000e+00, %5724
  %5779 = call float @dx.op.binary.f32(i32 35, float %5778, float 0x3F847AE140000000)  ; FMax(a,b)
  %5780 = fmul fast float %5779, %5779
  %5781 = fmul fast float %5780, %5780
  %5782 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %56, float %5777, float %5781, float %5782, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = fsub fast float 1.000000e+00, %5725
  %5786 = bitcast float %5785 to i32
  %5787 = sub nsw i32 2129859010, %5786
  %5788 = bitcast i32 %5787 to float
  %5789 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fmul fast float %5789, 0x3FD20DD760000000
  %5791 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5792 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fcmp fast oeq float %5792, 0.000000e+00
  %5794 = fcmp fast oeq float %5791, 0.000000e+00
  %5795 = or i1 %5794, %5793
  br i1 %5795, label %5825, label %5796

; <label>:5796                                    ; preds = %5708
  %5797 = fsub fast float -0.000000e+00, %82
  %5798 = fsub fast float -0.000000e+00, %80
  %5799 = call float @dx.op.unary.f32(i32 24, float %5792)  ; Sqrt(value)
  %5800 = fdiv fast float %5799, %5791
  %5801 = fcmp fast ogt float %5800, 0x3FFB6F8900000000
  %5802 = select i1 %5801, float 0x3FFB6F8900000000, float %5800
  %5803 = fmul fast float %5802, 0x3FE8A23460000000
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = call float @dx.op.binary.f32(i32 35, float %5802, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5806 = fmul fast float %5804, %5791
  %5807 = fmul fast float %5805, 0x3FF279A740000000
  %5808 = fadd fast float %5807, -1.000000e+00
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %81, float %5797, float %5798, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 25, float %5809)  ; Rsqrt(value)
  %5811 = fmul fast float %5810, %5797
  %5812 = fmul fast float %5810, %5798
  %5813 = fmul fast float %5810, %81
  %5814 = fmul fast float %5808, %5808
  %5815 = fsub fast float 1.000000e+00, %5814
  %5816 = fmul fast float %5805, 0x40005F8BE0000000
  %5817 = fsub fast float 0x400C5BF8A0000000, %5816
  %5818 = fdiv fast float %5806, %5817
  %5819 = fmul fast float %5818, 0x3FEE31C3C0000000
  %5820 = fmul fast float %5819, %5815
  %5821 = fmul fast float %5805, 0x3FDACB7480000000
  %5822 = fadd fast float %5821, 0xBFD7347680000000
  %5823 = fmul fast float %5822, %5818
  %5824 = fmul fast float %5823, %5815
  br label %5825

; <label>:5825                                    ; preds = %5796, %5708
  %5826 = phi float [ %5811, %5796 ], [ 0.000000e+00, %5708 ]
  %5827 = phi float [ %5812, %5796 ], [ 0.000000e+00, %5708 ]
  %5828 = phi float [ %5813, %5796 ], [ 0.000000e+00, %5708 ]
  %5829 = phi float [ %5820, %5796 ], [ 0.000000e+00, %5708 ]
  %5830 = phi float [ %5824, %5796 ], [ 0.000000e+00, %5708 ]
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = fmul fast float %5831, %5831
  %5833 = fmul fast float %5832, 0x3FEE471020000000
  %5834 = fadd fast float %5833, 0xBFD42F6020000000
  %5835 = fmul fast float %5791, 0x3FD20DD760000000
  %5836 = fmul fast float %5834, %5830
  %5837 = fmul fast float %5829, 0x3FDF454380000000
  %5838 = fmul fast float %5837, %5831
  %5839 = fadd fast float %5838, %5835
  %5840 = fadd fast float %5839, %5836
  %5841 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fmul fast float %5841, 0x3FDF454380000000
  %5843 = fmul fast float %5841, %5841
  %5844 = fmul fast float %5843, 0x3FEE471020000000
  %5845 = fadd fast float %5844, 0xBFD42F6020000000
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5791, float %5829, float %5830, float 0x3FD20DD760000000, float %5842, float %5845)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5848 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fcmp fast oeq float %5848, 0.000000e+00
  %5850 = fcmp fast oeq float %5847, 0.000000e+00
  %5851 = or i1 %5850, %5849
  br i1 %5851, label %5881, label %5852

; <label>:5852                                    ; preds = %5825
  %5853 = fsub fast float -0.000000e+00, %78
  %5854 = fsub fast float -0.000000e+00, %76
  %5855 = call float @dx.op.unary.f32(i32 24, float %5848)  ; Sqrt(value)
  %5856 = fdiv fast float %5855, %5847
  %5857 = fcmp fast ogt float %5856, 0x3FFB6F8900000000
  %5858 = select i1 %5857, float 0x3FFB6F8900000000, float %5856
  %5859 = fmul fast float %5858, 0x3FE8A23460000000
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5858, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5862 = fmul fast float %5860, %5847
  %5863 = fmul fast float %5861, 0x3FF279A740000000
  %5864 = fadd fast float %5863, -1.000000e+00
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %77, float %5853, float %5854, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.unary.f32(i32 25, float %5865)  ; Rsqrt(value)
  %5867 = fmul fast float %5866, %5853
  %5868 = fmul fast float %5866, %5854
  %5869 = fmul fast float %5866, %77
  %5870 = fmul fast float %5864, %5864
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = fmul fast float %5861, 0x40005F8BE0000000
  %5873 = fsub fast float 0x400C5BF8A0000000, %5872
  %5874 = fdiv fast float %5862, %5873
  %5875 = fmul fast float %5874, 0x3FEE31C3C0000000
  %5876 = fmul fast float %5875, %5871
  %5877 = fmul fast float %5861, 0x3FDACB7480000000
  %5878 = fadd fast float %5877, 0xBFD7347680000000
  %5879 = fmul fast float %5878, %5874
  %5880 = fmul fast float %5879, %5871
  br label %5881

; <label>:5881                                    ; preds = %5852, %5825
  %5882 = phi float [ %5867, %5852 ], [ 0.000000e+00, %5825 ]
  %5883 = phi float [ %5868, %5852 ], [ 0.000000e+00, %5825 ]
  %5884 = phi float [ %5869, %5852 ], [ 0.000000e+00, %5825 ]
  %5885 = phi float [ %5876, %5852 ], [ 0.000000e+00, %5825 ]
  %5886 = phi float [ %5880, %5852 ], [ 0.000000e+00, %5825 ]
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = fmul fast float %5887, %5887
  %5889 = fmul fast float %5888, 0x3FEE471020000000
  %5890 = fadd fast float %5889, 0xBFD42F6020000000
  %5891 = fmul fast float %5847, 0x3FD20DD760000000
  %5892 = fmul fast float %5890, %5886
  %5893 = fmul fast float %5885, 0x3FDF454380000000
  %5894 = fmul fast float %5893, %5887
  %5895 = fadd fast float %5894, %5891
  %5896 = fadd fast float %5895, %5892
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, 0x3FDF454380000000
  %5899 = fmul fast float %5897, %5897
  %5900 = fmul fast float %5899, 0x3FEE471020000000
  %5901 = fadd fast float %5900, 0xBFD42F6020000000
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5847, float %5885, float %5886, float 0x3FD20DD760000000, float %5898, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5904 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fcmp fast oeq float %5904, 0.000000e+00
  %5906 = fcmp fast oeq float %5903, 0.000000e+00
  %5907 = or i1 %5906, %5905
  br i1 %5907, label %5937, label %5908

; <label>:5908                                    ; preds = %5881
  %5909 = fsub fast float -0.000000e+00, %74
  %5910 = fsub fast float -0.000000e+00, %72
  %5911 = call float @dx.op.unary.f32(i32 24, float %5904)  ; Sqrt(value)
  %5912 = fdiv fast float %5911, %5903
  %5913 = fcmp fast ogt float %5912, 0x3FFB6F8900000000
  %5914 = select i1 %5913, float 0x3FFB6F8900000000, float %5912
  %5915 = fmul fast float %5914, 0x3FE8A23460000000
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5914, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5918 = fmul fast float %5916, %5903
  %5919 = fmul fast float %5917, 0x3FF279A740000000
  %5920 = fadd fast float %5919, -1.000000e+00
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %73, float %5909, float %5910, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.unary.f32(i32 25, float %5921)  ; Rsqrt(value)
  %5923 = fmul fast float %5922, %5909
  %5924 = fmul fast float %5922, %5910
  %5925 = fmul fast float %5922, %73
  %5926 = fmul fast float %5920, %5920
  %5927 = fsub fast float 1.000000e+00, %5926
  %5928 = fmul fast float %5917, 0x40005F8BE0000000
  %5929 = fsub fast float 0x400C5BF8A0000000, %5928
  %5930 = fdiv fast float %5918, %5929
  %5931 = fmul fast float %5930, 0x3FEE31C3C0000000
  %5932 = fmul fast float %5931, %5927
  %5933 = fmul fast float %5917, 0x3FDACB7480000000
  %5934 = fadd fast float %5933, 0xBFD7347680000000
  %5935 = fmul fast float %5934, %5930
  %5936 = fmul fast float %5935, %5927
  br label %5937

; <label>:5937                                    ; preds = %5908, %5881
  %5938 = phi float [ %5923, %5908 ], [ 0.000000e+00, %5881 ]
  %5939 = phi float [ %5924, %5908 ], [ 0.000000e+00, %5881 ]
  %5940 = phi float [ %5925, %5908 ], [ 0.000000e+00, %5881 ]
  %5941 = phi float [ %5932, %5908 ], [ 0.000000e+00, %5881 ]
  %5942 = phi float [ %5936, %5908 ], [ 0.000000e+00, %5881 ]
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = fmul fast float %5943, %5943
  %5945 = fmul fast float %5944, 0x3FEE471020000000
  %5946 = fadd fast float %5945, 0xBFD42F6020000000
  %5947 = fmul fast float %5903, 0x3FD20DD760000000
  %5948 = fmul fast float %5946, %5942
  %5949 = fmul fast float %5941, 0x3FDF454380000000
  %5950 = fmul fast float %5949, %5943
  %5951 = fadd fast float %5950, %5947
  %5952 = fadd fast float %5951, %5948
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, 0x3FDF454380000000
  %5955 = fmul fast float %5953, %5953
  %5956 = fmul fast float %5955, 0x3FEE471020000000
  %5957 = fadd fast float %5956, 0xBFD42F6020000000
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5941, float %5942, float 0x3FD20DD760000000, float %5954, float %5957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5840, float 0.000000e+00)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5952, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5902, float 0.000000e+00)  ; FMax(a,b)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5958, float 0.000000e+00)  ; FMax(a,b)
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5967 = call float @dx.op.binary.f32(i32 36, float %5718, float %5966)  ; FMin(a,b)
  %5968 = fmul fast float %5967, %5773
  %5969 = fsub fast float 1.000000e+00, %5968
  %5970 = bitcast float %5969 to i32
  %5971 = sub nsw i32 2129859010, %5970
  %5972 = bitcast i32 %5971 to float
  %5973 = call float @dx.op.binary.f32(i32 36, float %5719, float %5966)  ; FMin(a,b)
  %5974 = fmul fast float %5973, %5773
  %5975 = fsub fast float 1.000000e+00, %5974
  %5976 = bitcast float %5975 to i32
  %5977 = sub nsw i32 2129859010, %5976
  %5978 = bitcast i32 %5977 to float
  %5979 = call float @dx.op.binary.f32(i32 36, float %5720, float %5966)  ; FMin(a,b)
  %5980 = fmul fast float %5979, %5773
  %5981 = fsub fast float 1.000000e+00, %5980
  %5982 = bitcast float %5981 to i32
  %5983 = sub nsw i32 2129859010, %5982
  %5984 = bitcast i32 %5983 to float
  %5985 = fmul fast float %5959, %5772
  %5986 = fmul fast float %5985, %5972
  %5987 = fmul fast float %5960, %5772
  %5988 = fmul fast float %5987, %5978
  %5989 = fmul fast float %5961, %5772
  %5990 = fmul fast float %5989, %5984
  %5991 = call float @dx.op.binary.f32(i32 36, float %5715, float %5966)  ; FMin(a,b)
  %5992 = fmul fast float %5991, %5773
  %5993 = fsub fast float 1.000000e+00, %5992
  %5994 = bitcast float %5993 to i32
  %5995 = sub nsw i32 2129859010, %5994
  %5996 = bitcast i32 %5995 to float
  %5997 = call float @dx.op.binary.f32(i32 36, float %5716, float %5966)  ; FMin(a,b)
  %5998 = fmul fast float %5997, %5773
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = bitcast float %5999 to i32
  %6001 = sub nsw i32 2129859010, %6000
  %6002 = bitcast i32 %6001 to float
  %6003 = call float @dx.op.binary.f32(i32 36, float %5761, float %5966)  ; FMin(a,b)
  %6004 = fmul fast float %6003, %5773
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = bitcast float %6005 to i32
  %6007 = sub nsw i32 2129859010, %6006
  %6008 = bitcast i32 %6007 to float
  %6009 = fmul fast float %5962, %5772
  %6010 = fmul fast float %6009, %5996
  %6011 = fmul fast float %5963, %5772
  %6012 = fmul fast float %6011, %6002
  %6013 = fmul fast float %5964, %5772
  %6014 = fmul fast float %6013, %6008
  %6015 = call float @dx.op.dot3.f32(i32 55, float %5986, float %5988, float %5990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = select i1 %228, float 0.000000e+00, float %5986
  %6017 = select i1 %228, float %6015, float %5988
  %6018 = select i1 %228, float 0.000000e+00, float %5990
  %6019 = call float @dx.op.dot3.f32(i32 55, float %6010, float %6012, float %6014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = select i1 %228, float 0.000000e+00, float %6010
  %6021 = select i1 %228, float %6019, float %6012
  %6022 = select i1 %228, float 0.000000e+00, float %6014
  %6023 = fmul fast float %4432, %4432
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fmul fast float %5763, 9.843750e-01
  %6026 = fmul fast float %5724, 9.843750e-01
  %6027 = fadd fast float %6025, 7.812500e-03
  %6028 = fadd fast float %6026, 7.812500e-03
  %6029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %6027, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.ResRet.f32 %6029, 2
  %6033 = extractvalue %dx.types.ResRet.f32 %6029, 3
  %6034 = fsub fast float 1.000000e+00, %6024
  %6035 = fsub fast float %6032, %6030
  %6036 = fsub fast float %6033, %6031
  %6037 = fmul fast float %6035, %6034
  %6038 = fmul fast float %6036, %6034
  %6039 = fadd fast float %6037, %6030
  %6040 = fadd fast float %6038, %6031
  %6041 = fmul fast float %6039, %5715
  %6042 = fmul fast float %6039, %5716
  %6043 = fmul fast float %6039, %5761
  %6044 = fadd fast float %6041, %6040
  %6045 = fadd fast float %6042, %6040
  %6046 = fadd fast float %6043, %6040
  %6047 = fcmp fast ogt float %5084, 0.000000e+00
  br i1 %6047, label %6048, label %6074

; <label>:6048                                    ; preds = %5937
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %5763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fadd fast float %6051, -5.000000e-01
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fsub fast float 1.000000e+00, %5715
  %6057 = fsub fast float 1.000000e+00, %5716
  %6058 = fsub fast float 1.000000e+00, %5761
  %6059 = fmul fast float %5715, 4.000000e+00
  %6060 = fmul fast float %6059, %6056
  %6061 = fmul fast float %6060, %6053
  %6062 = fmul fast float %5716, 4.000000e+00
  %6063 = fmul fast float %6062, %6057
  %6064 = fmul fast float %6063, %6054
  %6065 = fmul fast float %5761, 4.000000e+00
  %6066 = fmul fast float %6065, %6058
  %6067 = fmul fast float %6066, %6055
  %6068 = fadd fast float %6061, %6044
  %6069 = fadd fast float %6064, %6045
  %6070 = fadd fast float %6067, %6046
  %6071 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  br label %6074

; <label>:6074                                    ; preds = %6048, %5937
  %6075 = phi float [ %6071, %6048 ], [ %6044, %5937 ]
  %6076 = phi float [ %6072, %6048 ], [ %6045, %5937 ]
  %6077 = phi float [ %6073, %6048 ], [ %6046, %5937 ]
  %6078 = call float @dx.op.binary.f32(i32 35, float %6076, float %6077)  ; FMax(a,b)
  %6079 = call float @dx.op.binary.f32(i32 35, float %6075, float %6078)  ; FMax(a,b)
  %6080 = fsub fast float 1.000000e+00, %6079
  %6081 = fmul fast float %6079, %5724
  %6082 = fadd fast float %6081, %5724
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6086 = fmul fast float %6082, %6084
  %6087 = fadd fast float %6086, %6085
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = fsub fast float 1.000000e+00, %5784
  %6090 = fadd fast float %6089, %6088
  %6091 = call float @dx.op.unary.f32(i32 7, float %6090)  ; Saturate(value)
  %6092 = fcmp fast olt float %6091, 1.000000e+00
  br i1 %6092, label %6093, label %6569

; <label>:6093                                    ; preds = %6074
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6097 = fmul fast float %6095, %111
  %6098 = fmul fast float %6096, %112
  %6099 = fptoui float %6097 to i32
  %6100 = fptoui float %6098 to i32
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6101, 3
  %6105 = fadd fast float %99, -4.000000e+00
  %6106 = call float @dx.op.binary.f32(i32 35, float %6105, float 0.000000e+00)  ; FMax(a,b)
  %6107 = fadd fast float %6106, %6102
  %6108 = fmul fast float %6107, %6103
  %6109 = call float @dx.op.unary.f32(i32 23, float %6108)  ; Log(value)
  %6110 = fmul fast float %6109, %6104
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 2
  %6113 = fmul fast float %6110, %6112
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.i32 %6115, 1
  %6117 = add i32 %6116, -1
  %6118 = uitofp i32 %6116 to float
  %6119 = fmul fast float %6118, %6114
  %6120 = fptoui float %6119 to i32
  %6121 = call i32 @dx.op.binary.i32(i32 40, i32 %6120, i32 %6117)  ; UMin(a,b)
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 2
  %6124 = extractvalue %dx.types.CBufRet.i32 %6122, 3
  %6125 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6100, i32 %6123, i32 %6099)  ; UMad(a,b,c)
  %6126 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6121, i32 %6124, i32 %6125)  ; UMad(a,b,c)
  %6127 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6128 = fptoui float %6127 to i32
  %6129 = lshr i32 %6128, 5
  %6130 = call i32 @dx.op.binary.i32(i32 40, i32 %6129, i32 8191)  ; UMin(a,b)
  %6131 = fsub fast float %5517, %168
  %6132 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6133 = fcmp fast ogt float %6132, 0.000000e+00
  %6134 = fcmp fast ogt float %5771, 0.000000e+00
  %6135 = and i1 %6134, %6133
  br i1 %6135, label %6136, label %6165

; <label>:6136                                    ; preds = %6093
  %6137 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = call float @dx.op.binary.f32(i32 35, float %6137, float -1.000000e+00)  ; FMax(a,b)
  %6139 = call float @dx.op.binary.f32(i32 36, float %6138, float 1.000000e+00)  ; FMin(a,b)
  %6140 = fmul fast float %6139, %6139
  %6141 = fsub fast float 1.000000e+00, %6140
  %6142 = fmul fast float %6141, 0x3FFC6E2300000000
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = fcmp fast ogt float %6143, 0.000000e+00
  %6145 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = call float @dx.op.unary.f32(i32 23, float %6146)  ; Log(value)
  %6148 = fmul fast float %6147, 5.000000e+00
  %6149 = call float @dx.op.unary.f32(i32 21, float %6148)  ; Exp(value)
  %6150 = fmul fast float %6149, 0x3FEF591A60000000
  %6151 = fadd fast float %6150, 0x3F94DCB540000000
  %6152 = select i1 %6144, float %6151, float 1.000000e+00
  %6153 = fcmp fast oge float %6152, 1.000000e+00
  %6154 = fmul fast float %6137, 2.000000e+00
  %6155 = fadd fast float %6154, %5771
  %6156 = select i1 %6153, float %6155, float %5771
  %6157 = fsub fast float %6156, %5771
  %6158 = fmul fast float %6157, %6132
  %6159 = fadd fast float %6158, %5771
  %6160 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %6159, float %5769, float %5770, float %6159)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = call float @dx.op.unary.f32(i32 25, float %6160)  ; Rsqrt(value)
  %6162 = fmul fast float %6161, %5769
  %6163 = fmul fast float %6161, %5770
  %6164 = fmul fast float %6159, %6161
  br label %6165

; <label>:6165                                    ; preds = %6136, %6093
  %6166 = phi float [ %6162, %6136 ], [ %5769, %6093 ]
  %6167 = phi float [ %6163, %6136 ], [ %5770, %6093 ]
  %6168 = phi float [ %6164, %6136 ], [ %5771, %6093 ]
  %6169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.i32 %6169, 2
  %6171 = add nsw i32 %6170, -1
  %6172 = call i32 @dx.op.binary.i32(i32 37, i32 %6171, i32 0)  ; IMax(a,b)
  %6173 = shl i32 %6130, 2
  %6174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6173, i32 undef)  ; BufferLoad(srv,index,wot)
  %6175 = extractvalue %dx.types.ResRet.i32 %6174, 0
  %6176 = lshr i32 %6175, 16
  %6177 = and i32 %6175, 65535
  %6178 = lshr i32 %6175, 21
  %6179 = lshr i32 %6177, 5
  %6180 = call i32 @dx.op.binary.i32(i32 40, i32 %6179, i32 %6172)  ; UMin(a,b)
  %6181 = icmp ugt i32 %6178, %6180
  br i1 %6181, label %6545, label %6182

; <label>:6182                                    ; preds = %6165
  br label %6183

; <label>:6183                                    ; preds = %6537, %6182
  %6184 = phi float [ %6538, %6537 ], [ 0.000000e+00, %6182 ]
  %6185 = phi float [ %6539, %6537 ], [ 0.000000e+00, %6182 ]
  %6186 = phi float [ %6540, %6537 ], [ 0.000000e+00, %6182 ]
  %6187 = phi float [ %6541, %6537 ], [ 1.000000e+00, %6182 ]
  %6188 = phi i32 [ %6542, %6537 ], [ %6178, %6182 ]
  %6189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.i32 %6189, 2
  %6191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6126, i32 %6190, i32 %6188)  ; UMad(a,b,c)
  %6192 = shl i32 %6191, 2
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6192, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = shl i32 %6188, 5
  %6196 = sub nsw i32 %6176, %6195
  %6197 = call i32 @dx.op.binary.i32(i32 37, i32 %6196, i32 0)  ; IMax(a,b)
  %6198 = call i32 @dx.op.binary.i32(i32 38, i32 %6197, i32 31)  ; IMin(a,b)
  %6199 = sub nsw i32 1, %6176
  %6200 = add nsw i32 %6199, %6177
  %6201 = call i32 @dx.op.binary.i32(i32 37, i32 %6200, i32 0)  ; IMax(a,b)
  %6202 = call i32 @dx.op.binary.i32(i32 38, i32 %6201, i32 32)  ; IMin(a,b)
  %6203 = and i32 %6202, 31
  %6204 = shl i32 -1, %6203
  %6205 = xor i32 %6204, -1
  %6206 = and i32 %6198, 31
  %6207 = shl i32 %6205, %6206
  %6208 = icmp eq i32 %6202, 32
  %6209 = select i1 %6208, i32 -1, i32 %6207
  %6210 = and i32 %6209, %6194
  %6211 = icmp eq i32 %6210, 0
  br i1 %6211, label %6537, label %6212

; <label>:6212                                    ; preds = %6183
  br label %6213

; <label>:6213                                    ; preds = %6320, %6212
  %6214 = phi float [ %6321, %6320 ], [ %6184, %6212 ]
  %6215 = phi float [ %6322, %6320 ], [ %6185, %6212 ]
  %6216 = phi float [ %6323, %6320 ], [ %6186, %6212 ]
  %6217 = phi float [ %6324, %6320 ], [ %6187, %6212 ]
  %6218 = phi i32 [ %6223, %6320 ], [ %6210, %6212 ]
  %6219 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6218)  ; FirstbitLo(value)
  %6220 = add i32 %6219, %6195
  %6221 = and i32 %6219, 31
  %6222 = shl i32 1, %6221
  %6223 = xor i32 %6222, %6218
  %6224 = mul i32 %6220, 72
  %6225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6224, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.ResRet.f32 %6225, 2
  %6229 = add i32 %6224, 12
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %6229, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = add i32 %6224, 16
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = add i32 %6224, 28
  %6238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = add i32 %6224, 32
  %6241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.ResRet.f32 %6241, 3
  %6246 = add i32 %6224, 48
  %6247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6246, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.ResRet.f32 %6247, 1
  %6250 = add i32 %6224, 56
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = add i32 %6224, 64
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = mul i32 %6220, 60
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = add i32 %6258, 12
  %6264 = add i32 %6258, 48
  %6265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 1
  %6268 = extractvalue %dx.types.ResRet.f32 %6265, 2
  %6269 = and i32 %6231, 32767
  %6270 = bitcast float %6226 to i32
  %6271 = icmp eq i32 %6270, -1
  %6272 = bitcast float %6227 to i32
  %6273 = and i32 %6231, 32768
  %6274 = icmp ne i32 %6273, 0
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = fsub fast float %6260, %6276
  %6280 = fsub fast float %6261, %6277
  %6281 = fsub fast float %6262, %6278
  %6282 = fsub fast float %166, %6279
  %6283 = fsub fast float %167, %6280
  %6284 = fsub fast float %168, %6281
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6289 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6286, float %6287, float %6288)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = add i32 %6258, 24
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6292, float %6293, float %6294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = add i32 %6258, 36
  %6297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6296, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.ResRet.f32 %6297, 2
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6303 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6304 = call float @dx.op.unary.f32(i32 6, float %6301)  ; FAbs(value)
  %6305 = fsub fast float %6266, %6302
  %6306 = fsub fast float %6267, %6303
  %6307 = fsub fast float %6268, %6304
  %6308 = fmul fast float %6305, %6234
  %6309 = fmul fast float %6306, %6235
  %6310 = fmul fast float %6307, %6236
  %6311 = call float @dx.op.binary.f32(i32 36, float %6309, float %6310)  ; FMin(a,b)
  %6312 = call float @dx.op.binary.f32(i32 36, float %6308, float %6311)  ; FMin(a,b)
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = call float @dx.op.binary.f32(i32 36, float %6217, float %6313)  ; FMin(a,b)
  %6315 = uitofp i1 %6274 to float
  %6316 = fadd fast float %6132, 1.000000e+00
  %6317 = fsub fast float %6316, %6315
  %6318 = fmul fast float %6314, %6317
  %6319 = fcmp fast ogt float %6318, 0.000000e+00
  br i1 %6319, label %6326, label %6320

; <label>:6320                                    ; preds = %6468, %6213
  %6321 = phi float [ %6532, %6468 ], [ %6214, %6213 ]
  %6322 = phi float [ %6533, %6468 ], [ %6215, %6213 ]
  %6323 = phi float [ %6534, %6468 ], [ %6216, %6213 ]
  %6324 = phi float [ %6535, %6468 ], [ %6217, %6213 ]
  %6325 = icmp eq i32 %6218, %6222
  br i1 %6325, label %6536, label %6213

; <label>:6326                                    ; preds = %6213
  br i1 %6271, label %6384, label %6327

; <label>:6327                                    ; preds = %6326
  %6328 = fsub fast float -0.000000e+00, %6286
  %6329 = fsub fast float -0.000000e+00, %6287
  %6330 = fsub fast float -0.000000e+00, %6288
  %6331 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = fsub fast float -0.000000e+00, %6331
  %6333 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6328, float %6329, float %6330)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = fadd fast float %6333, %6249
  %6335 = fadd fast float %6248, %6333
  %6336 = fsub fast float -0.000000e+00, %6335
  %6337 = fcmp ogt float %6331, -0.000000e+00
  %6338 = select i1 %6337, float %6336, float %6334
  %6339 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6340 = fdiv fast float 1.000000e+00, %6339
  %6341 = fmul fast float %6338, %6340
  %6342 = call float @dx.op.binary.f32(i32 35, float %6341, float 0.000000e+00)  ; FMax(a,b)
  %6343 = fsub fast float -0.000000e+00, %6292
  %6344 = fsub fast float -0.000000e+00, %6293
  %6345 = fsub fast float -0.000000e+00, %6294
  %6346 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6343, float %6344, float %6345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6343, float %6344, float %6345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = fadd fast float %6348, %6253
  %6350 = fadd fast float %6252, %6348
  %6351 = fsub fast float -0.000000e+00, %6350
  %6352 = fcmp ogt float %6346, -0.000000e+00
  %6353 = select i1 %6352, float %6351, float %6349
  %6354 = call float @dx.op.unary.f32(i32 6, float %6347)  ; FAbs(value)
  %6355 = fdiv fast float 1.000000e+00, %6354
  %6356 = fmul fast float %6353, %6355
  %6357 = call float @dx.op.binary.f32(i32 35, float %6356, float 0.000000e+00)  ; FMax(a,b)
  %6358 = fsub fast float -0.000000e+00, %6298
  %6359 = fsub fast float -0.000000e+00, %6299
  %6360 = fsub fast float -0.000000e+00, %6300
  %6361 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6358, float %6359, float %6360)  ; Dot3(ax,ay,az,bx,by,bz)
  %6362 = fsub fast float -0.000000e+00, %6361
  %6363 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6358, float %6359, float %6360)  ; Dot3(ax,ay,az,bx,by,bz)
  %6364 = fadd fast float %6363, %6257
  %6365 = fadd fast float %6256, %6363
  %6366 = fsub fast float -0.000000e+00, %6365
  %6367 = fcmp ogt float %6361, -0.000000e+00
  %6368 = select i1 %6367, float %6366, float %6364
  %6369 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6370 = fdiv fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6368, %6370
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float 0.000000e+00)  ; FMax(a,b)
  %6373 = call float @dx.op.binary.f32(i32 36, float %6357, float %6372)  ; FMin(a,b)
  %6374 = call float @dx.op.binary.f32(i32 36, float %6342, float %6373)  ; FMin(a,b)
  %6375 = fmul fast float %6374, %6166
  %6376 = fmul fast float %6374, %6167
  %6377 = fmul fast float %6374, %6168
  %6378 = fadd fast float %6375, %166
  %6379 = fadd fast float %6376, %167
  %6380 = fadd fast float %6377, %168
  %6381 = fsub fast float %6378, %6226
  %6382 = fsub fast float %6379, %6227
  %6383 = fsub fast float %6380, %6228
  br label %6391

; <label>:6384                                    ; preds = %6326
  %6385 = fmul fast float %6166, 8.096000e+03
  %6386 = fmul fast float %6167, 8.096000e+03
  %6387 = fmul fast float %6168, 8.096000e+03
  %6388 = fadd fast float %6385, %166
  %6389 = fadd fast float %6386, %167
  %6390 = fadd fast float %6387, %168
  br label %6391

; <label>:6391                                    ; preds = %6384, %6327
  %6392 = phi float [ %6166, %6384 ], [ %6381, %6327 ]
  %6393 = phi float [ %6167, %6384 ], [ %6382, %6327 ]
  %6394 = phi float [ %6168, %6384 ], [ %6383, %6327 ]
  %6395 = phi float [ %6388, %6384 ], [ %6378, %6327 ]
  %6396 = phi float [ %6389, %6384 ], [ %6379, %6327 ]
  %6397 = phi float [ %6390, %6384 ], [ %6380, %6327 ]
  %6398 = fcmp fast olt float %6245, 1.000000e+00
  br i1 %6398, label %6399, label %6430, !dx.controlflow.hints !102

; <label>:6399                                    ; preds = %6391
  %6400 = fmul fast float %6394, %6243
  %6401 = fmul fast float %6393, %6244
  %6402 = fsub fast float %6400, %6401
  %6403 = fmul fast float %6392, %6244
  %6404 = fmul fast float %6394, %6242
  %6405 = fsub fast float %6403, %6404
  %6406 = fmul fast float %6393, %6242
  %6407 = fmul fast float %6392, %6243
  %6408 = fsub fast float %6406, %6407
  %6409 = fmul fast float %6402, 2.000000e+00
  %6410 = fmul fast float %6405, 2.000000e+00
  %6411 = fmul fast float %6408, 2.000000e+00
  %6412 = fmul fast float %6409, %6245
  %6413 = fmul fast float %6410, %6245
  %6414 = fmul fast float %6411, %6245
  %6415 = fmul fast float %6411, %6243
  %6416 = fmul fast float %6410, %6244
  %6417 = fmul fast float %6409, %6244
  %6418 = fmul fast float %6411, %6242
  %6419 = fmul fast float %6410, %6242
  %6420 = fmul fast float %6409, %6243
  %6421 = fadd fast float %6415, %6392
  %6422 = fadd fast float %6421, %6412
  %6423 = fsub fast float %6422, %6416
  %6424 = fsub fast float %6393, %6418
  %6425 = fadd fast float %6424, %6413
  %6426 = fadd fast float %6425, %6417
  %6427 = fadd fast float %6414, %6394
  %6428 = fsub fast float %6427, %6420
  %6429 = fadd fast float %6428, %6419
  br label %6430

; <label>:6430                                    ; preds = %6399, %6391
  %6431 = phi float [ %6423, %6399 ], [ %6392, %6391 ]
  %6432 = phi float [ %6426, %6399 ], [ %6393, %6391 ]
  %6433 = phi float [ %6429, %6399 ], [ %6394, %6391 ]
  br i1 %6271, label %6465, label %6434

; <label>:6434                                    ; preds = %6430
  %6435 = fmul fast float %5724, 0x400187C840000000
  %6436 = fadd fast float %6435, 0xC00EFC2120000000
  %6437 = fmul fast float %6436, %5724
  %6438 = fadd fast float %6437, 0x3FE5D16340000000
  %6439 = fmul fast float %6438, %5724
  %6440 = fadd fast float %6439, 1.000000e+00
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6442 = fsub fast float %6395, %166
  %6443 = fsub fast float %6396, %167
  %6444 = fsub fast float %6397, %168
  %6445 = fsub fast float %6395, %6226
  %6446 = fsub fast float %6396, %6227
  %6447 = fsub fast float %6397, %6228
  %6448 = call float @dx.op.dot3.f32(i32 55, float %6442, float %6443, float %6444, float %6442, float %6443, float %6444)  ; Dot3(ax,ay,az,bx,by,bz)
  %6449 = call float @dx.op.dot3.f32(i32 55, float %6445, float %6446, float %6447, float %6445, float %6446, float %6447)  ; Dot3(ax,ay,az,bx,by,bz)
  %6450 = fadd fast float %6449, 0x3EE4F8B580000000
  %6451 = fdiv fast float %6448, %6450
  %6452 = bitcast float %6451 to i32
  %6453 = ashr i32 %6452, 1
  %6454 = add nsw i32 %6453, 532487669
  %6455 = bitcast i32 %6454 to float
  %6456 = fmul fast float %6455, %6441
  %6457 = call float @dx.op.unary.f32(i32 7, float %6456)  ; Saturate(value)
  %6458 = fmul fast float %6457, 0x4009981AE0000000
  %6459 = fsub fast float 0x40111BBD80000000, %6458
  %6460 = fmul fast float %6459, %6457
  %6461 = fadd fast float %6460, 0xC0009F6020000000
  %6462 = fmul fast float %6461, %6457
  %6463 = fadd fast float %6462, 1.000000e+00
  %6464 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  br label %6468

; <label>:6465                                    ; preds = %6430
  %6466 = icmp ne i32 %6272, -1
  %6467 = zext i1 %6466 to i32
  br label %6468

; <label>:6468                                    ; preds = %6465, %6434
  %6469 = phi float [ %5724, %6465 ], [ %6464, %6434 ]
  %6470 = phi i32 [ %6467, %6465 ], [ 0, %6434 ]
  %6471 = fmul float %6469, 5.000000e+00
  %6472 = fsub float 5.000000e+00, %6471
  %6473 = icmp ne i32 %6470, 0
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6476 = fadd fast float %6475, %6472
  %6477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6476)  ; FMax(a,b)
  %6478 = call float @dx.op.unary.f32(i32 6, float %6431)  ; FAbs(value)
  %6479 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6480 = fadd fast float %6479, %6478
  %6481 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6482 = fadd fast float %6480, %6481
  %6483 = fcmp fast oeq float %6482, 0.000000e+00
  %6484 = fdiv fast float 1.000000e+00, %6482
  %6485 = select i1 %6483, float 1.000000e+00, float %6484
  %6486 = fmul fast float %6485, %6431
  %6487 = fmul fast float %6485, %6432
  %6488 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6489 = call float @dx.op.unary.f32(i32 6, float %6486)  ; FAbs(value)
  %6490 = fsub fast float 1.000000e+00, %6488
  %6491 = fsub fast float 1.000000e+00, %6489
  %6492 = fcmp fast oge float %6486, 0.000000e+00
  %6493 = fcmp fast oge float %6487, 0.000000e+00
  %6494 = select i1 %6492, float 1.000000e+00, float -1.000000e+00
  %6495 = select i1 %6493, float 1.000000e+00, float -1.000000e+00
  %6496 = fcmp fast ole float %6433, 0.000000e+00
  %6497 = fmul fast float %6494, %6490
  %6498 = fmul fast float %6495, %6491
  %6499 = select i1 %6496, float %6497, float %6486
  %6500 = select i1 %6496, float %6498, float %6487
  %6501 = fmul fast float %6499, 5.000000e-01
  %6502 = fmul fast float %6500, 5.000000e-01
  %6503 = fadd fast float %6501, 5.000000e-01
  %6504 = fadd fast float %6502, 5.000000e-01
  %6505 = uitofp i32 %6269 to float
  %6506 = call float @dx.op.binary.f32(i32 36, float %6477, float 3.000000e+00)  ; FMin(a,b)
  %6507 = fadd fast float %6506, 2.000000e+00
  %6508 = call float @dx.op.unary.f32(i32 21, float %6507)  ; Exp(value)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6510 = fmul fast float %6509, %6508
  %6511 = fmul fast float %6510, 2.000000e+00
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = fmul fast float %6503, %6512
  %6514 = fmul fast float %6504, %6512
  %6515 = fadd fast float %6513, %6510
  %6516 = fadd fast float %6514, %6510
  %6517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %6515, float %6516, float %6505, float undef, i32 0, i32 0, i32 undef, float %6477)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6518 = extractvalue %dx.types.ResRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.ResRet.f32 %6517, 1
  %6520 = extractvalue %dx.types.ResRet.f32 %6517, 2
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6523 = fmul fast float %6522, %6239
  %6524 = call float @dx.op.binary.f32(i32 36, float %5790, float %6523)  ; FMin(a,b)
  %6525 = select i1 %6473, float %6524, float %6523
  %6526 = fmul fast float %6518, %6318
  %6527 = fmul fast float %6526, %6525
  %6528 = fmul fast float %6519, %6318
  %6529 = fmul fast float %6528, %6525
  %6530 = fmul fast float %6520, %6318
  %6531 = fmul fast float %6530, %6525
  %6532 = fadd fast float %6527, %6214
  %6533 = fadd fast float %6529, %6215
  %6534 = fadd fast float %6531, %6216
  %6535 = fsub fast float %6217, %6318
  br label %6320

; <label>:6536                                    ; preds = %6320
  br label %6537

; <label>:6537                                    ; preds = %6536, %6183
  %6538 = phi float [ %6184, %6183 ], [ %6321, %6536 ]
  %6539 = phi float [ %6185, %6183 ], [ %6322, %6536 ]
  %6540 = phi float [ %6186, %6183 ], [ %6323, %6536 ]
  %6541 = phi float [ %6187, %6183 ], [ %6324, %6536 ]
  %6542 = add i32 %6188, 1
  %6543 = icmp ugt i32 %6542, %6180
  br i1 %6543, label %6544, label %6183, !llvm.loop !103

; <label>:6544                                    ; preds = %6537
  br label %6545

; <label>:6545                                    ; preds = %6544, %6165
  %6546 = phi float [ 0.000000e+00, %6165 ], [ %6538, %6544 ]
  %6547 = phi float [ 0.000000e+00, %6165 ], [ %6539, %6544 ]
  %6548 = phi float [ 0.000000e+00, %6165 ], [ %6540, %6544 ]
  %6549 = call float @dx.op.dot3.f32(i32 55, float %6546, float %6547, float %6548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = select i1 %228, float 0.000000e+00, float %6546
  %6551 = select i1 %228, float %6549, float %6547
  %6552 = select i1 %228, float 0.000000e+00, float %6548
  %6553 = fcmp fast olt float %6091, 0.000000e+00
  %6554 = call float @dx.op.unary.f32(i32 6, float %6091)  ; FAbs(value)
  %6555 = fmul fast float %6554, %6020
  %6556 = fmul fast float %6554, %6021
  %6557 = fmul fast float %6554, %6022
  %6558 = select i1 %6553, float %6020, float %6555
  %6559 = select i1 %6553, float %6021, float %6556
  %6560 = select i1 %6553, float %6022, float %6557
  %6561 = fsub fast float 1.000000e+00, %6554
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fmul fast float %6562, %6550
  %6564 = fmul fast float %6562, %6551
  %6565 = fmul fast float %6562, %6552
  %6566 = fadd fast float %6558, %6563
  %6567 = fadd fast float %6559, %6564
  %6568 = fadd fast float %6560, %6565
  br label %6569

; <label>:6569                                    ; preds = %6545, %6074
  %6570 = phi float [ %6020, %6074 ], [ %6566, %6545 ]
  %6571 = phi float [ %6021, %6074 ], [ %6567, %6545 ]
  %6572 = phi float [ %6022, %6074 ], [ %6568, %6545 ]
  %6573 = fmul fast float %6080, %6016
  %6574 = fmul fast float %6080, %6017
  %6575 = fmul fast float %6080, %6018
  %6576 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6577 = fcmp fast ogt float %6576, 0x3E7FF19E20000000
  %6578 = fdiv fast float 1.000000e+00, %6576
  %6579 = select i1 %6577, float %6578, float 0.000000e+00
  %6580 = fmul fast float %6579, %5718
  %6581 = fmul fast float %6579, %5719
  %6582 = fmul fast float %6579, %5720
  %6583 = fadd fast float %6580, -1.000000e+00
  %6584 = fadd fast float %6581, -1.000000e+00
  %6585 = fadd fast float %6582, -1.000000e+00
  %6586 = fmul fast float %6583, 5.000000e-01
  %6587 = fmul fast float %6584, 5.000000e-01
  %6588 = fmul fast float %6585, 5.000000e-01
  %6589 = fadd fast float %6586, 1.000000e+00
  %6590 = fadd fast float %6587, 1.000000e+00
  %6591 = fadd fast float %6588, 1.000000e+00
  %6592 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6593 = fdiv fast float %4432, %6592
  %6594 = fcmp fast olt float %5133, 1.270000e+02
  %6595 = fcmp fast olt float %5134, 1.270000e+02
  %6596 = fcmp fast olt float %5135, 1.270000e+02
  %6597 = fmul fast float %5133, 0xBFF7154760000000
  %6598 = fmul fast float %6597, %6593
  %6599 = fmul fast float %5134, 0xBFF7154760000000
  %6600 = fmul fast float %6599, %6593
  %6601 = fmul fast float %5135, 0xBFF7154760000000
  %6602 = fmul fast float %6601, %6593
  %6603 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6604 = call float @dx.op.unary.f32(i32 21, float %6600)  ; Exp(value)
  %6605 = call float @dx.op.unary.f32(i32 21, float %6602)  ; Exp(value)
  %6606 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6607 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6608 = call float @dx.op.unary.f32(i32 7, float %6605)  ; Saturate(value)
  %6609 = select i1 %6594, float %6606, float 0.000000e+00
  %6610 = select i1 %6595, float %6607, float 0.000000e+00
  %6611 = select i1 %6596, float %6608, float 0.000000e+00
  %6612 = fmul fast float %6609, %6080
  %6613 = fmul fast float %6610, %6080
  %6614 = fmul fast float %6611, %6080
  %6615 = fadd fast float %6612, -1.000000e+00
  %6616 = fadd fast float %6613, -1.000000e+00
  %6617 = fadd fast float %6614, -1.000000e+00
  %6618 = fmul fast float %6615, %5081
  %6619 = fmul fast float %6616, %5081
  %6620 = fmul fast float %6617, %5081
  %6621 = fadd fast float %6618, 1.000000e+00
  %6622 = fadd fast float %6619, 1.000000e+00
  %6623 = fadd fast float %6620, 1.000000e+00
  %6624 = fmul fast float %5716, 0x401CF23780000000
  %6625 = fadd fast float %6624, 0x3FF32641C0000000
  %6626 = fdiv fast float 1.000000e+00, %6625
  %6627 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5710, float %5709, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6628 = fmul fast float %6626, %6626
  %6629 = fmul fast float %6627, %6627
  %6630 = fsub fast float 1.000000e+00, %6629
  %6631 = fmul fast float %6628, %6630
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = fcmp fast oge float %6632, 0.000000e+00
  %6634 = fmul fast float %6626, %5711
  %6635 = fmul fast float %6626, %5710
  %6636 = fmul fast float %6626, %5709
  %6637 = call float @dx.op.unary.f32(i32 24, float %6632)  ; Sqrt(value)
  %6638 = fmul fast float %6627, %6626
  %6639 = fadd fast float %6638, %6637
  %6640 = fmul fast float %6639, %5721
  %6641 = fmul fast float %6639, %5722
  %6642 = fmul fast float %6639, %5723
  %6643 = fsub fast float %6634, %6640
  %6644 = fsub fast float %6635, %6641
  %6645 = fsub fast float %6636, %6642
  %6646 = select i1 %6633, float %6643, float 0.000000e+00
  %6647 = select i1 %6633, float %6644, float 0.000000e+00
  %6648 = select i1 %6633, float %6645, float 0.000000e+00
  %6649 = fmul fast float %6646, %4432
  %6650 = fmul fast float %6647, %4432
  %6651 = fmul fast float %6648, %4432
  %6652 = fadd fast float %6649, %5758
  %6653 = fadd fast float %6650, %5759
  %6654 = fadd fast float %6651, %5760
  %6655 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6656 = fmul fast float %5778, %5081
  %6657 = fsub fast float 1.000000e+00, %6656
  %6658 = call float @dx.op.unary.f32(i32 7, float %6657)  ; Saturate(value)
  %6659 = fsub fast float 1.000000e+00, %6658
  %6660 = fmul fast float %5716, 0x4012D0A400000000
  %6661 = fadd fast float %6660, 0x3FDB6377A0000000
  %6662 = fmul fast float %6659, %6661
  %6663 = fadd fast float %6662, %6655
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = fmul fast float %6570, %6075
  %6666 = fmul fast float %6571, %6076
  %6667 = fmul fast float %6572, %6077
  %6668 = fsub fast float 1.000000e+00, %5763
  %6669 = bitcast float %6668 to i32
  %6670 = sitofp i32 %6669 to float
  %6671 = fmul fast float %6670, 5.000000e+00
  %6672 = fadd fast float %6671, 0xC1EFBF8940000000
  %6673 = fptosi float %6672 to i32
  %6674 = bitcast i32 %6673 to float
  %6675 = fmul fast float %6674, %5085
  %6676 = fmul fast float %6016, %6675
  %6677 = fmul fast float %6676, %6080
  %6678 = fmul fast float %6677, %6589
  %6679 = fmul fast float %6017, %6675
  %6680 = fmul fast float %6679, %6080
  %6681 = fmul fast float %6680, %6590
  %6682 = fmul fast float %6018, %6675
  %6683 = fmul fast float %6682, %6080
  %6684 = fmul fast float %6683, %6591
  %6685 = fmul fast float %6573, %5081
  %6686 = fmul fast float %6574, %5081
  %6687 = fmul fast float %6575, %5081
  %6688 = fsub fast float 1.000000e+00, %6664
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = extractvalue %dx.types.CBufRet.f32 %6694, 3
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.CBufRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.CBufRet.f32 %6699, 3
  %6704 = fmul fast float %6652, %6690
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6691, float %6704)  ; FMad(a,b,c)
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6654, float %6692, float %6705)  ; FMad(a,b,c)
  %6707 = fadd fast float %6706, %6693
  %6708 = fmul fast float %6652, %6695
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6696, float %6708)  ; FMad(a,b,c)
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6654, float %6697, float %6709)  ; FMad(a,b,c)
  %6711 = fadd fast float %6710, %6698
  %6712 = fmul fast float %6652, %6700
  %6713 = call float @dx.op.tertiary.f32(i32 46, float %6653, float %6701, float %6712)  ; FMad(a,b,c)
  %6714 = call float @dx.op.tertiary.f32(i32 46, float %6654, float %6702, float %6713)  ; FMad(a,b,c)
  %6715 = fadd fast float %6714, %6703
  %6716 = fdiv fast float %6707, %6715
  %6717 = fdiv fast float %6711, %6715
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = fmul fast float %6719, %6716
  %6722 = fmul fast float %6720, %6717
  %6723 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6724 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6725 = fadd fast float %6721, %6723
  %6726 = fadd fast float %6722, %6724
  %6727 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  %6729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6729, 0
  %6731 = extractvalue %dx.types.CBufRet.f32 %6729, 1
  %6732 = fmul fast float %6730, %6727
  %6733 = fmul fast float %6731, %6728
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6737 = fsub fast float %6735, %6736
  %6738 = fmul fast float %6737, %6688
  %6739 = fadd fast float %6738, %6736
  %6740 = fmul fast float %241, 2.000000e+00
  %6741 = fmul fast float %242, 2.000000e+00
  %6742 = fadd fast float %6740, -1.000000e+00
  %6743 = fadd fast float %6741, -1.000000e+00
  %6744 = fmul fast float %6739, %6742
  %6745 = fmul fast float %6739, %6743
  %6746 = fadd fast float %6744, %6732
  %6747 = fadd fast float %6745, %6733
  %6748 = extractvalue %dx.types.CBufRet.f32 %6729, 2
  %6749 = extractvalue %dx.types.CBufRet.f32 %6729, 3
  %6750 = fmul fast float %6746, %6748
  %6751 = fmul fast float %6747, %6749
  %6752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %57, float %6750, float %6751, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6753 = extractvalue %dx.types.ResRet.f32 %6752, 0
  %6754 = fcmp fast ogt float %6753, -1.000000e+00
  %6755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6756 = extractvalue %dx.types.CBufRet.f32 %6755, 1
  %6757 = select i1 %6754, float %6756, float 1.000000e+00
  %6758 = fadd fast float %6753, 1.000000e+00
  %6759 = fmul fast float %6757, %6758
  %6760 = call float @dx.op.unary.f32(i32 6, float %6759)  ; FAbs(value)
  %6761 = fsub fast float %6760, %6715
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %6764 = fmul fast float %6763, %6760
  %6765 = fdiv fast float 1.600000e+02, %6764
  %6766 = fmul fast float %6664, %6664
  %6767 = fmul fast float %6766, 0xBFB5B17960000000
  %6768 = fmul fast float %6767, %6761
  %6769 = fmul fast float %6768, %6765
  %6770 = call float @dx.op.unary.f32(i32 21, float %6769)  ; Exp(value)
  %6771 = fmul fast float %6770, 0x3FF04B2960000000
  %6772 = fsub fast float 0x3FF04B2960000000, %6771
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = fmul fast float %6773, 4.000000e+00
  %6775 = fadd fast float %241, -5.000000e-01
  %6776 = fadd fast float %242, -5.000000e-01
  %6777 = fmul fast float %6773, 0x3FBEB851E0000000
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = fmul fast float %6778, %6775
  %6780 = fmul fast float %6778, %6776
  %6781 = fadd fast float %6779, %6725
  %6782 = fadd fast float %6780, %6726
  %6783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.i32 %6783, 0
  %6785 = icmp eq i32 %6784, 0
  br i1 %6785, label %6791, label %6786, !dx.controlflow.hints !105

; <label>:6786                                    ; preds = %6569
  %6787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %52, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float %6774)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6788 = extractvalue %dx.types.ResRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.ResRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.ResRet.f32 %6787, 2
  br label %6796

; <label>:6791                                    ; preds = %6569
  %6792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %6781, float %6782, float undef, float undef, i32 0, i32 0, i32 undef, float %6774)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6793 = extractvalue %dx.types.ResRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.ResRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.ResRet.f32 %6792, 2
  br label %6796

; <label>:6796                                    ; preds = %6791, %6786
  %6797 = phi float [ %6788, %6786 ], [ %6793, %6791 ]
  %6798 = phi float [ %6789, %6786 ], [ %6794, %6791 ]
  %6799 = phi float [ %6790, %6786 ], [ %6795, %6791 ]
  %6800 = select i1 %228, float 0.000000e+00, float %6798
  %6801 = select i1 %228, float 0.000000e+00, float %6799
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6804 = fmul fast float %6797, %6621
  %6805 = fmul fast float %6804, %6803
  %6806 = fmul fast float %6800, %6622
  %6807 = fmul fast float %6806, %6803
  %6808 = fmul fast float %6801, %6623
  %6809 = fmul fast float %6808, %6803
  %6810 = fadd fast float %6665, %5068
  %6811 = fadd fast float %6810, %6678
  %6812 = fadd fast float %6811, %6805
  %6813 = fmul fast float %6812, %5081
  %6814 = fadd fast float %6666, %5069
  %6815 = fadd fast float %6814, %6681
  %6816 = fadd fast float %6815, %6807
  %6817 = fmul fast float %6816, %5081
  %6818 = fadd fast float %6667, %5070
  %6819 = fadd fast float %6818, %6684
  %6820 = fadd fast float %6819, %6809
  %6821 = fmul fast float %6820, %5081
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6824 = fcmp fast oeq float %6823, 0.000000e+00
  br i1 %6824, label %8502, label %6825

; <label>:6825                                    ; preds = %6796
  %6826 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = call float @dx.op.dot3.f32(i32 55, float %6830, float %6831, float %6832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6837 = select i1 %228, float %6834, float %6830
  %6838 = select i1 %228, float %6836, float %6831
  %6839 = select i1 %228, float %6835, float %6832
  %6840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6841 = extractvalue %dx.types.CBufRet.f32 %6840, 2
  %6842 = fmul fast float %6841, %118
  %6843 = fmul fast float %6841, %119
  %6844 = fmul fast float %6841, %120
  %6845 = fadd fast float %6842, %166
  %6846 = fadd fast float %6843, %167
  %6847 = fadd fast float %6844, %168
  %6848 = fcmp fast olt float %6823, 0.000000e+00
  br i1 %6848, label %7944, label %6849

; <label>:6849                                    ; preds = %6825
  %6850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6851 = extractvalue %dx.types.CBufRet.f32 %6850, 0
  %6852 = extractvalue %dx.types.CBufRet.f32 %6850, 1
  %6853 = extractvalue %dx.types.CBufRet.f32 %6850, 2
  %6854 = extractvalue %dx.types.CBufRet.f32 %6850, 3
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = extractvalue %dx.types.CBufRet.f32 %6855, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6855, 2
  %6859 = extractvalue %dx.types.CBufRet.f32 %6855, 3
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6863 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6864 = extractvalue %dx.types.CBufRet.f32 %6860, 3
  %6865 = fmul fast float %6851, %6845
  %6866 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6852, float %6865)  ; FMad(a,b,c)
  %6867 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %6853, float %6866)  ; FMad(a,b,c)
  %6868 = fadd fast float %6867, %6854
  %6869 = fmul fast float %6856, %6845
  %6870 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6857, float %6869)  ; FMad(a,b,c)
  %6871 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %6858, float %6870)  ; FMad(a,b,c)
  %6872 = fadd fast float %6871, %6859
  %6873 = fmul fast float %6861, %6845
  %6874 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %6862, float %6873)  ; FMad(a,b,c)
  %6875 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %6863, float %6874)  ; FMad(a,b,c)
  %6876 = fadd fast float %6875, %6864
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6881 = fmul fast float %6880, %6868
  %6882 = fmul fast float %6880, %6872
  %6883 = fadd fast float %6881, %6878
  %6884 = fadd fast float %6882, %6879
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6889 = fmul fast float %6888, %6868
  %6890 = fmul fast float %6888, %6872
  %6891 = fadd fast float %6889, %6886
  %6892 = fadd fast float %6890, %6887
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6895 = fsub fast float %6894, %6876
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = fmul fast float %6895, %6896
  %6898 = fsub fast float 1.000000e+00, %6897
  %6899 = call float @dx.op.unary.f32(i32 7, float %6898)  ; Saturate(value)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6903 = fadd fast float %6902, %6900
  %6904 = fcmp fast ogt float %6903, 0.000000e+00
  br i1 %6904, label %6905, label %6929

; <label>:6905                                    ; preds = %6849
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6909 = fsub fast float %6891, %6907
  %6910 = fsub fast float %6892, %6908
  %6911 = fcmp fast olt float %6909, 0.000000e+00
  %6912 = fcmp fast olt float %6910, 0.000000e+00
  %6913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6914 = extractvalue %dx.types.CBufRet.f32 %6913, 0
  %6915 = extractvalue %dx.types.CBufRet.f32 %6913, 1
  %6916 = extractvalue %dx.types.CBufRet.f32 %6913, 2
  %6917 = extractvalue %dx.types.CBufRet.f32 %6913, 3
  %6918 = select i1 %6911, float %6914, float %6916
  %6919 = select i1 %6912, float %6915, float %6917
  %6920 = fmul fast float %6918, %6909
  %6921 = fmul fast float %6919, %6910
  %6922 = call float @dx.op.unary.f32(i32 6, float %6920)  ; FAbs(value)
  %6923 = call float @dx.op.unary.f32(i32 6, float %6921)  ; FAbs(value)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6840, 0
  %6925 = call float @dx.op.binary.f32(i32 35, float %6922, float %6923)  ; FMax(a,b)
  %6926 = fsub fast float %6924, %6925
  %6927 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6928 = fmul fast float %6927, %6899
  br label %6929

; <label>:6929                                    ; preds = %6905, %6849
  %6930 = phi float [ %6928, %6905 ], [ 0.000000e+00, %6849 ]
  %6931 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6933 = fadd fast float %6932, %6931
  %6934 = fcmp fast ogt float %6933, 0.000000e+00
  %6935 = extractvalue %dx.types.CBufRet.f32 %6840, 0
  br i1 %6934, label %6936, label %6959

; <label>:6936                                    ; preds = %6929
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = fsub fast float %6883, %6938
  %6941 = fsub fast float %6884, %6939
  %6942 = fcmp fast olt float %6940, 0.000000e+00
  %6943 = fcmp fast olt float %6941, 0.000000e+00
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6949 = select i1 %6942, float %6945, float %6947
  %6950 = select i1 %6943, float %6946, float %6948
  %6951 = fmul fast float %6949, %6940
  %6952 = fmul fast float %6950, %6941
  %6953 = call float @dx.op.unary.f32(i32 6, float %6951)  ; FAbs(value)
  %6954 = call float @dx.op.unary.f32(i32 6, float %6952)  ; FAbs(value)
  %6955 = call float @dx.op.binary.f32(i32 35, float %6953, float %6954)  ; FMax(a,b)
  %6956 = fsub fast float %6935, %6955
  %6957 = call float @dx.op.unary.f32(i32 7, float %6956)  ; Saturate(value)
  %6958 = fmul fast float %6957, %6899
  br label %6959

; <label>:6959                                    ; preds = %6936, %6929
  %6960 = phi float [ %6958, %6936 ], [ 0.000000e+00, %6929 ]
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 1
  %6963 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6967 = fsub fast float %6868, %6965
  %6968 = fsub fast float %6872, %6966
  %6969 = fcmp fast olt float %6967, 0.000000e+00
  %6970 = fcmp fast olt float %6968, 0.000000e+00
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.CBufRet.f32 %6971, 3
  %6976 = select i1 %6969, float %6972, float %6974
  %6977 = select i1 %6970, float %6973, float %6975
  %6978 = fmul fast float %6976, %6967
  %6979 = fmul fast float %6977, %6968
  %6980 = call float @dx.op.unary.f32(i32 6, float %6978)  ; FAbs(value)
  %6981 = call float @dx.op.unary.f32(i32 6, float %6979)  ; FAbs(value)
  %6982 = call float @dx.op.binary.f32(i32 35, float %6980, float %6981)  ; FMax(a,b)
  %6983 = fsub fast float %6935, %6982
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = call float @dx.op.binary.f32(i32 36, float %6984, float %6963)  ; FMin(a,b)
  %6986 = fmul fast float %6985, %6899
  %6987 = fsub fast float %6960, %6986
  %6988 = fsub fast float %6930, %6960
  %6989 = fsub fast float %6988, %6986
  %6990 = call float @dx.op.binary.f32(i32 35, float %6960, float %6930)  ; FMax(a,b)
  %6991 = call float @dx.op.binary.f32(i32 35, float %6986, float %6990)  ; FMax(a,b)
  %6992 = fcmp fast olt float %6991, 1.000000e+00
  br i1 %6992, label %6993, label %7391, !dx.controlflow.hints !106

; <label>:6993                                    ; preds = %6959
  %6994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6994, 0
  %6996 = fcmp fast une float %6995, 0.000000e+00
  br i1 %6996, label %6997, label %7391, !dx.controlflow.hints !107

; <label>:6997                                    ; preds = %6993
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7002 = extractvalue %dx.types.CBufRet.f32 %6998, 3
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7007 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.CBufRet.f32 %7008, 1
  %7011 = extractvalue %dx.types.CBufRet.f32 %7008, 2
  %7012 = extractvalue %dx.types.CBufRet.f32 %7008, 3
  %7013 = fmul fast float %6999, %6845
  %7014 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7000, float %7013)  ; FMad(a,b,c)
  %7015 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7001, float %7014)  ; FMad(a,b,c)
  %7016 = fadd fast float %7015, %7002
  %7017 = fmul fast float %7004, %6845
  %7018 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7005, float %7017)  ; FMad(a,b,c)
  %7019 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7006, float %7018)  ; FMad(a,b,c)
  %7020 = fadd fast float %7019, %7007
  %7021 = fmul fast float %7009, %6845
  %7022 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7010, float %7021)  ; FMad(a,b,c)
  %7023 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7011, float %7022)  ; FMad(a,b,c)
  %7024 = fadd fast float %7023, %7012
  %7025 = fcmp fast oge float %7016, 1.000000e+00
  %7026 = fcmp fast oge float %7020, 1.000000e+00
  %7027 = or i1 %7025, %7026
  %7028 = fcmp fast olt float %7016, 0.000000e+00
  %7029 = fcmp fast olt float %7020, 0.000000e+00
  %7030 = or i1 %7028, %7029
  %7031 = or i1 %7027, %7030
  br i1 %7031, label %7391, label %7032, !dx.controlflow.hints !108

; <label>:7032                                    ; preds = %6997
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.i32 %7037, 2
  %7039 = uitofp i32 %7038 to float
  %7040 = extractvalue %dx.types.CBufRet.i32 %7037, 3
  %7041 = uitofp i32 %7040 to float
  %7042 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7043 = fmul fast float %7042, 2.000000e+00
  %7044 = fsub fast float %7016, %7034
  %7045 = fsub fast float %7020, %7035
  %7046 = fmul fast float %7043, %7044
  %7047 = fmul fast float %7043, %7045
  %7048 = fdiv fast float 1.000000e+00, %6828
  %7049 = fmul fast float %7047, %7048
  %7050 = call float @dx.op.unary.f32(i32 6, float %7049)  ; FAbs(value)
  %7051 = fmul fast float %7036, %6847
  %7052 = fmul fast float %7051, %7043
  %7053 = call float @dx.op.unary.f32(i32 6, float %7052)  ; FAbs(value)
  %7054 = call float @dx.op.unary.f32(i32 6, float %7046)  ; FAbs(value)
  %7055 = call float @dx.op.binary.f32(i32 35, float %7053, float %7050)  ; FMax(a,b)
  %7056 = call float @dx.op.binary.f32(i32 35, float %7054, float %7055)  ; FMax(a,b)
  %7057 = fmul fast float %7056, 2.000000e+00
  %7058 = call float @dx.op.unary.f32(i32 23, float %7057)  ; Log(value)
  %7059 = call float @dx.op.binary.f32(i32 35, float %7058, float %7039)  ; FMax(a,b)
  %7060 = call float @dx.op.unary.f32(i32 22, float %7059)  ; Frc(value)
  %7061 = fadd fast float %7060, 0xBFEA666660000000
  %7062 = fmul fast float %7061, 8.000000e+00
  %7063 = call float @dx.op.unary.f32(i32 7, float %7062)  ; Saturate(value)
  %7064 = call float @dx.op.unary.f32(i32 27, float %7059)  ; Round_ni(value)
  %7065 = fadd fast float %7064, %7063
  %7066 = call float @dx.op.binary.f32(i32 36, float %7065, float %7041)  ; FMin(a,b)
  %7067 = call float @dx.op.unary.f32(i32 27, float %7066)  ; Round_ni(value)
  %7068 = fsub fast float -0.000000e+00, %7067
  %7069 = call float @dx.op.unary.f32(i32 21, float %7068)  ; Exp(value)
  %7070 = fmul fast float %7069, %7043
  %7071 = fmul fast float %7070, %7016
  %7072 = fmul fast float %7070, %7020
  %7073 = fmul fast float %7071, 2.500000e-01
  %7074 = fmul fast float %7072, 2.500000e-01
  %7075 = fadd fast float %7073, 5.000000e-01
  %7076 = fadd fast float %7074, 5.000000e-01
  %7077 = fsub fast float %7041, %7039
  %7078 = fptoui float %7077 to i32
  %7079 = add i32 %7078, 320
  %7080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %7079)  ; CBufferLoadLegacy(handle,regIndex)
  %7081 = extractvalue %dx.types.CBufRet.f32 %7080, 0
  %7082 = extractvalue %dx.types.CBufRet.f32 %7080, 1
  %7083 = fcmp fast une float %7066, %7041
  %7084 = fsub fast float %7016, %7081
  %7085 = fsub fast float %7020, %7082
  %7086 = call float @dx.op.unary.f32(i32 6, float %7084)  ; FAbs(value)
  %7087 = call float @dx.op.unary.f32(i32 6, float %7085)  ; FAbs(value)
  %7088 = fmul fast float %7086, %7070
  %7089 = fmul fast float %7087, %7070
  %7090 = fcmp fast olt float %7088, 1.000000e+00
  %7091 = fcmp fast olt float %7089, 1.000000e+00
  %7092 = and i1 %7090, %7091
  %7093 = or i1 %7083, %7092
  br i1 %7093, label %7094, label %7391, !dx.controlflow.hints !109

; <label>:7094                                    ; preds = %7032
  %7095 = fmul fast float %7072, 5.000000e-01
  %7096 = fmul fast float %7071, 5.000000e-01
  %7097 = fadd fast float %7095, 5.000000e-01
  %7098 = fadd fast float %7096, 5.000000e-01
  %7099 = sitofp i32 %7038 to float
  %7100 = fsub fast float %7066, %7099
  %7101 = call float @dx.op.unary.f32(i32 27, float %7100)  ; Round_ni(value)
  %7102 = call float @dx.op.unary.f32(i32 22, float %7066)  ; Frc(value)
  %7103 = call float @dx.op.unary.f32(i32 22, float %7098)  ; Frc(value)
  %7104 = call float @dx.op.unary.f32(i32 22, float %7097)  ; Frc(value)
  %7105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7103, float %7104, float %7101, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.ResRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.ResRet.f32 %7105, 2
  %7109 = extractvalue %dx.types.ResRet.f32 %7105, 3
  %7110 = fcmp fast ogt float %7102, 0.000000e+00
  br i1 %7110, label %7111, label %7132, !dx.controlflow.hints !110

; <label>:7111                                    ; preds = %7094
  %7112 = fadd fast float %7101, 1.000000e+00
  %7113 = call float @dx.op.unary.f32(i32 22, float %7075)  ; Frc(value)
  %7114 = call float @dx.op.unary.f32(i32 22, float %7076)  ; Frc(value)
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %55, float %7113, float %7114, float %7112, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7119 = extractvalue %dx.types.ResRet.f32 %7115, 3
  %7120 = fsub fast float %7116, %7106
  %7121 = fsub fast float %7117, %7107
  %7122 = fsub fast float %7118, %7108
  %7123 = fsub fast float %7119, %7109
  %7124 = fmul fast float %7120, %7102
  %7125 = fmul fast float %7121, %7102
  %7126 = fmul fast float %7122, %7102
  %7127 = fmul fast float %7123, %7102
  %7128 = fadd fast float %7124, %7106
  %7129 = fadd fast float %7125, %7107
  %7130 = fadd fast float %7126, %7108
  %7131 = fadd fast float %7127, %7109
  br label %7132

; <label>:7132                                    ; preds = %7111, %7094
  %7133 = phi float [ %7128, %7111 ], [ %7106, %7094 ]
  %7134 = phi float [ %7129, %7111 ], [ %7107, %7094 ]
  %7135 = phi float [ %7130, %7111 ], [ %7108, %7094 ]
  %7136 = phi float [ %7131, %7111 ], [ %7109, %7094 ]
  %7137 = fadd fast float %7133, -5.000000e-01
  %7138 = fadd fast float %7135, -5.000000e-01
  %7139 = fmul fast float %7137, 0xBFD5555560000000
  %7140 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7138, float %7139)  ; FMad(a,b,c)
  %7141 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7134, float 0.000000e+00)  ; FMad(a,b,c)
  %7142 = fadd fast float %7141, %7136
  %7143 = fmul fast float %7137, -7.500000e-01
  %7144 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7138, float %7143)  ; FMad(a,b,c)
  %7145 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7134, float 0.000000e+00)  ; FMad(a,b,c)
  %7146 = fadd fast float %7145, %7136
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.CBufRet.f32 %7149, 2
  %7153 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7154 = fsub fast float %7150, %7140
  %7155 = fsub fast float %7151, %7142
  %7156 = fsub fast float %7152, %7144
  %7157 = fsub fast float %7153, %7146
  %7158 = fmul fast float %7154, %7148
  %7159 = fmul fast float %7155, %7148
  %7160 = fmul fast float %7156, %7148
  %7161 = fmul fast float %7157, %7148
  %7162 = fadd fast float %7158, %7140
  %7163 = fadd fast float %7159, %7142
  %7164 = fadd fast float %7160, %7144
  %7165 = fadd fast float %7161, %7146
  %7166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7167 = extractvalue %dx.types.ResRet.i32 %7166, 0
  %7168 = and i32 %7167, 536870911
  %7169 = uitofp i32 %7168 to float
  %7170 = fmul fast float %7169, %7016
  %7171 = fmul fast float %7169, %7020
  %7172 = fptoui float %7170 to i32
  %7173 = fptoui float %7171 to i32
  %7174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7175 = extractvalue %dx.types.ResRet.i32 %7174, 0
  %7176 = and i32 %7175, 31
  %7177 = lshr i32 %7172, %7176
  %7178 = lshr i32 %7173, %7176
  %7179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7180 = extractvalue %dx.types.ResRet.i32 %7179, 0
  %7181 = and i32 %7180, 31
  %7182 = shl i32 1, %7181
  %7183 = call i32 @dx.op.binary.i32(i32 40, i32 %7182, i32 4)  ; UMin(a,b)
  %7184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7185 = extractvalue %dx.types.ResRet.i32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.i32 %7184, 1
  %7187 = icmp eq i32 %7183, 0
  br i1 %7187, label %7229, label %7188

; <label>:7188                                    ; preds = %7132
  br label %7189

; <label>:7189                                    ; preds = %7217, %7188
  %7190 = phi i32 [ %7220, %7217 ], [ 0, %7188 ]
  %7191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7192 = extractvalue %dx.types.ResRet.i32 %7191, 0
  %7193 = lshr i32 %7192, 16
  %7194 = and i32 %7193, 31
  %7195 = shl i32 %7178, %7194
  %7196 = add i32 %7195, %7177
  %7197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7198 = extractvalue %dx.types.ResRet.i32 %7197, 0
  %7199 = and i32 %7198, 31
  %7200 = shl i32 %7196, %7199
  %7201 = add i32 %7200, %7190
  %7202 = shl i32 %7201, 2
  %7203 = add i32 %7202, 32
  %7204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7203, i32 undef)  ; BufferLoad(srv,index,wot)
  %7205 = extractvalue %dx.types.ResRet.i32 %7204, 0
  %7206 = icmp slt i32 %7205, 0
  %7207 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7190
  %7208 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7190
  %7209 = bitcast float* %7207 to i32*
  %7210 = bitcast float* %7208 to i32*
  br i1 %7206, label %7211, label %7217

; <label>:7211                                    ; preds = %7189
  %7212 = and i32 %7205, 1073741823
  %7213 = add nuw nsw i32 %7212, 20
  %7214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7213, i32 undef)  ; BufferLoad(srv,index,wot)
  %7215 = extractvalue %dx.types.ResRet.i32 %7214, 0
  %7216 = extractvalue %dx.types.ResRet.i32 %7214, 1
  br label %7217

; <label>:7217                                    ; preds = %7211, %7189
  %7218 = phi i32 [ %7215, %7211 ], [ %7185, %7189 ]
  %7219 = phi i32 [ %7216, %7211 ], [ %7186, %7189 ]
  store i32 %7218, i32* %7209, align 4
  store i32 %7219, i32* %7210, align 4
  %7220 = add nuw i32 %7190, 1
  %7221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7222 = extractvalue %dx.types.CBufRet.i32 %7221, 2
  %7223 = icmp eq i32 %7222, 0
  %7224 = icmp ugt i32 %7205, -1073741825
  %7225 = and i1 %7224, %7223
  %7226 = icmp ult i32 %7220, %7183
  %7227 = and i1 %7225, %7226
  br i1 %7227, label %7189, label %7228

; <label>:7228                                    ; preds = %7217
  br label %7229

; <label>:7229                                    ; preds = %7228, %7132
  %7230 = phi i32 [ 0, %7132 ], [ %7220, %7228 ]
  %7231 = extractvalue %dx.types.CBufRet.f32 %6994, 2
  %7232 = fptoui float %7231 to i32
  %7233 = icmp eq i32 %7232, 0
  br i1 %7233, label %7285, label %7234

; <label>:7234                                    ; preds = %7229
  br label %7235

; <label>:7235                                    ; preds = %7280, %7234
  %7236 = phi i32 [ %7281, %7280 ], [ %7230, %7234 ]
  %7237 = phi i32 [ %7282, %7280 ], [ 0, %7234 ]
  %7238 = lshr i32 %7237, 2
  %7239 = and i32 %7237, 3
  %7240 = add nuw nsw i32 %7238, 83
  %7241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %7240)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.i32 %7241, 0
  %7243 = extractvalue %dx.types.CBufRet.i32 %7241, 1
  %7244 = extractvalue %dx.types.CBufRet.i32 %7241, 2
  %7245 = extractvalue %dx.types.CBufRet.i32 %7241, 3
  %7246 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %7242, i32* %7246, align 4
  %7247 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %7243, i32* %7247, align 4
  %7248 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %7244, i32* %7248, align 4
  %7249 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %7245, i32* %7249, align 4
  %7250 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %7239
  %7251 = load i32, i32* %7250, align 4, !tbaa !111, !noalias !115
  %7252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7253 = extractvalue %dx.types.ResRet.i32 %7252, 0
  %7254 = lshr i32 %7253, 16
  %7255 = and i32 %7254, 31
  %7256 = shl i32 %7178, %7255
  %7257 = add i32 %7256, %7177
  %7258 = shl i32 %7257, 2
  %7259 = add i32 %7258, %7251
  %7260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7259, i32 undef)  ; BufferLoad(srv,index,wot)
  %7261 = extractvalue %dx.types.ResRet.i32 %7260, 0
  %7262 = icmp eq i32 %7261, 0
  br i1 %7262, label %7280, label %7263

; <label>:7263                                    ; preds = %7235
  %7264 = icmp slt i32 %7261, 0
  %7265 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7236
  %7266 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7236
  %7267 = bitcast float* %7265 to i32*
  %7268 = bitcast float* %7266 to i32*
  br i1 %7264, label %7269, label %7276

; <label>:7269                                    ; preds = %7263
  %7270 = and i32 %7261, 1073741823
  %7271 = add i32 %7251, 20
  %7272 = add i32 %7271, %7270
  %7273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7272, i32 undef)  ; BufferLoad(srv,index,wot)
  %7274 = extractvalue %dx.types.ResRet.i32 %7273, 0
  %7275 = extractvalue %dx.types.ResRet.i32 %7273, 1
  br label %7276

; <label>:7276                                    ; preds = %7269, %7263
  %7277 = phi i32 [ %7274, %7269 ], [ %7185, %7263 ]
  %7278 = phi i32 [ %7275, %7269 ], [ %7186, %7263 ]
  store i32 %7277, i32* %7267, align 4
  store i32 %7278, i32* %7268, align 4
  %7279 = add i32 %7236, 1
  br label %7280

; <label>:7280                                    ; preds = %7276, %7235
  %7281 = phi i32 [ %7236, %7235 ], [ %7279, %7276 ]
  %7282 = add nuw i32 %7237, 1
  %7283 = icmp eq i32 %7282, %7232
  br i1 %7283, label %7284, label %7235

; <label>:7284                                    ; preds = %7280
  br label %7285

; <label>:7285                                    ; preds = %7284, %7229
  %7286 = phi i32 [ %7230, %7229 ], [ %7281, %7284 ]
  %7287 = icmp eq i32 %7286, 1
  %7288 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7289 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7287, label %7290, label %7293

; <label>:7290                                    ; preds = %7285
  %7291 = load float, float* %7288, align 4
  %7292 = load float, float* %7289, align 4
  br label %7320

; <label>:7293                                    ; preds = %7285
  %7294 = load float, float* %7288, align 4
  %7295 = load float, float* %7289, align 4
  %7296 = fdiv fast float 1.000000e+00, %7295
  %7297 = fsub fast float %7294, %7296
  %7298 = icmp ugt i32 %7286, 1
  br i1 %7298, label %7299, label %7315

; <label>:7299                                    ; preds = %7293
  br label %7300

; <label>:7300                                    ; preds = %7300, %7299
  %7301 = phi float [ %7310, %7300 ], [ %7297, %7299 ]
  %7302 = phi float [ %7311, %7300 ], [ %7294, %7299 ]
  %7303 = phi i32 [ %7312, %7300 ], [ 1, %7299 ]
  %7304 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7303
  %7305 = load float, float* %7304, align 4
  %7306 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7303
  %7307 = load float, float* %7306, align 4
  %7308 = fdiv fast float 1.000000e+00, %7307
  %7309 = fsub fast float %7305, %7308
  %7310 = call float @dx.op.binary.f32(i32 36, float %7301, float %7309)  ; FMin(a,b)
  %7311 = call float @dx.op.binary.f32(i32 35, float %7302, float %7305)  ; FMax(a,b)
  %7312 = add nuw i32 %7303, 1
  %7313 = icmp eq i32 %7312, %7286
  br i1 %7313, label %7314, label %7300

; <label>:7314                                    ; preds = %7300
  br label %7315

; <label>:7315                                    ; preds = %7314, %7293
  %7316 = phi float [ %7297, %7293 ], [ %7310, %7314 ]
  %7317 = phi float [ %7294, %7293 ], [ %7311, %7314 ]
  %7318 = fsub fast float %7317, %7316
  %7319 = fdiv fast float 1.000000e+00, %7318
  br label %7320

; <label>:7320                                    ; preds = %7315, %7290
  %7321 = phi float [ %7291, %7290 ], [ %7317, %7315 ]
  %7322 = phi float [ %7292, %7290 ], [ %7319, %7315 ]
  %7323 = fadd fast float %7024, %7321
  %7324 = fmul fast float %7323, %7322
  %7325 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7326 = fmul fast float %7325, 2.000000e+00
  %7327 = fsub fast float 1.000000e+00, %7326
  %7328 = fmul fast float %7162, %7162
  %7329 = fsub fast float %7163, %7328
  %7330 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7329)  ; FMax(a,b)
  %7331 = fdiv fast float 1.000000e+00, %7330
  %7332 = fmul fast float %7163, %7162
  %7333 = fsub fast float %7164, %7332
  %7334 = fsub fast float %7327, %7162
  %7335 = fmul fast float %7327, %7327
  %7336 = fsub fast float %7335, %7163
  %7337 = fmul fast float %7331, %7333
  %7338 = fmul fast float %7337, %7334
  %7339 = fsub fast float %7336, %7338
  %7340 = fmul fast float %7163, %7163
  %7341 = fsub fast float %7165, %7340
  %7342 = fmul fast float %7333, %7333
  %7343 = fmul fast float %7342, %7331
  %7344 = fsub fast float %7341, %7343
  %7345 = fdiv fast float %7339, %7344
  %7346 = fmul fast float %7345, %7333
  %7347 = fsub fast float %7334, %7346
  %7348 = fmul fast float %7347, %7331
  %7349 = fmul fast float %7348, %7162
  %7350 = fsub fast float 1.000000e+00, %7349
  %7351 = fmul fast float %7345, %7163
  %7352 = fsub fast float %7350, %7351
  %7353 = fmul fast float %7348, %7348
  %7354 = fmul fast float %7345, 4.000000e+00
  %7355 = fmul fast float %7354, %7352
  %7356 = fsub fast float %7353, %7355
  %7357 = call float @dx.op.unary.f32(i32 24, float %7356)  ; Sqrt(value)
  %7358 = fcmp fast oge float %7348, 0.000000e+00
  %7359 = fsub fast float -0.000000e+00, %7357
  %7360 = select i1 %7358, float %7359, float %7357
  %7361 = fsub fast float %7360, %7348
  %7362 = fdiv fast float %7361, %7345
  %7363 = fdiv fast float %7352, %7361
  %7364 = fmul fast float %7362, 5.000000e-01
  %7365 = fmul fast float %7363, 2.000000e+00
  %7366 = select i1 %7358, float %7364, float %7365
  %7367 = select i1 %7358, float %7365, float %7364
  %7368 = call float @dx.op.binary.f32(i32 35, float %7366, float %7367)  ; FMax(a,b)
  %7369 = call float @dx.op.binary.f32(i32 36, float %7366, float %7367)  ; FMin(a,b)
  %7370 = fcmp fast ogt float %7327, %7368
  %7371 = fsub fast float %7327, %7369
  %7372 = fsub fast float %7327, %7368
  %7373 = fsub fast float %7368, %7369
  %7374 = select i1 %7370, float %7372, float %7373
  %7375 = fmul float %7371, %7374
  %7376 = select i1 %7370, float %7369, float %7327
  %7377 = fcmp fast ogt float %7327, %7369
  %7378 = fmul fast float %7376, %7368
  %7379 = fadd fast float %7376, %7368
  %7380 = fmul fast float %7379, %7162
  %7381 = fadd fast float %7378, %7163
  %7382 = fsub fast float %7381, %7380
  %7383 = fdiv fast float %7382, %7375
  %7384 = select i1 %7377, float %7383, float 0.000000e+00
  %7385 = fsub fast float 1.000000e+00, %7384
  %7386 = select i1 %7370, float %7385, float %7384
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7147, 3
  %7389 = fmul fast float %7388, %7387
  %7390 = fsub fast float 1.000000e+00, %7389
  br label %7391

; <label>:7391                                    ; preds = %7320, %7032, %6997, %6993, %6959
  %7392 = phi float [ 1.000000e+00, %6959 ], [ %7390, %7320 ], [ 1.000000e+00, %6997 ], [ 1.000000e+00, %7032 ], [ 1.000000e+00, %6993 ]
  %7393 = fcmp fast ogt float %6989, 0.000000e+00
  br i1 %7393, label %7394, label %7556, !dx.controlflow.hints !124

; <label>:7394                                    ; preds = %7391
  %7395 = fadd fast float %6902, %6876
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 2
  %7398 = extractvalue %dx.types.CBufRet.f32 %7396, 3
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7401 = call float @dx.op.binary.f32(i32 35, float %7395, float 0.000000e+00)  ; FMax(a,b)
  %7402 = fadd fast float %7401, 0x3F10000000000000
  %7403 = fcmp fast oeq float %7400, 0.000000e+00
  br i1 %7403, label %7404, label %7471

; <label>:7404                                    ; preds = %7394
  %7405 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7396, 0
  %7407 = fmul fast float %7406, %6891
  %7408 = fmul fast float %7405, %6892
  %7409 = fadd fast float %7407, 5.000000e-01
  %7410 = call float @dx.op.unary.f32(i32 27, float %7409)  ; Round_ni(value)
  %7411 = fadd fast float %7408, 5.000000e-01
  %7412 = call float @dx.op.unary.f32(i32 27, float %7411)  ; Round_ni(value)
  %7413 = fsub fast float %7409, %7410
  %7414 = fsub fast float %7411, %7412
  %7415 = fadd fast float %7410, -5.000000e-01
  %7416 = fadd fast float %7412, -5.000000e-01
  %7417 = fmul fast float %7413, 2.000000e+00
  %7418 = fsub fast float 3.000000e+00, %7417
  %7419 = fadd fast float %7417, 1.000000e+00
  %7420 = fsub fast float 2.000000e+00, %7413
  %7421 = bitcast float %7418 to i32
  %7422 = sub nsw i32 2129859010, %7421
  %7423 = bitcast i32 %7422 to float
  %7424 = fmul fast float %7423, %7420
  %7425 = fadd fast float %7424, -1.000000e+00
  %7426 = bitcast float %7419 to i32
  %7427 = sub nsw i32 2129859010, %7426
  %7428 = bitcast i32 %7427 to float
  %7429 = fmul fast float %7428, %7413
  %7430 = fadd fast float %7429, 1.000000e+00
  %7431 = fmul fast float %7414, 2.000000e+00
  %7432 = fsub fast float 3.000000e+00, %7431
  %7433 = fadd fast float %7431, 1.000000e+00
  %7434 = fsub fast float 2.000000e+00, %7414
  %7435 = bitcast float %7432 to i32
  %7436 = sub nsw i32 2129859010, %7435
  %7437 = bitcast i32 %7436 to float
  %7438 = fmul fast float %7437, %7434
  %7439 = fadd fast float %7438, -1.000000e+00
  %7440 = bitcast float %7433 to i32
  %7441 = sub nsw i32 2129859010, %7440
  %7442 = bitcast i32 %7441 to float
  %7443 = fmul fast float %7442, %7414
  %7444 = fadd fast float %7443, 1.000000e+00
  %7445 = fadd fast float %7425, %7415
  %7446 = fmul fast float %7445, %7397
  %7447 = fadd fast float %7439, %7416
  %7448 = fmul fast float %7447, %7398
  %7449 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7446, float %7448, float undef, float undef, i32 0, i32 0, i32 undef, float %7402)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7450 = extractvalue %dx.types.ResRet.f32 %7449, 0
  %7451 = fmul fast float %7450, %7418
  %7452 = fadd fast float %7430, %7415
  %7453 = fmul fast float %7452, %7397
  %7454 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7453, float %7448, float undef, float undef, i32 0, i32 0, i32 undef, float %7402)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7455 = extractvalue %dx.types.ResRet.f32 %7454, 0
  %7456 = fmul fast float %7455, %7419
  %7457 = fadd fast float %7444, %7416
  %7458 = fmul fast float %7457, %7398
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7446, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float %7402)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = fmul fast float %7460, %7418
  %7462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %58, float %7453, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float %7402)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = fmul fast float %7463, %7419
  %7465 = fadd fast float %7464, %7461
  %7466 = fmul fast float %7465, %7433
  %7467 = fadd fast float %7456, %7451
  %7468 = fmul fast float %7467, %7432
  %7469 = fadd fast float %7468, %7466
  %7470 = fmul fast float %7469, 6.250000e-02
  br label %7556

; <label>:7471                                    ; preds = %7394
  %7472 = fmul fast float %241, 0x401921FB60000000
  %7473 = call float @dx.op.unary.f32(i32 13, float %7472)  ; Sin(value)
  %7474 = call float @dx.op.unary.f32(i32 12, float %7472)  ; Cos(value)
  %7475 = fsub fast float -0.000000e+00, %7473
  br label %7476

; <label>:7476                                    ; preds = %7525, %7471
  %7477 = phi float [ 0.000000e+00, %7471 ], [ %7520, %7525 ]
  %7478 = phi float [ 0.000000e+00, %7471 ], [ %7522, %7525 ]
  %7479 = phi i32 [ 0, %7471 ], [ %7526, %7525 ]
  %7480 = mul i32 %7479, 2
  %7481 = add i32 0, %7480
  %7482 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7481
  %7483 = load float, float* %7482, align 4
  %7484 = mul i32 %7479, 2
  %7485 = add i32 1, %7484
  %7486 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7485
  %7487 = load float, float* %7486, align 4
  %7488 = fmul fast float %7483, %7474
  %7489 = call float @dx.op.tertiary.f32(i32 46, float %7487, float %7475, float %7488)  ; FMad(a,b,c)
  %7490 = fmul fast float %7483, %7473
  %7491 = call float @dx.op.tertiary.f32(i32 46, float %7487, float %7474, float %7490)  ; FMad(a,b,c)
  %7492 = fmul fast float %7489, %7400
  %7493 = fmul fast float %7491, %7400
  %7494 = fadd fast float %7492, %6891
  %7495 = fadd fast float %7493, %6892
  %7496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %57, float %7494, float %7495, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.ResRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.ResRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.ResRet.f32 %7496, 3
  %7501 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7497, float* %7501, align 4
  %7502 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7498, float* %7502, align 4
  %7503 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7499, float* %7503, align 4
  %7504 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7500, float* %7504, align 4
  %7505 = fsub fast float %7497, %7402
  %7506 = fcmp fast olt float %7505, 0.000000e+00
  %7507 = select i1 %7506, float 0.000000e+00, float 1.000000e+00
  %7508 = fadd fast float %7507, %7477
  %7509 = fmul fast float %7507, %7505
  %7510 = fadd fast float %7509, %7478
  br label %7511

; <label>:7511                                    ; preds = %7511, %7476
  %7512 = phi i32 [ 1, %7476 ], [ %7523, %7511 ]
  %7513 = phi float [ %7510, %7476 ], [ %7522, %7511 ]
  %7514 = phi float [ %7508, %7476 ], [ %7520, %7511 ]
  %7515 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7512
  %7516 = load float, float* %7515, align 4, !tbaa !125, !noalias !115
  %7517 = fsub fast float %7516, %7402
  %7518 = fcmp fast olt float %7517, 0.000000e+00
  %7519 = select i1 %7518, float 0.000000e+00, float 1.000000e+00
  %7520 = fadd fast float %7519, %7514
  %7521 = fmul fast float %7519, %7517
  %7522 = fadd fast float %7521, %7513
  %7523 = add nuw nsw i32 %7512, 1
  %7524 = icmp eq i32 %7523, 4
  br i1 %7524, label %7525, label %7511, !llvm.loop !127

; <label>:7525                                    ; preds = %7511
  %7526 = add nuw nsw i32 %7479, 1
  %7527 = icmp eq i32 %7526, 8
  br i1 %7527, label %7528, label %7476, !llvm.loop !128

; <label>:7528                                    ; preds = %7525
  %7529 = fdiv fast float 1.000000e+00, %7520
  %7530 = fmul fast float %7529, %7522
  %7531 = fdiv fast float 1.000000e+00, %7402
  %7532 = fmul fast float %7530, %7531
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = call float @dx.op.binary.f32(i32 35, float %7533, float 0.000000e+00)  ; FMax(a,b)
  %7535 = fmul fast float %7520, 3.125000e-02
  %7536 = call float @dx.op.unary.f32(i32 7, float %7535)  ; Saturate(value)
  %7537 = fmul fast float %7536, 2.000000e+00
  %7538 = fadd fast float %7537, -1.000000e+00
  %7539 = fcmp fast ogt float %7538, 0.000000e+00
  %7540 = fcmp fast olt float %7538, 0.000000e+00
  %7541 = zext i1 %7539 to i32
  %7542 = zext i1 %7540 to i32
  %7543 = sub nsw i32 %7541, %7542
  %7544 = sitofp i32 %7543 to float
  %7545 = fmul fast float %7544, %7538
  %7546 = fsub fast float 1.000000e+00, %7545
  %7547 = fmul fast float %7546, %7546
  %7548 = fmul fast float %7547, %7546
  %7549 = fsub fast float %7546, %7548
  %7550 = fmul fast float %7549, %7534
  %7551 = fsub fast float 1.000000e+00, %7548
  %7552 = fsub fast float %7551, %7550
  %7553 = fmul fast float %7544, 5.000000e-01
  %7554 = fmul fast float %7553, %7552
  %7555 = fsub fast float 5.000000e-01, %7554
  br label %7556

; <label>:7556                                    ; preds = %7528, %7404, %7391
  %7557 = phi float [ 1.000000e+00, %7391 ], [ %7470, %7404 ], [ %7555, %7528 ]
  %7558 = fcmp fast ogt float %6987, 0.000000e+00
  br i1 %7558, label %7559, label %7723, !dx.controlflow.hints !129

; <label>:7559                                    ; preds = %7556
  %7560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.f32 %7560, 1
  %7562 = fadd fast float %7561, %6876
  %7563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.f32 %7563, 2
  %7565 = extractvalue %dx.types.CBufRet.f32 %7563, 3
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7568 = call float @dx.op.binary.f32(i32 35, float %7562, float 0.000000e+00)  ; FMax(a,b)
  %7569 = fadd fast float %7568, 0x3F10000000000000
  %7570 = fcmp fast oeq float %7567, 0.000000e+00
  br i1 %7570, label %7571, label %7638

; <label>:7571                                    ; preds = %7559
  %7572 = extractvalue %dx.types.CBufRet.f32 %7563, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7563, 0
  %7574 = fmul fast float %7573, %6883
  %7575 = fmul fast float %7572, %6884
  %7576 = fadd fast float %7574, 5.000000e-01
  %7577 = call float @dx.op.unary.f32(i32 27, float %7576)  ; Round_ni(value)
  %7578 = fadd fast float %7575, 5.000000e-01
  %7579 = call float @dx.op.unary.f32(i32 27, float %7578)  ; Round_ni(value)
  %7580 = fsub fast float %7576, %7577
  %7581 = fsub fast float %7578, %7579
  %7582 = fadd fast float %7577, -5.000000e-01
  %7583 = fadd fast float %7579, -5.000000e-01
  %7584 = fmul fast float %7580, 2.000000e+00
  %7585 = fsub fast float 3.000000e+00, %7584
  %7586 = fadd fast float %7584, 1.000000e+00
  %7587 = fsub fast float 2.000000e+00, %7580
  %7588 = bitcast float %7585 to i32
  %7589 = sub nsw i32 2129859010, %7588
  %7590 = bitcast i32 %7589 to float
  %7591 = fmul fast float %7590, %7587
  %7592 = fadd fast float %7591, -1.000000e+00
  %7593 = bitcast float %7586 to i32
  %7594 = sub nsw i32 2129859010, %7593
  %7595 = bitcast i32 %7594 to float
  %7596 = fmul fast float %7595, %7580
  %7597 = fadd fast float %7596, 1.000000e+00
  %7598 = fmul fast float %7581, 2.000000e+00
  %7599 = fsub fast float 3.000000e+00, %7598
  %7600 = fadd fast float %7598, 1.000000e+00
  %7601 = fsub fast float 2.000000e+00, %7581
  %7602 = bitcast float %7599 to i32
  %7603 = sub nsw i32 2129859010, %7602
  %7604 = bitcast i32 %7603 to float
  %7605 = fmul fast float %7604, %7601
  %7606 = fadd fast float %7605, -1.000000e+00
  %7607 = bitcast float %7600 to i32
  %7608 = sub nsw i32 2129859010, %7607
  %7609 = bitcast i32 %7608 to float
  %7610 = fmul fast float %7609, %7581
  %7611 = fadd fast float %7610, 1.000000e+00
  %7612 = fadd fast float %7592, %7582
  %7613 = fmul fast float %7612, %7564
  %7614 = fadd fast float %7606, %7583
  %7615 = fmul fast float %7614, %7565
  %7616 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7613, float %7615, float undef, float undef, i32 0, i32 0, i32 undef, float %7569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = fmul fast float %7617, %7585
  %7619 = fadd fast float %7597, %7582
  %7620 = fmul fast float %7619, %7564
  %7621 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7620, float %7615, float undef, float undef, i32 0, i32 0, i32 undef, float %7569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = fmul fast float %7622, %7586
  %7624 = fadd fast float %7611, %7583
  %7625 = fmul fast float %7624, %7565
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7613, float %7625, float undef, float undef, i32 0, i32 0, i32 undef, float %7569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = fmul fast float %7627, %7585
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %7620, float %7625, float undef, float undef, i32 0, i32 0, i32 undef, float %7569)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = fmul fast float %7630, %7586
  %7632 = fadd fast float %7631, %7628
  %7633 = fmul fast float %7632, %7600
  %7634 = fadd fast float %7623, %7618
  %7635 = fmul fast float %7634, %7599
  %7636 = fadd fast float %7635, %7633
  %7637 = fmul fast float %7636, 6.250000e-02
  br label %7723

; <label>:7638                                    ; preds = %7559
  %7639 = fmul fast float %241, 0x401921FB60000000
  %7640 = call float @dx.op.unary.f32(i32 13, float %7639)  ; Sin(value)
  %7641 = call float @dx.op.unary.f32(i32 12, float %7639)  ; Cos(value)
  %7642 = fsub fast float -0.000000e+00, %7640
  br label %7643

; <label>:7643                                    ; preds = %7692, %7638
  %7644 = phi float [ 0.000000e+00, %7638 ], [ %7687, %7692 ]
  %7645 = phi float [ 0.000000e+00, %7638 ], [ %7689, %7692 ]
  %7646 = phi i32 [ 0, %7638 ], [ %7693, %7692 ]
  %7647 = mul i32 %7646, 2
  %7648 = add i32 0, %7647
  %7649 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7648
  %7650 = load float, float* %7649, align 4
  %7651 = mul i32 %7646, 2
  %7652 = add i32 1, %7651
  %7653 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7652
  %7654 = load float, float* %7653, align 4
  %7655 = fmul fast float %7650, %7641
  %7656 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7642, float %7655)  ; FMad(a,b,c)
  %7657 = fmul fast float %7650, %7640
  %7658 = call float @dx.op.tertiary.f32(i32 46, float %7654, float %7641, float %7657)  ; FMad(a,b,c)
  %7659 = fmul fast float %7656, %7567
  %7660 = fmul fast float %7658, %7567
  %7661 = fadd fast float %7659, %6883
  %7662 = fadd fast float %7660, %6884
  %7663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %7661, float %7662, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.ResRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7663, 2
  %7667 = extractvalue %dx.types.ResRet.f32 %7663, 3
  %7668 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7664, float* %7668, align 4
  %7669 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7665, float* %7669, align 4
  %7670 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7666, float* %7670, align 4
  %7671 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7667, float* %7671, align 4
  %7672 = fsub fast float %7664, %7569
  %7673 = fcmp fast olt float %7672, 0.000000e+00
  %7674 = select i1 %7673, float 0.000000e+00, float 1.000000e+00
  %7675 = fadd fast float %7674, %7644
  %7676 = fmul fast float %7674, %7672
  %7677 = fadd fast float %7676, %7645
  br label %7678

; <label>:7678                                    ; preds = %7678, %7643
  %7679 = phi i32 [ 1, %7643 ], [ %7690, %7678 ]
  %7680 = phi float [ %7677, %7643 ], [ %7689, %7678 ]
  %7681 = phi float [ %7675, %7643 ], [ %7687, %7678 ]
  %7682 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7679
  %7683 = load float, float* %7682, align 4, !tbaa !125, !noalias !115
  %7684 = fsub fast float %7683, %7569
  %7685 = fcmp fast olt float %7684, 0.000000e+00
  %7686 = select i1 %7685, float 0.000000e+00, float 1.000000e+00
  %7687 = fadd fast float %7686, %7681
  %7688 = fmul fast float %7686, %7684
  %7689 = fadd fast float %7688, %7680
  %7690 = add nuw nsw i32 %7679, 1
  %7691 = icmp eq i32 %7690, 4
  br i1 %7691, label %7692, label %7678, !llvm.loop !127

; <label>:7692                                    ; preds = %7678
  %7693 = add nuw nsw i32 %7646, 1
  %7694 = icmp eq i32 %7693, 8
  br i1 %7694, label %7695, label %7643, !llvm.loop !128

; <label>:7695                                    ; preds = %7692
  %7696 = fdiv fast float 1.000000e+00, %7687
  %7697 = fmul fast float %7696, %7689
  %7698 = fdiv fast float 1.000000e+00, %7569
  %7699 = fmul fast float %7697, %7698
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = call float @dx.op.binary.f32(i32 35, float %7700, float 0.000000e+00)  ; FMax(a,b)
  %7702 = fmul fast float %7687, 3.125000e-02
  %7703 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7704 = fmul fast float %7703, 2.000000e+00
  %7705 = fadd fast float %7704, -1.000000e+00
  %7706 = fcmp fast ogt float %7705, 0.000000e+00
  %7707 = fcmp fast olt float %7705, 0.000000e+00
  %7708 = zext i1 %7706 to i32
  %7709 = zext i1 %7707 to i32
  %7710 = sub nsw i32 %7708, %7709
  %7711 = sitofp i32 %7710 to float
  %7712 = fmul fast float %7711, %7705
  %7713 = fsub fast float 1.000000e+00, %7712
  %7714 = fmul fast float %7713, %7713
  %7715 = fmul fast float %7714, %7713
  %7716 = fsub fast float %7713, %7715
  %7717 = fmul fast float %7716, %7701
  %7718 = fsub fast float 1.000000e+00, %7715
  %7719 = fsub fast float %7718, %7717
  %7720 = fmul fast float %7711, 5.000000e-01
  %7721 = fmul fast float %7720, %7719
  %7722 = fsub fast float 5.000000e-01, %7721
  br label %7723

; <label>:7723                                    ; preds = %7695, %7571, %7556
  %7724 = phi float [ 1.000000e+00, %7556 ], [ %7637, %7571 ], [ %7722, %7695 ]
  %7725 = fcmp fast ogt float %6986, 0.000000e+00
  br i1 %7725, label %7726, label %7890, !dx.controlflow.hints !130

; <label>:7726                                    ; preds = %7723
  %7727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7728 = extractvalue %dx.types.CBufRet.f32 %7727, 0
  %7729 = fadd fast float %7728, %6876
  %7730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7731 = extractvalue %dx.types.CBufRet.f32 %7730, 2
  %7732 = extractvalue %dx.types.CBufRet.f32 %7730, 3
  %7733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7734 = extractvalue %dx.types.CBufRet.f32 %7733, 0
  %7735 = call float @dx.op.binary.f32(i32 35, float %7729, float 0.000000e+00)  ; FMax(a,b)
  %7736 = fadd fast float %7735, 0x3F10000000000000
  %7737 = fcmp fast oeq float %7734, 0.000000e+00
  br i1 %7737, label %7738, label %7805

; <label>:7738                                    ; preds = %7726
  %7739 = extractvalue %dx.types.CBufRet.f32 %7730, 1
  %7740 = extractvalue %dx.types.CBufRet.f32 %7730, 0
  %7741 = fmul fast float %7740, %6868
  %7742 = fmul fast float %7739, %6872
  %7743 = fadd fast float %7741, 5.000000e-01
  %7744 = call float @dx.op.unary.f32(i32 27, float %7743)  ; Round_ni(value)
  %7745 = fadd fast float %7742, 5.000000e-01
  %7746 = call float @dx.op.unary.f32(i32 27, float %7745)  ; Round_ni(value)
  %7747 = fsub fast float %7743, %7744
  %7748 = fsub fast float %7745, %7746
  %7749 = fadd fast float %7744, -5.000000e-01
  %7750 = fadd fast float %7746, -5.000000e-01
  %7751 = fmul fast float %7747, 2.000000e+00
  %7752 = fsub fast float 3.000000e+00, %7751
  %7753 = fadd fast float %7751, 1.000000e+00
  %7754 = fsub fast float 2.000000e+00, %7747
  %7755 = bitcast float %7752 to i32
  %7756 = sub nsw i32 2129859010, %7755
  %7757 = bitcast i32 %7756 to float
  %7758 = fmul fast float %7757, %7754
  %7759 = fadd fast float %7758, -1.000000e+00
  %7760 = bitcast float %7753 to i32
  %7761 = sub nsw i32 2129859010, %7760
  %7762 = bitcast i32 %7761 to float
  %7763 = fmul fast float %7762, %7747
  %7764 = fadd fast float %7763, 1.000000e+00
  %7765 = fmul fast float %7748, 2.000000e+00
  %7766 = fsub fast float 3.000000e+00, %7765
  %7767 = fadd fast float %7765, 1.000000e+00
  %7768 = fsub fast float 2.000000e+00, %7748
  %7769 = bitcast float %7766 to i32
  %7770 = sub nsw i32 2129859010, %7769
  %7771 = bitcast i32 %7770 to float
  %7772 = fmul fast float %7771, %7768
  %7773 = fadd fast float %7772, -1.000000e+00
  %7774 = bitcast float %7767 to i32
  %7775 = sub nsw i32 2129859010, %7774
  %7776 = bitcast i32 %7775 to float
  %7777 = fmul fast float %7776, %7748
  %7778 = fadd fast float %7777, 1.000000e+00
  %7779 = fadd fast float %7759, %7749
  %7780 = fmul fast float %7779, %7731
  %7781 = fadd fast float %7773, %7750
  %7782 = fmul fast float %7781, %7732
  %7783 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7780, float %7782, float undef, float undef, i32 0, i32 0, i32 undef, float %7736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7784 = extractvalue %dx.types.ResRet.f32 %7783, 0
  %7785 = fmul fast float %7784, %7752
  %7786 = fadd fast float %7764, %7749
  %7787 = fmul fast float %7786, %7731
  %7788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7787, float %7782, float undef, float undef, i32 0, i32 0, i32 undef, float %7736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7789 = extractvalue %dx.types.ResRet.f32 %7788, 0
  %7790 = fmul fast float %7789, %7753
  %7791 = fadd fast float %7778, %7750
  %7792 = fmul fast float %7791, %7732
  %7793 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7780, float %7792, float undef, float undef, i32 0, i32 0, i32 undef, float %7736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = fmul fast float %7794, %7752
  %7796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %7787, float %7792, float undef, float undef, i32 0, i32 0, i32 undef, float %7736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7797 = extractvalue %dx.types.ResRet.f32 %7796, 0
  %7798 = fmul fast float %7797, %7753
  %7799 = fadd fast float %7798, %7795
  %7800 = fmul fast float %7799, %7767
  %7801 = fadd fast float %7790, %7785
  %7802 = fmul fast float %7801, %7766
  %7803 = fadd fast float %7802, %7800
  %7804 = fmul fast float %7803, 6.250000e-02
  br label %7890

; <label>:7805                                    ; preds = %7726
  %7806 = fmul fast float %241, 0x401921FB60000000
  %7807 = call float @dx.op.unary.f32(i32 13, float %7806)  ; Sin(value)
  %7808 = call float @dx.op.unary.f32(i32 12, float %7806)  ; Cos(value)
  %7809 = fsub fast float -0.000000e+00, %7807
  br label %7810

; <label>:7810                                    ; preds = %7859, %7805
  %7811 = phi float [ 0.000000e+00, %7805 ], [ %7854, %7859 ]
  %7812 = phi float [ 0.000000e+00, %7805 ], [ %7856, %7859 ]
  %7813 = phi i32 [ 0, %7805 ], [ %7860, %7859 ]
  %7814 = mul i32 %7813, 2
  %7815 = add i32 0, %7814
  %7816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7815
  %7817 = load float, float* %7816, align 4
  %7818 = mul i32 %7813, 2
  %7819 = add i32 1, %7818
  %7820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7819
  %7821 = load float, float* %7820, align 4
  %7822 = fmul fast float %7817, %7808
  %7823 = call float @dx.op.tertiary.f32(i32 46, float %7821, float %7809, float %7822)  ; FMad(a,b,c)
  %7824 = fmul fast float %7817, %7807
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7821, float %7808, float %7824)  ; FMad(a,b,c)
  %7826 = fmul fast float %7823, %7734
  %7827 = fmul fast float %7825, %7734
  %7828 = fadd fast float %7826, %6868
  %7829 = fadd fast float %7827, %6872
  %7830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %7828, float %7829, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.ResRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.ResRet.f32 %7830, 2
  %7834 = extractvalue %dx.types.ResRet.f32 %7830, 3
  %7835 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7831, float* %7835, align 4
  %7836 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7832, float* %7836, align 4
  %7837 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7833, float* %7837, align 4
  %7838 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7834, float* %7838, align 4
  %7839 = fsub fast float %7831, %7736
  %7840 = fcmp fast olt float %7839, 0.000000e+00
  %7841 = select i1 %7840, float 0.000000e+00, float 1.000000e+00
  %7842 = fadd fast float %7841, %7811
  %7843 = fmul fast float %7841, %7839
  %7844 = fadd fast float %7843, %7812
  br label %7845

; <label>:7845                                    ; preds = %7845, %7810
  %7846 = phi i32 [ 1, %7810 ], [ %7857, %7845 ]
  %7847 = phi float [ %7844, %7810 ], [ %7856, %7845 ]
  %7848 = phi float [ %7842, %7810 ], [ %7854, %7845 ]
  %7849 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7846
  %7850 = load float, float* %7849, align 4, !tbaa !125, !noalias !115
  %7851 = fsub fast float %7850, %7736
  %7852 = fcmp fast olt float %7851, 0.000000e+00
  %7853 = select i1 %7852, float 0.000000e+00, float 1.000000e+00
  %7854 = fadd fast float %7853, %7848
  %7855 = fmul fast float %7853, %7851
  %7856 = fadd fast float %7855, %7847
  %7857 = add nuw nsw i32 %7846, 1
  %7858 = icmp eq i32 %7857, 4
  br i1 %7858, label %7859, label %7845, !llvm.loop !127

; <label>:7859                                    ; preds = %7845
  %7860 = add nuw nsw i32 %7813, 1
  %7861 = icmp eq i32 %7860, 8
  br i1 %7861, label %7862, label %7810, !llvm.loop !128

; <label>:7862                                    ; preds = %7859
  %7863 = fdiv fast float 1.000000e+00, %7854
  %7864 = fmul fast float %7863, %7856
  %7865 = fdiv fast float 1.000000e+00, %7736
  %7866 = fmul fast float %7864, %7865
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = call float @dx.op.binary.f32(i32 35, float %7867, float 0.000000e+00)  ; FMax(a,b)
  %7869 = fmul fast float %7854, 3.125000e-02
  %7870 = call float @dx.op.unary.f32(i32 7, float %7869)  ; Saturate(value)
  %7871 = fmul fast float %7870, 2.000000e+00
  %7872 = fadd fast float %7871, -1.000000e+00
  %7873 = fcmp fast ogt float %7872, 0.000000e+00
  %7874 = fcmp fast olt float %7872, 0.000000e+00
  %7875 = zext i1 %7873 to i32
  %7876 = zext i1 %7874 to i32
  %7877 = sub nsw i32 %7875, %7876
  %7878 = sitofp i32 %7877 to float
  %7879 = fmul fast float %7878, %7872
  %7880 = fsub fast float 1.000000e+00, %7879
  %7881 = fmul fast float %7880, %7880
  %7882 = fmul fast float %7881, %7880
  %7883 = fsub fast float %7880, %7882
  %7884 = fmul fast float %7883, %7868
  %7885 = fsub fast float 1.000000e+00, %7882
  %7886 = fsub fast float %7885, %7884
  %7887 = fmul fast float %7878, 5.000000e-01
  %7888 = fmul fast float %7887, %7886
  %7889 = fsub fast float 5.000000e-01, %7888
  br label %7890

; <label>:7890                                    ; preds = %7862, %7738, %7723
  %7891 = phi float [ 1.000000e+00, %7723 ], [ %7804, %7738 ], [ %7889, %7862 ]
  %7892 = fsub fast float %7557, %7392
  %7893 = fmul fast float %7892, %6930
  %7894 = fadd fast float %7893, %7392
  %7895 = fsub fast float %7724, %7894
  %7896 = fmul fast float %7895, %6960
  %7897 = fadd fast float %7896, %7894
  %7898 = fsub fast float %7891, %7897
  %7899 = fmul fast float %7898, %6986
  %7900 = fadd fast float %7899, %7897
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7903 = fcmp fast ogt float %7902, 0.000000e+00
  br i1 %7903, label %7904, label %7944, !dx.controlflow.hints !131

; <label>:7904                                    ; preds = %7890
  %7905 = fcmp fast ugt float %7902, 0.000000e+00
  br i1 %7905, label %7906, label %7941

; <label>:7906                                    ; preds = %7904
  %7907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7908 = extractvalue %dx.types.CBufRet.f32 %7907, 0
  %7909 = extractvalue %dx.types.CBufRet.f32 %7907, 1
  %7910 = extractvalue %dx.types.CBufRet.f32 %7907, 2
  %7911 = extractvalue %dx.types.CBufRet.f32 %7907, 3
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7916 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7917 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7923 = fadd fast float %7920, %6845
  %7924 = fadd fast float %7921, %6846
  %7925 = fadd fast float %7922, %6847
  %7926 = fmul fast float %7923, %7908
  %7927 = call float @dx.op.tertiary.f32(i32 46, float %7909, float %7924, float %7926)  ; FMad(a,b,c)
  %7928 = call float @dx.op.tertiary.f32(i32 46, float %7910, float %7925, float %7927)  ; FMad(a,b,c)
  %7929 = fadd fast float %7928, %7911
  %7930 = fmul fast float %7923, %7913
  %7931 = call float @dx.op.tertiary.f32(i32 46, float %7914, float %7924, float %7930)  ; FMad(a,b,c)
  %7932 = call float @dx.op.tertiary.f32(i32 46, float %7915, float %7925, float %7931)  ; FMad(a,b,c)
  %7933 = fadd fast float %7932, %7916
  %7934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %53, float %7929, float %7933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7935 = extractvalue %dx.types.ResRet.f32 %7934, 0
  %7936 = fmul fast float %7935, %7918
  %7937 = fadd fast float %7936, %7917
  %7938 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  %7939 = fmul fast float %7938, %7902
  %7940 = fsub fast float 1.000000e+00, %7939
  br label %7941

; <label>:7941                                    ; preds = %7906, %7904
  %7942 = phi float [ %7940, %7906 ], [ 1.000000e+00, %7904 ]
  %7943 = fmul fast float %7942, %7900
  br label %7944

; <label>:7944                                    ; preds = %7941, %7890, %6825
  %7945 = phi float [ 1.000000e+00, %6825 ], [ %7943, %7941 ], [ %7900, %7890 ]
  %7946 = call float @dx.op.binary.f32(i32 36, float %7945, float %7945)  ; FMin(a,b)
  %7947 = call float @dx.op.binary.f32(i32 36, float %7945, float %7946)  ; FMin(a,b)
  %7948 = fcmp fast ogt float %7947, 0.000000e+00
  br i1 %7948, label %7949, label %8114, !dx.controlflow.hints !132

; <label>:7949                                    ; preds = %7944
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.CBufRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.CBufRet.f32 %7950, 2
  %7954 = extractvalue %dx.types.CBufRet.f32 %7950, 3
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7959 = extractvalue %dx.types.CBufRet.f32 %7955, 3
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7964 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7965 = fmul fast float %7951, %6845
  %7966 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7952, float %7965)  ; FMad(a,b,c)
  %7967 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7953, float %7966)  ; FMad(a,b,c)
  %7968 = fadd fast float %7967, %7954
  %7969 = fmul fast float %7956, %6845
  %7970 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7957, float %7969)  ; FMad(a,b,c)
  %7971 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7958, float %7970)  ; FMad(a,b,c)
  %7972 = fadd fast float %7971, %7959
  %7973 = fmul fast float %7961, %6845
  %7974 = call float @dx.op.tertiary.f32(i32 46, float %6846, float %7962, float %7973)  ; FMad(a,b,c)
  %7975 = call float @dx.op.tertiary.f32(i32 46, float %6847, float %7963, float %7974)  ; FMad(a,b,c)
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 3
  %7980 = fmul fast float %7979, %7968
  %7981 = fmul fast float %7979, %7972
  %7982 = fadd fast float %7980, %7977
  %7983 = fadd fast float %7981, %7978
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = fsub fast float %7982, %7985
  %7988 = fsub fast float %7983, %7986
  %7989 = fcmp fast olt float %7987, 0.000000e+00
  %7990 = fcmp fast olt float %7988, 0.000000e+00
  %7991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7991, 0
  %7993 = extractvalue %dx.types.CBufRet.f32 %7991, 1
  %7994 = extractvalue %dx.types.CBufRet.f32 %7991, 2
  %7995 = extractvalue %dx.types.CBufRet.f32 %7991, 3
  %7996 = select i1 %7989, float %7992, float %7994
  %7997 = select i1 %7990, float %7993, float %7995
  %7998 = fmul fast float %7996, %7987
  %7999 = fmul fast float %7997, %7988
  %8000 = call float @dx.op.unary.f32(i32 6, float %7998)  ; FAbs(value)
  %8001 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 0
  %8004 = call float @dx.op.binary.f32(i32 35, float %8000, float %8001)  ; FMax(a,b)
  %8005 = fsub fast float %8003, %8004
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8007 = fcmp fast ogt float %8006, 0.000000e+00
  br i1 %8007, label %8008, label %8049, !dx.controlflow.hints !133

; <label>:8008                                    ; preds = %7949
  %8009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %7982, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8010 = extractvalue %dx.types.ResRet.f32 %8009, 1
  %8011 = fcmp fast ogt float %8010, 0.000000e+00
  br i1 %8011, label %8012, label %8044

; <label>:8012                                    ; preds = %8008
  %8013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %7982, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = extractvalue %dx.types.ResRet.f32 %8013, 3
  %8018 = fsub fast float 1.000000e+00, %7964
  %8019 = fsub fast float %8018, %7975
  %8020 = fmul fast float %8019, 0x400921FB60000000
  %8021 = fadd fast float %8020, 0x3FF921FB60000000
  %8022 = call float @dx.op.unary.f32(i32 13, float %8021)  ; Sin(value)
  %8023 = fadd fast float %8022, -1.000000e+00
  %8024 = fmul fast float %8023, 0x3FD45F3060000000
  %8025 = fmul fast float %8019, 0x401921FB60000000
  %8026 = fadd fast float %8025, 0x400921FB60000000
  %8027 = call float @dx.op.unary.f32(i32 13, float %8026)  ; Sin(value)
  %8028 = fadd fast float %8027, 0x3E7777A5C0000000
  %8029 = fmul fast float %8028, 0x3FC45F3060000000
  %8030 = fmul fast float %8019, 0x4022D97C80000000
  %8031 = fadd fast float %8030, 0x4012D97C80000000
  %8032 = call float @dx.op.unary.f32(i32 13, float %8031)  ; Sin(value)
  %8033 = fadd fast float %8032, 1.000000e+00
  %8034 = fmul fast float %8033, 0x3FBB2995E0000000
  %8035 = fmul fast float %8019, 0x402921FB60000000
  %8036 = fadd fast float %8035, 0x401921FB60000000
  %8037 = call float @dx.op.unary.f32(i32 13, float %8036)  ; Sin(value)
  %8038 = fadd fast float %8037, 0xBE8777A5C0000000
  %8039 = fmul fast float %8038, 0x3FB45F3060000000
  %8040 = call float @dx.op.dot4.f32(i32 56, float %8014, float %8015, float %8016, float %8017, float %8024, float %8029, float %8034, float %8039)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8041 = fmul fast float %8040, 0xBFF7154760000000
  %8042 = call float @dx.op.unary.f32(i32 21, float %8041)  ; Exp(value)
  %8043 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  br label %8044

; <label>:8044                                    ; preds = %8012, %8008
  %8045 = phi float [ %8043, %8012 ], [ 1.000000e+00, %8008 ]
  %8046 = fadd fast float %8045, -1.000000e+00
  %8047 = fmul fast float %8046, %8006
  %8048 = fadd fast float %8047, 1.000000e+00
  br label %8049

; <label>:8049                                    ; preds = %8044, %7949
  %8050 = phi float [ %8048, %8044 ], [ 1.000000e+00, %7949 ]
  %8051 = fmul fast float %8050, %7945
  %8052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8052, 0
  %8054 = extractvalue %dx.types.CBufRet.f32 %8052, 1
  %8055 = extractvalue %dx.types.CBufRet.f32 %8052, 2
  %8056 = fadd fast float %8053, %166
  %8057 = fadd fast float %8054, %167
  %8058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.f32 %8058, 1
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.CBufRet.f32 %8060, 2
  %8064 = fsub fast float -0.000000e+00, %8056
  %8065 = fsub fast float -0.000000e+00, %8057
  %8066 = fsub fast float %5726, %8055
  %8067 = fadd fast float %8066, %8059
  %8068 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8064, float %8065, float %8067)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8061, float %8062, float %8063)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = fdiv fast float 1.000000e+00, %8069
  %8071 = fmul fast float %8070, %8068
  %8072 = fmul fast float %8061, %8071
  %8073 = fmul fast float %8062, %8071
  %8074 = fadd fast float %8072, %8056
  %8075 = fadd fast float %8073, %8057
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8079 = fsub fast float %8074, %8077
  %8080 = fsub fast float %8075, %8078
  %8081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8082 = extractvalue %dx.types.CBufRet.f32 %8081, 2
  %8083 = extractvalue %dx.types.CBufRet.f32 %8081, 3
  %8084 = fmul fast float %8079, %8082
  %8085 = fmul fast float %8080, %8083
  %8086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8087 = extractvalue %dx.types.CBufRet.i32 %8086, 3
  %8088 = icmp eq i32 %8087, 0
  br i1 %8088, label %8094, label %8089

; <label>:8089                                    ; preds = %8049
  %8090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8084, float %8085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8091 = extractvalue %dx.types.ResRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.ResRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.ResRet.f32 %8090, 2
  br label %8099

; <label>:8094                                    ; preds = %8049
  %8095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %56, float %8084, float %8085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8096 = extractvalue %dx.types.ResRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.ResRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.ResRet.f32 %8095, 2
  br label %8099

; <label>:8099                                    ; preds = %8094, %8089
  %8100 = phi float [ %8091, %8089 ], [ %8096, %8094 ]
  %8101 = phi float [ %8092, %8089 ], [ %8097, %8094 ]
  %8102 = phi float [ %8093, %8089 ], [ %8098, %8094 ]
  %8103 = extractvalue %dx.types.CBufRet.f32 %8058, 2
  %8104 = fmul fast float %8103, %8100
  %8105 = extractvalue %dx.types.CBufRet.f32 %8058, 0
  %8106 = fsub fast float %8071, %8105
  %8107 = fsub fast float %8106, %8104
  %8108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8107)  ; FMax(a,b)
  %8109 = fmul fast float %8108, %8101
  %8110 = call float @dx.op.binary.f32(i32 36, float %8102, float %8109)  ; FMin(a,b)
  %8111 = fmul fast float %8110, 0xBFF7154760000000
  %8112 = call float @dx.op.unary.f32(i32 21, float %8111)  ; Exp(value)
  %8113 = fmul fast float %8051, %8112
  br label %8114

; <label>:8114                                    ; preds = %8099, %7944
  %8115 = phi float [ %8113, %8099 ], [ %7945, %7944 ]
  %8116 = call float @dx.op.binary.f32(i32 36, float %8115, float %8115)  ; FMin(a,b)
  %8117 = call float @dx.op.binary.f32(i32 36, float %8115, float %8116)  ; FMin(a,b)
  %8118 = fcmp fast ogt float %8117, 0.000000e+00
  br i1 %8118, label %8119, label %8502, !dx.controlflow.hints !134

; <label>:8119                                    ; preds = %8114
  %8120 = fmul fast float %8115, %6837
  %8121 = fmul fast float %8115, %6838
  %8122 = fmul fast float %8115, %6839
  %8123 = fsub fast float %168, %5517
  %8124 = fcmp fast ogt float %8123, 0.000000e+00
  %8125 = fmul fast float %6826, 5.120000e+02
  %8126 = fmul fast float %6827, 5.120000e+02
  %8127 = fmul fast float %6828, 5.120000e+02
  %8128 = fadd fast float %8127, %168
  %8129 = fsub fast float %5517, %8128
  %8130 = fmul fast float %8129, 2.000000e+00
  %8131 = fadd fast float %8130, %8128
  %8132 = select i1 %8124, float %8131, float %8128
  %8133 = fsub fast float %8132, %168
  %8134 = call float @dx.op.dot3.f32(i32 55, float %8125, float %8126, float %8133, float %8125, float %8126, float %8133)  ; Dot3(ax,ay,az,bx,by,bz)
  %8135 = call float @dx.op.unary.f32(i32 25, float %8134)  ; Rsqrt(value)
  %8136 = fmul fast float %8135, %8125
  %8137 = fmul fast float %8135, %8126
  %8138 = fmul fast float %8135, %8133
  %8139 = fsub fast float %5517, %168
  %8140 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8139)  ; Dot3(ax,ay,az,bx,by,bz)
  %8141 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8136, float %8137, float %8138)  ; Dot3(ax,ay,az,bx,by,bz)
  %8142 = fdiv fast float 1.000000e+00, %8141
  %8143 = fmul fast float %8142, %8140
  %8144 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8145 = fcmp fast ogt float %8144, 0.000000e+00
  %8146 = fcmp fast olt float %8144, 0.000000e+00
  %8147 = zext i1 %8145 to i32
  %8148 = zext i1 %8146 to i32
  %8149 = sub nsw i32 %8147, %8148
  %8150 = sitofp i32 %8149 to float
  %8151 = fsub fast float %8132, %5517
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8125, float %8126, float %8151, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = fcmp fast ogt float %8152, 0.000000e+00
  %8154 = fcmp fast olt float %8152, 0.000000e+00
  %8155 = zext i1 %8153 to i32
  %8156 = zext i1 %8154 to i32
  %8157 = sub nsw i32 %8155, %8156
  %8158 = sitofp i32 %8157 to float
  %8159 = fcmp fast une float %8150, %8158
  br i1 %8159, label %8160, label %8170

; <label>:8160                                    ; preds = %8119
  %8161 = fmul fast float %8143, %8138
  %8162 = fmul fast float %8143, %8137
  %8163 = fmul fast float %8143, %8136
  %8164 = fmul fast float %8163, %8163
  %8165 = fmul fast float %8162, %8162
  %8166 = fadd fast float %8164, %8165
  %8167 = fmul fast float %8161, %8161
  %8168 = fadd fast float %8166, %8167
  %8169 = call float @dx.op.unary.f32(i32 24, float %8168)  ; Sqrt(value)
  br label %8180

; <label>:8170                                    ; preds = %8119
  %8171 = icmp slt i32 %8149, 0
  br i1 %8171, label %8172, label %8180

; <label>:8172                                    ; preds = %8170
  %8173 = fsub fast float %168, %8132
  %8174 = fmul fast float %8125, %8125
  %8175 = fmul fast float %8126, %8126
  %8176 = fadd fast float %8174, %8175
  %8177 = fmul fast float %8173, %8173
  %8178 = fadd fast float %8176, %8177
  %8179 = call float @dx.op.unary.f32(i32 24, float %8178)  ; Sqrt(value)
  br label %8180

; <label>:8180                                    ; preds = %8172, %8170, %8160
  %8181 = phi float [ %8169, %8160 ], [ %8179, %8172 ], [ 0.000000e+00, %8170 ]
  %8182 = fsub fast float -0.000000e+00, %8181
  %8183 = select i1 %8124, float -0.000000e+00, float %8182
  %8184 = fmul fast float %5514, 0x3FF7154760000000
  %8185 = fmul fast float %8184, %8183
  %8186 = fmul fast float %5515, 0x3FF7154760000000
  %8187 = fmul fast float %8186, %8183
  %8188 = fmul fast float %5516, 0x3FF7154760000000
  %8189 = fmul fast float %8188, %8183
  %8190 = call float @dx.op.unary.f32(i32 21, float %8185)  ; Exp(value)
  %8191 = call float @dx.op.unary.f32(i32 21, float %8187)  ; Exp(value)
  %8192 = call float @dx.op.unary.f32(i32 21, float %8189)  ; Exp(value)
  %8193 = call float @dx.op.unary.f32(i32 7, float %8190)  ; Saturate(value)
  %8194 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8195 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8196 = fmul fast float %8120, %8193
  %8197 = fmul fast float %8121, %8194
  %8198 = fmul fast float %8122, %8195
  %8199 = fsub fast float %6826, %5714
  %8200 = fsub fast float %6827, %5713
  %8201 = fsub fast float %6828, %5712
  %8202 = call float @dx.op.dot3.f32(i32 55, float %8199, float %8200, float %8201, float %8199, float %8200, float %8201)  ; Dot3(ax,ay,az,bx,by,bz)
  %8203 = call float @dx.op.unary.f32(i32 25, float %8202)  ; Rsqrt(value)
  %8204 = fmul fast float %8203, %8199
  %8205 = fmul fast float %8203, %8200
  %8206 = fmul fast float %8203, %8201
  %8207 = call float @dx.op.dot3.f32(i32 55, float %6826, float %6827, float %6828, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %8208 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5710, float %5709, float %8204, float %8205, float %8206)  ; Dot3(ax,ay,az,bx,by,bz)
  %8209 = call float @dx.op.unary.f32(i32 7, float %8207)  ; Saturate(value)
  %8210 = fmul fast float %8209, %8209
  %8211 = fmul fast float %8210, %5788
  %8212 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8213 = fmul fast float %8212, %8209
  %8214 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %8204, float %8205, float %8206)  ; Dot3(ax,ay,az,bx,by,bz)
  %8215 = fmul fast float %8214, %8214
  %8216 = call float @dx.op.unary.f32(i32 6, float %8207)  ; FAbs(value)
  %8217 = fsub fast float 1.000000e+00, %5781
  %8218 = fmul fast float %5763, %5763
  %8219 = fmul fast float %8218, %8217
  %8220 = fadd fast float %8219, %5781
  %8221 = bitcast float %8220 to i32
  %8222 = ashr i32 %8221, 1
  %8223 = add nsw i32 %8222, 532487669
  %8224 = bitcast i32 %8223 to float
  %8225 = fadd fast float %8224, %5763
  %8226 = fmul fast float %5781, %8215
  %8227 = fsub fast float 1.000000e+00, %8215
  %8228 = fadd fast float %8227, %8226
  %8229 = fmul fast float %8216, %8216
  %8230 = fmul fast float %8229, %8217
  %8231 = fadd fast float %8230, %5781
  %8232 = bitcast float %8231 to i32
  %8233 = ashr i32 %8232, 1
  %8234 = add nsw i32 %8233, 532487669
  %8235 = bitcast i32 %8234 to float
  %8236 = fadd fast float %8235, %8216
  %8237 = fmul fast float %8228, %8228
  %8238 = fmul fast float %8237, %8225
  %8239 = fmul fast float %8238, %8236
  %8240 = fdiv fast float 0x3FF0A00000000000, %8239
  %8241 = fmul fast float %8240, %5781
  %8242 = fmul fast float %6024, 0x3FF9999980000000
  %8243 = fsub fast float 5.000000e+00, %8242
  %8244 = call float @dx.op.unary.f32(i32 6, float %8208)  ; FAbs(value)
  %8245 = fsub fast float 1.000000e+00, %8244
  %8246 = fmul fast float %6024, 0x41D9660740000000
  %8247 = fadd fast float %8246, 0xC1EFBF8940000000
  %8248 = bitcast float %8245 to i32
  %8249 = sitofp i32 %8248 to float
  %8250 = fmul fast float %8249, %8243
  %8251 = fadd fast float %8247, %8250
  %8252 = fptosi float %8251 to i32
  %8253 = bitcast i32 %8252 to float
  %8254 = fsub fast float 1.000000e+00, %5715
  %8255 = fsub fast float 1.000000e+00, %5716
  %8256 = fsub fast float 1.000000e+00, %5761
  %8257 = fmul fast float %8253, %8254
  %8258 = fmul fast float %8253, %8255
  %8259 = fmul fast float %8253, %8256
  %8260 = fadd fast float %8257, %5715
  %8261 = fadd fast float %8258, %5716
  %8262 = fadd fast float %8259, %5761
  br i1 %6047, label %8263, label %8286

; <label>:8263                                    ; preds = %8180
  %8264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %8244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8265 = extractvalue %dx.types.ResRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.ResRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.ResRet.f32 %8264, 2
  %8268 = fadd fast float %8265, -5.000000e-01
  %8269 = fadd fast float %8266, -5.000000e-01
  %8270 = fadd fast float %8267, -5.000000e-01
  %8271 = fmul fast float %5715, 4.000000e+00
  %8272 = fmul fast float %8271, %8254
  %8273 = fmul fast float %8272, %8268
  %8274 = fmul fast float %5716, 4.000000e+00
  %8275 = fmul fast float %8274, %8255
  %8276 = fmul fast float %8275, %8269
  %8277 = fmul fast float %5761, 4.000000e+00
  %8278 = fmul fast float %8277, %8256
  %8279 = fmul fast float %8278, %8270
  %8280 = fadd fast float %8273, %8260
  %8281 = fadd fast float %8276, %8261
  %8282 = fadd fast float %8279, %8262
  %8283 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8284 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8285 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  br label %8286

; <label>:8286                                    ; preds = %8263, %8180
  %8287 = phi float [ %8283, %8263 ], [ %8260, %8180 ]
  %8288 = phi float [ %8284, %8263 ], [ %8261, %8180 ]
  %8289 = phi float [ %8285, %8263 ], [ %8262, %8180 ]
  %8290 = fmul fast float %8207, 9.843750e-01
  %8291 = fadd fast float %8290, 7.812500e-03
  %8292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8291, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8293 = extractvalue %dx.types.ResRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.ResRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.ResRet.f32 %8292, 2
  %8296 = extractvalue %dx.types.ResRet.f32 %8292, 3
  %8297 = fsub fast float %8295, %8293
  %8298 = fsub fast float %8296, %8294
  %8299 = fmul fast float %8297, %6034
  %8300 = fmul fast float %8298, %6034
  %8301 = fadd fast float %8299, %8293
  %8302 = fadd fast float %8300, %8294
  %8303 = fmul fast float %8301, %5715
  %8304 = fmul fast float %8301, %5716
  %8305 = fmul fast float %8301, %5761
  %8306 = fadd fast float %8303, %8302
  %8307 = fadd fast float %8304, %8302
  %8308 = fadd fast float %8305, %8302
  br i1 %6047, label %8309, label %8332

; <label>:8309                                    ; preds = %8286
  %8310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %8207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8311 = extractvalue %dx.types.ResRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.ResRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.ResRet.f32 %8310, 2
  %8314 = fadd fast float %8311, -5.000000e-01
  %8315 = fadd fast float %8312, -5.000000e-01
  %8316 = fadd fast float %8313, -5.000000e-01
  %8317 = fmul fast float %5715, 4.000000e+00
  %8318 = fmul fast float %8317, %8254
  %8319 = fmul fast float %8318, %8314
  %8320 = fmul fast float %5716, 4.000000e+00
  %8321 = fmul fast float %8320, %8255
  %8322 = fmul fast float %8321, %8315
  %8323 = fmul fast float %5761, 4.000000e+00
  %8324 = fmul fast float %8323, %8256
  %8325 = fmul fast float %8324, %8316
  %8326 = fadd fast float %8319, %8306
  %8327 = fadd fast float %8322, %8307
  %8328 = fadd fast float %8325, %8308
  %8329 = call float @dx.op.unary.f32(i32 7, float %8326)  ; Saturate(value)
  %8330 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8331 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  br label %8332

; <label>:8332                                    ; preds = %8309, %8286
  %8333 = phi float [ %8329, %8309 ], [ %8306, %8286 ]
  %8334 = phi float [ %8330, %8309 ], [ %8307, %8286 ]
  %8335 = phi float [ %8331, %8309 ], [ %8308, %8286 ]
  %8336 = call float @dx.op.binary.f32(i32 35, float %8334, float %8335)  ; FMax(a,b)
  %8337 = call float @dx.op.binary.f32(i32 35, float %8333, float %8336)  ; FMax(a,b)
  %8338 = fsub fast float 1.000000e+00, %8337
  %8339 = call float @dx.op.binary.f32(i32 35, float %8216, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8340 = fdiv fast float %4432, %8339
  %8341 = fmul fast float %6597, %8340
  %8342 = fmul fast float %6599, %8340
  %8343 = fmul fast float %6601, %8340
  %8344 = call float @dx.op.unary.f32(i32 21, float %8341)  ; Exp(value)
  %8345 = call float @dx.op.unary.f32(i32 21, float %8342)  ; Exp(value)
  %8346 = call float @dx.op.unary.f32(i32 21, float %8343)  ; Exp(value)
  %8347 = call float @dx.op.unary.f32(i32 7, float %8344)  ; Saturate(value)
  %8348 = call float @dx.op.unary.f32(i32 7, float %8345)  ; Saturate(value)
  %8349 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8350 = select i1 %6594, float %8347, float 0.000000e+00
  %8351 = select i1 %6595, float %8348, float 0.000000e+00
  %8352 = select i1 %6596, float %8349, float 0.000000e+00
  %8353 = fsub fast float -0.000000e+00, %5721
  %8354 = fsub fast float -0.000000e+00, %5722
  %8355 = fsub fast float -0.000000e+00, %5723
  %8356 = call float @dx.op.dot3.f32(i32 55, float %6826, float %6827, float %6828, float %8353, float %8354, float %8355)  ; Dot3(ax,ay,az,bx,by,bz)
  %8357 = call float @dx.op.unary.f32(i32 7, float %8356)  ; Saturate(value)
  %8358 = fmul fast float %8357, 9.843750e-01
  %8359 = fadd fast float %8358, 7.812500e-03
  %8360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %8359, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8361 = extractvalue %dx.types.ResRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.ResRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.ResRet.f32 %8360, 2
  %8364 = extractvalue %dx.types.ResRet.f32 %8360, 3
  %8365 = fsub fast float %8363, %8361
  %8366 = fsub fast float %8364, %8362
  %8367 = fmul fast float %8365, %6034
  %8368 = fmul fast float %8366, %6034
  %8369 = fadd fast float %8367, %8361
  %8370 = fadd fast float %8368, %8362
  %8371 = fmul fast float %8369, %5715
  %8372 = fmul fast float %8369, %5716
  %8373 = fmul fast float %8369, %5761
  %8374 = fadd fast float %8371, %8370
  %8375 = fadd fast float %8372, %8370
  %8376 = fadd fast float %8373, %8370
  br i1 %6047, label %8377, label %8400

; <label>:8377                                    ; preds = %8332
  %8378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %8357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = fadd fast float %8379, -5.000000e-01
  %8383 = fadd fast float %8380, -5.000000e-01
  %8384 = fadd fast float %8381, -5.000000e-01
  %8385 = fmul fast float %5715, 4.000000e+00
  %8386 = fmul fast float %8385, %8254
  %8387 = fmul fast float %8386, %8382
  %8388 = fmul fast float %5716, 4.000000e+00
  %8389 = fmul fast float %8388, %8255
  %8390 = fmul fast float %8389, %8383
  %8391 = fmul fast float %5761, 4.000000e+00
  %8392 = fmul fast float %8391, %8256
  %8393 = fmul fast float %8392, %8384
  %8394 = fadd fast float %8387, %8374
  %8395 = fadd fast float %8390, %8375
  %8396 = fadd fast float %8393, %8376
  %8397 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8398 = call float @dx.op.unary.f32(i32 7, float %8395)  ; Saturate(value)
  %8399 = call float @dx.op.unary.f32(i32 7, float %8396)  ; Saturate(value)
  br label %8400

; <label>:8400                                    ; preds = %8377, %8332
  %8401 = phi float [ %8397, %8377 ], [ %8374, %8332 ]
  %8402 = phi float [ %8398, %8377 ], [ %8375, %8332 ]
  %8403 = phi float [ %8399, %8377 ], [ %8376, %8332 ]
  %8404 = call float @dx.op.binary.f32(i32 35, float %8402, float %8403)  ; FMax(a,b)
  %8405 = call float @dx.op.binary.f32(i32 35, float %8401, float %8404)  ; FMax(a,b)
  %8406 = fsub fast float 1.000000e+00, %8405
  %8407 = fmul fast float %5778, %6661
  %8408 = fadd fast float %6655, %8407
  %8409 = call float @dx.op.unary.f32(i32 7, float %8408)  ; Saturate(value)
  %8410 = fsub fast float %6826, %5769
  %8411 = fsub fast float %6827, %5770
  %8412 = fsub fast float %6828, %5771
  %8413 = call float @dx.op.dot3.f32(i32 55, float %8410, float %8411, float %8412, float %8410, float %8411, float %8412)  ; Dot3(ax,ay,az,bx,by,bz)
  %8414 = call float @dx.op.unary.f32(i32 25, float %8413)  ; Rsqrt(value)
  %8415 = fmul fast float %8414, %8410
  %8416 = fmul fast float %8414, %8411
  %8417 = fmul fast float %8414, %8412
  %8418 = call float @dx.op.dot3.f32(i32 55, float %8353, float %8354, float %8355, float %8415, float %8416, float %8417)  ; Dot3(ax,ay,az,bx,by,bz)
  %8419 = fmul fast float %8418, %8418
  %8420 = call float @dx.op.unary.f32(i32 6, float %8357)  ; FAbs(value)
  %8421 = call float @dx.op.binary.f32(i32 35, float %8409, float 0x3F847AE140000000)  ; FMax(a,b)
  %8422 = fmul fast float %8421, %8421
  %8423 = fmul fast float %8422, %8422
  %8424 = fsub fast float 1.000000e+00, %8423
  %8425 = fmul fast float %8218, %8424
  %8426 = fadd fast float %8425, %8423
  %8427 = bitcast float %8426 to i32
  %8428 = ashr i32 %8427, 1
  %8429 = add nsw i32 %8428, 532487669
  %8430 = bitcast i32 %8429 to float
  %8431 = fadd fast float %8430, %5763
  %8432 = fmul fast float %8423, %8419
  %8433 = fsub fast float 1.000000e+00, %8419
  %8434 = fadd fast float %8433, %8432
  %8435 = fmul fast float %8420, %8420
  %8436 = fmul fast float %8435, %8424
  %8437 = fadd fast float %8436, %8423
  %8438 = bitcast float %8437 to i32
  %8439 = ashr i32 %8438, 1
  %8440 = add nsw i32 %8439, 532487669
  %8441 = bitcast i32 %8440 to float
  %8442 = fadd fast float %8441, %8420
  %8443 = fmul fast float %8434, %8434
  %8444 = fmul fast float %8443, %8431
  %8445 = fmul fast float %8444, %8442
  %8446 = fdiv fast float 0x3FF0A00000000000, %8445
  %8447 = fmul fast float %8446, %8423
  %8448 = fmul fast float %8357, %8350
  %8449 = fmul fast float %8357, %8351
  %8450 = fmul fast float %8357, %8352
  %8451 = fmul fast float %8448, %8406
  %8452 = fmul fast float %8451, %8447
  %8453 = fmul fast float %8449, %8406
  %8454 = fmul fast float %8453, %8447
  %8455 = fmul fast float %8450, %8406
  %8456 = fmul fast float %8455, %8447
  %8457 = fmul fast float %8287, %8241
  %8458 = fmul fast float %8288, %8241
  %8459 = fmul fast float %8289, %8241
  %8460 = fsub fast float 1.000000e+00, %8208
  %8461 = bitcast float %8460 to i32
  %8462 = sitofp i32 %8461 to float
  %8463 = fmul fast float %8462, 5.000000e+00
  %8464 = fadd fast float %8463, 0xC1EFBF8940000000
  %8465 = fptosi float %8464 to i32
  %8466 = bitcast i32 %8465 to float
  %8467 = fmul fast float %8466, %5085
  %8468 = fmul fast float %8338, %8467
  %8469 = fmul fast float %8468, %6589
  %8470 = fmul fast float %8468, %6590
  %8471 = fmul fast float %8468, %6591
  %8472 = fadd fast float %8469, %8457
  %8473 = fadd fast float %8470, %8458
  %8474 = fadd fast float %8471, %8459
  %8475 = fmul fast float %8472, %8213
  %8476 = fmul fast float %8473, %8213
  %8477 = fmul fast float %8474, %8213
  %8478 = fmul fast float %8213, %8196
  %8479 = fmul fast float %8478, %8338
  %8480 = fmul fast float %8213, %8197
  %8481 = fmul fast float %8480, %8338
  %8482 = fmul fast float %8213, %8198
  %8483 = fmul fast float %8482, %8338
  %8484 = fadd fast float %8475, %8452
  %8485 = fadd fast float %8476, %8454
  %8486 = fadd fast float %8477, %8456
  %8487 = fmul fast float %8484, %8196
  %8488 = fmul fast float %8485, %8197
  %8489 = fmul fast float %8486, %8198
  %8490 = fadd fast float %8479, %6573
  %8491 = fmul fast float %8490, %5081
  %8492 = fadd fast float %8481, %6574
  %8493 = fmul fast float %8492, %5081
  %8494 = fadd fast float %8483, %6575
  %8495 = fmul fast float %8494, %5081
  %8496 = fadd fast float %8487, %6812
  %8497 = fmul fast float %8496, %5081
  %8498 = fadd fast float %8488, %6816
  %8499 = fmul fast float %8498, %5081
  %8500 = fadd fast float %8489, %6820
  %8501 = fmul fast float %8500, %5081
  br label %8502

; <label>:8502                                    ; preds = %8400, %8114, %6796
  %8503 = phi float [ %6813, %6796 ], [ %6813, %8114 ], [ %8497, %8400 ]
  %8504 = phi float [ %6817, %6796 ], [ %6817, %8114 ], [ %8499, %8400 ]
  %8505 = phi float [ %6821, %6796 ], [ %6821, %8114 ], [ %8501, %8400 ]
  %8506 = phi float [ %6685, %6796 ], [ %6685, %8114 ], [ %8491, %8400 ]
  %8507 = phi float [ %6686, %6796 ], [ %6686, %8114 ], [ %8493, %8400 ]
  %8508 = phi float [ %6687, %6796 ], [ %6687, %8114 ], [ %8495, %8400 ]
  %8509 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.i32 %8509, 0
  %8511 = icmp eq i32 %8510, 0
  br i1 %8511, label %9329, label %8512

; <label>:8512                                    ; preds = %8502
  %8513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8514 = extractvalue %dx.types.CBufRet.f32 %8513, 2
  %8515 = extractvalue %dx.types.CBufRet.f32 %8513, 3
  %8516 = fmul fast float %8514, %111
  %8517 = fmul fast float %8515, %112
  %8518 = fptoui float %8516 to i32
  %8519 = fptoui float %8517 to i32
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8523 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8524 = fadd fast float %99, -4.000000e+00
  %8525 = call float @dx.op.binary.f32(i32 35, float %8524, float 0.000000e+00)  ; FMax(a,b)
  %8526 = fadd fast float %8525, %8521
  %8527 = fmul fast float %8526, %8522
  %8528 = call float @dx.op.unary.f32(i32 23, float %8527)  ; Log(value)
  %8529 = fmul fast float %8528, %8523
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8532 = fmul fast float %8529, %8531
  %8533 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.i32 %8534, 1
  %8536 = add i32 %8535, -1
  %8537 = uitofp i32 %8535 to float
  %8538 = fmul fast float %8537, %8533
  %8539 = fptoui float %8538 to i32
  %8540 = call i32 @dx.op.binary.i32(i32 40, i32 %8539, i32 %8536)  ; UMin(a,b)
  %8541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.i32 %8541, 2
  %8543 = extractvalue %dx.types.CBufRet.i32 %8541, 3
  %8544 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8519, i32 %8542, i32 %8518)  ; UMad(a,b,c)
  %8545 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8540, i32 %8543, i32 %8544)  ; UMad(a,b,c)
  %8546 = add nsw i32 %8510, -1
  %8547 = call i32 @dx.op.binary.i32(i32 37, i32 %8546, i32 0)  ; IMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %8549 = fptoui float %8548 to i32
  %8550 = lshr i32 %8549, 5
  %8551 = call i32 @dx.op.binary.i32(i32 40, i32 %8550, i32 8191)  ; UMin(a,b)
  %8552 = shl i32 %8551, 2
  %8553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8552, i32 undef)  ; BufferLoad(srv,index,wot)
  %8554 = extractvalue %dx.types.ResRet.i32 %8553, 0
  %8555 = lshr i32 %8554, 16
  %8556 = and i32 %8554, 65535
  %8557 = lshr i32 %8554, 21
  %8558 = lshr i32 %8556, 5
  %8559 = call i32 @dx.op.binary.i32(i32 40, i32 %8558, i32 %8547)  ; UMin(a,b)
  %8560 = icmp ugt i32 %8557, %8559
  br i1 %8560, label %9329, label %8561

; <label>:8561                                    ; preds = %8512
  br label %8562

; <label>:8562                                    ; preds = %9319, %8561
  %8563 = phi i32 [ %9326, %9319 ], [ %8557, %8561 ]
  %8564 = phi float [ %9320, %9319 ], [ %8503, %8561 ]
  %8565 = phi float [ %9321, %9319 ], [ %8504, %8561 ]
  %8566 = phi float [ %9322, %9319 ], [ %8505, %8561 ]
  %8567 = phi float [ %9323, %9319 ], [ %8506, %8561 ]
  %8568 = phi float [ %9324, %9319 ], [ %8507, %8561 ]
  %8569 = phi float [ %9325, %9319 ], [ %8508, %8561 ]
  %8570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.i32 %8570, 0
  %8572 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8545, i32 %8571, i32 %8563)  ; UMad(a,b,c)
  %8573 = shl i32 %8572, 2
  %8574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8573, i32 undef)  ; BufferLoad(srv,index,wot)
  %8575 = extractvalue %dx.types.ResRet.i32 %8574, 0
  %8576 = shl i32 %8563, 5
  %8577 = sub nsw i32 %8555, %8576
  %8578 = call i32 @dx.op.binary.i32(i32 37, i32 %8577, i32 0)  ; IMax(a,b)
  %8579 = call i32 @dx.op.binary.i32(i32 38, i32 %8578, i32 31)  ; IMin(a,b)
  %8580 = sub nsw i32 1, %8555
  %8581 = add nsw i32 %8580, %8556
  %8582 = call i32 @dx.op.binary.i32(i32 37, i32 %8581, i32 0)  ; IMax(a,b)
  %8583 = call i32 @dx.op.binary.i32(i32 38, i32 %8582, i32 32)  ; IMin(a,b)
  %8584 = and i32 %8583, 31
  %8585 = shl i32 -1, %8584
  %8586 = xor i32 %8585, -1
  %8587 = and i32 %8579, 31
  %8588 = shl i32 %8586, %8587
  %8589 = icmp eq i32 %8583, 32
  %8590 = select i1 %8589, i32 -1, i32 %8588
  %8591 = and i32 %8590, %8575
  %8592 = icmp eq i32 %8591, 0
  br i1 %8592, label %9319, label %8593

; <label>:8593                                    ; preds = %8562
  br label %8594

; <label>:8594                                    ; preds = %8729, %8593
  %8595 = phi i32 [ %8606, %8729 ], [ %8591, %8593 ]
  %8596 = phi float [ %8730, %8729 ], [ %8564, %8593 ]
  %8597 = phi float [ %8731, %8729 ], [ %8565, %8593 ]
  %8598 = phi float [ %8732, %8729 ], [ %8566, %8593 ]
  %8599 = phi float [ %8733, %8729 ], [ %8567, %8593 ]
  %8600 = phi float [ %8734, %8729 ], [ %8568, %8593 ]
  %8601 = phi float [ %8735, %8729 ], [ %8569, %8593 ]
  %8602 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8595)  ; FirstbitLo(value)
  %8603 = add i32 %8602, %8576
  %8604 = and i32 %8602, 31
  %8605 = shl i32 1, %8604
  %8606 = xor i32 %8605, %8595
  %8607 = mul i32 %8603, 112
  %8608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8607, i32 undef)  ; BufferLoad(srv,index,wot)
  %8609 = extractvalue %dx.types.ResRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.ResRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.ResRet.f32 %8608, 2
  %8612 = or i32 %8607, 12
  %8613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8612, i32 undef)  ; BufferLoad(srv,index,wot)
  %8614 = extractvalue %dx.types.ResRet.f32 %8613, 0
  %8615 = add i32 %8607, 16
  %8616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8615, i32 undef)  ; BufferLoad(srv,index,wot)
  %8617 = extractvalue %dx.types.ResRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.ResRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.ResRet.f32 %8616, 2
  %8620 = add i32 %8607, 28
  %8621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8620, i32 undef)  ; BufferLoad(srv,index,wot)
  %8622 = extractvalue %dx.types.ResRet.i32 %8621, 0
  %8623 = add i32 %8607, 44
  %8624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8623, i32 undef)  ; BufferLoad(srv,index,wot)
  %8625 = extractvalue %dx.types.ResRet.f32 %8624, 0
  %8626 = add i32 %8607, 48
  %8627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8626, i32 undef)  ; BufferLoad(srv,index,wot)
  %8628 = extractvalue %dx.types.ResRet.f32 %8627, 0
  %8629 = extractvalue %dx.types.ResRet.f32 %8627, 1
  %8630 = extractvalue %dx.types.ResRet.f32 %8627, 2
  %8631 = extractvalue %dx.types.ResRet.f32 %8627, 3
  %8632 = add i32 %8607, 64
  %8633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8632, i32 undef)  ; BufferLoad(srv,index,wot)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.ResRet.f32 %8633, 1
  %8636 = extractvalue %dx.types.ResRet.f32 %8633, 2
  %8637 = extractvalue %dx.types.ResRet.f32 %8633, 3
  %8638 = add i32 %8607, 80
  %8639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8638, i32 undef)  ; BufferLoad(srv,index,wot)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 2
  %8642 = add i32 %8607, 92
  %8643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8642, i32 undef)  ; BufferLoad(srv,index,wot)
  %8644 = extractvalue %dx.types.ResRet.i32 %8643, 0
  %8645 = call float @dx.op.dot3.f32(i32 55, float %8609, float %8610, float %8611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = select i1 %228, float %8640, float %8609
  %8647 = select i1 %228, float %8645, float %8610
  %8648 = select i1 %228, float %8641, float %8611
  %8649 = and i32 %8644, 65535
  %8650 = uitofp i32 %8649 to float
  %8651 = lshr i32 %8644, 16
  %8652 = uitofp i32 %8651 to float
  %8653 = and i32 %8622, 65535
  %8654 = and i32 %8622, 50331648
  %8655 = icmp slt i32 %8622, 0
  %8656 = icmp eq i32 %8654, 33554432
  %8657 = fsub fast float %8628, %166
  %8658 = fsub fast float %8629, %167
  %8659 = fsub fast float %8630, %168
  %8660 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8658, float %8659, float %8657, float %8658, float %8659)  ; Dot3(ax,ay,az,bx,by,bz)
  %8661 = call float @dx.op.unary.f32(i32 24, float %8660)  ; Sqrt(value)
  %8662 = fdiv fast float 1.000000e+00, %8661
  %8663 = fmul fast float %8662, %8657
  %8664 = fmul fast float %8662, %8658
  %8665 = fmul fast float %8662, %8659
  %8666 = fadd fast float %8661, %8614
  %8667 = fdiv fast float 1.000000e+00, %8666
  %8668 = fmul float %8625, %8667
  %8669 = fmul float %8668, %8668
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  br i1 %8656, label %8671, label %8692

; <label>:8671                                    ; preds = %8594
  %8672 = fmul fast float %8636, %8617
  %8673 = fmul fast float %8636, %8618
  %8674 = fmul fast float %8636, %8619
  %8675 = fadd fast float %8657, %8672
  %8676 = fadd fast float %8658, %8673
  %8677 = fadd fast float %8659, %8674
  %8678 = call float @dx.op.dot3.f32(i32 55, float %8675, float %8676, float %8677, float %8675, float %8676, float %8677)  ; Dot3(ax,ay,az,bx,by,bz)
  %8679 = call float @dx.op.unary.f32(i32 25, float %8678)  ; Rsqrt(value)
  %8680 = fmul fast float %8679, %8675
  %8681 = fmul fast float %8679, %8676
  %8682 = fmul fast float %8679, %8677
  %8683 = fsub fast float %166, %8628
  %8684 = fsub fast float %167, %8629
  %8685 = fsub fast float %168, %8630
  %8686 = fsub fast float -0.000000e+00, %8683
  %8687 = fsub fast float -0.000000e+00, %8684
  %8688 = fsub fast float -0.000000e+00, %8685
  %8689 = call float @dx.op.dot3.f32(i32 55, float %8686, float %8687, float %8688, float %8617, float %8618, float %8619)  ; Dot3(ax,ay,az,bx,by,bz)
  %8690 = fcmp fast ogt float %8689, 0.000000e+00
  %8691 = uitofp i1 %8690 to float
  br label %8692

; <label>:8692                                    ; preds = %8671, %8594
  %8693 = phi float [ %8691, %8671 ], [ 1.000000e+00, %8594 ]
  %8694 = phi float [ %8680, %8671 ], [ %8663, %8594 ]
  %8695 = phi float [ %8681, %8671 ], [ %8664, %8594 ]
  %8696 = phi float [ %8682, %8671 ], [ %8665, %8594 ]
  %8697 = call float @dx.op.dot3.f32(i32 55, float %8617, float %8618, float %8619, float %8694, float %8695, float %8696)  ; Dot3(ax,ay,az,bx,by,bz)
  %8698 = fmul fast float %8697, %8697
  %8699 = call float @dx.op.unary.f32(i32 7, float %8698)  ; Saturate(value)
  %8700 = fsub fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8700, 5.000000e-01
  %8702 = fcmp fast ogt float %8697, 0.000000e+00
  %8703 = fsub fast float 1.000000e+00, %8701
  %8704 = select i1 %8702, float %8701, float %8703
  %8705 = fmul fast float %8704, %8652
  %8706 = fadd fast float %8705, %8650
  %8707 = fmul fast float %8706, 0x3EF0001000000000
  %8708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %56, float %8707, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8709 = extractvalue %dx.types.ResRet.f32 %8708, 0
  %8710 = fmul fast float %8697, %8634
  %8711 = fadd fast float %8710, %8635
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = select i1 %8656, float 1.000000e+00, float %8712
  %8714 = select i1 %8656, float %8712, float 1.000000e+00
  %8715 = fmul fast float %8661, %8631
  %8716 = fsub fast float 1.000000e+00, %8715
  %8717 = fmul fast float %8716, %8637
  %8718 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8719 = fmul fast float %8718, %8714
  %8720 = fmul fast float %8719, 2.000000e+00
  %8721 = fsub fast float 3.000000e+00, %8720
  %8722 = fmul fast float %8709, %8693
  %8723 = fmul fast float %8719, %8719
  %8724 = fmul fast float %8723, %8722
  %8725 = fmul fast float %8724, %8721
  %8726 = call float @dx.op.binary.f32(i32 36, float %8725, float %8725)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8725, float %8726)  ; FMin(a,b)
  %8728 = fcmp fast ogt float %8727, 0.000000e+00
  br i1 %8728, label %8737, label %8729, !dx.controlflow.hints !135

; <label>:8729                                    ; preds = %9272, %8883, %8692
  %8730 = phi float [ %8596, %8883 ], [ %8596, %8692 ], [ %9315, %9272 ]
  %8731 = phi float [ %8597, %8883 ], [ %8597, %8692 ], [ %9316, %9272 ]
  %8732 = phi float [ %8598, %8883 ], [ %8598, %8692 ], [ %9317, %9272 ]
  %8733 = phi float [ %8599, %8883 ], [ %8599, %8692 ], [ %9309, %9272 ]
  %8734 = phi float [ %8600, %8883 ], [ %8600, %8692 ], [ %9310, %9272 ]
  %8735 = phi float [ %8601, %8883 ], [ %8601, %8692 ], [ %9311, %9272 ]
  %8736 = icmp eq i32 %8595, %8605
  br i1 %8736, label %9318, label %8594

; <label>:8737                                    ; preds = %8692
  %8738 = icmp eq i32 %8653, 255
  br i1 %8738, label %8883, label %8739, !dx.controlflow.hints !136

; <label>:8739                                    ; preds = %8737
  %8740 = mul nuw nsw i32 %8653, 176
  %8741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8740, i32 undef)  ; BufferLoad(srv,index,wot)
  %8742 = extractvalue %dx.types.ResRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.ResRet.f32 %8741, 1
  %8744 = extractvalue %dx.types.ResRet.f32 %8741, 2
  %8745 = extractvalue %dx.types.ResRet.f32 %8741, 3
  %8746 = add nuw nsw i32 %8740, 16
  %8747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8746, i32 undef)  ; BufferLoad(srv,index,wot)
  %8748 = extractvalue %dx.types.ResRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.ResRet.f32 %8747, 1
  %8750 = add nuw nsw i32 %8740, 32
  %8751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8750, i32 undef)  ; BufferLoad(srv,index,wot)
  %8752 = extractvalue %dx.types.ResRet.f32 %8751, 0
  %8753 = extractvalue %dx.types.ResRet.f32 %8751, 1
  %8754 = extractvalue %dx.types.ResRet.f32 %8751, 2
  %8755 = add nuw nsw i32 %8740, 48
  %8756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8755, i32 undef)  ; BufferLoad(srv,index,wot)
  %8757 = extractvalue %dx.types.ResRet.f32 %8756, 0
  %8758 = extractvalue %dx.types.ResRet.f32 %8756, 1
  %8759 = extractvalue %dx.types.ResRet.f32 %8756, 2
  %8760 = extractvalue %dx.types.ResRet.f32 %8756, 3
  %8761 = add nuw nsw i32 %8740, 64
  %8762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8761, i32 undef)  ; BufferLoad(srv,index,wot)
  %8763 = extractvalue %dx.types.ResRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.ResRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.ResRet.f32 %8762, 2
  %8766 = extractvalue %dx.types.ResRet.f32 %8762, 3
  %8767 = add nuw nsw i32 %8740, 80
  %8768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8767, i32 undef)  ; BufferLoad(srv,index,wot)
  %8769 = extractvalue %dx.types.ResRet.f32 %8768, 0
  %8770 = extractvalue %dx.types.ResRet.f32 %8768, 1
  %8771 = extractvalue %dx.types.ResRet.f32 %8768, 2
  %8772 = extractvalue %dx.types.ResRet.f32 %8768, 3
  %8773 = add nuw nsw i32 %8740, 96
  %8774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8773, i32 undef)  ; BufferLoad(srv,index,wot)
  %8775 = extractvalue %dx.types.ResRet.f32 %8774, 0
  %8776 = extractvalue %dx.types.ResRet.f32 %8774, 1
  %8777 = extractvalue %dx.types.ResRet.f32 %8774, 2
  %8778 = extractvalue %dx.types.ResRet.f32 %8774, 3
  %8779 = bitcast float %8749 to i32
  %8780 = fmul fast float %8754, %118
  %8781 = fmul fast float %8754, %119
  %8782 = fmul fast float %8754, %120
  %8783 = fadd fast float %8780, %166
  %8784 = fadd fast float %8781, %167
  %8785 = fadd fast float %8782, %168
  %8786 = fmul fast float %8783, %8757
  %8787 = call float @dx.op.tertiary.f32(i32 46, float %8784, float %8763, float %8786)  ; FMad(a,b,c)
  %8788 = call float @dx.op.tertiary.f32(i32 46, float %8785, float %8769, float %8787)  ; FMad(a,b,c)
  %8789 = fadd fast float %8788, %8775
  %8790 = fmul fast float %8783, %8758
  %8791 = call float @dx.op.tertiary.f32(i32 46, float %8784, float %8764, float %8790)  ; FMad(a,b,c)
  %8792 = call float @dx.op.tertiary.f32(i32 46, float %8785, float %8770, float %8791)  ; FMad(a,b,c)
  %8793 = fadd fast float %8792, %8776
  %8794 = fmul fast float %8783, %8759
  %8795 = call float @dx.op.tertiary.f32(i32 46, float %8784, float %8765, float %8794)  ; FMad(a,b,c)
  %8796 = call float @dx.op.tertiary.f32(i32 46, float %8785, float %8771, float %8795)  ; FMad(a,b,c)
  %8797 = fadd fast float %8796, %8777
  %8798 = fmul fast float %8783, %8760
  %8799 = call float @dx.op.tertiary.f32(i32 46, float %8784, float %8766, float %8798)  ; FMad(a,b,c)
  %8800 = call float @dx.op.tertiary.f32(i32 46, float %8785, float %8772, float %8799)  ; FMad(a,b,c)
  %8801 = fadd fast float %8800, %8778
  %8802 = fdiv fast float %8789, %8801
  %8803 = fdiv fast float %8793, %8801
  %8804 = fdiv fast float %8797, %8801
  %8805 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8804)  ; FMax(a,b)
  %8806 = fmul fast float %241, 0x401921FB60000000
  %8807 = call float @dx.op.unary.f32(i32 13, float %8806)  ; Sin(value)
  %8808 = call float @dx.op.unary.f32(i32 12, float %8806)  ; Cos(value)
  %8809 = fmul fast float %8808, %8753
  %8810 = call float @dx.op.tertiary.f32(i32 46, float %8807, float %8753, float 0.000000e+00)  ; FMad(a,b,c)
  %8811 = fmul fast float %8753, %8807
  %8812 = fsub fast float -0.000000e+00, %8811
  %8813 = call float @dx.op.tertiary.f32(i32 46, float %8808, float %8753, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8814

; <label>:8814                                    ; preds = %8814, %8739
  %8815 = phi float [ 0.000000e+00, %8739 ], [ %8847, %8814 ]
  %8816 = phi float [ 0.000000e+00, %8739 ], [ %8849, %8814 ]
  %8817 = phi i32 [ 0, %8739 ], [ %8850, %8814 ]
  %8818 = mul i32 %8817, 2
  %8819 = add i32 0, %8818
  %8820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8819
  %8821 = load float, float* %8820, align 4
  %8822 = mul i32 %8817, 2
  %8823 = add i32 1, %8822
  %8824 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8823
  %8825 = load float, float* %8824, align 4
  %8826 = fmul fast float %8809, %8821
  %8827 = call float @dx.op.tertiary.f32(i32 46, float %8825, float %8812, float %8826)  ; FMad(a,b,c)
  %8828 = fmul fast float %8821, %8810
  %8829 = call float @dx.op.tertiary.f32(i32 46, float %8825, float %8813, float %8828)  ; FMad(a,b,c)
  %8830 = fadd fast float %8827, %8802
  %8831 = fadd fast float %8829, %8803
  %8832 = fmul fast float %8830, %8748
  %8833 = fmul fast float %8831, %8748
  %8834 = call float @dx.op.binary.f32(i32 35, float %8832, float %8744)  ; FMax(a,b)
  %8835 = call float @dx.op.binary.f32(i32 35, float %8833, float %8744)  ; FMax(a,b)
  %8836 = call float @dx.op.binary.f32(i32 36, float %8834, float %8745)  ; FMin(a,b)
  %8837 = call float @dx.op.binary.f32(i32 36, float %8835, float %8745)  ; FMin(a,b)
  %8838 = fadd fast float %8836, %8742
  %8839 = fadd fast float %8837, %8743
  %8840 = uitofp i32 %8779 to float
  %8841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %57, float %8838, float %8839, float %8840, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8842 = extractvalue %dx.types.ResRet.f32 %8841, 0
  %8843 = fsub fast float %8842, %8805
  %8844 = fsub fast float %8843, %8752
  %8845 = fcmp fast ogt float %8844, 0.000000e+00
  %8846 = select i1 %8845, float 1.000000e+00, float 0.000000e+00
  %8847 = fadd fast float %8846, %8815
  %8848 = select i1 %8845, float %8844, float 0.000000e+00
  %8849 = fadd fast float %8848, %8816
  %8850 = add nuw nsw i32 %8817, 1
  %8851 = icmp eq i32 %8850, 8
  br i1 %8851, label %8852, label %8814

; <label>:8852                                    ; preds = %8814
  %8853 = fdiv fast float 1.000000e+00, %8847
  %8854 = fmul fast float %8853, %8849
  %8855 = fdiv fast float 1.000000e+00, %8805
  %8856 = fmul fast float %8854, %8855
  %8857 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8858 = call float @dx.op.binary.f32(i32 35, float %8857, float 0.000000e+00)  ; FMax(a,b)
  %8859 = fmul fast float %8847, 1.250000e-01
  %8860 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8861 = fmul fast float %8860, 2.000000e+00
  %8862 = fadd fast float %8861, -1.000000e+00
  %8863 = fcmp fast ogt float %8862, 0.000000e+00
  %8864 = fcmp fast olt float %8862, 0.000000e+00
  %8865 = zext i1 %8863 to i32
  %8866 = zext i1 %8864 to i32
  %8867 = sub nsw i32 %8865, %8866
  %8868 = sitofp i32 %8867 to float
  %8869 = fmul fast float %8868, %8862
  %8870 = fsub fast float 1.000000e+00, %8869
  %8871 = fmul fast float %8870, %8870
  %8872 = fmul fast float %8871, %8870
  %8873 = fsub fast float %8870, %8872
  %8874 = fmul fast float %8873, %8858
  %8875 = fsub fast float 1.000000e+00, %8872
  %8876 = fsub fast float %8875, %8874
  %8877 = fmul fast float %8868, 5.000000e-01
  %8878 = fmul fast float %8877, %8876
  %8879 = fsub fast float -5.000000e-01, %8878
  %8880 = fmul fast float %8879, %8713
  %8881 = fadd fast float %8880, 1.000000e+00
  %8882 = fmul fast float %8881, %8725
  br label %8883

; <label>:8883                                    ; preds = %8852, %8737
  %8884 = phi float [ %8882, %8852 ], [ %8725, %8737 ]
  %8885 = call float @dx.op.binary.f32(i32 36, float %8884, float %8884)  ; FMin(a,b)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8884, float %8885)  ; FMin(a,b)
  %8887 = fcmp fast ogt float %8886, 0.000000e+00
  br i1 %8887, label %8888, label %8729, !dx.controlflow.hints !137

; <label>:8888                                    ; preds = %8883
  %8889 = fmul fast float %8884, %8646
  %8890 = fmul fast float %8884, %8647
  %8891 = fmul fast float %8884, %8648
  %8892 = fsub fast float %8630, %5517
  %8893 = fcmp fast ogt float %8892, 0.000000e+00
  %8894 = fsub fast float %168, %5517
  %8895 = fcmp fast ogt float %8894, 0.000000e+00
  %8896 = xor i1 %8895, %8893
  %8897 = fsub fast float %5517, %8630
  %8898 = fmul fast float %8897, 2.000000e+00
  %8899 = fadd fast float %8898, %8630
  %8900 = select i1 %8896, float %8630, float %8899
  %8901 = fsub fast float %8900, %168
  %8902 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8658, float %8901, float %8657, float %8658, float %8901)  ; Dot3(ax,ay,az,bx,by,bz)
  %8903 = call float @dx.op.unary.f32(i32 25, float %8902)  ; Rsqrt(value)
  %8904 = fmul fast float %8903, %8657
  %8905 = fmul fast float %8903, %8658
  %8906 = fmul fast float %8903, %8901
  %8907 = fsub fast float %5517, %168
  %8908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8907)  ; Dot3(ax,ay,az,bx,by,bz)
  %8909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8904, float %8905, float %8906)  ; Dot3(ax,ay,az,bx,by,bz)
  %8910 = fdiv fast float 1.000000e+00, %8909
  %8911 = fmul fast float %8910, %8908
  %8912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8894, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8913 = fcmp fast ogt float %8912, 0.000000e+00
  %8914 = fcmp fast olt float %8912, 0.000000e+00
  %8915 = zext i1 %8913 to i32
  %8916 = zext i1 %8914 to i32
  %8917 = sub nsw i32 %8915, %8916
  %8918 = sitofp i32 %8917 to float
  %8919 = fsub fast float %8900, %5517
  %8920 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8658, float %8919, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8921 = fcmp fast ogt float %8920, 0.000000e+00
  %8922 = fcmp fast olt float %8920, 0.000000e+00
  %8923 = zext i1 %8921 to i32
  %8924 = zext i1 %8922 to i32
  %8925 = sub nsw i32 %8923, %8924
  %8926 = sitofp i32 %8925 to float
  %8927 = fcmp fast une float %8918, %8926
  br i1 %8927, label %8928, label %8938

; <label>:8928                                    ; preds = %8888
  %8929 = fmul fast float %8911, %8906
  %8930 = fmul fast float %8911, %8905
  %8931 = fmul fast float %8911, %8904
  %8932 = fmul fast float %8931, %8931
  %8933 = fmul fast float %8930, %8930
  %8934 = fadd fast float %8932, %8933
  %8935 = fmul fast float %8929, %8929
  %8936 = fadd fast float %8934, %8935
  %8937 = call float @dx.op.unary.f32(i32 24, float %8936)  ; Sqrt(value)
  br label %8950

; <label>:8938                                    ; preds = %8888
  %8939 = icmp slt i32 %8917, 0
  br i1 %8939, label %8940, label %8950

; <label>:8940                                    ; preds = %8938
  %8941 = fsub fast float %166, %8628
  %8942 = fsub fast float %167, %8629
  %8943 = fsub fast float %168, %8900
  %8944 = fmul fast float %8941, %8941
  %8945 = fmul fast float %8942, %8942
  %8946 = fadd fast float %8944, %8945
  %8947 = fmul fast float %8943, %8943
  %8948 = fadd fast float %8946, %8947
  %8949 = call float @dx.op.unary.f32(i32 24, float %8948)  ; Sqrt(value)
  br label %8950

; <label>:8950                                    ; preds = %8940, %8938, %8928
  %8951 = phi float [ %8937, %8928 ], [ %8949, %8940 ], [ 0.000000e+00, %8938 ]
  %8952 = and i1 %8895, %8893
  %8953 = fsub fast float -0.000000e+00, %8951
  %8954 = select i1 %8952, float -0.000000e+00, float %8953
  %8955 = fmul fast float %5514, 0x3FF7154760000000
  %8956 = fmul fast float %8955, %8954
  %8957 = fmul fast float %5515, 0x3FF7154760000000
  %8958 = fmul fast float %8957, %8954
  %8959 = fmul fast float %5516, 0x3FF7154760000000
  %8960 = fmul fast float %8959, %8954
  %8961 = call float @dx.op.unary.f32(i32 21, float %8956)  ; Exp(value)
  %8962 = call float @dx.op.unary.f32(i32 21, float %8958)  ; Exp(value)
  %8963 = call float @dx.op.unary.f32(i32 21, float %8960)  ; Exp(value)
  %8964 = call float @dx.op.unary.f32(i32 7, float %8961)  ; Saturate(value)
  %8965 = call float @dx.op.unary.f32(i32 7, float %8962)  ; Saturate(value)
  %8966 = call float @dx.op.unary.f32(i32 7, float %8963)  ; Saturate(value)
  %8967 = fmul fast float %8889, %8964
  %8968 = fmul fast float %8890, %8965
  %8969 = fmul fast float %8891, %8966
  %8970 = fsub fast float %8663, %5714
  %8971 = fsub fast float %8664, %5713
  %8972 = fsub fast float %8665, %5712
  %8973 = call float @dx.op.dot3.f32(i32 55, float %8970, float %8971, float %8972, float %8970, float %8971, float %8972)  ; Dot3(ax,ay,az,bx,by,bz)
  %8974 = call float @dx.op.unary.f32(i32 25, float %8973)  ; Rsqrt(value)
  %8975 = fmul fast float %8974, %8970
  %8976 = fmul fast float %8974, %8971
  %8977 = fmul fast float %8974, %8972
  %8978 = call float @dx.op.dot3.f32(i32 55, float %8663, float %8664, float %8665, float %5721, float %5722, float %5723)  ; Dot3(ax,ay,az,bx,by,bz)
  %8979 = call float @dx.op.dot3.f32(i32 55, float %5711, float %5710, float %5709, float %8975, float %8976, float %8977)  ; Dot3(ax,ay,az,bx,by,bz)
  %8980 = call float @dx.op.unary.f32(i32 7, float %8978)  ; Saturate(value)
  %8981 = fmul fast float %8980, %8670
  %8982 = fmul fast float %8980, %8980
  %8983 = fmul fast float %8982, %5788
  %8984 = call float @dx.op.unary.f32(i32 7, float %8983)  ; Saturate(value)
  %8985 = fmul fast float %8981, %8984
  %8986 = bitcast float %8660 to i32
  %8987 = ashr i32 %8986, 1
  %8988 = sub nsw i32 1597463007, %8987
  %8989 = bitcast i32 %8988 to float
  %8990 = fmul fast float %8989, %8657
  %8991 = fmul fast float %8989, %8658
  %8992 = fmul fast float %8989, %8659
  %8993 = fsub fast float %8990, %5714
  %8994 = fsub fast float %8991, %5713
  %8995 = fsub fast float %8992, %5712
  %8996 = call float @dx.op.dot3.f32(i32 55, float %8993, float %8994, float %8995, float %8993, float %8994, float %8995)  ; Dot3(ax,ay,az,bx,by,bz)
  %8997 = call float @dx.op.unary.f32(i32 25, float %8996)  ; Rsqrt(value)
  %8998 = fmul fast float %8993, %8997
  %8999 = fmul fast float %8994, %8997
  %9000 = fmul fast float %8995, %8997
  %9001 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %8998, float %8999, float %9000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9002 = fmul fast float %9001, %9001
  %9003 = call float @dx.op.unary.f32(i32 6, float %8978)  ; FAbs(value)
  %9004 = fsub fast float 1.000000e+00, %5781
  %9005 = fmul fast float %5763, %5763
  %9006 = fmul fast float %9005, %9004
  %9007 = fadd fast float %9006, %5781
  %9008 = bitcast float %9007 to i32
  %9009 = ashr i32 %9008, 1
  %9010 = add nsw i32 %9009, 532487669
  %9011 = bitcast i32 %9010 to float
  %9012 = fadd fast float %9011, %5763
  %9013 = fmul fast float %5781, %9002
  %9014 = fsub fast float 1.000000e+00, %9002
  %9015 = fadd fast float %9014, %9013
  %9016 = fmul fast float %9003, %9003
  %9017 = fmul fast float %9016, %9004
  %9018 = fadd fast float %9017, %5781
  %9019 = bitcast float %9018 to i32
  %9020 = ashr i32 %9019, 1
  %9021 = add nsw i32 %9020, 532487669
  %9022 = bitcast i32 %9021 to float
  %9023 = fadd fast float %9022, %9003
  %9024 = fmul fast float %9015, %9015
  %9025 = fmul fast float %9024, %9012
  %9026 = fmul fast float %9025, %9023
  %9027 = fdiv fast float 1.000000e+00, %9026
  %9028 = bitcast float %5781 to i32
  %9029 = sitofp i32 %9028 to float
  %9030 = fmul fast float %9029, 0x3FE7F73180000000
  %9031 = fadd fast float %9030, 0x41AFE27C40000000
  %9032 = fptosi float %9031 to i32
  %9033 = bitcast i32 %9032 to float
  %9034 = fmul fast float %8625, 0x3FD80E9D60000000
  %9035 = fmul fast float %9034, %8989
  %9036 = fadd fast float %9033, %9035
  %9037 = bitcast float %9036 to i32
  %9038 = sub nsw i32 2129859010, %9037
  %9039 = bitcast i32 %9038 to float
  %9040 = fmul fast float %5781, %9027
  %9041 = fmul fast float %9040, %9033
  %9042 = fmul fast float %9041, %9039
  %9043 = fmul fast float %6024, 0x3FF9999980000000
  %9044 = fsub fast float 5.000000e+00, %9043
  %9045 = call float @dx.op.unary.f32(i32 6, float %8979)  ; FAbs(value)
  %9046 = fsub fast float 1.000000e+00, %9045
  %9047 = fmul fast float %6024, 0x41D9660740000000
  %9048 = fadd fast float %9047, 0xC1EFBF8940000000
  %9049 = bitcast float %9046 to i32
  %9050 = sitofp i32 %9049 to float
  %9051 = fmul fast float %9050, %9044
  %9052 = fadd fast float %9048, %9051
  %9053 = fptosi float %9052 to i32
  %9054 = bitcast i32 %9053 to float
  %9055 = fsub fast float 1.000000e+00, %5715
  %9056 = fsub fast float 1.000000e+00, %5716
  %9057 = fsub fast float 1.000000e+00, %5761
  %9058 = fmul fast float %9054, %9055
  %9059 = fmul fast float %9054, %9056
  %9060 = fmul fast float %9054, %9057
  %9061 = fadd fast float %9058, %5715
  %9062 = fadd fast float %9059, %5716
  %9063 = fadd fast float %9060, %5761
  br i1 %6047, label %9064, label %9087

; <label>:9064                                    ; preds = %8950
  %9065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %9045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9066 = extractvalue %dx.types.ResRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.ResRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.ResRet.f32 %9065, 2
  %9069 = fadd fast float %9066, -5.000000e-01
  %9070 = fadd fast float %9067, -5.000000e-01
  %9071 = fadd fast float %9068, -5.000000e-01
  %9072 = fmul fast float %5715, 4.000000e+00
  %9073 = fmul fast float %9072, %9055
  %9074 = fmul fast float %9073, %9069
  %9075 = fmul fast float %5716, 4.000000e+00
  %9076 = fmul fast float %9075, %9056
  %9077 = fmul fast float %9076, %9070
  %9078 = fmul fast float %5761, 4.000000e+00
  %9079 = fmul fast float %9078, %9057
  %9080 = fmul fast float %9079, %9071
  %9081 = fadd fast float %9074, %9061
  %9082 = fadd fast float %9077, %9062
  %9083 = fadd fast float %9080, %9063
  %9084 = call float @dx.op.unary.f32(i32 7, float %9081)  ; Saturate(value)
  %9085 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9086 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  br label %9087

; <label>:9087                                    ; preds = %9064, %8950
  %9088 = phi float [ %9084, %9064 ], [ %9061, %8950 ]
  %9089 = phi float [ %9085, %9064 ], [ %9062, %8950 ]
  %9090 = phi float [ %9086, %9064 ], [ %9063, %8950 ]
  %9091 = fmul fast float %8978, 9.843750e-01
  %9092 = fadd fast float %9091, 7.812500e-03
  %9093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9092, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9094 = extractvalue %dx.types.ResRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.ResRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.ResRet.f32 %9093, 2
  %9097 = extractvalue %dx.types.ResRet.f32 %9093, 3
  %9098 = fsub fast float %9096, %9094
  %9099 = fsub fast float %9097, %9095
  %9100 = fmul fast float %9098, %6034
  %9101 = fmul fast float %9099, %6034
  %9102 = fadd fast float %9100, %9094
  %9103 = fadd fast float %9101, %9095
  %9104 = fmul fast float %9102, %5715
  %9105 = fmul fast float %9102, %5716
  %9106 = fmul fast float %9102, %5761
  %9107 = fadd fast float %9104, %9103
  %9108 = fadd fast float %9105, %9103
  %9109 = fadd fast float %9106, %9103
  br i1 %6047, label %9110, label %9133

; <label>:9110                                    ; preds = %9087
  %9111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %8978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9112 = extractvalue %dx.types.ResRet.f32 %9111, 0
  %9113 = extractvalue %dx.types.ResRet.f32 %9111, 1
  %9114 = extractvalue %dx.types.ResRet.f32 %9111, 2
  %9115 = fadd fast float %9112, -5.000000e-01
  %9116 = fadd fast float %9113, -5.000000e-01
  %9117 = fadd fast float %9114, -5.000000e-01
  %9118 = fmul fast float %5715, 4.000000e+00
  %9119 = fmul fast float %9118, %9055
  %9120 = fmul fast float %9119, %9115
  %9121 = fmul fast float %5716, 4.000000e+00
  %9122 = fmul fast float %9121, %9056
  %9123 = fmul fast float %9122, %9116
  %9124 = fmul fast float %5761, 4.000000e+00
  %9125 = fmul fast float %9124, %9057
  %9126 = fmul fast float %9125, %9117
  %9127 = fadd fast float %9120, %9107
  %9128 = fadd fast float %9123, %9108
  %9129 = fadd fast float %9126, %9109
  %9130 = call float @dx.op.unary.f32(i32 7, float %9127)  ; Saturate(value)
  %9131 = call float @dx.op.unary.f32(i32 7, float %9128)  ; Saturate(value)
  %9132 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  br label %9133

; <label>:9133                                    ; preds = %9110, %9087
  %9134 = phi float [ %9130, %9110 ], [ %9107, %9087 ]
  %9135 = phi float [ %9131, %9110 ], [ %9108, %9087 ]
  %9136 = phi float [ %9132, %9110 ], [ %9109, %9087 ]
  %9137 = call float @dx.op.binary.f32(i32 35, float %9135, float %9136)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9134, float %9137)  ; FMax(a,b)
  %9139 = fsub fast float 1.000000e+00, %9138
  %9140 = call float @dx.op.binary.f32(i32 35, float %9003, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9141 = fdiv fast float %4432, %9140
  %9142 = fmul fast float %6597, %9141
  %9143 = fmul fast float %6599, %9141
  %9144 = fmul fast float %6601, %9141
  %9145 = call float @dx.op.unary.f32(i32 21, float %9142)  ; Exp(value)
  %9146 = call float @dx.op.unary.f32(i32 21, float %9143)  ; Exp(value)
  %9147 = call float @dx.op.unary.f32(i32 21, float %9144)  ; Exp(value)
  %9148 = call float @dx.op.unary.f32(i32 7, float %9145)  ; Saturate(value)
  %9149 = call float @dx.op.unary.f32(i32 7, float %9146)  ; Saturate(value)
  %9150 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9151 = select i1 %6594, float %9148, float 0.000000e+00
  %9152 = select i1 %6595, float %9149, float 0.000000e+00
  %9153 = select i1 %6596, float %9150, float 0.000000e+00
  %9154 = fsub fast float -0.000000e+00, %5721
  %9155 = fsub fast float -0.000000e+00, %5722
  %9156 = fsub fast float -0.000000e+00, %5723
  %9157 = call float @dx.op.dot3.f32(i32 55, float %8663, float %8664, float %8665, float %9154, float %9155, float %9156)  ; Dot3(ax,ay,az,bx,by,bz)
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fmul fast float %9158, %8670
  %9160 = fmul fast float %9158, 9.843750e-01
  %9161 = fadd fast float %9160, 7.812500e-03
  %9162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %56, float %9161, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9163 = extractvalue %dx.types.ResRet.f32 %9162, 0
  %9164 = extractvalue %dx.types.ResRet.f32 %9162, 1
  %9165 = extractvalue %dx.types.ResRet.f32 %9162, 2
  %9166 = extractvalue %dx.types.ResRet.f32 %9162, 3
  %9167 = fsub fast float %9165, %9163
  %9168 = fsub fast float %9166, %9164
  %9169 = fmul fast float %9167, %6034
  %9170 = fmul fast float %9168, %6034
  %9171 = fadd fast float %9169, %9163
  %9172 = fadd fast float %9170, %9164
  %9173 = fmul fast float %9171, %5715
  %9174 = fmul fast float %9171, %5716
  %9175 = fmul fast float %9171, %5761
  %9176 = fadd fast float %9173, %9172
  %9177 = fadd fast float %9174, %9172
  %9178 = fadd fast float %9175, %9172
  br i1 %6047, label %9179, label %9202

; <label>:9179                                    ; preds = %9133
  %9180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %56, float %5084, float %9158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9181 = extractvalue %dx.types.ResRet.f32 %9180, 0
  %9182 = extractvalue %dx.types.ResRet.f32 %9180, 1
  %9183 = extractvalue %dx.types.ResRet.f32 %9180, 2
  %9184 = fadd fast float %9181, -5.000000e-01
  %9185 = fadd fast float %9182, -5.000000e-01
  %9186 = fadd fast float %9183, -5.000000e-01
  %9187 = fmul fast float %5715, 4.000000e+00
  %9188 = fmul fast float %9187, %9055
  %9189 = fmul fast float %9188, %9184
  %9190 = fmul fast float %5716, 4.000000e+00
  %9191 = fmul fast float %9190, %9056
  %9192 = fmul fast float %9191, %9185
  %9193 = fmul fast float %5761, 4.000000e+00
  %9194 = fmul fast float %9193, %9057
  %9195 = fmul fast float %9194, %9186
  %9196 = fadd fast float %9189, %9176
  %9197 = fadd fast float %9192, %9177
  %9198 = fadd fast float %9195, %9178
  %9199 = call float @dx.op.unary.f32(i32 7, float %9196)  ; Saturate(value)
  %9200 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9201 = call float @dx.op.unary.f32(i32 7, float %9198)  ; Saturate(value)
  br label %9202

; <label>:9202                                    ; preds = %9179, %9133
  %9203 = phi float [ %9199, %9179 ], [ %9176, %9133 ]
  %9204 = phi float [ %9200, %9179 ], [ %9177, %9133 ]
  %9205 = phi float [ %9201, %9179 ], [ %9178, %9133 ]
  %9206 = call float @dx.op.binary.f32(i32 35, float %9204, float %9205)  ; FMax(a,b)
  %9207 = call float @dx.op.binary.f32(i32 35, float %9203, float %9206)  ; FMax(a,b)
  %9208 = fsub fast float 1.000000e+00, %9207
  %9209 = fmul fast float %5778, %6661
  %9210 = fadd fast float %6655, %9209
  %9211 = call float @dx.op.unary.f32(i32 7, float %9210)  ; Saturate(value)
  %9212 = fsub fast float %8990, %5769
  %9213 = fsub fast float %8991, %5770
  %9214 = fsub fast float %8992, %5771
  %9215 = call float @dx.op.dot3.f32(i32 55, float %9212, float %9213, float %9214, float %9212, float %9213, float %9214)  ; Dot3(ax,ay,az,bx,by,bz)
  %9216 = call float @dx.op.unary.f32(i32 25, float %9215)  ; Rsqrt(value)
  %9217 = fmul fast float %9212, %9216
  %9218 = fmul fast float %9213, %9216
  %9219 = fmul fast float %9214, %9216
  %9220 = call float @dx.op.dot3.f32(i32 55, float %9154, float %9155, float %9156, float %9217, float %9218, float %9219)  ; Dot3(ax,ay,az,bx,by,bz)
  %9221 = fmul fast float %9220, %9220
  %9222 = call float @dx.op.unary.f32(i32 6, float %9158)  ; FAbs(value)
  %9223 = call float @dx.op.binary.f32(i32 35, float %9211, float 0x3F847AE140000000)  ; FMax(a,b)
  %9224 = fmul fast float %9223, %9223
  %9225 = fmul fast float %9224, %9224
  %9226 = fsub fast float 1.000000e+00, %9225
  %9227 = fmul fast float %9005, %9226
  %9228 = fadd fast float %9227, %9225
  %9229 = bitcast float %9228 to i32
  %9230 = ashr i32 %9229, 1
  %9231 = add nsw i32 %9230, 532487669
  %9232 = bitcast i32 %9231 to float
  %9233 = fadd fast float %9232, %5763
  %9234 = fmul fast float %9225, %9221
  %9235 = fsub fast float 1.000000e+00, %9221
  %9236 = fadd fast float %9235, %9234
  %9237 = fmul fast float %9222, %9222
  %9238 = fmul fast float %9237, %9226
  %9239 = fadd fast float %9238, %9225
  %9240 = bitcast float %9239 to i32
  %9241 = ashr i32 %9240, 1
  %9242 = add nsw i32 %9241, 532487669
  %9243 = bitcast i32 %9242 to float
  %9244 = fadd fast float %9243, %9222
  %9245 = fmul fast float %9236, %9236
  %9246 = fmul fast float %9245, %9233
  %9247 = fmul fast float %9246, %9244
  %9248 = fdiv fast float 1.000000e+00, %9247
  %9249 = bitcast float %9225 to i32
  %9250 = sitofp i32 %9249 to float
  %9251 = fmul fast float %9250, 0x3FE7F73180000000
  %9252 = fadd fast float %9251, 0x41AFE27C40000000
  %9253 = fptosi float %9252 to i32
  %9254 = bitcast i32 %9253 to float
  %9255 = fadd fast float %9254, %9035
  %9256 = bitcast float %9255 to i32
  %9257 = sub nsw i32 2129859010, %9256
  %9258 = bitcast i32 %9257 to float
  %9259 = fmul fast float %9225, %9248
  %9260 = fmul fast float %9259, %9254
  %9261 = fmul fast float %9260, %9258
  br i1 %8655, label %9262, label %9272

; <label>:9262                                    ; preds = %9202
  %9263 = fmul fast float %9159, %9151
  %9264 = fmul fast float %9159, %9152
  %9265 = fmul fast float %9159, %9153
  %9266 = fmul fast float %9263, %9208
  %9267 = fmul fast float %9266, %9261
  %9268 = fmul fast float %9264, %9208
  %9269 = fmul fast float %9268, %9261
  %9270 = fmul fast float %9265, %9208
  %9271 = fmul fast float %9270, %9261
  br label %9272

; <label>:9272                                    ; preds = %9262, %9202
  %9273 = phi float [ %9267, %9262 ], [ 0.000000e+00, %9202 ]
  %9274 = phi float [ %9269, %9262 ], [ 0.000000e+00, %9202 ]
  %9275 = phi float [ %9271, %9262 ], [ 0.000000e+00, %9202 ]
  %9276 = fmul fast float %9088, %9042
  %9277 = fmul fast float %9089, %9042
  %9278 = fmul fast float %9090, %9042
  %9279 = fsub fast float 1.000000e+00, %8979
  %9280 = bitcast float %9279 to i32
  %9281 = sitofp i32 %9280 to float
  %9282 = fmul fast float %9281, 5.000000e+00
  %9283 = fadd fast float %9282, 0xC1EFBF8940000000
  %9284 = fptosi float %9283 to i32
  %9285 = bitcast i32 %9284 to float
  %9286 = fmul fast float %9285, %5085
  %9287 = fmul fast float %9139, %9286
  %9288 = fmul fast float %9287, %6589
  %9289 = fmul fast float %9287, %6590
  %9290 = fmul fast float %9287, %6591
  %9291 = fadd fast float %9288, %9276
  %9292 = fadd fast float %9289, %9277
  %9293 = fadd fast float %9290, %9278
  %9294 = fmul fast float %9291, %8985
  %9295 = fmul fast float %9292, %8985
  %9296 = fmul fast float %9293, %8985
  %9297 = fadd fast float %9294, %9273
  %9298 = fadd fast float %9295, %9274
  %9299 = fadd fast float %9296, %9275
  %9300 = fmul fast float %8967, %5081
  %9301 = fmul fast float %9300, %8985
  %9302 = fmul fast float %9301, %9139
  %9303 = fmul fast float %8968, %5081
  %9304 = fmul fast float %9303, %8985
  %9305 = fmul fast float %9304, %9139
  %9306 = fmul fast float %8969, %5081
  %9307 = fmul fast float %9306, %8985
  %9308 = fmul fast float %9307, %9139
  %9309 = fadd fast float %9302, %8599
  %9310 = fadd fast float %9305, %8600
  %9311 = fadd fast float %9308, %8601
  %9312 = fmul fast float %9300, %9297
  %9313 = fmul fast float %9303, %9298
  %9314 = fmul fast float %9306, %9299
  %9315 = fadd fast float %9312, %8596
  %9316 = fadd fast float %9313, %8597
  %9317 = fadd fast float %9314, %8598
  br label %8729

; <label>:9318                                    ; preds = %8729
  br label %9319

; <label>:9319                                    ; preds = %9318, %8562
  %9320 = phi float [ %8564, %8562 ], [ %8730, %9318 ]
  %9321 = phi float [ %8565, %8562 ], [ %8731, %9318 ]
  %9322 = phi float [ %8566, %8562 ], [ %8732, %9318 ]
  %9323 = phi float [ %8567, %8562 ], [ %8733, %9318 ]
  %9324 = phi float [ %8568, %8562 ], [ %8734, %9318 ]
  %9325 = phi float [ %8569, %8562 ], [ %8735, %9318 ]
  %9326 = add i32 %8563, 1
  %9327 = icmp ugt i32 %9326, %8559
  br i1 %9327, label %9328, label %8562

; <label>:9328                                    ; preds = %9319
  br label %9329

; <label>:9329                                    ; preds = %9328, %8512, %8502
  %9330 = phi float [ %8503, %8502 ], [ %8503, %8512 ], [ %9320, %9328 ]
  %9331 = phi float [ %8504, %8502 ], [ %8504, %8512 ], [ %9321, %9328 ]
  %9332 = phi float [ %8505, %8502 ], [ %8505, %8512 ], [ %9322, %9328 ]
  %9333 = phi float [ %8506, %8502 ], [ %8506, %8512 ], [ %9323, %9328 ]
  %9334 = phi float [ %8507, %8502 ], [ %8507, %8512 ], [ %9324, %9328 ]
  %9335 = phi float [ %8508, %8502 ], [ %8508, %8512 ], [ %9325, %9328 ]
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = fmul fast float %9337, %6668
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 3
  %9341 = fsub fast float 1.000000e+00, %5088
  %9342 = call float @dx.op.unary.f32(i32 7, float %9341)  ; Saturate(value)
  %9343 = fadd fast float %9335, %5087
  %9344 = fmul fast float %9343, %5088
  %9345 = fmul fast float %9342, %9340
  %9346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9346, 3
  %9348 = fmul fast float %9333, %5718
  %9349 = fmul fast float %9334, %5719
  %9350 = fmul fast float %9335, %5720
  %9351 = fcmp fast ogt float %99, %188
  %9352 = and i1 %9351, %5520
  %9353 = or i1 %5526, %9352
  %9354 = icmp eq i32 %5519, 2
  %9355 = fcmp fast ole float %99, %188
  %9356 = and i1 %9355, %9354
  %9357 = or i1 %9356, %9353
  br i1 %9352, label %9358, label %9612

; <label>:9358                                    ; preds = %9329
  %9359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.f32 %9359, 2
  %9361 = extractvalue %dx.types.CBufRet.f32 %9359, 3
  %9362 = fmul fast float %9360, %111
  %9363 = fmul fast float %9361, %112
  %9364 = call float @dx.op.unary.f32(i32 7, float %9362)  ; Saturate(value)
  %9365 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9366 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9364, float %9365, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9367 = extractvalue %dx.types.ResRet.f32 %9366, 0
  %9368 = extractvalue %dx.types.ResRet.f32 %9366, 1
  %9369 = extractvalue %dx.types.ResRet.f32 %9366, 2
  %9370 = extractvalue %dx.types.ResRet.f32 %9366, 3
  %9371 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %9364, float %9365, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9372 = extractvalue %dx.types.ResRet.f32 %9371, 0
  %9373 = extractvalue %dx.types.ResRet.f32 %9371, 1
  %9374 = extractvalue %dx.types.ResRet.f32 %9371, 2
  %9375 = extractvalue %dx.types.ResRet.f32 %9371, 3
  %9376 = call float @dx.op.binary.f32(i32 35, float %9368, float %9369)  ; FMax(a,b)
  %9377 = call float @dx.op.binary.f32(i32 35, float %9367, float %9376)  ; FMax(a,b)
  %9378 = call float @dx.op.binary.f32(i32 35, float %9377, float %9370)  ; FMax(a,b)
  %9379 = call float @dx.op.binary.f32(i32 36, float %9373, float %9374)  ; FMin(a,b)
  %9380 = call float @dx.op.binary.f32(i32 36, float %9372, float %9379)  ; FMin(a,b)
  %9381 = call float @dx.op.binary.f32(i32 36, float %9380, float %9375)  ; FMin(a,b)
  %9382 = fmul fast float %9378, 2.550000e+02
  %9383 = fadd fast float %9382, 0x3F70101020000000
  %9384 = fptoui float %9383 to i32
  %9385 = fmul fast float %9381, 2.550000e+02
  %9386 = fadd fast float %9385, 0x3F70101020000000
  %9387 = fptoui float %9386 to i32
  %9388 = icmp ult i32 %9384, %9387
  br i1 %9388, label %9389, label %9557

; <label>:9389                                    ; preds = %9358
  %9390 = fcmp fast ogt float %98, 9.843750e-01
  %9391 = fadd fast float %99, -4.000000e+00
  %9392 = select i1 %9390, float -4.000000e+00, float %9391
  %9393 = call float @dx.op.binary.f32(i32 35, float %9392, float 0.000000e+00)  ; FMax(a,b)
  %9394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.f32 %9394, 0
  %9396 = fadd fast float %9395, %9393
  %9397 = extractvalue %dx.types.CBufRet.f32 %9394, 2
  %9398 = fmul fast float %9396, %9397
  %9399 = call float @dx.op.unary.f32(i32 23, float %9398)  ; Log(value)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9394, 3
  %9401 = fmul fast float %9400, %9399
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 2
  %9404 = fmul fast float %9401, %9403
  %9405 = call float @dx.op.unary.f32(i32 7, float %9404)  ; Saturate(value)
  %9406 = uitofp i32 %9384 to float
  %9407 = uitofp i32 %9387 to float
  %9408 = fadd fast float %9406, 5.000000e-01
  %9409 = fadd fast float %9407, 5.000000e-01
  %9410 = fmul fast float %9403, %9408
  %9411 = fmul fast float %9403, %9409
  %9412 = fadd fast float %9410, 0x3F0FFB4800000000
  %9413 = fadd fast float %9411, 0xBF0FFB4800000000
  %9414 = call float @dx.op.binary.f32(i32 35, float %9405, float %9412)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9414, float %9413)  ; FMin(a,b)
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 1
  %9418 = extractvalue %dx.types.CBufRet.f32 %9416, 2
  %9419 = extractvalue %dx.types.CBufRet.f32 %9416, 0
  %9420 = fmul fast float %9417, %9415
  %9421 = fadd fast float %9419, %9420
  %9422 = fadd fast float %9419, %9418
  %9423 = fsub fast float %9417, %9418
  %9424 = fadd fast float %9423, %9419
  %9425 = call float @dx.op.binary.f32(i32 35, float %9421, float %9422)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9425, float %9424)  ; FMin(a,b)
  %9427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %9364, float %9365, float %9426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9428 = extractvalue %dx.types.ResRet.f32 %9427, 0
  %9429 = extractvalue %dx.types.ResRet.f32 %9427, 1
  %9430 = extractvalue %dx.types.ResRet.f32 %9427, 2
  %9431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.i32 %9431, 0
  %9433 = extractvalue %dx.types.CBufRet.i32 %9431, 1
  %9434 = uitofp i32 %9432 to float
  %9435 = uitofp i32 %9433 to float
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 0
  %9438 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9439 = fmul fast float %9434, %9364
  %9440 = fmul fast float %9435, %9365
  %9441 = fadd fast float %9439, -5.000000e-01
  %9442 = fadd fast float %9440, -5.000000e-01
  %9443 = call float @dx.op.unary.f32(i32 22, float %9441)  ; Frc(value)
  %9444 = call float @dx.op.unary.f32(i32 22, float %9442)  ; Frc(value)
  %9445 = fmul fast float %9443, %9443
  %9446 = fmul fast float %9445, %9443
  %9447 = fsub fast float 3.000000e+00, %9443
  %9448 = fmul fast float %9445, %9447
  %9449 = fmul fast float %9443, 3.000000e+00
  %9450 = fmul fast float %9446, 3.000000e+00
  %9451 = fmul fast float %9445, 6.000000e+00
  %9452 = fsub fast float %9450, %9451
  %9453 = fadd fast float %9452, 4.000000e+00
  %9454 = fmul fast float %9453, 0x3FC5555560000000
  %9455 = fmul fast float %9446, -3.000000e+00
  %9456 = fadd fast float %9445, %9443
  %9457 = fmul fast float %9456, 3.000000e+00
  %9458 = fadd fast float %9455, 1.000000e+00
  %9459 = fadd fast float %9458, %9457
  %9460 = fmul fast float %9446, 0x3FC5555560000000
  %9461 = fmul fast float %9444, %9444
  %9462 = fmul fast float %9461, %9444
  %9463 = fsub fast float 3.000000e+00, %9444
  %9464 = fmul fast float %9461, %9463
  %9465 = fmul fast float %9444, 3.000000e+00
  %9466 = fmul fast float %9462, 3.000000e+00
  %9467 = fmul fast float %9461, 6.000000e+00
  %9468 = fsub fast float %9466, %9467
  %9469 = fadd fast float %9468, 4.000000e+00
  %9470 = fmul fast float %9469, 0x3FC5555560000000
  %9471 = fmul fast float %9462, -3.000000e+00
  %9472 = fadd fast float %9461, %9444
  %9473 = fmul fast float %9472, 3.000000e+00
  %9474 = fadd fast float %9471, 1.000000e+00
  %9475 = fadd fast float %9474, %9473
  %9476 = fmul fast float %9462, 0x3FC5555560000000
  %9477 = fadd fast float %9443, 1.000000e+00
  %9478 = fsub fast float 1.000000e+00, %9449
  %9479 = fadd fast float %9478, %9448
  %9480 = fadd fast float %9479, %9453
  %9481 = fmul fast float %9480, 0x3FC5555560000000
  %9482 = fdiv fast float %9454, %9481
  %9483 = fsub fast float %9477, %9482
  %9484 = fsub fast float 1.000000e+00, %9443
  %9485 = fadd fast float %9459, %9446
  %9486 = fmul fast float %9485, 0x3FC5555560000000
  %9487 = fdiv fast float %9460, %9486
  %9488 = fadd fast float %9484, %9487
  %9489 = fadd fast float %9444, 1.000000e+00
  %9490 = fsub fast float 1.000000e+00, %9465
  %9491 = fadd fast float %9490, %9464
  %9492 = fadd fast float %9491, %9469
  %9493 = fmul fast float %9492, 0x3FC5555560000000
  %9494 = fdiv fast float %9470, %9493
  %9495 = fsub fast float %9489, %9494
  %9496 = fsub fast float 1.000000e+00, %9444
  %9497 = fadd fast float %9475, %9462
  %9498 = fmul fast float %9497, 0x3FC5555560000000
  %9499 = fdiv fast float %9476, %9498
  %9500 = fadd fast float %9499, %9496
  %9501 = fmul fast float %9483, %9437
  %9502 = fsub fast float %9364, %9501
  %9503 = fmul fast float %9488, %9437
  %9504 = fadd fast float %9503, %9364
  %9505 = fmul fast float %9500, %9438
  %9506 = fadd fast float %9505, %9365
  %9507 = fmul fast float %9495, %9438
  %9508 = fsub fast float %9365, %9507
  %9509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9502, float %9508, float %9426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9510 = extractvalue %dx.types.ResRet.f32 %9509, 0
  %9511 = extractvalue %dx.types.ResRet.f32 %9509, 1
  %9512 = extractvalue %dx.types.ResRet.f32 %9509, 2
  %9513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9504, float %9508, float %9426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9514 = extractvalue %dx.types.ResRet.f32 %9513, 0
  %9515 = extractvalue %dx.types.ResRet.f32 %9513, 1
  %9516 = extractvalue %dx.types.ResRet.f32 %9513, 2
  %9517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9502, float %9506, float %9426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9518 = extractvalue %dx.types.ResRet.f32 %9517, 0
  %9519 = extractvalue %dx.types.ResRet.f32 %9517, 1
  %9520 = extractvalue %dx.types.ResRet.f32 %9517, 2
  %9521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9504, float %9506, float %9426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9522 = extractvalue %dx.types.ResRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.ResRet.f32 %9521, 1
  %9524 = extractvalue %dx.types.ResRet.f32 %9521, 2
  %9525 = fsub fast float %9518, %9510
  %9526 = fsub fast float %9519, %9511
  %9527 = fsub fast float %9520, %9512
  %9528 = fmul fast float %9525, %9498
  %9529 = fmul fast float %9526, %9498
  %9530 = fmul fast float %9527, %9498
  %9531 = fadd fast float %9528, %9510
  %9532 = fadd fast float %9529, %9511
  %9533 = fadd fast float %9530, %9512
  %9534 = fsub fast float %9522, %9514
  %9535 = fsub fast float %9523, %9515
  %9536 = fsub fast float %9524, %9516
  %9537 = fmul fast float %9534, %9498
  %9538 = fmul fast float %9535, %9498
  %9539 = fmul fast float %9536, %9498
  %9540 = fsub fast float %9514, %9531
  %9541 = fadd fast float %9540, %9537
  %9542 = fsub fast float %9515, %9532
  %9543 = fadd fast float %9542, %9538
  %9544 = fsub fast float %9516, %9533
  %9545 = fadd fast float %9544, %9539
  %9546 = fmul fast float %9541, %9486
  %9547 = fmul fast float %9543, %9486
  %9548 = fmul fast float %9545, %9486
  %9549 = fadd fast float %9546, %9531
  %9550 = fadd fast float %9547, %9532
  %9551 = fadd fast float %9548, %9533
  %9552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.f32 %9552, 1
  %9554 = fmul fast float %9549, %9553
  %9555 = fmul fast float %9550, %9553
  %9556 = fmul fast float %9551, %9553
  br label %9557

; <label>:9557                                    ; preds = %9389, %9358
  %9558 = phi float [ %9428, %9389 ], [ 1.000000e+00, %9358 ]
  %9559 = phi float [ %9429, %9389 ], [ 1.000000e+00, %9358 ]
  %9560 = phi float [ %9430, %9389 ], [ 1.000000e+00, %9358 ]
  %9561 = phi float [ %9554, %9389 ], [ 0.000000e+00, %9358 ]
  %9562 = phi float [ %9555, %9389 ], [ 0.000000e+00, %9358 ]
  %9563 = phi float [ %9556, %9389 ], [ 0.000000e+00, %9358 ]
  %9564 = call float @dx.op.dot3.f32(i32 55, float %9558, float %9559, float %9560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9565 = call float @dx.op.dot3.f32(i32 55, float %9561, float %9562, float %9563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9566 = select i1 %228, float %9564, float %9558
  %9567 = select i1 %228, float %9564, float %9559
  %9568 = select i1 %228, float 1.000000e+00, float %9560
  %9569 = select i1 %228, float %9565, float %9561
  %9570 = select i1 %228, float 0.000000e+00, float %9562
  %9571 = select i1 %228, float 0.000000e+00, float %9563
  %9572 = fmul fast float %9566, %9348
  %9573 = fmul fast float %9567, %9349
  %9574 = fmul fast float %9568, %9350
  %9575 = fadd fast float %9572, %9569
  %9576 = fadd fast float %9573, %9570
  %9577 = fadd fast float %9571, %9574
  %9578 = fmul fast float %9566, %9330
  %9579 = fmul fast float %9567, %9331
  %9580 = fmul fast float %9568, %9332
  %9581 = fmul fast float %136, %9360
  %9582 = fmul fast float %138, %9361
  %9583 = fsub fast float 1.000000e+00, %9581
  %9584 = fsub fast float 1.000000e+00, %9582
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9588 = extractvalue %dx.types.CBufRet.f32 %9585, 2
  %9589 = fmul fast float %9583, %9586
  %9590 = fmul fast float %9583, %9587
  %9591 = fmul fast float %9583, %9588
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9596 = fmul fast float %9584, %9593
  %9597 = fmul fast float %9584, %9594
  %9598 = fmul fast float %9584, %9595
  %9599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.f32 %9599, 0
  %9601 = extractvalue %dx.types.CBufRet.f32 %9599, 1
  %9602 = extractvalue %dx.types.CBufRet.f32 %9599, 2
  %9603 = fadd fast float %9596, %9600
  %9604 = fadd fast float %9603, %9589
  %9605 = fadd fast float %9597, %9601
  %9606 = fadd fast float %9605, %9590
  %9607 = fadd fast float %9598, %9602
  %9608 = fadd fast float %9607, %9591
  %9609 = fmul fast float %9604, %188
  %9610 = fmul fast float %9606, %188
  %9611 = fmul fast float %9608, %188
  br label %9612

; <label>:9612                                    ; preds = %9557, %9329
  %9613 = phi float [ %9609, %9557 ], [ %166, %9329 ]
  %9614 = phi float [ %9610, %9557 ], [ %167, %9329 ]
  %9615 = phi float [ %9611, %9557 ], [ %168, %9329 ]
  %9616 = phi float [ %188, %9557 ], [ %99, %9329 ]
  %9617 = phi float [ %9575, %9557 ], [ %9348, %9329 ]
  %9618 = phi float [ %9576, %9557 ], [ %9349, %9329 ]
  %9619 = phi float [ %9577, %9557 ], [ %9350, %9329 ]
  %9620 = phi float [ %9578, %9557 ], [ %9330, %9329 ]
  %9621 = phi float [ %9579, %9557 ], [ %9331, %9329 ]
  %9622 = phi float [ %9580, %9557 ], [ %9332, %9329 ]
  %9623 = phi float [ %9558, %9557 ], [ 1.000000e+00, %9329 ]
  br i1 %9357, label %10772, label %9624

; <label>:9624                                    ; preds = %9612
  %9625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9626 = extractvalue %dx.types.CBufRet.f32 %9625, 0
  %9627 = extractvalue %dx.types.CBufRet.f32 %9625, 1
  %9628 = extractvalue %dx.types.CBufRet.f32 %9625, 2
  %9629 = extractvalue %dx.types.CBufRet.f32 %9625, 3
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = extractvalue %dx.types.CBufRet.f32 %9630, 1
  %9633 = extractvalue %dx.types.CBufRet.f32 %9630, 2
  %9634 = extractvalue %dx.types.CBufRet.f32 %9630, 3
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.CBufRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.CBufRet.f32 %9635, 2
  %9639 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 0
  %9642 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9643 = extractvalue %dx.types.CBufRet.f32 %9640, 2
  %9644 = extractvalue %dx.types.CBufRet.f32 %9640, 3
  %9645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9646 = extractvalue %dx.types.CBufRet.f32 %9645, 3
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 3
  %9649 = extractvalue %dx.types.CBufRet.f32 %9647, 0
  %9650 = extractvalue %dx.types.CBufRet.f32 %9647, 1
  %9651 = extractvalue %dx.types.CBufRet.f32 %9647, 2
  %9652 = fcmp fast olt float %9651, -5.000000e-01
  %9653 = call float @dx.op.dot3.f32(i32 55, float %9613, float %9614, float %9615, float %9613, float %9614, float %9615)  ; Dot3(ax,ay,az,bx,by,bz)
  %9654 = call float @dx.op.unary.f32(i32 25, float %9653)  ; Rsqrt(value)
  %9655 = fmul fast float %9654, %9653
  %9656 = fmul fast float %9654, %9613
  %9657 = fmul fast float %9654, %9614
  %9658 = fmul fast float %9654, %9615
  %9659 = fadd fast float %9655, %9629
  %9660 = call float @dx.op.dot3.f32(i32 55, float %9656, float %9657, float %9658, float %9626, float %9627, float %9628)  ; Dot3(ax,ay,az,bx,by,bz)
  %9661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.i32 %9661, 1
  %9663 = and i32 %9662, 1
  %9664 = icmp ne i32 %9663, 0
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 2
  %9667 = fcmp fast ogt float %9666, 0.000000e+00
  %9668 = and i1 %9664, %9667
  br i1 %9668, label %9669, label %10075, !dx.controlflow.hints !138

; <label>:9669                                    ; preds = %9624
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 3
  %9672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.f32 %9672, 2
  %9674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.f32 %9674, 2
  %9676 = fsub fast float %9673, %9675
  %9677 = and i32 %9662, 2
  %9678 = extractvalue %dx.types.CBufRet.i32 %9661, 0
  %9679 = call i32 @dx.op.binary.i32(i32 40, i32 %9678, i32 3)  ; UMin(a,b)
  %9680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9681 = extractvalue %dx.types.CBufRet.f32 %9680, 0
  %9682 = extractvalue %dx.types.CBufRet.f32 %9680, 1
  %9683 = extractvalue %dx.types.CBufRet.f32 %9674, 0
  %9684 = extractvalue %dx.types.CBufRet.f32 %9674, 1
  %9685 = fsub fast float %9681, %9683
  %9686 = fsub fast float %9682, %9684
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 0
  %9689 = fcmp fast ogt float %9688, 0.000000e+00
  %9690 = fsub fast float -0.000000e+00, %9685
  %9691 = fsub fast float -0.000000e+00, %9686
  %9692 = call float @dx.op.dot2.f32(i32 54, float %9656, float %9657, float %9656, float %9657)  ; Dot2(ax,ay,bx,by)
  %9693 = call float @dx.op.dot2.f32(i32 54, float %9656, float %9657, float %9690, float %9691)  ; Dot2(ax,ay,bx,by)
  %9694 = fmul fast float %9693, 2.000000e+00
  %9695 = call float @dx.op.dot2.f32(i32 54, float %9690, float %9691, float %9690, float %9691)  ; Dot2(ax,ay,bx,by)
  %9696 = fmul fast float %9688, %9688
  %9697 = fsub fast float %9695, %9696
  %9698 = fmul fast float %9694, %9694
  %9699 = fmul fast float %9692, 4.000000e+00
  %9700 = fmul fast float %9699, %9697
  %9701 = fsub fast float %9698, %9700
  %9702 = fcmp fast ogt float %9701, 0.000000e+00
  br i1 %9702, label %9703, label %9718

; <label>:9703                                    ; preds = %9669
  %9704 = fcmp fast ogt float %9694, 0.000000e+00
  %9705 = call float @dx.op.unary.f32(i32 24, float %9701)  ; Sqrt(value)
  %9706 = fsub fast float -0.000000e+00, %9705
  %9707 = select i1 %9704, float %9705, float %9706
  %9708 = fadd fast float %9707, %9694
  %9709 = fmul float %9708, -5.000000e-01
  %9710 = fdiv fast float %9709, %9692
  %9711 = call float @dx.op.binary.f32(i32 35, float %9710, float 0.000000e+00)  ; FMax(a,b)
  %9712 = call float @dx.op.binary.f32(i32 36, float %9655, float %9711)  ; FMin(a,b)
  %9713 = fdiv fast float %9697, %9709
  %9714 = call float @dx.op.binary.f32(i32 35, float %9713, float 0.000000e+00)  ; FMax(a,b)
  %9715 = call float @dx.op.binary.f32(i32 36, float %9655, float %9714)  ; FMin(a,b)
  %9716 = call float @dx.op.binary.f32(i32 36, float %9712, float %9715)  ; FMin(a,b)
  %9717 = call float @dx.op.binary.f32(i32 35, float %9712, float %9715)  ; FMax(a,b)
  br label %9718

; <label>:9718                                    ; preds = %9703, %9669
  %9719 = phi float [ %9717, %9703 ], [ -1.000000e+00, %9669 ]
  %9720 = phi float [ %9716, %9703 ], [ -1.000000e+00, %9669 ]
  %9721 = phi i1 [ true, %9703 ], [ false, %9669 ]
  %9722 = and i1 %9689, %9721
  br i1 %9722, label %9723, label %9725

; <label>:9723                                    ; preds = %9718
  %9724 = fcmp fast oeq float %9720, %9719
  br i1 %9724, label %10028, label %9726

; <label>:9725                                    ; preds = %9718
  br i1 %9689, label %10028, label %9726

; <label>:9726                                    ; preds = %9725, %9723
  %9727 = phi float [ %9655, %9725 ], [ %9719, %9723 ]
  %9728 = phi float [ 0.000000e+00, %9725 ], [ %9720, %9723 ]
  %9729 = icmp ne i32 %9677, 0
  %9730 = fmul fast float %9727, %9658
  %9731 = fadd fast float %9730, %9671
  %9732 = fmul fast float %9731, %9727
  %9733 = select i1 %9729, float 0.000000e+00, float %9732
  %9734 = fcmp fast oeq float %9658, 0.000000e+00
  %9735 = fdiv fast float %9676, %9658
  %9736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9735)  ; FMax(a,b)
  %9737 = select i1 %9734, float %9727, float %9736
  %9738 = call float @dx.op.binary.f32(i32 36, float %9727, float %9737)  ; FMin(a,b)
  %9739 = fcmp fast ogt float %9658, 0.000000e+00
  %9740 = fcmp fast olt float %9676, 0.000000e+00
  br i1 %9739, label %9741, label %9798

; <label>:9741                                    ; preds = %9726
  %9742 = icmp eq i32 %9677, 0
  br i1 %9740, label %9743, label %9787

; <label>:9743                                    ; preds = %9741
  %9744 = select i1 %9742, float %9727, float 0.000000e+00
  %9745 = fsub fast float -0.000000e+00, %9744
  %9746 = call float @dx.op.unary.f32(i32 6, float %9745)  ; FAbs(value)
  %9747 = fmul fast float %9744, %9658
  %9748 = fadd fast float %9747, %9671
  %9749 = fmul fast float %9746, %9748
  %9750 = fsub fast float %9733, %9749
  %9751 = fsub fast float %9727, %9746
  %9752 = select i1 %9742, float %9751, float 0.000000e+00
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.CBufRet.f32 %9757, 2
  %9761 = extractvalue %dx.types.CBufRet.f32 %9757, 3
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 3
  %9764 = call float @dx.op.binary.f32(i32 36, float %9750, float %9763)  ; FMin(a,b)
  %9765 = fmul fast float %9761, %9752
  %9766 = call float @dx.op.unary.f32(i32 7, float %9765)  ; Saturate(value)
  %9767 = fsub fast float %9758, %9754
  %9768 = fsub fast float %9759, %9755
  %9769 = fsub fast float %9760, %9756
  %9770 = fmul fast float %9766, %9767
  %9771 = fmul fast float %9766, %9768
  %9772 = fmul fast float %9766, %9769
  %9773 = fadd fast float %9770, %9754
  %9774 = fadd fast float %9771, %9755
  %9775 = fadd fast float %9772, %9756
  %9776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.f32 %9776, 0
  %9778 = extractvalue %dx.types.CBufRet.f32 %9776, 1
  %9779 = fadd fast float %9778, %9777
  %9780 = call float @dx.op.unary.f32(i32 7, float %9779)  ; Saturate(value)
  %9781 = extractvalue %dx.types.CBufRet.f32 %9776, 2
  %9782 = extractvalue %dx.types.CBufRet.f32 %9776, 3
  %9783 = fadd fast float %9782, %9781
  %9784 = call float @dx.op.unary.f32(i32 7, float %9783)  ; Saturate(value)
  %9785 = fmul fast float %9780, %9764
  %9786 = fmul fast float %9785, %9784
  br label %10028

; <label>:9787                                    ; preds = %9741
  br i1 %9742, label %9788, label %9809

; <label>:9788                                    ; preds = %9787
  %9789 = call float @dx.op.binary.f32(i32 36, float %9738, float %9728)  ; FMin(a,b)
  %9790 = fsub fast float %9738, %9789
  %9791 = fsub fast float %9790, %9727
  %9792 = call float @dx.op.unary.f32(i32 6, float %9791)  ; FAbs(value)
  %9793 = fadd fast float %9790, %9727
  %9794 = fmul fast float %9793, %9658
  %9795 = fadd fast float %9794, %9671
  %9796 = fmul fast float %9795, %9792
  %9797 = fsub fast float %9733, %9796
  br label %9809

; <label>:9798                                    ; preds = %9726
  br i1 %9740, label %9799, label %9809

; <label>:9799                                    ; preds = %9798
  %9800 = call float @dx.op.binary.f32(i32 35, float %9728, float %9738)  ; FMax(a,b)
  %9801 = icmp eq i32 %9677, 0
  %9802 = select i1 %9801, float %9738, float 0.000000e+00
  %9803 = fsub fast float -0.000000e+00, %9802
  %9804 = call float @dx.op.unary.f32(i32 6, float %9803)  ; FAbs(value)
  %9805 = fmul fast float %9802, %9658
  %9806 = fadd fast float %9805, %9671
  %9807 = fmul fast float %9804, %9806
  %9808 = fsub fast float %9733, %9807
  br label %9809

; <label>:9809                                    ; preds = %9799, %9798, %9788, %9787
  %9810 = phi float [ %9728, %9787 ], [ %9728, %9788 ], [ %9800, %9799 ], [ %9728, %9798 ]
  %9811 = phi float [ 0.000000e+00, %9787 ], [ %9792, %9788 ], [ %9804, %9799 ], [ 0.000000e+00, %9798 ]
  %9812 = phi float [ %9733, %9787 ], [ %9797, %9788 ], [ %9808, %9799 ], [ %9733, %9798 ]
  %9813 = phi float [ %9738, %9787 ], [ %9738, %9788 ], [ %9727, %9799 ], [ %9727, %9798 ]
  %9814 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9814, align 4, !tbaa !125, !noalias !139
  %9815 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9815, align 4, !tbaa !125, !noalias !139
  %9816 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9816, align 4, !tbaa !125, !noalias !139
  %9817 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9817, align 4, !tbaa !125, !noalias !139
  %9818 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9818, align 4, !tbaa !125, !noalias !139
  %9819 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9819, align 4, !tbaa !125, !noalias !139
  %9820 = icmp sgt i32 %9679, 0
  br i1 %9820, label %9821, label %9882

; <label>:9821                                    ; preds = %9809
  br label %9822

; <label>:9822                                    ; preds = %9871, %9821
  %9823 = phi i32 [ %9872, %9871 ], [ 0, %9821 ]
  %9824 = phi i32 [ %9873, %9871 ], [ 0, %9821 ]
  %9825 = add nuw i32 %9824, 171
  %9826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %9825)  ; CBufferLoadLegacy(handle,regIndex)
  %9827 = extractvalue %dx.types.CBufRet.f32 %9826, 0
  %9828 = extractvalue %dx.types.CBufRet.f32 %9826, 1
  %9829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9830 = extractvalue %dx.types.CBufRet.f32 %9829, 0
  %9831 = extractvalue %dx.types.CBufRet.f32 %9829, 1
  %9832 = fsub fast float %9827, %9830
  %9833 = fsub fast float %9828, %9831
  %9834 = extractvalue %dx.types.CBufRet.f32 %9826, 2
  %9835 = fsub fast float -0.000000e+00, %9832
  %9836 = fsub fast float -0.000000e+00, %9833
  %9837 = call float @dx.op.dot2.f32(i32 54, float %9656, float %9657, float %9835, float %9836)  ; Dot2(ax,ay,bx,by)
  %9838 = fmul fast float %9837, 2.000000e+00
  %9839 = call float @dx.op.dot2.f32(i32 54, float %9835, float %9836, float %9835, float %9836)  ; Dot2(ax,ay,bx,by)
  %9840 = fmul fast float %9834, %9834
  %9841 = fsub fast float %9839, %9840
  %9842 = fmul fast float %9838, %9838
  %9843 = fmul fast float %9699, %9841
  %9844 = fsub fast float %9842, %9843
  %9845 = fcmp fast ogt float %9844, 0.000000e+00
  br i1 %9845, label %9846, label %9861

; <label>:9846                                    ; preds = %9822
  %9847 = fcmp fast ogt float %9838, 0.000000e+00
  %9848 = call float @dx.op.unary.f32(i32 24, float %9844)  ; Sqrt(value)
  %9849 = fsub fast float -0.000000e+00, %9848
  %9850 = select i1 %9847, float %9848, float %9849
  %9851 = fadd fast float %9850, %9838
  %9852 = fmul float %9851, -5.000000e-01
  %9853 = fdiv fast float %9852, %9692
  %9854 = call float @dx.op.binary.f32(i32 35, float %9853, float 0.000000e+00)  ; FMax(a,b)
  %9855 = call float @dx.op.binary.f32(i32 36, float %9727, float %9854)  ; FMin(a,b)
  %9856 = fdiv fast float %9841, %9852
  %9857 = call float @dx.op.binary.f32(i32 35, float %9856, float 0.000000e+00)  ; FMax(a,b)
  %9858 = call float @dx.op.binary.f32(i32 36, float %9727, float %9857)  ; FMin(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9855, float %9858)  ; FMin(a,b)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9855, float %9858)  ; FMax(a,b)
  br label %9861

; <label>:9861                                    ; preds = %9846, %9822
  %9862 = phi float [ %9860, %9846 ], [ -1.000000e+00, %9822 ]
  %9863 = phi float [ %9859, %9846 ], [ -1.000000e+00, %9822 ]
  %9864 = phi i1 [ true, %9846 ], [ false, %9822 ]
  br i1 %9864, label %9865, label %9871

; <label>:9865                                    ; preds = %9861
  %9866 = call float @dx.op.binary.f32(i32 35, float %9810, float %9863)  ; FMax(a,b)
  %9867 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9824
  store float %9866, float* %9867, align 4, !tbaa !125, !noalias !139
  %9868 = call float @dx.op.binary.f32(i32 35, float %9810, float %9862)  ; FMax(a,b)
  %9869 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9824
  store float %9868, float* %9869, align 4, !tbaa !125, !noalias !139
  %9870 = add nsw i32 %9823, 1
  br label %9871

; <label>:9871                                    ; preds = %9865, %9861
  %9872 = phi i32 [ %9870, %9865 ], [ %9823, %9861 ]
  %9873 = add nuw nsw i32 %9824, 1
  %9874 = icmp eq i32 %9873, %9679
  br i1 %9874, label %9875, label %9822

; <label>:9875                                    ; preds = %9871
  %9876 = load float, float* %9816, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %9877 = load float, float* %9815, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  %9878 = load float, float* %9814, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  %9879 = load float, float* %9819, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %9880 = load float, float* %9818, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  %9881 = load float, float* %9817, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  br label %9882

; <label>:9882                                    ; preds = %9875, %9809
  %9883 = phi float [ -1.000000e+00, %9809 ], [ %9881, %9875 ]
  %9884 = phi float [ -1.000000e+00, %9809 ], [ %9880, %9875 ]
  %9885 = phi float [ -1.000000e+00, %9809 ], [ %9879, %9875 ]
  %9886 = phi float [ -1.000000e+00, %9809 ], [ %9878, %9875 ]
  %9887 = phi float [ -1.000000e+00, %9809 ], [ %9877, %9875 ]
  %9888 = phi float [ -1.000000e+00, %9809 ], [ %9876, %9875 ]
  %9889 = phi i32 [ 0, %9809 ], [ %9872, %9875 ]
  %9890 = call float @dx.op.binary.f32(i32 36, float %9887, float %9888)  ; FMin(a,b)
  %9891 = call float @dx.op.binary.f32(i32 36, float %9886, float %9890)  ; FMin(a,b)
  %9892 = call float @dx.op.binary.f32(i32 35, float %9886, float %9887)  ; FMax(a,b)
  %9893 = call float @dx.op.binary.f32(i32 36, float %9892, float %9888)  ; FMin(a,b)
  %9894 = call float @dx.op.binary.f32(i32 36, float %9886, float %9887)  ; FMin(a,b)
  %9895 = call float @dx.op.binary.f32(i32 35, float %9894, float %9893)  ; FMax(a,b)
  %9896 = call float @dx.op.binary.f32(i32 35, float %9887, float %9888)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 35, float %9886, float %9896)  ; FMax(a,b)
  store float %9891, float* %9814, align 4, !tbaa !125, !alias.scope !163, !noalias !164
  store float %9895, float* %9815, align 4, !tbaa !125, !alias.scope !161, !noalias !162
  store float %9897, float* %9816, align 4, !tbaa !125, !alias.scope !155, !noalias !158
  %9898 = call float @dx.op.binary.f32(i32 36, float %9884, float %9885)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9883, float %9898)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 35, float %9883, float %9884)  ; FMax(a,b)
  %9901 = call float @dx.op.binary.f32(i32 36, float %9900, float %9885)  ; FMin(a,b)
  %9902 = call float @dx.op.binary.f32(i32 36, float %9883, float %9884)  ; FMin(a,b)
  %9903 = call float @dx.op.binary.f32(i32 35, float %9902, float %9901)  ; FMax(a,b)
  %9904 = call float @dx.op.binary.f32(i32 35, float %9884, float %9885)  ; FMax(a,b)
  %9905 = call float @dx.op.binary.f32(i32 35, float %9883, float %9904)  ; FMax(a,b)
  store float %9899, float* %9817, align 4, !tbaa !125, !alias.scope !173, !noalias !174
  store float %9903, float* %9818, align 4, !tbaa !125, !alias.scope !171, !noalias !172
  store float %9905, float* %9819, align 4, !tbaa !125, !alias.scope !165, !noalias !168
  %9906 = sub nsw i32 3, %9889
  %9907 = icmp sgt i32 %9906, 2
  br i1 %9907, label %9908, label %9946

; <label>:9908                                    ; preds = %9882
  %9909 = icmp eq i32 %9677, 0
  %9910 = fsub fast float %9727, %9811
  %9911 = select i1 %9909, float %9910, float %9811
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 0
  %9914 = extractvalue %dx.types.CBufRet.f32 %9912, 1
  %9915 = extractvalue %dx.types.CBufRet.f32 %9912, 2
  %9916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.f32 %9916, 0
  %9918 = extractvalue %dx.types.CBufRet.f32 %9916, 1
  %9919 = extractvalue %dx.types.CBufRet.f32 %9916, 2
  %9920 = extractvalue %dx.types.CBufRet.f32 %9916, 3
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 3
  %9923 = call float @dx.op.binary.f32(i32 36, float %9812, float %9922)  ; FMin(a,b)
  %9924 = fmul fast float %9920, %9911
  %9925 = call float @dx.op.unary.f32(i32 7, float %9924)  ; Saturate(value)
  %9926 = fsub fast float %9917, %9913
  %9927 = fsub fast float %9918, %9914
  %9928 = fsub fast float %9919, %9915
  %9929 = fmul fast float %9925, %9926
  %9930 = fmul fast float %9925, %9927
  %9931 = fmul fast float %9925, %9928
  %9932 = fadd fast float %9929, %9913
  %9933 = fadd fast float %9930, %9914
  %9934 = fadd fast float %9931, %9915
  %9935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9936 = extractvalue %dx.types.CBufRet.f32 %9935, 0
  %9937 = extractvalue %dx.types.CBufRet.f32 %9935, 1
  %9938 = fadd fast float %9937, %9936
  %9939 = call float @dx.op.unary.f32(i32 7, float %9938)  ; Saturate(value)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9935, 2
  %9941 = extractvalue %dx.types.CBufRet.f32 %9935, 3
  %9942 = fadd fast float %9941, %9940
  %9943 = call float @dx.op.unary.f32(i32 7, float %9942)  ; Saturate(value)
  %9944 = fmul fast float %9939, %9923
  %9945 = fmul fast float %9944, %9943
  br label %10028

; <label>:9946                                    ; preds = %9882
  %9947 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9906
  %9948 = load float, float* %9947, align 4, !tbaa !125, !noalias !139
  %9949 = fcmp fast olt float %9948, %9813
  %9950 = icmp sgt i32 %9889, 0
  %9951 = and i1 %9950, %9949
  br i1 %9951, label %9952, label %9989

; <label>:9952                                    ; preds = %9946
  br label %9953

; <label>:9953                                    ; preds = %9982, %9952
  %9954 = phi float [ %9983, %9982 ], [ %9811, %9952 ]
  %9955 = phi float [ %9984, %9982 ], [ %9812, %9952 ]
  %9956 = phi float [ %9964, %9982 ], [ %9948, %9952 ]
  %9957 = phi i32 [ %9961, %9982 ], [ %9906, %9952 ]
  %9958 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9957
  %9959 = load float, float* %9958, align 4, !tbaa !125, !noalias !139
  %9960 = icmp slt i32 %9957, 2
  %9961 = add nsw i32 %9957, 1
  %9962 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9961
  %9963 = load float, float* %9962, align 4, !tbaa !125, !noalias !139
  %9964 = select i1 %9960, float %9963, float %9727
  %9965 = call float @dx.op.binary.f32(i32 36, float %9964, float %9959)  ; FMin(a,b)
  %9966 = call float @dx.op.binary.f32(i32 36, float %9813, float %9965)  ; FMin(a,b)
  %9967 = icmp eq i32 %9677, 0
  %9968 = fadd fast float %9966, %9956
  %9969 = fmul fast float %9968, %9658
  %9970 = fadd fast float %9969, %9671
  br i1 %9967, label %9976, label %9971

; <label>:9971                                    ; preds = %9953
  %9972 = fsub fast float %9966, %9956
  %9973 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9972)  ; FMax(a,b)
  %9974 = fmul fast float %9973, %9970
  %9975 = fadd fast float %9974, %9955
  br label %9982

; <label>:9976                                    ; preds = %9953
  %9977 = fsub fast float %9956, %9966
  %9978 = call float @dx.op.unary.f32(i32 6, float %9977)  ; FAbs(value)
  %9979 = fadd fast float %9978, %9954
  %9980 = fmul fast float %9978, %9970
  %9981 = fsub fast float %9955, %9980
  br label %9982

; <label>:9982                                    ; preds = %9976, %9971
  %9983 = phi float [ %9973, %9971 ], [ %9979, %9976 ]
  %9984 = phi float [ %9975, %9971 ], [ %9981, %9976 ]
  %9985 = fcmp fast olt float %9964, %9813
  %9986 = icmp slt i32 %9961, 3
  %9987 = and i1 %9986, %9985
  br i1 %9987, label %9953, label %9988

; <label>:9988                                    ; preds = %9982
  br label %9989

; <label>:9989                                    ; preds = %9988, %9946
  %9990 = phi float [ %9811, %9946 ], [ %9983, %9988 ]
  %9991 = phi float [ %9812, %9946 ], [ %9984, %9988 ]
  %9992 = fsub fast float %9727, %9990
  %9993 = select i1 %9729, float %9990, float %9992
  %9994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9995 = extractvalue %dx.types.CBufRet.f32 %9994, 0
  %9996 = extractvalue %dx.types.CBufRet.f32 %9994, 1
  %9997 = extractvalue %dx.types.CBufRet.f32 %9994, 2
  %9998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9999 = extractvalue %dx.types.CBufRet.f32 %9998, 0
  %10000 = extractvalue %dx.types.CBufRet.f32 %9998, 1
  %10001 = extractvalue %dx.types.CBufRet.f32 %9998, 2
  %10002 = extractvalue %dx.types.CBufRet.f32 %9998, 3
  %10003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10004 = extractvalue %dx.types.CBufRet.f32 %10003, 3
  %10005 = call float @dx.op.binary.f32(i32 36, float %9991, float %10004)  ; FMin(a,b)
  %10006 = fmul fast float %10002, %9993
  %10007 = call float @dx.op.unary.f32(i32 7, float %10006)  ; Saturate(value)
  %10008 = fsub fast float %9999, %9995
  %10009 = fsub fast float %10000, %9996
  %10010 = fsub fast float %10001, %9997
  %10011 = fmul fast float %10007, %10008
  %10012 = fmul fast float %10007, %10009
  %10013 = fmul fast float %10007, %10010
  %10014 = fadd fast float %10011, %9995
  %10015 = fadd fast float %10012, %9996
  %10016 = fadd fast float %10013, %9997
  %10017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10018 = extractvalue %dx.types.CBufRet.f32 %10017, 0
  %10019 = extractvalue %dx.types.CBufRet.f32 %10017, 1
  %10020 = fadd fast float %10019, %10018
  %10021 = call float @dx.op.unary.f32(i32 7, float %10020)  ; Saturate(value)
  %10022 = extractvalue %dx.types.CBufRet.f32 %10017, 2
  %10023 = extractvalue %dx.types.CBufRet.f32 %10017, 3
  %10024 = fadd fast float %10023, %10022
  %10025 = call float @dx.op.unary.f32(i32 7, float %10024)  ; Saturate(value)
  %10026 = fmul fast float %10021, %10005
  %10027 = fmul fast float %10026, %10025
  br label %10028

; <label>:10028                                   ; preds = %9989, %9908, %9743, %9725, %9723
  %10029 = phi float [ %9752, %9743 ], [ %9911, %9908 ], [ %9993, %9989 ], [ 0.000000e+00, %9723 ], [ 0.000000e+00, %9725 ]
  %10030 = phi float [ %9786, %9743 ], [ %9945, %9908 ], [ %10027, %9989 ], [ 0.000000e+00, %9723 ], [ 0.000000e+00, %9725 ]
  %10031 = phi float [ %9773, %9743 ], [ %9932, %9908 ], [ %10014, %9989 ], [ 0.000000e+00, %9723 ], [ 0.000000e+00, %9725 ]
  %10032 = phi float [ %9774, %9743 ], [ %9933, %9908 ], [ %10015, %9989 ], [ 0.000000e+00, %9723 ], [ 0.000000e+00, %9725 ]
  %10033 = phi float [ %9775, %9743 ], [ %9934, %9908 ], [ %10016, %9989 ], [ 0.000000e+00, %9723 ], [ 0.000000e+00, %9725 ]
  %10034 = fmul fast float %9666, %10030
  %10035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10036 = extractvalue %dx.types.CBufRet.f32 %10035, 2
  %10037 = fsub fast float %9673, %10036
  %10038 = fcmp fast olt float %10034, -2.000000e+01
  %10039 = call float @dx.op.unary.f32(i32 21, float %10034)  ; Exp(value)
  %10040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10041 = extractvalue %dx.types.CBufRet.f32 %10040, 2
  %10042 = extractvalue %dx.types.CBufRet.f32 %10040, 3
  %10043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10044 = extractvalue %dx.types.CBufRet.f32 %10043, 2
  %10045 = fmul fast float %10042, %10037
  %10046 = call float @dx.op.unary.f32(i32 7, float %10045)  ; Saturate(value)
  %10047 = fsub fast float 1.000000e+00, %10046
  %10048 = fmul fast float %9658, 5.000000e-01
  %10049 = fadd fast float %10048, 5.000000e-01
  %10050 = call float @dx.op.unary.f32(i32 7, float %10049)  ; Saturate(value)
  %10051 = fsub fast float 1.000000e+00, %10050
  %10052 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10047)  ; FMax(a,b)
  %10053 = fdiv fast float %10051, %10052
  %10054 = fsub fast float %10037, %9615
  %10055 = call float @dx.op.unary.f32(i32 6, float %10054)  ; FAbs(value)
  %10056 = fmul fast float %10055, %10041
  %10057 = call float @dx.op.unary.f32(i32 7, float %10053)  ; Saturate(value)
  %10058 = fsub fast float 1.000000e+00, %10056
  %10059 = fmul fast float %10058, %10057
  %10060 = fadd fast float %10059, %10056
  %10061 = fmul fast float %10044, %10037
  %10062 = call float @dx.op.unary.f32(i32 7, float %10061)  ; Saturate(value)
  %10063 = fsub fast float 1.000000e+00, %10060
  %10064 = fmul fast float %10063, %10062
  %10065 = fadd fast float %10064, %10060
  %10066 = call float @dx.op.unary.f32(i32 7, float %10065)  ; Saturate(value)
  %10067 = fadd fast float %10039, -1.000000e+00
  %10068 = select i1 %10038, float -1.000000e+00, float %10067
  %10069 = fmul fast float %10066, %10068
  %10070 = fadd fast float %10069, 1.000000e+00
  %10071 = fsub fast float -0.000000e+00, %10069
  %10072 = fmul fast float %10031, %10071
  %10073 = fmul fast float %10032, %10071
  %10074 = fmul fast float %10033, %10071
  br label %10075

; <label>:10075                                   ; preds = %10028, %9624
  %10076 = phi float [ %10029, %10028 ], [ 0.000000e+00, %9624 ]
  %10077 = phi float [ %10070, %10028 ], [ 1.000000e+00, %9624 ]
  %10078 = phi float [ %10072, %10028 ], [ 0.000000e+00, %9624 ]
  %10079 = phi float [ %10073, %10028 ], [ 0.000000e+00, %9624 ]
  %10080 = phi float [ %10074, %10028 ], [ 0.000000e+00, %9624 ]
  %10081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10082 = extractvalue %dx.types.CBufRet.f32 %10081, 1
  %10083 = fsub fast float 1.000000e+00, %10077
  %10084 = fmul fast float %10083, %9659
  %10085 = fmul fast float %10084, %10082
  %10086 = fsub fast float %9659, %10085
  br i1 %9652, label %10087, label %10116, !dx.controlflow.hints !175

; <label>:10087                                   ; preds = %10075
  %10088 = fmul fast float %9660, %9649
  %10089 = fadd fast float %10088, %9650
  %10090 = call float @dx.op.unary.f32(i32 7, float %10089)  ; Saturate(value)
  %10091 = fmul fast float %9631, %10086
  %10092 = fsub fast float -0.000000e+00, %10091
  %10093 = fmul fast float %9632, %10086
  %10094 = fsub fast float -0.000000e+00, %10093
  %10095 = call float @dx.op.unary.f32(i32 21, float %10092)  ; Exp(value)
  %10096 = call float @dx.op.unary.f32(i32 21, float %10094)  ; Exp(value)
  %10097 = call float @dx.op.binary.f32(i32 35, float %9639, float %10095)  ; FMax(a,b)
  %10098 = call float @dx.op.binary.f32(i32 35, float %9639, float %10096)  ; FMax(a,b)
  %10099 = fsub fast float %10098, %10097
  %10100 = fmul fast float %10099, %10090
  %10101 = fadd fast float %10100, %10097
  %10102 = call float @dx.op.unary.f32(i32 7, float %10101)  ; Saturate(value)
  %10103 = fsub fast float %9636, %9641
  %10104 = fsub fast float %9637, %9642
  %10105 = fsub fast float %9638, %9643
  %10106 = fmul fast float %10090, %10103
  %10107 = fmul fast float %10090, %10104
  %10108 = fmul fast float %10090, %10105
  %10109 = fadd fast float %10106, %9641
  %10110 = fadd fast float %10107, %9642
  %10111 = fadd fast float %10108, %9643
  %10112 = fsub fast float 1.000000e+00, %10102
  %10113 = fmul fast float %10112, %10109
  %10114 = fmul fast float %10112, %10110
  %10115 = fmul fast float %10112, %10111
  br label %10175

; <label>:10116                                   ; preds = %10075
  %10117 = fmul fast float %10086, %9648
  %10118 = call float @dx.op.unary.f32(i32 7, float %10117)  ; Saturate(value)
  %10119 = fsub fast float 2.000000e+00, %10118
  %10120 = fmul fast float %10118, 9.921875e-01
  %10121 = fmul fast float %10120, %10119
  %10122 = fadd fast float %10121, 3.906250e-03
  %10123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %56, float %10122, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10124 = extractvalue %dx.types.ResRet.f32 %10123, 0
  %10125 = fsub fast float %10118, %10124
  %10126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10125)  ; FMax(a,b)
  %10127 = fmul fast float %9634, %9615
  %10128 = call float @dx.op.unary.f32(i32 6, float %10127)  ; FAbs(value)
  %10129 = fcmp fast ogt float %10128, 0x3EB0C6F7A0000000
  br i1 %10129, label %10130, label %10136, !dx.controlflow.hints !176

; <label>:10130                                   ; preds = %10116
  %10131 = fmul fast float %10127, 0xBFF7154760000000
  %10132 = call float @dx.op.unary.f32(i32 21, float %10131)  ; Exp(value)
  %10133 = fsub fast float 1.000000e+00, %10132
  %10134 = fdiv fast float %10133, %10127
  %10135 = fmul fast float %10134, %9644
  br label %10136

; <label>:10136                                   ; preds = %10130, %10116
  %10137 = phi float [ %10135, %10130 ], [ %9644, %10116 ]
  %10138 = fadd fast float %10137, %9646
  %10139 = fmul fast float %10138, %10126
  %10140 = fmul fast float %9631, %10139
  %10141 = fsub fast float -0.000000e+00, %10140
  %10142 = fmul fast float %9632, %10139
  %10143 = fsub fast float -0.000000e+00, %10142
  %10144 = fmul fast float %9633, %10139
  %10145 = fsub fast float -0.000000e+00, %10144
  %10146 = call float @dx.op.unary.f32(i32 21, float %10141)  ; Exp(value)
  %10147 = call float @dx.op.unary.f32(i32 21, float %10143)  ; Exp(value)
  %10148 = call float @dx.op.unary.f32(i32 21, float %10145)  ; Exp(value)
  %10149 = fmul fast float %9660, %9660
  %10150 = fadd fast float %10149, 1.000000e+00
  %10151 = fmul fast float %10150, 0x3FAE8EC8A0000000
  %10152 = fmul fast float %10151, %9641
  %10153 = fmul fast float %10151, %9642
  %10154 = fmul fast float %10151, %9643
  %10155 = fmul fast float %9660, %9639
  %10156 = fsub fast float 1.000000e+00, %10155
  %10157 = fmul fast float %9639, %9639
  %10158 = fsub fast float 1.000000e+00, %10157
  %10159 = fmul fast float %10158, 0x3FB45F3060000000
  %10160 = fmul fast float %10156, %10156
  %10161 = fdiv fast float 1.000000e+00, %10160
  %10162 = fmul fast float %10159, %10161
  %10163 = fmul fast float %10162, %9636
  %10164 = fmul fast float %10162, %9637
  %10165 = fmul fast float %10162, %9638
  %10166 = fadd fast float %10163, %10152
  %10167 = fadd fast float %10164, %10153
  %10168 = fadd fast float %10165, %10154
  %10169 = fsub fast float 1.000000e+00, %10146
  %10170 = fsub fast float 1.000000e+00, %10147
  %10171 = fsub fast float 1.000000e+00, %10148
  %10172 = fmul fast float %10166, %10169
  %10173 = fmul fast float %10167, %10170
  %10174 = fmul fast float %10168, %10171
  br label %10175

; <label>:10175                                   ; preds = %10136, %10087
  %10176 = phi float [ %10113, %10087 ], [ %10172, %10136 ]
  %10177 = phi float [ %10114, %10087 ], [ %10173, %10136 ]
  %10178 = phi float [ %10115, %10087 ], [ %10174, %10136 ]
  %10179 = phi float [ %10102, %10087 ], [ %10146, %10136 ]
  %10180 = phi float [ %10102, %10087 ], [ %10147, %10136 ]
  %10181 = phi float [ %10102, %10087 ], [ %10148, %10136 ]
  br i1 %9668, label %10182, label %10380, !dx.controlflow.hints !177

; <label>:10182                                   ; preds = %10175
  %10183 = extractvalue %dx.types.CBufRet.f32 %10081, 0
  %10184 = fmul fast float %10183, %10083
  %10185 = fsub fast float %10078, %10176
  %10186 = fsub fast float %10079, %10177
  %10187 = fsub fast float %10080, %10178
  %10188 = fmul fast float %10184, %10185
  %10189 = fmul fast float %10184, %10186
  %10190 = fmul fast float %10184, %10187
  %10191 = fadd fast float %10188, %10176
  %10192 = fadd fast float %10189, %10177
  %10193 = fadd fast float %10190, %10178
  %10194 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10179)  ; FMax(a,b)
  %10195 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10180)  ; FMax(a,b)
  %10196 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10181)  ; FMax(a,b)
  %10197 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10077)  ; FMax(a,b)
  %10198 = call float @dx.op.binary.f32(i32 35, float %10076, float %10086)  ; FMax(a,b)
  %10199 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10198)  ; FMax(a,b)
  %10200 = fdiv fast float %10076, %10199
  %10201 = call float @dx.op.unary.f32(i32 7, float %10200)  ; Saturate(value)
  %10202 = fdiv fast float %10086, %10199
  %10203 = call float @dx.op.unary.f32(i32 7, float %10202)  ; Saturate(value)
  %10204 = fcmp fast une float %10197, 1.000000e+00
  br i1 %10204, label %10205, label %10218, !dx.controlflow.hints !178

; <label>:10205                                   ; preds = %10182
  %10206 = call float @dx.op.unary.f32(i32 23, float %10197)  ; Log(value)
  %10207 = fmul fast float %10206, 0x3FE62E4300000000
  %10208 = fmul fast float %10078, %10207
  %10209 = fsub fast float -0.000000e+00, %10208
  %10210 = fmul fast float %10079, %10207
  %10211 = fsub fast float -0.000000e+00, %10210
  %10212 = fmul fast float %10080, %10207
  %10213 = fsub fast float -0.000000e+00, %10212
  %10214 = fsub fast float 1.000000e+00, %10197
  %10215 = fdiv fast float %10209, %10214
  %10216 = fdiv fast float %10211, %10214
  %10217 = fdiv fast float %10213, %10214
  br label %10218

; <label>:10218                                   ; preds = %10205, %10182
  %10219 = phi float [ %10215, %10205 ], [ %10078, %10182 ]
  %10220 = phi float [ %10216, %10205 ], [ %10079, %10182 ]
  %10221 = phi float [ %10217, %10205 ], [ %10080, %10182 ]
  %10222 = phi float [ %10207, %10205 ], [ 0.000000e+00, %10182 ]
  %10223 = fcmp fast une float %10194, 1.000000e+00
  br i1 %10223, label %10224, label %10231, !dx.controlflow.hints !179

; <label>:10224                                   ; preds = %10218
  %10225 = call float @dx.op.unary.f32(i32 23, float %10194)  ; Log(value)
  %10226 = fmul fast float %10225, 0x3FE62E4300000000
  %10227 = fmul fast float %10191, %10226
  %10228 = fsub fast float -0.000000e+00, %10227
  %10229 = fsub fast float 1.000000e+00, %10194
  %10230 = fdiv fast float %10228, %10229
  br label %10231

; <label>:10231                                   ; preds = %10224, %10218
  %10232 = phi float [ %10230, %10224 ], [ %10191, %10218 ]
  %10233 = phi float [ %10226, %10224 ], [ 0.000000e+00, %10218 ]
  %10234 = fcmp fast une float %10195, 1.000000e+00
  br i1 %10234, label %10235, label %10242, !dx.controlflow.hints !179

; <label>:10235                                   ; preds = %10231
  %10236 = call float @dx.op.unary.f32(i32 23, float %10195)  ; Log(value)
  %10237 = fmul fast float %10236, 0x3FE62E4300000000
  %10238 = fmul fast float %10192, %10237
  %10239 = fsub fast float -0.000000e+00, %10238
  %10240 = fsub fast float 1.000000e+00, %10195
  %10241 = fdiv fast float %10239, %10240
  br label %10242

; <label>:10242                                   ; preds = %10235, %10231
  %10243 = phi float [ %10241, %10235 ], [ %10192, %10231 ]
  %10244 = phi float [ %10237, %10235 ], [ 0.000000e+00, %10231 ]
  %10245 = fcmp fast une float %10196, 1.000000e+00
  br i1 %10245, label %10246, label %10253, !dx.controlflow.hints !179

; <label>:10246                                   ; preds = %10242
  %10247 = call float @dx.op.unary.f32(i32 23, float %10196)  ; Log(value)
  %10248 = fmul fast float %10247, 0x3FE62E4300000000
  %10249 = fmul fast float %10193, %10248
  %10250 = fsub fast float -0.000000e+00, %10249
  %10251 = fsub fast float 1.000000e+00, %10196
  %10252 = fdiv fast float %10250, %10251
  br label %10253

; <label>:10253                                   ; preds = %10246, %10242
  %10254 = phi float [ %10252, %10246 ], [ %10193, %10242 ]
  %10255 = phi float [ %10248, %10246 ], [ 0.000000e+00, %10242 ]
  %10256 = fmul fast float %10219, %10203
  %10257 = fmul fast float %10220, %10203
  %10258 = fmul fast float %10221, %10203
  %10259 = fmul fast float %10222, %10203
  %10260 = fmul fast float %10232, %10201
  %10261 = fmul fast float %10243, %10201
  %10262 = fmul fast float %10254, %10201
  %10263 = fmul fast float %10233, %10201
  %10264 = fmul fast float %10244, %10201
  %10265 = fmul fast float %10255, %10201
  %10266 = fadd fast float %10260, %10256
  %10267 = fadd fast float %10261, %10257
  %10268 = fadd fast float %10262, %10258
  %10269 = fadd fast float %10263, %10259
  %10270 = fadd fast float %10264, %10259
  %10271 = fadd fast float %10265, %10259
  %10272 = fcmp fast une float %10269, 0.000000e+00
  br i1 %10272, label %10273, label %10280, !dx.controlflow.hints !180

; <label>:10273                                   ; preds = %10253
  %10274 = fmul fast float %10269, 0x3FF7154760000000
  %10275 = call float @dx.op.unary.f32(i32 21, float %10274)  ; Exp(value)
  %10276 = fsub fast float 1.000000e+00, %10275
  %10277 = fmul fast float %10266, %10276
  %10278 = fsub fast float -0.000000e+00, %10277
  %10279 = fdiv fast float %10278, %10269
  br label %10280

; <label>:10280                                   ; preds = %10273, %10253
  %10281 = phi float [ %10275, %10273 ], [ 1.000000e+00, %10253 ]
  %10282 = phi float [ %10279, %10273 ], [ %10266, %10253 ]
  %10283 = fcmp fast une float %10270, 0.000000e+00
  br i1 %10283, label %10284, label %10291, !dx.controlflow.hints !180

; <label>:10284                                   ; preds = %10280
  %10285 = fmul fast float %10270, 0x3FF7154760000000
  %10286 = call float @dx.op.unary.f32(i32 21, float %10285)  ; Exp(value)
  %10287 = fsub fast float 1.000000e+00, %10286
  %10288 = fmul fast float %10267, %10287
  %10289 = fsub fast float -0.000000e+00, %10288
  %10290 = fdiv fast float %10289, %10270
  br label %10291

; <label>:10291                                   ; preds = %10284, %10280
  %10292 = phi float [ %10286, %10284 ], [ 1.000000e+00, %10280 ]
  %10293 = phi float [ %10290, %10284 ], [ %10267, %10280 ]
  %10294 = fcmp fast une float %10271, 0.000000e+00
  br i1 %10294, label %10295, label %10302, !dx.controlflow.hints !180

; <label>:10295                                   ; preds = %10291
  %10296 = fmul fast float %10271, 0x3FF7154760000000
  %10297 = call float @dx.op.unary.f32(i32 21, float %10296)  ; Exp(value)
  %10298 = fsub fast float 1.000000e+00, %10297
  %10299 = fmul fast float %10268, %10298
  %10300 = fsub fast float -0.000000e+00, %10299
  %10301 = fdiv fast float %10300, %10271
  br label %10302

; <label>:10302                                   ; preds = %10295, %10291
  %10303 = phi float [ %10297, %10295 ], [ 1.000000e+00, %10291 ]
  %10304 = phi float [ %10301, %10295 ], [ %10268, %10291 ]
  %10305 = fcmp fast ogt float %10201, %10203
  br i1 %10305, label %10306, label %10326

; <label>:10306                                   ; preds = %10302
  %10307 = fsub fast float 1.000000e+00, %10203
  %10308 = fmul fast float %10219, %10307
  %10309 = fmul fast float %10220, %10307
  %10310 = fmul fast float %10221, %10307
  %10311 = fmul fast float %10222, %10307
  %10312 = fcmp fast une float %10311, 0.000000e+00
  br i1 %10312, label %10313, label %10364, !dx.controlflow.hints !181

; <label>:10313                                   ; preds = %10306
  %10314 = fmul fast float %10311, 0x3FF7154760000000
  %10315 = call float @dx.op.unary.f32(i32 21, float %10314)  ; Exp(value)
  %10316 = fsub fast float 1.000000e+00, %10315
  %10317 = fmul fast float %10308, %10316
  %10318 = fsub fast float -0.000000e+00, %10317
  %10319 = fmul fast float %10309, %10316
  %10320 = fsub fast float -0.000000e+00, %10319
  %10321 = fmul fast float %10310, %10316
  %10322 = fsub fast float -0.000000e+00, %10321
  %10323 = fdiv fast float %10318, %10311
  %10324 = fdiv fast float %10320, %10311
  %10325 = fdiv fast float %10322, %10311
  br label %10364

; <label>:10326                                   ; preds = %10302
  %10327 = fsub fast float 1.000000e+00, %10201
  %10328 = fmul fast float %10232, %10327
  %10329 = fmul fast float %10243, %10327
  %10330 = fmul fast float %10254, %10327
  %10331 = fmul fast float %10233, %10327
  %10332 = fmul fast float %10244, %10327
  %10333 = fmul fast float %10255, %10327
  %10334 = fcmp fast une float %10331, 0.000000e+00
  br i1 %10334, label %10335, label %10342, !dx.controlflow.hints !180

; <label>:10335                                   ; preds = %10326
  %10336 = fmul fast float %10331, 0x3FF7154760000000
  %10337 = call float @dx.op.unary.f32(i32 21, float %10336)  ; Exp(value)
  %10338 = fsub fast float 1.000000e+00, %10337
  %10339 = fmul fast float %10328, %10338
  %10340 = fsub fast float -0.000000e+00, %10339
  %10341 = fdiv fast float %10340, %10331
  br label %10342

; <label>:10342                                   ; preds = %10335, %10326
  %10343 = phi float [ %10341, %10335 ], [ %10328, %10326 ]
  %10344 = phi float [ %10337, %10335 ], [ 1.000000e+00, %10326 ]
  %10345 = fcmp fast une float %10332, 0.000000e+00
  br i1 %10345, label %10346, label %10353, !dx.controlflow.hints !180

; <label>:10346                                   ; preds = %10342
  %10347 = fmul fast float %10332, 0x3FF7154760000000
  %10348 = call float @dx.op.unary.f32(i32 21, float %10347)  ; Exp(value)
  %10349 = fsub fast float 1.000000e+00, %10348
  %10350 = fmul fast float %10329, %10349
  %10351 = fsub fast float -0.000000e+00, %10350
  %10352 = fdiv fast float %10351, %10332
  br label %10353

; <label>:10353                                   ; preds = %10346, %10342
  %10354 = phi float [ %10352, %10346 ], [ %10329, %10342 ]
  %10355 = phi float [ %10348, %10346 ], [ 1.000000e+00, %10342 ]
  %10356 = fcmp fast une float %10333, 0.000000e+00
  br i1 %10356, label %10357, label %10364, !dx.controlflow.hints !180

; <label>:10357                                   ; preds = %10353
  %10358 = fmul fast float %10333, 0x3FF7154760000000
  %10359 = call float @dx.op.unary.f32(i32 21, float %10358)  ; Exp(value)
  %10360 = fsub fast float 1.000000e+00, %10359
  %10361 = fmul fast float %10330, %10360
  %10362 = fsub fast float -0.000000e+00, %10361
  %10363 = fdiv fast float %10362, %10333
  br label %10364

; <label>:10364                                   ; preds = %10357, %10353, %10313, %10306
  %10365 = phi float [ %10363, %10357 ], [ %10325, %10313 ], [ %10310, %10306 ], [ %10330, %10353 ]
  %10366 = phi float [ %10354, %10357 ], [ %10324, %10313 ], [ %10309, %10306 ], [ %10354, %10353 ]
  %10367 = phi float [ %10343, %10357 ], [ %10323, %10313 ], [ %10308, %10306 ], [ %10343, %10353 ]
  %10368 = phi float [ %10359, %10357 ], [ %10315, %10313 ], [ 1.000000e+00, %10306 ], [ 1.000000e+00, %10353 ]
  %10369 = phi float [ %10355, %10357 ], [ %10315, %10313 ], [ 1.000000e+00, %10306 ], [ %10355, %10353 ]
  %10370 = phi float [ %10344, %10357 ], [ %10315, %10313 ], [ 1.000000e+00, %10306 ], [ %10344, %10353 ]
  %10371 = fmul fast float %10370, %10282
  %10372 = fmul fast float %10369, %10293
  %10373 = fmul fast float %10368, %10304
  %10374 = fadd fast float %10371, %10367
  %10375 = fadd fast float %10372, %10366
  %10376 = fadd fast float %10373, %10365
  %10377 = fmul fast float %10370, %10281
  %10378 = fmul fast float %10369, %10292
  %10379 = fmul fast float %10368, %10303
  br label %10380

; <label>:10380                                   ; preds = %10364, %10175
  %10381 = phi float [ %10379, %10364 ], [ %10181, %10175 ]
  %10382 = phi float [ %10378, %10364 ], [ %10180, %10175 ]
  %10383 = phi float [ %10377, %10364 ], [ %10179, %10175 ]
  %10384 = phi float [ %10376, %10364 ], [ %10178, %10175 ]
  %10385 = phi float [ %10375, %10364 ], [ %10177, %10175 ]
  %10386 = phi float [ %10374, %10364 ], [ %10176, %10175 ]
  %10387 = fmul fast float %10383, %9623
  %10388 = call float @dx.op.dot3.f32(i32 55, float %10383, float %10382, float %10381, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10389 = call float @dx.op.dot3.f32(i32 55, float %10386, float %10385, float %10384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10390 = select i1 %228, float %10388, float %10383
  %10391 = select i1 %228, float %10388, float %10382
  %10392 = select i1 %228, float 1.000000e+00, float %10381
  %10393 = select i1 %228, float %10389, float %10386
  %10394 = select i1 %228, float 0.000000e+00, float %10385
  %10395 = select i1 %228, float 0.000000e+00, float %10384
  %10396 = fmul fast float %10390, %9617
  %10397 = fmul fast float %10391, %9618
  %10398 = fmul fast float %10392, %9619
  %10399 = fadd fast float %10396, %10393
  %10400 = fadd fast float %10397, %10394
  %10401 = fadd fast float %10395, %10398
  %10402 = fmul fast float %10390, %9620
  %10403 = fmul fast float %10391, %9621
  %10404 = fmul fast float %10392, %9622
  %10405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10406 = extractvalue %dx.types.CBufRet.i32 %10405, 0
  %10407 = icmp eq i32 %10406, 0
  br i1 %10407, label %10772, label %10408, !dx.controlflow.hints !182

; <label>:10408                                   ; preds = %10380
  %10409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10410 = extractvalue %dx.types.CBufRet.f32 %10409, 2
  %10411 = extractvalue %dx.types.CBufRet.f32 %10409, 3
  %10412 = fmul fast float %10410, %111
  %10413 = fmul fast float %10411, %112
  %10414 = fmul fast float %10412, 2.000000e+00
  %10415 = fmul fast float %10413, 2.000000e+00
  %10416 = fsub fast float 1.000000e+00, %10414
  %10417 = fsub fast float 1.000000e+00, %10415
  %10418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10419 = extractvalue %dx.types.CBufRet.f32 %10418, 0
  %10420 = extractvalue %dx.types.CBufRet.f32 %10418, 1
  %10421 = extractvalue %dx.types.CBufRet.f32 %10418, 2
  %10422 = fmul fast float %10416, %10419
  %10423 = fmul fast float %10416, %10420
  %10424 = fmul fast float %10416, %10421
  %10425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10426 = extractvalue %dx.types.CBufRet.f32 %10425, 0
  %10427 = extractvalue %dx.types.CBufRet.f32 %10425, 1
  %10428 = extractvalue %dx.types.CBufRet.f32 %10425, 2
  %10429 = fmul fast float %10417, %10426
  %10430 = fmul fast float %10417, %10427
  %10431 = fmul fast float %10417, %10428
  %10432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10433 = extractvalue %dx.types.CBufRet.f32 %10432, 0
  %10434 = extractvalue %dx.types.CBufRet.f32 %10432, 1
  %10435 = extractvalue %dx.types.CBufRet.f32 %10432, 2
  %10436 = fadd fast float %10429, %10433
  %10437 = fadd fast float %10436, %10422
  %10438 = fadd fast float %10430, %10434
  %10439 = fadd fast float %10438, %10423
  %10440 = fadd fast float %10431, %10435
  %10441 = fadd fast float %10440, %10424
  %10442 = fmul fast float %10437, %9616
  %10443 = fmul fast float %10439, %9616
  %10444 = fmul fast float %10441, %9616
  %10445 = fmul fast float %10442, %10442
  %10446 = fmul fast float %10443, %10443
  %10447 = fadd fast float %10445, %10446
  %10448 = fmul fast float %10444, %10444
  %10449 = fadd fast float %10447, %10448
  %10450 = call float @dx.op.unary.f32(i32 24, float %10449)  ; Sqrt(value)
  %10451 = extractvalue %dx.types.CBufRet.f32 %9346, 0
  %10452 = fsub fast float %10450, %10451
  %10453 = extractvalue %dx.types.CBufRet.f32 %9346, 2
  %10454 = fmul fast float %10452, %10453
  %10455 = call float @dx.op.unary.f32(i32 7, float %10454)  ; Saturate(value)
  %10456 = fadd fast float %10455, -5.000000e-01
  %10457 = fmul fast float %10456, 2.000000e+00
  %10458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10459 = extractvalue %dx.types.CBufRet.f32 %10458, 2
  %10460 = call float @dx.op.binary.f32(i32 36, float %10459, float %10457)  ; FMin(a,b)
  %10461 = fsub fast float -0.000000e+00, %10459
  %10462 = fcmp fast ogt float %10460, %10461
  br i1 %10462, label %10463, label %10772, !dx.controlflow.hints !183

; <label>:10463                                   ; preds = %10408
  %10464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10465 = extractvalue %dx.types.CBufRet.f32 %10464, 3
  %10466 = fcmp fast ogt float %10465, 0.000000e+00
  br i1 %10466, label %10467, label %10542, !dx.controlflow.hints !184

; <label>:10467                                   ; preds = %10463
  %10468 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10469 = extractvalue %dx.types.Dimensions %10468, 0
  %10470 = sitofp i32 %10469 to float
  %10471 = extractvalue %dx.types.Dimensions %10468, 1
  %10472 = sitofp i32 %10471 to float
  %10473 = fmul fast float %10412, %10470
  %10474 = fmul fast float %10413, %10472
  %10475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10476 = extractvalue %dx.types.CBufRet.f32 %10475, 1
  %10477 = fsub fast float -0.000000e+00, %10476
  %10478 = fptoui float %10477 to i32
  %10479 = fptoui float %10473 to i32
  %10480 = fptoui float %10474 to i32
  %10481 = and i32 %10478, 31
  %10482 = lshr i32 %10479, %10481
  %10483 = lshr i32 %10480, %10481
  %10484 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10478, i32 %10482, i32 %10483, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10485 = extractvalue %dx.types.ResRet.f32 %10484, 0
  %10486 = fcmp fast olt float %10485, -1.000000e+00
  %10487 = fcmp fast ogt float %10485, -1.000000e+00
  %10488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10489 = extractvalue %dx.types.CBufRet.f32 %10488, 1
  %10490 = select i1 %10487, float %10489, float 1.000000e+00
  %10491 = fadd fast float %10485, 1.000000e+00
  %10492 = fmul fast float %10490, %10491
  %10493 = call float @dx.op.unary.f32(i32 6, float %10492)  ; FAbs(value)
  %10494 = extractvalue %dx.types.CBufRet.f32 %10488, 3
  %10495 = fcmp fast oge float %10493, %10494
  %10496 = select i1 %10495, float 0x4197782600000000, float %10493
  %10497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10498 = extractvalue %dx.types.CBufRet.f32 %10497, 0
  %10499 = extractvalue %dx.types.CBufRet.f32 %10497, 1
  %10500 = extractvalue %dx.types.CBufRet.f32 %10497, 2
  %10501 = select i1 %10486, float %10498, float %10419
  %10502 = select i1 %10486, float %10499, float %10420
  %10503 = select i1 %10486, float %10500, float %10421
  %10504 = fmul fast float %10501, %10416
  %10505 = fmul fast float %10502, %10416
  %10506 = fmul fast float %10503, %10416
  %10507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10508 = extractvalue %dx.types.CBufRet.f32 %10507, 0
  %10509 = extractvalue %dx.types.CBufRet.f32 %10507, 1
  %10510 = extractvalue %dx.types.CBufRet.f32 %10507, 2
  %10511 = select i1 %10486, float %10508, float %10426
  %10512 = select i1 %10486, float %10509, float %10427
  %10513 = select i1 %10486, float %10510, float %10428
  %10514 = fmul fast float %10511, %10417
  %10515 = fmul fast float %10512, %10417
  %10516 = fmul fast float %10513, %10417
  %10517 = fadd fast float %10514, %10504
  %10518 = fadd fast float %10515, %10505
  %10519 = fadd fast float %10516, %10506
  %10520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10521 = extractvalue %dx.types.CBufRet.f32 %10520, 0
  %10522 = extractvalue %dx.types.CBufRet.f32 %10520, 1
  %10523 = extractvalue %dx.types.CBufRet.f32 %10520, 2
  %10524 = select i1 %10486, float %10521, float %10433
  %10525 = select i1 %10486, float %10522, float %10434
  %10526 = select i1 %10486, float %10523, float %10435
  %10527 = fadd fast float %10517, %10524
  %10528 = fadd fast float %10518, %10525
  %10529 = fadd fast float %10519, %10526
  %10530 = fmul fast float %10527, %10496
  %10531 = fmul fast float %10528, %10496
  %10532 = fmul fast float %10529, %10496
  %10533 = fmul fast float %10530, %10530
  %10534 = fmul fast float %10531, %10531
  %10535 = fadd fast float %10533, %10534
  %10536 = fmul fast float %10532, %10532
  %10537 = fadd fast float %10535, %10536
  %10538 = call float @dx.op.unary.f32(i32 24, float %10537)  ; Sqrt(value)
  %10539 = fsub fast float %10538, %10451
  %10540 = fmul fast float %10539, %10453
  %10541 = call float @dx.op.unary.f32(i32 7, float %10540)  ; Saturate(value)
  br label %10542

; <label>:10542                                   ; preds = %10467, %10463
  %10543 = phi float [ %10541, %10467 ], [ 1.000000e+00, %10463 ]
  %10544 = fmul fast float %10460, 5.000000e-01
  %10545 = fadd fast float %10544, 5.000000e-01
  %10546 = call float @dx.op.unary.f32(i32 22, float %10545)  ; Frc(value)
  %10547 = call float @dx.op.unary.f32(i32 27, float %10546)  ; Round_ni(value)
  %10548 = call float @dx.op.unary.f32(i32 22, float %10546)  ; Frc(value)
  %10549 = fmul fast float %10548, 2.000000e+00
  %10550 = fadd fast float %10549, -1.000000e+00
  %10551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %10412, float %10413, float %10547, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10552 = extractvalue %dx.types.ResRet.f32 %10551, 0
  %10553 = extractvalue %dx.types.ResRet.f32 %10551, 1
  %10554 = extractvalue %dx.types.ResRet.f32 %10551, 2
  %10555 = extractvalue %dx.types.ResRet.f32 %10551, 3
  %10556 = fadd fast float %10552, -5.000000e-01
  %10557 = fadd fast float %10554, -5.000000e-01
  %10558 = fmul fast float %10556, 0xBFD5555560000000
  %10559 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10557, float %10558)  ; FMad(a,b,c)
  %10560 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10553, float 0.000000e+00)  ; FMad(a,b,c)
  %10561 = fadd fast float %10560, %10555
  %10562 = fmul fast float %10556, -7.500000e-01
  %10563 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10557, float %10562)  ; FMad(a,b,c)
  %10564 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10553, float 0.000000e+00)  ; FMad(a,b,c)
  %10565 = fadd fast float %10564, %10555
  %10566 = call float @dx.op.binary.f32(i32 35, float %10559, float -1.000000e+00)  ; FMax(a,b)
  %10567 = call float @dx.op.binary.f32(i32 35, float %10561, float -1.000000e+00)  ; FMax(a,b)
  %10568 = call float @dx.op.binary.f32(i32 35, float %10563, float -1.000000e+00)  ; FMax(a,b)
  %10569 = call float @dx.op.binary.f32(i32 35, float %10565, float -1.000000e+00)  ; FMax(a,b)
  %10570 = call float @dx.op.binary.f32(i32 36, float %10566, float 1.000000e+00)  ; FMin(a,b)
  %10571 = call float @dx.op.binary.f32(i32 36, float %10567, float 1.000000e+00)  ; FMin(a,b)
  %10572 = call float @dx.op.binary.f32(i32 36, float %10568, float 1.000000e+00)  ; FMin(a,b)
  %10573 = call float @dx.op.binary.f32(i32 36, float %10569, float 1.000000e+00)  ; FMin(a,b)
  %10574 = fcmp fast olt float %10570, 0x3FEFFF8020000000
  br i1 %10574, label %10575, label %10690, !dx.controlflow.hints !185

; <label>:10575                                   ; preds = %10542
  %10576 = extractvalue %dx.types.CBufRet.f32 %10458, 3
  %10577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10578 = extractvalue %dx.types.CBufRet.f32 %10577, 0
  %10579 = extractvalue %dx.types.CBufRet.f32 %10577, 1
  %10580 = extractvalue %dx.types.CBufRet.f32 %10577, 2
  %10581 = extractvalue %dx.types.CBufRet.f32 %10577, 3
  %10582 = fsub fast float %10578, %10570
  %10583 = fsub fast float %10579, %10571
  %10584 = fsub fast float %10580, %10572
  %10585 = fsub fast float %10581, %10573
  %10586 = fmul fast float %10582, %10576
  %10587 = fmul fast float %10583, %10576
  %10588 = fmul fast float %10584, %10576
  %10589 = fmul fast float %10585, %10576
  %10590 = fadd fast float %10586, %10570
  %10591 = fadd fast float %10587, %10571
  %10592 = fsub fast float -0.000000e+00, %10591
  %10593 = fadd fast float %10588, %10572
  %10594 = fadd fast float %10589, %10573
  %10595 = fmul fast float %10590, %10590
  %10596 = fsub fast float %10591, %10595
  %10597 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10596)  ; FMax(a,b)
  %10598 = fdiv fast float 1.000000e+00, %10597
  %10599 = fmul fast float %10591, %10590
  %10600 = fsub fast float %10593, %10599
  %10601 = fsub fast float %10550, %10590
  %10602 = fmul fast float %10550, %10550
  %10603 = fsub fast float %10602, %10591
  %10604 = fmul fast float %10601, %10598
  %10605 = fmul fast float %10604, %10600
  %10606 = fsub fast float %10603, %10605
  %10607 = fmul fast float %10591, %10591
  %10608 = fsub fast float %10594, %10607
  %10609 = fmul fast float %10600, %10600
  %10610 = fmul fast float %10609, %10598
  %10611 = fsub fast float %10608, %10610
  %10612 = fdiv fast float %10606, %10611
  %10613 = fmul fast float %10600, %10612
  %10614 = fsub fast float %10601, %10613
  %10615 = fmul fast float %10614, %10598
  %10616 = fmul fast float %10615, %10590
  %10617 = fsub fast float 1.000000e+00, %10616
  %10618 = fmul fast float %10591, %10612
  %10619 = fsub fast float %10617, %10618
  %10620 = fmul fast float %10615, %10615
  %10621 = fmul fast float %10612, 4.000000e+00
  %10622 = fmul fast float %10621, %10619
  %10623 = fsub fast float %10620, %10622
  %10624 = call float @dx.op.unary.f32(i32 24, float %10623)  ; Sqrt(value)
  %10625 = fcmp fast oge float %10615, 0.000000e+00
  %10626 = fsub fast float -0.000000e+00, %10624
  %10627 = select i1 %10625, float %10626, float %10624
  %10628 = fsub fast float %10627, %10615
  %10629 = fdiv fast float %10628, %10612
  %10630 = fdiv fast float %10619, %10628
  %10631 = fmul fast float %10629, 5.000000e-01
  %10632 = fmul fast float %10630, 2.000000e+00
  %10633 = select i1 %10625, float %10631, float %10632
  %10634 = select i1 %10625, float %10632, float %10631
  %10635 = call float @dx.op.binary.f32(i32 35, float %10633, float %10634)  ; FMax(a,b)
  %10636 = call float @dx.op.binary.f32(i32 36, float %10633, float %10634)  ; FMin(a,b)
  %10637 = fcmp fast ogt float %10550, %10636
  br i1 %10637, label %10638, label %10648

; <label>:10638                                   ; preds = %10575
  %10639 = fsub fast float %10550, %10636
  %10640 = fsub fast float %10635, %10636
  %10641 = fmul fast float %10639, %10640
  %10642 = fmul fast float %10635, %10550
  %10643 = fadd fast float %10635, %10550
  %10644 = fmul fast float %10643, %10590
  %10645 = fadd fast float %10642, %10591
  %10646 = fsub fast float %10645, %10644
  %10647 = fdiv fast float %10646, %10641
  br label %10648

; <label>:10648                                   ; preds = %10638, %10575
  %10649 = phi float [ %10647, %10638 ], [ 0.000000e+00, %10575 ]
  %10650 = fcmp fast ogt float %10550, %10635
  %10651 = fsub fast float %10550, %10635
  br i1 %10650, label %10652, label %10662

; <label>:10652                                   ; preds = %10648
  %10653 = fsub fast float %10635, %10636
  %10654 = fmul fast float %10653, %10651
  %10655 = fmul fast float %10636, %10550
  %10656 = fadd fast float %10636, %10550
  %10657 = fmul fast float %10656, %10590
  %10658 = fsub fast float %10592, %10655
  %10659 = fadd fast float %10658, %10657
  %10660 = fdiv fast float %10659, %10654
  %10661 = fadd fast float %10660, %10649
  br label %10662

; <label>:10662                                   ; preds = %10652, %10648
  %10663 = phi float [ %10661, %10652 ], [ %10649, %10648 ]
  %10664 = fsub fast float %10550, %10636
  %10665 = fmul fast float %10664, %10651
  %10666 = fmul fast float %10636, %10635
  %10667 = fadd fast float %10636, %10635
  %10668 = fmul fast float %10667, %10590
  %10669 = fadd fast float %10666, %10591
  %10670 = fsub fast float %10669, %10668
  %10671 = fdiv fast float %10670, %10665
  %10672 = call float @dx.op.unary.f32(i32 7, float %10663)  ; Saturate(value)
  %10673 = fcmp fast oeq float %9347, 0.000000e+00
  %10674 = extractvalue %dx.types.CBufRet.f32 %10458, 0
  %10675 = fcmp fast oeq float %10674, 0.000000e+00
  %10676 = or i1 %10673, %10675
  %10677 = fmul fast float %10674, 2.000000e+00
  %10678 = fadd fast float %10459, %10460
  %10679 = fdiv fast float %10678, %10677
  %10680 = call float @dx.op.unary.f32(i32 7, float %10679)  ; Saturate(value)
  %10681 = fmul fast float %10680, 2.000000e+00
  %10682 = fsub fast float 3.000000e+00, %10681
  %10683 = fmul fast float %10680, %10680
  %10684 = fmul fast float %10683, %10682
  %10685 = select i1 %10676, float 1.000000e+00, float %10684
  %10686 = fmul fast float %10671, %9347
  %10687 = fadd fast float %10672, %10686
  %10688 = call float @dx.op.unary.f32(i32 7, float %10687)  ; Saturate(value)
  %10689 = fmul fast float %10685, %10688
  br label %10690

; <label>:10690                                   ; preds = %10662, %10542
  %10691 = phi float [ %10689, %10662 ], [ 0.000000e+00, %10542 ]
  %10692 = fsub fast float 1.000000e+00, %10691
  %10693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %10412, float %10413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10694 = extractvalue %dx.types.ResRet.f32 %10693, 0
  %10695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10696 = extractvalue %dx.types.CBufRet.i32 %10695, 2
  %10697 = icmp eq i32 %10696, 0
  br i1 %10697, label %10703, label %10698

; <label>:10698                                   ; preds = %10690
  %10699 = call float @dx.op.unary.f32(i32 7, float %10691)  ; Saturate(value)
  %10700 = fadd fast float %10694, -1.000000e+00
  %10701 = fmul fast float %10699, %10700
  %10702 = fadd fast float %10701, 1.000000e+00
  br label %10703

; <label>:10703                                   ; preds = %10698, %10690
  %10704 = phi float [ %10702, %10698 ], [ %10692, %10690 ]
  br i1 %10466, label %10705, label %10723

; <label>:10705                                   ; preds = %10703
  %10706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10707 = extractvalue %dx.types.CBufRet.f32 %10706, 1
  %10708 = fsub fast float %10543, %10707
  %10709 = call float @dx.op.unary.f32(i32 7, float %10708)  ; Saturate(value)
  %10710 = fsub fast float %10543, %10465
  %10711 = call float @dx.op.unary.f32(i32 7, float %10710)  ; Saturate(value)
  %10712 = fsub fast float %10709, %10711
  %10713 = fsub fast float %10545, %10711
  %10714 = fdiv fast float %10713, %10712
  %10715 = call float @dx.op.unary.f32(i32 7, float %10714)  ; Saturate(value)
  %10716 = fmul fast float %10715, 2.000000e+00
  %10717 = fsub fast float 3.000000e+00, %10716
  %10718 = fsub fast float %10694, %10704
  %10719 = fmul fast float %10715, %10715
  %10720 = fmul fast float %10719, %10718
  %10721 = fmul fast float %10720, %10717
  %10722 = fadd fast float %10721, %10704
  br label %10723

; <label>:10723                                   ; preds = %10705, %10703
  %10724 = phi float [ %10722, %10705 ], [ %10704, %10703 ]
  %10725 = call float @dx.op.binary.f32(i32 35, float %10694, float %10724)  ; FMax(a,b)
  %10726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10727 = extractvalue %dx.types.CBufRet.i32 %10726, 2
  %10728 = and i32 %10727, 1
  %10729 = icmp eq i32 %10728, 0
  %10730 = fcmp fast une float %10725, 1.000000e+00
  %10731 = and i1 %10730, %10729
  br i1 %10731, label %10732, label %10751

; <label>:10732                                   ; preds = %10723
  %10733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %56, float %10412, float %10413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10734 = extractvalue %dx.types.ResRet.f32 %10733, 0
  %10735 = extractvalue %dx.types.ResRet.f32 %10733, 1
  %10736 = extractvalue %dx.types.ResRet.f32 %10733, 2
  %10737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10738 = extractvalue %dx.types.CBufRet.f32 %10737, 1
  %10739 = fmul fast float %10738, %10734
  %10740 = fmul fast float %10738, %10735
  %10741 = fmul fast float %10738, %10736
  %10742 = fcmp fast ogt float %10694, 0x3FEFFF2E40000000
  %10743 = fsub fast float 1.000000e+00, %10725
  %10744 = fsub fast float 1.000000e+00, %10694
  %10745 = fdiv fast float %10743, %10744
  %10746 = call float @dx.op.unary.f32(i32 7, float %10745)  ; Saturate(value)
  %10747 = select i1 %10742, float 0.000000e+00, float %10746
  %10748 = fmul fast float %10739, %10747
  %10749 = fmul fast float %10740, %10747
  %10750 = fmul fast float %10741, %10747
  br label %10751

; <label>:10751                                   ; preds = %10732, %10723
  %10752 = phi float [ 0.000000e+00, %10723 ], [ %10748, %10732 ]
  %10753 = phi float [ 0.000000e+00, %10723 ], [ %10749, %10732 ]
  %10754 = phi float [ 0.000000e+00, %10723 ], [ %10750, %10732 ]
  %10755 = fmul fast float %10725, %10387
  %10756 = call float @dx.op.dot3.f32(i32 55, float %10725, float %10725, float %10725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10757 = call float @dx.op.dot3.f32(i32 55, float %10752, float %10753, float %10754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10758 = select i1 %228, float %10756, float %10725
  %10759 = select i1 %228, float 1.000000e+00, float %10725
  %10760 = select i1 %228, float %10757, float %10752
  %10761 = select i1 %228, float 0.000000e+00, float %10753
  %10762 = select i1 %228, float 0.000000e+00, float %10754
  %10763 = fmul fast float %10758, %10399
  %10764 = fmul fast float %10758, %10400
  %10765 = fmul fast float %10759, %10401
  %10766 = fadd fast float %10763, %10760
  %10767 = fadd fast float %10764, %10761
  %10768 = fadd fast float %10762, %10765
  %10769 = fmul fast float %10758, %10402
  %10770 = fmul fast float %10758, %10403
  %10771 = fmul fast float %10759, %10404
  br label %10772

; <label>:10772                                   ; preds = %10751, %10408, %10380, %9612
  %10773 = phi float [ %9617, %9612 ], [ %10399, %10380 ], [ %10766, %10751 ], [ %10399, %10408 ]
  %10774 = phi float [ %9618, %9612 ], [ %10400, %10380 ], [ %10767, %10751 ], [ %10400, %10408 ]
  %10775 = phi float [ %9619, %9612 ], [ %10401, %10380 ], [ %10768, %10751 ], [ %10401, %10408 ]
  %10776 = phi float [ %9620, %9612 ], [ %10402, %10380 ], [ %10769, %10751 ], [ %10402, %10408 ]
  %10777 = phi float [ %9621, %9612 ], [ %10403, %10380 ], [ %10770, %10751 ], [ %10403, %10408 ]
  %10778 = phi float [ %9622, %9612 ], [ %10404, %10380 ], [ %10771, %10751 ], [ %10404, %10408 ]
  %10779 = phi float [ %9623, %9612 ], [ %10387, %10380 ], [ %10755, %10751 ], [ %10387, %10408 ]
  %10780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10781 = extractvalue %dx.types.CBufRet.f32 %10780, 2
  %10782 = extractvalue %dx.types.CBufRet.f32 %10780, 3
  %10783 = fmul fast float %10781, %111
  %10784 = fmul fast float %10782, %112
  %10785 = call float @dx.op.unary.f32(i32 7, float %10783)  ; Saturate(value)
  %10786 = call float @dx.op.unary.f32(i32 7, float %10784)  ; Saturate(value)
  %10787 = select i1 %9357, i32 2, i32 0
  %10788 = or i32 %10787, 1
  %10789 = uitofp i32 %10788 to float
  %10790 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10785, float %10786, float %10789, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10791 = extractvalue %dx.types.ResRet.f32 %10790, 0
  %10792 = extractvalue %dx.types.ResRet.f32 %10790, 1
  %10793 = extractvalue %dx.types.ResRet.f32 %10790, 2
  %10794 = extractvalue %dx.types.ResRet.f32 %10790, 3
  %10795 = add nuw nsw i32 %10787, 2
  %10796 = uitofp i32 %10795 to float
  %10797 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %56, float %10785, float %10786, float %10796, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10798 = extractvalue %dx.types.ResRet.f32 %10797, 0
  %10799 = extractvalue %dx.types.ResRet.f32 %10797, 1
  %10800 = extractvalue %dx.types.ResRet.f32 %10797, 2
  %10801 = extractvalue %dx.types.ResRet.f32 %10797, 3
  %10802 = call float @dx.op.binary.f32(i32 35, float %10792, float %10793)  ; FMax(a,b)
  %10803 = call float @dx.op.binary.f32(i32 35, float %10791, float %10802)  ; FMax(a,b)
  %10804 = call float @dx.op.binary.f32(i32 35, float %10803, float %10794)  ; FMax(a,b)
  %10805 = call float @dx.op.binary.f32(i32 36, float %10799, float %10800)  ; FMin(a,b)
  %10806 = call float @dx.op.binary.f32(i32 36, float %10798, float %10805)  ; FMin(a,b)
  %10807 = call float @dx.op.binary.f32(i32 36, float %10806, float %10801)  ; FMin(a,b)
  %10808 = fmul fast float %10804, 2.550000e+02
  %10809 = fadd fast float %10808, 0x3F70101020000000
  %10810 = fptoui float %10809 to i32
  %10811 = fmul fast float %10807, 2.550000e+02
  %10812 = fadd fast float %10811, 0x3F70101020000000
  %10813 = fptoui float %10812 to i32
  %10814 = icmp ult i32 %10810, %10813
  br i1 %10814, label %10815, label %10984

; <label>:10815                                   ; preds = %10772
  %10816 = fcmp fast ogt float %98, 9.843750e-01
  %10817 = fadd fast float %9616, -4.000000e+00
  %10818 = select i1 %10816, float -4.000000e+00, float %10817
  %10819 = call float @dx.op.binary.f32(i32 35, float %10818, float 0.000000e+00)  ; FMax(a,b)
  %10820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10821 = extractvalue %dx.types.CBufRet.f32 %10820, 0
  %10822 = fadd fast float %10821, %10819
  %10823 = extractvalue %dx.types.CBufRet.f32 %10820, 2
  %10824 = fmul fast float %10822, %10823
  %10825 = call float @dx.op.unary.f32(i32 23, float %10824)  ; Log(value)
  %10826 = extractvalue %dx.types.CBufRet.f32 %10820, 3
  %10827 = fmul fast float %10826, %10825
  %10828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10829 = extractvalue %dx.types.CBufRet.f32 %10828, 2
  %10830 = fmul fast float %10827, %10829
  %10831 = call float @dx.op.unary.f32(i32 7, float %10830)  ; Saturate(value)
  %10832 = uitofp i32 %10810 to float
  %10833 = uitofp i32 %10813 to float
  %10834 = fadd fast float %10832, 5.000000e-01
  %10835 = fadd fast float %10833, 5.000000e-01
  %10836 = fmul fast float %10829, %10834
  %10837 = fmul fast float %10829, %10835
  %10838 = fadd fast float %10836, 0x3F0FFB4800000000
  %10839 = fadd fast float %10837, 0xBF0FFB4800000000
  %10840 = call float @dx.op.binary.f32(i32 35, float %10831, float %10838)  ; FMax(a,b)
  %10841 = call float @dx.op.binary.f32(i32 36, float %10840, float %10839)  ; FMin(a,b)
  %10842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10843 = extractvalue %dx.types.CBufRet.f32 %10842, 1
  %10844 = extractvalue %dx.types.CBufRet.f32 %10842, 2
  %10845 = extractvalue %dx.types.CBufRet.f32 %10842, 0
  %10846 = select i1 %9357, float %10845, float 0.000000e+00
  %10847 = fmul fast float %10843, %10841
  %10848 = fadd fast float %10846, %10847
  %10849 = fadd fast float %10846, %10844
  %10850 = fsub fast float %10843, %10844
  %10851 = fadd fast float %10850, %10846
  %10852 = call float @dx.op.binary.f32(i32 35, float %10848, float %10849)  ; FMax(a,b)
  %10853 = call float @dx.op.binary.f32(i32 36, float %10852, float %10851)  ; FMin(a,b)
  %10854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %54, float %10785, float %10786, float %10853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10855 = extractvalue %dx.types.ResRet.f32 %10854, 0
  %10856 = extractvalue %dx.types.ResRet.f32 %10854, 1
  %10857 = extractvalue %dx.types.ResRet.f32 %10854, 2
  %10858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10859 = extractvalue %dx.types.CBufRet.i32 %10858, 0
  %10860 = extractvalue %dx.types.CBufRet.i32 %10858, 1
  %10861 = uitofp i32 %10859 to float
  %10862 = uitofp i32 %10860 to float
  %10863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10864 = extractvalue %dx.types.CBufRet.f32 %10863, 0
  %10865 = extractvalue %dx.types.CBufRet.f32 %10863, 1
  %10866 = fmul fast float %10861, %10785
  %10867 = fmul fast float %10862, %10786
  %10868 = fadd fast float %10866, -5.000000e-01
  %10869 = fadd fast float %10867, -5.000000e-01
  %10870 = call float @dx.op.unary.f32(i32 22, float %10868)  ; Frc(value)
  %10871 = call float @dx.op.unary.f32(i32 22, float %10869)  ; Frc(value)
  %10872 = fmul fast float %10870, %10870
  %10873 = fmul fast float %10872, %10870
  %10874 = fsub fast float 3.000000e+00, %10870
  %10875 = fmul fast float %10872, %10874
  %10876 = fmul fast float %10870, 3.000000e+00
  %10877 = fmul fast float %10873, 3.000000e+00
  %10878 = fmul fast float %10872, 6.000000e+00
  %10879 = fsub fast float %10877, %10878
  %10880 = fadd fast float %10879, 4.000000e+00
  %10881 = fmul fast float %10880, 0x3FC5555560000000
  %10882 = fmul fast float %10873, -3.000000e+00
  %10883 = fadd fast float %10872, %10870
  %10884 = fmul fast float %10883, 3.000000e+00
  %10885 = fadd fast float %10882, 1.000000e+00
  %10886 = fadd fast float %10885, %10884
  %10887 = fmul fast float %10873, 0x3FC5555560000000
  %10888 = fmul fast float %10871, %10871
  %10889 = fmul fast float %10888, %10871
  %10890 = fsub fast float 3.000000e+00, %10871
  %10891 = fmul fast float %10888, %10890
  %10892 = fmul fast float %10871, 3.000000e+00
  %10893 = fmul fast float %10889, 3.000000e+00
  %10894 = fmul fast float %10888, 6.000000e+00
  %10895 = fsub fast float %10893, %10894
  %10896 = fadd fast float %10895, 4.000000e+00
  %10897 = fmul fast float %10896, 0x3FC5555560000000
  %10898 = fmul fast float %10889, -3.000000e+00
  %10899 = fadd fast float %10888, %10871
  %10900 = fmul fast float %10899, 3.000000e+00
  %10901 = fadd fast float %10898, 1.000000e+00
  %10902 = fadd fast float %10901, %10900
  %10903 = fmul fast float %10889, 0x3FC5555560000000
  %10904 = fadd fast float %10870, 1.000000e+00
  %10905 = fsub fast float 1.000000e+00, %10876
  %10906 = fadd fast float %10905, %10875
  %10907 = fadd fast float %10906, %10880
  %10908 = fmul fast float %10907, 0x3FC5555560000000
  %10909 = fdiv fast float %10881, %10908
  %10910 = fsub fast float %10904, %10909
  %10911 = fsub fast float 1.000000e+00, %10870
  %10912 = fadd fast float %10886, %10873
  %10913 = fmul fast float %10912, 0x3FC5555560000000
  %10914 = fdiv fast float %10887, %10913
  %10915 = fadd fast float %10911, %10914
  %10916 = fadd fast float %10871, 1.000000e+00
  %10917 = fsub fast float 1.000000e+00, %10892
  %10918 = fadd fast float %10917, %10891
  %10919 = fadd fast float %10918, %10896
  %10920 = fmul fast float %10919, 0x3FC5555560000000
  %10921 = fdiv fast float %10897, %10920
  %10922 = fsub fast float %10916, %10921
  %10923 = fsub fast float 1.000000e+00, %10871
  %10924 = fadd fast float %10902, %10889
  %10925 = fmul fast float %10924, 0x3FC5555560000000
  %10926 = fdiv fast float %10903, %10925
  %10927 = fadd fast float %10926, %10923
  %10928 = fmul fast float %10910, %10864
  %10929 = fsub fast float %10785, %10928
  %10930 = fmul fast float %10915, %10864
  %10931 = fadd fast float %10930, %10785
  %10932 = fmul fast float %10927, %10865
  %10933 = fadd fast float %10932, %10786
  %10934 = fmul fast float %10922, %10865
  %10935 = fsub fast float %10786, %10934
  %10936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10929, float %10935, float %10853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10937 = extractvalue %dx.types.ResRet.f32 %10936, 0
  %10938 = extractvalue %dx.types.ResRet.f32 %10936, 1
  %10939 = extractvalue %dx.types.ResRet.f32 %10936, 2
  %10940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10931, float %10935, float %10853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10941 = extractvalue %dx.types.ResRet.f32 %10940, 0
  %10942 = extractvalue %dx.types.ResRet.f32 %10940, 1
  %10943 = extractvalue %dx.types.ResRet.f32 %10940, 2
  %10944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10929, float %10933, float %10853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10945 = extractvalue %dx.types.ResRet.f32 %10944, 0
  %10946 = extractvalue %dx.types.ResRet.f32 %10944, 1
  %10947 = extractvalue %dx.types.ResRet.f32 %10944, 2
  %10948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %10931, float %10933, float %10853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10949 = extractvalue %dx.types.ResRet.f32 %10948, 0
  %10950 = extractvalue %dx.types.ResRet.f32 %10948, 1
  %10951 = extractvalue %dx.types.ResRet.f32 %10948, 2
  %10952 = fsub fast float %10945, %10937
  %10953 = fsub fast float %10946, %10938
  %10954 = fsub fast float %10947, %10939
  %10955 = fmul fast float %10952, %10925
  %10956 = fmul fast float %10953, %10925
  %10957 = fmul fast float %10954, %10925
  %10958 = fadd fast float %10955, %10937
  %10959 = fadd fast float %10956, %10938
  %10960 = fadd fast float %10957, %10939
  %10961 = fsub fast float %10949, %10941
  %10962 = fsub fast float %10950, %10942
  %10963 = fsub fast float %10951, %10943
  %10964 = fmul fast float %10961, %10925
  %10965 = fmul fast float %10962, %10925
  %10966 = fmul fast float %10963, %10925
  %10967 = fsub fast float %10941, %10958
  %10968 = fadd fast float %10967, %10964
  %10969 = fsub fast float %10942, %10959
  %10970 = fadd fast float %10969, %10965
  %10971 = fsub fast float %10943, %10960
  %10972 = fadd fast float %10971, %10966
  %10973 = fmul fast float %10968, %10913
  %10974 = fmul fast float %10970, %10913
  %10975 = fmul fast float %10972, %10913
  %10976 = fadd fast float %10973, %10958
  %10977 = fadd fast float %10974, %10959
  %10978 = fadd fast float %10975, %10960
  %10979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10980 = extractvalue %dx.types.CBufRet.f32 %10979, 1
  %10981 = fmul fast float %10976, %10980
  %10982 = fmul fast float %10977, %10980
  %10983 = fmul fast float %10978, %10980
  br label %10984

; <label>:10984                                   ; preds = %10815, %10772
  %10985 = phi float [ %10855, %10815 ], [ 1.000000e+00, %10772 ]
  %10986 = phi float [ %10856, %10815 ], [ 1.000000e+00, %10772 ]
  %10987 = phi float [ %10857, %10815 ], [ 1.000000e+00, %10772 ]
  %10988 = phi float [ %10981, %10815 ], [ 0.000000e+00, %10772 ]
  %10989 = phi float [ %10982, %10815 ], [ 0.000000e+00, %10772 ]
  %10990 = phi float [ %10983, %10815 ], [ 0.000000e+00, %10772 ]
  %10991 = fmul fast float %10985, %10779
  %10992 = call float @dx.op.dot3.f32(i32 55, float %10985, float %10986, float %10987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10993 = call float @dx.op.dot3.f32(i32 55, float %10988, float %10989, float %10990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10994 = select i1 %228, float %10992, float %10985
  %10995 = select i1 %228, float %10992, float %10986
  %10996 = select i1 %228, float 1.000000e+00, float %10987
  %10997 = select i1 %228, float %10993, float %10988
  %10998 = select i1 %228, float 0.000000e+00, float %10989
  %10999 = select i1 %228, float 0.000000e+00, float %10990
  %11000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %11001 = extractvalue %dx.types.CBufRet.i32 %11000, 3
  %11002 = and i32 %11001, 3
  %11003 = icmp ne i32 %11002, 0
  %11004 = and i32 %11001, 4
  %11005 = icmp ne i32 %11004, 0
  %11006 = and i1 %11003, %11005
  %11007 = and i1 %228, %11006
  br i1 %11007, label %11008, label %11014

; <label>:11008                                   ; preds = %10984
  %11009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11010 = extractvalue %dx.types.CBufRet.f32 %11009, 1
  %11011 = fadd fast float %10991, -1.000000e+00
  %11012 = fmul fast float %11010, %11011
  %11013 = fadd fast float %11012, 1.000000e+00
  br label %11014

; <label>:11014                                   ; preds = %11008, %10984
  %11015 = phi float [ %11013, %11008 ], [ %10991, %10984 ]
  %11016 = fadd fast float %10776, %10773
  %11017 = fmul fast float %10994, %11016
  %11018 = fadd fast float %11017, %10997
  %11019 = fadd fast float %10777, %10774
  %11020 = fmul fast float %10995, %11019
  %11021 = fadd fast float %11020, %10998
  %11022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11023 = extractvalue %dx.types.CBufRet.f32 %11022, 0
  br i1 %228, label %11024, label %11039

; <label>:11024                                   ; preds = %11014
  %11025 = fadd fast float %11018, %11021
  %11026 = fmul fast float %11023, %11025
  %11027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11028 = extractvalue %dx.types.CBufRet.f32 %11027, 3
  %11029 = extractvalue %dx.types.CBufRet.f32 %9339, 1
  %11030 = fsub fast float %9344, %9338
  %11031 = fadd fast float %11030, %9345
  %11032 = fsub fast float %11031, %11029
  %11033 = extractvalue %dx.types.CBufRet.f32 %9339, 2
  %11034 = fmul fast float %11032, %11033
  %11035 = call float @dx.op.unary.f32(i32 7, float %11034)  ; Saturate(value)
  %11036 = fsub fast float %11035, %11028
  %11037 = fmul fast float %11036, %11015
  %11038 = fadd fast float %11037, %11028
  br label %11063

; <label>:11039                                   ; preds = %11014
  %11040 = fadd fast float %10778, %10775
  %11041 = fmul fast float %10996, %11040
  %11042 = fadd fast float %11041, %10999
  %11043 = fmul fast float %11023, %11018
  %11044 = fmul fast float %11023, %11021
  %11045 = fmul fast float %11023, %11042
  %11046 = call float @dx.op.binary.f32(i32 35, float %11044, float %11045)  ; FMax(a,b)
  %11047 = call float @dx.op.binary.f32(i32 35, float %11043, float %11046)  ; FMax(a,b)
  %11048 = call float @dx.op.binary.f32(i32 35, float %11047, float 1.000000e+00)  ; FMax(a,b)
  %11049 = fcmp fast ugt float %11048, 0x3F10000000000000
  br i1 %11049, label %11051, label %11050

; <label>:11050                                   ; preds = %11039
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11051

; <label>:11051                                   ; preds = %11050, %11039
  %11052 = add i32 %62, 356
  %11053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %11052, i32 undef)  ; BufferLoad(srv,index,wot)
  %11054 = extractvalue %dx.types.ResRet.i32 %11053, 0
  %11055 = and i32 %11054, 32
  %11056 = icmp eq i32 %11055, 0
  br i1 %11056, label %11063, label %11057

; <label>:11057                                   ; preds = %11051
  %11058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11059 = extractvalue %dx.types.CBufRet.f32 %11058, 0
  %11060 = fmul fast float %11059, 0x3FE99999A0000000
  %11061 = fadd fast float %11059, %11043
  %11062 = fadd fast float %11060, %11045
  br label %11063

; <label>:11063                                   ; preds = %11057, %11051, %11024
  %11064 = phi float [ %11026, %11024 ], [ %11061, %11057 ], [ %11043, %11051 ]
  %11065 = phi float [ %11038, %11024 ], [ %11044, %11057 ], [ %11044, %11051 ]
  %11066 = phi float [ 1.000000e+00, %11024 ], [ %11062, %11057 ], [ %11045, %11051 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11067 = call float @dx.op.binary.f32(i32 36, float %11064, float 3.225500e+04)  ; FMin(a,b)
  %11068 = call float @dx.op.binary.f32(i32 36, float %11065, float 3.225500e+04)  ; FMin(a,b)
  %11069 = call float @dx.op.binary.f32(i32 36, float %11066, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11067)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11068)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11069)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

