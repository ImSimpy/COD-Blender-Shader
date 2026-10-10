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
; shader hash: 542edb9ce75c15eefb422538653ef5e1
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
  %453 = add i32 %61, 556
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
  %729 = add i32 %61, 488
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
  %781 = add i32 %61, 472
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
  %805 = add i32 %61, 424
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
  %828 = add i32 %61, 508
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
  %1026 = add i32 %61, 440
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
  %1110 = add i32 %61, 456
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
  %1168 = add i32 %61, 524
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
  %1209 = add i32 %61, 540
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
  %1273 = phi float [ 0.000000e+00, %495 ], [ %1015, %1252 ]
  %1274 = phi float [ 0.000000e+00, %495 ], [ %1016, %1252 ]
  %1275 = phi float [ 0.000000e+00, %495 ], [ %1017, %1252 ]
  %1276 = phi float [ 0.000000e+00, %495 ], [ %1143, %1252 ]
  %1277 = phi float [ 0.000000e+00, %495 ], [ %1144, %1252 ]
  %1278 = phi float [ 0.000000e+00, %495 ], [ %1145, %1252 ]
  %1279 = phi float [ 0.000000e+00, %495 ], [ %1253, %1252 ]
  %1280 = phi float [ 0.000000e+00, %495 ], [ %1254, %1252 ]
  %1281 = phi float [ 0.000000e+00, %495 ], [ %1255, %1252 ]
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
  %1520 = add i32 %61, 492
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
  %1572 = add i32 %61, 476
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
  %1598 = add i32 %61, 428
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
  %1621 = add i32 %61, 512
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
  %1819 = add i32 %61, 444
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
  %1903 = add i32 %61, 460
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
  %1961 = add i32 %61, 528
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
  %2002 = add i32 %61, 544
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
  %2092 = fmul fast float %2089, %1273
  %2093 = fmul fast float %2090, %1274
  %2094 = fmul fast float %2091, %1275
  %2095 = fmul fast float %2089, %1276
  %2096 = fmul fast float %2090, %1277
  %2097 = fmul fast float %2091, %1278
  br label %2098

; <label>:2098                                    ; preds = %2063, %2045
  %2099 = phi float [ %2092, %2063 ], [ %1273, %2045 ]
  %2100 = phi float [ %2093, %2063 ], [ %1274, %2045 ]
  %2101 = phi float [ %2094, %2063 ], [ %1275, %2045 ]
  %2102 = phi float [ %2095, %2063 ], [ %1276, %2045 ]
  %2103 = phi float [ %2096, %2063 ], [ %1277, %2045 ]
  %2104 = phi float [ %2097, %2063 ], [ %1278, %2045 ]
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
  %2118 = fsub fast float %1808, %2099
  %2119 = fsub fast float %1809, %2100
  %2120 = fsub fast float %1810, %2101
  %2121 = fmul fast float %2112, %2118
  %2122 = fmul fast float %2112, %2119
  %2123 = fmul fast float %2112, %2120
  %2124 = fadd fast float %2121, %2099
  %2125 = fadd fast float %2122, %2100
  %2126 = fadd fast float %2123, %2101
  %2127 = fsub fast float %1794, %1285
  %2128 = fmul fast float %2112, %2127
  %2129 = fadd fast float %2128, %1285
  %2130 = fsub fast float %1936, %2102
  %2131 = fsub fast float %1937, %2103
  %2132 = fsub fast float %1938, %2104
  %2133 = fmul fast float %2117, %2130
  %2134 = fmul fast float %2117, %2131
  %2135 = fmul fast float %2117, %2132
  %2136 = fadd fast float %2133, %2102
  %2137 = fadd fast float %2134, %2103
  %2138 = fadd fast float %2135, %2104
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
  %2154 = fmul fast float %2151, %2099
  %2155 = fmul fast float %2152, %2100
  %2156 = fmul fast float %2153, %2101
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
  %2174 = fmul fast float %2173, %2099
  %2175 = fadd fast float %2174, %2172
  %2176 = fmul fast float %2175, %2099
  %2177 = fmul fast float %2170, 2.000000e+00
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = fmul fast float %2178, %2100
  %2180 = fadd fast float %2179, %2177
  %2181 = fmul fast float %2180, %2100
  %2182 = fmul fast float %2171, 2.000000e+00
  %2183 = fsub fast float 1.000000e+00, %2182
  %2184 = fmul fast float %2183, %2101
  %2185 = fadd fast float %2184, %2182
  %2186 = fmul fast float %2185, %2101
  br label %2187

; <label>:2187                                    ; preds = %2159, %2157, %2144, %2114, %2098
  %2188 = phi float [ %2099, %2098 ], [ %2176, %2159 ], [ %2099, %2157 ], [ %2154, %2144 ], [ %2124, %2114 ]
  %2189 = phi float [ %2100, %2098 ], [ %2181, %2159 ], [ %2100, %2157 ], [ %2155, %2144 ], [ %2125, %2114 ]
  %2190 = phi float [ %2101, %2098 ], [ %2186, %2159 ], [ %2101, %2157 ], [ %2156, %2144 ], [ %2126, %2114 ]
  %2191 = phi float [ %2102, %2098 ], [ %2102, %2159 ], [ %2102, %2157 ], [ %2102, %2144 ], [ %2136, %2114 ]
  %2192 = phi float [ %2103, %2098 ], [ %2103, %2159 ], [ %2103, %2157 ], [ %2103, %2144 ], [ %2137, %2114 ]
  %2193 = phi float [ %2104, %2098 ], [ %2104, %2159 ], [ %2104, %2157 ], [ %2104, %2144 ], [ %2138, %2114 ]
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
  %2243 = fsub fast float %2046, %1279
  %2244 = fsub fast float %2047, %1280
  %2245 = fsub fast float %2048, %1281
  %2246 = fmul fast float %2216, %2243
  %2247 = fmul fast float %2216, %2244
  %2248 = fmul fast float %2216, %2245
  %2249 = fadd fast float %2246, %1279
  %2250 = fadd fast float %2247, %1280
  %2251 = fadd fast float %2248, %1281
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
  %2297 = fadd fast float %2294, %1279
  %2298 = fadd fast float %2295, %1280
  %2299 = fadd fast float %2296, %1281
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
  %2325 = fadd fast float %2322, %1279
  %2326 = fadd fast float %2323, %1280
  %2327 = fadd fast float %2324, %1281
  br label %2328

; <label>:2328                                    ; preds = %2302, %2300, %2254, %2218, %2187, %1587, %1291, %1270
  %2329 = phi float [ %1271, %2187 ], [ %1271, %1587 ], [ %1271, %1270 ], [ %2305, %2302 ], [ %1271, %2300 ], [ %2257, %2254 ], [ %2223, %2218 ], [ %1271, %1291 ]
  %2330 = phi float [ %1272, %2187 ], [ %1272, %1587 ], [ %1272, %1270 ], [ %2306, %2302 ], [ %1272, %2300 ], [ %2258, %2254 ], [ %2224, %2218 ], [ %1272, %1291 ]
  %2331 = phi float [ %2188, %2187 ], [ %1273, %1587 ], [ %1273, %1270 ], [ %2188, %2302 ], [ %2188, %2300 ], [ %2188, %2254 ], [ %2188, %2218 ], [ %1273, %1291 ]
  %2332 = phi float [ %2189, %2187 ], [ %1274, %1587 ], [ %1274, %1270 ], [ %2189, %2302 ], [ %2189, %2300 ], [ %2189, %2254 ], [ %2189, %2218 ], [ %1274, %1291 ]
  %2333 = phi float [ %2190, %2187 ], [ %1275, %1587 ], [ %1275, %1270 ], [ %2190, %2302 ], [ %2190, %2300 ], [ %2190, %2254 ], [ %2190, %2218 ], [ %1275, %1291 ]
  %2334 = phi float [ %2191, %2187 ], [ %1276, %1587 ], [ %1276, %1270 ], [ %2191, %2302 ], [ %2191, %2300 ], [ %2191, %2254 ], [ %2191, %2218 ], [ %1276, %1291 ]
  %2335 = phi float [ %2192, %2187 ], [ %1277, %1587 ], [ %1277, %1270 ], [ %2192, %2302 ], [ %2192, %2300 ], [ %2192, %2254 ], [ %2192, %2218 ], [ %1277, %1291 ]
  %2336 = phi float [ %2193, %2187 ], [ %1278, %1587 ], [ %1278, %1270 ], [ %2193, %2302 ], [ %2193, %2300 ], [ %2193, %2254 ], [ %2193, %2218 ], [ %1278, %1291 ]
  %2337 = phi float [ %1279, %2187 ], [ %1279, %1587 ], [ %1279, %1270 ], [ %2325, %2302 ], [ %1279, %2300 ], [ %2297, %2254 ], [ %2249, %2218 ], [ %1279, %1291 ]
  %2338 = phi float [ %1280, %2187 ], [ %1280, %1587 ], [ %1280, %1270 ], [ %2326, %2302 ], [ %1280, %2300 ], [ %2298, %2254 ], [ %2250, %2218 ], [ %1280, %1291 ]
  %2339 = phi float [ %1281, %2187 ], [ %1281, %1587 ], [ %1281, %1270 ], [ %2327, %2302 ], [ %1281, %2300 ], [ %2299, %2254 ], [ %2251, %2218 ], [ %1281, %1291 ]
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
  %2577 = add i32 %61, 496
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
  %2629 = add i32 %61, 480
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
  %2655 = add i32 %61, 432
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
  %2678 = add i32 %61, 516
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
  %2876 = add i32 %61, 448
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
  %2960 = add i32 %61, 464
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
  %3018 = add i32 %61, 532
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
  %3059 = add i32 %61, 548
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
  %3149 = fmul fast float %3146, %2331
  %3150 = fmul fast float %3147, %2332
  %3151 = fmul fast float %3148, %2333
  %3152 = fmul fast float %3146, %2334
  %3153 = fmul fast float %3147, %2335
  %3154 = fmul fast float %3148, %2336
  br label %3155

; <label>:3155                                    ; preds = %3120, %3102
  %3156 = phi float [ %3149, %3120 ], [ %2331, %3102 ]
  %3157 = phi float [ %3150, %3120 ], [ %2332, %3102 ]
  %3158 = phi float [ %3151, %3120 ], [ %2333, %3102 ]
  %3159 = phi float [ %3152, %3120 ], [ %2334, %3102 ]
  %3160 = phi float [ %3153, %3120 ], [ %2335, %3102 ]
  %3161 = phi float [ %3154, %3120 ], [ %2336, %3102 ]
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
  %3175 = fsub fast float %2865, %3156
  %3176 = fsub fast float %2866, %3157
  %3177 = fsub fast float %2867, %3158
  %3178 = fmul fast float %3169, %3175
  %3179 = fmul fast float %3169, %3176
  %3180 = fmul fast float %3169, %3177
  %3181 = fadd fast float %3178, %3156
  %3182 = fadd fast float %3179, %3157
  %3183 = fadd fast float %3180, %3158
  %3184 = fsub fast float %2851, %2343
  %3185 = fmul fast float %3169, %3184
  %3186 = fadd fast float %3185, %2343
  %3187 = fsub fast float %2993, %3159
  %3188 = fsub fast float %2994, %3160
  %3189 = fsub fast float %2995, %3161
  %3190 = fmul fast float %3174, %3187
  %3191 = fmul fast float %3174, %3188
  %3192 = fmul fast float %3174, %3189
  %3193 = fadd fast float %3190, %3159
  %3194 = fadd fast float %3191, %3160
  %3195 = fadd fast float %3192, %3161
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
  %3211 = fmul fast float %3208, %3156
  %3212 = fmul fast float %3209, %3157
  %3213 = fmul fast float %3210, %3158
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
  %3231 = fmul fast float %3230, %3156
  %3232 = fadd fast float %3231, %3229
  %3233 = fmul fast float %3232, %3156
  %3234 = fmul fast float %3227, 2.000000e+00
  %3235 = fsub fast float 1.000000e+00, %3234
  %3236 = fmul fast float %3235, %3157
  %3237 = fadd fast float %3236, %3234
  %3238 = fmul fast float %3237, %3157
  %3239 = fmul fast float %3228, 2.000000e+00
  %3240 = fsub fast float 1.000000e+00, %3239
  %3241 = fmul fast float %3240, %3158
  %3242 = fadd fast float %3241, %3239
  %3243 = fmul fast float %3242, %3158
  br label %3244

; <label>:3244                                    ; preds = %3216, %3214, %3201, %3171, %3155
  %3245 = phi float [ %3156, %3155 ], [ %3233, %3216 ], [ %3156, %3214 ], [ %3211, %3201 ], [ %3181, %3171 ]
  %3246 = phi float [ %3157, %3155 ], [ %3238, %3216 ], [ %3157, %3214 ], [ %3212, %3201 ], [ %3182, %3171 ]
  %3247 = phi float [ %3158, %3155 ], [ %3243, %3216 ], [ %3158, %3214 ], [ %3213, %3201 ], [ %3183, %3171 ]
  %3248 = phi float [ %3159, %3155 ], [ %3159, %3216 ], [ %3159, %3214 ], [ %3159, %3201 ], [ %3193, %3171 ]
  %3249 = phi float [ %3160, %3155 ], [ %3160, %3216 ], [ %3160, %3214 ], [ %3160, %3201 ], [ %3194, %3171 ]
  %3250 = phi float [ %3161, %3155 ], [ %3161, %3216 ], [ %3161, %3214 ], [ %3161, %3201 ], [ %3195, %3171 ]
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
  %3300 = fsub fast float %3103, %2337
  %3301 = fsub fast float %3104, %2338
  %3302 = fsub fast float %3105, %2339
  %3303 = fmul fast float %3273, %3300
  %3304 = fmul fast float %3273, %3301
  %3305 = fmul fast float %3273, %3302
  %3306 = fadd fast float %3303, %2337
  %3307 = fadd fast float %3304, %2338
  %3308 = fadd fast float %3305, %2339
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
  %3354 = fadd fast float %3351, %2337
  %3355 = fadd fast float %3352, %2338
  %3356 = fadd fast float %3353, %2339
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
  %3382 = fadd fast float %3379, %2337
  %3383 = fadd fast float %3380, %2338
  %3384 = fadd fast float %3381, %2339
  br label %3385

; <label>:3385                                    ; preds = %3359, %3357, %3311, %3275, %3244, %2644, %2348, %2328
  %3386 = phi float [ %2329, %3244 ], [ %2329, %2644 ], [ %2329, %2328 ], [ %3362, %3359 ], [ %2329, %3357 ], [ %3314, %3311 ], [ %3280, %3275 ], [ %2329, %2348 ]
  %3387 = phi float [ %2330, %3244 ], [ %2330, %2644 ], [ %2330, %2328 ], [ %3363, %3359 ], [ %2330, %3357 ], [ %3315, %3311 ], [ %3281, %3275 ], [ %2330, %2348 ]
  %3388 = phi float [ %3245, %3244 ], [ %2331, %2644 ], [ %2331, %2328 ], [ %3245, %3359 ], [ %3245, %3357 ], [ %3245, %3311 ], [ %3245, %3275 ], [ %2331, %2348 ]
  %3389 = phi float [ %3246, %3244 ], [ %2332, %2644 ], [ %2332, %2328 ], [ %3246, %3359 ], [ %3246, %3357 ], [ %3246, %3311 ], [ %3246, %3275 ], [ %2332, %2348 ]
  %3390 = phi float [ %3247, %3244 ], [ %2333, %2644 ], [ %2333, %2328 ], [ %3247, %3359 ], [ %3247, %3357 ], [ %3247, %3311 ], [ %3247, %3275 ], [ %2333, %2348 ]
  %3391 = phi float [ %3248, %3244 ], [ %2334, %2644 ], [ %2334, %2328 ], [ %3248, %3359 ], [ %3248, %3357 ], [ %3248, %3311 ], [ %3248, %3275 ], [ %2334, %2348 ]
  %3392 = phi float [ %3249, %3244 ], [ %2335, %2644 ], [ %2335, %2328 ], [ %3249, %3359 ], [ %3249, %3357 ], [ %3249, %3311 ], [ %3249, %3275 ], [ %2335, %2348 ]
  %3393 = phi float [ %3250, %3244 ], [ %2336, %2644 ], [ %2336, %2328 ], [ %3250, %3359 ], [ %3250, %3357 ], [ %3250, %3311 ], [ %3250, %3275 ], [ %2336, %2348 ]
  %3394 = phi float [ %2337, %3244 ], [ %2337, %2644 ], [ %2337, %2328 ], [ %3382, %3359 ], [ %2337, %3357 ], [ %3354, %3311 ], [ %3306, %3275 ], [ %2337, %2348 ]
  %3395 = phi float [ %2338, %3244 ], [ %2338, %2644 ], [ %2338, %2328 ], [ %3383, %3359 ], [ %2338, %3357 ], [ %3355, %3311 ], [ %3307, %3275 ], [ %2338, %2348 ]
  %3396 = phi float [ %2339, %3244 ], [ %2339, %2644 ], [ %2339, %2328 ], [ %3384, %3359 ], [ %2339, %3357 ], [ %3356, %3311 ], [ %3308, %3275 ], [ %2339, %2348 ]
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
  %3634 = add i32 %61, 500
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
  %3686 = add i32 %61, 484
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
  %3712 = add i32 %61, 436
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
  %3735 = add i32 %61, 520
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
  %3933 = add i32 %61, 452
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
  %4017 = add i32 %61, 468
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
  %4075 = add i32 %61, 536
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
  %4116 = add i32 %61, 552
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
  %4206 = fmul fast float %4203, %3388
  %4207 = fmul fast float %4204, %3389
  %4208 = fmul fast float %4205, %3390
  %4209 = fmul fast float %4203, %3391
  %4210 = fmul fast float %4204, %3392
  %4211 = fmul fast float %4205, %3393
  br label %4212

; <label>:4212                                    ; preds = %4177, %4159
  %4213 = phi float [ %4206, %4177 ], [ %3388, %4159 ]
  %4214 = phi float [ %4207, %4177 ], [ %3389, %4159 ]
  %4215 = phi float [ %4208, %4177 ], [ %3390, %4159 ]
  %4216 = phi float [ %4209, %4177 ], [ %3391, %4159 ]
  %4217 = phi float [ %4210, %4177 ], [ %3392, %4159 ]
  %4218 = phi float [ %4211, %4177 ], [ %3393, %4159 ]
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
  %4232 = fsub fast float %3922, %4213
  %4233 = fsub fast float %3923, %4214
  %4234 = fsub fast float %3924, %4215
  %4235 = fmul fast float %4226, %4232
  %4236 = fmul fast float %4226, %4233
  %4237 = fmul fast float %4226, %4234
  %4238 = fadd fast float %4235, %4213
  %4239 = fadd fast float %4236, %4214
  %4240 = fadd fast float %4237, %4215
  %4241 = fsub fast float %3908, %3400
  %4242 = fmul fast float %4226, %4241
  %4243 = fadd fast float %4242, %3400
  %4244 = fsub fast float %4050, %4216
  %4245 = fsub fast float %4051, %4217
  %4246 = fsub fast float %4052, %4218
  %4247 = fmul fast float %4231, %4244
  %4248 = fmul fast float %4231, %4245
  %4249 = fmul fast float %4231, %4246
  %4250 = fadd fast float %4247, %4216
  %4251 = fadd fast float %4248, %4217
  %4252 = fadd fast float %4249, %4218
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
  %4268 = fmul fast float %4265, %4213
  %4269 = fmul fast float %4266, %4214
  %4270 = fmul fast float %4267, %4215
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
  %4288 = fmul fast float %4287, %4213
  %4289 = fadd fast float %4288, %4286
  %4290 = fmul fast float %4289, %4213
  %4291 = fmul fast float %4284, 2.000000e+00
  %4292 = fsub fast float 1.000000e+00, %4291
  %4293 = fmul fast float %4292, %4214
  %4294 = fadd fast float %4293, %4291
  %4295 = fmul fast float %4294, %4214
  %4296 = fmul fast float %4285, 2.000000e+00
  %4297 = fsub fast float 1.000000e+00, %4296
  %4298 = fmul fast float %4297, %4215
  %4299 = fadd fast float %4298, %4296
  %4300 = fmul fast float %4299, %4215
  br label %4301

; <label>:4301                                    ; preds = %4273, %4271, %4258, %4228, %4212
  %4302 = phi float [ %4213, %4212 ], [ %4290, %4273 ], [ %4213, %4271 ], [ %4268, %4258 ], [ %4238, %4228 ]
  %4303 = phi float [ %4214, %4212 ], [ %4295, %4273 ], [ %4214, %4271 ], [ %4269, %4258 ], [ %4239, %4228 ]
  %4304 = phi float [ %4215, %4212 ], [ %4300, %4273 ], [ %4215, %4271 ], [ %4270, %4258 ], [ %4240, %4228 ]
  %4305 = phi float [ %4216, %4212 ], [ %4216, %4273 ], [ %4216, %4271 ], [ %4216, %4258 ], [ %4250, %4228 ]
  %4306 = phi float [ %4217, %4212 ], [ %4217, %4273 ], [ %4217, %4271 ], [ %4217, %4258 ], [ %4251, %4228 ]
  %4307 = phi float [ %4218, %4212 ], [ %4218, %4273 ], [ %4218, %4271 ], [ %4218, %4258 ], [ %4252, %4228 ]
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
  %4357 = fsub fast float %4160, %3394
  %4358 = fsub fast float %4161, %3395
  %4359 = fsub fast float %4162, %3396
  %4360 = fmul fast float %4330, %4357
  %4361 = fmul fast float %4330, %4358
  %4362 = fmul fast float %4330, %4359
  %4363 = fadd fast float %4360, %3394
  %4364 = fadd fast float %4361, %3395
  %4365 = fadd fast float %4362, %3396
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
  %4411 = fadd fast float %4408, %3394
  %4412 = fadd fast float %4409, %3395
  %4413 = fadd fast float %4410, %3396
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
  %4439 = fadd fast float %4436, %3394
  %4440 = fadd fast float %4437, %3395
  %4441 = fadd fast float %4438, %3396
  br label %4442

; <label>:4442                                    ; preds = %4416, %4414, %4368, %4332, %4301, %3701, %3405, %3385
  %4443 = phi float [ %3386, %4301 ], [ %3386, %3701 ], [ %3386, %3385 ], [ %3386, %3405 ], [ %4337, %4332 ], [ %4371, %4368 ], [ %3386, %4414 ], [ %4419, %4416 ]
  %4444 = phi float [ %3387, %4301 ], [ %3387, %3701 ], [ %3387, %3385 ], [ %3387, %3405 ], [ %4338, %4332 ], [ %4372, %4368 ], [ %3387, %4414 ], [ %4420, %4416 ]
  %4445 = phi float [ %4302, %4301 ], [ %3388, %3701 ], [ %3388, %3385 ], [ %3388, %3405 ], [ %4302, %4332 ], [ %4302, %4368 ], [ %4302, %4414 ], [ %4302, %4416 ]
  %4446 = phi float [ %4303, %4301 ], [ %3389, %3701 ], [ %3389, %3385 ], [ %3389, %3405 ], [ %4303, %4332 ], [ %4303, %4368 ], [ %4303, %4414 ], [ %4303, %4416 ]
  %4447 = phi float [ %4304, %4301 ], [ %3390, %3701 ], [ %3390, %3385 ], [ %3390, %3405 ], [ %4304, %4332 ], [ %4304, %4368 ], [ %4304, %4414 ], [ %4304, %4416 ]
  %4448 = phi float [ %4305, %4301 ], [ %3391, %3701 ], [ %3391, %3385 ], [ %3391, %3405 ], [ %4305, %4332 ], [ %4305, %4368 ], [ %4305, %4414 ], [ %4305, %4416 ]
  %4449 = phi float [ %4306, %4301 ], [ %3392, %3701 ], [ %3392, %3385 ], [ %3392, %3405 ], [ %4306, %4332 ], [ %4306, %4368 ], [ %4306, %4414 ], [ %4306, %4416 ]
  %4450 = phi float [ %4307, %4301 ], [ %3393, %3701 ], [ %3393, %3385 ], [ %3393, %3405 ], [ %4307, %4332 ], [ %4307, %4368 ], [ %4307, %4414 ], [ %4307, %4416 ]
  %4451 = phi float [ %3394, %4301 ], [ %3394, %3701 ], [ %3394, %3385 ], [ %3394, %3405 ], [ %4363, %4332 ], [ %4411, %4368 ], [ %3394, %4414 ], [ %4439, %4416 ]
  %4452 = phi float [ %3395, %4301 ], [ %3395, %3701 ], [ %3395, %3385 ], [ %3395, %3405 ], [ %4364, %4332 ], [ %4412, %4368 ], [ %3395, %4414 ], [ %4440, %4416 ]
  %4453 = phi float [ %3396, %4301 ], [ %3396, %3701 ], [ %3396, %3385 ], [ %3396, %3405 ], [ %4365, %4332 ], [ %4413, %4368 ], [ %3396, %4414 ], [ %4441, %4416 ]
  %4454 = phi float [ %3397, %4301 ], [ %3397, %3701 ], [ %3397, %3385 ], [ %3397, %3405 ], [ %4351, %4332 ], [ %4403, %4368 ], [ %3397, %4414 ], [ %4431, %4416 ]
  %4455 = phi float [ %3398, %4301 ], [ %3398, %3701 ], [ %3398, %3385 ], [ %3398, %3405 ], [ %4352, %4332 ], [ %4404, %4368 ], [ %3398, %4414 ], [ %4432, %4416 ]
  %4456 = phi float [ %3399, %4301 ], [ %3399, %3701 ], [ %3399, %3385 ], [ %3399, %3405 ], [ %4353, %4332 ], [ %4405, %4368 ], [ %3399, %4414 ], [ %4433, %4416 ]
  %4457 = phi float [ %4308, %4301 ], [ %3400, %3701 ], [ %3400, %3385 ], [ %3400, %3405 ], [ %4308, %4332 ], [ %4308, %4368 ], [ %4308, %4414 ], [ %4308, %4416 ]
  %4458 = phi float [ %3401, %4301 ], [ %3401, %3701 ], [ %3401, %3385 ], [ %3401, %3405 ], [ %4344, %4332 ], [ %4399, %4368 ], [ %3401, %4414 ], [ %4427, %4416 ]
  %4459 = phi float [ %3402, %4301 ], [ %3402, %3701 ], [ %3402, %3385 ], [ %3402, %3405 ], [ %4341, %4332 ], [ %4376, %4368 ], [ %3402, %4414 ], [ %4424, %4416 ]
  %4460 = phi float [ %3403, %4301 ], [ %3403, %3701 ], [ %3403, %3385 ], [ %3403, %3405 ], [ %4356, %4332 ], [ %4407, %4368 ], [ %3403, %4414 ], [ %4435, %4416 ]
  %4461 = phi float [ %4309, %4301 ], [ %3404, %3701 ], [ %3404, %3385 ], [ %3404, %3405 ], [ %4309, %4332 ], [ %4309, %4368 ], [ %4309, %4414 ], [ %4309, %4416 ]
  %4462 = add i32 %61, 408
  %4463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4464 = extractvalue %dx.types.ResRet.i32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.i32 %4463, 1
  %4466 = bitcast i32 %4464 to float
  %4467 = bitcast i32 %4465 to float
  %4468 = fcmp fast oge float %4466, 0.000000e+00
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = select i1 %4468, float %4466, float %4470
  %4472 = add i32 %61, 504
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = add i32 %4474, 0
  %4476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4476, %dx.types.Handle %107, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = fmul fast float %4478, %4467
  %4480 = fadd fast float %4479, %4471
  %4481 = call float @dx.op.dot2.f32(i32 54, float %4443, float %4444, float %4443, float %4444)  ; Dot2(ax,ay,bx,by)
  %4482 = fmul fast float %4481, 0x3FE3333340000000
  %4483 = fsub fast float 1.000000e+00, %4482
  %4484 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4483, float %4443, float %4444, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = call float @dx.op.unary.f32(i32 25, float %4484)  ; Rsqrt(value)
  %4486 = fmul fast float %4485, %4443
  %4487 = fmul fast float %4485, %4444
  %4488 = fmul fast float %4483, %4485
  %4489 = fmul fast float %4488, %117
  %4490 = fmul fast float %4488, %118
  %4491 = fmul fast float %4488, %119
  %4492 = fmul fast float %4486, %82
  %4493 = fmul fast float %4486, %83
  %4494 = fmul fast float %4486, %84
  %4495 = fadd fast float %4489, %4492
  %4496 = fadd fast float %4490, %4493
  %4497 = fadd fast float %4491, %4494
  %4498 = fmul fast float %129, %4487
  %4499 = fmul fast float %130, %4487
  %4500 = fmul fast float %131, %4487
  %4501 = fadd fast float %4495, %4498
  %4502 = fadd fast float %4496, %4499
  %4503 = fadd fast float %4497, %4500
  %4504 = call float @dx.op.dot3.f32(i32 55, float %4501, float %4502, float %4503, float %4501, float %4502, float %4503)  ; Dot3(ax,ay,az,bx,by,bz)
  %4505 = call float @dx.op.unary.f32(i32 25, float %4504)  ; Rsqrt(value)
  %4506 = fmul fast float %4501, %4505
  %4507 = fmul fast float %4502, %4505
  %4508 = fmul fast float %4503, %4505
  %4509 = and i32 %63, 1
  %4510 = icmp eq i32 %4509, 0
  br i1 %4510, label %4511, label %5103

; <label>:4511                                    ; preds = %4442
  %4512 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4513 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4514 = call float @dx.op.unary.f32(i32 83, float %167)  ; DerivCoarseX(value)
  %4515 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4516 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4517 = call float @dx.op.unary.f32(i32 84, float %167)  ; DerivCoarseY(value)
  %4518 = fadd fast float %4512, %165
  %4519 = fadd fast float %4513, %166
  %4520 = fadd fast float %4514, %167
  %4521 = fadd fast float %4515, %165
  %4522 = fadd fast float %4516, %166
  %4523 = fadd fast float %4517, %167
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.CBufRet.f32 %4524, 2
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4531 = fmul fast float %4525, %110
  %4532 = fmul fast float %4531, %4529
  %4533 = fmul fast float %4526, %111
  %4534 = fmul fast float %4533, %4530
  %4535 = fptoui float %4532 to i32
  %4536 = fptoui float %4534 to i32
  %4537 = fadd fast float %4525, -1.000000e+00
  %4538 = fadd fast float %4526, -1.000000e+00
  %4539 = fptoui float %4537 to i32
  %4540 = fptoui float %4538 to i32
  %4541 = call i32 @dx.op.binary.i32(i32 40, i32 %4535, i32 %4539)  ; UMin(a,b)
  %4542 = call i32 @dx.op.binary.i32(i32 40, i32 %4536, i32 %4540)  ; UMin(a,b)
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 3
  %4546 = fmul fast float %4544, %98
  %4547 = fsub fast float %4546, %4545
  %4548 = fadd fast float %4527, -1.000000e+00
  %4549 = call float @dx.op.binary.f32(i32 36, float %4547, float %4548)  ; FMin(a,b)
  %4550 = fptoui float %4549 to i32
  %4551 = fptoui float %4525 to i32
  %4552 = fptoui float %4526 to i32
  %4553 = mul i32 %4550, %4552
  %4554 = add i32 %4553, %4542
  %4555 = mul i32 %4554, %4551
  %4556 = add i32 %4555, %4541
  %4557 = shl i32 %4556, 2
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = and i32 %4559, 1023
  %4561 = lshr i32 %4559, 10
  %4562 = icmp eq i32 %4560, 0
  br i1 %4562, label %5066, label %4563

; <label>:4563                                    ; preds = %4511
  %4564 = and i32 %4559, 1023
  br label %4565

; <label>:4565                                    ; preds = %4697, %4563
  %4566 = phi i32 [ %4647, %4697 ], [ 0, %4563 ]
  %4567 = phi float [ %4698, %4697 ], [ 0.000000e+00, %4563 ]
  %4568 = phi float [ %4699, %4697 ], [ %4480, %4563 ]
  %4569 = phi float [ %4700, %4697 ], [ %4461, %4563 ]
  %4570 = phi float [ %4701, %4697 ], [ %4454, %4563 ]
  %4571 = phi float [ %4702, %4697 ], [ %4455, %4563 ]
  %4572 = phi float [ %4703, %4697 ], [ %4456, %4563 ]
  %4573 = phi float [ %4704, %4697 ], [ 0.000000e+00, %4563 ]
  %4574 = phi float [ %4705, %4697 ], [ 0.000000e+00, %4563 ]
  %4575 = phi float [ %4706, %4697 ], [ %4451, %4563 ]
  %4576 = phi float [ %4707, %4697 ], [ %4452, %4563 ]
  %4577 = phi float [ %4708, %4697 ], [ %4453, %4563 ]
  %4578 = phi float [ %4709, %4697 ], [ %4448, %4563 ]
  %4579 = phi float [ %4710, %4697 ], [ %4449, %4563 ]
  %4580 = phi float [ %4711, %4697 ], [ %4450, %4563 ]
  %4581 = phi float [ %4712, %4697 ], [ %4506, %4563 ]
  %4582 = phi float [ %4713, %4697 ], [ %4507, %4563 ]
  %4583 = phi float [ %4714, %4697 ], [ %4508, %4563 ]
  %4584 = phi float [ %4715, %4697 ], [ %4459, %4563 ]
  %4585 = phi float [ %4716, %4697 ], [ %4458, %4563 ]
  %4586 = phi float [ %4717, %4697 ], [ 0.000000e+00, %4563 ]
  %4587 = phi float [ %4718, %4697 ], [ %4457, %4563 ]
  %4588 = phi float [ %4719, %4697 ], [ %4445, %4563 ]
  %4589 = phi float [ %4720, %4697 ], [ %4446, %4563 ]
  %4590 = phi float [ %4721, %4697 ], [ %4447, %4563 ]
  %4591 = add nuw nsw i32 %4566, %4561
  %4592 = shl i32 %4591, 2
  %4593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.i32 %4593, 0
  %4595 = shl i32 %4594, 8
  %4596 = or i32 %4595, 48
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = or i32 %4595, 64
  %4603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.i32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.i32 %4603, 1
  %4606 = or i32 %4595, 80
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4610 = or i32 %4595, 96
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = or i32 %4595, 112
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4619 = or i32 %4595, 128
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = or i32 %4595, 144
  %4626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.ResRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.ResRet.f32 %4626, 2
  %4630 = extractvalue %dx.types.ResRet.f32 %4626, 3
  %4631 = or i32 %4595, 160
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = extractvalue %dx.types.ResRet.f32 %4632, 3
  %4637 = or i32 %4595, 192
  %4638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.i32 %4638, 0
  %4640 = or i32 %4595, 208
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = or i32 %4595, 248
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = add nuw nsw i32 %4566, 1
  %4648 = bitcast float %4601 to i32
  %4649 = and i32 %4648, 512
  %4650 = icmp eq i32 %4649, 0
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = extractvalue %dx.types.ResRet.f32 %4651, 3
  %4656 = call float @dx.op.dot4.f32(i32 56, float %4652, float %4653, float %4654, float %4655, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4657 = or i32 %4595, 16
  %4658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.ResRet.f32 %4658, 3
  %4663 = call float @dx.op.dot4.f32(i32 56, float %4659, float %4660, float %4661, float %4662, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4664 = or i32 %4595, 32
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.ResRet.f32 %4665, 3
  %4670 = call float @dx.op.dot4.f32(i32 56, float %4666, float %4667, float %4668, float %4669, float %165, float %166, float %167, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4671 = call float @dx.op.unary.f32(i32 27, float %4656)  ; Round_ni(value)
  %4672 = call float @dx.op.unary.f32(i32 6, float %4671)  ; FAbs(value)
  %4673 = call float @dx.op.unary.f32(i32 27, float %4663)  ; Round_ni(value)
  %4674 = call float @dx.op.unary.f32(i32 6, float %4673)  ; FAbs(value)
  %4675 = call float @dx.op.unary.f32(i32 6, float %4670)  ; FAbs(value)
  %4676 = call float @dx.op.unary.f32(i32 27, float %4675)  ; Round_ni(value)
  %4677 = fadd fast float %4674, %4672
  %4678 = fadd fast float %4677, %4676
  %4679 = fcmp fast oeq float %4678, 0.000000e+00
  %4680 = call float @dx.op.dot4.f32(i32 56, float %4652, float %4653, float %4654, float %4655, float %4518, float %4519, float %4520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4681 = call float @dx.op.dot4.f32(i32 56, float %4659, float %4660, float %4661, float %4662, float %4518, float %4519, float %4520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4682 = call float @dx.op.dot4.f32(i32 56, float %4652, float %4653, float %4654, float %4655, float %4521, float %4522, float %4523, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4683 = call float @dx.op.dot4.f32(i32 56, float %4659, float %4660, float %4661, float %4662, float %4521, float %4522, float %4523, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4684 = fsub fast float %4680, %4656
  %4685 = fsub fast float %4682, %4656
  %4686 = fsub fast float %4681, %4663
  %4687 = fsub fast float %4683, %4663
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4598, float %4599, float %4600, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 2
  %4691 = fadd fast float %4690, %4688
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4689, 0
  %4694 = fcmp fast ogt float %4692, %4693
  %4695 = and i1 %4679, %4694
  %4696 = and i1 %4650, %4695
  br i1 %4696, label %4723, label %4697

; <label>:4697                                    ; preds = %5052, %4804, %4723, %4565
  %4698 = phi float [ %4567, %4723 ], [ %4807, %4804 ], [ %4807, %5052 ], [ %4567, %4565 ]
  %4699 = phi float [ %4568, %4723 ], [ %4568, %4804 ], [ %5028, %5052 ], [ %4568, %4565 ]
  %4700 = phi float [ %4569, %4723 ], [ %4569, %4804 ], [ %5026, %5052 ], [ %4569, %4565 ]
  %4701 = phi float [ %4570, %4723 ], [ %4570, %4804 ], [ %5004, %5052 ], [ %4570, %4565 ]
  %4702 = phi float [ %4571, %4723 ], [ %4571, %4804 ], [ %5005, %5052 ], [ %4571, %4565 ]
  %4703 = phi float [ %4572, %4723 ], [ %4572, %4804 ], [ %5006, %5052 ], [ %4572, %4565 ]
  %4704 = phi float [ %4573, %4723 ], [ %4573, %4804 ], [ %4931, %5052 ], [ %4573, %4565 ]
  %4705 = phi float [ %4574, %4723 ], [ %4574, %4804 ], [ %4929, %5052 ], [ %4574, %4565 ]
  %4706 = phi float [ %4575, %4723 ], [ %4575, %4804 ], [ %4974, %5052 ], [ %4575, %4565 ]
  %4707 = phi float [ %4576, %4723 ], [ %4576, %4804 ], [ %4975, %5052 ], [ %4576, %4565 ]
  %4708 = phi float [ %4577, %4723 ], [ %4577, %4804 ], [ %4976, %5052 ], [ %4577, %4565 ]
  %4709 = phi float [ %4578, %4723 ], [ %4578, %4804 ], [ %5062, %5052 ], [ %4578, %4565 ]
  %4710 = phi float [ %4579, %4723 ], [ %4579, %4804 ], [ %5063, %5052 ], [ %4579, %4565 ]
  %4711 = phi float [ %4580, %4723 ], [ %4580, %4804 ], [ %5064, %5052 ], [ %4580, %4565 ]
  %4712 = phi float [ %4581, %4723 ], [ %4581, %4804 ], [ %4910, %5052 ], [ %4581, %4565 ]
  %4713 = phi float [ %4582, %4723 ], [ %4582, %4804 ], [ %4911, %5052 ], [ %4582, %4565 ]
  %4714 = phi float [ %4583, %4723 ], [ %4583, %4804 ], [ %4912, %5052 ], [ %4583, %4565 ]
  %4715 = phi float [ %4584, %4723 ], [ %4584, %4804 ], [ %4984, %5052 ], [ %4584, %4565 ]
  %4716 = phi float [ %4585, %4723 ], [ %4585, %4804 ], [ %4981, %5052 ], [ %4585, %4565 ]
  %4717 = phi float [ %4586, %4723 ], [ %4586, %4804 ], [ %4978, %5052 ], [ %4586, %4565 ]
  %4718 = phi float [ %4587, %4723 ], [ %4587, %4804 ], [ %4927, %5052 ], [ %4587, %4565 ]
  %4719 = phi float [ %4588, %4723 ], [ %4588, %4804 ], [ %4922, %5052 ], [ %4588, %4565 ]
  %4720 = phi float [ %4589, %4723 ], [ %4589, %4804 ], [ %4923, %5052 ], [ %4589, %4565 ]
  %4721 = phi float [ %4590, %4723 ], [ %4590, %4804 ], [ %4924, %5052 ], [ %4590, %4565 ]
  %4722 = icmp eq i32 %4647, %4564
  br i1 %4722, label %5065, label %4565

; <label>:4723                                    ; preds = %4565
  %4724 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4725 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4726 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4727 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4728 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4729 = extractvalue %dx.types.ResRet.i32 %4603, 3
  %4730 = extractvalue %dx.types.ResRet.i32 %4603, 2
  %4731 = add i32 %4729, 0
  %4732 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4731, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4734 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4732, %dx.types.Handle %4733, float %4656, float %4663, float undef, float undef, i32 0, i32 0, i32 undef, float %4684, float %4686, float undef, float %4685, float %4687, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = fmul fast float %4735, %4728
  %4737 = fadd fast float %4736, %4727
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4656, %4612
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4663, float %4739)  ; FMad(a,b,c)
  %4741 = fadd fast float %4740, %4726
  %4742 = fmul fast float %4656, %4614
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4663, float %4742)  ; FMad(a,b,c)
  %4744 = fadd fast float %4743, %4725
  %4745 = fmul fast float %4684, %4612
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4686, float %4745)  ; FMad(a,b,c)
  %4747 = fmul fast float %4684, %4614
  %4748 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4686, float %4747)  ; FMad(a,b,c)
  %4749 = fmul fast float %4685, %4612
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4613, float %4687, float %4749)  ; FMad(a,b,c)
  %4751 = fmul fast float %4685, %4614
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4687, float %4751)  ; FMad(a,b,c)
  %4753 = add i32 %4730, 0
  %4754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4753, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4755 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4754, %dx.types.Handle %4733, float %4741, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4746, float %4748, float undef, float %4750, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4756 = extractvalue %dx.types.ResRet.f32 %4755, 0
  %4757 = and i32 %4648, 1024
  %4758 = icmp ne i32 %4757, 0
  %4759 = fcmp fast ogt float %4756, 0x3FE0101020000000
  %4760 = uitofp i1 %4759 to float
  %4761 = select i1 %4758, float %4760, float %4756
  %4762 = and i32 %4648, 8192
  %4763 = icmp ne i32 %4762, 0
  %4764 = select i1 %4763, float %4724, float 1.000000e+00
  %4765 = fmul fast float %4656, 2.000000e+00
  %4766 = fadd fast float %4765, -1.000000e+00
  %4767 = call float @dx.op.unary.f32(i32 6, float %4766)  ; FAbs(value)
  %4768 = fmul fast float %4767, %4645
  %4769 = fsub fast float %4768, %4645
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fmul fast float %4663, 2.000000e+00
  %4772 = fadd fast float %4771, -1.000000e+00
  %4773 = call float @dx.op.unary.f32(i32 6, float %4772)  ; FAbs(value)
  %4774 = fmul fast float %4773, %4646
  %4775 = fsub fast float %4774, %4646
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4675, %4608
  %4778 = fsub fast float %4777, %4608
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4738, %4764
  %4781 = fmul fast float %4780, %4735
  %4782 = fmul fast float %4781, %4770
  %4783 = fmul fast float %4782, %4761
  %4784 = fmul fast float %4783, %4776
  %4785 = fmul fast float %4784, %4779
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4789 = fsub fast float %4692, %4788
  %4790 = fmul fast float %4789, %4787
  %4791 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4792 = fmul fast float %4785, %4609
  %4793 = fadd fast float %4785, %4609
  %4794 = fmul fast float %4793, %4618
  %4795 = fsub fast float %4794, %4618
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = and i32 %4648, 128
  %4798 = icmp ne i32 %4797, 0
  %4799 = select i1 %4798, float %4796, float %4792
  %4800 = fmul fast float %4799, %4791
  %4801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.f32 %4801, 0
  %4803 = fcmp fast ugt float %4800, %4802
  br i1 %4803, label %4804, label %4697

; <label>:4804                                    ; preds = %4723
  %4805 = select i1 %4763, float %4800, float 0.000000e+00
  %4806 = fadd fast float %4805, %4567
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  br i1 %4763, label %4697, label %4808

; <label>:4808                                    ; preds = %4804
  %4809 = and i32 %4648, 4
  %4810 = and i32 %4648, 8
  %4811 = add i32 %4604, 0
  %4812 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4811, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4814 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4812, %dx.types.Handle %4813, float %4741, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4746, float %4748, float undef, float %4750, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = extractvalue %dx.types.ResRet.f32 %4814, 3
  %4819 = bitcast float %4630 to i32
  %4820 = and i32 %4819, 255
  %4821 = uitofp i32 %4820 to float
  %4822 = lshr i32 %4819, 8
  %4823 = and i32 %4822, 255
  %4824 = uitofp i32 %4823 to float
  %4825 = fmul fast float %4818, %4821
  %4826 = fadd fast float %4825, %4824
  %4827 = fmul fast float %4826, 0x3F70101000000000
  %4828 = add i32 %4605, 0
  %4829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4828, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4829, %dx.types.Handle %4813, float %4741, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4746, float %4748, float undef, float %4750, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = extractvalue %dx.types.ResRet.f32 %4830, 3
  %4835 = bitcast float %4624 to i32
  %4836 = and i32 %4835, 255
  %4837 = uitofp i32 %4836 to float
  %4838 = lshr i32 %4835, 8
  %4839 = and i32 %4838, 255
  %4840 = uitofp i32 %4839 to float
  %4841 = lshr i32 %4835, 16
  %4842 = and i32 %4841, 255
  %4843 = uitofp i32 %4842 to float
  %4844 = fmul fast float %4843, 0x3F70101000000000
  %4845 = fmul fast float %4831, %4837
  %4846 = fadd fast float %4845, %4840
  %4847 = fmul fast float %4846, 0x3F70101000000000
  %4848 = fadd fast float %4832, -5.000000e-01
  %4849 = fadd fast float %4834, -5.000000e-01
  %4850 = fmul fast float %4848, %4844
  %4851 = fmul fast float %4849, %4844
  %4852 = fadd fast float %4850, 5.000000e-01
  %4853 = fadd fast float %4851, 5.000000e-01
  %4854 = fmul fast float %4815, %4633
  %4855 = fmul fast float %4816, %4634
  %4856 = fmul fast float %4817, %4635
  %4857 = fmul fast float %4852, 2.000000e+00
  %4858 = fadd fast float %4857, -1.000000e+00
  %4859 = fmul fast float %4853, 2.000000e+00
  %4860 = fadd fast float %4859, -1.000000e+00
  %4861 = fadd fast float %4858, %4860
  %4862 = fmul fast float %4861, 5.000000e-01
  %4863 = fsub fast float %4858, %4860
  %4864 = fmul fast float %4863, 5.000000e-01
  %4865 = call float @dx.op.unary.f32(i32 6, float %4862)  ; FAbs(value)
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = call float @dx.op.unary.f32(i32 6, float %4864)  ; FAbs(value)
  %4868 = fsub fast float %4866, %4867
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4864, float %4868, float %4862, float %4864, float %4868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = call float @dx.op.unary.f32(i32 25, float %4869)  ; Rsqrt(value)
  %4871 = fmul fast float %4862, %4870
  %4872 = fmul fast float %4864, %4870
  %4873 = fmul fast float %4870, %4868
  %4874 = fmul fast float %4873, %4598
  %4875 = fmul fast float %4873, %4599
  %4876 = fmul fast float %4873, %4600
  %4877 = fmul fast float %4871, %4621
  %4878 = fmul fast float %4871, %4622
  %4879 = fmul fast float %4871, %4623
  %4880 = fadd fast float %4877, %4874
  %4881 = fadd fast float %4878, %4875
  %4882 = fadd fast float %4879, %4876
  %4883 = fmul fast float %4872, %4627
  %4884 = fmul fast float %4872, %4628
  %4885 = fmul fast float %4872, %4629
  %4886 = fadd fast float %4880, %4883
  %4887 = fadd fast float %4881, %4884
  %4888 = fadd fast float %4882, %4885
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float %4886, float %4887, float %4888)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 25, float %4889)  ; Rsqrt(value)
  %4891 = fmul fast float %4886, %4890
  %4892 = fmul fast float %4887, %4890
  %4893 = fmul fast float %4888, %4890
  %4894 = icmp ne i32 %4810, 0
  %4895 = select i1 %4894, float 1.000000e+00, float 0.000000e+00
  %4896 = fmul fast float %4800, %4895
  %4897 = and i32 %4648, 1
  %4898 = icmp eq i32 %4897, 0
  br i1 %4898, label %4899, label %4903

; <label>:4899                                    ; preds = %4808
  %4900 = fsub fast float %4891, %4581
  %4901 = fsub fast float %4892, %4582
  %4902 = fsub fast float %4893, %4583
  br label %4903

; <label>:4903                                    ; preds = %4899, %4808
  %4904 = phi float [ %4900, %4899 ], [ %4891, %4808 ]
  %4905 = phi float [ %4901, %4899 ], [ %4892, %4808 ]
  %4906 = phi float [ %4902, %4899 ], [ %4893, %4808 ]
  %4907 = fmul float %4906, %4896
  %4908 = fmul float %4905, %4896
  %4909 = fmul float %4904, %4896
  %4910 = fadd fast float %4909, %4581
  %4911 = fadd fast float %4908, %4582
  %4912 = fadd fast float %4907, %4583
  %4913 = icmp ne i32 %4809, 0
  %4914 = select i1 %4913, float 1.000000e+00, float 0.000000e+00
  %4915 = fmul fast float %4800, %4914
  %4916 = fsub fast float %4854, %4588
  %4917 = fsub fast float %4855, %4589
  %4918 = fsub fast float %4856, %4590
  %4919 = fmul fast float %4916, %4915
  %4920 = fmul fast float %4917, %4915
  %4921 = fmul fast float %4918, %4915
  %4922 = fadd fast float %4919, %4588
  %4923 = fadd fast float %4920, %4589
  %4924 = fadd fast float %4921, %4590
  %4925 = fsub fast float %4827, %4587
  %4926 = fmul fast float %4925, %4915
  %4927 = fadd fast float %4926, %4587
  %4928 = fmul fast float %4915, %4574
  %4929 = fsub fast float %4574, %4928
  %4930 = fmul fast float %4915, %4573
  %4931 = fsub fast float %4573, %4930
  %4932 = bitcast float %4642 to i32
  %4933 = lshr i32 %4932, 16
  %4934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4933)  ; LegacyF16ToF32(value)
  %4935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4936 = extractvalue %dx.types.ResRet.i32 %4935, 0
  %4937 = and i32 %4936, 1
  %4938 = icmp eq i32 %4937, 0
  br i1 %4938, label %4939, label %4964

; <label>:4939                                    ; preds = %4903
  %4940 = fadd fast float %4827, 0xBFB99999A0000000
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4941, 0x3FF1C71C80000000
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, %4854
  %4946 = fmul fast float %4944, %4855
  %4947 = fmul fast float %4944, %4856
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4949, float %4950)  ; FMax(a,b)
  %4952 = call float @dx.op.binary.f32(i32 35, float %4948, float %4951)  ; FMax(a,b)
  %4953 = fcmp fast ogt float %4952, 0.000000e+00
  %4954 = bitcast float %4952 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = select i1 %4953, float %4956, float 0.000000e+00
  %4958 = fmul fast float %4948, %4934
  %4959 = fmul fast float %4949, %4934
  %4960 = fmul fast float %4950, %4934
  %4961 = fmul fast float %4958, %4957
  %4962 = fmul fast float %4959, %4957
  %4963 = fmul fast float %4960, %4957
  br label %4964

; <label>:4964                                    ; preds = %4939, %4903
  %4965 = phi float [ %4934, %4903 ], [ %4961, %4939 ]
  %4966 = phi float [ %4934, %4903 ], [ %4962, %4939 ]
  %4967 = phi float [ %4934, %4903 ], [ %4963, %4939 ]
  %4968 = fsub fast float %4965, %4575
  %4969 = fsub fast float %4966, %4576
  %4970 = fsub fast float %4967, %4577
  %4971 = fmul fast float %4968, %4915
  %4972 = fmul fast float %4969, %4915
  %4973 = fmul fast float %4970, %4915
  %4974 = fadd fast float %4971, %4575
  %4975 = fadd fast float %4972, %4576
  %4976 = fadd fast float %4973, %4577
  %4977 = fadd fast float %4800, %4586
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fsub fast float %4847, %4585
  %4980 = fmul fast float %4979, %4896
  %4981 = fadd fast float %4980, %4585
  %4982 = fsub fast float %4833, %4584
  %4983 = fmul fast float %4982, %4896
  %4984 = fadd fast float %4983, %4584
  br i1 %4898, label %4993, label %4985

; <label>:4985                                    ; preds = %4964
  %4986 = and i32 %4648, 32768
  %4987 = icmp eq i32 %4986, 0
  br i1 %4987, label %5003, label %4988

; <label>:4988                                    ; preds = %4985
  %4989 = fmul fast float %4896, 1.270000e+02
  %4990 = fadd fast float %4989, %4570
  %4991 = fadd fast float %4989, %4571
  %4992 = fadd fast float %4989, %4572
  br label %5003

; <label>:4993                                    ; preds = %4964
  %4994 = fsub fast float 1.270000e+02, %4570
  %4995 = fsub fast float 1.270000e+02, %4571
  %4996 = fsub fast float 1.270000e+02, %4572
  %4997 = fmul fast float %4896, %4994
  %4998 = fmul fast float %4896, %4995
  %4999 = fmul fast float %4896, %4996
  %5000 = fadd fast float %4997, %4570
  %5001 = fadd fast float %4998, %4571
  %5002 = fadd fast float %4999, %4572
  br label %5003

; <label>:5003                                    ; preds = %4993, %4988, %4985
  %5004 = phi float [ %4990, %4988 ], [ %4570, %4985 ], [ %5000, %4993 ]
  %5005 = phi float [ %4991, %4988 ], [ %4571, %4985 ], [ %5001, %4993 ]
  %5006 = phi float [ %4992, %4988 ], [ %4572, %4985 ], [ %5002, %4993 ]
  %5007 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4855, float %4856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5011 = fmul fast float %5010, %5007
  %5012 = fadd fast float %5011, %5009
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = bitcast float %4636 to i32
  %5015 = and i32 %5014, 65535
  %5016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5015)  ; LegacyF16ToF32(value)
  %5017 = lshr i32 %5014, 16
  %5018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5017)  ; LegacyF16ToF32(value)
  %5019 = fcmp fast oge float %5016, 0.000000e+00
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = select i1 %5019, float %5016, float %5021
  %5023 = fadd fast float %5022, %5018
  %5024 = fsub fast float %5013, %4569
  %5025 = fmul fast float %5024, %4800
  %5026 = fadd fast float %5025, %4569
  %5027 = fmul fast float %5023, %4800
  %5028 = call float @dx.op.binary.f32(i32 35, float %4568, float %5027)  ; FMax(a,b)
  %5029 = and i32 %4648, 16
  %5030 = icmp eq i32 %5029, 0
  br i1 %5030, label %5052, label %5031

; <label>:5031                                    ; preds = %5003
  %5032 = add i32 %4639, 0
  %5033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5033, %dx.types.Handle %4813, float %4741, float %4744, float undef, float undef, i32 0, i32 0, i32 undef, float %4746, float %4748, float undef, float %4750, float %4752, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = and i32 %4932, 65535
  %5039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5038)  ; LegacyF16ToF32(value)
  %5040 = fmul fast float %5035, %4633
  %5041 = fmul fast float %5036, %4634
  %5042 = fmul fast float %5037, %4635
  %5043 = and i32 %4648, 16384
  %5044 = icmp ne i32 %5043, 0
  %5045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.f32 %5045, 0
  %5047 = select i1 %5044, float %5046, float 1.000000e+00
  %5048 = fmul fast float %5047, %5039
  %5049 = fmul fast float %5040, %5048
  %5050 = fmul fast float %5041, %5048
  %5051 = fmul fast float %5042, %5048
  br label %5052

; <label>:5052                                    ; preds = %5031, %5003
  %5053 = phi float [ %5049, %5031 ], [ 0.000000e+00, %5003 ]
  %5054 = phi float [ %5050, %5031 ], [ 0.000000e+00, %5003 ]
  %5055 = phi float [ %5051, %5031 ], [ 0.000000e+00, %5003 ]
  %5056 = fsub fast float %5053, %4578
  %5057 = fsub fast float %5054, %4579
  %5058 = fsub fast float %5055, %4580
  %5059 = fmul fast float %5056, %4800
  %5060 = fmul fast float %5057, %4800
  %5061 = fmul fast float %5058, %4800
  %5062 = fadd fast float %5059, %4578
  %5063 = fadd fast float %5060, %4579
  %5064 = fadd fast float %5061, %4580
  br label %4697

; <label>:5065                                    ; preds = %4697
  br label %5066

; <label>:5066                                    ; preds = %5065, %4511
  %5067 = phi float [ 0.000000e+00, %4511 ], [ %4698, %5065 ]
  %5068 = phi float [ %4480, %4511 ], [ %4699, %5065 ]
  %5069 = phi float [ %4461, %4511 ], [ %4700, %5065 ]
  %5070 = phi float [ %4454, %4511 ], [ %4701, %5065 ]
  %5071 = phi float [ %4455, %4511 ], [ %4702, %5065 ]
  %5072 = phi float [ %4456, %4511 ], [ %4703, %5065 ]
  %5073 = phi float [ 0.000000e+00, %4511 ], [ %4704, %5065 ]
  %5074 = phi float [ 0.000000e+00, %4511 ], [ %4705, %5065 ]
  %5075 = phi float [ %4451, %4511 ], [ %4706, %5065 ]
  %5076 = phi float [ %4452, %4511 ], [ %4707, %5065 ]
  %5077 = phi float [ %4453, %4511 ], [ %4708, %5065 ]
  %5078 = phi float [ %4448, %4511 ], [ %4709, %5065 ]
  %5079 = phi float [ %4449, %4511 ], [ %4710, %5065 ]
  %5080 = phi float [ %4450, %4511 ], [ %4711, %5065 ]
  %5081 = phi float [ %4506, %4511 ], [ %4712, %5065 ]
  %5082 = phi float [ %4507, %4511 ], [ %4713, %5065 ]
  %5083 = phi float [ %4508, %4511 ], [ %4714, %5065 ]
  %5084 = phi float [ %4459, %4511 ], [ %4715, %5065 ]
  %5085 = phi float [ %4458, %4511 ], [ %4716, %5065 ]
  %5086 = phi float [ 0.000000e+00, %4511 ], [ %4717, %5065 ]
  %5087 = phi float [ %4457, %4511 ], [ %4718, %5065 ]
  %5088 = phi float [ %4445, %4511 ], [ %4719, %5065 ]
  %5089 = phi float [ %4446, %4511 ], [ %4720, %5065 ]
  %5090 = phi float [ %4447, %4511 ], [ %4721, %5065 ]
  %5091 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5092 = call float @dx.op.unary.f32(i32 25, float %5091)  ; Rsqrt(value)
  %5093 = fmul fast float %5092, %5081
  %5094 = fmul fast float %5092, %5082
  %5095 = fmul fast float %5092, %5083
  %5096 = fadd fast float %5086, %1286
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %5093, float %5094, float %5095)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 25, float %5098)  ; Rsqrt(value)
  %5100 = fmul fast float %5099, %5093
  %5101 = fmul fast float %5099, %5094
  %5102 = fmul fast float %5099, %5095
  br label %5103

; <label>:5103                                    ; preds = %5066, %4442
  %5104 = phi float [ %5088, %5066 ], [ %4445, %4442 ]
  %5105 = phi float [ %5089, %5066 ], [ %4446, %4442 ]
  %5106 = phi float [ %5090, %5066 ], [ %4447, %4442 ]
  %5107 = phi float [ %5078, %5066 ], [ %4448, %4442 ]
  %5108 = phi float [ %5079, %5066 ], [ %4449, %4442 ]
  %5109 = phi float [ %5080, %5066 ], [ %4450, %4442 ]
  %5110 = phi float [ %5075, %5066 ], [ %4451, %4442 ]
  %5111 = phi float [ %5076, %5066 ], [ %4452, %4442 ]
  %5112 = phi float [ %5077, %5066 ], [ %4453, %4442 ]
  %5113 = phi float [ %5070, %5066 ], [ %4454, %4442 ]
  %5114 = phi float [ %5071, %5066 ], [ %4455, %4442 ]
  %5115 = phi float [ %5072, %5066 ], [ %4456, %4442 ]
  %5116 = phi float [ %5100, %5066 ], [ %4506, %4442 ]
  %5117 = phi float [ %5101, %5066 ], [ %4507, %4442 ]
  %5118 = phi float [ %5102, %5066 ], [ %4508, %4442 ]
  %5119 = phi float [ %5087, %5066 ], [ %4457, %4442 ]
  %5120 = phi float [ %5097, %5066 ], [ %1286, %4442 ]
  %5121 = phi float [ %5085, %5066 ], [ %4458, %4442 ]
  %5122 = phi float [ %5084, %5066 ], [ %4459, %4442 ]
  %5123 = phi float [ %5074, %5066 ], [ 0.000000e+00, %4442 ]
  %5124 = phi float [ %5073, %5066 ], [ 0.000000e+00, %4442 ]
  %5125 = phi float [ %5067, %5066 ], [ 0.000000e+00, %4442 ]
  %5126 = phi float [ %5068, %5066 ], [ %4480, %4442 ]
  %5127 = phi float [ %5069, %5066 ], [ %4461, %4442 ]
  %5128 = add i32 %61, 392
  %5129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5128, i32 undef)  ; BufferLoad(srv,index,wot)
  %5130 = extractvalue %dx.types.ResRet.i32 %5129, 0
  %5131 = extractvalue %dx.types.ResRet.i32 %5129, 1
  %5132 = extractvalue %dx.types.ResRet.i32 %5129, 2
  %5133 = extractvalue %dx.types.ResRet.i32 %5129, 3
  %5134 = bitcast i32 %5130 to float
  %5135 = bitcast i32 %5131 to float
  %5136 = bitcast i32 %5132 to float
  %5137 = bitcast i32 %5133 to float
  %5138 = fsub fast float %5104, %5134
  %5139 = fsub fast float %5105, %5135
  %5140 = fsub fast float %5106, %5136
  %5141 = fmul fast float %5138, %199
  %5142 = fmul fast float %5139, %199
  %5143 = fmul fast float %5140, %199
  %5144 = fadd fast float %5141, %5134
  %5145 = fadd fast float %5142, %5135
  %5146 = fadd fast float %5143, %5136
  %5147 = fsub fast float %5120, %5137
  %5148 = fmul fast float %5147, %199
  %5149 = fadd fast float %5148, %5137
  %5150 = fadd fast float %5119, 0xBFB99999A0000000
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5151, 0x3FF1C71C80000000
  %5153 = call float @dx.op.binary.f32(i32 36, float %5119, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5154 = fsub fast float 1.000000e+00, %5152
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5144, %5155
  %5157 = fmul fast float %5145, %5155
  %5158 = fmul fast float %5146, %5155
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = fmul fast float %5144, %5152
  %5163 = fmul fast float %5145, %5152
  %5164 = fmul fast float %5146, %5152
  %5165 = fadd fast float %5162, %5153
  %5166 = fadd fast float %5163, %5153
  %5167 = fadd fast float %5164, %5153
  %5168 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5169 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5170 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5171 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5173 = extractvalue %dx.types.ResRet.i32 %5172, 0
  %5174 = and i32 %5173, 1
  %5175 = icmp eq i32 %5174, 0
  br i1 %5175, label %5190, label %5176

; <label>:5176                                    ; preds = %5103
  %5177 = call float @dx.op.binary.f32(i32 35, float %5160, float %5161)  ; FMax(a,b)
  %5178 = call float @dx.op.binary.f32(i32 35, float %5159, float %5177)  ; FMax(a,b)
  %5179 = fcmp fast ogt float %5178, 0.000000e+00
  %5180 = bitcast float %5178 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = select i1 %5179, float %5182, float 0.000000e+00
  %5184 = fmul fast float %5159, %5110
  %5185 = fmul fast float %5160, %5111
  %5186 = fmul fast float %5161, %5112
  %5187 = fmul fast float %5184, %5183
  %5188 = fmul fast float %5185, %5183
  %5189 = fmul fast float %5186, %5183
  br label %5190

; <label>:5190                                    ; preds = %5176, %5103
  %5191 = phi float [ %5187, %5176 ], [ %5110, %5103 ]
  %5192 = phi float [ %5188, %5176 ], [ %5111, %5103 ]
  %5193 = phi float [ %5189, %5176 ], [ %5112, %5103 ]
  %5194 = call float @dx.op.binary.f32(i32 36, float %5113, float 1.270000e+02)  ; FMin(a,b)
  %5195 = call float @dx.op.binary.f32(i32 36, float %5114, float 1.270000e+02)  ; FMin(a,b)
  %5196 = call float @dx.op.binary.f32(i32 36, float %5115, float 1.270000e+02)  ; FMin(a,b)
  %5197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.i32 %5197, 3
  %5199 = and i32 %5198, 8
  %5200 = icmp ne i32 %5199, 0
  %5201 = call float @dx.op.binary.f32(i32 35, float %5159, float %5144)  ; FMax(a,b)
  %5202 = call float @dx.op.binary.f32(i32 35, float %5160, float %5144)  ; FMax(a,b)
  %5203 = call float @dx.op.binary.f32(i32 35, float %5161, float %5144)  ; FMax(a,b)
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5160, float %5161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = select i1 %259, float %5144, float %5159
  %5206 = select i1 %259, float %5204, float %5160
  %5207 = select i1 %259, float 1.000000e+00, float %5161
  %5208 = select i1 %5200, float %5201, float %5205
  %5209 = select i1 %5200, float %5202, float %5206
  %5210 = select i1 %5200, float %5203, float %5207
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = select i1 %259, float %5211, float %5191
  %5213 = select i1 %259, float %5211, float %5192
  %5214 = select i1 %259, float %5211, float %5193
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.CBufRet.f32 %5215, 2
  %5219 = fadd fast float %5216, %165
  %5220 = fadd fast float %5217, %166
  %5221 = fadd fast float %5218, %167
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5225 = fsub fast float %5219, %5223
  %5226 = fsub fast float %5220, %5224
  %5227 = fmul fast float %5225, %5225
  %5228 = fmul fast float %5226, %5226
  %5229 = fadd fast float %5227, %5228
  %5230 = call float @dx.op.unary.f32(i32 24, float %5229)  ; Sqrt(value)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5232 = fcmp fast olt float %5230, %5231
  br i1 %5232, label %5233, label %5300

; <label>:5233                                    ; preds = %5190
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 0
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5236, 1
  %5242 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5243 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5244 = extractvalue %dx.types.CBufRet.f32 %5236, 3
  %5245 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5246 = fadd fast float %5243, %5219
  %5247 = fadd fast float %5244, %5220
  %5248 = fadd fast float %5245, %5221
  %5249 = fmul fast float %5246, %5235
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5237, float %5249)  ; FMad(a,b,c)
  %5251 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5239, float %5250)  ; FMad(a,b,c)
  %5252 = fmul fast float %5246, %5240
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5247, float %5241, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5248, float %5242, float %5253)  ; FMad(a,b,c)
  %5255 = fsub fast float %5251, %5243
  %5256 = fsub fast float %5254, %5244
  %5257 = fsub fast float %5255, %5223
  %5258 = fadd fast float %5257, %5231
  %5259 = fsub fast float %5256, %5224
  %5260 = fadd fast float %5259, %5231
  %5261 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5262 = fmul fast float %5258, %5261
  %5263 = fmul fast float %5260, %5261
  %5264 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5265 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5266 = fsub fast float 1.000000e+00, %5264
  %5267 = fsub fast float 1.000000e+00, %5265
  %5268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %55, float %5266, float %5267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = fcmp fast ugt float %5269, 0.000000e+00
  br i1 %5270, label %5271, label %5574

; <label>:5271                                    ; preds = %5233
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5274 = fmul fast float %5273, %5269
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5276 = fadd fast float %5275, %5274
  %5277 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5278 = fadd fast float %5276, %5245
  %5279 = fmul fast float %5251, %5239
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5254, float %5242, float %5279)  ; FMad(a,b,c)
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5277, float %5280)  ; FMad(a,b,c)
  %5282 = fsub fast float %5281, %5245
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5285 = fsub fast float %5282, %5284
  %5286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %55, float %5266, float %5267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5286, 2
  %5290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %55, float %5266, float %5267, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 0
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5293 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5294 = fadd fast float %5291, %5287
  %5295 = fmul fast float %5294, 0x3F847AE140000000
  %5296 = fadd fast float %5292, %5288
  %5297 = fmul fast float %5296, 0x3F847AE140000000
  %5298 = fadd fast float %5293, %5289
  %5299 = fmul fast float %5298, 0x3F847AE140000000
  br label %5574

; <label>:5300                                    ; preds = %5190
  %5301 = and i32 %235, 1
  %5302 = icmp eq i32 %5301, 0
  br i1 %5302, label %5574, label %5303

; <label>:5303                                    ; preds = %5300
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5307 = extractvalue %dx.types.CBufRet.f32 %5306, 0
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5306, 1
  %5312 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5313 = extractvalue %dx.types.CBufRet.f32 %5304, 3
  %5314 = extractvalue %dx.types.CBufRet.f32 %5306, 3
  %5315 = extractvalue %dx.types.CBufRet.f32 %5308, 3
  %5316 = fadd fast float %5313, %5219
  %5317 = fadd fast float %5314, %5220
  %5318 = fadd fast float %5315, %5221
  %5319 = fmul fast float %5316, %5305
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5307, float %5319)  ; FMad(a,b,c)
  %5321 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5309, float %5320)  ; FMad(a,b,c)
  %5322 = fmul fast float %5316, %5310
  %5323 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5311, float %5322)  ; FMad(a,b,c)
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5312, float %5323)  ; FMad(a,b,c)
  %5325 = fsub fast float %5321, %5313
  %5326 = fsub fast float %5324, %5314
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 0
  %5329 = extractvalue %dx.types.CBufRet.f32 %5327, 1
  %5330 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5331 = extractvalue %dx.types.CBufRet.f32 %5327, 3
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 3
  %5334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.i32 %5334, 0
  %5336 = extractvalue %dx.types.CBufRet.i32 %5334, 1
  %5337 = udiv i32 %5336, %5335
  %5338 = fsub fast float %5325, %5328
  %5339 = fsub fast float %5326, %5329
  %5340 = call float @dx.op.binary.f32(i32 35, float %5338, float 0.000000e+00)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 35, float %5339, float 0.000000e+00)  ; FMax(a,b)
  %5342 = call float @dx.op.binary.f32(i32 36, float %5340, float %5330)  ; FMin(a,b)
  %5343 = call float @dx.op.binary.f32(i32 36, float %5341, float %5331)  ; FMin(a,b)
  %5344 = add i32 %5335, -1
  %5345 = add i32 %5337, -1
  %5346 = fmul fast float %5342, %5333
  %5347 = fmul fast float %5343, %5333
  %5348 = fptoui float %5346 to i32
  %5349 = fptoui float %5347 to i32
  %5350 = call i32 @dx.op.binary.i32(i32 40, i32 %5348, i32 %5344)  ; UMin(a,b)
  %5351 = call i32 @dx.op.binary.i32(i32 40, i32 %5349, i32 %5345)  ; UMin(a,b)
  %5352 = mul i32 %5351, %5335
  %5353 = add i32 %5352, %5350
  %5354 = shl i32 %5353, 2
  %5355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5354, i32 undef)  ; BufferLoad(srv,index,wot)
  %5356 = extractvalue %dx.types.ResRet.i32 %5355, 0
  %5357 = icmp eq i32 %5356, -1
  br i1 %5357, label %5574, label %5358

; <label>:5358                                    ; preds = %5303
  %5359 = mul i32 %5356, 148
  %5360 = add i32 %5359, 4
  %5361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5360, i32 undef)  ; BufferLoad(srv,index,wot)
  %5362 = extractvalue %dx.types.ResRet.f32 %5361, 0
  %5363 = add i32 %5359, 8
  %5364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5363, i32 undef)  ; BufferLoad(srv,index,wot)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = add i32 %5359, 36
  %5367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5366, i32 undef)  ; BufferLoad(srv,index,wot)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = add i32 %5359, 60
  %5370 = add i32 %5359, 92
  %5371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.i32 %5371, 0
  %5373 = add i32 %5359, 116
  %5374 = fsub fast float %5325, %5362
  %5375 = fsub fast float %5326, %5365
  %5376 = fmul fast float %5333, %5374
  %5377 = fmul fast float %5333, %5375
  %5378 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5380 = fsub fast float 1.000000e+00, %5379
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5383 = call float @dx.op.unary.f32(i32 83, float %5378)  ; DerivCoarseX(value)
  %5384 = call float @dx.op.unary.f32(i32 83, float %5380)  ; DerivCoarseX(value)
  %5385 = call float @dx.op.unary.f32(i32 84, float %5378)  ; DerivCoarseY(value)
  %5386 = call float @dx.op.unary.f32(i32 84, float %5380)  ; DerivCoarseY(value)
  %5387 = fmul fast float %5383, %5382
  %5388 = fmul fast float %5384, %5382
  %5389 = fmul fast float %5385, %5382
  %5390 = fmul fast float %5386, %5382
  %5391 = call float @dx.op.dot2.f32(i32 54, float %5389, float %5390, float %5389, float %5390)  ; Dot2(ax,ay,bx,by)
  %5392 = call float @dx.op.dot2.f32(i32 54, float %5387, float %5388, float %5387, float %5388)  ; Dot2(ax,ay,bx,by)
  %5393 = call float @dx.op.binary.f32(i32 35, float %5392, float %5391)  ; FMax(a,b)
  %5394 = call float @dx.op.unary.f32(i32 23, float %5393)  ; Log(value)
  %5395 = fmul fast float %5394, 5.000000e-01
  %5396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.f32 %5396, 1
  %5398 = fadd fast float %5397, %5395
  %5399 = call float @dx.op.binary.f32(i32 35, float %5398, float 0.000000e+00)  ; FMax(a,b)
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 3
  %5402 = fadd fast float %5401, %5399
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 3
  %5405 = fadd fast float %5402, %5404
  %5406 = add i32 %5372, 0
  %5407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5408 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5407, i32 0)  ; GetDimensions(handle,mipLevel)
  %5409 = extractvalue %dx.types.Dimensions %5408, 0
  %5410 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5409)  ; FirstbitLo(value)
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 1
  %5413 = sub nsw i32 %5412, %5410
  %5414 = sitofp i32 %5413 to float
  %5415 = fsub fast float %5405, %5414
  %5416 = call float @dx.op.binary.f32(i32 35, float %5415, float 0.000000e+00)  ; FMax(a,b)
  %5417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5407, %dx.types.Handle %53, float %5378, float %5380, float %5368, float undef, i32 0, i32 0, i32 undef, float %5416)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = fcmp ule float %5418, 0x3FE0101020000000
  %5420 = extractvalue %dx.types.CBufRet.i32 %5411, 0
  %5421 = and i32 %5420, 128
  %5422 = icmp ne i32 %5421, 0
  %5423 = and i1 %5419, %5422
  br i1 %5423, label %5574, label %5424

; <label>:5424                                    ; preds = %5358
  %5425 = add i32 %5359, 20
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = add i32 %5359, 24
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = add i32 %5359, 40
  %5432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = add i32 %5359, 96
  %5435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.i32 %5435, 0
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5439 = fmul fast float %5438, %5378
  %5440 = fmul fast float %5438, %5380
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = fadd fast float %5439, %5441
  %5443 = fadd fast float %5440, %5441
  %5444 = add i32 %5436, 0
  %5445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5446 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5445, i32 0)  ; GetDimensions(handle,mipLevel)
  %5447 = extractvalue %dx.types.Dimensions %5446, 0
  %5448 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5447)  ; FirstbitLo(value)
  %5449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.i32 %5449, 1
  %5451 = sub nsw i32 %5450, %5448
  %5452 = sitofp i32 %5451 to float
  %5453 = fsub fast float %5402, %5452
  %5454 = call float @dx.op.binary.f32(i32 35, float %5453, float 0.000000e+00)  ; FMax(a,b)
  %5455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5445, %dx.types.Handle %53, float %5442, float %5443, float %5433, float undef, i32 0, i32 0, i32 undef, float %5454)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = fmul fast float %5456, %5427
  %5458 = fadd fast float %5457, %5430
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.CBufRet.f32 %5459, 2
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 3
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 3
  %5467 = extractvalue %dx.types.CBufRet.f32 %5459, 3
  %5468 = fadd fast float %5464, %5325
  %5469 = fadd fast float %5466, %5326
  %5470 = fadd fast float %5458, %5467
  %5471 = fmul fast float %5468, %5460
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %5469, float %5461, float %5471)  ; FMad(a,b,c)
  %5473 = call float @dx.op.tertiary.f32(i32 46, float %5470, float %5462, float %5472)  ; FMad(a,b,c)
  %5474 = fsub fast float %5473, %5467
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5477 = fsub fast float %5474, %5476
  %5478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.i32 %5478, 0
  %5480 = call i32 @dx.op.binary.i32(i32 40, i32 %5356, i32 %5479)  ; UMin(a,b)
  %5481 = mul i32 %5480, 36
  %5482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.i32 %5482, 0
  %5484 = add i32 %5481, 4
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5487 = fmul fast float %5486, %5378
  %5488 = fmul fast float %5486, %5380
  %5489 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5490 = fadd fast float %5487, %5489
  %5491 = fadd fast float %5488, %5489
  %5492 = icmp eq i32 %5483, 0
  br i1 %5492, label %5561, label %5493

; <label>:5493                                    ; preds = %5424
  br label %5494

; <label>:5494                                    ; preds = %5551, %5493
  %5495 = phi float [ %5552, %5551 ], [ 0.000000e+00, %5493 ]
  %5496 = phi float [ %5553, %5551 ], [ 0.000000e+00, %5493 ]
  %5497 = phi float [ %5554, %5551 ], [ 0.000000e+00, %5493 ]
  %5498 = phi float [ %5555, %5551 ], [ 0.000000e+00, %5493 ]
  %5499 = phi float [ %5556, %5551 ], [ 0.000000e+00, %5493 ]
  %5500 = phi float [ %5557, %5551 ], [ 0.000000e+00, %5493 ]
  %5501 = phi i32 [ %5558, %5551 ], [ 0, %5493 ]
  %5502 = shl i32 %5501, 2
  %5503 = add i32 %5369, %5502
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = add i32 %5373, %5502
  %5507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.i32 %5507, 0
  %5509 = add i32 %5508, 0
  %5510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5509, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5511 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5510, i32 0)  ; GetDimensions(handle,mipLevel)
  %5512 = extractvalue %dx.types.Dimensions %5511, 0
  %5513 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5512)  ; FirstbitLo(value)
  %5514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.i32 %5514, 1
  %5516 = sub nsw i32 %5515, %5513
  %5517 = sitofp i32 %5516 to float
  %5518 = fsub fast float %5402, %5517
  %5519 = call float @dx.op.binary.f32(i32 35, float %5518, float 0.000000e+00)  ; FMax(a,b)
  %5520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5510, %dx.types.Handle %53, float %5490, float %5491, float %5505, float undef, i32 0, i32 0, i32 undef, float %5519)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = fcmp fast ogt float %5521, 0.000000e+00
  br i1 %5522, label %5523, label %5551

; <label>:5523                                    ; preds = %5494
  %5524 = add i32 %5484, %5502
  %5525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.i32 %5525, 0
  %5527 = and i32 %5526, 32767
  %5528 = mul nuw nsw i32 %5527, 928
  %5529 = add nuw nsw i32 %5528, 48
  %5530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5529, i32 undef)  ; BufferLoad(srv,index,wot)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = add nuw nsw i32 %5528, 60
  %5535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.ResRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.ResRet.f32 %5535, 2
  %5539 = fmul fast float %5531, %5521
  %5540 = fmul fast float %5532, %5521
  %5541 = fmul fast float %5533, %5521
  %5542 = fadd fast float %5539, %5495
  %5543 = fadd fast float %5540, %5496
  %5544 = fadd fast float %5541, %5497
  %5545 = fmul fast float %5536, %5521
  %5546 = fmul fast float %5537, %5521
  %5547 = fmul fast float %5538, %5521
  %5548 = fadd fast float %5545, %5498
  %5549 = fadd fast float %5546, %5499
  %5550 = fadd fast float %5547, %5500
  br label %5551

; <label>:5551                                    ; preds = %5523, %5494
  %5552 = phi float [ %5542, %5523 ], [ %5495, %5494 ]
  %5553 = phi float [ %5543, %5523 ], [ %5496, %5494 ]
  %5554 = phi float [ %5544, %5523 ], [ %5497, %5494 ]
  %5555 = phi float [ %5548, %5523 ], [ %5498, %5494 ]
  %5556 = phi float [ %5549, %5523 ], [ %5499, %5494 ]
  %5557 = phi float [ %5550, %5523 ], [ %5500, %5494 ]
  %5558 = add nuw i32 %5501, 1
  %5559 = icmp eq i32 %5558, %5483
  br i1 %5559, label %5560, label %5494

; <label>:5560                                    ; preds = %5551
  br label %5561

; <label>:5561                                    ; preds = %5560, %5424
  %5562 = phi float [ 0.000000e+00, %5424 ], [ %5552, %5560 ]
  %5563 = phi float [ 0.000000e+00, %5424 ], [ %5553, %5560 ]
  %5564 = phi float [ 0.000000e+00, %5424 ], [ %5554, %5560 ]
  %5565 = phi float [ 0.000000e+00, %5424 ], [ %5555, %5560 ]
  %5566 = phi float [ 0.000000e+00, %5424 ], [ %5556, %5560 ]
  %5567 = phi float [ 0.000000e+00, %5424 ], [ %5557, %5560 ]
  %5568 = fadd fast float %5565, %5562
  %5569 = fmul fast float %5568, 0x3F847AE140000000
  %5570 = fadd fast float %5566, %5563
  %5571 = fmul fast float %5570, 0x3F847AE140000000
  %5572 = fadd fast float %5567, %5564
  %5573 = fmul fast float %5572, 0x3F847AE140000000
  br label %5574

; <label>:5574                                    ; preds = %5561, %5358, %5303, %5300, %5271, %5233
  %5575 = phi float [ %5295, %5271 ], [ 0.000000e+00, %5233 ], [ %5569, %5561 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5358 ], [ 0.000000e+00, %5300 ]
  %5576 = phi float [ %5297, %5271 ], [ 0.000000e+00, %5233 ], [ %5571, %5561 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5358 ], [ 0.000000e+00, %5300 ]
  %5577 = phi float [ %5299, %5271 ], [ 0.000000e+00, %5233 ], [ %5573, %5561 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5358 ], [ 0.000000e+00, %5300 ]
  %5578 = phi float [ %5285, %5271 ], [ -1.310720e+05, %5233 ], [ %5477, %5561 ], [ -1.310720e+05, %5303 ], [ -1.310720e+05, %5358 ], [ -1.310720e+05, %5300 ]
  %5579 = phi i1 [ true, %5271 ], [ false, %5233 ], [ true, %5561 ], [ false, %5303 ], [ false, %5358 ], [ false, %5300 ]
  %5580 = and i32 %235, 3
  %5581 = icmp eq i32 %5580, 1
  %5582 = select i1 %5581, float 1.000000e+00, float 0.000000e+00
  %5583 = fsub fast float %5578, %167
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = select i1 %5579, float %5584, float 1.000000e+00
  %5586 = fmul fast float %5585, %5582
  %5587 = icmp eq i32 %5580, 3
  %5588 = select i1 %5587, float 1.000000e+00, float %5586
  %5589 = call float @dx.op.binary.f32(i32 35, float %5125, float %5588)  ; FMax(a,b)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fcmp fast une float %5590, 0.000000e+00
  %5592 = fsub fast float -0.000000e+00, %185
  %5593 = fsub fast float -0.000000e+00, %186
  %5594 = fsub fast float -0.000000e+00, %187
  br i1 %5591, label %5595, label %5757

; <label>:5595                                    ; preds = %5574
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = fmul fast float %5590, 2.500000e+00
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fmul fast float %5590, 0x4013FFFFE0000000
  %5600 = fadd fast float %5599, 0xBFFFFFFFE0000000
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5590, 0x4004000020000000
  %5603 = fadd fast float %5602, 0xBFF8000040000000
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5606 = fmul fast float %5150, 1.000000e+01
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %5607, 2.000000e+00
  %5609 = fsub fast float 3.000000e+00, %5608
  %5610 = fmul fast float %5607, %5607
  %5611 = fmul fast float %5610, %5609
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fsub fast float 0x3FE3333340000000, %5171
  %5614 = fmul fast float %5613, 0x400AAAAAA0000000
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5612, %5615
  %5617 = fmul fast float %5208, 0x3FEA2B8620000000
  %5618 = fmul fast float %5209, 0x3FEA2B8620000000
  %5619 = fmul fast float %5210, 0x3FEA2B8620000000
  %5620 = fadd fast float %5617, 0x3FC81DFBA0000000
  %5621 = fmul fast float %5620, %5208
  %5622 = fadd fast float %5621, 0x3F910E6020000000
  %5623 = fadd fast float %5618, 0x3FC81DFBA0000000
  %5624 = fmul fast float %5623, %5209
  %5625 = fadd fast float %5624, 0x3F910E6020000000
  %5626 = fadd fast float %5619, 0x3FC81DFBA0000000
  %5627 = fmul fast float %5626, %5210
  %5628 = fadd fast float %5627, 0x3F910E6020000000
  %5629 = call float @dx.op.unary.f32(i32 7, float %5622)  ; Saturate(value)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5631 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5632 = fsub fast float %5629, %5208
  %5633 = fsub fast float %5630, %5209
  %5634 = fsub fast float %5631, %5210
  %5635 = fmul fast float %5632, %5605
  %5636 = fmul fast float %5635, %5616
  %5637 = fmul fast float %5633, %5605
  %5638 = fmul fast float %5637, %5616
  %5639 = fmul fast float %5634, %5605
  %5640 = fmul fast float %5639, %5616
  %5641 = fadd fast float %5636, %5208
  %5642 = fadd fast float %5638, %5209
  %5643 = fadd fast float %5640, %5210
  %5644 = fmul fast float %5122, %5122
  %5645 = fmul fast float %5644, %5644
  %5646 = fadd fast float %5601, 1.000000e+00
  %5647 = fsub fast float %5646, %5616
  %5648 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5649 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fsub fast float 1.000000e+00, %5645
  %5652 = call float @dx.op.binary.f32(i32 36, float %5648, float %5651)  ; FMin(a,b)
  %5653 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5654 = call float @dx.op.binary.f32(i32 35, float %5652, float %5653)  ; FMax(a,b)
  %5655 = fadd fast float %5650, 0xBFE4CCCCC0000000
  %5656 = fmul fast float %5655, 0x4006DB6DA0000000
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = fmul fast float %5657, 2.000000e+00
  %5659 = fsub fast float 3.000000e+00, %5658
  %5660 = bitcast float %5168 to i32
  %5661 = ashr i32 %5660, 1
  %5662 = add nsw i32 %5661, 532487669
  %5663 = bitcast i32 %5662 to float
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = bitcast float %5664 to i32
  %5666 = sub nsw i32 2129859010, %5665
  %5667 = bitcast i32 %5666 to float
  %5668 = fmul fast float %5667, 2.000000e+00
  %5669 = bitcast float %5169 to i32
  %5670 = ashr i32 %5669, 1
  %5671 = add nsw i32 %5670, 532487669
  %5672 = bitcast i32 %5671 to float
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5676, 2.000000e+00
  %5678 = bitcast float %5170 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = add nsw i32 %5679, 532487669
  %5681 = bitcast i32 %5680 to float
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = fsub fast float 0x4002A9FBE0000000, %5668
  %5688 = fadd fast float %5668, 0x3FD54FDF00000000
  %5689 = bitcast float %5688 to i32
  %5690 = sub nsw i32 2129859010, %5689
  %5691 = bitcast i32 %5690 to float
  %5692 = fmul fast float %5691, %5687
  %5693 = fmul fast float %5692, %5692
  %5694 = fsub fast float 0x4002A9FBE0000000, %5677
  %5695 = fadd fast float %5677, 0x3FD54FDF00000000
  %5696 = bitcast float %5695 to i32
  %5697 = sub nsw i32 2129859010, %5696
  %5698 = bitcast i32 %5697 to float
  %5699 = fmul fast float %5698, %5694
  %5700 = fmul fast float %5699, %5699
  %5701 = fsub fast float 0x4002A9FBE0000000, %5686
  %5702 = fadd fast float %5686, 0x3FD54FDF00000000
  %5703 = bitcast float %5702 to i32
  %5704 = sub nsw i32 2129859010, %5703
  %5705 = bitcast i32 %5704 to float
  %5706 = fmul fast float %5705, %5701
  %5707 = fmul fast float %5706, %5706
  %5708 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5693)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5700)  ; FMax(a,b)
  %5710 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5707)  ; FMax(a,b)
  %5711 = fsub fast float 1.000000e+00, %5596
  %5712 = fadd fast float %5711, %5612
  %5713 = call float @dx.op.unary.f32(i32 7, float %5712)  ; Saturate(value)
  %5714 = fsub fast float 1.000000e+00, %5588
  %5715 = fmul fast float %5654, %5714
  %5716 = fmul fast float %5657, %5657
  %5717 = fmul fast float %5716, %5715
  %5718 = fmul fast float %5717, %5659
  %5719 = fmul fast float %5714, 0xBFE99999A0000000
  %5720 = fmul fast float %5719, %5605
  %5721 = fmul fast float %5720, %5616
  %5722 = fadd fast float %5721, 1.000000e+00
  %5723 = fadd fast float %5171, -1.000000e+00
  %5724 = fmul fast float %5722, %5723
  %5725 = fadd fast float %5724, 1.000000e+00
  %5726 = fsub fast float %5708, %5168
  %5727 = fsub fast float %5709, %5169
  %5728 = fsub fast float %5710, %5170
  %5729 = fmul fast float %5718, %5726
  %5730 = fmul fast float %5718, %5727
  %5731 = fmul fast float %5718, %5728
  %5732 = fadd fast float %5729, %5168
  %5733 = fadd fast float %5730, %5169
  %5734 = fadd fast float %5731, %5170
  %5735 = fsub fast float %117, %5116
  %5736 = fsub fast float %118, %5117
  %5737 = fsub fast float %119, %5118
  %5738 = fmul fast float %5718, %5735
  %5739 = fmul fast float %5718, %5736
  %5740 = fmul fast float %5718, %5737
  %5741 = fadd fast float %5738, %5116
  %5742 = fadd fast float %5739, %5117
  %5743 = fadd fast float %5740, %5118
  %5744 = fmul fast float %5718, %5713
  %5745 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5744, %5746
  %5748 = fadd fast float %5747, %5745
  %5749 = fsub fast float 1.000000e+00, %5122
  %5750 = fmul fast float %5718, %5749
  %5751 = fadd fast float %5750, %5122
  %5752 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = call float @dx.op.unary.f32(i32 25, float %5752)  ; Rsqrt(value)
  %5754 = fmul fast float %5741, %5753
  %5755 = fmul fast float %5742, %5753
  %5756 = fmul fast float %5743, %5753
  br label %5757

; <label>:5757                                    ; preds = %5595, %5574
  %5758 = phi float [ %5732, %5595 ], [ %5168, %5574 ]
  %5759 = phi float [ %5733, %5595 ], [ %5169, %5574 ]
  %5760 = phi float [ %5734, %5595 ], [ %5170, %5574 ]
  %5761 = phi float [ %5641, %5595 ], [ %5208, %5574 ]
  %5762 = phi float [ %5642, %5595 ], [ %5209, %5574 ]
  %5763 = phi float [ %5643, %5595 ], [ %5210, %5574 ]
  %5764 = phi float [ %5754, %5595 ], [ %5116, %5574 ]
  %5765 = phi float [ %5755, %5595 ], [ %5117, %5574 ]
  %5766 = phi float [ %5756, %5595 ], [ %5118, %5574 ]
  %5767 = phi float [ %5748, %5595 ], [ %5171, %5574 ]
  %5768 = phi float [ %5751, %5595 ], [ %5122, %5574 ]
  %5769 = fsub fast float -0.000000e+00, %167
  %5770 = select i1 %259, float 0.000000e+00, float %5760
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %5592, float %5593, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = call float @dx.op.dot3.f32(i32 55, float %185, float %186, float %187, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = fmul fast float %5773, 2.000000e+00
  %5775 = fmul fast float %5774, %5764
  %5776 = fmul fast float %5774, %5765
  %5777 = fmul fast float %5774, %5766
  %5778 = fsub fast float %185, %5775
  %5779 = fsub fast float %186, %5776
  %5780 = fsub fast float %187, %5777
  %5781 = call float @dx.op.binary.f32(i32 36, float %5768, float 1.000000e+00)  ; FMin(a,b)
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = bitcast float %5782 to i32
  %5784 = ashr i32 %5783, 1
  %5785 = add nsw i32 %5784, 532487669
  %5786 = bitcast i32 %5785 to float
  %5787 = fsub fast float 1.000000e+00, %5767
  %5788 = call float @dx.op.binary.f32(i32 35, float %5787, float 0x3F847AE140000000)  ; FMax(a,b)
  %5789 = fmul fast float %5788, %5788
  %5790 = fmul fast float %5789, %5789
  %5791 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %55, float %5786, float %5790, float %5791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5793 = extractvalue %dx.types.ResRet.f32 %5792, 0
  %5794 = fsub fast float 1.000000e+00, %5768
  %5795 = bitcast float %5794 to i32
  %5796 = sub nsw i32 2129859010, %5795
  %5797 = bitcast i32 %5796 to float
  %5798 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fmul fast float %5798, 0x3FD20DD760000000
  %5800 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5801 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = fcmp fast oeq float %5801, 0.000000e+00
  %5803 = fcmp fast oeq float %5800, 0.000000e+00
  %5804 = or i1 %5803, %5802
  br i1 %5804, label %5834, label %5805

; <label>:5805                                    ; preds = %5757
  %5806 = fsub fast float -0.000000e+00, %81
  %5807 = fsub fast float -0.000000e+00, %79
  %5808 = call float @dx.op.unary.f32(i32 24, float %5801)  ; Sqrt(value)
  %5809 = fdiv fast float %5808, %5800
  %5810 = fcmp fast ogt float %5809, 0x3FFB6F8900000000
  %5811 = select i1 %5810, float 0x3FFB6F8900000000, float %5809
  %5812 = fmul fast float %5811, 0x3FE8A23460000000
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = call float @dx.op.binary.f32(i32 35, float %5811, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5815 = fmul fast float %5813, %5800
  %5816 = fmul fast float %5814, 0x3FF279A740000000
  %5817 = fadd fast float %5816, -1.000000e+00
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %80, float %5806, float %5807, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = call float @dx.op.unary.f32(i32 25, float %5818)  ; Rsqrt(value)
  %5820 = fmul fast float %5819, %5806
  %5821 = fmul fast float %5819, %5807
  %5822 = fmul fast float %5819, %80
  %5823 = fmul fast float %5817, %5817
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fmul fast float %5814, 0x40005F8BE0000000
  %5826 = fsub fast float 0x400C5BF8A0000000, %5825
  %5827 = fdiv fast float %5815, %5826
  %5828 = fmul fast float %5827, 0x3FEE31C3C0000000
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %5814, 0x3FDACB7480000000
  %5831 = fadd fast float %5830, 0xBFD7347680000000
  %5832 = fmul fast float %5831, %5827
  %5833 = fmul fast float %5832, %5824
  br label %5834

; <label>:5834                                    ; preds = %5805, %5757
  %5835 = phi float [ %5820, %5805 ], [ 0.000000e+00, %5757 ]
  %5836 = phi float [ %5821, %5805 ], [ 0.000000e+00, %5757 ]
  %5837 = phi float [ %5822, %5805 ], [ 0.000000e+00, %5757 ]
  %5838 = phi float [ %5829, %5805 ], [ 0.000000e+00, %5757 ]
  %5839 = phi float [ %5833, %5805 ], [ 0.000000e+00, %5757 ]
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fmul fast float %5840, 0x3FDF454380000000
  %5842 = fmul fast float %5840, %5840
  %5843 = fmul fast float %5842, 0x3FEE471020000000
  %5844 = fadd fast float %5843, 0xBFD42F6020000000
  %5845 = fmul fast float %5800, 0x3FD20DD760000000
  %5846 = fmul fast float %5844, %5839
  %5847 = fadd fast float %5846, %5845
  %5848 = fmul fast float %5841, %5838
  %5849 = fadd fast float %5847, %5848
  %5850 = fsub fast float %5847, %5848
  %5851 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5852 = fmul fast float %5851, 0x3FDF454380000000
  %5853 = fmul fast float %5851, %5851
  %5854 = fmul fast float %5853, 0x3FEE471020000000
  %5855 = fadd fast float %5854, 0xBFD42F6020000000
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5838, float %5839, float 0x3FD20DD760000000, float %5852, float %5855)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5858 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fcmp fast oeq float %5858, 0.000000e+00
  %5860 = fcmp fast oeq float %5857, 0.000000e+00
  %5861 = or i1 %5860, %5859
  br i1 %5861, label %5891, label %5862

; <label>:5862                                    ; preds = %5834
  %5863 = fsub fast float -0.000000e+00, %77
  %5864 = fsub fast float -0.000000e+00, %75
  %5865 = call float @dx.op.unary.f32(i32 24, float %5858)  ; Sqrt(value)
  %5866 = fdiv fast float %5865, %5857
  %5867 = fcmp fast ogt float %5866, 0x3FFB6F8900000000
  %5868 = select i1 %5867, float 0x3FFB6F8900000000, float %5866
  %5869 = fmul fast float %5868, 0x3FE8A23460000000
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = call float @dx.op.binary.f32(i32 35, float %5868, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5872 = fmul fast float %5870, %5857
  %5873 = fmul fast float %5871, 0x3FF279A740000000
  %5874 = fadd fast float %5873, -1.000000e+00
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5863, float %5864, float %76, float %5863, float %5864, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.unary.f32(i32 25, float %5875)  ; Rsqrt(value)
  %5877 = fmul fast float %5876, %5863
  %5878 = fmul fast float %5876, %5864
  %5879 = fmul fast float %5876, %76
  %5880 = fmul fast float %5874, %5874
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fmul fast float %5871, 0x40005F8BE0000000
  %5883 = fsub fast float 0x400C5BF8A0000000, %5882
  %5884 = fdiv fast float %5872, %5883
  %5885 = fmul fast float %5884, 0x3FEE31C3C0000000
  %5886 = fmul fast float %5885, %5881
  %5887 = fmul fast float %5871, 0x3FDACB7480000000
  %5888 = fadd fast float %5887, 0xBFD7347680000000
  %5889 = fmul fast float %5888, %5884
  %5890 = fmul fast float %5889, %5881
  br label %5891

; <label>:5891                                    ; preds = %5862, %5834
  %5892 = phi float [ %5877, %5862 ], [ 0.000000e+00, %5834 ]
  %5893 = phi float [ %5878, %5862 ], [ 0.000000e+00, %5834 ]
  %5894 = phi float [ %5879, %5862 ], [ 0.000000e+00, %5834 ]
  %5895 = phi float [ %5886, %5862 ], [ 0.000000e+00, %5834 ]
  %5896 = phi float [ %5890, %5862 ], [ 0.000000e+00, %5834 ]
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, 0x3FDF454380000000
  %5899 = fmul fast float %5897, %5897
  %5900 = fmul fast float %5899, 0x3FEE471020000000
  %5901 = fadd fast float %5900, 0xBFD42F6020000000
  %5902 = fmul fast float %5857, 0x3FD20DD760000000
  %5903 = fmul fast float %5901, %5896
  %5904 = fadd fast float %5903, %5902
  %5905 = fmul fast float %5898, %5895
  %5906 = fadd fast float %5904, %5905
  %5907 = fsub fast float %5904, %5905
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = fmul fast float %5908, 0x3FDF454380000000
  %5910 = fmul fast float %5908, %5908
  %5911 = fmul fast float %5910, 0x3FEE471020000000
  %5912 = fadd fast float %5911, 0xBFD42F6020000000
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5857, float %5895, float %5896, float 0x3FD20DD760000000, float %5909, float %5912)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5915 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5916 = fcmp fast oeq float %5915, 0.000000e+00
  %5917 = fcmp fast oeq float %5914, 0.000000e+00
  %5918 = or i1 %5917, %5916
  br i1 %5918, label %5948, label %5919

; <label>:5919                                    ; preds = %5891
  %5920 = fsub fast float -0.000000e+00, %73
  %5921 = fsub fast float -0.000000e+00, %71
  %5922 = call float @dx.op.unary.f32(i32 24, float %5915)  ; Sqrt(value)
  %5923 = fdiv fast float %5922, %5914
  %5924 = fcmp fast ogt float %5923, 0x3FFB6F8900000000
  %5925 = select i1 %5924, float 0x3FFB6F8900000000, float %5923
  %5926 = fmul fast float %5925, 0x3FE8A23460000000
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5925, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5929 = fmul fast float %5927, %5914
  %5930 = fmul fast float %5928, 0x3FF279A740000000
  %5931 = fadd fast float %5930, -1.000000e+00
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %72, float %5920, float %5921, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.unary.f32(i32 25, float %5932)  ; Rsqrt(value)
  %5934 = fmul fast float %5933, %5920
  %5935 = fmul fast float %5933, %5921
  %5936 = fmul fast float %5933, %72
  %5937 = fmul fast float %5931, %5931
  %5938 = fsub fast float 1.000000e+00, %5937
  %5939 = fmul fast float %5928, 0x40005F8BE0000000
  %5940 = fsub fast float 0x400C5BF8A0000000, %5939
  %5941 = fdiv fast float %5929, %5940
  %5942 = fmul fast float %5941, 0x3FEE31C3C0000000
  %5943 = fmul fast float %5942, %5938
  %5944 = fmul fast float %5928, 0x3FDACB7480000000
  %5945 = fadd fast float %5944, 0xBFD7347680000000
  %5946 = fmul fast float %5945, %5941
  %5947 = fmul fast float %5946, %5938
  br label %5948

; <label>:5948                                    ; preds = %5919, %5891
  %5949 = phi float [ %5934, %5919 ], [ 0.000000e+00, %5891 ]
  %5950 = phi float [ %5935, %5919 ], [ 0.000000e+00, %5891 ]
  %5951 = phi float [ %5936, %5919 ], [ 0.000000e+00, %5891 ]
  %5952 = phi float [ %5943, %5919 ], [ 0.000000e+00, %5891 ]
  %5953 = phi float [ %5947, %5919 ], [ 0.000000e+00, %5891 ]
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5950, float %5951, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = fmul fast float %5954, 0x3FDF454380000000
  %5956 = fmul fast float %5954, %5954
  %5957 = fmul fast float %5956, 0x3FEE471020000000
  %5958 = fadd fast float %5957, 0xBFD42F6020000000
  %5959 = fmul fast float %5914, 0x3FD20DD760000000
  %5960 = fmul fast float %5958, %5953
  %5961 = fadd fast float %5960, %5959
  %5962 = fmul fast float %5955, %5952
  %5963 = fadd fast float %5961, %5962
  %5964 = fsub fast float %5961, %5962
  %5965 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5950, float %5951, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5966 = fmul fast float %5965, 0x3FDF454380000000
  %5967 = fmul fast float %5965, %5965
  %5968 = fmul fast float %5967, 0x3FEE471020000000
  %5969 = fadd fast float %5968, 0xBFD42F6020000000
  %5970 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5952, float %5953, float 0x3FD20DD760000000, float %5966, float %5969)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = call float @dx.op.binary.f32(i32 35, float %5849, float 0.000000e+00)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 35, float %5906, float 0.000000e+00)  ; FMax(a,b)
  %5973 = call float @dx.op.binary.f32(i32 35, float %5963, float 0.000000e+00)  ; FMax(a,b)
  %5974 = call float @dx.op.binary.f32(i32 35, float %5850, float 0.000000e+00)  ; FMax(a,b)
  %5975 = call float @dx.op.binary.f32(i32 35, float %5907, float 0.000000e+00)  ; FMax(a,b)
  %5976 = call float @dx.op.binary.f32(i32 35, float %5964, float 0.000000e+00)  ; FMax(a,b)
  %5977 = call float @dx.op.binary.f32(i32 35, float %5856, float 0.000000e+00)  ; FMax(a,b)
  %5978 = call float @dx.op.binary.f32(i32 35, float %5913, float 0.000000e+00)  ; FMax(a,b)
  %5979 = call float @dx.op.binary.f32(i32 35, float %5970, float 0.000000e+00)  ; FMax(a,b)
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = call float @dx.op.binary.f32(i32 36, float %5761, float %5981)  ; FMin(a,b)
  %5983 = fmul fast float %5982, %5782
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = bitcast float %5984 to i32
  %5986 = sub nsw i32 2129859010, %5985
  %5987 = bitcast i32 %5986 to float
  %5988 = call float @dx.op.binary.f32(i32 36, float %5762, float %5981)  ; FMin(a,b)
  %5989 = fmul fast float %5988, %5782
  %5990 = fsub fast float 1.000000e+00, %5989
  %5991 = bitcast float %5990 to i32
  %5992 = sub nsw i32 2129859010, %5991
  %5993 = bitcast i32 %5992 to float
  %5994 = call float @dx.op.binary.f32(i32 36, float %5763, float %5981)  ; FMin(a,b)
  %5995 = fmul fast float %5994, %5782
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sub nsw i32 2129859010, %5997
  %5999 = bitcast i32 %5998 to float
  %6000 = fmul fast float %5971, %5781
  %6001 = fmul fast float %6000, %5987
  %6002 = fmul fast float %5972, %5781
  %6003 = fmul fast float %6002, %5993
  %6004 = fmul fast float %5973, %5781
  %6005 = fmul fast float %6004, %5999
  %6006 = call float @dx.op.binary.f32(i32 36, float %5758, float %5981)  ; FMin(a,b)
  %6007 = fmul fast float %6006, %5782
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = bitcast float %6008 to i32
  %6010 = sub nsw i32 2129859010, %6009
  %6011 = bitcast i32 %6010 to float
  %6012 = call float @dx.op.binary.f32(i32 36, float %5759, float %5981)  ; FMin(a,b)
  %6013 = fmul fast float %6012, %5782
  %6014 = fsub fast float 1.000000e+00, %6013
  %6015 = bitcast float %6014 to i32
  %6016 = sub nsw i32 2129859010, %6015
  %6017 = bitcast i32 %6016 to float
  %6018 = call float @dx.op.binary.f32(i32 36, float %5770, float %5981)  ; FMin(a,b)
  %6019 = fmul fast float %6018, %5782
  %6020 = fsub fast float 1.000000e+00, %6019
  %6021 = bitcast float %6020 to i32
  %6022 = sub nsw i32 2129859010, %6021
  %6023 = bitcast i32 %6022 to float
  %6024 = fmul fast float %5977, %5781
  %6025 = fmul fast float %6024, %6011
  %6026 = fmul fast float %5978, %5781
  %6027 = fmul fast float %6026, %6017
  %6028 = fmul fast float %5979, %5781
  %6029 = fmul fast float %6028, %6023
  %6030 = call float @dx.op.dot3.f32(i32 55, float %6001, float %6003, float %6005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = select i1 %259, float 0.000000e+00, float %6001
  %6032 = select i1 %259, float %6030, float %6003
  %6033 = select i1 %259, float 0.000000e+00, float %6005
  %6034 = call float @dx.op.dot3.f32(i32 55, float %5974, float %5975, float %5976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6035 = select i1 %259, float 0.000000e+00, float %5974
  %6036 = select i1 %259, float %6034, float %5975
  %6037 = select i1 %259, float 0.000000e+00, float %5976
  %6038 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6027, float %6029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = select i1 %259, float 0.000000e+00, float %6025
  %6040 = select i1 %259, float %6038, float %6027
  %6041 = select i1 %259, float 0.000000e+00, float %6029
  %6042 = fmul fast float %4460, %4460
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = fmul fast float %5772, 9.843750e-01
  %6045 = fmul fast float %5767, 9.843750e-01
  %6046 = fadd fast float %6044, 7.812500e-03
  %6047 = fadd fast float %6045, 7.812500e-03
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %6046, float %6047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.ResRet.f32 %6048, 3
  %6053 = fsub fast float 1.000000e+00, %6043
  %6054 = fsub fast float %6051, %6049
  %6055 = fsub fast float %6052, %6050
  %6056 = fmul fast float %6054, %6053
  %6057 = fmul fast float %6055, %6053
  %6058 = fadd fast float %6056, %6049
  %6059 = fadd fast float %6057, %6050
  %6060 = fmul fast float %6058, %5758
  %6061 = fmul fast float %6058, %5759
  %6062 = fmul fast float %6058, %5770
  %6063 = fadd fast float %6060, %6059
  %6064 = fadd fast float %6061, %6059
  %6065 = fadd fast float %6062, %6059
  %6066 = fcmp fast ogt float %5123, 0.000000e+00
  br i1 %6066, label %6067, label %6093

; <label>:6067                                    ; preds = %5948
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %5772, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fadd fast float %6070, -5.000000e-01
  %6074 = fadd fast float %6071, -5.000000e-01
  %6075 = fsub fast float 1.000000e+00, %5758
  %6076 = fsub fast float 1.000000e+00, %5759
  %6077 = fsub fast float 1.000000e+00, %5770
  %6078 = fmul fast float %5758, 4.000000e+00
  %6079 = fmul fast float %6078, %6075
  %6080 = fmul fast float %6079, %6072
  %6081 = fmul fast float %5759, 4.000000e+00
  %6082 = fmul fast float %6081, %6076
  %6083 = fmul fast float %6082, %6073
  %6084 = fmul fast float %5770, 4.000000e+00
  %6085 = fmul fast float %6084, %6077
  %6086 = fmul fast float %6085, %6074
  %6087 = fadd fast float %6080, %6063
  %6088 = fadd fast float %6083, %6064
  %6089 = fadd fast float %6086, %6065
  %6090 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6091 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6092 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  br label %6093

; <label>:6093                                    ; preds = %6067, %5948
  %6094 = phi float [ %6090, %6067 ], [ %6063, %5948 ]
  %6095 = phi float [ %6091, %6067 ], [ %6064, %5948 ]
  %6096 = phi float [ %6092, %6067 ], [ %6065, %5948 ]
  %6097 = call float @dx.op.binary.f32(i32 35, float %6095, float %6096)  ; FMax(a,b)
  %6098 = call float @dx.op.binary.f32(i32 35, float %6094, float %6097)  ; FMax(a,b)
  %6099 = fsub fast float 1.000000e+00, %6098
  %6100 = fmul fast float %6098, %5767
  %6101 = fadd fast float %6100, %5767
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6105 = fmul fast float %6101, %6103
  %6106 = fadd fast float %6105, %6104
  %6107 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6108 = fsub fast float 1.000000e+00, %5793
  %6109 = fadd fast float %6108, %6107
  %6110 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6111 = fcmp fast olt float %6110, 1.000000e+00
  br i1 %6111, label %6112, label %6694

; <label>:6112                                    ; preds = %6093
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6116 = fmul fast float %6114, %110
  %6117 = fmul fast float %6115, %111
  %6118 = fptoui float %6116 to i32
  %6119 = fptoui float %6117 to i32
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 0
  %6122 = extractvalue %dx.types.CBufRet.f32 %6120, 2
  %6123 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6124 = fadd fast float %98, -4.000000e+00
  %6125 = call float @dx.op.binary.f32(i32 35, float %6124, float 0.000000e+00)  ; FMax(a,b)
  %6126 = fadd fast float %6125, %6121
  %6127 = fmul fast float %6126, %6122
  %6128 = call float @dx.op.unary.f32(i32 23, float %6127)  ; Log(value)
  %6129 = fmul fast float %6128, %6123
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = fmul fast float %6129, %6131
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.i32 %6134, 1
  %6136 = add i32 %6135, -1
  %6137 = uitofp i32 %6135 to float
  %6138 = fmul fast float %6137, %6133
  %6139 = fptoui float %6138 to i32
  %6140 = call i32 @dx.op.binary.i32(i32 40, i32 %6139, i32 %6136)  ; UMin(a,b)
  %6141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.i32 %6141, 2
  %6143 = extractvalue %dx.types.CBufRet.i32 %6141, 3
  %6144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6119, i32 %6142, i32 %6118)  ; UMad(a,b,c)
  %6145 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6140, i32 %6143, i32 %6144)  ; UMad(a,b,c)
  %6146 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6147 = fptoui float %6146 to i32
  %6148 = lshr i32 %6147, 5
  %6149 = call i32 @dx.op.binary.i32(i32 40, i32 %6148, i32 8191)  ; UMin(a,b)
  %6150 = fsub fast float %5578, %167
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  %6153 = fcmp fast ogt float %5780, 0.000000e+00
  %6154 = and i1 %6153, %6152
  br i1 %6154, label %6155, label %6184

; <label>:6155                                    ; preds = %6112
  %6156 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = call float @dx.op.binary.f32(i32 35, float %6156, float -1.000000e+00)  ; FMax(a,b)
  %6158 = call float @dx.op.binary.f32(i32 36, float %6157, float 1.000000e+00)  ; FMin(a,b)
  %6159 = fmul fast float %6158, %6158
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = fmul fast float %6160, 0x3FFC6E2300000000
  %6162 = fsub fast float 1.000000e+00, %6161
  %6163 = fcmp fast ogt float %6162, 0.000000e+00
  %6164 = call float @dx.op.unary.f32(i32 24, float %6162)  ; Sqrt(value)
  %6165 = fsub fast float 1.000000e+00, %6164
  %6166 = call float @dx.op.unary.f32(i32 23, float %6165)  ; Log(value)
  %6167 = fmul fast float %6166, 5.000000e+00
  %6168 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6169 = fmul fast float %6168, 0x3FEF591A60000000
  %6170 = fadd fast float %6169, 0x3F94DCB540000000
  %6171 = select i1 %6163, float %6170, float 1.000000e+00
  %6172 = fcmp fast oge float %6171, 1.000000e+00
  %6173 = fmul fast float %6156, 2.000000e+00
  %6174 = fadd fast float %6173, %5780
  %6175 = select i1 %6172, float %6174, float %5780
  %6176 = fsub fast float %6175, %5780
  %6177 = fmul fast float %6176, %6151
  %6178 = fadd fast float %6177, %5780
  %6179 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %6178, float %5778, float %5779, float %6178)  ; Dot3(ax,ay,az,bx,by,bz)
  %6180 = call float @dx.op.unary.f32(i32 25, float %6179)  ; Rsqrt(value)
  %6181 = fmul fast float %6180, %5778
  %6182 = fmul fast float %6180, %5779
  %6183 = fmul fast float %6178, %6180
  br label %6184

; <label>:6184                                    ; preds = %6155, %6112
  %6185 = phi float [ %6181, %6155 ], [ %5778, %6112 ]
  %6186 = phi float [ %6182, %6155 ], [ %5779, %6112 ]
  %6187 = phi float [ %6183, %6155 ], [ %5780, %6112 ]
  %6188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.i32 %6188, 2
  %6190 = add nsw i32 %6189, -1
  %6191 = call i32 @dx.op.binary.i32(i32 37, i32 %6190, i32 0)  ; IMax(a,b)
  %6192 = shl i32 %6149, 2
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6192, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = lshr i32 %6194, 16
  %6196 = and i32 %6194, 65535
  %6197 = lshr i32 %6194, 21
  %6198 = lshr i32 %6196, 5
  %6199 = call i32 @dx.op.binary.i32(i32 40, i32 %6198, i32 %6191)  ; UMin(a,b)
  %6200 = icmp ugt i32 %6197, %6199
  br i1 %6200, label %6582, label %6201

; <label>:6201                                    ; preds = %6184
  br label %6202

; <label>:6202                                    ; preds = %6571, %6201
  %6203 = phi float [ %6572, %6571 ], [ 0.000000e+00, %6201 ]
  %6204 = phi float [ %6573, %6571 ], [ 0.000000e+00, %6201 ]
  %6205 = phi float [ %6574, %6571 ], [ 0.000000e+00, %6201 ]
  %6206 = phi float [ %6575, %6571 ], [ 1.000000e+00, %6201 ]
  %6207 = phi i32 [ %6579, %6571 ], [ %6197, %6201 ]
  %6208 = phi float [ %6576, %6571 ], [ 0.000000e+00, %6201 ]
  %6209 = phi float [ %6577, %6571 ], [ 0.000000e+00, %6201 ]
  %6210 = phi float [ %6578, %6571 ], [ 0.000000e+00, %6201 ]
  %6211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.i32 %6211, 2
  %6213 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6145, i32 %6212, i32 %6207)  ; UMad(a,b,c)
  %6214 = shl i32 %6213, 2
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = shl i32 %6207, 5
  %6218 = sub nsw i32 %6195, %6217
  %6219 = call i32 @dx.op.binary.i32(i32 37, i32 %6218, i32 0)  ; IMax(a,b)
  %6220 = call i32 @dx.op.binary.i32(i32 38, i32 %6219, i32 31)  ; IMin(a,b)
  %6221 = sub nsw i32 1, %6195
  %6222 = add nsw i32 %6221, %6196
  %6223 = call i32 @dx.op.binary.i32(i32 37, i32 %6222, i32 0)  ; IMax(a,b)
  %6224 = call i32 @dx.op.binary.i32(i32 38, i32 %6223, i32 32)  ; IMin(a,b)
  %6225 = and i32 %6224, 31
  %6226 = shl i32 -1, %6225
  %6227 = xor i32 %6226, -1
  %6228 = and i32 %6220, 31
  %6229 = shl i32 %6227, %6228
  %6230 = icmp eq i32 %6224, 32
  %6231 = select i1 %6230, i32 -1, i32 %6229
  %6232 = and i32 %6231, %6216
  %6233 = icmp eq i32 %6232, 0
  br i1 %6233, label %6571, label %6234

; <label>:6234                                    ; preds = %6202
  br label %6235

; <label>:6235                                    ; preds = %6345, %6234
  %6236 = phi float [ %6346, %6345 ], [ %6203, %6234 ]
  %6237 = phi float [ %6347, %6345 ], [ %6204, %6234 ]
  %6238 = phi float [ %6348, %6345 ], [ %6205, %6234 ]
  %6239 = phi float [ %6349, %6345 ], [ %6206, %6234 ]
  %6240 = phi i32 [ %6248, %6345 ], [ %6232, %6234 ]
  %6241 = phi float [ %6350, %6345 ], [ %6208, %6234 ]
  %6242 = phi float [ %6351, %6345 ], [ %6209, %6234 ]
  %6243 = phi float [ %6352, %6345 ], [ %6210, %6234 ]
  %6244 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6240)  ; FirstbitLo(value)
  %6245 = add i32 %6244, %6217
  %6246 = and i32 %6244, 31
  %6247 = shl i32 1, %6246
  %6248 = xor i32 %6247, %6240
  %6249 = mul i32 %6245, 72
  %6250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.ResRet.f32 %6250, 2
  %6254 = add i32 %6249, 12
  %6255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.i32 %6255, 0
  %6257 = add i32 %6249, 16
  %6258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6257, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.ResRet.f32 %6258, 2
  %6262 = add i32 %6249, 28
  %6263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6262, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = add i32 %6249, 32
  %6266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.ResRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.ResRet.f32 %6266, 2
  %6270 = extractvalue %dx.types.ResRet.f32 %6266, 3
  %6271 = add i32 %6249, 48
  %6272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = add i32 %6249, 56
  %6276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6275, i32 undef)  ; BufferLoad(srv,index,wot)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.ResRet.f32 %6276, 1
  %6279 = add i32 %6249, 64
  %6280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %6279, i32 undef)  ; BufferLoad(srv,index,wot)
  %6281 = extractvalue %dx.types.ResRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.ResRet.f32 %6280, 1
  %6283 = mul i32 %6245, 60
  %6284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6283, i32 undef)  ; BufferLoad(srv,index,wot)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.ResRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.ResRet.f32 %6284, 2
  %6288 = add i32 %6283, 12
  %6289 = add i32 %6283, 48
  %6290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6289, i32 undef)  ; BufferLoad(srv,index,wot)
  %6291 = extractvalue %dx.types.ResRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.ResRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.ResRet.f32 %6290, 2
  %6294 = and i32 %6256, 32767
  %6295 = bitcast float %6251 to i32
  %6296 = icmp eq i32 %6295, -1
  %6297 = bitcast float %6252 to i32
  %6298 = and i32 %6256, 32768
  %6299 = icmp ne i32 %6298, 0
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6304 = fsub fast float %6285, %6301
  %6305 = fsub fast float %6286, %6302
  %6306 = fsub fast float %6287, %6303
  %6307 = fsub fast float %165, %6304
  %6308 = fsub fast float %166, %6305
  %6309 = fsub fast float %167, %6306
  %6310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6288, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.ResRet.f32 %6310, 2
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = add i32 %6283, 24
  %6316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6315, i32 undef)  ; BufferLoad(srv,index,wot)
  %6317 = extractvalue %dx.types.ResRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.ResRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.ResRet.f32 %6316, 2
  %6320 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6317, float %6318, float %6319)  ; Dot3(ax,ay,az,bx,by,bz)
  %6321 = add i32 %6283, 36
  %6322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6321, i32 undef)  ; BufferLoad(srv,index,wot)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6323, float %6324, float %6325)  ; Dot3(ax,ay,az,bx,by,bz)
  %6327 = call float @dx.op.unary.f32(i32 6, float %6314)  ; FAbs(value)
  %6328 = call float @dx.op.unary.f32(i32 6, float %6320)  ; FAbs(value)
  %6329 = call float @dx.op.unary.f32(i32 6, float %6326)  ; FAbs(value)
  %6330 = fsub fast float %6291, %6327
  %6331 = fsub fast float %6292, %6328
  %6332 = fsub fast float %6293, %6329
  %6333 = fmul fast float %6330, %6259
  %6334 = fmul fast float %6331, %6260
  %6335 = fmul fast float %6332, %6261
  %6336 = call float @dx.op.binary.f32(i32 36, float %6334, float %6335)  ; FMin(a,b)
  %6337 = call float @dx.op.binary.f32(i32 36, float %6333, float %6336)  ; FMin(a,b)
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6339 = call float @dx.op.binary.f32(i32 36, float %6239, float %6338)  ; FMin(a,b)
  %6340 = uitofp i1 %6299 to float
  %6341 = fadd fast float %6151, 1.000000e+00
  %6342 = fsub fast float %6341, %6340
  %6343 = fmul fast float %6339, %6342
  %6344 = fcmp fast ogt float %6343, 0.000000e+00
  br i1 %6344, label %6354, label %6345

; <label>:6345                                    ; preds = %6496, %6235
  %6346 = phi float [ %6560, %6496 ], [ %6236, %6235 ]
  %6347 = phi float [ %6561, %6496 ], [ %6237, %6235 ]
  %6348 = phi float [ %6562, %6496 ], [ %6238, %6235 ]
  %6349 = phi float [ %6569, %6496 ], [ %6239, %6235 ]
  %6350 = phi float [ %6566, %6496 ], [ %6241, %6235 ]
  %6351 = phi float [ %6567, %6496 ], [ %6242, %6235 ]
  %6352 = phi float [ %6568, %6496 ], [ %6243, %6235 ]
  %6353 = icmp eq i32 %6240, %6247
  br i1 %6353, label %6570, label %6235

; <label>:6354                                    ; preds = %6235
  br i1 %6296, label %6412, label %6355

; <label>:6355                                    ; preds = %6354
  %6356 = fsub fast float -0.000000e+00, %6311
  %6357 = fsub fast float -0.000000e+00, %6312
  %6358 = fsub fast float -0.000000e+00, %6313
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = fsub fast float -0.000000e+00, %6359
  %6361 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6362 = fadd fast float %6361, %6274
  %6363 = fadd fast float %6273, %6361
  %6364 = fsub fast float -0.000000e+00, %6363
  %6365 = fcmp ogt float %6359, -0.000000e+00
  %6366 = select i1 %6365, float %6364, float %6362
  %6367 = call float @dx.op.unary.f32(i32 6, float %6360)  ; FAbs(value)
  %6368 = fdiv fast float 1.000000e+00, %6367
  %6369 = fmul fast float %6366, %6368
  %6370 = call float @dx.op.binary.f32(i32 35, float %6369, float 0.000000e+00)  ; FMax(a,b)
  %6371 = fsub fast float -0.000000e+00, %6317
  %6372 = fsub fast float -0.000000e+00, %6318
  %6373 = fsub fast float -0.000000e+00, %6319
  %6374 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6371, float %6372, float %6373)  ; Dot3(ax,ay,az,bx,by,bz)
  %6375 = fsub fast float -0.000000e+00, %6374
  %6376 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6371, float %6372, float %6373)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = fadd fast float %6376, %6278
  %6378 = fadd fast float %6277, %6376
  %6379 = fsub fast float -0.000000e+00, %6378
  %6380 = fcmp ogt float %6374, -0.000000e+00
  %6381 = select i1 %6380, float %6379, float %6377
  %6382 = call float @dx.op.unary.f32(i32 6, float %6375)  ; FAbs(value)
  %6383 = fdiv fast float 1.000000e+00, %6382
  %6384 = fmul fast float %6381, %6383
  %6385 = call float @dx.op.binary.f32(i32 35, float %6384, float 0.000000e+00)  ; FMax(a,b)
  %6386 = fsub fast float -0.000000e+00, %6323
  %6387 = fsub fast float -0.000000e+00, %6324
  %6388 = fsub fast float -0.000000e+00, %6325
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6185, float %6186, float %6187, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = fsub fast float -0.000000e+00, %6389
  %6391 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6392 = fadd fast float %6391, %6282
  %6393 = fadd fast float %6281, %6391
  %6394 = fsub fast float -0.000000e+00, %6393
  %6395 = fcmp ogt float %6389, -0.000000e+00
  %6396 = select i1 %6395, float %6394, float %6392
  %6397 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6398 = fdiv fast float 1.000000e+00, %6397
  %6399 = fmul fast float %6396, %6398
  %6400 = call float @dx.op.binary.f32(i32 35, float %6399, float 0.000000e+00)  ; FMax(a,b)
  %6401 = call float @dx.op.binary.f32(i32 36, float %6385, float %6400)  ; FMin(a,b)
  %6402 = call float @dx.op.binary.f32(i32 36, float %6370, float %6401)  ; FMin(a,b)
  %6403 = fmul fast float %6402, %6185
  %6404 = fmul fast float %6402, %6186
  %6405 = fmul fast float %6402, %6187
  %6406 = fadd fast float %6403, %165
  %6407 = fadd fast float %6404, %166
  %6408 = fadd fast float %6405, %167
  %6409 = fsub fast float %6406, %6251
  %6410 = fsub fast float %6407, %6252
  %6411 = fsub fast float %6408, %6253
  br label %6419

; <label>:6412                                    ; preds = %6354
  %6413 = fmul fast float %6185, 8.096000e+03
  %6414 = fmul fast float %6186, 8.096000e+03
  %6415 = fmul fast float %6187, 8.096000e+03
  %6416 = fadd fast float %6413, %165
  %6417 = fadd fast float %6414, %166
  %6418 = fadd fast float %6415, %167
  br label %6419

; <label>:6419                                    ; preds = %6412, %6355
  %6420 = phi float [ %6185, %6412 ], [ %6409, %6355 ]
  %6421 = phi float [ %6186, %6412 ], [ %6410, %6355 ]
  %6422 = phi float [ %6187, %6412 ], [ %6411, %6355 ]
  %6423 = phi float [ %6416, %6412 ], [ %6406, %6355 ]
  %6424 = phi float [ %6417, %6412 ], [ %6407, %6355 ]
  %6425 = phi float [ %6418, %6412 ], [ %6408, %6355 ]
  %6426 = fcmp fast olt float %6270, 1.000000e+00
  br i1 %6426, label %6427, label %6458, !dx.controlflow.hints !101

; <label>:6427                                    ; preds = %6419
  %6428 = fmul fast float %6422, %6268
  %6429 = fmul fast float %6421, %6269
  %6430 = fsub fast float %6428, %6429
  %6431 = fmul fast float %6420, %6269
  %6432 = fmul fast float %6422, %6267
  %6433 = fsub fast float %6431, %6432
  %6434 = fmul fast float %6421, %6267
  %6435 = fmul fast float %6420, %6268
  %6436 = fsub fast float %6434, %6435
  %6437 = fmul fast float %6430, 2.000000e+00
  %6438 = fmul fast float %6433, 2.000000e+00
  %6439 = fmul fast float %6436, 2.000000e+00
  %6440 = fmul fast float %6437, %6270
  %6441 = fmul fast float %6438, %6270
  %6442 = fmul fast float %6439, %6270
  %6443 = fmul fast float %6439, %6268
  %6444 = fmul fast float %6438, %6269
  %6445 = fmul fast float %6437, %6269
  %6446 = fmul fast float %6439, %6267
  %6447 = fmul fast float %6438, %6267
  %6448 = fmul fast float %6437, %6268
  %6449 = fadd fast float %6443, %6420
  %6450 = fadd fast float %6449, %6440
  %6451 = fsub fast float %6450, %6444
  %6452 = fsub fast float %6421, %6446
  %6453 = fadd fast float %6452, %6441
  %6454 = fadd fast float %6453, %6445
  %6455 = fadd fast float %6442, %6422
  %6456 = fsub fast float %6455, %6448
  %6457 = fadd fast float %6456, %6447
  br label %6458

; <label>:6458                                    ; preds = %6427, %6419
  %6459 = phi float [ %6451, %6427 ], [ %6420, %6419 ]
  %6460 = phi float [ %6454, %6427 ], [ %6421, %6419 ]
  %6461 = phi float [ %6457, %6427 ], [ %6422, %6419 ]
  br i1 %6296, label %6493, label %6462

; <label>:6462                                    ; preds = %6458
  %6463 = fmul fast float %5767, 0x400187C840000000
  %6464 = fadd fast float %6463, 0xC00EFC2120000000
  %6465 = fmul fast float %6464, %5767
  %6466 = fadd fast float %6465, 0x3FE5D16340000000
  %6467 = fmul fast float %6466, %5767
  %6468 = fadd fast float %6467, 1.000000e+00
  %6469 = call float @dx.op.unary.f32(i32 7, float %6468)  ; Saturate(value)
  %6470 = fsub fast float %6423, %165
  %6471 = fsub fast float %6424, %166
  %6472 = fsub fast float %6425, %167
  %6473 = fsub fast float %6423, %6251
  %6474 = fsub fast float %6424, %6252
  %6475 = fsub fast float %6425, %6253
  %6476 = call float @dx.op.dot3.f32(i32 55, float %6470, float %6471, float %6472, float %6470, float %6471, float %6472)  ; Dot3(ax,ay,az,bx,by,bz)
  %6477 = call float @dx.op.dot3.f32(i32 55, float %6473, float %6474, float %6475, float %6473, float %6474, float %6475)  ; Dot3(ax,ay,az,bx,by,bz)
  %6478 = fadd fast float %6477, 0x3EE4F8B580000000
  %6479 = fdiv fast float %6476, %6478
  %6480 = bitcast float %6479 to i32
  %6481 = ashr i32 %6480, 1
  %6482 = add nsw i32 %6481, 532487669
  %6483 = bitcast i32 %6482 to float
  %6484 = fmul fast float %6483, %6469
  %6485 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6486 = fmul fast float %6485, 0x4009981AE0000000
  %6487 = fsub fast float 0x40111BBD80000000, %6486
  %6488 = fmul fast float %6487, %6485
  %6489 = fadd fast float %6488, 0xC0009F6020000000
  %6490 = fmul fast float %6489, %6485
  %6491 = fadd fast float %6490, 1.000000e+00
  %6492 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  br label %6496

; <label>:6493                                    ; preds = %6458
  %6494 = icmp ne i32 %6297, -1
  %6495 = zext i1 %6494 to i32
  br label %6496

; <label>:6496                                    ; preds = %6493, %6462
  %6497 = phi float [ %5767, %6493 ], [ %6492, %6462 ]
  %6498 = phi i32 [ %6495, %6493 ], [ 0, %6462 ]
  %6499 = fmul float %6497, 5.000000e+00
  %6500 = fsub float 5.000000e+00, %6499
  %6501 = icmp ne i32 %6498, 0
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6504 = fadd fast float %6503, %6500
  %6505 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6504)  ; FMax(a,b)
  %6506 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6507 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6508 = fadd fast float %6507, %6506
  %6509 = call float @dx.op.unary.f32(i32 6, float %6461)  ; FAbs(value)
  %6510 = fadd fast float %6508, %6509
  %6511 = fcmp fast oeq float %6510, 0.000000e+00
  %6512 = fdiv fast float 1.000000e+00, %6510
  %6513 = select i1 %6511, float 1.000000e+00, float %6512
  %6514 = fmul fast float %6513, %6459
  %6515 = fmul fast float %6513, %6460
  %6516 = call float @dx.op.unary.f32(i32 6, float %6515)  ; FAbs(value)
  %6517 = call float @dx.op.unary.f32(i32 6, float %6514)  ; FAbs(value)
  %6518 = fsub fast float 1.000000e+00, %6516
  %6519 = fsub fast float 1.000000e+00, %6517
  %6520 = fcmp fast oge float %6514, 0.000000e+00
  %6521 = fcmp fast oge float %6515, 0.000000e+00
  %6522 = select i1 %6520, float 1.000000e+00, float -1.000000e+00
  %6523 = select i1 %6521, float 1.000000e+00, float -1.000000e+00
  %6524 = fcmp fast ole float %6461, 0.000000e+00
  %6525 = fmul fast float %6522, %6518
  %6526 = fmul fast float %6523, %6519
  %6527 = select i1 %6524, float %6525, float %6514
  %6528 = select i1 %6524, float %6526, float %6515
  %6529 = fmul fast float %6527, 5.000000e-01
  %6530 = fmul fast float %6528, 5.000000e-01
  %6531 = fadd fast float %6529, 5.000000e-01
  %6532 = fadd fast float %6530, 5.000000e-01
  %6533 = uitofp i32 %6294 to float
  %6534 = call float @dx.op.binary.f32(i32 36, float %6505, float 3.000000e+00)  ; FMin(a,b)
  %6535 = fadd fast float %6534, 2.000000e+00
  %6536 = call float @dx.op.unary.f32(i32 21, float %6535)  ; Exp(value)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6538 = fmul fast float %6537, %6536
  %6539 = fmul fast float %6538, 2.000000e+00
  %6540 = fsub fast float 1.000000e+00, %6539
  %6541 = fmul fast float %6531, %6540
  %6542 = fmul fast float %6532, %6540
  %6543 = fadd fast float %6541, %6538
  %6544 = fadd fast float %6542, %6538
  %6545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %53, float %6543, float %6544, float %6533, float undef, i32 0, i32 0, i32 undef, float %6505)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6546 = extractvalue %dx.types.ResRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.ResRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.ResRet.f32 %6545, 2
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 3
  %6551 = fmul fast float %6550, %6264
  %6552 = call float @dx.op.binary.f32(i32 36, float %5799, float %6551)  ; FMin(a,b)
  %6553 = select i1 %6501, float %6552, float %6551
  %6554 = fmul fast float %6546, %6343
  %6555 = fmul fast float %6554, %6553
  %6556 = fmul fast float %6547, %6343
  %6557 = fmul fast float %6556, %6553
  %6558 = fmul fast float %6548, %6343
  %6559 = fmul fast float %6558, %6553
  %6560 = fadd fast float %6555, %6236
  %6561 = fadd fast float %6557, %6237
  %6562 = fadd fast float %6559, %6238
  %6563 = fmul fast float %6423, %6343
  %6564 = fmul fast float %6424, %6343
  %6565 = fmul fast float %6425, %6343
  %6566 = fadd fast float %6563, %6241
  %6567 = fadd fast float %6564, %6242
  %6568 = fadd fast float %6565, %6243
  %6569 = fsub fast float %6239, %6343
  br label %6345

; <label>:6570                                    ; preds = %6345
  br label %6571

; <label>:6571                                    ; preds = %6570, %6202
  %6572 = phi float [ %6203, %6202 ], [ %6346, %6570 ]
  %6573 = phi float [ %6204, %6202 ], [ %6347, %6570 ]
  %6574 = phi float [ %6205, %6202 ], [ %6348, %6570 ]
  %6575 = phi float [ %6206, %6202 ], [ %6349, %6570 ]
  %6576 = phi float [ %6208, %6202 ], [ %6350, %6570 ]
  %6577 = phi float [ %6209, %6202 ], [ %6351, %6570 ]
  %6578 = phi float [ %6210, %6202 ], [ %6352, %6570 ]
  %6579 = add i32 %6207, 1
  %6580 = icmp ugt i32 %6579, %6199
  br i1 %6580, label %6581, label %6202, !llvm.loop !102

; <label>:6581                                    ; preds = %6571
  br label %6582

; <label>:6582                                    ; preds = %6581, %6184
  %6583 = phi float [ 0.000000e+00, %6184 ], [ %6572, %6581 ]
  %6584 = phi float [ 0.000000e+00, %6184 ], [ %6573, %6581 ]
  %6585 = phi float [ 0.000000e+00, %6184 ], [ %6574, %6581 ]
  %6586 = phi float [ 0.000000e+00, %6184 ], [ %6576, %6581 ]
  %6587 = phi float [ 0.000000e+00, %6184 ], [ %6577, %6581 ]
  %6588 = phi float [ 0.000000e+00, %6184 ], [ %6578, %6581 ]
  %6589 = call float @dx.op.dot3.f32(i32 55, float %6583, float %6584, float %6585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6590 = select i1 %259, float 0.000000e+00, float %6583
  %6591 = select i1 %259, float %6589, float %6584
  %6592 = select i1 %259, float 0.000000e+00, float %6585
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6602 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 0
  %6605 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6606 = extractvalue %dx.types.CBufRet.f32 %6603, 2
  %6607 = extractvalue %dx.types.CBufRet.f32 %6603, 3
  %6608 = call float @dx.op.dot3.f32(i32 55, float %6604, float %6605, float %6606, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %6609 = call float @dx.op.dot3.f32(i32 55, float %6586, float %6587, float %6588, float %6604, float %6605, float %6606)  ; Dot3(ax,ay,az,bx,by,bz)
  %6610 = call float @dx.op.dot3.f32(i32 55, float %165, float %166, float %167, float %6604, float %6605, float %6606)  ; Dot3(ax,ay,az,bx,by,bz)
  %6611 = fadd fast float %5767, -1.000000e+00
  %6612 = fsub fast float %6609, %6610
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6615 = fmul fast float %6614, %6609
  %6616 = fdiv fast float 1.600000e+02, %6615
  %6617 = fmul fast float %6611, %6611
  %6618 = fmul fast float %6617, 0xBFB5B17960000000
  %6619 = fmul fast float %6618, %6612
  %6620 = fmul fast float %6619, %6616
  %6621 = call float @dx.op.unary.f32(i32 21, float %6620)  ; Exp(value)
  %6622 = fmul fast float %6621, 0x3FF04B2960000000
  %6623 = fsub fast float 0x3FF04B2960000000, %6622
  %6624 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6625 = fmul fast float %6624, 4.000000e+00
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6630 = fadd fast float %6627, %6586
  %6631 = fadd fast float %6628, %6587
  %6632 = fadd fast float %6629, %6588
  %6633 = fmul fast float %6630, %6594
  %6634 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6595, float %6633)  ; FMad(a,b,c)
  %6635 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6596, float %6634)  ; FMad(a,b,c)
  %6636 = fadd fast float %6635, %6597
  %6637 = fmul fast float %6630, %6599
  %6638 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6600, float %6637)  ; FMad(a,b,c)
  %6639 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6601, float %6638)  ; FMad(a,b,c)
  %6640 = fadd fast float %6639, %6602
  %6641 = fmul fast float %6630, %6604
  %6642 = call float @dx.op.tertiary.f32(i32 46, float %6631, float %6605, float %6641)  ; FMad(a,b,c)
  %6643 = call float @dx.op.tertiary.f32(i32 46, float %6632, float %6606, float %6642)  ; FMad(a,b,c)
  %6644 = fadd fast float %6643, %6607
  %6645 = fdiv fast float %6636, %6644
  %6646 = fdiv fast float %6640, %6644
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = extractvalue %dx.types.CBufRet.f32 %6647, 1
  %6650 = fmul fast float %6648, %6645
  %6651 = fmul fast float %6649, %6646
  %6652 = extractvalue %dx.types.CBufRet.f32 %6647, 2
  %6653 = extractvalue %dx.types.CBufRet.f32 %6647, 3
  %6654 = fadd fast float %6650, %6652
  %6655 = fadd fast float %6651, %6653
  %6656 = fmul fast float %6608, 8.000000e+00
  %6657 = call float @dx.op.unary.f32(i32 7, float %6656)  ; Saturate(value)
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 0
  %6660 = fmul fast float %6654, 2.000000e+00
  %6661 = fmul fast float %6655, 2.000000e+00
  %6662 = fadd fast float %6660, -1.000000e+00
  %6663 = fadd fast float %6661, -1.000000e+00
  %6664 = fmul fast float %6662, %6662
  %6665 = fsub fast float 1.000000e+00, %6664
  %6666 = call float @dx.op.unary.f32(i32 7, float %6665)  ; Saturate(value)
  %6667 = fmul fast float %6663, %6663
  %6668 = fsub fast float 1.000000e+00, %6667
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = fmul fast float %6659, %6666
  %6671 = fmul fast float %6670, %6669
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = fmul fast float %6672, %6657
  %6674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %53, float %6654, float %6655, float undef, float undef, i32 0, i32 0, i32 undef, float %6625)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = select i1 %259, float 0.000000e+00, float %6676
  %6679 = select i1 %259, float 0.000000e+00, float %6677
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6682 = fmul fast float %6681, %6675
  %6683 = fmul fast float %6678, %6681
  %6684 = fmul fast float %6679, %6681
  %6685 = fsub fast float %6682, %6590
  %6686 = fsub fast float %6683, %6591
  %6687 = fsub fast float %6684, %6592
  %6688 = fmul fast float %6685, %6673
  %6689 = fmul fast float %6686, %6673
  %6690 = fmul fast float %6687, %6673
  %6691 = fadd fast float %6688, %6590
  %6692 = fadd fast float %6689, %6591
  %6693 = fadd fast float %6690, %6592
  br label %6694

; <label>:6694                                    ; preds = %6582, %6093
  %6695 = phi float [ %6039, %6093 ], [ %6691, %6582 ]
  %6696 = phi float [ %6040, %6093 ], [ %6692, %6582 ]
  %6697 = phi float [ %6041, %6093 ], [ %6693, %6582 ]
  %6698 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6699 = fcmp fast ogt float %6698, 0x3E7FF19E20000000
  %6700 = fdiv fast float 1.000000e+00, %6698
  %6701 = select i1 %6699, float %6700, float 0.000000e+00
  %6702 = fmul fast float %6701, %5761
  %6703 = fmul fast float %6701, %5762
  %6704 = fmul fast float %6701, %5763
  %6705 = fadd fast float %6702, -1.000000e+00
  %6706 = fadd fast float %6703, -1.000000e+00
  %6707 = fadd fast float %6704, -1.000000e+00
  %6708 = fmul fast float %6705, 5.000000e-01
  %6709 = fmul fast float %6706, 5.000000e-01
  %6710 = fmul fast float %6707, 5.000000e-01
  %6711 = fadd fast float %6708, 1.000000e+00
  %6712 = fadd fast float %6709, 1.000000e+00
  %6713 = fadd fast float %6710, 1.000000e+00
  %6714 = call float @dx.op.binary.f32(i32 35, float %5772, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6715 = fdiv fast float %4460, %6714
  %6716 = fcmp fast olt float %5194, 1.270000e+02
  %6717 = fcmp fast olt float %5195, 1.270000e+02
  %6718 = fcmp fast olt float %5196, 1.270000e+02
  %6719 = fmul fast float %5194, 0xBFF7154760000000
  %6720 = fmul fast float %6719, %6715
  %6721 = fmul fast float %5195, 0xBFF7154760000000
  %6722 = fmul fast float %6721, %6715
  %6723 = fmul fast float %5196, 0xBFF7154760000000
  %6724 = fmul fast float %6723, %6715
  %6725 = call float @dx.op.unary.f32(i32 21, float %6720)  ; Exp(value)
  %6726 = call float @dx.op.unary.f32(i32 21, float %6722)  ; Exp(value)
  %6727 = call float @dx.op.unary.f32(i32 21, float %6724)  ; Exp(value)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6729 = call float @dx.op.unary.f32(i32 7, float %6726)  ; Saturate(value)
  %6730 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6731 = select i1 %6716, float %6728, float 0.000000e+00
  %6732 = select i1 %6717, float %6729, float 0.000000e+00
  %6733 = select i1 %6718, float %6730, float 0.000000e+00
  %6734 = fmul fast float %6731, %6099
  %6735 = fmul fast float %6732, %6099
  %6736 = fmul fast float %6733, %6099
  %6737 = fadd fast float %6734, -1.000000e+00
  %6738 = fadd fast float %6735, -1.000000e+00
  %6739 = fadd fast float %6736, -1.000000e+00
  %6740 = fmul fast float %6737, %5149
  %6741 = fmul fast float %6738, %5149
  %6742 = fmul fast float %6739, %5149
  %6743 = fmul fast float %6695, %6094
  %6744 = fmul fast float %6696, %6095
  %6745 = fmul fast float %6697, %6096
  %6746 = fsub fast float 1.000000e+00, %5772
  %6747 = bitcast float %6746 to i32
  %6748 = sitofp i32 %6747 to float
  %6749 = fmul fast float %6748, 5.000000e+00
  %6750 = fadd fast float %6749, 0xC1EFBF8940000000
  %6751 = fptosi float %6750 to i32
  %6752 = bitcast i32 %6751 to float
  %6753 = fmul fast float %6752, %5124
  %6754 = fmul fast float %6031, %6753
  %6755 = fmul fast float %6754, %6099
  %6756 = fmul fast float %6755, %6711
  %6757 = fmul fast float %6032, %6753
  %6758 = fmul fast float %6757, %6099
  %6759 = fmul fast float %6758, %6712
  %6760 = fmul fast float %6033, %6753
  %6761 = fmul fast float %6760, %6099
  %6762 = fmul fast float %6761, %6713
  %6763 = fadd fast float %6743, %5107
  %6764 = fadd fast float %6763, %6756
  %6765 = fmul fast float %6764, %5149
  %6766 = fadd fast float %6744, %5108
  %6767 = fadd fast float %6766, %6759
  %6768 = fmul fast float %6767, %5149
  %6769 = fadd fast float %6745, %5109
  %6770 = fadd fast float %6769, %6762
  %6771 = fmul fast float %6770, %5149
  %6772 = fmul fast float %5759, 0x4012D0A400000000
  %6773 = fadd fast float %6742, 1.000000e+00
  %6774 = fadd fast float %6741, 1.000000e+00
  %6775 = fadd fast float %6740, 1.000000e+00
  %6776 = fmul fast float %6099, %6033
  %6777 = fmul fast float %6099, %6032
  %6778 = fmul fast float %6099, %6031
  %6779 = fmul fast float %5787, %5149
  %6780 = fsub fast float 1.000000e+00, %6779
  %6781 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6782 = fsub fast float 1.000000e+00, %6781
  %6783 = fadd fast float %6772, 0x3FDB6377A0000000
  %6784 = fmul fast float %6782, %6783
  %6785 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = fadd fast float %6784, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6787, float 0x3F847AE140000000)  ; FMax(a,b)
  %6789 = fmul fast float %6788, %6788
  %6790 = fmul fast float %6789, %6789
  %6791 = fmul fast float %6790, 0xC00A935000000000
  %6792 = call float @dx.op.unary.f32(i32 21, float %6791)  ; Exp(value)
  %6793 = fsub fast float 1.000000e+00, %6792
  %6794 = fmul fast float %6775, %6035
  %6795 = fmul fast float %6794, %6793
  %6796 = fmul fast float %6774, %6036
  %6797 = fmul fast float %6796, %6793
  %6798 = fmul fast float %6773, %6037
  %6799 = fmul fast float %6798, %6793
  %6800 = fadd fast float %6795, %6778
  %6801 = fmul fast float %6800, %5149
  %6802 = fadd fast float %6797, %6777
  %6803 = fmul fast float %6802, %5149
  %6804 = fadd fast float %6799, %6776
  %6805 = fmul fast float %6804, %5149
  %6806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6807 = extractvalue %dx.types.CBufRet.f32 %6806, 3
  %6808 = fcmp fast oeq float %6807, 0.000000e+00
  br i1 %6808, label %8486, label %6809

; <label>:6809                                    ; preds = %6694
  %6810 = extractvalue %dx.types.CBufRet.f32 %6806, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6806, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6806, 2
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = extractvalue %dx.types.CBufRet.f32 %6813, 1
  %6816 = extractvalue %dx.types.CBufRet.f32 %6813, 2
  %6817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6818 = extractvalue %dx.types.CBufRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.CBufRet.f32 %6817, 1
  %6820 = call float @dx.op.dot3.f32(i32 55, float %6814, float %6815, float %6816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6821 = select i1 %259, float %6818, float %6814
  %6822 = select i1 %259, float %6820, float %6815
  %6823 = select i1 %259, float %6819, float %6816
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 2
  %6826 = fmul fast float %6825, %117
  %6827 = fmul fast float %6825, %118
  %6828 = fmul fast float %6825, %119
  %6829 = fadd fast float %6826, %165
  %6830 = fadd fast float %6827, %166
  %6831 = fadd fast float %6828, %167
  %6832 = fcmp fast olt float %6807, 0.000000e+00
  br i1 %6832, label %7928, label %6833

; <label>:6833                                    ; preds = %6809
  %6834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6835 = extractvalue %dx.types.CBufRet.f32 %6834, 0
  %6836 = extractvalue %dx.types.CBufRet.f32 %6834, 1
  %6837 = extractvalue %dx.types.CBufRet.f32 %6834, 2
  %6838 = extractvalue %dx.types.CBufRet.f32 %6834, 3
  %6839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6840 = extractvalue %dx.types.CBufRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.CBufRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.CBufRet.f32 %6839, 2
  %6843 = extractvalue %dx.types.CBufRet.f32 %6839, 3
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = extractvalue %dx.types.CBufRet.f32 %6844, 3
  %6849 = fmul fast float %6835, %6829
  %6850 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6836, float %6849)  ; FMad(a,b,c)
  %6851 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6837, float %6850)  ; FMad(a,b,c)
  %6852 = fadd fast float %6851, %6838
  %6853 = fmul fast float %6840, %6829
  %6854 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6841, float %6853)  ; FMad(a,b,c)
  %6855 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6842, float %6854)  ; FMad(a,b,c)
  %6856 = fadd fast float %6855, %6843
  %6857 = fmul fast float %6845, %6829
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6846, float %6857)  ; FMad(a,b,c)
  %6859 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6847, float %6858)  ; FMad(a,b,c)
  %6860 = fadd fast float %6859, %6848
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.CBufRet.f32 %6861, 3
  %6865 = fmul fast float %6864, %6852
  %6866 = fmul fast float %6864, %6856
  %6867 = fadd fast float %6865, %6862
  %6868 = fadd fast float %6866, %6863
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6873 = fmul fast float %6872, %6852
  %6874 = fmul fast float %6872, %6856
  %6875 = fadd fast float %6873, %6870
  %6876 = fadd fast float %6874, %6871
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6879 = fsub fast float %6878, %6860
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6881 = fmul fast float %6879, %6880
  %6882 = fsub fast float 1.000000e+00, %6881
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6887 = fadd fast float %6886, %6884
  %6888 = fcmp fast ogt float %6887, 0.000000e+00
  br i1 %6888, label %6889, label %6913

; <label>:6889                                    ; preds = %6833
  %6890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6891 = extractvalue %dx.types.CBufRet.f32 %6890, 0
  %6892 = extractvalue %dx.types.CBufRet.f32 %6890, 1
  %6893 = fsub fast float %6875, %6891
  %6894 = fsub fast float %6876, %6892
  %6895 = fcmp fast olt float %6893, 0.000000e+00
  %6896 = fcmp fast olt float %6894, 0.000000e+00
  %6897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6898 = extractvalue %dx.types.CBufRet.f32 %6897, 0
  %6899 = extractvalue %dx.types.CBufRet.f32 %6897, 1
  %6900 = extractvalue %dx.types.CBufRet.f32 %6897, 2
  %6901 = extractvalue %dx.types.CBufRet.f32 %6897, 3
  %6902 = select i1 %6895, float %6898, float %6900
  %6903 = select i1 %6896, float %6899, float %6901
  %6904 = fmul fast float %6902, %6893
  %6905 = fmul fast float %6903, %6894
  %6906 = call float @dx.op.unary.f32(i32 6, float %6904)  ; FAbs(value)
  %6907 = call float @dx.op.unary.f32(i32 6, float %6905)  ; FAbs(value)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6909 = call float @dx.op.binary.f32(i32 35, float %6906, float %6907)  ; FMax(a,b)
  %6910 = fsub fast float %6908, %6909
  %6911 = call float @dx.op.unary.f32(i32 7, float %6910)  ; Saturate(value)
  %6912 = fmul fast float %6911, %6883
  br label %6913

; <label>:6913                                    ; preds = %6889, %6833
  %6914 = phi float [ %6912, %6889 ], [ 0.000000e+00, %6833 ]
  %6915 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6917 = fadd fast float %6916, %6915
  %6918 = fcmp fast ogt float %6917, 0.000000e+00
  %6919 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  br i1 %6918, label %6920, label %6943

; <label>:6920                                    ; preds = %6913
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6924 = fsub fast float %6867, %6922
  %6925 = fsub fast float %6868, %6923
  %6926 = fcmp fast olt float %6924, 0.000000e+00
  %6927 = fcmp fast olt float %6925, 0.000000e+00
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = select i1 %6926, float %6929, float %6931
  %6934 = select i1 %6927, float %6930, float %6932
  %6935 = fmul fast float %6933, %6924
  %6936 = fmul fast float %6934, %6925
  %6937 = call float @dx.op.unary.f32(i32 6, float %6935)  ; FAbs(value)
  %6938 = call float @dx.op.unary.f32(i32 6, float %6936)  ; FAbs(value)
  %6939 = call float @dx.op.binary.f32(i32 35, float %6937, float %6938)  ; FMax(a,b)
  %6940 = fsub fast float %6919, %6939
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fmul fast float %6941, %6883
  br label %6943

; <label>:6943                                    ; preds = %6920, %6913
  %6944 = phi float [ %6942, %6920 ], [ 0.000000e+00, %6913 ]
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 1
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.CBufRet.f32 %6948, 1
  %6951 = fsub fast float %6852, %6949
  %6952 = fsub fast float %6856, %6950
  %6953 = fcmp fast olt float %6951, 0.000000e+00
  %6954 = fcmp fast olt float %6952, 0.000000e+00
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = select i1 %6953, float %6956, float %6958
  %6961 = select i1 %6954, float %6957, float %6959
  %6962 = fmul fast float %6960, %6951
  %6963 = fmul fast float %6961, %6952
  %6964 = call float @dx.op.unary.f32(i32 6, float %6962)  ; FAbs(value)
  %6965 = call float @dx.op.unary.f32(i32 6, float %6963)  ; FAbs(value)
  %6966 = call float @dx.op.binary.f32(i32 35, float %6964, float %6965)  ; FMax(a,b)
  %6967 = fsub fast float %6919, %6966
  %6968 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6969 = call float @dx.op.binary.f32(i32 36, float %6968, float %6947)  ; FMin(a,b)
  %6970 = fmul fast float %6969, %6883
  %6971 = fsub fast float %6944, %6970
  %6972 = fsub fast float %6914, %6944
  %6973 = fsub fast float %6972, %6970
  %6974 = call float @dx.op.binary.f32(i32 35, float %6944, float %6914)  ; FMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6970, float %6974)  ; FMax(a,b)
  %6976 = fcmp fast olt float %6975, 1.000000e+00
  br i1 %6976, label %6977, label %7375, !dx.controlflow.hints !104

; <label>:6977                                    ; preds = %6943
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = fcmp fast une float %6979, 0.000000e+00
  br i1 %6980, label %6981, label %7375, !dx.controlflow.hints !105

; <label>:6981                                    ; preds = %6977
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.CBufRet.f32 %6982, 2
  %6986 = extractvalue %dx.types.CBufRet.f32 %6982, 3
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %6991 = extractvalue %dx.types.CBufRet.f32 %6987, 3
  %6992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6993 = extractvalue %dx.types.CBufRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.CBufRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.CBufRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.CBufRet.f32 %6992, 3
  %6997 = fmul fast float %6983, %6829
  %6998 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6984, float %6997)  ; FMad(a,b,c)
  %6999 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6985, float %6998)  ; FMad(a,b,c)
  %7000 = fadd fast float %6999, %6986
  %7001 = fmul fast float %6988, %6829
  %7002 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6989, float %7001)  ; FMad(a,b,c)
  %7003 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6990, float %7002)  ; FMad(a,b,c)
  %7004 = fadd fast float %7003, %6991
  %7005 = fmul fast float %6993, %6829
  %7006 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %6994, float %7005)  ; FMad(a,b,c)
  %7007 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %6995, float %7006)  ; FMad(a,b,c)
  %7008 = fadd fast float %7007, %6996
  %7009 = fcmp fast oge float %7000, 1.000000e+00
  %7010 = fcmp fast oge float %7004, 1.000000e+00
  %7011 = or i1 %7009, %7010
  %7012 = fcmp fast olt float %7000, 0.000000e+00
  %7013 = fcmp fast olt float %7004, 0.000000e+00
  %7014 = or i1 %7012, %7013
  %7015 = or i1 %7011, %7014
  br i1 %7015, label %7375, label %7016, !dx.controlflow.hints !106

; <label>:7016                                    ; preds = %6981
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.i32 %7021, 2
  %7023 = uitofp i32 %7022 to float
  %7024 = extractvalue %dx.types.CBufRet.i32 %7021, 3
  %7025 = uitofp i32 %7024 to float
  %7026 = extractvalue %dx.types.CBufRet.f32 %7017, 3
  %7027 = fmul fast float %7026, 2.000000e+00
  %7028 = fsub fast float %7000, %7018
  %7029 = fsub fast float %7004, %7019
  %7030 = fmul fast float %7027, %7028
  %7031 = fmul fast float %7027, %7029
  %7032 = fdiv fast float 1.000000e+00, %6812
  %7033 = fmul fast float %7031, %7032
  %7034 = call float @dx.op.unary.f32(i32 6, float %7033)  ; FAbs(value)
  %7035 = fmul fast float %7020, %6831
  %7036 = fmul fast float %7035, %7027
  %7037 = call float @dx.op.unary.f32(i32 6, float %7036)  ; FAbs(value)
  %7038 = call float @dx.op.unary.f32(i32 6, float %7030)  ; FAbs(value)
  %7039 = call float @dx.op.binary.f32(i32 35, float %7037, float %7034)  ; FMax(a,b)
  %7040 = call float @dx.op.binary.f32(i32 35, float %7038, float %7039)  ; FMax(a,b)
  %7041 = fmul fast float %7040, 2.000000e+00
  %7042 = call float @dx.op.unary.f32(i32 23, float %7041)  ; Log(value)
  %7043 = call float @dx.op.binary.f32(i32 35, float %7042, float %7023)  ; FMax(a,b)
  %7044 = call float @dx.op.unary.f32(i32 22, float %7043)  ; Frc(value)
  %7045 = fadd fast float %7044, 0xBFEA666660000000
  %7046 = fmul fast float %7045, 8.000000e+00
  %7047 = call float @dx.op.unary.f32(i32 7, float %7046)  ; Saturate(value)
  %7048 = call float @dx.op.unary.f32(i32 27, float %7043)  ; Round_ni(value)
  %7049 = fadd fast float %7048, %7047
  %7050 = call float @dx.op.binary.f32(i32 36, float %7049, float %7025)  ; FMin(a,b)
  %7051 = call float @dx.op.unary.f32(i32 27, float %7050)  ; Round_ni(value)
  %7052 = fsub fast float -0.000000e+00, %7051
  %7053 = call float @dx.op.unary.f32(i32 21, float %7052)  ; Exp(value)
  %7054 = fmul fast float %7053, %7027
  %7055 = fmul fast float %7054, %7000
  %7056 = fmul fast float %7054, %7004
  %7057 = fmul fast float %7055, 2.500000e-01
  %7058 = fmul fast float %7056, 2.500000e-01
  %7059 = fadd fast float %7057, 5.000000e-01
  %7060 = fadd fast float %7058, 5.000000e-01
  %7061 = fsub fast float %7025, %7023
  %7062 = fptoui float %7061 to i32
  %7063 = add i32 %7062, 320
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %7063)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 0
  %7066 = extractvalue %dx.types.CBufRet.f32 %7064, 1
  %7067 = fcmp fast une float %7050, %7025
  %7068 = fsub fast float %7000, %7065
  %7069 = fsub fast float %7004, %7066
  %7070 = call float @dx.op.unary.f32(i32 6, float %7068)  ; FAbs(value)
  %7071 = call float @dx.op.unary.f32(i32 6, float %7069)  ; FAbs(value)
  %7072 = fmul fast float %7070, %7054
  %7073 = fmul fast float %7071, %7054
  %7074 = fcmp fast olt float %7072, 1.000000e+00
  %7075 = fcmp fast olt float %7073, 1.000000e+00
  %7076 = and i1 %7074, %7075
  %7077 = or i1 %7067, %7076
  br i1 %7077, label %7078, label %7375, !dx.controlflow.hints !107

; <label>:7078                                    ; preds = %7016
  %7079 = fmul fast float %7056, 5.000000e-01
  %7080 = fmul fast float %7055, 5.000000e-01
  %7081 = fadd fast float %7079, 5.000000e-01
  %7082 = fadd fast float %7080, 5.000000e-01
  %7083 = sitofp i32 %7022 to float
  %7084 = fsub fast float %7050, %7083
  %7085 = call float @dx.op.unary.f32(i32 27, float %7084)  ; Round_ni(value)
  %7086 = call float @dx.op.unary.f32(i32 22, float %7050)  ; Frc(value)
  %7087 = call float @dx.op.unary.f32(i32 22, float %7082)  ; Frc(value)
  %7088 = call float @dx.op.unary.f32(i32 22, float %7081)  ; Frc(value)
  %7089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %7087, float %7088, float %7085, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7090 = extractvalue %dx.types.ResRet.f32 %7089, 0
  %7091 = extractvalue %dx.types.ResRet.f32 %7089, 1
  %7092 = extractvalue %dx.types.ResRet.f32 %7089, 2
  %7093 = extractvalue %dx.types.ResRet.f32 %7089, 3
  %7094 = fcmp fast ogt float %7086, 0.000000e+00
  br i1 %7094, label %7095, label %7116, !dx.controlflow.hints !108

; <label>:7095                                    ; preds = %7078
  %7096 = fadd fast float %7085, 1.000000e+00
  %7097 = call float @dx.op.unary.f32(i32 22, float %7059)  ; Frc(value)
  %7098 = call float @dx.op.unary.f32(i32 22, float %7060)  ; Frc(value)
  %7099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %54, float %7097, float %7098, float %7096, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7100 = extractvalue %dx.types.ResRet.f32 %7099, 0
  %7101 = extractvalue %dx.types.ResRet.f32 %7099, 1
  %7102 = extractvalue %dx.types.ResRet.f32 %7099, 2
  %7103 = extractvalue %dx.types.ResRet.f32 %7099, 3
  %7104 = fsub fast float %7100, %7090
  %7105 = fsub fast float %7101, %7091
  %7106 = fsub fast float %7102, %7092
  %7107 = fsub fast float %7103, %7093
  %7108 = fmul fast float %7104, %7086
  %7109 = fmul fast float %7105, %7086
  %7110 = fmul fast float %7106, %7086
  %7111 = fmul fast float %7107, %7086
  %7112 = fadd fast float %7108, %7090
  %7113 = fadd fast float %7109, %7091
  %7114 = fadd fast float %7110, %7092
  %7115 = fadd fast float %7111, %7093
  br label %7116

; <label>:7116                                    ; preds = %7095, %7078
  %7117 = phi float [ %7112, %7095 ], [ %7090, %7078 ]
  %7118 = phi float [ %7113, %7095 ], [ %7091, %7078 ]
  %7119 = phi float [ %7114, %7095 ], [ %7092, %7078 ]
  %7120 = phi float [ %7115, %7095 ], [ %7093, %7078 ]
  %7121 = fadd fast float %7117, -5.000000e-01
  %7122 = fadd fast float %7119, -5.000000e-01
  %7123 = fmul fast float %7121, 0xBFD5555560000000
  %7124 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7122, float %7123)  ; FMad(a,b,c)
  %7125 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7118, float 0.000000e+00)  ; FMad(a,b,c)
  %7126 = fadd fast float %7125, %7120
  %7127 = fmul fast float %7121, -7.500000e-01
  %7128 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7122, float %7127)  ; FMad(a,b,c)
  %7129 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7118, float 0.000000e+00)  ; FMad(a,b,c)
  %7130 = fadd fast float %7129, %7120
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7136 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7137 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7138 = fsub fast float %7134, %7124
  %7139 = fsub fast float %7135, %7126
  %7140 = fsub fast float %7136, %7128
  %7141 = fsub fast float %7137, %7130
  %7142 = fmul fast float %7138, %7132
  %7143 = fmul fast float %7139, %7132
  %7144 = fmul fast float %7140, %7132
  %7145 = fmul fast float %7141, %7132
  %7146 = fadd fast float %7142, %7124
  %7147 = fadd fast float %7143, %7126
  %7148 = fadd fast float %7144, %7128
  %7149 = fadd fast float %7145, %7130
  %7150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7151 = extractvalue %dx.types.ResRet.i32 %7150, 0
  %7152 = and i32 %7151, 536870911
  %7153 = uitofp i32 %7152 to float
  %7154 = fmul fast float %7153, %7000
  %7155 = fmul fast float %7153, %7004
  %7156 = fptoui float %7154 to i32
  %7157 = fptoui float %7155 to i32
  %7158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7159 = extractvalue %dx.types.ResRet.i32 %7158, 0
  %7160 = and i32 %7159, 31
  %7161 = lshr i32 %7156, %7160
  %7162 = lshr i32 %7157, %7160
  %7163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7164 = extractvalue %dx.types.ResRet.i32 %7163, 0
  %7165 = and i32 %7164, 31
  %7166 = shl i32 1, %7165
  %7167 = call i32 @dx.op.binary.i32(i32 40, i32 %7166, i32 4)  ; UMin(a,b)
  %7168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.i32 %7168, 0
  %7170 = extractvalue %dx.types.ResRet.i32 %7168, 1
  %7171 = icmp eq i32 %7167, 0
  br i1 %7171, label %7213, label %7172

; <label>:7172                                    ; preds = %7116
  br label %7173

; <label>:7173                                    ; preds = %7201, %7172
  %7174 = phi i32 [ %7204, %7201 ], [ 0, %7172 ]
  %7175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7176 = extractvalue %dx.types.ResRet.i32 %7175, 0
  %7177 = lshr i32 %7176, 16
  %7178 = and i32 %7177, 31
  %7179 = shl i32 %7162, %7178
  %7180 = add i32 %7179, %7161
  %7181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7182 = extractvalue %dx.types.ResRet.i32 %7181, 0
  %7183 = and i32 %7182, 31
  %7184 = shl i32 %7180, %7183
  %7185 = add i32 %7184, %7174
  %7186 = shl i32 %7185, 2
  %7187 = add i32 %7186, 32
  %7188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7187, i32 undef)  ; BufferLoad(srv,index,wot)
  %7189 = extractvalue %dx.types.ResRet.i32 %7188, 0
  %7190 = icmp slt i32 %7189, 0
  %7191 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7174
  %7192 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7174
  %7193 = bitcast float* %7191 to i32*
  %7194 = bitcast float* %7192 to i32*
  br i1 %7190, label %7195, label %7201

; <label>:7195                                    ; preds = %7173
  %7196 = and i32 %7189, 1073741823
  %7197 = add nuw nsw i32 %7196, 20
  %7198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7197, i32 undef)  ; BufferLoad(srv,index,wot)
  %7199 = extractvalue %dx.types.ResRet.i32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.i32 %7198, 1
  br label %7201

; <label>:7201                                    ; preds = %7195, %7173
  %7202 = phi i32 [ %7199, %7195 ], [ %7169, %7173 ]
  %7203 = phi i32 [ %7200, %7195 ], [ %7170, %7173 ]
  store i32 %7202, i32* %7193, align 4
  store i32 %7203, i32* %7194, align 4
  %7204 = add nuw i32 %7174, 1
  %7205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.i32 %7205, 2
  %7207 = icmp eq i32 %7206, 0
  %7208 = icmp ugt i32 %7189, -1073741825
  %7209 = and i1 %7208, %7207
  %7210 = icmp ult i32 %7204, %7167
  %7211 = and i1 %7209, %7210
  br i1 %7211, label %7173, label %7212

; <label>:7212                                    ; preds = %7201
  br label %7213

; <label>:7213                                    ; preds = %7212, %7116
  %7214 = phi i32 [ 0, %7116 ], [ %7204, %7212 ]
  %7215 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %7216 = fptoui float %7215 to i32
  %7217 = icmp eq i32 %7216, 0
  br i1 %7217, label %7269, label %7218

; <label>:7218                                    ; preds = %7213
  br label %7219

; <label>:7219                                    ; preds = %7264, %7218
  %7220 = phi i32 [ %7265, %7264 ], [ %7214, %7218 ]
  %7221 = phi i32 [ %7266, %7264 ], [ 0, %7218 ]
  %7222 = lshr i32 %7221, 2
  %7223 = and i32 %7221, 3
  %7224 = add nuw nsw i32 %7222, 83
  %7225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 %7224)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.i32 %7225, 0
  %7227 = extractvalue %dx.types.CBufRet.i32 %7225, 1
  %7228 = extractvalue %dx.types.CBufRet.i32 %7225, 2
  %7229 = extractvalue %dx.types.CBufRet.i32 %7225, 3
  %7230 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 0
  store i32 %7226, i32* %7230, align 4
  %7231 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 1
  store i32 %7227, i32* %7231, align 4
  %7232 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 2
  store i32 %7228, i32* %7232, align 4
  %7233 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 3
  store i32 %7229, i32* %7233, align 4
  %7234 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i32 0, i32 %7223
  %7235 = load i32, i32* %7234, align 4, !tbaa !109, !noalias !113
  %7236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7237 = extractvalue %dx.types.ResRet.i32 %7236, 0
  %7238 = lshr i32 %7237, 16
  %7239 = and i32 %7238, 31
  %7240 = shl i32 %7162, %7239
  %7241 = add i32 %7240, %7161
  %7242 = shl i32 %7241, 2
  %7243 = add i32 %7242, %7235
  %7244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.i32 %7244, 0
  %7246 = icmp eq i32 %7245, 0
  br i1 %7246, label %7264, label %7247

; <label>:7247                                    ; preds = %7219
  %7248 = icmp slt i32 %7245, 0
  %7249 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7220
  %7250 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7220
  %7251 = bitcast float* %7249 to i32*
  %7252 = bitcast float* %7250 to i32*
  br i1 %7248, label %7253, label %7260

; <label>:7253                                    ; preds = %7247
  %7254 = and i32 %7245, 1073741823
  %7255 = add i32 %7235, 20
  %7256 = add i32 %7255, %7254
  %7257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7256, i32 undef)  ; BufferLoad(srv,index,wot)
  %7258 = extractvalue %dx.types.ResRet.i32 %7257, 0
  %7259 = extractvalue %dx.types.ResRet.i32 %7257, 1
  br label %7260

; <label>:7260                                    ; preds = %7253, %7247
  %7261 = phi i32 [ %7258, %7253 ], [ %7169, %7247 ]
  %7262 = phi i32 [ %7259, %7253 ], [ %7170, %7247 ]
  store i32 %7261, i32* %7251, align 4
  store i32 %7262, i32* %7252, align 4
  %7263 = add i32 %7220, 1
  br label %7264

; <label>:7264                                    ; preds = %7260, %7219
  %7265 = phi i32 [ %7220, %7219 ], [ %7263, %7260 ]
  %7266 = add nuw i32 %7221, 1
  %7267 = icmp eq i32 %7266, %7216
  br i1 %7267, label %7268, label %7219

; <label>:7268                                    ; preds = %7264
  br label %7269

; <label>:7269                                    ; preds = %7268, %7213
  %7270 = phi i32 [ %7214, %7213 ], [ %7265, %7268 ]
  %7271 = icmp eq i32 %7270, 1
  %7272 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7273 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7271, label %7274, label %7277

; <label>:7274                                    ; preds = %7269
  %7275 = load float, float* %7272, align 4
  %7276 = load float, float* %7273, align 4
  br label %7304

; <label>:7277                                    ; preds = %7269
  %7278 = load float, float* %7272, align 4
  %7279 = load float, float* %7273, align 4
  %7280 = fdiv fast float 1.000000e+00, %7279
  %7281 = fsub fast float %7278, %7280
  %7282 = icmp ugt i32 %7270, 1
  br i1 %7282, label %7283, label %7299

; <label>:7283                                    ; preds = %7277
  br label %7284

; <label>:7284                                    ; preds = %7284, %7283
  %7285 = phi float [ %7294, %7284 ], [ %7281, %7283 ]
  %7286 = phi float [ %7295, %7284 ], [ %7278, %7283 ]
  %7287 = phi i32 [ %7296, %7284 ], [ 1, %7283 ]
  %7288 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7287
  %7289 = load float, float* %7288, align 4
  %7290 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7287
  %7291 = load float, float* %7290, align 4
  %7292 = fdiv fast float 1.000000e+00, %7291
  %7293 = fsub fast float %7289, %7292
  %7294 = call float @dx.op.binary.f32(i32 36, float %7285, float %7293)  ; FMin(a,b)
  %7295 = call float @dx.op.binary.f32(i32 35, float %7286, float %7289)  ; FMax(a,b)
  %7296 = add nuw i32 %7287, 1
  %7297 = icmp eq i32 %7296, %7270
  br i1 %7297, label %7298, label %7284

; <label>:7298                                    ; preds = %7284
  br label %7299

; <label>:7299                                    ; preds = %7298, %7277
  %7300 = phi float [ %7281, %7277 ], [ %7294, %7298 ]
  %7301 = phi float [ %7278, %7277 ], [ %7295, %7298 ]
  %7302 = fsub fast float %7301, %7300
  %7303 = fdiv fast float 1.000000e+00, %7302
  br label %7304

; <label>:7304                                    ; preds = %7299, %7274
  %7305 = phi float [ %7275, %7274 ], [ %7301, %7299 ]
  %7306 = phi float [ %7276, %7274 ], [ %7303, %7299 ]
  %7307 = fadd fast float %7008, %7305
  %7308 = fmul fast float %7307, %7306
  %7309 = call float @dx.op.unary.f32(i32 7, float %7308)  ; Saturate(value)
  %7310 = fmul fast float %7309, 2.000000e+00
  %7311 = fsub fast float 1.000000e+00, %7310
  %7312 = fmul fast float %7146, %7146
  %7313 = fsub fast float %7147, %7312
  %7314 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7313)  ; FMax(a,b)
  %7315 = fdiv fast float 1.000000e+00, %7314
  %7316 = fmul fast float %7147, %7146
  %7317 = fsub fast float %7148, %7316
  %7318 = fsub fast float %7311, %7146
  %7319 = fmul fast float %7311, %7311
  %7320 = fsub fast float %7319, %7147
  %7321 = fmul fast float %7315, %7317
  %7322 = fmul fast float %7321, %7318
  %7323 = fsub fast float %7320, %7322
  %7324 = fmul fast float %7147, %7147
  %7325 = fsub fast float %7149, %7324
  %7326 = fmul fast float %7317, %7317
  %7327 = fmul fast float %7326, %7315
  %7328 = fsub fast float %7325, %7327
  %7329 = fdiv fast float %7323, %7328
  %7330 = fmul fast float %7329, %7317
  %7331 = fsub fast float %7318, %7330
  %7332 = fmul fast float %7331, %7315
  %7333 = fmul fast float %7332, %7146
  %7334 = fsub fast float 1.000000e+00, %7333
  %7335 = fmul fast float %7329, %7147
  %7336 = fsub fast float %7334, %7335
  %7337 = fmul fast float %7332, %7332
  %7338 = fmul fast float %7329, 4.000000e+00
  %7339 = fmul fast float %7338, %7336
  %7340 = fsub fast float %7337, %7339
  %7341 = call float @dx.op.unary.f32(i32 24, float %7340)  ; Sqrt(value)
  %7342 = fcmp fast oge float %7332, 0.000000e+00
  %7343 = fsub fast float -0.000000e+00, %7341
  %7344 = select i1 %7342, float %7343, float %7341
  %7345 = fsub fast float %7344, %7332
  %7346 = fdiv fast float %7345, %7329
  %7347 = fdiv fast float %7336, %7345
  %7348 = fmul fast float %7346, 5.000000e-01
  %7349 = fmul fast float %7347, 2.000000e+00
  %7350 = select i1 %7342, float %7348, float %7349
  %7351 = select i1 %7342, float %7349, float %7348
  %7352 = call float @dx.op.binary.f32(i32 35, float %7350, float %7351)  ; FMax(a,b)
  %7353 = call float @dx.op.binary.f32(i32 36, float %7350, float %7351)  ; FMin(a,b)
  %7354 = fcmp fast ogt float %7311, %7352
  %7355 = fsub fast float %7311, %7353
  %7356 = fsub fast float %7311, %7352
  %7357 = fsub fast float %7352, %7353
  %7358 = select i1 %7354, float %7356, float %7357
  %7359 = fmul float %7355, %7358
  %7360 = select i1 %7354, float %7353, float %7311
  %7361 = fcmp fast ogt float %7311, %7353
  %7362 = fmul fast float %7360, %7352
  %7363 = fadd fast float %7360, %7352
  %7364 = fmul fast float %7363, %7146
  %7365 = fadd fast float %7362, %7147
  %7366 = fsub fast float %7365, %7364
  %7367 = fdiv fast float %7366, %7359
  %7368 = select i1 %7361, float %7367, float 0.000000e+00
  %7369 = fsub fast float 1.000000e+00, %7368
  %7370 = select i1 %7354, float %7369, float %7368
  %7371 = call float @dx.op.unary.f32(i32 7, float %7370)  ; Saturate(value)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7373 = fmul fast float %7372, %7371
  %7374 = fsub fast float 1.000000e+00, %7373
  br label %7375

; <label>:7375                                    ; preds = %7304, %7016, %6981, %6977, %6943
  %7376 = phi float [ 1.000000e+00, %6943 ], [ %7374, %7304 ], [ 1.000000e+00, %6981 ], [ 1.000000e+00, %7016 ], [ 1.000000e+00, %6977 ]
  %7377 = fcmp fast ogt float %6973, 0.000000e+00
  br i1 %7377, label %7378, label %7540, !dx.controlflow.hints !122

; <label>:7378                                    ; preds = %7375
  %7379 = fadd fast float %6886, %6860
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 3
  %7383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7384 = extractvalue %dx.types.CBufRet.f32 %7383, 2
  %7385 = call float @dx.op.binary.f32(i32 35, float %7379, float 0.000000e+00)  ; FMax(a,b)
  %7386 = fadd fast float %7385, 0x3F10000000000000
  %7387 = fcmp fast oeq float %7384, 0.000000e+00
  br i1 %7387, label %7388, label %7455

; <label>:7388                                    ; preds = %7378
  %7389 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7391 = fmul fast float %7390, %6875
  %7392 = fmul fast float %7389, %6876
  %7393 = fadd fast float %7391, 5.000000e-01
  %7394 = call float @dx.op.unary.f32(i32 27, float %7393)  ; Round_ni(value)
  %7395 = fadd fast float %7392, 5.000000e-01
  %7396 = call float @dx.op.unary.f32(i32 27, float %7395)  ; Round_ni(value)
  %7397 = fsub fast float %7393, %7394
  %7398 = fsub fast float %7395, %7396
  %7399 = fadd fast float %7394, -5.000000e-01
  %7400 = fadd fast float %7396, -5.000000e-01
  %7401 = fmul fast float %7397, 2.000000e+00
  %7402 = fsub fast float 3.000000e+00, %7401
  %7403 = fadd fast float %7401, 1.000000e+00
  %7404 = fsub fast float 2.000000e+00, %7397
  %7405 = bitcast float %7402 to i32
  %7406 = sub nsw i32 2129859010, %7405
  %7407 = bitcast i32 %7406 to float
  %7408 = fmul fast float %7407, %7404
  %7409 = fadd fast float %7408, -1.000000e+00
  %7410 = bitcast float %7403 to i32
  %7411 = sub nsw i32 2129859010, %7410
  %7412 = bitcast i32 %7411 to float
  %7413 = fmul fast float %7412, %7397
  %7414 = fadd fast float %7413, 1.000000e+00
  %7415 = fmul fast float %7398, 2.000000e+00
  %7416 = fsub fast float 3.000000e+00, %7415
  %7417 = fadd fast float %7415, 1.000000e+00
  %7418 = fsub fast float 2.000000e+00, %7398
  %7419 = bitcast float %7416 to i32
  %7420 = sub nsw i32 2129859010, %7419
  %7421 = bitcast i32 %7420 to float
  %7422 = fmul fast float %7421, %7418
  %7423 = fadd fast float %7422, -1.000000e+00
  %7424 = bitcast float %7417 to i32
  %7425 = sub nsw i32 2129859010, %7424
  %7426 = bitcast i32 %7425 to float
  %7427 = fmul fast float %7426, %7398
  %7428 = fadd fast float %7427, 1.000000e+00
  %7429 = fadd fast float %7409, %7399
  %7430 = fmul fast float %7429, %7381
  %7431 = fadd fast float %7423, %7400
  %7432 = fmul fast float %7431, %7382
  %7433 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7430, float %7432, float undef, float undef, i32 0, i32 0, i32 undef, float %7386)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = fmul fast float %7434, %7402
  %7436 = fadd fast float %7414, %7399
  %7437 = fmul fast float %7436, %7381
  %7438 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7437, float %7432, float undef, float undef, i32 0, i32 0, i32 undef, float %7386)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 0
  %7440 = fmul fast float %7439, %7403
  %7441 = fadd fast float %7428, %7400
  %7442 = fmul fast float %7441, %7382
  %7443 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7430, float %7442, float undef, float undef, i32 0, i32 0, i32 undef, float %7386)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7444 = extractvalue %dx.types.ResRet.f32 %7443, 0
  %7445 = fmul fast float %7444, %7402
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %57, float %7437, float %7442, float undef, float undef, i32 0, i32 0, i32 undef, float %7386)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = fmul fast float %7447, %7403
  %7449 = fadd fast float %7448, %7445
  %7450 = fmul fast float %7449, %7417
  %7451 = fadd fast float %7440, %7435
  %7452 = fmul fast float %7451, %7416
  %7453 = fadd fast float %7452, %7450
  %7454 = fmul fast float %7453, 6.250000e-02
  br label %7540

; <label>:7455                                    ; preds = %7378
  %7456 = fmul fast float %270, 0x401921FB60000000
  %7457 = call float @dx.op.unary.f32(i32 13, float %7456)  ; Sin(value)
  %7458 = call float @dx.op.unary.f32(i32 12, float %7456)  ; Cos(value)
  %7459 = fsub fast float -0.000000e+00, %7457
  br label %7460

; <label>:7460                                    ; preds = %7509, %7455
  %7461 = phi float [ 0.000000e+00, %7455 ], [ %7504, %7509 ]
  %7462 = phi float [ 0.000000e+00, %7455 ], [ %7506, %7509 ]
  %7463 = phi i32 [ 0, %7455 ], [ %7510, %7509 ]
  %7464 = mul i32 %7463, 2
  %7465 = add i32 0, %7464
  %7466 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7465
  %7467 = load float, float* %7466, align 4
  %7468 = mul i32 %7463, 2
  %7469 = add i32 1, %7468
  %7470 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7469
  %7471 = load float, float* %7470, align 4
  %7472 = fmul fast float %7467, %7458
  %7473 = call float @dx.op.tertiary.f32(i32 46, float %7471, float %7459, float %7472)  ; FMad(a,b,c)
  %7474 = fmul fast float %7467, %7457
  %7475 = call float @dx.op.tertiary.f32(i32 46, float %7471, float %7458, float %7474)  ; FMad(a,b,c)
  %7476 = fmul fast float %7473, %7384
  %7477 = fmul fast float %7475, %7384
  %7478 = fadd fast float %7476, %6875
  %7479 = fadd fast float %7477, %6876
  %7480 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %56, float %7478, float %7479, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7481 = extractvalue %dx.types.ResRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.ResRet.f32 %7480, 1
  %7483 = extractvalue %dx.types.ResRet.f32 %7480, 2
  %7484 = extractvalue %dx.types.ResRet.f32 %7480, 3
  %7485 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7481, float* %7485, align 4
  %7486 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7482, float* %7486, align 4
  %7487 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7483, float* %7487, align 4
  %7488 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7484, float* %7488, align 4
  %7489 = fsub fast float %7481, %7386
  %7490 = fcmp fast olt float %7489, 0.000000e+00
  %7491 = select i1 %7490, float 0.000000e+00, float 1.000000e+00
  %7492 = fadd fast float %7491, %7461
  %7493 = fmul fast float %7491, %7489
  %7494 = fadd fast float %7493, %7462
  br label %7495

; <label>:7495                                    ; preds = %7495, %7460
  %7496 = phi i32 [ 1, %7460 ], [ %7507, %7495 ]
  %7497 = phi float [ %7494, %7460 ], [ %7506, %7495 ]
  %7498 = phi float [ %7492, %7460 ], [ %7504, %7495 ]
  %7499 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7496
  %7500 = load float, float* %7499, align 4, !tbaa !123, !noalias !113
  %7501 = fsub fast float %7500, %7386
  %7502 = fcmp fast olt float %7501, 0.000000e+00
  %7503 = select i1 %7502, float 0.000000e+00, float 1.000000e+00
  %7504 = fadd fast float %7503, %7498
  %7505 = fmul fast float %7503, %7501
  %7506 = fadd fast float %7505, %7497
  %7507 = add nuw nsw i32 %7496, 1
  %7508 = icmp eq i32 %7507, 4
  br i1 %7508, label %7509, label %7495, !llvm.loop !125

; <label>:7509                                    ; preds = %7495
  %7510 = add nuw nsw i32 %7463, 1
  %7511 = icmp eq i32 %7510, 8
  br i1 %7511, label %7512, label %7460, !llvm.loop !126

; <label>:7512                                    ; preds = %7509
  %7513 = fdiv fast float 1.000000e+00, %7504
  %7514 = fmul fast float %7513, %7506
  %7515 = fdiv fast float 1.000000e+00, %7386
  %7516 = fmul fast float %7514, %7515
  %7517 = call float @dx.op.unary.f32(i32 7, float %7516)  ; Saturate(value)
  %7518 = call float @dx.op.binary.f32(i32 35, float %7517, float 0.000000e+00)  ; FMax(a,b)
  %7519 = fmul fast float %7504, 3.125000e-02
  %7520 = call float @dx.op.unary.f32(i32 7, float %7519)  ; Saturate(value)
  %7521 = fmul fast float %7520, 2.000000e+00
  %7522 = fadd fast float %7521, -1.000000e+00
  %7523 = fcmp fast ogt float %7522, 0.000000e+00
  %7524 = fcmp fast olt float %7522, 0.000000e+00
  %7525 = zext i1 %7523 to i32
  %7526 = zext i1 %7524 to i32
  %7527 = sub nsw i32 %7525, %7526
  %7528 = sitofp i32 %7527 to float
  %7529 = fmul fast float %7528, %7522
  %7530 = fsub fast float 1.000000e+00, %7529
  %7531 = fmul fast float %7530, %7530
  %7532 = fmul fast float %7531, %7530
  %7533 = fsub fast float %7530, %7532
  %7534 = fmul fast float %7533, %7518
  %7535 = fsub fast float 1.000000e+00, %7532
  %7536 = fsub fast float %7535, %7534
  %7537 = fmul fast float %7528, 5.000000e-01
  %7538 = fmul fast float %7537, %7536
  %7539 = fsub fast float 5.000000e-01, %7538
  br label %7540

; <label>:7540                                    ; preds = %7512, %7388, %7375
  %7541 = phi float [ 1.000000e+00, %7375 ], [ %7454, %7388 ], [ %7539, %7512 ]
  %7542 = fcmp fast ogt float %6971, 0.000000e+00
  br i1 %7542, label %7543, label %7707, !dx.controlflow.hints !127

; <label>:7543                                    ; preds = %7540
  %7544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7545 = extractvalue %dx.types.CBufRet.f32 %7544, 1
  %7546 = fadd fast float %7545, %6860
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7549 = extractvalue %dx.types.CBufRet.f32 %7547, 3
  %7550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7551 = extractvalue %dx.types.CBufRet.f32 %7550, 1
  %7552 = call float @dx.op.binary.f32(i32 35, float %7546, float 0.000000e+00)  ; FMax(a,b)
  %7553 = fadd fast float %7552, 0x3F10000000000000
  %7554 = fcmp fast oeq float %7551, 0.000000e+00
  br i1 %7554, label %7555, label %7622

; <label>:7555                                    ; preds = %7543
  %7556 = extractvalue %dx.types.CBufRet.f32 %7547, 1
  %7557 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  %7558 = fmul fast float %7557, %6867
  %7559 = fmul fast float %7556, %6868
  %7560 = fadd fast float %7558, 5.000000e-01
  %7561 = call float @dx.op.unary.f32(i32 27, float %7560)  ; Round_ni(value)
  %7562 = fadd fast float %7559, 5.000000e-01
  %7563 = call float @dx.op.unary.f32(i32 27, float %7562)  ; Round_ni(value)
  %7564 = fsub fast float %7560, %7561
  %7565 = fsub fast float %7562, %7563
  %7566 = fadd fast float %7561, -5.000000e-01
  %7567 = fadd fast float %7563, -5.000000e-01
  %7568 = fmul fast float %7564, 2.000000e+00
  %7569 = fsub fast float 3.000000e+00, %7568
  %7570 = fadd fast float %7568, 1.000000e+00
  %7571 = fsub fast float 2.000000e+00, %7564
  %7572 = bitcast float %7569 to i32
  %7573 = sub nsw i32 2129859010, %7572
  %7574 = bitcast i32 %7573 to float
  %7575 = fmul fast float %7574, %7571
  %7576 = fadd fast float %7575, -1.000000e+00
  %7577 = bitcast float %7570 to i32
  %7578 = sub nsw i32 2129859010, %7577
  %7579 = bitcast i32 %7578 to float
  %7580 = fmul fast float %7579, %7564
  %7581 = fadd fast float %7580, 1.000000e+00
  %7582 = fmul fast float %7565, 2.000000e+00
  %7583 = fsub fast float 3.000000e+00, %7582
  %7584 = fadd fast float %7582, 1.000000e+00
  %7585 = fsub fast float 2.000000e+00, %7565
  %7586 = bitcast float %7583 to i32
  %7587 = sub nsw i32 2129859010, %7586
  %7588 = bitcast i32 %7587 to float
  %7589 = fmul fast float %7588, %7585
  %7590 = fadd fast float %7589, -1.000000e+00
  %7591 = bitcast float %7584 to i32
  %7592 = sub nsw i32 2129859010, %7591
  %7593 = bitcast i32 %7592 to float
  %7594 = fmul fast float %7593, %7565
  %7595 = fadd fast float %7594, 1.000000e+00
  %7596 = fadd fast float %7576, %7566
  %7597 = fmul fast float %7596, %7548
  %7598 = fadd fast float %7590, %7567
  %7599 = fmul fast float %7598, %7549
  %7600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7597, float %7599, float undef, float undef, i32 0, i32 0, i32 undef, float %7553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 0
  %7602 = fmul fast float %7601, %7569
  %7603 = fadd fast float %7581, %7566
  %7604 = fmul fast float %7603, %7548
  %7605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7604, float %7599, float undef, float undef, i32 0, i32 0, i32 undef, float %7553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = fmul fast float %7606, %7570
  %7608 = fadd fast float %7595, %7567
  %7609 = fmul fast float %7608, %7549
  %7610 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7597, float %7609, float undef, float undef, i32 0, i32 0, i32 undef, float %7553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = fmul fast float %7611, %7569
  %7613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %57, float %7604, float %7609, float undef, float undef, i32 0, i32 0, i32 undef, float %7553)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = fmul fast float %7614, %7570
  %7616 = fadd fast float %7615, %7612
  %7617 = fmul fast float %7616, %7584
  %7618 = fadd fast float %7607, %7602
  %7619 = fmul fast float %7618, %7583
  %7620 = fadd fast float %7619, %7617
  %7621 = fmul fast float %7620, 6.250000e-02
  br label %7707

; <label>:7622                                    ; preds = %7543
  %7623 = fmul fast float %270, 0x401921FB60000000
  %7624 = call float @dx.op.unary.f32(i32 13, float %7623)  ; Sin(value)
  %7625 = call float @dx.op.unary.f32(i32 12, float %7623)  ; Cos(value)
  %7626 = fsub fast float -0.000000e+00, %7624
  br label %7627

; <label>:7627                                    ; preds = %7676, %7622
  %7628 = phi float [ 0.000000e+00, %7622 ], [ %7671, %7676 ]
  %7629 = phi float [ 0.000000e+00, %7622 ], [ %7673, %7676 ]
  %7630 = phi i32 [ 0, %7622 ], [ %7677, %7676 ]
  %7631 = mul i32 %7630, 2
  %7632 = add i32 0, %7631
  %7633 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7632
  %7634 = load float, float* %7633, align 4
  %7635 = mul i32 %7630, 2
  %7636 = add i32 1, %7635
  %7637 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7636
  %7638 = load float, float* %7637, align 4
  %7639 = fmul fast float %7634, %7625
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %7638, float %7626, float %7639)  ; FMad(a,b,c)
  %7641 = fmul fast float %7634, %7624
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7638, float %7625, float %7641)  ; FMad(a,b,c)
  %7643 = fmul fast float %7640, %7551
  %7644 = fmul fast float %7642, %7551
  %7645 = fadd fast float %7643, %6867
  %7646 = fadd fast float %7644, %6868
  %7647 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %56, float %7645, float %7646, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.ResRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.ResRet.f32 %7647, 2
  %7651 = extractvalue %dx.types.ResRet.f32 %7647, 3
  %7652 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7648, float* %7652, align 4
  %7653 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7649, float* %7653, align 4
  %7654 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7650, float* %7654, align 4
  %7655 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7651, float* %7655, align 4
  %7656 = fsub fast float %7648, %7553
  %7657 = fcmp fast olt float %7656, 0.000000e+00
  %7658 = select i1 %7657, float 0.000000e+00, float 1.000000e+00
  %7659 = fadd fast float %7658, %7628
  %7660 = fmul fast float %7658, %7656
  %7661 = fadd fast float %7660, %7629
  br label %7662

; <label>:7662                                    ; preds = %7662, %7627
  %7663 = phi i32 [ 1, %7627 ], [ %7674, %7662 ]
  %7664 = phi float [ %7661, %7627 ], [ %7673, %7662 ]
  %7665 = phi float [ %7659, %7627 ], [ %7671, %7662 ]
  %7666 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7663
  %7667 = load float, float* %7666, align 4, !tbaa !123, !noalias !113
  %7668 = fsub fast float %7667, %7553
  %7669 = fcmp fast olt float %7668, 0.000000e+00
  %7670 = select i1 %7669, float 0.000000e+00, float 1.000000e+00
  %7671 = fadd fast float %7670, %7665
  %7672 = fmul fast float %7670, %7668
  %7673 = fadd fast float %7672, %7664
  %7674 = add nuw nsw i32 %7663, 1
  %7675 = icmp eq i32 %7674, 4
  br i1 %7675, label %7676, label %7662, !llvm.loop !125

; <label>:7676                                    ; preds = %7662
  %7677 = add nuw nsw i32 %7630, 1
  %7678 = icmp eq i32 %7677, 8
  br i1 %7678, label %7679, label %7627, !llvm.loop !126

; <label>:7679                                    ; preds = %7676
  %7680 = fdiv fast float 1.000000e+00, %7671
  %7681 = fmul fast float %7680, %7673
  %7682 = fdiv fast float 1.000000e+00, %7553
  %7683 = fmul fast float %7681, %7682
  %7684 = call float @dx.op.unary.f32(i32 7, float %7683)  ; Saturate(value)
  %7685 = call float @dx.op.binary.f32(i32 35, float %7684, float 0.000000e+00)  ; FMax(a,b)
  %7686 = fmul fast float %7671, 3.125000e-02
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = fmul fast float %7687, 2.000000e+00
  %7689 = fadd fast float %7688, -1.000000e+00
  %7690 = fcmp fast ogt float %7689, 0.000000e+00
  %7691 = fcmp fast olt float %7689, 0.000000e+00
  %7692 = zext i1 %7690 to i32
  %7693 = zext i1 %7691 to i32
  %7694 = sub nsw i32 %7692, %7693
  %7695 = sitofp i32 %7694 to float
  %7696 = fmul fast float %7695, %7689
  %7697 = fsub fast float 1.000000e+00, %7696
  %7698 = fmul fast float %7697, %7697
  %7699 = fmul fast float %7698, %7697
  %7700 = fsub fast float %7697, %7699
  %7701 = fmul fast float %7700, %7685
  %7702 = fsub fast float 1.000000e+00, %7699
  %7703 = fsub fast float %7702, %7701
  %7704 = fmul fast float %7695, 5.000000e-01
  %7705 = fmul fast float %7704, %7703
  %7706 = fsub fast float 5.000000e-01, %7705
  br label %7707

; <label>:7707                                    ; preds = %7679, %7555, %7540
  %7708 = phi float [ 1.000000e+00, %7540 ], [ %7621, %7555 ], [ %7706, %7679 ]
  %7709 = fcmp fast ogt float %6970, 0.000000e+00
  br i1 %7709, label %7710, label %7874, !dx.controlflow.hints !128

; <label>:7710                                    ; preds = %7707
  %7711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7712 = extractvalue %dx.types.CBufRet.f32 %7711, 0
  %7713 = fadd fast float %7712, %6860
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 2
  %7716 = extractvalue %dx.types.CBufRet.f32 %7714, 3
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = call float @dx.op.binary.f32(i32 35, float %7713, float 0.000000e+00)  ; FMax(a,b)
  %7720 = fadd fast float %7719, 0x3F10000000000000
  %7721 = fcmp fast oeq float %7718, 0.000000e+00
  br i1 %7721, label %7722, label %7789

; <label>:7722                                    ; preds = %7710
  %7723 = extractvalue %dx.types.CBufRet.f32 %7714, 1
  %7724 = extractvalue %dx.types.CBufRet.f32 %7714, 0
  %7725 = fmul fast float %7724, %6852
  %7726 = fmul fast float %7723, %6856
  %7727 = fadd fast float %7725, 5.000000e-01
  %7728 = call float @dx.op.unary.f32(i32 27, float %7727)  ; Round_ni(value)
  %7729 = fadd fast float %7726, 5.000000e-01
  %7730 = call float @dx.op.unary.f32(i32 27, float %7729)  ; Round_ni(value)
  %7731 = fsub fast float %7727, %7728
  %7732 = fsub fast float %7729, %7730
  %7733 = fadd fast float %7728, -5.000000e-01
  %7734 = fadd fast float %7730, -5.000000e-01
  %7735 = fmul fast float %7731, 2.000000e+00
  %7736 = fsub fast float 3.000000e+00, %7735
  %7737 = fadd fast float %7735, 1.000000e+00
  %7738 = fsub fast float 2.000000e+00, %7731
  %7739 = bitcast float %7736 to i32
  %7740 = sub nsw i32 2129859010, %7739
  %7741 = bitcast i32 %7740 to float
  %7742 = fmul fast float %7741, %7738
  %7743 = fadd fast float %7742, -1.000000e+00
  %7744 = bitcast float %7737 to i32
  %7745 = sub nsw i32 2129859010, %7744
  %7746 = bitcast i32 %7745 to float
  %7747 = fmul fast float %7746, %7731
  %7748 = fadd fast float %7747, 1.000000e+00
  %7749 = fmul fast float %7732, 2.000000e+00
  %7750 = fsub fast float 3.000000e+00, %7749
  %7751 = fadd fast float %7749, 1.000000e+00
  %7752 = fsub fast float 2.000000e+00, %7732
  %7753 = bitcast float %7750 to i32
  %7754 = sub nsw i32 2129859010, %7753
  %7755 = bitcast i32 %7754 to float
  %7756 = fmul fast float %7755, %7752
  %7757 = fadd fast float %7756, -1.000000e+00
  %7758 = bitcast float %7751 to i32
  %7759 = sub nsw i32 2129859010, %7758
  %7760 = bitcast i32 %7759 to float
  %7761 = fmul fast float %7760, %7732
  %7762 = fadd fast float %7761, 1.000000e+00
  %7763 = fadd fast float %7743, %7733
  %7764 = fmul fast float %7763, %7715
  %7765 = fadd fast float %7757, %7734
  %7766 = fmul fast float %7765, %7716
  %7767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7764, float %7766, float undef, float undef, i32 0, i32 0, i32 undef, float %7720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = fmul fast float %7768, %7736
  %7770 = fadd fast float %7748, %7733
  %7771 = fmul fast float %7770, %7715
  %7772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7771, float %7766, float undef, float undef, i32 0, i32 0, i32 undef, float %7720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 0
  %7774 = fmul fast float %7773, %7737
  %7775 = fadd fast float %7762, %7734
  %7776 = fmul fast float %7775, %7716
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7764, float %7776, float undef, float undef, i32 0, i32 0, i32 undef, float %7720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = fmul fast float %7778, %7736
  %7780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %57, float %7771, float %7776, float undef, float undef, i32 0, i32 0, i32 undef, float %7720)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7781 = extractvalue %dx.types.ResRet.f32 %7780, 0
  %7782 = fmul fast float %7781, %7737
  %7783 = fadd fast float %7782, %7779
  %7784 = fmul fast float %7783, %7751
  %7785 = fadd fast float %7774, %7769
  %7786 = fmul fast float %7785, %7750
  %7787 = fadd fast float %7786, %7784
  %7788 = fmul fast float %7787, 6.250000e-02
  br label %7874

; <label>:7789                                    ; preds = %7710
  %7790 = fmul fast float %270, 0x401921FB60000000
  %7791 = call float @dx.op.unary.f32(i32 13, float %7790)  ; Sin(value)
  %7792 = call float @dx.op.unary.f32(i32 12, float %7790)  ; Cos(value)
  %7793 = fsub fast float -0.000000e+00, %7791
  br label %7794

; <label>:7794                                    ; preds = %7843, %7789
  %7795 = phi float [ 0.000000e+00, %7789 ], [ %7838, %7843 ]
  %7796 = phi float [ 0.000000e+00, %7789 ], [ %7840, %7843 ]
  %7797 = phi i32 [ 0, %7789 ], [ %7844, %7843 ]
  %7798 = mul i32 %7797, 2
  %7799 = add i32 0, %7798
  %7800 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7799
  %7801 = load float, float* %7800, align 4
  %7802 = mul i32 %7797, 2
  %7803 = add i32 1, %7802
  %7804 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7803
  %7805 = load float, float* %7804, align 4
  %7806 = fmul fast float %7801, %7792
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7793, float %7806)  ; FMad(a,b,c)
  %7808 = fmul fast float %7801, %7791
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7792, float %7808)  ; FMad(a,b,c)
  %7810 = fmul fast float %7807, %7718
  %7811 = fmul fast float %7809, %7718
  %7812 = fadd fast float %7810, %6852
  %7813 = fadd fast float %7811, %6856
  %7814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %56, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7815 = extractvalue %dx.types.ResRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.ResRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.ResRet.f32 %7814, 2
  %7818 = extractvalue %dx.types.ResRet.f32 %7814, 3
  %7819 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7815, float* %7819, align 4
  %7820 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7816, float* %7820, align 4
  %7821 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7817, float* %7821, align 4
  %7822 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7818, float* %7822, align 4
  %7823 = fsub fast float %7815, %7720
  %7824 = fcmp fast olt float %7823, 0.000000e+00
  %7825 = select i1 %7824, float 0.000000e+00, float 1.000000e+00
  %7826 = fadd fast float %7825, %7795
  %7827 = fmul fast float %7825, %7823
  %7828 = fadd fast float %7827, %7796
  br label %7829

; <label>:7829                                    ; preds = %7829, %7794
  %7830 = phi i32 [ 1, %7794 ], [ %7841, %7829 ]
  %7831 = phi float [ %7828, %7794 ], [ %7840, %7829 ]
  %7832 = phi float [ %7826, %7794 ], [ %7838, %7829 ]
  %7833 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7830
  %7834 = load float, float* %7833, align 4, !tbaa !123, !noalias !113
  %7835 = fsub fast float %7834, %7720
  %7836 = fcmp fast olt float %7835, 0.000000e+00
  %7837 = select i1 %7836, float 0.000000e+00, float 1.000000e+00
  %7838 = fadd fast float %7837, %7832
  %7839 = fmul fast float %7837, %7835
  %7840 = fadd fast float %7839, %7831
  %7841 = add nuw nsw i32 %7830, 1
  %7842 = icmp eq i32 %7841, 4
  br i1 %7842, label %7843, label %7829, !llvm.loop !125

; <label>:7843                                    ; preds = %7829
  %7844 = add nuw nsw i32 %7797, 1
  %7845 = icmp eq i32 %7844, 8
  br i1 %7845, label %7846, label %7794, !llvm.loop !126

; <label>:7846                                    ; preds = %7843
  %7847 = fdiv fast float 1.000000e+00, %7838
  %7848 = fmul fast float %7847, %7840
  %7849 = fdiv fast float 1.000000e+00, %7720
  %7850 = fmul fast float %7848, %7849
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = call float @dx.op.binary.f32(i32 35, float %7851, float 0.000000e+00)  ; FMax(a,b)
  %7853 = fmul fast float %7838, 3.125000e-02
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = fmul fast float %7854, 2.000000e+00
  %7856 = fadd fast float %7855, -1.000000e+00
  %7857 = fcmp fast ogt float %7856, 0.000000e+00
  %7858 = fcmp fast olt float %7856, 0.000000e+00
  %7859 = zext i1 %7857 to i32
  %7860 = zext i1 %7858 to i32
  %7861 = sub nsw i32 %7859, %7860
  %7862 = sitofp i32 %7861 to float
  %7863 = fmul fast float %7862, %7856
  %7864 = fsub fast float 1.000000e+00, %7863
  %7865 = fmul fast float %7864, %7864
  %7866 = fmul fast float %7865, %7864
  %7867 = fsub fast float %7864, %7866
  %7868 = fmul fast float %7867, %7852
  %7869 = fsub fast float 1.000000e+00, %7866
  %7870 = fsub fast float %7869, %7868
  %7871 = fmul fast float %7862, 5.000000e-01
  %7872 = fmul fast float %7871, %7870
  %7873 = fsub fast float 5.000000e-01, %7872
  br label %7874

; <label>:7874                                    ; preds = %7846, %7722, %7707
  %7875 = phi float [ 1.000000e+00, %7707 ], [ %7788, %7722 ], [ %7873, %7846 ]
  %7876 = fsub fast float %7541, %7376
  %7877 = fmul fast float %7876, %6914
  %7878 = fadd fast float %7877, %7376
  %7879 = fsub fast float %7708, %7878
  %7880 = fmul fast float %7879, %6944
  %7881 = fadd fast float %7880, %7878
  %7882 = fsub fast float %7875, %7881
  %7883 = fmul fast float %7882, %6970
  %7884 = fadd fast float %7883, %7881
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 2
  %7887 = fcmp fast ogt float %7886, 0.000000e+00
  br i1 %7887, label %7888, label %7928, !dx.controlflow.hints !129

; <label>:7888                                    ; preds = %7874
  %7889 = fcmp fast ugt float %7886, 0.000000e+00
  br i1 %7889, label %7890, label %7925

; <label>:7890                                    ; preds = %7888
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 0
  %7893 = extractvalue %dx.types.CBufRet.f32 %7891, 1
  %7894 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7895 = extractvalue %dx.types.CBufRet.f32 %7891, 3
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7900 = extractvalue %dx.types.CBufRet.f32 %7896, 3
  %7901 = extractvalue %dx.types.CBufRet.f32 %7885, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7885, 1
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7907 = fadd fast float %7904, %6829
  %7908 = fadd fast float %7905, %6830
  %7909 = fadd fast float %7906, %6831
  %7910 = fmul fast float %7907, %7892
  %7911 = call float @dx.op.tertiary.f32(i32 46, float %7893, float %7908, float %7910)  ; FMad(a,b,c)
  %7912 = call float @dx.op.tertiary.f32(i32 46, float %7894, float %7909, float %7911)  ; FMad(a,b,c)
  %7913 = fadd fast float %7912, %7895
  %7914 = fmul fast float %7907, %7897
  %7915 = call float @dx.op.tertiary.f32(i32 46, float %7898, float %7908, float %7914)  ; FMad(a,b,c)
  %7916 = call float @dx.op.tertiary.f32(i32 46, float %7899, float %7909, float %7915)  ; FMad(a,b,c)
  %7917 = fadd fast float %7916, %7900
  %7918 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %52, float %7913, float %7917, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7919 = extractvalue %dx.types.ResRet.f32 %7918, 0
  %7920 = fmul fast float %7919, %7902
  %7921 = fadd fast float %7920, %7901
  %7922 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7923 = fmul fast float %7922, %7886
  %7924 = fsub fast float 1.000000e+00, %7923
  br label %7925

; <label>:7925                                    ; preds = %7890, %7888
  %7926 = phi float [ %7924, %7890 ], [ 1.000000e+00, %7888 ]
  %7927 = fmul fast float %7926, %7884
  br label %7928

; <label>:7928                                    ; preds = %7925, %7874, %6809
  %7929 = phi float [ 1.000000e+00, %6809 ], [ %7927, %7925 ], [ %7884, %7874 ]
  %7930 = call float @dx.op.binary.f32(i32 36, float %7929, float %7929)  ; FMin(a,b)
  %7931 = call float @dx.op.binary.f32(i32 36, float %7929, float %7930)  ; FMin(a,b)
  %7932 = fcmp fast ogt float %7931, 0.000000e+00
  br i1 %7932, label %7933, label %8098, !dx.controlflow.hints !130

; <label>:7933                                    ; preds = %7928
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7938 = extractvalue %dx.types.CBufRet.f32 %7934, 3
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = extractvalue %dx.types.CBufRet.f32 %7939, 1
  %7942 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7943 = extractvalue %dx.types.CBufRet.f32 %7939, 3
  %7944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.f32 %7944, 0
  %7946 = extractvalue %dx.types.CBufRet.f32 %7944, 1
  %7947 = extractvalue %dx.types.CBufRet.f32 %7944, 2
  %7948 = extractvalue %dx.types.CBufRet.f32 %7944, 3
  %7949 = fmul fast float %7935, %6829
  %7950 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %7936, float %7949)  ; FMad(a,b,c)
  %7951 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %7937, float %7950)  ; FMad(a,b,c)
  %7952 = fadd fast float %7951, %7938
  %7953 = fmul fast float %7940, %6829
  %7954 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %7941, float %7953)  ; FMad(a,b,c)
  %7955 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %7942, float %7954)  ; FMad(a,b,c)
  %7956 = fadd fast float %7955, %7943
  %7957 = fmul fast float %7945, %6829
  %7958 = call float @dx.op.tertiary.f32(i32 46, float %6830, float %7946, float %7957)  ; FMad(a,b,c)
  %7959 = call float @dx.op.tertiary.f32(i32 46, float %6831, float %7947, float %7958)  ; FMad(a,b,c)
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 0
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 1
  %7963 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7964 = fmul fast float %7963, %7952
  %7965 = fmul fast float %7963, %7956
  %7966 = fadd fast float %7964, %7961
  %7967 = fadd fast float %7965, %7962
  %7968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7968, 0
  %7970 = extractvalue %dx.types.CBufRet.f32 %7968, 1
  %7971 = fsub fast float %7966, %7969
  %7972 = fsub fast float %7967, %7970
  %7973 = fcmp fast olt float %7971, 0.000000e+00
  %7974 = fcmp fast olt float %7972, 0.000000e+00
  %7975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.CBufRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.CBufRet.f32 %7975, 2
  %7979 = extractvalue %dx.types.CBufRet.f32 %7975, 3
  %7980 = select i1 %7973, float %7976, float %7978
  %7981 = select i1 %7974, float %7977, float %7979
  %7982 = fmul fast float %7980, %7971
  %7983 = fmul fast float %7981, %7972
  %7984 = call float @dx.op.unary.f32(i32 6, float %7982)  ; FAbs(value)
  %7985 = call float @dx.op.unary.f32(i32 6, float %7983)  ; FAbs(value)
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 0
  %7988 = call float @dx.op.binary.f32(i32 35, float %7984, float %7985)  ; FMax(a,b)
  %7989 = fsub fast float %7987, %7988
  %7990 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7991 = fcmp fast ogt float %7990, 0.000000e+00
  br i1 %7991, label %7992, label %8033, !dx.controlflow.hints !131

; <label>:7992                                    ; preds = %7933
  %7993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %55, float %7966, float %7967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7994 = extractvalue %dx.types.ResRet.f32 %7993, 1
  %7995 = fcmp fast ogt float %7994, 0.000000e+00
  br i1 %7995, label %7996, label %8028

; <label>:7996                                    ; preds = %7992
  %7997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %7966, float %7967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7998 = extractvalue %dx.types.ResRet.f32 %7997, 0
  %7999 = extractvalue %dx.types.ResRet.f32 %7997, 1
  %8000 = extractvalue %dx.types.ResRet.f32 %7997, 2
  %8001 = extractvalue %dx.types.ResRet.f32 %7997, 3
  %8002 = fsub fast float 1.000000e+00, %7948
  %8003 = fsub fast float %8002, %7959
  %8004 = fmul fast float %8003, 0x400921FB60000000
  %8005 = fadd fast float %8004, 0x3FF921FB60000000
  %8006 = call float @dx.op.unary.f32(i32 13, float %8005)  ; Sin(value)
  %8007 = fadd fast float %8006, -1.000000e+00
  %8008 = fmul fast float %8007, 0x3FD45F3060000000
  %8009 = fmul fast float %8003, 0x401921FB60000000
  %8010 = fadd fast float %8009, 0x400921FB60000000
  %8011 = call float @dx.op.unary.f32(i32 13, float %8010)  ; Sin(value)
  %8012 = fadd fast float %8011, 0x3E7777A5C0000000
  %8013 = fmul fast float %8012, 0x3FC45F3060000000
  %8014 = fmul fast float %8003, 0x4022D97C80000000
  %8015 = fadd fast float %8014, 0x4012D97C80000000
  %8016 = call float @dx.op.unary.f32(i32 13, float %8015)  ; Sin(value)
  %8017 = fadd fast float %8016, 1.000000e+00
  %8018 = fmul fast float %8017, 0x3FBB2995E0000000
  %8019 = fmul fast float %8003, 0x402921FB60000000
  %8020 = fadd fast float %8019, 0x401921FB60000000
  %8021 = call float @dx.op.unary.f32(i32 13, float %8020)  ; Sin(value)
  %8022 = fadd fast float %8021, 0xBE8777A5C0000000
  %8023 = fmul fast float %8022, 0x3FB45F3060000000
  %8024 = call float @dx.op.dot4.f32(i32 56, float %7998, float %7999, float %8000, float %8001, float %8008, float %8013, float %8018, float %8023)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8025 = fmul fast float %8024, 0xBFF7154760000000
  %8026 = call float @dx.op.unary.f32(i32 21, float %8025)  ; Exp(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8026)  ; Saturate(value)
  br label %8028

; <label>:8028                                    ; preds = %7996, %7992
  %8029 = phi float [ %8027, %7996 ], [ 1.000000e+00, %7992 ]
  %8030 = fadd fast float %8029, -1.000000e+00
  %8031 = fmul fast float %8030, %7990
  %8032 = fadd fast float %8031, 1.000000e+00
  br label %8033

; <label>:8033                                    ; preds = %8028, %7933
  %8034 = phi float [ %8032, %8028 ], [ 1.000000e+00, %7933 ]
  %8035 = fmul fast float %8034, %7929
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 0
  %8038 = extractvalue %dx.types.CBufRet.f32 %8036, 1
  %8039 = extractvalue %dx.types.CBufRet.f32 %8036, 2
  %8040 = fadd fast float %8037, %165
  %8041 = fadd fast float %8038, %166
  %8042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8042, 1
  %8044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8045 = extractvalue %dx.types.CBufRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.CBufRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.CBufRet.f32 %8044, 2
  %8048 = fsub fast float -0.000000e+00, %8040
  %8049 = fsub fast float -0.000000e+00, %8041
  %8050 = fsub fast float %5769, %8039
  %8051 = fadd fast float %8050, %8043
  %8052 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8048, float %8049, float %8051)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8045, float %8046, float %8047)  ; Dot3(ax,ay,az,bx,by,bz)
  %8054 = fdiv fast float 1.000000e+00, %8053
  %8055 = fmul fast float %8054, %8052
  %8056 = fmul fast float %8045, %8055
  %8057 = fmul fast float %8046, %8055
  %8058 = fadd fast float %8056, %8040
  %8059 = fadd fast float %8057, %8041
  %8060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8061 = extractvalue %dx.types.CBufRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.CBufRet.f32 %8060, 1
  %8063 = fsub fast float %8058, %8061
  %8064 = fsub fast float %8059, %8062
  %8065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8066 = extractvalue %dx.types.CBufRet.f32 %8065, 2
  %8067 = extractvalue %dx.types.CBufRet.f32 %8065, 3
  %8068 = fmul fast float %8063, %8066
  %8069 = fmul fast float %8064, %8067
  %8070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8071 = extractvalue %dx.types.CBufRet.i32 %8070, 3
  %8072 = icmp eq i32 %8071, 0
  br i1 %8072, label %8078, label %8073

; <label>:8073                                    ; preds = %8033
  %8074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %8068, float %8069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8075 = extractvalue %dx.types.ResRet.f32 %8074, 0
  %8076 = extractvalue %dx.types.ResRet.f32 %8074, 1
  %8077 = extractvalue %dx.types.ResRet.f32 %8074, 2
  br label %8083

; <label>:8078                                    ; preds = %8033
  %8079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %55, float %8068, float %8069, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 1
  %8082 = extractvalue %dx.types.ResRet.f32 %8079, 2
  br label %8083

; <label>:8083                                    ; preds = %8078, %8073
  %8084 = phi float [ %8075, %8073 ], [ %8080, %8078 ]
  %8085 = phi float [ %8076, %8073 ], [ %8081, %8078 ]
  %8086 = phi float [ %8077, %8073 ], [ %8082, %8078 ]
  %8087 = extractvalue %dx.types.CBufRet.f32 %8042, 2
  %8088 = fmul fast float %8087, %8084
  %8089 = extractvalue %dx.types.CBufRet.f32 %8042, 0
  %8090 = fsub fast float %8055, %8089
  %8091 = fsub fast float %8090, %8088
  %8092 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8091)  ; FMax(a,b)
  %8093 = fmul fast float %8092, %8085
  %8094 = call float @dx.op.binary.f32(i32 36, float %8086, float %8093)  ; FMin(a,b)
  %8095 = fmul fast float %8094, 0xBFF7154760000000
  %8096 = call float @dx.op.unary.f32(i32 21, float %8095)  ; Exp(value)
  %8097 = fmul fast float %8035, %8096
  br label %8098

; <label>:8098                                    ; preds = %8083, %7928
  %8099 = phi float [ %8097, %8083 ], [ %7929, %7928 ]
  %8100 = call float @dx.op.binary.f32(i32 36, float %8099, float %8099)  ; FMin(a,b)
  %8101 = call float @dx.op.binary.f32(i32 36, float %8099, float %8100)  ; FMin(a,b)
  %8102 = fcmp fast ogt float %8101, 0.000000e+00
  br i1 %8102, label %8103, label %8486, !dx.controlflow.hints !132

; <label>:8103                                    ; preds = %8098
  %8104 = fmul fast float %8099, %6821
  %8105 = fmul fast float %8099, %6822
  %8106 = fmul fast float %8099, %6823
  %8107 = fsub fast float %167, %5578
  %8108 = fcmp fast ogt float %8107, 0.000000e+00
  %8109 = fmul fast float %6810, 5.120000e+02
  %8110 = fmul fast float %6811, 5.120000e+02
  %8111 = fmul fast float %6812, 5.120000e+02
  %8112 = fadd fast float %8111, %167
  %8113 = fsub fast float %5578, %8112
  %8114 = fmul fast float %8113, 2.000000e+00
  %8115 = fadd fast float %8114, %8112
  %8116 = select i1 %8108, float %8115, float %8112
  %8117 = fsub fast float %8116, %167
  %8118 = call float @dx.op.dot3.f32(i32 55, float %8109, float %8110, float %8117, float %8109, float %8110, float %8117)  ; Dot3(ax,ay,az,bx,by,bz)
  %8119 = call float @dx.op.unary.f32(i32 25, float %8118)  ; Rsqrt(value)
  %8120 = fmul fast float %8119, %8109
  %8121 = fmul fast float %8119, %8110
  %8122 = fmul fast float %8119, %8117
  %8123 = fsub fast float %5578, %167
  %8124 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8123)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8120, float %8121, float %8122)  ; Dot3(ax,ay,az,bx,by,bz)
  %8126 = fdiv fast float 1.000000e+00, %8125
  %8127 = fmul fast float %8126, %8124
  %8128 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8129 = fcmp fast ogt float %8128, 0.000000e+00
  %8130 = fcmp fast olt float %8128, 0.000000e+00
  %8131 = zext i1 %8129 to i32
  %8132 = zext i1 %8130 to i32
  %8133 = sub nsw i32 %8131, %8132
  %8134 = sitofp i32 %8133 to float
  %8135 = fsub fast float %8116, %5578
  %8136 = call float @dx.op.dot3.f32(i32 55, float %8109, float %8110, float %8135, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8137 = fcmp fast ogt float %8136, 0.000000e+00
  %8138 = fcmp fast olt float %8136, 0.000000e+00
  %8139 = zext i1 %8137 to i32
  %8140 = zext i1 %8138 to i32
  %8141 = sub nsw i32 %8139, %8140
  %8142 = sitofp i32 %8141 to float
  %8143 = fcmp fast une float %8134, %8142
  br i1 %8143, label %8144, label %8154

; <label>:8144                                    ; preds = %8103
  %8145 = fmul fast float %8127, %8122
  %8146 = fmul fast float %8127, %8121
  %8147 = fmul fast float %8127, %8120
  %8148 = fmul fast float %8147, %8147
  %8149 = fmul fast float %8146, %8146
  %8150 = fadd fast float %8148, %8149
  %8151 = fmul fast float %8145, %8145
  %8152 = fadd fast float %8150, %8151
  %8153 = call float @dx.op.unary.f32(i32 24, float %8152)  ; Sqrt(value)
  br label %8164

; <label>:8154                                    ; preds = %8103
  %8155 = icmp slt i32 %8133, 0
  br i1 %8155, label %8156, label %8164

; <label>:8156                                    ; preds = %8154
  %8157 = fsub fast float %167, %8116
  %8158 = fmul fast float %8109, %8109
  %8159 = fmul fast float %8110, %8110
  %8160 = fadd fast float %8158, %8159
  %8161 = fmul fast float %8157, %8157
  %8162 = fadd fast float %8160, %8161
  %8163 = call float @dx.op.unary.f32(i32 24, float %8162)  ; Sqrt(value)
  br label %8164

; <label>:8164                                    ; preds = %8156, %8154, %8144
  %8165 = phi float [ %8153, %8144 ], [ %8163, %8156 ], [ 0.000000e+00, %8154 ]
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = select i1 %8108, float -0.000000e+00, float %8166
  %8168 = fmul fast float %5575, 0x3FF7154760000000
  %8169 = fmul fast float %8168, %8167
  %8170 = fmul fast float %5576, 0x3FF7154760000000
  %8171 = fmul fast float %8170, %8167
  %8172 = fmul fast float %5577, 0x3FF7154760000000
  %8173 = fmul fast float %8172, %8167
  %8174 = call float @dx.op.unary.f32(i32 21, float %8169)  ; Exp(value)
  %8175 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8176 = call float @dx.op.unary.f32(i32 21, float %8173)  ; Exp(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8178 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8179 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8180 = fmul fast float %8104, %8177
  %8181 = fmul fast float %8105, %8178
  %8182 = fmul fast float %8106, %8179
  %8183 = fsub fast float %6810, %185
  %8184 = fsub fast float %6811, %186
  %8185 = fsub fast float %6812, %187
  %8186 = call float @dx.op.dot3.f32(i32 55, float %8183, float %8184, float %8185, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = call float @dx.op.unary.f32(i32 25, float %8186)  ; Rsqrt(value)
  %8188 = fmul fast float %8187, %8183
  %8189 = fmul fast float %8187, %8184
  %8190 = fmul fast float %8187, %8185
  %8191 = call float @dx.op.dot3.f32(i32 55, float %6810, float %6811, float %6812, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %8192 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %8188, float %8189, float %8190)  ; Dot3(ax,ay,az,bx,by,bz)
  %8193 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8194 = fmul fast float %8193, %8193
  %8195 = fmul fast float %8194, %5797
  %8196 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  %8197 = fmul fast float %8196, %8193
  %8198 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %8188, float %8189, float %8190)  ; Dot3(ax,ay,az,bx,by,bz)
  %8199 = fmul fast float %8198, %8198
  %8200 = call float @dx.op.unary.f32(i32 6, float %8191)  ; FAbs(value)
  %8201 = fsub fast float 1.000000e+00, %5790
  %8202 = fmul fast float %5772, %5772
  %8203 = fmul fast float %8202, %8201
  %8204 = fadd fast float %8203, %5790
  %8205 = bitcast float %8204 to i32
  %8206 = ashr i32 %8205, 1
  %8207 = add nsw i32 %8206, 532487669
  %8208 = bitcast i32 %8207 to float
  %8209 = fadd fast float %8208, %5772
  %8210 = fmul fast float %5790, %8199
  %8211 = fsub fast float 1.000000e+00, %8199
  %8212 = fadd fast float %8211, %8210
  %8213 = fmul fast float %8200, %8200
  %8214 = fmul fast float %8213, %8201
  %8215 = fadd fast float %8214, %5790
  %8216 = bitcast float %8215 to i32
  %8217 = ashr i32 %8216, 1
  %8218 = add nsw i32 %8217, 532487669
  %8219 = bitcast i32 %8218 to float
  %8220 = fadd fast float %8219, %8200
  %8221 = fmul fast float %8212, %8212
  %8222 = fmul fast float %8221, %8209
  %8223 = fmul fast float %8222, %8220
  %8224 = fdiv fast float 0x3FF0A00000000000, %8223
  %8225 = fmul fast float %8224, %5790
  %8226 = fmul fast float %6043, 0x3FF9999980000000
  %8227 = fsub fast float 5.000000e+00, %8226
  %8228 = call float @dx.op.unary.f32(i32 6, float %8192)  ; FAbs(value)
  %8229 = fsub fast float 1.000000e+00, %8228
  %8230 = fmul fast float %6043, 0x41D9660740000000
  %8231 = fadd fast float %8230, 0xC1EFBF8940000000
  %8232 = bitcast float %8229 to i32
  %8233 = sitofp i32 %8232 to float
  %8234 = fmul fast float %8233, %8227
  %8235 = fadd fast float %8231, %8234
  %8236 = fptosi float %8235 to i32
  %8237 = bitcast i32 %8236 to float
  %8238 = fsub fast float 1.000000e+00, %5758
  %8239 = fsub fast float 1.000000e+00, %5759
  %8240 = fsub fast float 1.000000e+00, %5770
  %8241 = fmul fast float %8237, %8238
  %8242 = fmul fast float %8237, %8239
  %8243 = fmul fast float %8237, %8240
  %8244 = fadd fast float %8241, %5758
  %8245 = fadd fast float %8242, %5759
  %8246 = fadd fast float %8243, %5770
  br i1 %6066, label %8247, label %8270

; <label>:8247                                    ; preds = %8164
  %8248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %8228, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8249 = extractvalue %dx.types.ResRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.ResRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.ResRet.f32 %8248, 2
  %8252 = fadd fast float %8249, -5.000000e-01
  %8253 = fadd fast float %8250, -5.000000e-01
  %8254 = fadd fast float %8251, -5.000000e-01
  %8255 = fmul fast float %5758, 4.000000e+00
  %8256 = fmul fast float %8255, %8238
  %8257 = fmul fast float %8256, %8252
  %8258 = fmul fast float %5759, 4.000000e+00
  %8259 = fmul fast float %8258, %8239
  %8260 = fmul fast float %8259, %8253
  %8261 = fmul fast float %5770, 4.000000e+00
  %8262 = fmul fast float %8261, %8240
  %8263 = fmul fast float %8262, %8254
  %8264 = fadd fast float %8257, %8244
  %8265 = fadd fast float %8260, %8245
  %8266 = fadd fast float %8263, %8246
  %8267 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8268 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8269 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  br label %8270

; <label>:8270                                    ; preds = %8247, %8164
  %8271 = phi float [ %8267, %8247 ], [ %8244, %8164 ]
  %8272 = phi float [ %8268, %8247 ], [ %8245, %8164 ]
  %8273 = phi float [ %8269, %8247 ], [ %8246, %8164 ]
  %8274 = fmul fast float %8191, 9.843750e-01
  %8275 = fadd fast float %8274, 7.812500e-03
  %8276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %8275, float %6047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8277 = extractvalue %dx.types.ResRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.ResRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.ResRet.f32 %8276, 2
  %8280 = extractvalue %dx.types.ResRet.f32 %8276, 3
  %8281 = fsub fast float %8279, %8277
  %8282 = fsub fast float %8280, %8278
  %8283 = fmul fast float %8281, %6053
  %8284 = fmul fast float %8282, %6053
  %8285 = fadd fast float %8283, %8277
  %8286 = fadd fast float %8284, %8278
  %8287 = fmul fast float %8285, %5758
  %8288 = fmul fast float %8285, %5759
  %8289 = fmul fast float %8285, %5770
  %8290 = fadd fast float %8287, %8286
  %8291 = fadd fast float %8288, %8286
  %8292 = fadd fast float %8289, %8286
  br i1 %6066, label %8293, label %8316

; <label>:8293                                    ; preds = %8270
  %8294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %8191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.ResRet.f32 %8294, 1
  %8297 = extractvalue %dx.types.ResRet.f32 %8294, 2
  %8298 = fadd fast float %8295, -5.000000e-01
  %8299 = fadd fast float %8296, -5.000000e-01
  %8300 = fadd fast float %8297, -5.000000e-01
  %8301 = fmul fast float %5758, 4.000000e+00
  %8302 = fmul fast float %8301, %8238
  %8303 = fmul fast float %8302, %8298
  %8304 = fmul fast float %5759, 4.000000e+00
  %8305 = fmul fast float %8304, %8239
  %8306 = fmul fast float %8305, %8299
  %8307 = fmul fast float %5770, 4.000000e+00
  %8308 = fmul fast float %8307, %8240
  %8309 = fmul fast float %8308, %8300
  %8310 = fadd fast float %8303, %8290
  %8311 = fadd fast float %8306, %8291
  %8312 = fadd fast float %8309, %8292
  %8313 = call float @dx.op.unary.f32(i32 7, float %8310)  ; Saturate(value)
  %8314 = call float @dx.op.unary.f32(i32 7, float %8311)  ; Saturate(value)
  %8315 = call float @dx.op.unary.f32(i32 7, float %8312)  ; Saturate(value)
  br label %8316

; <label>:8316                                    ; preds = %8293, %8270
  %8317 = phi float [ %8313, %8293 ], [ %8290, %8270 ]
  %8318 = phi float [ %8314, %8293 ], [ %8291, %8270 ]
  %8319 = phi float [ %8315, %8293 ], [ %8292, %8270 ]
  %8320 = call float @dx.op.binary.f32(i32 35, float %8318, float %8319)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 35, float %8317, float %8320)  ; FMax(a,b)
  %8322 = fsub fast float 1.000000e+00, %8321
  %8323 = call float @dx.op.binary.f32(i32 35, float %8200, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8324 = fdiv fast float %4460, %8323
  %8325 = fmul fast float %6719, %8324
  %8326 = fmul fast float %6721, %8324
  %8327 = fmul fast float %6723, %8324
  %8328 = call float @dx.op.unary.f32(i32 21, float %8325)  ; Exp(value)
  %8329 = call float @dx.op.unary.f32(i32 21, float %8326)  ; Exp(value)
  %8330 = call float @dx.op.unary.f32(i32 21, float %8327)  ; Exp(value)
  %8331 = call float @dx.op.unary.f32(i32 7, float %8328)  ; Saturate(value)
  %8332 = call float @dx.op.unary.f32(i32 7, float %8329)  ; Saturate(value)
  %8333 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8334 = select i1 %6716, float %8331, float 0.000000e+00
  %8335 = select i1 %6717, float %8332, float 0.000000e+00
  %8336 = select i1 %6718, float %8333, float 0.000000e+00
  %8337 = fsub fast float -0.000000e+00, %5764
  %8338 = fsub fast float -0.000000e+00, %5765
  %8339 = fsub fast float -0.000000e+00, %5766
  %8340 = call float @dx.op.dot3.f32(i32 55, float %6810, float %6811, float %6812, float %8337, float %8338, float %8339)  ; Dot3(ax,ay,az,bx,by,bz)
  %8341 = call float @dx.op.unary.f32(i32 7, float %8340)  ; Saturate(value)
  %8342 = fmul fast float %8341, 9.843750e-01
  %8343 = fadd fast float %8342, 7.812500e-03
  %8344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %8343, float %6047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8345 = extractvalue %dx.types.ResRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.ResRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.ResRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.ResRet.f32 %8344, 3
  %8349 = fsub fast float %8347, %8345
  %8350 = fsub fast float %8348, %8346
  %8351 = fmul fast float %8349, %6053
  %8352 = fmul fast float %8350, %6053
  %8353 = fadd fast float %8351, %8345
  %8354 = fadd fast float %8352, %8346
  %8355 = fmul fast float %8353, %5758
  %8356 = fmul fast float %8353, %5759
  %8357 = fmul fast float %8353, %5770
  %8358 = fadd fast float %8355, %8354
  %8359 = fadd fast float %8356, %8354
  %8360 = fadd fast float %8357, %8354
  br i1 %6066, label %8361, label %8384

; <label>:8361                                    ; preds = %8316
  %8362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %8341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8363 = extractvalue %dx.types.ResRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.ResRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.ResRet.f32 %8362, 2
  %8366 = fadd fast float %8363, -5.000000e-01
  %8367 = fadd fast float %8364, -5.000000e-01
  %8368 = fadd fast float %8365, -5.000000e-01
  %8369 = fmul fast float %5758, 4.000000e+00
  %8370 = fmul fast float %8369, %8238
  %8371 = fmul fast float %8370, %8366
  %8372 = fmul fast float %5759, 4.000000e+00
  %8373 = fmul fast float %8372, %8239
  %8374 = fmul fast float %8373, %8367
  %8375 = fmul fast float %5770, 4.000000e+00
  %8376 = fmul fast float %8375, %8240
  %8377 = fmul fast float %8376, %8368
  %8378 = fadd fast float %8371, %8358
  %8379 = fadd fast float %8374, %8359
  %8380 = fadd fast float %8377, %8360
  %8381 = call float @dx.op.unary.f32(i32 7, float %8378)  ; Saturate(value)
  %8382 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  br label %8384

; <label>:8384                                    ; preds = %8361, %8316
  %8385 = phi float [ %8381, %8361 ], [ %8358, %8316 ]
  %8386 = phi float [ %8382, %8361 ], [ %8359, %8316 ]
  %8387 = phi float [ %8383, %8361 ], [ %8360, %8316 ]
  %8388 = call float @dx.op.binary.f32(i32 35, float %8386, float %8387)  ; FMax(a,b)
  %8389 = call float @dx.op.binary.f32(i32 35, float %8385, float %8388)  ; FMax(a,b)
  %8390 = fsub fast float 1.000000e+00, %8389
  %8391 = fmul fast float %5787, %6783
  %8392 = fadd fast float %6785, %8391
  %8393 = call float @dx.op.unary.f32(i32 7, float %8392)  ; Saturate(value)
  %8394 = fsub fast float %6810, %5778
  %8395 = fsub fast float %6811, %5779
  %8396 = fsub fast float %6812, %5780
  %8397 = call float @dx.op.dot3.f32(i32 55, float %8394, float %8395, float %8396, float %8394, float %8395, float %8396)  ; Dot3(ax,ay,az,bx,by,bz)
  %8398 = call float @dx.op.unary.f32(i32 25, float %8397)  ; Rsqrt(value)
  %8399 = fmul fast float %8398, %8394
  %8400 = fmul fast float %8398, %8395
  %8401 = fmul fast float %8398, %8396
  %8402 = call float @dx.op.dot3.f32(i32 55, float %8337, float %8338, float %8339, float %8399, float %8400, float %8401)  ; Dot3(ax,ay,az,bx,by,bz)
  %8403 = fmul fast float %8402, %8402
  %8404 = call float @dx.op.unary.f32(i32 6, float %8341)  ; FAbs(value)
  %8405 = call float @dx.op.binary.f32(i32 35, float %8393, float 0x3F847AE140000000)  ; FMax(a,b)
  %8406 = fmul fast float %8405, %8405
  %8407 = fmul fast float %8406, %8406
  %8408 = fsub fast float 1.000000e+00, %8407
  %8409 = fmul fast float %8202, %8408
  %8410 = fadd fast float %8409, %8407
  %8411 = bitcast float %8410 to i32
  %8412 = ashr i32 %8411, 1
  %8413 = add nsw i32 %8412, 532487669
  %8414 = bitcast i32 %8413 to float
  %8415 = fadd fast float %8414, %5772
  %8416 = fmul fast float %8407, %8403
  %8417 = fsub fast float 1.000000e+00, %8403
  %8418 = fadd fast float %8417, %8416
  %8419 = fmul fast float %8404, %8404
  %8420 = fmul fast float %8419, %8408
  %8421 = fadd fast float %8420, %8407
  %8422 = bitcast float %8421 to i32
  %8423 = ashr i32 %8422, 1
  %8424 = add nsw i32 %8423, 532487669
  %8425 = bitcast i32 %8424 to float
  %8426 = fadd fast float %8425, %8404
  %8427 = fmul fast float %8418, %8418
  %8428 = fmul fast float %8427, %8415
  %8429 = fmul fast float %8428, %8426
  %8430 = fdiv fast float 0x3FF0A00000000000, %8429
  %8431 = fmul fast float %8430, %8407
  %8432 = fmul fast float %8341, %8334
  %8433 = fmul fast float %8341, %8335
  %8434 = fmul fast float %8341, %8336
  %8435 = fmul fast float %8432, %8390
  %8436 = fmul fast float %8435, %8431
  %8437 = fmul fast float %8433, %8390
  %8438 = fmul fast float %8437, %8431
  %8439 = fmul fast float %8434, %8390
  %8440 = fmul fast float %8439, %8431
  %8441 = fmul fast float %8271, %8225
  %8442 = fmul fast float %8272, %8225
  %8443 = fmul fast float %8273, %8225
  %8444 = fsub fast float 1.000000e+00, %8192
  %8445 = bitcast float %8444 to i32
  %8446 = sitofp i32 %8445 to float
  %8447 = fmul fast float %8446, 5.000000e+00
  %8448 = fadd fast float %8447, 0xC1EFBF8940000000
  %8449 = fptosi float %8448 to i32
  %8450 = bitcast i32 %8449 to float
  %8451 = fmul fast float %8450, %5124
  %8452 = fmul fast float %8322, %8451
  %8453 = fmul fast float %8452, %6711
  %8454 = fmul fast float %8452, %6712
  %8455 = fmul fast float %8452, %6713
  %8456 = fadd fast float %8453, %8441
  %8457 = fadd fast float %8454, %8442
  %8458 = fadd fast float %8455, %8443
  %8459 = fmul fast float %8456, %8197
  %8460 = fmul fast float %8457, %8197
  %8461 = fmul fast float %8458, %8197
  %8462 = fmul fast float %8197, %8180
  %8463 = fmul fast float %8462, %8322
  %8464 = fmul fast float %8197, %8181
  %8465 = fmul fast float %8464, %8322
  %8466 = fmul fast float %8197, %8182
  %8467 = fmul fast float %8466, %8322
  %8468 = fadd fast float %8459, %8436
  %8469 = fadd fast float %8460, %8438
  %8470 = fadd fast float %8461, %8440
  %8471 = fmul fast float %8468, %8180
  %8472 = fmul fast float %8469, %8181
  %8473 = fmul fast float %8470, %8182
  %8474 = fadd fast float %8463, %6800
  %8475 = fmul fast float %8474, %5149
  %8476 = fadd fast float %8465, %6802
  %8477 = fmul fast float %8476, %5149
  %8478 = fadd fast float %8467, %6804
  %8479 = fmul fast float %8478, %5149
  %8480 = fadd fast float %8471, %6764
  %8481 = fmul fast float %8480, %5149
  %8482 = fadd fast float %8472, %6767
  %8483 = fmul fast float %8482, %5149
  %8484 = fadd fast float %8473, %6770
  %8485 = fmul fast float %8484, %5149
  br label %8486

; <label>:8486                                    ; preds = %8384, %8098, %6694
  %8487 = phi float [ %6765, %6694 ], [ %6765, %8098 ], [ %8481, %8384 ]
  %8488 = phi float [ %6768, %6694 ], [ %6768, %8098 ], [ %8483, %8384 ]
  %8489 = phi float [ %6771, %6694 ], [ %6771, %8098 ], [ %8485, %8384 ]
  %8490 = phi float [ %6801, %6694 ], [ %6801, %8098 ], [ %8475, %8384 ]
  %8491 = phi float [ %6803, %6694 ], [ %6803, %8098 ], [ %8477, %8384 ]
  %8492 = phi float [ %6805, %6694 ], [ %6805, %8098 ], [ %8479, %8384 ]
  %8493 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.i32 %8493, 0
  %8495 = icmp eq i32 %8494, 0
  br i1 %8495, label %9313, label %8496

; <label>:8496                                    ; preds = %8486
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8500 = fmul fast float %8498, %110
  %8501 = fmul fast float %8499, %111
  %8502 = fptoui float %8500 to i32
  %8503 = fptoui float %8501 to i32
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8508 = fadd fast float %98, -4.000000e+00
  %8509 = call float @dx.op.binary.f32(i32 35, float %8508, float 0.000000e+00)  ; FMax(a,b)
  %8510 = fadd fast float %8509, %8505
  %8511 = fmul fast float %8510, %8506
  %8512 = call float @dx.op.unary.f32(i32 23, float %8511)  ; Log(value)
  %8513 = fmul fast float %8512, %8507
  %8514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8515 = extractvalue %dx.types.CBufRet.f32 %8514, 2
  %8516 = fmul fast float %8513, %8515
  %8517 = call float @dx.op.unary.f32(i32 7, float %8516)  ; Saturate(value)
  %8518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.i32 %8518, 1
  %8520 = add i32 %8519, -1
  %8521 = uitofp i32 %8519 to float
  %8522 = fmul fast float %8521, %8517
  %8523 = fptoui float %8522 to i32
  %8524 = call i32 @dx.op.binary.i32(i32 40, i32 %8523, i32 %8520)  ; UMin(a,b)
  %8525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.i32 %8525, 2
  %8527 = extractvalue %dx.types.CBufRet.i32 %8525, 3
  %8528 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8503, i32 %8526, i32 %8502)  ; UMad(a,b,c)
  %8529 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8524, i32 %8527, i32 %8528)  ; UMad(a,b,c)
  %8530 = add nsw i32 %8494, -1
  %8531 = call i32 @dx.op.binary.i32(i32 37, i32 %8530, i32 0)  ; IMax(a,b)
  %8532 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %8533 = fptoui float %8532 to i32
  %8534 = lshr i32 %8533, 5
  %8535 = call i32 @dx.op.binary.i32(i32 40, i32 %8534, i32 8191)  ; UMin(a,b)
  %8536 = shl i32 %8535, 2
  %8537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8536, i32 undef)  ; BufferLoad(srv,index,wot)
  %8538 = extractvalue %dx.types.ResRet.i32 %8537, 0
  %8539 = lshr i32 %8538, 16
  %8540 = and i32 %8538, 65535
  %8541 = lshr i32 %8538, 21
  %8542 = lshr i32 %8540, 5
  %8543 = call i32 @dx.op.binary.i32(i32 40, i32 %8542, i32 %8531)  ; UMin(a,b)
  %8544 = icmp ugt i32 %8541, %8543
  br i1 %8544, label %9313, label %8545

; <label>:8545                                    ; preds = %8496
  br label %8546

; <label>:8546                                    ; preds = %9303, %8545
  %8547 = phi i32 [ %9310, %9303 ], [ %8541, %8545 ]
  %8548 = phi float [ %9304, %9303 ], [ %8487, %8545 ]
  %8549 = phi float [ %9305, %9303 ], [ %8488, %8545 ]
  %8550 = phi float [ %9306, %9303 ], [ %8489, %8545 ]
  %8551 = phi float [ %9307, %9303 ], [ %8490, %8545 ]
  %8552 = phi float [ %9308, %9303 ], [ %8491, %8545 ]
  %8553 = phi float [ %9309, %9303 ], [ %8492, %8545 ]
  %8554 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.i32 %8554, 0
  %8556 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8529, i32 %8555, i32 %8547)  ; UMad(a,b,c)
  %8557 = shl i32 %8556, 2
  %8558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8557, i32 undef)  ; BufferLoad(srv,index,wot)
  %8559 = extractvalue %dx.types.ResRet.i32 %8558, 0
  %8560 = shl i32 %8547, 5
  %8561 = sub nsw i32 %8539, %8560
  %8562 = call i32 @dx.op.binary.i32(i32 37, i32 %8561, i32 0)  ; IMax(a,b)
  %8563 = call i32 @dx.op.binary.i32(i32 38, i32 %8562, i32 31)  ; IMin(a,b)
  %8564 = sub nsw i32 1, %8539
  %8565 = add nsw i32 %8564, %8540
  %8566 = call i32 @dx.op.binary.i32(i32 37, i32 %8565, i32 0)  ; IMax(a,b)
  %8567 = call i32 @dx.op.binary.i32(i32 38, i32 %8566, i32 32)  ; IMin(a,b)
  %8568 = and i32 %8567, 31
  %8569 = shl i32 -1, %8568
  %8570 = xor i32 %8569, -1
  %8571 = and i32 %8563, 31
  %8572 = shl i32 %8570, %8571
  %8573 = icmp eq i32 %8567, 32
  %8574 = select i1 %8573, i32 -1, i32 %8572
  %8575 = and i32 %8574, %8559
  %8576 = icmp eq i32 %8575, 0
  br i1 %8576, label %9303, label %8577

; <label>:8577                                    ; preds = %8546
  br label %8578

; <label>:8578                                    ; preds = %8713, %8577
  %8579 = phi i32 [ %8590, %8713 ], [ %8575, %8577 ]
  %8580 = phi float [ %8714, %8713 ], [ %8548, %8577 ]
  %8581 = phi float [ %8715, %8713 ], [ %8549, %8577 ]
  %8582 = phi float [ %8716, %8713 ], [ %8550, %8577 ]
  %8583 = phi float [ %8717, %8713 ], [ %8551, %8577 ]
  %8584 = phi float [ %8718, %8713 ], [ %8552, %8577 ]
  %8585 = phi float [ %8719, %8713 ], [ %8553, %8577 ]
  %8586 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8579)  ; FirstbitLo(value)
  %8587 = add i32 %8586, %8560
  %8588 = and i32 %8586, 31
  %8589 = shl i32 1, %8588
  %8590 = xor i32 %8589, %8579
  %8591 = mul i32 %8587, 112
  %8592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8591, i32 undef)  ; BufferLoad(srv,index,wot)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = or i32 %8591, 12
  %8597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8596, i32 undef)  ; BufferLoad(srv,index,wot)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = add i32 %8591, 16
  %8600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8599, i32 undef)  ; BufferLoad(srv,index,wot)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.ResRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.ResRet.f32 %8600, 2
  %8604 = add i32 %8591, 28
  %8605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8604, i32 undef)  ; BufferLoad(srv,index,wot)
  %8606 = extractvalue %dx.types.ResRet.i32 %8605, 0
  %8607 = add i32 %8591, 44
  %8608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8607, i32 undef)  ; BufferLoad(srv,index,wot)
  %8609 = extractvalue %dx.types.ResRet.f32 %8608, 0
  %8610 = add i32 %8591, 48
  %8611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8610, i32 undef)  ; BufferLoad(srv,index,wot)
  %8612 = extractvalue %dx.types.ResRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.ResRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.ResRet.f32 %8611, 2
  %8615 = extractvalue %dx.types.ResRet.f32 %8611, 3
  %8616 = add i32 %8591, 64
  %8617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8616, i32 undef)  ; BufferLoad(srv,index,wot)
  %8618 = extractvalue %dx.types.ResRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.ResRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.ResRet.f32 %8617, 2
  %8621 = extractvalue %dx.types.ResRet.f32 %8617, 3
  %8622 = add i32 %8591, 80
  %8623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8622, i32 undef)  ; BufferLoad(srv,index,wot)
  %8624 = extractvalue %dx.types.ResRet.f32 %8623, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8623, 2
  %8626 = add i32 %8591, 92
  %8627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8626, i32 undef)  ; BufferLoad(srv,index,wot)
  %8628 = extractvalue %dx.types.ResRet.i32 %8627, 0
  %8629 = call float @dx.op.dot3.f32(i32 55, float %8593, float %8594, float %8595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8630 = select i1 %259, float %8624, float %8593
  %8631 = select i1 %259, float %8629, float %8594
  %8632 = select i1 %259, float %8625, float %8595
  %8633 = and i32 %8628, 65535
  %8634 = uitofp i32 %8633 to float
  %8635 = lshr i32 %8628, 16
  %8636 = uitofp i32 %8635 to float
  %8637 = and i32 %8606, 65535
  %8638 = and i32 %8606, 50331648
  %8639 = icmp slt i32 %8606, 0
  %8640 = icmp eq i32 %8638, 33554432
  %8641 = fsub fast float %8612, %165
  %8642 = fsub fast float %8613, %166
  %8643 = fsub fast float %8614, %167
  %8644 = call float @dx.op.dot3.f32(i32 55, float %8641, float %8642, float %8643, float %8641, float %8642, float %8643)  ; Dot3(ax,ay,az,bx,by,bz)
  %8645 = call float @dx.op.unary.f32(i32 24, float %8644)  ; Sqrt(value)
  %8646 = fdiv fast float 1.000000e+00, %8645
  %8647 = fmul fast float %8646, %8641
  %8648 = fmul fast float %8646, %8642
  %8649 = fmul fast float %8646, %8643
  %8650 = fadd fast float %8645, %8598
  %8651 = fdiv fast float 1.000000e+00, %8650
  %8652 = fmul float %8609, %8651
  %8653 = fmul float %8652, %8652
  %8654 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  br i1 %8640, label %8655, label %8676

; <label>:8655                                    ; preds = %8578
  %8656 = fmul fast float %8620, %8601
  %8657 = fmul fast float %8620, %8602
  %8658 = fmul fast float %8620, %8603
  %8659 = fadd fast float %8641, %8656
  %8660 = fadd fast float %8642, %8657
  %8661 = fadd fast float %8643, %8658
  %8662 = call float @dx.op.dot3.f32(i32 55, float %8659, float %8660, float %8661, float %8659, float %8660, float %8661)  ; Dot3(ax,ay,az,bx,by,bz)
  %8663 = call float @dx.op.unary.f32(i32 25, float %8662)  ; Rsqrt(value)
  %8664 = fmul fast float %8663, %8659
  %8665 = fmul fast float %8663, %8660
  %8666 = fmul fast float %8663, %8661
  %8667 = fsub fast float %165, %8612
  %8668 = fsub fast float %166, %8613
  %8669 = fsub fast float %167, %8614
  %8670 = fsub fast float -0.000000e+00, %8667
  %8671 = fsub fast float -0.000000e+00, %8668
  %8672 = fsub fast float -0.000000e+00, %8669
  %8673 = call float @dx.op.dot3.f32(i32 55, float %8670, float %8671, float %8672, float %8601, float %8602, float %8603)  ; Dot3(ax,ay,az,bx,by,bz)
  %8674 = fcmp fast ogt float %8673, 0.000000e+00
  %8675 = uitofp i1 %8674 to float
  br label %8676

; <label>:8676                                    ; preds = %8655, %8578
  %8677 = phi float [ %8675, %8655 ], [ 1.000000e+00, %8578 ]
  %8678 = phi float [ %8664, %8655 ], [ %8647, %8578 ]
  %8679 = phi float [ %8665, %8655 ], [ %8648, %8578 ]
  %8680 = phi float [ %8666, %8655 ], [ %8649, %8578 ]
  %8681 = call float @dx.op.dot3.f32(i32 55, float %8601, float %8602, float %8603, float %8678, float %8679, float %8680)  ; Dot3(ax,ay,az,bx,by,bz)
  %8682 = fmul fast float %8681, %8681
  %8683 = call float @dx.op.unary.f32(i32 7, float %8682)  ; Saturate(value)
  %8684 = fsub fast float 1.000000e+00, %8683
  %8685 = fmul fast float %8684, 5.000000e-01
  %8686 = fcmp fast ogt float %8681, 0.000000e+00
  %8687 = fsub fast float 1.000000e+00, %8685
  %8688 = select i1 %8686, float %8685, float %8687
  %8689 = fmul fast float %8688, %8636
  %8690 = fadd fast float %8689, %8634
  %8691 = fmul fast float %8690, 0x3EF0001000000000
  %8692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8691, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8693 = extractvalue %dx.types.ResRet.f32 %8692, 0
  %8694 = fmul fast float %8681, %8618
  %8695 = fadd fast float %8694, %8619
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8697 = select i1 %8640, float 1.000000e+00, float %8696
  %8698 = select i1 %8640, float %8696, float 1.000000e+00
  %8699 = fmul fast float %8645, %8615
  %8700 = fsub fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8700, %8621
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fmul fast float %8702, %8698
  %8704 = fmul fast float %8703, 2.000000e+00
  %8705 = fsub fast float 3.000000e+00, %8704
  %8706 = fmul fast float %8693, %8677
  %8707 = fmul fast float %8703, %8703
  %8708 = fmul fast float %8707, %8706
  %8709 = fmul fast float %8708, %8705
  %8710 = call float @dx.op.binary.f32(i32 36, float %8709, float %8709)  ; FMin(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8709, float %8710)  ; FMin(a,b)
  %8712 = fcmp fast ogt float %8711, 0.000000e+00
  br i1 %8712, label %8721, label %8713, !dx.controlflow.hints !133

; <label>:8713                                    ; preds = %9256, %8867, %8676
  %8714 = phi float [ %8580, %8867 ], [ %8580, %8676 ], [ %9299, %9256 ]
  %8715 = phi float [ %8581, %8867 ], [ %8581, %8676 ], [ %9300, %9256 ]
  %8716 = phi float [ %8582, %8867 ], [ %8582, %8676 ], [ %9301, %9256 ]
  %8717 = phi float [ %8583, %8867 ], [ %8583, %8676 ], [ %9293, %9256 ]
  %8718 = phi float [ %8584, %8867 ], [ %8584, %8676 ], [ %9294, %9256 ]
  %8719 = phi float [ %8585, %8867 ], [ %8585, %8676 ], [ %9295, %9256 ]
  %8720 = icmp eq i32 %8579, %8589
  br i1 %8720, label %9302, label %8578

; <label>:8721                                    ; preds = %8676
  %8722 = icmp eq i32 %8637, 255
  br i1 %8722, label %8867, label %8723, !dx.controlflow.hints !134

; <label>:8723                                    ; preds = %8721
  %8724 = mul nuw nsw i32 %8637, 176
  %8725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8724, i32 undef)  ; BufferLoad(srv,index,wot)
  %8726 = extractvalue %dx.types.ResRet.f32 %8725, 0
  %8727 = extractvalue %dx.types.ResRet.f32 %8725, 1
  %8728 = extractvalue %dx.types.ResRet.f32 %8725, 2
  %8729 = extractvalue %dx.types.ResRet.f32 %8725, 3
  %8730 = add nuw nsw i32 %8724, 16
  %8731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8730, i32 undef)  ; BufferLoad(srv,index,wot)
  %8732 = extractvalue %dx.types.ResRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.ResRet.f32 %8731, 1
  %8734 = add nuw nsw i32 %8724, 32
  %8735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8734, i32 undef)  ; BufferLoad(srv,index,wot)
  %8736 = extractvalue %dx.types.ResRet.f32 %8735, 0
  %8737 = extractvalue %dx.types.ResRet.f32 %8735, 1
  %8738 = extractvalue %dx.types.ResRet.f32 %8735, 2
  %8739 = add nuw nsw i32 %8724, 48
  %8740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8739, i32 undef)  ; BufferLoad(srv,index,wot)
  %8741 = extractvalue %dx.types.ResRet.f32 %8740, 0
  %8742 = extractvalue %dx.types.ResRet.f32 %8740, 1
  %8743 = extractvalue %dx.types.ResRet.f32 %8740, 2
  %8744 = extractvalue %dx.types.ResRet.f32 %8740, 3
  %8745 = add nuw nsw i32 %8724, 64
  %8746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8745, i32 undef)  ; BufferLoad(srv,index,wot)
  %8747 = extractvalue %dx.types.ResRet.f32 %8746, 0
  %8748 = extractvalue %dx.types.ResRet.f32 %8746, 1
  %8749 = extractvalue %dx.types.ResRet.f32 %8746, 2
  %8750 = extractvalue %dx.types.ResRet.f32 %8746, 3
  %8751 = add nuw nsw i32 %8724, 80
  %8752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8751, i32 undef)  ; BufferLoad(srv,index,wot)
  %8753 = extractvalue %dx.types.ResRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.ResRet.f32 %8752, 1
  %8755 = extractvalue %dx.types.ResRet.f32 %8752, 2
  %8756 = extractvalue %dx.types.ResRet.f32 %8752, 3
  %8757 = add nuw nsw i32 %8724, 96
  %8758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8757, i32 undef)  ; BufferLoad(srv,index,wot)
  %8759 = extractvalue %dx.types.ResRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.ResRet.f32 %8758, 1
  %8761 = extractvalue %dx.types.ResRet.f32 %8758, 2
  %8762 = extractvalue %dx.types.ResRet.f32 %8758, 3
  %8763 = bitcast float %8733 to i32
  %8764 = fmul fast float %8738, %117
  %8765 = fmul fast float %8738, %118
  %8766 = fmul fast float %8738, %119
  %8767 = fadd fast float %8764, %165
  %8768 = fadd fast float %8765, %166
  %8769 = fadd fast float %8766, %167
  %8770 = fmul fast float %8767, %8741
  %8771 = call float @dx.op.tertiary.f32(i32 46, float %8768, float %8747, float %8770)  ; FMad(a,b,c)
  %8772 = call float @dx.op.tertiary.f32(i32 46, float %8769, float %8753, float %8771)  ; FMad(a,b,c)
  %8773 = fadd fast float %8772, %8759
  %8774 = fmul fast float %8767, %8742
  %8775 = call float @dx.op.tertiary.f32(i32 46, float %8768, float %8748, float %8774)  ; FMad(a,b,c)
  %8776 = call float @dx.op.tertiary.f32(i32 46, float %8769, float %8754, float %8775)  ; FMad(a,b,c)
  %8777 = fadd fast float %8776, %8760
  %8778 = fmul fast float %8767, %8743
  %8779 = call float @dx.op.tertiary.f32(i32 46, float %8768, float %8749, float %8778)  ; FMad(a,b,c)
  %8780 = call float @dx.op.tertiary.f32(i32 46, float %8769, float %8755, float %8779)  ; FMad(a,b,c)
  %8781 = fadd fast float %8780, %8761
  %8782 = fmul fast float %8767, %8744
  %8783 = call float @dx.op.tertiary.f32(i32 46, float %8768, float %8750, float %8782)  ; FMad(a,b,c)
  %8784 = call float @dx.op.tertiary.f32(i32 46, float %8769, float %8756, float %8783)  ; FMad(a,b,c)
  %8785 = fadd fast float %8784, %8762
  %8786 = fdiv fast float %8773, %8785
  %8787 = fdiv fast float %8777, %8785
  %8788 = fdiv fast float %8781, %8785
  %8789 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8788)  ; FMax(a,b)
  %8790 = fmul fast float %270, 0x401921FB60000000
  %8791 = call float @dx.op.unary.f32(i32 13, float %8790)  ; Sin(value)
  %8792 = call float @dx.op.unary.f32(i32 12, float %8790)  ; Cos(value)
  %8793 = fmul fast float %8792, %8737
  %8794 = call float @dx.op.tertiary.f32(i32 46, float %8791, float %8737, float 0.000000e+00)  ; FMad(a,b,c)
  %8795 = fmul fast float %8737, %8791
  %8796 = fsub fast float -0.000000e+00, %8795
  %8797 = call float @dx.op.tertiary.f32(i32 46, float %8792, float %8737, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8798

; <label>:8798                                    ; preds = %8798, %8723
  %8799 = phi float [ 0.000000e+00, %8723 ], [ %8831, %8798 ]
  %8800 = phi float [ 0.000000e+00, %8723 ], [ %8833, %8798 ]
  %8801 = phi i32 [ 0, %8723 ], [ %8834, %8798 ]
  %8802 = mul i32 %8801, 2
  %8803 = add i32 0, %8802
  %8804 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8803
  %8805 = load float, float* %8804, align 4
  %8806 = mul i32 %8801, 2
  %8807 = add i32 1, %8806
  %8808 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8807
  %8809 = load float, float* %8808, align 4
  %8810 = fmul fast float %8793, %8805
  %8811 = call float @dx.op.tertiary.f32(i32 46, float %8809, float %8796, float %8810)  ; FMad(a,b,c)
  %8812 = fmul fast float %8805, %8794
  %8813 = call float @dx.op.tertiary.f32(i32 46, float %8809, float %8797, float %8812)  ; FMad(a,b,c)
  %8814 = fadd fast float %8811, %8786
  %8815 = fadd fast float %8813, %8787
  %8816 = fmul fast float %8814, %8732
  %8817 = fmul fast float %8815, %8732
  %8818 = call float @dx.op.binary.f32(i32 35, float %8816, float %8728)  ; FMax(a,b)
  %8819 = call float @dx.op.binary.f32(i32 35, float %8817, float %8728)  ; FMax(a,b)
  %8820 = call float @dx.op.binary.f32(i32 36, float %8818, float %8729)  ; FMin(a,b)
  %8821 = call float @dx.op.binary.f32(i32 36, float %8819, float %8729)  ; FMin(a,b)
  %8822 = fadd fast float %8820, %8726
  %8823 = fadd fast float %8821, %8727
  %8824 = uitofp i32 %8763 to float
  %8825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %56, float %8822, float %8823, float %8824, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8826 = extractvalue %dx.types.ResRet.f32 %8825, 0
  %8827 = fsub fast float %8826, %8789
  %8828 = fsub fast float %8827, %8736
  %8829 = fcmp fast ogt float %8828, 0.000000e+00
  %8830 = select i1 %8829, float 1.000000e+00, float 0.000000e+00
  %8831 = fadd fast float %8830, %8799
  %8832 = select i1 %8829, float %8828, float 0.000000e+00
  %8833 = fadd fast float %8832, %8800
  %8834 = add nuw nsw i32 %8801, 1
  %8835 = icmp eq i32 %8834, 8
  br i1 %8835, label %8836, label %8798

; <label>:8836                                    ; preds = %8798
  %8837 = fdiv fast float 1.000000e+00, %8831
  %8838 = fmul fast float %8837, %8833
  %8839 = fdiv fast float 1.000000e+00, %8789
  %8840 = fmul fast float %8838, %8839
  %8841 = call float @dx.op.unary.f32(i32 7, float %8840)  ; Saturate(value)
  %8842 = call float @dx.op.binary.f32(i32 35, float %8841, float 0.000000e+00)  ; FMax(a,b)
  %8843 = fmul fast float %8831, 1.250000e-01
  %8844 = call float @dx.op.unary.f32(i32 7, float %8843)  ; Saturate(value)
  %8845 = fmul fast float %8844, 2.000000e+00
  %8846 = fadd fast float %8845, -1.000000e+00
  %8847 = fcmp fast ogt float %8846, 0.000000e+00
  %8848 = fcmp fast olt float %8846, 0.000000e+00
  %8849 = zext i1 %8847 to i32
  %8850 = zext i1 %8848 to i32
  %8851 = sub nsw i32 %8849, %8850
  %8852 = sitofp i32 %8851 to float
  %8853 = fmul fast float %8852, %8846
  %8854 = fsub fast float 1.000000e+00, %8853
  %8855 = fmul fast float %8854, %8854
  %8856 = fmul fast float %8855, %8854
  %8857 = fsub fast float %8854, %8856
  %8858 = fmul fast float %8857, %8842
  %8859 = fsub fast float 1.000000e+00, %8856
  %8860 = fsub fast float %8859, %8858
  %8861 = fmul fast float %8852, 5.000000e-01
  %8862 = fmul fast float %8861, %8860
  %8863 = fsub fast float -5.000000e-01, %8862
  %8864 = fmul fast float %8863, %8697
  %8865 = fadd fast float %8864, 1.000000e+00
  %8866 = fmul fast float %8865, %8709
  br label %8867

; <label>:8867                                    ; preds = %8836, %8721
  %8868 = phi float [ %8866, %8836 ], [ %8709, %8721 ]
  %8869 = call float @dx.op.binary.f32(i32 36, float %8868, float %8868)  ; FMin(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8868, float %8869)  ; FMin(a,b)
  %8871 = fcmp fast ogt float %8870, 0.000000e+00
  br i1 %8871, label %8872, label %8713, !dx.controlflow.hints !135

; <label>:8872                                    ; preds = %8867
  %8873 = fmul fast float %8868, %8630
  %8874 = fmul fast float %8868, %8631
  %8875 = fmul fast float %8868, %8632
  %8876 = fsub fast float %8614, %5578
  %8877 = fcmp fast ogt float %8876, 0.000000e+00
  %8878 = fsub fast float %167, %5578
  %8879 = fcmp fast ogt float %8878, 0.000000e+00
  %8880 = xor i1 %8879, %8877
  %8881 = fsub fast float %5578, %8614
  %8882 = fmul fast float %8881, 2.000000e+00
  %8883 = fadd fast float %8882, %8614
  %8884 = select i1 %8880, float %8614, float %8883
  %8885 = fsub fast float %8884, %167
  %8886 = call float @dx.op.dot3.f32(i32 55, float %8641, float %8642, float %8885, float %8641, float %8642, float %8885)  ; Dot3(ax,ay,az,bx,by,bz)
  %8887 = call float @dx.op.unary.f32(i32 25, float %8886)  ; Rsqrt(value)
  %8888 = fmul fast float %8887, %8641
  %8889 = fmul fast float %8887, %8642
  %8890 = fmul fast float %8887, %8885
  %8891 = fsub fast float %5578, %167
  %8892 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8891)  ; Dot3(ax,ay,az,bx,by,bz)
  %8893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8888, float %8889, float %8890)  ; Dot3(ax,ay,az,bx,by,bz)
  %8894 = fdiv fast float 1.000000e+00, %8893
  %8895 = fmul fast float %8894, %8892
  %8896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8878, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8897 = fcmp fast ogt float %8896, 0.000000e+00
  %8898 = fcmp fast olt float %8896, 0.000000e+00
  %8899 = zext i1 %8897 to i32
  %8900 = zext i1 %8898 to i32
  %8901 = sub nsw i32 %8899, %8900
  %8902 = sitofp i32 %8901 to float
  %8903 = fsub fast float %8884, %5578
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8641, float %8642, float %8903, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = fcmp fast ogt float %8904, 0.000000e+00
  %8906 = fcmp fast olt float %8904, 0.000000e+00
  %8907 = zext i1 %8905 to i32
  %8908 = zext i1 %8906 to i32
  %8909 = sub nsw i32 %8907, %8908
  %8910 = sitofp i32 %8909 to float
  %8911 = fcmp fast une float %8902, %8910
  br i1 %8911, label %8912, label %8922

; <label>:8912                                    ; preds = %8872
  %8913 = fmul fast float %8895, %8890
  %8914 = fmul fast float %8895, %8889
  %8915 = fmul fast float %8895, %8888
  %8916 = fmul fast float %8915, %8915
  %8917 = fmul fast float %8914, %8914
  %8918 = fadd fast float %8916, %8917
  %8919 = fmul fast float %8913, %8913
  %8920 = fadd fast float %8918, %8919
  %8921 = call float @dx.op.unary.f32(i32 24, float %8920)  ; Sqrt(value)
  br label %8934

; <label>:8922                                    ; preds = %8872
  %8923 = icmp slt i32 %8901, 0
  br i1 %8923, label %8924, label %8934

; <label>:8924                                    ; preds = %8922
  %8925 = fsub fast float %165, %8612
  %8926 = fsub fast float %166, %8613
  %8927 = fsub fast float %167, %8884
  %8928 = fmul fast float %8925, %8925
  %8929 = fmul fast float %8926, %8926
  %8930 = fadd fast float %8928, %8929
  %8931 = fmul fast float %8927, %8927
  %8932 = fadd fast float %8930, %8931
  %8933 = call float @dx.op.unary.f32(i32 24, float %8932)  ; Sqrt(value)
  br label %8934

; <label>:8934                                    ; preds = %8924, %8922, %8912
  %8935 = phi float [ %8921, %8912 ], [ %8933, %8924 ], [ 0.000000e+00, %8922 ]
  %8936 = and i1 %8879, %8877
  %8937 = fsub fast float -0.000000e+00, %8935
  %8938 = select i1 %8936, float -0.000000e+00, float %8937
  %8939 = fmul fast float %5575, 0x3FF7154760000000
  %8940 = fmul fast float %8939, %8938
  %8941 = fmul fast float %5576, 0x3FF7154760000000
  %8942 = fmul fast float %8941, %8938
  %8943 = fmul fast float %5577, 0x3FF7154760000000
  %8944 = fmul fast float %8943, %8938
  %8945 = call float @dx.op.unary.f32(i32 21, float %8940)  ; Exp(value)
  %8946 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8947 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8948 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8949 = call float @dx.op.unary.f32(i32 7, float %8946)  ; Saturate(value)
  %8950 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8951 = fmul fast float %8873, %8948
  %8952 = fmul fast float %8874, %8949
  %8953 = fmul fast float %8875, %8950
  %8954 = fsub fast float %8647, %185
  %8955 = fsub fast float %8648, %186
  %8956 = fsub fast float %8649, %187
  %8957 = call float @dx.op.dot3.f32(i32 55, float %8954, float %8955, float %8956, float %8954, float %8955, float %8956)  ; Dot3(ax,ay,az,bx,by,bz)
  %8958 = call float @dx.op.unary.f32(i32 25, float %8957)  ; Rsqrt(value)
  %8959 = fmul fast float %8958, %8954
  %8960 = fmul fast float %8958, %8955
  %8961 = fmul fast float %8958, %8956
  %8962 = call float @dx.op.dot3.f32(i32 55, float %8647, float %8648, float %8649, float %5764, float %5765, float %5766)  ; Dot3(ax,ay,az,bx,by,bz)
  %8963 = call float @dx.op.dot3.f32(i32 55, float %5592, float %5593, float %5594, float %8959, float %8960, float %8961)  ; Dot3(ax,ay,az,bx,by,bz)
  %8964 = call float @dx.op.unary.f32(i32 7, float %8962)  ; Saturate(value)
  %8965 = fmul fast float %8964, %8654
  %8966 = fmul fast float %8964, %8964
  %8967 = fmul fast float %8966, %5797
  %8968 = call float @dx.op.unary.f32(i32 7, float %8967)  ; Saturate(value)
  %8969 = fmul fast float %8965, %8968
  %8970 = bitcast float %8644 to i32
  %8971 = ashr i32 %8970, 1
  %8972 = sub nsw i32 1597463007, %8971
  %8973 = bitcast i32 %8972 to float
  %8974 = fmul fast float %8973, %8641
  %8975 = fmul fast float %8973, %8642
  %8976 = fmul fast float %8973, %8643
  %8977 = fsub fast float %8974, %185
  %8978 = fsub fast float %8975, %186
  %8979 = fsub fast float %8976, %187
  %8980 = call float @dx.op.dot3.f32(i32 55, float %8977, float %8978, float %8979, float %8977, float %8978, float %8979)  ; Dot3(ax,ay,az,bx,by,bz)
  %8981 = call float @dx.op.unary.f32(i32 25, float %8980)  ; Rsqrt(value)
  %8982 = fmul fast float %8977, %8981
  %8983 = fmul fast float %8978, %8981
  %8984 = fmul fast float %8979, %8981
  %8985 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %8982, float %8983, float %8984)  ; Dot3(ax,ay,az,bx,by,bz)
  %8986 = fmul fast float %8985, %8985
  %8987 = call float @dx.op.unary.f32(i32 6, float %8962)  ; FAbs(value)
  %8988 = fsub fast float 1.000000e+00, %5790
  %8989 = fmul fast float %5772, %5772
  %8990 = fmul fast float %8989, %8988
  %8991 = fadd fast float %8990, %5790
  %8992 = bitcast float %8991 to i32
  %8993 = ashr i32 %8992, 1
  %8994 = add nsw i32 %8993, 532487669
  %8995 = bitcast i32 %8994 to float
  %8996 = fadd fast float %8995, %5772
  %8997 = fmul fast float %5790, %8986
  %8998 = fsub fast float 1.000000e+00, %8986
  %8999 = fadd fast float %8998, %8997
  %9000 = fmul fast float %8987, %8987
  %9001 = fmul fast float %9000, %8988
  %9002 = fadd fast float %9001, %5790
  %9003 = bitcast float %9002 to i32
  %9004 = ashr i32 %9003, 1
  %9005 = add nsw i32 %9004, 532487669
  %9006 = bitcast i32 %9005 to float
  %9007 = fadd fast float %9006, %8987
  %9008 = fmul fast float %8999, %8999
  %9009 = fmul fast float %9008, %8996
  %9010 = fmul fast float %9009, %9007
  %9011 = fdiv fast float 1.000000e+00, %9010
  %9012 = bitcast float %5790 to i32
  %9013 = sitofp i32 %9012 to float
  %9014 = fmul fast float %9013, 0x3FE7F73180000000
  %9015 = fadd fast float %9014, 0x41AFE27C40000000
  %9016 = fptosi float %9015 to i32
  %9017 = bitcast i32 %9016 to float
  %9018 = fmul fast float %8609, 0x3FD80E9D60000000
  %9019 = fmul fast float %9018, %8973
  %9020 = fadd fast float %9017, %9019
  %9021 = bitcast float %9020 to i32
  %9022 = sub nsw i32 2129859010, %9021
  %9023 = bitcast i32 %9022 to float
  %9024 = fmul fast float %5790, %9011
  %9025 = fmul fast float %9024, %9017
  %9026 = fmul fast float %9025, %9023
  %9027 = fmul fast float %6043, 0x3FF9999980000000
  %9028 = fsub fast float 5.000000e+00, %9027
  %9029 = call float @dx.op.unary.f32(i32 6, float %8963)  ; FAbs(value)
  %9030 = fsub fast float 1.000000e+00, %9029
  %9031 = fmul fast float %6043, 0x41D9660740000000
  %9032 = fadd fast float %9031, 0xC1EFBF8940000000
  %9033 = bitcast float %9030 to i32
  %9034 = sitofp i32 %9033 to float
  %9035 = fmul fast float %9034, %9028
  %9036 = fadd fast float %9032, %9035
  %9037 = fptosi float %9036 to i32
  %9038 = bitcast i32 %9037 to float
  %9039 = fsub fast float 1.000000e+00, %5758
  %9040 = fsub fast float 1.000000e+00, %5759
  %9041 = fsub fast float 1.000000e+00, %5770
  %9042 = fmul fast float %9038, %9039
  %9043 = fmul fast float %9038, %9040
  %9044 = fmul fast float %9038, %9041
  %9045 = fadd fast float %9042, %5758
  %9046 = fadd fast float %9043, %5759
  %9047 = fadd fast float %9044, %5770
  br i1 %6066, label %9048, label %9071

; <label>:9048                                    ; preds = %8934
  %9049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %9029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9050 = extractvalue %dx.types.ResRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.ResRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.ResRet.f32 %9049, 2
  %9053 = fadd fast float %9050, -5.000000e-01
  %9054 = fadd fast float %9051, -5.000000e-01
  %9055 = fadd fast float %9052, -5.000000e-01
  %9056 = fmul fast float %5758, 4.000000e+00
  %9057 = fmul fast float %9056, %9039
  %9058 = fmul fast float %9057, %9053
  %9059 = fmul fast float %5759, 4.000000e+00
  %9060 = fmul fast float %9059, %9040
  %9061 = fmul fast float %9060, %9054
  %9062 = fmul fast float %5770, 4.000000e+00
  %9063 = fmul fast float %9062, %9041
  %9064 = fmul fast float %9063, %9055
  %9065 = fadd fast float %9058, %9045
  %9066 = fadd fast float %9061, %9046
  %9067 = fadd fast float %9064, %9047
  %9068 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  %9069 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9070 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  br label %9071

; <label>:9071                                    ; preds = %9048, %8934
  %9072 = phi float [ %9068, %9048 ], [ %9045, %8934 ]
  %9073 = phi float [ %9069, %9048 ], [ %9046, %8934 ]
  %9074 = phi float [ %9070, %9048 ], [ %9047, %8934 ]
  %9075 = fmul fast float %8962, 9.843750e-01
  %9076 = fadd fast float %9075, 7.812500e-03
  %9077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %9076, float %6047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9078 = extractvalue %dx.types.ResRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.ResRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.ResRet.f32 %9077, 2
  %9081 = extractvalue %dx.types.ResRet.f32 %9077, 3
  %9082 = fsub fast float %9080, %9078
  %9083 = fsub fast float %9081, %9079
  %9084 = fmul fast float %9082, %6053
  %9085 = fmul fast float %9083, %6053
  %9086 = fadd fast float %9084, %9078
  %9087 = fadd fast float %9085, %9079
  %9088 = fmul fast float %9086, %5758
  %9089 = fmul fast float %9086, %5759
  %9090 = fmul fast float %9086, %5770
  %9091 = fadd fast float %9088, %9087
  %9092 = fadd fast float %9089, %9087
  %9093 = fadd fast float %9090, %9087
  br i1 %6066, label %9094, label %9117

; <label>:9094                                    ; preds = %9071
  %9095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %8962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9096 = extractvalue %dx.types.ResRet.f32 %9095, 0
  %9097 = extractvalue %dx.types.ResRet.f32 %9095, 1
  %9098 = extractvalue %dx.types.ResRet.f32 %9095, 2
  %9099 = fadd fast float %9096, -5.000000e-01
  %9100 = fadd fast float %9097, -5.000000e-01
  %9101 = fadd fast float %9098, -5.000000e-01
  %9102 = fmul fast float %5758, 4.000000e+00
  %9103 = fmul fast float %9102, %9039
  %9104 = fmul fast float %9103, %9099
  %9105 = fmul fast float %5759, 4.000000e+00
  %9106 = fmul fast float %9105, %9040
  %9107 = fmul fast float %9106, %9100
  %9108 = fmul fast float %5770, 4.000000e+00
  %9109 = fmul fast float %9108, %9041
  %9110 = fmul fast float %9109, %9101
  %9111 = fadd fast float %9104, %9091
  %9112 = fadd fast float %9107, %9092
  %9113 = fadd fast float %9110, %9093
  %9114 = call float @dx.op.unary.f32(i32 7, float %9111)  ; Saturate(value)
  %9115 = call float @dx.op.unary.f32(i32 7, float %9112)  ; Saturate(value)
  %9116 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  br label %9117

; <label>:9117                                    ; preds = %9094, %9071
  %9118 = phi float [ %9114, %9094 ], [ %9091, %9071 ]
  %9119 = phi float [ %9115, %9094 ], [ %9092, %9071 ]
  %9120 = phi float [ %9116, %9094 ], [ %9093, %9071 ]
  %9121 = call float @dx.op.binary.f32(i32 35, float %9119, float %9120)  ; FMax(a,b)
  %9122 = call float @dx.op.binary.f32(i32 35, float %9118, float %9121)  ; FMax(a,b)
  %9123 = fsub fast float 1.000000e+00, %9122
  %9124 = call float @dx.op.binary.f32(i32 35, float %8987, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9125 = fdiv fast float %4460, %9124
  %9126 = fmul fast float %6719, %9125
  %9127 = fmul fast float %6721, %9125
  %9128 = fmul fast float %6723, %9125
  %9129 = call float @dx.op.unary.f32(i32 21, float %9126)  ; Exp(value)
  %9130 = call float @dx.op.unary.f32(i32 21, float %9127)  ; Exp(value)
  %9131 = call float @dx.op.unary.f32(i32 21, float %9128)  ; Exp(value)
  %9132 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  %9133 = call float @dx.op.unary.f32(i32 7, float %9130)  ; Saturate(value)
  %9134 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9135 = select i1 %6716, float %9132, float 0.000000e+00
  %9136 = select i1 %6717, float %9133, float 0.000000e+00
  %9137 = select i1 %6718, float %9134, float 0.000000e+00
  %9138 = fsub fast float -0.000000e+00, %5764
  %9139 = fsub fast float -0.000000e+00, %5765
  %9140 = fsub fast float -0.000000e+00, %5766
  %9141 = call float @dx.op.dot3.f32(i32 55, float %8647, float %8648, float %8649, float %9138, float %9139, float %9140)  ; Dot3(ax,ay,az,bx,by,bz)
  %9142 = call float @dx.op.unary.f32(i32 7, float %9141)  ; Saturate(value)
  %9143 = fmul fast float %9142, %8654
  %9144 = fmul fast float %9142, 9.843750e-01
  %9145 = fadd fast float %9144, 7.812500e-03
  %9146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %55, float %9145, float %6047, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9147 = extractvalue %dx.types.ResRet.f32 %9146, 0
  %9148 = extractvalue %dx.types.ResRet.f32 %9146, 1
  %9149 = extractvalue %dx.types.ResRet.f32 %9146, 2
  %9150 = extractvalue %dx.types.ResRet.f32 %9146, 3
  %9151 = fsub fast float %9149, %9147
  %9152 = fsub fast float %9150, %9148
  %9153 = fmul fast float %9151, %6053
  %9154 = fmul fast float %9152, %6053
  %9155 = fadd fast float %9153, %9147
  %9156 = fadd fast float %9154, %9148
  %9157 = fmul fast float %9155, %5758
  %9158 = fmul fast float %9155, %5759
  %9159 = fmul fast float %9155, %5770
  %9160 = fadd fast float %9157, %9156
  %9161 = fadd fast float %9158, %9156
  %9162 = fadd fast float %9159, %9156
  br i1 %6066, label %9163, label %9186

; <label>:9163                                    ; preds = %9117
  %9164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %55, float %5123, float %9142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9165 = extractvalue %dx.types.ResRet.f32 %9164, 0
  %9166 = extractvalue %dx.types.ResRet.f32 %9164, 1
  %9167 = extractvalue %dx.types.ResRet.f32 %9164, 2
  %9168 = fadd fast float %9165, -5.000000e-01
  %9169 = fadd fast float %9166, -5.000000e-01
  %9170 = fadd fast float %9167, -5.000000e-01
  %9171 = fmul fast float %5758, 4.000000e+00
  %9172 = fmul fast float %9171, %9039
  %9173 = fmul fast float %9172, %9168
  %9174 = fmul fast float %5759, 4.000000e+00
  %9175 = fmul fast float %9174, %9040
  %9176 = fmul fast float %9175, %9169
  %9177 = fmul fast float %5770, 4.000000e+00
  %9178 = fmul fast float %9177, %9041
  %9179 = fmul fast float %9178, %9170
  %9180 = fadd fast float %9173, %9160
  %9181 = fadd fast float %9176, %9161
  %9182 = fadd fast float %9179, %9162
  %9183 = call float @dx.op.unary.f32(i32 7, float %9180)  ; Saturate(value)
  %9184 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9185 = call float @dx.op.unary.f32(i32 7, float %9182)  ; Saturate(value)
  br label %9186

; <label>:9186                                    ; preds = %9163, %9117
  %9187 = phi float [ %9183, %9163 ], [ %9160, %9117 ]
  %9188 = phi float [ %9184, %9163 ], [ %9161, %9117 ]
  %9189 = phi float [ %9185, %9163 ], [ %9162, %9117 ]
  %9190 = call float @dx.op.binary.f32(i32 35, float %9188, float %9189)  ; FMax(a,b)
  %9191 = call float @dx.op.binary.f32(i32 35, float %9187, float %9190)  ; FMax(a,b)
  %9192 = fsub fast float 1.000000e+00, %9191
  %9193 = fmul fast float %5787, %6783
  %9194 = fadd fast float %6785, %9193
  %9195 = call float @dx.op.unary.f32(i32 7, float %9194)  ; Saturate(value)
  %9196 = fsub fast float %8974, %5778
  %9197 = fsub fast float %8975, %5779
  %9198 = fsub fast float %8976, %5780
  %9199 = call float @dx.op.dot3.f32(i32 55, float %9196, float %9197, float %9198, float %9196, float %9197, float %9198)  ; Dot3(ax,ay,az,bx,by,bz)
  %9200 = call float @dx.op.unary.f32(i32 25, float %9199)  ; Rsqrt(value)
  %9201 = fmul fast float %9196, %9200
  %9202 = fmul fast float %9197, %9200
  %9203 = fmul fast float %9198, %9200
  %9204 = call float @dx.op.dot3.f32(i32 55, float %9138, float %9139, float %9140, float %9201, float %9202, float %9203)  ; Dot3(ax,ay,az,bx,by,bz)
  %9205 = fmul fast float %9204, %9204
  %9206 = call float @dx.op.unary.f32(i32 6, float %9142)  ; FAbs(value)
  %9207 = call float @dx.op.binary.f32(i32 35, float %9195, float 0x3F847AE140000000)  ; FMax(a,b)
  %9208 = fmul fast float %9207, %9207
  %9209 = fmul fast float %9208, %9208
  %9210 = fsub fast float 1.000000e+00, %9209
  %9211 = fmul fast float %8989, %9210
  %9212 = fadd fast float %9211, %9209
  %9213 = bitcast float %9212 to i32
  %9214 = ashr i32 %9213, 1
  %9215 = add nsw i32 %9214, 532487669
  %9216 = bitcast i32 %9215 to float
  %9217 = fadd fast float %9216, %5772
  %9218 = fmul fast float %9209, %9205
  %9219 = fsub fast float 1.000000e+00, %9205
  %9220 = fadd fast float %9219, %9218
  %9221 = fmul fast float %9206, %9206
  %9222 = fmul fast float %9221, %9210
  %9223 = fadd fast float %9222, %9209
  %9224 = bitcast float %9223 to i32
  %9225 = ashr i32 %9224, 1
  %9226 = add nsw i32 %9225, 532487669
  %9227 = bitcast i32 %9226 to float
  %9228 = fadd fast float %9227, %9206
  %9229 = fmul fast float %9220, %9220
  %9230 = fmul fast float %9229, %9217
  %9231 = fmul fast float %9230, %9228
  %9232 = fdiv fast float 1.000000e+00, %9231
  %9233 = bitcast float %9209 to i32
  %9234 = sitofp i32 %9233 to float
  %9235 = fmul fast float %9234, 0x3FE7F73180000000
  %9236 = fadd fast float %9235, 0x41AFE27C40000000
  %9237 = fptosi float %9236 to i32
  %9238 = bitcast i32 %9237 to float
  %9239 = fadd fast float %9238, %9019
  %9240 = bitcast float %9239 to i32
  %9241 = sub nsw i32 2129859010, %9240
  %9242 = bitcast i32 %9241 to float
  %9243 = fmul fast float %9209, %9232
  %9244 = fmul fast float %9243, %9238
  %9245 = fmul fast float %9244, %9242
  br i1 %8639, label %9246, label %9256

; <label>:9246                                    ; preds = %9186
  %9247 = fmul fast float %9143, %9135
  %9248 = fmul fast float %9143, %9136
  %9249 = fmul fast float %9143, %9137
  %9250 = fmul fast float %9247, %9192
  %9251 = fmul fast float %9250, %9245
  %9252 = fmul fast float %9248, %9192
  %9253 = fmul fast float %9252, %9245
  %9254 = fmul fast float %9249, %9192
  %9255 = fmul fast float %9254, %9245
  br label %9256

; <label>:9256                                    ; preds = %9246, %9186
  %9257 = phi float [ %9251, %9246 ], [ 0.000000e+00, %9186 ]
  %9258 = phi float [ %9253, %9246 ], [ 0.000000e+00, %9186 ]
  %9259 = phi float [ %9255, %9246 ], [ 0.000000e+00, %9186 ]
  %9260 = fmul fast float %9072, %9026
  %9261 = fmul fast float %9073, %9026
  %9262 = fmul fast float %9074, %9026
  %9263 = fsub fast float 1.000000e+00, %8963
  %9264 = bitcast float %9263 to i32
  %9265 = sitofp i32 %9264 to float
  %9266 = fmul fast float %9265, 5.000000e+00
  %9267 = fadd fast float %9266, 0xC1EFBF8940000000
  %9268 = fptosi float %9267 to i32
  %9269 = bitcast i32 %9268 to float
  %9270 = fmul fast float %9269, %5124
  %9271 = fmul fast float %9123, %9270
  %9272 = fmul fast float %9271, %6711
  %9273 = fmul fast float %9271, %6712
  %9274 = fmul fast float %9271, %6713
  %9275 = fadd fast float %9272, %9260
  %9276 = fadd fast float %9273, %9261
  %9277 = fadd fast float %9274, %9262
  %9278 = fmul fast float %9275, %8969
  %9279 = fmul fast float %9276, %8969
  %9280 = fmul fast float %9277, %8969
  %9281 = fadd fast float %9278, %9257
  %9282 = fadd fast float %9279, %9258
  %9283 = fadd fast float %9280, %9259
  %9284 = fmul fast float %8951, %5149
  %9285 = fmul fast float %9284, %8969
  %9286 = fmul fast float %9285, %9123
  %9287 = fmul fast float %8952, %5149
  %9288 = fmul fast float %9287, %8969
  %9289 = fmul fast float %9288, %9123
  %9290 = fmul fast float %8953, %5149
  %9291 = fmul fast float %9290, %8969
  %9292 = fmul fast float %9291, %9123
  %9293 = fadd fast float %9286, %8583
  %9294 = fadd fast float %9289, %8584
  %9295 = fadd fast float %9292, %8585
  %9296 = fmul fast float %9284, %9281
  %9297 = fmul fast float %9287, %9282
  %9298 = fmul fast float %9290, %9283
  %9299 = fadd fast float %9296, %8580
  %9300 = fadd fast float %9297, %8581
  %9301 = fadd fast float %9298, %8582
  br label %8713

; <label>:9302                                    ; preds = %8713
  br label %9303

; <label>:9303                                    ; preds = %9302, %8546
  %9304 = phi float [ %8548, %8546 ], [ %8714, %9302 ]
  %9305 = phi float [ %8549, %8546 ], [ %8715, %9302 ]
  %9306 = phi float [ %8550, %8546 ], [ %8716, %9302 ]
  %9307 = phi float [ %8551, %8546 ], [ %8717, %9302 ]
  %9308 = phi float [ %8552, %8546 ], [ %8718, %9302 ]
  %9309 = phi float [ %8553, %8546 ], [ %8719, %9302 ]
  %9310 = add i32 %8547, 1
  %9311 = icmp ugt i32 %9310, %8543
  br i1 %9311, label %9312, label %8546

; <label>:9312                                    ; preds = %9303
  br label %9313

; <label>:9313                                    ; preds = %9312, %8496, %8486
  %9314 = phi float [ %8487, %8486 ], [ %8487, %8496 ], [ %9304, %9312 ]
  %9315 = phi float [ %8488, %8486 ], [ %8488, %8496 ], [ %9305, %9312 ]
  %9316 = phi float [ %8489, %8486 ], [ %8489, %8496 ], [ %9306, %9312 ]
  %9317 = phi float [ %8490, %8486 ], [ %8490, %8496 ], [ %9307, %9312 ]
  %9318 = phi float [ %8491, %8486 ], [ %8491, %8496 ], [ %9308, %9312 ]
  %9319 = phi float [ %8492, %8486 ], [ %8492, %8496 ], [ %9309, %9312 ]
  %9320 = fmul fast float %5149, %6740
  %9321 = fsub fast float -0.000000e+00, %9320
  %9322 = fmul fast float %5149, %6741
  %9323 = fsub fast float -0.000000e+00, %9322
  %9324 = fmul fast float %5149, %6742
  %9325 = fsub fast float -0.000000e+00, %9324
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 0
  %9328 = fmul fast float %9327, %6746
  %9329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.f32 %9329, 3
  %9331 = fsub fast float 1.000000e+00, %5127
  %9332 = call float @dx.op.unary.f32(i32 7, float %9331)  ; Saturate(value)
  %9333 = fadd fast float %9319, %5126
  %9334 = fmul fast float %9333, %5127
  %9335 = fmul fast float %9332, %9330
  %9336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %5128, i32 undef)  ; BufferLoad(srv,index,wot)
  %9337 = extractvalue %dx.types.ResRet.i32 %9336, 3
  %9338 = bitcast i32 %9337 to float
  %9339 = fsub fast float %9321, %9338
  %9340 = fsub fast float %9323, %9338
  %9341 = fsub fast float %9325, %9338
  %9342 = fmul fast float %9339, %199
  %9343 = fmul fast float %9340, %199
  %9344 = fmul fast float %9341, %199
  %9345 = fadd fast float %9342, %9338
  %9346 = fadd fast float %9343, %9338
  %9347 = fadd fast float %9344, %9338
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 3
  %9350 = fmul fast float %9317, %5761
  %9351 = fmul fast float %9318, %5762
  %9352 = fmul fast float %9319, %5763
  %9353 = fcmp fast ogt float %98, %219
  %9354 = and i1 %9353, %5581
  %9355 = or i1 %5587, %9354
  %9356 = icmp eq i32 %5580, 2
  %9357 = fcmp fast ole float %98, %219
  %9358 = and i1 %9357, %9356
  %9359 = or i1 %9358, %9355
  br i1 %9354, label %9360, label %9617

; <label>:9360                                    ; preds = %9313
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 2
  %9363 = extractvalue %dx.types.CBufRet.f32 %9361, 3
  %9364 = fmul fast float %9362, %110
  %9365 = fmul fast float %9363, %111
  %9366 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9367 = call float @dx.op.unary.f32(i32 7, float %9365)  ; Saturate(value)
  %9368 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9366, float %9367, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9369 = extractvalue %dx.types.ResRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.ResRet.f32 %9368, 1
  %9371 = extractvalue %dx.types.ResRet.f32 %9368, 2
  %9372 = extractvalue %dx.types.ResRet.f32 %9368, 3
  %9373 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %9366, float %9367, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9374 = extractvalue %dx.types.ResRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.ResRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.ResRet.f32 %9373, 2
  %9377 = extractvalue %dx.types.ResRet.f32 %9373, 3
  %9378 = call float @dx.op.binary.f32(i32 35, float %9370, float %9371)  ; FMax(a,b)
  %9379 = call float @dx.op.binary.f32(i32 35, float %9369, float %9378)  ; FMax(a,b)
  %9380 = call float @dx.op.binary.f32(i32 35, float %9379, float %9372)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 36, float %9375, float %9376)  ; FMin(a,b)
  %9382 = call float @dx.op.binary.f32(i32 36, float %9374, float %9381)  ; FMin(a,b)
  %9383 = call float @dx.op.binary.f32(i32 36, float %9382, float %9377)  ; FMin(a,b)
  %9384 = fmul fast float %9380, 2.550000e+02
  %9385 = fadd fast float %9384, 0x3F70101020000000
  %9386 = fptoui float %9385 to i32
  %9387 = fmul fast float %9383, 2.550000e+02
  %9388 = fadd fast float %9387, 0x3F70101020000000
  %9389 = fptoui float %9388 to i32
  %9390 = icmp ult i32 %9386, %9389
  br i1 %9390, label %9391, label %9559

; <label>:9391                                    ; preds = %9360
  %9392 = fcmp fast ogt float %97, 9.843750e-01
  %9393 = fadd fast float %98, -4.000000e+00
  %9394 = select i1 %9392, float -4.000000e+00, float %9393
  %9395 = call float @dx.op.binary.f32(i32 35, float %9394, float 0.000000e+00)  ; FMax(a,b)
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = fadd fast float %9397, %9395
  %9399 = extractvalue %dx.types.CBufRet.f32 %9396, 2
  %9400 = fmul fast float %9398, %9399
  %9401 = call float @dx.op.unary.f32(i32 23, float %9400)  ; Log(value)
  %9402 = extractvalue %dx.types.CBufRet.f32 %9396, 3
  %9403 = fmul fast float %9402, %9401
  %9404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9405 = extractvalue %dx.types.CBufRet.f32 %9404, 2
  %9406 = fmul fast float %9403, %9405
  %9407 = call float @dx.op.unary.f32(i32 7, float %9406)  ; Saturate(value)
  %9408 = uitofp i32 %9386 to float
  %9409 = uitofp i32 %9389 to float
  %9410 = fadd fast float %9408, 5.000000e-01
  %9411 = fadd fast float %9409, 5.000000e-01
  %9412 = fmul fast float %9405, %9410
  %9413 = fmul fast float %9405, %9411
  %9414 = fadd fast float %9412, 0x3F0FFB4800000000
  %9415 = fadd fast float %9413, 0xBF0FFB4800000000
  %9416 = call float @dx.op.binary.f32(i32 35, float %9407, float %9414)  ; FMax(a,b)
  %9417 = call float @dx.op.binary.f32(i32 36, float %9416, float %9415)  ; FMin(a,b)
  %9418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9419 = extractvalue %dx.types.CBufRet.f32 %9418, 1
  %9420 = extractvalue %dx.types.CBufRet.f32 %9418, 2
  %9421 = extractvalue %dx.types.CBufRet.f32 %9418, 0
  %9422 = fmul fast float %9419, %9417
  %9423 = fadd fast float %9421, %9422
  %9424 = fadd fast float %9421, %9420
  %9425 = fsub fast float %9419, %9420
  %9426 = fadd fast float %9425, %9421
  %9427 = call float @dx.op.binary.f32(i32 35, float %9423, float %9424)  ; FMax(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9427, float %9426)  ; FMin(a,b)
  %9429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %9366, float %9367, float %9428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9430 = extractvalue %dx.types.ResRet.f32 %9429, 0
  %9431 = extractvalue %dx.types.ResRet.f32 %9429, 1
  %9432 = extractvalue %dx.types.ResRet.f32 %9429, 2
  %9433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.i32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.i32 %9433, 1
  %9436 = uitofp i32 %9434 to float
  %9437 = uitofp i32 %9435 to float
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  %9440 = extractvalue %dx.types.CBufRet.f32 %9438, 1
  %9441 = fmul fast float %9436, %9366
  %9442 = fmul fast float %9437, %9367
  %9443 = fadd fast float %9441, -5.000000e-01
  %9444 = fadd fast float %9442, -5.000000e-01
  %9445 = call float @dx.op.unary.f32(i32 22, float %9443)  ; Frc(value)
  %9446 = call float @dx.op.unary.f32(i32 22, float %9444)  ; Frc(value)
  %9447 = fmul fast float %9445, %9445
  %9448 = fmul fast float %9447, %9445
  %9449 = fsub fast float 3.000000e+00, %9445
  %9450 = fmul fast float %9447, %9449
  %9451 = fmul fast float %9445, 3.000000e+00
  %9452 = fmul fast float %9448, 3.000000e+00
  %9453 = fmul fast float %9447, 6.000000e+00
  %9454 = fsub fast float %9452, %9453
  %9455 = fadd fast float %9454, 4.000000e+00
  %9456 = fmul fast float %9455, 0x3FC5555560000000
  %9457 = fmul fast float %9448, -3.000000e+00
  %9458 = fadd fast float %9447, %9445
  %9459 = fmul fast float %9458, 3.000000e+00
  %9460 = fadd fast float %9457, 1.000000e+00
  %9461 = fadd fast float %9460, %9459
  %9462 = fmul fast float %9448, 0x3FC5555560000000
  %9463 = fmul fast float %9446, %9446
  %9464 = fmul fast float %9463, %9446
  %9465 = fsub fast float 3.000000e+00, %9446
  %9466 = fmul fast float %9463, %9465
  %9467 = fmul fast float %9446, 3.000000e+00
  %9468 = fmul fast float %9464, 3.000000e+00
  %9469 = fmul fast float %9463, 6.000000e+00
  %9470 = fsub fast float %9468, %9469
  %9471 = fadd fast float %9470, 4.000000e+00
  %9472 = fmul fast float %9471, 0x3FC5555560000000
  %9473 = fmul fast float %9464, -3.000000e+00
  %9474 = fadd fast float %9463, %9446
  %9475 = fmul fast float %9474, 3.000000e+00
  %9476 = fadd fast float %9473, 1.000000e+00
  %9477 = fadd fast float %9476, %9475
  %9478 = fmul fast float %9464, 0x3FC5555560000000
  %9479 = fadd fast float %9445, 1.000000e+00
  %9480 = fsub fast float 1.000000e+00, %9451
  %9481 = fadd fast float %9480, %9450
  %9482 = fadd fast float %9481, %9455
  %9483 = fmul fast float %9482, 0x3FC5555560000000
  %9484 = fdiv fast float %9456, %9483
  %9485 = fsub fast float %9479, %9484
  %9486 = fsub fast float 1.000000e+00, %9445
  %9487 = fadd fast float %9461, %9448
  %9488 = fmul fast float %9487, 0x3FC5555560000000
  %9489 = fdiv fast float %9462, %9488
  %9490 = fadd fast float %9486, %9489
  %9491 = fadd fast float %9446, 1.000000e+00
  %9492 = fsub fast float 1.000000e+00, %9467
  %9493 = fadd fast float %9492, %9466
  %9494 = fadd fast float %9493, %9471
  %9495 = fmul fast float %9494, 0x3FC5555560000000
  %9496 = fdiv fast float %9472, %9495
  %9497 = fsub fast float %9491, %9496
  %9498 = fsub fast float 1.000000e+00, %9446
  %9499 = fadd fast float %9477, %9464
  %9500 = fmul fast float %9499, 0x3FC5555560000000
  %9501 = fdiv fast float %9478, %9500
  %9502 = fadd fast float %9501, %9498
  %9503 = fmul fast float %9485, %9439
  %9504 = fsub fast float %9366, %9503
  %9505 = fmul fast float %9490, %9439
  %9506 = fadd fast float %9505, %9366
  %9507 = fmul fast float %9502, %9440
  %9508 = fadd fast float %9507, %9367
  %9509 = fmul fast float %9497, %9440
  %9510 = fsub fast float %9367, %9509
  %9511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9504, float %9510, float %9428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9512 = extractvalue %dx.types.ResRet.f32 %9511, 0
  %9513 = extractvalue %dx.types.ResRet.f32 %9511, 1
  %9514 = extractvalue %dx.types.ResRet.f32 %9511, 2
  %9515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9506, float %9510, float %9428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9516 = extractvalue %dx.types.ResRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.ResRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.ResRet.f32 %9515, 2
  %9519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9504, float %9508, float %9428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9520 = extractvalue %dx.types.ResRet.f32 %9519, 0
  %9521 = extractvalue %dx.types.ResRet.f32 %9519, 1
  %9522 = extractvalue %dx.types.ResRet.f32 %9519, 2
  %9523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %9506, float %9508, float %9428, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9524 = extractvalue %dx.types.ResRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.ResRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.ResRet.f32 %9523, 2
  %9527 = fsub fast float %9520, %9512
  %9528 = fsub fast float %9521, %9513
  %9529 = fsub fast float %9522, %9514
  %9530 = fmul fast float %9527, %9500
  %9531 = fmul fast float %9528, %9500
  %9532 = fmul fast float %9529, %9500
  %9533 = fadd fast float %9530, %9512
  %9534 = fadd fast float %9531, %9513
  %9535 = fadd fast float %9532, %9514
  %9536 = fsub fast float %9524, %9516
  %9537 = fsub fast float %9525, %9517
  %9538 = fsub fast float %9526, %9518
  %9539 = fmul fast float %9536, %9500
  %9540 = fmul fast float %9537, %9500
  %9541 = fmul fast float %9538, %9500
  %9542 = fsub fast float %9516, %9533
  %9543 = fadd fast float %9542, %9539
  %9544 = fsub fast float %9517, %9534
  %9545 = fadd fast float %9544, %9540
  %9546 = fsub fast float %9518, %9535
  %9547 = fadd fast float %9546, %9541
  %9548 = fmul fast float %9543, %9488
  %9549 = fmul fast float %9545, %9488
  %9550 = fmul fast float %9547, %9488
  %9551 = fadd fast float %9548, %9533
  %9552 = fadd fast float %9549, %9534
  %9553 = fadd fast float %9550, %9535
  %9554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9555 = extractvalue %dx.types.CBufRet.f32 %9554, 1
  %9556 = fmul fast float %9551, %9555
  %9557 = fmul fast float %9552, %9555
  %9558 = fmul fast float %9553, %9555
  br label %9559

; <label>:9559                                    ; preds = %9391, %9360
  %9560 = phi float [ %9430, %9391 ], [ 1.000000e+00, %9360 ]
  %9561 = phi float [ %9431, %9391 ], [ 1.000000e+00, %9360 ]
  %9562 = phi float [ %9432, %9391 ], [ 1.000000e+00, %9360 ]
  %9563 = phi float [ %9556, %9391 ], [ 0.000000e+00, %9360 ]
  %9564 = phi float [ %9557, %9391 ], [ 0.000000e+00, %9360 ]
  %9565 = phi float [ %9558, %9391 ], [ 0.000000e+00, %9360 ]
  %9566 = fmul fast float %9563, %9345
  %9567 = fmul fast float %9564, %9346
  %9568 = fmul fast float %9565, %9347
  %9569 = call float @dx.op.dot3.f32(i32 55, float %9560, float %9561, float %9562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9570 = call float @dx.op.dot3.f32(i32 55, float %9566, float %9567, float %9568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9571 = select i1 %259, float %9569, float %9560
  %9572 = select i1 %259, float %9569, float %9561
  %9573 = select i1 %259, float 1.000000e+00, float %9562
  %9574 = select i1 %259, float %9570, float %9566
  %9575 = select i1 %259, float 0.000000e+00, float %9567
  %9576 = select i1 %259, float 0.000000e+00, float %9568
  %9577 = fmul fast float %9571, %9350
  %9578 = fmul fast float %9572, %9351
  %9579 = fmul fast float %9573, %9352
  %9580 = fadd fast float %9577, %9574
  %9581 = fadd fast float %9578, %9575
  %9582 = fadd fast float %9576, %9579
  %9583 = fmul fast float %9571, %9314
  %9584 = fmul fast float %9572, %9315
  %9585 = fmul fast float %9573, %9316
  %9586 = fmul fast float %135, %9362
  %9587 = fmul fast float %137, %9363
  %9588 = fsub fast float 1.000000e+00, %9586
  %9589 = fsub fast float 1.000000e+00, %9587
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = fmul fast float %9588, %9591
  %9595 = fmul fast float %9588, %9592
  %9596 = fmul fast float %9588, %9593
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 0
  %9599 = extractvalue %dx.types.CBufRet.f32 %9597, 1
  %9600 = extractvalue %dx.types.CBufRet.f32 %9597, 2
  %9601 = fmul fast float %9589, %9598
  %9602 = fmul fast float %9589, %9599
  %9603 = fmul fast float %9589, %9600
  %9604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9605 = extractvalue %dx.types.CBufRet.f32 %9604, 0
  %9606 = extractvalue %dx.types.CBufRet.f32 %9604, 1
  %9607 = extractvalue %dx.types.CBufRet.f32 %9604, 2
  %9608 = fadd fast float %9601, %9605
  %9609 = fadd fast float %9608, %9594
  %9610 = fadd fast float %9602, %9606
  %9611 = fadd fast float %9610, %9595
  %9612 = fadd fast float %9603, %9607
  %9613 = fadd fast float %9612, %9596
  %9614 = fmul fast float %9609, %219
  %9615 = fmul fast float %9611, %219
  %9616 = fmul fast float %9613, %219
  br label %9617

; <label>:9617                                    ; preds = %9559, %9313
  %9618 = phi float [ %9614, %9559 ], [ %165, %9313 ]
  %9619 = phi float [ %9615, %9559 ], [ %166, %9313 ]
  %9620 = phi float [ %9616, %9559 ], [ %167, %9313 ]
  %9621 = phi float [ %219, %9559 ], [ %98, %9313 ]
  %9622 = phi float [ %9580, %9559 ], [ %9350, %9313 ]
  %9623 = phi float [ %9581, %9559 ], [ %9351, %9313 ]
  %9624 = phi float [ %9582, %9559 ], [ %9352, %9313 ]
  %9625 = phi float [ %9583, %9559 ], [ %9314, %9313 ]
  %9626 = phi float [ %9584, %9559 ], [ %9315, %9313 ]
  %9627 = phi float [ %9585, %9559 ], [ %9316, %9313 ]
  %9628 = phi float [ %9560, %9559 ], [ 1.000000e+00, %9313 ]
  br i1 %9359, label %10783, label %9629

; <label>:9629                                    ; preds = %9617
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = extractvalue %dx.types.CBufRet.f32 %9630, 1
  %9633 = extractvalue %dx.types.CBufRet.f32 %9630, 2
  %9634 = extractvalue %dx.types.CBufRet.f32 %9630, 3
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.CBufRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.CBufRet.f32 %9635, 2
  %9639 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 0
  %9642 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9643 = extractvalue %dx.types.CBufRet.f32 %9640, 2
  %9644 = extractvalue %dx.types.CBufRet.f32 %9640, 3
  %9645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9646 = extractvalue %dx.types.CBufRet.f32 %9645, 0
  %9647 = extractvalue %dx.types.CBufRet.f32 %9645, 1
  %9648 = extractvalue %dx.types.CBufRet.f32 %9645, 2
  %9649 = extractvalue %dx.types.CBufRet.f32 %9645, 3
  %9650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.f32 %9650, 3
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 3
  %9654 = extractvalue %dx.types.CBufRet.f32 %9652, 0
  %9655 = extractvalue %dx.types.CBufRet.f32 %9652, 1
  %9656 = extractvalue %dx.types.CBufRet.f32 %9652, 2
  %9657 = fcmp fast olt float %9656, -5.000000e-01
  %9658 = call float @dx.op.dot3.f32(i32 55, float %9618, float %9619, float %9620, float %9618, float %9619, float %9620)  ; Dot3(ax,ay,az,bx,by,bz)
  %9659 = call float @dx.op.unary.f32(i32 25, float %9658)  ; Rsqrt(value)
  %9660 = fmul fast float %9659, %9658
  %9661 = fmul fast float %9659, %9618
  %9662 = fmul fast float %9659, %9619
  %9663 = fmul fast float %9659, %9620
  %9664 = fadd fast float %9660, %9634
  %9665 = call float @dx.op.dot3.f32(i32 55, float %9661, float %9662, float %9663, float %9631, float %9632, float %9633)  ; Dot3(ax,ay,az,bx,by,bz)
  %9666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9667 = extractvalue %dx.types.CBufRet.i32 %9666, 1
  %9668 = and i32 %9667, 1
  %9669 = icmp ne i32 %9668, 0
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 2
  %9672 = fcmp fast ogt float %9671, 0.000000e+00
  %9673 = and i1 %9669, %9672
  br i1 %9673, label %9674, label %10080, !dx.controlflow.hints !136

; <label>:9674                                    ; preds = %9629
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 3
  %9677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9678 = extractvalue %dx.types.CBufRet.f32 %9677, 2
  %9679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.f32 %9679, 2
  %9681 = fsub fast float %9678, %9680
  %9682 = and i32 %9667, 2
  %9683 = extractvalue %dx.types.CBufRet.i32 %9666, 0
  %9684 = call i32 @dx.op.binary.i32(i32 40, i32 %9683, i32 3)  ; UMin(a,b)
  %9685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9686 = extractvalue %dx.types.CBufRet.f32 %9685, 0
  %9687 = extractvalue %dx.types.CBufRet.f32 %9685, 1
  %9688 = extractvalue %dx.types.CBufRet.f32 %9679, 0
  %9689 = extractvalue %dx.types.CBufRet.f32 %9679, 1
  %9690 = fsub fast float %9686, %9688
  %9691 = fsub fast float %9687, %9689
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 0
  %9694 = fcmp fast ogt float %9693, 0.000000e+00
  %9695 = fsub fast float -0.000000e+00, %9690
  %9696 = fsub fast float -0.000000e+00, %9691
  %9697 = call float @dx.op.dot2.f32(i32 54, float %9661, float %9662, float %9661, float %9662)  ; Dot2(ax,ay,bx,by)
  %9698 = call float @dx.op.dot2.f32(i32 54, float %9661, float %9662, float %9695, float %9696)  ; Dot2(ax,ay,bx,by)
  %9699 = fmul fast float %9698, 2.000000e+00
  %9700 = call float @dx.op.dot2.f32(i32 54, float %9695, float %9696, float %9695, float %9696)  ; Dot2(ax,ay,bx,by)
  %9701 = fmul fast float %9693, %9693
  %9702 = fsub fast float %9700, %9701
  %9703 = fmul fast float %9699, %9699
  %9704 = fmul fast float %9697, 4.000000e+00
  %9705 = fmul fast float %9704, %9702
  %9706 = fsub fast float %9703, %9705
  %9707 = fcmp fast ogt float %9706, 0.000000e+00
  br i1 %9707, label %9708, label %9723

; <label>:9708                                    ; preds = %9674
  %9709 = fcmp fast ogt float %9699, 0.000000e+00
  %9710 = call float @dx.op.unary.f32(i32 24, float %9706)  ; Sqrt(value)
  %9711 = fsub fast float -0.000000e+00, %9710
  %9712 = select i1 %9709, float %9710, float %9711
  %9713 = fadd fast float %9712, %9699
  %9714 = fmul float %9713, -5.000000e-01
  %9715 = fdiv fast float %9714, %9697
  %9716 = call float @dx.op.binary.f32(i32 35, float %9715, float 0.000000e+00)  ; FMax(a,b)
  %9717 = call float @dx.op.binary.f32(i32 36, float %9660, float %9716)  ; FMin(a,b)
  %9718 = fdiv fast float %9702, %9714
  %9719 = call float @dx.op.binary.f32(i32 35, float %9718, float 0.000000e+00)  ; FMax(a,b)
  %9720 = call float @dx.op.binary.f32(i32 36, float %9660, float %9719)  ; FMin(a,b)
  %9721 = call float @dx.op.binary.f32(i32 36, float %9717, float %9720)  ; FMin(a,b)
  %9722 = call float @dx.op.binary.f32(i32 35, float %9717, float %9720)  ; FMax(a,b)
  br label %9723

; <label>:9723                                    ; preds = %9708, %9674
  %9724 = phi float [ %9722, %9708 ], [ -1.000000e+00, %9674 ]
  %9725 = phi float [ %9721, %9708 ], [ -1.000000e+00, %9674 ]
  %9726 = phi i1 [ true, %9708 ], [ false, %9674 ]
  %9727 = and i1 %9694, %9726
  br i1 %9727, label %9728, label %9730

; <label>:9728                                    ; preds = %9723
  %9729 = fcmp fast oeq float %9725, %9724
  br i1 %9729, label %10033, label %9731

; <label>:9730                                    ; preds = %9723
  br i1 %9694, label %10033, label %9731

; <label>:9731                                    ; preds = %9730, %9728
  %9732 = phi float [ %9660, %9730 ], [ %9724, %9728 ]
  %9733 = phi float [ 0.000000e+00, %9730 ], [ %9725, %9728 ]
  %9734 = icmp ne i32 %9682, 0
  %9735 = fmul fast float %9732, %9663
  %9736 = fadd fast float %9735, %9676
  %9737 = fmul fast float %9736, %9732
  %9738 = select i1 %9734, float 0.000000e+00, float %9737
  %9739 = fcmp fast oeq float %9663, 0.000000e+00
  %9740 = fdiv fast float %9681, %9663
  %9741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9740)  ; FMax(a,b)
  %9742 = select i1 %9739, float %9732, float %9741
  %9743 = call float @dx.op.binary.f32(i32 36, float %9732, float %9742)  ; FMin(a,b)
  %9744 = fcmp fast ogt float %9663, 0.000000e+00
  %9745 = fcmp fast olt float %9681, 0.000000e+00
  br i1 %9744, label %9746, label %9803

; <label>:9746                                    ; preds = %9731
  %9747 = icmp eq i32 %9682, 0
  br i1 %9745, label %9748, label %9792

; <label>:9748                                    ; preds = %9746
  %9749 = select i1 %9747, float %9732, float 0.000000e+00
  %9750 = fsub fast float -0.000000e+00, %9749
  %9751 = call float @dx.op.unary.f32(i32 6, float %9750)  ; FAbs(value)
  %9752 = fmul fast float %9749, %9663
  %9753 = fadd fast float %9752, %9676
  %9754 = fmul fast float %9751, %9753
  %9755 = fsub fast float %9738, %9754
  %9756 = fsub fast float %9732, %9751
  %9757 = select i1 %9747, float %9756, float 0.000000e+00
  %9758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9759 = extractvalue %dx.types.CBufRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.CBufRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.CBufRet.f32 %9758, 2
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 0
  %9764 = extractvalue %dx.types.CBufRet.f32 %9762, 1
  %9765 = extractvalue %dx.types.CBufRet.f32 %9762, 2
  %9766 = extractvalue %dx.types.CBufRet.f32 %9762, 3
  %9767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9768 = extractvalue %dx.types.CBufRet.f32 %9767, 3
  %9769 = call float @dx.op.binary.f32(i32 36, float %9755, float %9768)  ; FMin(a,b)
  %9770 = fmul fast float %9766, %9757
  %9771 = call float @dx.op.unary.f32(i32 7, float %9770)  ; Saturate(value)
  %9772 = fsub fast float %9763, %9759
  %9773 = fsub fast float %9764, %9760
  %9774 = fsub fast float %9765, %9761
  %9775 = fmul fast float %9771, %9772
  %9776 = fmul fast float %9771, %9773
  %9777 = fmul fast float %9771, %9774
  %9778 = fadd fast float %9775, %9759
  %9779 = fadd fast float %9776, %9760
  %9780 = fadd fast float %9777, %9761
  %9781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9781, 0
  %9783 = extractvalue %dx.types.CBufRet.f32 %9781, 1
  %9784 = fadd fast float %9783, %9782
  %9785 = call float @dx.op.unary.f32(i32 7, float %9784)  ; Saturate(value)
  %9786 = extractvalue %dx.types.CBufRet.f32 %9781, 2
  %9787 = extractvalue %dx.types.CBufRet.f32 %9781, 3
  %9788 = fadd fast float %9787, %9786
  %9789 = call float @dx.op.unary.f32(i32 7, float %9788)  ; Saturate(value)
  %9790 = fmul fast float %9785, %9769
  %9791 = fmul fast float %9790, %9789
  br label %10033

; <label>:9792                                    ; preds = %9746
  br i1 %9747, label %9793, label %9814

; <label>:9793                                    ; preds = %9792
  %9794 = call float @dx.op.binary.f32(i32 36, float %9743, float %9733)  ; FMin(a,b)
  %9795 = fsub fast float %9743, %9794
  %9796 = fsub fast float %9795, %9732
  %9797 = call float @dx.op.unary.f32(i32 6, float %9796)  ; FAbs(value)
  %9798 = fadd fast float %9795, %9732
  %9799 = fmul fast float %9798, %9663
  %9800 = fadd fast float %9799, %9676
  %9801 = fmul fast float %9800, %9797
  %9802 = fsub fast float %9738, %9801
  br label %9814

; <label>:9803                                    ; preds = %9731
  br i1 %9745, label %9804, label %9814

; <label>:9804                                    ; preds = %9803
  %9805 = call float @dx.op.binary.f32(i32 35, float %9733, float %9743)  ; FMax(a,b)
  %9806 = icmp eq i32 %9682, 0
  %9807 = select i1 %9806, float %9743, float 0.000000e+00
  %9808 = fsub fast float -0.000000e+00, %9807
  %9809 = call float @dx.op.unary.f32(i32 6, float %9808)  ; FAbs(value)
  %9810 = fmul fast float %9807, %9663
  %9811 = fadd fast float %9810, %9676
  %9812 = fmul fast float %9809, %9811
  %9813 = fsub fast float %9738, %9812
  br label %9814

; <label>:9814                                    ; preds = %9804, %9803, %9793, %9792
  %9815 = phi float [ %9733, %9792 ], [ %9733, %9793 ], [ %9805, %9804 ], [ %9733, %9803 ]
  %9816 = phi float [ 0.000000e+00, %9792 ], [ %9797, %9793 ], [ %9809, %9804 ], [ 0.000000e+00, %9803 ]
  %9817 = phi float [ %9738, %9792 ], [ %9802, %9793 ], [ %9813, %9804 ], [ %9738, %9803 ]
  %9818 = phi float [ %9743, %9792 ], [ %9743, %9793 ], [ %9732, %9804 ], [ %9732, %9803 ]
  %9819 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9819, align 4, !tbaa !123, !noalias !137
  %9820 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9820, align 4, !tbaa !123, !noalias !137
  %9821 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9821, align 4, !tbaa !123, !noalias !137
  %9822 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9822, align 4, !tbaa !123, !noalias !137
  %9823 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9823, align 4, !tbaa !123, !noalias !137
  %9824 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9824, align 4, !tbaa !123, !noalias !137
  %9825 = icmp sgt i32 %9684, 0
  br i1 %9825, label %9826, label %9887

; <label>:9826                                    ; preds = %9814
  br label %9827

; <label>:9827                                    ; preds = %9876, %9826
  %9828 = phi i32 [ %9877, %9876 ], [ 0, %9826 ]
  %9829 = phi i32 [ %9878, %9876 ], [ 0, %9826 ]
  %9830 = add nuw i32 %9829, 171
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 %9830)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 0
  %9833 = extractvalue %dx.types.CBufRet.f32 %9831, 1
  %9834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9835 = extractvalue %dx.types.CBufRet.f32 %9834, 0
  %9836 = extractvalue %dx.types.CBufRet.f32 %9834, 1
  %9837 = fsub fast float %9832, %9835
  %9838 = fsub fast float %9833, %9836
  %9839 = extractvalue %dx.types.CBufRet.f32 %9831, 2
  %9840 = fsub fast float -0.000000e+00, %9837
  %9841 = fsub fast float -0.000000e+00, %9838
  %9842 = call float @dx.op.dot2.f32(i32 54, float %9661, float %9662, float %9840, float %9841)  ; Dot2(ax,ay,bx,by)
  %9843 = fmul fast float %9842, 2.000000e+00
  %9844 = call float @dx.op.dot2.f32(i32 54, float %9840, float %9841, float %9840, float %9841)  ; Dot2(ax,ay,bx,by)
  %9845 = fmul fast float %9839, %9839
  %9846 = fsub fast float %9844, %9845
  %9847 = fmul fast float %9843, %9843
  %9848 = fmul fast float %9704, %9846
  %9849 = fsub fast float %9847, %9848
  %9850 = fcmp fast ogt float %9849, 0.000000e+00
  br i1 %9850, label %9851, label %9866

; <label>:9851                                    ; preds = %9827
  %9852 = fcmp fast ogt float %9843, 0.000000e+00
  %9853 = call float @dx.op.unary.f32(i32 24, float %9849)  ; Sqrt(value)
  %9854 = fsub fast float -0.000000e+00, %9853
  %9855 = select i1 %9852, float %9853, float %9854
  %9856 = fadd fast float %9855, %9843
  %9857 = fmul float %9856, -5.000000e-01
  %9858 = fdiv fast float %9857, %9697
  %9859 = call float @dx.op.binary.f32(i32 35, float %9858, float 0.000000e+00)  ; FMax(a,b)
  %9860 = call float @dx.op.binary.f32(i32 36, float %9732, float %9859)  ; FMin(a,b)
  %9861 = fdiv fast float %9846, %9857
  %9862 = call float @dx.op.binary.f32(i32 35, float %9861, float 0.000000e+00)  ; FMax(a,b)
  %9863 = call float @dx.op.binary.f32(i32 36, float %9732, float %9862)  ; FMin(a,b)
  %9864 = call float @dx.op.binary.f32(i32 36, float %9860, float %9863)  ; FMin(a,b)
  %9865 = call float @dx.op.binary.f32(i32 35, float %9860, float %9863)  ; FMax(a,b)
  br label %9866

; <label>:9866                                    ; preds = %9851, %9827
  %9867 = phi float [ %9865, %9851 ], [ -1.000000e+00, %9827 ]
  %9868 = phi float [ %9864, %9851 ], [ -1.000000e+00, %9827 ]
  %9869 = phi i1 [ true, %9851 ], [ false, %9827 ]
  br i1 %9869, label %9870, label %9876

; <label>:9870                                    ; preds = %9866
  %9871 = call float @dx.op.binary.f32(i32 35, float %9815, float %9868)  ; FMax(a,b)
  %9872 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9829
  store float %9871, float* %9872, align 4, !tbaa !123, !noalias !137
  %9873 = call float @dx.op.binary.f32(i32 35, float %9815, float %9867)  ; FMax(a,b)
  %9874 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9829
  store float %9873, float* %9874, align 4, !tbaa !123, !noalias !137
  %9875 = add nsw i32 %9828, 1
  br label %9876

; <label>:9876                                    ; preds = %9870, %9866
  %9877 = phi i32 [ %9875, %9870 ], [ %9828, %9866 ]
  %9878 = add nuw nsw i32 %9829, 1
  %9879 = icmp eq i32 %9878, %9684
  br i1 %9879, label %9880, label %9827

; <label>:9880                                    ; preds = %9876
  %9881 = load float, float* %9821, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %9882 = load float, float* %9820, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  %9883 = load float, float* %9819, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  %9884 = load float, float* %9824, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %9885 = load float, float* %9823, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  %9886 = load float, float* %9822, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  br label %9887

; <label>:9887                                    ; preds = %9880, %9814
  %9888 = phi float [ -1.000000e+00, %9814 ], [ %9886, %9880 ]
  %9889 = phi float [ -1.000000e+00, %9814 ], [ %9885, %9880 ]
  %9890 = phi float [ -1.000000e+00, %9814 ], [ %9884, %9880 ]
  %9891 = phi float [ -1.000000e+00, %9814 ], [ %9883, %9880 ]
  %9892 = phi float [ -1.000000e+00, %9814 ], [ %9882, %9880 ]
  %9893 = phi float [ -1.000000e+00, %9814 ], [ %9881, %9880 ]
  %9894 = phi i32 [ 0, %9814 ], [ %9877, %9880 ]
  %9895 = call float @dx.op.binary.f32(i32 36, float %9892, float %9893)  ; FMin(a,b)
  %9896 = call float @dx.op.binary.f32(i32 36, float %9891, float %9895)  ; FMin(a,b)
  %9897 = call float @dx.op.binary.f32(i32 35, float %9891, float %9892)  ; FMax(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9897, float %9893)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9891, float %9892)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 35, float %9899, float %9898)  ; FMax(a,b)
  %9901 = call float @dx.op.binary.f32(i32 35, float %9892, float %9893)  ; FMax(a,b)
  %9902 = call float @dx.op.binary.f32(i32 35, float %9891, float %9901)  ; FMax(a,b)
  store float %9896, float* %9819, align 4, !tbaa !123, !alias.scope !161, !noalias !162
  store float %9900, float* %9820, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %9902, float* %9821, align 4, !tbaa !123, !alias.scope !153, !noalias !156
  %9903 = call float @dx.op.binary.f32(i32 36, float %9889, float %9890)  ; FMin(a,b)
  %9904 = call float @dx.op.binary.f32(i32 36, float %9888, float %9903)  ; FMin(a,b)
  %9905 = call float @dx.op.binary.f32(i32 35, float %9888, float %9889)  ; FMax(a,b)
  %9906 = call float @dx.op.binary.f32(i32 36, float %9905, float %9890)  ; FMin(a,b)
  %9907 = call float @dx.op.binary.f32(i32 36, float %9888, float %9889)  ; FMin(a,b)
  %9908 = call float @dx.op.binary.f32(i32 35, float %9907, float %9906)  ; FMax(a,b)
  %9909 = call float @dx.op.binary.f32(i32 35, float %9889, float %9890)  ; FMax(a,b)
  %9910 = call float @dx.op.binary.f32(i32 35, float %9888, float %9909)  ; FMax(a,b)
  store float %9904, float* %9822, align 4, !tbaa !123, !alias.scope !171, !noalias !172
  store float %9908, float* %9823, align 4, !tbaa !123, !alias.scope !169, !noalias !170
  store float %9910, float* %9824, align 4, !tbaa !123, !alias.scope !163, !noalias !166
  %9911 = sub nsw i32 3, %9894
  %9912 = icmp sgt i32 %9911, 2
  br i1 %9912, label %9913, label %9951

; <label>:9913                                    ; preds = %9887
  %9914 = icmp eq i32 %9682, 0
  %9915 = fsub fast float %9732, %9816
  %9916 = select i1 %9914, float %9915, float %9816
  %9917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9918 = extractvalue %dx.types.CBufRet.f32 %9917, 0
  %9919 = extractvalue %dx.types.CBufRet.f32 %9917, 1
  %9920 = extractvalue %dx.types.CBufRet.f32 %9917, 2
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 0
  %9923 = extractvalue %dx.types.CBufRet.f32 %9921, 1
  %9924 = extractvalue %dx.types.CBufRet.f32 %9921, 2
  %9925 = extractvalue %dx.types.CBufRet.f32 %9921, 3
  %9926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9927 = extractvalue %dx.types.CBufRet.f32 %9926, 3
  %9928 = call float @dx.op.binary.f32(i32 36, float %9817, float %9927)  ; FMin(a,b)
  %9929 = fmul fast float %9925, %9916
  %9930 = call float @dx.op.unary.f32(i32 7, float %9929)  ; Saturate(value)
  %9931 = fsub fast float %9922, %9918
  %9932 = fsub fast float %9923, %9919
  %9933 = fsub fast float %9924, %9920
  %9934 = fmul fast float %9930, %9931
  %9935 = fmul fast float %9930, %9932
  %9936 = fmul fast float %9930, %9933
  %9937 = fadd fast float %9934, %9918
  %9938 = fadd fast float %9935, %9919
  %9939 = fadd fast float %9936, %9920
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 0
  %9942 = extractvalue %dx.types.CBufRet.f32 %9940, 1
  %9943 = fadd fast float %9942, %9941
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = extractvalue %dx.types.CBufRet.f32 %9940, 2
  %9946 = extractvalue %dx.types.CBufRet.f32 %9940, 3
  %9947 = fadd fast float %9946, %9945
  %9948 = call float @dx.op.unary.f32(i32 7, float %9947)  ; Saturate(value)
  %9949 = fmul fast float %9944, %9928
  %9950 = fmul fast float %9949, %9948
  br label %10033

; <label>:9951                                    ; preds = %9887
  %9952 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9911
  %9953 = load float, float* %9952, align 4, !tbaa !123, !noalias !137
  %9954 = fcmp fast olt float %9953, %9818
  %9955 = icmp sgt i32 %9894, 0
  %9956 = and i1 %9955, %9954
  br i1 %9956, label %9957, label %9994

; <label>:9957                                    ; preds = %9951
  br label %9958

; <label>:9958                                    ; preds = %9987, %9957
  %9959 = phi float [ %9988, %9987 ], [ %9816, %9957 ]
  %9960 = phi float [ %9989, %9987 ], [ %9817, %9957 ]
  %9961 = phi float [ %9969, %9987 ], [ %9953, %9957 ]
  %9962 = phi i32 [ %9966, %9987 ], [ %9911, %9957 ]
  %9963 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9962
  %9964 = load float, float* %9963, align 4, !tbaa !123, !noalias !137
  %9965 = icmp slt i32 %9962, 2
  %9966 = add nsw i32 %9962, 1
  %9967 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9966
  %9968 = load float, float* %9967, align 4, !tbaa !123, !noalias !137
  %9969 = select i1 %9965, float %9968, float %9732
  %9970 = call float @dx.op.binary.f32(i32 36, float %9969, float %9964)  ; FMin(a,b)
  %9971 = call float @dx.op.binary.f32(i32 36, float %9818, float %9970)  ; FMin(a,b)
  %9972 = icmp eq i32 %9682, 0
  %9973 = fadd fast float %9971, %9961
  %9974 = fmul fast float %9973, %9663
  %9975 = fadd fast float %9974, %9676
  br i1 %9972, label %9981, label %9976

; <label>:9976                                    ; preds = %9958
  %9977 = fsub fast float %9971, %9961
  %9978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9977)  ; FMax(a,b)
  %9979 = fmul fast float %9978, %9975
  %9980 = fadd fast float %9979, %9960
  br label %9987

; <label>:9981                                    ; preds = %9958
  %9982 = fsub fast float %9961, %9971
  %9983 = call float @dx.op.unary.f32(i32 6, float %9982)  ; FAbs(value)
  %9984 = fadd fast float %9983, %9959
  %9985 = fmul fast float %9983, %9975
  %9986 = fsub fast float %9960, %9985
  br label %9987

; <label>:9987                                    ; preds = %9981, %9976
  %9988 = phi float [ %9978, %9976 ], [ %9984, %9981 ]
  %9989 = phi float [ %9980, %9976 ], [ %9986, %9981 ]
  %9990 = fcmp fast olt float %9969, %9818
  %9991 = icmp slt i32 %9966, 3
  %9992 = and i1 %9991, %9990
  br i1 %9992, label %9958, label %9993

; <label>:9993                                    ; preds = %9987
  br label %9994

; <label>:9994                                    ; preds = %9993, %9951
  %9995 = phi float [ %9816, %9951 ], [ %9988, %9993 ]
  %9996 = phi float [ %9817, %9951 ], [ %9989, %9993 ]
  %9997 = fsub fast float %9732, %9995
  %9998 = select i1 %9734, float %9995, float %9997
  %9999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10000 = extractvalue %dx.types.CBufRet.f32 %9999, 0
  %10001 = extractvalue %dx.types.CBufRet.f32 %9999, 1
  %10002 = extractvalue %dx.types.CBufRet.f32 %9999, 2
  %10003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10004 = extractvalue %dx.types.CBufRet.f32 %10003, 0
  %10005 = extractvalue %dx.types.CBufRet.f32 %10003, 1
  %10006 = extractvalue %dx.types.CBufRet.f32 %10003, 2
  %10007 = extractvalue %dx.types.CBufRet.f32 %10003, 3
  %10008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10009 = extractvalue %dx.types.CBufRet.f32 %10008, 3
  %10010 = call float @dx.op.binary.f32(i32 36, float %9996, float %10009)  ; FMin(a,b)
  %10011 = fmul fast float %10007, %9998
  %10012 = call float @dx.op.unary.f32(i32 7, float %10011)  ; Saturate(value)
  %10013 = fsub fast float %10004, %10000
  %10014 = fsub fast float %10005, %10001
  %10015 = fsub fast float %10006, %10002
  %10016 = fmul fast float %10012, %10013
  %10017 = fmul fast float %10012, %10014
  %10018 = fmul fast float %10012, %10015
  %10019 = fadd fast float %10016, %10000
  %10020 = fadd fast float %10017, %10001
  %10021 = fadd fast float %10018, %10002
  %10022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.CBufRet.f32 %10022, 1
  %10025 = fadd fast float %10024, %10023
  %10026 = call float @dx.op.unary.f32(i32 7, float %10025)  ; Saturate(value)
  %10027 = extractvalue %dx.types.CBufRet.f32 %10022, 2
  %10028 = extractvalue %dx.types.CBufRet.f32 %10022, 3
  %10029 = fadd fast float %10028, %10027
  %10030 = call float @dx.op.unary.f32(i32 7, float %10029)  ; Saturate(value)
  %10031 = fmul fast float %10026, %10010
  %10032 = fmul fast float %10031, %10030
  br label %10033

; <label>:10033                                   ; preds = %9994, %9913, %9748, %9730, %9728
  %10034 = phi float [ %9757, %9748 ], [ %9916, %9913 ], [ %9998, %9994 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9730 ]
  %10035 = phi float [ %9791, %9748 ], [ %9950, %9913 ], [ %10032, %9994 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9730 ]
  %10036 = phi float [ %9778, %9748 ], [ %9937, %9913 ], [ %10019, %9994 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9730 ]
  %10037 = phi float [ %9779, %9748 ], [ %9938, %9913 ], [ %10020, %9994 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9730 ]
  %10038 = phi float [ %9780, %9748 ], [ %9939, %9913 ], [ %10021, %9994 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9730 ]
  %10039 = fmul fast float %9671, %10035
  %10040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10041 = extractvalue %dx.types.CBufRet.f32 %10040, 2
  %10042 = fsub fast float %9678, %10041
  %10043 = fcmp fast olt float %10039, -2.000000e+01
  %10044 = call float @dx.op.unary.f32(i32 21, float %10039)  ; Exp(value)
  %10045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10046 = extractvalue %dx.types.CBufRet.f32 %10045, 2
  %10047 = extractvalue %dx.types.CBufRet.f32 %10045, 3
  %10048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10049 = extractvalue %dx.types.CBufRet.f32 %10048, 2
  %10050 = fmul fast float %10047, %10042
  %10051 = call float @dx.op.unary.f32(i32 7, float %10050)  ; Saturate(value)
  %10052 = fsub fast float 1.000000e+00, %10051
  %10053 = fmul fast float %9663, 5.000000e-01
  %10054 = fadd fast float %10053, 5.000000e-01
  %10055 = call float @dx.op.unary.f32(i32 7, float %10054)  ; Saturate(value)
  %10056 = fsub fast float 1.000000e+00, %10055
  %10057 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10052)  ; FMax(a,b)
  %10058 = fdiv fast float %10056, %10057
  %10059 = fsub fast float %10042, %9620
  %10060 = call float @dx.op.unary.f32(i32 6, float %10059)  ; FAbs(value)
  %10061 = fmul fast float %10060, %10046
  %10062 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10063 = fsub fast float 1.000000e+00, %10061
  %10064 = fmul fast float %10063, %10062
  %10065 = fadd fast float %10064, %10061
  %10066 = fmul fast float %10049, %10042
  %10067 = call float @dx.op.unary.f32(i32 7, float %10066)  ; Saturate(value)
  %10068 = fsub fast float 1.000000e+00, %10065
  %10069 = fmul fast float %10068, %10067
  %10070 = fadd fast float %10069, %10065
  %10071 = call float @dx.op.unary.f32(i32 7, float %10070)  ; Saturate(value)
  %10072 = fadd fast float %10044, -1.000000e+00
  %10073 = select i1 %10043, float -1.000000e+00, float %10072
  %10074 = fmul fast float %10071, %10073
  %10075 = fadd fast float %10074, 1.000000e+00
  %10076 = fsub fast float -0.000000e+00, %10074
  %10077 = fmul fast float %10036, %10076
  %10078 = fmul fast float %10037, %10076
  %10079 = fmul fast float %10038, %10076
  br label %10080

; <label>:10080                                   ; preds = %10033, %9629
  %10081 = phi float [ %10034, %10033 ], [ 0.000000e+00, %9629 ]
  %10082 = phi float [ %10075, %10033 ], [ 1.000000e+00, %9629 ]
  %10083 = phi float [ %10077, %10033 ], [ 0.000000e+00, %9629 ]
  %10084 = phi float [ %10078, %10033 ], [ 0.000000e+00, %9629 ]
  %10085 = phi float [ %10079, %10033 ], [ 0.000000e+00, %9629 ]
  %10086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10087 = extractvalue %dx.types.CBufRet.f32 %10086, 1
  %10088 = fsub fast float 1.000000e+00, %10082
  %10089 = fmul fast float %10088, %9664
  %10090 = fmul fast float %10089, %10087
  %10091 = fsub fast float %9664, %10090
  br i1 %9657, label %10092, label %10121, !dx.controlflow.hints !173

; <label>:10092                                   ; preds = %10080
  %10093 = fmul fast float %9665, %9654
  %10094 = fadd fast float %10093, %9655
  %10095 = call float @dx.op.unary.f32(i32 7, float %10094)  ; Saturate(value)
  %10096 = fmul fast float %9636, %10091
  %10097 = fsub fast float -0.000000e+00, %10096
  %10098 = fmul fast float %9637, %10091
  %10099 = fsub fast float -0.000000e+00, %10098
  %10100 = call float @dx.op.unary.f32(i32 21, float %10097)  ; Exp(value)
  %10101 = call float @dx.op.unary.f32(i32 21, float %10099)  ; Exp(value)
  %10102 = call float @dx.op.binary.f32(i32 35, float %9644, float %10100)  ; FMax(a,b)
  %10103 = call float @dx.op.binary.f32(i32 35, float %9644, float %10101)  ; FMax(a,b)
  %10104 = fsub fast float %10103, %10102
  %10105 = fmul fast float %10104, %10095
  %10106 = fadd fast float %10105, %10102
  %10107 = call float @dx.op.unary.f32(i32 7, float %10106)  ; Saturate(value)
  %10108 = fsub fast float %9641, %9646
  %10109 = fsub fast float %9642, %9647
  %10110 = fsub fast float %9643, %9648
  %10111 = fmul fast float %10095, %10108
  %10112 = fmul fast float %10095, %10109
  %10113 = fmul fast float %10095, %10110
  %10114 = fadd fast float %10111, %9646
  %10115 = fadd fast float %10112, %9647
  %10116 = fadd fast float %10113, %9648
  %10117 = fsub fast float 1.000000e+00, %10107
  %10118 = fmul fast float %10117, %10114
  %10119 = fmul fast float %10117, %10115
  %10120 = fmul fast float %10117, %10116
  br label %10180

; <label>:10121                                   ; preds = %10080
  %10122 = fmul fast float %10091, %9653
  %10123 = call float @dx.op.unary.f32(i32 7, float %10122)  ; Saturate(value)
  %10124 = fsub fast float 2.000000e+00, %10123
  %10125 = fmul fast float %10123, 9.921875e-01
  %10126 = fmul fast float %10125, %10124
  %10127 = fadd fast float %10126, 3.906250e-03
  %10128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %55, float %10127, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10129 = extractvalue %dx.types.ResRet.f32 %10128, 0
  %10130 = fsub fast float %10123, %10129
  %10131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10130)  ; FMax(a,b)
  %10132 = fmul fast float %9639, %9620
  %10133 = call float @dx.op.unary.f32(i32 6, float %10132)  ; FAbs(value)
  %10134 = fcmp fast ogt float %10133, 0x3EB0C6F7A0000000
  br i1 %10134, label %10135, label %10141, !dx.controlflow.hints !174

; <label>:10135                                   ; preds = %10121
  %10136 = fmul fast float %10132, 0xBFF7154760000000
  %10137 = call float @dx.op.unary.f32(i32 21, float %10136)  ; Exp(value)
  %10138 = fsub fast float 1.000000e+00, %10137
  %10139 = fdiv fast float %10138, %10132
  %10140 = fmul fast float %10139, %9649
  br label %10141

; <label>:10141                                   ; preds = %10135, %10121
  %10142 = phi float [ %10140, %10135 ], [ %9649, %10121 ]
  %10143 = fadd fast float %10142, %9651
  %10144 = fmul fast float %10143, %10131
  %10145 = fmul fast float %9636, %10144
  %10146 = fsub fast float -0.000000e+00, %10145
  %10147 = fmul fast float %9637, %10144
  %10148 = fsub fast float -0.000000e+00, %10147
  %10149 = fmul fast float %9638, %10144
  %10150 = fsub fast float -0.000000e+00, %10149
  %10151 = call float @dx.op.unary.f32(i32 21, float %10146)  ; Exp(value)
  %10152 = call float @dx.op.unary.f32(i32 21, float %10148)  ; Exp(value)
  %10153 = call float @dx.op.unary.f32(i32 21, float %10150)  ; Exp(value)
  %10154 = fmul fast float %9665, %9665
  %10155 = fadd fast float %10154, 1.000000e+00
  %10156 = fmul fast float %10155, 0x3FAE8EC8A0000000
  %10157 = fmul fast float %10156, %9646
  %10158 = fmul fast float %10156, %9647
  %10159 = fmul fast float %10156, %9648
  %10160 = fmul fast float %9665, %9644
  %10161 = fsub fast float 1.000000e+00, %10160
  %10162 = fmul fast float %9644, %9644
  %10163 = fsub fast float 1.000000e+00, %10162
  %10164 = fmul fast float %10163, 0x3FB45F3060000000
  %10165 = fmul fast float %10161, %10161
  %10166 = fdiv fast float 1.000000e+00, %10165
  %10167 = fmul fast float %10164, %10166
  %10168 = fmul fast float %10167, %9641
  %10169 = fmul fast float %10167, %9642
  %10170 = fmul fast float %10167, %9643
  %10171 = fadd fast float %10168, %10157
  %10172 = fadd fast float %10169, %10158
  %10173 = fadd fast float %10170, %10159
  %10174 = fsub fast float 1.000000e+00, %10151
  %10175 = fsub fast float 1.000000e+00, %10152
  %10176 = fsub fast float 1.000000e+00, %10153
  %10177 = fmul fast float %10171, %10174
  %10178 = fmul fast float %10172, %10175
  %10179 = fmul fast float %10173, %10176
  br label %10180

; <label>:10180                                   ; preds = %10141, %10092
  %10181 = phi float [ %10118, %10092 ], [ %10177, %10141 ]
  %10182 = phi float [ %10119, %10092 ], [ %10178, %10141 ]
  %10183 = phi float [ %10120, %10092 ], [ %10179, %10141 ]
  %10184 = phi float [ %10107, %10092 ], [ %10151, %10141 ]
  %10185 = phi float [ %10107, %10092 ], [ %10152, %10141 ]
  %10186 = phi float [ %10107, %10092 ], [ %10153, %10141 ]
  br i1 %9673, label %10187, label %10385, !dx.controlflow.hints !175

; <label>:10187                                   ; preds = %10180
  %10188 = extractvalue %dx.types.CBufRet.f32 %10086, 0
  %10189 = fmul fast float %10188, %10088
  %10190 = fsub fast float %10083, %10181
  %10191 = fsub fast float %10084, %10182
  %10192 = fsub fast float %10085, %10183
  %10193 = fmul fast float %10189, %10190
  %10194 = fmul fast float %10189, %10191
  %10195 = fmul fast float %10189, %10192
  %10196 = fadd fast float %10193, %10181
  %10197 = fadd fast float %10194, %10182
  %10198 = fadd fast float %10195, %10183
  %10199 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10184)  ; FMax(a,b)
  %10200 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10185)  ; FMax(a,b)
  %10201 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10186)  ; FMax(a,b)
  %10202 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10082)  ; FMax(a,b)
  %10203 = call float @dx.op.binary.f32(i32 35, float %10081, float %10091)  ; FMax(a,b)
  %10204 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10203)  ; FMax(a,b)
  %10205 = fdiv fast float %10081, %10204
  %10206 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10207 = fdiv fast float %10091, %10204
  %10208 = call float @dx.op.unary.f32(i32 7, float %10207)  ; Saturate(value)
  %10209 = fcmp fast une float %10202, 1.000000e+00
  br i1 %10209, label %10210, label %10223, !dx.controlflow.hints !176

; <label>:10210                                   ; preds = %10187
  %10211 = call float @dx.op.unary.f32(i32 23, float %10202)  ; Log(value)
  %10212 = fmul fast float %10211, 0x3FE62E4300000000
  %10213 = fmul fast float %10083, %10212
  %10214 = fsub fast float -0.000000e+00, %10213
  %10215 = fmul fast float %10084, %10212
  %10216 = fsub fast float -0.000000e+00, %10215
  %10217 = fmul fast float %10085, %10212
  %10218 = fsub fast float -0.000000e+00, %10217
  %10219 = fsub fast float 1.000000e+00, %10202
  %10220 = fdiv fast float %10214, %10219
  %10221 = fdiv fast float %10216, %10219
  %10222 = fdiv fast float %10218, %10219
  br label %10223

; <label>:10223                                   ; preds = %10210, %10187
  %10224 = phi float [ %10220, %10210 ], [ %10083, %10187 ]
  %10225 = phi float [ %10221, %10210 ], [ %10084, %10187 ]
  %10226 = phi float [ %10222, %10210 ], [ %10085, %10187 ]
  %10227 = phi float [ %10212, %10210 ], [ 0.000000e+00, %10187 ]
  %10228 = fcmp fast une float %10199, 1.000000e+00
  br i1 %10228, label %10229, label %10236, !dx.controlflow.hints !177

; <label>:10229                                   ; preds = %10223
  %10230 = call float @dx.op.unary.f32(i32 23, float %10199)  ; Log(value)
  %10231 = fmul fast float %10230, 0x3FE62E4300000000
  %10232 = fmul fast float %10196, %10231
  %10233 = fsub fast float -0.000000e+00, %10232
  %10234 = fsub fast float 1.000000e+00, %10199
  %10235 = fdiv fast float %10233, %10234
  br label %10236

; <label>:10236                                   ; preds = %10229, %10223
  %10237 = phi float [ %10235, %10229 ], [ %10196, %10223 ]
  %10238 = phi float [ %10231, %10229 ], [ 0.000000e+00, %10223 ]
  %10239 = fcmp fast une float %10200, 1.000000e+00
  br i1 %10239, label %10240, label %10247, !dx.controlflow.hints !177

; <label>:10240                                   ; preds = %10236
  %10241 = call float @dx.op.unary.f32(i32 23, float %10200)  ; Log(value)
  %10242 = fmul fast float %10241, 0x3FE62E4300000000
  %10243 = fmul fast float %10197, %10242
  %10244 = fsub fast float -0.000000e+00, %10243
  %10245 = fsub fast float 1.000000e+00, %10200
  %10246 = fdiv fast float %10244, %10245
  br label %10247

; <label>:10247                                   ; preds = %10240, %10236
  %10248 = phi float [ %10246, %10240 ], [ %10197, %10236 ]
  %10249 = phi float [ %10242, %10240 ], [ 0.000000e+00, %10236 ]
  %10250 = fcmp fast une float %10201, 1.000000e+00
  br i1 %10250, label %10251, label %10258, !dx.controlflow.hints !177

; <label>:10251                                   ; preds = %10247
  %10252 = call float @dx.op.unary.f32(i32 23, float %10201)  ; Log(value)
  %10253 = fmul fast float %10252, 0x3FE62E4300000000
  %10254 = fmul fast float %10198, %10253
  %10255 = fsub fast float -0.000000e+00, %10254
  %10256 = fsub fast float 1.000000e+00, %10201
  %10257 = fdiv fast float %10255, %10256
  br label %10258

; <label>:10258                                   ; preds = %10251, %10247
  %10259 = phi float [ %10257, %10251 ], [ %10198, %10247 ]
  %10260 = phi float [ %10253, %10251 ], [ 0.000000e+00, %10247 ]
  %10261 = fmul fast float %10224, %10208
  %10262 = fmul fast float %10225, %10208
  %10263 = fmul fast float %10226, %10208
  %10264 = fmul fast float %10227, %10208
  %10265 = fmul fast float %10237, %10206
  %10266 = fmul fast float %10248, %10206
  %10267 = fmul fast float %10259, %10206
  %10268 = fmul fast float %10238, %10206
  %10269 = fmul fast float %10249, %10206
  %10270 = fmul fast float %10260, %10206
  %10271 = fadd fast float %10265, %10261
  %10272 = fadd fast float %10266, %10262
  %10273 = fadd fast float %10267, %10263
  %10274 = fadd fast float %10268, %10264
  %10275 = fadd fast float %10269, %10264
  %10276 = fadd fast float %10270, %10264
  %10277 = fcmp fast une float %10274, 0.000000e+00
  br i1 %10277, label %10278, label %10285, !dx.controlflow.hints !178

; <label>:10278                                   ; preds = %10258
  %10279 = fmul fast float %10274, 0x3FF7154760000000
  %10280 = call float @dx.op.unary.f32(i32 21, float %10279)  ; Exp(value)
  %10281 = fsub fast float 1.000000e+00, %10280
  %10282 = fmul fast float %10271, %10281
  %10283 = fsub fast float -0.000000e+00, %10282
  %10284 = fdiv fast float %10283, %10274
  br label %10285

; <label>:10285                                   ; preds = %10278, %10258
  %10286 = phi float [ %10280, %10278 ], [ 1.000000e+00, %10258 ]
  %10287 = phi float [ %10284, %10278 ], [ %10271, %10258 ]
  %10288 = fcmp fast une float %10275, 0.000000e+00
  br i1 %10288, label %10289, label %10296, !dx.controlflow.hints !178

; <label>:10289                                   ; preds = %10285
  %10290 = fmul fast float %10275, 0x3FF7154760000000
  %10291 = call float @dx.op.unary.f32(i32 21, float %10290)  ; Exp(value)
  %10292 = fsub fast float 1.000000e+00, %10291
  %10293 = fmul fast float %10272, %10292
  %10294 = fsub fast float -0.000000e+00, %10293
  %10295 = fdiv fast float %10294, %10275
  br label %10296

; <label>:10296                                   ; preds = %10289, %10285
  %10297 = phi float [ %10291, %10289 ], [ 1.000000e+00, %10285 ]
  %10298 = phi float [ %10295, %10289 ], [ %10272, %10285 ]
  %10299 = fcmp fast une float %10276, 0.000000e+00
  br i1 %10299, label %10300, label %10307, !dx.controlflow.hints !178

; <label>:10300                                   ; preds = %10296
  %10301 = fmul fast float %10276, 0x3FF7154760000000
  %10302 = call float @dx.op.unary.f32(i32 21, float %10301)  ; Exp(value)
  %10303 = fsub fast float 1.000000e+00, %10302
  %10304 = fmul fast float %10273, %10303
  %10305 = fsub fast float -0.000000e+00, %10304
  %10306 = fdiv fast float %10305, %10276
  br label %10307

; <label>:10307                                   ; preds = %10300, %10296
  %10308 = phi float [ %10302, %10300 ], [ 1.000000e+00, %10296 ]
  %10309 = phi float [ %10306, %10300 ], [ %10273, %10296 ]
  %10310 = fcmp fast ogt float %10206, %10208
  br i1 %10310, label %10311, label %10331

; <label>:10311                                   ; preds = %10307
  %10312 = fsub fast float 1.000000e+00, %10208
  %10313 = fmul fast float %10224, %10312
  %10314 = fmul fast float %10225, %10312
  %10315 = fmul fast float %10226, %10312
  %10316 = fmul fast float %10227, %10312
  %10317 = fcmp fast une float %10316, 0.000000e+00
  br i1 %10317, label %10318, label %10369, !dx.controlflow.hints !179

; <label>:10318                                   ; preds = %10311
  %10319 = fmul fast float %10316, 0x3FF7154760000000
  %10320 = call float @dx.op.unary.f32(i32 21, float %10319)  ; Exp(value)
  %10321 = fsub fast float 1.000000e+00, %10320
  %10322 = fmul fast float %10313, %10321
  %10323 = fsub fast float -0.000000e+00, %10322
  %10324 = fmul fast float %10314, %10321
  %10325 = fsub fast float -0.000000e+00, %10324
  %10326 = fmul fast float %10315, %10321
  %10327 = fsub fast float -0.000000e+00, %10326
  %10328 = fdiv fast float %10323, %10316
  %10329 = fdiv fast float %10325, %10316
  %10330 = fdiv fast float %10327, %10316
  br label %10369

; <label>:10331                                   ; preds = %10307
  %10332 = fsub fast float 1.000000e+00, %10206
  %10333 = fmul fast float %10237, %10332
  %10334 = fmul fast float %10248, %10332
  %10335 = fmul fast float %10259, %10332
  %10336 = fmul fast float %10238, %10332
  %10337 = fmul fast float %10249, %10332
  %10338 = fmul fast float %10260, %10332
  %10339 = fcmp fast une float %10336, 0.000000e+00
  br i1 %10339, label %10340, label %10347, !dx.controlflow.hints !178

; <label>:10340                                   ; preds = %10331
  %10341 = fmul fast float %10336, 0x3FF7154760000000
  %10342 = call float @dx.op.unary.f32(i32 21, float %10341)  ; Exp(value)
  %10343 = fsub fast float 1.000000e+00, %10342
  %10344 = fmul fast float %10333, %10343
  %10345 = fsub fast float -0.000000e+00, %10344
  %10346 = fdiv fast float %10345, %10336
  br label %10347

; <label>:10347                                   ; preds = %10340, %10331
  %10348 = phi float [ %10346, %10340 ], [ %10333, %10331 ]
  %10349 = phi float [ %10342, %10340 ], [ 1.000000e+00, %10331 ]
  %10350 = fcmp fast une float %10337, 0.000000e+00
  br i1 %10350, label %10351, label %10358, !dx.controlflow.hints !178

; <label>:10351                                   ; preds = %10347
  %10352 = fmul fast float %10337, 0x3FF7154760000000
  %10353 = call float @dx.op.unary.f32(i32 21, float %10352)  ; Exp(value)
  %10354 = fsub fast float 1.000000e+00, %10353
  %10355 = fmul fast float %10334, %10354
  %10356 = fsub fast float -0.000000e+00, %10355
  %10357 = fdiv fast float %10356, %10337
  br label %10358

; <label>:10358                                   ; preds = %10351, %10347
  %10359 = phi float [ %10357, %10351 ], [ %10334, %10347 ]
  %10360 = phi float [ %10353, %10351 ], [ 1.000000e+00, %10347 ]
  %10361 = fcmp fast une float %10338, 0.000000e+00
  br i1 %10361, label %10362, label %10369, !dx.controlflow.hints !178

; <label>:10362                                   ; preds = %10358
  %10363 = fmul fast float %10338, 0x3FF7154760000000
  %10364 = call float @dx.op.unary.f32(i32 21, float %10363)  ; Exp(value)
  %10365 = fsub fast float 1.000000e+00, %10364
  %10366 = fmul fast float %10335, %10365
  %10367 = fsub fast float -0.000000e+00, %10366
  %10368 = fdiv fast float %10367, %10338
  br label %10369

; <label>:10369                                   ; preds = %10362, %10358, %10318, %10311
  %10370 = phi float [ %10368, %10362 ], [ %10330, %10318 ], [ %10315, %10311 ], [ %10335, %10358 ]
  %10371 = phi float [ %10359, %10362 ], [ %10329, %10318 ], [ %10314, %10311 ], [ %10359, %10358 ]
  %10372 = phi float [ %10348, %10362 ], [ %10328, %10318 ], [ %10313, %10311 ], [ %10348, %10358 ]
  %10373 = phi float [ %10364, %10362 ], [ %10320, %10318 ], [ 1.000000e+00, %10311 ], [ 1.000000e+00, %10358 ]
  %10374 = phi float [ %10360, %10362 ], [ %10320, %10318 ], [ 1.000000e+00, %10311 ], [ %10360, %10358 ]
  %10375 = phi float [ %10349, %10362 ], [ %10320, %10318 ], [ 1.000000e+00, %10311 ], [ %10349, %10358 ]
  %10376 = fmul fast float %10375, %10287
  %10377 = fmul fast float %10374, %10298
  %10378 = fmul fast float %10373, %10309
  %10379 = fadd fast float %10376, %10372
  %10380 = fadd fast float %10377, %10371
  %10381 = fadd fast float %10378, %10370
  %10382 = fmul fast float %10375, %10286
  %10383 = fmul fast float %10374, %10297
  %10384 = fmul fast float %10373, %10308
  br label %10385

; <label>:10385                                   ; preds = %10369, %10180
  %10386 = phi float [ %10384, %10369 ], [ %10186, %10180 ]
  %10387 = phi float [ %10383, %10369 ], [ %10185, %10180 ]
  %10388 = phi float [ %10382, %10369 ], [ %10184, %10180 ]
  %10389 = phi float [ %10381, %10369 ], [ %10183, %10180 ]
  %10390 = phi float [ %10380, %10369 ], [ %10182, %10180 ]
  %10391 = phi float [ %10379, %10369 ], [ %10181, %10180 ]
  %10392 = fmul fast float %10391, %9345
  %10393 = fmul fast float %10390, %9346
  %10394 = fmul fast float %10389, %9347
  %10395 = fmul fast float %10388, %9628
  %10396 = call float @dx.op.dot3.f32(i32 55, float %10388, float %10387, float %10386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10397 = call float @dx.op.dot3.f32(i32 55, float %10392, float %10393, float %10394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10398 = select i1 %259, float %10396, float %10388
  %10399 = select i1 %259, float %10396, float %10387
  %10400 = select i1 %259, float 1.000000e+00, float %10386
  %10401 = select i1 %259, float %10397, float %10392
  %10402 = select i1 %259, float 0.000000e+00, float %10393
  %10403 = select i1 %259, float 0.000000e+00, float %10394
  %10404 = fmul fast float %10398, %9622
  %10405 = fmul fast float %10399, %9623
  %10406 = fmul fast float %10400, %9624
  %10407 = fadd fast float %10404, %10401
  %10408 = fadd fast float %10405, %10402
  %10409 = fadd fast float %10403, %10406
  %10410 = fmul fast float %10398, %9625
  %10411 = fmul fast float %10399, %9626
  %10412 = fmul fast float %10400, %9627
  %10413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10414 = extractvalue %dx.types.CBufRet.i32 %10413, 0
  %10415 = icmp eq i32 %10414, 0
  br i1 %10415, label %10783, label %10416, !dx.controlflow.hints !180

; <label>:10416                                   ; preds = %10385
  %10417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10418 = extractvalue %dx.types.CBufRet.f32 %10417, 2
  %10419 = extractvalue %dx.types.CBufRet.f32 %10417, 3
  %10420 = fmul fast float %10418, %110
  %10421 = fmul fast float %10419, %111
  %10422 = fmul fast float %10420, 2.000000e+00
  %10423 = fmul fast float %10421, 2.000000e+00
  %10424 = fsub fast float 1.000000e+00, %10422
  %10425 = fsub fast float 1.000000e+00, %10423
  %10426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10427 = extractvalue %dx.types.CBufRet.f32 %10426, 0
  %10428 = extractvalue %dx.types.CBufRet.f32 %10426, 1
  %10429 = extractvalue %dx.types.CBufRet.f32 %10426, 2
  %10430 = fmul fast float %10424, %10427
  %10431 = fmul fast float %10424, %10428
  %10432 = fmul fast float %10424, %10429
  %10433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10434 = extractvalue %dx.types.CBufRet.f32 %10433, 0
  %10435 = extractvalue %dx.types.CBufRet.f32 %10433, 1
  %10436 = extractvalue %dx.types.CBufRet.f32 %10433, 2
  %10437 = fmul fast float %10425, %10434
  %10438 = fmul fast float %10425, %10435
  %10439 = fmul fast float %10425, %10436
  %10440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10441 = extractvalue %dx.types.CBufRet.f32 %10440, 0
  %10442 = extractvalue %dx.types.CBufRet.f32 %10440, 1
  %10443 = extractvalue %dx.types.CBufRet.f32 %10440, 2
  %10444 = fadd fast float %10437, %10441
  %10445 = fadd fast float %10444, %10430
  %10446 = fadd fast float %10438, %10442
  %10447 = fadd fast float %10446, %10431
  %10448 = fadd fast float %10439, %10443
  %10449 = fadd fast float %10448, %10432
  %10450 = fmul fast float %10445, %9621
  %10451 = fmul fast float %10447, %9621
  %10452 = fmul fast float %10449, %9621
  %10453 = fmul fast float %10450, %10450
  %10454 = fmul fast float %10451, %10451
  %10455 = fadd fast float %10453, %10454
  %10456 = fmul fast float %10452, %10452
  %10457 = fadd fast float %10455, %10456
  %10458 = call float @dx.op.unary.f32(i32 24, float %10457)  ; Sqrt(value)
  %10459 = extractvalue %dx.types.CBufRet.f32 %9348, 0
  %10460 = fsub fast float %10458, %10459
  %10461 = extractvalue %dx.types.CBufRet.f32 %9348, 2
  %10462 = fmul fast float %10460, %10461
  %10463 = call float @dx.op.unary.f32(i32 7, float %10462)  ; Saturate(value)
  %10464 = fadd fast float %10463, -5.000000e-01
  %10465 = fmul fast float %10464, 2.000000e+00
  %10466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10467 = extractvalue %dx.types.CBufRet.f32 %10466, 2
  %10468 = call float @dx.op.binary.f32(i32 36, float %10467, float %10465)  ; FMin(a,b)
  %10469 = fsub fast float -0.000000e+00, %10467
  %10470 = fcmp fast ogt float %10468, %10469
  br i1 %10470, label %10471, label %10783, !dx.controlflow.hints !181

; <label>:10471                                   ; preds = %10416
  %10472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10473 = extractvalue %dx.types.CBufRet.f32 %10472, 3
  %10474 = fcmp fast ogt float %10473, 0.000000e+00
  br i1 %10474, label %10475, label %10550, !dx.controlflow.hints !182

; <label>:10475                                   ; preds = %10471
  %10476 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %10477 = extractvalue %dx.types.Dimensions %10476, 0
  %10478 = sitofp i32 %10477 to float
  %10479 = extractvalue %dx.types.Dimensions %10476, 1
  %10480 = sitofp i32 %10479 to float
  %10481 = fmul fast float %10420, %10478
  %10482 = fmul fast float %10421, %10480
  %10483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10484 = extractvalue %dx.types.CBufRet.f32 %10483, 1
  %10485 = fsub fast float -0.000000e+00, %10484
  %10486 = fptoui float %10485 to i32
  %10487 = fptoui float %10481 to i32
  %10488 = fptoui float %10482 to i32
  %10489 = and i32 %10486, 31
  %10490 = lshr i32 %10487, %10489
  %10491 = lshr i32 %10488, %10489
  %10492 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %10486, i32 %10490, i32 %10491, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10493 = extractvalue %dx.types.ResRet.f32 %10492, 0
  %10494 = fcmp fast olt float %10493, -1.000000e+00
  %10495 = fcmp fast ogt float %10493, -1.000000e+00
  %10496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10497 = extractvalue %dx.types.CBufRet.f32 %10496, 1
  %10498 = select i1 %10495, float %10497, float 1.000000e+00
  %10499 = fadd fast float %10493, 1.000000e+00
  %10500 = fmul fast float %10498, %10499
  %10501 = call float @dx.op.unary.f32(i32 6, float %10500)  ; FAbs(value)
  %10502 = extractvalue %dx.types.CBufRet.f32 %10496, 3
  %10503 = fcmp fast oge float %10501, %10502
  %10504 = select i1 %10503, float 0x4197782600000000, float %10501
  %10505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10506 = extractvalue %dx.types.CBufRet.f32 %10505, 0
  %10507 = extractvalue %dx.types.CBufRet.f32 %10505, 1
  %10508 = extractvalue %dx.types.CBufRet.f32 %10505, 2
  %10509 = select i1 %10494, float %10506, float %10427
  %10510 = select i1 %10494, float %10507, float %10428
  %10511 = select i1 %10494, float %10508, float %10429
  %10512 = fmul fast float %10509, %10424
  %10513 = fmul fast float %10510, %10424
  %10514 = fmul fast float %10511, %10424
  %10515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10516 = extractvalue %dx.types.CBufRet.f32 %10515, 0
  %10517 = extractvalue %dx.types.CBufRet.f32 %10515, 1
  %10518 = extractvalue %dx.types.CBufRet.f32 %10515, 2
  %10519 = select i1 %10494, float %10516, float %10434
  %10520 = select i1 %10494, float %10517, float %10435
  %10521 = select i1 %10494, float %10518, float %10436
  %10522 = fmul fast float %10519, %10425
  %10523 = fmul fast float %10520, %10425
  %10524 = fmul fast float %10521, %10425
  %10525 = fadd fast float %10522, %10512
  %10526 = fadd fast float %10523, %10513
  %10527 = fadd fast float %10524, %10514
  %10528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10529 = extractvalue %dx.types.CBufRet.f32 %10528, 0
  %10530 = extractvalue %dx.types.CBufRet.f32 %10528, 1
  %10531 = extractvalue %dx.types.CBufRet.f32 %10528, 2
  %10532 = select i1 %10494, float %10529, float %10441
  %10533 = select i1 %10494, float %10530, float %10442
  %10534 = select i1 %10494, float %10531, float %10443
  %10535 = fadd fast float %10525, %10532
  %10536 = fadd fast float %10526, %10533
  %10537 = fadd fast float %10527, %10534
  %10538 = fmul fast float %10535, %10504
  %10539 = fmul fast float %10536, %10504
  %10540 = fmul fast float %10537, %10504
  %10541 = fmul fast float %10538, %10538
  %10542 = fmul fast float %10539, %10539
  %10543 = fadd fast float %10541, %10542
  %10544 = fmul fast float %10540, %10540
  %10545 = fadd fast float %10543, %10544
  %10546 = call float @dx.op.unary.f32(i32 24, float %10545)  ; Sqrt(value)
  %10547 = fsub fast float %10546, %10459
  %10548 = fmul fast float %10547, %10461
  %10549 = call float @dx.op.unary.f32(i32 7, float %10548)  ; Saturate(value)
  br label %10550

; <label>:10550                                   ; preds = %10475, %10471
  %10551 = phi float [ %10549, %10475 ], [ 1.000000e+00, %10471 ]
  %10552 = fmul fast float %10468, 5.000000e-01
  %10553 = fadd fast float %10552, 5.000000e-01
  %10554 = call float @dx.op.unary.f32(i32 22, float %10553)  ; Frc(value)
  %10555 = call float @dx.op.unary.f32(i32 27, float %10554)  ; Round_ni(value)
  %10556 = call float @dx.op.unary.f32(i32 22, float %10554)  ; Frc(value)
  %10557 = fmul fast float %10556, 2.000000e+00
  %10558 = fadd fast float %10557, -1.000000e+00
  %10559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %55, float %10420, float %10421, float %10555, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10560 = extractvalue %dx.types.ResRet.f32 %10559, 0
  %10561 = extractvalue %dx.types.ResRet.f32 %10559, 1
  %10562 = extractvalue %dx.types.ResRet.f32 %10559, 2
  %10563 = extractvalue %dx.types.ResRet.f32 %10559, 3
  %10564 = fadd fast float %10560, -5.000000e-01
  %10565 = fadd fast float %10562, -5.000000e-01
  %10566 = fmul fast float %10564, 0xBFD5555560000000
  %10567 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10565, float %10566)  ; FMad(a,b,c)
  %10568 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10561, float 0.000000e+00)  ; FMad(a,b,c)
  %10569 = fadd fast float %10568, %10563
  %10570 = fmul fast float %10564, -7.500000e-01
  %10571 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10565, float %10570)  ; FMad(a,b,c)
  %10572 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10561, float 0.000000e+00)  ; FMad(a,b,c)
  %10573 = fadd fast float %10572, %10563
  %10574 = call float @dx.op.binary.f32(i32 35, float %10567, float -1.000000e+00)  ; FMax(a,b)
  %10575 = call float @dx.op.binary.f32(i32 35, float %10569, float -1.000000e+00)  ; FMax(a,b)
  %10576 = call float @dx.op.binary.f32(i32 35, float %10571, float -1.000000e+00)  ; FMax(a,b)
  %10577 = call float @dx.op.binary.f32(i32 35, float %10573, float -1.000000e+00)  ; FMax(a,b)
  %10578 = call float @dx.op.binary.f32(i32 36, float %10574, float 1.000000e+00)  ; FMin(a,b)
  %10579 = call float @dx.op.binary.f32(i32 36, float %10575, float 1.000000e+00)  ; FMin(a,b)
  %10580 = call float @dx.op.binary.f32(i32 36, float %10576, float 1.000000e+00)  ; FMin(a,b)
  %10581 = call float @dx.op.binary.f32(i32 36, float %10577, float 1.000000e+00)  ; FMin(a,b)
  %10582 = fcmp fast olt float %10578, 0x3FEFFF8020000000
  br i1 %10582, label %10583, label %10698, !dx.controlflow.hints !183

; <label>:10583                                   ; preds = %10550
  %10584 = extractvalue %dx.types.CBufRet.f32 %10466, 3
  %10585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10586 = extractvalue %dx.types.CBufRet.f32 %10585, 0
  %10587 = extractvalue %dx.types.CBufRet.f32 %10585, 1
  %10588 = extractvalue %dx.types.CBufRet.f32 %10585, 2
  %10589 = extractvalue %dx.types.CBufRet.f32 %10585, 3
  %10590 = fsub fast float %10586, %10578
  %10591 = fsub fast float %10587, %10579
  %10592 = fsub fast float %10588, %10580
  %10593 = fsub fast float %10589, %10581
  %10594 = fmul fast float %10590, %10584
  %10595 = fmul fast float %10591, %10584
  %10596 = fmul fast float %10592, %10584
  %10597 = fmul fast float %10593, %10584
  %10598 = fadd fast float %10594, %10578
  %10599 = fadd fast float %10595, %10579
  %10600 = fsub fast float -0.000000e+00, %10599
  %10601 = fadd fast float %10596, %10580
  %10602 = fadd fast float %10597, %10581
  %10603 = fmul fast float %10598, %10598
  %10604 = fsub fast float %10599, %10603
  %10605 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10604)  ; FMax(a,b)
  %10606 = fdiv fast float 1.000000e+00, %10605
  %10607 = fmul fast float %10599, %10598
  %10608 = fsub fast float %10601, %10607
  %10609 = fsub fast float %10558, %10598
  %10610 = fmul fast float %10558, %10558
  %10611 = fsub fast float %10610, %10599
  %10612 = fmul fast float %10609, %10606
  %10613 = fmul fast float %10612, %10608
  %10614 = fsub fast float %10611, %10613
  %10615 = fmul fast float %10599, %10599
  %10616 = fsub fast float %10602, %10615
  %10617 = fmul fast float %10608, %10608
  %10618 = fmul fast float %10617, %10606
  %10619 = fsub fast float %10616, %10618
  %10620 = fdiv fast float %10614, %10619
  %10621 = fmul fast float %10608, %10620
  %10622 = fsub fast float %10609, %10621
  %10623 = fmul fast float %10622, %10606
  %10624 = fmul fast float %10623, %10598
  %10625 = fsub fast float 1.000000e+00, %10624
  %10626 = fmul fast float %10599, %10620
  %10627 = fsub fast float %10625, %10626
  %10628 = fmul fast float %10623, %10623
  %10629 = fmul fast float %10620, 4.000000e+00
  %10630 = fmul fast float %10629, %10627
  %10631 = fsub fast float %10628, %10630
  %10632 = call float @dx.op.unary.f32(i32 24, float %10631)  ; Sqrt(value)
  %10633 = fcmp fast oge float %10623, 0.000000e+00
  %10634 = fsub fast float -0.000000e+00, %10632
  %10635 = select i1 %10633, float %10634, float %10632
  %10636 = fsub fast float %10635, %10623
  %10637 = fdiv fast float %10636, %10620
  %10638 = fdiv fast float %10627, %10636
  %10639 = fmul fast float %10637, 5.000000e-01
  %10640 = fmul fast float %10638, 2.000000e+00
  %10641 = select i1 %10633, float %10639, float %10640
  %10642 = select i1 %10633, float %10640, float %10639
  %10643 = call float @dx.op.binary.f32(i32 35, float %10641, float %10642)  ; FMax(a,b)
  %10644 = call float @dx.op.binary.f32(i32 36, float %10641, float %10642)  ; FMin(a,b)
  %10645 = fcmp fast ogt float %10558, %10644
  br i1 %10645, label %10646, label %10656

; <label>:10646                                   ; preds = %10583
  %10647 = fsub fast float %10558, %10644
  %10648 = fsub fast float %10643, %10644
  %10649 = fmul fast float %10647, %10648
  %10650 = fmul fast float %10643, %10558
  %10651 = fadd fast float %10643, %10558
  %10652 = fmul fast float %10651, %10598
  %10653 = fadd fast float %10650, %10599
  %10654 = fsub fast float %10653, %10652
  %10655 = fdiv fast float %10654, %10649
  br label %10656

; <label>:10656                                   ; preds = %10646, %10583
  %10657 = phi float [ %10655, %10646 ], [ 0.000000e+00, %10583 ]
  %10658 = fcmp fast ogt float %10558, %10643
  %10659 = fsub fast float %10558, %10643
  br i1 %10658, label %10660, label %10670

; <label>:10660                                   ; preds = %10656
  %10661 = fsub fast float %10643, %10644
  %10662 = fmul fast float %10661, %10659
  %10663 = fmul fast float %10644, %10558
  %10664 = fadd fast float %10644, %10558
  %10665 = fmul fast float %10664, %10598
  %10666 = fsub fast float %10600, %10663
  %10667 = fadd fast float %10666, %10665
  %10668 = fdiv fast float %10667, %10662
  %10669 = fadd fast float %10668, %10657
  br label %10670

; <label>:10670                                   ; preds = %10660, %10656
  %10671 = phi float [ %10669, %10660 ], [ %10657, %10656 ]
  %10672 = fsub fast float %10558, %10644
  %10673 = fmul fast float %10672, %10659
  %10674 = fmul fast float %10644, %10643
  %10675 = fadd fast float %10644, %10643
  %10676 = fmul fast float %10675, %10598
  %10677 = fadd fast float %10674, %10599
  %10678 = fsub fast float %10677, %10676
  %10679 = fdiv fast float %10678, %10673
  %10680 = call float @dx.op.unary.f32(i32 7, float %10671)  ; Saturate(value)
  %10681 = fcmp fast oeq float %9349, 0.000000e+00
  %10682 = extractvalue %dx.types.CBufRet.f32 %10466, 0
  %10683 = fcmp fast oeq float %10682, 0.000000e+00
  %10684 = or i1 %10681, %10683
  %10685 = fmul fast float %10682, 2.000000e+00
  %10686 = fadd fast float %10467, %10468
  %10687 = fdiv fast float %10686, %10685
  %10688 = call float @dx.op.unary.f32(i32 7, float %10687)  ; Saturate(value)
  %10689 = fmul fast float %10688, 2.000000e+00
  %10690 = fsub fast float 3.000000e+00, %10689
  %10691 = fmul fast float %10688, %10688
  %10692 = fmul fast float %10691, %10690
  %10693 = select i1 %10684, float 1.000000e+00, float %10692
  %10694 = fmul fast float %10679, %9349
  %10695 = fadd fast float %10680, %10694
  %10696 = call float @dx.op.unary.f32(i32 7, float %10695)  ; Saturate(value)
  %10697 = fmul fast float %10693, %10696
  br label %10698

; <label>:10698                                   ; preds = %10670, %10550
  %10699 = phi float [ %10697, %10670 ], [ 0.000000e+00, %10550 ]
  %10700 = fsub fast float 1.000000e+00, %10699
  %10701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %55, float %10420, float %10421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10702 = extractvalue %dx.types.ResRet.f32 %10701, 0
  %10703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10704 = extractvalue %dx.types.CBufRet.i32 %10703, 2
  %10705 = icmp eq i32 %10704, 0
  br i1 %10705, label %10711, label %10706

; <label>:10706                                   ; preds = %10698
  %10707 = call float @dx.op.unary.f32(i32 7, float %10699)  ; Saturate(value)
  %10708 = fadd fast float %10702, -1.000000e+00
  %10709 = fmul fast float %10707, %10708
  %10710 = fadd fast float %10709, 1.000000e+00
  br label %10711

; <label>:10711                                   ; preds = %10706, %10698
  %10712 = phi float [ %10710, %10706 ], [ %10700, %10698 ]
  br i1 %10474, label %10713, label %10731

; <label>:10713                                   ; preds = %10711
  %10714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10715 = extractvalue %dx.types.CBufRet.f32 %10714, 1
  %10716 = fsub fast float %10551, %10715
  %10717 = call float @dx.op.unary.f32(i32 7, float %10716)  ; Saturate(value)
  %10718 = fsub fast float %10551, %10473
  %10719 = call float @dx.op.unary.f32(i32 7, float %10718)  ; Saturate(value)
  %10720 = fsub fast float %10717, %10719
  %10721 = fsub fast float %10553, %10719
  %10722 = fdiv fast float %10721, %10720
  %10723 = call float @dx.op.unary.f32(i32 7, float %10722)  ; Saturate(value)
  %10724 = fmul fast float %10723, 2.000000e+00
  %10725 = fsub fast float 3.000000e+00, %10724
  %10726 = fsub fast float %10702, %10712
  %10727 = fmul fast float %10723, %10723
  %10728 = fmul fast float %10727, %10726
  %10729 = fmul fast float %10728, %10725
  %10730 = fadd fast float %10729, %10712
  br label %10731

; <label>:10731                                   ; preds = %10713, %10711
  %10732 = phi float [ %10730, %10713 ], [ %10712, %10711 ]
  %10733 = call float @dx.op.binary.f32(i32 35, float %10702, float %10732)  ; FMax(a,b)
  %10734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10735 = extractvalue %dx.types.CBufRet.i32 %10734, 2
  %10736 = and i32 %10735, 1
  %10737 = icmp eq i32 %10736, 0
  %10738 = fcmp fast une float %10733, 1.000000e+00
  %10739 = and i1 %10738, %10737
  br i1 %10739, label %10740, label %10759

; <label>:10740                                   ; preds = %10731
  %10741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %55, float %10420, float %10421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10742 = extractvalue %dx.types.ResRet.f32 %10741, 0
  %10743 = extractvalue %dx.types.ResRet.f32 %10741, 1
  %10744 = extractvalue %dx.types.ResRet.f32 %10741, 2
  %10745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10746 = extractvalue %dx.types.CBufRet.f32 %10745, 1
  %10747 = fmul fast float %10746, %10742
  %10748 = fmul fast float %10746, %10743
  %10749 = fmul fast float %10746, %10744
  %10750 = fcmp fast ogt float %10702, 0x3FEFFF2E40000000
  %10751 = fsub fast float 1.000000e+00, %10733
  %10752 = fsub fast float 1.000000e+00, %10702
  %10753 = fdiv fast float %10751, %10752
  %10754 = call float @dx.op.unary.f32(i32 7, float %10753)  ; Saturate(value)
  %10755 = select i1 %10750, float 0.000000e+00, float %10754
  %10756 = fmul fast float %10747, %10755
  %10757 = fmul fast float %10748, %10755
  %10758 = fmul fast float %10749, %10755
  br label %10759

; <label>:10759                                   ; preds = %10740, %10731
  %10760 = phi float [ 0.000000e+00, %10731 ], [ %10756, %10740 ]
  %10761 = phi float [ 0.000000e+00, %10731 ], [ %10757, %10740 ]
  %10762 = phi float [ 0.000000e+00, %10731 ], [ %10758, %10740 ]
  %10763 = fmul fast float %10760, %9345
  %10764 = fmul fast float %10761, %9346
  %10765 = fmul fast float %10762, %9347
  %10766 = fmul fast float %10733, %10395
  %10767 = call float @dx.op.dot3.f32(i32 55, float %10733, float %10733, float %10733, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10768 = call float @dx.op.dot3.f32(i32 55, float %10763, float %10764, float %10765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10769 = select i1 %259, float %10767, float %10733
  %10770 = select i1 %259, float 1.000000e+00, float %10733
  %10771 = select i1 %259, float %10768, float %10763
  %10772 = select i1 %259, float 0.000000e+00, float %10764
  %10773 = select i1 %259, float 0.000000e+00, float %10765
  %10774 = fmul fast float %10769, %10407
  %10775 = fmul fast float %10769, %10408
  %10776 = fmul fast float %10770, %10409
  %10777 = fadd fast float %10774, %10771
  %10778 = fadd fast float %10775, %10772
  %10779 = fadd fast float %10773, %10776
  %10780 = fmul fast float %10769, %10410
  %10781 = fmul fast float %10769, %10411
  %10782 = fmul fast float %10770, %10412
  br label %10783

; <label>:10783                                   ; preds = %10759, %10416, %10385, %9617
  %10784 = phi float [ %9622, %9617 ], [ %10407, %10385 ], [ %10777, %10759 ], [ %10407, %10416 ]
  %10785 = phi float [ %9623, %9617 ], [ %10408, %10385 ], [ %10778, %10759 ], [ %10408, %10416 ]
  %10786 = phi float [ %9624, %9617 ], [ %10409, %10385 ], [ %10779, %10759 ], [ %10409, %10416 ]
  %10787 = phi float [ %9625, %9617 ], [ %10410, %10385 ], [ %10780, %10759 ], [ %10410, %10416 ]
  %10788 = phi float [ %9626, %9617 ], [ %10411, %10385 ], [ %10781, %10759 ], [ %10411, %10416 ]
  %10789 = phi float [ %9627, %9617 ], [ %10412, %10385 ], [ %10782, %10759 ], [ %10412, %10416 ]
  %10790 = phi float [ %9628, %9617 ], [ %10395, %10385 ], [ %10766, %10759 ], [ %10395, %10416 ]
  %10791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10792 = extractvalue %dx.types.CBufRet.f32 %10791, 2
  %10793 = extractvalue %dx.types.CBufRet.f32 %10791, 3
  %10794 = fmul fast float %10792, %110
  %10795 = fmul fast float %10793, %111
  %10796 = call float @dx.op.unary.f32(i32 7, float %10794)  ; Saturate(value)
  %10797 = call float @dx.op.unary.f32(i32 7, float %10795)  ; Saturate(value)
  %10798 = select i1 %9359, i32 2, i32 0
  %10799 = or i32 %10798, 1
  %10800 = uitofp i32 %10799 to float
  %10801 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10796, float %10797, float %10800, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10802 = extractvalue %dx.types.ResRet.f32 %10801, 0
  %10803 = extractvalue %dx.types.ResRet.f32 %10801, 1
  %10804 = extractvalue %dx.types.ResRet.f32 %10801, 2
  %10805 = extractvalue %dx.types.ResRet.f32 %10801, 3
  %10806 = add nuw nsw i32 %10798, 2
  %10807 = uitofp i32 %10806 to float
  %10808 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %55, float %10796, float %10797, float %10807, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10809 = extractvalue %dx.types.ResRet.f32 %10808, 0
  %10810 = extractvalue %dx.types.ResRet.f32 %10808, 1
  %10811 = extractvalue %dx.types.ResRet.f32 %10808, 2
  %10812 = extractvalue %dx.types.ResRet.f32 %10808, 3
  %10813 = call float @dx.op.binary.f32(i32 35, float %10803, float %10804)  ; FMax(a,b)
  %10814 = call float @dx.op.binary.f32(i32 35, float %10802, float %10813)  ; FMax(a,b)
  %10815 = call float @dx.op.binary.f32(i32 35, float %10814, float %10805)  ; FMax(a,b)
  %10816 = call float @dx.op.binary.f32(i32 36, float %10810, float %10811)  ; FMin(a,b)
  %10817 = call float @dx.op.binary.f32(i32 36, float %10809, float %10816)  ; FMin(a,b)
  %10818 = call float @dx.op.binary.f32(i32 36, float %10817, float %10812)  ; FMin(a,b)
  %10819 = fmul fast float %10815, 2.550000e+02
  %10820 = fadd fast float %10819, 0x3F70101020000000
  %10821 = fptoui float %10820 to i32
  %10822 = fmul fast float %10818, 2.550000e+02
  %10823 = fadd fast float %10822, 0x3F70101020000000
  %10824 = fptoui float %10823 to i32
  %10825 = icmp ult i32 %10821, %10824
  br i1 %10825, label %10826, label %10995

; <label>:10826                                   ; preds = %10783
  %10827 = fcmp fast ogt float %97, 9.843750e-01
  %10828 = fadd fast float %9621, -4.000000e+00
  %10829 = select i1 %10827, float -4.000000e+00, float %10828
  %10830 = call float @dx.op.binary.f32(i32 35, float %10829, float 0.000000e+00)  ; FMax(a,b)
  %10831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10832 = extractvalue %dx.types.CBufRet.f32 %10831, 0
  %10833 = fadd fast float %10832, %10830
  %10834 = extractvalue %dx.types.CBufRet.f32 %10831, 2
  %10835 = fmul fast float %10833, %10834
  %10836 = call float @dx.op.unary.f32(i32 23, float %10835)  ; Log(value)
  %10837 = extractvalue %dx.types.CBufRet.f32 %10831, 3
  %10838 = fmul fast float %10837, %10836
  %10839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10840 = extractvalue %dx.types.CBufRet.f32 %10839, 2
  %10841 = fmul fast float %10838, %10840
  %10842 = call float @dx.op.unary.f32(i32 7, float %10841)  ; Saturate(value)
  %10843 = uitofp i32 %10821 to float
  %10844 = uitofp i32 %10824 to float
  %10845 = fadd fast float %10843, 5.000000e-01
  %10846 = fadd fast float %10844, 5.000000e-01
  %10847 = fmul fast float %10840, %10845
  %10848 = fmul fast float %10840, %10846
  %10849 = fadd fast float %10847, 0x3F0FFB4800000000
  %10850 = fadd fast float %10848, 0xBF0FFB4800000000
  %10851 = call float @dx.op.binary.f32(i32 35, float %10842, float %10849)  ; FMax(a,b)
  %10852 = call float @dx.op.binary.f32(i32 36, float %10851, float %10850)  ; FMin(a,b)
  %10853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10854 = extractvalue %dx.types.CBufRet.f32 %10853, 1
  %10855 = extractvalue %dx.types.CBufRet.f32 %10853, 2
  %10856 = extractvalue %dx.types.CBufRet.f32 %10853, 0
  %10857 = select i1 %9359, float %10856, float 0.000000e+00
  %10858 = fmul fast float %10854, %10852
  %10859 = fadd fast float %10857, %10858
  %10860 = fadd fast float %10857, %10855
  %10861 = fsub fast float %10854, %10855
  %10862 = fadd fast float %10861, %10857
  %10863 = call float @dx.op.binary.f32(i32 35, float %10859, float %10860)  ; FMax(a,b)
  %10864 = call float @dx.op.binary.f32(i32 36, float %10863, float %10862)  ; FMin(a,b)
  %10865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %53, float %10796, float %10797, float %10864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10866 = extractvalue %dx.types.ResRet.f32 %10865, 0
  %10867 = extractvalue %dx.types.ResRet.f32 %10865, 1
  %10868 = extractvalue %dx.types.ResRet.f32 %10865, 2
  %10869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10870 = extractvalue %dx.types.CBufRet.i32 %10869, 0
  %10871 = extractvalue %dx.types.CBufRet.i32 %10869, 1
  %10872 = uitofp i32 %10870 to float
  %10873 = uitofp i32 %10871 to float
  %10874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10875 = extractvalue %dx.types.CBufRet.f32 %10874, 0
  %10876 = extractvalue %dx.types.CBufRet.f32 %10874, 1
  %10877 = fmul fast float %10872, %10796
  %10878 = fmul fast float %10873, %10797
  %10879 = fadd fast float %10877, -5.000000e-01
  %10880 = fadd fast float %10878, -5.000000e-01
  %10881 = call float @dx.op.unary.f32(i32 22, float %10879)  ; Frc(value)
  %10882 = call float @dx.op.unary.f32(i32 22, float %10880)  ; Frc(value)
  %10883 = fmul fast float %10881, %10881
  %10884 = fmul fast float %10883, %10881
  %10885 = fsub fast float 3.000000e+00, %10881
  %10886 = fmul fast float %10883, %10885
  %10887 = fmul fast float %10881, 3.000000e+00
  %10888 = fmul fast float %10884, 3.000000e+00
  %10889 = fmul fast float %10883, 6.000000e+00
  %10890 = fsub fast float %10888, %10889
  %10891 = fadd fast float %10890, 4.000000e+00
  %10892 = fmul fast float %10891, 0x3FC5555560000000
  %10893 = fmul fast float %10884, -3.000000e+00
  %10894 = fadd fast float %10883, %10881
  %10895 = fmul fast float %10894, 3.000000e+00
  %10896 = fadd fast float %10893, 1.000000e+00
  %10897 = fadd fast float %10896, %10895
  %10898 = fmul fast float %10884, 0x3FC5555560000000
  %10899 = fmul fast float %10882, %10882
  %10900 = fmul fast float %10899, %10882
  %10901 = fsub fast float 3.000000e+00, %10882
  %10902 = fmul fast float %10899, %10901
  %10903 = fmul fast float %10882, 3.000000e+00
  %10904 = fmul fast float %10900, 3.000000e+00
  %10905 = fmul fast float %10899, 6.000000e+00
  %10906 = fsub fast float %10904, %10905
  %10907 = fadd fast float %10906, 4.000000e+00
  %10908 = fmul fast float %10907, 0x3FC5555560000000
  %10909 = fmul fast float %10900, -3.000000e+00
  %10910 = fadd fast float %10899, %10882
  %10911 = fmul fast float %10910, 3.000000e+00
  %10912 = fadd fast float %10909, 1.000000e+00
  %10913 = fadd fast float %10912, %10911
  %10914 = fmul fast float %10900, 0x3FC5555560000000
  %10915 = fadd fast float %10881, 1.000000e+00
  %10916 = fsub fast float 1.000000e+00, %10887
  %10917 = fadd fast float %10916, %10886
  %10918 = fadd fast float %10917, %10891
  %10919 = fmul fast float %10918, 0x3FC5555560000000
  %10920 = fdiv fast float %10892, %10919
  %10921 = fsub fast float %10915, %10920
  %10922 = fsub fast float 1.000000e+00, %10881
  %10923 = fadd fast float %10897, %10884
  %10924 = fmul fast float %10923, 0x3FC5555560000000
  %10925 = fdiv fast float %10898, %10924
  %10926 = fadd fast float %10922, %10925
  %10927 = fadd fast float %10882, 1.000000e+00
  %10928 = fsub fast float 1.000000e+00, %10903
  %10929 = fadd fast float %10928, %10902
  %10930 = fadd fast float %10929, %10907
  %10931 = fmul fast float %10930, 0x3FC5555560000000
  %10932 = fdiv fast float %10908, %10931
  %10933 = fsub fast float %10927, %10932
  %10934 = fsub fast float 1.000000e+00, %10882
  %10935 = fadd fast float %10913, %10900
  %10936 = fmul fast float %10935, 0x3FC5555560000000
  %10937 = fdiv fast float %10914, %10936
  %10938 = fadd fast float %10937, %10934
  %10939 = fmul fast float %10921, %10875
  %10940 = fsub fast float %10796, %10939
  %10941 = fmul fast float %10926, %10875
  %10942 = fadd fast float %10941, %10796
  %10943 = fmul fast float %10938, %10876
  %10944 = fadd fast float %10943, %10797
  %10945 = fmul fast float %10933, %10876
  %10946 = fsub fast float %10797, %10945
  %10947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10940, float %10946, float %10864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10948 = extractvalue %dx.types.ResRet.f32 %10947, 0
  %10949 = extractvalue %dx.types.ResRet.f32 %10947, 1
  %10950 = extractvalue %dx.types.ResRet.f32 %10947, 2
  %10951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10942, float %10946, float %10864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10952 = extractvalue %dx.types.ResRet.f32 %10951, 0
  %10953 = extractvalue %dx.types.ResRet.f32 %10951, 1
  %10954 = extractvalue %dx.types.ResRet.f32 %10951, 2
  %10955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10940, float %10944, float %10864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10956 = extractvalue %dx.types.ResRet.f32 %10955, 0
  %10957 = extractvalue %dx.types.ResRet.f32 %10955, 1
  %10958 = extractvalue %dx.types.ResRet.f32 %10955, 2
  %10959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %53, float %10942, float %10944, float %10864, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10960 = extractvalue %dx.types.ResRet.f32 %10959, 0
  %10961 = extractvalue %dx.types.ResRet.f32 %10959, 1
  %10962 = extractvalue %dx.types.ResRet.f32 %10959, 2
  %10963 = fsub fast float %10956, %10948
  %10964 = fsub fast float %10957, %10949
  %10965 = fsub fast float %10958, %10950
  %10966 = fmul fast float %10963, %10936
  %10967 = fmul fast float %10964, %10936
  %10968 = fmul fast float %10965, %10936
  %10969 = fadd fast float %10966, %10948
  %10970 = fadd fast float %10967, %10949
  %10971 = fadd fast float %10968, %10950
  %10972 = fsub fast float %10960, %10952
  %10973 = fsub fast float %10961, %10953
  %10974 = fsub fast float %10962, %10954
  %10975 = fmul fast float %10972, %10936
  %10976 = fmul fast float %10973, %10936
  %10977 = fmul fast float %10974, %10936
  %10978 = fsub fast float %10952, %10969
  %10979 = fadd fast float %10978, %10975
  %10980 = fsub fast float %10953, %10970
  %10981 = fadd fast float %10980, %10976
  %10982 = fsub fast float %10954, %10971
  %10983 = fadd fast float %10982, %10977
  %10984 = fmul fast float %10979, %10924
  %10985 = fmul fast float %10981, %10924
  %10986 = fmul fast float %10983, %10924
  %10987 = fadd fast float %10984, %10969
  %10988 = fadd fast float %10985, %10970
  %10989 = fadd fast float %10986, %10971
  %10990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10991 = extractvalue %dx.types.CBufRet.f32 %10990, 1
  %10992 = fmul fast float %10987, %10991
  %10993 = fmul fast float %10988, %10991
  %10994 = fmul fast float %10989, %10991
  br label %10995

; <label>:10995                                   ; preds = %10826, %10783
  %10996 = phi float [ %10866, %10826 ], [ 1.000000e+00, %10783 ]
  %10997 = phi float [ %10867, %10826 ], [ 1.000000e+00, %10783 ]
  %10998 = phi float [ %10868, %10826 ], [ 1.000000e+00, %10783 ]
  %10999 = phi float [ %10992, %10826 ], [ 0.000000e+00, %10783 ]
  %11000 = phi float [ %10993, %10826 ], [ 0.000000e+00, %10783 ]
  %11001 = phi float [ %10994, %10826 ], [ 0.000000e+00, %10783 ]
  %11002 = fmul fast float %10999, %9345
  %11003 = fmul fast float %11000, %9346
  %11004 = fmul fast float %11001, %9347
  %11005 = fmul fast float %10996, %10790
  %11006 = call float @dx.op.dot3.f32(i32 55, float %10996, float %10997, float %10998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11007 = call float @dx.op.dot3.f32(i32 55, float %11002, float %11003, float %11004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11008 = select i1 %259, float %11006, float %10996
  %11009 = select i1 %259, float %11006, float %10997
  %11010 = select i1 %259, float 1.000000e+00, float %10998
  %11011 = select i1 %259, float %11007, float %11002
  %11012 = select i1 %259, float 0.000000e+00, float %11003
  %11013 = select i1 %259, float 0.000000e+00, float %11004
  %11014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %59, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %11015 = extractvalue %dx.types.CBufRet.i32 %11014, 3
  %11016 = and i32 %11015, 3
  %11017 = icmp ne i32 %11016, 0
  %11018 = and i32 %11015, 4
  %11019 = icmp ne i32 %11018, 0
  %11020 = and i1 %11017, %11019
  %11021 = and i1 %259, %11020
  br i1 %11021, label %11022, label %11028

; <label>:11022                                   ; preds = %10995
  %11023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %11024 = extractvalue %dx.types.CBufRet.f32 %11023, 1
  %11025 = fadd fast float %11005, -1.000000e+00
  %11026 = fmul fast float %11024, %11025
  %11027 = fadd fast float %11026, 1.000000e+00
  br label %11028

; <label>:11028                                   ; preds = %11022, %10995
  %11029 = phi float [ %11027, %11022 ], [ %11005, %10995 ]
  %11030 = fadd fast float %10787, %10784
  %11031 = fmul fast float %11008, %11030
  %11032 = fadd fast float %11031, %11011
  %11033 = fadd fast float %10788, %10785
  %11034 = fmul fast float %11009, %11033
  %11035 = fadd fast float %11034, %11012
  %11036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11037 = extractvalue %dx.types.CBufRet.f32 %11036, 0
  br i1 %259, label %11038, label %11053

; <label>:11038                                   ; preds = %11028
  %11039 = fadd fast float %11032, %11035
  %11040 = fmul fast float %11037, %11039
  %11041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %11042 = extractvalue %dx.types.CBufRet.f32 %11041, 3
  %11043 = extractvalue %dx.types.CBufRet.f32 %9329, 1
  %11044 = fsub fast float %9334, %9328
  %11045 = fadd fast float %11044, %9335
  %11046 = fsub fast float %11045, %11043
  %11047 = extractvalue %dx.types.CBufRet.f32 %9329, 2
  %11048 = fmul fast float %11046, %11047
  %11049 = call float @dx.op.unary.f32(i32 7, float %11048)  ; Saturate(value)
  %11050 = fsub fast float %11049, %11042
  %11051 = fmul fast float %11050, %11029
  %11052 = fadd fast float %11051, %11042
  br label %11079

; <label>:11053                                   ; preds = %11028
  %11054 = fadd fast float %10789, %10786
  %11055 = fmul fast float %11010, %11054
  %11056 = fadd fast float %11055, %11013
  %11057 = fmul fast float %11037, %11032
  %11058 = fmul fast float %11037, %11035
  %11059 = fmul fast float %11037, %11056
  %11060 = call float @dx.op.binary.f32(i32 35, float %11058, float %11059)  ; FMax(a,b)
  %11061 = call float @dx.op.binary.f32(i32 35, float %11057, float %11060)  ; FMax(a,b)
  %11062 = call float @dx.op.binary.f32(i32 35, float %9346, float %9347)  ; FMax(a,b)
  %11063 = call float @dx.op.binary.f32(i32 35, float %9345, float %11062)  ; FMax(a,b)
  %11064 = call float @dx.op.binary.f32(i32 35, float %11061, float %11063)  ; FMax(a,b)
  %11065 = fcmp fast ugt float %11064, 0x3F10000000000000
  br i1 %11065, label %11067, label %11066

; <label>:11066                                   ; preds = %11053
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11067

; <label>:11067                                   ; preds = %11066, %11053
  %11068 = add i32 %61, 356
  %11069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %11068, i32 undef)  ; BufferLoad(srv,index,wot)
  %11070 = extractvalue %dx.types.ResRet.i32 %11069, 0
  %11071 = and i32 %11070, 32
  %11072 = icmp eq i32 %11071, 0
  br i1 %11072, label %11079, label %11073

; <label>:11073                                   ; preds = %11067
  %11074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11075 = extractvalue %dx.types.CBufRet.f32 %11074, 0
  %11076 = fmul fast float %11075, 0x3FE99999A0000000
  %11077 = fadd fast float %11075, %11057
  %11078 = fadd fast float %11076, %11059
  br label %11079

; <label>:11079                                   ; preds = %11073, %11067, %11038
  %11080 = phi float [ 1.000000e+00, %11038 ], [ %9346, %11073 ], [ %9346, %11067 ]
  %11081 = phi float [ 1.000000e+00, %11038 ], [ %9347, %11073 ], [ %9347, %11067 ]
  %11082 = phi float [ %11040, %11038 ], [ %11077, %11073 ], [ %11057, %11067 ]
  %11083 = phi float [ %11052, %11038 ], [ %11058, %11073 ], [ %11058, %11067 ]
  %11084 = phi float [ 1.000000e+00, %11038 ], [ %11078, %11073 ], [ %11059, %11067 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11085 = call float @dx.op.binary.f32(i32 36, float %11082, float 3.225500e+04)  ; FMin(a,b)
  %11086 = call float @dx.op.binary.f32(i32 36, float %11083, float 3.225500e+04)  ; FMin(a,b)
  %11087 = call float @dx.op.binary.f32(i32 36, float %11084, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11085)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11086)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11087)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11088 = call float @dx.op.binary.f32(i32 36, float %9345, float 3.225500e+04)  ; FMin(a,b)
  %11089 = call float @dx.op.binary.f32(i32 36, float %11080, float 3.225500e+04)  ; FMin(a,b)
  %11090 = call float @dx.op.binary.f32(i32 36, float %11081, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %11088)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %11089)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %11090)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

