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
; shader hash: beb976c31db571a7d182ebf550d9bd59
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
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = alloca [4 x i32], align 4
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %95
  %111 = fmul fast float %109, %96
  %112 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %113 = bitcast float %112 to i32
  %114 = ashr i32 %113, 1
  %115 = sub nsw i32 1597250115, %114
  %116 = bitcast i32 %115 to float
  %117 = fmul fast float %116, %86
  %118 = fmul fast float %116, %87
  %119 = fmul fast float %116, %88
  %120 = fmul fast float %87, %84
  %121 = fmul fast float %88, %83
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %88, %82
  %124 = fmul fast float %86, %84
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %86, %83
  %127 = fmul fast float %87, %82
  %128 = fsub fast float %126, %127
  %129 = fmul fast float %122, %85
  %130 = fmul fast float %125, %85
  %131 = fmul fast float %128, %85
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %110, 2.000000e+00
  %136 = fmul fast float %135, %133
  %137 = fmul fast float %111, 2.000000e+00
  %138 = fmul fast float %137, %134
  %139 = fsub fast float 1.000000e+00, %136
  %140 = fsub fast float 1.000000e+00, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fmul fast float %139, %142
  %146 = fmul fast float %139, %143
  %147 = fmul fast float %139, %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %151 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %152 = fmul fast float %140, %149
  %153 = fmul fast float %140, %150
  %154 = fmul fast float %140, %151
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = fadd fast float %152, %156
  %160 = fadd fast float %159, %145
  %161 = fadd fast float %153, %157
  %162 = fadd fast float %161, %146
  %163 = fadd fast float %154, %158
  %164 = fadd fast float %163, %147
  %165 = fmul fast float %160, %98
  %166 = fmul fast float %162, %98
  %167 = fmul fast float %164, %98
  %168 = add i32 %61, 360
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = extractvalue %dx.types.ResRet.i32 %169, 1
  %172 = extractvalue %dx.types.ResRet.i32 %169, 2
  %173 = extractvalue %dx.types.ResRet.i32 %169, 3
  %174 = bitcast i32 %170 to float
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call float @dx.op.unary.f32(i32 25, float %178)  ; Rsqrt(value)
  %180 = fmul fast float %179, %117
  %181 = fmul fast float %179, %118
  %182 = fmul fast float %179, %119
  %183 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %165, float %166, float %167)  ; Dot3(ax,ay,az,bx,by,bz)
  %184 = call float @dx.op.unary.f32(i32 25, float %183)  ; Rsqrt(value)
  %185 = fmul fast float %184, %165
  %186 = fmul fast float %184, %166
  %187 = fmul fast float %184, %167
  %188 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %180, float %181, float %182)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = fmul fast float %188, %188
  %190 = fmul fast float %189, %176
  %191 = fadd fast float %190, %177
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %195 = fmul fast float %194, %183
  %196 = fsub fast float %174, %195
  %197 = fmul fast float %196, %175
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fmul fast float %198, %192
  %200 = fmul fast float %110, 5.000000e-01
  %201 = fmul fast float %111, 5.000000e-01
  %202 = fptosi float %200 to i32
  %203 = fptosi float %201 to i32
  %204 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %202, i32 %203, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = lshr i32 %205, 18
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F4C00EBA0000000
  %209 = call float @dx.op.unary.f32(i32 21, float %208)  ; Exp(value)
  %210 = fadd fast float %209, -1.000000e+00
  %211 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %212 = extractvalue %dx.types.Dimensions %211, 0
  %213 = sitofp i32 %212 to float
  %214 = extractvalue %dx.types.Dimensions %211, 1
  %215 = sitofp i32 %214 to float
  %216 = fcmp fast oge float %200, %213
  %217 = fcmp fast oge float %201, %215
  %218 = or i1 %216, %217
  %219 = select i1 %218, float 0x4197782600000000, float %210
  %220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %221 = extractvalue %dx.types.CBufRet.f32 %220, 2
  %222 = extractvalue %dx.types.CBufRet.f32 %220, 3
  %223 = fmul fast float %221, %110
  %224 = fmul fast float %222, %111
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 114688
  %228 = icmp ne i32 %227, 0
  %229 = select i1 %228, float %223, float 0.000000e+00
  %230 = select i1 %228, float %224, float 0.000000e+00
  %231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %56, float %229, float %230, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = fmul fast float %232, 2.550000e+02
  %234 = fptoui float %233 to i32
  %235 = select i1 %228, i32 %234, i32 0
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 3
  %239 = and i32 %238, 3
  %240 = icmp ne i32 %239, 0
  %241 = and i32 %238, 4
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %240, %242
  br i1 %243, label %244, label %255

; <label>:244                                     ; preds = %0
  %245 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %246 = fmul fast float %245, %111
  %247 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %248 = fmul fast float %247, %110
  %249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %55, float %248, float %246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fsub fast float 1.000000e+00, %250
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = fcmp fast olt float %251, %253
  br label %258

; <label>:255                                     ; preds = %0
  %256 = icmp eq i32 %241, 0
  %257 = and i1 %240, %256
  br label %258

; <label>:258                                     ; preds = %255, %244
  %259 = phi i1 [ %254, %244 ], [ %257, %255 ]
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 2
  %262 = fmul fast float %261, 0x3FE3C6EF40000000
  %263 = frem fast float %110, 2.560000e+02
  %264 = frem fast float %111, 2.560000e+02
  %265 = fptoui float %263 to i32
  %266 = fptoui float %264 to i32
  %267 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %265, i32 %266, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fadd fast float %268, %262
  %270 = call float @dx.op.unary.f32(i32 22, float %269)  ; Frc(value)
  %271 = add i32 %61, 156
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %61, 216
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %61, 36
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %61, 288
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %61, 172
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %61, 232
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %61, 52
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %61, 304
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %61, 188
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %61, 248
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %61, 68
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %61, 320
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %61, 204
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = shl i32 %399, 4
  %401 = and i32 %400, 32752
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %399, 7
  %404 = and i32 %403, 32752
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %399, 22
  %407 = shl nuw nsw i32 %406, 5
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %61, 264
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = lshr i32 %411, 8
  %416 = and i32 %415, 255
  %417 = uitofp i32 %416 to float
  %418 = fmul fast float %417, 0x3F70101020000000
  %419 = lshr i32 %411, 16
  %420 = and i32 %419, 255
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = add i32 %61, 84
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = add i32 %61, 336
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = fmul fast float %434, 0x3F50624DE0000000
  %438 = fmul fast float %436, 0x3F50624DE0000000
  %439 = add i32 %61, 348
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 32
  %443 = icmp eq i32 %442, 0
  %444 = and i32 %441, 64
  %445 = icmp eq i32 %444, 0
  %446 = and i32 %441, 128
  %447 = icmp eq i32 %446, 0
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 2
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %467, label %452

; <label>:452                                     ; preds = %258
  %453 = add i32 %61, 536
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = add i32 %455, 0
  %457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %457, %dx.types.Handle %107, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = extractvalue %dx.types.ResRet.f32 %458, 2
  %462 = extractvalue %dx.types.ResRet.f32 %458, 3
  %463 = fmul fast float %462, %91
  %464 = fmul fast float %459, %92
  %465 = fmul fast float %460, %93
  %466 = fmul fast float %461, %94
  br label %467

; <label>:467                                     ; preds = %452, %258
  %468 = phi float [ %94, %258 ], [ %466, %452 ]
  %469 = phi float [ %93, %258 ], [ %465, %452 ]
  %470 = phi float [ %92, %258 ], [ %464, %452 ]
  %471 = phi float [ %91, %258 ], [ %463, %452 ]
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 2
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %495, label %476

; <label>:476                                     ; preds = %467
  %477 = add i32 %61, 44
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %470, float 1.000000e+00
  %483 = add i32 %61, 60
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 1
  %487 = icmp ne i32 %486, 0
  %488 = select i1 %487, float %469, float 1.000000e+00
  %489 = add i32 %61, 76
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 1
  %493 = icmp ne i32 %492, 0
  %494 = select i1 %493, float %468, float 1.000000e+00
  br label %495

; <label>:495                                     ; preds = %476, %467
  %496 = phi float [ %468, %467 ], [ %494, %476 ]
  %497 = phi float [ %469, %467 ], [ %488, %476 ]
  %498 = phi float [ %470, %467 ], [ %482, %476 ]
  %499 = lshr i32 %473, 20
  %500 = and i32 %499, 3
  %501 = add nuw nsw i32 %500, 1
  %502 = add i32 %61, 24
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %61, 28
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = or i32 %507, %504
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %1270, label %510

; <label>:510                                     ; preds = %495
  %511 = and i32 %504, 262144
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %512, float %64, float 1.000000e+00
  %514 = select i1 %512, float %65, float 0.000000e+00
  %515 = select i1 %512, float %66, float 0.000000e+00
  %516 = select i1 %512, float %67, float 1.000000e+00
  %517 = select i1 %512, float %68, float %89
  %518 = select i1 %512, float %69, float %90
  %519 = add i32 %61, 284
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = lshr i32 %521, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = fmul fast float %523, 0x3F50624DE0000000
  %525 = add i32 %61, 88
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = lshr i32 %527, 16
  %529 = and i32 %528, 255
  %530 = lshr i32 %527, 24
  %531 = add i32 %61, 292
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = and i32 %533, 65535
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = lshr i32 %533, 16
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = add i32 %61, 32
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 22
  %542 = shl nuw nsw i32 %541, 5
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = shl i32 %540, 4
  %545 = and i32 %544, 32752
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %540, 7
  %548 = and i32 %547, 32752
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = fmul fast float %551, 1.000000e+03
  %553 = fmul fast float %311, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = fadd fast float %554, %301
  %556 = fmul fast float %312, %552
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = fadd fast float %557, %303
  %559 = fmul fast float %524, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = fmul fast float %560, 0x401921FB60000000
  %562 = fadd fast float %561, %543
  %563 = call float @dx.op.unary.f32(i32 13, float %562)  ; Sin(value)
  %564 = call float @dx.op.unary.f32(i32 12, float %562)  ; Cos(value)
  %565 = fsub fast float -0.000000e+00, %563
  %566 = fadd fast float %517, -5.000000e-01
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fmul fast float %535, %566
  %569 = fmul fast float %537, %567
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %546, %570
  %573 = fmul fast float %549, %571
  %574 = fmul fast float %564, %572
  %575 = call float @dx.op.tertiary.f32(i32 46, float %565, float %573, float %574)  ; FMad(a,b,c)
  %576 = fmul fast float %563, %572
  %577 = call float @dx.op.tertiary.f32(i32 46, float %564, float %573, float %576)  ; FMad(a,b,c)
  %578 = fadd fast float %555, %575
  %579 = fadd fast float %558, %577
  %580 = icmp ugt i32 %529, 1
  %581 = icmp ugt i32 %527, 33554431
  %582 = or i1 %581, %580
  br i1 %582, label %583, label %608

; <label>:583                                     ; preds = %510
  %584 = add i32 %61, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 16
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = fmul fast float %551, %588
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = mul nuw nsw i32 %529, %530
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %590, %592
  %594 = call float @dx.op.unary.f32(i32 27, float %593)  ; Round_ni(value)
  %595 = fptoui float %594 to i32
  %596 = urem i32 %595, %529
  %597 = udiv i32 %595, %530
  %598 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = uitofp i32 %596 to float
  %601 = uitofp i32 %597 to float
  %602 = fadd fast float %598, %600
  %603 = fadd fast float %599, %601
  %604 = uitofp i32 %529 to float
  %605 = uitofp i32 %530 to float
  %606 = fdiv fast float %602, %604
  %607 = fdiv fast float %603, %605
  br label %608

; <label>:608                                     ; preds = %583, %510
  %609 = phi float [ %606, %583 ], [ %578, %510 ]
  %610 = phi float [ %607, %583 ], [ %579, %510 ]
  %611 = and i32 %504, 16777216
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %722, label %613

; <label>:613                                     ; preds = %608
  %614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %615 = extractvalue %dx.types.CBufRet.f32 %614, 0
  %616 = extractvalue %dx.types.CBufRet.f32 %614, 1
  %617 = extractvalue %dx.types.CBufRet.f32 %614, 2
  %618 = fadd fast float %615, %165
  %619 = fadd fast float %616, %166
  %620 = fadd fast float %617, %167
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 0
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = icmp eq i32 %62, 65535
  br i1 %624, label %719, label %625

; <label>:625                                     ; preds = %613
  %626 = lshr i32 %62, 1
  %627 = shl i32 %626, 2
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %62, 1
  %631 = icmp ne i32 %630, 0
  %632 = lshr i32 %629, 16
  %633 = and i32 %629, 65535
  %634 = select i1 %631, i32 %632, i32 %633
  %635 = icmp eq i32 %634, 65535
  br i1 %635, label %715, label %636

; <label>:636                                     ; preds = %625
  %637 = mul nuw nsw i32 %634, 40
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = add nuw nsw i32 %637, 12
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = add nuw nsw i32 %637, 24
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = add nuw nsw i32 %637, 36
  %653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = fsub fast float %618, %639
  %656 = fsub fast float %619, %640
  %657 = fsub fast float %620, %641
  %658 = fmul fast float %654, %655
  %659 = fmul fast float %654, %656
  %660 = fmul fast float %654, %657
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = fadd fast float %661, 5.000000e-01
  %665 = fadd fast float %662, 5.000000e-01
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fmul fast float %664, %644
  %668 = fmul fast float %665, %645
  %669 = fmul fast float %666, %646
  %670 = shl i32 %62, 2
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call float @dx.op.unary.f32(i32 22, float %667)  ; Frc(value)
  %676 = call float @dx.op.unary.f32(i32 22, float %668)  ; Frc(value)
  %677 = call float @dx.op.unary.f32(i32 22, float %669)  ; Frc(value)
  %678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %674, %dx.types.Handle %56, float %675, float %676, float %677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = extractvalue %dx.types.ResRet.f32 %678, 2
  %682 = fmul fast float %679, 1.023000e+03
  %683 = fmul fast float %680, 1.023000e+03
  %684 = fmul fast float %681, 1.023000e+03
  %685 = fadd fast float %682, 5.000000e-01
  %686 = fadd fast float %683, 5.000000e-01
  %687 = fadd fast float %684, 5.000000e-01
  %688 = call float @dx.op.unary.f32(i32 27, float %685)  ; Round_ni(value)
  %689 = call float @dx.op.unary.f32(i32 27, float %686)  ; Round_ni(value)
  %690 = call float @dx.op.unary.f32(i32 27, float %687)  ; Round_ni(value)
  %691 = fsub fast float %658, %661
  %692 = fsub fast float %659, %662
  %693 = fsub fast float %660, %663
  %694 = fmul fast float %691, 7.500000e-01
  %695 = fmul fast float %692, 7.500000e-01
  %696 = fmul fast float %693, 7.500000e-01
  %697 = fadd fast float %661, 1.250000e-01
  %698 = fadd fast float %697, %694
  %699 = fadd fast float %698, %688
  %700 = fadd fast float %662, 1.250000e-01
  %701 = fadd fast float %700, %695
  %702 = fadd fast float %701, %689
  %703 = fadd fast float %663, 1.250000e-01
  %704 = fadd fast float %703, %696
  %705 = fadd fast float %704, %690
  %706 = fmul fast float %699, %649
  %707 = fmul fast float %702, %650
  %708 = fmul fast float %705, %651
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = add i32 %710, 0
  %712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %712, %dx.types.Handle %54, float %706, float %707, float %708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  br label %715

; <label>:715                                     ; preds = %636, %625
  %716 = phi float [ %714, %636 ], [ -1.000000e+00, %625 ]
  %717 = fadd fast float %716, %623
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  br label %719

; <label>:719                                     ; preds = %715, %613
  %720 = phi float [ %718, %715 ], [ %623, %613 ]
  %721 = fmul fast float %720, %471
  br label %722

; <label>:722                                     ; preds = %719, %608
  %723 = phi float [ %721, %719 ], [ %471, %608 ]
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 256
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %774, label %728

; <label>:728                                     ; preds = %722
  %729 = add i32 %61, 472
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %107, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = add i32 %61, 100
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = shl i32 %738, 4
  %740 = and i32 %739, 32752
  %741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %740)  ; LegacyF16ToF32(value)
  %742 = lshr i32 %738, 7
  %743 = and i32 %742, 32752
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = fsub fast float 1.000000e+00, %723
  %746 = call float @dx.op.binary.f32(i32 35, float %745, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %747 = bitcast float %723 to i32
  %748 = sitofp i32 %747 to float
  %749 = fadd fast float %748, 0xC1CFBF8940000000
  %750 = fmul fast float %744, %749
  %751 = fadd fast float %750, 0x41CFBF8940000000
  %752 = fptosi float %751 to i32
  %753 = bitcast i32 %752 to float
  %754 = bitcast float %746 to i32
  %755 = sitofp i32 %754 to float
  %756 = fadd fast float %755, 0xC1CFBF8940000000
  %757 = fmul fast float %756, %744
  %758 = fadd fast float %757, 0x41CFBF8940000000
  %759 = fptosi float %758 to i32
  %760 = bitcast i32 %759 to float
  %761 = fmul fast float %753, %741
  %762 = fmul fast float %760, %741
  %763 = fsub fast float %746, %761
  %764 = fadd fast float %762, %746
  %765 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  %766 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %767 = fsub fast float %735, %765
  %768 = fsub fast float %766, %765
  %769 = bitcast float %768 to i32
  %770 = sub nsw i32 2129859010, %769
  %771 = bitcast i32 %770 to float
  %772 = fmul fast float %771, %767
  %773 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  br label %774

; <label>:774                                     ; preds = %728, %722
  %775 = phi float [ %773, %728 ], [ %723, %722 ]
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 128
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %796, label %780

; <label>:780                                     ; preds = %774
  %781 = add i32 %61, 456
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = add i32 %783, 0
  %785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %784, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %786 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %785, %dx.types.Handle %107, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 524288
  %791 = icmp ne i32 %790, 0
  %792 = fcmp fast ogt float %787, 0x3FE0101020000000
  %793 = select i1 %792, float 1.000000e+00, float 0.000000e+00
  %794 = select i1 %791, float %793, float %787
  %795 = fmul fast float %794, %775
  br label %796

; <label>:796                                     ; preds = %780, %774
  %797 = phi float [ %795, %780 ], [ %775, %774 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 16
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %1000, label %802

; <label>:802                                     ; preds = %796
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %61, 408
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = add i32 %807, 0
  %809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %809, %dx.types.Handle %106, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = and i32 %804, 255
  %816 = uitofp i32 %815 to float
  %817 = lshr i32 %804, 8
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %814, %816
  %821 = fadd fast float %820, %819
  %822 = fmul fast float %821, 0x3F70101000000000
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 512
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %835, label %827

; <label>:827                                     ; preds = %802
  %828 = add i32 %61, 488
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = add i32 %830, 0
  %832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %832, %dx.types.Handle %107, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  br label %835

; <label>:835                                     ; preds = %827, %802
  %836 = phi float [ %834, %827 ], [ 1.000000e+00, %802 ]
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 33554432
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %947, label %841

; <label>:841                                     ; preds = %835
  %842 = add i32 %61, 224
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 65535
  %846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %845)  ; LegacyF16ToF32(value)
  %847 = lshr i32 %844, 16
  %848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %847)  ; LegacyF16ToF32(value)
  %849 = add i32 %61, 228
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 65535
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = lshr i32 %855, 24
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = and i32 %855, 255
  %860 = uitofp i32 %859 to float
  %861 = fmul fast float %860, 0x3F70101020000000
  %862 = lshr i32 %855, 8
  %863 = and i32 %862, 255
  %864 = uitofp i32 %863 to float
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = lshr i32 %855, 16
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F70101020000000
  %870 = add i32 %61, 220
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = lshr i32 %872, 24
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F70101020000000
  %876 = and i32 %872, 255
  %877 = uitofp i32 %876 to float
  %878 = fmul fast float %877, 0x3F70101020000000
  %879 = lshr i32 %872, 8
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F70101020000000
  %883 = lshr i32 %872, 16
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = fmul fast float %885, 0x3F70101020000000
  %887 = bitcast float %811 to i32
  %888 = ashr i32 %887, 1
  %889 = sub nsw i32 1597463174, %888
  %890 = bitcast i32 %889 to float
  %891 = fmul fast float %811, 5.000000e-01
  %892 = fmul fast float %890, %890
  %893 = fmul fast float %892, %891
  %894 = fsub fast float 1.500000e+00, %893
  %895 = fmul fast float %890, %811
  %896 = fmul fast float %895, %894
  %897 = bitcast float %812 to i32
  %898 = ashr i32 %897, 1
  %899 = sub nsw i32 1597463174, %898
  %900 = bitcast i32 %899 to float
  %901 = fmul fast float %812, 5.000000e-01
  %902 = fmul fast float %900, %900
  %903 = fmul fast float %902, %901
  %904 = fsub fast float 1.500000e+00, %903
  %905 = fmul fast float %900, %812
  %906 = fmul fast float %905, %904
  %907 = bitcast float %813 to i32
  %908 = ashr i32 %907, 1
  %909 = sub nsw i32 1597463174, %908
  %910 = bitcast i32 %909 to float
  %911 = fmul fast float %813, 5.000000e-01
  %912 = fmul fast float %910, %910
  %913 = fmul fast float %912, %911
  %914 = fsub fast float 1.500000e+00, %913
  %915 = fmul fast float %910, %813
  %916 = fmul fast float %915, %914
  %917 = fsub fast float %896, %878
  %918 = fsub fast float %906, %882
  %919 = fsub fast float %916, %886
  %920 = fmul fast float %917, %846
  %921 = fmul fast float %918, %848
  %922 = fmul fast float %919, %853
  %923 = fadd fast float %920, %861
  %924 = fadd fast float %921, %865
  %925 = fadd fast float %922, %869
  %926 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %927 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %928 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %929 = fmul fast float %926, %926
  %930 = fmul fast float %927, %927
  %931 = fmul fast float %928, %928
  %932 = fsub fast float %929, %811
  %933 = fsub fast float %930, %812
  %934 = fsub fast float %931, %813
  %935 = fmul fast float %932, %836
  %936 = fmul fast float %933, %836
  %937 = fmul fast float %934, %836
  %938 = fadd fast float %935, %811
  %939 = fadd fast float %936, %812
  %940 = fadd fast float %937, %813
  %941 = fadd fast float %858, %822
  %942 = fsub fast float %941, %875
  %943 = call float @dx.op.unary.f32(i32 7, float %942)  ; Saturate(value)
  %944 = fsub fast float %943, %822
  %945 = fmul fast float %944, %836
  %946 = fadd fast float %945, %822
  br label %1000

; <label>:947                                     ; preds = %835
  %948 = and i32 %838, 134217728
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %984, label %950

; <label>:950                                     ; preds = %947
  %951 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %952 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %953 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %954 = fadd fast float %951, -5.000000e-01
  %955 = fadd fast float %952, -5.000000e-01
  %956 = fadd fast float %953, -5.000000e-01
  %957 = fmul fast float %954, %836
  %958 = fmul fast float %955, %836
  %959 = fmul fast float %956, %836
  %960 = fadd fast float %957, 5.000000e-01
  %961 = fadd fast float %958, 5.000000e-01
  %962 = fadd fast float %959, 5.000000e-01
  %963 = call float @dx.op.unary.f32(i32 24, float %811)  ; Sqrt(value)
  %964 = call float @dx.op.unary.f32(i32 24, float %812)  ; Sqrt(value)
  %965 = call float @dx.op.unary.f32(i32 24, float %813)  ; Sqrt(value)
  %966 = fmul fast float %960, 2.000000e+00
  %967 = fsub fast float 1.000000e+00, %966
  %968 = fmul fast float %967, %963
  %969 = fadd fast float %968, %966
  %970 = fmul fast float %969, %963
  %971 = fmul fast float %961, 2.000000e+00
  %972 = fsub fast float 1.000000e+00, %971
  %973 = fmul fast float %972, %964
  %974 = fadd fast float %973, %971
  %975 = fmul fast float %974, %964
  %976 = fmul fast float %962, 2.000000e+00
  %977 = fsub fast float 1.000000e+00, %976
  %978 = fmul fast float %977, %965
  %979 = fadd fast float %978, %976
  %980 = fmul fast float %979, %965
  %981 = fmul fast float %970, %970
  %982 = fmul fast float %975, %975
  %983 = fmul fast float %980, %980
  br label %1000

; <label>:984                                     ; preds = %947
  %985 = fmul fast float %288, %288
  %986 = fmul fast float %292, %292
  %987 = fmul fast float %296, %296
  %988 = fadd fast float %985, -1.000000e+00
  %989 = fadd fast float %986, -1.000000e+00
  %990 = fadd fast float %987, -1.000000e+00
  %991 = fmul fast float %836, %988
  %992 = fmul fast float %836, %989
  %993 = fmul fast float %836, %990
  %994 = fadd fast float %991, 1.000000e+00
  %995 = fadd fast float %992, 1.000000e+00
  %996 = fadd fast float %993, 1.000000e+00
  %997 = fmul fast float %994, %811
  %998 = fmul fast float %995, %812
  %999 = fmul fast float %996, %813
  br label %1000

; <label>:1000                                    ; preds = %984, %950, %841, %796
  %1001 = phi float [ %946, %841 ], [ %822, %950 ], [ %822, %984 ], [ 0x3FA23C0BE0000000, %796 ]
  %1002 = phi float [ %938, %841 ], [ %981, %950 ], [ %997, %984 ], [ 1.000000e+00, %796 ]
  %1003 = phi float [ %939, %841 ], [ %982, %950 ], [ %998, %984 ], [ 1.000000e+00, %796 ]
  %1004 = phi float [ %940, %841 ], [ %983, %950 ], [ %999, %984 ], [ 1.000000e+00, %796 ]
  %1005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.i32 %1005, 1
  %1007 = and i32 %1006, 1
  %1008 = icmp ne i32 %1007, 0
  %1009 = add i32 %61, 356
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %1011, 32
  %1013 = icmp ne i32 %1012, 0
  %1014 = and i1 %1008, %1013
  %1015 = select i1 %1014, float 1.000000e+00, float %1002
  %1016 = select i1 %1014, float 0x3FD3333340000000, float %1003
  %1017 = select i1 %1014, float 0x3FD3333340000000, float %1004
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = and i32 %1019, 32
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1094, label %1022

; <label>:1022                                    ; preds = %1000
  %1023 = add i32 %61, 92
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = add i32 %61, 424
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = add i32 %1028, 0
  %1030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1030, %dx.types.Handle %106, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1032 = extractvalue %dx.types.ResRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.ResRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.ResRet.f32 %1031, 3
  %1036 = and i32 %1025, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = lshr i32 %1025, 8
  %1039 = and i32 %1038, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = lshr i32 %1025, 16
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1043, 0x3F70101000000000
  %1045 = fmul fast float %1032, %1037
  %1046 = fadd fast float %1045, %1040
  %1047 = fmul fast float %1046, 0x3F70101000000000
  %1048 = fadd fast float %1033, -5.000000e-01
  %1049 = fadd fast float %1035, -5.000000e-01
  %1050 = fmul fast float %1048, %1044
  %1051 = fmul fast float %1049, %1044
  %1052 = fadd fast float %1050, 5.000000e-01
  %1053 = fadd fast float %1051, 5.000000e-01
  %1054 = fmul fast float %1052, 2.000000e+00
  %1055 = fadd fast float %1054, -1.000000e+00
  %1056 = fmul fast float %1053, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = fadd fast float %1055, %1057
  %1059 = fmul fast float %1058, 5.000000e-01
  %1060 = fsub fast float %1055, %1057
  %1061 = fmul fast float %1060, 5.000000e-01
  %1062 = call float @dx.op.unary.f32(i32 6, float %1059)  ; FAbs(value)
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1065 = fsub fast float %1063, %1064
  %1066 = call float @dx.op.dot3.f32(i32 55, float %1059, float %1061, float %1065, float %1059, float %1061, float %1065)  ; Dot3(ax,ay,az,bx,by,bz)
  %1067 = call float @dx.op.unary.f32(i32 25, float %1066)  ; Rsqrt(value)
  %1068 = fmul fast float %1059, %1067
  %1069 = fmul fast float %1061, %1067
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 67108864
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1090, label %1074

; <label>:1074                                    ; preds = %1022
  %1075 = add i32 %61, 280
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 65535
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = and i32 %1081, 65535
  %1083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1082)  ; LegacyF16ToF32(value)
  %1084 = lshr i32 %1077, 16
  %1085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1084)  ; LegacyF16ToF32(value)
  %1086 = fsub fast float %1047, %1085
  %1087 = fmul fast float %1086, %1079
  %1088 = fadd fast float %1087, %1083
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  br label %1090

; <label>:1090                                    ; preds = %1074, %1022
  %1091 = phi float [ %1089, %1074 ], [ %1047, %1022 ]
  %1092 = call float @dx.op.dot2.f32(i32 54, float %1068, float %1069, float %513, float %514)  ; Dot2(ax,ay,bx,by)
  %1093 = call float @dx.op.dot2.f32(i32 54, float %1068, float %1069, float %515, float %516)  ; Dot2(ax,ay,bx,by)
  br label %1094

; <label>:1094                                    ; preds = %1090, %1000
  %1095 = phi float [ %1091, %1090 ], [ 0x3FD6666660000000, %1000 ]
  %1096 = phi float [ %1092, %1090 ], [ 0.000000e+00, %1000 ]
  %1097 = phi float [ %1093, %1090 ], [ 0.000000e+00, %1000 ]
  %1098 = phi float [ %1034, %1090 ], [ 1.000000e+00, %1000 ]
  %1099 = add i32 %61, 160
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = lshr i32 %1101, 22
  %1103 = shl nuw nsw i32 %1102, 5
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 64
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1142, label %1109

; <label>:1109                                    ; preds = %1094
  %1110 = add i32 %61, 440
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 131072
  %1118 = icmp eq i32 %1117, 0
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %106, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = fmul fast float %1120, %276
  %1124 = fmul fast float %1121, %279
  %1125 = fmul fast float %1122, %282
  br i1 %1118, label %1132, label %1126

; <label>:1126                                    ; preds = %1109
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 0
  %1129 = fmul fast float %1128, %1123
  %1130 = fmul fast float %1128, %1124
  %1131 = fmul fast float %1128, %1125
  br label %1132

; <label>:1132                                    ; preds = %1126, %1109
  %1133 = phi float [ %1129, %1126 ], [ %1123, %1109 ]
  %1134 = phi float [ %1130, %1126 ], [ %1124, %1109 ]
  %1135 = phi float [ %1131, %1126 ], [ %1125, %1109 ]
  %1136 = fmul fast float %1133, %1104
  %1137 = select i1 %259, float %1136, float %1133
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1137, float %1134, float %1135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = select i1 %259, float 0.000000e+00, float %1133
  %1140 = select i1 %259, float %1138, float %1134
  %1141 = select i1 %259, float 0.000000e+00, float %1135
  br label %1142

; <label>:1142                                    ; preds = %1132, %1094
  %1143 = phi float [ %1139, %1132 ], [ 0.000000e+00, %1094 ]
  %1144 = phi float [ %1140, %1132 ], [ 0.000000e+00, %1094 ]
  %1145 = phi float [ %1141, %1132 ], [ 0.000000e+00, %1094 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 1024
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1180, label %1150

; <label>:1150                                    ; preds = %1142
  %1151 = add i32 %61, 152
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = fmul fast float %1155, 0x3F70101020000000
  %1157 = lshr i32 %1153, 8
  %1158 = and i32 %1157, 255
  %1159 = uitofp i32 %1158 to float
  %1160 = fmul fast float %1159, 0x3F70101020000000
  %1161 = lshr i32 %1153, 16
  %1162 = and i32 %1161, 255
  %1163 = uitofp i32 %1162 to float
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = fmul fast float %1156, %1156
  %1166 = fmul fast float %1160, %1160
  %1167 = fmul fast float %1164, %1164
  %1168 = add i32 %61, 504
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %107, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = fmul fast float %1165, %1174
  %1178 = fmul fast float %1166, %1175
  %1179 = fmul fast float %1167, %1176
  br label %1180

; <label>:1180                                    ; preds = %1150, %1142
  %1181 = phi float [ %1177, %1150 ], [ 0.000000e+00, %1142 ]
  %1182 = phi float [ %1178, %1150 ], [ 0.000000e+00, %1142 ]
  %1183 = phi float [ %1179, %1150 ], [ 0.000000e+00, %1142 ]
  %1184 = fcmp fast ogt float %1181, 0.000000e+00
  %1185 = fcmp fast ogt float %1182, 0.000000e+00
  %1186 = fcmp fast ogt float %1183, 0.000000e+00
  %1187 = call float @dx.op.unary.f32(i32 23, float %1181)  ; Log(value)
  %1188 = call float @dx.op.unary.f32(i32 23, float %1182)  ; Log(value)
  %1189 = call float @dx.op.unary.f32(i32 23, float %1183)  ; Log(value)
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = lshr i32 %1191, 7
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = fmul fast float %1187, 0xBFE62E4300000000
  %1196 = fmul fast float %1195, %1194
  %1197 = fmul fast float %1188, 0xBFE62E4300000000
  %1198 = fmul fast float %1197, %1194
  %1199 = fmul fast float %1189, 0xBFE62E4300000000
  %1200 = fmul fast float %1199, %1194
  %1201 = select i1 %1184, float %1196, float 1.270000e+02
  %1202 = select i1 %1185, float %1198, float 1.270000e+02
  %1203 = select i1 %1186, float %1200, float 1.270000e+02
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 10240
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1252, label %1208

; <label>:1208                                    ; preds = %1180
  %1209 = add i32 %61, 520
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1211, 0
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1213, %dx.types.Handle %107, float %609, float %610, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 1048576
  %1220 = icmp ne i32 %1219, 0
  %1221 = and i32 %1218, 8192
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %1238, label %1223

; <label>:1223                                    ; preds = %1208
  %1224 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1225 = select i1 %1220, float %1224, float %1215
  %1226 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1227 = select i1 %1220, float %1226, float %1215
  %1228 = add i32 %61, 96
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F80101020000000
  %1235 = fmul fast float %1234, %1227
  %1236 = fmul fast float %1234, %1215
  %1237 = fmul fast float %1234, %1225
  br label %1238

; <label>:1238                                    ; preds = %1223, %1208
  %1239 = phi float [ %1235, %1223 ], [ 0.000000e+00, %1208 ]
  %1240 = phi float [ %1236, %1223 ], [ 0.000000e+00, %1208 ]
  %1241 = phi float [ %1237, %1223 ], [ 0.000000e+00, %1208 ]
  %1242 = and i32 %1218, 2048
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1252, label %1244

; <label>:1244                                    ; preds = %1238
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = shl i32 %1246, 4
  %1248 = and i32 %1247, 32752
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = fmul fast float %1249, %1216
  %1251 = call float @dx.op.binary.f32(i32 35, float %1250, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1252

; <label>:1252                                    ; preds = %1244, %1238, %1180
  %1253 = phi float [ %1239, %1244 ], [ %1239, %1238 ], [ 0.000000e+00, %1180 ]
  %1254 = phi float [ %1240, %1244 ], [ %1240, %1238 ], [ 0.000000e+00, %1180 ]
  %1255 = phi float [ %1241, %1244 ], [ %1241, %1238 ], [ 0.000000e+00, %1180 ]
  %1256 = phi float [ %1251, %1244 ], [ 0x3F70101020000000, %1238 ], [ 0x3F70101020000000, %1180 ]
  %1257 = add i32 %61, 96
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = lshr i32 %1259, 8
  %1263 = and i32 %1262, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = call float @dx.op.dot3.f32(i32 55, float %1015, float %1016, float %1017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = fmul fast float %1264, %1265
  %1267 = fadd fast float %1266, %1261
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  br label %1270

; <label>:1270                                    ; preds = %1252, %495
  %1271 = phi float [ 0.000000e+00, %495 ], [ %1096, %1252 ]
  %1272 = phi float [ 0.000000e+00, %495 ], [ %1097, %1252 ]
  %1273 = phi float [ 0.000000e+00, %495 ], [ %1143, %1252 ]
  %1274 = phi float [ 0.000000e+00, %495 ], [ %1144, %1252 ]
  %1275 = phi float [ 0.000000e+00, %495 ], [ %1145, %1252 ]
  %1276 = phi float [ 0.000000e+00, %495 ], [ %1253, %1252 ]
  %1277 = phi float [ 0.000000e+00, %495 ], [ %1254, %1252 ]
  %1278 = phi float [ 0.000000e+00, %495 ], [ %1255, %1252 ]
  %1279 = phi float [ 0.000000e+00, %495 ], [ %1015, %1252 ]
  %1280 = phi float [ 0.000000e+00, %495 ], [ %1016, %1252 ]
  %1281 = phi float [ 0.000000e+00, %495 ], [ %1017, %1252 ]
  %1282 = phi float [ 0.000000e+00, %495 ], [ %1201, %1252 ]
  %1283 = phi float [ 0.000000e+00, %495 ], [ %1202, %1252 ]
  %1284 = phi float [ 0.000000e+00, %495 ], [ %1203, %1252 ]
  %1285 = phi float [ 0.000000e+00, %495 ], [ %1001, %1252 ]
  %1286 = phi float [ 0.000000e+00, %495 ], [ %797, %1252 ]
  %1287 = phi float [ 0.000000e+00, %495 ], [ %1095, %1252 ]
  %1288 = phi float [ 0.000000e+00, %495 ], [ %1098, %1252 ]
  %1289 = phi float [ 0.000000e+00, %495 ], [ %1256, %1252 ]
  %1290 = phi float [ 0.000000e+00, %495 ], [ %1269, %1252 ]
  br i1 %443, label %2328, label %1291

; <label>:1291                                    ; preds = %1270
  %1292 = icmp ult i32 %501, 2
  %1293 = add i32 %61, 40
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %61, 44
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = or i32 %1298, %1295
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %2328, label %1301

; <label>:1301                                    ; preds = %1291
  %1302 = and i32 %1295, 262144
  %1303 = icmp ne i32 %1302, 0
  %1304 = select i1 %1303, float %64, float 1.000000e+00
  %1305 = select i1 %1303, float %65, float 0.000000e+00
  %1306 = select i1 %1303, float %66, float 0.000000e+00
  %1307 = select i1 %1303, float %67, float 1.000000e+00
  %1308 = select i1 %1303, float %68, float %89
  %1309 = select i1 %1303, float %69, float %90
  %1310 = add i32 %61, 300
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = lshr i32 %1312, 16
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = fmul fast float %1314, 0x3F50624DE0000000
  %1316 = add i32 %61, 104
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = lshr i32 %1318, 16
  %1320 = and i32 %1319, 255
  %1321 = lshr i32 %1318, 24
  %1322 = add i32 %61, 308
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1322, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 65535
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = lshr i32 %1324, 16
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = add i32 %61, 48
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 22
  %1333 = shl nuw nsw i32 %1332, 5
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = shl i32 %1331, 4
  %1336 = and i32 %1335, 32752
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = lshr i32 %1331, 7
  %1339 = and i32 %1338, 32752
  %1340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1339)  ; LegacyF16ToF32(value)
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1343 = fmul fast float %1342, 1.000000e+03
  %1344 = fmul fast float %353, %1343
  %1345 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1346 = fadd fast float %1345, %343
  %1347 = fmul fast float %354, %1343
  %1348 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1349 = fadd fast float %1348, %345
  %1350 = fmul fast float %1315, %1343
  %1351 = call float @dx.op.unary.f32(i32 22, float %1350)  ; Frc(value)
  %1352 = fmul fast float %1351, 0x401921FB60000000
  %1353 = fadd fast float %1352, %1334
  %1354 = call float @dx.op.unary.f32(i32 13, float %1353)  ; Sin(value)
  %1355 = call float @dx.op.unary.f32(i32 12, float %1353)  ; Cos(value)
  %1356 = fsub fast float -0.000000e+00, %1354
  %1357 = fadd fast float %1308, -5.000000e-01
  %1358 = fadd fast float %1309, -5.000000e-01
  %1359 = fmul fast float %1326, %1357
  %1360 = fmul fast float %1328, %1358
  %1361 = fadd fast float %1359, 5.000000e-01
  %1362 = fadd fast float %1360, 5.000000e-01
  %1363 = fmul fast float %1337, %1361
  %1364 = fmul fast float %1340, %1362
  %1365 = fmul fast float %1355, %1363
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1356, float %1364, float %1365)  ; FMad(a,b,c)
  %1367 = fmul fast float %1354, %1363
  %1368 = call float @dx.op.tertiary.f32(i32 46, float %1355, float %1364, float %1367)  ; FMad(a,b,c)
  %1369 = fadd fast float %1346, %1366
  %1370 = fadd fast float %1349, %1368
  %1371 = icmp ugt i32 %1320, 1
  %1372 = icmp ugt i32 %1318, 33554431
  %1373 = or i1 %1372, %1371
  br i1 %1373, label %1374, label %1399

; <label>:1374                                    ; preds = %1301
  %1375 = add i32 %61, 244
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = lshr i32 %1377, 16
  %1379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1378)  ; LegacyF16ToF32(value)
  %1380 = fmul fast float %1342, %1379
  %1381 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1382 = mul nuw nsw i32 %1320, %1321
  %1383 = uitofp i32 %1382 to float
  %1384 = fmul fast float %1381, %1383
  %1385 = call float @dx.op.unary.f32(i32 27, float %1384)  ; Round_ni(value)
  %1386 = fptoui float %1385 to i32
  %1387 = urem i32 %1386, %1320
  %1388 = udiv i32 %1386, %1321
  %1389 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1390 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1391 = uitofp i32 %1387 to float
  %1392 = uitofp i32 %1388 to float
  %1393 = fadd fast float %1389, %1391
  %1394 = fadd fast float %1390, %1392
  %1395 = uitofp i32 %1320 to float
  %1396 = uitofp i32 %1321 to float
  %1397 = fdiv fast float %1393, %1395
  %1398 = fdiv fast float %1394, %1396
  br label %1399

; <label>:1399                                    ; preds = %1374, %1301
  %1400 = phi float [ %1397, %1374 ], [ %1369, %1301 ]
  %1401 = phi float [ %1398, %1374 ], [ %1370, %1301 ]
  %1402 = and i32 %1295, 16777216
  %1403 = icmp eq i32 %1402, 0
  br i1 %1403, label %1513, label %1404

; <label>:1404                                    ; preds = %1399
  %1405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.CBufRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.CBufRet.f32 %1405, 2
  %1409 = fadd fast float %1406, %165
  %1410 = fadd fast float %1407, %166
  %1411 = fadd fast float %1408, %167
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = icmp eq i32 %62, 65535
  br i1 %1415, label %1510, label %1416

; <label>:1416                                    ; preds = %1404
  %1417 = lshr i32 %62, 1
  %1418 = shl i32 %1417, 2
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %62, 1
  %1422 = icmp ne i32 %1421, 0
  %1423 = lshr i32 %1420, 16
  %1424 = and i32 %1420, 65535
  %1425 = select i1 %1422, i32 %1423, i32 %1424
  %1426 = icmp eq i32 %1425, 65535
  br i1 %1426, label %1506, label %1427

; <label>:1427                                    ; preds = %1416
  %1428 = mul nuw nsw i32 %1425, 40
  %1429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = extractvalue %dx.types.ResRet.f32 %1429, 1
  %1432 = extractvalue %dx.types.ResRet.f32 %1429, 2
  %1433 = add nuw nsw i32 %1428, 12
  %1434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = add nuw nsw i32 %1428, 24
  %1439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = add nuw nsw i32 %1428, 36
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = fsub fast float %1409, %1430
  %1447 = fsub fast float %1410, %1431
  %1448 = fsub fast float %1411, %1432
  %1449 = fmul fast float %1445, %1446
  %1450 = fmul fast float %1445, %1447
  %1451 = fmul fast float %1445, %1448
  %1452 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1453 = call float @dx.op.unary.f32(i32 27, float %1450)  ; Round_ni(value)
  %1454 = call float @dx.op.unary.f32(i32 27, float %1451)  ; Round_ni(value)
  %1455 = fadd fast float %1452, 5.000000e-01
  %1456 = fadd fast float %1453, 5.000000e-01
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = fmul fast float %1455, %1435
  %1459 = fmul fast float %1456, %1436
  %1460 = fmul fast float %1457, %1437
  %1461 = shl i32 %62, 2
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %1463, 0
  %1465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1466 = call float @dx.op.unary.f32(i32 22, float %1458)  ; Frc(value)
  %1467 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1468 = call float @dx.op.unary.f32(i32 22, float %1460)  ; Frc(value)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1465, %dx.types.Handle %56, float %1466, float %1467, float %1468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = fmul fast float %1470, 1.023000e+03
  %1474 = fmul fast float %1471, 1.023000e+03
  %1475 = fmul fast float %1472, 1.023000e+03
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = fadd fast float %1474, 5.000000e-01
  %1478 = fadd fast float %1475, 5.000000e-01
  %1479 = call float @dx.op.unary.f32(i32 27, float %1476)  ; Round_ni(value)
  %1480 = call float @dx.op.unary.f32(i32 27, float %1477)  ; Round_ni(value)
  %1481 = call float @dx.op.unary.f32(i32 27, float %1478)  ; Round_ni(value)
  %1482 = fsub fast float %1449, %1452
  %1483 = fsub fast float %1450, %1453
  %1484 = fsub fast float %1451, %1454
  %1485 = fmul fast float %1482, 7.500000e-01
  %1486 = fmul fast float %1483, 7.500000e-01
  %1487 = fmul fast float %1484, 7.500000e-01
  %1488 = fadd fast float %1452, 1.250000e-01
  %1489 = fadd fast float %1488, %1485
  %1490 = fadd fast float %1489, %1479
  %1491 = fadd fast float %1453, 1.250000e-01
  %1492 = fadd fast float %1491, %1486
  %1493 = fadd fast float %1492, %1480
  %1494 = fadd fast float %1454, 1.250000e-01
  %1495 = fadd fast float %1494, %1487
  %1496 = fadd fast float %1495, %1481
  %1497 = fmul fast float %1490, %1440
  %1498 = fmul fast float %1493, %1441
  %1499 = fmul fast float %1496, %1442
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1503, %dx.types.Handle %54, float %1497, float %1498, float %1499, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  br label %1506

; <label>:1506                                    ; preds = %1427, %1416
  %1507 = phi float [ %1505, %1427 ], [ -1.000000e+00, %1416 ]
  %1508 = fadd fast float %1507, %1414
  %1509 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  br label %1510

; <label>:1510                                    ; preds = %1506, %1404
  %1511 = phi float [ %1509, %1506 ], [ %1414, %1404 ]
  %1512 = fmul fast float %1511, %498
  br label %1513

; <label>:1513                                    ; preds = %1510, %1399
  %1514 = phi float [ %1512, %1510 ], [ %498, %1399 ]
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 256
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1565, label %1519

; <label>:1519                                    ; preds = %1513
  %1520 = add i32 %61, 476
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %107, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = add i32 %61, 116
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = shl i32 %1529, 4
  %1531 = and i32 %1530, 32752
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = lshr i32 %1529, 7
  %1534 = and i32 %1533, 32752
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = fsub fast float 1.000000e+00, %1514
  %1537 = call float @dx.op.binary.f32(i32 35, float %1536, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1538 = bitcast float %1514 to i32
  %1539 = sitofp i32 %1538 to float
  %1540 = fadd fast float %1539, 0xC1CFBF8940000000
  %1541 = fmul fast float %1535, %1540
  %1542 = fadd fast float %1541, 0x41CFBF8940000000
  %1543 = fptosi float %1542 to i32
  %1544 = bitcast i32 %1543 to float
  %1545 = bitcast float %1537 to i32
  %1546 = sitofp i32 %1545 to float
  %1547 = fadd fast float %1546, 0xC1CFBF8940000000
  %1548 = fmul fast float %1547, %1535
  %1549 = fadd fast float %1548, 0x41CFBF8940000000
  %1550 = fptosi float %1549 to i32
  %1551 = bitcast i32 %1550 to float
  %1552 = fmul fast float %1544, %1532
  %1553 = fmul fast float %1551, %1532
  %1554 = fsub fast float %1537, %1552
  %1555 = fadd fast float %1553, %1537
  %1556 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1558 = fsub fast float %1526, %1556
  %1559 = fsub fast float %1557, %1556
  %1560 = bitcast float %1559 to i32
  %1561 = sub nsw i32 2129859010, %1560
  %1562 = bitcast i32 %1561 to float
  %1563 = fmul fast float %1562, %1558
  %1564 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  br label %1565

; <label>:1565                                    ; preds = %1519, %1513
  %1566 = phi float [ %1564, %1519 ], [ %1514, %1513 ]
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 128
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1587, label %1571

; <label>:1571                                    ; preds = %1565
  %1572 = add i32 %61, 460
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %107, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 524288
  %1582 = icmp ne i32 %1581, 0
  %1583 = fcmp fast ogt float %1578, 0x3FE0101020000000
  %1584 = select i1 %1583, float 1.000000e+00, float 0.000000e+00
  %1585 = select i1 %1582, float %1584, float %1578
  %1586 = fmul fast float %1585, %1566
  br label %1587

; <label>:1587                                    ; preds = %1571, %1565
  %1588 = phi float [ %1586, %1571 ], [ %1566, %1565 ]
  %1589 = fcmp fast ult float %1588, 0x3F70101020000000
  br i1 %1589, label %2328, label %1590

; <label>:1590                                    ; preds = %1587
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 16
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1793, label %1595

; <label>:1595                                    ; preds = %1590
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = add i32 %61, 412
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = add i32 %1600, 0
  %1602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1602, %dx.types.Handle %106, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.ResRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.ResRet.f32 %1603, 2
  %1607 = extractvalue %dx.types.ResRet.f32 %1603, 3
  %1608 = and i32 %1597, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = lshr i32 %1597, 8
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1607, %1609
  %1614 = fadd fast float %1613, %1612
  %1615 = fmul fast float %1614, 0x3F70101000000000
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 512
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1628, label %1620

; <label>:1620                                    ; preds = %1595
  %1621 = add i32 %61, 492
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = add i32 %1623, 0
  %1625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1625, %dx.types.Handle %107, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  br label %1628

; <label>:1628                                    ; preds = %1620, %1595
  %1629 = phi float [ %1627, %1620 ], [ 1.000000e+00, %1595 ]
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = and i32 %1631, 33554432
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1740, label %1634

; <label>:1634                                    ; preds = %1628
  %1635 = add i32 %61, 240
  %1636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1635, i32 undef)  ; BufferLoad(srv,index,wot)
  %1637 = extractvalue %dx.types.ResRet.i32 %1636, 0
  %1638 = and i32 %1637, 65535
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = lshr i32 %1637, 16
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = add i32 %61, 244
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 65535
  %1646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1645)  ; LegacyF16ToF32(value)
  %1647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1648 = extractvalue %dx.types.ResRet.i32 %1647, 0
  %1649 = lshr i32 %1648, 24
  %1650 = uitofp i32 %1649 to float
  %1651 = fmul fast float %1650, 0x3F70101020000000
  %1652 = and i32 %1648, 255
  %1653 = uitofp i32 %1652 to float
  %1654 = fmul fast float %1653, 0x3F70101020000000
  %1655 = lshr i32 %1648, 8
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1657, 0x3F70101020000000
  %1659 = lshr i32 %1648, 16
  %1660 = and i32 %1659, 255
  %1661 = uitofp i32 %1660 to float
  %1662 = fmul fast float %1661, 0x3F70101020000000
  %1663 = add i32 %61, 236
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = lshr i32 %1665, 24
  %1667 = uitofp i32 %1666 to float
  %1668 = fmul fast float %1667, 0x3F70101020000000
  %1669 = and i32 %1665, 255
  %1670 = uitofp i32 %1669 to float
  %1671 = fmul fast float %1670, 0x3F70101020000000
  %1672 = lshr i32 %1665, 8
  %1673 = and i32 %1672, 255
  %1674 = uitofp i32 %1673 to float
  %1675 = fmul fast float %1674, 0x3F70101020000000
  %1676 = lshr i32 %1665, 16
  %1677 = and i32 %1676, 255
  %1678 = uitofp i32 %1677 to float
  %1679 = fmul fast float %1678, 0x3F70101020000000
  %1680 = bitcast float %1604 to i32
  %1681 = ashr i32 %1680, 1
  %1682 = sub nsw i32 1597463174, %1681
  %1683 = bitcast i32 %1682 to float
  %1684 = fmul fast float %1604, 5.000000e-01
  %1685 = fmul fast float %1683, %1683
  %1686 = fmul fast float %1685, %1684
  %1687 = fsub fast float 1.500000e+00, %1686
  %1688 = fmul fast float %1683, %1604
  %1689 = fmul fast float %1688, %1687
  %1690 = bitcast float %1605 to i32
  %1691 = ashr i32 %1690, 1
  %1692 = sub nsw i32 1597463174, %1691
  %1693 = bitcast i32 %1692 to float
  %1694 = fmul fast float %1605, 5.000000e-01
  %1695 = fmul fast float %1693, %1693
  %1696 = fmul fast float %1695, %1694
  %1697 = fsub fast float 1.500000e+00, %1696
  %1698 = fmul fast float %1693, %1605
  %1699 = fmul fast float %1698, %1697
  %1700 = bitcast float %1606 to i32
  %1701 = ashr i32 %1700, 1
  %1702 = sub nsw i32 1597463174, %1701
  %1703 = bitcast i32 %1702 to float
  %1704 = fmul fast float %1606, 5.000000e-01
  %1705 = fmul fast float %1703, %1703
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float 1.500000e+00, %1706
  %1708 = fmul fast float %1703, %1606
  %1709 = fmul fast float %1708, %1707
  %1710 = fsub fast float %1689, %1671
  %1711 = fsub fast float %1699, %1675
  %1712 = fsub fast float %1709, %1679
  %1713 = fmul fast float %1710, %1639
  %1714 = fmul fast float %1711, %1641
  %1715 = fmul fast float %1712, %1646
  %1716 = fadd fast float %1713, %1654
  %1717 = fadd fast float %1714, %1658
  %1718 = fadd fast float %1715, %1662
  %1719 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1720 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1721 = call float @dx.op.unary.f32(i32 7, float %1718)  ; Saturate(value)
  %1722 = fmul fast float %1719, %1719
  %1723 = fmul fast float %1720, %1720
  %1724 = fmul fast float %1721, %1721
  %1725 = fsub fast float %1722, %1604
  %1726 = fsub fast float %1723, %1605
  %1727 = fsub fast float %1724, %1606
  %1728 = fmul fast float %1725, %1629
  %1729 = fmul fast float %1726, %1629
  %1730 = fmul fast float %1727, %1629
  %1731 = fadd fast float %1728, %1604
  %1732 = fadd fast float %1729, %1605
  %1733 = fadd fast float %1730, %1606
  %1734 = fadd fast float %1651, %1615
  %1735 = fsub fast float %1734, %1668
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = fsub fast float %1736, %1615
  %1738 = fmul fast float %1737, %1629
  %1739 = fadd fast float %1738, %1615
  br label %1793

; <label>:1740                                    ; preds = %1628
  %1741 = and i32 %1631, 134217728
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1777, label %1743

; <label>:1743                                    ; preds = %1740
  %1744 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %1745 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %1746 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %1747 = fadd fast float %1744, -5.000000e-01
  %1748 = fadd fast float %1745, -5.000000e-01
  %1749 = fadd fast float %1746, -5.000000e-01
  %1750 = fmul fast float %1747, %1629
  %1751 = fmul fast float %1748, %1629
  %1752 = fmul fast float %1749, %1629
  %1753 = fadd fast float %1750, 5.000000e-01
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = fadd fast float %1752, 5.000000e-01
  %1756 = call float @dx.op.unary.f32(i32 24, float %1604)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1605)  ; Sqrt(value)
  %1758 = call float @dx.op.unary.f32(i32 24, float %1606)  ; Sqrt(value)
  %1759 = fmul fast float %1753, 2.000000e+00
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = fmul fast float %1760, %1756
  %1762 = fadd fast float %1761, %1759
  %1763 = fmul fast float %1762, %1756
  %1764 = fmul fast float %1754, 2.000000e+00
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1765, %1757
  %1767 = fadd fast float %1766, %1764
  %1768 = fmul fast float %1767, %1757
  %1769 = fmul fast float %1755, 2.000000e+00
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = fmul fast float %1770, %1758
  %1772 = fadd fast float %1771, %1769
  %1773 = fmul fast float %1772, %1758
  %1774 = fmul fast float %1763, %1763
  %1775 = fmul fast float %1768, %1768
  %1776 = fmul fast float %1773, %1773
  br label %1793

; <label>:1777                                    ; preds = %1740
  %1778 = fmul fast float %330, %330
  %1779 = fmul fast float %334, %334
  %1780 = fmul fast float %338, %338
  %1781 = fadd fast float %1778, -1.000000e+00
  %1782 = fadd fast float %1779, -1.000000e+00
  %1783 = fadd fast float %1780, -1.000000e+00
  %1784 = fmul fast float %1629, %1781
  %1785 = fmul fast float %1629, %1782
  %1786 = fmul fast float %1629, %1783
  %1787 = fadd fast float %1784, 1.000000e+00
  %1788 = fadd fast float %1785, 1.000000e+00
  %1789 = fadd fast float %1786, 1.000000e+00
  %1790 = fmul fast float %1787, %1604
  %1791 = fmul fast float %1788, %1605
  %1792 = fmul fast float %1789, %1606
  br label %1793

; <label>:1793                                    ; preds = %1777, %1743, %1634, %1590
  %1794 = phi float [ %1739, %1634 ], [ %1615, %1743 ], [ %1615, %1777 ], [ 0x3FA23C0BE0000000, %1590 ]
  %1795 = phi float [ %1731, %1634 ], [ %1774, %1743 ], [ %1790, %1777 ], [ 1.000000e+00, %1590 ]
  %1796 = phi float [ %1732, %1634 ], [ %1775, %1743 ], [ %1791, %1777 ], [ 1.000000e+00, %1590 ]
  %1797 = phi float [ %1733, %1634 ], [ %1776, %1743 ], [ %1792, %1777 ], [ 1.000000e+00, %1590 ]
  %1798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.i32 %1798, 1
  %1800 = and i32 %1799, 1
  %1801 = icmp ne i32 %1800, 0
  %1802 = add i32 %61, 356
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 32
  %1806 = icmp ne i32 %1805, 0
  %1807 = and i1 %1801, %1806
  %1808 = select i1 %1807, float 1.000000e+00, float %1795
  %1809 = select i1 %1807, float 0x3FD3333340000000, float %1796
  %1810 = select i1 %1807, float 0x3FD3333340000000, float %1797
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 32
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1887, label %1815

; <label>:1815                                    ; preds = %1793
  %1816 = add i32 %61, 108
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = add i32 %61, 428
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = add i32 %1821, 0
  %1823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1823, %dx.types.Handle %106, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1824, 2
  %1828 = extractvalue %dx.types.ResRet.f32 %1824, 3
  %1829 = and i32 %1818, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = lshr i32 %1818, 8
  %1832 = and i32 %1831, 255
  %1833 = uitofp i32 %1832 to float
  %1834 = lshr i32 %1818, 16
  %1835 = and i32 %1834, 255
  %1836 = uitofp i32 %1835 to float
  %1837 = fmul fast float %1836, 0x3F70101000000000
  %1838 = fmul fast float %1825, %1830
  %1839 = fadd fast float %1838, %1833
  %1840 = fmul fast float %1839, 0x3F70101000000000
  %1841 = fadd fast float %1826, -5.000000e-01
  %1842 = fadd fast float %1828, -5.000000e-01
  %1843 = fmul fast float %1841, %1837
  %1844 = fmul fast float %1842, %1837
  %1845 = fadd fast float %1843, 5.000000e-01
  %1846 = fadd fast float %1844, 5.000000e-01
  %1847 = fmul fast float %1845, 2.000000e+00
  %1848 = fadd fast float %1847, -1.000000e+00
  %1849 = fmul fast float %1846, 2.000000e+00
  %1850 = fadd fast float %1849, -1.000000e+00
  %1851 = fadd fast float %1848, %1850
  %1852 = fmul fast float %1851, 5.000000e-01
  %1853 = fsub fast float %1848, %1850
  %1854 = fmul fast float %1853, 5.000000e-01
  %1855 = call float @dx.op.unary.f32(i32 6, float %1852)  ; FAbs(value)
  %1856 = fsub fast float 1.000000e+00, %1855
  %1857 = call float @dx.op.unary.f32(i32 6, float %1854)  ; FAbs(value)
  %1858 = fsub fast float %1856, %1857
  %1859 = call float @dx.op.dot3.f32(i32 55, float %1852, float %1854, float %1858, float %1852, float %1854, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1860 = call float @dx.op.unary.f32(i32 25, float %1859)  ; Rsqrt(value)
  %1861 = fmul fast float %1852, %1860
  %1862 = fmul fast float %1854, %1860
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %1864, 67108864
  %1866 = icmp eq i32 %1865, 0
  br i1 %1866, label %1883, label %1867

; <label>:1867                                    ; preds = %1815
  %1868 = add i32 %61, 296
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 65535
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 65535
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = lshr i32 %1870, 16
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = fsub fast float %1840, %1878
  %1880 = fmul fast float %1879, %1872
  %1881 = fadd fast float %1880, %1876
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  br label %1883

; <label>:1883                                    ; preds = %1867, %1815
  %1884 = phi float [ %1882, %1867 ], [ %1840, %1815 ]
  %1885 = call float @dx.op.dot2.f32(i32 54, float %1861, float %1862, float %1304, float %1305)  ; Dot2(ax,ay,bx,by)
  %1886 = call float @dx.op.dot2.f32(i32 54, float %1861, float %1862, float %1306, float %1307)  ; Dot2(ax,ay,bx,by)
  br label %1887

; <label>:1887                                    ; preds = %1883, %1793
  %1888 = phi float [ %1884, %1883 ], [ 0x3FD6666660000000, %1793 ]
  %1889 = phi float [ %1885, %1883 ], [ 0.000000e+00, %1793 ]
  %1890 = phi float [ %1886, %1883 ], [ 0.000000e+00, %1793 ]
  %1891 = phi float [ %1827, %1883 ], [ 1.000000e+00, %1793 ]
  %1892 = add i32 %61, 176
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = lshr i32 %1894, 22
  %1896 = shl nuw nsw i32 %1895, 5
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 64
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1935, label %1902

; <label>:1902                                    ; preds = %1887
  %1903 = add i32 %61, 444
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = add i32 %1905, 0
  %1907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 131072
  %1911 = icmp eq i32 %1910, 0
  %1912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1907, %dx.types.Handle %106, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = fmul fast float %1913, %318
  %1917 = fmul fast float %1914, %321
  %1918 = fmul fast float %1915, %324
  br i1 %1911, label %1925, label %1919

; <label>:1919                                    ; preds = %1902
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = fmul fast float %1921, %1916
  %1923 = fmul fast float %1921, %1917
  %1924 = fmul fast float %1921, %1918
  br label %1925

; <label>:1925                                    ; preds = %1919, %1902
  %1926 = phi float [ %1922, %1919 ], [ %1916, %1902 ]
  %1927 = phi float [ %1923, %1919 ], [ %1917, %1902 ]
  %1928 = phi float [ %1924, %1919 ], [ %1918, %1902 ]
  %1929 = fmul fast float %1926, %1897
  %1930 = select i1 %259, float %1929, float %1926
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1930, float %1927, float %1928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = select i1 %259, float 0.000000e+00, float %1926
  %1933 = select i1 %259, float %1931, float %1927
  %1934 = select i1 %259, float 0.000000e+00, float %1928
  br label %1935

; <label>:1935                                    ; preds = %1925, %1887
  %1936 = phi float [ %1932, %1925 ], [ 0.000000e+00, %1887 ]
  %1937 = phi float [ %1933, %1925 ], [ 0.000000e+00, %1887 ]
  %1938 = phi float [ %1934, %1925 ], [ 0.000000e+00, %1887 ]
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = and i32 %1940, 1024
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1973, label %1943

; <label>:1943                                    ; preds = %1935
  %1944 = add i32 %61, 168
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 255
  %1948 = uitofp i32 %1947 to float
  %1949 = fmul fast float %1948, 0x3F70101020000000
  %1950 = lshr i32 %1946, 8
  %1951 = and i32 %1950, 255
  %1952 = uitofp i32 %1951 to float
  %1953 = fmul fast float %1952, 0x3F70101020000000
  %1954 = lshr i32 %1946, 16
  %1955 = and i32 %1954, 255
  %1956 = uitofp i32 %1955 to float
  %1957 = fmul fast float %1956, 0x3F70101020000000
  %1958 = fmul fast float %1949, %1949
  %1959 = fmul fast float %1953, %1953
  %1960 = fmul fast float %1957, %1957
  %1961 = add i32 %61, 508
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1965, %dx.types.Handle %107, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = fmul fast float %1958, %1967
  %1971 = fmul fast float %1959, %1968
  %1972 = fmul fast float %1960, %1969
  br label %1973

; <label>:1973                                    ; preds = %1943, %1935
  %1974 = phi float [ %1970, %1943 ], [ 0.000000e+00, %1935 ]
  %1975 = phi float [ %1971, %1943 ], [ 0.000000e+00, %1935 ]
  %1976 = phi float [ %1972, %1943 ], [ 0.000000e+00, %1935 ]
  %1977 = fcmp fast ogt float %1974, 0.000000e+00
  %1978 = fcmp fast ogt float %1975, 0.000000e+00
  %1979 = fcmp fast ogt float %1976, 0.000000e+00
  %1980 = call float @dx.op.unary.f32(i32 23, float %1974)  ; Log(value)
  %1981 = call float @dx.op.unary.f32(i32 23, float %1975)  ; Log(value)
  %1982 = call float @dx.op.unary.f32(i32 23, float %1976)  ; Log(value)
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = lshr i32 %1984, 7
  %1986 = and i32 %1985, 32752
  %1987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1986)  ; LegacyF16ToF32(value)
  %1988 = fmul fast float %1980, 0xBFE62E4300000000
  %1989 = fmul fast float %1988, %1987
  %1990 = fmul fast float %1981, 0xBFE62E4300000000
  %1991 = fmul fast float %1990, %1987
  %1992 = fmul fast float %1982, 0xBFE62E4300000000
  %1993 = fmul fast float %1992, %1987
  %1994 = select i1 %1977, float %1989, float 1.270000e+02
  %1995 = select i1 %1978, float %1991, float 1.270000e+02
  %1996 = select i1 %1979, float %1993, float 1.270000e+02
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = and i32 %1998, 10240
  %2000 = icmp eq i32 %1999, 0
  br i1 %2000, label %2045, label %2001

; <label>:2001                                    ; preds = %1973
  %2002 = add i32 %61, 524
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %2004, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2006, %dx.types.Handle %107, float %1400, float %1401, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 3
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 1048576
  %2013 = icmp ne i32 %2012, 0
  %2014 = and i32 %2011, 8192
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2031, label %2016

; <label>:2016                                    ; preds = %2001
  %2017 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2018 = select i1 %2013, float %2017, float %2008
  %2019 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2020 = select i1 %2013, float %2019, float %2008
  %2021 = add i32 %61, 112
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = lshr i32 %2023, 16
  %2025 = and i32 %2024, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = fmul fast float %2026, 0x3F80101020000000
  %2028 = fmul fast float %2027, %2020
  %2029 = fmul fast float %2027, %2008
  %2030 = fmul fast float %2027, %2018
  br label %2031

; <label>:2031                                    ; preds = %2016, %2001
  %2032 = phi float [ %2028, %2016 ], [ 0.000000e+00, %2001 ]
  %2033 = phi float [ %2029, %2016 ], [ 0.000000e+00, %2001 ]
  %2034 = phi float [ %2030, %2016 ], [ 0.000000e+00, %2001 ]
  %2035 = and i32 %2011, 2048
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2045, label %2037

; <label>:2037                                    ; preds = %2031
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = shl i32 %2039, 4
  %2041 = and i32 %2040, 32752
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = fmul fast float %2042, %2009
  %2044 = call float @dx.op.binary.f32(i32 35, float %2043, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2045

; <label>:2045                                    ; preds = %2037, %2031, %1973
  %2046 = phi float [ %2032, %2037 ], [ %2032, %2031 ], [ 0.000000e+00, %1973 ]
  %2047 = phi float [ %2033, %2037 ], [ %2033, %2031 ], [ 0.000000e+00, %1973 ]
  %2048 = phi float [ %2034, %2037 ], [ %2034, %2031 ], [ 0.000000e+00, %1973 ]
  %2049 = phi float [ %2044, %2037 ], [ 0x3F70101020000000, %2031 ], [ 0x3F70101020000000, %1973 ]
  %2050 = add i32 %61, 112
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = lshr i32 %2052, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = call float @dx.op.dot3.f32(i32 55, float %1808, float %1809, float %1810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = fmul fast float %2057, %2058
  %2060 = fadd fast float %2059, %2054
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  br i1 %1292, label %2063, label %2098

; <label>:2063                                    ; preds = %2045
  %2064 = fmul fast float %2049, 2.000000e+00
  %2065 = fcmp fast olt float %1994, 1.270000e+02
  %2066 = fcmp fast olt float %1995, 1.270000e+02
  %2067 = fcmp fast olt float %1996, 1.270000e+02
  %2068 = fmul fast float %1994, 0xBFF7154760000000
  %2069 = fmul fast float %2068, %2064
  %2070 = fmul fast float %1995, 0xBFF7154760000000
  %2071 = fmul fast float %2070, %2064
  %2072 = fmul fast float %1996, 0xBFF7154760000000
  %2073 = fmul fast float %2072, %2064
  %2074 = call float @dx.op.unary.f32(i32 21, float %2069)  ; Exp(value)
  %2075 = call float @dx.op.unary.f32(i32 21, float %2071)  ; Exp(value)
  %2076 = call float @dx.op.unary.f32(i32 21, float %2073)  ; Exp(value)
  %2077 = call float @dx.op.unary.f32(i32 7, float %2074)  ; Saturate(value)
  %2078 = call float @dx.op.unary.f32(i32 7, float %2075)  ; Saturate(value)
  %2079 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2080 = fadd fast float %2077, -1.000000e+00
  %2081 = select i1 %2065, float %2080, float -1.000000e+00
  %2082 = fadd fast float %2078, -1.000000e+00
  %2083 = select i1 %2066, float %2082, float -1.000000e+00
  %2084 = fadd fast float %2079, -1.000000e+00
  %2085 = select i1 %2067, float %2084, float -1.000000e+00
  %2086 = fmul fast float %2081, %1588
  %2087 = fmul fast float %2083, %1588
  %2088 = fmul fast float %2085, %1588
  %2089 = fadd fast float %2086, 1.000000e+00
  %2090 = fadd fast float %2087, 1.000000e+00
  %2091 = fadd fast float %2088, 1.000000e+00
  %2092 = fmul fast float %2089, %1279
  %2093 = fmul fast float %2090, %1280
  %2094 = fmul fast float %2091, %1281
  %2095 = fmul fast float %2089, %1273
  %2096 = fmul fast float %2090, %1274
  %2097 = fmul fast float %2091, %1275
  br label %2098

; <label>:2098                                    ; preds = %2063, %2045
  %2099 = phi float [ %2095, %2063 ], [ %1273, %2045 ]
  %2100 = phi float [ %2096, %2063 ], [ %1274, %2045 ]
  %2101 = phi float [ %2097, %2063 ], [ %1275, %2045 ]
  %2102 = phi float [ %2092, %2063 ], [ %1279, %2045 ]
  %2103 = phi float [ %2093, %2063 ], [ %1280, %2045 ]
  %2104 = phi float [ %2094, %2063 ], [ %1281, %2045 ]
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 3
  %2108 = icmp eq i32 %2107, 3
  br i1 %2108, label %2187, label %2109

; <label>:2109                                    ; preds = %2098
  %2110 = and i32 %2106, 16
  %2111 = icmp ne i32 %2110, 0
  %2112 = select i1 %2111, float %1588, float 0.000000e+00
  %2113 = icmp eq i32 %2107, 0
  br i1 %2113, label %2114, label %2142

; <label>:2114                                    ; preds = %2109
  %2115 = and i32 %2106, 64
  %2116 = icmp ne i32 %2115, 0
  %2117 = select i1 %2116, float %1588, float 0.000000e+00
  %2118 = fsub fast float %1808, %2102
  %2119 = fsub fast float %1809, %2103
  %2120 = fsub fast float %1810, %2104
  %2121 = fmul fast float %2112, %2118
  %2122 = fmul fast float %2112, %2119
  %2123 = fmul fast float %2112, %2120
  %2124 = fadd fast float %2121, %2102
  %2125 = fadd fast float %2122, %2103
  %2126 = fadd fast float %2123, %2104
  %2127 = fsub fast float %1794, %1285
  %2128 = fmul fast float %2112, %2127
  %2129 = fadd fast float %2128, %1285
  %2130 = fsub fast float %1936, %2099
  %2131 = fsub fast float %1937, %2100
  %2132 = fsub fast float %1938, %2101
  %2133 = fmul fast float %2117, %2130
  %2134 = fmul fast float %2117, %2131
  %2135 = fmul fast float %2117, %2132
  %2136 = fadd fast float %2133, %2099
  %2137 = fadd fast float %2134, %2100
  %2138 = fadd fast float %2135, %2101
  %2139 = fsub fast float %2062, %1290
  %2140 = fmul fast float %2112, %2139
  %2141 = fadd fast float %2140, %1290
  br label %2187

; <label>:2142                                    ; preds = %2109
  %2143 = icmp eq i32 %2107, 1
  br i1 %2143, label %2144, label %2157

; <label>:2144                                    ; preds = %2142
  %2145 = fadd fast float %1808, -1.000000e+00
  %2146 = fadd fast float %1809, -1.000000e+00
  %2147 = fadd fast float %1810, -1.000000e+00
  %2148 = fmul fast float %2112, %2145
  %2149 = fmul fast float %2112, %2146
  %2150 = fmul fast float %2112, %2147
  %2151 = fadd fast float %2148, 1.000000e+00
  %2152 = fadd fast float %2149, 1.000000e+00
  %2153 = fadd fast float %2150, 1.000000e+00
  %2154 = fmul fast float %2151, %2102
  %2155 = fmul fast float %2152, %2103
  %2156 = fmul fast float %2153, %2104
  br label %2187

; <label>:2157                                    ; preds = %2142
  %2158 = icmp eq i32 %2107, 2
  br i1 %2158, label %2159, label %2187

; <label>:2159                                    ; preds = %2157
  %2160 = call float @dx.op.unary.f32(i32 24, float %1808)  ; Sqrt(value)
  %2161 = call float @dx.op.unary.f32(i32 24, float %1809)  ; Sqrt(value)
  %2162 = call float @dx.op.unary.f32(i32 24, float %1810)  ; Sqrt(value)
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fadd fast float %2161, -5.000000e-01
  %2165 = fadd fast float %2162, -5.000000e-01
  %2166 = fmul fast float %2163, %2112
  %2167 = fmul fast float %2164, %2112
  %2168 = fmul fast float %2165, %2112
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = fadd fast float %2167, 5.000000e-01
  %2171 = fadd fast float %2168, 5.000000e-01
  %2172 = fmul fast float %2169, 2.000000e+00
  %2173 = fsub fast float 1.000000e+00, %2172
  %2174 = fmul fast float %2173, %2102
  %2175 = fadd fast float %2174, %2172
  %2176 = fmul fast float %2175, %2102
  %2177 = fmul fast float %2170, 2.000000e+00
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = fmul fast float %2178, %2103
  %2180 = fadd fast float %2179, %2177
  %2181 = fmul fast float %2180, %2103
  %2182 = fmul fast float %2171, 2.000000e+00
  %2183 = fsub fast float 1.000000e+00, %2182
  %2184 = fmul fast float %2183, %2104
  %2185 = fadd fast float %2184, %2182
  %2186 = fmul fast float %2185, %2104
  br label %2187

; <label>:2187                                    ; preds = %2159, %2157, %2144, %2114, %2098
  %2188 = phi float [ %2099, %2098 ], [ %2099, %2159 ], [ %2099, %2157 ], [ %2099, %2144 ], [ %2136, %2114 ]
  %2189 = phi float [ %2100, %2098 ], [ %2100, %2159 ], [ %2100, %2157 ], [ %2100, %2144 ], [ %2137, %2114 ]
  %2190 = phi float [ %2101, %2098 ], [ %2101, %2159 ], [ %2101, %2157 ], [ %2101, %2144 ], [ %2138, %2114 ]
  %2191 = phi float [ %2102, %2098 ], [ %2176, %2159 ], [ %2102, %2157 ], [ %2154, %2144 ], [ %2124, %2114 ]
  %2192 = phi float [ %2103, %2098 ], [ %2181, %2159 ], [ %2103, %2157 ], [ %2155, %2144 ], [ %2125, %2114 ]
  %2193 = phi float [ %2104, %2098 ], [ %2186, %2159 ], [ %2104, %2157 ], [ %2156, %2144 ], [ %2126, %2114 ]
  %2194 = phi float [ %1285, %2098 ], [ %1285, %2159 ], [ %1285, %2157 ], [ %1285, %2144 ], [ %2129, %2114 ]
  %2195 = phi float [ %1290, %2098 ], [ %1290, %2159 ], [ %1290, %2157 ], [ %1290, %2144 ], [ %2141, %2114 ]
  %2196 = and i32 %2106, 12
  %2197 = icmp eq i32 %2196, 12
  br i1 %2197, label %2328, label %2198

; <label>:2198                                    ; preds = %2187
  %2199 = and i32 %2106, 2097184
  %2200 = icmp eq i32 %2199, 2097184
  %2201 = select i1 %2200, float %1588, float 0.000000e+00
  %2202 = and i32 %2106, 4194336
  %2203 = icmp eq i32 %2202, 4194336
  %2204 = select i1 %2203, float %1588, float 0.000000e+00
  %2205 = and i32 %2106, 8388640
  %2206 = icmp eq i32 %2205, 8388640
  %2207 = select i1 %2206, float %1588, float 0.000000e+00
  %2208 = and i32 %2106, 1024
  %2209 = icmp ne i32 %2208, 0
  %2210 = select i1 %2209, float %1588, float 0.000000e+00
  %2211 = and i32 %2106, 2048
  %2212 = icmp ne i32 %2211, 0
  %2213 = select i1 %2212, float %1588, float 0.000000e+00
  %2214 = and i32 %2106, 8192
  %2215 = icmp ne i32 %2214, 0
  %2216 = select i1 %2215, float %1588, float 0.000000e+00
  %2217 = icmp eq i32 %2196, 0
  br i1 %2217, label %2218, label %2252

; <label>:2218                                    ; preds = %2198
  %2219 = fsub fast float %1889, %1271
  %2220 = fsub fast float %1890, %1272
  %2221 = fmul fast float %2201, %2219
  %2222 = fmul fast float %2201, %2220
  %2223 = fadd fast float %2221, %1271
  %2224 = fadd fast float %2222, %1272
  %2225 = fsub fast float %1891, %1288
  %2226 = fmul fast float %2204, %2225
  %2227 = fadd fast float %2226, %1288
  %2228 = fsub fast float %1888, %1287
  %2229 = fmul fast float %2207, %2228
  %2230 = fadd fast float %2229, %1287
  %2231 = fsub fast float %1994, %1282
  %2232 = fsub fast float %1995, %1283
  %2233 = fsub fast float %1996, %1284
  %2234 = fmul fast float %2210, %2231
  %2235 = fmul fast float %2210, %2232
  %2236 = fmul fast float %2210, %2233
  %2237 = fadd fast float %2234, %1282
  %2238 = fadd fast float %2235, %1283
  %2239 = fadd fast float %2236, %1284
  %2240 = fsub fast float %2049, %1289
  %2241 = fmul fast float %2213, %2240
  %2242 = fadd fast float %2241, %1289
  %2243 = fsub fast float %2046, %1276
  %2244 = fsub fast float %2047, %1277
  %2245 = fsub fast float %2048, %1278
  %2246 = fmul fast float %2216, %2243
  %2247 = fmul fast float %2216, %2244
  %2248 = fmul fast float %2216, %2245
  %2249 = fadd fast float %2246, %1276
  %2250 = fadd fast float %2247, %1277
  %2251 = fadd fast float %2248, %1278
  br label %2328

; <label>:2252                                    ; preds = %2198
  %2253 = icmp eq i32 %2196, 4
  br i1 %2253, label %2254, label %2300

; <label>:2254                                    ; preds = %2252
  %2255 = fmul fast float %2201, %1889
  %2256 = fmul fast float %2201, %1890
  %2257 = fadd fast float %2255, %1271
  %2258 = fadd fast float %2256, %1272
  %2259 = call float @dx.op.binary.f32(i32 36, float %1288, float %1891)  ; FMin(a,b)
  %2260 = fsub fast float %2259, %1288
  %2261 = fmul fast float %2260, %2204
  %2262 = fadd fast float %2261, %1288
  %2263 = fadd fast float %1888, %1287
  %2264 = fmul fast float %2263, 0x3FF337FAE0000000
  %2265 = fmul fast float %1287, %1287
  %2266 = fmul fast float %1888, %1888
  %2267 = fadd fast float %2266, %2265
  %2268 = fmul fast float %2267, 0x3FE5152B00000000
  %2269 = fmul fast float %1287, 0xBFCC1F85E0000000
  %2270 = fmul fast float %2269, %1888
  %2271 = fadd fast float %2270, 0xBFE1363700000000
  %2272 = fadd fast float %2271, %2264
  %2273 = fsub fast float %2272, %2268
  %2274 = fmul fast float %2263, 0x3FBA6F0D00000000
  %2275 = fmul fast float %2267, 0x3FD0432880000000
  %2276 = fmul fast float %1287, 0xBFEF110800000000
  %2277 = fmul fast float %2276, %1888
  %2278 = fadd fast float %2277, 1.000000e+00
  %2279 = fsub fast float %2278, %2274
  %2280 = fadd fast float %2279, %2275
  %2281 = fdiv fast float %2273, %2280
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = fsub fast float %2282, %1287
  %2284 = fmul fast float %2283, %2207
  %2285 = fadd fast float %2284, %1287
  %2286 = fmul fast float %2210, %1994
  %2287 = fmul fast float %2210, %1995
  %2288 = fmul fast float %2210, %1996
  %2289 = fadd fast float %2286, %1282
  %2290 = fadd fast float %2287, %1283
  %2291 = fadd fast float %2288, %1284
  %2292 = fmul fast float %2213, %2049
  %2293 = fadd fast float %2292, %1289
  %2294 = fmul fast float %2216, %2046
  %2295 = fmul fast float %2216, %2047
  %2296 = fmul fast float %2216, %2048
  %2297 = fadd fast float %2294, %1276
  %2298 = fadd fast float %2295, %1277
  %2299 = fadd fast float %2296, %1278
  br label %2328

; <label>:2300                                    ; preds = %2252
  %2301 = icmp eq i32 %2196, 8
  br i1 %2301, label %2302, label %2328

; <label>:2302                                    ; preds = %2300
  %2303 = fmul fast float %2201, %1889
  %2304 = fmul fast float %2201, %1890
  %2305 = fadd fast float %2303, %1271
  %2306 = fadd fast float %2304, %1272
  %2307 = call float @dx.op.binary.f32(i32 36, float %1288, float %1891)  ; FMin(a,b)
  %2308 = fsub fast float %2307, %1288
  %2309 = fmul fast float %2308, %2204
  %2310 = fadd fast float %2309, %1288
  %2311 = fsub fast float %1888, %1287
  %2312 = fmul fast float %2207, %2311
  %2313 = fadd fast float %2312, %1287
  %2314 = fmul fast float %2210, %1994
  %2315 = fmul fast float %2210, %1995
  %2316 = fmul fast float %2210, %1996
  %2317 = fadd fast float %2314, %1282
  %2318 = fadd fast float %2315, %1283
  %2319 = fadd fast float %2316, %1284
  %2320 = fmul fast float %2213, %2049
  %2321 = fadd fast float %2320, %1289
  %2322 = fmul fast float %2216, %2046
  %2323 = fmul fast float %2216, %2047
  %2324 = fmul fast float %2216, %2048
  %2325 = fadd fast float %2322, %1276
  %2326 = fadd fast float %2323, %1277
  %2327 = fadd fast float %2324, %1278
  br label %2328

; <label>:2328                                    ; preds = %2302, %2300, %2254, %2218, %2187, %1587, %1291, %1270
  %2329 = phi float [ %1271, %2187 ], [ %1271, %1587 ], [ %1271, %1270 ], [ %2305, %2302 ], [ %1271, %2300 ], [ %2257, %2254 ], [ %2223, %2218 ], [ %1271, %1291 ]
  %2330 = phi float [ %1272, %2187 ], [ %1272, %1587 ], [ %1272, %1270 ], [ %2306, %2302 ], [ %1272, %2300 ], [ %2258, %2254 ], [ %2224, %2218 ], [ %1272, %1291 ]
  %2331 = phi float [ %2188, %2187 ], [ %1273, %1587 ], [ %1273, %1270 ], [ %2188, %2302 ], [ %2188, %2300 ], [ %2188, %2254 ], [ %2188, %2218 ], [ %1273, %1291 ]
  %2332 = phi float [ %2189, %2187 ], [ %1274, %1587 ], [ %1274, %1270 ], [ %2189, %2302 ], [ %2189, %2300 ], [ %2189, %2254 ], [ %2189, %2218 ], [ %1274, %1291 ]
  %2333 = phi float [ %2190, %2187 ], [ %1275, %1587 ], [ %1275, %1270 ], [ %2190, %2302 ], [ %2190, %2300 ], [ %2190, %2254 ], [ %2190, %2218 ], [ %1275, %1291 ]
  %2334 = phi float [ %1276, %2187 ], [ %1276, %1587 ], [ %1276, %1270 ], [ %2325, %2302 ], [ %1276, %2300 ], [ %2297, %2254 ], [ %2249, %2218 ], [ %1276, %1291 ]
  %2335 = phi float [ %1277, %2187 ], [ %1277, %1587 ], [ %1277, %1270 ], [ %2326, %2302 ], [ %1277, %2300 ], [ %2298, %2254 ], [ %2250, %2218 ], [ %1277, %1291 ]
  %2336 = phi float [ %1278, %2187 ], [ %1278, %1587 ], [ %1278, %1270 ], [ %2327, %2302 ], [ %1278, %2300 ], [ %2299, %2254 ], [ %2251, %2218 ], [ %1278, %1291 ]
  %2337 = phi float [ %2191, %2187 ], [ %1279, %1587 ], [ %1279, %1270 ], [ %2191, %2302 ], [ %2191, %2300 ], [ %2191, %2254 ], [ %2191, %2218 ], [ %1279, %1291 ]
  %2338 = phi float [ %2192, %2187 ], [ %1280, %1587 ], [ %1280, %1270 ], [ %2192, %2302 ], [ %2192, %2300 ], [ %2192, %2254 ], [ %2192, %2218 ], [ %1280, %1291 ]
  %2339 = phi float [ %2193, %2187 ], [ %1281, %1587 ], [ %1281, %1270 ], [ %2193, %2302 ], [ %2193, %2300 ], [ %2193, %2254 ], [ %2193, %2218 ], [ %1281, %1291 ]
  %2340 = phi float [ %1282, %2187 ], [ %1282, %1587 ], [ %1282, %1270 ], [ %2317, %2302 ], [ %1282, %2300 ], [ %2289, %2254 ], [ %2237, %2218 ], [ %1282, %1291 ]
  %2341 = phi float [ %1283, %2187 ], [ %1283, %1587 ], [ %1283, %1270 ], [ %2318, %2302 ], [ %1283, %2300 ], [ %2290, %2254 ], [ %2238, %2218 ], [ %1283, %1291 ]
  %2342 = phi float [ %1284, %2187 ], [ %1284, %1587 ], [ %1284, %1270 ], [ %2319, %2302 ], [ %1284, %2300 ], [ %2291, %2254 ], [ %2239, %2218 ], [ %1284, %1291 ]
  %2343 = phi float [ %2194, %2187 ], [ %1285, %1587 ], [ %1285, %1270 ], [ %2194, %2302 ], [ %2194, %2300 ], [ %2194, %2254 ], [ %2194, %2218 ], [ %1285, %1291 ]
  %2344 = phi float [ %1287, %2187 ], [ %1287, %1587 ], [ %1287, %1270 ], [ %2313, %2302 ], [ %1287, %2300 ], [ %2285, %2254 ], [ %2230, %2218 ], [ %1287, %1291 ]
  %2345 = phi float [ %1288, %2187 ], [ %1288, %1587 ], [ %1288, %1270 ], [ %2310, %2302 ], [ %1288, %2300 ], [ %2262, %2254 ], [ %2227, %2218 ], [ %1288, %1291 ]
  %2346 = phi float [ %1289, %2187 ], [ %1289, %1587 ], [ %1289, %1270 ], [ %2321, %2302 ], [ %1289, %2300 ], [ %2293, %2254 ], [ %2242, %2218 ], [ %1289, %1291 ]
  %2347 = phi float [ %2195, %2187 ], [ %1290, %1587 ], [ %1290, %1270 ], [ %2195, %2302 ], [ %2195, %2300 ], [ %2195, %2254 ], [ %2195, %2218 ], [ %1290, %1291 ]
  br i1 %445, label %3385, label %2348

; <label>:2348                                    ; preds = %2328
  %2349 = icmp ult i32 %501, 3
  %2350 = add i32 %61, 56
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = add i32 %61, 60
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = or i32 %2355, %2352
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %3385, label %2358

; <label>:2358                                    ; preds = %2348
  %2359 = and i32 %2352, 262144
  %2360 = icmp ne i32 %2359, 0
  %2361 = select i1 %2360, float %64, float 1.000000e+00
  %2362 = select i1 %2360, float %65, float 0.000000e+00
  %2363 = select i1 %2360, float %66, float 0.000000e+00
  %2364 = select i1 %2360, float %67, float 1.000000e+00
  %2365 = select i1 %2360, float %68, float %89
  %2366 = select i1 %2360, float %69, float %90
  %2367 = add i32 %61, 316
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = lshr i32 %2369, 16
  %2371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2370)  ; LegacyF16ToF32(value)
  %2372 = fmul fast float %2371, 0x3F50624DE0000000
  %2373 = add i32 %61, 120
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = lshr i32 %2375, 16
  %2377 = and i32 %2376, 255
  %2378 = lshr i32 %2375, 24
  %2379 = add i32 %61, 324
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 65535
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = lshr i32 %2381, 16
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = add i32 %61, 64
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = lshr i32 %2388, 22
  %2390 = shl nuw nsw i32 %2389, 5
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = shl i32 %2388, 4
  %2393 = and i32 %2392, 32752
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = lshr i32 %2388, 7
  %2396 = and i32 %2395, 32752
  %2397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2396)  ; LegacyF16ToF32(value)
  %2398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2399 = extractvalue %dx.types.CBufRet.f32 %2398, 3
  %2400 = fmul fast float %2399, 1.000000e+03
  %2401 = fmul fast float %395, %2400
  %2402 = call float @dx.op.unary.f32(i32 22, float %2401)  ; Frc(value)
  %2403 = fadd fast float %2402, %385
  %2404 = fmul fast float %396, %2400
  %2405 = call float @dx.op.unary.f32(i32 22, float %2404)  ; Frc(value)
  %2406 = fadd fast float %2405, %387
  %2407 = fmul fast float %2372, %2400
  %2408 = call float @dx.op.unary.f32(i32 22, float %2407)  ; Frc(value)
  %2409 = fmul fast float %2408, 0x401921FB60000000
  %2410 = fadd fast float %2409, %2391
  %2411 = call float @dx.op.unary.f32(i32 13, float %2410)  ; Sin(value)
  %2412 = call float @dx.op.unary.f32(i32 12, float %2410)  ; Cos(value)
  %2413 = fsub fast float -0.000000e+00, %2411
  %2414 = fadd fast float %2365, -5.000000e-01
  %2415 = fadd fast float %2366, -5.000000e-01
  %2416 = fmul fast float %2383, %2414
  %2417 = fmul fast float %2385, %2415
  %2418 = fadd fast float %2416, 5.000000e-01
  %2419 = fadd fast float %2417, 5.000000e-01
  %2420 = fmul fast float %2394, %2418
  %2421 = fmul fast float %2397, %2419
  %2422 = fmul fast float %2412, %2420
  %2423 = call float @dx.op.tertiary.f32(i32 46, float %2413, float %2421, float %2422)  ; FMad(a,b,c)
  %2424 = fmul fast float %2411, %2420
  %2425 = call float @dx.op.tertiary.f32(i32 46, float %2412, float %2421, float %2424)  ; FMad(a,b,c)
  %2426 = fadd fast float %2403, %2423
  %2427 = fadd fast float %2406, %2425
  %2428 = icmp ugt i32 %2377, 1
  %2429 = icmp ugt i32 %2375, 33554431
  %2430 = or i1 %2429, %2428
  br i1 %2430, label %2431, label %2456

; <label>:2431                                    ; preds = %2358
  %2432 = add i32 %61, 260
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 16
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = fmul fast float %2399, %2436
  %2438 = call float @dx.op.unary.f32(i32 22, float %2437)  ; Frc(value)
  %2439 = mul nuw nsw i32 %2377, %2378
  %2440 = uitofp i32 %2439 to float
  %2441 = fmul fast float %2438, %2440
  %2442 = call float @dx.op.unary.f32(i32 27, float %2441)  ; Round_ni(value)
  %2443 = fptoui float %2442 to i32
  %2444 = urem i32 %2443, %2377
  %2445 = udiv i32 %2443, %2378
  %2446 = call float @dx.op.unary.f32(i32 22, float %2426)  ; Frc(value)
  %2447 = call float @dx.op.unary.f32(i32 22, float %2427)  ; Frc(value)
  %2448 = uitofp i32 %2444 to float
  %2449 = uitofp i32 %2445 to float
  %2450 = fadd fast float %2446, %2448
  %2451 = fadd fast float %2447, %2449
  %2452 = uitofp i32 %2377 to float
  %2453 = uitofp i32 %2378 to float
  %2454 = fdiv fast float %2450, %2452
  %2455 = fdiv fast float %2451, %2453
  br label %2456

; <label>:2456                                    ; preds = %2431, %2358
  %2457 = phi float [ %2454, %2431 ], [ %2426, %2358 ]
  %2458 = phi float [ %2455, %2431 ], [ %2427, %2358 ]
  %2459 = and i32 %2352, 16777216
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2570, label %2461

; <label>:2461                                    ; preds = %2456
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.CBufRet.f32 %2462, 1
  %2465 = extractvalue %dx.types.CBufRet.f32 %2462, 2
  %2466 = fadd fast float %2463, %165
  %2467 = fadd fast float %2464, %166
  %2468 = fadd fast float %2465, %167
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  %2472 = icmp eq i32 %62, 65535
  br i1 %2472, label %2567, label %2473

; <label>:2473                                    ; preds = %2461
  %2474 = lshr i32 %62, 1
  %2475 = shl i32 %2474, 2
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %62, 1
  %2479 = icmp ne i32 %2478, 0
  %2480 = lshr i32 %2477, 16
  %2481 = and i32 %2477, 65535
  %2482 = select i1 %2479, i32 %2480, i32 %2481
  %2483 = icmp eq i32 %2482, 65535
  br i1 %2483, label %2563, label %2484

; <label>:2484                                    ; preds = %2473
  %2485 = mul nuw nsw i32 %2482, 40
  %2486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = add nuw nsw i32 %2485, 12
  %2491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2494 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2495 = add nuw nsw i32 %2485, 24
  %2496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.f32 %2496, 0
  %2498 = extractvalue %dx.types.ResRet.f32 %2496, 1
  %2499 = extractvalue %dx.types.ResRet.f32 %2496, 2
  %2500 = add nuw nsw i32 %2485, 36
  %2501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %2500, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.f32 %2501, 0
  %2503 = fsub fast float %2466, %2487
  %2504 = fsub fast float %2467, %2488
  %2505 = fsub fast float %2468, %2489
  %2506 = fmul fast float %2502, %2503
  %2507 = fmul fast float %2502, %2504
  %2508 = fmul fast float %2502, %2505
  %2509 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2510 = call float @dx.op.unary.f32(i32 27, float %2507)  ; Round_ni(value)
  %2511 = call float @dx.op.unary.f32(i32 27, float %2508)  ; Round_ni(value)
  %2512 = fadd fast float %2509, 5.000000e-01
  %2513 = fadd fast float %2510, 5.000000e-01
  %2514 = fadd fast float %2511, 5.000000e-01
  %2515 = fmul fast float %2512, %2492
  %2516 = fmul fast float %2513, %2493
  %2517 = fmul fast float %2514, %2494
  %2518 = shl i32 %62, 2
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call float @dx.op.unary.f32(i32 22, float %2515)  ; Frc(value)
  %2524 = call float @dx.op.unary.f32(i32 22, float %2516)  ; Frc(value)
  %2525 = call float @dx.op.unary.f32(i32 22, float %2517)  ; Frc(value)
  %2526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2522, %dx.types.Handle %56, float %2523, float %2524, float %2525, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2530 = fmul fast float %2527, 1.023000e+03
  %2531 = fmul fast float %2528, 1.023000e+03
  %2532 = fmul fast float %2529, 1.023000e+03
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fadd fast float %2531, 5.000000e-01
  %2535 = fadd fast float %2532, 5.000000e-01
  %2536 = call float @dx.op.unary.f32(i32 27, float %2533)  ; Round_ni(value)
  %2537 = call float @dx.op.unary.f32(i32 27, float %2534)  ; Round_ni(value)
  %2538 = call float @dx.op.unary.f32(i32 27, float %2535)  ; Round_ni(value)
  %2539 = fsub fast float %2506, %2509
  %2540 = fsub fast float %2507, %2510
  %2541 = fsub fast float %2508, %2511
  %2542 = fmul fast float %2539, 7.500000e-01
  %2543 = fmul fast float %2540, 7.500000e-01
  %2544 = fmul fast float %2541, 7.500000e-01
  %2545 = fadd fast float %2509, 1.250000e-01
  %2546 = fadd fast float %2545, %2542
  %2547 = fadd fast float %2546, %2536
  %2548 = fadd fast float %2510, 1.250000e-01
  %2549 = fadd fast float %2548, %2543
  %2550 = fadd fast float %2549, %2537
  %2551 = fadd fast float %2511, 1.250000e-01
  %2552 = fadd fast float %2551, %2544
  %2553 = fadd fast float %2552, %2538
  %2554 = fmul fast float %2547, %2497
  %2555 = fmul fast float %2550, %2498
  %2556 = fmul fast float %2553, %2499
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = add i32 %2558, 0
  %2560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2560, %dx.types.Handle %54, float %2554, float %2555, float %2556, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  br label %2563

; <label>:2563                                    ; preds = %2484, %2473
  %2564 = phi float [ %2562, %2484 ], [ -1.000000e+00, %2473 ]
  %2565 = fadd fast float %2564, %2471
  %2566 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  br label %2567

; <label>:2567                                    ; preds = %2563, %2461
  %2568 = phi float [ %2566, %2563 ], [ %2471, %2461 ]
  %2569 = fmul fast float %2568, %497
  br label %2570

; <label>:2570                                    ; preds = %2567, %2456
  %2571 = phi float [ %2569, %2567 ], [ %497, %2456 ]
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 256
  %2575 = icmp eq i32 %2574, 0
  br i1 %2575, label %2622, label %2576

; <label>:2576                                    ; preds = %2570
  %2577 = add i32 %61, 480
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = add i32 %2579, 0
  %2581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2581, %dx.types.Handle %107, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2583 = extractvalue %dx.types.ResRet.f32 %2582, 0
  %2584 = add i32 %61, 132
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = shl i32 %2586, 4
  %2588 = and i32 %2587, 32752
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = lshr i32 %2586, 7
  %2591 = and i32 %2590, 32752
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = fsub fast float 1.000000e+00, %2571
  %2594 = call float @dx.op.binary.f32(i32 35, float %2593, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2595 = bitcast float %2571 to i32
  %2596 = sitofp i32 %2595 to float
  %2597 = fadd fast float %2596, 0xC1CFBF8940000000
  %2598 = fmul fast float %2592, %2597
  %2599 = fadd fast float %2598, 0x41CFBF8940000000
  %2600 = fptosi float %2599 to i32
  %2601 = bitcast i32 %2600 to float
  %2602 = bitcast float %2594 to i32
  %2603 = sitofp i32 %2602 to float
  %2604 = fadd fast float %2603, 0xC1CFBF8940000000
  %2605 = fmul fast float %2604, %2592
  %2606 = fadd fast float %2605, 0x41CFBF8940000000
  %2607 = fptosi float %2606 to i32
  %2608 = bitcast i32 %2607 to float
  %2609 = fmul fast float %2601, %2589
  %2610 = fmul fast float %2608, %2589
  %2611 = fsub fast float %2594, %2609
  %2612 = fadd fast float %2610, %2594
  %2613 = call float @dx.op.unary.f32(i32 7, float %2611)  ; Saturate(value)
  %2614 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2615 = fsub fast float %2583, %2613
  %2616 = fsub fast float %2614, %2613
  %2617 = bitcast float %2616 to i32
  %2618 = sub nsw i32 2129859010, %2617
  %2619 = bitcast i32 %2618 to float
  %2620 = fmul fast float %2619, %2615
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  br label %2622

; <label>:2622                                    ; preds = %2576, %2570
  %2623 = phi float [ %2621, %2576 ], [ %2571, %2570 ]
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 128
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %2644, label %2628

; <label>:2628                                    ; preds = %2622
  %2629 = add i32 %61, 464
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2629, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = add i32 %2631, 0
  %2633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2633, %dx.types.Handle %107, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2635 = extractvalue %dx.types.ResRet.f32 %2634, 0
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 524288
  %2639 = icmp ne i32 %2638, 0
  %2640 = fcmp fast ogt float %2635, 0x3FE0101020000000
  %2641 = select i1 %2640, float 1.000000e+00, float 0.000000e+00
  %2642 = select i1 %2639, float %2641, float %2635
  %2643 = fmul fast float %2642, %2623
  br label %2644

; <label>:2644                                    ; preds = %2628, %2622
  %2645 = phi float [ %2643, %2628 ], [ %2623, %2622 ]
  %2646 = fcmp fast ult float %2645, 0x3F70101020000000
  br i1 %2646, label %3385, label %2647

; <label>:2647                                    ; preds = %2644
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 16
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2850, label %2652

; <label>:2652                                    ; preds = %2647
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = add i32 %61, 416
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = add i32 %2657, 0
  %2659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2659, %dx.types.Handle %106, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2661 = extractvalue %dx.types.ResRet.f32 %2660, 0
  %2662 = extractvalue %dx.types.ResRet.f32 %2660, 1
  %2663 = extractvalue %dx.types.ResRet.f32 %2660, 2
  %2664 = extractvalue %dx.types.ResRet.f32 %2660, 3
  %2665 = and i32 %2654, 255
  %2666 = uitofp i32 %2665 to float
  %2667 = lshr i32 %2654, 8
  %2668 = and i32 %2667, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2664, %2666
  %2671 = fadd fast float %2670, %2669
  %2672 = fmul fast float %2671, 0x3F70101000000000
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 512
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2685, label %2677

; <label>:2677                                    ; preds = %2652
  %2678 = add i32 %61, 496
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = add i32 %2680, 0
  %2682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2682, %dx.types.Handle %107, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2684 = extractvalue %dx.types.ResRet.f32 %2683, 0
  br label %2685

; <label>:2685                                    ; preds = %2677, %2652
  %2686 = phi float [ %2684, %2677 ], [ 1.000000e+00, %2652 ]
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = and i32 %2688, 33554432
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2797, label %2691

; <label>:2691                                    ; preds = %2685
  %2692 = add i32 %61, 256
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = and i32 %2694, 65535
  %2696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2695)  ; LegacyF16ToF32(value)
  %2697 = lshr i32 %2694, 16
  %2698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2697)  ; LegacyF16ToF32(value)
  %2699 = add i32 %61, 260
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 65535
  %2703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2702)  ; LegacyF16ToF32(value)
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = lshr i32 %2705, 24
  %2707 = uitofp i32 %2706 to float
  %2708 = fmul fast float %2707, 0x3F70101020000000
  %2709 = and i32 %2705, 255
  %2710 = uitofp i32 %2709 to float
  %2711 = fmul fast float %2710, 0x3F70101020000000
  %2712 = lshr i32 %2705, 8
  %2713 = and i32 %2712, 255
  %2714 = uitofp i32 %2713 to float
  %2715 = fmul fast float %2714, 0x3F70101020000000
  %2716 = lshr i32 %2705, 16
  %2717 = and i32 %2716, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = add i32 %61, 252
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = lshr i32 %2722, 24
  %2724 = uitofp i32 %2723 to float
  %2725 = fmul fast float %2724, 0x3F70101020000000
  %2726 = and i32 %2722, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = fmul fast float %2727, 0x3F70101020000000
  %2729 = lshr i32 %2722, 8
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F70101020000000
  %2733 = lshr i32 %2722, 16
  %2734 = and i32 %2733, 255
  %2735 = uitofp i32 %2734 to float
  %2736 = fmul fast float %2735, 0x3F70101020000000
  %2737 = bitcast float %2661 to i32
  %2738 = ashr i32 %2737, 1
  %2739 = sub nsw i32 1597463174, %2738
  %2740 = bitcast i32 %2739 to float
  %2741 = fmul fast float %2661, 5.000000e-01
  %2742 = fmul fast float %2740, %2740
  %2743 = fmul fast float %2742, %2741
  %2744 = fsub fast float 1.500000e+00, %2743
  %2745 = fmul fast float %2740, %2661
  %2746 = fmul fast float %2745, %2744
  %2747 = bitcast float %2662 to i32
  %2748 = ashr i32 %2747, 1
  %2749 = sub nsw i32 1597463174, %2748
  %2750 = bitcast i32 %2749 to float
  %2751 = fmul fast float %2662, 5.000000e-01
  %2752 = fmul fast float %2750, %2750
  %2753 = fmul fast float %2752, %2751
  %2754 = fsub fast float 1.500000e+00, %2753
  %2755 = fmul fast float %2750, %2662
  %2756 = fmul fast float %2755, %2754
  %2757 = bitcast float %2663 to i32
  %2758 = ashr i32 %2757, 1
  %2759 = sub nsw i32 1597463174, %2758
  %2760 = bitcast i32 %2759 to float
  %2761 = fmul fast float %2663, 5.000000e-01
  %2762 = fmul fast float %2760, %2760
  %2763 = fmul fast float %2762, %2761
  %2764 = fsub fast float 1.500000e+00, %2763
  %2765 = fmul fast float %2760, %2663
  %2766 = fmul fast float %2765, %2764
  %2767 = fsub fast float %2746, %2728
  %2768 = fsub fast float %2756, %2732
  %2769 = fsub fast float %2766, %2736
  %2770 = fmul fast float %2767, %2696
  %2771 = fmul fast float %2768, %2698
  %2772 = fmul fast float %2769, %2703
  %2773 = fadd fast float %2770, %2711
  %2774 = fadd fast float %2771, %2715
  %2775 = fadd fast float %2772, %2719
  %2776 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2777 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2778 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2779 = fmul fast float %2776, %2776
  %2780 = fmul fast float %2777, %2777
  %2781 = fmul fast float %2778, %2778
  %2782 = fsub fast float %2779, %2661
  %2783 = fsub fast float %2780, %2662
  %2784 = fsub fast float %2781, %2663
  %2785 = fmul fast float %2782, %2686
  %2786 = fmul fast float %2783, %2686
  %2787 = fmul fast float %2784, %2686
  %2788 = fadd fast float %2785, %2661
  %2789 = fadd fast float %2786, %2662
  %2790 = fadd fast float %2787, %2663
  %2791 = fadd fast float %2708, %2672
  %2792 = fsub fast float %2791, %2725
  %2793 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2794 = fsub fast float %2793, %2672
  %2795 = fmul fast float %2794, %2686
  %2796 = fadd fast float %2795, %2672
  br label %2850

; <label>:2797                                    ; preds = %2685
  %2798 = and i32 %2688, 134217728
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2834, label %2800

; <label>:2800                                    ; preds = %2797
  %2801 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %2802 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %2803 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %2804 = fadd fast float %2801, -5.000000e-01
  %2805 = fadd fast float %2802, -5.000000e-01
  %2806 = fadd fast float %2803, -5.000000e-01
  %2807 = fmul fast float %2804, %2686
  %2808 = fmul fast float %2805, %2686
  %2809 = fmul fast float %2806, %2686
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fadd fast float %2809, 5.000000e-01
  %2813 = call float @dx.op.unary.f32(i32 24, float %2661)  ; Sqrt(value)
  %2814 = call float @dx.op.unary.f32(i32 24, float %2662)  ; Sqrt(value)
  %2815 = call float @dx.op.unary.f32(i32 24, float %2663)  ; Sqrt(value)
  %2816 = fmul fast float %2810, 2.000000e+00
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = fmul fast float %2817, %2813
  %2819 = fadd fast float %2818, %2816
  %2820 = fmul fast float %2819, %2813
  %2821 = fmul fast float %2811, 2.000000e+00
  %2822 = fsub fast float 1.000000e+00, %2821
  %2823 = fmul fast float %2822, %2814
  %2824 = fadd fast float %2823, %2821
  %2825 = fmul fast float %2824, %2814
  %2826 = fmul fast float %2812, 2.000000e+00
  %2827 = fsub fast float 1.000000e+00, %2826
  %2828 = fmul fast float %2827, %2815
  %2829 = fadd fast float %2828, %2826
  %2830 = fmul fast float %2829, %2815
  %2831 = fmul fast float %2820, %2820
  %2832 = fmul fast float %2825, %2825
  %2833 = fmul fast float %2830, %2830
  br label %2850

; <label>:2834                                    ; preds = %2797
  %2835 = fmul fast float %372, %372
  %2836 = fmul fast float %376, %376
  %2837 = fmul fast float %380, %380
  %2838 = fadd fast float %2835, -1.000000e+00
  %2839 = fadd fast float %2836, -1.000000e+00
  %2840 = fadd fast float %2837, -1.000000e+00
  %2841 = fmul fast float %2686, %2838
  %2842 = fmul fast float %2686, %2839
  %2843 = fmul fast float %2686, %2840
  %2844 = fadd fast float %2841, 1.000000e+00
  %2845 = fadd fast float %2842, 1.000000e+00
  %2846 = fadd fast float %2843, 1.000000e+00
  %2847 = fmul fast float %2844, %2661
  %2848 = fmul fast float %2845, %2662
  %2849 = fmul fast float %2846, %2663
  br label %2850

; <label>:2850                                    ; preds = %2834, %2800, %2691, %2647
  %2851 = phi float [ %2796, %2691 ], [ %2672, %2800 ], [ %2672, %2834 ], [ 0x3FA23C0BE0000000, %2647 ]
  %2852 = phi float [ %2788, %2691 ], [ %2831, %2800 ], [ %2847, %2834 ], [ 1.000000e+00, %2647 ]
  %2853 = phi float [ %2789, %2691 ], [ %2832, %2800 ], [ %2848, %2834 ], [ 1.000000e+00, %2647 ]
  %2854 = phi float [ %2790, %2691 ], [ %2833, %2800 ], [ %2849, %2834 ], [ 1.000000e+00, %2647 ]
  %2855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2856 = extractvalue %dx.types.CBufRet.i32 %2855, 1
  %2857 = and i32 %2856, 1
  %2858 = icmp ne i32 %2857, 0
  %2859 = add i32 %61, 356
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 32
  %2863 = icmp ne i32 %2862, 0
  %2864 = and i1 %2858, %2863
  %2865 = select i1 %2864, float 1.000000e+00, float %2852
  %2866 = select i1 %2864, float 0x3FD3333340000000, float %2853
  %2867 = select i1 %2864, float 0x3FD3333340000000, float %2854
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 32
  %2871 = icmp eq i32 %2870, 0
  br i1 %2871, label %2944, label %2872

; <label>:2872                                    ; preds = %2850
  %2873 = add i32 %61, 124
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = add i32 %61, 432
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = add i32 %2878, 0
  %2880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2881 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2880, %dx.types.Handle %106, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.ResRet.f32 %2881, 2
  %2885 = extractvalue %dx.types.ResRet.f32 %2881, 3
  %2886 = and i32 %2875, 255
  %2887 = uitofp i32 %2886 to float
  %2888 = lshr i32 %2875, 8
  %2889 = and i32 %2888, 255
  %2890 = uitofp i32 %2889 to float
  %2891 = lshr i32 %2875, 16
  %2892 = and i32 %2891, 255
  %2893 = uitofp i32 %2892 to float
  %2894 = fmul fast float %2893, 0x3F70101000000000
  %2895 = fmul fast float %2882, %2887
  %2896 = fadd fast float %2895, %2890
  %2897 = fmul fast float %2896, 0x3F70101000000000
  %2898 = fadd fast float %2883, -5.000000e-01
  %2899 = fadd fast float %2885, -5.000000e-01
  %2900 = fmul fast float %2898, %2894
  %2901 = fmul fast float %2899, %2894
  %2902 = fadd fast float %2900, 5.000000e-01
  %2903 = fadd fast float %2901, 5.000000e-01
  %2904 = fmul fast float %2902, 2.000000e+00
  %2905 = fadd fast float %2904, -1.000000e+00
  %2906 = fmul fast float %2903, 2.000000e+00
  %2907 = fadd fast float %2906, -1.000000e+00
  %2908 = fadd fast float %2905, %2907
  %2909 = fmul fast float %2908, 5.000000e-01
  %2910 = fsub fast float %2905, %2907
  %2911 = fmul fast float %2910, 5.000000e-01
  %2912 = call float @dx.op.unary.f32(i32 6, float %2909)  ; FAbs(value)
  %2913 = fsub fast float 1.000000e+00, %2912
  %2914 = call float @dx.op.unary.f32(i32 6, float %2911)  ; FAbs(value)
  %2915 = fsub fast float %2913, %2914
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2909, float %2911, float %2915, float %2909, float %2911, float %2915)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = call float @dx.op.unary.f32(i32 25, float %2916)  ; Rsqrt(value)
  %2918 = fmul fast float %2909, %2917
  %2919 = fmul fast float %2911, %2917
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 67108864
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %2940, label %2924

; <label>:2924                                    ; preds = %2872
  %2925 = add i32 %61, 312
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 65535
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = lshr i32 %2927, 16
  %2935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2934)  ; LegacyF16ToF32(value)
  %2936 = fsub fast float %2897, %2935
  %2937 = fmul fast float %2936, %2929
  %2938 = fadd fast float %2937, %2933
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  br label %2940

; <label>:2940                                    ; preds = %2924, %2872
  %2941 = phi float [ %2939, %2924 ], [ %2897, %2872 ]
  %2942 = call float @dx.op.dot2.f32(i32 54, float %2918, float %2919, float %2361, float %2362)  ; Dot2(ax,ay,bx,by)
  %2943 = call float @dx.op.dot2.f32(i32 54, float %2918, float %2919, float %2363, float %2364)  ; Dot2(ax,ay,bx,by)
  br label %2944

; <label>:2944                                    ; preds = %2940, %2850
  %2945 = phi float [ %2941, %2940 ], [ 0x3FD6666660000000, %2850 ]
  %2946 = phi float [ %2942, %2940 ], [ 0.000000e+00, %2850 ]
  %2947 = phi float [ %2943, %2940 ], [ 0.000000e+00, %2850 ]
  %2948 = phi float [ %2884, %2940 ], [ 1.000000e+00, %2850 ]
  %2949 = add i32 %61, 192
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = lshr i32 %2951, 22
  %2953 = shl nuw nsw i32 %2952, 5
  %2954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2953)  ; LegacyF16ToF32(value)
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 64
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2992, label %2959

; <label>:2959                                    ; preds = %2944
  %2960 = add i32 %61, 448
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = add i32 %2962, 0
  %2964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 131072
  %2968 = icmp eq i32 %2967, 0
  %2969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2964, %dx.types.Handle %106, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = fmul fast float %2970, %360
  %2974 = fmul fast float %2971, %363
  %2975 = fmul fast float %2972, %366
  br i1 %2968, label %2982, label %2976

; <label>:2976                                    ; preds = %2959
  %2977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2978 = extractvalue %dx.types.CBufRet.f32 %2977, 0
  %2979 = fmul fast float %2978, %2973
  %2980 = fmul fast float %2978, %2974
  %2981 = fmul fast float %2978, %2975
  br label %2982

; <label>:2982                                    ; preds = %2976, %2959
  %2983 = phi float [ %2979, %2976 ], [ %2973, %2959 ]
  %2984 = phi float [ %2980, %2976 ], [ %2974, %2959 ]
  %2985 = phi float [ %2981, %2976 ], [ %2975, %2959 ]
  %2986 = fmul fast float %2983, %2954
  %2987 = select i1 %259, float %2986, float %2983
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2987, float %2984, float %2985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = select i1 %259, float 0.000000e+00, float %2983
  %2990 = select i1 %259, float %2988, float %2984
  %2991 = select i1 %259, float 0.000000e+00, float %2985
  br label %2992

; <label>:2992                                    ; preds = %2982, %2944
  %2993 = phi float [ %2989, %2982 ], [ 0.000000e+00, %2944 ]
  %2994 = phi float [ %2990, %2982 ], [ 0.000000e+00, %2944 ]
  %2995 = phi float [ %2991, %2982 ], [ 0.000000e+00, %2944 ]
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = and i32 %2997, 1024
  %2999 = icmp eq i32 %2998, 0
  br i1 %2999, label %3030, label %3000

; <label>:3000                                    ; preds = %2992
  %3001 = add i32 %61, 184
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = lshr i32 %3003, 8
  %3008 = and i32 %3007, 255
  %3009 = uitofp i32 %3008 to float
  %3010 = fmul fast float %3009, 0x3F70101020000000
  %3011 = lshr i32 %3003, 16
  %3012 = and i32 %3011, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3013, 0x3F70101020000000
  %3015 = fmul fast float %3006, %3006
  %3016 = fmul fast float %3010, %3010
  %3017 = fmul fast float %3014, %3014
  %3018 = add i32 %61, 512
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %107, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3027 = fmul fast float %3015, %3024
  %3028 = fmul fast float %3016, %3025
  %3029 = fmul fast float %3017, %3026
  br label %3030

; <label>:3030                                    ; preds = %3000, %2992
  %3031 = phi float [ %3027, %3000 ], [ 0.000000e+00, %2992 ]
  %3032 = phi float [ %3028, %3000 ], [ 0.000000e+00, %2992 ]
  %3033 = phi float [ %3029, %3000 ], [ 0.000000e+00, %2992 ]
  %3034 = fcmp fast ogt float %3031, 0.000000e+00
  %3035 = fcmp fast ogt float %3032, 0.000000e+00
  %3036 = fcmp fast ogt float %3033, 0.000000e+00
  %3037 = call float @dx.op.unary.f32(i32 23, float %3031)  ; Log(value)
  %3038 = call float @dx.op.unary.f32(i32 23, float %3032)  ; Log(value)
  %3039 = call float @dx.op.unary.f32(i32 23, float %3033)  ; Log(value)
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = lshr i32 %3041, 7
  %3043 = and i32 %3042, 32752
  %3044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3043)  ; LegacyF16ToF32(value)
  %3045 = fmul fast float %3037, 0xBFE62E4300000000
  %3046 = fmul fast float %3045, %3044
  %3047 = fmul fast float %3038, 0xBFE62E4300000000
  %3048 = fmul fast float %3047, %3044
  %3049 = fmul fast float %3039, 0xBFE62E4300000000
  %3050 = fmul fast float %3049, %3044
  %3051 = select i1 %3034, float %3046, float 1.270000e+02
  %3052 = select i1 %3035, float %3048, float 1.270000e+02
  %3053 = select i1 %3036, float %3050, float 1.270000e+02
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = and i32 %3055, 10240
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3102, label %3058

; <label>:3058                                    ; preds = %3030
  %3059 = add i32 %61, 528
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = add i32 %3061, 0
  %3063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3063, %dx.types.Handle %107, float %2457, float %2458, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 3
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 1048576
  %3070 = icmp ne i32 %3069, 0
  %3071 = and i32 %3068, 8192
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3088, label %3073

; <label>:3073                                    ; preds = %3058
  %3074 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3075 = select i1 %3070, float %3074, float %3065
  %3076 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3077 = select i1 %3070, float %3076, float %3065
  %3078 = add i32 %61, 128
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = lshr i32 %3080, 16
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F80101020000000
  %3085 = fmul fast float %3084, %3077
  %3086 = fmul fast float %3084, %3065
  %3087 = fmul fast float %3084, %3075
  br label %3088

; <label>:3088                                    ; preds = %3073, %3058
  %3089 = phi float [ %3085, %3073 ], [ 0.000000e+00, %3058 ]
  %3090 = phi float [ %3086, %3073 ], [ 0.000000e+00, %3058 ]
  %3091 = phi float [ %3087, %3073 ], [ 0.000000e+00, %3058 ]
  %3092 = and i32 %3068, 2048
  %3093 = icmp eq i32 %3092, 0
  br i1 %3093, label %3102, label %3094

; <label>:3094                                    ; preds = %3088
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = shl i32 %3096, 4
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = fmul fast float %3099, %3066
  %3101 = call float @dx.op.binary.f32(i32 35, float %3100, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3102

; <label>:3102                                    ; preds = %3094, %3088, %3030
  %3103 = phi float [ %3089, %3094 ], [ %3089, %3088 ], [ 0.000000e+00, %3030 ]
  %3104 = phi float [ %3090, %3094 ], [ %3090, %3088 ], [ 0.000000e+00, %3030 ]
  %3105 = phi float [ %3091, %3094 ], [ %3091, %3088 ], [ 0.000000e+00, %3030 ]
  %3106 = phi float [ %3101, %3094 ], [ 0x3F70101020000000, %3088 ], [ 0x3F70101020000000, %3030 ]
  %3107 = add i32 %61, 128
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 255
  %3111 = uitofp i32 %3110 to float
  %3112 = lshr i32 %3109, 8
  %3113 = and i32 %3112, 255
  %3114 = uitofp i32 %3113 to float
  %3115 = call float @dx.op.dot3.f32(i32 55, float %2865, float %2866, float %2867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = fmul fast float %3114, %3115
  %3117 = fadd fast float %3116, %3111
  %3118 = fmul fast float %3117, 0x3F70101020000000
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  br i1 %2349, label %3120, label %3155

; <label>:3120                                    ; preds = %3102
  %3121 = fmul fast float %3106, 2.000000e+00
  %3122 = fcmp fast olt float %3051, 1.270000e+02
  %3123 = fcmp fast olt float %3052, 1.270000e+02
  %3124 = fcmp fast olt float %3053, 1.270000e+02
  %3125 = fmul fast float %3051, 0xBFF7154760000000
  %3126 = fmul fast float %3125, %3121
  %3127 = fmul fast float %3052, 0xBFF7154760000000
  %3128 = fmul fast float %3127, %3121
  %3129 = fmul fast float %3053, 0xBFF7154760000000
  %3130 = fmul fast float %3129, %3121
  %3131 = call float @dx.op.unary.f32(i32 21, float %3126)  ; Exp(value)
  %3132 = call float @dx.op.unary.f32(i32 21, float %3128)  ; Exp(value)
  %3133 = call float @dx.op.unary.f32(i32 21, float %3130)  ; Exp(value)
  %3134 = call float @dx.op.unary.f32(i32 7, float %3131)  ; Saturate(value)
  %3135 = call float @dx.op.unary.f32(i32 7, float %3132)  ; Saturate(value)
  %3136 = call float @dx.op.unary.f32(i32 7, float %3133)  ; Saturate(value)
  %3137 = fadd fast float %3134, -1.000000e+00
  %3138 = select i1 %3122, float %3137, float -1.000000e+00
  %3139 = fadd fast float %3135, -1.000000e+00
  %3140 = select i1 %3123, float %3139, float -1.000000e+00
  %3141 = fadd fast float %3136, -1.000000e+00
  %3142 = select i1 %3124, float %3141, float -1.000000e+00
  %3143 = fmul fast float %3138, %2645
  %3144 = fmul fast float %3140, %2645
  %3145 = fmul fast float %3142, %2645
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fadd fast float %3145, 1.000000e+00
  %3149 = fmul fast float %3146, %2337
  %3150 = fmul fast float %3147, %2338
  %3151 = fmul fast float %3148, %2339
  %3152 = fmul fast float %3146, %2331
  %3153 = fmul fast float %3147, %2332
  %3154 = fmul fast float %3148, %2333
  br label %3155

; <label>:3155                                    ; preds = %3120, %3102
  %3156 = phi float [ %3152, %3120 ], [ %2331, %3102 ]
  %3157 = phi float [ %3153, %3120 ], [ %2332, %3102 ]
  %3158 = phi float [ %3154, %3120 ], [ %2333, %3102 ]
  %3159 = phi float [ %3149, %3120 ], [ %2337, %3102 ]
  %3160 = phi float [ %3150, %3120 ], [ %2338, %3102 ]
  %3161 = phi float [ %3151, %3120 ], [ %2339, %3102 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 3
  %3165 = icmp eq i32 %3164, 3
  br i1 %3165, label %3244, label %3166

; <label>:3166                                    ; preds = %3155
  %3167 = and i32 %3163, 16
  %3168 = icmp ne i32 %3167, 0
  %3169 = select i1 %3168, float %2645, float 0.000000e+00
  %3170 = icmp eq i32 %3164, 0
  br i1 %3170, label %3171, label %3199

; <label>:3171                                    ; preds = %3166
  %3172 = and i32 %3163, 64
  %3173 = icmp ne i32 %3172, 0
  %3174 = select i1 %3173, float %2645, float 0.000000e+00
  %3175 = fsub fast float %2865, %3159
  %3176 = fsub fast float %2866, %3160
  %3177 = fsub fast float %2867, %3161
  %3178 = fmul fast float %3169, %3175
  %3179 = fmul fast float %3169, %3176
  %3180 = fmul fast float %3169, %3177
  %3181 = fadd fast float %3178, %3159
  %3182 = fadd fast float %3179, %3160
  %3183 = fadd fast float %3180, %3161
  %3184 = fsub fast float %2851, %2343
  %3185 = fmul fast float %3169, %3184
  %3186 = fadd fast float %3185, %2343
  %3187 = fsub fast float %2993, %3156
  %3188 = fsub fast float %2994, %3157
  %3189 = fsub fast float %2995, %3158
  %3190 = fmul fast float %3174, %3187
  %3191 = fmul fast float %3174, %3188
  %3192 = fmul fast float %3174, %3189
  %3193 = fadd fast float %3190, %3156
  %3194 = fadd fast float %3191, %3157
  %3195 = fadd fast float %3192, %3158
  %3196 = fsub fast float %3119, %2347
  %3197 = fmul fast float %3169, %3196
  %3198 = fadd fast float %3197, %2347
  br label %3244

; <label>:3199                                    ; preds = %3166
  %3200 = icmp eq i32 %3164, 1
  br i1 %3200, label %3201, label %3214

; <label>:3201                                    ; preds = %3199
  %3202 = fadd fast float %2865, -1.000000e+00
  %3203 = fadd fast float %2866, -1.000000e+00
  %3204 = fadd fast float %2867, -1.000000e+00
  %3205 = fmul fast float %3169, %3202
  %3206 = fmul fast float %3169, %3203
  %3207 = fmul fast float %3169, %3204
  %3208 = fadd fast float %3205, 1.000000e+00
  %3209 = fadd fast float %3206, 1.000000e+00
  %3210 = fadd fast float %3207, 1.000000e+00
  %3211 = fmul fast float %3208, %3159
  %3212 = fmul fast float %3209, %3160
  %3213 = fmul fast float %3210, %3161
  br label %3244

; <label>:3214                                    ; preds = %3199
  %3215 = icmp eq i32 %3164, 2
  br i1 %3215, label %3216, label %3244

; <label>:3216                                    ; preds = %3214
  %3217 = call float @dx.op.unary.f32(i32 24, float %2865)  ; Sqrt(value)
  %3218 = call float @dx.op.unary.f32(i32 24, float %2866)  ; Sqrt(value)
  %3219 = call float @dx.op.unary.f32(i32 24, float %2867)  ; Sqrt(value)
  %3220 = fadd fast float %3217, -5.000000e-01
  %3221 = fadd fast float %3218, -5.000000e-01
  %3222 = fadd fast float %3219, -5.000000e-01
  %3223 = fmul fast float %3220, %3169
  %3224 = fmul fast float %3221, %3169
  %3225 = fmul fast float %3222, %3169
  %3226 = fadd fast float %3223, 5.000000e-01
  %3227 = fadd fast float %3224, 5.000000e-01
  %3228 = fadd fast float %3225, 5.000000e-01
  %3229 = fmul fast float %3226, 2.000000e+00
  %3230 = fsub fast float 1.000000e+00, %3229
  %3231 = fmul fast float %3230, %3159
  %3232 = fadd fast float %3231, %3229
  %3233 = fmul fast float %3232, %3159
  %3234 = fmul fast float %3227, 2.000000e+00
  %3235 = fsub fast float 1.000000e+00, %3234
  %3236 = fmul fast float %3235, %3160
  %3237 = fadd fast float %3236, %3234
  %3238 = fmul fast float %3237, %3160
  %3239 = fmul fast float %3228, 2.000000e+00
  %3240 = fsub fast float 1.000000e+00, %3239
  %3241 = fmul fast float %3240, %3161
  %3242 = fadd fast float %3241, %3239
  %3243 = fmul fast float %3242, %3161
  br label %3244

; <label>:3244                                    ; preds = %3216, %3214, %3201, %3171, %3155
  %3245 = phi float [ %3156, %3155 ], [ %3156, %3216 ], [ %3156, %3214 ], [ %3156, %3201 ], [ %3193, %3171 ]
  %3246 = phi float [ %3157, %3155 ], [ %3157, %3216 ], [ %3157, %3214 ], [ %3157, %3201 ], [ %3194, %3171 ]
  %3247 = phi float [ %3158, %3155 ], [ %3158, %3216 ], [ %3158, %3214 ], [ %3158, %3201 ], [ %3195, %3171 ]
  %3248 = phi float [ %3159, %3155 ], [ %3233, %3216 ], [ %3159, %3214 ], [ %3211, %3201 ], [ %3181, %3171 ]
  %3249 = phi float [ %3160, %3155 ], [ %3238, %3216 ], [ %3160, %3214 ], [ %3212, %3201 ], [ %3182, %3171 ]
  %3250 = phi float [ %3161, %3155 ], [ %3243, %3216 ], [ %3161, %3214 ], [ %3213, %3201 ], [ %3183, %3171 ]
  %3251 = phi float [ %2343, %3155 ], [ %2343, %3216 ], [ %2343, %3214 ], [ %2343, %3201 ], [ %3186, %3171 ]
  %3252 = phi float [ %2347, %3155 ], [ %2347, %3216 ], [ %2347, %3214 ], [ %2347, %3201 ], [ %3198, %3171 ]
  %3253 = and i32 %3163, 12
  %3254 = icmp eq i32 %3253, 12
  br i1 %3254, label %3385, label %3255

; <label>:3255                                    ; preds = %3244
  %3256 = and i32 %3163, 2097184
  %3257 = icmp eq i32 %3256, 2097184
  %3258 = select i1 %3257, float %2645, float 0.000000e+00
  %3259 = and i32 %3163, 4194336
  %3260 = icmp eq i32 %3259, 4194336
  %3261 = select i1 %3260, float %2645, float 0.000000e+00
  %3262 = and i32 %3163, 8388640
  %3263 = icmp eq i32 %3262, 8388640
  %3264 = select i1 %3263, float %2645, float 0.000000e+00
  %3265 = and i32 %3163, 1024
  %3266 = icmp ne i32 %3265, 0
  %3267 = select i1 %3266, float %2645, float 0.000000e+00
  %3268 = and i32 %3163, 2048
  %3269 = icmp ne i32 %3268, 0
  %3270 = select i1 %3269, float %2645, float 0.000000e+00
  %3271 = and i32 %3163, 8192
  %3272 = icmp ne i32 %3271, 0
  %3273 = select i1 %3272, float %2645, float 0.000000e+00
  %3274 = icmp eq i32 %3253, 0
  br i1 %3274, label %3275, label %3309

; <label>:3275                                    ; preds = %3255
  %3276 = fsub fast float %2946, %2329
  %3277 = fsub fast float %2947, %2330
  %3278 = fmul fast float %3258, %3276
  %3279 = fmul fast float %3258, %3277
  %3280 = fadd fast float %3278, %2329
  %3281 = fadd fast float %3279, %2330
  %3282 = fsub fast float %2948, %2345
  %3283 = fmul fast float %3261, %3282
  %3284 = fadd fast float %3283, %2345
  %3285 = fsub fast float %2945, %2344
  %3286 = fmul fast float %3264, %3285
  %3287 = fadd fast float %3286, %2344
  %3288 = fsub fast float %3051, %2340
  %3289 = fsub fast float %3052, %2341
  %3290 = fsub fast float %3053, %2342
  %3291 = fmul fast float %3267, %3288
  %3292 = fmul fast float %3267, %3289
  %3293 = fmul fast float %3267, %3290
  %3294 = fadd fast float %3291, %2340
  %3295 = fadd fast float %3292, %2341
  %3296 = fadd fast float %3293, %2342
  %3297 = fsub fast float %3106, %2346
  %3298 = fmul fast float %3270, %3297
  %3299 = fadd fast float %3298, %2346
  %3300 = fsub fast float %3103, %2334
  %3301 = fsub fast float %3104, %2335
  %3302 = fsub fast float %3105, %2336
  %3303 = fmul fast float %3273, %3300
  %3304 = fmul fast float %3273, %3301
  %3305 = fmul fast float %3273, %3302
  %3306 = fadd fast float %3303, %2334
  %3307 = fadd fast float %3304, %2335
  %3308 = fadd fast float %3305, %2336
  br label %3385

; <label>:3309                                    ; preds = %3255
  %3310 = icmp eq i32 %3253, 4
  br i1 %3310, label %3311, label %3357

; <label>:3311                                    ; preds = %3309
  %3312 = fmul fast float %3258, %2946
  %3313 = fmul fast float %3258, %2947
  %3314 = fadd fast float %3312, %2329
  %3315 = fadd fast float %3313, %2330
  %3316 = call float @dx.op.binary.f32(i32 36, float %2345, float %2948)  ; FMin(a,b)
  %3317 = fsub fast float %3316, %2345
  %3318 = fmul fast float %3317, %3261
  %3319 = fadd fast float %3318, %2345
  %3320 = fadd fast float %2945, %2344
  %3321 = fmul fast float %3320, 0x3FF337FAE0000000
  %3322 = fmul fast float %2344, %2344
  %3323 = fmul fast float %2945, %2945
  %3324 = fadd fast float %3323, %3322
  %3325 = fmul fast float %3324, 0x3FE5152B00000000
  %3326 = fmul fast float %2344, 0xBFCC1F85E0000000
  %3327 = fmul fast float %3326, %2945
  %3328 = fadd fast float %3327, 0xBFE1363700000000
  %3329 = fadd fast float %3328, %3321
  %3330 = fsub fast float %3329, %3325
  %3331 = fmul fast float %3320, 0x3FBA6F0D00000000
  %3332 = fmul fast float %3324, 0x3FD0432880000000
  %3333 = fmul fast float %2344, 0xBFEF110800000000
  %3334 = fmul fast float %3333, %2945
  %3335 = fadd fast float %3334, 1.000000e+00
  %3336 = fsub fast float %3335, %3331
  %3337 = fadd fast float %3336, %3332
  %3338 = fdiv fast float %3330, %3337
  %3339 = call float @dx.op.unary.f32(i32 7, float %3338)  ; Saturate(value)
  %3340 = fsub fast float %3339, %2344
  %3341 = fmul fast float %3340, %3264
  %3342 = fadd fast float %3341, %2344
  %3343 = fmul fast float %3267, %3051
  %3344 = fmul fast float %3267, %3052
  %3345 = fmul fast float %3267, %3053
  %3346 = fadd fast float %3343, %2340
  %3347 = fadd fast float %3344, %2341
  %3348 = fadd fast float %3345, %2342
  %3349 = fmul fast float %3270, %3106
  %3350 = fadd fast float %3349, %2346
  %3351 = fmul fast float %3273, %3103
  %3352 = fmul fast float %3273, %3104
  %3353 = fmul fast float %3273, %3105
  %3354 = fadd fast float %3351, %2334
  %3355 = fadd fast float %3352, %2335
  %3356 = fadd fast float %3353, %2336
  br label %3385

; <label>:3357                                    ; preds = %3309
  %3358 = icmp eq i32 %3253, 8
  br i1 %3358, label %3359, label %3385

; <label>:3359                                    ; preds = %3357
  %3360 = fmul fast float %3258, %2946
  %3361 = fmul fast float %3258, %2947
  %3362 = fadd fast float %3360, %2329
  %3363 = fadd fast float %3361, %2330
  %3364 = call float @dx.op.binary.f32(i32 36, float %2345, float %2948)  ; FMin(a,b)
  %3365 = fsub fast float %3364, %2345
  %3366 = fmul fast float %3365, %3261
  %3367 = fadd fast float %3366, %2345
  %3368 = fsub fast float %2945, %2344
  %3369 = fmul fast float %3264, %3368
  %3370 = fadd fast float %3369, %2344
  %3371 = fmul fast float %3267, %3051
  %3372 = fmul fast float %3267, %3052
  %3373 = fmul fast float %3267, %3053
  %3374 = fadd fast float %3371, %2340
  %3375 = fadd fast float %3372, %2341
  %3376 = fadd fast float %3373, %2342
  %3377 = fmul fast float %3270, %3106
  %3378 = fadd fast float %3377, %2346
  %3379 = fmul fast float %3273, %3103
  %3380 = fmul fast float %3273, %3104
  %3381 = fmul fast float %3273, %3105
  %3382 = fadd fast float %3379, %2334
  %3383 = fadd fast float %3380, %2335
  %3384 = fadd fast float %3381, %2336
  br label %3385

; <label>:3385                                    ; preds = %3359, %3357, %3311, %3275, %3244, %2644, %2348, %2328
  %3386 = phi float [ %2329, %3244 ], [ %2329, %2644 ], [ %2329, %2328 ], [ %3362, %3359 ], [ %2329, %3357 ], [ %3314, %3311 ], [ %3280, %3275 ], [ %2329, %2348 ]
  %3387 = phi float [ %2330, %3244 ], [ %2330, %2644 ], [ %2330, %2328 ], [ %3363, %3359 ], [ %2330, %3357 ], [ %3315, %3311 ], [ %3281, %3275 ], [ %2330, %2348 ]
  %3388 = phi float [ %3245, %3244 ], [ %2331, %2644 ], [ %2331, %2328 ], [ %3245, %3359 ], [ %3245, %3357 ], [ %3245, %3311 ], [ %3245, %3275 ], [ %2331, %2348 ]
  %3389 = phi float [ %3246, %3244 ], [ %2332, %2644 ], [ %2332, %2328 ], [ %3246, %3359 ], [ %3246, %3357 ], [ %3246, %3311 ], [ %3246, %3275 ], [ %2332, %2348 ]
  %3390 = phi float [ %3247, %3244 ], [ %2333, %2644 ], [ %2333, %2328 ], [ %3247, %3359 ], [ %3247, %3357 ], [ %3247, %3311 ], [ %3247, %3275 ], [ %2333, %2348 ]
  %3391 = phi float [ %2334, %3244 ], [ %2334, %2644 ], [ %2334, %2328 ], [ %3382, %3359 ], [ %2334, %3357 ], [ %3354, %3311 ], [ %3306, %3275 ], [ %2334, %2348 ]
  %3392 = phi float [ %2335, %3244 ], [ %2335, %2644 ], [ %2335, %2328 ], [ %3383, %3359 ], [ %2335, %3357 ], [ %3355, %3311 ], [ %3307, %3275 ], [ %2335, %2348 ]
  %3393 = phi float [ %2336, %3244 ], [ %2336, %2644 ], [ %2336, %2328 ], [ %3384, %3359 ], [ %2336, %3357 ], [ %3356, %3311 ], [ %3308, %3275 ], [ %2336, %2348 ]
  %3394 = phi float [ %3248, %3244 ], [ %2337, %2644 ], [ %2337, %2328 ], [ %3248, %3359 ], [ %3248, %3357 ], [ %3248, %3311 ], [ %3248, %3275 ], [ %2337, %2348 ]
  %3395 = phi float [ %3249, %3244 ], [ %2338, %2644 ], [ %2338, %2328 ], [ %3249, %3359 ], [ %3249, %3357 ], [ %3249, %3311 ], [ %3249, %3275 ], [ %2338, %2348 ]
  %3396 = phi float [ %3250, %3244 ], [ %2339, %2644 ], [ %2339, %2328 ], [ %3250, %3359 ], [ %3250, %3357 ], [ %3250, %3311 ], [ %3250, %3275 ], [ %2339, %2348 ]
  %3397 = phi float [ %2340, %3244 ], [ %2340, %2644 ], [ %2340, %2328 ], [ %3374, %3359 ], [ %2340, %3357 ], [ %3346, %3311 ], [ %3294, %3275 ], [ %2340, %2348 ]
  %3398 = phi float [ %2341, %3244 ], [ %2341, %2644 ], [ %2341, %2328 ], [ %3375, %3359 ], [ %2341, %3357 ], [ %3347, %3311 ], [ %3295, %3275 ], [ %2341, %2348 ]
  %3399 = phi float [ %2342, %3244 ], [ %2342, %2644 ], [ %2342, %2328 ], [ %3376, %3359 ], [ %2342, %3357 ], [ %3348, %3311 ], [ %3296, %3275 ], [ %2342, %2348 ]
  %3400 = phi float [ %3251, %3244 ], [ %2343, %2644 ], [ %2343, %2328 ], [ %3251, %3359 ], [ %3251, %3357 ], [ %3251, %3311 ], [ %3251, %3275 ], [ %2343, %2348 ]
  %3401 = phi float [ %2344, %3244 ], [ %2344, %2644 ], [ %2344, %2328 ], [ %3370, %3359 ], [ %2344, %3357 ], [ %3342, %3311 ], [ %3287, %3275 ], [ %2344, %2348 ]
  %3402 = phi float [ %2345, %3244 ], [ %2345, %2644 ], [ %2345, %2328 ], [ %3367, %3359 ], [ %2345, %3357 ], [ %3319, %3311 ], [ %3284, %3275 ], [ %2345, %2348 ]
  %3403 = phi float [ %2346, %3244 ], [ %2346, %2644 ], [ %2346, %2328 ], [ %3378, %3359 ], [ %2346, %3357 ], [ %3350, %3311 ], [ %3299, %3275 ], [ %2346, %2348 ]
  %3404 = phi float [ %3252, %3244 ], [ %2347, %2644 ], [ %2347, %2328 ], [ %3252, %3359 ], [ %3252, %3357 ], [ %3252, %3311 ], [ %3252, %3275 ], [ %2347, %2348 ]
  br i1 %447, label %4442, label %3405

; <label>:3405                                    ; preds = %3385
  %3406 = icmp ult i32 %501, 4
  %3407 = add i32 %61, 72
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = add i32 %61, 76
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = or i32 %3412, %3409
  %3414 = icmp eq i32 %3413, 0
  br i1 %3414, label %4442, label %3415

; <label>:3415                                    ; preds = %3405
  %3416 = and i32 %3409, 262144
  %3417 = icmp ne i32 %3416, 0
  %3418 = select i1 %3417, float %64, float 1.000000e+00
  %3419 = select i1 %3417, float %65, float 0.000000e+00
  %3420 = select i1 %3417, float %66, float 0.000000e+00
  %3421 = select i1 %3417, float %67, float 1.000000e+00
  %3422 = select i1 %3417, float %68, float %89
  %3423 = select i1 %3417, float %69, float %90
  %3424 = add i32 %61, 332
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = lshr i32 %3426, 16
  %3428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3427)  ; LegacyF16ToF32(value)
  %3429 = fmul fast float %3428, 0x3F50624DE0000000
  %3430 = add i32 %61, 136
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = lshr i32 %3432, 16
  %3434 = and i32 %3433, 255
  %3435 = lshr i32 %3432, 24
  %3436 = add i32 %61, 340
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 65535
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = lshr i32 %3438, 16
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = add i32 %61, 80
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = lshr i32 %3445, 22
  %3447 = shl nuw nsw i32 %3446, 5
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = shl i32 %3445, 4
  %3450 = and i32 %3449, 32752
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = lshr i32 %3445, 7
  %3453 = and i32 %3452, 32752
  %3454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3453)  ; LegacyF16ToF32(value)
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 3
  %3457 = fmul fast float %3456, 1.000000e+03
  %3458 = fmul fast float %437, %3457
  %3459 = call float @dx.op.unary.f32(i32 22, float %3458)  ; Frc(value)
  %3460 = fadd fast float %3459, %427
  %3461 = fmul fast float %438, %3457
  %3462 = call float @dx.op.unary.f32(i32 22, float %3461)  ; Frc(value)
  %3463 = fadd fast float %3462, %429
  %3464 = fmul fast float %3429, %3457
  %3465 = call float @dx.op.unary.f32(i32 22, float %3464)  ; Frc(value)
  %3466 = fmul fast float %3465, 0x401921FB60000000
  %3467 = fadd fast float %3466, %3448
  %3468 = call float @dx.op.unary.f32(i32 13, float %3467)  ; Sin(value)
  %3469 = call float @dx.op.unary.f32(i32 12, float %3467)  ; Cos(value)
  %3470 = fsub fast float -0.000000e+00, %3468
  %3471 = fadd fast float %3422, -5.000000e-01
  %3472 = fadd fast float %3423, -5.000000e-01
  %3473 = fmul fast float %3440, %3471
  %3474 = fmul fast float %3442, %3472
  %3475 = fadd fast float %3473, 5.000000e-01
  %3476 = fadd fast float %3474, 5.000000e-01
  %3477 = fmul fast float %3451, %3475
  %3478 = fmul fast float %3454, %3476
  %3479 = fmul fast float %3469, %3477
  %3480 = call float @dx.op.tertiary.f32(i32 46, float %3470, float %3478, float %3479)  ; FMad(a,b,c)
  %3481 = fmul fast float %3468, %3477
  %3482 = call float @dx.op.tertiary.f32(i32 46, float %3469, float %3478, float %3481)  ; FMad(a,b,c)
  %3483 = fadd fast float %3460, %3480
  %3484 = fadd fast float %3463, %3482
  %3485 = icmp ugt i32 %3434, 1
  %3486 = icmp ugt i32 %3432, 33554431
  %3487 = or i1 %3486, %3485
  br i1 %3487, label %3488, label %3513

; <label>:3488                                    ; preds = %3415
  %3489 = add i32 %61, 276
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = lshr i32 %3491, 16
  %3493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3492)  ; LegacyF16ToF32(value)
  %3494 = fmul fast float %3456, %3493
  %3495 = call float @dx.op.unary.f32(i32 22, float %3494)  ; Frc(value)
  %3496 = mul nuw nsw i32 %3434, %3435
  %3497 = uitofp i32 %3496 to float
  %3498 = fmul fast float %3495, %3497
  %3499 = call float @dx.op.unary.f32(i32 27, float %3498)  ; Round_ni(value)
  %3500 = fptoui float %3499 to i32
  %3501 = urem i32 %3500, %3434
  %3502 = udiv i32 %3500, %3435
  %3503 = call float @dx.op.unary.f32(i32 22, float %3483)  ; Frc(value)
  %3504 = call float @dx.op.unary.f32(i32 22, float %3484)  ; Frc(value)
  %3505 = uitofp i32 %3501 to float
  %3506 = uitofp i32 %3502 to float
  %3507 = fadd fast float %3503, %3505
  %3508 = fadd fast float %3504, %3506
  %3509 = uitofp i32 %3434 to float
  %3510 = uitofp i32 %3435 to float
  %3511 = fdiv fast float %3507, %3509
  %3512 = fdiv fast float %3508, %3510
  br label %3513

; <label>:3513                                    ; preds = %3488, %3415
  %3514 = phi float [ %3511, %3488 ], [ %3483, %3415 ]
  %3515 = phi float [ %3512, %3488 ], [ %3484, %3415 ]
  %3516 = and i32 %3409, 16777216
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3627, label %3518

; <label>:3518                                    ; preds = %3513
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = fadd fast float %3520, %165
  %3524 = fadd fast float %3521, %166
  %3525 = fadd fast float %3522, %167
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = icmp eq i32 %62, 65535
  br i1 %3529, label %3624, label %3530

; <label>:3530                                    ; preds = %3518
  %3531 = lshr i32 %62, 1
  %3532 = shl i32 %3531, 2
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %62, 1
  %3536 = icmp ne i32 %3535, 0
  %3537 = lshr i32 %3534, 16
  %3538 = and i32 %3534, 65535
  %3539 = select i1 %3536, i32 %3537, i32 %3538
  %3540 = icmp eq i32 %3539, 65535
  br i1 %3540, label %3620, label %3541

; <label>:3541                                    ; preds = %3530
  %3542 = mul nuw nsw i32 %3539, 40
  %3543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = add nuw nsw i32 %3542, 12
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = add nuw nsw i32 %3542, 24
  %3553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.ResRet.f32 %3553, 2
  %3557 = add nuw nsw i32 %3542, 36
  %3558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.f32 %3558, 0
  %3560 = fsub fast float %3523, %3544
  %3561 = fsub fast float %3524, %3545
  %3562 = fsub fast float %3525, %3546
  %3563 = fmul fast float %3559, %3560
  %3564 = fmul fast float %3559, %3561
  %3565 = fmul fast float %3559, %3562
  %3566 = call float @dx.op.unary.f32(i32 27, float %3563)  ; Round_ni(value)
  %3567 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3568 = call float @dx.op.unary.f32(i32 27, float %3565)  ; Round_ni(value)
  %3569 = fadd fast float %3566, 5.000000e-01
  %3570 = fadd fast float %3567, 5.000000e-01
  %3571 = fadd fast float %3568, 5.000000e-01
  %3572 = fmul fast float %3569, %3549
  %3573 = fmul fast float %3570, %3550
  %3574 = fmul fast float %3571, %3551
  %3575 = shl i32 %62, 2
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = add i32 %3577, 0
  %3579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3580 = call float @dx.op.unary.f32(i32 22, float %3572)  ; Frc(value)
  %3581 = call float @dx.op.unary.f32(i32 22, float %3573)  ; Frc(value)
  %3582 = call float @dx.op.unary.f32(i32 22, float %3574)  ; Frc(value)
  %3583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3579, %dx.types.Handle %56, float %3580, float %3581, float %3582, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = fmul fast float %3584, 1.023000e+03
  %3588 = fmul fast float %3585, 1.023000e+03
  %3589 = fmul fast float %3586, 1.023000e+03
  %3590 = fadd fast float %3587, 5.000000e-01
  %3591 = fadd fast float %3588, 5.000000e-01
  %3592 = fadd fast float %3589, 5.000000e-01
  %3593 = call float @dx.op.unary.f32(i32 27, float %3590)  ; Round_ni(value)
  %3594 = call float @dx.op.unary.f32(i32 27, float %3591)  ; Round_ni(value)
  %3595 = call float @dx.op.unary.f32(i32 27, float %3592)  ; Round_ni(value)
  %3596 = fsub fast float %3563, %3566
  %3597 = fsub fast float %3564, %3567
  %3598 = fsub fast float %3565, %3568
  %3599 = fmul fast float %3596, 7.500000e-01
  %3600 = fmul fast float %3597, 7.500000e-01
  %3601 = fmul fast float %3598, 7.500000e-01
  %3602 = fadd fast float %3566, 1.250000e-01
  %3603 = fadd fast float %3602, %3599
  %3604 = fadd fast float %3603, %3593
  %3605 = fadd fast float %3567, 1.250000e-01
  %3606 = fadd fast float %3605, %3600
  %3607 = fadd fast float %3606, %3594
  %3608 = fadd fast float %3568, 1.250000e-01
  %3609 = fadd fast float %3608, %3601
  %3610 = fadd fast float %3609, %3595
  %3611 = fmul fast float %3604, %3554
  %3612 = fmul fast float %3607, %3555
  %3613 = fmul fast float %3610, %3556
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = add i32 %3615, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3617, %dx.types.Handle %54, float %3611, float %3612, float %3613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  br label %3620

; <label>:3620                                    ; preds = %3541, %3530
  %3621 = phi float [ %3619, %3541 ], [ -1.000000e+00, %3530 ]
  %3622 = fadd fast float %3621, %3528
  %3623 = call float @dx.op.unary.f32(i32 7, float %3622)  ; Saturate(value)
  br label %3624

; <label>:3624                                    ; preds = %3620, %3518
  %3625 = phi float [ %3623, %3620 ], [ %3528, %3518 ]
  %3626 = fmul fast float %3625, %496
  br label %3627

; <label>:3627                                    ; preds = %3624, %3513
  %3628 = phi float [ %3626, %3624 ], [ %496, %3513 ]
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 256
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3679, label %3633

; <label>:3633                                    ; preds = %3627
  %3634 = add i32 %61, 484
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = add i32 %3636, 0
  %3638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3638, %dx.types.Handle %107, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = add i32 %61, 148
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = shl i32 %3643, 4
  %3645 = and i32 %3644, 32752
  %3646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3645)  ; LegacyF16ToF32(value)
  %3647 = lshr i32 %3643, 7
  %3648 = and i32 %3647, 32752
  %3649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3648)  ; LegacyF16ToF32(value)
  %3650 = fsub fast float 1.000000e+00, %3628
  %3651 = call float @dx.op.binary.f32(i32 35, float %3650, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3652 = bitcast float %3628 to i32
  %3653 = sitofp i32 %3652 to float
  %3654 = fadd fast float %3653, 0xC1CFBF8940000000
  %3655 = fmul fast float %3649, %3654
  %3656 = fadd fast float %3655, 0x41CFBF8940000000
  %3657 = fptosi float %3656 to i32
  %3658 = bitcast i32 %3657 to float
  %3659 = bitcast float %3651 to i32
  %3660 = sitofp i32 %3659 to float
  %3661 = fadd fast float %3660, 0xC1CFBF8940000000
  %3662 = fmul fast float %3661, %3649
  %3663 = fadd fast float %3662, 0x41CFBF8940000000
  %3664 = fptosi float %3663 to i32
  %3665 = bitcast i32 %3664 to float
  %3666 = fmul fast float %3658, %3646
  %3667 = fmul fast float %3665, %3646
  %3668 = fsub fast float %3651, %3666
  %3669 = fadd fast float %3667, %3651
  %3670 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3671 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  %3672 = fsub fast float %3640, %3670
  %3673 = fsub fast float %3671, %3670
  %3674 = bitcast float %3673 to i32
  %3675 = sub nsw i32 2129859010, %3674
  %3676 = bitcast i32 %3675 to float
  %3677 = fmul fast float %3676, %3672
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  br label %3679

; <label>:3679                                    ; preds = %3633, %3627
  %3680 = phi float [ %3678, %3633 ], [ %3628, %3627 ]
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = and i32 %3682, 128
  %3684 = icmp eq i32 %3683, 0
  br i1 %3684, label %3701, label %3685

; <label>:3685                                    ; preds = %3679
  %3686 = add i32 %61, 468
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3688, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3690, %dx.types.Handle %107, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 524288
  %3696 = icmp ne i32 %3695, 0
  %3697 = fcmp fast ogt float %3692, 0x3FE0101020000000
  %3698 = select i1 %3697, float 1.000000e+00, float 0.000000e+00
  %3699 = select i1 %3696, float %3698, float %3692
  %3700 = fmul fast float %3699, %3680
  br label %3701

; <label>:3701                                    ; preds = %3685, %3679
  %3702 = phi float [ %3700, %3685 ], [ %3680, %3679 ]
  %3703 = fcmp fast ult float %3702, 0x3F70101020000000
  br i1 %3703, label %4442, label %3704

; <label>:3704                                    ; preds = %3701
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 16
  %3708 = icmp eq i32 %3707, 0
  br i1 %3708, label %3907, label %3709

; <label>:3709                                    ; preds = %3704
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = add i32 %61, 420
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = add i32 %3714, 0
  %3716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3716, %dx.types.Handle %106, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3718 = extractvalue %dx.types.ResRet.f32 %3717, 0
  %3719 = extractvalue %dx.types.ResRet.f32 %3717, 1
  %3720 = extractvalue %dx.types.ResRet.f32 %3717, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3717, 3
  %3722 = and i32 %3711, 255
  %3723 = uitofp i32 %3722 to float
  %3724 = lshr i32 %3711, 8
  %3725 = and i32 %3724, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = fmul fast float %3721, %3723
  %3728 = fadd fast float %3727, %3726
  %3729 = fmul fast float %3728, 0x3F70101000000000
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 512
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3742, label %3734

; <label>:3734                                    ; preds = %3709
  %3735 = add i32 %61, 500
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = add i32 %3737, 0
  %3739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3739, %dx.types.Handle %107, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  br label %3742

; <label>:3742                                    ; preds = %3734, %3709
  %3743 = phi float [ %3741, %3734 ], [ 1.000000e+00, %3709 ]
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = and i32 %3745, 33554432
  %3747 = icmp eq i32 %3746, 0
  br i1 %3747, label %3854, label %3748

; <label>:3748                                    ; preds = %3742
  %3749 = add i32 %61, 272
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = and i32 %3751, 65535
  %3753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3752)  ; LegacyF16ToF32(value)
  %3754 = lshr i32 %3751, 16
  %3755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3754)  ; LegacyF16ToF32(value)
  %3756 = add i32 %61, 276
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = and i32 %3758, 65535
  %3760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3759)  ; LegacyF16ToF32(value)
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = lshr i32 %3762, 24
  %3764 = uitofp i32 %3763 to float
  %3765 = fmul fast float %3764, 0x3F70101020000000
  %3766 = and i32 %3762, 255
  %3767 = uitofp i32 %3766 to float
  %3768 = fmul fast float %3767, 0x3F70101020000000
  %3769 = lshr i32 %3762, 8
  %3770 = and i32 %3769, 255
  %3771 = uitofp i32 %3770 to float
  %3772 = fmul fast float %3771, 0x3F70101020000000
  %3773 = lshr i32 %3762, 16
  %3774 = and i32 %3773, 255
  %3775 = uitofp i32 %3774 to float
  %3776 = fmul fast float %3775, 0x3F70101020000000
  %3777 = add i32 %61, 268
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = lshr i32 %3779, 24
  %3781 = uitofp i32 %3780 to float
  %3782 = fmul fast float %3781, 0x3F70101020000000
  %3783 = and i32 %3779, 255
  %3784 = uitofp i32 %3783 to float
  %3785 = fmul fast float %3784, 0x3F70101020000000
  %3786 = lshr i32 %3779, 8
  %3787 = and i32 %3786, 255
  %3788 = uitofp i32 %3787 to float
  %3789 = fmul fast float %3788, 0x3F70101020000000
  %3790 = lshr i32 %3779, 16
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3792, 0x3F70101020000000
  %3794 = bitcast float %3718 to i32
  %3795 = ashr i32 %3794, 1
  %3796 = sub nsw i32 1597463174, %3795
  %3797 = bitcast i32 %3796 to float
  %3798 = fmul fast float %3718, 5.000000e-01
  %3799 = fmul fast float %3797, %3797
  %3800 = fmul fast float %3799, %3798
  %3801 = fsub fast float 1.500000e+00, %3800
  %3802 = fmul fast float %3797, %3718
  %3803 = fmul fast float %3802, %3801
  %3804 = bitcast float %3719 to i32
  %3805 = ashr i32 %3804, 1
  %3806 = sub nsw i32 1597463174, %3805
  %3807 = bitcast i32 %3806 to float
  %3808 = fmul fast float %3719, 5.000000e-01
  %3809 = fmul fast float %3807, %3807
  %3810 = fmul fast float %3809, %3808
  %3811 = fsub fast float 1.500000e+00, %3810
  %3812 = fmul fast float %3807, %3719
  %3813 = fmul fast float %3812, %3811
  %3814 = bitcast float %3720 to i32
  %3815 = ashr i32 %3814, 1
  %3816 = sub nsw i32 1597463174, %3815
  %3817 = bitcast i32 %3816 to float
  %3818 = fmul fast float %3720, 5.000000e-01
  %3819 = fmul fast float %3817, %3817
  %3820 = fmul fast float %3819, %3818
  %3821 = fsub fast float 1.500000e+00, %3820
  %3822 = fmul fast float %3817, %3720
  %3823 = fmul fast float %3822, %3821
  %3824 = fsub fast float %3803, %3785
  %3825 = fsub fast float %3813, %3789
  %3826 = fsub fast float %3823, %3793
  %3827 = fmul fast float %3824, %3753
  %3828 = fmul fast float %3825, %3755
  %3829 = fmul fast float %3826, %3760
  %3830 = fadd fast float %3827, %3768
  %3831 = fadd fast float %3828, %3772
  %3832 = fadd fast float %3829, %3776
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  %3835 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3836 = fmul fast float %3833, %3833
  %3837 = fmul fast float %3834, %3834
  %3838 = fmul fast float %3835, %3835
  %3839 = fsub fast float %3836, %3718
  %3840 = fsub fast float %3837, %3719
  %3841 = fsub fast float %3838, %3720
  %3842 = fmul fast float %3839, %3743
  %3843 = fmul fast float %3840, %3743
  %3844 = fmul fast float %3841, %3743
  %3845 = fadd fast float %3842, %3718
  %3846 = fadd fast float %3843, %3719
  %3847 = fadd fast float %3844, %3720
  %3848 = fadd fast float %3765, %3729
  %3849 = fsub fast float %3848, %3782
  %3850 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3851 = fsub fast float %3850, %3729
  %3852 = fmul fast float %3851, %3743
  %3853 = fadd fast float %3852, %3729
  br label %3907

; <label>:3854                                    ; preds = %3742
  %3855 = and i32 %3745, 134217728
  %3856 = icmp eq i32 %3855, 0
  br i1 %3856, label %3891, label %3857

; <label>:3857                                    ; preds = %3854
  %3858 = call float @dx.op.unary.f32(i32 24, float %414)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %3860 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %3861 = fadd fast float %3858, -5.000000e-01
  %3862 = fadd fast float %3859, -5.000000e-01
  %3863 = fadd fast float %3860, -5.000000e-01
  %3864 = fmul fast float %3861, %3743
  %3865 = fmul fast float %3862, %3743
  %3866 = fmul fast float %3863, %3743
  %3867 = fadd fast float %3864, 5.000000e-01
  %3868 = fadd fast float %3865, 5.000000e-01
  %3869 = fadd fast float %3866, 5.000000e-01
  %3870 = call float @dx.op.unary.f32(i32 24, float %3718)  ; Sqrt(value)
  %3871 = call float @dx.op.unary.f32(i32 24, float %3719)  ; Sqrt(value)
  %3872 = call float @dx.op.unary.f32(i32 24, float %3720)  ; Sqrt(value)
  %3873 = fmul fast float %3867, 2.000000e+00
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3874, %3870
  %3876 = fadd fast float %3875, %3873
  %3877 = fmul fast float %3876, %3870
  %3878 = fmul fast float %3868, 2.000000e+00
  %3879 = fsub fast float 1.000000e+00, %3878
  %3880 = fmul fast float %3879, %3871
  %3881 = fadd fast float %3880, %3878
  %3882 = fmul fast float %3881, %3871
  %3883 = fmul fast float %3869, 2.000000e+00
  %3884 = fsub fast float 1.000000e+00, %3883
  %3885 = fmul fast float %3884, %3872
  %3886 = fadd fast float %3885, %3883
  %3887 = fmul fast float %3886, %3872
  %3888 = fmul fast float %3877, %3877
  %3889 = fmul fast float %3882, %3882
  %3890 = fmul fast float %3887, %3887
  br label %3907

; <label>:3891                                    ; preds = %3854
  %3892 = fmul fast float %414, %414
  %3893 = fmul fast float %418, %418
  %3894 = fmul fast float %422, %422
  %3895 = fadd fast float %3892, -1.000000e+00
  %3896 = fadd fast float %3893, -1.000000e+00
  %3897 = fadd fast float %3894, -1.000000e+00
  %3898 = fmul fast float %3743, %3895
  %3899 = fmul fast float %3743, %3896
  %3900 = fmul fast float %3743, %3897
  %3901 = fadd fast float %3898, 1.000000e+00
  %3902 = fadd fast float %3899, 1.000000e+00
  %3903 = fadd fast float %3900, 1.000000e+00
  %3904 = fmul fast float %3901, %3718
  %3905 = fmul fast float %3902, %3719
  %3906 = fmul fast float %3903, %3720
  br label %3907

; <label>:3907                                    ; preds = %3891, %3857, %3748, %3704
  %3908 = phi float [ %3853, %3748 ], [ %3729, %3857 ], [ %3729, %3891 ], [ 0x3FA23C0BE0000000, %3704 ]
  %3909 = phi float [ %3845, %3748 ], [ %3888, %3857 ], [ %3904, %3891 ], [ 1.000000e+00, %3704 ]
  %3910 = phi float [ %3846, %3748 ], [ %3889, %3857 ], [ %3905, %3891 ], [ 1.000000e+00, %3704 ]
  %3911 = phi float [ %3847, %3748 ], [ %3890, %3857 ], [ %3906, %3891 ], [ 1.000000e+00, %3704 ]
  %3912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.i32 %3912, 1
  %3914 = and i32 %3913, 1
  %3915 = icmp ne i32 %3914, 0
  %3916 = add i32 %61, 356
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = and i32 %3918, 32
  %3920 = icmp ne i32 %3919, 0
  %3921 = and i1 %3915, %3920
  %3922 = select i1 %3921, float 1.000000e+00, float %3909
  %3923 = select i1 %3921, float 0x3FD3333340000000, float %3910
  %3924 = select i1 %3921, float 0x3FD3333340000000, float %3911
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = and i32 %3926, 32
  %3928 = icmp eq i32 %3927, 0
  br i1 %3928, label %4001, label %3929

; <label>:3929                                    ; preds = %3907
  %3930 = add i32 %61, 140
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = add i32 %61, 436
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = add i32 %3935, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3937, %dx.types.Handle %106, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3939 = extractvalue %dx.types.ResRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.ResRet.f32 %3938, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3938, 2
  %3942 = extractvalue %dx.types.ResRet.f32 %3938, 3
  %3943 = and i32 %3932, 255
  %3944 = uitofp i32 %3943 to float
  %3945 = lshr i32 %3932, 8
  %3946 = and i32 %3945, 255
  %3947 = uitofp i32 %3946 to float
  %3948 = lshr i32 %3932, 16
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = fmul fast float %3950, 0x3F70101000000000
  %3952 = fmul fast float %3939, %3944
  %3953 = fadd fast float %3952, %3947
  %3954 = fmul fast float %3953, 0x3F70101000000000
  %3955 = fadd fast float %3940, -5.000000e-01
  %3956 = fadd fast float %3942, -5.000000e-01
  %3957 = fmul fast float %3955, %3951
  %3958 = fmul fast float %3956, %3951
  %3959 = fadd fast float %3957, 5.000000e-01
  %3960 = fadd fast float %3958, 5.000000e-01
  %3961 = fmul fast float %3959, 2.000000e+00
  %3962 = fadd fast float %3961, -1.000000e+00
  %3963 = fmul fast float %3960, 2.000000e+00
  %3964 = fadd fast float %3963, -1.000000e+00
  %3965 = fadd fast float %3962, %3964
  %3966 = fmul fast float %3965, 5.000000e-01
  %3967 = fsub fast float %3962, %3964
  %3968 = fmul fast float %3967, 5.000000e-01
  %3969 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3970 = fsub fast float 1.000000e+00, %3969
  %3971 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3972 = fsub fast float %3970, %3971
  %3973 = call float @dx.op.dot3.f32(i32 55, float %3966, float %3968, float %3972, float %3966, float %3968, float %3972)  ; Dot3(ax,ay,az,bx,by,bz)
  %3974 = call float @dx.op.unary.f32(i32 25, float %3973)  ; Rsqrt(value)
  %3975 = fmul fast float %3966, %3974
  %3976 = fmul fast float %3968, %3974
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = and i32 %3978, 67108864
  %3980 = icmp eq i32 %3979, 0
  br i1 %3980, label %3997, label %3981

; <label>:3981                                    ; preds = %3929
  %3982 = add i32 %61, 328
  %3983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3982, i32 undef)  ; BufferLoad(srv,index,wot)
  %3984 = extractvalue %dx.types.ResRet.i32 %3983, 0
  %3985 = and i32 %3984, 65535
  %3986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3985)  ; LegacyF16ToF32(value)
  %3987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.i32 %3987, 0
  %3989 = and i32 %3988, 65535
  %3990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3989)  ; LegacyF16ToF32(value)
  %3991 = lshr i32 %3984, 16
  %3992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3991)  ; LegacyF16ToF32(value)
  %3993 = fsub fast float %3954, %3992
  %3994 = fmul fast float %3993, %3986
  %3995 = fadd fast float %3994, %3990
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  br label %3997

; <label>:3997                                    ; preds = %3981, %3929
  %3998 = phi float [ %3996, %3981 ], [ %3954, %3929 ]
  %3999 = call float @dx.op.dot2.f32(i32 54, float %3975, float %3976, float %3418, float %3419)  ; Dot2(ax,ay,bx,by)
  %4000 = call float @dx.op.dot2.f32(i32 54, float %3975, float %3976, float %3420, float %3421)  ; Dot2(ax,ay,bx,by)
  br label %4001

; <label>:4001                                    ; preds = %3997, %3907
  %4002 = phi float [ %3998, %3997 ], [ 0x3FD6666660000000, %3907 ]
  %4003 = phi float [ %3999, %3997 ], [ 0.000000e+00, %3907 ]
  %4004 = phi float [ %4000, %3997 ], [ 0.000000e+00, %3907 ]
  %4005 = phi float [ %3941, %3997 ], [ 1.000000e+00, %3907 ]
  %4006 = add i32 %61, 208
  %4007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.i32 %4007, 0
  %4009 = lshr i32 %4008, 22
  %4010 = shl nuw nsw i32 %4009, 5
  %4011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4010)  ; LegacyF16ToF32(value)
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 64
  %4015 = icmp eq i32 %4014, 0
  br i1 %4015, label %4049, label %4016

; <label>:4016                                    ; preds = %4001
  %4017 = add i32 %61, 452
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = add i32 %4019, 0
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.i32 %4022, 0
  %4024 = and i32 %4023, 131072
  %4025 = icmp eq i32 %4024, 0
  %4026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4021, %dx.types.Handle %106, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4029 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4030 = fmul fast float %4027, %402
  %4031 = fmul fast float %4028, %405
  %4032 = fmul fast float %4029, %408
  br i1 %4025, label %4039, label %4033

; <label>:4033                                    ; preds = %4016
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = fmul fast float %4035, %4030
  %4037 = fmul fast float %4035, %4031
  %4038 = fmul fast float %4035, %4032
  br label %4039

; <label>:4039                                    ; preds = %4033, %4016
  %4040 = phi float [ %4036, %4033 ], [ %4030, %4016 ]
  %4041 = phi float [ %4037, %4033 ], [ %4031, %4016 ]
  %4042 = phi float [ %4038, %4033 ], [ %4032, %4016 ]
  %4043 = fmul fast float %4040, %4011
  %4044 = select i1 %259, float %4043, float %4040
  %4045 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4041, float %4042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4046 = select i1 %259, float 0.000000e+00, float %4040
  %4047 = select i1 %259, float %4045, float %4041
  %4048 = select i1 %259, float 0.000000e+00, float %4042
  br label %4049

; <label>:4049                                    ; preds = %4039, %4001
  %4050 = phi float [ %4046, %4039 ], [ 0.000000e+00, %4001 ]
  %4051 = phi float [ %4047, %4039 ], [ 0.000000e+00, %4001 ]
  %4052 = phi float [ %4048, %4039 ], [ 0.000000e+00, %4001 ]
  %4053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.i32 %4053, 0
  %4055 = and i32 %4054, 1024
  %4056 = icmp eq i32 %4055, 0
  br i1 %4056, label %4087, label %4057

; <label>:4057                                    ; preds = %4049
  %4058 = add i32 %61, 200
  %4059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.i32 %4059, 0
  %4061 = and i32 %4060, 255
  %4062 = uitofp i32 %4061 to float
  %4063 = fmul fast float %4062, 0x3F70101020000000
  %4064 = lshr i32 %4060, 8
  %4065 = and i32 %4064, 255
  %4066 = uitofp i32 %4065 to float
  %4067 = fmul fast float %4066, 0x3F70101020000000
  %4068 = lshr i32 %4060, 16
  %4069 = and i32 %4068, 255
  %4070 = uitofp i32 %4069 to float
  %4071 = fmul fast float %4070, 0x3F70101020000000
  %4072 = fmul fast float %4063, %4063
  %4073 = fmul fast float %4067, %4067
  %4074 = fmul fast float %4071, %4071
  %4075 = add i32 %61, 516
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = add i32 %4077, 0
  %4079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4079, %dx.types.Handle %107, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4083 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4084 = fmul fast float %4072, %4081
  %4085 = fmul fast float %4073, %4082
  %4086 = fmul fast float %4074, %4083
  br label %4087

; <label>:4087                                    ; preds = %4057, %4049
  %4088 = phi float [ %4084, %4057 ], [ 0.000000e+00, %4049 ]
  %4089 = phi float [ %4085, %4057 ], [ 0.000000e+00, %4049 ]
  %4090 = phi float [ %4086, %4057 ], [ 0.000000e+00, %4049 ]
  %4091 = fcmp fast ogt float %4088, 0.000000e+00
  %4092 = fcmp fast ogt float %4089, 0.000000e+00
  %4093 = fcmp fast ogt float %4090, 0.000000e+00
  %4094 = call float @dx.op.unary.f32(i32 23, float %4088)  ; Log(value)
  %4095 = call float @dx.op.unary.f32(i32 23, float %4089)  ; Log(value)
  %4096 = call float @dx.op.unary.f32(i32 23, float %4090)  ; Log(value)
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = lshr i32 %4098, 7
  %4100 = and i32 %4099, 32752
  %4101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4100)  ; LegacyF16ToF32(value)
  %4102 = fmul fast float %4094, 0xBFE62E4300000000
  %4103 = fmul fast float %4102, %4101
  %4104 = fmul fast float %4095, 0xBFE62E4300000000
  %4105 = fmul fast float %4104, %4101
  %4106 = fmul fast float %4096, 0xBFE62E4300000000
  %4107 = fmul fast float %4106, %4101
  %4108 = select i1 %4091, float %4103, float 1.270000e+02
  %4109 = select i1 %4092, float %4105, float 1.270000e+02
  %4110 = select i1 %4093, float %4107, float 1.270000e+02
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = and i32 %4112, 10240
  %4114 = icmp eq i32 %4113, 0
  br i1 %4114, label %4159, label %4115

; <label>:4115                                    ; preds = %4087
  %4116 = add i32 %61, 532
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = add i32 %4118, 0
  %4120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4120, %dx.types.Handle %107, float %3514, float %3515, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4122 = extractvalue %dx.types.ResRet.f32 %4121, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4121, 3
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = and i32 %4125, 1048576
  %4127 = icmp ne i32 %4126, 0
  %4128 = and i32 %4125, 8192
  %4129 = icmp eq i32 %4128, 0
  br i1 %4129, label %4145, label %4130

; <label>:4130                                    ; preds = %4115
  %4131 = extractvalue %dx.types.ResRet.f32 %4121, 2
  %4132 = select i1 %4127, float %4131, float %4122
  %4133 = extractvalue %dx.types.ResRet.f32 %4121, 0
  %4134 = select i1 %4127, float %4133, float %4122
  %4135 = add i32 %61, 144
  %4136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.i32 %4136, 0
  %4138 = lshr i32 %4137, 16
  %4139 = and i32 %4138, 255
  %4140 = uitofp i32 %4139 to float
  %4141 = fmul fast float %4140, 0x3F80101020000000
  %4142 = fmul fast float %4141, %4134
  %4143 = fmul fast float %4141, %4122
  %4144 = fmul fast float %4141, %4132
  br label %4145

; <label>:4145                                    ; preds = %4130, %4115
  %4146 = phi float [ %4142, %4130 ], [ 0.000000e+00, %4115 ]
  %4147 = phi float [ %4143, %4130 ], [ 0.000000e+00, %4115 ]
  %4148 = phi float [ %4144, %4130 ], [ 0.000000e+00, %4115 ]
  %4149 = and i32 %4125, 2048
  %4150 = icmp eq i32 %4149, 0
  br i1 %4150, label %4159, label %4151

; <label>:4151                                    ; preds = %4145
  %4152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4153 = extractvalue %dx.types.ResRet.i32 %4152, 0
  %4154 = shl i32 %4153, 4
  %4155 = and i32 %4154, 32752
  %4156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4155)  ; LegacyF16ToF32(value)
  %4157 = fmul fast float %4156, %4123
  %4158 = call float @dx.op.binary.f32(i32 35, float %4157, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4159

; <label>:4159                                    ; preds = %4151, %4145, %4087
  %4160 = phi float [ %4146, %4151 ], [ %4146, %4145 ], [ 0.000000e+00, %4087 ]
  %4161 = phi float [ %4147, %4151 ], [ %4147, %4145 ], [ 0.000000e+00, %4087 ]
  %4162 = phi float [ %4148, %4151 ], [ %4148, %4145 ], [ 0.000000e+00, %4087 ]
  %4163 = phi float [ %4158, %4151 ], [ 0x3F70101020000000, %4145 ], [ 0x3F70101020000000, %4087 ]
  %4164 = add i32 %61, 144
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = and i32 %4166, 255
  %4168 = uitofp i32 %4167 to float
  %4169 = lshr i32 %4166, 8
  %4170 = and i32 %4169, 255
  %4171 = uitofp i32 %4170 to float
  %4172 = call float @dx.op.dot3.f32(i32 55, float %3922, float %3923, float %3924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = fmul fast float %4171, %4172
  %4174 = fadd fast float %4173, %4168
  %4175 = fmul fast float %4174, 0x3F70101020000000
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  br i1 %3406, label %4177, label %4212

; <label>:4177                                    ; preds = %4159
  %4178 = fmul fast float %4163, 2.000000e+00
  %4179 = fcmp fast olt float %4108, 1.270000e+02
  %4180 = fcmp fast olt float %4109, 1.270000e+02
  %4181 = fcmp fast olt float %4110, 1.270000e+02
  %4182 = fmul fast float %4108, 0xBFF7154760000000
  %4183 = fmul fast float %4182, %4178
  %4184 = fmul fast float %4109, 0xBFF7154760000000
  %4185 = fmul fast float %4184, %4178
  %4186 = fmul fast float %4110, 0xBFF7154760000000
  %4187 = fmul fast float %4186, %4178
  %4188 = call float @dx.op.unary.f32(i32 21, float %4183)  ; Exp(value)
  %4189 = call float @dx.op.unary.f32(i32 21, float %4185)  ; Exp(value)
  %4190 = call float @dx.op.unary.f32(i32 21, float %4187)  ; Exp(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = fadd fast float %4191, -1.000000e+00
  %4195 = select i1 %4179, float %4194, float -1.000000e+00
  %4196 = fadd fast float %4192, -1.000000e+00
  %4197 = select i1 %4180, float %4196, float -1.000000e+00
  %4198 = fadd fast float %4193, -1.000000e+00
  %4199 = select i1 %4181, float %4198, float -1.000000e+00
  %4200 = fmul fast float %4195, %3702
  %4201 = fmul fast float %4197, %3702
  %4202 = fmul fast float %4199, %3702
  %4203 = fadd fast float %4200, 1.000000e+00
  %4204 = fadd fast float %4201, 1.000000e+00
  %4205 = fadd fast float %4202, 1.000000e+00
  %4206 = fmul fast float %4203, %3394
  %4207 = fmul fast float %4204, %3395
  %4208 = fmul fast float %4205, %3396
  %4209 = fmul fast float %4203, %3388
  %4210 = fmul fast float %4204, %3389
  %4211 = fmul fast float %4205, %3390
  br label %4212

; <label>:4212                                    ; preds = %4177, %4159
  %4213 = phi float [ %4209, %4177 ], [ %3388, %4159 ]
  %4214 = phi float [ %4210, %4177 ], [ %3389, %4159 ]
  %4215 = phi float [ %4211, %4177 ], [ %3390, %4159 ]
  %4216 = phi float [ %4206, %4177 ], [ %3394, %4159 ]
  %4217 = phi float [ %4207, %4177 ], [ %3395, %4159 ]
  %4218 = phi float [ %4208, %4177 ], [ %3396, %4159 ]
  %4219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %3407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.i32 %4219, 0
  %4221 = and i32 %4220, 3
  %4222 = icmp eq i32 %4221, 3
  br i1 %4222, label %4301, label %4223

; <label>:4223                                    ; preds = %4212
  %4224 = and i32 %4220, 16
  %4225 = icmp ne i32 %4224, 0
  %4226 = select i1 %4225, float %3702, float 0.000000e+00
  %4227 = icmp eq i32 %4221, 0
  br i1 %4227, label %4228, label %4256

; <label>:4228                                    ; preds = %4223
  %4229 = and i32 %4220, 64
  %4230 = icmp ne i32 %4229, 0
  %4231 = select i1 %4230, float %3702, float 0.000000e+00
  %4232 = fsub fast float %3922, %4216
  %4233 = fsub fast float %3923, %4217
  %4234 = fsub fast float %3924, %4218
  %4235 = fmul fast float %4226, %4232
  %4236 = fmul fast float %4226, %4233
  %4237 = fmul fast float %4226, %4234
  %4238 = fadd fast float %4235, %4216
  %4239 = fadd fast float %4236, %4217
  %4240 = fadd fast float %4237, %4218
  %4241 = fsub fast float %3908, %3400
  %4242 = fmul fast float %4226, %4241
  %4243 = fadd fast float %4242, %3400
  %4244 = fsub fast float %4050, %4213
  %4245 = fsub fast float %4051, %4214
  %4246 = fsub fast float %4052, %4215
  %4247 = fmul fast float %4231, %4244
  %4248 = fmul fast float %4231, %4245
  %4249 = fmul fast float %4231, %4246
  %4250 = fadd fast float %4247, %4213
  %4251 = fadd fast float %4248, %4214
  %4252 = fadd fast float %4249, %4215
  %4253 = fsub fast float %4176, %3404
  %4254 = fmul fast float %4226, %4253
  %4255 = fadd fast float %4254, %3404
  br label %4301

; <label>:4256                                    ; preds = %4223
  %4257 = icmp eq i32 %4221, 1
  br i1 %4257, label %4258, label %4271

; <label>:4258                                    ; preds = %4256
  %4259 = fadd fast float %3922, -1.000000e+00
  %4260 = fadd fast float %3923, -1.000000e+00
  %4261 = fadd fast float %3924, -1.000000e+00
  %4262 = fmul fast float %4226, %4259
  %4263 = fmul fast float %4226, %4260
  %4264 = fmul fast float %4226, %4261
  %4265 = fadd fast float %4262, 1.000000e+00
  %4266 = fadd fast float %4263, 1.000000e+00
  %4267 = fadd fast float %4264, 1.000000e+00
  %4268 = fmul fast float %4265, %4216
  %4269 = fmul fast float %4266, %4217
  %4270 = fmul fast float %4267, %4218
  br label %4301

; <label>:4271                                    ; preds = %4256
  %4272 = icmp eq i32 %4221, 2
  br i1 %4272, label %4273, label %4301

; <label>:4273                                    ; preds = %4271
  %4274 = call float @dx.op.unary.f32(i32 24, float %3922)  ; Sqrt(value)
  %4275 = call float @dx.op.unary.f32(i32 24, float %3923)  ; Sqrt(value)
  %4276 = call float @dx.op.unary.f32(i32 24, float %3924)  ; Sqrt(value)
  %4277 = fadd fast float %4274, -5.000000e-01
  %4278 = fadd fast float %4275, -5.000000e-01
  %4279 = fadd fast float %4276, -5.000000e-01
  %4280 = fmul fast float %4277, %4226
  %4281 = fmul fast float %4278, %4226
  %4282 = fmul fast float %4279, %4226
  %4283 = fadd fast float %4280, 5.000000e-01
  %4284 = fadd fast float %4281, 5.000000e-01
  %4285 = fadd fast float %4282, 5.000000e-01
  %4286 = fmul fast float %4283, 2.000000e+00
  %4287 = fsub fast float 1.000000e+00, %4286
  %4288 = fmul fast float %4287, %4216
  %4289 = fadd fast float %4288, %4286
  %4290 = fmul fast float %4289, %4216
  %4291 = fmul fast float %4284, 2.000000e+00
  %4292 = fsub fast float 1.000000e+00, %4291
  %4293 = fmul fast float %4292, %4217
  %4294 = fadd fast float %4293, %4291
  %4295 = fmul fast float %4294, %4217
  %4296 = fmul fast float %4285, 2.000000e+00
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = fmul fast float %4297, %4218
  %4299 = fadd fast float %4298, %4296
  %4300 = fmul fast float %4299, %4218
  br label %4301

; <label>:4301                                    ; preds = %4273, %4271, %4258, %4228, %4212
  %4302 = phi float [ %4213, %4212 ], [ %4213, %4273 ], [ %4213, %4271 ], [ %4213, %4258 ], [ %4250, %4228 ]
  %4303 = phi float [ %4214, %4212 ], [ %4214, %4273 ], [ %4214, %4271 ], [ %4214, %4258 ], [ %4251, %4228 ]
  %4304 = phi float [ %4215, %4212 ], [ %4215, %4273 ], [ %4215, %4271 ], [ %4215, %4258 ], [ %4252, %4228 ]
  %4305 = phi float [ %4216, %4212 ], [ %4290, %4273 ], [ %4216, %4271 ], [ %4268, %4258 ], [ %4238, %4228 ]
  %4306 = phi float [ %4217, %4212 ], [ %4295, %4273 ], [ %4217, %4271 ], [ %4269, %4258 ], [ %4239, %4228 ]
  %4307 = phi float [ %4218, %4212 ], [ %4300, %4273 ], [ %4218, %4271 ], [ %4270, %4258 ], [ %4240, %4228 ]
  %4308 = phi float [ %3400, %4212 ], [ %3400, %4273 ], [ %3400, %4271 ], [ %3400, %4258 ], [ %4243, %4228 ]
  %4309 = phi float [ %3404, %4212 ], [ %3404, %4273 ], [ %3404, %4271 ], [ %3404, %4258 ], [ %4255, %4228 ]
  %4310 = and i32 %4220, 12
  %4311 = icmp eq i32 %4310, 12
  br i1 %4311, label %4442, label %4312

; <label>:4312                                    ; preds = %4301
  %4313 = and i32 %4220, 2097184
  %4314 = icmp eq i32 %4313, 2097184
  %4315 = select i1 %4314, float %3702, float 0.000000e+00
  %4316 = and i32 %4220, 4194336
  %4317 = icmp eq i32 %4316, 4194336
  %4318 = select i1 %4317, float %3702, float 0.000000e+00
  %4319 = and i32 %4220, 8388640
  %4320 = icmp eq i32 %4319, 8388640
  %4321 = select i1 %4320, float %3702, float 0.000000e+00
  %4322 = and i32 %4220, 1024
  %4323 = icmp ne i32 %4322, 0
  %4324 = select i1 %4323, float %3702, float 0.000000e+00
  %4325 = and i32 %4220, 2048
  %4326 = icmp ne i32 %4325, 0
  %4327 = select i1 %4326, float %3702, float 0.000000e+00
  %4328 = and i32 %4220, 8192
  %4329 = icmp ne i32 %4328, 0
  %4330 = select i1 %4329, float %3702, float 0.000000e+00
  %4331 = icmp eq i32 %4310, 0
  br i1 %4331, label %4332, label %4366

; <label>:4332                                    ; preds = %4312
  %4333 = fsub fast float %4003, %3386
  %4334 = fsub fast float %4004, %3387
  %4335 = fmul fast float %4315, %4333
  %4336 = fmul fast float %4315, %4334
  %4337 = fadd fast float %4335, %3386
  %4338 = fadd fast float %4336, %3387
  %4339 = fsub fast float %4005, %3402
  %4340 = fmul fast float %4318, %4339
  %4341 = fadd fast float %4340, %3402
  %4342 = fsub fast float %4002, %3401
  %4343 = fmul fast float %4321, %4342
  %4344 = fadd fast float %4343, %3401
  %4345 = fsub fast float %4108, %3397
  %4346 = fsub fast float %4109, %3398
  %4347 = fsub fast float %4110, %3399
  %4348 = fmul fast float %4324, %4345
  %4349 = fmul fast float %4324, %4346
  %4350 = fmul fast float %4324, %4347
  %4351 = fadd fast float %4348, %3397
  %4352 = fadd fast float %4349, %3398
  %4353 = fadd fast float %4350, %3399
  %4354 = fsub fast float %4163, %3403
  %4355 = fmul fast float %4327, %4354
  %4356 = fadd fast float %4355, %3403
  %4357 = fsub fast float %4160, %3391
  %4358 = fsub fast float %4161, %3392
  %4359 = fsub fast float %4162, %3393
  %4360 = fmul fast float %4330, %4357
  %4361 = fmul fast float %4330, %4358
  %4362 = fmul fast float %4330, %4359
  %4363 = fadd fast float %4360, %3391
  %4364 = fadd fast float %4361, %3392
  %4365 = fadd fast float %4362, %3393
  br label %4442

; <label>:4366                                    ; preds = %4312
  %4367 = icmp eq i32 %4310, 4
  br i1 %4367, label %4368, label %4414

; <label>:4368                                    ; preds = %4366
  %4369 = fmul fast float %4315, %4003
  %4370 = fmul fast float %4315, %4004
  %4371 = fadd fast float %4369, %3386
  %4372 = fadd fast float %4370, %3387
  %4373 = call float @dx.op.binary.f32(i32 36, float %3402, float %4005)  ; FMin(a,b)
  %4374 = fsub fast float %4373, %3402
  %4375 = fmul fast float %4374, %4318
  %4376 = fadd fast float %4375, %3402
  %4377 = fadd fast float %4002, %3401
  %4378 = fmul fast float %4377, 0x3FF337FAE0000000
  %4379 = fmul fast float %3401, %3401
  %4380 = fmul fast float %4002, %4002
  %4381 = fadd fast float %4380, %4379
  %4382 = fmul fast float %4381, 0x3FE5152B00000000
  %4383 = fmul fast float %3401, 0xBFCC1F85E0000000
  %4384 = fmul fast float %4383, %4002
  %4385 = fadd fast float %4384, 0xBFE1363700000000
  %4386 = fadd fast float %4385, %4378
  %4387 = fsub fast float %4386, %4382
  %4388 = fmul fast float %4377, 0x3FBA6F0D00000000
  %4389 = fmul fast float %4381, 0x3FD0432880000000
  %4390 = fmul fast float %3401, 0xBFEF110800000000
  %4391 = fmul fast float %4390, %4002
  %4392 = fadd fast float %4391, 1.000000e+00
  %4393 = fsub fast float %4392, %4388
  %4394 = fadd fast float %4393, %4389
  %4395 = fdiv fast float %4387, %4394
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fsub fast float %4396, %3401
  %4398 = fmul fast float %4397, %4321
  %4399 = fadd fast float %4398, %3401
  %4400 = fmul fast float %4324, %4108
  %4401 = fmul fast float %4324, %4109
  %4402 = fmul fast float %4324, %4110
  %4403 = fadd fast float %4400, %3397
  %4404 = fadd fast float %4401, %3398
  %4405 = fadd fast float %4402, %3399
  %4406 = fmul fast float %4327, %4163
  %4407 = fadd fast float %4406, %3403
  %4408 = fmul fast float %4330, %4160
  %4409 = fmul fast float %4330, %4161
  %4410 = fmul fast float %4330, %4162
  %4411 = fadd fast float %4408, %3391
  %4412 = fadd fast float %4409, %3392
  %4413 = fadd fast float %4410, %3393
  br label %4442

; <label>:4414                                    ; preds = %4366
  %4415 = icmp eq i32 %4310, 8
  br i1 %4415, label %4416, label %4442

; <label>:4416                                    ; preds = %4414
  %4417 = fmul fast float %4315, %4003
  %4418 = fmul fast float %4315, %4004
  %4419 = fadd fast float %4417, %3386
  %4420 = fadd fast float %4418, %3387
  %4421 = call float @dx.op.binary.f32(i32 36, float %3402, float %4005)  ; FMin(a,b)
  %4422 = fsub fast float %4421, %3402
  %4423 = fmul fast float %4422, %4318
  %4424 = fadd fast float %4423, %3402
  %4425 = fsub fast float %4002, %3401
  %4426 = fmul fast float %4321, %4425
  %4427 = fadd fast float %4426, %3401
  %4428 = fmul fast float %4324, %4108
  %4429 = fmul fast float %4324, %4109
  %4430 = fmul fast float %4324, %4110
  %4431 = fadd fast float %4428, %3397
  %4432 = fadd fast float %4429, %3398
  %4433 = fadd fast float %4430, %3399
  %4434 = fmul fast float %4327, %4163
  %4435 = fadd fast float %4434, %3403
  %4436 = fmul fast float %4330, %4160
  %4437 = fmul fast float %4330, %4161
  %4438 = fmul fast float %4330, %4162
  %4439 = fadd fast float %4436, %3391
  %4440 = fadd fast float %4437, %3392
  %4441 = fadd fast float %4438, %3393
  br label %4442

; <label>:4442                                    ; preds = %4416, %4414, %4368, %4332, %4301, %3701, %3405, %3385
  %4443 = phi float [ %3386, %4301 ], [ %3386, %3701 ], [ %3386, %3385 ], [ %3386, %3405 ], [ %4337, %4332 ], [ %4371, %4368 ], [ %3386, %4414 ], [ %4419, %4416 ]
  %4444 = phi float [ %3387, %4301 ], [ %3387, %3701 ], [ %3387, %3385 ], [ %3387, %3405 ], [ %4338, %4332 ], [ %4372, %4368 ], [ %3387, %4414 ], [ %4420, %4416 ]
  %4445 = phi float [ %4302, %4301 ], [ %3388, %3701 ], [ %3388, %3385 ], [ %3388, %3405 ], [ %4302, %4332 ], [ %4302, %4368 ], [ %4302, %4414 ], [ %4302, %4416 ]
  %4446 = phi float [ %4303, %4301 ], [ %3389, %3701 ], [ %3389, %3385 ], [ %3389, %3405 ], [ %4303, %4332 ], [ %4303, %4368 ], [ %4303, %4414 ], [ %4303, %4416 ]
  %4447 = phi float [ %4304, %4301 ], [ %3390, %3701 ], [ %3390, %3385 ], [ %3390, %3405 ], [ %4304, %4332 ], [ %4304, %4368 ], [ %4304, %4414 ], [ %4304, %4416 ]
  %4448 = phi float [ %3391, %4301 ], [ %3391, %3701 ], [ %3391, %3385 ], [ %3391, %3405 ], [ %4363, %4332 ], [ %4411, %4368 ], [ %3391, %4414 ], [ %4439, %4416 ]
  %4449 = phi float [ %3392, %4301 ], [ %3392, %3701 ], [ %3392, %3385 ], [ %3392, %3405 ], [ %4364, %4332 ], [ %4412, %4368 ], [ %3392, %4414 ], [ %4440, %4416 ]
  %4450 = phi float [ %3393, %4301 ], [ %3393, %3701 ], [ %3393, %3385 ], [ %3393, %3405 ], [ %4365, %4332 ], [ %4413, %4368 ], [ %3393, %4414 ], [ %4441, %4416 ]
  %4451 = phi float [ %4305, %4301 ], [ %3394, %3701 ], [ %3394, %3385 ], [ %3394, %3405 ], [ %4305, %4332 ], [ %4305, %4368 ], [ %4305, %4414 ], [ %4305, %4416 ]
  %4452 = phi float [ %4306, %4301 ], [ %3395, %3701 ], [ %3395, %3385 ], [ %3395, %3405 ], [ %4306, %4332 ], [ %4306, %4368 ], [ %4306, %4414 ], [ %4306, %4416 ]
  %4453 = phi float [ %4307, %4301 ], [ %3396, %3701 ], [ %3396, %3385 ], [ %3396, %3405 ], [ %4307, %4332 ], [ %4307, %4368 ], [ %4307, %4414 ], [ %4307, %4416 ]
  %4454 = phi float [ %3397, %4301 ], [ %3397, %3701 ], [ %3397, %3385 ], [ %3397, %3405 ], [ %4351, %4332 ], [ %4403, %4368 ], [ %3397, %4414 ], [ %4431, %4416 ]
  %4455 = phi float [ %3398, %4301 ], [ %3398, %3701 ], [ %3398, %3385 ], [ %3398, %3405 ], [ %4352, %4332 ], [ %4404, %4368 ], [ %3398, %4414 ], [ %4432, %4416 ]
  %4456 = phi float [ %3399, %4301 ], [ %3399, %3701 ], [ %3399, %3385 ], [ %3399, %3405 ], [ %4353, %4332 ], [ %4405, %4368 ], [ %3399, %4414 ], [ %4433, %4416 ]
  %4457 = phi float [ %4308, %4301 ], [ %3400, %3701 ], [ %3400, %3385 ], [ %3400, %3405 ], [ %4308, %4332 ], [ %4308, %4368 ], [ %4308, %4414 ], [ %4308, %4416 ]
  %4458 = phi float [ %3401, %4301 ], [ %3401, %3701 ], [ %3401, %3385 ], [ %3401, %3405 ], [ %4344, %4332 ], [ %4399, %4368 ], [ %3401, %4414 ], [ %4427, %4416 ]
  %4459 = phi float [ %3402, %4301 ], [ %3402, %3701 ], [ %3402, %3385 ], [ %3402, %3405 ], [ %4341, %4332 ], [ %4376, %4368 ], [ %3402, %4414 ], [ %4424, %4416 ]
  %4460 = phi float [ %3403, %4301 ], [ %3403, %3701 ], [ %3403, %3385 ], [ %3403, %3405 ], [ %4356, %4332 ], [ %4407, %4368 ], [ %3403, %4414 ], [ %4435, %4416 ]
  %4461 = phi float [ %4309, %4301 ], [ %3404, %3701 ], [ %3404, %3385 ], [ %3404, %3405 ], [ %4309, %4332 ], [ %4309, %4368 ], [ %4309, %4414 ], [ %4309, %4416 ]
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = call float @dx.op.dot2.f32(i32 54, float %4443, float %4444, float %4443, float %4444)  ; Dot2(ax,ay,bx,by)
  %4465 = fmul fast float %4464, 0x3FE3333340000000
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4466, float %4443, float %4444, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4468, %4443
  %4470 = fmul fast float %4468, %4444
  %4471 = fmul fast float %4466, %4468
  %4472 = fmul fast float %4471, %117
  %4473 = fmul fast float %4471, %118
  %4474 = fmul fast float %4471, %119
  %4475 = fmul fast float %4469, %82
  %4476 = fmul fast float %4469, %83
  %4477 = fmul fast float %4469, %84
  %4478 = fadd fast float %4472, %4475
  %4479 = fadd fast float %4473, %4476
  %4480 = fadd fast float %4474, %4477
  %4481 = fmul fast float %129, %4470
  %4482 = fmul fast float %130, %4470
  %4483 = fmul fast float %131, %4470
  %4484 = fadd fast float %4478, %4481
  %4485 = fadd fast float %4479, %4482
  %4486 = fadd fast float %4480, %4483
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4484, float %4485, float %4486, float %4484, float %4485, float %4486)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = call float @dx.op.unary.f32(i32 25, float %4487)  ; Rsqrt(value)
  %4489 = fmul fast float %4484, %4488
  %4490 = fmul fast float %4485, %4488
  %4491 = fmul fast float %4486, %4488
  %4492 = and i32 %63, 1
  %4493 = icmp eq i32 %4492, 0
  br i1 %4493, label %4494, label %5086

; <label>:4494                                    ; preds = %4442
  %4495 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4496 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4497 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4498 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4499 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4500 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4501 = fadd fast float %4495, %165
  %4502 = fadd fast float %4496, %166
  %4503 = fadd fast float %4497, %167
  %4504 = fadd fast float %4498, %165
  %4505 = fadd fast float %4499, %166
  %4506 = fadd fast float %4500, %167
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4507, 2
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4513 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4514 = fmul fast float %4508, %110
  %4515 = fmul fast float %4514, %4512
  %4516 = fmul fast float %4509, %111
  %4517 = fmul fast float %4516, %4513
  %4518 = fptoui float %4515 to i32
  %4519 = fptoui float %4517 to i32
  %4520 = fadd fast float %4508, -1.000000e+00
  %4521 = fadd fast float %4509, -1.000000e+00
  %4522 = fptoui float %4520 to i32
  %4523 = fptoui float %4521 to i32
  %4524 = call i32 @dx.op.binary.i32(i32 40, i32 %4518, i32 %4522)  ; UMin(a,b)
  %4525 = call i32 @dx.op.binary.i32(i32 40, i32 %4519, i32 %4523)  ; UMin(a,b)
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 2
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 3
  %4529 = fmul fast float %4527, %98
  %4530 = fsub fast float %4529, %4528
  %4531 = fadd fast float %4510, -1.000000e+00
  %4532 = call float @dx.op.binary.f32(i32 36, float %4530, float %4531)  ; FMin(a,b)
  %4533 = fptoui float %4532 to i32
  %4534 = fptoui float %4508 to i32
  %4535 = fptoui float %4509 to i32
  %4536 = mul i32 %4533, %4535
  %4537 = add i32 %4536, %4525
  %4538 = mul i32 %4537, %4534
  %4539 = add i32 %4538, %4524
  %4540 = shl i32 %4539, 2
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = and i32 %4542, 1023
  %4544 = lshr i32 %4542, 10
  %4545 = icmp eq i32 %4543, 0
  br i1 %4545, label %5049, label %4546

; <label>:4546                                    ; preds = %4494
  %4547 = and i32 %4542, 1023
  br label %4548

; <label>:4548                                    ; preds = %4680, %4546
  %4549 = phi i32 [ %4630, %4680 ], [ 0, %4546 ]
  %4550 = phi float [ %4681, %4680 ], [ 0.000000e+00, %4546 ]
  %4551 = phi float [ %4682, %4680 ], [ %4463, %4546 ]
  %4552 = phi float [ %4683, %4680 ], [ %4461, %4546 ]
  %4553 = phi float [ %4684, %4680 ], [ %4454, %4546 ]
  %4554 = phi float [ %4685, %4680 ], [ %4455, %4546 ]
  %4555 = phi float [ %4686, %4680 ], [ %4456, %4546 ]
  %4556 = phi float [ %4687, %4680 ], [ 0.000000e+00, %4546 ]
  %4557 = phi float [ %4688, %4680 ], [ 0.000000e+00, %4546 ]
  %4558 = phi float [ %4689, %4680 ], [ %4448, %4546 ]
  %4559 = phi float [ %4690, %4680 ], [ %4449, %4546 ]
  %4560 = phi float [ %4691, %4680 ], [ %4450, %4546 ]
  %4561 = phi float [ %4692, %4680 ], [ %4445, %4546 ]
  %4562 = phi float [ %4693, %4680 ], [ %4446, %4546 ]
  %4563 = phi float [ %4694, %4680 ], [ %4447, %4546 ]
  %4564 = phi float [ %4695, %4680 ], [ %4489, %4546 ]
  %4565 = phi float [ %4696, %4680 ], [ %4490, %4546 ]
  %4566 = phi float [ %4697, %4680 ], [ %4491, %4546 ]
  %4567 = phi float [ %4698, %4680 ], [ %4459, %4546 ]
  %4568 = phi float [ %4699, %4680 ], [ %4458, %4546 ]
  %4569 = phi float [ %4700, %4680 ], [ 0.000000e+00, %4546 ]
  %4570 = phi float [ %4701, %4680 ], [ %4457, %4546 ]
  %4571 = phi float [ %4702, %4680 ], [ %4451, %4546 ]
  %4572 = phi float [ %4703, %4680 ], [ %4452, %4546 ]
  %4573 = phi float [ %4704, %4680 ], [ %4453, %4546 ]
  %4574 = add nuw nsw i32 %4549, %4544
  %4575 = shl i32 %4574, 2
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = shl i32 %4577, 8
  %4579 = or i32 %4578, 48
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4578, 64
  %4586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.i32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.i32 %4586, 1
  %4589 = or i32 %4578, 80
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 3
  %4593 = or i32 %4578, 96
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = or i32 %4578, 112
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4602 = or i32 %4578, 128
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = or i32 %4578, 144
  %4609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.ResRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.ResRet.f32 %4609, 2
  %4613 = extractvalue %dx.types.ResRet.f32 %4609, 3
  %4614 = or i32 %4578, 160
  %4615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = or i32 %4578, 192
  %4621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.i32 %4621, 0
  %4623 = or i32 %4578, 208
  %4624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = or i32 %4578, 248
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = add nuw nsw i32 %4549, 1
  %4631 = bitcast float %4584 to i32
  %4632 = and i32 %4631, 512
  %4633 = icmp eq i32 %4632, 0
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = call float @dx.op.dot4.f32(i32 56, float %4635, float %4636, float %4637, float %4638, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4640 = or i32 %4578, 16
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.ResRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.ResRet.f32 %4641, 2
  %4645 = extractvalue %dx.types.ResRet.f32 %4641, 3
  %4646 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4647 = or i32 %4578, 32
  %4648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4647, i32 undef)  ; BufferLoad(srv,index,wot)
  %4649 = extractvalue %dx.types.ResRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.ResRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.ResRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.ResRet.f32 %4648, 3
  %4653 = call float @dx.op.dot4.f32(i32 56, float %4649, float %4650, float %4651, float %4652, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4654 = call float @dx.op.unary.f32(i32 27, float %4639)  ; Round_ni(value)
  %4655 = call float @dx.op.unary.f32(i32 6, float %4654)  ; FAbs(value)
  %4656 = call float @dx.op.unary.f32(i32 27, float %4646)  ; Round_ni(value)
  %4657 = call float @dx.op.unary.f32(i32 6, float %4656)  ; FAbs(value)
  %4658 = call float @dx.op.unary.f32(i32 6, float %4653)  ; FAbs(value)
  %4659 = call float @dx.op.unary.f32(i32 27, float %4658)  ; Round_ni(value)
  %4660 = fadd fast float %4657, %4655
  %4661 = fadd fast float %4660, %4659
  %4662 = fcmp fast oeq float %4661, 0.000000e+00
  %4663 = call float @dx.op.dot4.f32(i32 56, float %4635, float %4636, float %4637, float %4638, float %4501, float %4502, float %4503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4664 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %4501, float %4502, float %4503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4665 = call float @dx.op.dot4.f32(i32 56, float %4635, float %4636, float %4637, float %4638, float %4504, float %4505, float %4506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4666 = call float @dx.op.dot4.f32(i32 56, float %4642, float %4643, float %4644, float %4645, float %4504, float %4505, float %4506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4667 = fsub fast float %4663, %4639
  %4668 = fsub fast float %4665, %4639
  %4669 = fsub fast float %4664, %4646
  %4670 = fsub fast float %4666, %4646
  %4671 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 2
  %4674 = fadd fast float %4673, %4671
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4672, 0
  %4677 = fcmp fast ogt float %4675, %4676
  %4678 = and i1 %4662, %4677
  %4679 = and i1 %4633, %4678
  br i1 %4679, label %4706, label %4680

; <label>:4680                                    ; preds = %5035, %4787, %4706, %4548
  %4681 = phi float [ %4550, %4706 ], [ %4790, %4787 ], [ %4790, %5035 ], [ %4550, %4548 ]
  %4682 = phi float [ %4551, %4706 ], [ %4551, %4787 ], [ %5011, %5035 ], [ %4551, %4548 ]
  %4683 = phi float [ %4552, %4706 ], [ %4552, %4787 ], [ %5009, %5035 ], [ %4552, %4548 ]
  %4684 = phi float [ %4553, %4706 ], [ %4553, %4787 ], [ %4987, %5035 ], [ %4553, %4548 ]
  %4685 = phi float [ %4554, %4706 ], [ %4554, %4787 ], [ %4988, %5035 ], [ %4554, %4548 ]
  %4686 = phi float [ %4555, %4706 ], [ %4555, %4787 ], [ %4989, %5035 ], [ %4555, %4548 ]
  %4687 = phi float [ %4556, %4706 ], [ %4556, %4787 ], [ %4914, %5035 ], [ %4556, %4548 ]
  %4688 = phi float [ %4557, %4706 ], [ %4557, %4787 ], [ %4912, %5035 ], [ %4557, %4548 ]
  %4689 = phi float [ %4558, %4706 ], [ %4558, %4787 ], [ %4957, %5035 ], [ %4558, %4548 ]
  %4690 = phi float [ %4559, %4706 ], [ %4559, %4787 ], [ %4958, %5035 ], [ %4559, %4548 ]
  %4691 = phi float [ %4560, %4706 ], [ %4560, %4787 ], [ %4959, %5035 ], [ %4560, %4548 ]
  %4692 = phi float [ %4561, %4706 ], [ %4561, %4787 ], [ %5045, %5035 ], [ %4561, %4548 ]
  %4693 = phi float [ %4562, %4706 ], [ %4562, %4787 ], [ %5046, %5035 ], [ %4562, %4548 ]
  %4694 = phi float [ %4563, %4706 ], [ %4563, %4787 ], [ %5047, %5035 ], [ %4563, %4548 ]
  %4695 = phi float [ %4564, %4706 ], [ %4564, %4787 ], [ %4893, %5035 ], [ %4564, %4548 ]
  %4696 = phi float [ %4565, %4706 ], [ %4565, %4787 ], [ %4894, %5035 ], [ %4565, %4548 ]
  %4697 = phi float [ %4566, %4706 ], [ %4566, %4787 ], [ %4895, %5035 ], [ %4566, %4548 ]
  %4698 = phi float [ %4567, %4706 ], [ %4567, %4787 ], [ %4967, %5035 ], [ %4567, %4548 ]
  %4699 = phi float [ %4568, %4706 ], [ %4568, %4787 ], [ %4964, %5035 ], [ %4568, %4548 ]
  %4700 = phi float [ %4569, %4706 ], [ %4569, %4787 ], [ %4961, %5035 ], [ %4569, %4548 ]
  %4701 = phi float [ %4570, %4706 ], [ %4570, %4787 ], [ %4910, %5035 ], [ %4570, %4548 ]
  %4702 = phi float [ %4571, %4706 ], [ %4571, %4787 ], [ %4905, %5035 ], [ %4571, %4548 ]
  %4703 = phi float [ %4572, %4706 ], [ %4572, %4787 ], [ %4906, %5035 ], [ %4572, %4548 ]
  %4704 = phi float [ %4573, %4706 ], [ %4573, %4787 ], [ %4907, %5035 ], [ %4573, %4548 ]
  %4705 = icmp eq i32 %4630, %4547
  br i1 %4705, label %5048, label %4548

; <label>:4706                                    ; preds = %4548
  %4707 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4708 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4709 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4710 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4711 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4712 = extractvalue %dx.types.ResRet.i32 %4586, 3
  %4713 = extractvalue %dx.types.ResRet.i32 %4586, 2
  %4714 = add i32 %4712, 0
  %4715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4714, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4717 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4715, %dx.types.Handle %4716, float %4639, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float %4667, float %4669, float undef, float %4668, float %4670, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = fmul fast float %4718, %4711
  %4720 = fadd fast float %4719, %4710
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4639, %4595
  %4723 = call float @dx.op.tertiary.f32(i32 46, float %4596, float %4646, float %4722)  ; FMad(a,b,c)
  %4724 = fadd fast float %4723, %4709
  %4725 = fmul fast float %4639, %4597
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %4598, float %4646, float %4725)  ; FMad(a,b,c)
  %4727 = fadd fast float %4726, %4708
  %4728 = fmul fast float %4667, %4595
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4596, float %4669, float %4728)  ; FMad(a,b,c)
  %4730 = fmul fast float %4667, %4597
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4598, float %4669, float %4730)  ; FMad(a,b,c)
  %4732 = fmul fast float %4668, %4595
  %4733 = call float @dx.op.tertiary.f32(i32 46, float %4596, float %4670, float %4732)  ; FMad(a,b,c)
  %4734 = fmul fast float %4668, %4597
  %4735 = call float @dx.op.tertiary.f32(i32 46, float %4598, float %4670, float %4734)  ; FMad(a,b,c)
  %4736 = add i32 %4713, 0
  %4737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4736, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4737, %dx.types.Handle %4716, float %4724, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4731, float undef, float %4733, float %4735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = and i32 %4631, 1024
  %4741 = icmp ne i32 %4740, 0
  %4742 = fcmp fast ogt float %4739, 0x3FE0101020000000
  %4743 = uitofp i1 %4742 to float
  %4744 = select i1 %4741, float %4743, float %4739
  %4745 = and i32 %4631, 8192
  %4746 = icmp ne i32 %4745, 0
  %4747 = select i1 %4746, float %4707, float 1.000000e+00
  %4748 = fmul fast float %4639, 2.000000e+00
  %4749 = fadd fast float %4748, -1.000000e+00
  %4750 = call float @dx.op.unary.f32(i32 6, float %4749)  ; FAbs(value)
  %4751 = fmul fast float %4750, %4628
  %4752 = fsub fast float %4751, %4628
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fmul fast float %4646, 2.000000e+00
  %4755 = fadd fast float %4754, -1.000000e+00
  %4756 = call float @dx.op.unary.f32(i32 6, float %4755)  ; FAbs(value)
  %4757 = fmul fast float %4756, %4629
  %4758 = fsub fast float %4757, %4629
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4658, %4591
  %4761 = fsub fast float %4760, %4591
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4721, %4747
  %4764 = fmul fast float %4763, %4718
  %4765 = fmul fast float %4764, %4753
  %4766 = fmul fast float %4765, %4744
  %4767 = fmul fast float %4766, %4759
  %4768 = fmul fast float %4767, %4762
  %4769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4769, 1
  %4771 = extractvalue %dx.types.CBufRet.f32 %4769, 0
  %4772 = fsub fast float %4675, %4771
  %4773 = fmul fast float %4772, %4770
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = fmul fast float %4768, %4592
  %4776 = fadd fast float %4768, %4592
  %4777 = fmul fast float %4776, %4601
  %4778 = fsub fast float %4777, %4601
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = and i32 %4631, 128
  %4781 = icmp ne i32 %4780, 0
  %4782 = select i1 %4781, float %4779, float %4775
  %4783 = fmul fast float %4782, %4774
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 0
  %4786 = fcmp fast ugt float %4783, %4785
  br i1 %4786, label %4787, label %4680

; <label>:4787                                    ; preds = %4706
  %4788 = select i1 %4746, float %4783, float 0.000000e+00
  %4789 = fadd fast float %4788, %4550
  %4790 = call float @dx.op.unary.f32(i32 7, float %4789)  ; Saturate(value)
  br i1 %4746, label %4680, label %4791

; <label>:4791                                    ; preds = %4787
  %4792 = and i32 %4631, 4
  %4793 = and i32 %4631, 8
  %4794 = add i32 %4587, 0
  %4795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4795, %dx.types.Handle %4796, float %4724, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4731, float undef, float %4733, float %4735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4802 = bitcast float %4613 to i32
  %4803 = and i32 %4802, 255
  %4804 = uitofp i32 %4803 to float
  %4805 = lshr i32 %4802, 8
  %4806 = and i32 %4805, 255
  %4807 = uitofp i32 %4806 to float
  %4808 = fmul fast float %4801, %4804
  %4809 = fadd fast float %4808, %4807
  %4810 = fmul fast float %4809, 0x3F70101000000000
  %4811 = add i32 %4588, 0
  %4812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4812, %dx.types.Handle %4796, float %4724, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4731, float undef, float %4733, float %4735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.ResRet.f32 %4813, 1
  %4816 = extractvalue %dx.types.ResRet.f32 %4813, 2
  %4817 = extractvalue %dx.types.ResRet.f32 %4813, 3
  %4818 = bitcast float %4607 to i32
  %4819 = and i32 %4818, 255
  %4820 = uitofp i32 %4819 to float
  %4821 = lshr i32 %4818, 8
  %4822 = and i32 %4821, 255
  %4823 = uitofp i32 %4822 to float
  %4824 = lshr i32 %4818, 16
  %4825 = and i32 %4824, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = fmul fast float %4826, 0x3F70101000000000
  %4828 = fmul fast float %4814, %4820
  %4829 = fadd fast float %4828, %4823
  %4830 = fmul fast float %4829, 0x3F70101000000000
  %4831 = fadd fast float %4815, -5.000000e-01
  %4832 = fadd fast float %4817, -5.000000e-01
  %4833 = fmul fast float %4831, %4827
  %4834 = fmul fast float %4832, %4827
  %4835 = fadd fast float %4833, 5.000000e-01
  %4836 = fadd fast float %4834, 5.000000e-01
  %4837 = fmul fast float %4798, %4616
  %4838 = fmul fast float %4799, %4617
  %4839 = fmul fast float %4800, %4618
  %4840 = fmul fast float %4835, 2.000000e+00
  %4841 = fadd fast float %4840, -1.000000e+00
  %4842 = fmul fast float %4836, 2.000000e+00
  %4843 = fadd fast float %4842, -1.000000e+00
  %4844 = fadd fast float %4841, %4843
  %4845 = fmul fast float %4844, 5.000000e-01
  %4846 = fsub fast float %4841, %4843
  %4847 = fmul fast float %4846, 5.000000e-01
  %4848 = call float @dx.op.unary.f32(i32 6, float %4845)  ; FAbs(value)
  %4849 = fsub fast float 1.000000e+00, %4848
  %4850 = call float @dx.op.unary.f32(i32 6, float %4847)  ; FAbs(value)
  %4851 = fsub fast float %4849, %4850
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4847, float %4851, float %4845, float %4847, float %4851)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 25, float %4852)  ; Rsqrt(value)
  %4854 = fmul fast float %4845, %4853
  %4855 = fmul fast float %4847, %4853
  %4856 = fmul fast float %4853, %4851
  %4857 = fmul fast float %4856, %4581
  %4858 = fmul fast float %4856, %4582
  %4859 = fmul fast float %4856, %4583
  %4860 = fmul fast float %4854, %4604
  %4861 = fmul fast float %4854, %4605
  %4862 = fmul fast float %4854, %4606
  %4863 = fadd fast float %4860, %4857
  %4864 = fadd fast float %4861, %4858
  %4865 = fadd fast float %4862, %4859
  %4866 = fmul fast float %4855, %4610
  %4867 = fmul fast float %4855, %4611
  %4868 = fmul fast float %4855, %4612
  %4869 = fadd fast float %4863, %4866
  %4870 = fadd fast float %4864, %4867
  %4871 = fadd fast float %4865, %4868
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4869, float %4870, float %4871)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 25, float %4872)  ; Rsqrt(value)
  %4874 = fmul fast float %4869, %4873
  %4875 = fmul fast float %4870, %4873
  %4876 = fmul fast float %4871, %4873
  %4877 = icmp ne i32 %4793, 0
  %4878 = select i1 %4877, float 1.000000e+00, float 0.000000e+00
  %4879 = fmul fast float %4783, %4878
  %4880 = and i32 %4631, 1
  %4881 = icmp eq i32 %4880, 0
  br i1 %4881, label %4882, label %4886

; <label>:4882                                    ; preds = %4791
  %4883 = fsub fast float %4874, %4564
  %4884 = fsub fast float %4875, %4565
  %4885 = fsub fast float %4876, %4566
  br label %4886

; <label>:4886                                    ; preds = %4882, %4791
  %4887 = phi float [ %4883, %4882 ], [ %4874, %4791 ]
  %4888 = phi float [ %4884, %4882 ], [ %4875, %4791 ]
  %4889 = phi float [ %4885, %4882 ], [ %4876, %4791 ]
  %4890 = fmul float %4889, %4879
  %4891 = fmul float %4888, %4879
  %4892 = fmul float %4887, %4879
  %4893 = fadd fast float %4892, %4564
  %4894 = fadd fast float %4891, %4565
  %4895 = fadd fast float %4890, %4566
  %4896 = icmp ne i32 %4792, 0
  %4897 = select i1 %4896, float 1.000000e+00, float 0.000000e+00
  %4898 = fmul fast float %4783, %4897
  %4899 = fsub fast float %4837, %4571
  %4900 = fsub fast float %4838, %4572
  %4901 = fsub fast float %4839, %4573
  %4902 = fmul fast float %4899, %4898
  %4903 = fmul fast float %4900, %4898
  %4904 = fmul fast float %4901, %4898
  %4905 = fadd fast float %4902, %4571
  %4906 = fadd fast float %4903, %4572
  %4907 = fadd fast float %4904, %4573
  %4908 = fsub fast float %4810, %4570
  %4909 = fmul fast float %4908, %4898
  %4910 = fadd fast float %4909, %4570
  %4911 = fmul fast float %4898, %4557
  %4912 = fsub fast float %4557, %4911
  %4913 = fmul fast float %4898, %4556
  %4914 = fsub fast float %4556, %4913
  %4915 = bitcast float %4625 to i32
  %4916 = lshr i32 %4915, 16
  %4917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4916)  ; LegacyF16ToF32(value)
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = and i32 %4919, 1
  %4921 = icmp eq i32 %4920, 0
  br i1 %4921, label %4922, label %4947

; <label>:4922                                    ; preds = %4886
  %4923 = fadd fast float %4810, 0xBFB99999A0000000
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fmul fast float %4924, 0x3FF1C71C80000000
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, %4837
  %4929 = fmul fast float %4927, %4838
  %4930 = fmul fast float %4927, %4839
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = call float @dx.op.binary.f32(i32 35, float %4932, float %4933)  ; FMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4931, float %4934)  ; FMax(a,b)
  %4936 = fcmp fast ogt float %4935, 0.000000e+00
  %4937 = bitcast float %4935 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = select i1 %4936, float %4939, float 0.000000e+00
  %4941 = fmul fast float %4931, %4917
  %4942 = fmul fast float %4932, %4917
  %4943 = fmul fast float %4933, %4917
  %4944 = fmul fast float %4941, %4940
  %4945 = fmul fast float %4942, %4940
  %4946 = fmul fast float %4943, %4940
  br label %4947

; <label>:4947                                    ; preds = %4922, %4886
  %4948 = phi float [ %4917, %4886 ], [ %4944, %4922 ]
  %4949 = phi float [ %4917, %4886 ], [ %4945, %4922 ]
  %4950 = phi float [ %4917, %4886 ], [ %4946, %4922 ]
  %4951 = fsub fast float %4948, %4558
  %4952 = fsub fast float %4949, %4559
  %4953 = fsub fast float %4950, %4560
  %4954 = fmul fast float %4951, %4898
  %4955 = fmul fast float %4952, %4898
  %4956 = fmul fast float %4953, %4898
  %4957 = fadd fast float %4954, %4558
  %4958 = fadd fast float %4955, %4559
  %4959 = fadd fast float %4956, %4560
  %4960 = fadd fast float %4783, %4569
  %4961 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4962 = fsub fast float %4830, %4568
  %4963 = fmul fast float %4962, %4879
  %4964 = fadd fast float %4963, %4568
  %4965 = fsub fast float %4816, %4567
  %4966 = fmul fast float %4965, %4879
  %4967 = fadd fast float %4966, %4567
  br i1 %4881, label %4976, label %4968

; <label>:4968                                    ; preds = %4947
  %4969 = and i32 %4631, 32768
  %4970 = icmp eq i32 %4969, 0
  br i1 %4970, label %4986, label %4971

; <label>:4971                                    ; preds = %4968
  %4972 = fmul fast float %4879, 1.270000e+02
  %4973 = fadd fast float %4972, %4553
  %4974 = fadd fast float %4972, %4554
  %4975 = fadd fast float %4972, %4555
  br label %4986

; <label>:4976                                    ; preds = %4947
  %4977 = fsub fast float 1.270000e+02, %4553
  %4978 = fsub fast float 1.270000e+02, %4554
  %4979 = fsub fast float 1.270000e+02, %4555
  %4980 = fmul fast float %4879, %4977
  %4981 = fmul fast float %4879, %4978
  %4982 = fmul fast float %4879, %4979
  %4983 = fadd fast float %4980, %4553
  %4984 = fadd fast float %4981, %4554
  %4985 = fadd fast float %4982, %4555
  br label %4986

; <label>:4986                                    ; preds = %4976, %4971, %4968
  %4987 = phi float [ %4973, %4971 ], [ %4553, %4968 ], [ %4983, %4976 ]
  %4988 = phi float [ %4974, %4971 ], [ %4554, %4968 ], [ %4984, %4976 ]
  %4989 = phi float [ %4975, %4971 ], [ %4555, %4968 ], [ %4985, %4976 ]
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4838, float %4839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = fmul fast float %4993, %4990
  %4995 = fadd fast float %4994, %4992
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = bitcast float %4619 to i32
  %4998 = and i32 %4997, 65535
  %4999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4998)  ; LegacyF16ToF32(value)
  %5000 = lshr i32 %4997, 16
  %5001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5000)  ; LegacyF16ToF32(value)
  %5002 = fcmp fast oge float %4999, 0.000000e+00
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = select i1 %5002, float %4999, float %5004
  %5006 = fadd fast float %5005, %5001
  %5007 = fsub fast float %4996, %4552
  %5008 = fmul fast float %5007, %4783
  %5009 = fadd fast float %5008, %4552
  %5010 = fmul fast float %5006, %4783
  %5011 = call float @dx.op.binary.f32(i32 35, float %4551, float %5010)  ; FMax(a,b)
  %5012 = and i32 %4631, 16
  %5013 = icmp eq i32 %5012, 0
  br i1 %5013, label %5035, label %5014

; <label>:5014                                    ; preds = %4986
  %5015 = add i32 %4622, 0
  %5016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5015, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5016, %dx.types.Handle %4796, float %4724, float %4727, float undef, float undef, i32 0, i32 0, i32 undef, float %4729, float %4731, float undef, float %4733, float %4735, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.ResRet.f32 %5017, 2
  %5021 = and i32 %4915, 65535
  %5022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5021)  ; LegacyF16ToF32(value)
  %5023 = fmul fast float %5018, %4616
  %5024 = fmul fast float %5019, %4617
  %5025 = fmul fast float %5020, %4618
  %5026 = and i32 %4631, 16384
  %5027 = icmp ne i32 %5026, 0
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 0
  %5030 = select i1 %5027, float %5029, float 1.000000e+00
  %5031 = fmul fast float %5030, %5022
  %5032 = fmul fast float %5023, %5031
  %5033 = fmul fast float %5024, %5031
  %5034 = fmul fast float %5025, %5031
  br label %5035

; <label>:5035                                    ; preds = %5014, %4986
  %5036 = phi float [ %5032, %5014 ], [ 0.000000e+00, %4986 ]
  %5037 = phi float [ %5033, %5014 ], [ 0.000000e+00, %4986 ]
  %5038 = phi float [ %5034, %5014 ], [ 0.000000e+00, %4986 ]
  %5039 = fsub fast float %5036, %4561
  %5040 = fsub fast float %5037, %4562
  %5041 = fsub fast float %5038, %4563
  %5042 = fmul fast float %5039, %4783
  %5043 = fmul fast float %5040, %4783
  %5044 = fmul fast float %5041, %4783
  %5045 = fadd fast float %5042, %4561
  %5046 = fadd fast float %5043, %4562
  %5047 = fadd fast float %5044, %4563
  br label %4680

; <label>:5048                                    ; preds = %4680
  br label %5049

; <label>:5049                                    ; preds = %5048, %4494
  %5050 = phi float [ 0.000000e+00, %4494 ], [ %4681, %5048 ]
  %5051 = phi float [ %4463, %4494 ], [ %4682, %5048 ]
  %5052 = phi float [ %4461, %4494 ], [ %4683, %5048 ]
  %5053 = phi float [ %4454, %4494 ], [ %4684, %5048 ]
  %5054 = phi float [ %4455, %4494 ], [ %4685, %5048 ]
  %5055 = phi float [ %4456, %4494 ], [ %4686, %5048 ]
  %5056 = phi float [ 0.000000e+00, %4494 ], [ %4687, %5048 ]
  %5057 = phi float [ 0.000000e+00, %4494 ], [ %4688, %5048 ]
  %5058 = phi float [ %4448, %4494 ], [ %4689, %5048 ]
  %5059 = phi float [ %4449, %4494 ], [ %4690, %5048 ]
  %5060 = phi float [ %4450, %4494 ], [ %4691, %5048 ]
  %5061 = phi float [ %4445, %4494 ], [ %4692, %5048 ]
  %5062 = phi float [ %4446, %4494 ], [ %4693, %5048 ]
  %5063 = phi float [ %4447, %4494 ], [ %4694, %5048 ]
  %5064 = phi float [ %4489, %4494 ], [ %4695, %5048 ]
  %5065 = phi float [ %4490, %4494 ], [ %4696, %5048 ]
  %5066 = phi float [ %4491, %4494 ], [ %4697, %5048 ]
  %5067 = phi float [ %4459, %4494 ], [ %4698, %5048 ]
  %5068 = phi float [ %4458, %4494 ], [ %4699, %5048 ]
  %5069 = phi float [ 0.000000e+00, %4494 ], [ %4700, %5048 ]
  %5070 = phi float [ %4457, %4494 ], [ %4701, %5048 ]
  %5071 = phi float [ %4451, %4494 ], [ %4702, %5048 ]
  %5072 = phi float [ %4452, %4494 ], [ %4703, %5048 ]
  %5073 = phi float [ %4453, %4494 ], [ %4704, %5048 ]
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %5064, float %5065, float %5066)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5075, %5064
  %5077 = fmul fast float %5075, %5065
  %5078 = fmul fast float %5075, %5066
  %5079 = fadd fast float %5069, %1286
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5082 = call float @dx.op.unary.f32(i32 25, float %5081)  ; Rsqrt(value)
  %5083 = fmul fast float %5082, %5076
  %5084 = fmul fast float %5082, %5077
  %5085 = fmul fast float %5082, %5078
  br label %5086

; <label>:5086                                    ; preds = %5049, %4442
  %5087 = phi float [ %5071, %5049 ], [ %4451, %4442 ]
  %5088 = phi float [ %5072, %5049 ], [ %4452, %4442 ]
  %5089 = phi float [ %5073, %5049 ], [ %4453, %4442 ]
  %5090 = phi float [ %5061, %5049 ], [ %4445, %4442 ]
  %5091 = phi float [ %5062, %5049 ], [ %4446, %4442 ]
  %5092 = phi float [ %5063, %5049 ], [ %4447, %4442 ]
  %5093 = phi float [ %5058, %5049 ], [ %4448, %4442 ]
  %5094 = phi float [ %5059, %5049 ], [ %4449, %4442 ]
  %5095 = phi float [ %5060, %5049 ], [ %4450, %4442 ]
  %5096 = phi float [ %5053, %5049 ], [ %4454, %4442 ]
  %5097 = phi float [ %5054, %5049 ], [ %4455, %4442 ]
  %5098 = phi float [ %5055, %5049 ], [ %4456, %4442 ]
  %5099 = phi float [ %5083, %5049 ], [ %4489, %4442 ]
  %5100 = phi float [ %5084, %5049 ], [ %4490, %4442 ]
  %5101 = phi float [ %5085, %5049 ], [ %4491, %4442 ]
  %5102 = phi float [ %5070, %5049 ], [ %4457, %4442 ]
  %5103 = phi float [ %5080, %5049 ], [ %1286, %4442 ]
  %5104 = phi float [ %5068, %5049 ], [ %4458, %4442 ]
  %5105 = phi float [ %5067, %5049 ], [ %4459, %4442 ]
  %5106 = phi float [ %5057, %5049 ], [ 0.000000e+00, %4442 ]
  %5107 = phi float [ %5056, %5049 ], [ 0.000000e+00, %4442 ]
  %5108 = phi float [ %5050, %5049 ], [ 0.000000e+00, %4442 ]
  %5109 = phi float [ %5051, %5049 ], [ %4463, %4442 ]
  %5110 = phi float [ %5052, %5049 ], [ %4461, %4442 ]
  %5111 = add i32 %61, 392
  %5112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5111, i32 undef)  ; BufferLoad(srv,index,wot)
  %5113 = extractvalue %dx.types.ResRet.i32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.i32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.i32 %5112, 2
  %5116 = extractvalue %dx.types.ResRet.i32 %5112, 3
  %5117 = bitcast i32 %5113 to float
  %5118 = bitcast i32 %5114 to float
  %5119 = bitcast i32 %5115 to float
  %5120 = bitcast i32 %5116 to float
  %5121 = fsub fast float %5087, %5117
  %5122 = fsub fast float %5088, %5118
  %5123 = fsub fast float %5089, %5119
  %5124 = fmul fast float %5121, %199
  %5125 = fmul fast float %5122, %199
  %5126 = fmul fast float %5123, %199
  %5127 = fadd fast float %5124, %5117
  %5128 = fadd fast float %5125, %5118
  %5129 = fadd fast float %5126, %5119
  %5130 = fsub fast float %5103, %5120
  %5131 = fmul fast float %5130, %199
  %5132 = fadd fast float %5131, %5120
  %5133 = fadd fast float %5102, 0xBFB99999A0000000
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fmul fast float %5134, 0x3FF1C71C80000000
  %5136 = call float @dx.op.binary.f32(i32 36, float %5102, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5137 = fsub fast float 1.000000e+00, %5135
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5127, %5138
  %5140 = fmul fast float %5128, %5138
  %5141 = fmul fast float %5129, %5138
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5145 = fmul fast float %5127, %5135
  %5146 = fmul fast float %5128, %5135
  %5147 = fmul fast float %5129, %5135
  %5148 = fadd fast float %5145, %5136
  %5149 = fadd fast float %5146, %5136
  %5150 = fadd fast float %5147, %5136
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = and i32 %5156, 1
  %5158 = icmp eq i32 %5157, 0
  br i1 %5158, label %5173, label %5159

; <label>:5159                                    ; preds = %5086
  %5160 = call float @dx.op.binary.f32(i32 35, float %5143, float %5144)  ; FMax(a,b)
  %5161 = call float @dx.op.binary.f32(i32 35, float %5142, float %5160)  ; FMax(a,b)
  %5162 = fcmp fast ogt float %5161, 0.000000e+00
  %5163 = bitcast float %5161 to i32
  %5164 = sub nsw i32 2129859010, %5163
  %5165 = bitcast i32 %5164 to float
  %5166 = select i1 %5162, float %5165, float 0.000000e+00
  %5167 = fmul fast float %5142, %5093
  %5168 = fmul fast float %5143, %5094
  %5169 = fmul fast float %5144, %5095
  %5170 = fmul fast float %5167, %5166
  %5171 = fmul fast float %5168, %5166
  %5172 = fmul fast float %5169, %5166
  br label %5173

; <label>:5173                                    ; preds = %5159, %5086
  %5174 = phi float [ %5170, %5159 ], [ %5093, %5086 ]
  %5175 = phi float [ %5171, %5159 ], [ %5094, %5086 ]
  %5176 = phi float [ %5172, %5159 ], [ %5095, %5086 ]
  %5177 = call float @dx.op.binary.f32(i32 36, float %5096, float 1.270000e+02)  ; FMin(a,b)
  %5178 = call float @dx.op.binary.f32(i32 36, float %5097, float 1.270000e+02)  ; FMin(a,b)
  %5179 = call float @dx.op.binary.f32(i32 36, float %5098, float 1.270000e+02)  ; FMin(a,b)
  %5180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.i32 %5180, 3
  %5182 = and i32 %5181, 8
  %5183 = icmp ne i32 %5182, 0
  %5184 = call float @dx.op.binary.f32(i32 35, float %5142, float %5127)  ; FMax(a,b)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5143, float %5127)  ; FMax(a,b)
  %5186 = call float @dx.op.binary.f32(i32 35, float %5144, float %5127)  ; FMax(a,b)
  %5187 = call float @dx.op.dot3.f32(i32 55, float %5142, float %5143, float %5144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = select i1 %259, float %5127, float %5142
  %5189 = select i1 %259, float %5187, float %5143
  %5190 = select i1 %259, float 1.000000e+00, float %5144
  %5191 = select i1 %5183, float %5184, float %5188
  %5192 = select i1 %5183, float %5185, float %5189
  %5193 = select i1 %5183, float %5186, float %5190
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = select i1 %259, float %5194, float %5174
  %5196 = select i1 %259, float %5194, float %5175
  %5197 = select i1 %259, float %5194, float %5176
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5202 = fadd fast float %5199, %165
  %5203 = fadd fast float %5200, %166
  %5204 = fadd fast float %5201, %167
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5208 = fsub fast float %5202, %5206
  %5209 = fsub fast float %5203, %5207
  %5210 = fmul fast float %5208, %5208
  %5211 = fmul fast float %5209, %5209
  %5212 = fadd fast float %5210, %5211
  %5213 = call float @dx.op.unary.f32(i32 24, float %5212)  ; Sqrt(value)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5215 = fcmp fast olt float %5213, %5214
  br i1 %5215, label %5216, label %5283

; <label>:5216                                    ; preds = %5173
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 0
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5222 = extractvalue %dx.types.CBufRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.CBufRet.f32 %5217, 1
  %5224 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5225 = extractvalue %dx.types.CBufRet.f32 %5221, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5227 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5228 = extractvalue %dx.types.CBufRet.f32 %5221, 3
  %5229 = fadd fast float %5226, %5202
  %5230 = fadd fast float %5227, %5203
  %5231 = fadd fast float %5228, %5204
  %5232 = fmul fast float %5229, %5218
  %5233 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5220, float %5232)  ; FMad(a,b,c)
  %5234 = call float @dx.op.tertiary.f32(i32 46, float %5231, float %5222, float %5233)  ; FMad(a,b,c)
  %5235 = fmul fast float %5229, %5223
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5224, float %5235)  ; FMad(a,b,c)
  %5237 = call float @dx.op.tertiary.f32(i32 46, float %5231, float %5225, float %5236)  ; FMad(a,b,c)
  %5238 = fsub fast float %5234, %5226
  %5239 = fsub fast float %5237, %5227
  %5240 = fsub fast float %5238, %5206
  %5241 = fadd fast float %5240, %5214
  %5242 = fsub fast float %5239, %5207
  %5243 = fadd fast float %5242, %5214
  %5244 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5245 = fmul fast float %5241, %5244
  %5246 = fmul fast float %5243, %5244
  %5247 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5248 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5249 = fsub fast float 1.000000e+00, %5247
  %5250 = fsub fast float 1.000000e+00, %5248
  %5251 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = fcmp fast ugt float %5252, 0.000000e+00
  br i1 %5253, label %5254, label %5557

; <label>:5254                                    ; preds = %5216
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5257 = fmul fast float %5256, %5252
  %5258 = extractvalue %dx.types.CBufRet.f32 %5255, 3
  %5259 = fadd fast float %5258, %5257
  %5260 = extractvalue %dx.types.CBufRet.f32 %5221, 2
  %5261 = fadd fast float %5259, %5228
  %5262 = fmul fast float %5234, %5222
  %5263 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5225, float %5262)  ; FMad(a,b,c)
  %5264 = call float @dx.op.tertiary.f32(i32 46, float %5261, float %5260, float %5263)  ; FMad(a,b,c)
  %5265 = fsub fast float %5264, %5228
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5268 = fsub fast float %5265, %5267
  %5269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %55, float %5249, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = fadd fast float %5274, %5270
  %5278 = fmul fast float %5277, 0x3F847AE140000000
  %5279 = fadd fast float %5275, %5271
  %5280 = fmul fast float %5279, 0x3F847AE140000000
  %5281 = fadd fast float %5276, %5272
  %5282 = fmul fast float %5281, 0x3F847AE140000000
  br label %5557

; <label>:5283                                    ; preds = %5173
  %5284 = and i32 %235, 1
  %5285 = icmp eq i32 %5284, 0
  br i1 %5285, label %5557, label %5286

; <label>:5286                                    ; preds = %5283
  %5287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5288 = extractvalue %dx.types.CBufRet.f32 %5287, 0
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5287, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5295 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5296 = extractvalue %dx.types.CBufRet.f32 %5287, 3
  %5297 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5298 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5299 = fadd fast float %5296, %5202
  %5300 = fadd fast float %5297, %5203
  %5301 = fadd fast float %5298, %5204
  %5302 = fmul fast float %5299, %5288
  %5303 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5290, float %5302)  ; FMad(a,b,c)
  %5304 = call float @dx.op.tertiary.f32(i32 46, float %5301, float %5292, float %5303)  ; FMad(a,b,c)
  %5305 = fmul fast float %5299, %5293
  %5306 = call float @dx.op.tertiary.f32(i32 46, float %5300, float %5294, float %5305)  ; FMad(a,b,c)
  %5307 = call float @dx.op.tertiary.f32(i32 46, float %5301, float %5295, float %5306)  ; FMad(a,b,c)
  %5308 = fsub fast float %5304, %5296
  %5309 = fsub fast float %5307, %5297
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.CBufRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.CBufRet.f32 %5310, 2
  %5314 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 3
  %5317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.i32 %5317, 0
  %5319 = extractvalue %dx.types.CBufRet.i32 %5317, 1
  %5320 = udiv i32 %5319, %5318
  %5321 = fsub fast float %5308, %5311
  %5322 = fsub fast float %5309, %5312
  %5323 = call float @dx.op.binary.f32(i32 35, float %5321, float 0.000000e+00)  ; FMax(a,b)
  %5324 = call float @dx.op.binary.f32(i32 35, float %5322, float 0.000000e+00)  ; FMax(a,b)
  %5325 = call float @dx.op.binary.f32(i32 36, float %5323, float %5313)  ; FMin(a,b)
  %5326 = call float @dx.op.binary.f32(i32 36, float %5324, float %5314)  ; FMin(a,b)
  %5327 = add i32 %5318, -1
  %5328 = add i32 %5320, -1
  %5329 = fmul fast float %5325, %5316
  %5330 = fmul fast float %5326, %5316
  %5331 = fptoui float %5329 to i32
  %5332 = fptoui float %5330 to i32
  %5333 = call i32 @dx.op.binary.i32(i32 40, i32 %5331, i32 %5327)  ; UMin(a,b)
  %5334 = call i32 @dx.op.binary.i32(i32 40, i32 %5332, i32 %5328)  ; UMin(a,b)
  %5335 = mul i32 %5334, %5318
  %5336 = add i32 %5335, %5333
  %5337 = shl i32 %5336, 2
  %5338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5337, i32 undef)  ; BufferLoad(srv,index,wot)
  %5339 = extractvalue %dx.types.ResRet.i32 %5338, 0
  %5340 = icmp eq i32 %5339, -1
  br i1 %5340, label %5557, label %5341

; <label>:5341                                    ; preds = %5286
  %5342 = mul i32 %5339, 148
  %5343 = add i32 %5342, 4
  %5344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.f32 %5344, 0
  %5346 = add i32 %5342, 8
  %5347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = add i32 %5342, 36
  %5350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = add i32 %5342, 60
  %5353 = add i32 %5342, 92
  %5354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.i32 %5354, 0
  %5356 = add i32 %5342, 116
  %5357 = fsub fast float %5308, %5345
  %5358 = fsub fast float %5309, %5348
  %5359 = fmul fast float %5316, %5357
  %5360 = fmul fast float %5316, %5358
  %5361 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5362 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 2
  %5366 = call float @dx.op.unary.f32(i32 83, float %5361)  ; DerivCoarseX(value)
  %5367 = call float @dx.op.unary.f32(i32 83, float %5363)  ; DerivCoarseX(value)
  %5368 = call float @dx.op.unary.f32(i32 84, float %5361)  ; DerivCoarseY(value)
  %5369 = call float @dx.op.unary.f32(i32 84, float %5363)  ; DerivCoarseY(value)
  %5370 = fmul fast float %5366, %5365
  %5371 = fmul fast float %5367, %5365
  %5372 = fmul fast float %5368, %5365
  %5373 = fmul fast float %5369, %5365
  %5374 = call float @dx.op.dot2.f32(i32 54, float %5372, float %5373, float %5372, float %5373)  ; Dot2(ax,ay,bx,by)
  %5375 = call float @dx.op.dot2.f32(i32 54, float %5370, float %5371, float %5370, float %5371)  ; Dot2(ax,ay,bx,by)
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float %5374)  ; FMax(a,b)
  %5377 = call float @dx.op.unary.f32(i32 23, float %5376)  ; Log(value)
  %5378 = fmul fast float %5377, 5.000000e-01
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 1
  %5381 = fadd fast float %5380, %5378
  %5382 = call float @dx.op.binary.f32(i32 35, float %5381, float 0.000000e+00)  ; FMax(a,b)
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5385 = fadd fast float %5384, %5382
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 3
  %5388 = fadd fast float %5385, %5387
  %5389 = add i32 %5355, 0
  %5390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5390, i32 0)  ; GetDimensions(handle,mipLevel)
  %5392 = extractvalue %dx.types.Dimensions %5391, 0
  %5393 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5392)  ; FirstbitLo(value)
  %5394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.i32 %5394, 1
  %5396 = sub nsw i32 %5395, %5393
  %5397 = sitofp i32 %5396 to float
  %5398 = fsub fast float %5388, %5397
  %5399 = call float @dx.op.binary.f32(i32 35, float %5398, float 0.000000e+00)  ; FMax(a,b)
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5390, %dx.types.Handle %53, float %5361, float %5363, float %5351, float undef, i32 0, i32 0, i32 undef, float %5399)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = fcmp ule float %5401, 0x3FE0101020000000
  %5403 = extractvalue %dx.types.CBufRet.i32 %5394, 0
  %5404 = and i32 %5403, 128
  %5405 = icmp ne i32 %5404, 0
  %5406 = and i1 %5402, %5405
  br i1 %5406, label %5557, label %5407

; <label>:5407                                    ; preds = %5341
  %5408 = add i32 %5342, 20
  %5409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = add i32 %5342, 24
  %5412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5411, i32 undef)  ; BufferLoad(srv,index,wot)
  %5413 = extractvalue %dx.types.ResRet.f32 %5412, 0
  %5414 = add i32 %5342, 40
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = add i32 %5342, 96
  %5418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5417, i32 undef)  ; BufferLoad(srv,index,wot)
  %5419 = extractvalue %dx.types.ResRet.i32 %5418, 0
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5422 = fmul fast float %5421, %5361
  %5423 = fmul fast float %5421, %5363
  %5424 = extractvalue %dx.types.CBufRet.f32 %5420, 3
  %5425 = fadd fast float %5422, %5424
  %5426 = fadd fast float %5423, %5424
  %5427 = add i32 %5419, 0
  %5428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5427, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5429 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5428, i32 0)  ; GetDimensions(handle,mipLevel)
  %5430 = extractvalue %dx.types.Dimensions %5429, 0
  %5431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5430)  ; FirstbitLo(value)
  %5432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.i32 %5432, 1
  %5434 = sub nsw i32 %5433, %5431
  %5435 = sitofp i32 %5434 to float
  %5436 = fsub fast float %5385, %5435
  %5437 = call float @dx.op.binary.f32(i32 35, float %5436, float 0.000000e+00)  ; FMax(a,b)
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5428, %dx.types.Handle %53, float %5425, float %5426, float %5416, float undef, i32 0, i32 0, i32 undef, float %5437)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = fmul fast float %5439, %5410
  %5441 = fadd fast float %5440, %5413
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5450 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5451 = fadd fast float %5447, %5308
  %5452 = fadd fast float %5449, %5309
  %5453 = fadd fast float %5441, %5450
  %5454 = fmul fast float %5451, %5443
  %5455 = call float @dx.op.tertiary.f32(i32 46, float %5452, float %5444, float %5454)  ; FMad(a,b,c)
  %5456 = call float @dx.op.tertiary.f32(i32 46, float %5453, float %5445, float %5455)  ; FMad(a,b,c)
  %5457 = fsub fast float %5456, %5450
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = fsub fast float %5457, %5459
  %5461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.i32 %5461, 0
  %5463 = call i32 @dx.op.binary.i32(i32 40, i32 %5339, i32 %5462)  ; UMin(a,b)
  %5464 = mul i32 %5463, 36
  %5465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.i32 %5465, 0
  %5467 = add i32 %5464, 4
  %5468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5469 = extractvalue %dx.types.CBufRet.f32 %5468, 0
  %5470 = fmul fast float %5469, %5361
  %5471 = fmul fast float %5469, %5363
  %5472 = extractvalue %dx.types.CBufRet.f32 %5468, 1
  %5473 = fadd fast float %5470, %5472
  %5474 = fadd fast float %5471, %5472
  %5475 = icmp eq i32 %5466, 0
  br i1 %5475, label %5544, label %5476

; <label>:5476                                    ; preds = %5407
  br label %5477

; <label>:5477                                    ; preds = %5534, %5476
  %5478 = phi float [ %5535, %5534 ], [ 0.000000e+00, %5476 ]
  %5479 = phi float [ %5536, %5534 ], [ 0.000000e+00, %5476 ]
  %5480 = phi float [ %5537, %5534 ], [ 0.000000e+00, %5476 ]
  %5481 = phi float [ %5538, %5534 ], [ 0.000000e+00, %5476 ]
  %5482 = phi float [ %5539, %5534 ], [ 0.000000e+00, %5476 ]
  %5483 = phi float [ %5540, %5534 ], [ 0.000000e+00, %5476 ]
  %5484 = phi i32 [ %5541, %5534 ], [ 0, %5476 ]
  %5485 = shl i32 %5484, 2
  %5486 = add i32 %5352, %5485
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = add i32 %5356, %5485
  %5490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5489, i32 undef)  ; BufferLoad(srv,index,wot)
  %5491 = extractvalue %dx.types.ResRet.i32 %5490, 0
  %5492 = add i32 %5491, 0
  %5493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5492, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5494 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5493, i32 0)  ; GetDimensions(handle,mipLevel)
  %5495 = extractvalue %dx.types.Dimensions %5494, 0
  %5496 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5495)  ; FirstbitLo(value)
  %5497 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.i32 %5497, 1
  %5499 = sub nsw i32 %5498, %5496
  %5500 = sitofp i32 %5499 to float
  %5501 = fsub fast float %5385, %5500
  %5502 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5493, %dx.types.Handle %53, float %5473, float %5474, float %5488, float undef, i32 0, i32 0, i32 undef, float %5502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = fcmp fast ogt float %5504, 0.000000e+00
  br i1 %5505, label %5506, label %5534

; <label>:5506                                    ; preds = %5477
  %5507 = add i32 %5467, %5485
  %5508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5507, i32 undef)  ; BufferLoad(srv,index,wot)
  %5509 = extractvalue %dx.types.ResRet.i32 %5508, 0
  %5510 = and i32 %5509, 32767
  %5511 = mul nuw nsw i32 %5510, 928
  %5512 = add nuw nsw i32 %5511, 48
  %5513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5512, i32 undef)  ; BufferLoad(srv,index,wot)
  %5514 = extractvalue %dx.types.ResRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.ResRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.ResRet.f32 %5513, 2
  %5517 = add nuw nsw i32 %5511, 60
  %5518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5517, i32 undef)  ; BufferLoad(srv,index,wot)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = fmul fast float %5514, %5504
  %5523 = fmul fast float %5515, %5504
  %5524 = fmul fast float %5516, %5504
  %5525 = fadd fast float %5522, %5478
  %5526 = fadd fast float %5523, %5479
  %5527 = fadd fast float %5524, %5480
  %5528 = fmul fast float %5519, %5504
  %5529 = fmul fast float %5520, %5504
  %5530 = fmul fast float %5521, %5504
  %5531 = fadd fast float %5528, %5481
  %5532 = fadd fast float %5529, %5482
  %5533 = fadd fast float %5530, %5483
  br label %5534

; <label>:5534                                    ; preds = %5506, %5477
  %5535 = phi float [ %5525, %5506 ], [ %5478, %5477 ]
  %5536 = phi float [ %5526, %5506 ], [ %5479, %5477 ]
  %5537 = phi float [ %5527, %5506 ], [ %5480, %5477 ]
  %5538 = phi float [ %5531, %5506 ], [ %5481, %5477 ]
  %5539 = phi float [ %5532, %5506 ], [ %5482, %5477 ]
  %5540 = phi float [ %5533, %5506 ], [ %5483, %5477 ]
  %5541 = add nuw i32 %5484, 1
  %5542 = icmp eq i32 %5541, %5466
  br i1 %5542, label %5543, label %5477

; <label>:5543                                    ; preds = %5534
  br label %5544

; <label>:5544                                    ; preds = %5543, %5407
  %5545 = phi float [ 0.000000e+00, %5407 ], [ %5535, %5543 ]
  %5546 = phi float [ 0.000000e+00, %5407 ], [ %5536, %5543 ]
  %5547 = phi float [ 0.000000e+00, %5407 ], [ %5537, %5543 ]
  %5548 = phi float [ 0.000000e+00, %5407 ], [ %5538, %5543 ]
  %5549 = phi float [ 0.000000e+00, %5407 ], [ %5539, %5543 ]
  %5550 = phi float [ 0.000000e+00, %5407 ], [ %5540, %5543 ]
  %5551 = fadd fast float %5548, %5545
  %5552 = fmul fast float %5551, 0x3F847AE140000000
  %5553 = fadd fast float %5549, %5546
  %5554 = fmul fast float %5553, 0x3F847AE140000000
  %5555 = fadd fast float %5550, %5547
  %5556 = fmul fast float %5555, 0x3F847AE140000000
  br label %5557

; <label>:5557                                    ; preds = %5544, %5341, %5286, %5283, %5254, %5216
  %5558 = phi float [ %5268, %5254 ], [ -1.310720e+05, %5216 ], [ %5460, %5544 ], [ -1.310720e+05, %5286 ], [ -1.310720e+05, %5341 ], [ -1.310720e+05, %5283 ]
  %5559 = phi float [ %5278, %5254 ], [ 0.000000e+00, %5216 ], [ %5552, %5544 ], [ 0.000000e+00, %5286 ], [ 0.000000e+00, %5341 ], [ 0.000000e+00, %5283 ]
  %5560 = phi float [ %5280, %5254 ], [ 0.000000e+00, %5216 ], [ %5554, %5544 ], [ 0.000000e+00, %5286 ], [ 0.000000e+00, %5341 ], [ 0.000000e+00, %5283 ]
  %5561 = phi float [ %5282, %5254 ], [ 0.000000e+00, %5216 ], [ %5556, %5544 ], [ 0.000000e+00, %5286 ], [ 0.000000e+00, %5341 ], [ 0.000000e+00, %5283 ]
  %5562 = phi i1 [ true, %5254 ], [ false, %5216 ], [ true, %5544 ], [ false, %5286 ], [ false, %5341 ], [ false, %5283 ]
  %5563 = and i32 %235, 3
  %5564 = icmp eq i32 %5563, 1
  %5565 = select i1 %5564, float 1.000000e+00, float 0.000000e+00
  %5566 = fsub fast float %5558, %167
  %5567 = call float @dx.op.unary.f32(i32 7, float %5566)  ; Saturate(value)
  %5568 = select i1 %5562, float %5567, float 1.000000e+00
  %5569 = fmul fast float %5568, %5565
  %5570 = icmp eq i32 %5563, 3
  %5571 = select i1 %5570, float 1.000000e+00, float %5569
  %5572 = call float @dx.op.binary.f32(i32 35, float %5108, float %5571)  ; FMax(a,b)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = fcmp fast une float %5573, 0.000000e+00
  %5575 = fsub fast float -0.000000e+00, %185
  %5576 = fsub fast float -0.000000e+00, %186
  %5577 = fsub fast float -0.000000e+00, %187
  br i1 %5574, label %5578, label %5740

; <label>:5578                                    ; preds = %5557
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = fmul fast float %5573, 2.500000e+00
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = fmul fast float %5573, 0x4013FFFFE0000000
  %5583 = fadd fast float %5582, 0xBFFFFFFFE0000000
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = fmul fast float %5573, 0x4004000020000000
  %5586 = fadd fast float %5585, 0xBFF8000040000000
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5589 = fmul fast float %5133, 1.000000e+01
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = fsub fast float 3.000000e+00, %5591
  %5593 = fmul fast float %5590, %5590
  %5594 = fmul fast float %5593, %5592
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = fsub fast float 0x3FE3333340000000, %5154
  %5597 = fmul fast float %5596, 0x400AAAAAA0000000
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fmul fast float %5595, %5598
  %5600 = fmul fast float %5191, 0x3FEA2B8620000000
  %5601 = fmul fast float %5192, 0x3FEA2B8620000000
  %5602 = fmul fast float %5193, 0x3FEA2B8620000000
  %5603 = fadd fast float %5600, 0x3FC81DFBA0000000
  %5604 = fmul fast float %5603, %5191
  %5605 = fadd fast float %5604, 0x3F910E6020000000
  %5606 = fadd fast float %5601, 0x3FC81DFBA0000000
  %5607 = fmul fast float %5606, %5192
  %5608 = fadd fast float %5607, 0x3F910E6020000000
  %5609 = fadd fast float %5602, 0x3FC81DFBA0000000
  %5610 = fmul fast float %5609, %5193
  %5611 = fadd fast float %5610, 0x3F910E6020000000
  %5612 = call float @dx.op.unary.f32(i32 7, float %5605)  ; Saturate(value)
  %5613 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5614 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5615 = fsub fast float %5612, %5191
  %5616 = fsub fast float %5613, %5192
  %5617 = fsub fast float %5614, %5193
  %5618 = fmul fast float %5615, %5588
  %5619 = fmul fast float %5618, %5599
  %5620 = fmul fast float %5616, %5588
  %5621 = fmul fast float %5620, %5599
  %5622 = fmul fast float %5617, %5588
  %5623 = fmul fast float %5622, %5599
  %5624 = fadd fast float %5619, %5191
  %5625 = fadd fast float %5621, %5192
  %5626 = fadd fast float %5623, %5193
  %5627 = fmul fast float %5105, %5105
  %5628 = fmul fast float %5627, %5627
  %5629 = fadd fast float %5584, 1.000000e+00
  %5630 = fsub fast float %5629, %5599
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5632 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fsub fast float 1.000000e+00, %5628
  %5635 = call float @dx.op.binary.f32(i32 36, float %5631, float %5634)  ; FMin(a,b)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5635, float %5636)  ; FMax(a,b)
  %5638 = fadd fast float %5633, 0xBFE4CCCCC0000000
  %5639 = fmul fast float %5638, 0x4006DB6DA0000000
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fmul fast float %5640, 2.000000e+00
  %5642 = fsub fast float 3.000000e+00, %5641
  %5643 = bitcast float %5151 to i32
  %5644 = ashr i32 %5643, 1
  %5645 = add nsw i32 %5644, 532487669
  %5646 = bitcast i32 %5645 to float
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = bitcast float %5647 to i32
  %5649 = sub nsw i32 2129859010, %5648
  %5650 = bitcast i32 %5649 to float
  %5651 = fmul fast float %5650, 2.000000e+00
  %5652 = bitcast float %5152 to i32
  %5653 = ashr i32 %5652, 1
  %5654 = add nsw i32 %5653, 532487669
  %5655 = bitcast i32 %5654 to float
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5659, 2.000000e+00
  %5661 = bitcast float %5153 to i32
  %5662 = ashr i32 %5661, 1
  %5663 = add nsw i32 %5662, 532487669
  %5664 = bitcast i32 %5663 to float
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5668, 2.000000e+00
  %5670 = fsub fast float 0x4002A9FBE0000000, %5651
  %5671 = fadd fast float %5651, 0x3FD54FDF00000000
  %5672 = bitcast float %5671 to i32
  %5673 = sub nsw i32 2129859010, %5672
  %5674 = bitcast i32 %5673 to float
  %5675 = fmul fast float %5674, %5670
  %5676 = fmul fast float %5675, %5675
  %5677 = fsub fast float 0x4002A9FBE0000000, %5660
  %5678 = fadd fast float %5660, 0x3FD54FDF00000000
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = bitcast i32 %5680 to float
  %5682 = fmul fast float %5681, %5677
  %5683 = fmul fast float %5682, %5682
  %5684 = fsub fast float 0x4002A9FBE0000000, %5669
  %5685 = fadd fast float %5669, 0x3FD54FDF00000000
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = fmul fast float %5688, %5684
  %5690 = fmul fast float %5689, %5689
  %5691 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5676)  ; FMax(a,b)
  %5692 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5683)  ; FMax(a,b)
  %5693 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5690)  ; FMax(a,b)
  %5694 = fsub fast float 1.000000e+00, %5579
  %5695 = fadd fast float %5694, %5595
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = fsub fast float 1.000000e+00, %5571
  %5698 = fmul fast float %5637, %5697
  %5699 = fmul fast float %5640, %5640
  %5700 = fmul fast float %5699, %5698
  %5701 = fmul fast float %5700, %5642
  %5702 = fmul fast float %5697, 0xBFE99999A0000000
  %5703 = fmul fast float %5702, %5588
  %5704 = fmul fast float %5703, %5599
  %5705 = fadd fast float %5704, 1.000000e+00
  %5706 = fadd fast float %5154, -1.000000e+00
  %5707 = fmul fast float %5705, %5706
  %5708 = fadd fast float %5707, 1.000000e+00
  %5709 = fsub fast float %5691, %5151
  %5710 = fsub fast float %5692, %5152
  %5711 = fsub fast float %5693, %5153
  %5712 = fmul fast float %5701, %5709
  %5713 = fmul fast float %5701, %5710
  %5714 = fmul fast float %5701, %5711
  %5715 = fadd fast float %5712, %5151
  %5716 = fadd fast float %5713, %5152
  %5717 = fadd fast float %5714, %5153
  %5718 = fsub fast float %117, %5099
  %5719 = fsub fast float %118, %5100
  %5720 = fsub fast float %119, %5101
  %5721 = fmul fast float %5701, %5718
  %5722 = fmul fast float %5701, %5719
  %5723 = fmul fast float %5701, %5720
  %5724 = fadd fast float %5721, %5099
  %5725 = fadd fast float %5722, %5100
  %5726 = fadd fast float %5723, %5101
  %5727 = fmul fast float %5701, %5696
  %5728 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = fmul fast float %5727, %5729
  %5731 = fadd fast float %5730, %5728
  %5732 = fsub fast float 1.000000e+00, %5105
  %5733 = fmul fast float %5701, %5732
  %5734 = fadd fast float %5733, %5105
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float %5724, float %5725, float %5726)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = call float @dx.op.unary.f32(i32 25, float %5735)  ; Rsqrt(value)
  %5737 = fmul fast float %5724, %5736
  %5738 = fmul fast float %5725, %5736
  %5739 = fmul fast float %5726, %5736
  br label %5740

; <label>:5740                                    ; preds = %5578, %5557
  %5741 = phi float [ %5715, %5578 ], [ %5151, %5557 ]
  %5742 = phi float [ %5716, %5578 ], [ %5152, %5557 ]
  %5743 = phi float [ %5717, %5578 ], [ %5153, %5557 ]
  %5744 = phi float [ %5624, %5578 ], [ %5191, %5557 ]
  %5745 = phi float [ %5625, %5578 ], [ %5192, %5557 ]
  %5746 = phi float [ %5626, %5578 ], [ %5193, %5557 ]
  %5747 = phi float [ %5737, %5578 ], [ %5099, %5557 ]
  %5748 = phi float [ %5738, %5578 ], [ %5100, %5557 ]
  %5749 = phi float [ %5739, %5578 ], [ %5101, %5557 ]
  %5750 = phi float [ %5731, %5578 ], [ %5154, %5557 ]
  %5751 = phi float [ %5734, %5578 ], [ %5105, %5557 ]
  %5752 = fsub fast float -0.000000e+00, %167
  %5753 = select i1 %259, float 0.000000e+00, float %5743
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5575, float %5576, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = fmul fast float %5756, 2.000000e+00
  %5758 = fmul fast float %5757, %5747
  %5759 = fmul fast float %5757, %5748
  %5760 = fmul fast float %5757, %5749
  %5761 = fsub fast float %185, %5758
  %5762 = fsub fast float %186, %5759
  %5763 = fsub fast float %187, %5760
  %5764 = call float @dx.op.binary.f32(i32 36, float %5751, float 1.000000e+00)  ; FMin(a,b)
  %5765 = fsub fast float 1.000000e+00, %5764
  %5766 = bitcast float %5765 to i32
  %5767 = ashr i32 %5766, 1
  %5768 = add nsw i32 %5767, 532487669
  %5769 = bitcast i32 %5768 to float
  %5770 = fsub fast float 1.000000e+00, %5750
  %5771 = call float @dx.op.binary.f32(i32 35, float %5770, float 0x3F847AE140000000)  ; FMax(a,b)
  %5772 = fmul fast float %5771, %5771
  %5773 = fmul fast float %5772, %5772
  %5774 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %55, float %5769, float %5773, float %5774, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = fsub fast float 1.000000e+00, %5751
  %5778 = bitcast float %5777 to i32
  %5779 = sub nsw i32 2129859010, %5778
  %5780 = bitcast i32 %5779 to float
  %5781 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = fmul fast float %5781, 0x3FD20DD760000000
  %5783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5784 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fcmp fast oeq float %5784, 0.000000e+00
  %5786 = fcmp fast oeq float %5783, 0.000000e+00
  %5787 = or i1 %5786, %5785
  br i1 %5787, label %5817, label %5788

; <label>:5788                                    ; preds = %5740
  %5789 = fsub fast float -0.000000e+00, %81
  %5790 = fsub fast float -0.000000e+00, %79
  %5791 = call float @dx.op.unary.f32(i32 24, float %5784)  ; Sqrt(value)
  %5792 = fdiv fast float %5791, %5783
  %5793 = fcmp fast ogt float %5792, 0x3FFB6F8900000000
  %5794 = select i1 %5793, float 0x3FFB6F8900000000, float %5792
  %5795 = fmul fast float %5794, 0x3FE8A23460000000
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = call float @dx.op.binary.f32(i32 35, float %5794, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5798 = fmul fast float %5796, %5783
  %5799 = fmul fast float %5797, 0x3FF279A740000000
  %5800 = fadd fast float %5799, -1.000000e+00
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5790, float %80, float %5789, float %5790, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.unary.f32(i32 25, float %5801)  ; Rsqrt(value)
  %5803 = fmul fast float %5802, %5789
  %5804 = fmul fast float %5802, %5790
  %5805 = fmul fast float %5802, %80
  %5806 = fmul fast float %5800, %5800
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = fmul fast float %5797, 0x40005F8BE0000000
  %5809 = fsub fast float 0x400C5BF8A0000000, %5808
  %5810 = fdiv fast float %5798, %5809
  %5811 = fmul fast float %5810, 0x3FEE31C3C0000000
  %5812 = fmul fast float %5811, %5807
  %5813 = fmul fast float %5797, 0x3FDACB7480000000
  %5814 = fadd fast float %5813, 0xBFD7347680000000
  %5815 = fmul fast float %5814, %5810
  %5816 = fmul fast float %5815, %5807
  br label %5817

; <label>:5817                                    ; preds = %5788, %5740
  %5818 = phi float [ %5803, %5788 ], [ 0.000000e+00, %5740 ]
  %5819 = phi float [ %5804, %5788 ], [ 0.000000e+00, %5740 ]
  %5820 = phi float [ %5805, %5788 ], [ 0.000000e+00, %5740 ]
  %5821 = phi float [ %5812, %5788 ], [ 0.000000e+00, %5740 ]
  %5822 = phi float [ %5816, %5788 ], [ 0.000000e+00, %5740 ]
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fmul fast float %5823, 0x3FDF454380000000
  %5825 = fmul fast float %5823, %5823
  %5826 = fmul fast float %5825, 0x3FEE471020000000
  %5827 = fadd fast float %5826, 0xBFD42F6020000000
  %5828 = fmul fast float %5783, 0x3FD20DD760000000
  %5829 = fmul fast float %5827, %5822
  %5830 = fadd fast float %5829, %5828
  %5831 = fmul fast float %5824, %5821
  %5832 = fadd fast float %5830, %5831
  %5833 = fsub fast float %5830, %5831
  %5834 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5835 = fmul fast float %5834, 0x3FDF454380000000
  %5836 = fmul fast float %5834, %5834
  %5837 = fmul fast float %5836, 0x3FEE471020000000
  %5838 = fadd fast float %5837, 0xBFD42F6020000000
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5821, float %5822, float 0x3FD20DD760000000, float %5835, float %5838)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5841 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fcmp fast oeq float %5841, 0.000000e+00
  %5843 = fcmp fast oeq float %5840, 0.000000e+00
  %5844 = or i1 %5843, %5842
  br i1 %5844, label %5874, label %5845

; <label>:5845                                    ; preds = %5817
  %5846 = fsub fast float -0.000000e+00, %77
  %5847 = fsub fast float -0.000000e+00, %75
  %5848 = call float @dx.op.unary.f32(i32 24, float %5841)  ; Sqrt(value)
  %5849 = fdiv fast float %5848, %5840
  %5850 = fcmp fast ogt float %5849, 0x3FFB6F8900000000
  %5851 = select i1 %5850, float 0x3FFB6F8900000000, float %5849
  %5852 = fmul fast float %5851, 0x3FE8A23460000000
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5851, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5855 = fmul fast float %5853, %5840
  %5856 = fmul fast float %5854, 0x3FF279A740000000
  %5857 = fadd fast float %5856, -1.000000e+00
  %5858 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %76, float %5846, float %5847, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = call float @dx.op.unary.f32(i32 25, float %5858)  ; Rsqrt(value)
  %5860 = fmul fast float %5859, %5846
  %5861 = fmul fast float %5859, %5847
  %5862 = fmul fast float %5859, %76
  %5863 = fmul fast float %5857, %5857
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = fmul fast float %5854, 0x40005F8BE0000000
  %5866 = fsub fast float 0x400C5BF8A0000000, %5865
  %5867 = fdiv fast float %5855, %5866
  %5868 = fmul fast float %5867, 0x3FEE31C3C0000000
  %5869 = fmul fast float %5868, %5864
  %5870 = fmul fast float %5854, 0x3FDACB7480000000
  %5871 = fadd fast float %5870, 0xBFD7347680000000
  %5872 = fmul fast float %5871, %5867
  %5873 = fmul fast float %5872, %5864
  br label %5874

; <label>:5874                                    ; preds = %5845, %5817
  %5875 = phi float [ %5860, %5845 ], [ 0.000000e+00, %5817 ]
  %5876 = phi float [ %5861, %5845 ], [ 0.000000e+00, %5817 ]
  %5877 = phi float [ %5862, %5845 ], [ 0.000000e+00, %5817 ]
  %5878 = phi float [ %5869, %5845 ], [ 0.000000e+00, %5817 ]
  %5879 = phi float [ %5873, %5845 ], [ 0.000000e+00, %5817 ]
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = fmul fast float %5880, 0x3FDF454380000000
  %5882 = fmul fast float %5880, %5880
  %5883 = fmul fast float %5882, 0x3FEE471020000000
  %5884 = fadd fast float %5883, 0xBFD42F6020000000
  %5885 = fmul fast float %5840, 0x3FD20DD760000000
  %5886 = fmul fast float %5884, %5879
  %5887 = fadd fast float %5886, %5885
  %5888 = fmul fast float %5881, %5878
  %5889 = fadd fast float %5887, %5888
  %5890 = fsub fast float %5887, %5888
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = fmul fast float %5891, 0x3FDF454380000000
  %5893 = fmul fast float %5891, %5891
  %5894 = fmul fast float %5893, 0x3FEE471020000000
  %5895 = fadd fast float %5894, 0xBFD42F6020000000
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5878, float %5879, float 0x3FD20DD760000000, float %5892, float %5895)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5898 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fcmp fast oeq float %5898, 0.000000e+00
  %5900 = fcmp fast oeq float %5897, 0.000000e+00
  %5901 = or i1 %5900, %5899
  br i1 %5901, label %5931, label %5902

; <label>:5902                                    ; preds = %5874
  %5903 = fsub fast float -0.000000e+00, %73
  %5904 = fsub fast float -0.000000e+00, %71
  %5905 = call float @dx.op.unary.f32(i32 24, float %5898)  ; Sqrt(value)
  %5906 = fdiv fast float %5905, %5897
  %5907 = fcmp fast ogt float %5906, 0x3FFB6F8900000000
  %5908 = select i1 %5907, float 0x3FFB6F8900000000, float %5906
  %5909 = fmul fast float %5908, 0x3FE8A23460000000
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = call float @dx.op.binary.f32(i32 35, float %5908, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5912 = fmul fast float %5910, %5897
  %5913 = fmul fast float %5911, 0x3FF279A740000000
  %5914 = fadd fast float %5913, -1.000000e+00
  %5915 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %72, float %5903, float %5904, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = call float @dx.op.unary.f32(i32 25, float %5915)  ; Rsqrt(value)
  %5917 = fmul fast float %5916, %5903
  %5918 = fmul fast float %5916, %5904
  %5919 = fmul fast float %5916, %72
  %5920 = fmul fast float %5914, %5914
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = fmul fast float %5911, 0x40005F8BE0000000
  %5923 = fsub fast float 0x400C5BF8A0000000, %5922
  %5924 = fdiv fast float %5912, %5923
  %5925 = fmul fast float %5924, 0x3FEE31C3C0000000
  %5926 = fmul fast float %5925, %5921
  %5927 = fmul fast float %5911, 0x3FDACB7480000000
  %5928 = fadd fast float %5927, 0xBFD7347680000000
  %5929 = fmul fast float %5928, %5924
  %5930 = fmul fast float %5929, %5921
  br label %5931

; <label>:5931                                    ; preds = %5902, %5874
  %5932 = phi float [ %5917, %5902 ], [ 0.000000e+00, %5874 ]
  %5933 = phi float [ %5918, %5902 ], [ 0.000000e+00, %5874 ]
  %5934 = phi float [ %5919, %5902 ], [ 0.000000e+00, %5874 ]
  %5935 = phi float [ %5926, %5902 ], [ 0.000000e+00, %5874 ]
  %5936 = phi float [ %5930, %5902 ], [ 0.000000e+00, %5874 ]
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5934, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = fmul fast float %5937, 0x3FDF454380000000
  %5939 = fmul fast float %5937, %5937
  %5940 = fmul fast float %5939, 0x3FEE471020000000
  %5941 = fadd fast float %5940, 0xBFD42F6020000000
  %5942 = fmul fast float %5897, 0x3FD20DD760000000
  %5943 = fmul fast float %5941, %5936
  %5944 = fadd fast float %5943, %5942
  %5945 = fmul fast float %5938, %5935
  %5946 = fadd fast float %5944, %5945
  %5947 = fsub fast float %5944, %5945
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5934, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = fmul fast float %5948, 0x3FDF454380000000
  %5950 = fmul fast float %5948, %5948
  %5951 = fmul fast float %5950, 0x3FEE471020000000
  %5952 = fadd fast float %5951, 0xBFD42F6020000000
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5935, float %5936, float 0x3FD20DD760000000, float %5949, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5832, float 0.000000e+00)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5889, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call float @dx.op.binary.f32(i32 35, float %5946, float 0.000000e+00)  ; FMax(a,b)
  %5957 = call float @dx.op.binary.f32(i32 35, float %5833, float 0.000000e+00)  ; FMax(a,b)
  %5958 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5947, float 0.000000e+00)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5839, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5953, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 0
  %5965 = call float @dx.op.binary.f32(i32 36, float %5744, float %5964)  ; FMin(a,b)
  %5966 = fmul fast float %5965, %5765
  %5967 = fsub fast float 1.000000e+00, %5966
  %5968 = bitcast float %5967 to i32
  %5969 = sub nsw i32 2129859010, %5968
  %5970 = bitcast i32 %5969 to float
  %5971 = call float @dx.op.binary.f32(i32 36, float %5745, float %5964)  ; FMin(a,b)
  %5972 = fmul fast float %5971, %5765
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = bitcast float %5973 to i32
  %5975 = sub nsw i32 2129859010, %5974
  %5976 = bitcast i32 %5975 to float
  %5977 = call float @dx.op.binary.f32(i32 36, float %5746, float %5964)  ; FMin(a,b)
  %5978 = fmul fast float %5977, %5765
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = bitcast float %5979 to i32
  %5981 = sub nsw i32 2129859010, %5980
  %5982 = bitcast i32 %5981 to float
  %5983 = fmul fast float %5954, %5764
  %5984 = fmul fast float %5983, %5970
  %5985 = fmul fast float %5955, %5764
  %5986 = fmul fast float %5985, %5976
  %5987 = fmul fast float %5956, %5764
  %5988 = fmul fast float %5987, %5982
  %5989 = call float @dx.op.binary.f32(i32 36, float %5741, float %5964)  ; FMin(a,b)
  %5990 = fmul fast float %5989, %5765
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = bitcast float %5991 to i32
  %5993 = sub nsw i32 2129859010, %5992
  %5994 = bitcast i32 %5993 to float
  %5995 = call float @dx.op.binary.f32(i32 36, float %5742, float %5964)  ; FMin(a,b)
  %5996 = fmul fast float %5995, %5765
  %5997 = fsub fast float 1.000000e+00, %5996
  %5998 = bitcast float %5997 to i32
  %5999 = sub nsw i32 2129859010, %5998
  %6000 = bitcast i32 %5999 to float
  %6001 = call float @dx.op.binary.f32(i32 36, float %5753, float %5964)  ; FMin(a,b)
  %6002 = fmul fast float %6001, %5765
  %6003 = fsub fast float 1.000000e+00, %6002
  %6004 = bitcast float %6003 to i32
  %6005 = sub nsw i32 2129859010, %6004
  %6006 = bitcast i32 %6005 to float
  %6007 = fmul fast float %5960, %5764
  %6008 = fmul fast float %6007, %5994
  %6009 = fmul fast float %5961, %5764
  %6010 = fmul fast float %6009, %6000
  %6011 = fmul fast float %5962, %5764
  %6012 = fmul fast float %6011, %6006
  %6013 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5986, float %5988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6014 = select i1 %259, float 0.000000e+00, float %5984
  %6015 = select i1 %259, float %6013, float %5986
  %6016 = select i1 %259, float 0.000000e+00, float %5988
  %6017 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5958, float %5959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = select i1 %259, float 0.000000e+00, float %5957
  %6019 = select i1 %259, float %6017, float %5958
  %6020 = select i1 %259, float 0.000000e+00, float %5959
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6010, float %6012, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = select i1 %259, float 0.000000e+00, float %6008
  %6023 = select i1 %259, float %6021, float %6010
  %6024 = select i1 %259, float 0.000000e+00, float %6012
  %6025 = fmul fast float %4460, %4460
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = fmul fast float %5755, 9.843750e-01
  %6028 = fmul fast float %5750, 9.843750e-01
  %6029 = fadd fast float %6027, 7.812500e-03
  %6030 = fadd fast float %6028, 7.812500e-03
  %6031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %6029, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6032 = extractvalue %dx.types.ResRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.ResRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.ResRet.f32 %6031, 2
  %6035 = extractvalue %dx.types.ResRet.f32 %6031, 3
  %6036 = fsub fast float 1.000000e+00, %6026
  %6037 = fsub fast float %6034, %6032
  %6038 = fsub fast float %6035, %6033
  %6039 = fmul fast float %6037, %6036
  %6040 = fmul fast float %6038, %6036
  %6041 = fadd fast float %6039, %6032
  %6042 = fadd fast float %6040, %6033
  %6043 = fmul fast float %6041, %5741
  %6044 = fmul fast float %6041, %5742
  %6045 = fmul fast float %6041, %5753
  %6046 = fadd fast float %6043, %6042
  %6047 = fadd fast float %6044, %6042
  %6048 = fadd fast float %6045, %6042
  %6049 = fcmp fast ogt float %5106, 0.000000e+00
  br i1 %6049, label %6050, label %6076

; <label>:6050                                    ; preds = %5931
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %5755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fsub fast float 1.000000e+00, %5741
  %6059 = fsub fast float 1.000000e+00, %5742
  %6060 = fsub fast float 1.000000e+00, %5753
  %6061 = fmul fast float %5741, 4.000000e+00
  %6062 = fmul fast float %6061, %6058
  %6063 = fmul fast float %6062, %6055
  %6064 = fmul fast float %5742, 4.000000e+00
  %6065 = fmul fast float %6064, %6059
  %6066 = fmul fast float %6065, %6056
  %6067 = fmul fast float %5753, 4.000000e+00
  %6068 = fmul fast float %6067, %6060
  %6069 = fmul fast float %6068, %6057
  %6070 = fadd fast float %6063, %6046
  %6071 = fadd fast float %6066, %6047
  %6072 = fadd fast float %6069, %6048
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  br label %6076

; <label>:6076                                    ; preds = %6050, %5931
  %6077 = phi float [ %6073, %6050 ], [ %6046, %5931 ]
  %6078 = phi float [ %6074, %6050 ], [ %6047, %5931 ]
  %6079 = phi float [ %6075, %6050 ], [ %6048, %5931 ]
  %6080 = call float @dx.op.binary.f32(i32 35, float %6078, float %6079)  ; FMax(a,b)
  %6081 = call float @dx.op.binary.f32(i32 35, float %6077, float %6080)  ; FMax(a,b)
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = fmul fast float %6081, %5750
  %6084 = fadd fast float %6083, %5750
  %6085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6086 = extractvalue %dx.types.CBufRet.f32 %6085, 2
  %6087 = extractvalue %dx.types.CBufRet.f32 %6085, 3
  %6088 = fmul fast float %6084, %6086
  %6089 = fadd fast float %6088, %6087
  %6090 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6091 = fsub fast float 1.000000e+00, %5776
  %6092 = fadd fast float %6091, %6090
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = fcmp fast olt float %6093, 1.000000e+00
  br i1 %6094, label %6095, label %6677

; <label>:6095                                    ; preds = %6076
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6096, 3
  %6099 = fmul fast float %6097, %110
  %6100 = fmul fast float %6098, %111
  %6101 = fptoui float %6099 to i32
  %6102 = fptoui float %6100 to i32
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6103, 3
  %6107 = fadd fast float %98, -4.000000e+00
  %6108 = call float @dx.op.binary.f32(i32 35, float %6107, float 0.000000e+00)  ; FMax(a,b)
  %6109 = fadd fast float %6108, %6104
  %6110 = fmul fast float %6109, %6105
  %6111 = call float @dx.op.unary.f32(i32 23, float %6110)  ; Log(value)
  %6112 = fmul fast float %6111, %6106
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6115 = fmul fast float %6112, %6114
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.i32 %6117, 1
  %6119 = add i32 %6118, -1
  %6120 = uitofp i32 %6118 to float
  %6121 = fmul fast float %6120, %6116
  %6122 = fptoui float %6121 to i32
  %6123 = call i32 @dx.op.binary.i32(i32 40, i32 %6122, i32 %6119)  ; UMin(a,b)
  %6124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.i32 %6124, 2
  %6126 = extractvalue %dx.types.CBufRet.i32 %6124, 3
  %6127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6102, i32 %6125, i32 %6101)  ; UMad(a,b,c)
  %6128 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6123, i32 %6126, i32 %6127)  ; UMad(a,b,c)
  %6129 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6130 = fptoui float %6129 to i32
  %6131 = lshr i32 %6130, 5
  %6132 = call i32 @dx.op.binary.i32(i32 40, i32 %6131, i32 8191)  ; UMin(a,b)
  %6133 = fsub fast float %5558, %167
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = fcmp fast ogt float %6134, 0.000000e+00
  %6136 = fcmp fast ogt float %5763, 0.000000e+00
  %6137 = and i1 %6136, %6135
  br i1 %6137, label %6138, label %6167

; <label>:6138                                    ; preds = %6095
  %6139 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6139, float -1.000000e+00)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 36, float %6140, float 1.000000e+00)  ; FMin(a,b)
  %6142 = fmul fast float %6141, %6141
  %6143 = fsub fast float 1.000000e+00, %6142
  %6144 = fmul fast float %6143, 0x3FFC6E2300000000
  %6145 = fsub fast float 1.000000e+00, %6144
  %6146 = fcmp fast ogt float %6145, 0.000000e+00
  %6147 = call float @dx.op.unary.f32(i32 24, float %6145)  ; Sqrt(value)
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = call float @dx.op.unary.f32(i32 23, float %6148)  ; Log(value)
  %6150 = fmul fast float %6149, 5.000000e+00
  %6151 = call float @dx.op.unary.f32(i32 21, float %6150)  ; Exp(value)
  %6152 = fmul fast float %6151, 0x3FEF591A60000000
  %6153 = fadd fast float %6152, 0x3F94DCB540000000
  %6154 = select i1 %6146, float %6153, float 1.000000e+00
  %6155 = fcmp fast oge float %6154, 1.000000e+00
  %6156 = fmul fast float %6139, 2.000000e+00
  %6157 = fadd fast float %6156, %5763
  %6158 = select i1 %6155, float %6157, float %5763
  %6159 = fsub fast float %6158, %5763
  %6160 = fmul fast float %6159, %6134
  %6161 = fadd fast float %6160, %5763
  %6162 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %6161, float %5761, float %5762, float %6161)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = call float @dx.op.unary.f32(i32 25, float %6162)  ; Rsqrt(value)
  %6164 = fmul fast float %6163, %5761
  %6165 = fmul fast float %6163, %5762
  %6166 = fmul fast float %6161, %6163
  br label %6167

; <label>:6167                                    ; preds = %6138, %6095
  %6168 = phi float [ %6164, %6138 ], [ %5761, %6095 ]
  %6169 = phi float [ %6165, %6138 ], [ %5762, %6095 ]
  %6170 = phi float [ %6166, %6138 ], [ %5763, %6095 ]
  %6171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.i32 %6171, 2
  %6173 = add nsw i32 %6172, -1
  %6174 = call i32 @dx.op.binary.i32(i32 37, i32 %6173, i32 0)  ; IMax(a,b)
  %6175 = shl i32 %6132, 2
  %6176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6175, i32 undef)  ; BufferLoad(srv,index,wot)
  %6177 = extractvalue %dx.types.ResRet.i32 %6176, 0
  %6178 = lshr i32 %6177, 16
  %6179 = and i32 %6177, 65535
  %6180 = lshr i32 %6177, 21
  %6181 = lshr i32 %6179, 5
  %6182 = call i32 @dx.op.binary.i32(i32 40, i32 %6181, i32 %6174)  ; UMin(a,b)
  %6183 = icmp ugt i32 %6180, %6182
  br i1 %6183, label %6565, label %6184

; <label>:6184                                    ; preds = %6167
  br label %6185

; <label>:6185                                    ; preds = %6554, %6184
  %6186 = phi float [ %6555, %6554 ], [ 0.000000e+00, %6184 ]
  %6187 = phi float [ %6556, %6554 ], [ 0.000000e+00, %6184 ]
  %6188 = phi float [ %6557, %6554 ], [ 0.000000e+00, %6184 ]
  %6189 = phi float [ %6558, %6554 ], [ 1.000000e+00, %6184 ]
  %6190 = phi i32 [ %6562, %6554 ], [ %6180, %6184 ]
  %6191 = phi float [ %6559, %6554 ], [ 0.000000e+00, %6184 ]
  %6192 = phi float [ %6560, %6554 ], [ 0.000000e+00, %6184 ]
  %6193 = phi float [ %6561, %6554 ], [ 0.000000e+00, %6184 ]
  %6194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.i32 %6194, 2
  %6196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6128, i32 %6195, i32 %6190)  ; UMad(a,b,c)
  %6197 = shl i32 %6196, 2
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = shl i32 %6190, 5
  %6201 = sub nsw i32 %6178, %6200
  %6202 = call i32 @dx.op.binary.i32(i32 37, i32 %6201, i32 0)  ; IMax(a,b)
  %6203 = call i32 @dx.op.binary.i32(i32 38, i32 %6202, i32 31)  ; IMin(a,b)
  %6204 = sub nsw i32 1, %6178
  %6205 = add nsw i32 %6204, %6179
  %6206 = call i32 @dx.op.binary.i32(i32 37, i32 %6205, i32 0)  ; IMax(a,b)
  %6207 = call i32 @dx.op.binary.i32(i32 38, i32 %6206, i32 32)  ; IMin(a,b)
  %6208 = and i32 %6207, 31
  %6209 = shl i32 -1, %6208
  %6210 = xor i32 %6209, -1
  %6211 = and i32 %6203, 31
  %6212 = shl i32 %6210, %6211
  %6213 = icmp eq i32 %6207, 32
  %6214 = select i1 %6213, i32 -1, i32 %6212
  %6215 = and i32 %6214, %6199
  %6216 = icmp eq i32 %6215, 0
  br i1 %6216, label %6554, label %6217

; <label>:6217                                    ; preds = %6185
  br label %6218

; <label>:6218                                    ; preds = %6328, %6217
  %6219 = phi float [ %6329, %6328 ], [ %6186, %6217 ]
  %6220 = phi float [ %6330, %6328 ], [ %6187, %6217 ]
  %6221 = phi float [ %6331, %6328 ], [ %6188, %6217 ]
  %6222 = phi float [ %6332, %6328 ], [ %6189, %6217 ]
  %6223 = phi i32 [ %6231, %6328 ], [ %6215, %6217 ]
  %6224 = phi float [ %6333, %6328 ], [ %6191, %6217 ]
  %6225 = phi float [ %6334, %6328 ], [ %6192, %6217 ]
  %6226 = phi float [ %6335, %6328 ], [ %6193, %6217 ]
  %6227 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6223)  ; FirstbitLo(value)
  %6228 = add i32 %6227, %6200
  %6229 = and i32 %6227, 31
  %6230 = shl i32 1, %6229
  %6231 = xor i32 %6230, %6223
  %6232 = mul i32 %6228, 72
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = add i32 %6232, 12
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = add i32 %6232, 16
  %6241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = add i32 %6232, 28
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = add i32 %6232, 32
  %6249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6248, i32 undef)  ; BufferLoad(srv,index,wot)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.ResRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.ResRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.ResRet.f32 %6249, 3
  %6254 = add i32 %6232, 48
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = add i32 %6232, 56
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = add i32 %6232, 64
  %6263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6262, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = mul i32 %6228, 60
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = add i32 %6266, 12
  %6272 = add i32 %6266, 48
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = and i32 %6239, 32767
  %6278 = bitcast float %6234 to i32
  %6279 = icmp eq i32 %6278, -1
  %6280 = bitcast float %6235 to i32
  %6281 = and i32 %6239, 32768
  %6282 = icmp ne i32 %6281, 0
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.CBufRet.f32 %6283, 2
  %6287 = fsub fast float %6268, %6284
  %6288 = fsub fast float %6269, %6285
  %6289 = fsub fast float %6270, %6286
  %6290 = fsub fast float %165, %6287
  %6291 = fsub fast float %166, %6288
  %6292 = fsub fast float %167, %6289
  %6293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6294 = extractvalue %dx.types.ResRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.ResRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.ResRet.f32 %6293, 2
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6294, float %6295, float %6296)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = add i32 %6266, 24
  %6299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6298, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6300, float %6301, float %6302)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = add i32 %6266, 36
  %6305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6304, i32 undef)  ; BufferLoad(srv,index,wot)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.ResRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.ResRet.f32 %6305, 2
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6306, float %6307, float %6308)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6311 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6312 = call float @dx.op.unary.f32(i32 6, float %6309)  ; FAbs(value)
  %6313 = fsub fast float %6274, %6310
  %6314 = fsub fast float %6275, %6311
  %6315 = fsub fast float %6276, %6312
  %6316 = fmul fast float %6313, %6242
  %6317 = fmul fast float %6314, %6243
  %6318 = fmul fast float %6315, %6244
  %6319 = call float @dx.op.binary.f32(i32 36, float %6317, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6316, float %6319)  ; FMin(a,b)
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6222, float %6321)  ; FMin(a,b)
  %6323 = uitofp i1 %6282 to float
  %6324 = fadd fast float %6134, 1.000000e+00
  %6325 = fsub fast float %6324, %6323
  %6326 = fmul fast float %6322, %6325
  %6327 = fcmp fast ogt float %6326, 0.000000e+00
  br i1 %6327, label %6337, label %6328

; <label>:6328                                    ; preds = %6479, %6218
  %6329 = phi float [ %6543, %6479 ], [ %6219, %6218 ]
  %6330 = phi float [ %6544, %6479 ], [ %6220, %6218 ]
  %6331 = phi float [ %6545, %6479 ], [ %6221, %6218 ]
  %6332 = phi float [ %6552, %6479 ], [ %6222, %6218 ]
  %6333 = phi float [ %6549, %6479 ], [ %6224, %6218 ]
  %6334 = phi float [ %6550, %6479 ], [ %6225, %6218 ]
  %6335 = phi float [ %6551, %6479 ], [ %6226, %6218 ]
  %6336 = icmp eq i32 %6223, %6230
  br i1 %6336, label %6553, label %6218

; <label>:6337                                    ; preds = %6218
  br i1 %6279, label %6395, label %6338

; <label>:6338                                    ; preds = %6337
  %6339 = fsub fast float -0.000000e+00, %6294
  %6340 = fsub fast float -0.000000e+00, %6295
  %6341 = fsub fast float -0.000000e+00, %6296
  %6342 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %6339, float %6340, float %6341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6339, float %6340, float %6341)  ; Dot3(ax,ay,az,bx,by,bz)
  %6345 = fadd fast float %6344, %6257
  %6346 = fadd fast float %6256, %6344
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = fcmp ogt float %6342, -0.000000e+00
  %6349 = select i1 %6348, float %6347, float %6345
  %6350 = call float @dx.op.unary.f32(i32 6, float %6343)  ; FAbs(value)
  %6351 = fdiv fast float 1.000000e+00, %6350
  %6352 = fmul fast float %6349, %6351
  %6353 = call float @dx.op.binary.f32(i32 35, float %6352, float 0.000000e+00)  ; FMax(a,b)
  %6354 = fsub fast float -0.000000e+00, %6300
  %6355 = fsub fast float -0.000000e+00, %6301
  %6356 = fsub fast float -0.000000e+00, %6302
  %6357 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %6354, float %6355, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = fsub fast float -0.000000e+00, %6357
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6354, float %6355, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = fadd fast float %6359, %6261
  %6361 = fadd fast float %6260, %6359
  %6362 = fsub fast float -0.000000e+00, %6361
  %6363 = fcmp ogt float %6357, -0.000000e+00
  %6364 = select i1 %6363, float %6362, float %6360
  %6365 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6366 = fdiv fast float 1.000000e+00, %6365
  %6367 = fmul fast float %6364, %6366
  %6368 = call float @dx.op.binary.f32(i32 35, float %6367, float 0.000000e+00)  ; FMax(a,b)
  %6369 = fsub fast float -0.000000e+00, %6306
  %6370 = fsub fast float -0.000000e+00, %6307
  %6371 = fsub fast float -0.000000e+00, %6308
  %6372 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %6369, float %6370, float %6371)  ; Dot3(ax,ay,az,bx,by,bz)
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6369, float %6370, float %6371)  ; Dot3(ax,ay,az,bx,by,bz)
  %6375 = fadd fast float %6374, %6265
  %6376 = fadd fast float %6264, %6374
  %6377 = fsub fast float -0.000000e+00, %6376
  %6378 = fcmp ogt float %6372, -0.000000e+00
  %6379 = select i1 %6378, float %6377, float %6375
  %6380 = call float @dx.op.unary.f32(i32 6, float %6373)  ; FAbs(value)
  %6381 = fdiv fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6379, %6381
  %6383 = call float @dx.op.binary.f32(i32 35, float %6382, float 0.000000e+00)  ; FMax(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6368, float %6383)  ; FMin(a,b)
  %6385 = call float @dx.op.binary.f32(i32 36, float %6353, float %6384)  ; FMin(a,b)
  %6386 = fmul fast float %6385, %6168
  %6387 = fmul fast float %6385, %6169
  %6388 = fmul fast float %6385, %6170
  %6389 = fadd fast float %6386, %165
  %6390 = fadd fast float %6387, %166
  %6391 = fadd fast float %6388, %167
  %6392 = fsub fast float %6389, %6234
  %6393 = fsub fast float %6390, %6235
  %6394 = fsub fast float %6391, %6236
  br label %6402

; <label>:6395                                    ; preds = %6337
  %6396 = fmul fast float %6168, 8.096000e+03
  %6397 = fmul fast float %6169, 8.096000e+03
  %6398 = fmul fast float %6170, 8.096000e+03
  %6399 = fadd fast float %6396, %165
  %6400 = fadd fast float %6397, %166
  %6401 = fadd fast float %6398, %167
  br label %6402

; <label>:6402                                    ; preds = %6395, %6338
  %6403 = phi float [ %6168, %6395 ], [ %6392, %6338 ]
  %6404 = phi float [ %6169, %6395 ], [ %6393, %6338 ]
  %6405 = phi float [ %6170, %6395 ], [ %6394, %6338 ]
  %6406 = phi float [ %6399, %6395 ], [ %6389, %6338 ]
  %6407 = phi float [ %6400, %6395 ], [ %6390, %6338 ]
  %6408 = phi float [ %6401, %6395 ], [ %6391, %6338 ]
  %6409 = fcmp fast olt float %6253, 1.000000e+00
  br i1 %6409, label %6410, label %6441, !dx.controlflow.hints !101

; <label>:6410                                    ; preds = %6402
  %6411 = fmul fast float %6405, %6251
  %6412 = fmul fast float %6404, %6252
  %6413 = fsub fast float %6411, %6412
  %6414 = fmul fast float %6403, %6252
  %6415 = fmul fast float %6405, %6250
  %6416 = fsub fast float %6414, %6415
  %6417 = fmul fast float %6404, %6250
  %6418 = fmul fast float %6403, %6251
  %6419 = fsub fast float %6417, %6418
  %6420 = fmul fast float %6413, 2.000000e+00
  %6421 = fmul fast float %6416, 2.000000e+00
  %6422 = fmul fast float %6419, 2.000000e+00
  %6423 = fmul fast float %6420, %6253
  %6424 = fmul fast float %6421, %6253
  %6425 = fmul fast float %6422, %6253
  %6426 = fmul fast float %6422, %6251
  %6427 = fmul fast float %6421, %6252
  %6428 = fmul fast float %6420, %6252
  %6429 = fmul fast float %6422, %6250
  %6430 = fmul fast float %6421, %6250
  %6431 = fmul fast float %6420, %6251
  %6432 = fadd fast float %6426, %6403
  %6433 = fadd fast float %6432, %6423
  %6434 = fsub fast float %6433, %6427
  %6435 = fsub fast float %6404, %6429
  %6436 = fadd fast float %6435, %6424
  %6437 = fadd fast float %6436, %6428
  %6438 = fadd fast float %6425, %6405
  %6439 = fsub fast float %6438, %6431
  %6440 = fadd fast float %6439, %6430
  br label %6441

; <label>:6441                                    ; preds = %6410, %6402
  %6442 = phi float [ %6434, %6410 ], [ %6403, %6402 ]
  %6443 = phi float [ %6437, %6410 ], [ %6404, %6402 ]
  %6444 = phi float [ %6440, %6410 ], [ %6405, %6402 ]
  br i1 %6279, label %6476, label %6445

; <label>:6445                                    ; preds = %6441
  %6446 = fmul fast float %5750, 0x400187C840000000
  %6447 = fadd fast float %6446, 0xC00EFC2120000000
  %6448 = fmul fast float %6447, %5750
  %6449 = fadd fast float %6448, 0x3FE5D16340000000
  %6450 = fmul fast float %6449, %5750
  %6451 = fadd fast float %6450, 1.000000e+00
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = fsub fast float %6406, %165
  %6454 = fsub fast float %6407, %166
  %6455 = fsub fast float %6408, %167
  %6456 = fsub fast float %6406, %6234
  %6457 = fsub fast float %6407, %6235
  %6458 = fsub fast float %6408, %6236
  %6459 = call float @dx.op.dot3.f32(i32 55, float %6453, float %6454, float %6455, float %6453, float %6454, float %6455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = call float @dx.op.dot3.f32(i32 55, float %6456, float %6457, float %6458, float %6456, float %6457, float %6458)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = fadd fast float %6460, 0x3EE4F8B580000000
  %6462 = fdiv fast float %6459, %6461
  %6463 = bitcast float %6462 to i32
  %6464 = ashr i32 %6463, 1
  %6465 = add nsw i32 %6464, 532487669
  %6466 = bitcast i32 %6465 to float
  %6467 = fmul fast float %6466, %6452
  %6468 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6469 = fmul fast float %6468, 0x4009981AE0000000
  %6470 = fsub fast float 0x40111BBD80000000, %6469
  %6471 = fmul fast float %6470, %6468
  %6472 = fadd fast float %6471, 0xC0009F6020000000
  %6473 = fmul fast float %6472, %6468
  %6474 = fadd fast float %6473, 1.000000e+00
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  br label %6479

; <label>:6476                                    ; preds = %6441
  %6477 = icmp ne i32 %6280, -1
  %6478 = zext i1 %6477 to i32
  br label %6479

; <label>:6479                                    ; preds = %6476, %6445
  %6480 = phi float [ %5750, %6476 ], [ %6475, %6445 ]
  %6481 = phi i32 [ %6478, %6476 ], [ 0, %6445 ]
  %6482 = fmul float %6480, 5.000000e+00
  %6483 = fsub float 5.000000e+00, %6482
  %6484 = icmp ne i32 %6481, 0
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 3
  %6487 = fadd fast float %6486, %6483
  %6488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6487)  ; FMax(a,b)
  %6489 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6490 = call float @dx.op.unary.f32(i32 6, float %6443)  ; FAbs(value)
  %6491 = fadd fast float %6490, %6489
  %6492 = call float @dx.op.unary.f32(i32 6, float %6444)  ; FAbs(value)
  %6493 = fadd fast float %6491, %6492
  %6494 = fcmp fast oeq float %6493, 0.000000e+00
  %6495 = fdiv fast float 1.000000e+00, %6493
  %6496 = select i1 %6494, float 1.000000e+00, float %6495
  %6497 = fmul fast float %6496, %6442
  %6498 = fmul fast float %6496, %6443
  %6499 = call float @dx.op.unary.f32(i32 6, float %6498)  ; FAbs(value)
  %6500 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6501 = fsub fast float 1.000000e+00, %6499
  %6502 = fsub fast float 1.000000e+00, %6500
  %6503 = fcmp fast oge float %6497, 0.000000e+00
  %6504 = fcmp fast oge float %6498, 0.000000e+00
  %6505 = select i1 %6503, float 1.000000e+00, float -1.000000e+00
  %6506 = select i1 %6504, float 1.000000e+00, float -1.000000e+00
  %6507 = fcmp fast ole float %6444, 0.000000e+00
  %6508 = fmul fast float %6505, %6501
  %6509 = fmul fast float %6506, %6502
  %6510 = select i1 %6507, float %6508, float %6497
  %6511 = select i1 %6507, float %6509, float %6498
  %6512 = fmul fast float %6510, 5.000000e-01
  %6513 = fmul fast float %6511, 5.000000e-01
  %6514 = fadd fast float %6512, 5.000000e-01
  %6515 = fadd fast float %6513, 5.000000e-01
  %6516 = uitofp i32 %6277 to float
  %6517 = call float @dx.op.binary.f32(i32 36, float %6488, float 3.000000e+00)  ; FMin(a,b)
  %6518 = fadd fast float %6517, 2.000000e+00
  %6519 = call float @dx.op.unary.f32(i32 21, float %6518)  ; Exp(value)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6485, 1
  %6521 = fmul fast float %6520, %6519
  %6522 = fmul fast float %6521, 2.000000e+00
  %6523 = fsub fast float 1.000000e+00, %6522
  %6524 = fmul fast float %6514, %6523
  %6525 = fmul fast float %6515, %6523
  %6526 = fadd fast float %6524, %6521
  %6527 = fadd fast float %6525, %6521
  %6528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %53, float %6526, float %6527, float %6516, float undef, i32 0, i32 0, i32 undef, float %6488)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.ResRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.ResRet.f32 %6528, 2
  %6532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.f32 %6532, 3
  %6534 = fmul fast float %6533, %6247
  %6535 = call float @dx.op.binary.f32(i32 36, float %5782, float %6534)  ; FMin(a,b)
  %6536 = select i1 %6484, float %6535, float %6534
  %6537 = fmul fast float %6529, %6326
  %6538 = fmul fast float %6537, %6536
  %6539 = fmul fast float %6530, %6326
  %6540 = fmul fast float %6539, %6536
  %6541 = fmul fast float %6531, %6326
  %6542 = fmul fast float %6541, %6536
  %6543 = fadd fast float %6538, %6219
  %6544 = fadd fast float %6540, %6220
  %6545 = fadd fast float %6542, %6221
  %6546 = fmul fast float %6406, %6326
  %6547 = fmul fast float %6407, %6326
  %6548 = fmul fast float %6408, %6326
  %6549 = fadd fast float %6546, %6224
  %6550 = fadd fast float %6547, %6225
  %6551 = fadd fast float %6548, %6226
  %6552 = fsub fast float %6222, %6326
  br label %6328

; <label>:6553                                    ; preds = %6328
  br label %6554

; <label>:6554                                    ; preds = %6553, %6185
  %6555 = phi float [ %6186, %6185 ], [ %6329, %6553 ]
  %6556 = phi float [ %6187, %6185 ], [ %6330, %6553 ]
  %6557 = phi float [ %6188, %6185 ], [ %6331, %6553 ]
  %6558 = phi float [ %6189, %6185 ], [ %6332, %6553 ]
  %6559 = phi float [ %6191, %6185 ], [ %6333, %6553 ]
  %6560 = phi float [ %6192, %6185 ], [ %6334, %6553 ]
  %6561 = phi float [ %6193, %6185 ], [ %6335, %6553 ]
  %6562 = add i32 %6190, 1
  %6563 = icmp ugt i32 %6562, %6182
  br i1 %6563, label %6564, label %6185, !llvm.loop !102

; <label>:6564                                    ; preds = %6554
  br label %6565

; <label>:6565                                    ; preds = %6564, %6167
  %6566 = phi float [ 0.000000e+00, %6167 ], [ %6555, %6564 ]
  %6567 = phi float [ 0.000000e+00, %6167 ], [ %6556, %6564 ]
  %6568 = phi float [ 0.000000e+00, %6167 ], [ %6557, %6564 ]
  %6569 = phi float [ 0.000000e+00, %6167 ], [ %6559, %6564 ]
  %6570 = phi float [ 0.000000e+00, %6167 ], [ %6560, %6564 ]
  %6571 = phi float [ 0.000000e+00, %6167 ], [ %6561, %6564 ]
  %6572 = call float @dx.op.dot3.f32(i32 55, float %6566, float %6567, float %6568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = select i1 %259, float 0.000000e+00, float %6566
  %6574 = select i1 %259, float %6572, float %6567
  %6575 = select i1 %259, float 0.000000e+00, float %6568
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %6578 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6579 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %6580 = extractvalue %dx.types.CBufRet.f32 %6576, 3
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6583 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6584 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6585 = extractvalue %dx.types.CBufRet.f32 %6581, 3
  %6586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.CBufRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.CBufRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.CBufRet.f32 %6586, 3
  %6591 = call float @dx.op.dot3.f32(i32 55, float %6587, float %6588, float %6589, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %6592 = call float @dx.op.dot3.f32(i32 55, float %6569, float %6570, float %6571, float %6587, float %6588, float %6589)  ; Dot3(ax,ay,az,bx,by,bz)
  %6593 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %6587, float %6588, float %6589)  ; Dot3(ax,ay,az,bx,by,bz)
  %6594 = fadd fast float %5750, -1.000000e+00
  %6595 = fsub fast float %6592, %6593
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 2
  %6598 = fmul fast float %6597, %6592
  %6599 = fdiv fast float 1.600000e+02, %6598
  %6600 = fmul fast float %6594, %6594
  %6601 = fmul fast float %6600, 0xBFB5B17960000000
  %6602 = fmul fast float %6601, %6595
  %6603 = fmul fast float %6602, %6599
  %6604 = call float @dx.op.unary.f32(i32 21, float %6603)  ; Exp(value)
  %6605 = fmul fast float %6604, 0x3FF04B2960000000
  %6606 = fsub fast float 0x3FF04B2960000000, %6605
  %6607 = call float @dx.op.unary.f32(i32 7, float %6606)  ; Saturate(value)
  %6608 = fmul fast float %6607, 4.000000e+00
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6613 = fadd fast float %6610, %6569
  %6614 = fadd fast float %6611, %6570
  %6615 = fadd fast float %6612, %6571
  %6616 = fmul fast float %6613, %6577
  %6617 = call float @dx.op.tertiary.f32(i32 46, float %6614, float %6578, float %6616)  ; FMad(a,b,c)
  %6618 = call float @dx.op.tertiary.f32(i32 46, float %6615, float %6579, float %6617)  ; FMad(a,b,c)
  %6619 = fadd fast float %6618, %6580
  %6620 = fmul fast float %6613, %6582
  %6621 = call float @dx.op.tertiary.f32(i32 46, float %6614, float %6583, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %6615, float %6584, float %6621)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6585
  %6624 = fmul fast float %6613, %6587
  %6625 = call float @dx.op.tertiary.f32(i32 46, float %6614, float %6588, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6615, float %6589, float %6625)  ; FMad(a,b,c)
  %6627 = fadd fast float %6626, %6590
  %6628 = fdiv fast float %6619, %6627
  %6629 = fdiv fast float %6623, %6627
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = fmul fast float %6631, %6628
  %6634 = fmul fast float %6632, %6629
  %6635 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6636 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6637 = fadd fast float %6633, %6635
  %6638 = fadd fast float %6634, %6636
  %6639 = fmul fast float %6591, 8.000000e+00
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6643 = fmul fast float %6637, 2.000000e+00
  %6644 = fmul fast float %6638, 2.000000e+00
  %6645 = fadd fast float %6643, -1.000000e+00
  %6646 = fadd fast float %6644, -1.000000e+00
  %6647 = fmul fast float %6645, %6645
  %6648 = fsub fast float 1.000000e+00, %6647
  %6649 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  %6650 = fmul fast float %6646, %6646
  %6651 = fsub fast float 1.000000e+00, %6650
  %6652 = call float @dx.op.unary.f32(i32 7, float %6651)  ; Saturate(value)
  %6653 = fmul fast float %6642, %6649
  %6654 = fmul fast float %6653, %6652
  %6655 = call float @dx.op.unary.f32(i32 7, float %6654)  ; Saturate(value)
  %6656 = fmul fast float %6655, %6640
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %53, float %6637, float %6638, float undef, float undef, i32 0, i32 0, i32 undef, float %6608)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = select i1 %259, float 0.000000e+00, float %6659
  %6662 = select i1 %259, float 0.000000e+00, float %6660
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6665 = fmul fast float %6664, %6658
  %6666 = fmul fast float %6661, %6664
  %6667 = fmul fast float %6662, %6664
  %6668 = fsub fast float %6665, %6573
  %6669 = fsub fast float %6666, %6574
  %6670 = fsub fast float %6667, %6575
  %6671 = fmul fast float %6668, %6656
  %6672 = fmul fast float %6669, %6656
  %6673 = fmul fast float %6670, %6656
  %6674 = fadd fast float %6671, %6573
  %6675 = fadd fast float %6672, %6574
  %6676 = fadd fast float %6673, %6575
  br label %6677

; <label>:6677                                    ; preds = %6565, %6076
  %6678 = phi float [ %6022, %6076 ], [ %6674, %6565 ]
  %6679 = phi float [ %6023, %6076 ], [ %6675, %6565 ]
  %6680 = phi float [ %6024, %6076 ], [ %6676, %6565 ]
  %6681 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5745, float %5746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = fcmp fast ogt float %6681, 0x3E7FF19E20000000
  %6683 = fdiv fast float 1.000000e+00, %6681
  %6684 = select i1 %6682, float %6683, float 0.000000e+00
  %6685 = fmul fast float %6684, %5744
  %6686 = fmul fast float %6684, %5745
  %6687 = fmul fast float %6684, %5746
  %6688 = fadd fast float %6685, -1.000000e+00
  %6689 = fadd fast float %6686, -1.000000e+00
  %6690 = fadd fast float %6687, -1.000000e+00
  %6691 = fmul fast float %6688, 5.000000e-01
  %6692 = fmul fast float %6689, 5.000000e-01
  %6693 = fmul fast float %6690, 5.000000e-01
  %6694 = fadd fast float %6691, 1.000000e+00
  %6695 = fadd fast float %6692, 1.000000e+00
  %6696 = fadd fast float %6693, 1.000000e+00
  %6697 = call float @dx.op.binary.f32(i32 35, float %5755, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6698 = fdiv fast float %4460, %6697
  %6699 = fcmp fast olt float %5177, 1.270000e+02
  %6700 = fcmp fast olt float %5178, 1.270000e+02
  %6701 = fcmp fast olt float %5179, 1.270000e+02
  %6702 = fmul fast float %5177, 0xBFF7154760000000
  %6703 = fmul fast float %6702, %6698
  %6704 = fmul fast float %5178, 0xBFF7154760000000
  %6705 = fmul fast float %6704, %6698
  %6706 = fmul fast float %5179, 0xBFF7154760000000
  %6707 = fmul fast float %6706, %6698
  %6708 = call float @dx.op.unary.f32(i32 21, float %6703)  ; Exp(value)
  %6709 = call float @dx.op.unary.f32(i32 21, float %6705)  ; Exp(value)
  %6710 = call float @dx.op.unary.f32(i32 21, float %6707)  ; Exp(value)
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6712 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6713 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6714 = select i1 %6699, float %6711, float 0.000000e+00
  %6715 = select i1 %6700, float %6712, float 0.000000e+00
  %6716 = select i1 %6701, float %6713, float 0.000000e+00
  %6717 = fmul fast float %6714, %6082
  %6718 = fmul fast float %6715, %6082
  %6719 = fmul fast float %6716, %6082
  %6720 = fadd fast float %6717, -1.000000e+00
  %6721 = fadd fast float %6718, -1.000000e+00
  %6722 = fadd fast float %6719, -1.000000e+00
  %6723 = fmul fast float %6720, %5132
  %6724 = fmul fast float %6721, %5132
  %6725 = fmul fast float %6722, %5132
  %6726 = fmul fast float %6678, %6077
  %6727 = fmul fast float %6679, %6078
  %6728 = fmul fast float %6680, %6079
  %6729 = fsub fast float 1.000000e+00, %5755
  %6730 = bitcast float %6729 to i32
  %6731 = sitofp i32 %6730 to float
  %6732 = fmul fast float %6731, 5.000000e+00
  %6733 = fadd fast float %6732, 0xC1EFBF8940000000
  %6734 = fptosi float %6733 to i32
  %6735 = bitcast i32 %6734 to float
  %6736 = fmul fast float %6735, %5107
  %6737 = fmul fast float %6014, %6736
  %6738 = fmul fast float %6737, %6082
  %6739 = fmul fast float %6738, %6694
  %6740 = fmul fast float %6015, %6736
  %6741 = fmul fast float %6740, %6082
  %6742 = fmul fast float %6741, %6695
  %6743 = fmul fast float %6016, %6736
  %6744 = fmul fast float %6743, %6082
  %6745 = fmul fast float %6744, %6696
  %6746 = fadd fast float %6726, %5090
  %6747 = fadd fast float %6746, %6739
  %6748 = fmul fast float %6747, %5132
  %6749 = fadd fast float %6727, %5091
  %6750 = fadd fast float %6749, %6742
  %6751 = fmul fast float %6750, %5132
  %6752 = fadd fast float %6728, %5092
  %6753 = fadd fast float %6752, %6745
  %6754 = fmul fast float %6753, %5132
  %6755 = fmul fast float %5742, 0x4012D0A400000000
  %6756 = fadd fast float %6725, 1.000000e+00
  %6757 = fadd fast float %6724, 1.000000e+00
  %6758 = fadd fast float %6723, 1.000000e+00
  %6759 = fmul fast float %6082, %6016
  %6760 = fmul fast float %6082, %6015
  %6761 = fmul fast float %6082, %6014
  %6762 = fmul fast float %5770, %5132
  %6763 = fsub fast float 1.000000e+00, %6762
  %6764 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6765 = fsub fast float 1.000000e+00, %6764
  %6766 = fadd fast float %6755, 0x3FDB6377A0000000
  %6767 = fmul fast float %6765, %6766
  %6768 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6769 = fadd fast float %6767, %6768
  %6770 = call float @dx.op.unary.f32(i32 7, float %6769)  ; Saturate(value)
  %6771 = call float @dx.op.binary.f32(i32 35, float %6770, float 0x3F847AE140000000)  ; FMax(a,b)
  %6772 = fmul fast float %6771, %6771
  %6773 = fmul fast float %6772, %6772
  %6774 = fmul fast float %6773, 0xC00A935000000000
  %6775 = call float @dx.op.unary.f32(i32 21, float %6774)  ; Exp(value)
  %6776 = fsub fast float 1.000000e+00, %6775
  %6777 = fmul fast float %6758, %6018
  %6778 = fmul fast float %6777, %6776
  %6779 = fmul fast float %6757, %6019
  %6780 = fmul fast float %6779, %6776
  %6781 = fmul fast float %6756, %6020
  %6782 = fmul fast float %6781, %6776
  %6783 = fadd fast float %6778, %6761
  %6784 = fmul fast float %6783, %5132
  %6785 = fadd fast float %6780, %6760
  %6786 = fmul fast float %6785, %5132
  %6787 = fadd fast float %6782, %6759
  %6788 = fmul fast float %6787, %5132
  %6789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6789, 3
  %6791 = fcmp fast oeq float %6790, 0.000000e+00
  br i1 %6791, label %8469, label %6792

; <label>:6792                                    ; preds = %6677
  %6793 = extractvalue %dx.types.CBufRet.f32 %6789, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6789, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6789, 2
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = call float @dx.op.dot3.f32(i32 55, float %6797, float %6798, float %6799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = select i1 %259, float %6801, float %6797
  %6805 = select i1 %259, float %6803, float %6798
  %6806 = select i1 %259, float %6802, float %6799
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6809 = fmul fast float %6808, %117
  %6810 = fmul fast float %6808, %118
  %6811 = fmul fast float %6808, %119
  %6812 = fadd fast float %6809, %165
  %6813 = fadd fast float %6810, %166
  %6814 = fadd fast float %6811, %167
  %6815 = fcmp fast olt float %6790, 0.000000e+00
  br i1 %6815, label %7911, label %6816

; <label>:6816                                    ; preds = %6792
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6817, 3
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6826 = extractvalue %dx.types.CBufRet.f32 %6822, 3
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.CBufRet.f32 %6827, 2
  %6831 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6832 = fmul fast float %6818, %6812
  %6833 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6819, float %6832)  ; FMad(a,b,c)
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6820, float %6833)  ; FMad(a,b,c)
  %6835 = fadd fast float %6834, %6821
  %6836 = fmul fast float %6823, %6812
  %6837 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6824, float %6836)  ; FMad(a,b,c)
  %6838 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6825, float %6837)  ; FMad(a,b,c)
  %6839 = fadd fast float %6838, %6826
  %6840 = fmul fast float %6828, %6812
  %6841 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6829, float %6840)  ; FMad(a,b,c)
  %6842 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6830, float %6841)  ; FMad(a,b,c)
  %6843 = fadd fast float %6842, %6831
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 3
  %6848 = fmul fast float %6847, %6835
  %6849 = fmul fast float %6847, %6839
  %6850 = fadd fast float %6848, %6845
  %6851 = fadd fast float %6849, %6846
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6856 = fmul fast float %6855, %6835
  %6857 = fmul fast float %6855, %6839
  %6858 = fadd fast float %6856, %6853
  %6859 = fadd fast float %6857, %6854
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 1
  %6862 = fsub fast float %6861, %6843
  %6863 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %6864 = fmul fast float %6862, %6863
  %6865 = fsub fast float 1.000000e+00, %6864
  %6866 = call float @dx.op.unary.f32(i32 7, float %6865)  ; Saturate(value)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6870 = fadd fast float %6869, %6867
  %6871 = fcmp fast ogt float %6870, 0.000000e+00
  br i1 %6871, label %6872, label %6896

; <label>:6872                                    ; preds = %6816
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6876 = fsub fast float %6858, %6874
  %6877 = fsub fast float %6859, %6875
  %6878 = fcmp fast olt float %6876, 0.000000e+00
  %6879 = fcmp fast olt float %6877, 0.000000e+00
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 0
  %6882 = extractvalue %dx.types.CBufRet.f32 %6880, 1
  %6883 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6884 = extractvalue %dx.types.CBufRet.f32 %6880, 3
  %6885 = select i1 %6878, float %6881, float %6883
  %6886 = select i1 %6879, float %6882, float %6884
  %6887 = fmul fast float %6885, %6876
  %6888 = fmul fast float %6886, %6877
  %6889 = call float @dx.op.unary.f32(i32 6, float %6887)  ; FAbs(value)
  %6890 = call float @dx.op.unary.f32(i32 6, float %6888)  ; FAbs(value)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6892 = call float @dx.op.binary.f32(i32 35, float %6889, float %6890)  ; FMax(a,b)
  %6893 = fsub fast float %6891, %6892
  %6894 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6895 = fmul fast float %6894, %6866
  br label %6896

; <label>:6896                                    ; preds = %6872, %6816
  %6897 = phi float [ %6895, %6872 ], [ 0.000000e+00, %6816 ]
  %6898 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6899 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6900 = fadd fast float %6899, %6898
  %6901 = fcmp fast ogt float %6900, 0.000000e+00
  %6902 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  br i1 %6901, label %6903, label %6926

; <label>:6903                                    ; preds = %6896
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.CBufRet.f32 %6904, 1
  %6907 = fsub fast float %6850, %6905
  %6908 = fsub fast float %6851, %6906
  %6909 = fcmp fast olt float %6907, 0.000000e+00
  %6910 = fcmp fast olt float %6908, 0.000000e+00
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.CBufRet.f32 %6911, 2
  %6915 = extractvalue %dx.types.CBufRet.f32 %6911, 3
  %6916 = select i1 %6909, float %6912, float %6914
  %6917 = select i1 %6910, float %6913, float %6915
  %6918 = fmul fast float %6916, %6907
  %6919 = fmul fast float %6917, %6908
  %6920 = call float @dx.op.unary.f32(i32 6, float %6918)  ; FAbs(value)
  %6921 = call float @dx.op.unary.f32(i32 6, float %6919)  ; FAbs(value)
  %6922 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6923 = fsub fast float %6902, %6922
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = fmul fast float %6924, %6866
  br label %6926

; <label>:6926                                    ; preds = %6903, %6896
  %6927 = phi float [ %6925, %6903 ], [ 0.000000e+00, %6896 ]
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6934 = fsub fast float %6835, %6932
  %6935 = fsub fast float %6839, %6933
  %6936 = fcmp fast olt float %6934, 0.000000e+00
  %6937 = fcmp fast olt float %6935, 0.000000e+00
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6942 = extractvalue %dx.types.CBufRet.f32 %6938, 3
  %6943 = select i1 %6936, float %6939, float %6941
  %6944 = select i1 %6937, float %6940, float %6942
  %6945 = fmul fast float %6943, %6934
  %6946 = fmul fast float %6944, %6935
  %6947 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6948 = call float @dx.op.unary.f32(i32 6, float %6946)  ; FAbs(value)
  %6949 = call float @dx.op.binary.f32(i32 35, float %6947, float %6948)  ; FMax(a,b)
  %6950 = fsub fast float %6902, %6949
  %6951 = call float @dx.op.unary.f32(i32 7, float %6950)  ; Saturate(value)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6951, float %6930)  ; FMin(a,b)
  %6953 = fmul fast float %6952, %6866
  %6954 = fsub fast float %6927, %6953
  %6955 = fsub fast float %6897, %6927
  %6956 = fsub fast float %6955, %6953
  %6957 = call float @dx.op.binary.f32(i32 35, float %6927, float %6897)  ; FMax(a,b)
  %6958 = call float @dx.op.binary.f32(i32 35, float %6953, float %6957)  ; FMax(a,b)
  %6959 = fcmp fast olt float %6958, 1.000000e+00
  br i1 %6959, label %6960, label %7358, !dx.controlflow.hints !104

; <label>:6960                                    ; preds = %6926
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 0
  %6963 = fcmp fast une float %6962, 0.000000e+00
  br i1 %6963, label %6964, label %7358, !dx.controlflow.hints !105

; <label>:6964                                    ; preds = %6960
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6965, 3
  %6970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6971 = extractvalue %dx.types.CBufRet.f32 %6970, 0
  %6972 = extractvalue %dx.types.CBufRet.f32 %6970, 1
  %6973 = extractvalue %dx.types.CBufRet.f32 %6970, 2
  %6974 = extractvalue %dx.types.CBufRet.f32 %6970, 3
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.CBufRet.f32 %6975, 3
  %6980 = fmul fast float %6966, %6812
  %6981 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6967, float %6980)  ; FMad(a,b,c)
  %6982 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6968, float %6981)  ; FMad(a,b,c)
  %6983 = fadd fast float %6982, %6969
  %6984 = fmul fast float %6971, %6812
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6972, float %6984)  ; FMad(a,b,c)
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6973, float %6985)  ; FMad(a,b,c)
  %6987 = fadd fast float %6986, %6974
  %6988 = fmul fast float %6976, %6812
  %6989 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %6977, float %6988)  ; FMad(a,b,c)
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %6978, float %6989)  ; FMad(a,b,c)
  %6991 = fadd fast float %6990, %6979
  %6992 = fcmp fast oge float %6983, 1.000000e+00
  %6993 = fcmp fast oge float %6987, 1.000000e+00
  %6994 = or i1 %6992, %6993
  %6995 = fcmp fast olt float %6983, 0.000000e+00
  %6996 = fcmp fast olt float %6987, 0.000000e+00
  %6997 = or i1 %6995, %6996
  %6998 = or i1 %6994, %6997
  br i1 %6998, label %7358, label %6999, !dx.controlflow.hints !106

; <label>:6999                                    ; preds = %6964
  %7000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7001 = extractvalue %dx.types.CBufRet.f32 %7000, 0
  %7002 = extractvalue %dx.types.CBufRet.f32 %7000, 1
  %7003 = extractvalue %dx.types.CBufRet.f32 %7000, 2
  %7004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.i32 %7004, 2
  %7006 = uitofp i32 %7005 to float
  %7007 = extractvalue %dx.types.CBufRet.i32 %7004, 3
  %7008 = uitofp i32 %7007 to float
  %7009 = extractvalue %dx.types.CBufRet.f32 %7000, 3
  %7010 = fmul fast float %7009, 2.000000e+00
  %7011 = fsub fast float %6983, %7001
  %7012 = fsub fast float %6987, %7002
  %7013 = fmul fast float %7010, %7011
  %7014 = fmul fast float %7010, %7012
  %7015 = fdiv fast float 1.000000e+00, %6795
  %7016 = fmul fast float %7014, %7015
  %7017 = call float @dx.op.unary.f32(i32 6, float %7016)  ; FAbs(value)
  %7018 = fmul fast float %7003, %6814
  %7019 = fmul fast float %7018, %7010
  %7020 = call float @dx.op.unary.f32(i32 6, float %7019)  ; FAbs(value)
  %7021 = call float @dx.op.unary.f32(i32 6, float %7013)  ; FAbs(value)
  %7022 = call float @dx.op.binary.f32(i32 35, float %7020, float %7017)  ; FMax(a,b)
  %7023 = call float @dx.op.binary.f32(i32 35, float %7021, float %7022)  ; FMax(a,b)
  %7024 = fmul fast float %7023, 2.000000e+00
  %7025 = call float @dx.op.unary.f32(i32 23, float %7024)  ; Log(value)
  %7026 = call float @dx.op.binary.f32(i32 35, float %7025, float %7006)  ; FMax(a,b)
  %7027 = call float @dx.op.unary.f32(i32 22, float %7026)  ; Frc(value)
  %7028 = fadd fast float %7027, 0xBFEA666660000000
  %7029 = fmul fast float %7028, 8.000000e+00
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = call float @dx.op.unary.f32(i32 27, float %7026)  ; Round_ni(value)
  %7032 = fadd fast float %7031, %7030
  %7033 = call float @dx.op.binary.f32(i32 36, float %7032, float %7008)  ; FMin(a,b)
  %7034 = call float @dx.op.unary.f32(i32 27, float %7033)  ; Round_ni(value)
  %7035 = fsub fast float -0.000000e+00, %7034
  %7036 = call float @dx.op.unary.f32(i32 21, float %7035)  ; Exp(value)
  %7037 = fmul fast float %7036, %7010
  %7038 = fmul fast float %7037, %6983
  %7039 = fmul fast float %7037, %6987
  %7040 = fmul fast float %7038, 2.500000e-01
  %7041 = fmul fast float %7039, 2.500000e-01
  %7042 = fadd fast float %7040, 5.000000e-01
  %7043 = fadd fast float %7041, 5.000000e-01
  %7044 = fsub fast float %7008, %7006
  %7045 = fptoui float %7044 to i32
  %7046 = add i32 %7045, 320
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %7046)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7050 = fcmp fast une float %7033, %7008
  %7051 = fsub fast float %6983, %7048
  %7052 = fsub fast float %6987, %7049
  %7053 = call float @dx.op.unary.f32(i32 6, float %7051)  ; FAbs(value)
  %7054 = call float @dx.op.unary.f32(i32 6, float %7052)  ; FAbs(value)
  %7055 = fmul fast float %7053, %7037
  %7056 = fmul fast float %7054, %7037
  %7057 = fcmp fast olt float %7055, 1.000000e+00
  %7058 = fcmp fast olt float %7056, 1.000000e+00
  %7059 = and i1 %7057, %7058
  %7060 = or i1 %7050, %7059
  br i1 %7060, label %7061, label %7358, !dx.controlflow.hints !107

; <label>:7061                                    ; preds = %6999
  %7062 = fmul fast float %7039, 5.000000e-01
  %7063 = fmul fast float %7038, 5.000000e-01
  %7064 = fadd fast float %7062, 5.000000e-01
  %7065 = fadd fast float %7063, 5.000000e-01
  %7066 = sitofp i32 %7005 to float
  %7067 = fsub fast float %7033, %7066
  %7068 = call float @dx.op.unary.f32(i32 27, float %7067)  ; Round_ni(value)
  %7069 = call float @dx.op.unary.f32(i32 22, float %7033)  ; Frc(value)
  %7070 = call float @dx.op.unary.f32(i32 22, float %7065)  ; Frc(value)
  %7071 = call float @dx.op.unary.f32(i32 22, float %7064)  ; Frc(value)
  %7072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %7070, float %7071, float %7068, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7073 = extractvalue %dx.types.ResRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.ResRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.ResRet.f32 %7072, 2
  %7076 = extractvalue %dx.types.ResRet.f32 %7072, 3
  %7077 = fcmp fast ogt float %7069, 0.000000e+00
  br i1 %7077, label %7078, label %7099, !dx.controlflow.hints !108

; <label>:7078                                    ; preds = %7061
  %7079 = fadd fast float %7068, 1.000000e+00
  %7080 = call float @dx.op.unary.f32(i32 22, float %7042)  ; Frc(value)
  %7081 = call float @dx.op.unary.f32(i32 22, float %7043)  ; Frc(value)
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %7080, float %7081, float %7079, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.ResRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.ResRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.ResRet.f32 %7082, 3
  %7087 = fsub fast float %7083, %7073
  %7088 = fsub fast float %7084, %7074
  %7089 = fsub fast float %7085, %7075
  %7090 = fsub fast float %7086, %7076
  %7091 = fmul fast float %7087, %7069
  %7092 = fmul fast float %7088, %7069
  %7093 = fmul fast float %7089, %7069
  %7094 = fmul fast float %7090, %7069
  %7095 = fadd fast float %7091, %7073
  %7096 = fadd fast float %7092, %7074
  %7097 = fadd fast float %7093, %7075
  %7098 = fadd fast float %7094, %7076
  br label %7099

; <label>:7099                                    ; preds = %7078, %7061
  %7100 = phi float [ %7095, %7078 ], [ %7073, %7061 ]
  %7101 = phi float [ %7096, %7078 ], [ %7074, %7061 ]
  %7102 = phi float [ %7097, %7078 ], [ %7075, %7061 ]
  %7103 = phi float [ %7098, %7078 ], [ %7076, %7061 ]
  %7104 = fadd fast float %7100, -5.000000e-01
  %7105 = fadd fast float %7102, -5.000000e-01
  %7106 = fmul fast float %7104, 0xBFD5555560000000
  %7107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7105, float %7106)  ; FMad(a,b,c)
  %7108 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7101, float 0.000000e+00)  ; FMad(a,b,c)
  %7109 = fadd fast float %7108, %7103
  %7110 = fmul fast float %7104, -7.500000e-01
  %7111 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7105, float %7110)  ; FMad(a,b,c)
  %7112 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7101, float 0.000000e+00)  ; FMad(a,b,c)
  %7113 = fadd fast float %7112, %7103
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 0
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.CBufRet.f32 %7116, 3
  %7121 = fsub fast float %7117, %7107
  %7122 = fsub fast float %7118, %7109
  %7123 = fsub fast float %7119, %7111
  %7124 = fsub fast float %7120, %7113
  %7125 = fmul fast float %7121, %7115
  %7126 = fmul fast float %7122, %7115
  %7127 = fmul fast float %7123, %7115
  %7128 = fmul fast float %7124, %7115
  %7129 = fadd fast float %7125, %7107
  %7130 = fadd fast float %7126, %7109
  %7131 = fadd fast float %7127, %7111
  %7132 = fadd fast float %7128, %7113
  %7133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7134 = extractvalue %dx.types.ResRet.i32 %7133, 0
  %7135 = and i32 %7134, 536870911
  %7136 = uitofp i32 %7135 to float
  %7137 = fmul fast float %7136, %6983
  %7138 = fmul fast float %7136, %6987
  %7139 = fptoui float %7137 to i32
  %7140 = fptoui float %7138 to i32
  %7141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7142 = extractvalue %dx.types.ResRet.i32 %7141, 0
  %7143 = and i32 %7142, 31
  %7144 = lshr i32 %7139, %7143
  %7145 = lshr i32 %7140, %7143
  %7146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7147 = extractvalue %dx.types.ResRet.i32 %7146, 0
  %7148 = and i32 %7147, 31
  %7149 = shl i32 1, %7148
  %7150 = call i32 @dx.op.binary.i32(i32 40, i32 %7149, i32 4)  ; UMin(a,b)
  %7151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7152 = extractvalue %dx.types.ResRet.i32 %7151, 0
  %7153 = extractvalue %dx.types.ResRet.i32 %7151, 1
  %7154 = icmp eq i32 %7150, 0
  br i1 %7154, label %7196, label %7155

; <label>:7155                                    ; preds = %7099
  br label %7156

; <label>:7156                                    ; preds = %7184, %7155
  %7157 = phi i32 [ %7187, %7184 ], [ 0, %7155 ]
  %7158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.i32 %7158, 0
  %7160 = lshr i32 %7159, 16
  %7161 = and i32 %7160, 31
  %7162 = shl i32 %7145, %7161
  %7163 = add i32 %7162, %7144
  %7164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7165 = extractvalue %dx.types.ResRet.i32 %7164, 0
  %7166 = and i32 %7165, 31
  %7167 = shl i32 %7163, %7166
  %7168 = add i32 %7167, %7157
  %7169 = shl i32 %7168, 2
  %7170 = add i32 %7169, 32
  %7171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7170, i32 undef)  ; BufferLoad(srv,index,wot)
  %7172 = extractvalue %dx.types.ResRet.i32 %7171, 0
  %7173 = icmp slt i32 %7172, 0
  %7174 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7157
  %7175 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7157
  %7176 = bitcast float* %7174 to i32*
  %7177 = bitcast float* %7175 to i32*
  br i1 %7173, label %7178, label %7184

; <label>:7178                                    ; preds = %7156
  %7179 = and i32 %7172, 1073741823
  %7180 = add nuw nsw i32 %7179, 20
  %7181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7180, i32 undef)  ; BufferLoad(srv,index,wot)
  %7182 = extractvalue %dx.types.ResRet.i32 %7181, 0
  %7183 = extractvalue %dx.types.ResRet.i32 %7181, 1
  br label %7184

; <label>:7184                                    ; preds = %7178, %7156
  %7185 = phi i32 [ %7182, %7178 ], [ %7152, %7156 ]
  %7186 = phi i32 [ %7183, %7178 ], [ %7153, %7156 ]
  store i32 %7185, i32* %7176, align 4
  store i32 %7186, i32* %7177, align 4
  %7187 = add nuw i32 %7157, 1
  %7188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.i32 %7188, 2
  %7190 = icmp eq i32 %7189, 0
  %7191 = icmp ugt i32 %7172, -1073741825
  %7192 = and i1 %7191, %7190
  %7193 = icmp ult i32 %7187, %7150
  %7194 = and i1 %7192, %7193
  br i1 %7194, label %7156, label %7195

; <label>:7195                                    ; preds = %7184
  br label %7196

; <label>:7196                                    ; preds = %7195, %7099
  %7197 = phi i32 [ 0, %7099 ], [ %7187, %7195 ]
  %7198 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %7199 = fptoui float %7198 to i32
  %7200 = icmp eq i32 %7199, 0
  br i1 %7200, label %7252, label %7201

; <label>:7201                                    ; preds = %7196
  br label %7202

; <label>:7202                                    ; preds = %7247, %7201
  %7203 = phi i32 [ %7248, %7247 ], [ %7197, %7201 ]
  %7204 = phi i32 [ %7249, %7247 ], [ 0, %7201 ]
  %7205 = lshr i32 %7204, 2
  %7206 = and i32 %7204, 3
  %7207 = add nuw nsw i32 %7205, 83
  %7208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %7207)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.i32 %7208, 0
  %7210 = extractvalue %dx.types.CBufRet.i32 %7208, 1
  %7211 = extractvalue %dx.types.CBufRet.i32 %7208, 2
  %7212 = extractvalue %dx.types.CBufRet.i32 %7208, 3
  %7213 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %7209, i32* %7213, align 4
  %7214 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %7210, i32* %7214, align 4
  %7215 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %7211, i32* %7215, align 4
  %7216 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %7212, i32* %7216, align 4
  %7217 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %7206
  %7218 = load i32, i32* %7217, align 4, !tbaa !109, !noalias !113
  %7219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7220 = extractvalue %dx.types.ResRet.i32 %7219, 0
  %7221 = lshr i32 %7220, 16
  %7222 = and i32 %7221, 31
  %7223 = shl i32 %7145, %7222
  %7224 = add i32 %7223, %7144
  %7225 = shl i32 %7224, 2
  %7226 = add i32 %7225, %7218
  %7227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7226, i32 undef)  ; BufferLoad(srv,index,wot)
  %7228 = extractvalue %dx.types.ResRet.i32 %7227, 0
  %7229 = icmp eq i32 %7228, 0
  br i1 %7229, label %7247, label %7230

; <label>:7230                                    ; preds = %7202
  %7231 = icmp slt i32 %7228, 0
  %7232 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7203
  %7233 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7203
  %7234 = bitcast float* %7232 to i32*
  %7235 = bitcast float* %7233 to i32*
  br i1 %7231, label %7236, label %7243

; <label>:7236                                    ; preds = %7230
  %7237 = and i32 %7228, 1073741823
  %7238 = add i32 %7218, 20
  %7239 = add i32 %7238, %7237
  %7240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7239, i32 undef)  ; BufferLoad(srv,index,wot)
  %7241 = extractvalue %dx.types.ResRet.i32 %7240, 0
  %7242 = extractvalue %dx.types.ResRet.i32 %7240, 1
  br label %7243

; <label>:7243                                    ; preds = %7236, %7230
  %7244 = phi i32 [ %7241, %7236 ], [ %7152, %7230 ]
  %7245 = phi i32 [ %7242, %7236 ], [ %7153, %7230 ]
  store i32 %7244, i32* %7234, align 4
  store i32 %7245, i32* %7235, align 4
  %7246 = add i32 %7203, 1
  br label %7247

; <label>:7247                                    ; preds = %7243, %7202
  %7248 = phi i32 [ %7203, %7202 ], [ %7246, %7243 ]
  %7249 = add nuw i32 %7204, 1
  %7250 = icmp eq i32 %7249, %7199
  br i1 %7250, label %7251, label %7202

; <label>:7251                                    ; preds = %7247
  br label %7252

; <label>:7252                                    ; preds = %7251, %7196
  %7253 = phi i32 [ %7197, %7196 ], [ %7248, %7251 ]
  %7254 = icmp eq i32 %7253, 1
  %7255 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7256 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7254, label %7257, label %7260

; <label>:7257                                    ; preds = %7252
  %7258 = load float, float* %7255, align 4
  %7259 = load float, float* %7256, align 4
  br label %7287

; <label>:7260                                    ; preds = %7252
  %7261 = load float, float* %7255, align 4
  %7262 = load float, float* %7256, align 4
  %7263 = fdiv fast float 1.000000e+00, %7262
  %7264 = fsub fast float %7261, %7263
  %7265 = icmp ugt i32 %7253, 1
  br i1 %7265, label %7266, label %7282

; <label>:7266                                    ; preds = %7260
  br label %7267

; <label>:7267                                    ; preds = %7267, %7266
  %7268 = phi float [ %7277, %7267 ], [ %7264, %7266 ]
  %7269 = phi float [ %7278, %7267 ], [ %7261, %7266 ]
  %7270 = phi i32 [ %7279, %7267 ], [ 1, %7266 ]
  %7271 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7270
  %7272 = load float, float* %7271, align 4
  %7273 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7270
  %7274 = load float, float* %7273, align 4
  %7275 = fdiv fast float 1.000000e+00, %7274
  %7276 = fsub fast float %7272, %7275
  %7277 = call float @dx.op.binary.f32(i32 36, float %7268, float %7276)  ; FMin(a,b)
  %7278 = call float @dx.op.binary.f32(i32 35, float %7269, float %7272)  ; FMax(a,b)
  %7279 = add nuw i32 %7270, 1
  %7280 = icmp eq i32 %7279, %7253
  br i1 %7280, label %7281, label %7267

; <label>:7281                                    ; preds = %7267
  br label %7282

; <label>:7282                                    ; preds = %7281, %7260
  %7283 = phi float [ %7264, %7260 ], [ %7277, %7281 ]
  %7284 = phi float [ %7261, %7260 ], [ %7278, %7281 ]
  %7285 = fsub fast float %7284, %7283
  %7286 = fdiv fast float 1.000000e+00, %7285
  br label %7287

; <label>:7287                                    ; preds = %7282, %7257
  %7288 = phi float [ %7258, %7257 ], [ %7284, %7282 ]
  %7289 = phi float [ %7259, %7257 ], [ %7286, %7282 ]
  %7290 = fadd fast float %6991, %7288
  %7291 = fmul fast float %7290, %7289
  %7292 = call float @dx.op.unary.f32(i32 7, float %7291)  ; Saturate(value)
  %7293 = fmul fast float %7292, 2.000000e+00
  %7294 = fsub fast float 1.000000e+00, %7293
  %7295 = fmul fast float %7129, %7129
  %7296 = fsub fast float %7130, %7295
  %7297 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7296)  ; FMax(a,b)
  %7298 = fdiv fast float 1.000000e+00, %7297
  %7299 = fmul fast float %7130, %7129
  %7300 = fsub fast float %7131, %7299
  %7301 = fsub fast float %7294, %7129
  %7302 = fmul fast float %7294, %7294
  %7303 = fsub fast float %7302, %7130
  %7304 = fmul fast float %7298, %7300
  %7305 = fmul fast float %7304, %7301
  %7306 = fsub fast float %7303, %7305
  %7307 = fmul fast float %7130, %7130
  %7308 = fsub fast float %7132, %7307
  %7309 = fmul fast float %7300, %7300
  %7310 = fmul fast float %7309, %7298
  %7311 = fsub fast float %7308, %7310
  %7312 = fdiv fast float %7306, %7311
  %7313 = fmul fast float %7312, %7300
  %7314 = fsub fast float %7301, %7313
  %7315 = fmul fast float %7314, %7298
  %7316 = fmul fast float %7315, %7129
  %7317 = fsub fast float 1.000000e+00, %7316
  %7318 = fmul fast float %7312, %7130
  %7319 = fsub fast float %7317, %7318
  %7320 = fmul fast float %7315, %7315
  %7321 = fmul fast float %7312, 4.000000e+00
  %7322 = fmul fast float %7321, %7319
  %7323 = fsub fast float %7320, %7322
  %7324 = call float @dx.op.unary.f32(i32 24, float %7323)  ; Sqrt(value)
  %7325 = fcmp fast oge float %7315, 0.000000e+00
  %7326 = fsub fast float -0.000000e+00, %7324
  %7327 = select i1 %7325, float %7326, float %7324
  %7328 = fsub fast float %7327, %7315
  %7329 = fdiv fast float %7328, %7312
  %7330 = fdiv fast float %7319, %7328
  %7331 = fmul fast float %7329, 5.000000e-01
  %7332 = fmul fast float %7330, 2.000000e+00
  %7333 = select i1 %7325, float %7331, float %7332
  %7334 = select i1 %7325, float %7332, float %7331
  %7335 = call float @dx.op.binary.f32(i32 35, float %7333, float %7334)  ; FMax(a,b)
  %7336 = call float @dx.op.binary.f32(i32 36, float %7333, float %7334)  ; FMin(a,b)
  %7337 = fcmp fast ogt float %7294, %7335
  %7338 = fsub fast float %7294, %7336
  %7339 = fsub fast float %7294, %7335
  %7340 = fsub fast float %7335, %7336
  %7341 = select i1 %7337, float %7339, float %7340
  %7342 = fmul float %7338, %7341
  %7343 = select i1 %7337, float %7336, float %7294
  %7344 = fcmp fast ogt float %7294, %7336
  %7345 = fmul fast float %7343, %7335
  %7346 = fadd fast float %7343, %7335
  %7347 = fmul fast float %7346, %7129
  %7348 = fadd fast float %7345, %7130
  %7349 = fsub fast float %7348, %7347
  %7350 = fdiv fast float %7349, %7342
  %7351 = select i1 %7344, float %7350, float 0.000000e+00
  %7352 = fsub fast float 1.000000e+00, %7351
  %7353 = select i1 %7337, float %7352, float %7351
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7356 = fmul fast float %7355, %7354
  %7357 = fsub fast float 1.000000e+00, %7356
  br label %7358

; <label>:7358                                    ; preds = %7287, %6999, %6964, %6960, %6926
  %7359 = phi float [ 1.000000e+00, %6926 ], [ %7357, %7287 ], [ 1.000000e+00, %6964 ], [ 1.000000e+00, %6999 ], [ 1.000000e+00, %6960 ]
  %7360 = fcmp fast ogt float %6956, 0.000000e+00
  br i1 %7360, label %7361, label %7523, !dx.controlflow.hints !122

; <label>:7361                                    ; preds = %7358
  %7362 = fadd fast float %6869, %6843
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7368 = call float @dx.op.binary.f32(i32 35, float %7362, float 0.000000e+00)  ; FMax(a,b)
  %7369 = fadd fast float %7368, 0x3F10000000000000
  %7370 = fcmp fast oeq float %7367, 0.000000e+00
  br i1 %7370, label %7371, label %7438

; <label>:7371                                    ; preds = %7361
  %7372 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7373 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7374 = fmul fast float %7373, %6858
  %7375 = fmul fast float %7372, %6859
  %7376 = fadd fast float %7374, 5.000000e-01
  %7377 = call float @dx.op.unary.f32(i32 27, float %7376)  ; Round_ni(value)
  %7378 = fadd fast float %7375, 5.000000e-01
  %7379 = call float @dx.op.unary.f32(i32 27, float %7378)  ; Round_ni(value)
  %7380 = fsub fast float %7376, %7377
  %7381 = fsub fast float %7378, %7379
  %7382 = fadd fast float %7377, -5.000000e-01
  %7383 = fadd fast float %7379, -5.000000e-01
  %7384 = fmul fast float %7380, 2.000000e+00
  %7385 = fsub fast float 3.000000e+00, %7384
  %7386 = fadd fast float %7384, 1.000000e+00
  %7387 = fsub fast float 2.000000e+00, %7380
  %7388 = bitcast float %7385 to i32
  %7389 = sub nsw i32 2129859010, %7388
  %7390 = bitcast i32 %7389 to float
  %7391 = fmul fast float %7390, %7387
  %7392 = fadd fast float %7391, -1.000000e+00
  %7393 = bitcast float %7386 to i32
  %7394 = sub nsw i32 2129859010, %7393
  %7395 = bitcast i32 %7394 to float
  %7396 = fmul fast float %7395, %7380
  %7397 = fadd fast float %7396, 1.000000e+00
  %7398 = fmul fast float %7381, 2.000000e+00
  %7399 = fsub fast float 3.000000e+00, %7398
  %7400 = fadd fast float %7398, 1.000000e+00
  %7401 = fsub fast float 2.000000e+00, %7381
  %7402 = bitcast float %7399 to i32
  %7403 = sub nsw i32 2129859010, %7402
  %7404 = bitcast i32 %7403 to float
  %7405 = fmul fast float %7404, %7401
  %7406 = fadd fast float %7405, -1.000000e+00
  %7407 = bitcast float %7400 to i32
  %7408 = sub nsw i32 2129859010, %7407
  %7409 = bitcast i32 %7408 to float
  %7410 = fmul fast float %7409, %7381
  %7411 = fadd fast float %7410, 1.000000e+00
  %7412 = fadd fast float %7392, %7382
  %7413 = fmul fast float %7412, %7364
  %7414 = fadd fast float %7406, %7383
  %7415 = fmul fast float %7414, %7365
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7413, float %7415, float undef, float undef, i32 0, i32 0, i32 undef, float %7369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fmul fast float %7417, %7385
  %7419 = fadd fast float %7397, %7382
  %7420 = fmul fast float %7419, %7364
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7420, float %7415, float undef, float undef, i32 0, i32 0, i32 undef, float %7369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = fmul fast float %7422, %7386
  %7424 = fadd fast float %7411, %7383
  %7425 = fmul fast float %7424, %7365
  %7426 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7413, float %7425, float undef, float undef, i32 0, i32 0, i32 undef, float %7369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = fmul fast float %7427, %7385
  %7429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7420, float %7425, float undef, float undef, i32 0, i32 0, i32 undef, float %7369)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = fmul fast float %7430, %7386
  %7432 = fadd fast float %7431, %7428
  %7433 = fmul fast float %7432, %7400
  %7434 = fadd fast float %7423, %7418
  %7435 = fmul fast float %7434, %7399
  %7436 = fadd fast float %7435, %7433
  %7437 = fmul fast float %7436, 6.250000e-02
  br label %7523

; <label>:7438                                    ; preds = %7361
  %7439 = fmul fast float %270, 0x401921FB60000000
  %7440 = call float @dx.op.unary.f32(i32 13, float %7439)  ; Sin(value)
  %7441 = call float @dx.op.unary.f32(i32 12, float %7439)  ; Cos(value)
  %7442 = fsub fast float -0.000000e+00, %7440
  br label %7443

; <label>:7443                                    ; preds = %7492, %7438
  %7444 = phi float [ 0.000000e+00, %7438 ], [ %7487, %7492 ]
  %7445 = phi float [ 0.000000e+00, %7438 ], [ %7489, %7492 ]
  %7446 = phi i32 [ 0, %7438 ], [ %7493, %7492 ]
  %7447 = mul i32 %7446, 2
  %7448 = add i32 0, %7447
  %7449 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7448
  %7450 = load float, float* %7449, align 4
  %7451 = mul i32 %7446, 2
  %7452 = add i32 1, %7451
  %7453 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7452
  %7454 = load float, float* %7453, align 4
  %7455 = fmul fast float %7450, %7441
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %7454, float %7442, float %7455)  ; FMad(a,b,c)
  %7457 = fmul fast float %7450, %7440
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7454, float %7441, float %7457)  ; FMad(a,b,c)
  %7459 = fmul fast float %7456, %7367
  %7460 = fmul fast float %7458, %7367
  %7461 = fadd fast float %7459, %6858
  %7462 = fadd fast float %7460, %6859
  %7463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %7461, float %7462, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = extractvalue %dx.types.ResRet.f32 %7463, 3
  %7468 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7464, float* %7468, align 4
  %7469 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7465, float* %7469, align 4
  %7470 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7466, float* %7470, align 4
  %7471 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7467, float* %7471, align 4
  %7472 = fsub fast float %7464, %7369
  %7473 = fcmp fast olt float %7472, 0.000000e+00
  %7474 = select i1 %7473, float 0.000000e+00, float 1.000000e+00
  %7475 = fadd fast float %7474, %7444
  %7476 = fmul fast float %7474, %7472
  %7477 = fadd fast float %7476, %7445
  br label %7478

; <label>:7478                                    ; preds = %7478, %7443
  %7479 = phi i32 [ 1, %7443 ], [ %7490, %7478 ]
  %7480 = phi float [ %7477, %7443 ], [ %7489, %7478 ]
  %7481 = phi float [ %7475, %7443 ], [ %7487, %7478 ]
  %7482 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7479
  %7483 = load float, float* %7482, align 4, !tbaa !123, !noalias !113
  %7484 = fsub fast float %7483, %7369
  %7485 = fcmp fast olt float %7484, 0.000000e+00
  %7486 = select i1 %7485, float 0.000000e+00, float 1.000000e+00
  %7487 = fadd fast float %7486, %7481
  %7488 = fmul fast float %7486, %7484
  %7489 = fadd fast float %7488, %7480
  %7490 = add nuw nsw i32 %7479, 1
  %7491 = icmp eq i32 %7490, 4
  br i1 %7491, label %7492, label %7478, !llvm.loop !125

; <label>:7492                                    ; preds = %7478
  %7493 = add nuw nsw i32 %7446, 1
  %7494 = icmp eq i32 %7493, 8
  br i1 %7494, label %7495, label %7443, !llvm.loop !126

; <label>:7495                                    ; preds = %7492
  %7496 = fdiv fast float 1.000000e+00, %7487
  %7497 = fmul fast float %7496, %7489
  %7498 = fdiv fast float 1.000000e+00, %7369
  %7499 = fmul fast float %7497, %7498
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  %7501 = call float @dx.op.binary.f32(i32 35, float %7500, float 0.000000e+00)  ; FMax(a,b)
  %7502 = fmul fast float %7487, 3.125000e-02
  %7503 = call float @dx.op.unary.f32(i32 7, float %7502)  ; Saturate(value)
  %7504 = fmul fast float %7503, 2.000000e+00
  %7505 = fadd fast float %7504, -1.000000e+00
  %7506 = fcmp fast ogt float %7505, 0.000000e+00
  %7507 = fcmp fast olt float %7505, 0.000000e+00
  %7508 = zext i1 %7506 to i32
  %7509 = zext i1 %7507 to i32
  %7510 = sub nsw i32 %7508, %7509
  %7511 = sitofp i32 %7510 to float
  %7512 = fmul fast float %7511, %7505
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fmul fast float %7513, %7513
  %7515 = fmul fast float %7514, %7513
  %7516 = fsub fast float %7513, %7515
  %7517 = fmul fast float %7516, %7501
  %7518 = fsub fast float 1.000000e+00, %7515
  %7519 = fsub fast float %7518, %7517
  %7520 = fmul fast float %7511, 5.000000e-01
  %7521 = fmul fast float %7520, %7519
  %7522 = fsub fast float 5.000000e-01, %7521
  br label %7523

; <label>:7523                                    ; preds = %7495, %7371, %7358
  %7524 = phi float [ 1.000000e+00, %7358 ], [ %7437, %7371 ], [ %7522, %7495 ]
  %7525 = fcmp fast ogt float %6954, 0.000000e+00
  br i1 %7525, label %7526, label %7690, !dx.controlflow.hints !127

; <label>:7526                                    ; preds = %7523
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7529 = fadd fast float %7528, %6843
  %7530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7531 = extractvalue %dx.types.CBufRet.f32 %7530, 2
  %7532 = extractvalue %dx.types.CBufRet.f32 %7530, 3
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7535 = call float @dx.op.binary.f32(i32 35, float %7529, float 0.000000e+00)  ; FMax(a,b)
  %7536 = fadd fast float %7535, 0x3F10000000000000
  %7537 = fcmp fast oeq float %7534, 0.000000e+00
  br i1 %7537, label %7538, label %7605

; <label>:7538                                    ; preds = %7526
  %7539 = extractvalue %dx.types.CBufRet.f32 %7530, 1
  %7540 = extractvalue %dx.types.CBufRet.f32 %7530, 0
  %7541 = fmul fast float %7540, %6850
  %7542 = fmul fast float %7539, %6851
  %7543 = fadd fast float %7541, 5.000000e-01
  %7544 = call float @dx.op.unary.f32(i32 27, float %7543)  ; Round_ni(value)
  %7545 = fadd fast float %7542, 5.000000e-01
  %7546 = call float @dx.op.unary.f32(i32 27, float %7545)  ; Round_ni(value)
  %7547 = fsub fast float %7543, %7544
  %7548 = fsub fast float %7545, %7546
  %7549 = fadd fast float %7544, -5.000000e-01
  %7550 = fadd fast float %7546, -5.000000e-01
  %7551 = fmul fast float %7547, 2.000000e+00
  %7552 = fsub fast float 3.000000e+00, %7551
  %7553 = fadd fast float %7551, 1.000000e+00
  %7554 = fsub fast float 2.000000e+00, %7547
  %7555 = bitcast float %7552 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7554
  %7559 = fadd fast float %7558, -1.000000e+00
  %7560 = bitcast float %7553 to i32
  %7561 = sub nsw i32 2129859010, %7560
  %7562 = bitcast i32 %7561 to float
  %7563 = fmul fast float %7562, %7547
  %7564 = fadd fast float %7563, 1.000000e+00
  %7565 = fmul fast float %7548, 2.000000e+00
  %7566 = fsub fast float 3.000000e+00, %7565
  %7567 = fadd fast float %7565, 1.000000e+00
  %7568 = fsub fast float 2.000000e+00, %7548
  %7569 = bitcast float %7566 to i32
  %7570 = sub nsw i32 2129859010, %7569
  %7571 = bitcast i32 %7570 to float
  %7572 = fmul fast float %7571, %7568
  %7573 = fadd fast float %7572, -1.000000e+00
  %7574 = bitcast float %7567 to i32
  %7575 = sub nsw i32 2129859010, %7574
  %7576 = bitcast i32 %7575 to float
  %7577 = fmul fast float %7576, %7548
  %7578 = fadd fast float %7577, 1.000000e+00
  %7579 = fadd fast float %7559, %7549
  %7580 = fmul fast float %7579, %7531
  %7581 = fadd fast float %7573, %7550
  %7582 = fmul fast float %7581, %7532
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7580, float %7582, float undef, float undef, i32 0, i32 0, i32 undef, float %7536)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = fmul fast float %7584, %7552
  %7586 = fadd fast float %7564, %7549
  %7587 = fmul fast float %7586, %7531
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7587, float %7582, float undef, float undef, i32 0, i32 0, i32 undef, float %7536)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = fmul fast float %7589, %7553
  %7591 = fadd fast float %7578, %7550
  %7592 = fmul fast float %7591, %7532
  %7593 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7580, float %7592, float undef, float undef, i32 0, i32 0, i32 undef, float %7536)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7594 = extractvalue %dx.types.ResRet.f32 %7593, 0
  %7595 = fmul fast float %7594, %7552
  %7596 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7587, float %7592, float undef, float undef, i32 0, i32 0, i32 undef, float %7536)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = fmul fast float %7597, %7553
  %7599 = fadd fast float %7598, %7595
  %7600 = fmul fast float %7599, %7567
  %7601 = fadd fast float %7590, %7585
  %7602 = fmul fast float %7601, %7566
  %7603 = fadd fast float %7602, %7600
  %7604 = fmul fast float %7603, 6.250000e-02
  br label %7690

; <label>:7605                                    ; preds = %7526
  %7606 = fmul fast float %270, 0x401921FB60000000
  %7607 = call float @dx.op.unary.f32(i32 13, float %7606)  ; Sin(value)
  %7608 = call float @dx.op.unary.f32(i32 12, float %7606)  ; Cos(value)
  %7609 = fsub fast float -0.000000e+00, %7607
  br label %7610

; <label>:7610                                    ; preds = %7659, %7605
  %7611 = phi float [ 0.000000e+00, %7605 ], [ %7654, %7659 ]
  %7612 = phi float [ 0.000000e+00, %7605 ], [ %7656, %7659 ]
  %7613 = phi i32 [ 0, %7605 ], [ %7660, %7659 ]
  %7614 = mul i32 %7613, 2
  %7615 = add i32 0, %7614
  %7616 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7615
  %7617 = load float, float* %7616, align 4
  %7618 = mul i32 %7613, 2
  %7619 = add i32 1, %7618
  %7620 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7619
  %7621 = load float, float* %7620, align 4
  %7622 = fmul fast float %7617, %7608
  %7623 = call float @dx.op.tertiary.f32(i32 46, float %7621, float %7609, float %7622)  ; FMad(a,b,c)
  %7624 = fmul fast float %7617, %7607
  %7625 = call float @dx.op.tertiary.f32(i32 46, float %7621, float %7608, float %7624)  ; FMad(a,b,c)
  %7626 = fmul fast float %7623, %7534
  %7627 = fmul fast float %7625, %7534
  %7628 = fadd fast float %7626, %6850
  %7629 = fadd fast float %7627, %6851
  %7630 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %7628, float %7629, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.ResRet.f32 %7630, 3
  %7635 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7631, float* %7635, align 4
  %7636 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7632, float* %7636, align 4
  %7637 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7633, float* %7637, align 4
  %7638 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7634, float* %7638, align 4
  %7639 = fsub fast float %7631, %7536
  %7640 = fcmp fast olt float %7639, 0.000000e+00
  %7641 = select i1 %7640, float 0.000000e+00, float 1.000000e+00
  %7642 = fadd fast float %7641, %7611
  %7643 = fmul fast float %7641, %7639
  %7644 = fadd fast float %7643, %7612
  br label %7645

; <label>:7645                                    ; preds = %7645, %7610
  %7646 = phi i32 [ 1, %7610 ], [ %7657, %7645 ]
  %7647 = phi float [ %7644, %7610 ], [ %7656, %7645 ]
  %7648 = phi float [ %7642, %7610 ], [ %7654, %7645 ]
  %7649 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7646
  %7650 = load float, float* %7649, align 4, !tbaa !123, !noalias !113
  %7651 = fsub fast float %7650, %7536
  %7652 = fcmp fast olt float %7651, 0.000000e+00
  %7653 = select i1 %7652, float 0.000000e+00, float 1.000000e+00
  %7654 = fadd fast float %7653, %7648
  %7655 = fmul fast float %7653, %7651
  %7656 = fadd fast float %7655, %7647
  %7657 = add nuw nsw i32 %7646, 1
  %7658 = icmp eq i32 %7657, 4
  br i1 %7658, label %7659, label %7645, !llvm.loop !125

; <label>:7659                                    ; preds = %7645
  %7660 = add nuw nsw i32 %7613, 1
  %7661 = icmp eq i32 %7660, 8
  br i1 %7661, label %7662, label %7610, !llvm.loop !126

; <label>:7662                                    ; preds = %7659
  %7663 = fdiv fast float 1.000000e+00, %7654
  %7664 = fmul fast float %7663, %7656
  %7665 = fdiv fast float 1.000000e+00, %7536
  %7666 = fmul fast float %7664, %7665
  %7667 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7668 = call float @dx.op.binary.f32(i32 35, float %7667, float 0.000000e+00)  ; FMax(a,b)
  %7669 = fmul fast float %7654, 3.125000e-02
  %7670 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  %7671 = fmul fast float %7670, 2.000000e+00
  %7672 = fadd fast float %7671, -1.000000e+00
  %7673 = fcmp fast ogt float %7672, 0.000000e+00
  %7674 = fcmp fast olt float %7672, 0.000000e+00
  %7675 = zext i1 %7673 to i32
  %7676 = zext i1 %7674 to i32
  %7677 = sub nsw i32 %7675, %7676
  %7678 = sitofp i32 %7677 to float
  %7679 = fmul fast float %7678, %7672
  %7680 = fsub fast float 1.000000e+00, %7679
  %7681 = fmul fast float %7680, %7680
  %7682 = fmul fast float %7681, %7680
  %7683 = fsub fast float %7680, %7682
  %7684 = fmul fast float %7683, %7668
  %7685 = fsub fast float 1.000000e+00, %7682
  %7686 = fsub fast float %7685, %7684
  %7687 = fmul fast float %7678, 5.000000e-01
  %7688 = fmul fast float %7687, %7686
  %7689 = fsub fast float 5.000000e-01, %7688
  br label %7690

; <label>:7690                                    ; preds = %7662, %7538, %7523
  %7691 = phi float [ 1.000000e+00, %7523 ], [ %7604, %7538 ], [ %7689, %7662 ]
  %7692 = fcmp fast ogt float %6953, 0.000000e+00
  br i1 %7692, label %7693, label %7857, !dx.controlflow.hints !128

; <label>:7693                                    ; preds = %7690
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 0
  %7696 = fadd fast float %7695, %6843
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 2
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 3
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = call float @dx.op.binary.f32(i32 35, float %7696, float 0.000000e+00)  ; FMax(a,b)
  %7703 = fadd fast float %7702, 0x3F10000000000000
  %7704 = fcmp fast oeq float %7701, 0.000000e+00
  br i1 %7704, label %7705, label %7772

; <label>:7705                                    ; preds = %7693
  %7706 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7707 = extractvalue %dx.types.CBufRet.f32 %7697, 0
  %7708 = fmul fast float %7707, %6835
  %7709 = fmul fast float %7706, %6839
  %7710 = fadd fast float %7708, 5.000000e-01
  %7711 = call float @dx.op.unary.f32(i32 27, float %7710)  ; Round_ni(value)
  %7712 = fadd fast float %7709, 5.000000e-01
  %7713 = call float @dx.op.unary.f32(i32 27, float %7712)  ; Round_ni(value)
  %7714 = fsub fast float %7710, %7711
  %7715 = fsub fast float %7712, %7713
  %7716 = fadd fast float %7711, -5.000000e-01
  %7717 = fadd fast float %7713, -5.000000e-01
  %7718 = fmul fast float %7714, 2.000000e+00
  %7719 = fsub fast float 3.000000e+00, %7718
  %7720 = fadd fast float %7718, 1.000000e+00
  %7721 = fsub fast float 2.000000e+00, %7714
  %7722 = bitcast float %7719 to i32
  %7723 = sub nsw i32 2129859010, %7722
  %7724 = bitcast i32 %7723 to float
  %7725 = fmul fast float %7724, %7721
  %7726 = fadd fast float %7725, -1.000000e+00
  %7727 = bitcast float %7720 to i32
  %7728 = sub nsw i32 2129859010, %7727
  %7729 = bitcast i32 %7728 to float
  %7730 = fmul fast float %7729, %7714
  %7731 = fadd fast float %7730, 1.000000e+00
  %7732 = fmul fast float %7715, 2.000000e+00
  %7733 = fsub fast float 3.000000e+00, %7732
  %7734 = fadd fast float %7732, 1.000000e+00
  %7735 = fsub fast float 2.000000e+00, %7715
  %7736 = bitcast float %7733 to i32
  %7737 = sub nsw i32 2129859010, %7736
  %7738 = bitcast i32 %7737 to float
  %7739 = fmul fast float %7738, %7735
  %7740 = fadd fast float %7739, -1.000000e+00
  %7741 = bitcast float %7734 to i32
  %7742 = sub nsw i32 2129859010, %7741
  %7743 = bitcast i32 %7742 to float
  %7744 = fmul fast float %7743, %7715
  %7745 = fadd fast float %7744, 1.000000e+00
  %7746 = fadd fast float %7726, %7716
  %7747 = fmul fast float %7746, %7698
  %7748 = fadd fast float %7740, %7717
  %7749 = fmul fast float %7748, %7699
  %7750 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7747, float %7749, float undef, float undef, i32 0, i32 0, i32 undef, float %7703)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 0
  %7752 = fmul fast float %7751, %7719
  %7753 = fadd fast float %7731, %7716
  %7754 = fmul fast float %7753, %7698
  %7755 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7754, float %7749, float undef, float undef, i32 0, i32 0, i32 undef, float %7703)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = fmul fast float %7756, %7720
  %7758 = fadd fast float %7745, %7717
  %7759 = fmul fast float %7758, %7699
  %7760 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7747, float %7759, float undef, float undef, i32 0, i32 0, i32 undef, float %7703)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 0
  %7762 = fmul fast float %7761, %7719
  %7763 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7754, float %7759, float undef, float undef, i32 0, i32 0, i32 undef, float %7703)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7764 = extractvalue %dx.types.ResRet.f32 %7763, 0
  %7765 = fmul fast float %7764, %7720
  %7766 = fadd fast float %7765, %7762
  %7767 = fmul fast float %7766, %7734
  %7768 = fadd fast float %7757, %7752
  %7769 = fmul fast float %7768, %7733
  %7770 = fadd fast float %7769, %7767
  %7771 = fmul fast float %7770, 6.250000e-02
  br label %7857

; <label>:7772                                    ; preds = %7693
  %7773 = fmul fast float %270, 0x401921FB60000000
  %7774 = call float @dx.op.unary.f32(i32 13, float %7773)  ; Sin(value)
  %7775 = call float @dx.op.unary.f32(i32 12, float %7773)  ; Cos(value)
  %7776 = fsub fast float -0.000000e+00, %7774
  br label %7777

; <label>:7777                                    ; preds = %7826, %7772
  %7778 = phi float [ 0.000000e+00, %7772 ], [ %7821, %7826 ]
  %7779 = phi float [ 0.000000e+00, %7772 ], [ %7823, %7826 ]
  %7780 = phi i32 [ 0, %7772 ], [ %7827, %7826 ]
  %7781 = mul i32 %7780, 2
  %7782 = add i32 0, %7781
  %7783 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7782
  %7784 = load float, float* %7783, align 4
  %7785 = mul i32 %7780, 2
  %7786 = add i32 1, %7785
  %7787 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7786
  %7788 = load float, float* %7787, align 4
  %7789 = fmul fast float %7784, %7775
  %7790 = call float @dx.op.tertiary.f32(i32 46, float %7788, float %7776, float %7789)  ; FMad(a,b,c)
  %7791 = fmul fast float %7784, %7774
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7788, float %7775, float %7791)  ; FMad(a,b,c)
  %7793 = fmul fast float %7790, %7701
  %7794 = fmul fast float %7792, %7701
  %7795 = fadd fast float %7793, %6835
  %7796 = fadd fast float %7794, %6839
  %7797 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7795, float %7796, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7798 = extractvalue %dx.types.ResRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.ResRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.ResRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.ResRet.f32 %7797, 3
  %7802 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7798, float* %7802, align 4
  %7803 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7799, float* %7803, align 4
  %7804 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7800, float* %7804, align 4
  %7805 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7801, float* %7805, align 4
  %7806 = fsub fast float %7798, %7703
  %7807 = fcmp fast olt float %7806, 0.000000e+00
  %7808 = select i1 %7807, float 0.000000e+00, float 1.000000e+00
  %7809 = fadd fast float %7808, %7778
  %7810 = fmul fast float %7808, %7806
  %7811 = fadd fast float %7810, %7779
  br label %7812

; <label>:7812                                    ; preds = %7812, %7777
  %7813 = phi i32 [ 1, %7777 ], [ %7824, %7812 ]
  %7814 = phi float [ %7811, %7777 ], [ %7823, %7812 ]
  %7815 = phi float [ %7809, %7777 ], [ %7821, %7812 ]
  %7816 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7813
  %7817 = load float, float* %7816, align 4, !tbaa !123, !noalias !113
  %7818 = fsub fast float %7817, %7703
  %7819 = fcmp fast olt float %7818, 0.000000e+00
  %7820 = select i1 %7819, float 0.000000e+00, float 1.000000e+00
  %7821 = fadd fast float %7820, %7815
  %7822 = fmul fast float %7820, %7818
  %7823 = fadd fast float %7822, %7814
  %7824 = add nuw nsw i32 %7813, 1
  %7825 = icmp eq i32 %7824, 4
  br i1 %7825, label %7826, label %7812, !llvm.loop !125

; <label>:7826                                    ; preds = %7812
  %7827 = add nuw nsw i32 %7780, 1
  %7828 = icmp eq i32 %7827, 8
  br i1 %7828, label %7829, label %7777, !llvm.loop !126

; <label>:7829                                    ; preds = %7826
  %7830 = fdiv fast float 1.000000e+00, %7821
  %7831 = fmul fast float %7830, %7823
  %7832 = fdiv fast float 1.000000e+00, %7703
  %7833 = fmul fast float %7831, %7832
  %7834 = call float @dx.op.unary.f32(i32 7, float %7833)  ; Saturate(value)
  %7835 = call float @dx.op.binary.f32(i32 35, float %7834, float 0.000000e+00)  ; FMax(a,b)
  %7836 = fmul fast float %7821, 3.125000e-02
  %7837 = call float @dx.op.unary.f32(i32 7, float %7836)  ; Saturate(value)
  %7838 = fmul fast float %7837, 2.000000e+00
  %7839 = fadd fast float %7838, -1.000000e+00
  %7840 = fcmp fast ogt float %7839, 0.000000e+00
  %7841 = fcmp fast olt float %7839, 0.000000e+00
  %7842 = zext i1 %7840 to i32
  %7843 = zext i1 %7841 to i32
  %7844 = sub nsw i32 %7842, %7843
  %7845 = sitofp i32 %7844 to float
  %7846 = fmul fast float %7845, %7839
  %7847 = fsub fast float 1.000000e+00, %7846
  %7848 = fmul fast float %7847, %7847
  %7849 = fmul fast float %7848, %7847
  %7850 = fsub fast float %7847, %7849
  %7851 = fmul fast float %7850, %7835
  %7852 = fsub fast float 1.000000e+00, %7849
  %7853 = fsub fast float %7852, %7851
  %7854 = fmul fast float %7845, 5.000000e-01
  %7855 = fmul fast float %7854, %7853
  %7856 = fsub fast float 5.000000e-01, %7855
  br label %7857

; <label>:7857                                    ; preds = %7829, %7705, %7690
  %7858 = phi float [ 1.000000e+00, %7690 ], [ %7771, %7705 ], [ %7856, %7829 ]
  %7859 = fsub fast float %7524, %7359
  %7860 = fmul fast float %7859, %6897
  %7861 = fadd fast float %7860, %7359
  %7862 = fsub fast float %7691, %7861
  %7863 = fmul fast float %7862, %6927
  %7864 = fadd fast float %7863, %7861
  %7865 = fsub fast float %7858, %7864
  %7866 = fmul fast float %7865, %6953
  %7867 = fadd fast float %7866, %7864
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 2
  %7870 = fcmp fast ogt float %7869, 0.000000e+00
  br i1 %7870, label %7871, label %7911, !dx.controlflow.hints !129

; <label>:7871                                    ; preds = %7857
  %7872 = fcmp fast ugt float %7869, 0.000000e+00
  br i1 %7872, label %7873, label %7908

; <label>:7873                                    ; preds = %7871
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = extractvalue %dx.types.CBufRet.f32 %7874, 3
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7879, 3
  %7884 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %7885 = extractvalue %dx.types.CBufRet.f32 %7868, 1
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = fadd fast float %7887, %6812
  %7891 = fadd fast float %7888, %6813
  %7892 = fadd fast float %7889, %6814
  %7893 = fmul fast float %7890, %7875
  %7894 = call float @dx.op.tertiary.f32(i32 46, float %7876, float %7891, float %7893)  ; FMad(a,b,c)
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %7877, float %7892, float %7894)  ; FMad(a,b,c)
  %7896 = fadd fast float %7895, %7878
  %7897 = fmul fast float %7890, %7880
  %7898 = call float @dx.op.tertiary.f32(i32 46, float %7881, float %7891, float %7897)  ; FMad(a,b,c)
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %7882, float %7892, float %7898)  ; FMad(a,b,c)
  %7900 = fadd fast float %7899, %7883
  %7901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7896, float %7900, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = fmul fast float %7902, %7885
  %7904 = fadd fast float %7903, %7884
  %7905 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7906 = fmul fast float %7905, %7869
  %7907 = fsub fast float 1.000000e+00, %7906
  br label %7908

; <label>:7908                                    ; preds = %7873, %7871
  %7909 = phi float [ %7907, %7873 ], [ 1.000000e+00, %7871 ]
  %7910 = fmul fast float %7909, %7867
  br label %7911

; <label>:7911                                    ; preds = %7908, %7857, %6792
  %7912 = phi float [ 1.000000e+00, %6792 ], [ %7910, %7908 ], [ %7867, %7857 ]
  %7913 = call float @dx.op.binary.f32(i32 36, float %7912, float %7912)  ; FMin(a,b)
  %7914 = call float @dx.op.binary.f32(i32 36, float %7912, float %7913)  ; FMin(a,b)
  %7915 = fcmp fast ogt float %7914, 0.000000e+00
  br i1 %7915, label %7916, label %8081, !dx.controlflow.hints !130

; <label>:7916                                    ; preds = %7911
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7920 = extractvalue %dx.types.CBufRet.f32 %7917, 2
  %7921 = extractvalue %dx.types.CBufRet.f32 %7917, 3
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 0
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 1
  %7925 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7926 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7930 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %7931 = extractvalue %dx.types.CBufRet.f32 %7927, 3
  %7932 = fmul fast float %7918, %6812
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %7919, float %7932)  ; FMad(a,b,c)
  %7934 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %7920, float %7933)  ; FMad(a,b,c)
  %7935 = fadd fast float %7934, %7921
  %7936 = fmul fast float %7923, %6812
  %7937 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %7924, float %7936)  ; FMad(a,b,c)
  %7938 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %7925, float %7937)  ; FMad(a,b,c)
  %7939 = fadd fast float %7938, %7926
  %7940 = fmul fast float %7928, %6812
  %7941 = call float @dx.op.tertiary.f32(i32 46, float %6813, float %7929, float %7940)  ; FMad(a,b,c)
  %7942 = call float @dx.op.tertiary.f32(i32 46, float %6814, float %7930, float %7941)  ; FMad(a,b,c)
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7946 = extractvalue %dx.types.CBufRet.f32 %7943, 3
  %7947 = fmul fast float %7946, %7935
  %7948 = fmul fast float %7946, %7939
  %7949 = fadd fast float %7947, %7944
  %7950 = fadd fast float %7948, %7945
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.CBufRet.f32 %7951, 1
  %7954 = fsub fast float %7949, %7952
  %7955 = fsub fast float %7950, %7953
  %7956 = fcmp fast olt float %7954, 0.000000e+00
  %7957 = fcmp fast olt float %7955, 0.000000e+00
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %7960 = extractvalue %dx.types.CBufRet.f32 %7958, 1
  %7961 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %7962 = extractvalue %dx.types.CBufRet.f32 %7958, 3
  %7963 = select i1 %7956, float %7959, float %7961
  %7964 = select i1 %7957, float %7960, float %7962
  %7965 = fmul fast float %7963, %7954
  %7966 = fmul fast float %7964, %7955
  %7967 = call float @dx.op.unary.f32(i32 6, float %7965)  ; FAbs(value)
  %7968 = call float @dx.op.unary.f32(i32 6, float %7966)  ; FAbs(value)
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = call float @dx.op.binary.f32(i32 35, float %7967, float %7968)  ; FMax(a,b)
  %7972 = fsub fast float %7970, %7971
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = fcmp fast ogt float %7973, 0.000000e+00
  br i1 %7974, label %7975, label %8016, !dx.controlflow.hints !131

; <label>:7975                                    ; preds = %7916
  %7976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7949, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7977 = extractvalue %dx.types.ResRet.f32 %7976, 1
  %7978 = fcmp fast ogt float %7977, 0.000000e+00
  br i1 %7978, label %7979, label %8011

; <label>:7979                                    ; preds = %7975
  %7980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7949, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7981 = extractvalue %dx.types.ResRet.f32 %7980, 0
  %7982 = extractvalue %dx.types.ResRet.f32 %7980, 1
  %7983 = extractvalue %dx.types.ResRet.f32 %7980, 2
  %7984 = extractvalue %dx.types.ResRet.f32 %7980, 3
  %7985 = fsub fast float 1.000000e+00, %7931
  %7986 = fsub fast float %7985, %7942
  %7987 = fmul fast float %7986, 0x400921FB60000000
  %7988 = fadd fast float %7987, 0x3FF921FB60000000
  %7989 = call float @dx.op.unary.f32(i32 13, float %7988)  ; Sin(value)
  %7990 = fadd fast float %7989, -1.000000e+00
  %7991 = fmul fast float %7990, 0x3FD45F3060000000
  %7992 = fmul fast float %7986, 0x401921FB60000000
  %7993 = fadd fast float %7992, 0x400921FB60000000
  %7994 = call float @dx.op.unary.f32(i32 13, float %7993)  ; Sin(value)
  %7995 = fadd fast float %7994, 0x3E7777A5C0000000
  %7996 = fmul fast float %7995, 0x3FC45F3060000000
  %7997 = fmul fast float %7986, 0x4022D97C80000000
  %7998 = fadd fast float %7997, 0x4012D97C80000000
  %7999 = call float @dx.op.unary.f32(i32 13, float %7998)  ; Sin(value)
  %8000 = fadd fast float %7999, 1.000000e+00
  %8001 = fmul fast float %8000, 0x3FBB2995E0000000
  %8002 = fmul fast float %7986, 0x402921FB60000000
  %8003 = fadd fast float %8002, 0x401921FB60000000
  %8004 = call float @dx.op.unary.f32(i32 13, float %8003)  ; Sin(value)
  %8005 = fadd fast float %8004, 0xBE8777A5C0000000
  %8006 = fmul fast float %8005, 0x3FB45F3060000000
  %8007 = call float @dx.op.dot4.f32(i32 56, float %7981, float %7982, float %7983, float %7984, float %7991, float %7996, float %8001, float %8006)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8008 = fmul fast float %8007, 0xBFF7154760000000
  %8009 = call float @dx.op.unary.f32(i32 21, float %8008)  ; Exp(value)
  %8010 = call float @dx.op.unary.f32(i32 7, float %8009)  ; Saturate(value)
  br label %8011

; <label>:8011                                    ; preds = %7979, %7975
  %8012 = phi float [ %8010, %7979 ], [ 1.000000e+00, %7975 ]
  %8013 = fadd fast float %8012, -1.000000e+00
  %8014 = fmul fast float %8013, %7973
  %8015 = fadd fast float %8014, 1.000000e+00
  br label %8016

; <label>:8016                                    ; preds = %8011, %7916
  %8017 = phi float [ %8015, %8011 ], [ 1.000000e+00, %7916 ]
  %8018 = fmul fast float %8017, %7912
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.CBufRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.CBufRet.f32 %8019, 2
  %8023 = fadd fast float %8020, %165
  %8024 = fadd fast float %8021, %166
  %8025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8026 = extractvalue %dx.types.CBufRet.f32 %8025, 1
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = fsub fast float -0.000000e+00, %8023
  %8032 = fsub fast float -0.000000e+00, %8024
  %8033 = fsub fast float %5752, %8022
  %8034 = fadd fast float %8033, %8026
  %8035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8031, float %8032, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8028, float %8029, float %8030)  ; Dot3(ax,ay,az,bx,by,bz)
  %8037 = fdiv fast float 1.000000e+00, %8036
  %8038 = fmul fast float %8037, %8035
  %8039 = fmul fast float %8028, %8038
  %8040 = fmul fast float %8029, %8038
  %8041 = fadd fast float %8039, %8023
  %8042 = fadd fast float %8040, %8024
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %8046 = fsub fast float %8041, %8044
  %8047 = fsub fast float %8042, %8045
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 2
  %8050 = extractvalue %dx.types.CBufRet.f32 %8048, 3
  %8051 = fmul fast float %8046, %8049
  %8052 = fmul fast float %8047, %8050
  %8053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.i32 %8053, 3
  %8055 = icmp eq i32 %8054, 0
  br i1 %8055, label %8061, label %8056

; <label>:8056                                    ; preds = %8016
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %8051, float %8052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.ResRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.ResRet.f32 %8057, 2
  br label %8066

; <label>:8061                                    ; preds = %8016
  %8062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8051, float %8052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = extractvalue %dx.types.ResRet.f32 %8062, 1
  %8065 = extractvalue %dx.types.ResRet.f32 %8062, 2
  br label %8066

; <label>:8066                                    ; preds = %8061, %8056
  %8067 = phi float [ %8058, %8056 ], [ %8063, %8061 ]
  %8068 = phi float [ %8059, %8056 ], [ %8064, %8061 ]
  %8069 = phi float [ %8060, %8056 ], [ %8065, %8061 ]
  %8070 = extractvalue %dx.types.CBufRet.f32 %8025, 2
  %8071 = fmul fast float %8070, %8067
  %8072 = extractvalue %dx.types.CBufRet.f32 %8025, 0
  %8073 = fsub fast float %8038, %8072
  %8074 = fsub fast float %8073, %8071
  %8075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8074)  ; FMax(a,b)
  %8076 = fmul fast float %8075, %8068
  %8077 = call float @dx.op.binary.f32(i32 36, float %8069, float %8076)  ; FMin(a,b)
  %8078 = fmul fast float %8077, 0xBFF7154760000000
  %8079 = call float @dx.op.unary.f32(i32 21, float %8078)  ; Exp(value)
  %8080 = fmul fast float %8018, %8079
  br label %8081

; <label>:8081                                    ; preds = %8066, %7911
  %8082 = phi float [ %8080, %8066 ], [ %7912, %7911 ]
  %8083 = call float @dx.op.binary.f32(i32 36, float %8082, float %8082)  ; FMin(a,b)
  %8084 = call float @dx.op.binary.f32(i32 36, float %8082, float %8083)  ; FMin(a,b)
  %8085 = fcmp fast ogt float %8084, 0.000000e+00
  br i1 %8085, label %8086, label %8469, !dx.controlflow.hints !132

; <label>:8086                                    ; preds = %8081
  %8087 = fmul fast float %8082, %6804
  %8088 = fmul fast float %8082, %6805
  %8089 = fmul fast float %8082, %6806
  %8090 = fsub fast float %167, %5558
  %8091 = fcmp fast ogt float %8090, 0.000000e+00
  %8092 = fmul fast float %6793, 5.120000e+02
  %8093 = fmul fast float %6794, 5.120000e+02
  %8094 = fmul fast float %6795, 5.120000e+02
  %8095 = fadd fast float %8094, %167
  %8096 = fsub fast float %5558, %8095
  %8097 = fmul fast float %8096, 2.000000e+00
  %8098 = fadd fast float %8097, %8095
  %8099 = select i1 %8091, float %8098, float %8095
  %8100 = fsub fast float %8099, %167
  %8101 = call float @dx.op.dot3.f32(i32 55, float %8092, float %8093, float %8100, float %8092, float %8093, float %8100)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = call float @dx.op.unary.f32(i32 25, float %8101)  ; Rsqrt(value)
  %8103 = fmul fast float %8102, %8092
  %8104 = fmul fast float %8102, %8093
  %8105 = fmul fast float %8102, %8100
  %8106 = fsub fast float %5558, %167
  %8107 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8106)  ; Dot3(ax,ay,az,bx,by,bz)
  %8108 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8103, float %8104, float %8105)  ; Dot3(ax,ay,az,bx,by,bz)
  %8109 = fdiv fast float 1.000000e+00, %8108
  %8110 = fmul fast float %8109, %8107
  %8111 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8090, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8112 = fcmp fast ogt float %8111, 0.000000e+00
  %8113 = fcmp fast olt float %8111, 0.000000e+00
  %8114 = zext i1 %8112 to i32
  %8115 = zext i1 %8113 to i32
  %8116 = sub nsw i32 %8114, %8115
  %8117 = sitofp i32 %8116 to float
  %8118 = fsub fast float %8099, %5558
  %8119 = call float @dx.op.dot3.f32(i32 55, float %8092, float %8093, float %8118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8120 = fcmp fast ogt float %8119, 0.000000e+00
  %8121 = fcmp fast olt float %8119, 0.000000e+00
  %8122 = zext i1 %8120 to i32
  %8123 = zext i1 %8121 to i32
  %8124 = sub nsw i32 %8122, %8123
  %8125 = sitofp i32 %8124 to float
  %8126 = fcmp fast une float %8117, %8125
  br i1 %8126, label %8127, label %8137

; <label>:8127                                    ; preds = %8086
  %8128 = fmul fast float %8110, %8105
  %8129 = fmul fast float %8110, %8104
  %8130 = fmul fast float %8110, %8103
  %8131 = fmul fast float %8130, %8130
  %8132 = fmul fast float %8129, %8129
  %8133 = fadd fast float %8131, %8132
  %8134 = fmul fast float %8128, %8128
  %8135 = fadd fast float %8133, %8134
  %8136 = call float @dx.op.unary.f32(i32 24, float %8135)  ; Sqrt(value)
  br label %8147

; <label>:8137                                    ; preds = %8086
  %8138 = icmp slt i32 %8116, 0
  br i1 %8138, label %8139, label %8147

; <label>:8139                                    ; preds = %8137
  %8140 = fsub fast float %167, %8099
  %8141 = fmul fast float %8092, %8092
  %8142 = fmul fast float %8093, %8093
  %8143 = fadd fast float %8141, %8142
  %8144 = fmul fast float %8140, %8140
  %8145 = fadd fast float %8143, %8144
  %8146 = call float @dx.op.unary.f32(i32 24, float %8145)  ; Sqrt(value)
  br label %8147

; <label>:8147                                    ; preds = %8139, %8137, %8127
  %8148 = phi float [ %8136, %8127 ], [ %8146, %8139 ], [ 0.000000e+00, %8137 ]
  %8149 = fsub fast float -0.000000e+00, %8148
  %8150 = select i1 %8091, float -0.000000e+00, float %8149
  %8151 = fmul fast float %5559, 0x3FF7154760000000
  %8152 = fmul fast float %8151, %8150
  %8153 = fmul fast float %5560, 0x3FF7154760000000
  %8154 = fmul fast float %8153, %8150
  %8155 = fmul fast float %5561, 0x3FF7154760000000
  %8156 = fmul fast float %8155, %8150
  %8157 = call float @dx.op.unary.f32(i32 21, float %8152)  ; Exp(value)
  %8158 = call float @dx.op.unary.f32(i32 21, float %8154)  ; Exp(value)
  %8159 = call float @dx.op.unary.f32(i32 21, float %8156)  ; Exp(value)
  %8160 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8161 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  %8162 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  %8163 = fmul fast float %8087, %8160
  %8164 = fmul fast float %8088, %8161
  %8165 = fmul fast float %8089, %8162
  %8166 = fsub fast float %6793, %185
  %8167 = fsub fast float %6794, %186
  %8168 = fsub fast float %6795, %187
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8166, float %8167, float %8168, float %8166, float %8167, float %8168)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = call float @dx.op.unary.f32(i32 25, float %8169)  ; Rsqrt(value)
  %8171 = fmul fast float %8170, %8166
  %8172 = fmul fast float %8170, %8167
  %8173 = fmul fast float %8170, %8168
  %8174 = call float @dx.op.dot3.f32(i32 55, float %6793, float %6794, float %6795, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %8175 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %8171, float %8172, float %8173)  ; Dot3(ax,ay,az,bx,by,bz)
  %8176 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8177 = fmul fast float %8176, %8176
  %8178 = fmul fast float %8177, %5780
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = fmul fast float %8179, %8176
  %8181 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %8171, float %8172, float %8173)  ; Dot3(ax,ay,az,bx,by,bz)
  %8182 = fmul fast float %8181, %8181
  %8183 = call float @dx.op.unary.f32(i32 6, float %8174)  ; FAbs(value)
  %8184 = fsub fast float 1.000000e+00, %5773
  %8185 = fmul fast float %5755, %5755
  %8186 = fmul fast float %8185, %8184
  %8187 = fadd fast float %8186, %5773
  %8188 = bitcast float %8187 to i32
  %8189 = ashr i32 %8188, 1
  %8190 = add nsw i32 %8189, 532487669
  %8191 = bitcast i32 %8190 to float
  %8192 = fadd fast float %8191, %5755
  %8193 = fmul fast float %5773, %8182
  %8194 = fsub fast float 1.000000e+00, %8182
  %8195 = fadd fast float %8194, %8193
  %8196 = fmul fast float %8183, %8183
  %8197 = fmul fast float %8196, %8184
  %8198 = fadd fast float %8197, %5773
  %8199 = bitcast float %8198 to i32
  %8200 = ashr i32 %8199, 1
  %8201 = add nsw i32 %8200, 532487669
  %8202 = bitcast i32 %8201 to float
  %8203 = fadd fast float %8202, %8183
  %8204 = fmul fast float %8195, %8195
  %8205 = fmul fast float %8204, %8192
  %8206 = fmul fast float %8205, %8203
  %8207 = fdiv fast float 0x3FF0A00000000000, %8206
  %8208 = fmul fast float %8207, %5773
  %8209 = fmul fast float %6026, 0x3FF9999980000000
  %8210 = fsub fast float 5.000000e+00, %8209
  %8211 = call float @dx.op.unary.f32(i32 6, float %8175)  ; FAbs(value)
  %8212 = fsub fast float 1.000000e+00, %8211
  %8213 = fmul fast float %6026, 0x41D9660740000000
  %8214 = fadd fast float %8213, 0xC1EFBF8940000000
  %8215 = bitcast float %8212 to i32
  %8216 = sitofp i32 %8215 to float
  %8217 = fmul fast float %8216, %8210
  %8218 = fadd fast float %8214, %8217
  %8219 = fptosi float %8218 to i32
  %8220 = bitcast i32 %8219 to float
  %8221 = fsub fast float 1.000000e+00, %5741
  %8222 = fsub fast float 1.000000e+00, %5742
  %8223 = fsub fast float 1.000000e+00, %5753
  %8224 = fmul fast float %8220, %8221
  %8225 = fmul fast float %8220, %8222
  %8226 = fmul fast float %8220, %8223
  %8227 = fadd fast float %8224, %5741
  %8228 = fadd fast float %8225, %5742
  %8229 = fadd fast float %8226, %5753
  br i1 %6049, label %8230, label %8253

; <label>:8230                                    ; preds = %8147
  %8231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %8211, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.ResRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.ResRet.f32 %8231, 2
  %8235 = fadd fast float %8232, -5.000000e-01
  %8236 = fadd fast float %8233, -5.000000e-01
  %8237 = fadd fast float %8234, -5.000000e-01
  %8238 = fmul fast float %5741, 4.000000e+00
  %8239 = fmul fast float %8238, %8221
  %8240 = fmul fast float %8239, %8235
  %8241 = fmul fast float %5742, 4.000000e+00
  %8242 = fmul fast float %8241, %8222
  %8243 = fmul fast float %8242, %8236
  %8244 = fmul fast float %5753, 4.000000e+00
  %8245 = fmul fast float %8244, %8223
  %8246 = fmul fast float %8245, %8237
  %8247 = fadd fast float %8240, %8227
  %8248 = fadd fast float %8243, %8228
  %8249 = fadd fast float %8246, %8229
  %8250 = call float @dx.op.unary.f32(i32 7, float %8247)  ; Saturate(value)
  %8251 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8252 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  br label %8253

; <label>:8253                                    ; preds = %8230, %8147
  %8254 = phi float [ %8250, %8230 ], [ %8227, %8147 ]
  %8255 = phi float [ %8251, %8230 ], [ %8228, %8147 ]
  %8256 = phi float [ %8252, %8230 ], [ %8229, %8147 ]
  %8257 = fmul fast float %8174, 9.843750e-01
  %8258 = fadd fast float %8257, 7.812500e-03
  %8259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %8258, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8260 = extractvalue %dx.types.ResRet.f32 %8259, 0
  %8261 = extractvalue %dx.types.ResRet.f32 %8259, 1
  %8262 = extractvalue %dx.types.ResRet.f32 %8259, 2
  %8263 = extractvalue %dx.types.ResRet.f32 %8259, 3
  %8264 = fsub fast float %8262, %8260
  %8265 = fsub fast float %8263, %8261
  %8266 = fmul fast float %8264, %6036
  %8267 = fmul fast float %8265, %6036
  %8268 = fadd fast float %8266, %8260
  %8269 = fadd fast float %8267, %8261
  %8270 = fmul fast float %8268, %5741
  %8271 = fmul fast float %8268, %5742
  %8272 = fmul fast float %8268, %5753
  %8273 = fadd fast float %8270, %8269
  %8274 = fadd fast float %8271, %8269
  %8275 = fadd fast float %8272, %8269
  br i1 %6049, label %8276, label %8299

; <label>:8276                                    ; preds = %8253
  %8277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %8174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = fadd fast float %8278, -5.000000e-01
  %8282 = fadd fast float %8279, -5.000000e-01
  %8283 = fadd fast float %8280, -5.000000e-01
  %8284 = fmul fast float %5741, 4.000000e+00
  %8285 = fmul fast float %8284, %8221
  %8286 = fmul fast float %8285, %8281
  %8287 = fmul fast float %5742, 4.000000e+00
  %8288 = fmul fast float %8287, %8222
  %8289 = fmul fast float %8288, %8282
  %8290 = fmul fast float %5753, 4.000000e+00
  %8291 = fmul fast float %8290, %8223
  %8292 = fmul fast float %8291, %8283
  %8293 = fadd fast float %8286, %8273
  %8294 = fadd fast float %8289, %8274
  %8295 = fadd fast float %8292, %8275
  %8296 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  %8297 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8298 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  br label %8299

; <label>:8299                                    ; preds = %8276, %8253
  %8300 = phi float [ %8296, %8276 ], [ %8273, %8253 ]
  %8301 = phi float [ %8297, %8276 ], [ %8274, %8253 ]
  %8302 = phi float [ %8298, %8276 ], [ %8275, %8253 ]
  %8303 = call float @dx.op.binary.f32(i32 35, float %8301, float %8302)  ; FMax(a,b)
  %8304 = call float @dx.op.binary.f32(i32 35, float %8300, float %8303)  ; FMax(a,b)
  %8305 = fsub fast float 1.000000e+00, %8304
  %8306 = call float @dx.op.binary.f32(i32 35, float %8183, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8307 = fdiv fast float %4460, %8306
  %8308 = fmul fast float %6702, %8307
  %8309 = fmul fast float %6704, %8307
  %8310 = fmul fast float %6706, %8307
  %8311 = call float @dx.op.unary.f32(i32 21, float %8308)  ; Exp(value)
  %8312 = call float @dx.op.unary.f32(i32 21, float %8309)  ; Exp(value)
  %8313 = call float @dx.op.unary.f32(i32 21, float %8310)  ; Exp(value)
  %8314 = call float @dx.op.unary.f32(i32 7, float %8311)  ; Saturate(value)
  %8315 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  %8316 = call float @dx.op.unary.f32(i32 7, float %8313)  ; Saturate(value)
  %8317 = select i1 %6699, float %8314, float 0.000000e+00
  %8318 = select i1 %6700, float %8315, float 0.000000e+00
  %8319 = select i1 %6701, float %8316, float 0.000000e+00
  %8320 = fsub fast float -0.000000e+00, %5747
  %8321 = fsub fast float -0.000000e+00, %5748
  %8322 = fsub fast float -0.000000e+00, %5749
  %8323 = call float @dx.op.dot3.f32(i32 55, float %6793, float %6794, float %6795, float %8320, float %8321, float %8322)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8325 = fmul fast float %8324, 9.843750e-01
  %8326 = fadd fast float %8325, 7.812500e-03
  %8327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %8326, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8328 = extractvalue %dx.types.ResRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.ResRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.ResRet.f32 %8327, 2
  %8331 = extractvalue %dx.types.ResRet.f32 %8327, 3
  %8332 = fsub fast float %8330, %8328
  %8333 = fsub fast float %8331, %8329
  %8334 = fmul fast float %8332, %6036
  %8335 = fmul fast float %8333, %6036
  %8336 = fadd fast float %8334, %8328
  %8337 = fadd fast float %8335, %8329
  %8338 = fmul fast float %8336, %5741
  %8339 = fmul fast float %8336, %5742
  %8340 = fmul fast float %8336, %5753
  %8341 = fadd fast float %8338, %8337
  %8342 = fadd fast float %8339, %8337
  %8343 = fadd fast float %8340, %8337
  br i1 %6049, label %8344, label %8367

; <label>:8344                                    ; preds = %8299
  %8345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %8324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = fadd fast float %8346, -5.000000e-01
  %8350 = fadd fast float %8347, -5.000000e-01
  %8351 = fadd fast float %8348, -5.000000e-01
  %8352 = fmul fast float %5741, 4.000000e+00
  %8353 = fmul fast float %8352, %8221
  %8354 = fmul fast float %8353, %8349
  %8355 = fmul fast float %5742, 4.000000e+00
  %8356 = fmul fast float %8355, %8222
  %8357 = fmul fast float %8356, %8350
  %8358 = fmul fast float %5753, 4.000000e+00
  %8359 = fmul fast float %8358, %8223
  %8360 = fmul fast float %8359, %8351
  %8361 = fadd fast float %8354, %8341
  %8362 = fadd fast float %8357, %8342
  %8363 = fadd fast float %8360, %8343
  %8364 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8365 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8366 = call float @dx.op.unary.f32(i32 7, float %8363)  ; Saturate(value)
  br label %8367

; <label>:8367                                    ; preds = %8344, %8299
  %8368 = phi float [ %8364, %8344 ], [ %8341, %8299 ]
  %8369 = phi float [ %8365, %8344 ], [ %8342, %8299 ]
  %8370 = phi float [ %8366, %8344 ], [ %8343, %8299 ]
  %8371 = call float @dx.op.binary.f32(i32 35, float %8369, float %8370)  ; FMax(a,b)
  %8372 = call float @dx.op.binary.f32(i32 35, float %8368, float %8371)  ; FMax(a,b)
  %8373 = fsub fast float 1.000000e+00, %8372
  %8374 = fmul fast float %5770, %6766
  %8375 = fadd fast float %6768, %8374
  %8376 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8377 = fsub fast float %6793, %5761
  %8378 = fsub fast float %6794, %5762
  %8379 = fsub fast float %6795, %5763
  %8380 = call float @dx.op.dot3.f32(i32 55, float %8377, float %8378, float %8379, float %8377, float %8378, float %8379)  ; Dot3(ax,ay,az,bx,by,bz)
  %8381 = call float @dx.op.unary.f32(i32 25, float %8380)  ; Rsqrt(value)
  %8382 = fmul fast float %8381, %8377
  %8383 = fmul fast float %8381, %8378
  %8384 = fmul fast float %8381, %8379
  %8385 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8322, float %8382, float %8383, float %8384)  ; Dot3(ax,ay,az,bx,by,bz)
  %8386 = fmul fast float %8385, %8385
  %8387 = call float @dx.op.unary.f32(i32 6, float %8324)  ; FAbs(value)
  %8388 = call float @dx.op.binary.f32(i32 35, float %8376, float 0x3F847AE140000000)  ; FMax(a,b)
  %8389 = fmul fast float %8388, %8388
  %8390 = fmul fast float %8389, %8389
  %8391 = fsub fast float 1.000000e+00, %8390
  %8392 = fmul fast float %8185, %8391
  %8393 = fadd fast float %8392, %8390
  %8394 = bitcast float %8393 to i32
  %8395 = ashr i32 %8394, 1
  %8396 = add nsw i32 %8395, 532487669
  %8397 = bitcast i32 %8396 to float
  %8398 = fadd fast float %8397, %5755
  %8399 = fmul fast float %8390, %8386
  %8400 = fsub fast float 1.000000e+00, %8386
  %8401 = fadd fast float %8400, %8399
  %8402 = fmul fast float %8387, %8387
  %8403 = fmul fast float %8402, %8391
  %8404 = fadd fast float %8403, %8390
  %8405 = bitcast float %8404 to i32
  %8406 = ashr i32 %8405, 1
  %8407 = add nsw i32 %8406, 532487669
  %8408 = bitcast i32 %8407 to float
  %8409 = fadd fast float %8408, %8387
  %8410 = fmul fast float %8401, %8401
  %8411 = fmul fast float %8410, %8398
  %8412 = fmul fast float %8411, %8409
  %8413 = fdiv fast float 0x3FF0A00000000000, %8412
  %8414 = fmul fast float %8413, %8390
  %8415 = fmul fast float %8324, %8317
  %8416 = fmul fast float %8324, %8318
  %8417 = fmul fast float %8324, %8319
  %8418 = fmul fast float %8415, %8373
  %8419 = fmul fast float %8418, %8414
  %8420 = fmul fast float %8416, %8373
  %8421 = fmul fast float %8420, %8414
  %8422 = fmul fast float %8417, %8373
  %8423 = fmul fast float %8422, %8414
  %8424 = fmul fast float %8254, %8208
  %8425 = fmul fast float %8255, %8208
  %8426 = fmul fast float %8256, %8208
  %8427 = fsub fast float 1.000000e+00, %8175
  %8428 = bitcast float %8427 to i32
  %8429 = sitofp i32 %8428 to float
  %8430 = fmul fast float %8429, 5.000000e+00
  %8431 = fadd fast float %8430, 0xC1EFBF8940000000
  %8432 = fptosi float %8431 to i32
  %8433 = bitcast i32 %8432 to float
  %8434 = fmul fast float %8433, %5107
  %8435 = fmul fast float %8305, %8434
  %8436 = fmul fast float %8435, %6694
  %8437 = fmul fast float %8435, %6695
  %8438 = fmul fast float %8435, %6696
  %8439 = fadd fast float %8436, %8424
  %8440 = fadd fast float %8437, %8425
  %8441 = fadd fast float %8438, %8426
  %8442 = fmul fast float %8439, %8180
  %8443 = fmul fast float %8440, %8180
  %8444 = fmul fast float %8441, %8180
  %8445 = fmul fast float %8180, %8163
  %8446 = fmul fast float %8445, %8305
  %8447 = fmul fast float %8180, %8164
  %8448 = fmul fast float %8447, %8305
  %8449 = fmul fast float %8180, %8165
  %8450 = fmul fast float %8449, %8305
  %8451 = fadd fast float %8442, %8419
  %8452 = fadd fast float %8443, %8421
  %8453 = fadd fast float %8444, %8423
  %8454 = fmul fast float %8451, %8163
  %8455 = fmul fast float %8452, %8164
  %8456 = fmul fast float %8453, %8165
  %8457 = fadd fast float %8446, %6783
  %8458 = fmul fast float %8457, %5132
  %8459 = fadd fast float %8448, %6785
  %8460 = fmul fast float %8459, %5132
  %8461 = fadd fast float %8450, %6787
  %8462 = fmul fast float %8461, %5132
  %8463 = fadd fast float %8454, %6747
  %8464 = fmul fast float %8463, %5132
  %8465 = fadd fast float %8455, %6750
  %8466 = fmul fast float %8465, %5132
  %8467 = fadd fast float %8456, %6753
  %8468 = fmul fast float %8467, %5132
  br label %8469

; <label>:8469                                    ; preds = %8367, %8081, %6677
  %8470 = phi float [ %6748, %6677 ], [ %6748, %8081 ], [ %8464, %8367 ]
  %8471 = phi float [ %6751, %6677 ], [ %6751, %8081 ], [ %8466, %8367 ]
  %8472 = phi float [ %6754, %6677 ], [ %6754, %8081 ], [ %8468, %8367 ]
  %8473 = phi float [ %6784, %6677 ], [ %6784, %8081 ], [ %8458, %8367 ]
  %8474 = phi float [ %6786, %6677 ], [ %6786, %8081 ], [ %8460, %8367 ]
  %8475 = phi float [ %6788, %6677 ], [ %6788, %8081 ], [ %8462, %8367 ]
  %8476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8477 = extractvalue %dx.types.CBufRet.i32 %8476, 0
  %8478 = icmp eq i32 %8477, 0
  br i1 %8478, label %9296, label %8479

; <label>:8479                                    ; preds = %8469
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8480, 3
  %8483 = fmul fast float %8481, %110
  %8484 = fmul fast float %8482, %111
  %8485 = fptoui float %8483 to i32
  %8486 = fptoui float %8484 to i32
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8490 = extractvalue %dx.types.CBufRet.f32 %8487, 3
  %8491 = fadd fast float %98, -4.000000e+00
  %8492 = call float @dx.op.binary.f32(i32 35, float %8491, float 0.000000e+00)  ; FMax(a,b)
  %8493 = fadd fast float %8492, %8488
  %8494 = fmul fast float %8493, %8489
  %8495 = call float @dx.op.unary.f32(i32 23, float %8494)  ; Log(value)
  %8496 = fmul fast float %8495, %8490
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8499 = fmul fast float %8496, %8498
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  %8501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.i32 %8501, 1
  %8503 = add i32 %8502, -1
  %8504 = uitofp i32 %8502 to float
  %8505 = fmul fast float %8504, %8500
  %8506 = fptoui float %8505 to i32
  %8507 = call i32 @dx.op.binary.i32(i32 40, i32 %8506, i32 %8503)  ; UMin(a,b)
  %8508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.i32 %8508, 2
  %8510 = extractvalue %dx.types.CBufRet.i32 %8508, 3
  %8511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8486, i32 %8509, i32 %8485)  ; UMad(a,b,c)
  %8512 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8507, i32 %8510, i32 %8511)  ; UMad(a,b,c)
  %8513 = add nsw i32 %8477, -1
  %8514 = call i32 @dx.op.binary.i32(i32 37, i32 %8513, i32 0)  ; IMax(a,b)
  %8515 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %8516 = fptoui float %8515 to i32
  %8517 = lshr i32 %8516, 5
  %8518 = call i32 @dx.op.binary.i32(i32 40, i32 %8517, i32 8191)  ; UMin(a,b)
  %8519 = shl i32 %8518, 2
  %8520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8519, i32 undef)  ; BufferLoad(srv,index,wot)
  %8521 = extractvalue %dx.types.ResRet.i32 %8520, 0
  %8522 = lshr i32 %8521, 16
  %8523 = and i32 %8521, 65535
  %8524 = lshr i32 %8521, 21
  %8525 = lshr i32 %8523, 5
  %8526 = call i32 @dx.op.binary.i32(i32 40, i32 %8525, i32 %8514)  ; UMin(a,b)
  %8527 = icmp ugt i32 %8524, %8526
  br i1 %8527, label %9296, label %8528

; <label>:8528                                    ; preds = %8479
  br label %8529

; <label>:8529                                    ; preds = %9286, %8528
  %8530 = phi i32 [ %9293, %9286 ], [ %8524, %8528 ]
  %8531 = phi float [ %9287, %9286 ], [ %8470, %8528 ]
  %8532 = phi float [ %9288, %9286 ], [ %8471, %8528 ]
  %8533 = phi float [ %9289, %9286 ], [ %8472, %8528 ]
  %8534 = phi float [ %9290, %9286 ], [ %8473, %8528 ]
  %8535 = phi float [ %9291, %9286 ], [ %8474, %8528 ]
  %8536 = phi float [ %9292, %9286 ], [ %8475, %8528 ]
  %8537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.i32 %8537, 0
  %8539 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8512, i32 %8538, i32 %8530)  ; UMad(a,b,c)
  %8540 = shl i32 %8539, 2
  %8541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8540, i32 undef)  ; BufferLoad(srv,index,wot)
  %8542 = extractvalue %dx.types.ResRet.i32 %8541, 0
  %8543 = shl i32 %8530, 5
  %8544 = sub nsw i32 %8522, %8543
  %8545 = call i32 @dx.op.binary.i32(i32 37, i32 %8544, i32 0)  ; IMax(a,b)
  %8546 = call i32 @dx.op.binary.i32(i32 38, i32 %8545, i32 31)  ; IMin(a,b)
  %8547 = sub nsw i32 1, %8522
  %8548 = add nsw i32 %8547, %8523
  %8549 = call i32 @dx.op.binary.i32(i32 37, i32 %8548, i32 0)  ; IMax(a,b)
  %8550 = call i32 @dx.op.binary.i32(i32 38, i32 %8549, i32 32)  ; IMin(a,b)
  %8551 = and i32 %8550, 31
  %8552 = shl i32 -1, %8551
  %8553 = xor i32 %8552, -1
  %8554 = and i32 %8546, 31
  %8555 = shl i32 %8553, %8554
  %8556 = icmp eq i32 %8550, 32
  %8557 = select i1 %8556, i32 -1, i32 %8555
  %8558 = and i32 %8557, %8542
  %8559 = icmp eq i32 %8558, 0
  br i1 %8559, label %9286, label %8560

; <label>:8560                                    ; preds = %8529
  br label %8561

; <label>:8561                                    ; preds = %8696, %8560
  %8562 = phi i32 [ %8573, %8696 ], [ %8558, %8560 ]
  %8563 = phi float [ %8697, %8696 ], [ %8531, %8560 ]
  %8564 = phi float [ %8698, %8696 ], [ %8532, %8560 ]
  %8565 = phi float [ %8699, %8696 ], [ %8533, %8560 ]
  %8566 = phi float [ %8700, %8696 ], [ %8534, %8560 ]
  %8567 = phi float [ %8701, %8696 ], [ %8535, %8560 ]
  %8568 = phi float [ %8702, %8696 ], [ %8536, %8560 ]
  %8569 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8562)  ; FirstbitLo(value)
  %8570 = add i32 %8569, %8543
  %8571 = and i32 %8569, 31
  %8572 = shl i32 1, %8571
  %8573 = xor i32 %8572, %8562
  %8574 = mul i32 %8570, 112
  %8575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8574, i32 undef)  ; BufferLoad(srv,index,wot)
  %8576 = extractvalue %dx.types.ResRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.ResRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.ResRet.f32 %8575, 2
  %8579 = or i32 %8574, 12
  %8580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8579, i32 undef)  ; BufferLoad(srv,index,wot)
  %8581 = extractvalue %dx.types.ResRet.f32 %8580, 0
  %8582 = add i32 %8574, 16
  %8583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8582, i32 undef)  ; BufferLoad(srv,index,wot)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8587 = add i32 %8574, 28
  %8588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8587, i32 undef)  ; BufferLoad(srv,index,wot)
  %8589 = extractvalue %dx.types.ResRet.i32 %8588, 0
  %8590 = add i32 %8574, 44
  %8591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8590, i32 undef)  ; BufferLoad(srv,index,wot)
  %8592 = extractvalue %dx.types.ResRet.f32 %8591, 0
  %8593 = add i32 %8574, 48
  %8594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8593, i32 undef)  ; BufferLoad(srv,index,wot)
  %8595 = extractvalue %dx.types.ResRet.f32 %8594, 0
  %8596 = extractvalue %dx.types.ResRet.f32 %8594, 1
  %8597 = extractvalue %dx.types.ResRet.f32 %8594, 2
  %8598 = extractvalue %dx.types.ResRet.f32 %8594, 3
  %8599 = add i32 %8574, 64
  %8600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8599, i32 undef)  ; BufferLoad(srv,index,wot)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.ResRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.ResRet.f32 %8600, 2
  %8604 = extractvalue %dx.types.ResRet.f32 %8600, 3
  %8605 = add i32 %8574, 80
  %8606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8605, i32 undef)  ; BufferLoad(srv,index,wot)
  %8607 = extractvalue %dx.types.ResRet.f32 %8606, 1
  %8608 = extractvalue %dx.types.ResRet.f32 %8606, 2
  %8609 = add i32 %8574, 92
  %8610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8609, i32 undef)  ; BufferLoad(srv,index,wot)
  %8611 = extractvalue %dx.types.ResRet.i32 %8610, 0
  %8612 = call float @dx.op.dot3.f32(i32 55, float %8576, float %8577, float %8578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8613 = select i1 %259, float %8607, float %8576
  %8614 = select i1 %259, float %8612, float %8577
  %8615 = select i1 %259, float %8608, float %8578
  %8616 = and i32 %8611, 65535
  %8617 = uitofp i32 %8616 to float
  %8618 = lshr i32 %8611, 16
  %8619 = uitofp i32 %8618 to float
  %8620 = and i32 %8589, 65535
  %8621 = and i32 %8589, 50331648
  %8622 = icmp slt i32 %8589, 0
  %8623 = icmp eq i32 %8621, 33554432
  %8624 = fsub fast float %8595, %165
  %8625 = fsub fast float %8596, %166
  %8626 = fsub fast float %8597, %167
  %8627 = call float @dx.op.dot3.f32(i32 55, float %8624, float %8625, float %8626, float %8624, float %8625, float %8626)  ; Dot3(ax,ay,az,bx,by,bz)
  %8628 = call float @dx.op.unary.f32(i32 24, float %8627)  ; Sqrt(value)
  %8629 = fdiv fast float 1.000000e+00, %8628
  %8630 = fmul fast float %8629, %8624
  %8631 = fmul fast float %8629, %8625
  %8632 = fmul fast float %8629, %8626
  %8633 = fadd fast float %8628, %8581
  %8634 = fdiv fast float 1.000000e+00, %8633
  %8635 = fmul float %8592, %8634
  %8636 = fmul float %8635, %8635
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  br i1 %8623, label %8638, label %8659

; <label>:8638                                    ; preds = %8561
  %8639 = fmul fast float %8603, %8584
  %8640 = fmul fast float %8603, %8585
  %8641 = fmul fast float %8603, %8586
  %8642 = fadd fast float %8624, %8639
  %8643 = fadd fast float %8625, %8640
  %8644 = fadd fast float %8626, %8641
  %8645 = call float @dx.op.dot3.f32(i32 55, float %8642, float %8643, float %8644, float %8642, float %8643, float %8644)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = call float @dx.op.unary.f32(i32 25, float %8645)  ; Rsqrt(value)
  %8647 = fmul fast float %8646, %8642
  %8648 = fmul fast float %8646, %8643
  %8649 = fmul fast float %8646, %8644
  %8650 = fsub fast float %165, %8595
  %8651 = fsub fast float %166, %8596
  %8652 = fsub fast float %167, %8597
  %8653 = fsub fast float -0.000000e+00, %8650
  %8654 = fsub fast float -0.000000e+00, %8651
  %8655 = fsub fast float -0.000000e+00, %8652
  %8656 = call float @dx.op.dot3.f32(i32 55, float %8653, float %8654, float %8655, float %8584, float %8585, float %8586)  ; Dot3(ax,ay,az,bx,by,bz)
  %8657 = fcmp fast ogt float %8656, 0.000000e+00
  %8658 = uitofp i1 %8657 to float
  br label %8659

; <label>:8659                                    ; preds = %8638, %8561
  %8660 = phi float [ %8658, %8638 ], [ 1.000000e+00, %8561 ]
  %8661 = phi float [ %8647, %8638 ], [ %8630, %8561 ]
  %8662 = phi float [ %8648, %8638 ], [ %8631, %8561 ]
  %8663 = phi float [ %8649, %8638 ], [ %8632, %8561 ]
  %8664 = call float @dx.op.dot3.f32(i32 55, float %8584, float %8585, float %8586, float %8661, float %8662, float %8663)  ; Dot3(ax,ay,az,bx,by,bz)
  %8665 = fmul fast float %8664, %8664
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fsub fast float 1.000000e+00, %8666
  %8668 = fmul fast float %8667, 5.000000e-01
  %8669 = fcmp fast ogt float %8664, 0.000000e+00
  %8670 = fsub fast float 1.000000e+00, %8668
  %8671 = select i1 %8669, float %8668, float %8670
  %8672 = fmul fast float %8671, %8619
  %8673 = fadd fast float %8672, %8617
  %8674 = fmul fast float %8673, 0x3EF0001000000000
  %8675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8674, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8676 = extractvalue %dx.types.ResRet.f32 %8675, 0
  %8677 = fmul fast float %8664, %8601
  %8678 = fadd fast float %8677, %8602
  %8679 = call float @dx.op.unary.f32(i32 7, float %8678)  ; Saturate(value)
  %8680 = select i1 %8623, float 1.000000e+00, float %8679
  %8681 = select i1 %8623, float %8679, float 1.000000e+00
  %8682 = fmul fast float %8628, %8598
  %8683 = fsub fast float 1.000000e+00, %8682
  %8684 = fmul fast float %8683, %8604
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = fmul fast float %8685, %8681
  %8687 = fmul fast float %8686, 2.000000e+00
  %8688 = fsub fast float 3.000000e+00, %8687
  %8689 = fmul fast float %8676, %8660
  %8690 = fmul fast float %8686, %8686
  %8691 = fmul fast float %8690, %8689
  %8692 = fmul fast float %8691, %8688
  %8693 = call float @dx.op.binary.f32(i32 36, float %8692, float %8692)  ; FMin(a,b)
  %8694 = call float @dx.op.binary.f32(i32 36, float %8692, float %8693)  ; FMin(a,b)
  %8695 = fcmp fast ogt float %8694, 0.000000e+00
  br i1 %8695, label %8704, label %8696, !dx.controlflow.hints !133

; <label>:8696                                    ; preds = %9239, %8850, %8659
  %8697 = phi float [ %8563, %8850 ], [ %8563, %8659 ], [ %9282, %9239 ]
  %8698 = phi float [ %8564, %8850 ], [ %8564, %8659 ], [ %9283, %9239 ]
  %8699 = phi float [ %8565, %8850 ], [ %8565, %8659 ], [ %9284, %9239 ]
  %8700 = phi float [ %8566, %8850 ], [ %8566, %8659 ], [ %9276, %9239 ]
  %8701 = phi float [ %8567, %8850 ], [ %8567, %8659 ], [ %9277, %9239 ]
  %8702 = phi float [ %8568, %8850 ], [ %8568, %8659 ], [ %9278, %9239 ]
  %8703 = icmp eq i32 %8562, %8572
  br i1 %8703, label %9285, label %8561

; <label>:8704                                    ; preds = %8659
  %8705 = icmp eq i32 %8620, 255
  br i1 %8705, label %8850, label %8706, !dx.controlflow.hints !134

; <label>:8706                                    ; preds = %8704
  %8707 = mul nuw nsw i32 %8620, 176
  %8708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8707, i32 undef)  ; BufferLoad(srv,index,wot)
  %8709 = extractvalue %dx.types.ResRet.f32 %8708, 0
  %8710 = extractvalue %dx.types.ResRet.f32 %8708, 1
  %8711 = extractvalue %dx.types.ResRet.f32 %8708, 2
  %8712 = extractvalue %dx.types.ResRet.f32 %8708, 3
  %8713 = add nuw nsw i32 %8707, 16
  %8714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8713, i32 undef)  ; BufferLoad(srv,index,wot)
  %8715 = extractvalue %dx.types.ResRet.f32 %8714, 0
  %8716 = extractvalue %dx.types.ResRet.f32 %8714, 1
  %8717 = add nuw nsw i32 %8707, 32
  %8718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8717, i32 undef)  ; BufferLoad(srv,index,wot)
  %8719 = extractvalue %dx.types.ResRet.f32 %8718, 0
  %8720 = extractvalue %dx.types.ResRet.f32 %8718, 1
  %8721 = extractvalue %dx.types.ResRet.f32 %8718, 2
  %8722 = add nuw nsw i32 %8707, 48
  %8723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8722, i32 undef)  ; BufferLoad(srv,index,wot)
  %8724 = extractvalue %dx.types.ResRet.f32 %8723, 0
  %8725 = extractvalue %dx.types.ResRet.f32 %8723, 1
  %8726 = extractvalue %dx.types.ResRet.f32 %8723, 2
  %8727 = extractvalue %dx.types.ResRet.f32 %8723, 3
  %8728 = add nuw nsw i32 %8707, 64
  %8729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8728, i32 undef)  ; BufferLoad(srv,index,wot)
  %8730 = extractvalue %dx.types.ResRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.ResRet.f32 %8729, 1
  %8732 = extractvalue %dx.types.ResRet.f32 %8729, 2
  %8733 = extractvalue %dx.types.ResRet.f32 %8729, 3
  %8734 = add nuw nsw i32 %8707, 80
  %8735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8734, i32 undef)  ; BufferLoad(srv,index,wot)
  %8736 = extractvalue %dx.types.ResRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.ResRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.ResRet.f32 %8735, 2
  %8739 = extractvalue %dx.types.ResRet.f32 %8735, 3
  %8740 = add nuw nsw i32 %8707, 96
  %8741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8740, i32 undef)  ; BufferLoad(srv,index,wot)
  %8742 = extractvalue %dx.types.ResRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.ResRet.f32 %8741, 1
  %8744 = extractvalue %dx.types.ResRet.f32 %8741, 2
  %8745 = extractvalue %dx.types.ResRet.f32 %8741, 3
  %8746 = bitcast float %8716 to i32
  %8747 = fmul fast float %8721, %117
  %8748 = fmul fast float %8721, %118
  %8749 = fmul fast float %8721, %119
  %8750 = fadd fast float %8747, %165
  %8751 = fadd fast float %8748, %166
  %8752 = fadd fast float %8749, %167
  %8753 = fmul fast float %8750, %8724
  %8754 = call float @dx.op.tertiary.f32(i32 46, float %8751, float %8730, float %8753)  ; FMad(a,b,c)
  %8755 = call float @dx.op.tertiary.f32(i32 46, float %8752, float %8736, float %8754)  ; FMad(a,b,c)
  %8756 = fadd fast float %8755, %8742
  %8757 = fmul fast float %8750, %8725
  %8758 = call float @dx.op.tertiary.f32(i32 46, float %8751, float %8731, float %8757)  ; FMad(a,b,c)
  %8759 = call float @dx.op.tertiary.f32(i32 46, float %8752, float %8737, float %8758)  ; FMad(a,b,c)
  %8760 = fadd fast float %8759, %8743
  %8761 = fmul fast float %8750, %8726
  %8762 = call float @dx.op.tertiary.f32(i32 46, float %8751, float %8732, float %8761)  ; FMad(a,b,c)
  %8763 = call float @dx.op.tertiary.f32(i32 46, float %8752, float %8738, float %8762)  ; FMad(a,b,c)
  %8764 = fadd fast float %8763, %8744
  %8765 = fmul fast float %8750, %8727
  %8766 = call float @dx.op.tertiary.f32(i32 46, float %8751, float %8733, float %8765)  ; FMad(a,b,c)
  %8767 = call float @dx.op.tertiary.f32(i32 46, float %8752, float %8739, float %8766)  ; FMad(a,b,c)
  %8768 = fadd fast float %8767, %8745
  %8769 = fdiv fast float %8756, %8768
  %8770 = fdiv fast float %8760, %8768
  %8771 = fdiv fast float %8764, %8768
  %8772 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8771)  ; FMax(a,b)
  %8773 = fmul fast float %270, 0x401921FB60000000
  %8774 = call float @dx.op.unary.f32(i32 13, float %8773)  ; Sin(value)
  %8775 = call float @dx.op.unary.f32(i32 12, float %8773)  ; Cos(value)
  %8776 = fmul fast float %8775, %8720
  %8777 = call float @dx.op.tertiary.f32(i32 46, float %8774, float %8720, float 0.000000e+00)  ; FMad(a,b,c)
  %8778 = fmul fast float %8720, %8774
  %8779 = fsub fast float -0.000000e+00, %8778
  %8780 = call float @dx.op.tertiary.f32(i32 46, float %8775, float %8720, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8781

; <label>:8781                                    ; preds = %8781, %8706
  %8782 = phi float [ 0.000000e+00, %8706 ], [ %8814, %8781 ]
  %8783 = phi float [ 0.000000e+00, %8706 ], [ %8816, %8781 ]
  %8784 = phi i32 [ 0, %8706 ], [ %8817, %8781 ]
  %8785 = mul i32 %8784, 2
  %8786 = add i32 0, %8785
  %8787 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8786
  %8788 = load float, float* %8787, align 4
  %8789 = mul i32 %8784, 2
  %8790 = add i32 1, %8789
  %8791 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8790
  %8792 = load float, float* %8791, align 4
  %8793 = fmul fast float %8776, %8788
  %8794 = call float @dx.op.tertiary.f32(i32 46, float %8792, float %8779, float %8793)  ; FMad(a,b,c)
  %8795 = fmul fast float %8788, %8777
  %8796 = call float @dx.op.tertiary.f32(i32 46, float %8792, float %8780, float %8795)  ; FMad(a,b,c)
  %8797 = fadd fast float %8794, %8769
  %8798 = fadd fast float %8796, %8770
  %8799 = fmul fast float %8797, %8715
  %8800 = fmul fast float %8798, %8715
  %8801 = call float @dx.op.binary.f32(i32 35, float %8799, float %8711)  ; FMax(a,b)
  %8802 = call float @dx.op.binary.f32(i32 35, float %8800, float %8711)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 36, float %8801, float %8712)  ; FMin(a,b)
  %8804 = call float @dx.op.binary.f32(i32 36, float %8802, float %8712)  ; FMin(a,b)
  %8805 = fadd fast float %8803, %8709
  %8806 = fadd fast float %8804, %8710
  %8807 = uitofp i32 %8746 to float
  %8808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %56, float %8805, float %8806, float %8807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8809 = extractvalue %dx.types.ResRet.f32 %8808, 0
  %8810 = fsub fast float %8809, %8772
  %8811 = fsub fast float %8810, %8719
  %8812 = fcmp fast ogt float %8811, 0.000000e+00
  %8813 = select i1 %8812, float 1.000000e+00, float 0.000000e+00
  %8814 = fadd fast float %8813, %8782
  %8815 = select i1 %8812, float %8811, float 0.000000e+00
  %8816 = fadd fast float %8815, %8783
  %8817 = add nuw nsw i32 %8784, 1
  %8818 = icmp eq i32 %8817, 8
  br i1 %8818, label %8819, label %8781

; <label>:8819                                    ; preds = %8781
  %8820 = fdiv fast float 1.000000e+00, %8814
  %8821 = fmul fast float %8820, %8816
  %8822 = fdiv fast float 1.000000e+00, %8772
  %8823 = fmul fast float %8821, %8822
  %8824 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8825 = call float @dx.op.binary.f32(i32 35, float %8824, float 0.000000e+00)  ; FMax(a,b)
  %8826 = fmul fast float %8814, 1.250000e-01
  %8827 = call float @dx.op.unary.f32(i32 7, float %8826)  ; Saturate(value)
  %8828 = fmul fast float %8827, 2.000000e+00
  %8829 = fadd fast float %8828, -1.000000e+00
  %8830 = fcmp fast ogt float %8829, 0.000000e+00
  %8831 = fcmp fast olt float %8829, 0.000000e+00
  %8832 = zext i1 %8830 to i32
  %8833 = zext i1 %8831 to i32
  %8834 = sub nsw i32 %8832, %8833
  %8835 = sitofp i32 %8834 to float
  %8836 = fmul fast float %8835, %8829
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8837, %8837
  %8839 = fmul fast float %8838, %8837
  %8840 = fsub fast float %8837, %8839
  %8841 = fmul fast float %8840, %8825
  %8842 = fsub fast float 1.000000e+00, %8839
  %8843 = fsub fast float %8842, %8841
  %8844 = fmul fast float %8835, 5.000000e-01
  %8845 = fmul fast float %8844, %8843
  %8846 = fsub fast float -5.000000e-01, %8845
  %8847 = fmul fast float %8846, %8680
  %8848 = fadd fast float %8847, 1.000000e+00
  %8849 = fmul fast float %8848, %8692
  br label %8850

; <label>:8850                                    ; preds = %8819, %8704
  %8851 = phi float [ %8849, %8819 ], [ %8692, %8704 ]
  %8852 = call float @dx.op.binary.f32(i32 36, float %8851, float %8851)  ; FMin(a,b)
  %8853 = call float @dx.op.binary.f32(i32 36, float %8851, float %8852)  ; FMin(a,b)
  %8854 = fcmp fast ogt float %8853, 0.000000e+00
  br i1 %8854, label %8855, label %8696, !dx.controlflow.hints !135

; <label>:8855                                    ; preds = %8850
  %8856 = fmul fast float %8851, %8613
  %8857 = fmul fast float %8851, %8614
  %8858 = fmul fast float %8851, %8615
  %8859 = fsub fast float %8597, %5558
  %8860 = fcmp fast ogt float %8859, 0.000000e+00
  %8861 = fsub fast float %167, %5558
  %8862 = fcmp fast ogt float %8861, 0.000000e+00
  %8863 = xor i1 %8862, %8860
  %8864 = fsub fast float %5558, %8597
  %8865 = fmul fast float %8864, 2.000000e+00
  %8866 = fadd fast float %8865, %8597
  %8867 = select i1 %8863, float %8597, float %8866
  %8868 = fsub fast float %8867, %167
  %8869 = call float @dx.op.dot3.f32(i32 55, float %8624, float %8625, float %8868, float %8624, float %8625, float %8868)  ; Dot3(ax,ay,az,bx,by,bz)
  %8870 = call float @dx.op.unary.f32(i32 25, float %8869)  ; Rsqrt(value)
  %8871 = fmul fast float %8870, %8624
  %8872 = fmul fast float %8870, %8625
  %8873 = fmul fast float %8870, %8868
  %8874 = fsub fast float %5558, %167
  %8875 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8874)  ; Dot3(ax,ay,az,bx,by,bz)
  %8876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8871, float %8872, float %8873)  ; Dot3(ax,ay,az,bx,by,bz)
  %8877 = fdiv fast float 1.000000e+00, %8876
  %8878 = fmul fast float %8877, %8875
  %8879 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8861, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8880 = fcmp fast ogt float %8879, 0.000000e+00
  %8881 = fcmp fast olt float %8879, 0.000000e+00
  %8882 = zext i1 %8880 to i32
  %8883 = zext i1 %8881 to i32
  %8884 = sub nsw i32 %8882, %8883
  %8885 = sitofp i32 %8884 to float
  %8886 = fsub fast float %8867, %5558
  %8887 = call float @dx.op.dot3.f32(i32 55, float %8624, float %8625, float %8886, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8888 = fcmp fast ogt float %8887, 0.000000e+00
  %8889 = fcmp fast olt float %8887, 0.000000e+00
  %8890 = zext i1 %8888 to i32
  %8891 = zext i1 %8889 to i32
  %8892 = sub nsw i32 %8890, %8891
  %8893 = sitofp i32 %8892 to float
  %8894 = fcmp fast une float %8885, %8893
  br i1 %8894, label %8895, label %8905

; <label>:8895                                    ; preds = %8855
  %8896 = fmul fast float %8878, %8873
  %8897 = fmul fast float %8878, %8872
  %8898 = fmul fast float %8878, %8871
  %8899 = fmul fast float %8898, %8898
  %8900 = fmul fast float %8897, %8897
  %8901 = fadd fast float %8899, %8900
  %8902 = fmul fast float %8896, %8896
  %8903 = fadd fast float %8901, %8902
  %8904 = call float @dx.op.unary.f32(i32 24, float %8903)  ; Sqrt(value)
  br label %8917

; <label>:8905                                    ; preds = %8855
  %8906 = icmp slt i32 %8884, 0
  br i1 %8906, label %8907, label %8917

; <label>:8907                                    ; preds = %8905
  %8908 = fsub fast float %165, %8595
  %8909 = fsub fast float %166, %8596
  %8910 = fsub fast float %167, %8867
  %8911 = fmul fast float %8908, %8908
  %8912 = fmul fast float %8909, %8909
  %8913 = fadd fast float %8911, %8912
  %8914 = fmul fast float %8910, %8910
  %8915 = fadd fast float %8913, %8914
  %8916 = call float @dx.op.unary.f32(i32 24, float %8915)  ; Sqrt(value)
  br label %8917

; <label>:8917                                    ; preds = %8907, %8905, %8895
  %8918 = phi float [ %8904, %8895 ], [ %8916, %8907 ], [ 0.000000e+00, %8905 ]
  %8919 = and i1 %8862, %8860
  %8920 = fsub fast float -0.000000e+00, %8918
  %8921 = select i1 %8919, float -0.000000e+00, float %8920
  %8922 = fmul fast float %5559, 0x3FF7154760000000
  %8923 = fmul fast float %8922, %8921
  %8924 = fmul fast float %5560, 0x3FF7154760000000
  %8925 = fmul fast float %8924, %8921
  %8926 = fmul fast float %5561, 0x3FF7154760000000
  %8927 = fmul fast float %8926, %8921
  %8928 = call float @dx.op.unary.f32(i32 21, float %8923)  ; Exp(value)
  %8929 = call float @dx.op.unary.f32(i32 21, float %8925)  ; Exp(value)
  %8930 = call float @dx.op.unary.f32(i32 21, float %8927)  ; Exp(value)
  %8931 = call float @dx.op.unary.f32(i32 7, float %8928)  ; Saturate(value)
  %8932 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8933 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8934 = fmul fast float %8856, %8931
  %8935 = fmul fast float %8857, %8932
  %8936 = fmul fast float %8858, %8933
  %8937 = fsub fast float %8630, %185
  %8938 = fsub fast float %8631, %186
  %8939 = fsub fast float %8632, %187
  %8940 = call float @dx.op.dot3.f32(i32 55, float %8937, float %8938, float %8939, float %8937, float %8938, float %8939)  ; Dot3(ax,ay,az,bx,by,bz)
  %8941 = call float @dx.op.unary.f32(i32 25, float %8940)  ; Rsqrt(value)
  %8942 = fmul fast float %8941, %8937
  %8943 = fmul fast float %8941, %8938
  %8944 = fmul fast float %8941, %8939
  %8945 = call float @dx.op.dot3.f32(i32 55, float %8630, float %8631, float %8632, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %8946 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %8942, float %8943, float %8944)  ; Dot3(ax,ay,az,bx,by,bz)
  %8947 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8948 = fmul fast float %8947, %8637
  %8949 = fmul fast float %8947, %8947
  %8950 = fmul fast float %8949, %5780
  %8951 = call float @dx.op.unary.f32(i32 7, float %8950)  ; Saturate(value)
  %8952 = fmul fast float %8948, %8951
  %8953 = bitcast float %8627 to i32
  %8954 = ashr i32 %8953, 1
  %8955 = sub nsw i32 1597463007, %8954
  %8956 = bitcast i32 %8955 to float
  %8957 = fmul fast float %8956, %8624
  %8958 = fmul fast float %8956, %8625
  %8959 = fmul fast float %8956, %8626
  %8960 = fsub fast float %8957, %185
  %8961 = fsub fast float %8958, %186
  %8962 = fsub fast float %8959, %187
  %8963 = call float @dx.op.dot3.f32(i32 55, float %8960, float %8961, float %8962, float %8960, float %8961, float %8962)  ; Dot3(ax,ay,az,bx,by,bz)
  %8964 = call float @dx.op.unary.f32(i32 25, float %8963)  ; Rsqrt(value)
  %8965 = fmul fast float %8960, %8964
  %8966 = fmul fast float %8961, %8964
  %8967 = fmul fast float %8962, %8964
  %8968 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %8965, float %8966, float %8967)  ; Dot3(ax,ay,az,bx,by,bz)
  %8969 = fmul fast float %8968, %8968
  %8970 = call float @dx.op.unary.f32(i32 6, float %8945)  ; FAbs(value)
  %8971 = fsub fast float 1.000000e+00, %5773
  %8972 = fmul fast float %5755, %5755
  %8973 = fmul fast float %8972, %8971
  %8974 = fadd fast float %8973, %5773
  %8975 = bitcast float %8974 to i32
  %8976 = ashr i32 %8975, 1
  %8977 = add nsw i32 %8976, 532487669
  %8978 = bitcast i32 %8977 to float
  %8979 = fadd fast float %8978, %5755
  %8980 = fmul fast float %5773, %8969
  %8981 = fsub fast float 1.000000e+00, %8969
  %8982 = fadd fast float %8981, %8980
  %8983 = fmul fast float %8970, %8970
  %8984 = fmul fast float %8983, %8971
  %8985 = fadd fast float %8984, %5773
  %8986 = bitcast float %8985 to i32
  %8987 = ashr i32 %8986, 1
  %8988 = add nsw i32 %8987, 532487669
  %8989 = bitcast i32 %8988 to float
  %8990 = fadd fast float %8989, %8970
  %8991 = fmul fast float %8982, %8982
  %8992 = fmul fast float %8991, %8979
  %8993 = fmul fast float %8992, %8990
  %8994 = fdiv fast float 1.000000e+00, %8993
  %8995 = bitcast float %5773 to i32
  %8996 = sitofp i32 %8995 to float
  %8997 = fmul fast float %8996, 0x3FE7F73180000000
  %8998 = fadd fast float %8997, 0x41AFE27C40000000
  %8999 = fptosi float %8998 to i32
  %9000 = bitcast i32 %8999 to float
  %9001 = fmul fast float %8592, 0x3FD80E9D60000000
  %9002 = fmul fast float %9001, %8956
  %9003 = fadd fast float %9000, %9002
  %9004 = bitcast float %9003 to i32
  %9005 = sub nsw i32 2129859010, %9004
  %9006 = bitcast i32 %9005 to float
  %9007 = fmul fast float %5773, %8994
  %9008 = fmul fast float %9007, %9000
  %9009 = fmul fast float %9008, %9006
  %9010 = fmul fast float %6026, 0x3FF9999980000000
  %9011 = fsub fast float 5.000000e+00, %9010
  %9012 = call float @dx.op.unary.f32(i32 6, float %8946)  ; FAbs(value)
  %9013 = fsub fast float 1.000000e+00, %9012
  %9014 = fmul fast float %6026, 0x41D9660740000000
  %9015 = fadd fast float %9014, 0xC1EFBF8940000000
  %9016 = bitcast float %9013 to i32
  %9017 = sitofp i32 %9016 to float
  %9018 = fmul fast float %9017, %9011
  %9019 = fadd fast float %9015, %9018
  %9020 = fptosi float %9019 to i32
  %9021 = bitcast i32 %9020 to float
  %9022 = fsub fast float 1.000000e+00, %5741
  %9023 = fsub fast float 1.000000e+00, %5742
  %9024 = fsub fast float 1.000000e+00, %5753
  %9025 = fmul fast float %9021, %9022
  %9026 = fmul fast float %9021, %9023
  %9027 = fmul fast float %9021, %9024
  %9028 = fadd fast float %9025, %5741
  %9029 = fadd fast float %9026, %5742
  %9030 = fadd fast float %9027, %5753
  br i1 %6049, label %9031, label %9054

; <label>:9031                                    ; preds = %8917
  %9032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %9012, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9033 = extractvalue %dx.types.ResRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.ResRet.f32 %9032, 1
  %9035 = extractvalue %dx.types.ResRet.f32 %9032, 2
  %9036 = fadd fast float %9033, -5.000000e-01
  %9037 = fadd fast float %9034, -5.000000e-01
  %9038 = fadd fast float %9035, -5.000000e-01
  %9039 = fmul fast float %5741, 4.000000e+00
  %9040 = fmul fast float %9039, %9022
  %9041 = fmul fast float %9040, %9036
  %9042 = fmul fast float %5742, 4.000000e+00
  %9043 = fmul fast float %9042, %9023
  %9044 = fmul fast float %9043, %9037
  %9045 = fmul fast float %5753, 4.000000e+00
  %9046 = fmul fast float %9045, %9024
  %9047 = fmul fast float %9046, %9038
  %9048 = fadd fast float %9041, %9028
  %9049 = fadd fast float %9044, %9029
  %9050 = fadd fast float %9047, %9030
  %9051 = call float @dx.op.unary.f32(i32 7, float %9048)  ; Saturate(value)
  %9052 = call float @dx.op.unary.f32(i32 7, float %9049)  ; Saturate(value)
  %9053 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  br label %9054

; <label>:9054                                    ; preds = %9031, %8917
  %9055 = phi float [ %9051, %9031 ], [ %9028, %8917 ]
  %9056 = phi float [ %9052, %9031 ], [ %9029, %8917 ]
  %9057 = phi float [ %9053, %9031 ], [ %9030, %8917 ]
  %9058 = fmul fast float %8945, 9.843750e-01
  %9059 = fadd fast float %9058, 7.812500e-03
  %9060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %9059, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9061 = extractvalue %dx.types.ResRet.f32 %9060, 0
  %9062 = extractvalue %dx.types.ResRet.f32 %9060, 1
  %9063 = extractvalue %dx.types.ResRet.f32 %9060, 2
  %9064 = extractvalue %dx.types.ResRet.f32 %9060, 3
  %9065 = fsub fast float %9063, %9061
  %9066 = fsub fast float %9064, %9062
  %9067 = fmul fast float %9065, %6036
  %9068 = fmul fast float %9066, %6036
  %9069 = fadd fast float %9067, %9061
  %9070 = fadd fast float %9068, %9062
  %9071 = fmul fast float %9069, %5741
  %9072 = fmul fast float %9069, %5742
  %9073 = fmul fast float %9069, %5753
  %9074 = fadd fast float %9071, %9070
  %9075 = fadd fast float %9072, %9070
  %9076 = fadd fast float %9073, %9070
  br i1 %6049, label %9077, label %9100

; <label>:9077                                    ; preds = %9054
  %9078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %8945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9079 = extractvalue %dx.types.ResRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.ResRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.ResRet.f32 %9078, 2
  %9082 = fadd fast float %9079, -5.000000e-01
  %9083 = fadd fast float %9080, -5.000000e-01
  %9084 = fadd fast float %9081, -5.000000e-01
  %9085 = fmul fast float %5741, 4.000000e+00
  %9086 = fmul fast float %9085, %9022
  %9087 = fmul fast float %9086, %9082
  %9088 = fmul fast float %5742, 4.000000e+00
  %9089 = fmul fast float %9088, %9023
  %9090 = fmul fast float %9089, %9083
  %9091 = fmul fast float %5753, 4.000000e+00
  %9092 = fmul fast float %9091, %9024
  %9093 = fmul fast float %9092, %9084
  %9094 = fadd fast float %9087, %9074
  %9095 = fadd fast float %9090, %9075
  %9096 = fadd fast float %9093, %9076
  %9097 = call float @dx.op.unary.f32(i32 7, float %9094)  ; Saturate(value)
  %9098 = call float @dx.op.unary.f32(i32 7, float %9095)  ; Saturate(value)
  %9099 = call float @dx.op.unary.f32(i32 7, float %9096)  ; Saturate(value)
  br label %9100

; <label>:9100                                    ; preds = %9077, %9054
  %9101 = phi float [ %9097, %9077 ], [ %9074, %9054 ]
  %9102 = phi float [ %9098, %9077 ], [ %9075, %9054 ]
  %9103 = phi float [ %9099, %9077 ], [ %9076, %9054 ]
  %9104 = call float @dx.op.binary.f32(i32 35, float %9102, float %9103)  ; FMax(a,b)
  %9105 = call float @dx.op.binary.f32(i32 35, float %9101, float %9104)  ; FMax(a,b)
  %9106 = fsub fast float 1.000000e+00, %9105
  %9107 = call float @dx.op.binary.f32(i32 35, float %8970, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9108 = fdiv fast float %4460, %9107
  %9109 = fmul fast float %6702, %9108
  %9110 = fmul fast float %6704, %9108
  %9111 = fmul fast float %6706, %9108
  %9112 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9113 = call float @dx.op.unary.f32(i32 21, float %9110)  ; Exp(value)
  %9114 = call float @dx.op.unary.f32(i32 21, float %9111)  ; Exp(value)
  %9115 = call float @dx.op.unary.f32(i32 7, float %9112)  ; Saturate(value)
  %9116 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  %9117 = call float @dx.op.unary.f32(i32 7, float %9114)  ; Saturate(value)
  %9118 = select i1 %6699, float %9115, float 0.000000e+00
  %9119 = select i1 %6700, float %9116, float 0.000000e+00
  %9120 = select i1 %6701, float %9117, float 0.000000e+00
  %9121 = fsub fast float -0.000000e+00, %5747
  %9122 = fsub fast float -0.000000e+00, %5748
  %9123 = fsub fast float -0.000000e+00, %5749
  %9124 = call float @dx.op.dot3.f32(i32 55, float %8630, float %8631, float %8632, float %9121, float %9122, float %9123)  ; Dot3(ax,ay,az,bx,by,bz)
  %9125 = call float @dx.op.unary.f32(i32 7, float %9124)  ; Saturate(value)
  %9126 = fmul fast float %9125, %8637
  %9127 = fmul fast float %9125, 9.843750e-01
  %9128 = fadd fast float %9127, 7.812500e-03
  %9129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %9128, float %6030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9130 = extractvalue %dx.types.ResRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.ResRet.f32 %9129, 1
  %9132 = extractvalue %dx.types.ResRet.f32 %9129, 2
  %9133 = extractvalue %dx.types.ResRet.f32 %9129, 3
  %9134 = fsub fast float %9132, %9130
  %9135 = fsub fast float %9133, %9131
  %9136 = fmul fast float %9134, %6036
  %9137 = fmul fast float %9135, %6036
  %9138 = fadd fast float %9136, %9130
  %9139 = fadd fast float %9137, %9131
  %9140 = fmul fast float %9138, %5741
  %9141 = fmul fast float %9138, %5742
  %9142 = fmul fast float %9138, %5753
  %9143 = fadd fast float %9140, %9139
  %9144 = fadd fast float %9141, %9139
  %9145 = fadd fast float %9142, %9139
  br i1 %6049, label %9146, label %9169

; <label>:9146                                    ; preds = %9100
  %9147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5106, float %9125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9148 = extractvalue %dx.types.ResRet.f32 %9147, 0
  %9149 = extractvalue %dx.types.ResRet.f32 %9147, 1
  %9150 = extractvalue %dx.types.ResRet.f32 %9147, 2
  %9151 = fadd fast float %9148, -5.000000e-01
  %9152 = fadd fast float %9149, -5.000000e-01
  %9153 = fadd fast float %9150, -5.000000e-01
  %9154 = fmul fast float %5741, 4.000000e+00
  %9155 = fmul fast float %9154, %9022
  %9156 = fmul fast float %9155, %9151
  %9157 = fmul fast float %5742, 4.000000e+00
  %9158 = fmul fast float %9157, %9023
  %9159 = fmul fast float %9158, %9152
  %9160 = fmul fast float %5753, 4.000000e+00
  %9161 = fmul fast float %9160, %9024
  %9162 = fmul fast float %9161, %9153
  %9163 = fadd fast float %9156, %9143
  %9164 = fadd fast float %9159, %9144
  %9165 = fadd fast float %9162, %9145
  %9166 = call float @dx.op.unary.f32(i32 7, float %9163)  ; Saturate(value)
  %9167 = call float @dx.op.unary.f32(i32 7, float %9164)  ; Saturate(value)
  %9168 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  br label %9169

; <label>:9169                                    ; preds = %9146, %9100
  %9170 = phi float [ %9166, %9146 ], [ %9143, %9100 ]
  %9171 = phi float [ %9167, %9146 ], [ %9144, %9100 ]
  %9172 = phi float [ %9168, %9146 ], [ %9145, %9100 ]
  %9173 = call float @dx.op.binary.f32(i32 35, float %9171, float %9172)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 35, float %9170, float %9173)  ; FMax(a,b)
  %9175 = fsub fast float 1.000000e+00, %9174
  %9176 = fmul fast float %5770, %6766
  %9177 = fadd fast float %6768, %9176
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fsub fast float %8957, %5761
  %9180 = fsub fast float %8958, %5762
  %9181 = fsub fast float %8959, %5763
  %9182 = call float @dx.op.dot3.f32(i32 55, float %9179, float %9180, float %9181, float %9179, float %9180, float %9181)  ; Dot3(ax,ay,az,bx,by,bz)
  %9183 = call float @dx.op.unary.f32(i32 25, float %9182)  ; Rsqrt(value)
  %9184 = fmul fast float %9179, %9183
  %9185 = fmul fast float %9180, %9183
  %9186 = fmul fast float %9181, %9183
  %9187 = call float @dx.op.dot3.f32(i32 55, float %9121, float %9122, float %9123, float %9184, float %9185, float %9186)  ; Dot3(ax,ay,az,bx,by,bz)
  %9188 = fmul fast float %9187, %9187
  %9189 = call float @dx.op.unary.f32(i32 6, float %9125)  ; FAbs(value)
  %9190 = call float @dx.op.binary.f32(i32 35, float %9178, float 0x3F847AE140000000)  ; FMax(a,b)
  %9191 = fmul fast float %9190, %9190
  %9192 = fmul fast float %9191, %9191
  %9193 = fsub fast float 1.000000e+00, %9192
  %9194 = fmul fast float %8972, %9193
  %9195 = fadd fast float %9194, %9192
  %9196 = bitcast float %9195 to i32
  %9197 = ashr i32 %9196, 1
  %9198 = add nsw i32 %9197, 532487669
  %9199 = bitcast i32 %9198 to float
  %9200 = fadd fast float %9199, %5755
  %9201 = fmul fast float %9192, %9188
  %9202 = fsub fast float 1.000000e+00, %9188
  %9203 = fadd fast float %9202, %9201
  %9204 = fmul fast float %9189, %9189
  %9205 = fmul fast float %9204, %9193
  %9206 = fadd fast float %9205, %9192
  %9207 = bitcast float %9206 to i32
  %9208 = ashr i32 %9207, 1
  %9209 = add nsw i32 %9208, 532487669
  %9210 = bitcast i32 %9209 to float
  %9211 = fadd fast float %9210, %9189
  %9212 = fmul fast float %9203, %9203
  %9213 = fmul fast float %9212, %9200
  %9214 = fmul fast float %9213, %9211
  %9215 = fdiv fast float 1.000000e+00, %9214
  %9216 = bitcast float %9192 to i32
  %9217 = sitofp i32 %9216 to float
  %9218 = fmul fast float %9217, 0x3FE7F73180000000
  %9219 = fadd fast float %9218, 0x41AFE27C40000000
  %9220 = fptosi float %9219 to i32
  %9221 = bitcast i32 %9220 to float
  %9222 = fadd fast float %9221, %9002
  %9223 = bitcast float %9222 to i32
  %9224 = sub nsw i32 2129859010, %9223
  %9225 = bitcast i32 %9224 to float
  %9226 = fmul fast float %9192, %9215
  %9227 = fmul fast float %9226, %9221
  %9228 = fmul fast float %9227, %9225
  br i1 %8622, label %9229, label %9239

; <label>:9229                                    ; preds = %9169
  %9230 = fmul fast float %9126, %9118
  %9231 = fmul fast float %9126, %9119
  %9232 = fmul fast float %9126, %9120
  %9233 = fmul fast float %9230, %9175
  %9234 = fmul fast float %9233, %9228
  %9235 = fmul fast float %9231, %9175
  %9236 = fmul fast float %9235, %9228
  %9237 = fmul fast float %9232, %9175
  %9238 = fmul fast float %9237, %9228
  br label %9239

; <label>:9239                                    ; preds = %9229, %9169
  %9240 = phi float [ %9234, %9229 ], [ 0.000000e+00, %9169 ]
  %9241 = phi float [ %9236, %9229 ], [ 0.000000e+00, %9169 ]
  %9242 = phi float [ %9238, %9229 ], [ 0.000000e+00, %9169 ]
  %9243 = fmul fast float %9055, %9009
  %9244 = fmul fast float %9056, %9009
  %9245 = fmul fast float %9057, %9009
  %9246 = fsub fast float 1.000000e+00, %8946
  %9247 = bitcast float %9246 to i32
  %9248 = sitofp i32 %9247 to float
  %9249 = fmul fast float %9248, 5.000000e+00
  %9250 = fadd fast float %9249, 0xC1EFBF8940000000
  %9251 = fptosi float %9250 to i32
  %9252 = bitcast i32 %9251 to float
  %9253 = fmul fast float %9252, %5107
  %9254 = fmul fast float %9106, %9253
  %9255 = fmul fast float %9254, %6694
  %9256 = fmul fast float %9254, %6695
  %9257 = fmul fast float %9254, %6696
  %9258 = fadd fast float %9255, %9243
  %9259 = fadd fast float %9256, %9244
  %9260 = fadd fast float %9257, %9245
  %9261 = fmul fast float %9258, %8952
  %9262 = fmul fast float %9259, %8952
  %9263 = fmul fast float %9260, %8952
  %9264 = fadd fast float %9261, %9240
  %9265 = fadd fast float %9262, %9241
  %9266 = fadd fast float %9263, %9242
  %9267 = fmul fast float %8934, %5132
  %9268 = fmul fast float %9267, %8952
  %9269 = fmul fast float %9268, %9106
  %9270 = fmul fast float %8935, %5132
  %9271 = fmul fast float %9270, %8952
  %9272 = fmul fast float %9271, %9106
  %9273 = fmul fast float %8936, %5132
  %9274 = fmul fast float %9273, %8952
  %9275 = fmul fast float %9274, %9106
  %9276 = fadd fast float %9269, %8566
  %9277 = fadd fast float %9272, %8567
  %9278 = fadd fast float %9275, %8568
  %9279 = fmul fast float %9267, %9264
  %9280 = fmul fast float %9270, %9265
  %9281 = fmul fast float %9273, %9266
  %9282 = fadd fast float %9279, %8563
  %9283 = fadd fast float %9280, %8564
  %9284 = fadd fast float %9281, %8565
  br label %8696

; <label>:9285                                    ; preds = %8696
  br label %9286

; <label>:9286                                    ; preds = %9285, %8529
  %9287 = phi float [ %8531, %8529 ], [ %8697, %9285 ]
  %9288 = phi float [ %8532, %8529 ], [ %8698, %9285 ]
  %9289 = phi float [ %8533, %8529 ], [ %8699, %9285 ]
  %9290 = phi float [ %8534, %8529 ], [ %8700, %9285 ]
  %9291 = phi float [ %8535, %8529 ], [ %8701, %9285 ]
  %9292 = phi float [ %8536, %8529 ], [ %8702, %9285 ]
  %9293 = add i32 %8530, 1
  %9294 = icmp ugt i32 %9293, %8526
  br i1 %9294, label %9295, label %8529

; <label>:9295                                    ; preds = %9286
  br label %9296

; <label>:9296                                    ; preds = %9295, %8479, %8469
  %9297 = phi float [ %8470, %8469 ], [ %8470, %8479 ], [ %9287, %9295 ]
  %9298 = phi float [ %8471, %8469 ], [ %8471, %8479 ], [ %9288, %9295 ]
  %9299 = phi float [ %8472, %8469 ], [ %8472, %8479 ], [ %9289, %9295 ]
  %9300 = phi float [ %8473, %8469 ], [ %8473, %8479 ], [ %9290, %9295 ]
  %9301 = phi float [ %8474, %8469 ], [ %8474, %8479 ], [ %9291, %9295 ]
  %9302 = phi float [ %8475, %8469 ], [ %8475, %8479 ], [ %9292, %9295 ]
  %9303 = fmul fast float %5132, %6723
  %9304 = fsub fast float -0.000000e+00, %9303
  %9305 = fmul fast float %5132, %6724
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = fmul fast float %5132, %6725
  %9308 = fsub fast float -0.000000e+00, %9307
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 0
  %9311 = fmul fast float %9310, %6729
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 3
  %9314 = fsub fast float 1.000000e+00, %5110
  %9315 = call float @dx.op.unary.f32(i32 7, float %9314)  ; Saturate(value)
  %9316 = fadd fast float %9302, %5109
  %9317 = fmul fast float %9316, %5110
  %9318 = fmul fast float %9315, %9313
  %9319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5111, i32 undef)  ; BufferLoad(srv,index,wot)
  %9320 = extractvalue %dx.types.ResRet.i32 %9319, 3
  %9321 = bitcast i32 %9320 to float
  %9322 = fsub fast float %9304, %9321
  %9323 = fsub fast float %9306, %9321
  %9324 = fsub fast float %9308, %9321
  %9325 = fmul fast float %9322, %199
  %9326 = fmul fast float %9323, %199
  %9327 = fmul fast float %9324, %199
  %9328 = fadd fast float %9325, %9321
  %9329 = fadd fast float %9326, %9321
  %9330 = fadd fast float %9327, %9321
  %9331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9331, 3
  %9333 = fmul fast float %9300, %5744
  %9334 = fmul fast float %9301, %5745
  %9335 = fmul fast float %9302, %5746
  %9336 = fcmp fast ogt float %98, %219
  %9337 = and i1 %9336, %5564
  %9338 = or i1 %5570, %9337
  %9339 = icmp eq i32 %5563, 2
  %9340 = fcmp fast ole float %98, %219
  %9341 = and i1 %9340, %9339
  %9342 = or i1 %9341, %9338
  br i1 %9337, label %9343, label %9600

; <label>:9343                                    ; preds = %9296
  %9344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.f32 %9344, 2
  %9346 = extractvalue %dx.types.CBufRet.f32 %9344, 3
  %9347 = fmul fast float %9345, %110
  %9348 = fmul fast float %9346, %111
  %9349 = call float @dx.op.unary.f32(i32 7, float %9347)  ; Saturate(value)
  %9350 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9351 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9349, float %9350, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9352 = extractvalue %dx.types.ResRet.f32 %9351, 0
  %9353 = extractvalue %dx.types.ResRet.f32 %9351, 1
  %9354 = extractvalue %dx.types.ResRet.f32 %9351, 2
  %9355 = extractvalue %dx.types.ResRet.f32 %9351, 3
  %9356 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9349, float %9350, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9357 = extractvalue %dx.types.ResRet.f32 %9356, 0
  %9358 = extractvalue %dx.types.ResRet.f32 %9356, 1
  %9359 = extractvalue %dx.types.ResRet.f32 %9356, 2
  %9360 = extractvalue %dx.types.ResRet.f32 %9356, 3
  %9361 = call float @dx.op.binary.f32(i32 35, float %9353, float %9354)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 35, float %9352, float %9361)  ; FMax(a,b)
  %9363 = call float @dx.op.binary.f32(i32 35, float %9362, float %9355)  ; FMax(a,b)
  %9364 = call float @dx.op.binary.f32(i32 36, float %9358, float %9359)  ; FMin(a,b)
  %9365 = call float @dx.op.binary.f32(i32 36, float %9357, float %9364)  ; FMin(a,b)
  %9366 = call float @dx.op.binary.f32(i32 36, float %9365, float %9360)  ; FMin(a,b)
  %9367 = fmul fast float %9363, 2.550000e+02
  %9368 = fadd fast float %9367, 0x3F70101020000000
  %9369 = fptoui float %9368 to i32
  %9370 = fmul fast float %9366, 2.550000e+02
  %9371 = fadd fast float %9370, 0x3F70101020000000
  %9372 = fptoui float %9371 to i32
  %9373 = icmp ult i32 %9369, %9372
  br i1 %9373, label %9374, label %9542

; <label>:9374                                    ; preds = %9343
  %9375 = fcmp fast ogt float %97, 9.843750e-01
  %9376 = fadd fast float %98, -4.000000e+00
  %9377 = select i1 %9375, float -4.000000e+00, float %9376
  %9378 = call float @dx.op.binary.f32(i32 35, float %9377, float 0.000000e+00)  ; FMax(a,b)
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 0
  %9381 = fadd fast float %9380, %9378
  %9382 = extractvalue %dx.types.CBufRet.f32 %9379, 2
  %9383 = fmul fast float %9381, %9382
  %9384 = call float @dx.op.unary.f32(i32 23, float %9383)  ; Log(value)
  %9385 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9386 = fmul fast float %9385, %9384
  %9387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9388 = extractvalue %dx.types.CBufRet.f32 %9387, 2
  %9389 = fmul fast float %9386, %9388
  %9390 = call float @dx.op.unary.f32(i32 7, float %9389)  ; Saturate(value)
  %9391 = uitofp i32 %9369 to float
  %9392 = uitofp i32 %9372 to float
  %9393 = fadd fast float %9391, 5.000000e-01
  %9394 = fadd fast float %9392, 5.000000e-01
  %9395 = fmul fast float %9388, %9393
  %9396 = fmul fast float %9388, %9394
  %9397 = fadd fast float %9395, 0x3F0FFB4800000000
  %9398 = fadd fast float %9396, 0xBF0FFB4800000000
  %9399 = call float @dx.op.binary.f32(i32 35, float %9390, float %9397)  ; FMax(a,b)
  %9400 = call float @dx.op.binary.f32(i32 36, float %9399, float %9398)  ; FMin(a,b)
  %9401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9402 = extractvalue %dx.types.CBufRet.f32 %9401, 1
  %9403 = extractvalue %dx.types.CBufRet.f32 %9401, 2
  %9404 = extractvalue %dx.types.CBufRet.f32 %9401, 0
  %9405 = fmul fast float %9402, %9400
  %9406 = fadd fast float %9404, %9405
  %9407 = fadd fast float %9404, %9403
  %9408 = fsub fast float %9402, %9403
  %9409 = fadd fast float %9408, %9404
  %9410 = call float @dx.op.binary.f32(i32 35, float %9406, float %9407)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 36, float %9410, float %9409)  ; FMin(a,b)
  %9412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9349, float %9350, float %9411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9413 = extractvalue %dx.types.ResRet.f32 %9412, 0
  %9414 = extractvalue %dx.types.ResRet.f32 %9412, 1
  %9415 = extractvalue %dx.types.ResRet.f32 %9412, 2
  %9416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.i32 %9416, 0
  %9418 = extractvalue %dx.types.CBufRet.i32 %9416, 1
  %9419 = uitofp i32 %9417 to float
  %9420 = uitofp i32 %9418 to float
  %9421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9422 = extractvalue %dx.types.CBufRet.f32 %9421, 0
  %9423 = extractvalue %dx.types.CBufRet.f32 %9421, 1
  %9424 = fmul fast float %9419, %9349
  %9425 = fmul fast float %9420, %9350
  %9426 = fadd fast float %9424, -5.000000e-01
  %9427 = fadd fast float %9425, -5.000000e-01
  %9428 = call float @dx.op.unary.f32(i32 22, float %9426)  ; Frc(value)
  %9429 = call float @dx.op.unary.f32(i32 22, float %9427)  ; Frc(value)
  %9430 = fmul fast float %9428, %9428
  %9431 = fmul fast float %9430, %9428
  %9432 = fsub fast float 3.000000e+00, %9428
  %9433 = fmul fast float %9430, %9432
  %9434 = fmul fast float %9428, 3.000000e+00
  %9435 = fmul fast float %9431, 3.000000e+00
  %9436 = fmul fast float %9430, 6.000000e+00
  %9437 = fsub fast float %9435, %9436
  %9438 = fadd fast float %9437, 4.000000e+00
  %9439 = fmul fast float %9438, 0x3FC5555560000000
  %9440 = fmul fast float %9431, -3.000000e+00
  %9441 = fadd fast float %9430, %9428
  %9442 = fmul fast float %9441, 3.000000e+00
  %9443 = fadd fast float %9440, 1.000000e+00
  %9444 = fadd fast float %9443, %9442
  %9445 = fmul fast float %9431, 0x3FC5555560000000
  %9446 = fmul fast float %9429, %9429
  %9447 = fmul fast float %9446, %9429
  %9448 = fsub fast float 3.000000e+00, %9429
  %9449 = fmul fast float %9446, %9448
  %9450 = fmul fast float %9429, 3.000000e+00
  %9451 = fmul fast float %9447, 3.000000e+00
  %9452 = fmul fast float %9446, 6.000000e+00
  %9453 = fsub fast float %9451, %9452
  %9454 = fadd fast float %9453, 4.000000e+00
  %9455 = fmul fast float %9454, 0x3FC5555560000000
  %9456 = fmul fast float %9447, -3.000000e+00
  %9457 = fadd fast float %9446, %9429
  %9458 = fmul fast float %9457, 3.000000e+00
  %9459 = fadd fast float %9456, 1.000000e+00
  %9460 = fadd fast float %9459, %9458
  %9461 = fmul fast float %9447, 0x3FC5555560000000
  %9462 = fadd fast float %9428, 1.000000e+00
  %9463 = fsub fast float 1.000000e+00, %9434
  %9464 = fadd fast float %9463, %9433
  %9465 = fadd fast float %9464, %9438
  %9466 = fmul fast float %9465, 0x3FC5555560000000
  %9467 = fdiv fast float %9439, %9466
  %9468 = fsub fast float %9462, %9467
  %9469 = fsub fast float 1.000000e+00, %9428
  %9470 = fadd fast float %9444, %9431
  %9471 = fmul fast float %9470, 0x3FC5555560000000
  %9472 = fdiv fast float %9445, %9471
  %9473 = fadd fast float %9469, %9472
  %9474 = fadd fast float %9429, 1.000000e+00
  %9475 = fsub fast float 1.000000e+00, %9450
  %9476 = fadd fast float %9475, %9449
  %9477 = fadd fast float %9476, %9454
  %9478 = fmul fast float %9477, 0x3FC5555560000000
  %9479 = fdiv fast float %9455, %9478
  %9480 = fsub fast float %9474, %9479
  %9481 = fsub fast float 1.000000e+00, %9429
  %9482 = fadd fast float %9460, %9447
  %9483 = fmul fast float %9482, 0x3FC5555560000000
  %9484 = fdiv fast float %9461, %9483
  %9485 = fadd fast float %9484, %9481
  %9486 = fmul fast float %9468, %9422
  %9487 = fsub fast float %9349, %9486
  %9488 = fmul fast float %9473, %9422
  %9489 = fadd fast float %9488, %9349
  %9490 = fmul fast float %9485, %9423
  %9491 = fadd fast float %9490, %9350
  %9492 = fmul fast float %9480, %9423
  %9493 = fsub fast float %9350, %9492
  %9494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9487, float %9493, float %9411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9495 = extractvalue %dx.types.ResRet.f32 %9494, 0
  %9496 = extractvalue %dx.types.ResRet.f32 %9494, 1
  %9497 = extractvalue %dx.types.ResRet.f32 %9494, 2
  %9498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9489, float %9493, float %9411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9499 = extractvalue %dx.types.ResRet.f32 %9498, 0
  %9500 = extractvalue %dx.types.ResRet.f32 %9498, 1
  %9501 = extractvalue %dx.types.ResRet.f32 %9498, 2
  %9502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9487, float %9491, float %9411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9503 = extractvalue %dx.types.ResRet.f32 %9502, 0
  %9504 = extractvalue %dx.types.ResRet.f32 %9502, 1
  %9505 = extractvalue %dx.types.ResRet.f32 %9502, 2
  %9506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9489, float %9491, float %9411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9507 = extractvalue %dx.types.ResRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.ResRet.f32 %9506, 1
  %9509 = extractvalue %dx.types.ResRet.f32 %9506, 2
  %9510 = fsub fast float %9503, %9495
  %9511 = fsub fast float %9504, %9496
  %9512 = fsub fast float %9505, %9497
  %9513 = fmul fast float %9510, %9483
  %9514 = fmul fast float %9511, %9483
  %9515 = fmul fast float %9512, %9483
  %9516 = fadd fast float %9513, %9495
  %9517 = fadd fast float %9514, %9496
  %9518 = fadd fast float %9515, %9497
  %9519 = fsub fast float %9507, %9499
  %9520 = fsub fast float %9508, %9500
  %9521 = fsub fast float %9509, %9501
  %9522 = fmul fast float %9519, %9483
  %9523 = fmul fast float %9520, %9483
  %9524 = fmul fast float %9521, %9483
  %9525 = fsub fast float %9499, %9516
  %9526 = fadd fast float %9525, %9522
  %9527 = fsub fast float %9500, %9517
  %9528 = fadd fast float %9527, %9523
  %9529 = fsub fast float %9501, %9518
  %9530 = fadd fast float %9529, %9524
  %9531 = fmul fast float %9526, %9471
  %9532 = fmul fast float %9528, %9471
  %9533 = fmul fast float %9530, %9471
  %9534 = fadd fast float %9531, %9516
  %9535 = fadd fast float %9532, %9517
  %9536 = fadd fast float %9533, %9518
  %9537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9538 = extractvalue %dx.types.CBufRet.f32 %9537, 1
  %9539 = fmul fast float %9534, %9538
  %9540 = fmul fast float %9535, %9538
  %9541 = fmul fast float %9536, %9538
  br label %9542

; <label>:9542                                    ; preds = %9374, %9343
  %9543 = phi float [ %9413, %9374 ], [ 1.000000e+00, %9343 ]
  %9544 = phi float [ %9414, %9374 ], [ 1.000000e+00, %9343 ]
  %9545 = phi float [ %9415, %9374 ], [ 1.000000e+00, %9343 ]
  %9546 = phi float [ %9539, %9374 ], [ 0.000000e+00, %9343 ]
  %9547 = phi float [ %9540, %9374 ], [ 0.000000e+00, %9343 ]
  %9548 = phi float [ %9541, %9374 ], [ 0.000000e+00, %9343 ]
  %9549 = fmul fast float %9546, %9328
  %9550 = fmul fast float %9547, %9329
  %9551 = fmul fast float %9548, %9330
  %9552 = call float @dx.op.dot3.f32(i32 55, float %9543, float %9544, float %9545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9553 = call float @dx.op.dot3.f32(i32 55, float %9549, float %9550, float %9551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9554 = select i1 %259, float %9552, float %9543
  %9555 = select i1 %259, float %9552, float %9544
  %9556 = select i1 %259, float 1.000000e+00, float %9545
  %9557 = select i1 %259, float %9553, float %9549
  %9558 = select i1 %259, float 0.000000e+00, float %9550
  %9559 = select i1 %259, float 0.000000e+00, float %9551
  %9560 = fmul fast float %9554, %9333
  %9561 = fmul fast float %9555, %9334
  %9562 = fmul fast float %9556, %9335
  %9563 = fadd fast float %9560, %9557
  %9564 = fadd fast float %9561, %9558
  %9565 = fadd fast float %9559, %9562
  %9566 = fmul fast float %9554, %9297
  %9567 = fmul fast float %9555, %9298
  %9568 = fmul fast float %9556, %9299
  %9569 = fmul fast float %135, %9345
  %9570 = fmul fast float %137, %9346
  %9571 = fsub fast float 1.000000e+00, %9569
  %9572 = fsub fast float 1.000000e+00, %9570
  %9573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9574 = extractvalue %dx.types.CBufRet.f32 %9573, 0
  %9575 = extractvalue %dx.types.CBufRet.f32 %9573, 1
  %9576 = extractvalue %dx.types.CBufRet.f32 %9573, 2
  %9577 = fmul fast float %9571, %9574
  %9578 = fmul fast float %9571, %9575
  %9579 = fmul fast float %9571, %9576
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9583 = extractvalue %dx.types.CBufRet.f32 %9580, 2
  %9584 = fmul fast float %9572, %9581
  %9585 = fmul fast float %9572, %9582
  %9586 = fmul fast float %9572, %9583
  %9587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9588 = extractvalue %dx.types.CBufRet.f32 %9587, 0
  %9589 = extractvalue %dx.types.CBufRet.f32 %9587, 1
  %9590 = extractvalue %dx.types.CBufRet.f32 %9587, 2
  %9591 = fadd fast float %9584, %9588
  %9592 = fadd fast float %9591, %9577
  %9593 = fadd fast float %9585, %9589
  %9594 = fadd fast float %9593, %9578
  %9595 = fadd fast float %9586, %9590
  %9596 = fadd fast float %9595, %9579
  %9597 = fmul fast float %9592, %219
  %9598 = fmul fast float %9594, %219
  %9599 = fmul fast float %9596, %219
  br label %9600

; <label>:9600                                    ; preds = %9542, %9296
  %9601 = phi float [ %9597, %9542 ], [ %165, %9296 ]
  %9602 = phi float [ %9598, %9542 ], [ %166, %9296 ]
  %9603 = phi float [ %9599, %9542 ], [ %167, %9296 ]
  %9604 = phi float [ %219, %9542 ], [ %98, %9296 ]
  %9605 = phi float [ %9563, %9542 ], [ %9333, %9296 ]
  %9606 = phi float [ %9564, %9542 ], [ %9334, %9296 ]
  %9607 = phi float [ %9565, %9542 ], [ %9335, %9296 ]
  %9608 = phi float [ %9566, %9542 ], [ %9297, %9296 ]
  %9609 = phi float [ %9567, %9542 ], [ %9298, %9296 ]
  %9610 = phi float [ %9568, %9542 ], [ %9299, %9296 ]
  %9611 = phi float [ %9543, %9542 ], [ 1.000000e+00, %9296 ]
  br i1 %9342, label %10766, label %9612

; <label>:9612                                    ; preds = %9600
  %9613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.f32 %9613, 0
  %9615 = extractvalue %dx.types.CBufRet.f32 %9613, 1
  %9616 = extractvalue %dx.types.CBufRet.f32 %9613, 2
  %9617 = extractvalue %dx.types.CBufRet.f32 %9613, 3
  %9618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9619 = extractvalue %dx.types.CBufRet.f32 %9618, 0
  %9620 = extractvalue %dx.types.CBufRet.f32 %9618, 1
  %9621 = extractvalue %dx.types.CBufRet.f32 %9618, 2
  %9622 = extractvalue %dx.types.CBufRet.f32 %9618, 3
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9625 = extractvalue %dx.types.CBufRet.f32 %9623, 1
  %9626 = extractvalue %dx.types.CBufRet.f32 %9623, 2
  %9627 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9629 = extractvalue %dx.types.CBufRet.f32 %9628, 0
  %9630 = extractvalue %dx.types.CBufRet.f32 %9628, 1
  %9631 = extractvalue %dx.types.CBufRet.f32 %9628, 2
  %9632 = extractvalue %dx.types.CBufRet.f32 %9628, 3
  %9633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9634 = extractvalue %dx.types.CBufRet.f32 %9633, 3
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9637 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9638 = extractvalue %dx.types.CBufRet.f32 %9635, 1
  %9639 = extractvalue %dx.types.CBufRet.f32 %9635, 2
  %9640 = fcmp fast olt float %9639, -5.000000e-01
  %9641 = call float @dx.op.dot3.f32(i32 55, float %9601, float %9602, float %9603, float %9601, float %9602, float %9603)  ; Dot3(ax,ay,az,bx,by,bz)
  %9642 = call float @dx.op.unary.f32(i32 25, float %9641)  ; Rsqrt(value)
  %9643 = fmul fast float %9642, %9641
  %9644 = fmul fast float %9642, %9601
  %9645 = fmul fast float %9642, %9602
  %9646 = fmul fast float %9642, %9603
  %9647 = fadd fast float %9643, %9617
  %9648 = call float @dx.op.dot3.f32(i32 55, float %9644, float %9645, float %9646, float %9614, float %9615, float %9616)  ; Dot3(ax,ay,az,bx,by,bz)
  %9649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.i32 %9649, 1
  %9651 = and i32 %9650, 1
  %9652 = icmp ne i32 %9651, 0
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 2
  %9655 = fcmp fast ogt float %9654, 0.000000e+00
  %9656 = and i1 %9652, %9655
  br i1 %9656, label %9657, label %10063, !dx.controlflow.hints !136

; <label>:9657                                    ; preds = %9612
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 3
  %9660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9661 = extractvalue %dx.types.CBufRet.f32 %9660, 2
  %9662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9663 = extractvalue %dx.types.CBufRet.f32 %9662, 2
  %9664 = fsub fast float %9661, %9663
  %9665 = and i32 %9650, 2
  %9666 = extractvalue %dx.types.CBufRet.i32 %9649, 0
  %9667 = call i32 @dx.op.binary.i32(i32 40, i32 %9666, i32 3)  ; UMin(a,b)
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.f32 %9668, 1
  %9671 = extractvalue %dx.types.CBufRet.f32 %9662, 0
  %9672 = extractvalue %dx.types.CBufRet.f32 %9662, 1
  %9673 = fsub fast float %9669, %9671
  %9674 = fsub fast float %9670, %9672
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 0
  %9677 = fcmp fast ogt float %9676, 0.000000e+00
  %9678 = fsub fast float -0.000000e+00, %9673
  %9679 = fsub fast float -0.000000e+00, %9674
  %9680 = call float @dx.op.dot2.f32(i32 54, float %9644, float %9645, float %9644, float %9645)  ; Dot2(ax,ay,bx,by)
  %9681 = call float @dx.op.dot2.f32(i32 54, float %9644, float %9645, float %9678, float %9679)  ; Dot2(ax,ay,bx,by)
  %9682 = fmul fast float %9681, 2.000000e+00
  %9683 = call float @dx.op.dot2.f32(i32 54, float %9678, float %9679, float %9678, float %9679)  ; Dot2(ax,ay,bx,by)
  %9684 = fmul fast float %9676, %9676
  %9685 = fsub fast float %9683, %9684
  %9686 = fmul fast float %9682, %9682
  %9687 = fmul fast float %9680, 4.000000e+00
  %9688 = fmul fast float %9687, %9685
  %9689 = fsub fast float %9686, %9688
  %9690 = fcmp fast ogt float %9689, 0.000000e+00
  br i1 %9690, label %9691, label %9706

; <label>:9691                                    ; preds = %9657
  %9692 = fcmp fast ogt float %9682, 0.000000e+00
  %9693 = call float @dx.op.unary.f32(i32 24, float %9689)  ; Sqrt(value)
  %9694 = fsub fast float -0.000000e+00, %9693
  %9695 = select i1 %9692, float %9693, float %9694
  %9696 = fadd fast float %9695, %9682
  %9697 = fmul float %9696, -5.000000e-01
  %9698 = fdiv fast float %9697, %9680
  %9699 = call float @dx.op.binary.f32(i32 35, float %9698, float 0.000000e+00)  ; FMax(a,b)
  %9700 = call float @dx.op.binary.f32(i32 36, float %9643, float %9699)  ; FMin(a,b)
  %9701 = fdiv fast float %9685, %9697
  %9702 = call float @dx.op.binary.f32(i32 35, float %9701, float 0.000000e+00)  ; FMax(a,b)
  %9703 = call float @dx.op.binary.f32(i32 36, float %9643, float %9702)  ; FMin(a,b)
  %9704 = call float @dx.op.binary.f32(i32 36, float %9700, float %9703)  ; FMin(a,b)
  %9705 = call float @dx.op.binary.f32(i32 35, float %9700, float %9703)  ; FMax(a,b)
  br label %9706

; <label>:9706                                    ; preds = %9691, %9657
  %9707 = phi float [ %9705, %9691 ], [ -1.000000e+00, %9657 ]
  %9708 = phi float [ %9704, %9691 ], [ -1.000000e+00, %9657 ]
  %9709 = phi i1 [ true, %9691 ], [ false, %9657 ]
  %9710 = and i1 %9677, %9709
  br i1 %9710, label %9711, label %9713

; <label>:9711                                    ; preds = %9706
  %9712 = fcmp fast oeq float %9708, %9707
  br i1 %9712, label %10016, label %9714

; <label>:9713                                    ; preds = %9706
  br i1 %9677, label %10016, label %9714

; <label>:9714                                    ; preds = %9713, %9711
  %9715 = phi float [ %9643, %9713 ], [ %9707, %9711 ]
  %9716 = phi float [ 0.000000e+00, %9713 ], [ %9708, %9711 ]
  %9717 = icmp ne i32 %9665, 0
  %9718 = fmul fast float %9715, %9646
  %9719 = fadd fast float %9718, %9659
  %9720 = fmul fast float %9719, %9715
  %9721 = select i1 %9717, float 0.000000e+00, float %9720
  %9722 = fcmp fast oeq float %9646, 0.000000e+00
  %9723 = fdiv fast float %9664, %9646
  %9724 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9723)  ; FMax(a,b)
  %9725 = select i1 %9722, float %9715, float %9724
  %9726 = call float @dx.op.binary.f32(i32 36, float %9715, float %9725)  ; FMin(a,b)
  %9727 = fcmp fast ogt float %9646, 0.000000e+00
  %9728 = fcmp fast olt float %9664, 0.000000e+00
  br i1 %9727, label %9729, label %9786

; <label>:9729                                    ; preds = %9714
  %9730 = icmp eq i32 %9665, 0
  br i1 %9728, label %9731, label %9775

; <label>:9731                                    ; preds = %9729
  %9732 = select i1 %9730, float %9715, float 0.000000e+00
  %9733 = fsub fast float -0.000000e+00, %9732
  %9734 = call float @dx.op.unary.f32(i32 6, float %9733)  ; FAbs(value)
  %9735 = fmul fast float %9732, %9646
  %9736 = fadd fast float %9735, %9659
  %9737 = fmul fast float %9734, %9736
  %9738 = fsub fast float %9721, %9737
  %9739 = fsub fast float %9715, %9734
  %9740 = select i1 %9730, float %9739, float 0.000000e+00
  %9741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9742 = extractvalue %dx.types.CBufRet.f32 %9741, 0
  %9743 = extractvalue %dx.types.CBufRet.f32 %9741, 1
  %9744 = extractvalue %dx.types.CBufRet.f32 %9741, 2
  %9745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.CBufRet.f32 %9745, 2
  %9749 = extractvalue %dx.types.CBufRet.f32 %9745, 3
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 3
  %9752 = call float @dx.op.binary.f32(i32 36, float %9738, float %9751)  ; FMin(a,b)
  %9753 = fmul fast float %9749, %9740
  %9754 = call float @dx.op.unary.f32(i32 7, float %9753)  ; Saturate(value)
  %9755 = fsub fast float %9746, %9742
  %9756 = fsub fast float %9747, %9743
  %9757 = fsub fast float %9748, %9744
  %9758 = fmul fast float %9754, %9755
  %9759 = fmul fast float %9754, %9756
  %9760 = fmul fast float %9754, %9757
  %9761 = fadd fast float %9758, %9742
  %9762 = fadd fast float %9759, %9743
  %9763 = fadd fast float %9760, %9744
  %9764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9765 = extractvalue %dx.types.CBufRet.f32 %9764, 0
  %9766 = extractvalue %dx.types.CBufRet.f32 %9764, 1
  %9767 = fadd fast float %9766, %9765
  %9768 = call float @dx.op.unary.f32(i32 7, float %9767)  ; Saturate(value)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9764, 2
  %9770 = extractvalue %dx.types.CBufRet.f32 %9764, 3
  %9771 = fadd fast float %9770, %9769
  %9772 = call float @dx.op.unary.f32(i32 7, float %9771)  ; Saturate(value)
  %9773 = fmul fast float %9768, %9752
  %9774 = fmul fast float %9773, %9772
  br label %10016

; <label>:9775                                    ; preds = %9729
  br i1 %9730, label %9776, label %9797

; <label>:9776                                    ; preds = %9775
  %9777 = call float @dx.op.binary.f32(i32 36, float %9726, float %9716)  ; FMin(a,b)
  %9778 = fsub fast float %9726, %9777
  %9779 = fsub fast float %9778, %9715
  %9780 = call float @dx.op.unary.f32(i32 6, float %9779)  ; FAbs(value)
  %9781 = fadd fast float %9778, %9715
  %9782 = fmul fast float %9781, %9646
  %9783 = fadd fast float %9782, %9659
  %9784 = fmul fast float %9783, %9780
  %9785 = fsub fast float %9721, %9784
  br label %9797

; <label>:9786                                    ; preds = %9714
  br i1 %9728, label %9787, label %9797

; <label>:9787                                    ; preds = %9786
  %9788 = call float @dx.op.binary.f32(i32 35, float %9716, float %9726)  ; FMax(a,b)
  %9789 = icmp eq i32 %9665, 0
  %9790 = select i1 %9789, float %9726, float 0.000000e+00
  %9791 = fsub fast float -0.000000e+00, %9790
  %9792 = call float @dx.op.unary.f32(i32 6, float %9791)  ; FAbs(value)
  %9793 = fmul fast float %9790, %9646
  %9794 = fadd fast float %9793, %9659
  %9795 = fmul fast float %9792, %9794
  %9796 = fsub fast float %9721, %9795
  br label %9797

; <label>:9797                                    ; preds = %9787, %9786, %9776, %9775
  %9798 = phi float [ %9716, %9775 ], [ %9716, %9776 ], [ %9788, %9787 ], [ %9716, %9786 ]
  %9799 = phi float [ 0.000000e+00, %9775 ], [ %9780, %9776 ], [ %9792, %9787 ], [ 0.000000e+00, %9786 ]
  %9800 = phi float [ %9721, %9775 ], [ %9785, %9776 ], [ %9796, %9787 ], [ %9721, %9786 ]
  %9801 = phi float [ %9726, %9775 ], [ %9726, %9776 ], [ %9715, %9787 ], [ %9715, %9786 ]
  %9802 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9802, align 4, !tbaa !123, !noalias !137
  %9803 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9803, align 4, !tbaa !123, !noalias !137
  %9804 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9804, align 4, !tbaa !123, !noalias !137
  %9805 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9805, align 4, !tbaa !123, !noalias !137
  %9806 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9806, align 4, !tbaa !123, !noalias !137
  %9807 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9807, align 4, !tbaa !123, !noalias !137
  %9808 = icmp sgt i32 %9667, 0
  br i1 %9808, label %9809, label %9870

; <label>:9809                                    ; preds = %9797
  br label %9810

; <label>:9810                                    ; preds = %9859, %9809
  %9811 = phi i32 [ %9860, %9859 ], [ 0, %9809 ]
  %9812 = phi i32 [ %9861, %9859 ], [ 0, %9809 ]
  %9813 = add nuw i32 %9812, 171
  %9814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %9813)  ; CBufferLoadLegacy(handle,regIndex)
  %9815 = extractvalue %dx.types.CBufRet.f32 %9814, 0
  %9816 = extractvalue %dx.types.CBufRet.f32 %9814, 1
  %9817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9818 = extractvalue %dx.types.CBufRet.f32 %9817, 0
  %9819 = extractvalue %dx.types.CBufRet.f32 %9817, 1
  %9820 = fsub fast float %9815, %9818
  %9821 = fsub fast float %9816, %9819
  %9822 = extractvalue %dx.types.CBufRet.f32 %9814, 2
  %9823 = fsub fast float -0.000000e+00, %9820
  %9824 = fsub fast float -0.000000e+00, %9821
  %9825 = call float @dx.op.dot2.f32(i32 54, float %9644, float %9645, float %9823, float %9824)  ; Dot2(ax,ay,bx,by)
  %9826 = fmul fast float %9825, 2.000000e+00
  %9827 = call float @dx.op.dot2.f32(i32 54, float %9823, float %9824, float %9823, float %9824)  ; Dot2(ax,ay,bx,by)
  %9828 = fmul fast float %9822, %9822
  %9829 = fsub fast float %9827, %9828
  %9830 = fmul fast float %9826, %9826
  %9831 = fmul fast float %9687, %9829
  %9832 = fsub fast float %9830, %9831
  %9833 = fcmp fast ogt float %9832, 0.000000e+00
  br i1 %9833, label %9834, label %9849

; <label>:9834                                    ; preds = %9810
  %9835 = fcmp fast ogt float %9826, 0.000000e+00
  %9836 = call float @dx.op.unary.f32(i32 24, float %9832)  ; Sqrt(value)
  %9837 = fsub fast float -0.000000e+00, %9836
  %9838 = select i1 %9835, float %9836, float %9837
  %9839 = fadd fast float %9838, %9826
  %9840 = fmul float %9839, -5.000000e-01
  %9841 = fdiv fast float %9840, %9680
  %9842 = call float @dx.op.binary.f32(i32 35, float %9841, float 0.000000e+00)  ; FMax(a,b)
  %9843 = call float @dx.op.binary.f32(i32 36, float %9715, float %9842)  ; FMin(a,b)
  %9844 = fdiv fast float %9829, %9840
  %9845 = call float @dx.op.binary.f32(i32 35, float %9844, float 0.000000e+00)  ; FMax(a,b)
  %9846 = call float @dx.op.binary.f32(i32 36, float %9715, float %9845)  ; FMin(a,b)
  %9847 = call float @dx.op.binary.f32(i32 36, float %9843, float %9846)  ; FMin(a,b)
  %9848 = call float @dx.op.binary.f32(i32 35, float %9843, float %9846)  ; FMax(a,b)
  br label %9849

; <label>:9849                                    ; preds = %9834, %9810
  %9850 = phi float [ %9848, %9834 ], [ -1.000000e+00, %9810 ]
  %9851 = phi float [ %9847, %9834 ], [ -1.000000e+00, %9810 ]
  %9852 = phi i1 [ true, %9834 ], [ false, %9810 ]
  br i1 %9852, label %9853, label %9859

; <label>:9853                                    ; preds = %9849
  %9854 = call float @dx.op.binary.f32(i32 35, float %9798, float %9851)  ; FMax(a,b)
  %9855 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9812
  store float %9854, float* %9855, align 4, !tbaa !123, !noalias !137
  %9856 = call float @dx.op.binary.f32(i32 35, float %9798, float %9850)  ; FMax(a,b)
  %9857 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9812
  store float %9856, float* %9857, align 4, !tbaa !123, !noalias !137
  %9858 = add nsw i32 %9811, 1
  br label %9859

; <label>:9859                                    ; preds = %9853, %9849
  %9860 = phi i32 [ %9858, %9853 ], [ %9811, %9849 ]
  %9861 = add nuw nsw i32 %9812, 1
  %9862 = icmp eq i32 %9861, %9667
  br i1 %9862, label %9863, label %9810

; <label>:9863                                    ; preds = %9859
  %9864 = load float, float* %9804, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %9865 = load float, float* %9803, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  %9866 = load float, float* %9802, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  %9867 = load float, float* %9807, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %9868 = load float, float* %9806, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  %9869 = load float, float* %9805, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  br label %9870

; <label>:9870                                    ; preds = %9863, %9797
  %9871 = phi float [ -1.000000e+00, %9797 ], [ %9869, %9863 ]
  %9872 = phi float [ -1.000000e+00, %9797 ], [ %9868, %9863 ]
  %9873 = phi float [ -1.000000e+00, %9797 ], [ %9867, %9863 ]
  %9874 = phi float [ -1.000000e+00, %9797 ], [ %9866, %9863 ]
  %9875 = phi float [ -1.000000e+00, %9797 ], [ %9865, %9863 ]
  %9876 = phi float [ -1.000000e+00, %9797 ], [ %9864, %9863 ]
  %9877 = phi i32 [ 0, %9797 ], [ %9860, %9863 ]
  %9878 = call float @dx.op.binary.f32(i32 36, float %9875, float %9876)  ; FMin(a,b)
  %9879 = call float @dx.op.binary.f32(i32 36, float %9874, float %9878)  ; FMin(a,b)
  %9880 = call float @dx.op.binary.f32(i32 35, float %9874, float %9875)  ; FMax(a,b)
  %9881 = call float @dx.op.binary.f32(i32 36, float %9880, float %9876)  ; FMin(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9874, float %9875)  ; FMin(a,b)
  %9883 = call float @dx.op.binary.f32(i32 35, float %9882, float %9881)  ; FMax(a,b)
  %9884 = call float @dx.op.binary.f32(i32 35, float %9875, float %9876)  ; FMax(a,b)
  %9885 = call float @dx.op.binary.f32(i32 35, float %9874, float %9884)  ; FMax(a,b)
  store float %9879, float* %9802, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  store float %9883, float* %9803, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %9885, float* %9804, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %9886 = call float @dx.op.binary.f32(i32 36, float %9872, float %9873)  ; FMin(a,b)
  %9887 = call float @dx.op.binary.f32(i32 36, float %9871, float %9886)  ; FMin(a,b)
  %9888 = call float @dx.op.binary.f32(i32 35, float %9871, float %9872)  ; FMax(a,b)
  %9889 = call float @dx.op.binary.f32(i32 36, float %9888, float %9873)  ; FMin(a,b)
  %9890 = call float @dx.op.binary.f32(i32 36, float %9871, float %9872)  ; FMin(a,b)
  %9891 = call float @dx.op.binary.f32(i32 35, float %9890, float %9889)  ; FMax(a,b)
  %9892 = call float @dx.op.binary.f32(i32 35, float %9872, float %9873)  ; FMax(a,b)
  %9893 = call float @dx.op.binary.f32(i32 35, float %9871, float %9892)  ; FMax(a,b)
  store float %9887, float* %9805, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  store float %9891, float* %9806, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  store float %9893, float* %9807, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %9894 = sub nsw i32 3, %9877
  %9895 = icmp sgt i32 %9894, 2
  br i1 %9895, label %9896, label %9934

; <label>:9896                                    ; preds = %9870
  %9897 = icmp eq i32 %9665, 0
  %9898 = fsub fast float %9715, %9799
  %9899 = select i1 %9897, float %9898, float %9799
  %9900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9901 = extractvalue %dx.types.CBufRet.f32 %9900, 0
  %9902 = extractvalue %dx.types.CBufRet.f32 %9900, 1
  %9903 = extractvalue %dx.types.CBufRet.f32 %9900, 2
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.CBufRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.CBufRet.f32 %9904, 2
  %9908 = extractvalue %dx.types.CBufRet.f32 %9904, 3
  %9909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9910 = extractvalue %dx.types.CBufRet.f32 %9909, 3
  %9911 = call float @dx.op.binary.f32(i32 36, float %9800, float %9910)  ; FMin(a,b)
  %9912 = fmul fast float %9908, %9899
  %9913 = call float @dx.op.unary.f32(i32 7, float %9912)  ; Saturate(value)
  %9914 = fsub fast float %9905, %9901
  %9915 = fsub fast float %9906, %9902
  %9916 = fsub fast float %9907, %9903
  %9917 = fmul fast float %9913, %9914
  %9918 = fmul fast float %9913, %9915
  %9919 = fmul fast float %9913, %9916
  %9920 = fadd fast float %9917, %9901
  %9921 = fadd fast float %9918, %9902
  %9922 = fadd fast float %9919, %9903
  %9923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9924 = extractvalue %dx.types.CBufRet.f32 %9923, 0
  %9925 = extractvalue %dx.types.CBufRet.f32 %9923, 1
  %9926 = fadd fast float %9925, %9924
  %9927 = call float @dx.op.unary.f32(i32 7, float %9926)  ; Saturate(value)
  %9928 = extractvalue %dx.types.CBufRet.f32 %9923, 2
  %9929 = extractvalue %dx.types.CBufRet.f32 %9923, 3
  %9930 = fadd fast float %9929, %9928
  %9931 = call float @dx.op.unary.f32(i32 7, float %9930)  ; Saturate(value)
  %9932 = fmul fast float %9927, %9911
  %9933 = fmul fast float %9932, %9931
  br label %10016

; <label>:9934                                    ; preds = %9870
  %9935 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9894
  %9936 = load float, float* %9935, align 4, !tbaa !123, !noalias !137
  %9937 = fcmp fast olt float %9936, %9801
  %9938 = icmp sgt i32 %9877, 0
  %9939 = and i1 %9938, %9937
  br i1 %9939, label %9940, label %9977

; <label>:9940                                    ; preds = %9934
  br label %9941

; <label>:9941                                    ; preds = %9970, %9940
  %9942 = phi float [ %9971, %9970 ], [ %9799, %9940 ]
  %9943 = phi float [ %9972, %9970 ], [ %9800, %9940 ]
  %9944 = phi float [ %9952, %9970 ], [ %9936, %9940 ]
  %9945 = phi i32 [ %9949, %9970 ], [ %9894, %9940 ]
  %9946 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9945
  %9947 = load float, float* %9946, align 4, !tbaa !123, !noalias !137
  %9948 = icmp slt i32 %9945, 2
  %9949 = add nsw i32 %9945, 1
  %9950 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9949
  %9951 = load float, float* %9950, align 4, !tbaa !123, !noalias !137
  %9952 = select i1 %9948, float %9951, float %9715
  %9953 = call float @dx.op.binary.f32(i32 36, float %9952, float %9947)  ; FMin(a,b)
  %9954 = call float @dx.op.binary.f32(i32 36, float %9801, float %9953)  ; FMin(a,b)
  %9955 = icmp eq i32 %9665, 0
  %9956 = fadd fast float %9954, %9944
  %9957 = fmul fast float %9956, %9646
  %9958 = fadd fast float %9957, %9659
  br i1 %9955, label %9964, label %9959

; <label>:9959                                    ; preds = %9941
  %9960 = fsub fast float %9954, %9944
  %9961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9960)  ; FMax(a,b)
  %9962 = fmul fast float %9961, %9958
  %9963 = fadd fast float %9962, %9943
  br label %9970

; <label>:9964                                    ; preds = %9941
  %9965 = fsub fast float %9944, %9954
  %9966 = call float @dx.op.unary.f32(i32 6, float %9965)  ; FAbs(value)
  %9967 = fadd fast float %9966, %9942
  %9968 = fmul fast float %9966, %9958
  %9969 = fsub fast float %9943, %9968
  br label %9970

; <label>:9970                                    ; preds = %9964, %9959
  %9971 = phi float [ %9961, %9959 ], [ %9967, %9964 ]
  %9972 = phi float [ %9963, %9959 ], [ %9969, %9964 ]
  %9973 = fcmp fast olt float %9952, %9801
  %9974 = icmp slt i32 %9949, 3
  %9975 = and i1 %9974, %9973
  br i1 %9975, label %9941, label %9976

; <label>:9976                                    ; preds = %9970
  br label %9977

; <label>:9977                                    ; preds = %9976, %9934
  %9978 = phi float [ %9799, %9934 ], [ %9971, %9976 ]
  %9979 = phi float [ %9800, %9934 ], [ %9972, %9976 ]
  %9980 = fsub fast float %9715, %9978
  %9981 = select i1 %9717, float %9978, float %9980
  %9982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9983 = extractvalue %dx.types.CBufRet.f32 %9982, 0
  %9984 = extractvalue %dx.types.CBufRet.f32 %9982, 1
  %9985 = extractvalue %dx.types.CBufRet.f32 %9982, 2
  %9986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9987 = extractvalue %dx.types.CBufRet.f32 %9986, 0
  %9988 = extractvalue %dx.types.CBufRet.f32 %9986, 1
  %9989 = extractvalue %dx.types.CBufRet.f32 %9986, 2
  %9990 = extractvalue %dx.types.CBufRet.f32 %9986, 3
  %9991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9992 = extractvalue %dx.types.CBufRet.f32 %9991, 3
  %9993 = call float @dx.op.binary.f32(i32 36, float %9979, float %9992)  ; FMin(a,b)
  %9994 = fmul fast float %9990, %9981
  %9995 = call float @dx.op.unary.f32(i32 7, float %9994)  ; Saturate(value)
  %9996 = fsub fast float %9987, %9983
  %9997 = fsub fast float %9988, %9984
  %9998 = fsub fast float %9989, %9985
  %9999 = fmul fast float %9995, %9996
  %10000 = fmul fast float %9995, %9997
  %10001 = fmul fast float %9995, %9998
  %10002 = fadd fast float %9999, %9983
  %10003 = fadd fast float %10000, %9984
  %10004 = fadd fast float %10001, %9985
  %10005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10006 = extractvalue %dx.types.CBufRet.f32 %10005, 0
  %10007 = extractvalue %dx.types.CBufRet.f32 %10005, 1
  %10008 = fadd fast float %10007, %10006
  %10009 = call float @dx.op.unary.f32(i32 7, float %10008)  ; Saturate(value)
  %10010 = extractvalue %dx.types.CBufRet.f32 %10005, 2
  %10011 = extractvalue %dx.types.CBufRet.f32 %10005, 3
  %10012 = fadd fast float %10011, %10010
  %10013 = call float @dx.op.unary.f32(i32 7, float %10012)  ; Saturate(value)
  %10014 = fmul fast float %10009, %9993
  %10015 = fmul fast float %10014, %10013
  br label %10016

; <label>:10016                                   ; preds = %9977, %9896, %9731, %9713, %9711
  %10017 = phi float [ %9740, %9731 ], [ %9899, %9896 ], [ %9981, %9977 ], [ 0.000000e+00, %9711 ], [ 0.000000e+00, %9713 ]
  %10018 = phi float [ %9774, %9731 ], [ %9933, %9896 ], [ %10015, %9977 ], [ 0.000000e+00, %9711 ], [ 0.000000e+00, %9713 ]
  %10019 = phi float [ %9761, %9731 ], [ %9920, %9896 ], [ %10002, %9977 ], [ 0.000000e+00, %9711 ], [ 0.000000e+00, %9713 ]
  %10020 = phi float [ %9762, %9731 ], [ %9921, %9896 ], [ %10003, %9977 ], [ 0.000000e+00, %9711 ], [ 0.000000e+00, %9713 ]
  %10021 = phi float [ %9763, %9731 ], [ %9922, %9896 ], [ %10004, %9977 ], [ 0.000000e+00, %9711 ], [ 0.000000e+00, %9713 ]
  %10022 = fmul fast float %9654, %10018
  %10023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10024 = extractvalue %dx.types.CBufRet.f32 %10023, 2
  %10025 = fsub fast float %9661, %10024
  %10026 = fcmp fast olt float %10022, -2.000000e+01
  %10027 = call float @dx.op.unary.f32(i32 21, float %10022)  ; Exp(value)
  %10028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10029 = extractvalue %dx.types.CBufRet.f32 %10028, 2
  %10030 = extractvalue %dx.types.CBufRet.f32 %10028, 3
  %10031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10032 = extractvalue %dx.types.CBufRet.f32 %10031, 2
  %10033 = fmul fast float %10030, %10025
  %10034 = call float @dx.op.unary.f32(i32 7, float %10033)  ; Saturate(value)
  %10035 = fsub fast float 1.000000e+00, %10034
  %10036 = fmul fast float %9646, 5.000000e-01
  %10037 = fadd fast float %10036, 5.000000e-01
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = fsub fast float 1.000000e+00, %10038
  %10040 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10035)  ; FMax(a,b)
  %10041 = fdiv fast float %10039, %10040
  %10042 = fsub fast float %10025, %9603
  %10043 = call float @dx.op.unary.f32(i32 6, float %10042)  ; FAbs(value)
  %10044 = fmul fast float %10043, %10029
  %10045 = call float @dx.op.unary.f32(i32 7, float %10041)  ; Saturate(value)
  %10046 = fsub fast float 1.000000e+00, %10044
  %10047 = fmul fast float %10046, %10045
  %10048 = fadd fast float %10047, %10044
  %10049 = fmul fast float %10032, %10025
  %10050 = call float @dx.op.unary.f32(i32 7, float %10049)  ; Saturate(value)
  %10051 = fsub fast float 1.000000e+00, %10048
  %10052 = fmul fast float %10051, %10050
  %10053 = fadd fast float %10052, %10048
  %10054 = call float @dx.op.unary.f32(i32 7, float %10053)  ; Saturate(value)
  %10055 = fadd fast float %10027, -1.000000e+00
  %10056 = select i1 %10026, float -1.000000e+00, float %10055
  %10057 = fmul fast float %10054, %10056
  %10058 = fadd fast float %10057, 1.000000e+00
  %10059 = fsub fast float -0.000000e+00, %10057
  %10060 = fmul fast float %10019, %10059
  %10061 = fmul fast float %10020, %10059
  %10062 = fmul fast float %10021, %10059
  br label %10063

; <label>:10063                                   ; preds = %10016, %9612
  %10064 = phi float [ %10017, %10016 ], [ 0.000000e+00, %9612 ]
  %10065 = phi float [ %10058, %10016 ], [ 1.000000e+00, %9612 ]
  %10066 = phi float [ %10060, %10016 ], [ 0.000000e+00, %9612 ]
  %10067 = phi float [ %10061, %10016 ], [ 0.000000e+00, %9612 ]
  %10068 = phi float [ %10062, %10016 ], [ 0.000000e+00, %9612 ]
  %10069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10070 = extractvalue %dx.types.CBufRet.f32 %10069, 1
  %10071 = fsub fast float 1.000000e+00, %10065
  %10072 = fmul fast float %10071, %9647
  %10073 = fmul fast float %10072, %10070
  %10074 = fsub fast float %9647, %10073
  br i1 %9640, label %10075, label %10104, !dx.controlflow.hints !173

; <label>:10075                                   ; preds = %10063
  %10076 = fmul fast float %9648, %9637
  %10077 = fadd fast float %10076, %9638
  %10078 = call float @dx.op.unary.f32(i32 7, float %10077)  ; Saturate(value)
  %10079 = fmul fast float %9619, %10074
  %10080 = fsub fast float -0.000000e+00, %10079
  %10081 = fmul fast float %9620, %10074
  %10082 = fsub fast float -0.000000e+00, %10081
  %10083 = call float @dx.op.unary.f32(i32 21, float %10080)  ; Exp(value)
  %10084 = call float @dx.op.unary.f32(i32 21, float %10082)  ; Exp(value)
  %10085 = call float @dx.op.binary.f32(i32 35, float %9627, float %10083)  ; FMax(a,b)
  %10086 = call float @dx.op.binary.f32(i32 35, float %9627, float %10084)  ; FMax(a,b)
  %10087 = fsub fast float %10086, %10085
  %10088 = fmul fast float %10087, %10078
  %10089 = fadd fast float %10088, %10085
  %10090 = call float @dx.op.unary.f32(i32 7, float %10089)  ; Saturate(value)
  %10091 = fsub fast float %9624, %9629
  %10092 = fsub fast float %9625, %9630
  %10093 = fsub fast float %9626, %9631
  %10094 = fmul fast float %10078, %10091
  %10095 = fmul fast float %10078, %10092
  %10096 = fmul fast float %10078, %10093
  %10097 = fadd fast float %10094, %9629
  %10098 = fadd fast float %10095, %9630
  %10099 = fadd fast float %10096, %9631
  %10100 = fsub fast float 1.000000e+00, %10090
  %10101 = fmul fast float %10100, %10097
  %10102 = fmul fast float %10100, %10098
  %10103 = fmul fast float %10100, %10099
  br label %10163

; <label>:10104                                   ; preds = %10063
  %10105 = fmul fast float %10074, %9636
  %10106 = call float @dx.op.unary.f32(i32 7, float %10105)  ; Saturate(value)
  %10107 = fsub fast float 2.000000e+00, %10106
  %10108 = fmul fast float %10106, 9.921875e-01
  %10109 = fmul fast float %10108, %10107
  %10110 = fadd fast float %10109, 3.906250e-03
  %10111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %10110, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10112 = extractvalue %dx.types.ResRet.f32 %10111, 0
  %10113 = fsub fast float %10106, %10112
  %10114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10113)  ; FMax(a,b)
  %10115 = fmul fast float %9622, %9603
  %10116 = call float @dx.op.unary.f32(i32 6, float %10115)  ; FAbs(value)
  %10117 = fcmp fast ogt float %10116, 0x3EB0C6F7A0000000
  br i1 %10117, label %10118, label %10124, !dx.controlflow.hints !174

; <label>:10118                                   ; preds = %10104
  %10119 = fmul fast float %10115, 0xBFF7154760000000
  %10120 = call float @dx.op.unary.f32(i32 21, float %10119)  ; Exp(value)
  %10121 = fsub fast float 1.000000e+00, %10120
  %10122 = fdiv fast float %10121, %10115
  %10123 = fmul fast float %10122, %9632
  br label %10124

; <label>:10124                                   ; preds = %10118, %10104
  %10125 = phi float [ %10123, %10118 ], [ %9632, %10104 ]
  %10126 = fadd fast float %10125, %9634
  %10127 = fmul fast float %10126, %10114
  %10128 = fmul fast float %9619, %10127
  %10129 = fsub fast float -0.000000e+00, %10128
  %10130 = fmul fast float %9620, %10127
  %10131 = fsub fast float -0.000000e+00, %10130
  %10132 = fmul fast float %9621, %10127
  %10133 = fsub fast float -0.000000e+00, %10132
  %10134 = call float @dx.op.unary.f32(i32 21, float %10129)  ; Exp(value)
  %10135 = call float @dx.op.unary.f32(i32 21, float %10131)  ; Exp(value)
  %10136 = call float @dx.op.unary.f32(i32 21, float %10133)  ; Exp(value)
  %10137 = fmul fast float %9648, %9648
  %10138 = fadd fast float %10137, 1.000000e+00
  %10139 = fmul fast float %10138, 0x3FAE8EC8A0000000
  %10140 = fmul fast float %10139, %9629
  %10141 = fmul fast float %10139, %9630
  %10142 = fmul fast float %10139, %9631
  %10143 = fmul fast float %9648, %9627
  %10144 = fsub fast float 1.000000e+00, %10143
  %10145 = fmul fast float %9627, %9627
  %10146 = fsub fast float 1.000000e+00, %10145
  %10147 = fmul fast float %10146, 0x3FB45F3060000000
  %10148 = fmul fast float %10144, %10144
  %10149 = fdiv fast float 1.000000e+00, %10148
  %10150 = fmul fast float %10147, %10149
  %10151 = fmul fast float %10150, %9624
  %10152 = fmul fast float %10150, %9625
  %10153 = fmul fast float %10150, %9626
  %10154 = fadd fast float %10151, %10140
  %10155 = fadd fast float %10152, %10141
  %10156 = fadd fast float %10153, %10142
  %10157 = fsub fast float 1.000000e+00, %10134
  %10158 = fsub fast float 1.000000e+00, %10135
  %10159 = fsub fast float 1.000000e+00, %10136
  %10160 = fmul fast float %10154, %10157
  %10161 = fmul fast float %10155, %10158
  %10162 = fmul fast float %10156, %10159
  br label %10163

; <label>:10163                                   ; preds = %10124, %10075
  %10164 = phi float [ %10101, %10075 ], [ %10160, %10124 ]
  %10165 = phi float [ %10102, %10075 ], [ %10161, %10124 ]
  %10166 = phi float [ %10103, %10075 ], [ %10162, %10124 ]
  %10167 = phi float [ %10090, %10075 ], [ %10134, %10124 ]
  %10168 = phi float [ %10090, %10075 ], [ %10135, %10124 ]
  %10169 = phi float [ %10090, %10075 ], [ %10136, %10124 ]
  br i1 %9656, label %10170, label %10368, !dx.controlflow.hints !175

; <label>:10170                                   ; preds = %10163
  %10171 = extractvalue %dx.types.CBufRet.f32 %10069, 0
  %10172 = fmul fast float %10171, %10071
  %10173 = fsub fast float %10066, %10164
  %10174 = fsub fast float %10067, %10165
  %10175 = fsub fast float %10068, %10166
  %10176 = fmul fast float %10172, %10173
  %10177 = fmul fast float %10172, %10174
  %10178 = fmul fast float %10172, %10175
  %10179 = fadd fast float %10176, %10164
  %10180 = fadd fast float %10177, %10165
  %10181 = fadd fast float %10178, %10166
  %10182 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10167)  ; FMax(a,b)
  %10183 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10168)  ; FMax(a,b)
  %10184 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10169)  ; FMax(a,b)
  %10185 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10065)  ; FMax(a,b)
  %10186 = call float @dx.op.binary.f32(i32 35, float %10064, float %10074)  ; FMax(a,b)
  %10187 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10186)  ; FMax(a,b)
  %10188 = fdiv fast float %10064, %10187
  %10189 = call float @dx.op.unary.f32(i32 7, float %10188)  ; Saturate(value)
  %10190 = fdiv fast float %10074, %10187
  %10191 = call float @dx.op.unary.f32(i32 7, float %10190)  ; Saturate(value)
  %10192 = fcmp fast une float %10185, 1.000000e+00
  br i1 %10192, label %10193, label %10206, !dx.controlflow.hints !176

; <label>:10193                                   ; preds = %10170
  %10194 = call float @dx.op.unary.f32(i32 23, float %10185)  ; Log(value)
  %10195 = fmul fast float %10194, 0x3FE62E4300000000
  %10196 = fmul fast float %10066, %10195
  %10197 = fsub fast float -0.000000e+00, %10196
  %10198 = fmul fast float %10067, %10195
  %10199 = fsub fast float -0.000000e+00, %10198
  %10200 = fmul fast float %10068, %10195
  %10201 = fsub fast float -0.000000e+00, %10200
  %10202 = fsub fast float 1.000000e+00, %10185
  %10203 = fdiv fast float %10197, %10202
  %10204 = fdiv fast float %10199, %10202
  %10205 = fdiv fast float %10201, %10202
  br label %10206

; <label>:10206                                   ; preds = %10193, %10170
  %10207 = phi float [ %10203, %10193 ], [ %10066, %10170 ]
  %10208 = phi float [ %10204, %10193 ], [ %10067, %10170 ]
  %10209 = phi float [ %10205, %10193 ], [ %10068, %10170 ]
  %10210 = phi float [ %10195, %10193 ], [ 0.000000e+00, %10170 ]
  %10211 = fcmp fast une float %10182, 1.000000e+00
  br i1 %10211, label %10212, label %10219, !dx.controlflow.hints !177

; <label>:10212                                   ; preds = %10206
  %10213 = call float @dx.op.unary.f32(i32 23, float %10182)  ; Log(value)
  %10214 = fmul fast float %10213, 0x3FE62E4300000000
  %10215 = fmul fast float %10179, %10214
  %10216 = fsub fast float -0.000000e+00, %10215
  %10217 = fsub fast float 1.000000e+00, %10182
  %10218 = fdiv fast float %10216, %10217
  br label %10219

; <label>:10219                                   ; preds = %10212, %10206
  %10220 = phi float [ %10218, %10212 ], [ %10179, %10206 ]
  %10221 = phi float [ %10214, %10212 ], [ 0.000000e+00, %10206 ]
  %10222 = fcmp fast une float %10183, 1.000000e+00
  br i1 %10222, label %10223, label %10230, !dx.controlflow.hints !177

; <label>:10223                                   ; preds = %10219
  %10224 = call float @dx.op.unary.f32(i32 23, float %10183)  ; Log(value)
  %10225 = fmul fast float %10224, 0x3FE62E4300000000
  %10226 = fmul fast float %10180, %10225
  %10227 = fsub fast float -0.000000e+00, %10226
  %10228 = fsub fast float 1.000000e+00, %10183
  %10229 = fdiv fast float %10227, %10228
  br label %10230

; <label>:10230                                   ; preds = %10223, %10219
  %10231 = phi float [ %10229, %10223 ], [ %10180, %10219 ]
  %10232 = phi float [ %10225, %10223 ], [ 0.000000e+00, %10219 ]
  %10233 = fcmp fast une float %10184, 1.000000e+00
  br i1 %10233, label %10234, label %10241, !dx.controlflow.hints !177

; <label>:10234                                   ; preds = %10230
  %10235 = call float @dx.op.unary.f32(i32 23, float %10184)  ; Log(value)
  %10236 = fmul fast float %10235, 0x3FE62E4300000000
  %10237 = fmul fast float %10181, %10236
  %10238 = fsub fast float -0.000000e+00, %10237
  %10239 = fsub fast float 1.000000e+00, %10184
  %10240 = fdiv fast float %10238, %10239
  br label %10241

; <label>:10241                                   ; preds = %10234, %10230
  %10242 = phi float [ %10240, %10234 ], [ %10181, %10230 ]
  %10243 = phi float [ %10236, %10234 ], [ 0.000000e+00, %10230 ]
  %10244 = fmul fast float %10207, %10191
  %10245 = fmul fast float %10208, %10191
  %10246 = fmul fast float %10209, %10191
  %10247 = fmul fast float %10210, %10191
  %10248 = fmul fast float %10220, %10189
  %10249 = fmul fast float %10231, %10189
  %10250 = fmul fast float %10242, %10189
  %10251 = fmul fast float %10221, %10189
  %10252 = fmul fast float %10232, %10189
  %10253 = fmul fast float %10243, %10189
  %10254 = fadd fast float %10248, %10244
  %10255 = fadd fast float %10249, %10245
  %10256 = fadd fast float %10250, %10246
  %10257 = fadd fast float %10251, %10247
  %10258 = fadd fast float %10252, %10247
  %10259 = fadd fast float %10253, %10247
  %10260 = fcmp fast une float %10257, 0.000000e+00
  br i1 %10260, label %10261, label %10268, !dx.controlflow.hints !178

; <label>:10261                                   ; preds = %10241
  %10262 = fmul fast float %10257, 0x3FF7154760000000
  %10263 = call float @dx.op.unary.f32(i32 21, float %10262)  ; Exp(value)
  %10264 = fsub fast float 1.000000e+00, %10263
  %10265 = fmul fast float %10254, %10264
  %10266 = fsub fast float -0.000000e+00, %10265
  %10267 = fdiv fast float %10266, %10257
  br label %10268

; <label>:10268                                   ; preds = %10261, %10241
  %10269 = phi float [ %10263, %10261 ], [ 1.000000e+00, %10241 ]
  %10270 = phi float [ %10267, %10261 ], [ %10254, %10241 ]
  %10271 = fcmp fast une float %10258, 0.000000e+00
  br i1 %10271, label %10272, label %10279, !dx.controlflow.hints !178

; <label>:10272                                   ; preds = %10268
  %10273 = fmul fast float %10258, 0x3FF7154760000000
  %10274 = call float @dx.op.unary.f32(i32 21, float %10273)  ; Exp(value)
  %10275 = fsub fast float 1.000000e+00, %10274
  %10276 = fmul fast float %10255, %10275
  %10277 = fsub fast float -0.000000e+00, %10276
  %10278 = fdiv fast float %10277, %10258
  br label %10279

; <label>:10279                                   ; preds = %10272, %10268
  %10280 = phi float [ %10274, %10272 ], [ 1.000000e+00, %10268 ]
  %10281 = phi float [ %10278, %10272 ], [ %10255, %10268 ]
  %10282 = fcmp fast une float %10259, 0.000000e+00
  br i1 %10282, label %10283, label %10290, !dx.controlflow.hints !178

; <label>:10283                                   ; preds = %10279
  %10284 = fmul fast float %10259, 0x3FF7154760000000
  %10285 = call float @dx.op.unary.f32(i32 21, float %10284)  ; Exp(value)
  %10286 = fsub fast float 1.000000e+00, %10285
  %10287 = fmul fast float %10256, %10286
  %10288 = fsub fast float -0.000000e+00, %10287
  %10289 = fdiv fast float %10288, %10259
  br label %10290

; <label>:10290                                   ; preds = %10283, %10279
  %10291 = phi float [ %10285, %10283 ], [ 1.000000e+00, %10279 ]
  %10292 = phi float [ %10289, %10283 ], [ %10256, %10279 ]
  %10293 = fcmp fast ogt float %10189, %10191
  br i1 %10293, label %10294, label %10314

; <label>:10294                                   ; preds = %10290
  %10295 = fsub fast float 1.000000e+00, %10191
  %10296 = fmul fast float %10207, %10295
  %10297 = fmul fast float %10208, %10295
  %10298 = fmul fast float %10209, %10295
  %10299 = fmul fast float %10210, %10295
  %10300 = fcmp fast une float %10299, 0.000000e+00
  br i1 %10300, label %10301, label %10352, !dx.controlflow.hints !179

; <label>:10301                                   ; preds = %10294
  %10302 = fmul fast float %10299, 0x3FF7154760000000
  %10303 = call float @dx.op.unary.f32(i32 21, float %10302)  ; Exp(value)
  %10304 = fsub fast float 1.000000e+00, %10303
  %10305 = fmul fast float %10296, %10304
  %10306 = fsub fast float -0.000000e+00, %10305
  %10307 = fmul fast float %10297, %10304
  %10308 = fsub fast float -0.000000e+00, %10307
  %10309 = fmul fast float %10298, %10304
  %10310 = fsub fast float -0.000000e+00, %10309
  %10311 = fdiv fast float %10306, %10299
  %10312 = fdiv fast float %10308, %10299
  %10313 = fdiv fast float %10310, %10299
  br label %10352

; <label>:10314                                   ; preds = %10290
  %10315 = fsub fast float 1.000000e+00, %10189
  %10316 = fmul fast float %10220, %10315
  %10317 = fmul fast float %10231, %10315
  %10318 = fmul fast float %10242, %10315
  %10319 = fmul fast float %10221, %10315
  %10320 = fmul fast float %10232, %10315
  %10321 = fmul fast float %10243, %10315
  %10322 = fcmp fast une float %10319, 0.000000e+00
  br i1 %10322, label %10323, label %10330, !dx.controlflow.hints !178

; <label>:10323                                   ; preds = %10314
  %10324 = fmul fast float %10319, 0x3FF7154760000000
  %10325 = call float @dx.op.unary.f32(i32 21, float %10324)  ; Exp(value)
  %10326 = fsub fast float 1.000000e+00, %10325
  %10327 = fmul fast float %10316, %10326
  %10328 = fsub fast float -0.000000e+00, %10327
  %10329 = fdiv fast float %10328, %10319
  br label %10330

; <label>:10330                                   ; preds = %10323, %10314
  %10331 = phi float [ %10329, %10323 ], [ %10316, %10314 ]
  %10332 = phi float [ %10325, %10323 ], [ 1.000000e+00, %10314 ]
  %10333 = fcmp fast une float %10320, 0.000000e+00
  br i1 %10333, label %10334, label %10341, !dx.controlflow.hints !178

; <label>:10334                                   ; preds = %10330
  %10335 = fmul fast float %10320, 0x3FF7154760000000
  %10336 = call float @dx.op.unary.f32(i32 21, float %10335)  ; Exp(value)
  %10337 = fsub fast float 1.000000e+00, %10336
  %10338 = fmul fast float %10317, %10337
  %10339 = fsub fast float -0.000000e+00, %10338
  %10340 = fdiv fast float %10339, %10320
  br label %10341

; <label>:10341                                   ; preds = %10334, %10330
  %10342 = phi float [ %10340, %10334 ], [ %10317, %10330 ]
  %10343 = phi float [ %10336, %10334 ], [ 1.000000e+00, %10330 ]
  %10344 = fcmp fast une float %10321, 0.000000e+00
  br i1 %10344, label %10345, label %10352, !dx.controlflow.hints !178

; <label>:10345                                   ; preds = %10341
  %10346 = fmul fast float %10321, 0x3FF7154760000000
  %10347 = call float @dx.op.unary.f32(i32 21, float %10346)  ; Exp(value)
  %10348 = fsub fast float 1.000000e+00, %10347
  %10349 = fmul fast float %10318, %10348
  %10350 = fsub fast float -0.000000e+00, %10349
  %10351 = fdiv fast float %10350, %10321
  br label %10352

; <label>:10352                                   ; preds = %10345, %10341, %10301, %10294
  %10353 = phi float [ %10351, %10345 ], [ %10313, %10301 ], [ %10298, %10294 ], [ %10318, %10341 ]
  %10354 = phi float [ %10342, %10345 ], [ %10312, %10301 ], [ %10297, %10294 ], [ %10342, %10341 ]
  %10355 = phi float [ %10331, %10345 ], [ %10311, %10301 ], [ %10296, %10294 ], [ %10331, %10341 ]
  %10356 = phi float [ %10347, %10345 ], [ %10303, %10301 ], [ 1.000000e+00, %10294 ], [ 1.000000e+00, %10341 ]
  %10357 = phi float [ %10343, %10345 ], [ %10303, %10301 ], [ 1.000000e+00, %10294 ], [ %10343, %10341 ]
  %10358 = phi float [ %10332, %10345 ], [ %10303, %10301 ], [ 1.000000e+00, %10294 ], [ %10332, %10341 ]
  %10359 = fmul fast float %10358, %10270
  %10360 = fmul fast float %10357, %10281
  %10361 = fmul fast float %10356, %10292
  %10362 = fadd fast float %10359, %10355
  %10363 = fadd fast float %10360, %10354
  %10364 = fadd fast float %10361, %10353
  %10365 = fmul fast float %10358, %10269
  %10366 = fmul fast float %10357, %10280
  %10367 = fmul fast float %10356, %10291
  br label %10368

; <label>:10368                                   ; preds = %10352, %10163
  %10369 = phi float [ %10367, %10352 ], [ %10169, %10163 ]
  %10370 = phi float [ %10366, %10352 ], [ %10168, %10163 ]
  %10371 = phi float [ %10365, %10352 ], [ %10167, %10163 ]
  %10372 = phi float [ %10364, %10352 ], [ %10166, %10163 ]
  %10373 = phi float [ %10363, %10352 ], [ %10165, %10163 ]
  %10374 = phi float [ %10362, %10352 ], [ %10164, %10163 ]
  %10375 = fmul fast float %10374, %9328
  %10376 = fmul fast float %10373, %9329
  %10377 = fmul fast float %10372, %9330
  %10378 = fmul fast float %10371, %9611
  %10379 = call float @dx.op.dot3.f32(i32 55, float %10371, float %10370, float %10369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10380 = call float @dx.op.dot3.f32(i32 55, float %10375, float %10376, float %10377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10381 = select i1 %259, float %10379, float %10371
  %10382 = select i1 %259, float %10379, float %10370
  %10383 = select i1 %259, float 1.000000e+00, float %10369
  %10384 = select i1 %259, float %10380, float %10375
  %10385 = select i1 %259, float 0.000000e+00, float %10376
  %10386 = select i1 %259, float 0.000000e+00, float %10377
  %10387 = fmul fast float %10381, %9605
  %10388 = fmul fast float %10382, %9606
  %10389 = fmul fast float %10383, %9607
  %10390 = fadd fast float %10387, %10384
  %10391 = fadd fast float %10388, %10385
  %10392 = fadd fast float %10386, %10389
  %10393 = fmul fast float %10381, %9608
  %10394 = fmul fast float %10382, %9609
  %10395 = fmul fast float %10383, %9610
  %10396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10397 = extractvalue %dx.types.CBufRet.i32 %10396, 0
  %10398 = icmp eq i32 %10397, 0
  br i1 %10398, label %10766, label %10399, !dx.controlflow.hints !180

; <label>:10399                                   ; preds = %10368
  %10400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10401 = extractvalue %dx.types.CBufRet.f32 %10400, 2
  %10402 = extractvalue %dx.types.CBufRet.f32 %10400, 3
  %10403 = fmul fast float %10401, %110
  %10404 = fmul fast float %10402, %111
  %10405 = fmul fast float %10403, 2.000000e+00
  %10406 = fmul fast float %10404, 2.000000e+00
  %10407 = fsub fast float 1.000000e+00, %10405
  %10408 = fsub fast float 1.000000e+00, %10406
  %10409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10410 = extractvalue %dx.types.CBufRet.f32 %10409, 0
  %10411 = extractvalue %dx.types.CBufRet.f32 %10409, 1
  %10412 = extractvalue %dx.types.CBufRet.f32 %10409, 2
  %10413 = fmul fast float %10407, %10410
  %10414 = fmul fast float %10407, %10411
  %10415 = fmul fast float %10407, %10412
  %10416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10417 = extractvalue %dx.types.CBufRet.f32 %10416, 0
  %10418 = extractvalue %dx.types.CBufRet.f32 %10416, 1
  %10419 = extractvalue %dx.types.CBufRet.f32 %10416, 2
  %10420 = fmul fast float %10408, %10417
  %10421 = fmul fast float %10408, %10418
  %10422 = fmul fast float %10408, %10419
  %10423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10424 = extractvalue %dx.types.CBufRet.f32 %10423, 0
  %10425 = extractvalue %dx.types.CBufRet.f32 %10423, 1
  %10426 = extractvalue %dx.types.CBufRet.f32 %10423, 2
  %10427 = fadd fast float %10420, %10424
  %10428 = fadd fast float %10427, %10413
  %10429 = fadd fast float %10421, %10425
  %10430 = fadd fast float %10429, %10414
  %10431 = fadd fast float %10422, %10426
  %10432 = fadd fast float %10431, %10415
  %10433 = fmul fast float %10428, %9604
  %10434 = fmul fast float %10430, %9604
  %10435 = fmul fast float %10432, %9604
  %10436 = fmul fast float %10433, %10433
  %10437 = fmul fast float %10434, %10434
  %10438 = fadd fast float %10436, %10437
  %10439 = fmul fast float %10435, %10435
  %10440 = fadd fast float %10438, %10439
  %10441 = call float @dx.op.unary.f32(i32 24, float %10440)  ; Sqrt(value)
  %10442 = extractvalue %dx.types.CBufRet.f32 %9331, 0
  %10443 = fsub fast float %10441, %10442
  %10444 = extractvalue %dx.types.CBufRet.f32 %9331, 2
  %10445 = fmul fast float %10443, %10444
  %10446 = call float @dx.op.unary.f32(i32 7, float %10445)  ; Saturate(value)
  %10447 = fadd fast float %10446, -5.000000e-01
  %10448 = fmul fast float %10447, 2.000000e+00
  %10449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10450 = extractvalue %dx.types.CBufRet.f32 %10449, 2
  %10451 = call float @dx.op.binary.f32(i32 36, float %10450, float %10448)  ; FMin(a,b)
  %10452 = fsub fast float -0.000000e+00, %10450
  %10453 = fcmp fast ogt float %10451, %10452
  br i1 %10453, label %10454, label %10766, !dx.controlflow.hints !181

; <label>:10454                                   ; preds = %10399
  %10455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10456 = extractvalue %dx.types.CBufRet.f32 %10455, 3
  %10457 = fcmp fast ogt float %10456, 0.000000e+00
  br i1 %10457, label %10458, label %10533, !dx.controlflow.hints !182

; <label>:10458                                   ; preds = %10454
  %10459 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10460 = extractvalue %dx.types.Dimensions %10459, 0
  %10461 = sitofp i32 %10460 to float
  %10462 = extractvalue %dx.types.Dimensions %10459, 1
  %10463 = sitofp i32 %10462 to float
  %10464 = fmul fast float %10403, %10461
  %10465 = fmul fast float %10404, %10463
  %10466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10467 = extractvalue %dx.types.CBufRet.f32 %10466, 1
  %10468 = fsub fast float -0.000000e+00, %10467
  %10469 = fptoui float %10468 to i32
  %10470 = fptoui float %10464 to i32
  %10471 = fptoui float %10465 to i32
  %10472 = and i32 %10469, 31
  %10473 = lshr i32 %10470, %10472
  %10474 = lshr i32 %10471, %10472
  %10475 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10469, i32 %10473, i32 %10474, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10476 = extractvalue %dx.types.ResRet.f32 %10475, 0
  %10477 = fcmp fast olt float %10476, -1.000000e+00
  %10478 = fcmp fast ogt float %10476, -1.000000e+00
  %10479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10480 = extractvalue %dx.types.CBufRet.f32 %10479, 1
  %10481 = select i1 %10478, float %10480, float 1.000000e+00
  %10482 = fadd fast float %10476, 1.000000e+00
  %10483 = fmul fast float %10481, %10482
  %10484 = call float @dx.op.unary.f32(i32 6, float %10483)  ; FAbs(value)
  %10485 = extractvalue %dx.types.CBufRet.f32 %10479, 3
  %10486 = fcmp fast oge float %10484, %10485
  %10487 = select i1 %10486, float 0x4197782600000000, float %10484
  %10488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10489 = extractvalue %dx.types.CBufRet.f32 %10488, 0
  %10490 = extractvalue %dx.types.CBufRet.f32 %10488, 1
  %10491 = extractvalue %dx.types.CBufRet.f32 %10488, 2
  %10492 = select i1 %10477, float %10489, float %10410
  %10493 = select i1 %10477, float %10490, float %10411
  %10494 = select i1 %10477, float %10491, float %10412
  %10495 = fmul fast float %10492, %10407
  %10496 = fmul fast float %10493, %10407
  %10497 = fmul fast float %10494, %10407
  %10498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10499 = extractvalue %dx.types.CBufRet.f32 %10498, 0
  %10500 = extractvalue %dx.types.CBufRet.f32 %10498, 1
  %10501 = extractvalue %dx.types.CBufRet.f32 %10498, 2
  %10502 = select i1 %10477, float %10499, float %10417
  %10503 = select i1 %10477, float %10500, float %10418
  %10504 = select i1 %10477, float %10501, float %10419
  %10505 = fmul fast float %10502, %10408
  %10506 = fmul fast float %10503, %10408
  %10507 = fmul fast float %10504, %10408
  %10508 = fadd fast float %10505, %10495
  %10509 = fadd fast float %10506, %10496
  %10510 = fadd fast float %10507, %10497
  %10511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10512 = extractvalue %dx.types.CBufRet.f32 %10511, 0
  %10513 = extractvalue %dx.types.CBufRet.f32 %10511, 1
  %10514 = extractvalue %dx.types.CBufRet.f32 %10511, 2
  %10515 = select i1 %10477, float %10512, float %10424
  %10516 = select i1 %10477, float %10513, float %10425
  %10517 = select i1 %10477, float %10514, float %10426
  %10518 = fadd fast float %10508, %10515
  %10519 = fadd fast float %10509, %10516
  %10520 = fadd fast float %10510, %10517
  %10521 = fmul fast float %10518, %10487
  %10522 = fmul fast float %10519, %10487
  %10523 = fmul fast float %10520, %10487
  %10524 = fmul fast float %10521, %10521
  %10525 = fmul fast float %10522, %10522
  %10526 = fadd fast float %10524, %10525
  %10527 = fmul fast float %10523, %10523
  %10528 = fadd fast float %10526, %10527
  %10529 = call float @dx.op.unary.f32(i32 24, float %10528)  ; Sqrt(value)
  %10530 = fsub fast float %10529, %10442
  %10531 = fmul fast float %10530, %10444
  %10532 = call float @dx.op.unary.f32(i32 7, float %10531)  ; Saturate(value)
  br label %10533

; <label>:10533                                   ; preds = %10458, %10454
  %10534 = phi float [ %10532, %10458 ], [ 1.000000e+00, %10454 ]
  %10535 = fmul fast float %10451, 5.000000e-01
  %10536 = fadd fast float %10535, 5.000000e-01
  %10537 = call float @dx.op.unary.f32(i32 22, float %10536)  ; Frc(value)
  %10538 = call float @dx.op.unary.f32(i32 27, float %10537)  ; Round_ni(value)
  %10539 = call float @dx.op.unary.f32(i32 22, float %10537)  ; Frc(value)
  %10540 = fmul fast float %10539, 2.000000e+00
  %10541 = fadd fast float %10540, -1.000000e+00
  %10542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %10403, float %10404, float %10538, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10543 = extractvalue %dx.types.ResRet.f32 %10542, 0
  %10544 = extractvalue %dx.types.ResRet.f32 %10542, 1
  %10545 = extractvalue %dx.types.ResRet.f32 %10542, 2
  %10546 = extractvalue %dx.types.ResRet.f32 %10542, 3
  %10547 = fadd fast float %10543, -5.000000e-01
  %10548 = fadd fast float %10545, -5.000000e-01
  %10549 = fmul fast float %10547, 0xBFD5555560000000
  %10550 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10548, float %10549)  ; FMad(a,b,c)
  %10551 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10544, float 0.000000e+00)  ; FMad(a,b,c)
  %10552 = fadd fast float %10551, %10546
  %10553 = fmul fast float %10547, -7.500000e-01
  %10554 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10548, float %10553)  ; FMad(a,b,c)
  %10555 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10544, float 0.000000e+00)  ; FMad(a,b,c)
  %10556 = fadd fast float %10555, %10546
  %10557 = call float @dx.op.binary.f32(i32 35, float %10550, float -1.000000e+00)  ; FMax(a,b)
  %10558 = call float @dx.op.binary.f32(i32 35, float %10552, float -1.000000e+00)  ; FMax(a,b)
  %10559 = call float @dx.op.binary.f32(i32 35, float %10554, float -1.000000e+00)  ; FMax(a,b)
  %10560 = call float @dx.op.binary.f32(i32 35, float %10556, float -1.000000e+00)  ; FMax(a,b)
  %10561 = call float @dx.op.binary.f32(i32 36, float %10557, float 1.000000e+00)  ; FMin(a,b)
  %10562 = call float @dx.op.binary.f32(i32 36, float %10558, float 1.000000e+00)  ; FMin(a,b)
  %10563 = call float @dx.op.binary.f32(i32 36, float %10559, float 1.000000e+00)  ; FMin(a,b)
  %10564 = call float @dx.op.binary.f32(i32 36, float %10560, float 1.000000e+00)  ; FMin(a,b)
  %10565 = fcmp fast olt float %10561, 0x3FEFFF8020000000
  br i1 %10565, label %10566, label %10681, !dx.controlflow.hints !183

; <label>:10566                                   ; preds = %10533
  %10567 = extractvalue %dx.types.CBufRet.f32 %10449, 3
  %10568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10569 = extractvalue %dx.types.CBufRet.f32 %10568, 0
  %10570 = extractvalue %dx.types.CBufRet.f32 %10568, 1
  %10571 = extractvalue %dx.types.CBufRet.f32 %10568, 2
  %10572 = extractvalue %dx.types.CBufRet.f32 %10568, 3
  %10573 = fsub fast float %10569, %10561
  %10574 = fsub fast float %10570, %10562
  %10575 = fsub fast float %10571, %10563
  %10576 = fsub fast float %10572, %10564
  %10577 = fmul fast float %10573, %10567
  %10578 = fmul fast float %10574, %10567
  %10579 = fmul fast float %10575, %10567
  %10580 = fmul fast float %10576, %10567
  %10581 = fadd fast float %10577, %10561
  %10582 = fadd fast float %10578, %10562
  %10583 = fsub fast float -0.000000e+00, %10582
  %10584 = fadd fast float %10579, %10563
  %10585 = fadd fast float %10580, %10564
  %10586 = fmul fast float %10581, %10581
  %10587 = fsub fast float %10582, %10586
  %10588 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10587)  ; FMax(a,b)
  %10589 = fdiv fast float 1.000000e+00, %10588
  %10590 = fmul fast float %10582, %10581
  %10591 = fsub fast float %10584, %10590
  %10592 = fsub fast float %10541, %10581
  %10593 = fmul fast float %10541, %10541
  %10594 = fsub fast float %10593, %10582
  %10595 = fmul fast float %10592, %10589
  %10596 = fmul fast float %10595, %10591
  %10597 = fsub fast float %10594, %10596
  %10598 = fmul fast float %10582, %10582
  %10599 = fsub fast float %10585, %10598
  %10600 = fmul fast float %10591, %10591
  %10601 = fmul fast float %10600, %10589
  %10602 = fsub fast float %10599, %10601
  %10603 = fdiv fast float %10597, %10602
  %10604 = fmul fast float %10591, %10603
  %10605 = fsub fast float %10592, %10604
  %10606 = fmul fast float %10605, %10589
  %10607 = fmul fast float %10606, %10581
  %10608 = fsub fast float 1.000000e+00, %10607
  %10609 = fmul fast float %10582, %10603
  %10610 = fsub fast float %10608, %10609
  %10611 = fmul fast float %10606, %10606
  %10612 = fmul fast float %10603, 4.000000e+00
  %10613 = fmul fast float %10612, %10610
  %10614 = fsub fast float %10611, %10613
  %10615 = call float @dx.op.unary.f32(i32 24, float %10614)  ; Sqrt(value)
  %10616 = fcmp fast oge float %10606, 0.000000e+00
  %10617 = fsub fast float -0.000000e+00, %10615
  %10618 = select i1 %10616, float %10617, float %10615
  %10619 = fsub fast float %10618, %10606
  %10620 = fdiv fast float %10619, %10603
  %10621 = fdiv fast float %10610, %10619
  %10622 = fmul fast float %10620, 5.000000e-01
  %10623 = fmul fast float %10621, 2.000000e+00
  %10624 = select i1 %10616, float %10622, float %10623
  %10625 = select i1 %10616, float %10623, float %10622
  %10626 = call float @dx.op.binary.f32(i32 35, float %10624, float %10625)  ; FMax(a,b)
  %10627 = call float @dx.op.binary.f32(i32 36, float %10624, float %10625)  ; FMin(a,b)
  %10628 = fcmp fast ogt float %10541, %10627
  br i1 %10628, label %10629, label %10639

; <label>:10629                                   ; preds = %10566
  %10630 = fsub fast float %10541, %10627
  %10631 = fsub fast float %10626, %10627
  %10632 = fmul fast float %10630, %10631
  %10633 = fmul fast float %10626, %10541
  %10634 = fadd fast float %10626, %10541
  %10635 = fmul fast float %10634, %10581
  %10636 = fadd fast float %10633, %10582
  %10637 = fsub fast float %10636, %10635
  %10638 = fdiv fast float %10637, %10632
  br label %10639

; <label>:10639                                   ; preds = %10629, %10566
  %10640 = phi float [ %10638, %10629 ], [ 0.000000e+00, %10566 ]
  %10641 = fcmp fast ogt float %10541, %10626
  %10642 = fsub fast float %10541, %10626
  br i1 %10641, label %10643, label %10653

; <label>:10643                                   ; preds = %10639
  %10644 = fsub fast float %10626, %10627
  %10645 = fmul fast float %10644, %10642
  %10646 = fmul fast float %10627, %10541
  %10647 = fadd fast float %10627, %10541
  %10648 = fmul fast float %10647, %10581
  %10649 = fsub fast float %10583, %10646
  %10650 = fadd fast float %10649, %10648
  %10651 = fdiv fast float %10650, %10645
  %10652 = fadd fast float %10651, %10640
  br label %10653

; <label>:10653                                   ; preds = %10643, %10639
  %10654 = phi float [ %10652, %10643 ], [ %10640, %10639 ]
  %10655 = fsub fast float %10541, %10627
  %10656 = fmul fast float %10655, %10642
  %10657 = fmul fast float %10627, %10626
  %10658 = fadd fast float %10627, %10626
  %10659 = fmul fast float %10658, %10581
  %10660 = fadd fast float %10657, %10582
  %10661 = fsub fast float %10660, %10659
  %10662 = fdiv fast float %10661, %10656
  %10663 = call float @dx.op.unary.f32(i32 7, float %10654)  ; Saturate(value)
  %10664 = fcmp fast oeq float %9332, 0.000000e+00
  %10665 = extractvalue %dx.types.CBufRet.f32 %10449, 0
  %10666 = fcmp fast oeq float %10665, 0.000000e+00
  %10667 = or i1 %10664, %10666
  %10668 = fmul fast float %10665, 2.000000e+00
  %10669 = fadd fast float %10450, %10451
  %10670 = fdiv fast float %10669, %10668
  %10671 = call float @dx.op.unary.f32(i32 7, float %10670)  ; Saturate(value)
  %10672 = fmul fast float %10671, 2.000000e+00
  %10673 = fsub fast float 3.000000e+00, %10672
  %10674 = fmul fast float %10671, %10671
  %10675 = fmul fast float %10674, %10673
  %10676 = select i1 %10667, float 1.000000e+00, float %10675
  %10677 = fmul fast float %10662, %9332
  %10678 = fadd fast float %10663, %10677
  %10679 = call float @dx.op.unary.f32(i32 7, float %10678)  ; Saturate(value)
  %10680 = fmul fast float %10676, %10679
  br label %10681

; <label>:10681                                   ; preds = %10653, %10533
  %10682 = phi float [ %10680, %10653 ], [ 0.000000e+00, %10533 ]
  %10683 = fsub fast float 1.000000e+00, %10682
  %10684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %10403, float %10404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10685 = extractvalue %dx.types.ResRet.f32 %10684, 0
  %10686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10687 = extractvalue %dx.types.CBufRet.i32 %10686, 2
  %10688 = icmp eq i32 %10687, 0
  br i1 %10688, label %10694, label %10689

; <label>:10689                                   ; preds = %10681
  %10690 = call float @dx.op.unary.f32(i32 7, float %10682)  ; Saturate(value)
  %10691 = fadd fast float %10685, -1.000000e+00
  %10692 = fmul fast float %10690, %10691
  %10693 = fadd fast float %10692, 1.000000e+00
  br label %10694

; <label>:10694                                   ; preds = %10689, %10681
  %10695 = phi float [ %10693, %10689 ], [ %10683, %10681 ]
  br i1 %10457, label %10696, label %10714

; <label>:10696                                   ; preds = %10694
  %10697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10698 = extractvalue %dx.types.CBufRet.f32 %10697, 1
  %10699 = fsub fast float %10534, %10698
  %10700 = call float @dx.op.unary.f32(i32 7, float %10699)  ; Saturate(value)
  %10701 = fsub fast float %10534, %10456
  %10702 = call float @dx.op.unary.f32(i32 7, float %10701)  ; Saturate(value)
  %10703 = fsub fast float %10700, %10702
  %10704 = fsub fast float %10536, %10702
  %10705 = fdiv fast float %10704, %10703
  %10706 = call float @dx.op.unary.f32(i32 7, float %10705)  ; Saturate(value)
  %10707 = fmul fast float %10706, 2.000000e+00
  %10708 = fsub fast float 3.000000e+00, %10707
  %10709 = fsub fast float %10685, %10695
  %10710 = fmul fast float %10706, %10706
  %10711 = fmul fast float %10710, %10709
  %10712 = fmul fast float %10711, %10708
  %10713 = fadd fast float %10712, %10695
  br label %10714

; <label>:10714                                   ; preds = %10696, %10694
  %10715 = phi float [ %10713, %10696 ], [ %10695, %10694 ]
  %10716 = call float @dx.op.binary.f32(i32 35, float %10685, float %10715)  ; FMax(a,b)
  %10717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10718 = extractvalue %dx.types.CBufRet.i32 %10717, 2
  %10719 = and i32 %10718, 1
  %10720 = icmp eq i32 %10719, 0
  %10721 = fcmp fast une float %10716, 1.000000e+00
  %10722 = and i1 %10721, %10720
  br i1 %10722, label %10723, label %10742

; <label>:10723                                   ; preds = %10714
  %10724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %10403, float %10404, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10725 = extractvalue %dx.types.ResRet.f32 %10724, 0
  %10726 = extractvalue %dx.types.ResRet.f32 %10724, 1
  %10727 = extractvalue %dx.types.ResRet.f32 %10724, 2
  %10728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10729 = extractvalue %dx.types.CBufRet.f32 %10728, 1
  %10730 = fmul fast float %10729, %10725
  %10731 = fmul fast float %10729, %10726
  %10732 = fmul fast float %10729, %10727
  %10733 = fcmp fast ogt float %10685, 0x3FEFFF2E40000000
  %10734 = fsub fast float 1.000000e+00, %10716
  %10735 = fsub fast float 1.000000e+00, %10685
  %10736 = fdiv fast float %10734, %10735
  %10737 = call float @dx.op.unary.f32(i32 7, float %10736)  ; Saturate(value)
  %10738 = select i1 %10733, float 0.000000e+00, float %10737
  %10739 = fmul fast float %10730, %10738
  %10740 = fmul fast float %10731, %10738
  %10741 = fmul fast float %10732, %10738
  br label %10742

; <label>:10742                                   ; preds = %10723, %10714
  %10743 = phi float [ 0.000000e+00, %10714 ], [ %10739, %10723 ]
  %10744 = phi float [ 0.000000e+00, %10714 ], [ %10740, %10723 ]
  %10745 = phi float [ 0.000000e+00, %10714 ], [ %10741, %10723 ]
  %10746 = fmul fast float %10743, %9328
  %10747 = fmul fast float %10744, %9329
  %10748 = fmul fast float %10745, %9330
  %10749 = fmul fast float %10716, %10378
  %10750 = call float @dx.op.dot3.f32(i32 55, float %10716, float %10716, float %10716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10751 = call float @dx.op.dot3.f32(i32 55, float %10746, float %10747, float %10748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10752 = select i1 %259, float %10750, float %10716
  %10753 = select i1 %259, float 1.000000e+00, float %10716
  %10754 = select i1 %259, float %10751, float %10746
  %10755 = select i1 %259, float 0.000000e+00, float %10747
  %10756 = select i1 %259, float 0.000000e+00, float %10748
  %10757 = fmul fast float %10752, %10390
  %10758 = fmul fast float %10752, %10391
  %10759 = fmul fast float %10753, %10392
  %10760 = fadd fast float %10757, %10754
  %10761 = fadd fast float %10758, %10755
  %10762 = fadd fast float %10756, %10759
  %10763 = fmul fast float %10752, %10393
  %10764 = fmul fast float %10752, %10394
  %10765 = fmul fast float %10753, %10395
  br label %10766

; <label>:10766                                   ; preds = %10742, %10399, %10368, %9600
  %10767 = phi float [ %9605, %9600 ], [ %10390, %10368 ], [ %10760, %10742 ], [ %10390, %10399 ]
  %10768 = phi float [ %9606, %9600 ], [ %10391, %10368 ], [ %10761, %10742 ], [ %10391, %10399 ]
  %10769 = phi float [ %9607, %9600 ], [ %10392, %10368 ], [ %10762, %10742 ], [ %10392, %10399 ]
  %10770 = phi float [ %9608, %9600 ], [ %10393, %10368 ], [ %10763, %10742 ], [ %10393, %10399 ]
  %10771 = phi float [ %9609, %9600 ], [ %10394, %10368 ], [ %10764, %10742 ], [ %10394, %10399 ]
  %10772 = phi float [ %9610, %9600 ], [ %10395, %10368 ], [ %10765, %10742 ], [ %10395, %10399 ]
  %10773 = phi float [ %9611, %9600 ], [ %10378, %10368 ], [ %10749, %10742 ], [ %10378, %10399 ]
  %10774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10775 = extractvalue %dx.types.CBufRet.f32 %10774, 2
  %10776 = extractvalue %dx.types.CBufRet.f32 %10774, 3
  %10777 = fmul fast float %10775, %110
  %10778 = fmul fast float %10776, %111
  %10779 = call float @dx.op.unary.f32(i32 7, float %10777)  ; Saturate(value)
  %10780 = call float @dx.op.unary.f32(i32 7, float %10778)  ; Saturate(value)
  %10781 = select i1 %9342, i32 2, i32 0
  %10782 = or i32 %10781, 1
  %10783 = uitofp i32 %10782 to float
  %10784 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10779, float %10780, float %10783, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10785 = extractvalue %dx.types.ResRet.f32 %10784, 0
  %10786 = extractvalue %dx.types.ResRet.f32 %10784, 1
  %10787 = extractvalue %dx.types.ResRet.f32 %10784, 2
  %10788 = extractvalue %dx.types.ResRet.f32 %10784, 3
  %10789 = add nuw nsw i32 %10781, 2
  %10790 = uitofp i32 %10789 to float
  %10791 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10779, float %10780, float %10790, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10792 = extractvalue %dx.types.ResRet.f32 %10791, 0
  %10793 = extractvalue %dx.types.ResRet.f32 %10791, 1
  %10794 = extractvalue %dx.types.ResRet.f32 %10791, 2
  %10795 = extractvalue %dx.types.ResRet.f32 %10791, 3
  %10796 = call float @dx.op.binary.f32(i32 35, float %10786, float %10787)  ; FMax(a,b)
  %10797 = call float @dx.op.binary.f32(i32 35, float %10785, float %10796)  ; FMax(a,b)
  %10798 = call float @dx.op.binary.f32(i32 35, float %10797, float %10788)  ; FMax(a,b)
  %10799 = call float @dx.op.binary.f32(i32 36, float %10793, float %10794)  ; FMin(a,b)
  %10800 = call float @dx.op.binary.f32(i32 36, float %10792, float %10799)  ; FMin(a,b)
  %10801 = call float @dx.op.binary.f32(i32 36, float %10800, float %10795)  ; FMin(a,b)
  %10802 = fmul fast float %10798, 2.550000e+02
  %10803 = fadd fast float %10802, 0x3F70101020000000
  %10804 = fptoui float %10803 to i32
  %10805 = fmul fast float %10801, 2.550000e+02
  %10806 = fadd fast float %10805, 0x3F70101020000000
  %10807 = fptoui float %10806 to i32
  %10808 = icmp ult i32 %10804, %10807
  br i1 %10808, label %10809, label %10978

; <label>:10809                                   ; preds = %10766
  %10810 = fcmp fast ogt float %97, 9.843750e-01
  %10811 = fadd fast float %9604, -4.000000e+00
  %10812 = select i1 %10810, float -4.000000e+00, float %10811
  %10813 = call float @dx.op.binary.f32(i32 35, float %10812, float 0.000000e+00)  ; FMax(a,b)
  %10814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10815 = extractvalue %dx.types.CBufRet.f32 %10814, 0
  %10816 = fadd fast float %10815, %10813
  %10817 = extractvalue %dx.types.CBufRet.f32 %10814, 2
  %10818 = fmul fast float %10816, %10817
  %10819 = call float @dx.op.unary.f32(i32 23, float %10818)  ; Log(value)
  %10820 = extractvalue %dx.types.CBufRet.f32 %10814, 3
  %10821 = fmul fast float %10820, %10819
  %10822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10823 = extractvalue %dx.types.CBufRet.f32 %10822, 2
  %10824 = fmul fast float %10821, %10823
  %10825 = call float @dx.op.unary.f32(i32 7, float %10824)  ; Saturate(value)
  %10826 = uitofp i32 %10804 to float
  %10827 = uitofp i32 %10807 to float
  %10828 = fadd fast float %10826, 5.000000e-01
  %10829 = fadd fast float %10827, 5.000000e-01
  %10830 = fmul fast float %10823, %10828
  %10831 = fmul fast float %10823, %10829
  %10832 = fadd fast float %10830, 0x3F0FFB4800000000
  %10833 = fadd fast float %10831, 0xBF0FFB4800000000
  %10834 = call float @dx.op.binary.f32(i32 35, float %10825, float %10832)  ; FMax(a,b)
  %10835 = call float @dx.op.binary.f32(i32 36, float %10834, float %10833)  ; FMin(a,b)
  %10836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10837 = extractvalue %dx.types.CBufRet.f32 %10836, 1
  %10838 = extractvalue %dx.types.CBufRet.f32 %10836, 2
  %10839 = extractvalue %dx.types.CBufRet.f32 %10836, 0
  %10840 = select i1 %9342, float %10839, float 0.000000e+00
  %10841 = fmul fast float %10837, %10835
  %10842 = fadd fast float %10840, %10841
  %10843 = fadd fast float %10840, %10838
  %10844 = fsub fast float %10837, %10838
  %10845 = fadd fast float %10844, %10840
  %10846 = call float @dx.op.binary.f32(i32 35, float %10842, float %10843)  ; FMax(a,b)
  %10847 = call float @dx.op.binary.f32(i32 36, float %10846, float %10845)  ; FMin(a,b)
  %10848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %10779, float %10780, float %10847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10849 = extractvalue %dx.types.ResRet.f32 %10848, 0
  %10850 = extractvalue %dx.types.ResRet.f32 %10848, 1
  %10851 = extractvalue %dx.types.ResRet.f32 %10848, 2
  %10852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10853 = extractvalue %dx.types.CBufRet.i32 %10852, 0
  %10854 = extractvalue %dx.types.CBufRet.i32 %10852, 1
  %10855 = uitofp i32 %10853 to float
  %10856 = uitofp i32 %10854 to float
  %10857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10858 = extractvalue %dx.types.CBufRet.f32 %10857, 0
  %10859 = extractvalue %dx.types.CBufRet.f32 %10857, 1
  %10860 = fmul fast float %10855, %10779
  %10861 = fmul fast float %10856, %10780
  %10862 = fadd fast float %10860, -5.000000e-01
  %10863 = fadd fast float %10861, -5.000000e-01
  %10864 = call float @dx.op.unary.f32(i32 22, float %10862)  ; Frc(value)
  %10865 = call float @dx.op.unary.f32(i32 22, float %10863)  ; Frc(value)
  %10866 = fmul fast float %10864, %10864
  %10867 = fmul fast float %10866, %10864
  %10868 = fsub fast float 3.000000e+00, %10864
  %10869 = fmul fast float %10866, %10868
  %10870 = fmul fast float %10864, 3.000000e+00
  %10871 = fmul fast float %10867, 3.000000e+00
  %10872 = fmul fast float %10866, 6.000000e+00
  %10873 = fsub fast float %10871, %10872
  %10874 = fadd fast float %10873, 4.000000e+00
  %10875 = fmul fast float %10874, 0x3FC5555560000000
  %10876 = fmul fast float %10867, -3.000000e+00
  %10877 = fadd fast float %10866, %10864
  %10878 = fmul fast float %10877, 3.000000e+00
  %10879 = fadd fast float %10876, 1.000000e+00
  %10880 = fadd fast float %10879, %10878
  %10881 = fmul fast float %10867, 0x3FC5555560000000
  %10882 = fmul fast float %10865, %10865
  %10883 = fmul fast float %10882, %10865
  %10884 = fsub fast float 3.000000e+00, %10865
  %10885 = fmul fast float %10882, %10884
  %10886 = fmul fast float %10865, 3.000000e+00
  %10887 = fmul fast float %10883, 3.000000e+00
  %10888 = fmul fast float %10882, 6.000000e+00
  %10889 = fsub fast float %10887, %10888
  %10890 = fadd fast float %10889, 4.000000e+00
  %10891 = fmul fast float %10890, 0x3FC5555560000000
  %10892 = fmul fast float %10883, -3.000000e+00
  %10893 = fadd fast float %10882, %10865
  %10894 = fmul fast float %10893, 3.000000e+00
  %10895 = fadd fast float %10892, 1.000000e+00
  %10896 = fadd fast float %10895, %10894
  %10897 = fmul fast float %10883, 0x3FC5555560000000
  %10898 = fadd fast float %10864, 1.000000e+00
  %10899 = fsub fast float 1.000000e+00, %10870
  %10900 = fadd fast float %10899, %10869
  %10901 = fadd fast float %10900, %10874
  %10902 = fmul fast float %10901, 0x3FC5555560000000
  %10903 = fdiv fast float %10875, %10902
  %10904 = fsub fast float %10898, %10903
  %10905 = fsub fast float 1.000000e+00, %10864
  %10906 = fadd fast float %10880, %10867
  %10907 = fmul fast float %10906, 0x3FC5555560000000
  %10908 = fdiv fast float %10881, %10907
  %10909 = fadd fast float %10905, %10908
  %10910 = fadd fast float %10865, 1.000000e+00
  %10911 = fsub fast float 1.000000e+00, %10886
  %10912 = fadd fast float %10911, %10885
  %10913 = fadd fast float %10912, %10890
  %10914 = fmul fast float %10913, 0x3FC5555560000000
  %10915 = fdiv fast float %10891, %10914
  %10916 = fsub fast float %10910, %10915
  %10917 = fsub fast float 1.000000e+00, %10865
  %10918 = fadd fast float %10896, %10883
  %10919 = fmul fast float %10918, 0x3FC5555560000000
  %10920 = fdiv fast float %10897, %10919
  %10921 = fadd fast float %10920, %10917
  %10922 = fmul fast float %10904, %10858
  %10923 = fsub fast float %10779, %10922
  %10924 = fmul fast float %10909, %10858
  %10925 = fadd fast float %10924, %10779
  %10926 = fmul fast float %10921, %10859
  %10927 = fadd fast float %10926, %10780
  %10928 = fmul fast float %10916, %10859
  %10929 = fsub fast float %10780, %10928
  %10930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10923, float %10929, float %10847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10931 = extractvalue %dx.types.ResRet.f32 %10930, 0
  %10932 = extractvalue %dx.types.ResRet.f32 %10930, 1
  %10933 = extractvalue %dx.types.ResRet.f32 %10930, 2
  %10934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10925, float %10929, float %10847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10935 = extractvalue %dx.types.ResRet.f32 %10934, 0
  %10936 = extractvalue %dx.types.ResRet.f32 %10934, 1
  %10937 = extractvalue %dx.types.ResRet.f32 %10934, 2
  %10938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10923, float %10927, float %10847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10939 = extractvalue %dx.types.ResRet.f32 %10938, 0
  %10940 = extractvalue %dx.types.ResRet.f32 %10938, 1
  %10941 = extractvalue %dx.types.ResRet.f32 %10938, 2
  %10942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10925, float %10927, float %10847, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10943 = extractvalue %dx.types.ResRet.f32 %10942, 0
  %10944 = extractvalue %dx.types.ResRet.f32 %10942, 1
  %10945 = extractvalue %dx.types.ResRet.f32 %10942, 2
  %10946 = fsub fast float %10939, %10931
  %10947 = fsub fast float %10940, %10932
  %10948 = fsub fast float %10941, %10933
  %10949 = fmul fast float %10946, %10919
  %10950 = fmul fast float %10947, %10919
  %10951 = fmul fast float %10948, %10919
  %10952 = fadd fast float %10949, %10931
  %10953 = fadd fast float %10950, %10932
  %10954 = fadd fast float %10951, %10933
  %10955 = fsub fast float %10943, %10935
  %10956 = fsub fast float %10944, %10936
  %10957 = fsub fast float %10945, %10937
  %10958 = fmul fast float %10955, %10919
  %10959 = fmul fast float %10956, %10919
  %10960 = fmul fast float %10957, %10919
  %10961 = fsub fast float %10935, %10952
  %10962 = fadd fast float %10961, %10958
  %10963 = fsub fast float %10936, %10953
  %10964 = fadd fast float %10963, %10959
  %10965 = fsub fast float %10937, %10954
  %10966 = fadd fast float %10965, %10960
  %10967 = fmul fast float %10962, %10907
  %10968 = fmul fast float %10964, %10907
  %10969 = fmul fast float %10966, %10907
  %10970 = fadd fast float %10967, %10952
  %10971 = fadd fast float %10968, %10953
  %10972 = fadd fast float %10969, %10954
  %10973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10974 = extractvalue %dx.types.CBufRet.f32 %10973, 1
  %10975 = fmul fast float %10970, %10974
  %10976 = fmul fast float %10971, %10974
  %10977 = fmul fast float %10972, %10974
  br label %10978

; <label>:10978                                   ; preds = %10809, %10766
  %10979 = phi float [ %10849, %10809 ], [ 1.000000e+00, %10766 ]
  %10980 = phi float [ %10850, %10809 ], [ 1.000000e+00, %10766 ]
  %10981 = phi float [ %10851, %10809 ], [ 1.000000e+00, %10766 ]
  %10982 = phi float [ %10975, %10809 ], [ 0.000000e+00, %10766 ]
  %10983 = phi float [ %10976, %10809 ], [ 0.000000e+00, %10766 ]
  %10984 = phi float [ %10977, %10809 ], [ 0.000000e+00, %10766 ]
  %10985 = fmul fast float %10982, %9328
  %10986 = fmul fast float %10983, %9329
  %10987 = fmul fast float %10984, %9330
  %10988 = fmul fast float %10979, %10773
  %10989 = call float @dx.op.dot3.f32(i32 55, float %10979, float %10980, float %10981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10990 = call float @dx.op.dot3.f32(i32 55, float %10985, float %10986, float %10987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10991 = select i1 %259, float %10989, float %10979
  %10992 = select i1 %259, float %10989, float %10980
  %10993 = select i1 %259, float 1.000000e+00, float %10981
  %10994 = select i1 %259, float %10990, float %10985
  %10995 = select i1 %259, float 0.000000e+00, float %10986
  %10996 = select i1 %259, float 0.000000e+00, float %10987
  %10997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10998 = extractvalue %dx.types.CBufRet.i32 %10997, 3
  %10999 = and i32 %10998, 3
  %11000 = icmp ne i32 %10999, 0
  %11001 = and i32 %10998, 4
  %11002 = icmp ne i32 %11001, 0
  %11003 = and i1 %11000, %11002
  %11004 = and i1 %259, %11003
  br i1 %11004, label %11005, label %11011

; <label>:11005                                   ; preds = %10978
  %11006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11007 = extractvalue %dx.types.CBufRet.f32 %11006, 1
  %11008 = fadd fast float %10988, -1.000000e+00
  %11009 = fmul fast float %11007, %11008
  %11010 = fadd fast float %11009, 1.000000e+00
  br label %11011

; <label>:11011                                   ; preds = %11005, %10978
  %11012 = phi float [ %11010, %11005 ], [ %10988, %10978 ]
  %11013 = fadd fast float %10770, %10767
  %11014 = fmul fast float %10991, %11013
  %11015 = fadd fast float %11014, %10994
  %11016 = fadd fast float %10771, %10768
  %11017 = fmul fast float %10992, %11016
  %11018 = fadd fast float %11017, %10995
  %11019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11020 = extractvalue %dx.types.CBufRet.f32 %11019, 0
  br i1 %259, label %11021, label %11036

; <label>:11021                                   ; preds = %11011
  %11022 = fadd fast float %11015, %11018
  %11023 = fmul fast float %11020, %11022
  %11024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11025 = extractvalue %dx.types.CBufRet.f32 %11024, 3
  %11026 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %11027 = fsub fast float %9317, %9311
  %11028 = fadd fast float %11027, %9318
  %11029 = fsub fast float %11028, %11026
  %11030 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %11031 = fmul fast float %11029, %11030
  %11032 = call float @dx.op.unary.f32(i32 7, float %11031)  ; Saturate(value)
  %11033 = fsub fast float %11032, %11025
  %11034 = fmul fast float %11033, %11012
  %11035 = fadd fast float %11034, %11025
  br label %11062

; <label>:11036                                   ; preds = %11011
  %11037 = fadd fast float %10772, %10769
  %11038 = fmul fast float %10993, %11037
  %11039 = fadd fast float %11038, %10996
  %11040 = fmul fast float %11020, %11015
  %11041 = fmul fast float %11020, %11018
  %11042 = fmul fast float %11020, %11039
  %11043 = call float @dx.op.binary.f32(i32 35, float %11041, float %11042)  ; FMax(a,b)
  %11044 = call float @dx.op.binary.f32(i32 35, float %11040, float %11043)  ; FMax(a,b)
  %11045 = call float @dx.op.binary.f32(i32 35, float %9329, float %9330)  ; FMax(a,b)
  %11046 = call float @dx.op.binary.f32(i32 35, float %9328, float %11045)  ; FMax(a,b)
  %11047 = call float @dx.op.binary.f32(i32 35, float %11044, float %11046)  ; FMax(a,b)
  %11048 = fcmp fast ugt float %11047, 0x3F10000000000000
  br i1 %11048, label %11050, label %11049

; <label>:11049                                   ; preds = %11036
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11050

; <label>:11050                                   ; preds = %11049, %11036
  %11051 = add i32 %61, 356
  %11052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %11051, i32 undef)  ; BufferLoad(srv,index,wot)
  %11053 = extractvalue %dx.types.ResRet.i32 %11052, 0
  %11054 = and i32 %11053, 32
  %11055 = icmp eq i32 %11054, 0
  br i1 %11055, label %11062, label %11056

; <label>:11056                                   ; preds = %11050
  %11057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11058 = extractvalue %dx.types.CBufRet.f32 %11057, 0
  %11059 = fmul fast float %11058, 0x3FE99999A0000000
  %11060 = fadd fast float %11058, %11040
  %11061 = fadd fast float %11059, %11042
  br label %11062

; <label>:11062                                   ; preds = %11056, %11050, %11021
  %11063 = phi float [ 1.000000e+00, %11021 ], [ %9329, %11056 ], [ %9329, %11050 ]
  %11064 = phi float [ 1.000000e+00, %11021 ], [ %9330, %11056 ], [ %9330, %11050 ]
  %11065 = phi float [ %11023, %11021 ], [ %11060, %11056 ], [ %11040, %11050 ]
  %11066 = phi float [ %11035, %11021 ], [ %11041, %11056 ], [ %11041, %11050 ]
  %11067 = phi float [ 1.000000e+00, %11021 ], [ %11061, %11056 ], [ %11042, %11050 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11068 = call float @dx.op.binary.f32(i32 36, float %11065, float 3.225500e+04)  ; FMin(a,b)
  %11069 = call float @dx.op.binary.f32(i32 36, float %11066, float 3.225500e+04)  ; FMin(a,b)
  %11070 = call float @dx.op.binary.f32(i32 36, float %11067, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11068)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11069)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11070)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11071 = call float @dx.op.binary.f32(i32 36, float %9328, float 3.225500e+04)  ; FMin(a,b)
  %11072 = call float @dx.op.binary.f32(i32 36, float %11063, float 3.225500e+04)  ; FMin(a,b)
  %11073 = call float @dx.op.binary.f32(i32 36, float %11064, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %11071)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %11072)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %11073)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!75}
!dx.entryPoints = !{!76}

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
!67 = !{!68, !69, !70, !71, !72, !73, !74}
!68 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!69 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!70 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!71 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!72 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!73 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!74 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!75 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !100}
!77 = !{!78, !96, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95}
!79 = !{i32 0, !"SV_Position", i8 9, i8 3, !80, i8 4, i32 1, i8 4, i32 0, i8 0, !81}
!80 = !{i32 0}
!81 = !{i32 3, i32 15}
!82 = !{i32 1, !"COLOR", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 1, i8 0, !81}
!83 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 2, i8 0, !84}
!84 = !{i32 3, i32 3}
!85 = !{i32 3, !"NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 3, i32 3, i8 0, !86}
!86 = !{i32 3, i32 7}
!87 = !{i32 4, !"TANGENT", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 4, i8 0, !81}
!88 = !{i32 5, !"SH_RED", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 5, i8 0, !81}
!89 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 6, i8 0, !81}
!90 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 7, i8 0, !81}
!91 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !80, i8 2, i32 1, i8 2, i32 8, i8 0, !84}
!92 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !80, i8 2, i32 1, i8 4, i32 9, i8 0, !81}
!93 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 10, i8 0, !94}
!94 = !{i32 3, i32 13}
!95 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97, !98}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
!98 = !{i32 1, !"SV_Target", i8 9, i8 16, !99, i8 0, i32 1, i8 4, i32 1, i8 0, !81}
!99 = !{i32 1}
!100 = !{i32 0, i64 16}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"int", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !118, !120}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!117 = distinct !{!117, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!120 = distinct !{!120, !121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!121 = distinct !{!121, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !111, i64 0}
!125 = distinct !{!125, !103}
!126 = distinct !{!126, !103}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = !{!138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!138 = distinct !{!138, !139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!139 = distinct !{!139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!140 = distinct !{!140, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!141 = distinct !{!141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!142 = distinct !{!142, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!152 = distinct !{!152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!161 = !{!157}
!162 = !{!158, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!171 = !{!167}
!172 = !{!168, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}

