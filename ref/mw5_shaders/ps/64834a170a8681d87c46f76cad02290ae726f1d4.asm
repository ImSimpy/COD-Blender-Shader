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
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 675bc76c9bd01a4cb43e8714f56e1685
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
; SV_IsFrontFace           0        nointerpolation       
; SV_SampleIndex           0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
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
;   [128 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     u32          2d     T28     t56,space2     1
;                                   texture     f32     2darray     T29     t35,space2     1
;                                   texture     f32          2d     T30     t34,space2     1
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32     2darray     T35      t8,space2     1
;                                   texture     f32          2d     T36      t2,space2     1
;                                   texture     f32          2d     T37      t3,space2     1
;                                   texture     f32          2d     T38      t4,space2     1
;                                   textureunorm_f32     2darray     T39     t80,space2     1
;                                   texture    byte         r/o     T40     t67,space1     1
;                                   texture     f32          2d     T41      t7,space2     1
;                                   texture     f32          2d     T42      t6,space2     1
;                                   texture     f32          2d     T43      t5,space2     1
;                                   texture     f32          2d     T44     t38,space2     1
;                                   texture    byte         r/o     T45     t12,space1     1
;                                   texture    byte         r/o     T46     t13,space1     1
;                                   texture     f32          1d     T47     t30,space2     1
;                                   texture     f32          3d     T48     t44,space2     1
;                                   texture     f32          3d     T49     t45,space2     1
;                                   texture     f32     2darray     T50     t47,space2     1
;                                   textureunorm_f32     2darray     T51     t85,space2     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
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
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %96
  %112 = fmul fast float %110, %97
  %113 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %114 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %87, %113
  %120 = fmul fast float %119, %118
  %121 = fmul fast float %88, %113
  %122 = fmul fast float %121, %118
  %123 = fmul fast float %89, %113
  %124 = fmul fast float %123, %118
  %125 = fmul fast float %88, %85
  %126 = fmul fast float %89, %84
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %89, %83
  %129 = fmul fast float %87, %85
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %87, %84
  %132 = fmul fast float %88, %83
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %86
  %135 = fmul fast float %130, %86
  %136 = fmul fast float %133, %86
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %111, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %112, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fmul fast float %144, %147
  %151 = fmul fast float %144, %148
  %152 = fmul fast float %144, %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fmul fast float %145, %154
  %158 = fmul fast float %145, %155
  %159 = fmul fast float %145, %156
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %164, %150
  %166 = fadd fast float %158, %162
  %167 = fadd fast float %166, %151
  %168 = fadd fast float %159, %163
  %169 = fadd fast float %168, %152
  %170 = fmul fast float %165, %99
  %171 = fmul fast float %167, %99
  %172 = fmul fast float %169, %99
  %173 = add i32 %62, 360
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = extractvalue %dx.types.ResRet.i32 %174, 1
  %177 = extractvalue %dx.types.ResRet.i32 %174, 2
  %178 = extractvalue %dx.types.ResRet.i32 %174, 3
  %179 = bitcast i32 %175 to float
  %180 = bitcast i32 %176 to float
  %181 = bitcast i32 %177 to float
  %182 = bitcast i32 %178 to float
  %183 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %184 = call float @dx.op.unary.f32(i32 25, float %183)  ; Rsqrt(value)
  %185 = fmul fast float %184, %120
  %186 = fmul fast float %184, %122
  %187 = fmul fast float %184, %124
  %188 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %189 = call float @dx.op.unary.f32(i32 25, float %188)  ; Rsqrt(value)
  %190 = fmul fast float %189, %170
  %191 = fmul fast float %189, %171
  %192 = fmul fast float %189, %172
  %193 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %185, float %186, float %187)  ; Dot3(ax,ay,az,bx,by,bz)
  %194 = fmul fast float %193, %193
  %195 = fmul fast float %194, %181
  %196 = fadd fast float %195, %182
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 3
  %200 = fmul fast float %199, %188
  %201 = fsub fast float %179, %200
  %202 = fmul fast float %201, %180
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = fmul fast float %203, %197
  %205 = fmul fast float %111, 5.000000e-01
  %206 = fmul fast float %112, 5.000000e-01
  %207 = fptosi float %205 to i32
  %208 = fptosi float %206 to i32
  %209 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %207, i32 %208, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = lshr i32 %210, 18
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F4C00EBA0000000
  %214 = call float @dx.op.unary.f32(i32 21, float %213)  ; Exp(value)
  %215 = fadd fast float %214, -1.000000e+00
  %216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %217 = extractvalue %dx.types.Dimensions %216, 0
  %218 = sitofp i32 %217 to float
  %219 = extractvalue %dx.types.Dimensions %216, 1
  %220 = sitofp i32 %219 to float
  %221 = fcmp fast oge float %205, %218
  %222 = fcmp fast oge float %206, %220
  %223 = or i1 %221, %222
  %224 = select i1 %223, float 0x4197782600000000, float %215
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 3
  %228 = fmul fast float %226, %111
  %229 = fmul fast float %227, %112
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 114688
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %233, float %228, float 0.000000e+00
  %235 = select i1 %233, float %229, float 0.000000e+00
  %236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %234, float %235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, 2.550000e+02
  %239 = fptoui float %238 to i32
  %240 = select i1 %233, i32 %239, i32 0
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 3
  %244 = and i32 %243, 3
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %243, 4
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %249, label %260

; <label>:249                                     ; preds = %0
  %250 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %251 = fmul fast float %250, %112
  %252 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %253 = fmul fast float %252, %111
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %253, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast olt float %256, %258
  br label %263

; <label>:260                                     ; preds = %0
  %261 = icmp eq i32 %246, 0
  %262 = and i1 %245, %261
  br label %263

; <label>:263                                     ; preds = %260, %249
  %264 = phi i1 [ %259, %249 ], [ %262, %260 ]
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = fmul fast float %266, 0x3FE3C6EF40000000
  %268 = frem fast float %111, 2.560000e+02
  %269 = frem fast float %112, 2.560000e+02
  %270 = fptoui float %268 to i32
  %271 = fptoui float %269 to i32
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %270, i32 %271, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fadd fast float %273, %267
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = add i32 %62, 156
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = shl i32 %278, 4
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %278, 7
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %62, 216
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %290, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %290, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = add i32 %62, 36
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %62, 288
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %62, 172
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %62, 232
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %332, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %332, 16
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = add i32 %62, 52
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %62, 304
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %62, 188
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %362, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = add i32 %62, 248
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %374, 8
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %374, 16
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = add i32 %62, 68
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %62, 320
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %62, 204
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = shl i32 %404, 4
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %404, 7
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %404, 22
  %412 = shl nuw nsw i32 %411, 5
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = add i32 %62, 264
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %416, 8
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %416, 16
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = add i32 %62, 84
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = add i32 %62, 336
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 65535
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %437, 16
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = fmul fast float %439, 0x3F50624DE0000000
  %443 = fmul fast float %441, 0x3F50624DE0000000
  %444 = add i32 %62, 348
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 32
  %448 = icmp eq i32 %447, 0
  %449 = and i32 %446, 64
  %450 = icmp eq i32 %449, 0
  %451 = and i32 %446, 128
  %452 = icmp eq i32 %451, 0
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 2
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %472, label %457

; <label>:457                                     ; preds = %263
  %458 = add i32 %62, 520
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = fmul fast float %467, %92
  %469 = fmul fast float %464, %93
  %470 = fmul fast float %465, %94
  %471 = fmul fast float %466, %95
  br label %472

; <label>:472                                     ; preds = %457, %263
  %473 = phi float [ %95, %263 ], [ %471, %457 ]
  %474 = phi float [ %94, %263 ], [ %470, %457 ]
  %475 = phi float [ %93, %263 ], [ %469, %457 ]
  %476 = phi float [ %92, %263 ], [ %468, %457 ]
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 2
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %500, label %481

; <label>:481                                     ; preds = %472
  %482 = add i32 %62, 44
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %475, float 1.000000e+00
  %488 = add i32 %62, 60
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 1
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %492, float %474, float 1.000000e+00
  %494 = add i32 %62, 76
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 1
  %498 = icmp ne i32 %497, 0
  %499 = select i1 %498, float %473, float 1.000000e+00
  br label %500

; <label>:500                                     ; preds = %481, %472
  %501 = phi float [ %473, %472 ], [ %499, %481 ]
  %502 = phi float [ %474, %472 ], [ %493, %481 ]
  %503 = phi float [ %475, %472 ], [ %487, %481 ]
  %504 = lshr i32 %478, 20
  %505 = and i32 %504, 3
  %506 = add nuw nsw i32 %505, 1
  %507 = add i32 %62, 24
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = add i32 %62, 28
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = or i32 %512, %509
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %1164, label %515

; <label>:515                                     ; preds = %500
  %516 = and i32 %509, 262144
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %65, float 1.000000e+00
  %519 = select i1 %517, float %66, float 0.000000e+00
  %520 = select i1 %517, float %67, float 0.000000e+00
  %521 = select i1 %517, float %68, float 1.000000e+00
  %522 = select i1 %517, float %69, float %90
  %523 = select i1 %517, float %70, float %91
  %524 = add i32 %62, 284
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = fmul fast float %528, 0x3F50624DE0000000
  %530 = add i32 %62, 88
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  %535 = lshr i32 %532, 24
  %536 = add i32 %62, 292
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 65535
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %538, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = add i32 %62, 32
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 22
  %547 = shl nuw nsw i32 %546, 5
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = shl i32 %545, 4
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %545, 7
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fmul fast float %556, 1.000000e+03
  %558 = fmul fast float %316, %557
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fadd fast float %559, %306
  %561 = fmul fast float %317, %557
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fadd fast float %562, %308
  %564 = fmul fast float %529, %557
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = fmul fast float %565, 0x401921FB60000000
  %567 = fadd fast float %566, %548
  %568 = call float @dx.op.unary.f32(i32 13, float %567)  ; Sin(value)
  %569 = call float @dx.op.unary.f32(i32 12, float %567)  ; Cos(value)
  %570 = fsub fast float -0.000000e+00, %568
  %571 = fadd fast float %522, -5.000000e-01
  %572 = fadd fast float %523, -5.000000e-01
  %573 = fmul fast float %540, %571
  %574 = fmul fast float %542, %572
  %575 = fadd fast float %573, 5.000000e-01
  %576 = fadd fast float %574, 5.000000e-01
  %577 = fmul fast float %551, %575
  %578 = fmul fast float %554, %576
  %579 = fmul fast float %569, %577
  %580 = call float @dx.op.tertiary.f32(i32 46, float %570, float %578, float %579)  ; FMad(a,b,c)
  %581 = fmul fast float %568, %577
  %582 = call float @dx.op.tertiary.f32(i32 46, float %569, float %578, float %581)  ; FMad(a,b,c)
  %583 = fadd fast float %560, %580
  %584 = fadd fast float %563, %582
  %585 = icmp ugt i32 %534, 1
  %586 = icmp ugt i32 %532, 33554431
  %587 = or i1 %586, %585
  br i1 %587, label %588, label %613

; <label>:588                                     ; preds = %515
  %589 = add i32 %62, 228
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = fmul fast float %556, %593
  %595 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %596 = mul nuw nsw i32 %534, %535
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %595, %597
  %599 = call float @dx.op.unary.f32(i32 27, float %598)  ; Round_ni(value)
  %600 = fptoui float %599 to i32
  %601 = urem i32 %600, %534
  %602 = udiv i32 %600, %535
  %603 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %604 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %605 = uitofp i32 %601 to float
  %606 = uitofp i32 %602 to float
  %607 = fadd fast float %603, %605
  %608 = fadd fast float %604, %606
  %609 = uitofp i32 %534 to float
  %610 = uitofp i32 %535 to float
  %611 = fdiv fast float %607, %609
  %612 = fdiv fast float %608, %610
  br label %613

; <label>:613                                     ; preds = %588, %515
  %614 = phi float [ %611, %588 ], [ %583, %515 ]
  %615 = phi float [ %612, %588 ], [ %584, %515 ]
  %616 = and i32 %509, 16777216
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %727, label %618

; <label>:618                                     ; preds = %613
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %621 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %622 = extractvalue %dx.types.CBufRet.f32 %619, 2
  %623 = fadd fast float %620, %170
  %624 = fadd fast float %621, %171
  %625 = fadd fast float %622, %172
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = icmp eq i32 %63, 65535
  br i1 %629, label %724, label %630

; <label>:630                                     ; preds = %618
  %631 = lshr i32 %63, 1
  %632 = shl i32 %631, 2
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %63, 1
  %636 = icmp ne i32 %635, 0
  %637 = lshr i32 %634, 16
  %638 = and i32 %634, 65535
  %639 = select i1 %636, i32 %637, i32 %638
  %640 = icmp eq i32 %639, 65535
  br i1 %640, label %720, label %641

; <label>:641                                     ; preds = %630
  %642 = mul nuw nsw i32 %639, 40
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = extractvalue %dx.types.ResRet.f32 %643, 1
  %646 = extractvalue %dx.types.ResRet.f32 %643, 2
  %647 = add nuw nsw i32 %642, 12
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = add nuw nsw i32 %642, 24
  %653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = add nuw nsw i32 %642, 36
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = fsub fast float %623, %644
  %661 = fsub fast float %624, %645
  %662 = fsub fast float %625, %646
  %663 = fmul fast float %659, %660
  %664 = fmul fast float %659, %661
  %665 = fmul fast float %659, %662
  %666 = call float @dx.op.unary.f32(i32 27, float %663)  ; Round_ni(value)
  %667 = call float @dx.op.unary.f32(i32 27, float %664)  ; Round_ni(value)
  %668 = call float @dx.op.unary.f32(i32 27, float %665)  ; Round_ni(value)
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fmul fast float %669, %649
  %673 = fmul fast float %670, %650
  %674 = fmul fast float %671, %651
  %675 = shl i32 %63, 2
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %677, 0
  %679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %680 = call float @dx.op.unary.f32(i32 22, float %672)  ; Frc(value)
  %681 = call float @dx.op.unary.f32(i32 22, float %673)  ; Frc(value)
  %682 = call float @dx.op.unary.f32(i32 22, float %674)  ; Frc(value)
  %683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %679, %dx.types.Handle %55, float %680, float %681, float %682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = fmul fast float %684, 1.023000e+03
  %688 = fmul fast float %685, 1.023000e+03
  %689 = fmul fast float %686, 1.023000e+03
  %690 = fadd fast float %687, 5.000000e-01
  %691 = fadd fast float %688, 5.000000e-01
  %692 = fadd fast float %689, 5.000000e-01
  %693 = call float @dx.op.unary.f32(i32 27, float %690)  ; Round_ni(value)
  %694 = call float @dx.op.unary.f32(i32 27, float %691)  ; Round_ni(value)
  %695 = call float @dx.op.unary.f32(i32 27, float %692)  ; Round_ni(value)
  %696 = fsub fast float %663, %666
  %697 = fsub fast float %664, %667
  %698 = fsub fast float %665, %668
  %699 = fmul fast float %696, 7.500000e-01
  %700 = fmul fast float %697, 7.500000e-01
  %701 = fmul fast float %698, 7.500000e-01
  %702 = fadd fast float %666, 1.250000e-01
  %703 = fadd fast float %702, %699
  %704 = fadd fast float %703, %693
  %705 = fadd fast float %667, 1.250000e-01
  %706 = fadd fast float %705, %700
  %707 = fadd fast float %706, %694
  %708 = fadd fast float %668, 1.250000e-01
  %709 = fadd fast float %708, %701
  %710 = fadd fast float %709, %695
  %711 = fmul fast float %704, %654
  %712 = fmul fast float %707, %655
  %713 = fmul fast float %710, %656
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %717, %dx.types.Handle %53, float %711, float %712, float %713, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  br label %720

; <label>:720                                     ; preds = %641, %630
  %721 = phi float [ %719, %641 ], [ -1.000000e+00, %630 ]
  %722 = fadd fast float %721, %628
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  br label %724

; <label>:724                                     ; preds = %720, %618
  %725 = phi float [ %723, %720 ], [ %628, %618 ]
  %726 = fmul fast float %725, %476
  br label %727

; <label>:727                                     ; preds = %724, %613
  %728 = phi float [ %726, %724 ], [ %476, %613 ]
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 256
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %779, label %733

; <label>:733                                     ; preds = %727
  %734 = add i32 %62, 472
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = add i32 %62, 100
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = shl i32 %743, 4
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = lshr i32 %743, 7
  %748 = and i32 %747, 32752
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = fsub fast float 1.000000e+00, %728
  %751 = call float @dx.op.binary.f32(i32 35, float %750, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %752 = bitcast float %728 to i32
  %753 = sitofp i32 %752 to float
  %754 = fadd fast float %753, 0xC1CFBF8940000000
  %755 = fmul fast float %749, %754
  %756 = fadd fast float %755, 0x41CFBF8940000000
  %757 = fptosi float %756 to i32
  %758 = bitcast i32 %757 to float
  %759 = bitcast float %751 to i32
  %760 = sitofp i32 %759 to float
  %761 = fadd fast float %760, 0xC1CFBF8940000000
  %762 = fmul fast float %761, %749
  %763 = fadd fast float %762, 0x41CFBF8940000000
  %764 = fptosi float %763 to i32
  %765 = bitcast i32 %764 to float
  %766 = fmul fast float %758, %746
  %767 = fmul fast float %765, %746
  %768 = fsub fast float %751, %766
  %769 = fadd fast float %767, %751
  %770 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %771 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %772 = fsub fast float %740, %770
  %773 = fsub fast float %771, %770
  %774 = bitcast float %773 to i32
  %775 = sub nsw i32 2129859010, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %776, %772
  %778 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  br label %779

; <label>:779                                     ; preds = %733, %727
  %780 = phi float [ %778, %733 ], [ %728, %727 ]
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 128
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %801, label %785

; <label>:785                                     ; preds = %779
  %786 = add i32 %62, 456
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = add i32 %788, 0
  %790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %790, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 524288
  %796 = icmp ne i32 %795, 0
  %797 = fcmp fast ogt float %792, 0x3FE0101020000000
  %798 = select i1 %797, float 1.000000e+00, float 0.000000e+00
  %799 = select i1 %796, float %798, float %792
  %800 = fmul fast float %799, %780
  br label %801

; <label>:801                                     ; preds = %785, %779
  %802 = phi float [ %800, %785 ], [ %780, %779 ]
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 16
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %1005, label %807

; <label>:807                                     ; preds = %801
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = add i32 %62, 408
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %812, 0
  %814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %814, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = and i32 %809, 255
  %821 = uitofp i32 %820 to float
  %822 = lshr i32 %809, 8
  %823 = and i32 %822, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %819, %821
  %826 = fadd fast float %825, %824
  %827 = fmul fast float %826, 0x3F70101000000000
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 512
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %840, label %832

; <label>:832                                     ; preds = %807
  %833 = add i32 %62, 488
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = add i32 %835, 0
  %837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %837, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  br label %840

; <label>:840                                     ; preds = %832, %807
  %841 = phi float [ %839, %832 ], [ 1.000000e+00, %807 ]
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 33554432
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %952, label %846

; <label>:846                                     ; preds = %840
  %847 = add i32 %62, 224
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %849, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = add i32 %62, 228
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 65535
  %858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %857)  ; LegacyF16ToF32(value)
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = lshr i32 %860, 24
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F70101020000000
  %864 = and i32 %860, 255
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = lshr i32 %860, 8
  %868 = and i32 %867, 255
  %869 = uitofp i32 %868 to float
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = lshr i32 %860, 16
  %872 = and i32 %871, 255
  %873 = uitofp i32 %872 to float
  %874 = fmul fast float %873, 0x3F70101020000000
  %875 = add i32 %62, 220
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = lshr i32 %877, 24
  %879 = uitofp i32 %878 to float
  %880 = fmul fast float %879, 0x3F70101020000000
  %881 = and i32 %877, 255
  %882 = uitofp i32 %881 to float
  %883 = fmul fast float %882, 0x3F70101020000000
  %884 = lshr i32 %877, 8
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = fmul fast float %886, 0x3F70101020000000
  %888 = lshr i32 %877, 16
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %890, 0x3F70101020000000
  %892 = bitcast float %816 to i32
  %893 = ashr i32 %892, 1
  %894 = sub nsw i32 1597463174, %893
  %895 = bitcast i32 %894 to float
  %896 = fmul fast float %816, 5.000000e-01
  %897 = fmul fast float %895, %895
  %898 = fmul fast float %897, %896
  %899 = fsub fast float 1.500000e+00, %898
  %900 = fmul fast float %895, %816
  %901 = fmul fast float %900, %899
  %902 = bitcast float %817 to i32
  %903 = ashr i32 %902, 1
  %904 = sub nsw i32 1597463174, %903
  %905 = bitcast i32 %904 to float
  %906 = fmul fast float %817, 5.000000e-01
  %907 = fmul fast float %905, %905
  %908 = fmul fast float %907, %906
  %909 = fsub fast float 1.500000e+00, %908
  %910 = fmul fast float %905, %817
  %911 = fmul fast float %910, %909
  %912 = bitcast float %818 to i32
  %913 = ashr i32 %912, 1
  %914 = sub nsw i32 1597463174, %913
  %915 = bitcast i32 %914 to float
  %916 = fmul fast float %818, 5.000000e-01
  %917 = fmul fast float %915, %915
  %918 = fmul fast float %917, %916
  %919 = fsub fast float 1.500000e+00, %918
  %920 = fmul fast float %915, %818
  %921 = fmul fast float %920, %919
  %922 = fsub fast float %901, %883
  %923 = fsub fast float %911, %887
  %924 = fsub fast float %921, %891
  %925 = fmul fast float %922, %851
  %926 = fmul fast float %923, %853
  %927 = fmul fast float %924, %858
  %928 = fadd fast float %925, %866
  %929 = fadd fast float %926, %870
  %930 = fadd fast float %927, %874
  %931 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %932 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %933 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %934 = fmul fast float %931, %931
  %935 = fmul fast float %932, %932
  %936 = fmul fast float %933, %933
  %937 = fsub fast float %934, %816
  %938 = fsub fast float %935, %817
  %939 = fsub fast float %936, %818
  %940 = fmul fast float %937, %841
  %941 = fmul fast float %938, %841
  %942 = fmul fast float %939, %841
  %943 = fadd fast float %940, %816
  %944 = fadd fast float %941, %817
  %945 = fadd fast float %942, %818
  %946 = fadd fast float %863, %827
  %947 = fsub fast float %946, %880
  %948 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %949 = fsub fast float %948, %827
  %950 = fmul fast float %949, %841
  %951 = fadd fast float %950, %827
  br label %1005

; <label>:952                                     ; preds = %840
  %953 = and i32 %843, 134217728
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %989, label %955

; <label>:955                                     ; preds = %952
  %956 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %957 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %958 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %959 = fadd fast float %956, -5.000000e-01
  %960 = fadd fast float %957, -5.000000e-01
  %961 = fadd fast float %958, -5.000000e-01
  %962 = fmul fast float %959, %841
  %963 = fmul fast float %960, %841
  %964 = fmul fast float %961, %841
  %965 = fadd fast float %962, 5.000000e-01
  %966 = fadd fast float %963, 5.000000e-01
  %967 = fadd fast float %964, 5.000000e-01
  %968 = call float @dx.op.unary.f32(i32 24, float %816)  ; Sqrt(value)
  %969 = call float @dx.op.unary.f32(i32 24, float %817)  ; Sqrt(value)
  %970 = call float @dx.op.unary.f32(i32 24, float %818)  ; Sqrt(value)
  %971 = fmul fast float %965, 2.000000e+00
  %972 = fsub fast float 1.000000e+00, %971
  %973 = fmul fast float %972, %968
  %974 = fadd fast float %973, %971
  %975 = fmul fast float %974, %968
  %976 = fmul fast float %966, 2.000000e+00
  %977 = fsub fast float 1.000000e+00, %976
  %978 = fmul fast float %977, %969
  %979 = fadd fast float %978, %976
  %980 = fmul fast float %979, %969
  %981 = fmul fast float %967, 2.000000e+00
  %982 = fsub fast float 1.000000e+00, %981
  %983 = fmul fast float %982, %970
  %984 = fadd fast float %983, %981
  %985 = fmul fast float %984, %970
  %986 = fmul fast float %975, %975
  %987 = fmul fast float %980, %980
  %988 = fmul fast float %985, %985
  br label %1005

; <label>:989                                     ; preds = %952
  %990 = fmul fast float %293, %293
  %991 = fmul fast float %297, %297
  %992 = fmul fast float %301, %301
  %993 = fadd fast float %990, -1.000000e+00
  %994 = fadd fast float %991, -1.000000e+00
  %995 = fadd fast float %992, -1.000000e+00
  %996 = fmul fast float %841, %993
  %997 = fmul fast float %841, %994
  %998 = fmul fast float %841, %995
  %999 = fadd fast float %996, 1.000000e+00
  %1000 = fadd fast float %997, 1.000000e+00
  %1001 = fadd fast float %998, 1.000000e+00
  %1002 = fmul fast float %999, %816
  %1003 = fmul fast float %1000, %817
  %1004 = fmul fast float %1001, %818
  br label %1005

; <label>:1005                                    ; preds = %989, %955, %846, %801
  %1006 = phi float [ %951, %846 ], [ %827, %955 ], [ %827, %989 ], [ 0x3FA23C0BE0000000, %801 ]
  %1007 = phi float [ %943, %846 ], [ %986, %955 ], [ %1002, %989 ], [ 1.000000e+00, %801 ]
  %1008 = phi float [ %944, %846 ], [ %987, %955 ], [ %1003, %989 ], [ 1.000000e+00, %801 ]
  %1009 = phi float [ %945, %846 ], [ %988, %955 ], [ %1004, %989 ], [ 1.000000e+00, %801 ]
  %1010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.i32 %1010, 1
  %1012 = and i32 %1011, 1
  %1013 = icmp ne i32 %1012, 0
  %1014 = add i32 %62, 356
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = and i32 %1016, 32
  %1018 = icmp ne i32 %1017, 0
  %1019 = and i1 %1013, %1018
  %1020 = select i1 %1019, float 1.000000e+00, float %1007
  %1021 = select i1 %1019, float 0x3FD3333340000000, float %1008
  %1022 = select i1 %1019, float 0x3FD3333340000000, float %1009
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 32
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1099, label %1027

; <label>:1027                                    ; preds = %1005
  %1028 = add i32 %62, 92
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %62, 424
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = add i32 %1033, 0
  %1035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1035, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1040 = extractvalue %dx.types.ResRet.f32 %1036, 3
  %1041 = and i32 %1030, 255
  %1042 = uitofp i32 %1041 to float
  %1043 = lshr i32 %1030, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = lshr i32 %1030, 16
  %1047 = and i32 %1046, 255
  %1048 = uitofp i32 %1047 to float
  %1049 = fmul fast float %1048, 0x3F70101000000000
  %1050 = fmul fast float %1037, %1042
  %1051 = fadd fast float %1050, %1045
  %1052 = fmul fast float %1051, 0x3F70101000000000
  %1053 = fadd fast float %1038, -5.000000e-01
  %1054 = fadd fast float %1040, -5.000000e-01
  %1055 = fmul fast float %1053, %1049
  %1056 = fmul fast float %1054, %1049
  %1057 = fadd fast float %1055, 5.000000e-01
  %1058 = fadd fast float %1056, 5.000000e-01
  %1059 = fmul fast float %1057, 2.000000e+00
  %1060 = fadd fast float %1059, -1.000000e+00
  %1061 = fmul fast float %1058, 2.000000e+00
  %1062 = fadd fast float %1061, -1.000000e+00
  %1063 = fadd fast float %1060, %1062
  %1064 = fmul fast float %1063, 5.000000e-01
  %1065 = fsub fast float %1060, %1062
  %1066 = fmul fast float %1065, 5.000000e-01
  %1067 = call float @dx.op.unary.f32(i32 6, float %1064)  ; FAbs(value)
  %1068 = fsub fast float 1.000000e+00, %1067
  %1069 = call float @dx.op.unary.f32(i32 6, float %1066)  ; FAbs(value)
  %1070 = fsub fast float %1068, %1069
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1066, float %1070, float %1064, float %1066, float %1070)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = call float @dx.op.unary.f32(i32 25, float %1071)  ; Rsqrt(value)
  %1073 = fmul fast float %1064, %1072
  %1074 = fmul fast float %1066, %1072
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 67108864
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1095, label %1079

; <label>:1079                                    ; preds = %1027
  %1080 = add i32 %62, 280
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 65535
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %1086, 65535
  %1088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1087)  ; LegacyF16ToF32(value)
  %1089 = lshr i32 %1082, 16
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = fsub fast float %1052, %1090
  %1092 = fmul fast float %1091, %1084
  %1093 = fadd fast float %1092, %1088
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  br label %1095

; <label>:1095                                    ; preds = %1079, %1027
  %1096 = phi float [ %1094, %1079 ], [ %1052, %1027 ]
  %1097 = call float @dx.op.dot2.f32(i32 54, float %1073, float %1074, float %518, float %519)  ; Dot2(ax,ay,bx,by)
  %1098 = call float @dx.op.dot2.f32(i32 54, float %1073, float %1074, float %520, float %521)  ; Dot2(ax,ay,bx,by)
  br label %1099

; <label>:1099                                    ; preds = %1095, %1005
  %1100 = phi float [ %1096, %1095 ], [ 0x3FD6666660000000, %1005 ]
  %1101 = phi float [ %1097, %1095 ], [ 0.000000e+00, %1005 ]
  %1102 = phi float [ %1098, %1095 ], [ 0.000000e+00, %1005 ]
  %1103 = phi float [ %1039, %1095 ], [ 1.000000e+00, %1005 ]
  %1104 = add i32 %62, 160
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = lshr i32 %1106, 22
  %1108 = shl nuw nsw i32 %1107, 5
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 64
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1147, label %1114

; <label>:1114                                    ; preds = %1099
  %1115 = add i32 %62, 440
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 131072
  %1123 = icmp eq i32 %1122, 0
  %1124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = fmul fast float %1125, %281
  %1129 = fmul fast float %1126, %284
  %1130 = fmul fast float %1127, %287
  br i1 %1123, label %1137, label %1131

; <label>:1131                                    ; preds = %1114
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = fmul fast float %1133, %1128
  %1135 = fmul fast float %1133, %1129
  %1136 = fmul fast float %1133, %1130
  br label %1137

; <label>:1137                                    ; preds = %1131, %1114
  %1138 = phi float [ %1134, %1131 ], [ %1128, %1114 ]
  %1139 = phi float [ %1135, %1131 ], [ %1129, %1114 ]
  %1140 = phi float [ %1136, %1131 ], [ %1130, %1114 ]
  %1141 = fmul fast float %1138, %1109
  %1142 = select i1 %264, float %1141, float %1138
  %1143 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1139, float %1140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1144 = select i1 %264, float 0.000000e+00, float %1138
  %1145 = select i1 %264, float %1143, float %1139
  %1146 = select i1 %264, float 0.000000e+00, float %1140
  br label %1147

; <label>:1147                                    ; preds = %1137, %1099
  %1148 = phi float [ %1144, %1137 ], [ 0.000000e+00, %1099 ]
  %1149 = phi float [ %1145, %1137 ], [ 0.000000e+00, %1099 ]
  %1150 = phi float [ %1146, %1137 ], [ 0.000000e+00, %1099 ]
  %1151 = add i32 %62, 96
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = lshr i32 %1153, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1021, float %1022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1160 = fmul fast float %1158, %1159
  %1161 = fadd fast float %1160, %1155
  %1162 = fmul fast float %1161, 0x3F70101020000000
  %1163 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  br label %1164

; <label>:1164                                    ; preds = %1147, %500
  %1165 = phi float [ 0.000000e+00, %500 ], [ %1101, %1147 ]
  %1166 = phi float [ 0.000000e+00, %500 ], [ %1102, %1147 ]
  %1167 = phi float [ 0.000000e+00, %500 ], [ %1020, %1147 ]
  %1168 = phi float [ 0.000000e+00, %500 ], [ %1021, %1147 ]
  %1169 = phi float [ 0.000000e+00, %500 ], [ %1022, %1147 ]
  %1170 = phi float [ 0.000000e+00, %500 ], [ %1148, %1147 ]
  %1171 = phi float [ 0.000000e+00, %500 ], [ %1149, %1147 ]
  %1172 = phi float [ 0.000000e+00, %500 ], [ %1150, %1147 ]
  %1173 = phi float [ 0.000000e+00, %500 ], [ %1006, %1147 ]
  %1174 = phi float [ 0.000000e+00, %500 ], [ %802, %1147 ]
  %1175 = phi float [ 0.000000e+00, %500 ], [ %1100, %1147 ]
  %1176 = phi float [ 0.000000e+00, %500 ], [ %1103, %1147 ]
  %1177 = phi float [ 0.000000e+00, %500 ], [ %1163, %1147 ]
  br i1 %448, label %2019, label %1178

; <label>:1178                                    ; preds = %1164
  %1179 = icmp ult i32 %506, 2
  %1180 = add i32 %62, 40
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %62, 44
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = or i32 %1185, %1182
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %2019, label %1188

; <label>:1188                                    ; preds = %1178
  %1189 = and i32 %1182, 262144
  %1190 = icmp ne i32 %1189, 0
  %1191 = select i1 %1190, float %65, float 1.000000e+00
  %1192 = select i1 %1190, float %66, float 0.000000e+00
  %1193 = select i1 %1190, float %67, float 0.000000e+00
  %1194 = select i1 %1190, float %68, float 1.000000e+00
  %1195 = select i1 %1190, float %69, float %90
  %1196 = select i1 %1190, float %70, float %91
  %1197 = add i32 %62, 300
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = lshr i32 %1199, 16
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = fmul fast float %1201, 0x3F50624DE0000000
  %1203 = add i32 %62, 104
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = lshr i32 %1205, 16
  %1207 = and i32 %1206, 255
  %1208 = lshr i32 %1205, 24
  %1209 = add i32 %62, 308
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 65535
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = lshr i32 %1211, 16
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = add i32 %62, 48
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = lshr i32 %1218, 22
  %1220 = shl nuw nsw i32 %1219, 5
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = shl i32 %1218, 4
  %1223 = and i32 %1222, 32752
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1218, 7
  %1226 = and i32 %1225, 32752
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = fmul fast float %1229, 1.000000e+03
  %1231 = fmul fast float %358, %1230
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = fadd fast float %1232, %348
  %1234 = fmul fast float %359, %1230
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = fadd fast float %1235, %350
  %1237 = fmul fast float %1202, %1230
  %1238 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1239 = fmul fast float %1238, 0x401921FB60000000
  %1240 = fadd fast float %1239, %1221
  %1241 = call float @dx.op.unary.f32(i32 13, float %1240)  ; Sin(value)
  %1242 = call float @dx.op.unary.f32(i32 12, float %1240)  ; Cos(value)
  %1243 = fsub fast float -0.000000e+00, %1241
  %1244 = fadd fast float %1195, -5.000000e-01
  %1245 = fadd fast float %1196, -5.000000e-01
  %1246 = fmul fast float %1213, %1244
  %1247 = fmul fast float %1215, %1245
  %1248 = fadd fast float %1246, 5.000000e-01
  %1249 = fadd fast float %1247, 5.000000e-01
  %1250 = fmul fast float %1224, %1248
  %1251 = fmul fast float %1227, %1249
  %1252 = fmul fast float %1242, %1250
  %1253 = call float @dx.op.tertiary.f32(i32 46, float %1243, float %1251, float %1252)  ; FMad(a,b,c)
  %1254 = fmul fast float %1241, %1250
  %1255 = call float @dx.op.tertiary.f32(i32 46, float %1242, float %1251, float %1254)  ; FMad(a,b,c)
  %1256 = fadd fast float %1233, %1253
  %1257 = fadd fast float %1236, %1255
  %1258 = icmp ugt i32 %1207, 1
  %1259 = icmp ugt i32 %1205, 33554431
  %1260 = or i1 %1259, %1258
  br i1 %1260, label %1261, label %1286

; <label>:1261                                    ; preds = %1188
  %1262 = add i32 %62, 244
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = lshr i32 %1264, 16
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = fmul fast float %1229, %1266
  %1268 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1269 = mul nuw nsw i32 %1207, %1208
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1268, %1270
  %1272 = call float @dx.op.unary.f32(i32 27, float %1271)  ; Round_ni(value)
  %1273 = fptoui float %1272 to i32
  %1274 = urem i32 %1273, %1207
  %1275 = udiv i32 %1273, %1208
  %1276 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1277 = call float @dx.op.unary.f32(i32 22, float %1257)  ; Frc(value)
  %1278 = uitofp i32 %1274 to float
  %1279 = uitofp i32 %1275 to float
  %1280 = fadd fast float %1276, %1278
  %1281 = fadd fast float %1277, %1279
  %1282 = uitofp i32 %1207 to float
  %1283 = uitofp i32 %1208 to float
  %1284 = fdiv fast float %1280, %1282
  %1285 = fdiv fast float %1281, %1283
  br label %1286

; <label>:1286                                    ; preds = %1261, %1188
  %1287 = phi float [ %1284, %1261 ], [ %1256, %1188 ]
  %1288 = phi float [ %1285, %1261 ], [ %1257, %1188 ]
  %1289 = and i32 %1182, 16777216
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1400, label %1291

; <label>:1291                                    ; preds = %1286
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1296 = fadd fast float %1293, %170
  %1297 = fadd fast float %1294, %171
  %1298 = fadd fast float %1295, %172
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1302 = icmp eq i32 %63, 65535
  br i1 %1302, label %1397, label %1303

; <label>:1303                                    ; preds = %1291
  %1304 = lshr i32 %63, 1
  %1305 = shl i32 %1304, 2
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %63, 1
  %1309 = icmp ne i32 %1308, 0
  %1310 = lshr i32 %1307, 16
  %1311 = and i32 %1307, 65535
  %1312 = select i1 %1309, i32 %1310, i32 %1311
  %1313 = icmp eq i32 %1312, 65535
  br i1 %1313, label %1393, label %1314

; <label>:1314                                    ; preds = %1303
  %1315 = mul nuw nsw i32 %1312, 40
  %1316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  %1318 = extractvalue %dx.types.ResRet.f32 %1316, 1
  %1319 = extractvalue %dx.types.ResRet.f32 %1316, 2
  %1320 = add nuw nsw i32 %1315, 12
  %1321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = add nuw nsw i32 %1315, 24
  %1326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.f32 %1326, 0
  %1328 = extractvalue %dx.types.ResRet.f32 %1326, 1
  %1329 = extractvalue %dx.types.ResRet.f32 %1326, 2
  %1330 = add nuw nsw i32 %1315, 36
  %1331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = fsub fast float %1296, %1317
  %1334 = fsub fast float %1297, %1318
  %1335 = fsub fast float %1298, %1319
  %1336 = fmul fast float %1332, %1333
  %1337 = fmul fast float %1332, %1334
  %1338 = fmul fast float %1332, %1335
  %1339 = call float @dx.op.unary.f32(i32 27, float %1336)  ; Round_ni(value)
  %1340 = call float @dx.op.unary.f32(i32 27, float %1337)  ; Round_ni(value)
  %1341 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1342 = fadd fast float %1339, 5.000000e-01
  %1343 = fadd fast float %1340, 5.000000e-01
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fmul fast float %1342, %1322
  %1346 = fmul fast float %1343, %1323
  %1347 = fmul fast float %1344, %1324
  %1348 = shl i32 %63, 2
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %1350, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call float @dx.op.unary.f32(i32 22, float %1345)  ; Frc(value)
  %1354 = call float @dx.op.unary.f32(i32 22, float %1346)  ; Frc(value)
  %1355 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1352, %dx.types.Handle %55, float %1353, float %1354, float %1355, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = fmul fast float %1357, 1.023000e+03
  %1361 = fmul fast float %1358, 1.023000e+03
  %1362 = fmul fast float %1359, 1.023000e+03
  %1363 = fadd fast float %1360, 5.000000e-01
  %1364 = fadd fast float %1361, 5.000000e-01
  %1365 = fadd fast float %1362, 5.000000e-01
  %1366 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1367 = call float @dx.op.unary.f32(i32 27, float %1364)  ; Round_ni(value)
  %1368 = call float @dx.op.unary.f32(i32 27, float %1365)  ; Round_ni(value)
  %1369 = fsub fast float %1336, %1339
  %1370 = fsub fast float %1337, %1340
  %1371 = fsub fast float %1338, %1341
  %1372 = fmul fast float %1369, 7.500000e-01
  %1373 = fmul fast float %1370, 7.500000e-01
  %1374 = fmul fast float %1371, 7.500000e-01
  %1375 = fadd fast float %1339, 1.250000e-01
  %1376 = fadd fast float %1375, %1372
  %1377 = fadd fast float %1376, %1366
  %1378 = fadd fast float %1340, 1.250000e-01
  %1379 = fadd fast float %1378, %1373
  %1380 = fadd fast float %1379, %1367
  %1381 = fadd fast float %1341, 1.250000e-01
  %1382 = fadd fast float %1381, %1374
  %1383 = fadd fast float %1382, %1368
  %1384 = fmul fast float %1377, %1327
  %1385 = fmul fast float %1380, %1328
  %1386 = fmul fast float %1383, %1329
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = add i32 %1388, 0
  %1390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1390, %dx.types.Handle %53, float %1384, float %1385, float %1386, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  br label %1393

; <label>:1393                                    ; preds = %1314, %1303
  %1394 = phi float [ %1392, %1314 ], [ -1.000000e+00, %1303 ]
  %1395 = fadd fast float %1394, %1301
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  br label %1397

; <label>:1397                                    ; preds = %1393, %1291
  %1398 = phi float [ %1396, %1393 ], [ %1301, %1291 ]
  %1399 = fmul fast float %1398, %503
  br label %1400

; <label>:1400                                    ; preds = %1397, %1286
  %1401 = phi float [ %1399, %1397 ], [ %503, %1286 ]
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 256
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1452, label %1406

; <label>:1406                                    ; preds = %1400
  %1407 = add i32 %62, 476
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = add i32 %1409, 0
  %1411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1411, %dx.types.Handle %108, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = add i32 %62, 116
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = shl i32 %1416, 4
  %1418 = and i32 %1417, 32752
  %1419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1418)  ; LegacyF16ToF32(value)
  %1420 = lshr i32 %1416, 7
  %1421 = and i32 %1420, 32752
  %1422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1421)  ; LegacyF16ToF32(value)
  %1423 = fsub fast float 1.000000e+00, %1401
  %1424 = call float @dx.op.binary.f32(i32 35, float %1423, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1425 = bitcast float %1401 to i32
  %1426 = sitofp i32 %1425 to float
  %1427 = fadd fast float %1426, 0xC1CFBF8940000000
  %1428 = fmul fast float %1422, %1427
  %1429 = fadd fast float %1428, 0x41CFBF8940000000
  %1430 = fptosi float %1429 to i32
  %1431 = bitcast i32 %1430 to float
  %1432 = bitcast float %1424 to i32
  %1433 = sitofp i32 %1432 to float
  %1434 = fadd fast float %1433, 0xC1CFBF8940000000
  %1435 = fmul fast float %1434, %1422
  %1436 = fadd fast float %1435, 0x41CFBF8940000000
  %1437 = fptosi float %1436 to i32
  %1438 = bitcast i32 %1437 to float
  %1439 = fmul fast float %1431, %1419
  %1440 = fmul fast float %1438, %1419
  %1441 = fsub fast float %1424, %1439
  %1442 = fadd fast float %1440, %1424
  %1443 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1444 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1445 = fsub fast float %1413, %1443
  %1446 = fsub fast float %1444, %1443
  %1447 = bitcast float %1446 to i32
  %1448 = sub nsw i32 2129859010, %1447
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1449, %1445
  %1451 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  br label %1452

; <label>:1452                                    ; preds = %1406, %1400
  %1453 = phi float [ %1451, %1406 ], [ %1401, %1400 ]
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 128
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1474, label %1458

; <label>:1458                                    ; preds = %1452
  %1459 = add i32 %62, 460
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = add i32 %1461, 0
  %1463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1463, %dx.types.Handle %108, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = and i32 %1467, 524288
  %1469 = icmp ne i32 %1468, 0
  %1470 = fcmp fast ogt float %1465, 0x3FE0101020000000
  %1471 = select i1 %1470, float 1.000000e+00, float 0.000000e+00
  %1472 = select i1 %1469, float %1471, float %1465
  %1473 = fmul fast float %1472, %1453
  br label %1474

; <label>:1474                                    ; preds = %1458, %1452
  %1475 = phi float [ %1473, %1458 ], [ %1453, %1452 ]
  %1476 = fcmp fast ult float %1475, 0x3F70101020000000
  br i1 %1476, label %2019, label %1477

; <label>:1477                                    ; preds = %1474
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 16
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1680, label %1482

; <label>:1482                                    ; preds = %1477
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %62, 412
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %107, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1495 = and i32 %1484, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = lshr i32 %1484, 8
  %1498 = and i32 %1497, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = fmul fast float %1494, %1496
  %1501 = fadd fast float %1500, %1499
  %1502 = fmul fast float %1501, 0x3F70101000000000
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 512
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1515, label %1507

; <label>:1507                                    ; preds = %1482
  %1508 = add i32 %62, 492
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = add i32 %1510, 0
  %1512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1512, %dx.types.Handle %108, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  br label %1515

; <label>:1515                                    ; preds = %1507, %1482
  %1516 = phi float [ %1514, %1507 ], [ 1.000000e+00, %1482 ]
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 33554432
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1627, label %1521

; <label>:1521                                    ; preds = %1515
  %1522 = add i32 %62, 240
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 65535
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = lshr i32 %1524, 16
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = add i32 %62, 244
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 65535
  %1533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1532)  ; LegacyF16ToF32(value)
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = lshr i32 %1535, 24
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = and i32 %1535, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = lshr i32 %1535, 8
  %1543 = and i32 %1542, 255
  %1544 = uitofp i32 %1543 to float
  %1545 = fmul fast float %1544, 0x3F70101020000000
  %1546 = lshr i32 %1535, 16
  %1547 = and i32 %1546, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101020000000
  %1550 = add i32 %62, 236
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = lshr i32 %1552, 24
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = and i32 %1552, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101020000000
  %1559 = lshr i32 %1552, 8
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = fmul fast float %1561, 0x3F70101020000000
  %1563 = lshr i32 %1552, 16
  %1564 = and i32 %1563, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = bitcast float %1491 to i32
  %1568 = ashr i32 %1567, 1
  %1569 = sub nsw i32 1597463174, %1568
  %1570 = bitcast i32 %1569 to float
  %1571 = fmul fast float %1491, 5.000000e-01
  %1572 = fmul fast float %1570, %1570
  %1573 = fmul fast float %1572, %1571
  %1574 = fsub fast float 1.500000e+00, %1573
  %1575 = fmul fast float %1570, %1491
  %1576 = fmul fast float %1575, %1574
  %1577 = bitcast float %1492 to i32
  %1578 = ashr i32 %1577, 1
  %1579 = sub nsw i32 1597463174, %1578
  %1580 = bitcast i32 %1579 to float
  %1581 = fmul fast float %1492, 5.000000e-01
  %1582 = fmul fast float %1580, %1580
  %1583 = fmul fast float %1582, %1581
  %1584 = fsub fast float 1.500000e+00, %1583
  %1585 = fmul fast float %1580, %1492
  %1586 = fmul fast float %1585, %1584
  %1587 = bitcast float %1493 to i32
  %1588 = ashr i32 %1587, 1
  %1589 = sub nsw i32 1597463174, %1588
  %1590 = bitcast i32 %1589 to float
  %1591 = fmul fast float %1493, 5.000000e-01
  %1592 = fmul fast float %1590, %1590
  %1593 = fmul fast float %1592, %1591
  %1594 = fsub fast float 1.500000e+00, %1593
  %1595 = fmul fast float %1590, %1493
  %1596 = fmul fast float %1595, %1594
  %1597 = fsub fast float %1576, %1558
  %1598 = fsub fast float %1586, %1562
  %1599 = fsub fast float %1596, %1566
  %1600 = fmul fast float %1597, %1526
  %1601 = fmul fast float %1598, %1528
  %1602 = fmul fast float %1599, %1533
  %1603 = fadd fast float %1600, %1541
  %1604 = fadd fast float %1601, %1545
  %1605 = fadd fast float %1602, %1549
  %1606 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  %1607 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1609 = fmul fast float %1606, %1606
  %1610 = fmul fast float %1607, %1607
  %1611 = fmul fast float %1608, %1608
  %1612 = fsub fast float %1609, %1491
  %1613 = fsub fast float %1610, %1492
  %1614 = fsub fast float %1611, %1493
  %1615 = fmul fast float %1612, %1516
  %1616 = fmul fast float %1613, %1516
  %1617 = fmul fast float %1614, %1516
  %1618 = fadd fast float %1615, %1491
  %1619 = fadd fast float %1616, %1492
  %1620 = fadd fast float %1617, %1493
  %1621 = fadd fast float %1538, %1502
  %1622 = fsub fast float %1621, %1555
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = fsub fast float %1623, %1502
  %1625 = fmul fast float %1624, %1516
  %1626 = fadd fast float %1625, %1502
  br label %1680

; <label>:1627                                    ; preds = %1515
  %1628 = and i32 %1518, 134217728
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1664, label %1630

; <label>:1630                                    ; preds = %1627
  %1631 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1632 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %1634 = fadd fast float %1631, -5.000000e-01
  %1635 = fadd fast float %1632, -5.000000e-01
  %1636 = fadd fast float %1633, -5.000000e-01
  %1637 = fmul fast float %1634, %1516
  %1638 = fmul fast float %1635, %1516
  %1639 = fmul fast float %1636, %1516
  %1640 = fadd fast float %1637, 5.000000e-01
  %1641 = fadd fast float %1638, 5.000000e-01
  %1642 = fadd fast float %1639, 5.000000e-01
  %1643 = call float @dx.op.unary.f32(i32 24, float %1491)  ; Sqrt(value)
  %1644 = call float @dx.op.unary.f32(i32 24, float %1492)  ; Sqrt(value)
  %1645 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1646 = fmul fast float %1640, 2.000000e+00
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1647, %1643
  %1649 = fadd fast float %1648, %1646
  %1650 = fmul fast float %1649, %1643
  %1651 = fmul fast float %1641, 2.000000e+00
  %1652 = fsub fast float 1.000000e+00, %1651
  %1653 = fmul fast float %1652, %1644
  %1654 = fadd fast float %1653, %1651
  %1655 = fmul fast float %1654, %1644
  %1656 = fmul fast float %1642, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1645
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1645
  %1661 = fmul fast float %1650, %1650
  %1662 = fmul fast float %1655, %1655
  %1663 = fmul fast float %1660, %1660
  br label %1680

; <label>:1664                                    ; preds = %1627
  %1665 = fmul fast float %335, %335
  %1666 = fmul fast float %339, %339
  %1667 = fmul fast float %343, %343
  %1668 = fadd fast float %1665, -1.000000e+00
  %1669 = fadd fast float %1666, -1.000000e+00
  %1670 = fadd fast float %1667, -1.000000e+00
  %1671 = fmul fast float %1516, %1668
  %1672 = fmul fast float %1516, %1669
  %1673 = fmul fast float %1516, %1670
  %1674 = fadd fast float %1671, 1.000000e+00
  %1675 = fadd fast float %1672, 1.000000e+00
  %1676 = fadd fast float %1673, 1.000000e+00
  %1677 = fmul fast float %1674, %1491
  %1678 = fmul fast float %1675, %1492
  %1679 = fmul fast float %1676, %1493
  br label %1680

; <label>:1680                                    ; preds = %1664, %1630, %1521, %1477
  %1681 = phi float [ %1626, %1521 ], [ %1502, %1630 ], [ %1502, %1664 ], [ 0x3FA23C0BE0000000, %1477 ]
  %1682 = phi float [ %1618, %1521 ], [ %1661, %1630 ], [ %1677, %1664 ], [ 1.000000e+00, %1477 ]
  %1683 = phi float [ %1619, %1521 ], [ %1662, %1630 ], [ %1678, %1664 ], [ 1.000000e+00, %1477 ]
  %1684 = phi float [ %1620, %1521 ], [ %1663, %1630 ], [ %1679, %1664 ], [ 1.000000e+00, %1477 ]
  %1685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.i32 %1685, 1
  %1687 = and i32 %1686, 1
  %1688 = icmp ne i32 %1687, 0
  %1689 = add i32 %62, 356
  %1690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.i32 %1690, 0
  %1692 = and i32 %1691, 32
  %1693 = icmp ne i32 %1692, 0
  %1694 = and i1 %1688, %1693
  %1695 = select i1 %1694, float 1.000000e+00, float %1682
  %1696 = select i1 %1694, float 0x3FD3333340000000, float %1683
  %1697 = select i1 %1694, float 0x3FD3333340000000, float %1684
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 32
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1774, label %1702

; <label>:1702                                    ; preds = %1680
  %1703 = add i32 %62, 108
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = add i32 %62, 428
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = add i32 %1708, 0
  %1710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1710, %dx.types.Handle %107, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1712 = extractvalue %dx.types.ResRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.ResRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.ResRet.f32 %1711, 2
  %1715 = extractvalue %dx.types.ResRet.f32 %1711, 3
  %1716 = and i32 %1705, 255
  %1717 = uitofp i32 %1716 to float
  %1718 = lshr i32 %1705, 8
  %1719 = and i32 %1718, 255
  %1720 = uitofp i32 %1719 to float
  %1721 = lshr i32 %1705, 16
  %1722 = and i32 %1721, 255
  %1723 = uitofp i32 %1722 to float
  %1724 = fmul fast float %1723, 0x3F70101000000000
  %1725 = fmul fast float %1712, %1717
  %1726 = fadd fast float %1725, %1720
  %1727 = fmul fast float %1726, 0x3F70101000000000
  %1728 = fadd fast float %1713, -5.000000e-01
  %1729 = fadd fast float %1715, -5.000000e-01
  %1730 = fmul fast float %1728, %1724
  %1731 = fmul fast float %1729, %1724
  %1732 = fadd fast float %1730, 5.000000e-01
  %1733 = fadd fast float %1731, 5.000000e-01
  %1734 = fmul fast float %1732, 2.000000e+00
  %1735 = fadd fast float %1734, -1.000000e+00
  %1736 = fmul fast float %1733, 2.000000e+00
  %1737 = fadd fast float %1736, -1.000000e+00
  %1738 = fadd fast float %1735, %1737
  %1739 = fmul fast float %1738, 5.000000e-01
  %1740 = fsub fast float %1735, %1737
  %1741 = fmul fast float %1740, 5.000000e-01
  %1742 = call float @dx.op.unary.f32(i32 6, float %1739)  ; FAbs(value)
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = call float @dx.op.unary.f32(i32 6, float %1741)  ; FAbs(value)
  %1745 = fsub fast float %1743, %1744
  %1746 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1741, float %1745, float %1739, float %1741, float %1745)  ; Dot3(ax,ay,az,bx,by,bz)
  %1747 = call float @dx.op.unary.f32(i32 25, float %1746)  ; Rsqrt(value)
  %1748 = fmul fast float %1739, %1747
  %1749 = fmul fast float %1741, %1747
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = and i32 %1751, 67108864
  %1753 = icmp eq i32 %1752, 0
  br i1 %1753, label %1770, label %1754

; <label>:1754                                    ; preds = %1702
  %1755 = add i32 %62, 296
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 65535
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 65535
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = lshr i32 %1757, 16
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = fsub fast float %1727, %1765
  %1767 = fmul fast float %1766, %1759
  %1768 = fadd fast float %1767, %1763
  %1769 = call float @dx.op.unary.f32(i32 7, float %1768)  ; Saturate(value)
  br label %1770

; <label>:1770                                    ; preds = %1754, %1702
  %1771 = phi float [ %1769, %1754 ], [ %1727, %1702 ]
  %1772 = call float @dx.op.dot2.f32(i32 54, float %1748, float %1749, float %1191, float %1192)  ; Dot2(ax,ay,bx,by)
  %1773 = call float @dx.op.dot2.f32(i32 54, float %1748, float %1749, float %1193, float %1194)  ; Dot2(ax,ay,bx,by)
  br label %1774

; <label>:1774                                    ; preds = %1770, %1680
  %1775 = phi float [ %1771, %1770 ], [ 0x3FD6666660000000, %1680 ]
  %1776 = phi float [ %1772, %1770 ], [ 0.000000e+00, %1680 ]
  %1777 = phi float [ %1773, %1770 ], [ 0.000000e+00, %1680 ]
  %1778 = phi float [ %1714, %1770 ], [ 1.000000e+00, %1680 ]
  %1779 = add i32 %62, 176
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 22
  %1783 = shl nuw nsw i32 %1782, 5
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 64
  %1788 = icmp eq i32 %1787, 0
  br i1 %1788, label %1822, label %1789

; <label>:1789                                    ; preds = %1774
  %1790 = add i32 %62, 444
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %1796, 131072
  %1798 = icmp eq i32 %1797, 0
  %1799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1794, %dx.types.Handle %107, float %1287, float %1288, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.ResRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.ResRet.f32 %1799, 2
  %1803 = fmul fast float %1800, %323
  %1804 = fmul fast float %1801, %326
  %1805 = fmul fast float %1802, %329
  br i1 %1798, label %1812, label %1806

; <label>:1806                                    ; preds = %1789
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 0
  %1809 = fmul fast float %1808, %1803
  %1810 = fmul fast float %1808, %1804
  %1811 = fmul fast float %1808, %1805
  br label %1812

; <label>:1812                                    ; preds = %1806, %1789
  %1813 = phi float [ %1809, %1806 ], [ %1803, %1789 ]
  %1814 = phi float [ %1810, %1806 ], [ %1804, %1789 ]
  %1815 = phi float [ %1811, %1806 ], [ %1805, %1789 ]
  %1816 = fmul fast float %1813, %1784
  %1817 = select i1 %264, float %1816, float %1813
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1817, float %1814, float %1815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = select i1 %264, float 0.000000e+00, float %1813
  %1820 = select i1 %264, float %1818, float %1814
  %1821 = select i1 %264, float 0.000000e+00, float %1815
  br label %1822

; <label>:1822                                    ; preds = %1812, %1774
  %1823 = phi float [ %1819, %1812 ], [ 0.000000e+00, %1774 ]
  %1824 = phi float [ %1820, %1812 ], [ 0.000000e+00, %1774 ]
  %1825 = phi float [ %1821, %1812 ], [ 0.000000e+00, %1774 ]
  %1826 = add i32 %62, 112
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 255
  %1830 = uitofp i32 %1829 to float
  %1831 = lshr i32 %1828, 8
  %1832 = and i32 %1831, 255
  %1833 = uitofp i32 %1832 to float
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1695, float %1696, float %1697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = fmul fast float %1833, %1834
  %1836 = fadd fast float %1835, %1830
  %1837 = fmul fast float %1836, 0x3F70101020000000
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  br i1 %1179, label %1839, label %1847

; <label>:1839                                    ; preds = %1822
  %1840 = fsub fast float 1.000000e+00, %1475
  %1841 = fmul fast float %1840, %1167
  %1842 = fmul fast float %1840, %1168
  %1843 = fmul fast float %1840, %1169
  %1844 = fmul fast float %1840, %1170
  %1845 = fmul fast float %1840, %1171
  %1846 = fmul fast float %1840, %1172
  br label %1847

; <label>:1847                                    ; preds = %1839, %1822
  %1848 = phi float [ %1841, %1839 ], [ %1167, %1822 ]
  %1849 = phi float [ %1842, %1839 ], [ %1168, %1822 ]
  %1850 = phi float [ %1843, %1839 ], [ %1169, %1822 ]
  %1851 = phi float [ %1844, %1839 ], [ %1170, %1822 ]
  %1852 = phi float [ %1845, %1839 ], [ %1171, %1822 ]
  %1853 = phi float [ %1846, %1839 ], [ %1172, %1822 ]
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 3
  %1857 = icmp eq i32 %1856, 3
  br i1 %1857, label %1936, label %1858

; <label>:1858                                    ; preds = %1847
  %1859 = and i32 %1855, 16
  %1860 = icmp ne i32 %1859, 0
  %1861 = select i1 %1860, float %1475, float 0.000000e+00
  %1862 = icmp eq i32 %1856, 0
  br i1 %1862, label %1863, label %1891

; <label>:1863                                    ; preds = %1858
  %1864 = and i32 %1855, 64
  %1865 = icmp ne i32 %1864, 0
  %1866 = select i1 %1865, float %1475, float 0.000000e+00
  %1867 = fsub fast float %1695, %1848
  %1868 = fsub fast float %1696, %1849
  %1869 = fsub fast float %1697, %1850
  %1870 = fmul fast float %1861, %1867
  %1871 = fmul fast float %1861, %1868
  %1872 = fmul fast float %1861, %1869
  %1873 = fadd fast float %1870, %1848
  %1874 = fadd fast float %1871, %1849
  %1875 = fadd fast float %1872, %1850
  %1876 = fsub fast float %1681, %1173
  %1877 = fmul fast float %1861, %1876
  %1878 = fadd fast float %1877, %1173
  %1879 = fsub fast float %1823, %1851
  %1880 = fsub fast float %1824, %1852
  %1881 = fsub fast float %1825, %1853
  %1882 = fmul fast float %1866, %1879
  %1883 = fmul fast float %1866, %1880
  %1884 = fmul fast float %1866, %1881
  %1885 = fadd fast float %1882, %1851
  %1886 = fadd fast float %1883, %1852
  %1887 = fadd fast float %1884, %1853
  %1888 = fsub fast float %1838, %1177
  %1889 = fmul fast float %1861, %1888
  %1890 = fadd fast float %1889, %1177
  br label %1936

; <label>:1891                                    ; preds = %1858
  %1892 = icmp eq i32 %1856, 1
  br i1 %1892, label %1893, label %1906

; <label>:1893                                    ; preds = %1891
  %1894 = fadd fast float %1695, -1.000000e+00
  %1895 = fadd fast float %1696, -1.000000e+00
  %1896 = fadd fast float %1697, -1.000000e+00
  %1897 = fmul fast float %1861, %1894
  %1898 = fmul fast float %1861, %1895
  %1899 = fmul fast float %1861, %1896
  %1900 = fadd fast float %1897, 1.000000e+00
  %1901 = fadd fast float %1898, 1.000000e+00
  %1902 = fadd fast float %1899, 1.000000e+00
  %1903 = fmul fast float %1900, %1848
  %1904 = fmul fast float %1901, %1849
  %1905 = fmul fast float %1902, %1850
  br label %1936

; <label>:1906                                    ; preds = %1891
  %1907 = icmp eq i32 %1856, 2
  br i1 %1907, label %1908, label %1936

; <label>:1908                                    ; preds = %1906
  %1909 = call float @dx.op.unary.f32(i32 24, float %1695)  ; Sqrt(value)
  %1910 = call float @dx.op.unary.f32(i32 24, float %1696)  ; Sqrt(value)
  %1911 = call float @dx.op.unary.f32(i32 24, float %1697)  ; Sqrt(value)
  %1912 = fadd fast float %1909, -5.000000e-01
  %1913 = fadd fast float %1910, -5.000000e-01
  %1914 = fadd fast float %1911, -5.000000e-01
  %1915 = fmul fast float %1912, %1861
  %1916 = fmul fast float %1913, %1861
  %1917 = fmul fast float %1914, %1861
  %1918 = fadd fast float %1915, 5.000000e-01
  %1919 = fadd fast float %1916, 5.000000e-01
  %1920 = fadd fast float %1917, 5.000000e-01
  %1921 = fmul fast float %1918, 2.000000e+00
  %1922 = fsub fast float 1.000000e+00, %1921
  %1923 = fmul fast float %1922, %1848
  %1924 = fadd fast float %1923, %1921
  %1925 = fmul fast float %1924, %1848
  %1926 = fmul fast float %1919, 2.000000e+00
  %1927 = fsub fast float 1.000000e+00, %1926
  %1928 = fmul fast float %1927, %1849
  %1929 = fadd fast float %1928, %1926
  %1930 = fmul fast float %1929, %1849
  %1931 = fmul fast float %1920, 2.000000e+00
  %1932 = fsub fast float 1.000000e+00, %1931
  %1933 = fmul fast float %1932, %1850
  %1934 = fadd fast float %1933, %1931
  %1935 = fmul fast float %1934, %1850
  br label %1936

; <label>:1936                                    ; preds = %1908, %1906, %1893, %1863, %1847
  %1937 = phi float [ %1848, %1847 ], [ %1925, %1908 ], [ %1848, %1906 ], [ %1903, %1893 ], [ %1873, %1863 ]
  %1938 = phi float [ %1849, %1847 ], [ %1930, %1908 ], [ %1849, %1906 ], [ %1904, %1893 ], [ %1874, %1863 ]
  %1939 = phi float [ %1850, %1847 ], [ %1935, %1908 ], [ %1850, %1906 ], [ %1905, %1893 ], [ %1875, %1863 ]
  %1940 = phi float [ %1851, %1847 ], [ %1851, %1908 ], [ %1851, %1906 ], [ %1851, %1893 ], [ %1885, %1863 ]
  %1941 = phi float [ %1852, %1847 ], [ %1852, %1908 ], [ %1852, %1906 ], [ %1852, %1893 ], [ %1886, %1863 ]
  %1942 = phi float [ %1853, %1847 ], [ %1853, %1908 ], [ %1853, %1906 ], [ %1853, %1893 ], [ %1887, %1863 ]
  %1943 = phi float [ %1173, %1847 ], [ %1173, %1908 ], [ %1173, %1906 ], [ %1173, %1893 ], [ %1878, %1863 ]
  %1944 = phi float [ %1177, %1847 ], [ %1177, %1908 ], [ %1177, %1906 ], [ %1177, %1893 ], [ %1890, %1863 ]
  %1945 = and i32 %1855, 12
  %1946 = icmp eq i32 %1945, 12
  br i1 %1946, label %2019, label %1947

; <label>:1947                                    ; preds = %1936
  %1948 = and i32 %1855, 2097184
  %1949 = icmp eq i32 %1948, 2097184
  %1950 = select i1 %1949, float %1475, float 0.000000e+00
  %1951 = and i32 %1855, 4194336
  %1952 = icmp eq i32 %1951, 4194336
  %1953 = select i1 %1952, float %1475, float 0.000000e+00
  %1954 = and i32 %1855, 8388640
  %1955 = icmp eq i32 %1954, 8388640
  %1956 = select i1 %1955, float %1475, float 0.000000e+00
  %1957 = icmp eq i32 %1945, 0
  br i1 %1957, label %1958, label %1971

; <label>:1958                                    ; preds = %1947
  %1959 = fsub fast float %1776, %1165
  %1960 = fsub fast float %1777, %1166
  %1961 = fmul fast float %1950, %1959
  %1962 = fmul fast float %1950, %1960
  %1963 = fadd fast float %1961, %1165
  %1964 = fadd fast float %1962, %1166
  %1965 = fsub fast float %1778, %1176
  %1966 = fmul fast float %1953, %1965
  %1967 = fadd fast float %1966, %1176
  %1968 = fsub fast float %1775, %1175
  %1969 = fmul fast float %1956, %1968
  %1970 = fadd fast float %1969, %1175
  br label %2019

; <label>:1971                                    ; preds = %1947
  %1972 = icmp eq i32 %1945, 4
  br i1 %1972, label %1973, label %2005

; <label>:1973                                    ; preds = %1971
  %1974 = fmul fast float %1950, %1776
  %1975 = fmul fast float %1950, %1777
  %1976 = fadd fast float %1974, %1165
  %1977 = fadd fast float %1975, %1166
  %1978 = call float @dx.op.binary.f32(i32 36, float %1176, float %1778)  ; FMin(a,b)
  %1979 = fsub fast float %1978, %1176
  %1980 = fmul fast float %1979, %1953
  %1981 = fadd fast float %1980, %1176
  %1982 = fadd fast float %1775, %1175
  %1983 = fmul fast float %1982, 0x3FF337FAE0000000
  %1984 = fmul fast float %1175, %1175
  %1985 = fmul fast float %1775, %1775
  %1986 = fadd fast float %1985, %1984
  %1987 = fmul fast float %1986, 0x3FE5152B00000000
  %1988 = fmul fast float %1175, 0xBFCC1F85E0000000
  %1989 = fmul fast float %1988, %1775
  %1990 = fadd fast float %1989, 0xBFE1363700000000
  %1991 = fadd fast float %1990, %1983
  %1992 = fsub fast float %1991, %1987
  %1993 = fmul fast float %1982, 0x3FBA6F0D00000000
  %1994 = fmul fast float %1986, 0x3FD0432880000000
  %1995 = fmul fast float %1175, 0xBFEF110800000000
  %1996 = fmul fast float %1995, %1775
  %1997 = fadd fast float %1996, 1.000000e+00
  %1998 = fsub fast float %1997, %1993
  %1999 = fadd fast float %1998, %1994
  %2000 = fdiv fast float %1992, %1999
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = fsub fast float %2001, %1175
  %2003 = fmul fast float %2002, %1956
  %2004 = fadd fast float %2003, %1175
  br label %2019

; <label>:2005                                    ; preds = %1971
  %2006 = icmp eq i32 %1945, 8
  br i1 %2006, label %2007, label %2019

; <label>:2007                                    ; preds = %2005
  %2008 = fmul fast float %1950, %1776
  %2009 = fmul fast float %1950, %1777
  %2010 = fadd fast float %2008, %1165
  %2011 = fadd fast float %2009, %1166
  %2012 = call float @dx.op.binary.f32(i32 36, float %1176, float %1778)  ; FMin(a,b)
  %2013 = fsub fast float %2012, %1176
  %2014 = fmul fast float %2013, %1953
  %2015 = fadd fast float %2014, %1176
  %2016 = fsub fast float %1775, %1175
  %2017 = fmul fast float %1956, %2016
  %2018 = fadd fast float %2017, %1175
  br label %2019

; <label>:2019                                    ; preds = %2007, %2005, %1973, %1958, %1936, %1474, %1178, %1164
  %2020 = phi float [ %1165, %1936 ], [ %1165, %1474 ], [ %1165, %1164 ], [ %2010, %2007 ], [ %1165, %2005 ], [ %1976, %1973 ], [ %1963, %1958 ], [ %1165, %1178 ]
  %2021 = phi float [ %1166, %1936 ], [ %1166, %1474 ], [ %1166, %1164 ], [ %2011, %2007 ], [ %1166, %2005 ], [ %1977, %1973 ], [ %1964, %1958 ], [ %1166, %1178 ]
  %2022 = phi float [ %1937, %1936 ], [ %1167, %1474 ], [ %1167, %1164 ], [ %1937, %2007 ], [ %1937, %2005 ], [ %1937, %1973 ], [ %1937, %1958 ], [ %1167, %1178 ]
  %2023 = phi float [ %1938, %1936 ], [ %1168, %1474 ], [ %1168, %1164 ], [ %1938, %2007 ], [ %1938, %2005 ], [ %1938, %1973 ], [ %1938, %1958 ], [ %1168, %1178 ]
  %2024 = phi float [ %1939, %1936 ], [ %1169, %1474 ], [ %1169, %1164 ], [ %1939, %2007 ], [ %1939, %2005 ], [ %1939, %1973 ], [ %1939, %1958 ], [ %1169, %1178 ]
  %2025 = phi float [ %1940, %1936 ], [ %1170, %1474 ], [ %1170, %1164 ], [ %1940, %2007 ], [ %1940, %2005 ], [ %1940, %1973 ], [ %1940, %1958 ], [ %1170, %1178 ]
  %2026 = phi float [ %1941, %1936 ], [ %1171, %1474 ], [ %1171, %1164 ], [ %1941, %2007 ], [ %1941, %2005 ], [ %1941, %1973 ], [ %1941, %1958 ], [ %1171, %1178 ]
  %2027 = phi float [ %1942, %1936 ], [ %1172, %1474 ], [ %1172, %1164 ], [ %1942, %2007 ], [ %1942, %2005 ], [ %1942, %1973 ], [ %1942, %1958 ], [ %1172, %1178 ]
  %2028 = phi float [ %1943, %1936 ], [ %1173, %1474 ], [ %1173, %1164 ], [ %1943, %2007 ], [ %1943, %2005 ], [ %1943, %1973 ], [ %1943, %1958 ], [ %1173, %1178 ]
  %2029 = phi float [ %1175, %1936 ], [ %1175, %1474 ], [ %1175, %1164 ], [ %2018, %2007 ], [ %1175, %2005 ], [ %2004, %1973 ], [ %1970, %1958 ], [ %1175, %1178 ]
  %2030 = phi float [ %1176, %1936 ], [ %1176, %1474 ], [ %1176, %1164 ], [ %2015, %2007 ], [ %1176, %2005 ], [ %1981, %1973 ], [ %1967, %1958 ], [ %1176, %1178 ]
  %2031 = phi float [ %1944, %1936 ], [ %1177, %1474 ], [ %1177, %1164 ], [ %1944, %2007 ], [ %1944, %2005 ], [ %1944, %1973 ], [ %1944, %1958 ], [ %1177, %1178 ]
  br i1 %450, label %2873, label %2032

; <label>:2032                                    ; preds = %2019
  %2033 = icmp ult i32 %506, 3
  %2034 = add i32 %62, 56
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %62, 60
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = or i32 %2039, %2036
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2873, label %2042

; <label>:2042                                    ; preds = %2032
  %2043 = and i32 %2036, 262144
  %2044 = icmp ne i32 %2043, 0
  %2045 = select i1 %2044, float %65, float 1.000000e+00
  %2046 = select i1 %2044, float %66, float 0.000000e+00
  %2047 = select i1 %2044, float %67, float 0.000000e+00
  %2048 = select i1 %2044, float %68, float 1.000000e+00
  %2049 = select i1 %2044, float %69, float %90
  %2050 = select i1 %2044, float %70, float %91
  %2051 = add i32 %62, 316
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = lshr i32 %2053, 16
  %2055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2054)  ; LegacyF16ToF32(value)
  %2056 = fmul fast float %2055, 0x3F50624DE0000000
  %2057 = add i32 %62, 120
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = lshr i32 %2059, 16
  %2061 = and i32 %2060, 255
  %2062 = lshr i32 %2059, 24
  %2063 = add i32 %62, 324
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 65535
  %2067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2066)  ; LegacyF16ToF32(value)
  %2068 = lshr i32 %2065, 16
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = add i32 %62, 64
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = lshr i32 %2072, 22
  %2074 = shl nuw nsw i32 %2073, 5
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = shl i32 %2072, 4
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2072, 7
  %2080 = and i32 %2079, 32752
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2082, 3
  %2084 = fmul fast float %2083, 1.000000e+03
  %2085 = fmul fast float %400, %2084
  %2086 = call float @dx.op.unary.f32(i32 22, float %2085)  ; Frc(value)
  %2087 = fadd fast float %2086, %390
  %2088 = fmul fast float %401, %2084
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fadd fast float %2089, %392
  %2091 = fmul fast float %2056, %2084
  %2092 = call float @dx.op.unary.f32(i32 22, float %2091)  ; Frc(value)
  %2093 = fmul fast float %2092, 0x401921FB60000000
  %2094 = fadd fast float %2093, %2075
  %2095 = call float @dx.op.unary.f32(i32 13, float %2094)  ; Sin(value)
  %2096 = call float @dx.op.unary.f32(i32 12, float %2094)  ; Cos(value)
  %2097 = fsub fast float -0.000000e+00, %2095
  %2098 = fadd fast float %2049, -5.000000e-01
  %2099 = fadd fast float %2050, -5.000000e-01
  %2100 = fmul fast float %2067, %2098
  %2101 = fmul fast float %2069, %2099
  %2102 = fadd fast float %2100, 5.000000e-01
  %2103 = fadd fast float %2101, 5.000000e-01
  %2104 = fmul fast float %2078, %2102
  %2105 = fmul fast float %2081, %2103
  %2106 = fmul fast float %2096, %2104
  %2107 = call float @dx.op.tertiary.f32(i32 46, float %2097, float %2105, float %2106)  ; FMad(a,b,c)
  %2108 = fmul fast float %2095, %2104
  %2109 = call float @dx.op.tertiary.f32(i32 46, float %2096, float %2105, float %2108)  ; FMad(a,b,c)
  %2110 = fadd fast float %2087, %2107
  %2111 = fadd fast float %2090, %2109
  %2112 = icmp ugt i32 %2061, 1
  %2113 = icmp ugt i32 %2059, 33554431
  %2114 = or i1 %2113, %2112
  br i1 %2114, label %2115, label %2140

; <label>:2115                                    ; preds = %2042
  %2116 = add i32 %62, 260
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = lshr i32 %2118, 16
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = fmul fast float %2083, %2120
  %2122 = call float @dx.op.unary.f32(i32 22, float %2121)  ; Frc(value)
  %2123 = mul nuw nsw i32 %2061, %2062
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2122, %2124
  %2126 = call float @dx.op.unary.f32(i32 27, float %2125)  ; Round_ni(value)
  %2127 = fptoui float %2126 to i32
  %2128 = urem i32 %2127, %2061
  %2129 = udiv i32 %2127, %2062
  %2130 = call float @dx.op.unary.f32(i32 22, float %2110)  ; Frc(value)
  %2131 = call float @dx.op.unary.f32(i32 22, float %2111)  ; Frc(value)
  %2132 = uitofp i32 %2128 to float
  %2133 = uitofp i32 %2129 to float
  %2134 = fadd fast float %2130, %2132
  %2135 = fadd fast float %2131, %2133
  %2136 = uitofp i32 %2061 to float
  %2137 = uitofp i32 %2062 to float
  %2138 = fdiv fast float %2134, %2136
  %2139 = fdiv fast float %2135, %2137
  br label %2140

; <label>:2140                                    ; preds = %2115, %2042
  %2141 = phi float [ %2138, %2115 ], [ %2110, %2042 ]
  %2142 = phi float [ %2139, %2115 ], [ %2111, %2042 ]
  %2143 = and i32 %2036, 16777216
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2254, label %2145

; <label>:2145                                    ; preds = %2140
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.CBufRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.CBufRet.f32 %2146, 2
  %2150 = fadd fast float %2147, %170
  %2151 = fadd fast float %2148, %171
  %2152 = fadd fast float %2149, %172
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 0
  %2155 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2156 = icmp eq i32 %63, 65535
  br i1 %2156, label %2251, label %2157

; <label>:2157                                    ; preds = %2145
  %2158 = lshr i32 %63, 1
  %2159 = shl i32 %2158, 2
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = and i32 %63, 1
  %2163 = icmp ne i32 %2162, 0
  %2164 = lshr i32 %2161, 16
  %2165 = and i32 %2161, 65535
  %2166 = select i1 %2163, i32 %2164, i32 %2165
  %2167 = icmp eq i32 %2166, 65535
  br i1 %2167, label %2247, label %2168

; <label>:2168                                    ; preds = %2157
  %2169 = mul nuw nsw i32 %2166, 40
  %2170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = add nuw nsw i32 %2169, 12
  %2175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = add nuw nsw i32 %2169, 24
  %2180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = add nuw nsw i32 %2169, 36
  %2185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = fsub fast float %2150, %2171
  %2188 = fsub fast float %2151, %2172
  %2189 = fsub fast float %2152, %2173
  %2190 = fmul fast float %2186, %2187
  %2191 = fmul fast float %2186, %2188
  %2192 = fmul fast float %2186, %2189
  %2193 = call float @dx.op.unary.f32(i32 27, float %2190)  ; Round_ni(value)
  %2194 = call float @dx.op.unary.f32(i32 27, float %2191)  ; Round_ni(value)
  %2195 = call float @dx.op.unary.f32(i32 27, float %2192)  ; Round_ni(value)
  %2196 = fadd fast float %2193, 5.000000e-01
  %2197 = fadd fast float %2194, 5.000000e-01
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = fmul fast float %2196, %2176
  %2200 = fmul fast float %2197, %2177
  %2201 = fmul fast float %2198, %2178
  %2202 = shl i32 %63, 2
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = add i32 %2204, 0
  %2206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2207 = call float @dx.op.unary.f32(i32 22, float %2199)  ; Frc(value)
  %2208 = call float @dx.op.unary.f32(i32 22, float %2200)  ; Frc(value)
  %2209 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2206, %dx.types.Handle %55, float %2207, float %2208, float %2209, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2211 = extractvalue %dx.types.ResRet.f32 %2210, 0
  %2212 = extractvalue %dx.types.ResRet.f32 %2210, 1
  %2213 = extractvalue %dx.types.ResRet.f32 %2210, 2
  %2214 = fmul fast float %2211, 1.023000e+03
  %2215 = fmul fast float %2212, 1.023000e+03
  %2216 = fmul fast float %2213, 1.023000e+03
  %2217 = fadd fast float %2214, 5.000000e-01
  %2218 = fadd fast float %2215, 5.000000e-01
  %2219 = fadd fast float %2216, 5.000000e-01
  %2220 = call float @dx.op.unary.f32(i32 27, float %2217)  ; Round_ni(value)
  %2221 = call float @dx.op.unary.f32(i32 27, float %2218)  ; Round_ni(value)
  %2222 = call float @dx.op.unary.f32(i32 27, float %2219)  ; Round_ni(value)
  %2223 = fsub fast float %2190, %2193
  %2224 = fsub fast float %2191, %2194
  %2225 = fsub fast float %2192, %2195
  %2226 = fmul fast float %2223, 7.500000e-01
  %2227 = fmul fast float %2224, 7.500000e-01
  %2228 = fmul fast float %2225, 7.500000e-01
  %2229 = fadd fast float %2193, 1.250000e-01
  %2230 = fadd fast float %2229, %2226
  %2231 = fadd fast float %2230, %2220
  %2232 = fadd fast float %2194, 1.250000e-01
  %2233 = fadd fast float %2232, %2227
  %2234 = fadd fast float %2233, %2221
  %2235 = fadd fast float %2195, 1.250000e-01
  %2236 = fadd fast float %2235, %2228
  %2237 = fadd fast float %2236, %2222
  %2238 = fmul fast float %2231, %2181
  %2239 = fmul fast float %2234, %2182
  %2240 = fmul fast float %2237, %2183
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2244, %dx.types.Handle %53, float %2238, float %2239, float %2240, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  br label %2247

; <label>:2247                                    ; preds = %2168, %2157
  %2248 = phi float [ %2246, %2168 ], [ -1.000000e+00, %2157 ]
  %2249 = fadd fast float %2248, %2155
  %2250 = call float @dx.op.unary.f32(i32 7, float %2249)  ; Saturate(value)
  br label %2251

; <label>:2251                                    ; preds = %2247, %2145
  %2252 = phi float [ %2250, %2247 ], [ %2155, %2145 ]
  %2253 = fmul fast float %2252, %502
  br label %2254

; <label>:2254                                    ; preds = %2251, %2140
  %2255 = phi float [ %2253, %2251 ], [ %502, %2140 ]
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 256
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2306, label %2260

; <label>:2260                                    ; preds = %2254
  %2261 = add i32 %62, 480
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = add i32 %2263, 0
  %2265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2265, %dx.types.Handle %108, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = add i32 %62, 132
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = shl i32 %2270, 4
  %2272 = and i32 %2271, 32752
  %2273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2272)  ; LegacyF16ToF32(value)
  %2274 = lshr i32 %2270, 7
  %2275 = and i32 %2274, 32752
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = fsub fast float 1.000000e+00, %2255
  %2278 = call float @dx.op.binary.f32(i32 35, float %2277, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2279 = bitcast float %2255 to i32
  %2280 = sitofp i32 %2279 to float
  %2281 = fadd fast float %2280, 0xC1CFBF8940000000
  %2282 = fmul fast float %2276, %2281
  %2283 = fadd fast float %2282, 0x41CFBF8940000000
  %2284 = fptosi float %2283 to i32
  %2285 = bitcast i32 %2284 to float
  %2286 = bitcast float %2278 to i32
  %2287 = sitofp i32 %2286 to float
  %2288 = fadd fast float %2287, 0xC1CFBF8940000000
  %2289 = fmul fast float %2288, %2276
  %2290 = fadd fast float %2289, 0x41CFBF8940000000
  %2291 = fptosi float %2290 to i32
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2285, %2273
  %2294 = fmul fast float %2292, %2273
  %2295 = fsub fast float %2278, %2293
  %2296 = fadd fast float %2294, %2278
  %2297 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2299 = fsub fast float %2267, %2297
  %2300 = fsub fast float %2298, %2297
  %2301 = bitcast float %2300 to i32
  %2302 = sub nsw i32 2129859010, %2301
  %2303 = bitcast i32 %2302 to float
  %2304 = fmul fast float %2303, %2299
  %2305 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  br label %2306

; <label>:2306                                    ; preds = %2260, %2254
  %2307 = phi float [ %2305, %2260 ], [ %2255, %2254 ]
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 128
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2328, label %2312

; <label>:2312                                    ; preds = %2306
  %2313 = add i32 %62, 464
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %108, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 524288
  %2323 = icmp ne i32 %2322, 0
  %2324 = fcmp fast ogt float %2319, 0x3FE0101020000000
  %2325 = select i1 %2324, float 1.000000e+00, float 0.000000e+00
  %2326 = select i1 %2323, float %2325, float %2319
  %2327 = fmul fast float %2326, %2307
  br label %2328

; <label>:2328                                    ; preds = %2312, %2306
  %2329 = phi float [ %2327, %2312 ], [ %2307, %2306 ]
  %2330 = fcmp fast ult float %2329, 0x3F70101020000000
  br i1 %2330, label %2873, label %2331

; <label>:2331                                    ; preds = %2328
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 16
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2534, label %2336

; <label>:2336                                    ; preds = %2331
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %62, 416
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %2341, 0
  %2343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2343, %dx.types.Handle %107, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.ResRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.ResRet.f32 %2344, 2
  %2348 = extractvalue %dx.types.ResRet.f32 %2344, 3
  %2349 = and i32 %2338, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = lshr i32 %2338, 8
  %2352 = and i32 %2351, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2348, %2350
  %2355 = fadd fast float %2354, %2353
  %2356 = fmul fast float %2355, 0x3F70101000000000
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 512
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2369, label %2361

; <label>:2361                                    ; preds = %2336
  %2362 = add i32 %62, 496
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %2364, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2366, %dx.types.Handle %108, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  br label %2369

; <label>:2369                                    ; preds = %2361, %2336
  %2370 = phi float [ %2368, %2361 ], [ 1.000000e+00, %2336 ]
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 33554432
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2481, label %2375

; <label>:2375                                    ; preds = %2369
  %2376 = add i32 %62, 256
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 65535
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = lshr i32 %2378, 16
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = add i32 %62, 260
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = lshr i32 %2389, 24
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = and i32 %2389, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = lshr i32 %2389, 8
  %2397 = and i32 %2396, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = lshr i32 %2389, 16
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = add i32 %62, 252
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = lshr i32 %2406, 24
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101020000000
  %2410 = and i32 %2406, 255
  %2411 = uitofp i32 %2410 to float
  %2412 = fmul fast float %2411, 0x3F70101020000000
  %2413 = lshr i32 %2406, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101020000000
  %2417 = lshr i32 %2406, 16
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = bitcast float %2345 to i32
  %2422 = ashr i32 %2421, 1
  %2423 = sub nsw i32 1597463174, %2422
  %2424 = bitcast i32 %2423 to float
  %2425 = fmul fast float %2345, 5.000000e-01
  %2426 = fmul fast float %2424, %2424
  %2427 = fmul fast float %2426, %2425
  %2428 = fsub fast float 1.500000e+00, %2427
  %2429 = fmul fast float %2424, %2345
  %2430 = fmul fast float %2429, %2428
  %2431 = bitcast float %2346 to i32
  %2432 = ashr i32 %2431, 1
  %2433 = sub nsw i32 1597463174, %2432
  %2434 = bitcast i32 %2433 to float
  %2435 = fmul fast float %2346, 5.000000e-01
  %2436 = fmul fast float %2434, %2434
  %2437 = fmul fast float %2436, %2435
  %2438 = fsub fast float 1.500000e+00, %2437
  %2439 = fmul fast float %2434, %2346
  %2440 = fmul fast float %2439, %2438
  %2441 = bitcast float %2347 to i32
  %2442 = ashr i32 %2441, 1
  %2443 = sub nsw i32 1597463174, %2442
  %2444 = bitcast i32 %2443 to float
  %2445 = fmul fast float %2347, 5.000000e-01
  %2446 = fmul fast float %2444, %2444
  %2447 = fmul fast float %2446, %2445
  %2448 = fsub fast float 1.500000e+00, %2447
  %2449 = fmul fast float %2444, %2347
  %2450 = fmul fast float %2449, %2448
  %2451 = fsub fast float %2430, %2412
  %2452 = fsub fast float %2440, %2416
  %2453 = fsub fast float %2450, %2420
  %2454 = fmul fast float %2451, %2380
  %2455 = fmul fast float %2452, %2382
  %2456 = fmul fast float %2453, %2387
  %2457 = fadd fast float %2454, %2395
  %2458 = fadd fast float %2455, %2399
  %2459 = fadd fast float %2456, %2403
  %2460 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2461 = call float @dx.op.unary.f32(i32 7, float %2458)  ; Saturate(value)
  %2462 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2463 = fmul fast float %2460, %2460
  %2464 = fmul fast float %2461, %2461
  %2465 = fmul fast float %2462, %2462
  %2466 = fsub fast float %2463, %2345
  %2467 = fsub fast float %2464, %2346
  %2468 = fsub fast float %2465, %2347
  %2469 = fmul fast float %2466, %2370
  %2470 = fmul fast float %2467, %2370
  %2471 = fmul fast float %2468, %2370
  %2472 = fadd fast float %2469, %2345
  %2473 = fadd fast float %2470, %2346
  %2474 = fadd fast float %2471, %2347
  %2475 = fadd fast float %2392, %2356
  %2476 = fsub fast float %2475, %2409
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2478 = fsub fast float %2477, %2356
  %2479 = fmul fast float %2478, %2370
  %2480 = fadd fast float %2479, %2356
  br label %2534

; <label>:2481                                    ; preds = %2369
  %2482 = and i32 %2372, 134217728
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2518, label %2484

; <label>:2484                                    ; preds = %2481
  %2485 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2486 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2487 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %2488 = fadd fast float %2485, -5.000000e-01
  %2489 = fadd fast float %2486, -5.000000e-01
  %2490 = fadd fast float %2487, -5.000000e-01
  %2491 = fmul fast float %2488, %2370
  %2492 = fmul fast float %2489, %2370
  %2493 = fmul fast float %2490, %2370
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = fadd fast float %2492, 5.000000e-01
  %2496 = fadd fast float %2493, 5.000000e-01
  %2497 = call float @dx.op.unary.f32(i32 24, float %2345)  ; Sqrt(value)
  %2498 = call float @dx.op.unary.f32(i32 24, float %2346)  ; Sqrt(value)
  %2499 = call float @dx.op.unary.f32(i32 24, float %2347)  ; Sqrt(value)
  %2500 = fmul fast float %2494, 2.000000e+00
  %2501 = fsub fast float 1.000000e+00, %2500
  %2502 = fmul fast float %2501, %2497
  %2503 = fadd fast float %2502, %2500
  %2504 = fmul fast float %2503, %2497
  %2505 = fmul fast float %2495, 2.000000e+00
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2506, %2498
  %2508 = fadd fast float %2507, %2505
  %2509 = fmul fast float %2508, %2498
  %2510 = fmul fast float %2496, 2.000000e+00
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, %2499
  %2513 = fadd fast float %2512, %2510
  %2514 = fmul fast float %2513, %2499
  %2515 = fmul fast float %2504, %2504
  %2516 = fmul fast float %2509, %2509
  %2517 = fmul fast float %2514, %2514
  br label %2534

; <label>:2518                                    ; preds = %2481
  %2519 = fmul fast float %377, %377
  %2520 = fmul fast float %381, %381
  %2521 = fmul fast float %385, %385
  %2522 = fadd fast float %2519, -1.000000e+00
  %2523 = fadd fast float %2520, -1.000000e+00
  %2524 = fadd fast float %2521, -1.000000e+00
  %2525 = fmul fast float %2370, %2522
  %2526 = fmul fast float %2370, %2523
  %2527 = fmul fast float %2370, %2524
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fadd fast float %2526, 1.000000e+00
  %2530 = fadd fast float %2527, 1.000000e+00
  %2531 = fmul fast float %2528, %2345
  %2532 = fmul fast float %2529, %2346
  %2533 = fmul fast float %2530, %2347
  br label %2534

; <label>:2534                                    ; preds = %2518, %2484, %2375, %2331
  %2535 = phi float [ %2480, %2375 ], [ %2356, %2484 ], [ %2356, %2518 ], [ 0x3FA23C0BE0000000, %2331 ]
  %2536 = phi float [ %2472, %2375 ], [ %2515, %2484 ], [ %2531, %2518 ], [ 1.000000e+00, %2331 ]
  %2537 = phi float [ %2473, %2375 ], [ %2516, %2484 ], [ %2532, %2518 ], [ 1.000000e+00, %2331 ]
  %2538 = phi float [ %2474, %2375 ], [ %2517, %2484 ], [ %2533, %2518 ], [ 1.000000e+00, %2331 ]
  %2539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.i32 %2539, 1
  %2541 = and i32 %2540, 1
  %2542 = icmp ne i32 %2541, 0
  %2543 = add i32 %62, 356
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, 32
  %2547 = icmp ne i32 %2546, 0
  %2548 = and i1 %2542, %2547
  %2549 = select i1 %2548, float 1.000000e+00, float %2536
  %2550 = select i1 %2548, float 0x3FD3333340000000, float %2537
  %2551 = select i1 %2548, float 0x3FD3333340000000, float %2538
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 32
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %2628, label %2556

; <label>:2556                                    ; preds = %2534
  %2557 = add i32 %62, 124
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %62, 432
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = add i32 %2562, 0
  %2564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2564, %dx.types.Handle %107, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2566 = extractvalue %dx.types.ResRet.f32 %2565, 0
  %2567 = extractvalue %dx.types.ResRet.f32 %2565, 1
  %2568 = extractvalue %dx.types.ResRet.f32 %2565, 2
  %2569 = extractvalue %dx.types.ResRet.f32 %2565, 3
  %2570 = and i32 %2559, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = lshr i32 %2559, 8
  %2573 = and i32 %2572, 255
  %2574 = uitofp i32 %2573 to float
  %2575 = lshr i32 %2559, 16
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = fmul fast float %2577, 0x3F70101000000000
  %2579 = fmul fast float %2566, %2571
  %2580 = fadd fast float %2579, %2574
  %2581 = fmul fast float %2580, 0x3F70101000000000
  %2582 = fadd fast float %2567, -5.000000e-01
  %2583 = fadd fast float %2569, -5.000000e-01
  %2584 = fmul fast float %2582, %2578
  %2585 = fmul fast float %2583, %2578
  %2586 = fadd fast float %2584, 5.000000e-01
  %2587 = fadd fast float %2585, 5.000000e-01
  %2588 = fmul fast float %2586, 2.000000e+00
  %2589 = fadd fast float %2588, -1.000000e+00
  %2590 = fmul fast float %2587, 2.000000e+00
  %2591 = fadd fast float %2590, -1.000000e+00
  %2592 = fadd fast float %2589, %2591
  %2593 = fmul fast float %2592, 5.000000e-01
  %2594 = fsub fast float %2589, %2591
  %2595 = fmul fast float %2594, 5.000000e-01
  %2596 = call float @dx.op.unary.f32(i32 6, float %2593)  ; FAbs(value)
  %2597 = fsub fast float 1.000000e+00, %2596
  %2598 = call float @dx.op.unary.f32(i32 6, float %2595)  ; FAbs(value)
  %2599 = fsub fast float %2597, %2598
  %2600 = call float @dx.op.dot3.f32(i32 55, float %2593, float %2595, float %2599, float %2593, float %2595, float %2599)  ; Dot3(ax,ay,az,bx,by,bz)
  %2601 = call float @dx.op.unary.f32(i32 25, float %2600)  ; Rsqrt(value)
  %2602 = fmul fast float %2593, %2601
  %2603 = fmul fast float %2595, %2601
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 67108864
  %2607 = icmp eq i32 %2606, 0
  br i1 %2607, label %2624, label %2608

; <label>:2608                                    ; preds = %2556
  %2609 = add i32 %62, 312
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 65535
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 65535
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = lshr i32 %2611, 16
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = fsub fast float %2581, %2619
  %2621 = fmul fast float %2620, %2613
  %2622 = fadd fast float %2621, %2617
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br label %2624

; <label>:2624                                    ; preds = %2608, %2556
  %2625 = phi float [ %2623, %2608 ], [ %2581, %2556 ]
  %2626 = call float @dx.op.dot2.f32(i32 54, float %2602, float %2603, float %2045, float %2046)  ; Dot2(ax,ay,bx,by)
  %2627 = call float @dx.op.dot2.f32(i32 54, float %2602, float %2603, float %2047, float %2048)  ; Dot2(ax,ay,bx,by)
  br label %2628

; <label>:2628                                    ; preds = %2624, %2534
  %2629 = phi float [ %2625, %2624 ], [ 0x3FD6666660000000, %2534 ]
  %2630 = phi float [ %2626, %2624 ], [ 0.000000e+00, %2534 ]
  %2631 = phi float [ %2627, %2624 ], [ 0.000000e+00, %2534 ]
  %2632 = phi float [ %2568, %2624 ], [ 1.000000e+00, %2534 ]
  %2633 = add i32 %62, 192
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 22
  %2637 = shl nuw nsw i32 %2636, 5
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 64
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2676, label %2643

; <label>:2643                                    ; preds = %2628
  %2644 = add i32 %62, 448
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = add i32 %2646, 0
  %2648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 131072
  %2652 = icmp eq i32 %2651, 0
  %2653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2648, %dx.types.Handle %107, float %2141, float %2142, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2657 = fmul fast float %2654, %365
  %2658 = fmul fast float %2655, %368
  %2659 = fmul fast float %2656, %371
  br i1 %2652, label %2666, label %2660

; <label>:2660                                    ; preds = %2643
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = fmul fast float %2662, %2657
  %2664 = fmul fast float %2662, %2658
  %2665 = fmul fast float %2662, %2659
  br label %2666

; <label>:2666                                    ; preds = %2660, %2643
  %2667 = phi float [ %2663, %2660 ], [ %2657, %2643 ]
  %2668 = phi float [ %2664, %2660 ], [ %2658, %2643 ]
  %2669 = phi float [ %2665, %2660 ], [ %2659, %2643 ]
  %2670 = fmul fast float %2667, %2638
  %2671 = select i1 %264, float %2670, float %2667
  %2672 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2668, float %2669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2673 = select i1 %264, float 0.000000e+00, float %2667
  %2674 = select i1 %264, float %2672, float %2668
  %2675 = select i1 %264, float 0.000000e+00, float %2669
  br label %2676

; <label>:2676                                    ; preds = %2666, %2628
  %2677 = phi float [ %2673, %2666 ], [ 0.000000e+00, %2628 ]
  %2678 = phi float [ %2674, %2666 ], [ 0.000000e+00, %2628 ]
  %2679 = phi float [ %2675, %2666 ], [ 0.000000e+00, %2628 ]
  %2680 = add i32 %62, 128
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = lshr i32 %2682, 8
  %2686 = and i32 %2685, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2689 = fmul fast float %2687, %2688
  %2690 = fadd fast float %2689, %2684
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  br i1 %2033, label %2693, label %2701

; <label>:2693                                    ; preds = %2676
  %2694 = fsub fast float 1.000000e+00, %2329
  %2695 = fmul fast float %2694, %2022
  %2696 = fmul fast float %2694, %2023
  %2697 = fmul fast float %2694, %2024
  %2698 = fmul fast float %2694, %2025
  %2699 = fmul fast float %2694, %2026
  %2700 = fmul fast float %2694, %2027
  br label %2701

; <label>:2701                                    ; preds = %2693, %2676
  %2702 = phi float [ %2695, %2693 ], [ %2022, %2676 ]
  %2703 = phi float [ %2696, %2693 ], [ %2023, %2676 ]
  %2704 = phi float [ %2697, %2693 ], [ %2024, %2676 ]
  %2705 = phi float [ %2698, %2693 ], [ %2025, %2676 ]
  %2706 = phi float [ %2699, %2693 ], [ %2026, %2676 ]
  %2707 = phi float [ %2700, %2693 ], [ %2027, %2676 ]
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 3
  %2711 = icmp eq i32 %2710, 3
  br i1 %2711, label %2790, label %2712

; <label>:2712                                    ; preds = %2701
  %2713 = and i32 %2709, 16
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %2329, float 0.000000e+00
  %2716 = icmp eq i32 %2710, 0
  br i1 %2716, label %2717, label %2745

; <label>:2717                                    ; preds = %2712
  %2718 = and i32 %2709, 64
  %2719 = icmp ne i32 %2718, 0
  %2720 = select i1 %2719, float %2329, float 0.000000e+00
  %2721 = fsub fast float %2549, %2702
  %2722 = fsub fast float %2550, %2703
  %2723 = fsub fast float %2551, %2704
  %2724 = fmul fast float %2715, %2721
  %2725 = fmul fast float %2715, %2722
  %2726 = fmul fast float %2715, %2723
  %2727 = fadd fast float %2724, %2702
  %2728 = fadd fast float %2725, %2703
  %2729 = fadd fast float %2726, %2704
  %2730 = fsub fast float %2535, %2028
  %2731 = fmul fast float %2715, %2730
  %2732 = fadd fast float %2731, %2028
  %2733 = fsub fast float %2677, %2705
  %2734 = fsub fast float %2678, %2706
  %2735 = fsub fast float %2679, %2707
  %2736 = fmul fast float %2720, %2733
  %2737 = fmul fast float %2720, %2734
  %2738 = fmul fast float %2720, %2735
  %2739 = fadd fast float %2736, %2705
  %2740 = fadd fast float %2737, %2706
  %2741 = fadd fast float %2738, %2707
  %2742 = fsub fast float %2692, %2031
  %2743 = fmul fast float %2715, %2742
  %2744 = fadd fast float %2743, %2031
  br label %2790

; <label>:2745                                    ; preds = %2712
  %2746 = icmp eq i32 %2710, 1
  br i1 %2746, label %2747, label %2760

; <label>:2747                                    ; preds = %2745
  %2748 = fadd fast float %2549, -1.000000e+00
  %2749 = fadd fast float %2550, -1.000000e+00
  %2750 = fadd fast float %2551, -1.000000e+00
  %2751 = fmul fast float %2715, %2748
  %2752 = fmul fast float %2715, %2749
  %2753 = fmul fast float %2715, %2750
  %2754 = fadd fast float %2751, 1.000000e+00
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fadd fast float %2753, 1.000000e+00
  %2757 = fmul fast float %2754, %2702
  %2758 = fmul fast float %2755, %2703
  %2759 = fmul fast float %2756, %2704
  br label %2790

; <label>:2760                                    ; preds = %2745
  %2761 = icmp eq i32 %2710, 2
  br i1 %2761, label %2762, label %2790

; <label>:2762                                    ; preds = %2760
  %2763 = call float @dx.op.unary.f32(i32 24, float %2549)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2550)  ; Sqrt(value)
  %2765 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2766 = fadd fast float %2763, -5.000000e-01
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fadd fast float %2765, -5.000000e-01
  %2769 = fmul fast float %2766, %2715
  %2770 = fmul fast float %2767, %2715
  %2771 = fmul fast float %2768, %2715
  %2772 = fadd fast float %2769, 5.000000e-01
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fmul fast float %2772, 2.000000e+00
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = fmul fast float %2776, %2702
  %2778 = fadd fast float %2777, %2775
  %2779 = fmul fast float %2778, %2702
  %2780 = fmul fast float %2773, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2703
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2703
  %2785 = fmul fast float %2774, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2704
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2704
  br label %2790

; <label>:2790                                    ; preds = %2762, %2760, %2747, %2717, %2701
  %2791 = phi float [ %2702, %2701 ], [ %2779, %2762 ], [ %2702, %2760 ], [ %2757, %2747 ], [ %2727, %2717 ]
  %2792 = phi float [ %2703, %2701 ], [ %2784, %2762 ], [ %2703, %2760 ], [ %2758, %2747 ], [ %2728, %2717 ]
  %2793 = phi float [ %2704, %2701 ], [ %2789, %2762 ], [ %2704, %2760 ], [ %2759, %2747 ], [ %2729, %2717 ]
  %2794 = phi float [ %2705, %2701 ], [ %2705, %2762 ], [ %2705, %2760 ], [ %2705, %2747 ], [ %2739, %2717 ]
  %2795 = phi float [ %2706, %2701 ], [ %2706, %2762 ], [ %2706, %2760 ], [ %2706, %2747 ], [ %2740, %2717 ]
  %2796 = phi float [ %2707, %2701 ], [ %2707, %2762 ], [ %2707, %2760 ], [ %2707, %2747 ], [ %2741, %2717 ]
  %2797 = phi float [ %2028, %2701 ], [ %2028, %2762 ], [ %2028, %2760 ], [ %2028, %2747 ], [ %2732, %2717 ]
  %2798 = phi float [ %2031, %2701 ], [ %2031, %2762 ], [ %2031, %2760 ], [ %2031, %2747 ], [ %2744, %2717 ]
  %2799 = and i32 %2709, 12
  %2800 = icmp eq i32 %2799, 12
  br i1 %2800, label %2873, label %2801

; <label>:2801                                    ; preds = %2790
  %2802 = and i32 %2709, 2097184
  %2803 = icmp eq i32 %2802, 2097184
  %2804 = select i1 %2803, float %2329, float 0.000000e+00
  %2805 = and i32 %2709, 4194336
  %2806 = icmp eq i32 %2805, 4194336
  %2807 = select i1 %2806, float %2329, float 0.000000e+00
  %2808 = and i32 %2709, 8388640
  %2809 = icmp eq i32 %2808, 8388640
  %2810 = select i1 %2809, float %2329, float 0.000000e+00
  %2811 = icmp eq i32 %2799, 0
  br i1 %2811, label %2812, label %2825

; <label>:2812                                    ; preds = %2801
  %2813 = fsub fast float %2630, %2020
  %2814 = fsub fast float %2631, %2021
  %2815 = fmul fast float %2804, %2813
  %2816 = fmul fast float %2804, %2814
  %2817 = fadd fast float %2815, %2020
  %2818 = fadd fast float %2816, %2021
  %2819 = fsub fast float %2632, %2030
  %2820 = fmul fast float %2807, %2819
  %2821 = fadd fast float %2820, %2030
  %2822 = fsub fast float %2629, %2029
  %2823 = fmul fast float %2810, %2822
  %2824 = fadd fast float %2823, %2029
  br label %2873

; <label>:2825                                    ; preds = %2801
  %2826 = icmp eq i32 %2799, 4
  br i1 %2826, label %2827, label %2859

; <label>:2827                                    ; preds = %2825
  %2828 = fmul fast float %2804, %2630
  %2829 = fmul fast float %2804, %2631
  %2830 = fadd fast float %2828, %2020
  %2831 = fadd fast float %2829, %2021
  %2832 = call float @dx.op.binary.f32(i32 36, float %2030, float %2632)  ; FMin(a,b)
  %2833 = fsub fast float %2832, %2030
  %2834 = fmul fast float %2833, %2807
  %2835 = fadd fast float %2834, %2030
  %2836 = fadd fast float %2629, %2029
  %2837 = fmul fast float %2836, 0x3FF337FAE0000000
  %2838 = fmul fast float %2029, %2029
  %2839 = fmul fast float %2629, %2629
  %2840 = fadd fast float %2839, %2838
  %2841 = fmul fast float %2840, 0x3FE5152B00000000
  %2842 = fmul fast float %2029, 0xBFCC1F85E0000000
  %2843 = fmul fast float %2842, %2629
  %2844 = fadd fast float %2843, 0xBFE1363700000000
  %2845 = fadd fast float %2844, %2837
  %2846 = fsub fast float %2845, %2841
  %2847 = fmul fast float %2836, 0x3FBA6F0D00000000
  %2848 = fmul fast float %2840, 0x3FD0432880000000
  %2849 = fmul fast float %2029, 0xBFEF110800000000
  %2850 = fmul fast float %2849, %2629
  %2851 = fadd fast float %2850, 1.000000e+00
  %2852 = fsub fast float %2851, %2847
  %2853 = fadd fast float %2852, %2848
  %2854 = fdiv fast float %2846, %2853
  %2855 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2856 = fsub fast float %2855, %2029
  %2857 = fmul fast float %2856, %2810
  %2858 = fadd fast float %2857, %2029
  br label %2873

; <label>:2859                                    ; preds = %2825
  %2860 = icmp eq i32 %2799, 8
  br i1 %2860, label %2861, label %2873

; <label>:2861                                    ; preds = %2859
  %2862 = fmul fast float %2804, %2630
  %2863 = fmul fast float %2804, %2631
  %2864 = fadd fast float %2862, %2020
  %2865 = fadd fast float %2863, %2021
  %2866 = call float @dx.op.binary.f32(i32 36, float %2030, float %2632)  ; FMin(a,b)
  %2867 = fsub fast float %2866, %2030
  %2868 = fmul fast float %2867, %2807
  %2869 = fadd fast float %2868, %2030
  %2870 = fsub fast float %2629, %2029
  %2871 = fmul fast float %2810, %2870
  %2872 = fadd fast float %2871, %2029
  br label %2873

; <label>:2873                                    ; preds = %2861, %2859, %2827, %2812, %2790, %2328, %2032, %2019
  %2874 = phi float [ %2020, %2790 ], [ %2020, %2328 ], [ %2020, %2019 ], [ %2864, %2861 ], [ %2020, %2859 ], [ %2830, %2827 ], [ %2817, %2812 ], [ %2020, %2032 ]
  %2875 = phi float [ %2021, %2790 ], [ %2021, %2328 ], [ %2021, %2019 ], [ %2865, %2861 ], [ %2021, %2859 ], [ %2831, %2827 ], [ %2818, %2812 ], [ %2021, %2032 ]
  %2876 = phi float [ %2791, %2790 ], [ %2022, %2328 ], [ %2022, %2019 ], [ %2791, %2861 ], [ %2791, %2859 ], [ %2791, %2827 ], [ %2791, %2812 ], [ %2022, %2032 ]
  %2877 = phi float [ %2792, %2790 ], [ %2023, %2328 ], [ %2023, %2019 ], [ %2792, %2861 ], [ %2792, %2859 ], [ %2792, %2827 ], [ %2792, %2812 ], [ %2023, %2032 ]
  %2878 = phi float [ %2793, %2790 ], [ %2024, %2328 ], [ %2024, %2019 ], [ %2793, %2861 ], [ %2793, %2859 ], [ %2793, %2827 ], [ %2793, %2812 ], [ %2024, %2032 ]
  %2879 = phi float [ %2794, %2790 ], [ %2025, %2328 ], [ %2025, %2019 ], [ %2794, %2861 ], [ %2794, %2859 ], [ %2794, %2827 ], [ %2794, %2812 ], [ %2025, %2032 ]
  %2880 = phi float [ %2795, %2790 ], [ %2026, %2328 ], [ %2026, %2019 ], [ %2795, %2861 ], [ %2795, %2859 ], [ %2795, %2827 ], [ %2795, %2812 ], [ %2026, %2032 ]
  %2881 = phi float [ %2796, %2790 ], [ %2027, %2328 ], [ %2027, %2019 ], [ %2796, %2861 ], [ %2796, %2859 ], [ %2796, %2827 ], [ %2796, %2812 ], [ %2027, %2032 ]
  %2882 = phi float [ %2797, %2790 ], [ %2028, %2328 ], [ %2028, %2019 ], [ %2797, %2861 ], [ %2797, %2859 ], [ %2797, %2827 ], [ %2797, %2812 ], [ %2028, %2032 ]
  %2883 = phi float [ %2029, %2790 ], [ %2029, %2328 ], [ %2029, %2019 ], [ %2872, %2861 ], [ %2029, %2859 ], [ %2858, %2827 ], [ %2824, %2812 ], [ %2029, %2032 ]
  %2884 = phi float [ %2030, %2790 ], [ %2030, %2328 ], [ %2030, %2019 ], [ %2869, %2861 ], [ %2030, %2859 ], [ %2835, %2827 ], [ %2821, %2812 ], [ %2030, %2032 ]
  %2885 = phi float [ %2798, %2790 ], [ %2031, %2328 ], [ %2031, %2019 ], [ %2798, %2861 ], [ %2798, %2859 ], [ %2798, %2827 ], [ %2798, %2812 ], [ %2031, %2032 ]
  br i1 %452, label %3727, label %2886

; <label>:2886                                    ; preds = %2873
  %2887 = icmp ult i32 %506, 4
  %2888 = add i32 %62, 72
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = add i32 %62, 76
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = or i32 %2893, %2890
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %3727, label %2896

; <label>:2896                                    ; preds = %2886
  %2897 = and i32 %2890, 262144
  %2898 = icmp ne i32 %2897, 0
  %2899 = select i1 %2898, float %65, float 1.000000e+00
  %2900 = select i1 %2898, float %66, float 0.000000e+00
  %2901 = select i1 %2898, float %67, float 0.000000e+00
  %2902 = select i1 %2898, float %68, float 1.000000e+00
  %2903 = select i1 %2898, float %69, float %90
  %2904 = select i1 %2898, float %70, float %91
  %2905 = add i32 %62, 332
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = lshr i32 %2907, 16
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = fmul fast float %2909, 0x3F50624DE0000000
  %2911 = add i32 %62, 136
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 16
  %2915 = and i32 %2914, 255
  %2916 = lshr i32 %2913, 24
  %2917 = add i32 %62, 340
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 65535
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = lshr i32 %2919, 16
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = add i32 %62, 80
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = lshr i32 %2926, 22
  %2928 = shl nuw nsw i32 %2927, 5
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = shl i32 %2926, 4
  %2931 = and i32 %2930, 32752
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = lshr i32 %2926, 7
  %2934 = and i32 %2933, 32752
  %2935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2934)  ; LegacyF16ToF32(value)
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2938 = fmul fast float %2937, 1.000000e+03
  %2939 = fmul fast float %442, %2938
  %2940 = call float @dx.op.unary.f32(i32 22, float %2939)  ; Frc(value)
  %2941 = fadd fast float %2940, %432
  %2942 = fmul fast float %443, %2938
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = fadd fast float %2943, %434
  %2945 = fmul fast float %2910, %2938
  %2946 = call float @dx.op.unary.f32(i32 22, float %2945)  ; Frc(value)
  %2947 = fmul fast float %2946, 0x401921FB60000000
  %2948 = fadd fast float %2947, %2929
  %2949 = call float @dx.op.unary.f32(i32 13, float %2948)  ; Sin(value)
  %2950 = call float @dx.op.unary.f32(i32 12, float %2948)  ; Cos(value)
  %2951 = fsub fast float -0.000000e+00, %2949
  %2952 = fadd fast float %2903, -5.000000e-01
  %2953 = fadd fast float %2904, -5.000000e-01
  %2954 = fmul fast float %2921, %2952
  %2955 = fmul fast float %2923, %2953
  %2956 = fadd fast float %2954, 5.000000e-01
  %2957 = fadd fast float %2955, 5.000000e-01
  %2958 = fmul fast float %2932, %2956
  %2959 = fmul fast float %2935, %2957
  %2960 = fmul fast float %2950, %2958
  %2961 = call float @dx.op.tertiary.f32(i32 46, float %2951, float %2959, float %2960)  ; FMad(a,b,c)
  %2962 = fmul fast float %2949, %2958
  %2963 = call float @dx.op.tertiary.f32(i32 46, float %2950, float %2959, float %2962)  ; FMad(a,b,c)
  %2964 = fadd fast float %2941, %2961
  %2965 = fadd fast float %2944, %2963
  %2966 = icmp ugt i32 %2915, 1
  %2967 = icmp ugt i32 %2913, 33554431
  %2968 = or i1 %2967, %2966
  br i1 %2968, label %2969, label %2994

; <label>:2969                                    ; preds = %2896
  %2970 = add i32 %62, 276
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = lshr i32 %2972, 16
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = fmul fast float %2937, %2974
  %2976 = call float @dx.op.unary.f32(i32 22, float %2975)  ; Frc(value)
  %2977 = mul nuw nsw i32 %2915, %2916
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2976, %2978
  %2980 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2981 = fptoui float %2980 to i32
  %2982 = urem i32 %2981, %2915
  %2983 = udiv i32 %2981, %2916
  %2984 = call float @dx.op.unary.f32(i32 22, float %2964)  ; Frc(value)
  %2985 = call float @dx.op.unary.f32(i32 22, float %2965)  ; Frc(value)
  %2986 = uitofp i32 %2982 to float
  %2987 = uitofp i32 %2983 to float
  %2988 = fadd fast float %2984, %2986
  %2989 = fadd fast float %2985, %2987
  %2990 = uitofp i32 %2915 to float
  %2991 = uitofp i32 %2916 to float
  %2992 = fdiv fast float %2988, %2990
  %2993 = fdiv fast float %2989, %2991
  br label %2994

; <label>:2994                                    ; preds = %2969, %2896
  %2995 = phi float [ %2992, %2969 ], [ %2964, %2896 ]
  %2996 = phi float [ %2993, %2969 ], [ %2965, %2896 ]
  %2997 = and i32 %2890, 16777216
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3108, label %2999

; <label>:2999                                    ; preds = %2994
  %3000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3001 = extractvalue %dx.types.CBufRet.f32 %3000, 0
  %3002 = extractvalue %dx.types.CBufRet.f32 %3000, 1
  %3003 = extractvalue %dx.types.CBufRet.f32 %3000, 2
  %3004 = fadd fast float %3001, %170
  %3005 = fadd fast float %3002, %171
  %3006 = fadd fast float %3003, %172
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3010 = icmp eq i32 %63, 65535
  br i1 %3010, label %3105, label %3011

; <label>:3011                                    ; preds = %2999
  %3012 = lshr i32 %63, 1
  %3013 = shl i32 %3012, 2
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3013, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = and i32 %63, 1
  %3017 = icmp ne i32 %3016, 0
  %3018 = lshr i32 %3015, 16
  %3019 = and i32 %3015, 65535
  %3020 = select i1 %3017, i32 %3018, i32 %3019
  %3021 = icmp eq i32 %3020, 65535
  br i1 %3021, label %3101, label %3022

; <label>:3022                                    ; preds = %3011
  %3023 = mul nuw nsw i32 %3020, 40
  %3024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.ResRet.f32 %3024, 1
  %3027 = extractvalue %dx.types.ResRet.f32 %3024, 2
  %3028 = add nuw nsw i32 %3023, 12
  %3029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = add nuw nsw i32 %3023, 24
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = extractvalue %dx.types.ResRet.f32 %3034, 1
  %3037 = extractvalue %dx.types.ResRet.f32 %3034, 2
  %3038 = add nuw nsw i32 %3023, 36
  %3039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = fsub fast float %3004, %3025
  %3042 = fsub fast float %3005, %3026
  %3043 = fsub fast float %3006, %3027
  %3044 = fmul fast float %3040, %3041
  %3045 = fmul fast float %3040, %3042
  %3046 = fmul fast float %3040, %3043
  %3047 = call float @dx.op.unary.f32(i32 27, float %3044)  ; Round_ni(value)
  %3048 = call float @dx.op.unary.f32(i32 27, float %3045)  ; Round_ni(value)
  %3049 = call float @dx.op.unary.f32(i32 27, float %3046)  ; Round_ni(value)
  %3050 = fadd fast float %3047, 5.000000e-01
  %3051 = fadd fast float %3048, 5.000000e-01
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fmul fast float %3050, %3030
  %3054 = fmul fast float %3051, %3031
  %3055 = fmul fast float %3052, %3032
  %3056 = shl i32 %63, 2
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call float @dx.op.unary.f32(i32 22, float %3053)  ; Frc(value)
  %3062 = call float @dx.op.unary.f32(i32 22, float %3054)  ; Frc(value)
  %3063 = call float @dx.op.unary.f32(i32 22, float %3055)  ; Frc(value)
  %3064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3060, %dx.types.Handle %55, float %3061, float %3062, float %3063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3068 = fmul fast float %3065, 1.023000e+03
  %3069 = fmul fast float %3066, 1.023000e+03
  %3070 = fmul fast float %3067, 1.023000e+03
  %3071 = fadd fast float %3068, 5.000000e-01
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = fadd fast float %3070, 5.000000e-01
  %3074 = call float @dx.op.unary.f32(i32 27, float %3071)  ; Round_ni(value)
  %3075 = call float @dx.op.unary.f32(i32 27, float %3072)  ; Round_ni(value)
  %3076 = call float @dx.op.unary.f32(i32 27, float %3073)  ; Round_ni(value)
  %3077 = fsub fast float %3044, %3047
  %3078 = fsub fast float %3045, %3048
  %3079 = fsub fast float %3046, %3049
  %3080 = fmul fast float %3077, 7.500000e-01
  %3081 = fmul fast float %3078, 7.500000e-01
  %3082 = fmul fast float %3079, 7.500000e-01
  %3083 = fadd fast float %3047, 1.250000e-01
  %3084 = fadd fast float %3083, %3080
  %3085 = fadd fast float %3084, %3074
  %3086 = fadd fast float %3048, 1.250000e-01
  %3087 = fadd fast float %3086, %3081
  %3088 = fadd fast float %3087, %3075
  %3089 = fadd fast float %3049, 1.250000e-01
  %3090 = fadd fast float %3089, %3082
  %3091 = fadd fast float %3090, %3076
  %3092 = fmul fast float %3085, %3035
  %3093 = fmul fast float %3088, %3036
  %3094 = fmul fast float %3091, %3037
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3098, %dx.types.Handle %53, float %3092, float %3093, float %3094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  br label %3101

; <label>:3101                                    ; preds = %3022, %3011
  %3102 = phi float [ %3100, %3022 ], [ -1.000000e+00, %3011 ]
  %3103 = fadd fast float %3102, %3009
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  br label %3105

; <label>:3105                                    ; preds = %3101, %2999
  %3106 = phi float [ %3104, %3101 ], [ %3009, %2999 ]
  %3107 = fmul fast float %3106, %501
  br label %3108

; <label>:3108                                    ; preds = %3105, %2994
  %3109 = phi float [ %3107, %3105 ], [ %501, %2994 ]
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 256
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3160, label %3114

; <label>:3114                                    ; preds = %3108
  %3115 = add i32 %62, 484
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %108, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = add i32 %62, 148
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = shl i32 %3124, 4
  %3126 = and i32 %3125, 32752
  %3127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3126)  ; LegacyF16ToF32(value)
  %3128 = lshr i32 %3124, 7
  %3129 = and i32 %3128, 32752
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = fsub fast float 1.000000e+00, %3109
  %3132 = call float @dx.op.binary.f32(i32 35, float %3131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3133 = bitcast float %3109 to i32
  %3134 = sitofp i32 %3133 to float
  %3135 = fadd fast float %3134, 0xC1CFBF8940000000
  %3136 = fmul fast float %3130, %3135
  %3137 = fadd fast float %3136, 0x41CFBF8940000000
  %3138 = fptosi float %3137 to i32
  %3139 = bitcast i32 %3138 to float
  %3140 = bitcast float %3132 to i32
  %3141 = sitofp i32 %3140 to float
  %3142 = fadd fast float %3141, 0xC1CFBF8940000000
  %3143 = fmul fast float %3142, %3130
  %3144 = fadd fast float %3143, 0x41CFBF8940000000
  %3145 = fptosi float %3144 to i32
  %3146 = bitcast i32 %3145 to float
  %3147 = fmul fast float %3139, %3127
  %3148 = fmul fast float %3146, %3127
  %3149 = fsub fast float %3132, %3147
  %3150 = fadd fast float %3148, %3132
  %3151 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3152 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3153 = fsub fast float %3121, %3151
  %3154 = fsub fast float %3152, %3151
  %3155 = bitcast float %3154 to i32
  %3156 = sub nsw i32 2129859010, %3155
  %3157 = bitcast i32 %3156 to float
  %3158 = fmul fast float %3157, %3153
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  br label %3160

; <label>:3160                                    ; preds = %3114, %3108
  %3161 = phi float [ %3159, %3114 ], [ %3109, %3108 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 128
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3182, label %3166

; <label>:3166                                    ; preds = %3160
  %3167 = add i32 %62, 468
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = add i32 %3169, 0
  %3171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3171, %dx.types.Handle %108, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3173 = extractvalue %dx.types.ResRet.f32 %3172, 0
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = and i32 %3175, 524288
  %3177 = icmp ne i32 %3176, 0
  %3178 = fcmp fast ogt float %3173, 0x3FE0101020000000
  %3179 = select i1 %3178, float 1.000000e+00, float 0.000000e+00
  %3180 = select i1 %3177, float %3179, float %3173
  %3181 = fmul fast float %3180, %3161
  br label %3182

; <label>:3182                                    ; preds = %3166, %3160
  %3183 = phi float [ %3181, %3166 ], [ %3161, %3160 ]
  %3184 = fcmp fast ult float %3183, 0x3F70101020000000
  br i1 %3184, label %3727, label %3185

; <label>:3185                                    ; preds = %3182
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 16
  %3189 = icmp eq i32 %3188, 0
  br i1 %3189, label %3388, label %3190

; <label>:3190                                    ; preds = %3185
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %62, 420
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = add i32 %3195, 0
  %3197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3197, %dx.types.Handle %107, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = extractvalue %dx.types.ResRet.f32 %3198, 3
  %3203 = and i32 %3192, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = lshr i32 %3192, 8
  %3206 = and i32 %3205, 255
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3202, %3204
  %3209 = fadd fast float %3208, %3207
  %3210 = fmul fast float %3209, 0x3F70101000000000
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 512
  %3214 = icmp eq i32 %3213, 0
  br i1 %3214, label %3223, label %3215

; <label>:3215                                    ; preds = %3190
  %3216 = add i32 %62, 500
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = add i32 %3218, 0
  %3220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3220, %dx.types.Handle %108, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  br label %3223

; <label>:3223                                    ; preds = %3215, %3190
  %3224 = phi float [ %3222, %3215 ], [ 1.000000e+00, %3190 ]
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 33554432
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3335, label %3229

; <label>:3229                                    ; preds = %3223
  %3230 = add i32 %62, 272
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 65535
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = lshr i32 %3232, 16
  %3236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3235)  ; LegacyF16ToF32(value)
  %3237 = add i32 %62, 276
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 65535
  %3241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3240)  ; LegacyF16ToF32(value)
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = lshr i32 %3243, 24
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101020000000
  %3247 = and i32 %3243, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = fmul fast float %3248, 0x3F70101020000000
  %3250 = lshr i32 %3243, 8
  %3251 = and i32 %3250, 255
  %3252 = uitofp i32 %3251 to float
  %3253 = fmul fast float %3252, 0x3F70101020000000
  %3254 = lshr i32 %3243, 16
  %3255 = and i32 %3254, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = fmul fast float %3256, 0x3F70101020000000
  %3258 = add i32 %62, 268
  %3259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3258, i32 undef)  ; BufferLoad(srv,index,wot)
  %3260 = extractvalue %dx.types.ResRet.i32 %3259, 0
  %3261 = lshr i32 %3260, 24
  %3262 = uitofp i32 %3261 to float
  %3263 = fmul fast float %3262, 0x3F70101020000000
  %3264 = and i32 %3260, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = fmul fast float %3265, 0x3F70101020000000
  %3267 = lshr i32 %3260, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101020000000
  %3271 = lshr i32 %3260, 16
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = bitcast float %3199 to i32
  %3276 = ashr i32 %3275, 1
  %3277 = sub nsw i32 1597463174, %3276
  %3278 = bitcast i32 %3277 to float
  %3279 = fmul fast float %3199, 5.000000e-01
  %3280 = fmul fast float %3278, %3278
  %3281 = fmul fast float %3280, %3279
  %3282 = fsub fast float 1.500000e+00, %3281
  %3283 = fmul fast float %3278, %3199
  %3284 = fmul fast float %3283, %3282
  %3285 = bitcast float %3200 to i32
  %3286 = ashr i32 %3285, 1
  %3287 = sub nsw i32 1597463174, %3286
  %3288 = bitcast i32 %3287 to float
  %3289 = fmul fast float %3200, 5.000000e-01
  %3290 = fmul fast float %3288, %3288
  %3291 = fmul fast float %3290, %3289
  %3292 = fsub fast float 1.500000e+00, %3291
  %3293 = fmul fast float %3288, %3200
  %3294 = fmul fast float %3293, %3292
  %3295 = bitcast float %3201 to i32
  %3296 = ashr i32 %3295, 1
  %3297 = sub nsw i32 1597463174, %3296
  %3298 = bitcast i32 %3297 to float
  %3299 = fmul fast float %3201, 5.000000e-01
  %3300 = fmul fast float %3298, %3298
  %3301 = fmul fast float %3300, %3299
  %3302 = fsub fast float 1.500000e+00, %3301
  %3303 = fmul fast float %3298, %3201
  %3304 = fmul fast float %3303, %3302
  %3305 = fsub fast float %3284, %3266
  %3306 = fsub fast float %3294, %3270
  %3307 = fsub fast float %3304, %3274
  %3308 = fmul fast float %3305, %3234
  %3309 = fmul fast float %3306, %3236
  %3310 = fmul fast float %3307, %3241
  %3311 = fadd fast float %3308, %3249
  %3312 = fadd fast float %3309, %3253
  %3313 = fadd fast float %3310, %3257
  %3314 = call float @dx.op.unary.f32(i32 7, float %3311)  ; Saturate(value)
  %3315 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3316 = call float @dx.op.unary.f32(i32 7, float %3313)  ; Saturate(value)
  %3317 = fmul fast float %3314, %3314
  %3318 = fmul fast float %3315, %3315
  %3319 = fmul fast float %3316, %3316
  %3320 = fsub fast float %3317, %3199
  %3321 = fsub fast float %3318, %3200
  %3322 = fsub fast float %3319, %3201
  %3323 = fmul fast float %3320, %3224
  %3324 = fmul fast float %3321, %3224
  %3325 = fmul fast float %3322, %3224
  %3326 = fadd fast float %3323, %3199
  %3327 = fadd fast float %3324, %3200
  %3328 = fadd fast float %3325, %3201
  %3329 = fadd fast float %3246, %3210
  %3330 = fsub fast float %3329, %3263
  %3331 = call float @dx.op.unary.f32(i32 7, float %3330)  ; Saturate(value)
  %3332 = fsub fast float %3331, %3210
  %3333 = fmul fast float %3332, %3224
  %3334 = fadd fast float %3333, %3210
  br label %3388

; <label>:3335                                    ; preds = %3223
  %3336 = and i32 %3226, 134217728
  %3337 = icmp eq i32 %3336, 0
  br i1 %3337, label %3372, label %3338

; <label>:3338                                    ; preds = %3335
  %3339 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %3340 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3341 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %3342 = fadd fast float %3339, -5.000000e-01
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fmul fast float %3342, %3224
  %3346 = fmul fast float %3343, %3224
  %3347 = fmul fast float %3344, %3224
  %3348 = fadd fast float %3345, 5.000000e-01
  %3349 = fadd fast float %3346, 5.000000e-01
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = call float @dx.op.unary.f32(i32 24, float %3199)  ; Sqrt(value)
  %3352 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3353 = call float @dx.op.unary.f32(i32 24, float %3201)  ; Sqrt(value)
  %3354 = fmul fast float %3348, 2.000000e+00
  %3355 = fsub fast float 1.000000e+00, %3354
  %3356 = fmul fast float %3355, %3351
  %3357 = fadd fast float %3356, %3354
  %3358 = fmul fast float %3357, %3351
  %3359 = fmul fast float %3349, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3352
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3352
  %3364 = fmul fast float %3350, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3353
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3353
  %3369 = fmul fast float %3358, %3358
  %3370 = fmul fast float %3363, %3363
  %3371 = fmul fast float %3368, %3368
  br label %3388

; <label>:3372                                    ; preds = %3335
  %3373 = fmul fast float %419, %419
  %3374 = fmul fast float %423, %423
  %3375 = fmul fast float %427, %427
  %3376 = fadd fast float %3373, -1.000000e+00
  %3377 = fadd fast float %3374, -1.000000e+00
  %3378 = fadd fast float %3375, -1.000000e+00
  %3379 = fmul fast float %3224, %3376
  %3380 = fmul fast float %3224, %3377
  %3381 = fmul fast float %3224, %3378
  %3382 = fadd fast float %3379, 1.000000e+00
  %3383 = fadd fast float %3380, 1.000000e+00
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fmul fast float %3382, %3199
  %3386 = fmul fast float %3383, %3200
  %3387 = fmul fast float %3384, %3201
  br label %3388

; <label>:3388                                    ; preds = %3372, %3338, %3229, %3185
  %3389 = phi float [ %3334, %3229 ], [ %3210, %3338 ], [ %3210, %3372 ], [ 0x3FA23C0BE0000000, %3185 ]
  %3390 = phi float [ %3326, %3229 ], [ %3369, %3338 ], [ %3385, %3372 ], [ 1.000000e+00, %3185 ]
  %3391 = phi float [ %3327, %3229 ], [ %3370, %3338 ], [ %3386, %3372 ], [ 1.000000e+00, %3185 ]
  %3392 = phi float [ %3328, %3229 ], [ %3371, %3338 ], [ %3387, %3372 ], [ 1.000000e+00, %3185 ]
  %3393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3394 = extractvalue %dx.types.CBufRet.i32 %3393, 1
  %3395 = and i32 %3394, 1
  %3396 = icmp ne i32 %3395, 0
  %3397 = add i32 %62, 356
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 32
  %3401 = icmp ne i32 %3400, 0
  %3402 = and i1 %3396, %3401
  %3403 = select i1 %3402, float 1.000000e+00, float %3390
  %3404 = select i1 %3402, float 0x3FD3333340000000, float %3391
  %3405 = select i1 %3402, float 0x3FD3333340000000, float %3392
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 32
  %3409 = icmp eq i32 %3408, 0
  br i1 %3409, label %3482, label %3410

; <label>:3410                                    ; preds = %3388
  %3411 = add i32 %62, 140
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %62, 436
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = add i32 %3416, 0
  %3418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3418, %dx.types.Handle %107, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3424 = and i32 %3413, 255
  %3425 = uitofp i32 %3424 to float
  %3426 = lshr i32 %3413, 8
  %3427 = and i32 %3426, 255
  %3428 = uitofp i32 %3427 to float
  %3429 = lshr i32 %3413, 16
  %3430 = and i32 %3429, 255
  %3431 = uitofp i32 %3430 to float
  %3432 = fmul fast float %3431, 0x3F70101000000000
  %3433 = fmul fast float %3420, %3425
  %3434 = fadd fast float %3433, %3428
  %3435 = fmul fast float %3434, 0x3F70101000000000
  %3436 = fadd fast float %3421, -5.000000e-01
  %3437 = fadd fast float %3423, -5.000000e-01
  %3438 = fmul fast float %3436, %3432
  %3439 = fmul fast float %3437, %3432
  %3440 = fadd fast float %3438, 5.000000e-01
  %3441 = fadd fast float %3439, 5.000000e-01
  %3442 = fmul fast float %3440, 2.000000e+00
  %3443 = fadd fast float %3442, -1.000000e+00
  %3444 = fmul fast float %3441, 2.000000e+00
  %3445 = fadd fast float %3444, -1.000000e+00
  %3446 = fadd fast float %3443, %3445
  %3447 = fmul fast float %3446, 5.000000e-01
  %3448 = fsub fast float %3443, %3445
  %3449 = fmul fast float %3448, 5.000000e-01
  %3450 = call float @dx.op.unary.f32(i32 6, float %3447)  ; FAbs(value)
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3453 = fsub fast float %3451, %3452
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3449, float %3453, float %3447, float %3449, float %3453)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = call float @dx.op.unary.f32(i32 25, float %3454)  ; Rsqrt(value)
  %3456 = fmul fast float %3447, %3455
  %3457 = fmul fast float %3449, %3455
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 67108864
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3478, label %3462

; <label>:3462                                    ; preds = %3410
  %3463 = add i32 %62, 328
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 65535
  %3467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3466)  ; LegacyF16ToF32(value)
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 65535
  %3471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3470)  ; LegacyF16ToF32(value)
  %3472 = lshr i32 %3465, 16
  %3473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3472)  ; LegacyF16ToF32(value)
  %3474 = fsub fast float %3435, %3473
  %3475 = fmul fast float %3474, %3467
  %3476 = fadd fast float %3475, %3471
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  br label %3478

; <label>:3478                                    ; preds = %3462, %3410
  %3479 = phi float [ %3477, %3462 ], [ %3435, %3410 ]
  %3480 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %2899, float %2900)  ; Dot2(ax,ay,bx,by)
  %3481 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %2901, float %2902)  ; Dot2(ax,ay,bx,by)
  br label %3482

; <label>:3482                                    ; preds = %3478, %3388
  %3483 = phi float [ %3479, %3478 ], [ 0x3FD6666660000000, %3388 ]
  %3484 = phi float [ %3480, %3478 ], [ 0.000000e+00, %3388 ]
  %3485 = phi float [ %3481, %3478 ], [ 0.000000e+00, %3388 ]
  %3486 = phi float [ %3422, %3478 ], [ 1.000000e+00, %3388 ]
  %3487 = add i32 %62, 208
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = lshr i32 %3489, 22
  %3491 = shl nuw nsw i32 %3490, 5
  %3492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3491)  ; LegacyF16ToF32(value)
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 64
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3530, label %3497

; <label>:3497                                    ; preds = %3482
  %3498 = add i32 %62, 452
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = add i32 %3500, 0
  %3502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 131072
  %3506 = icmp eq i32 %3505, 0
  %3507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3502, %dx.types.Handle %107, float %2995, float %2996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = fmul fast float %3508, %407
  %3512 = fmul fast float %3509, %410
  %3513 = fmul fast float %3510, %413
  br i1 %3506, label %3520, label %3514

; <label>:3514                                    ; preds = %3497
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = fmul fast float %3516, %3511
  %3518 = fmul fast float %3516, %3512
  %3519 = fmul fast float %3516, %3513
  br label %3520

; <label>:3520                                    ; preds = %3514, %3497
  %3521 = phi float [ %3517, %3514 ], [ %3511, %3497 ]
  %3522 = phi float [ %3518, %3514 ], [ %3512, %3497 ]
  %3523 = phi float [ %3519, %3514 ], [ %3513, %3497 ]
  %3524 = fmul fast float %3521, %3492
  %3525 = select i1 %264, float %3524, float %3521
  %3526 = call float @dx.op.dot3.f32(i32 55, float %3525, float %3522, float %3523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3527 = select i1 %264, float 0.000000e+00, float %3521
  %3528 = select i1 %264, float %3526, float %3522
  %3529 = select i1 %264, float 0.000000e+00, float %3523
  br label %3530

; <label>:3530                                    ; preds = %3520, %3482
  %3531 = phi float [ %3527, %3520 ], [ 0.000000e+00, %3482 ]
  %3532 = phi float [ %3528, %3520 ], [ 0.000000e+00, %3482 ]
  %3533 = phi float [ %3529, %3520 ], [ 0.000000e+00, %3482 ]
  %3534 = add i32 %62, 144
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = lshr i32 %3536, 8
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3403, float %3404, float %3405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = fmul fast float %3541, %3542
  %3544 = fadd fast float %3543, %3538
  %3545 = fmul fast float %3544, 0x3F70101020000000
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  br i1 %2887, label %3547, label %3555

; <label>:3547                                    ; preds = %3530
  %3548 = fsub fast float 1.000000e+00, %3183
  %3549 = fmul fast float %3548, %2876
  %3550 = fmul fast float %3548, %2877
  %3551 = fmul fast float %3548, %2878
  %3552 = fmul fast float %3548, %2879
  %3553 = fmul fast float %3548, %2880
  %3554 = fmul fast float %3548, %2881
  br label %3555

; <label>:3555                                    ; preds = %3547, %3530
  %3556 = phi float [ %3549, %3547 ], [ %2876, %3530 ]
  %3557 = phi float [ %3550, %3547 ], [ %2877, %3530 ]
  %3558 = phi float [ %3551, %3547 ], [ %2878, %3530 ]
  %3559 = phi float [ %3552, %3547 ], [ %2879, %3530 ]
  %3560 = phi float [ %3553, %3547 ], [ %2880, %3530 ]
  %3561 = phi float [ %3554, %3547 ], [ %2881, %3530 ]
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = and i32 %3563, 3
  %3565 = icmp eq i32 %3564, 3
  br i1 %3565, label %3644, label %3566

; <label>:3566                                    ; preds = %3555
  %3567 = and i32 %3563, 16
  %3568 = icmp ne i32 %3567, 0
  %3569 = select i1 %3568, float %3183, float 0.000000e+00
  %3570 = icmp eq i32 %3564, 0
  br i1 %3570, label %3571, label %3599

; <label>:3571                                    ; preds = %3566
  %3572 = and i32 %3563, 64
  %3573 = icmp ne i32 %3572, 0
  %3574 = select i1 %3573, float %3183, float 0.000000e+00
  %3575 = fsub fast float %3403, %3556
  %3576 = fsub fast float %3404, %3557
  %3577 = fsub fast float %3405, %3558
  %3578 = fmul fast float %3569, %3575
  %3579 = fmul fast float %3569, %3576
  %3580 = fmul fast float %3569, %3577
  %3581 = fadd fast float %3578, %3556
  %3582 = fadd fast float %3579, %3557
  %3583 = fadd fast float %3580, %3558
  %3584 = fsub fast float %3389, %2882
  %3585 = fmul fast float %3569, %3584
  %3586 = fadd fast float %3585, %2882
  %3587 = fsub fast float %3531, %3559
  %3588 = fsub fast float %3532, %3560
  %3589 = fsub fast float %3533, %3561
  %3590 = fmul fast float %3574, %3587
  %3591 = fmul fast float %3574, %3588
  %3592 = fmul fast float %3574, %3589
  %3593 = fadd fast float %3590, %3559
  %3594 = fadd fast float %3591, %3560
  %3595 = fadd fast float %3592, %3561
  %3596 = fsub fast float %3546, %2885
  %3597 = fmul fast float %3569, %3596
  %3598 = fadd fast float %3597, %2885
  br label %3644

; <label>:3599                                    ; preds = %3566
  %3600 = icmp eq i32 %3564, 1
  br i1 %3600, label %3601, label %3614

; <label>:3601                                    ; preds = %3599
  %3602 = fadd fast float %3403, -1.000000e+00
  %3603 = fadd fast float %3404, -1.000000e+00
  %3604 = fadd fast float %3405, -1.000000e+00
  %3605 = fmul fast float %3569, %3602
  %3606 = fmul fast float %3569, %3603
  %3607 = fmul fast float %3569, %3604
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fadd fast float %3607, 1.000000e+00
  %3611 = fmul fast float %3608, %3556
  %3612 = fmul fast float %3609, %3557
  %3613 = fmul fast float %3610, %3558
  br label %3644

; <label>:3614                                    ; preds = %3599
  %3615 = icmp eq i32 %3564, 2
  br i1 %3615, label %3616, label %3644

; <label>:3616                                    ; preds = %3614
  %3617 = call float @dx.op.unary.f32(i32 24, float %3403)  ; Sqrt(value)
  %3618 = call float @dx.op.unary.f32(i32 24, float %3404)  ; Sqrt(value)
  %3619 = call float @dx.op.unary.f32(i32 24, float %3405)  ; Sqrt(value)
  %3620 = fadd fast float %3617, -5.000000e-01
  %3621 = fadd fast float %3618, -5.000000e-01
  %3622 = fadd fast float %3619, -5.000000e-01
  %3623 = fmul fast float %3620, %3569
  %3624 = fmul fast float %3621, %3569
  %3625 = fmul fast float %3622, %3569
  %3626 = fadd fast float %3623, 5.000000e-01
  %3627 = fadd fast float %3624, 5.000000e-01
  %3628 = fadd fast float %3625, 5.000000e-01
  %3629 = fmul fast float %3626, 2.000000e+00
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3630, %3556
  %3632 = fadd fast float %3631, %3629
  %3633 = fmul fast float %3632, %3556
  %3634 = fmul fast float %3627, 2.000000e+00
  %3635 = fsub fast float 1.000000e+00, %3634
  %3636 = fmul fast float %3635, %3557
  %3637 = fadd fast float %3636, %3634
  %3638 = fmul fast float %3637, %3557
  %3639 = fmul fast float %3628, 2.000000e+00
  %3640 = fsub fast float 1.000000e+00, %3639
  %3641 = fmul fast float %3640, %3558
  %3642 = fadd fast float %3641, %3639
  %3643 = fmul fast float %3642, %3558
  br label %3644

; <label>:3644                                    ; preds = %3616, %3614, %3601, %3571, %3555
  %3645 = phi float [ %3556, %3555 ], [ %3633, %3616 ], [ %3556, %3614 ], [ %3611, %3601 ], [ %3581, %3571 ]
  %3646 = phi float [ %3557, %3555 ], [ %3638, %3616 ], [ %3557, %3614 ], [ %3612, %3601 ], [ %3582, %3571 ]
  %3647 = phi float [ %3558, %3555 ], [ %3643, %3616 ], [ %3558, %3614 ], [ %3613, %3601 ], [ %3583, %3571 ]
  %3648 = phi float [ %3559, %3555 ], [ %3559, %3616 ], [ %3559, %3614 ], [ %3559, %3601 ], [ %3593, %3571 ]
  %3649 = phi float [ %3560, %3555 ], [ %3560, %3616 ], [ %3560, %3614 ], [ %3560, %3601 ], [ %3594, %3571 ]
  %3650 = phi float [ %3561, %3555 ], [ %3561, %3616 ], [ %3561, %3614 ], [ %3561, %3601 ], [ %3595, %3571 ]
  %3651 = phi float [ %2882, %3555 ], [ %2882, %3616 ], [ %2882, %3614 ], [ %2882, %3601 ], [ %3586, %3571 ]
  %3652 = phi float [ %2885, %3555 ], [ %2885, %3616 ], [ %2885, %3614 ], [ %2885, %3601 ], [ %3598, %3571 ]
  %3653 = and i32 %3563, 12
  %3654 = icmp eq i32 %3653, 12
  br i1 %3654, label %3727, label %3655

; <label>:3655                                    ; preds = %3644
  %3656 = and i32 %3563, 2097184
  %3657 = icmp eq i32 %3656, 2097184
  %3658 = select i1 %3657, float %3183, float 0.000000e+00
  %3659 = and i32 %3563, 4194336
  %3660 = icmp eq i32 %3659, 4194336
  %3661 = select i1 %3660, float %3183, float 0.000000e+00
  %3662 = and i32 %3563, 8388640
  %3663 = icmp eq i32 %3662, 8388640
  %3664 = select i1 %3663, float %3183, float 0.000000e+00
  %3665 = icmp eq i32 %3653, 0
  br i1 %3665, label %3666, label %3679

; <label>:3666                                    ; preds = %3655
  %3667 = fsub fast float %3484, %2874
  %3668 = fsub fast float %3485, %2875
  %3669 = fmul fast float %3658, %3667
  %3670 = fmul fast float %3658, %3668
  %3671 = fadd fast float %3669, %2874
  %3672 = fadd fast float %3670, %2875
  %3673 = fsub fast float %3486, %2884
  %3674 = fmul fast float %3661, %3673
  %3675 = fadd fast float %3674, %2884
  %3676 = fsub fast float %3483, %2883
  %3677 = fmul fast float %3664, %3676
  %3678 = fadd fast float %3677, %2883
  br label %3727

; <label>:3679                                    ; preds = %3655
  %3680 = icmp eq i32 %3653, 4
  br i1 %3680, label %3681, label %3713

; <label>:3681                                    ; preds = %3679
  %3682 = fmul fast float %3658, %3484
  %3683 = fmul fast float %3658, %3485
  %3684 = fadd fast float %3682, %2874
  %3685 = fadd fast float %3683, %2875
  %3686 = call float @dx.op.binary.f32(i32 36, float %2884, float %3486)  ; FMin(a,b)
  %3687 = fsub fast float %3686, %2884
  %3688 = fmul fast float %3687, %3661
  %3689 = fadd fast float %3688, %2884
  %3690 = fadd fast float %3483, %2883
  %3691 = fmul fast float %3690, 0x3FF337FAE0000000
  %3692 = fmul fast float %2883, %2883
  %3693 = fmul fast float %3483, %3483
  %3694 = fadd fast float %3693, %3692
  %3695 = fmul fast float %3694, 0x3FE5152B00000000
  %3696 = fmul fast float %2883, 0xBFCC1F85E0000000
  %3697 = fmul fast float %3696, %3483
  %3698 = fadd fast float %3697, 0xBFE1363700000000
  %3699 = fadd fast float %3698, %3691
  %3700 = fsub fast float %3699, %3695
  %3701 = fmul fast float %3690, 0x3FBA6F0D00000000
  %3702 = fmul fast float %3694, 0x3FD0432880000000
  %3703 = fmul fast float %2883, 0xBFEF110800000000
  %3704 = fmul fast float %3703, %3483
  %3705 = fadd fast float %3704, 1.000000e+00
  %3706 = fsub fast float %3705, %3701
  %3707 = fadd fast float %3706, %3702
  %3708 = fdiv fast float %3700, %3707
  %3709 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3710 = fsub fast float %3709, %2883
  %3711 = fmul fast float %3710, %3664
  %3712 = fadd fast float %3711, %2883
  br label %3727

; <label>:3713                                    ; preds = %3679
  %3714 = icmp eq i32 %3653, 8
  br i1 %3714, label %3715, label %3727

; <label>:3715                                    ; preds = %3713
  %3716 = fmul fast float %3658, %3484
  %3717 = fmul fast float %3658, %3485
  %3718 = fadd fast float %3716, %2874
  %3719 = fadd fast float %3717, %2875
  %3720 = call float @dx.op.binary.f32(i32 36, float %2884, float %3486)  ; FMin(a,b)
  %3721 = fsub fast float %3720, %2884
  %3722 = fmul fast float %3721, %3661
  %3723 = fadd fast float %3722, %2884
  %3724 = fsub fast float %3483, %2883
  %3725 = fmul fast float %3664, %3724
  %3726 = fadd fast float %3725, %2883
  br label %3727

; <label>:3727                                    ; preds = %3715, %3713, %3681, %3666, %3644, %3182, %2886, %2873
  %3728 = phi float [ %2874, %3644 ], [ %2874, %3182 ], [ %2874, %2873 ], [ %2874, %2886 ], [ %3671, %3666 ], [ %3684, %3681 ], [ %2874, %3713 ], [ %3718, %3715 ]
  %3729 = phi float [ %2875, %3644 ], [ %2875, %3182 ], [ %2875, %2873 ], [ %2875, %2886 ], [ %3672, %3666 ], [ %3685, %3681 ], [ %2875, %3713 ], [ %3719, %3715 ]
  %3730 = phi float [ %3645, %3644 ], [ %2876, %3182 ], [ %2876, %2873 ], [ %2876, %2886 ], [ %3645, %3666 ], [ %3645, %3681 ], [ %3645, %3713 ], [ %3645, %3715 ]
  %3731 = phi float [ %3646, %3644 ], [ %2877, %3182 ], [ %2877, %2873 ], [ %2877, %2886 ], [ %3646, %3666 ], [ %3646, %3681 ], [ %3646, %3713 ], [ %3646, %3715 ]
  %3732 = phi float [ %3647, %3644 ], [ %2878, %3182 ], [ %2878, %2873 ], [ %2878, %2886 ], [ %3647, %3666 ], [ %3647, %3681 ], [ %3647, %3713 ], [ %3647, %3715 ]
  %3733 = phi float [ %3648, %3644 ], [ %2879, %3182 ], [ %2879, %2873 ], [ %2879, %2886 ], [ %3648, %3666 ], [ %3648, %3681 ], [ %3648, %3713 ], [ %3648, %3715 ]
  %3734 = phi float [ %3649, %3644 ], [ %2880, %3182 ], [ %2880, %2873 ], [ %2880, %2886 ], [ %3649, %3666 ], [ %3649, %3681 ], [ %3649, %3713 ], [ %3649, %3715 ]
  %3735 = phi float [ %3650, %3644 ], [ %2881, %3182 ], [ %2881, %2873 ], [ %2881, %2886 ], [ %3650, %3666 ], [ %3650, %3681 ], [ %3650, %3713 ], [ %3650, %3715 ]
  %3736 = phi float [ %3651, %3644 ], [ %2882, %3182 ], [ %2882, %2873 ], [ %2882, %2886 ], [ %3651, %3666 ], [ %3651, %3681 ], [ %3651, %3713 ], [ %3651, %3715 ]
  %3737 = phi float [ %2883, %3644 ], [ %2883, %3182 ], [ %2883, %2873 ], [ %2883, %2886 ], [ %3678, %3666 ], [ %3712, %3681 ], [ %2883, %3713 ], [ %3726, %3715 ]
  %3738 = phi float [ %2884, %3644 ], [ %2884, %3182 ], [ %2884, %2873 ], [ %2884, %2886 ], [ %3675, %3666 ], [ %3689, %3681 ], [ %2884, %3713 ], [ %3723, %3715 ]
  %3739 = phi float [ %3652, %3644 ], [ %2885, %3182 ], [ %2885, %2873 ], [ %2885, %2886 ], [ %3652, %3666 ], [ %3652, %3681 ], [ %3652, %3713 ], [ %3652, %3715 ]
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3742 = call float @dx.op.dot2.f32(i32 54, float %3728, float %3729, float %3728, float %3729)  ; Dot2(ax,ay,bx,by)
  %3743 = fmul fast float %3742, 0x3FE3333340000000
  %3744 = fsub fast float 1.000000e+00, %3743
  %3745 = call float @dx.op.dot3.f32(i32 55, float %3728, float %3729, float %3744, float %3728, float %3729, float %3744)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = call float @dx.op.unary.f32(i32 25, float %3745)  ; Rsqrt(value)
  %3747 = fmul fast float %3746, %3728
  %3748 = fmul fast float %3746, %3729
  %3749 = fmul fast float %3744, %3746
  %3750 = fmul fast float %3749, %120
  %3751 = fmul fast float %3749, %122
  %3752 = fmul fast float %3749, %124
  %3753 = fmul fast float %3747, %83
  %3754 = fmul fast float %3747, %84
  %3755 = fmul fast float %3747, %85
  %3756 = fadd fast float %3750, %3753
  %3757 = fadd fast float %3751, %3754
  %3758 = fadd fast float %3752, %3755
  %3759 = fmul fast float %134, %3748
  %3760 = fmul fast float %135, %3748
  %3761 = fmul fast float %136, %3748
  %3762 = fadd fast float %3756, %3759
  %3763 = fadd fast float %3757, %3760
  %3764 = fadd fast float %3758, %3761
  %3765 = call float @dx.op.dot3.f32(i32 55, float %3762, float %3763, float %3764, float %3762, float %3763, float %3764)  ; Dot3(ax,ay,az,bx,by,bz)
  %3766 = call float @dx.op.unary.f32(i32 25, float %3765)  ; Rsqrt(value)
  %3767 = fmul fast float %3762, %3766
  %3768 = fmul fast float %3763, %3766
  %3769 = fmul fast float %3764, %3766
  %3770 = and i32 %64, 1
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3772, label %4284

; <label>:3772                                    ; preds = %3727
  %3773 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %3774 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %3775 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %3776 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %3777 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %3778 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %3779 = fadd fast float %3773, %170
  %3780 = fadd fast float %3774, %171
  %3781 = fadd fast float %3775, %172
  %3782 = fadd fast float %3776, %170
  %3783 = fadd fast float %3777, %171
  %3784 = fadd fast float %3778, %172
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 2
  %3791 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3792 = fmul fast float %3786, %111
  %3793 = fmul fast float %3792, %3790
  %3794 = fmul fast float %3787, %112
  %3795 = fmul fast float %3794, %3791
  %3796 = fptoui float %3793 to i32
  %3797 = fptoui float %3795 to i32
  %3798 = fadd fast float %3786, -1.000000e+00
  %3799 = fadd fast float %3787, -1.000000e+00
  %3800 = fptoui float %3798 to i32
  %3801 = fptoui float %3799 to i32
  %3802 = call i32 @dx.op.binary.i32(i32 40, i32 %3796, i32 %3800)  ; UMin(a,b)
  %3803 = call i32 @dx.op.binary.i32(i32 40, i32 %3797, i32 %3801)  ; UMin(a,b)
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 2
  %3806 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %3807 = fmul fast float %3805, %99
  %3808 = fsub fast float %3807, %3806
  %3809 = fadd fast float %3788, -1.000000e+00
  %3810 = call float @dx.op.binary.f32(i32 36, float %3808, float %3809)  ; FMin(a,b)
  %3811 = fptoui float %3810 to i32
  %3812 = fptoui float %3786 to i32
  %3813 = fptoui float %3787 to i32
  %3814 = mul i32 %3811, %3813
  %3815 = add i32 %3814, %3803
  %3816 = mul i32 %3815, %3812
  %3817 = add i32 %3816, %3802
  %3818 = shl i32 %3817, 2
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = and i32 %3820, 1023
  %3822 = lshr i32 %3820, 10
  %3823 = icmp eq i32 %3821, 0
  br i1 %3823, label %4252, label %3824

; <label>:3824                                    ; preds = %3772
  %3825 = and i32 %3820, 1023
  br label %3826

; <label>:3826                                    ; preds = %3953, %3824
  %3827 = phi i32 [ %3903, %3953 ], [ 0, %3824 ]
  %3828 = phi float [ %3954, %3953 ], [ 0.000000e+00, %3824 ]
  %3829 = phi float [ %3955, %3953 ], [ %1174, %3824 ]
  %3830 = phi float [ %3956, %3953 ], [ %3741, %3824 ]
  %3831 = phi float [ %3957, %3953 ], [ %3739, %3824 ]
  %3832 = phi float [ %3958, %3953 ], [ 0.000000e+00, %3824 ]
  %3833 = phi float [ %3959, %3953 ], [ 0.000000e+00, %3824 ]
  %3834 = phi float [ %3960, %3953 ], [ %3733, %3824 ]
  %3835 = phi float [ %3961, %3953 ], [ %3734, %3824 ]
  %3836 = phi float [ %3962, %3953 ], [ %3735, %3824 ]
  %3837 = phi float [ %3963, %3953 ], [ %3767, %3824 ]
  %3838 = phi float [ %3964, %3953 ], [ %3768, %3824 ]
  %3839 = phi float [ %3965, %3953 ], [ %3769, %3824 ]
  %3840 = phi float [ %3966, %3953 ], [ %3738, %3824 ]
  %3841 = phi float [ %3967, %3953 ], [ %3737, %3824 ]
  %3842 = phi float [ %3968, %3953 ], [ 0.000000e+00, %3824 ]
  %3843 = phi float [ %3969, %3953 ], [ %3736, %3824 ]
  %3844 = phi float [ %3970, %3953 ], [ %3730, %3824 ]
  %3845 = phi float [ %3971, %3953 ], [ %3731, %3824 ]
  %3846 = phi float [ %3972, %3953 ], [ %3732, %3824 ]
  %3847 = add nuw nsw i32 %3827, %3822
  %3848 = shl i32 %3847, 2
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = shl i32 %3850, 8
  %3852 = or i32 %3851, 48
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = extractvalue %dx.types.ResRet.f32 %3853, 3
  %3858 = or i32 %3851, 64
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.i32 %3859, 1
  %3862 = or i32 %3851, 80
  %3863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3862, i32 undef)  ; BufferLoad(srv,index,wot)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 2
  %3865 = extractvalue %dx.types.ResRet.f32 %3863, 3
  %3866 = or i32 %3851, 96
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = extractvalue %dx.types.ResRet.f32 %3867, 3
  %3872 = or i32 %3851, 112
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3875 = or i32 %3851, 128
  %3876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.ResRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.ResRet.f32 %3876, 2
  %3880 = extractvalue %dx.types.ResRet.f32 %3876, 3
  %3881 = or i32 %3851, 144
  %3882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.f32 %3882, 0
  %3884 = extractvalue %dx.types.ResRet.f32 %3882, 1
  %3885 = extractvalue %dx.types.ResRet.f32 %3882, 2
  %3886 = extractvalue %dx.types.ResRet.f32 %3882, 3
  %3887 = or i32 %3851, 160
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = or i32 %3851, 192
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = or i32 %3851, 208
  %3897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = or i32 %3851, 248
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = add nuw nsw i32 %3827, 1
  %3904 = bitcast float %3857 to i32
  %3905 = and i32 %3904, 512
  %3906 = icmp eq i32 %3905, 0
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = extractvalue %dx.types.ResRet.f32 %3907, 3
  %3912 = call float @dx.op.dot4.f32(i32 56, float %3908, float %3909, float %3910, float %3911, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3913 = or i32 %3851, 16
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = call float @dx.op.dot4.f32(i32 56, float %3915, float %3916, float %3917, float %3918, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3920 = or i32 %3851, 32
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = call float @dx.op.dot4.f32(i32 56, float %3922, float %3923, float %3924, float %3925, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3927 = call float @dx.op.unary.f32(i32 27, float %3912)  ; Round_ni(value)
  %3928 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3929 = call float @dx.op.unary.f32(i32 27, float %3919)  ; Round_ni(value)
  %3930 = call float @dx.op.unary.f32(i32 6, float %3929)  ; FAbs(value)
  %3931 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3932 = call float @dx.op.unary.f32(i32 27, float %3931)  ; Round_ni(value)
  %3933 = fadd fast float %3930, %3928
  %3934 = fadd fast float %3933, %3932
  %3935 = fcmp fast oeq float %3934, 0.000000e+00
  %3936 = call float @dx.op.dot4.f32(i32 56, float %3908, float %3909, float %3910, float %3911, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3937 = call float @dx.op.dot4.f32(i32 56, float %3915, float %3916, float %3917, float %3918, float %3779, float %3780, float %3781, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3938 = call float @dx.op.dot4.f32(i32 56, float %3908, float %3909, float %3910, float %3911, float %3782, float %3783, float %3784, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3939 = call float @dx.op.dot4.f32(i32 56, float %3915, float %3916, float %3917, float %3918, float %3782, float %3783, float %3784, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3940 = fsub fast float %3936, %3912
  %3941 = fsub fast float %3938, %3912
  %3942 = fsub fast float %3937, %3919
  %3943 = fsub fast float %3939, %3919
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %3947 = fadd fast float %3946, %3944
  %3948 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3950 = fcmp fast ogt float %3948, %3949
  %3951 = and i1 %3935, %3950
  %3952 = and i1 %3906, %3951
  br i1 %3952, label %3974, label %3953

; <label>:3953                                    ; preds = %4238, %4055, %3974, %3826
  %3954 = phi float [ %3828, %3974 ], [ %4058, %4055 ], [ %4058, %4238 ], [ %3828, %3826 ]
  %3955 = phi float [ %3829, %3974 ], [ %3829, %4055 ], [ %4213, %4238 ], [ %3829, %3826 ]
  %3956 = phi float [ %3830, %3974 ], [ %3830, %4055 ], [ %4212, %4238 ], [ %3830, %3826 ]
  %3957 = phi float [ %3831, %3974 ], [ %3831, %4055 ], [ %4210, %4238 ], [ %3831, %3826 ]
  %3958 = phi float [ %3832, %3974 ], [ %3832, %4055 ], [ %4182, %4238 ], [ %3832, %3826 ]
  %3959 = phi float [ %3833, %3974 ], [ %3833, %4055 ], [ %4180, %4238 ], [ %3833, %3826 ]
  %3960 = phi float [ %3834, %3974 ], [ %3834, %4055 ], [ %4248, %4238 ], [ %3834, %3826 ]
  %3961 = phi float [ %3835, %3974 ], [ %3835, %4055 ], [ %4249, %4238 ], [ %3835, %3826 ]
  %3962 = phi float [ %3836, %3974 ], [ %3836, %4055 ], [ %4250, %4238 ], [ %3836, %3826 ]
  %3963 = phi float [ %3837, %3974 ], [ %3837, %4055 ], [ %4161, %4238 ], [ %3837, %3826 ]
  %3964 = phi float [ %3838, %3974 ], [ %3838, %4055 ], [ %4162, %4238 ], [ %3838, %3826 ]
  %3965 = phi float [ %3839, %3974 ], [ %3839, %4055 ], [ %4163, %4238 ], [ %3839, %3826 ]
  %3966 = phi float [ %3840, %3974 ], [ %3840, %4055 ], [ %4190, %4238 ], [ %3840, %3826 ]
  %3967 = phi float [ %3841, %3974 ], [ %3841, %4055 ], [ %4187, %4238 ], [ %3841, %3826 ]
  %3968 = phi float [ %3842, %3974 ], [ %3842, %4055 ], [ %4184, %4238 ], [ %3842, %3826 ]
  %3969 = phi float [ %3843, %3974 ], [ %3843, %4055 ], [ %4178, %4238 ], [ %3843, %3826 ]
  %3970 = phi float [ %3844, %3974 ], [ %3844, %4055 ], [ %4173, %4238 ], [ %3844, %3826 ]
  %3971 = phi float [ %3845, %3974 ], [ %3845, %4055 ], [ %4174, %4238 ], [ %3845, %3826 ]
  %3972 = phi float [ %3846, %3974 ], [ %3846, %4055 ], [ %4175, %4238 ], [ %3846, %3826 ]
  %3973 = icmp eq i32 %3903, %3825
  br i1 %3973, label %4251, label %3826

; <label>:3974                                    ; preds = %3826
  %3975 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3976 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3863, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3980 = extractvalue %dx.types.ResRet.i32 %3859, 3
  %3981 = extractvalue %dx.types.ResRet.i32 %3859, 2
  %3982 = add i32 %3980, 0
  %3983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3982, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3985 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3983, %dx.types.Handle %3984, float %3912, float %3919, float undef, float undef, i32 0, i32 0, i32 undef, float %3940, float %3942, float undef, float %3941, float %3943, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = fmul fast float %3986, %3979
  %3988 = fadd fast float %3987, %3978
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = fmul fast float %3912, %3868
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %3869, float %3919, float %3990)  ; FMad(a,b,c)
  %3992 = fadd fast float %3991, %3977
  %3993 = fmul fast float %3912, %3870
  %3994 = call float @dx.op.tertiary.f32(i32 46, float %3871, float %3919, float %3993)  ; FMad(a,b,c)
  %3995 = fadd fast float %3994, %3976
  %3996 = fmul fast float %3940, %3868
  %3997 = call float @dx.op.tertiary.f32(i32 46, float %3869, float %3942, float %3996)  ; FMad(a,b,c)
  %3998 = fmul fast float %3940, %3870
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3871, float %3942, float %3998)  ; FMad(a,b,c)
  %4000 = fmul fast float %3941, %3868
  %4001 = call float @dx.op.tertiary.f32(i32 46, float %3869, float %3943, float %4000)  ; FMad(a,b,c)
  %4002 = fmul fast float %3941, %3870
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %3871, float %3943, float %4002)  ; FMad(a,b,c)
  %4004 = add i32 %3981, 0
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4004, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4005, %dx.types.Handle %3984, float %3992, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %4001, float %4003, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = and i32 %3904, 1024
  %4009 = icmp ne i32 %4008, 0
  %4010 = fcmp fast ogt float %4007, 0x3FE0101020000000
  %4011 = uitofp i1 %4010 to float
  %4012 = select i1 %4009, float %4011, float %4007
  %4013 = and i32 %3904, 8192
  %4014 = icmp ne i32 %4013, 0
  %4015 = select i1 %4014, float %3975, float 1.000000e+00
  %4016 = fmul fast float %3912, 2.000000e+00
  %4017 = fadd fast float %4016, -1.000000e+00
  %4018 = call float @dx.op.unary.f32(i32 6, float %4017)  ; FAbs(value)
  %4019 = fmul fast float %4018, %3901
  %4020 = fsub fast float %4019, %3901
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = fmul fast float %3919, 2.000000e+00
  %4023 = fadd fast float %4022, -1.000000e+00
  %4024 = call float @dx.op.unary.f32(i32 6, float %4023)  ; FAbs(value)
  %4025 = fmul fast float %4024, %3902
  %4026 = fsub fast float %4025, %3902
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fmul fast float %3931, %3864
  %4029 = fsub fast float %4028, %3864
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %3989, %4015
  %4032 = fmul fast float %4031, %3986
  %4033 = fmul fast float %4032, %4021
  %4034 = fmul fast float %4033, %4012
  %4035 = fmul fast float %4034, %4027
  %4036 = fmul fast float %4035, %4030
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4040 = fsub fast float %3948, %4039
  %4041 = fmul fast float %4040, %4038
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = fmul fast float %4036, %3865
  %4044 = fadd fast float %4036, %3865
  %4045 = fmul fast float %4044, %3874
  %4046 = fsub fast float %4045, %3874
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = and i32 %3904, 128
  %4049 = icmp ne i32 %4048, 0
  %4050 = select i1 %4049, float %4047, float %4043
  %4051 = fmul fast float %4050, %4042
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = fcmp fast ugt float %4051, %4053
  br i1 %4054, label %4055, label %3953

; <label>:4055                                    ; preds = %3974
  %4056 = select i1 %4014, float %4051, float 0.000000e+00
  %4057 = fadd fast float %4056, %3828
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  br i1 %4014, label %3953, label %4059

; <label>:4059                                    ; preds = %4055
  %4060 = and i32 %3904, 4
  %4061 = and i32 %3904, 8
  %4062 = add i32 %3860, 0
  %4063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4063, %dx.types.Handle %4064, float %3992, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %4001, float %4003, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.ResRet.f32 %4065, 3
  %4070 = bitcast float %3886 to i32
  %4071 = and i32 %4070, 255
  %4072 = uitofp i32 %4071 to float
  %4073 = lshr i32 %4070, 8
  %4074 = and i32 %4073, 255
  %4075 = uitofp i32 %4074 to float
  %4076 = fmul fast float %4069, %4072
  %4077 = fadd fast float %4076, %4075
  %4078 = fmul fast float %4077, 0x3F70101000000000
  %4079 = add i32 %3861, 0
  %4080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4081 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4080, %dx.types.Handle %4064, float %3992, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %4001, float %4003, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4082 = extractvalue %dx.types.ResRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.ResRet.f32 %4081, 1
  %4084 = extractvalue %dx.types.ResRet.f32 %4081, 2
  %4085 = extractvalue %dx.types.ResRet.f32 %4081, 3
  %4086 = bitcast float %3880 to i32
  %4087 = and i32 %4086, 255
  %4088 = uitofp i32 %4087 to float
  %4089 = lshr i32 %4086, 8
  %4090 = and i32 %4089, 255
  %4091 = uitofp i32 %4090 to float
  %4092 = lshr i32 %4086, 16
  %4093 = and i32 %4092, 255
  %4094 = uitofp i32 %4093 to float
  %4095 = fmul fast float %4094, 0x3F70101000000000
  %4096 = fmul fast float %4082, %4088
  %4097 = fadd fast float %4096, %4091
  %4098 = fmul fast float %4097, 0x3F70101000000000
  %4099 = fadd fast float %4083, -5.000000e-01
  %4100 = fadd fast float %4085, -5.000000e-01
  %4101 = fmul fast float %4099, %4095
  %4102 = fmul fast float %4100, %4095
  %4103 = fadd fast float %4101, 5.000000e-01
  %4104 = fadd fast float %4102, 5.000000e-01
  %4105 = fmul fast float %4066, %3889
  %4106 = fmul fast float %4067, %3890
  %4107 = fmul fast float %4068, %3891
  %4108 = fmul fast float %4103, 2.000000e+00
  %4109 = fadd fast float %4108, -1.000000e+00
  %4110 = fmul fast float %4104, 2.000000e+00
  %4111 = fadd fast float %4110, -1.000000e+00
  %4112 = fadd fast float %4109, %4111
  %4113 = fmul fast float %4112, 5.000000e-01
  %4114 = fsub fast float %4109, %4111
  %4115 = fmul fast float %4114, 5.000000e-01
  %4116 = call float @dx.op.unary.f32(i32 6, float %4113)  ; FAbs(value)
  %4117 = fsub fast float 1.000000e+00, %4116
  %4118 = call float @dx.op.unary.f32(i32 6, float %4115)  ; FAbs(value)
  %4119 = fsub fast float %4117, %4118
  %4120 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4115, float %4119, float %4113, float %4115, float %4119)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 25, float %4120)  ; Rsqrt(value)
  %4122 = fmul fast float %4113, %4121
  %4123 = fmul fast float %4115, %4121
  %4124 = fmul fast float %4121, %4119
  %4125 = fmul fast float %4124, %3854
  %4126 = fmul fast float %4124, %3855
  %4127 = fmul fast float %4124, %3856
  %4128 = fmul fast float %4122, %3877
  %4129 = fmul fast float %4122, %3878
  %4130 = fmul fast float %4122, %3879
  %4131 = fadd fast float %4128, %4125
  %4132 = fadd fast float %4129, %4126
  %4133 = fadd fast float %4130, %4127
  %4134 = fmul fast float %4123, %3883
  %4135 = fmul fast float %4123, %3884
  %4136 = fmul fast float %4123, %3885
  %4137 = fadd fast float %4131, %4134
  %4138 = fadd fast float %4132, %4135
  %4139 = fadd fast float %4133, %4136
  %4140 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4138, float %4139, float %4137, float %4138, float %4139)  ; Dot3(ax,ay,az,bx,by,bz)
  %4141 = call float @dx.op.unary.f32(i32 25, float %4140)  ; Rsqrt(value)
  %4142 = fmul fast float %4137, %4141
  %4143 = fmul fast float %4138, %4141
  %4144 = fmul fast float %4139, %4141
  %4145 = icmp ne i32 %4061, 0
  %4146 = select i1 %4145, float 1.000000e+00, float 0.000000e+00
  %4147 = fmul fast float %4051, %4146
  %4148 = and i32 %3904, 1
  %4149 = icmp eq i32 %4148, 0
  br i1 %4149, label %4150, label %4154

; <label>:4150                                    ; preds = %4059
  %4151 = fsub fast float %4142, %3837
  %4152 = fsub fast float %4143, %3838
  %4153 = fsub fast float %4144, %3839
  br label %4154

; <label>:4154                                    ; preds = %4150, %4059
  %4155 = phi float [ %4151, %4150 ], [ %4142, %4059 ]
  %4156 = phi float [ %4152, %4150 ], [ %4143, %4059 ]
  %4157 = phi float [ %4153, %4150 ], [ %4144, %4059 ]
  %4158 = fmul float %4157, %4147
  %4159 = fmul float %4156, %4147
  %4160 = fmul float %4155, %4147
  %4161 = fadd fast float %4160, %3837
  %4162 = fadd fast float %4159, %3838
  %4163 = fadd fast float %4158, %3839
  %4164 = icmp ne i32 %4060, 0
  %4165 = select i1 %4164, float 1.000000e+00, float 0.000000e+00
  %4166 = fmul fast float %4051, %4165
  %4167 = fsub fast float %4105, %3844
  %4168 = fsub fast float %4106, %3845
  %4169 = fsub fast float %4107, %3846
  %4170 = fmul fast float %4167, %4166
  %4171 = fmul fast float %4168, %4166
  %4172 = fmul fast float %4169, %4166
  %4173 = fadd fast float %4170, %3844
  %4174 = fadd fast float %4171, %3845
  %4175 = fadd fast float %4172, %3846
  %4176 = fsub fast float %4078, %3843
  %4177 = fmul fast float %4176, %4166
  %4178 = fadd fast float %4177, %3843
  %4179 = fmul fast float %4166, %3833
  %4180 = fsub fast float %3833, %4179
  %4181 = fmul fast float %4166, %3832
  %4182 = fsub fast float %3832, %4181
  %4183 = fadd fast float %4051, %3842
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fsub fast float %4098, %3841
  %4186 = fmul fast float %4185, %4147
  %4187 = fadd fast float %4186, %3841
  %4188 = fsub fast float %4084, %3840
  %4189 = fmul fast float %4188, %4147
  %4190 = fadd fast float %4189, %3840
  %4191 = call float @dx.op.dot3.f32(i32 55, float %4105, float %4106, float %4107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = fmul fast float %4194, %4191
  %4196 = fadd fast float %4195, %4193
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = bitcast float %3892 to i32
  %4199 = and i32 %4198, 65535
  %4200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4199)  ; LegacyF16ToF32(value)
  %4201 = lshr i32 %4198, 16
  %4202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4201)  ; LegacyF16ToF32(value)
  %4203 = fcmp fast oge float %4200, 0.000000e+00
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = select i1 %4203, float %4200, float %4205
  %4207 = fadd fast float %4206, %4202
  %4208 = fsub fast float %4197, %3831
  %4209 = fmul fast float %4208, %4051
  %4210 = fadd fast float %4209, %3831
  %4211 = fmul fast float %4207, %4051
  %4212 = call float @dx.op.binary.f32(i32 35, float %3830, float %4211)  ; FMax(a,b)
  %4213 = call float @dx.op.binary.f32(i32 35, float %3829, float %4051)  ; FMax(a,b)
  %4214 = and i32 %3904, 16
  %4215 = icmp eq i32 %4214, 0
  br i1 %4215, label %4238, label %4216

; <label>:4216                                    ; preds = %4154
  %4217 = bitcast float %3898 to i32
  %4218 = add i32 %3895, 0
  %4219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4218, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4220 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4219, %dx.types.Handle %4064, float %3992, float %3995, float undef, float undef, i32 0, i32 0, i32 undef, float %3997, float %3999, float undef, float %4001, float %4003, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 1
  %4223 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4224 = and i32 %4217, 65535
  %4225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4224)  ; LegacyF16ToF32(value)
  %4226 = fmul fast float %4221, %3889
  %4227 = fmul fast float %4222, %3890
  %4228 = fmul fast float %4223, %3891
  %4229 = and i32 %3904, 16384
  %4230 = icmp ne i32 %4229, 0
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = select i1 %4230, float %4232, float 1.000000e+00
  %4234 = fmul fast float %4233, %4225
  %4235 = fmul fast float %4226, %4234
  %4236 = fmul fast float %4227, %4234
  %4237 = fmul fast float %4228, %4234
  br label %4238

; <label>:4238                                    ; preds = %4216, %4154
  %4239 = phi float [ %4235, %4216 ], [ 0.000000e+00, %4154 ]
  %4240 = phi float [ %4236, %4216 ], [ 0.000000e+00, %4154 ]
  %4241 = phi float [ %4237, %4216 ], [ 0.000000e+00, %4154 ]
  %4242 = fsub fast float %4239, %3834
  %4243 = fsub fast float %4240, %3835
  %4244 = fsub fast float %4241, %3836
  %4245 = fmul fast float %4242, %4051
  %4246 = fmul fast float %4243, %4051
  %4247 = fmul fast float %4244, %4051
  %4248 = fadd fast float %4245, %3834
  %4249 = fadd fast float %4246, %3835
  %4250 = fadd fast float %4247, %3836
  br label %3953

; <label>:4251                                    ; preds = %3953
  br label %4252

; <label>:4252                                    ; preds = %4251, %3772
  %4253 = phi float [ 0.000000e+00, %3772 ], [ %3954, %4251 ]
  %4254 = phi float [ %1174, %3772 ], [ %3955, %4251 ]
  %4255 = phi float [ %3741, %3772 ], [ %3956, %4251 ]
  %4256 = phi float [ %3739, %3772 ], [ %3957, %4251 ]
  %4257 = phi float [ 0.000000e+00, %3772 ], [ %3958, %4251 ]
  %4258 = phi float [ 0.000000e+00, %3772 ], [ %3959, %4251 ]
  %4259 = phi float [ %3733, %3772 ], [ %3960, %4251 ]
  %4260 = phi float [ %3734, %3772 ], [ %3961, %4251 ]
  %4261 = phi float [ %3735, %3772 ], [ %3962, %4251 ]
  %4262 = phi float [ %3767, %3772 ], [ %3963, %4251 ]
  %4263 = phi float [ %3768, %3772 ], [ %3964, %4251 ]
  %4264 = phi float [ %3769, %3772 ], [ %3965, %4251 ]
  %4265 = phi float [ %3738, %3772 ], [ %3966, %4251 ]
  %4266 = phi float [ %3737, %3772 ], [ %3967, %4251 ]
  %4267 = phi float [ 0.000000e+00, %3772 ], [ %3968, %4251 ]
  %4268 = phi float [ %3736, %3772 ], [ %3969, %4251 ]
  %4269 = phi float [ %3730, %3772 ], [ %3970, %4251 ]
  %4270 = phi float [ %3731, %3772 ], [ %3971, %4251 ]
  %4271 = phi float [ %3732, %3772 ], [ %3972, %4251 ]
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4262, float %4263, float %4264, float %4262, float %4263, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.unary.f32(i32 25, float %4272)  ; Rsqrt(value)
  %4274 = fmul fast float %4273, %4262
  %4275 = fmul fast float %4273, %4263
  %4276 = fmul fast float %4273, %4264
  %4277 = fadd fast float %4267, %1174
  %4278 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4279 = call float @dx.op.dot3.f32(i32 55, float %4274, float %4275, float %4276, float %4274, float %4275, float %4276)  ; Dot3(ax,ay,az,bx,by,bz)
  %4280 = call float @dx.op.unary.f32(i32 25, float %4279)  ; Rsqrt(value)
  %4281 = fmul fast float %4280, %4274
  %4282 = fmul fast float %4280, %4275
  %4283 = fmul fast float %4280, %4276
  br label %4284

; <label>:4284                                    ; preds = %4252, %3727
  %4285 = phi float [ %4281, %4252 ], [ %3767, %3727 ]
  %4286 = phi float [ %4282, %4252 ], [ %3768, %3727 ]
  %4287 = phi float [ %4283, %4252 ], [ %3769, %3727 ]
  %4288 = phi float [ %4269, %4252 ], [ %3730, %3727 ]
  %4289 = phi float [ %4270, %4252 ], [ %3731, %3727 ]
  %4290 = phi float [ %4271, %4252 ], [ %3732, %3727 ]
  %4291 = phi float [ %4259, %4252 ], [ %3733, %3727 ]
  %4292 = phi float [ %4260, %4252 ], [ %3734, %3727 ]
  %4293 = phi float [ %4261, %4252 ], [ %3735, %3727 ]
  %4294 = phi float [ %4268, %4252 ], [ %3736, %3727 ]
  %4295 = phi float [ %4278, %4252 ], [ %1174, %3727 ]
  %4296 = phi float [ %4266, %4252 ], [ %3737, %3727 ]
  %4297 = phi float [ %4265, %4252 ], [ %3738, %3727 ]
  %4298 = phi float [ %4258, %4252 ], [ 0.000000e+00, %3727 ]
  %4299 = phi float [ %4257, %4252 ], [ 0.000000e+00, %3727 ]
  %4300 = phi float [ %4253, %4252 ], [ 0.000000e+00, %3727 ]
  %4301 = phi float [ %4255, %4252 ], [ %3741, %3727 ]
  %4302 = phi float [ %4254, %4252 ], [ %1174, %3727 ]
  %4303 = phi float [ %4256, %4252 ], [ %3739, %3727 ]
  %4304 = add i32 %62, 392
  %4305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.i32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.i32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.i32 %4305, 2
  %4309 = extractvalue %dx.types.ResRet.i32 %4305, 3
  %4310 = bitcast i32 %4306 to float
  %4311 = bitcast i32 %4307 to float
  %4312 = bitcast i32 %4308 to float
  %4313 = bitcast i32 %4309 to float
  %4314 = fsub fast float %4288, %4310
  %4315 = fsub fast float %4289, %4311
  %4316 = fsub fast float %4290, %4312
  %4317 = fmul fast float %4314, %204
  %4318 = fmul fast float %4315, %204
  %4319 = fmul fast float %4316, %204
  %4320 = fadd fast float %4317, %4310
  %4321 = fadd fast float %4318, %4311
  %4322 = fadd fast float %4319, %4312
  %4323 = fsub fast float %4295, %4313
  %4324 = fmul fast float %4323, %204
  %4325 = fadd fast float %4324, %4313
  %4326 = fadd fast float %4294, 0xBFB99999A0000000
  %4327 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4328 = fmul fast float %4327, 0x3FF1C71C80000000
  %4329 = call float @dx.op.binary.f32(i32 36, float %4294, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4330 = fsub fast float 1.000000e+00, %4328
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4320, %4331
  %4333 = fmul fast float %4321, %4331
  %4334 = fmul fast float %4322, %4331
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = fmul fast float %4320, %4328
  %4339 = fmul fast float %4321, %4328
  %4340 = fmul fast float %4322, %4328
  %4341 = fadd fast float %4338, %4329
  %4342 = fadd fast float %4339, %4329
  %4343 = fadd fast float %4340, %4329
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 3
  %4350 = and i32 %4349, 8
  %4351 = icmp ne i32 %4350, 0
  %4352 = call float @dx.op.binary.f32(i32 35, float %4335, float %4320)  ; FMax(a,b)
  %4353 = call float @dx.op.binary.f32(i32 35, float %4336, float %4320)  ; FMax(a,b)
  %4354 = call float @dx.op.binary.f32(i32 35, float %4337, float %4320)  ; FMax(a,b)
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4335, float %4336, float %4337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = select i1 %264, float %4320, float %4335
  %4357 = select i1 %264, float %4355, float %4336
  %4358 = select i1 %264, float 1.000000e+00, float %4337
  %4359 = select i1 %4351, float %4352, float %4356
  %4360 = select i1 %4351, float %4353, float %4357
  %4361 = select i1 %4351, float %4354, float %4358
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.CBufRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4366 = fadd fast float %4363, %170
  %4367 = fadd fast float %4364, %171
  %4368 = fadd fast float %4365, %172
  %4369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4370 = extractvalue %dx.types.CBufRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.CBufRet.f32 %4369, 1
  %4372 = fsub fast float %4366, %4370
  %4373 = fsub fast float %4367, %4371
  %4374 = fmul fast float %4372, %4372
  %4375 = fmul fast float %4373, %4373
  %4376 = fadd fast float %4374, %4375
  %4377 = call float @dx.op.unary.f32(i32 24, float %4376)  ; Sqrt(value)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4369, 2
  %4379 = fcmp fast olt float %4377, %4378
  br i1 %4379, label %4380, label %4447

; <label>:4380                                    ; preds = %4284
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 0
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 0
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.CBufRet.f32 %4381, 1
  %4388 = extractvalue %dx.types.CBufRet.f32 %4383, 1
  %4389 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4391 = extractvalue %dx.types.CBufRet.f32 %4383, 3
  %4392 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4393 = fadd fast float %4390, %4366
  %4394 = fadd fast float %4391, %4367
  %4395 = fadd fast float %4392, %4368
  %4396 = fmul fast float %4393, %4382
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4384, float %4396)  ; FMad(a,b,c)
  %4398 = call float @dx.op.tertiary.f32(i32 46, float %4395, float %4386, float %4397)  ; FMad(a,b,c)
  %4399 = fmul fast float %4393, %4387
  %4400 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4388, float %4399)  ; FMad(a,b,c)
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4395, float %4389, float %4400)  ; FMad(a,b,c)
  %4402 = fsub fast float %4398, %4390
  %4403 = fsub fast float %4401, %4391
  %4404 = fsub fast float %4402, %4370
  %4405 = fadd fast float %4404, %4378
  %4406 = fsub fast float %4403, %4371
  %4407 = fadd fast float %4406, %4378
  %4408 = extractvalue %dx.types.CBufRet.f32 %4369, 3
  %4409 = fmul fast float %4405, %4408
  %4410 = fmul fast float %4407, %4408
  %4411 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4412 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4413 = fsub fast float 1.000000e+00, %4411
  %4414 = fsub fast float 1.000000e+00, %4412
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = fcmp fast ugt float %4416, 0.000000e+00
  br i1 %4417, label %4418, label %4721

; <label>:4418                                    ; preds = %4380
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4421 = fmul fast float %4420, %4416
  %4422 = extractvalue %dx.types.CBufRet.f32 %4419, 3
  %4423 = fadd fast float %4422, %4421
  %4424 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4425 = fadd fast float %4423, %4392
  %4426 = fmul fast float %4398, %4386
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4401, float %4389, float %4426)  ; FMad(a,b,c)
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4425, float %4424, float %4427)  ; FMad(a,b,c)
  %4429 = fsub fast float %4428, %4392
  %4430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.f32 %4430, 2
  %4432 = fsub fast float %4429, %4431
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.ResRet.f32 %4433, 1
  %4436 = extractvalue %dx.types.ResRet.f32 %4433, 2
  %4437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4413, float %4414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = fadd fast float %4438, %4434
  %4442 = fmul fast float %4441, 0x3F847AE140000000
  %4443 = fadd fast float %4439, %4435
  %4444 = fmul fast float %4443, 0x3F847AE140000000
  %4445 = fadd fast float %4440, %4436
  %4446 = fmul fast float %4445, 0x3F847AE140000000
  br label %4721

; <label>:4447                                    ; preds = %4284
  %4448 = and i32 %240, 1
  %4449 = icmp eq i32 %4448, 0
  br i1 %4449, label %4721, label %4450

; <label>:4450                                    ; preds = %4447
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 0
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4458 = extractvalue %dx.types.CBufRet.f32 %4453, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4451, 3
  %4461 = extractvalue %dx.types.CBufRet.f32 %4453, 3
  %4462 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4463 = fadd fast float %4460, %4366
  %4464 = fadd fast float %4461, %4367
  %4465 = fadd fast float %4462, %4368
  %4466 = fmul fast float %4463, %4452
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4454, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4456, float %4467)  ; FMad(a,b,c)
  %4469 = fmul fast float %4463, %4457
  %4470 = call float @dx.op.tertiary.f32(i32 46, float %4464, float %4458, float %4469)  ; FMad(a,b,c)
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4459, float %4470)  ; FMad(a,b,c)
  %4472 = fsub fast float %4468, %4460
  %4473 = fsub fast float %4471, %4461
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4478 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 3
  %4481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.i32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.i32 %4481, 1
  %4484 = udiv i32 %4483, %4482
  %4485 = fsub fast float %4472, %4475
  %4486 = fsub fast float %4473, %4476
  %4487 = call float @dx.op.binary.f32(i32 35, float %4485, float 0.000000e+00)  ; FMax(a,b)
  %4488 = call float @dx.op.binary.f32(i32 35, float %4486, float 0.000000e+00)  ; FMax(a,b)
  %4489 = call float @dx.op.binary.f32(i32 36, float %4487, float %4477)  ; FMin(a,b)
  %4490 = call float @dx.op.binary.f32(i32 36, float %4488, float %4478)  ; FMin(a,b)
  %4491 = add i32 %4482, -1
  %4492 = add i32 %4484, -1
  %4493 = fmul fast float %4489, %4480
  %4494 = fmul fast float %4490, %4480
  %4495 = fptoui float %4493 to i32
  %4496 = fptoui float %4494 to i32
  %4497 = call i32 @dx.op.binary.i32(i32 40, i32 %4495, i32 %4491)  ; UMin(a,b)
  %4498 = call i32 @dx.op.binary.i32(i32 40, i32 %4496, i32 %4492)  ; UMin(a,b)
  %4499 = mul i32 %4498, %4482
  %4500 = add i32 %4499, %4497
  %4501 = shl i32 %4500, 2
  %4502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.i32 %4502, 0
  %4504 = icmp eq i32 %4503, -1
  br i1 %4504, label %4721, label %4505

; <label>:4505                                    ; preds = %4450
  %4506 = mul i32 %4503, 148
  %4507 = add i32 %4506, 4
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4506, 8
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = add i32 %4506, 36
  %4514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.f32 %4514, 0
  %4516 = add i32 %4506, 60
  %4517 = add i32 %4506, 92
  %4518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4517, i32 undef)  ; BufferLoad(srv,index,wot)
  %4519 = extractvalue %dx.types.ResRet.i32 %4518, 0
  %4520 = add i32 %4506, 116
  %4521 = fsub fast float %4472, %4509
  %4522 = fsub fast float %4473, %4512
  %4523 = fmul fast float %4480, %4521
  %4524 = fmul fast float %4480, %4522
  %4525 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4527 = fsub fast float 1.000000e+00, %4526
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4530 = call float @dx.op.unary.f32(i32 83, float %4525)  ; DerivCoarseX(value)
  %4531 = call float @dx.op.unary.f32(i32 83, float %4527)  ; DerivCoarseX(value)
  %4532 = call float @dx.op.unary.f32(i32 84, float %4525)  ; DerivCoarseY(value)
  %4533 = call float @dx.op.unary.f32(i32 84, float %4527)  ; DerivCoarseY(value)
  %4534 = fmul fast float %4530, %4529
  %4535 = fmul fast float %4531, %4529
  %4536 = fmul fast float %4532, %4529
  %4537 = fmul fast float %4533, %4529
  %4538 = call float @dx.op.dot2.f32(i32 54, float %4536, float %4537, float %4536, float %4537)  ; Dot2(ax,ay,bx,by)
  %4539 = call float @dx.op.dot2.f32(i32 54, float %4534, float %4535, float %4534, float %4535)  ; Dot2(ax,ay,bx,by)
  %4540 = call float @dx.op.binary.f32(i32 35, float %4539, float %4538)  ; FMax(a,b)
  %4541 = call float @dx.op.unary.f32(i32 23, float %4540)  ; Log(value)
  %4542 = fmul fast float %4541, 5.000000e-01
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4545 = fadd fast float %4544, %4542
  %4546 = call float @dx.op.binary.f32(i32 35, float %4545, float 0.000000e+00)  ; FMax(a,b)
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4549 = fadd fast float %4548, %4546
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4552 = fadd fast float %4549, %4551
  %4553 = add i32 %4519, 0
  %4554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4553, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4555 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4554, i32 0)  ; GetDimensions(handle,mipLevel)
  %4556 = extractvalue %dx.types.Dimensions %4555, 0
  %4557 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4556)  ; FirstbitLo(value)
  %4558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.i32 %4558, 1
  %4560 = sub nsw i32 %4559, %4557
  %4561 = sitofp i32 %4560 to float
  %4562 = fsub fast float %4552, %4561
  %4563 = call float @dx.op.binary.f32(i32 35, float %4562, float 0.000000e+00)  ; FMax(a,b)
  %4564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4554, %dx.types.Handle %52, float %4525, float %4527, float %4515, float undef, i32 0, i32 0, i32 undef, float %4563)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = fcmp ule float %4565, 0x3FE0101020000000
  %4567 = extractvalue %dx.types.CBufRet.i32 %4558, 0
  %4568 = and i32 %4567, 128
  %4569 = icmp ne i32 %4568, 0
  %4570 = and i1 %4566, %4569
  br i1 %4570, label %4721, label %4571

; <label>:4571                                    ; preds = %4505
  %4572 = add i32 %4506, 20
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = add i32 %4506, 24
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = add i32 %4506, 40
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = add i32 %4506, 96
  %4582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.i32 %4582, 0
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4586 = fmul fast float %4585, %4525
  %4587 = fmul fast float %4585, %4527
  %4588 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4589 = fadd fast float %4586, %4588
  %4590 = fadd fast float %4587, %4588
  %4591 = add i32 %4583, 0
  %4592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4591, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4593 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4592, i32 0)  ; GetDimensions(handle,mipLevel)
  %4594 = extractvalue %dx.types.Dimensions %4593, 0
  %4595 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4594)  ; FirstbitLo(value)
  %4596 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4597 = extractvalue %dx.types.CBufRet.i32 %4596, 1
  %4598 = sub nsw i32 %4597, %4595
  %4599 = sitofp i32 %4598 to float
  %4600 = fsub fast float %4549, %4599
  %4601 = call float @dx.op.binary.f32(i32 35, float %4600, float 0.000000e+00)  ; FMax(a,b)
  %4602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4592, %dx.types.Handle %52, float %4589, float %4590, float %4580, float undef, i32 0, i32 0, i32 undef, float %4601)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = fmul fast float %4603, %4574
  %4605 = fadd fast float %4604, %4577
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.CBufRet.f32 %4606, 2
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 3
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4615 = fadd fast float %4611, %4472
  %4616 = fadd fast float %4613, %4473
  %4617 = fadd fast float %4605, %4614
  %4618 = fmul fast float %4615, %4607
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4608, float %4618)  ; FMad(a,b,c)
  %4620 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4609, float %4619)  ; FMad(a,b,c)
  %4621 = fsub fast float %4620, %4614
  %4622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4623 = extractvalue %dx.types.CBufRet.f32 %4622, 2
  %4624 = fsub fast float %4621, %4623
  %4625 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.i32 %4625, 0
  %4627 = call i32 @dx.op.binary.i32(i32 40, i32 %4503, i32 %4626)  ; UMin(a,b)
  %4628 = mul i32 %4627, 36
  %4629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.i32 %4629, 0
  %4631 = add i32 %4628, 4
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %4525
  %4635 = fmul fast float %4633, %4527
  %4636 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4637 = fadd fast float %4634, %4636
  %4638 = fadd fast float %4635, %4636
  %4639 = icmp eq i32 %4630, 0
  br i1 %4639, label %4708, label %4640

; <label>:4640                                    ; preds = %4571
  br label %4641

; <label>:4641                                    ; preds = %4698, %4640
  %4642 = phi float [ %4699, %4698 ], [ 0.000000e+00, %4640 ]
  %4643 = phi float [ %4700, %4698 ], [ 0.000000e+00, %4640 ]
  %4644 = phi float [ %4701, %4698 ], [ 0.000000e+00, %4640 ]
  %4645 = phi float [ %4702, %4698 ], [ 0.000000e+00, %4640 ]
  %4646 = phi float [ %4703, %4698 ], [ 0.000000e+00, %4640 ]
  %4647 = phi float [ %4704, %4698 ], [ 0.000000e+00, %4640 ]
  %4648 = phi i32 [ %4705, %4698 ], [ 0, %4640 ]
  %4649 = shl i32 %4648, 2
  %4650 = add i32 %4516, %4649
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = add i32 %4520, %4649
  %4654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.i32 %4654, 0
  %4656 = add i32 %4655, 0
  %4657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4658 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4657, i32 0)  ; GetDimensions(handle,mipLevel)
  %4659 = extractvalue %dx.types.Dimensions %4658, 0
  %4660 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4659)  ; FirstbitLo(value)
  %4661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.i32 %4661, 1
  %4663 = sub nsw i32 %4662, %4660
  %4664 = sitofp i32 %4663 to float
  %4665 = fsub fast float %4549, %4664
  %4666 = call float @dx.op.binary.f32(i32 35, float %4665, float 0.000000e+00)  ; FMax(a,b)
  %4667 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4657, %dx.types.Handle %52, float %4637, float %4638, float %4652, float undef, i32 0, i32 0, i32 undef, float %4666)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = fcmp fast ogt float %4668, 0.000000e+00
  br i1 %4669, label %4670, label %4698

; <label>:4670                                    ; preds = %4641
  %4671 = add i32 %4631, %4649
  %4672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.i32 %4672, 0
  %4674 = and i32 %4673, 32767
  %4675 = mul nuw nsw i32 %4674, 928
  %4676 = add nuw nsw i32 %4675, 48
  %4677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4676, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4677, 2
  %4681 = add nuw nsw i32 %4675, 60
  %4682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.ResRet.f32 %4682, 2
  %4686 = fmul fast float %4678, %4668
  %4687 = fmul fast float %4679, %4668
  %4688 = fmul fast float %4680, %4668
  %4689 = fadd fast float %4686, %4642
  %4690 = fadd fast float %4687, %4643
  %4691 = fadd fast float %4688, %4644
  %4692 = fmul fast float %4683, %4668
  %4693 = fmul fast float %4684, %4668
  %4694 = fmul fast float %4685, %4668
  %4695 = fadd fast float %4692, %4645
  %4696 = fadd fast float %4693, %4646
  %4697 = fadd fast float %4694, %4647
  br label %4698

; <label>:4698                                    ; preds = %4670, %4641
  %4699 = phi float [ %4689, %4670 ], [ %4642, %4641 ]
  %4700 = phi float [ %4690, %4670 ], [ %4643, %4641 ]
  %4701 = phi float [ %4691, %4670 ], [ %4644, %4641 ]
  %4702 = phi float [ %4695, %4670 ], [ %4645, %4641 ]
  %4703 = phi float [ %4696, %4670 ], [ %4646, %4641 ]
  %4704 = phi float [ %4697, %4670 ], [ %4647, %4641 ]
  %4705 = add nuw i32 %4648, 1
  %4706 = icmp eq i32 %4705, %4630
  br i1 %4706, label %4707, label %4641

; <label>:4707                                    ; preds = %4698
  br label %4708

; <label>:4708                                    ; preds = %4707, %4571
  %4709 = phi float [ 0.000000e+00, %4571 ], [ %4699, %4707 ]
  %4710 = phi float [ 0.000000e+00, %4571 ], [ %4700, %4707 ]
  %4711 = phi float [ 0.000000e+00, %4571 ], [ %4701, %4707 ]
  %4712 = phi float [ 0.000000e+00, %4571 ], [ %4702, %4707 ]
  %4713 = phi float [ 0.000000e+00, %4571 ], [ %4703, %4707 ]
  %4714 = phi float [ 0.000000e+00, %4571 ], [ %4704, %4707 ]
  %4715 = fadd fast float %4712, %4709
  %4716 = fmul fast float %4715, 0x3F847AE140000000
  %4717 = fadd fast float %4713, %4710
  %4718 = fmul fast float %4717, 0x3F847AE140000000
  %4719 = fadd fast float %4714, %4711
  %4720 = fmul fast float %4719, 0x3F847AE140000000
  br label %4721

; <label>:4721                                    ; preds = %4708, %4505, %4450, %4447, %4418, %4380
  %4722 = phi float [ %4442, %4418 ], [ 0.000000e+00, %4380 ], [ %4716, %4708 ], [ 0.000000e+00, %4450 ], [ 0.000000e+00, %4505 ], [ 0.000000e+00, %4447 ]
  %4723 = phi float [ %4444, %4418 ], [ 0.000000e+00, %4380 ], [ %4718, %4708 ], [ 0.000000e+00, %4450 ], [ 0.000000e+00, %4505 ], [ 0.000000e+00, %4447 ]
  %4724 = phi float [ %4446, %4418 ], [ 0.000000e+00, %4380 ], [ %4720, %4708 ], [ 0.000000e+00, %4450 ], [ 0.000000e+00, %4505 ], [ 0.000000e+00, %4447 ]
  %4725 = phi float [ %4432, %4418 ], [ -1.310720e+05, %4380 ], [ %4624, %4708 ], [ -1.310720e+05, %4450 ], [ -1.310720e+05, %4505 ], [ -1.310720e+05, %4447 ]
  %4726 = phi i1 [ true, %4418 ], [ false, %4380 ], [ true, %4708 ], [ false, %4450 ], [ false, %4505 ], [ false, %4447 ]
  %4727 = and i32 %240, 3
  %4728 = icmp eq i32 %4727, 1
  %4729 = select i1 %4728, float 1.000000e+00, float 0.000000e+00
  %4730 = fsub fast float %4725, %172
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = select i1 %4726, float %4731, float 1.000000e+00
  %4733 = fmul fast float %4732, %4729
  %4734 = icmp eq i32 %4727, 3
  %4735 = select i1 %4734, float 1.000000e+00, float %4733
  %4736 = call float @dx.op.binary.f32(i32 35, float %4300, float %4735)  ; FMax(a,b)
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fcmp fast une float %4737, 0.000000e+00
  %4739 = fsub fast float -0.000000e+00, %190
  %4740 = fsub fast float -0.000000e+00, %191
  %4741 = fsub fast float -0.000000e+00, %192
  br i1 %4738, label %4742, label %4904

; <label>:4742                                    ; preds = %4721
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = fmul fast float %4737, 2.500000e+00
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4737, 0x4013FFFFE0000000
  %4747 = fadd fast float %4746, 0xBFFFFFFFE0000000
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fmul fast float %4737, 0x4004000020000000
  %4750 = fadd fast float %4749, 0xBFF8000040000000
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4753 = fmul fast float %4326, 1.000000e+01
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = fsub fast float 3.000000e+00, %4755
  %4757 = fmul fast float %4754, %4754
  %4758 = fmul fast float %4757, %4756
  %4759 = fsub fast float 1.000000e+00, %4758
  %4760 = fsub fast float 0x3FE3333340000000, %4347
  %4761 = fmul fast float %4760, 0x400AAAAAA0000000
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4759, %4762
  %4764 = fmul fast float %4359, 0x3FEA2B8620000000
  %4765 = fmul fast float %4360, 0x3FEA2B8620000000
  %4766 = fmul fast float %4361, 0x3FEA2B8620000000
  %4767 = fadd fast float %4764, 0x3FC81DFBA0000000
  %4768 = fmul fast float %4767, %4359
  %4769 = fadd fast float %4768, 0x3F910E6020000000
  %4770 = fadd fast float %4765, 0x3FC81DFBA0000000
  %4771 = fmul fast float %4770, %4360
  %4772 = fadd fast float %4771, 0x3F910E6020000000
  %4773 = fadd fast float %4766, 0x3FC81DFBA0000000
  %4774 = fmul fast float %4773, %4361
  %4775 = fadd fast float %4774, 0x3F910E6020000000
  %4776 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = fsub fast float %4776, %4359
  %4780 = fsub fast float %4777, %4360
  %4781 = fsub fast float %4778, %4361
  %4782 = fmul fast float %4779, %4752
  %4783 = fmul fast float %4782, %4763
  %4784 = fmul fast float %4780, %4752
  %4785 = fmul fast float %4784, %4763
  %4786 = fmul fast float %4781, %4752
  %4787 = fmul fast float %4786, %4763
  %4788 = fadd fast float %4783, %4359
  %4789 = fadd fast float %4785, %4360
  %4790 = fadd fast float %4787, %4361
  %4791 = fmul fast float %4297, %4297
  %4792 = fmul fast float %4791, %4791
  %4793 = fadd fast float %4748, 1.000000e+00
  %4794 = fsub fast float %4793, %4763
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fsub fast float 1.000000e+00, %4792
  %4799 = call float @dx.op.binary.f32(i32 36, float %4795, float %4798)  ; FMin(a,b)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4799, float %4800)  ; FMax(a,b)
  %4802 = fadd fast float %4797, 0xBFE4CCCCC0000000
  %4803 = fmul fast float %4802, 0x4006DB6DA0000000
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fmul fast float %4804, 2.000000e+00
  %4806 = fsub fast float 3.000000e+00, %4805
  %4807 = bitcast float %4344 to i32
  %4808 = ashr i32 %4807, 1
  %4809 = add nsw i32 %4808, 532487669
  %4810 = bitcast i32 %4809 to float
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = bitcast float %4811 to i32
  %4813 = sub nsw i32 2129859010, %4812
  %4814 = bitcast i32 %4813 to float
  %4815 = fmul fast float %4814, 2.000000e+00
  %4816 = bitcast float %4345 to i32
  %4817 = ashr i32 %4816, 1
  %4818 = add nsw i32 %4817, 532487669
  %4819 = bitcast i32 %4818 to float
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = fmul fast float %4823, 2.000000e+00
  %4825 = bitcast float %4346 to i32
  %4826 = ashr i32 %4825, 1
  %4827 = add nsw i32 %4826, 532487669
  %4828 = bitcast i32 %4827 to float
  %4829 = fsub fast float 1.000000e+00, %4828
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = bitcast i32 %4831 to float
  %4833 = fmul fast float %4832, 2.000000e+00
  %4834 = fsub fast float 0x4002A9FBE0000000, %4815
  %4835 = fadd fast float %4815, 0x3FD54FDF00000000
  %4836 = bitcast float %4835 to i32
  %4837 = sub nsw i32 2129859010, %4836
  %4838 = bitcast i32 %4837 to float
  %4839 = fmul fast float %4838, %4834
  %4840 = fmul fast float %4839, %4839
  %4841 = fsub fast float 0x4002A9FBE0000000, %4824
  %4842 = fadd fast float %4824, 0x3FD54FDF00000000
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = fmul fast float %4845, %4841
  %4847 = fmul fast float %4846, %4846
  %4848 = fsub fast float 0x4002A9FBE0000000, %4833
  %4849 = fadd fast float %4833, 0x3FD54FDF00000000
  %4850 = bitcast float %4849 to i32
  %4851 = sub nsw i32 2129859010, %4850
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4852, %4848
  %4854 = fmul fast float %4853, %4853
  %4855 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4840)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4847)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4854)  ; FMax(a,b)
  %4858 = fsub fast float 1.000000e+00, %4743
  %4859 = fadd fast float %4858, %4759
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fsub fast float 1.000000e+00, %4735
  %4862 = fmul fast float %4801, %4861
  %4863 = fmul fast float %4804, %4804
  %4864 = fmul fast float %4863, %4862
  %4865 = fmul fast float %4864, %4806
  %4866 = fmul fast float %4861, 0xBFE99999A0000000
  %4867 = fmul fast float %4866, %4752
  %4868 = fmul fast float %4867, %4763
  %4869 = fadd fast float %4868, 1.000000e+00
  %4870 = fadd fast float %4347, -1.000000e+00
  %4871 = fmul fast float %4869, %4870
  %4872 = fadd fast float %4871, 1.000000e+00
  %4873 = fsub fast float %4855, %4344
  %4874 = fsub fast float %4856, %4345
  %4875 = fsub fast float %4857, %4346
  %4876 = fmul fast float %4865, %4873
  %4877 = fmul fast float %4865, %4874
  %4878 = fmul fast float %4865, %4875
  %4879 = fadd fast float %4876, %4344
  %4880 = fadd fast float %4877, %4345
  %4881 = fadd fast float %4878, %4346
  %4882 = fsub fast float %120, %4285
  %4883 = fsub fast float %122, %4286
  %4884 = fsub fast float %124, %4287
  %4885 = fmul fast float %4865, %4882
  %4886 = fmul fast float %4865, %4883
  %4887 = fmul fast float %4865, %4884
  %4888 = fadd fast float %4885, %4285
  %4889 = fadd fast float %4886, %4286
  %4890 = fadd fast float %4887, %4287
  %4891 = fmul fast float %4865, %4860
  %4892 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4892
  %4894 = fmul fast float %4891, %4893
  %4895 = fadd fast float %4894, %4892
  %4896 = fsub fast float 1.000000e+00, %4297
  %4897 = fmul fast float %4865, %4896
  %4898 = fadd fast float %4897, %4297
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %4888, float %4889, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = call float @dx.op.unary.f32(i32 25, float %4899)  ; Rsqrt(value)
  %4901 = fmul fast float %4888, %4900
  %4902 = fmul fast float %4889, %4900
  %4903 = fmul fast float %4890, %4900
  br label %4904

; <label>:4904                                    ; preds = %4742, %4721
  %4905 = phi float [ %4788, %4742 ], [ %4359, %4721 ]
  %4906 = phi float [ %4789, %4742 ], [ %4360, %4721 ]
  %4907 = phi float [ %4790, %4742 ], [ %4361, %4721 ]
  %4908 = phi float [ %4879, %4742 ], [ %4344, %4721 ]
  %4909 = phi float [ %4880, %4742 ], [ %4345, %4721 ]
  %4910 = phi float [ %4881, %4742 ], [ %4346, %4721 ]
  %4911 = phi float [ %4901, %4742 ], [ %4285, %4721 ]
  %4912 = phi float [ %4902, %4742 ], [ %4286, %4721 ]
  %4913 = phi float [ %4903, %4742 ], [ %4287, %4721 ]
  %4914 = phi float [ %4895, %4742 ], [ %4347, %4721 ]
  %4915 = phi float [ %4898, %4742 ], [ %4297, %4721 ]
  %4916 = fsub fast float -0.000000e+00, %172
  %4917 = select i1 %264, float 0.000000e+00, float %4910
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fmul fast float %4920, 2.000000e+00
  %4922 = fmul fast float %4921, %4911
  %4923 = fmul fast float %4921, %4912
  %4924 = fmul fast float %4921, %4913
  %4925 = fsub fast float %190, %4922
  %4926 = fsub fast float %191, %4923
  %4927 = fsub fast float %192, %4924
  %4928 = call float @dx.op.binary.f32(i32 36, float %4915, float 1.000000e+00)  ; FMin(a,b)
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = bitcast float %4929 to i32
  %4931 = ashr i32 %4930, 1
  %4932 = add nsw i32 %4931, 532487669
  %4933 = bitcast i32 %4932 to float
  %4934 = fsub fast float 1.000000e+00, %4914
  %4935 = call float @dx.op.binary.f32(i32 35, float %4934, float 0x3F847AE140000000)  ; FMax(a,b)
  %4936 = fmul fast float %4935, %4935
  %4937 = fmul fast float %4936, %4936
  %4938 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4933, float %4937, float %4938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4940 = extractvalue %dx.types.ResRet.f32 %4939, 0
  %4941 = fsub fast float 1.000000e+00, %4915
  %4942 = bitcast float %4941 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = fmul fast float %4944, 0x3FD20DD760000000
  %4946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %4947 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = fcmp fast oeq float %4947, 0.000000e+00
  %4949 = fcmp fast oeq float %4946, 0.000000e+00
  %4950 = or i1 %4949, %4948
  br i1 %4950, label %4980, label %4951

; <label>:4951                                    ; preds = %4904
  %4952 = fsub fast float -0.000000e+00, %82
  %4953 = fsub fast float -0.000000e+00, %80
  %4954 = call float @dx.op.unary.f32(i32 24, float %4947)  ; Sqrt(value)
  %4955 = fdiv fast float %4954, %4946
  %4956 = fcmp fast ogt float %4955, 0x3FFB6F8900000000
  %4957 = select i1 %4956, float 0x3FFB6F8900000000, float %4955
  %4958 = fmul fast float %4957, 0x3FE8A23460000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4957, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4961 = fmul fast float %4959, %4946
  %4962 = fmul fast float %4960, 0x3FF279A740000000
  %4963 = fadd fast float %4962, -1.000000e+00
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4952, float %4953, float %81, float %4952, float %4953, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = call float @dx.op.unary.f32(i32 25, float %4964)  ; Rsqrt(value)
  %4966 = fmul fast float %4965, %4952
  %4967 = fmul fast float %4965, %4953
  %4968 = fmul fast float %4965, %81
  %4969 = fmul fast float %4963, %4963
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = fmul fast float %4960, 0x40005F8BE0000000
  %4972 = fsub fast float 0x400C5BF8A0000000, %4971
  %4973 = fdiv fast float %4961, %4972
  %4974 = fmul fast float %4973, 0x3FEE31C3C0000000
  %4975 = fmul fast float %4974, %4970
  %4976 = fmul fast float %4960, 0x3FDACB7480000000
  %4977 = fadd fast float %4976, 0xBFD7347680000000
  %4978 = fmul fast float %4977, %4973
  %4979 = fmul fast float %4978, %4970
  br label %4980

; <label>:4980                                    ; preds = %4951, %4904
  %4981 = phi float [ %4966, %4951 ], [ 0.000000e+00, %4904 ]
  %4982 = phi float [ %4967, %4951 ], [ 0.000000e+00, %4904 ]
  %4983 = phi float [ %4968, %4951 ], [ 0.000000e+00, %4904 ]
  %4984 = phi float [ %4975, %4951 ], [ 0.000000e+00, %4904 ]
  %4985 = phi float [ %4979, %4951 ], [ 0.000000e+00, %4904 ]
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = fmul fast float %4986, %4986
  %4988 = fmul fast float %4987, 0x3FEE471020000000
  %4989 = fadd fast float %4988, 0xBFD42F6020000000
  %4990 = fmul fast float %4946, 0x3FD20DD760000000
  %4991 = fmul fast float %4989, %4985
  %4992 = fmul fast float %4984, 0x3FDF454380000000
  %4993 = fmul fast float %4992, %4986
  %4994 = fadd fast float %4993, %4990
  %4995 = fadd fast float %4994, %4991
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = fmul fast float %4996, 0x3FDF454380000000
  %4998 = fmul fast float %4996, %4996
  %4999 = fmul fast float %4998, 0x3FEE471020000000
  %5000 = fadd fast float %4999, 0xBFD42F6020000000
  %5001 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4984, float %4985, float 0x3FD20DD760000000, float %4997, float %5000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5003 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = fcmp fast oeq float %5003, 0.000000e+00
  %5005 = fcmp fast oeq float %5002, 0.000000e+00
  %5006 = or i1 %5005, %5004
  br i1 %5006, label %5036, label %5007

; <label>:5007                                    ; preds = %4980
  %5008 = fsub fast float -0.000000e+00, %78
  %5009 = fsub fast float -0.000000e+00, %76
  %5010 = call float @dx.op.unary.f32(i32 24, float %5003)  ; Sqrt(value)
  %5011 = fdiv fast float %5010, %5002
  %5012 = fcmp fast ogt float %5011, 0x3FFB6F8900000000
  %5013 = select i1 %5012, float 0x3FFB6F8900000000, float %5011
  %5014 = fmul fast float %5013, 0x3FE8A23460000000
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5013, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5017 = fmul fast float %5015, %5002
  %5018 = fmul fast float %5016, 0x3FF279A740000000
  %5019 = fadd fast float %5018, -1.000000e+00
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5008, float %5009, float %77, float %5008, float %5009, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.unary.f32(i32 25, float %5020)  ; Rsqrt(value)
  %5022 = fmul fast float %5021, %5008
  %5023 = fmul fast float %5021, %5009
  %5024 = fmul fast float %5021, %77
  %5025 = fmul fast float %5019, %5019
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = fmul fast float %5016, 0x40005F8BE0000000
  %5028 = fsub fast float 0x400C5BF8A0000000, %5027
  %5029 = fdiv fast float %5017, %5028
  %5030 = fmul fast float %5029, 0x3FEE31C3C0000000
  %5031 = fmul fast float %5030, %5026
  %5032 = fmul fast float %5016, 0x3FDACB7480000000
  %5033 = fadd fast float %5032, 0xBFD7347680000000
  %5034 = fmul fast float %5033, %5029
  %5035 = fmul fast float %5034, %5026
  br label %5036

; <label>:5036                                    ; preds = %5007, %4980
  %5037 = phi float [ %5022, %5007 ], [ 0.000000e+00, %4980 ]
  %5038 = phi float [ %5023, %5007 ], [ 0.000000e+00, %4980 ]
  %5039 = phi float [ %5024, %5007 ], [ 0.000000e+00, %4980 ]
  %5040 = phi float [ %5031, %5007 ], [ 0.000000e+00, %4980 ]
  %5041 = phi float [ %5035, %5007 ], [ 0.000000e+00, %4980 ]
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = fmul fast float %5042, %5042
  %5044 = fmul fast float %5043, 0x3FEE471020000000
  %5045 = fadd fast float %5044, 0xBFD42F6020000000
  %5046 = fmul fast float %5002, 0x3FD20DD760000000
  %5047 = fmul fast float %5045, %5041
  %5048 = fmul fast float %5040, 0x3FDF454380000000
  %5049 = fmul fast float %5048, %5042
  %5050 = fadd fast float %5049, %5046
  %5051 = fadd fast float %5050, %5047
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = fmul fast float %5052, 0x3FDF454380000000
  %5054 = fmul fast float %5052, %5052
  %5055 = fmul fast float %5054, 0x3FEE471020000000
  %5056 = fadd fast float %5055, 0xBFD42F6020000000
  %5057 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5040, float %5041, float 0x3FD20DD760000000, float %5053, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5059 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = fcmp fast oeq float %5059, 0.000000e+00
  %5061 = fcmp fast oeq float %5058, 0.000000e+00
  %5062 = or i1 %5061, %5060
  br i1 %5062, label %5092, label %5063

; <label>:5063                                    ; preds = %5036
  %5064 = fsub fast float -0.000000e+00, %74
  %5065 = fsub fast float -0.000000e+00, %72
  %5066 = call float @dx.op.unary.f32(i32 24, float %5059)  ; Sqrt(value)
  %5067 = fdiv fast float %5066, %5058
  %5068 = fcmp fast ogt float %5067, 0x3FFB6F8900000000
  %5069 = select i1 %5068, float 0x3FFB6F8900000000, float %5067
  %5070 = fmul fast float %5069, 0x3FE8A23460000000
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = call float @dx.op.binary.f32(i32 35, float %5069, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5073 = fmul fast float %5071, %5058
  %5074 = fmul fast float %5072, 0x3FF279A740000000
  %5075 = fadd fast float %5074, -1.000000e+00
  %5076 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %73, float %5064, float %5065, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = call float @dx.op.unary.f32(i32 25, float %5076)  ; Rsqrt(value)
  %5078 = fmul fast float %5077, %5064
  %5079 = fmul fast float %5077, %5065
  %5080 = fmul fast float %5077, %73
  %5081 = fmul fast float %5075, %5075
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = fmul fast float %5072, 0x40005F8BE0000000
  %5084 = fsub fast float 0x400C5BF8A0000000, %5083
  %5085 = fdiv fast float %5073, %5084
  %5086 = fmul fast float %5085, 0x3FEE31C3C0000000
  %5087 = fmul fast float %5086, %5082
  %5088 = fmul fast float %5072, 0x3FDACB7480000000
  %5089 = fadd fast float %5088, 0xBFD7347680000000
  %5090 = fmul fast float %5089, %5085
  %5091 = fmul fast float %5090, %5082
  br label %5092

; <label>:5092                                    ; preds = %5063, %5036
  %5093 = phi float [ %5078, %5063 ], [ 0.000000e+00, %5036 ]
  %5094 = phi float [ %5079, %5063 ], [ 0.000000e+00, %5036 ]
  %5095 = phi float [ %5080, %5063 ], [ 0.000000e+00, %5036 ]
  %5096 = phi float [ %5087, %5063 ], [ 0.000000e+00, %5036 ]
  %5097 = phi float [ %5091, %5063 ], [ 0.000000e+00, %5036 ]
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = fmul fast float %5098, %5098
  %5100 = fmul fast float %5099, 0x3FEE471020000000
  %5101 = fadd fast float %5100, 0xBFD42F6020000000
  %5102 = fmul fast float %5058, 0x3FD20DD760000000
  %5103 = fmul fast float %5101, %5097
  %5104 = fmul fast float %5096, 0x3FDF454380000000
  %5105 = fmul fast float %5104, %5098
  %5106 = fadd fast float %5105, %5102
  %5107 = fadd fast float %5106, %5103
  %5108 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5109 = fmul fast float %5108, 0x3FDF454380000000
  %5110 = fmul fast float %5108, %5108
  %5111 = fmul fast float %5110, 0x3FEE471020000000
  %5112 = fadd fast float %5111, 0xBFD42F6020000000
  %5113 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5096, float %5097, float 0x3FD20DD760000000, float %5109, float %5112)  ; Dot3(ax,ay,az,bx,by,bz)
  %5114 = call float @dx.op.binary.f32(i32 35, float %4995, float 0.000000e+00)  ; FMax(a,b)
  %5115 = call float @dx.op.binary.f32(i32 35, float %5051, float 0.000000e+00)  ; FMax(a,b)
  %5116 = call float @dx.op.binary.f32(i32 35, float %5107, float 0.000000e+00)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5001, float 0.000000e+00)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5057, float 0.000000e+00)  ; FMax(a,b)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5113, float 0.000000e+00)  ; FMax(a,b)
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = call float @dx.op.binary.f32(i32 36, float %4905, float %5121)  ; FMin(a,b)
  %5123 = fmul fast float %5122, %4929
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = bitcast float %5124 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = call float @dx.op.binary.f32(i32 36, float %4906, float %5121)  ; FMin(a,b)
  %5129 = fmul fast float %5128, %4929
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = bitcast float %5130 to i32
  %5132 = sub nsw i32 2129859010, %5131
  %5133 = bitcast i32 %5132 to float
  %5134 = call float @dx.op.binary.f32(i32 36, float %4907, float %5121)  ; FMin(a,b)
  %5135 = fmul fast float %5134, %4929
  %5136 = fsub fast float 1.000000e+00, %5135
  %5137 = bitcast float %5136 to i32
  %5138 = sub nsw i32 2129859010, %5137
  %5139 = bitcast i32 %5138 to float
  %5140 = fmul fast float %5114, %4928
  %5141 = fmul fast float %5140, %5127
  %5142 = fmul fast float %5115, %4928
  %5143 = fmul fast float %5142, %5133
  %5144 = fmul fast float %5116, %4928
  %5145 = fmul fast float %5144, %5139
  %5146 = call float @dx.op.binary.f32(i32 36, float %4908, float %5121)  ; FMin(a,b)
  %5147 = fmul fast float %5146, %4929
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = bitcast float %5148 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = call float @dx.op.binary.f32(i32 36, float %4909, float %5121)  ; FMin(a,b)
  %5153 = fmul fast float %5152, %4929
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = bitcast float %5154 to i32
  %5156 = sub nsw i32 2129859010, %5155
  %5157 = bitcast i32 %5156 to float
  %5158 = call float @dx.op.binary.f32(i32 36, float %4917, float %5121)  ; FMin(a,b)
  %5159 = fmul fast float %5158, %4929
  %5160 = fsub fast float 1.000000e+00, %5159
  %5161 = bitcast float %5160 to i32
  %5162 = sub nsw i32 2129859010, %5161
  %5163 = bitcast i32 %5162 to float
  %5164 = fmul fast float %5117, %4928
  %5165 = fmul fast float %5164, %5151
  %5166 = fmul fast float %5118, %4928
  %5167 = fmul fast float %5166, %5157
  %5168 = fmul fast float %5119, %4928
  %5169 = fmul fast float %5168, %5163
  %5170 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5143, float %5145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = select i1 %264, float 0.000000e+00, float %5141
  %5172 = select i1 %264, float %5170, float %5143
  %5173 = select i1 %264, float 0.000000e+00, float %5145
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5167, float %5169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = select i1 %264, float 0.000000e+00, float %5165
  %5176 = select i1 %264, float %5174, float %5167
  %5177 = select i1 %264, float 0.000000e+00, float %5169
  %5178 = fmul fast float %4919, 9.843750e-01
  %5179 = fmul fast float %4914, 9.843750e-01
  %5180 = fadd fast float %5178, 7.812500e-03
  %5181 = fadd fast float %5179, 7.812500e-03
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5180, float %5181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 3
  %5185 = fmul fast float %5183, %4908
  %5186 = fmul fast float %5183, %4909
  %5187 = fmul fast float %5183, %4917
  %5188 = fadd fast float %5185, %5184
  %5189 = fadd fast float %5186, %5184
  %5190 = fadd fast float %5187, %5184
  %5191 = fcmp fast ogt float %4298, 0.000000e+00
  br i1 %5191, label %5192, label %5218

; <label>:5192                                    ; preds = %5092
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4298, float %4919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.ResRet.f32 %5193, 1
  %5196 = extractvalue %dx.types.ResRet.f32 %5193, 2
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fadd fast float %5195, -5.000000e-01
  %5199 = fadd fast float %5196, -5.000000e-01
  %5200 = fsub fast float 1.000000e+00, %4908
  %5201 = fsub fast float 1.000000e+00, %4909
  %5202 = fsub fast float 1.000000e+00, %4917
  %5203 = fmul fast float %4908, 4.000000e+00
  %5204 = fmul fast float %5203, %5200
  %5205 = fmul fast float %5204, %5197
  %5206 = fmul fast float %4909, 4.000000e+00
  %5207 = fmul fast float %5206, %5201
  %5208 = fmul fast float %5207, %5198
  %5209 = fmul fast float %4917, 4.000000e+00
  %5210 = fmul fast float %5209, %5202
  %5211 = fmul fast float %5210, %5199
  %5212 = fadd fast float %5205, %5188
  %5213 = fadd fast float %5208, %5189
  %5214 = fadd fast float %5211, %5190
  %5215 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  br label %5218

; <label>:5218                                    ; preds = %5192, %5092
  %5219 = phi float [ %5215, %5192 ], [ %5188, %5092 ]
  %5220 = phi float [ %5216, %5192 ], [ %5189, %5092 ]
  %5221 = phi float [ %5217, %5192 ], [ %5190, %5092 ]
  %5222 = call float @dx.op.binary.f32(i32 35, float %5220, float %5221)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5219, float %5222)  ; FMax(a,b)
  %5224 = fsub fast float 1.000000e+00, %5223
  %5225 = fmul fast float %5223, %4914
  %5226 = fadd fast float %5225, %4914
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5230 = fmul fast float %5226, %5228
  %5231 = fadd fast float %5230, %5229
  %5232 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5233 = fsub fast float 1.000000e+00, %4940
  %5234 = fadd fast float %5233, %5232
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fcmp fast olt float %5235, 1.000000e+00
  br i1 %5236, label %5237, label %5713

; <label>:5237                                    ; preds = %5218
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5240 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5241 = fmul fast float %5239, %111
  %5242 = fmul fast float %5240, %112
  %5243 = fptoui float %5241 to i32
  %5244 = fptoui float %5242 to i32
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5249 = fadd fast float %99, -4.000000e+00
  %5250 = call float @dx.op.binary.f32(i32 35, float %5249, float 0.000000e+00)  ; FMax(a,b)
  %5251 = fadd fast float %5250, %5246
  %5252 = fmul fast float %5251, %5247
  %5253 = call float @dx.op.unary.f32(i32 23, float %5252)  ; Log(value)
  %5254 = fmul fast float %5253, %5248
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5257 = fmul fast float %5254, %5256
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.i32 %5259, 1
  %5261 = add i32 %5260, -1
  %5262 = uitofp i32 %5260 to float
  %5263 = fmul fast float %5262, %5258
  %5264 = fptoui float %5263 to i32
  %5265 = call i32 @dx.op.binary.i32(i32 40, i32 %5264, i32 %5261)  ; UMin(a,b)
  %5266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.i32 %5266, 2
  %5268 = extractvalue %dx.types.CBufRet.i32 %5266, 3
  %5269 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5244, i32 %5267, i32 %5243)  ; UMad(a,b,c)
  %5270 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5265, i32 %5268, i32 %5269)  ; UMad(a,b,c)
  %5271 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5272 = fptoui float %5271 to i32
  %5273 = lshr i32 %5272, 5
  %5274 = call i32 @dx.op.binary.i32(i32 40, i32 %5273, i32 8191)  ; UMin(a,b)
  %5275 = fsub fast float %4725, %172
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fcmp fast ogt float %5276, 0.000000e+00
  %5278 = fcmp fast ogt float %4927, 0.000000e+00
  %5279 = and i1 %5278, %5277
  br i1 %5279, label %5280, label %5309

; <label>:5280                                    ; preds = %5237
  %5281 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.binary.f32(i32 35, float %5281, float -1.000000e+00)  ; FMax(a,b)
  %5283 = call float @dx.op.binary.f32(i32 36, float %5282, float 1.000000e+00)  ; FMin(a,b)
  %5284 = fmul fast float %5283, %5283
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = fmul fast float %5285, 0x3FFC6E2300000000
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = fcmp fast ogt float %5287, 0.000000e+00
  %5289 = call float @dx.op.unary.f32(i32 24, float %5287)  ; Sqrt(value)
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = call float @dx.op.unary.f32(i32 23, float %5290)  ; Log(value)
  %5292 = fmul fast float %5291, 5.000000e+00
  %5293 = call float @dx.op.unary.f32(i32 21, float %5292)  ; Exp(value)
  %5294 = fmul fast float %5293, 0x3FEF591A60000000
  %5295 = fadd fast float %5294, 0x3F94DCB540000000
  %5296 = select i1 %5288, float %5295, float 1.000000e+00
  %5297 = fcmp fast oge float %5296, 1.000000e+00
  %5298 = fmul fast float %5281, 2.000000e+00
  %5299 = fadd fast float %5298, %4927
  %5300 = select i1 %5297, float %5299, float %4927
  %5301 = fsub fast float %5300, %4927
  %5302 = fmul fast float %5301, %5276
  %5303 = fadd fast float %5302, %4927
  %5304 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %5303, float %4925, float %4926, float %5303)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = call float @dx.op.unary.f32(i32 25, float %5304)  ; Rsqrt(value)
  %5306 = fmul fast float %5305, %4925
  %5307 = fmul fast float %5305, %4926
  %5308 = fmul fast float %5303, %5305
  br label %5309

; <label>:5309                                    ; preds = %5280, %5237
  %5310 = phi float [ %5306, %5280 ], [ %4925, %5237 ]
  %5311 = phi float [ %5307, %5280 ], [ %4926, %5237 ]
  %5312 = phi float [ %5308, %5280 ], [ %4927, %5237 ]
  %5313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.i32 %5313, 2
  %5315 = add nsw i32 %5314, -1
  %5316 = call i32 @dx.op.binary.i32(i32 37, i32 %5315, i32 0)  ; IMax(a,b)
  %5317 = shl i32 %5274, 2
  %5318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5317, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.i32 %5318, 0
  %5320 = lshr i32 %5319, 16
  %5321 = and i32 %5319, 65535
  %5322 = lshr i32 %5319, 21
  %5323 = lshr i32 %5321, 5
  %5324 = call i32 @dx.op.binary.i32(i32 40, i32 %5323, i32 %5316)  ; UMin(a,b)
  %5325 = icmp ugt i32 %5322, %5324
  br i1 %5325, label %5689, label %5326

; <label>:5326                                    ; preds = %5309
  br label %5327

; <label>:5327                                    ; preds = %5681, %5326
  %5328 = phi float [ %5682, %5681 ], [ 0.000000e+00, %5326 ]
  %5329 = phi float [ %5683, %5681 ], [ 0.000000e+00, %5326 ]
  %5330 = phi float [ %5684, %5681 ], [ 0.000000e+00, %5326 ]
  %5331 = phi float [ %5685, %5681 ], [ 1.000000e+00, %5326 ]
  %5332 = phi i32 [ %5686, %5681 ], [ %5322, %5326 ]
  %5333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.i32 %5333, 2
  %5335 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5270, i32 %5334, i32 %5332)  ; UMad(a,b,c)
  %5336 = shl i32 %5335, 2
  %5337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5336, i32 undef)  ; BufferLoad(srv,index,wot)
  %5338 = extractvalue %dx.types.ResRet.i32 %5337, 0
  %5339 = shl i32 %5332, 5
  %5340 = sub nsw i32 %5320, %5339
  %5341 = call i32 @dx.op.binary.i32(i32 37, i32 %5340, i32 0)  ; IMax(a,b)
  %5342 = call i32 @dx.op.binary.i32(i32 38, i32 %5341, i32 31)  ; IMin(a,b)
  %5343 = sub nsw i32 1, %5320
  %5344 = add nsw i32 %5343, %5321
  %5345 = call i32 @dx.op.binary.i32(i32 37, i32 %5344, i32 0)  ; IMax(a,b)
  %5346 = call i32 @dx.op.binary.i32(i32 38, i32 %5345, i32 32)  ; IMin(a,b)
  %5347 = and i32 %5346, 31
  %5348 = shl i32 -1, %5347
  %5349 = xor i32 %5348, -1
  %5350 = and i32 %5342, 31
  %5351 = shl i32 %5349, %5350
  %5352 = icmp eq i32 %5346, 32
  %5353 = select i1 %5352, i32 -1, i32 %5351
  %5354 = and i32 %5353, %5338
  %5355 = icmp eq i32 %5354, 0
  br i1 %5355, label %5681, label %5356

; <label>:5356                                    ; preds = %5327
  br label %5357

; <label>:5357                                    ; preds = %5464, %5356
  %5358 = phi float [ %5465, %5464 ], [ %5328, %5356 ]
  %5359 = phi float [ %5466, %5464 ], [ %5329, %5356 ]
  %5360 = phi float [ %5467, %5464 ], [ %5330, %5356 ]
  %5361 = phi float [ %5468, %5464 ], [ %5331, %5356 ]
  %5362 = phi i32 [ %5367, %5464 ], [ %5354, %5356 ]
  %5363 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5362)  ; FirstbitLo(value)
  %5364 = add i32 %5363, %5339
  %5365 = and i32 %5363, 31
  %5366 = shl i32 1, %5365
  %5367 = xor i32 %5366, %5362
  %5368 = mul i32 %5364, 72
  %5369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = add i32 %5368, 12
  %5374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.i32 %5374, 0
  %5376 = add i32 %5368, 16
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = add i32 %5368, 28
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = add i32 %5368, 32
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = extractvalue %dx.types.ResRet.f32 %5385, 3
  %5390 = add i32 %5368, 48
  %5391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = add i32 %5368, 56
  %5395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = add i32 %5368, 64
  %5399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 1
  %5402 = mul i32 %5364, 60
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 1
  %5406 = extractvalue %dx.types.ResRet.f32 %5403, 2
  %5407 = add i32 %5402, 12
  %5408 = add i32 %5402, 48
  %5409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.ResRet.f32 %5409, 1
  %5412 = extractvalue %dx.types.ResRet.f32 %5409, 2
  %5413 = and i32 %5375, 32767
  %5414 = bitcast float %5370 to i32
  %5415 = icmp eq i32 %5414, -1
  %5416 = bitcast float %5371 to i32
  %5417 = and i32 %5375, 32768
  %5418 = icmp ne i32 %5417, 0
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = fsub fast float %5404, %5420
  %5424 = fsub fast float %5405, %5421
  %5425 = fsub fast float %5406, %5422
  %5426 = fsub fast float %170, %5423
  %5427 = fsub fast float %171, %5424
  %5428 = fsub fast float %172, %5425
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5430, float %5431, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = add i32 %5402, 24
  %5435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5434, i32 undef)  ; BufferLoad(srv,index,wot)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.ResRet.f32 %5435, 2
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = add i32 %5402, 36
  %5441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = call float @dx.op.unary.f32(i32 6, float %5433)  ; FAbs(value)
  %5447 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5448 = call float @dx.op.unary.f32(i32 6, float %5445)  ; FAbs(value)
  %5449 = fsub fast float %5410, %5446
  %5450 = fsub fast float %5411, %5447
  %5451 = fsub fast float %5412, %5448
  %5452 = fmul fast float %5449, %5378
  %5453 = fmul fast float %5450, %5379
  %5454 = fmul fast float %5451, %5380
  %5455 = call float @dx.op.binary.f32(i32 36, float %5453, float %5454)  ; FMin(a,b)
  %5456 = call float @dx.op.binary.f32(i32 36, float %5452, float %5455)  ; FMin(a,b)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = call float @dx.op.binary.f32(i32 36, float %5361, float %5457)  ; FMin(a,b)
  %5459 = uitofp i1 %5418 to float
  %5460 = fadd fast float %5276, 1.000000e+00
  %5461 = fsub fast float %5460, %5459
  %5462 = fmul fast float %5458, %5461
  %5463 = fcmp fast ogt float %5462, 0.000000e+00
  br i1 %5463, label %5470, label %5464

; <label>:5464                                    ; preds = %5612, %5357
  %5465 = phi float [ %5676, %5612 ], [ %5358, %5357 ]
  %5466 = phi float [ %5677, %5612 ], [ %5359, %5357 ]
  %5467 = phi float [ %5678, %5612 ], [ %5360, %5357 ]
  %5468 = phi float [ %5679, %5612 ], [ %5361, %5357 ]
  %5469 = icmp eq i32 %5362, %5366
  br i1 %5469, label %5680, label %5357

; <label>:5470                                    ; preds = %5357
  br i1 %5415, label %5528, label %5471

; <label>:5471                                    ; preds = %5470
  %5472 = fsub fast float -0.000000e+00, %5430
  %5473 = fsub fast float -0.000000e+00, %5431
  %5474 = fsub fast float -0.000000e+00, %5432
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fsub fast float -0.000000e+00, %5475
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fadd fast float %5477, %5393
  %5479 = fadd fast float %5392, %5477
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = fcmp ogt float %5475, -0.000000e+00
  %5482 = select i1 %5481, float %5480, float %5478
  %5483 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5484 = fdiv fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5482, %5484
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float 0.000000e+00)  ; FMax(a,b)
  %5487 = fsub fast float -0.000000e+00, %5436
  %5488 = fsub fast float -0.000000e+00, %5437
  %5489 = fsub fast float -0.000000e+00, %5438
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fadd fast float %5492, %5397
  %5494 = fadd fast float %5396, %5492
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = fcmp ogt float %5490, -0.000000e+00
  %5497 = select i1 %5496, float %5495, float %5493
  %5498 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5497, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = fsub fast float -0.000000e+00, %5442
  %5503 = fsub fast float -0.000000e+00, %5443
  %5504 = fsub fast float -0.000000e+00, %5444
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5502, float %5503, float %5504)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fadd fast float %5507, %5401
  %5509 = fadd fast float %5400, %5507
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = fcmp ogt float %5505, -0.000000e+00
  %5512 = select i1 %5511, float %5510, float %5508
  %5513 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5514 = fdiv fast float 1.000000e+00, %5513
  %5515 = fmul fast float %5512, %5514
  %5516 = call float @dx.op.binary.f32(i32 35, float %5515, float 0.000000e+00)  ; FMax(a,b)
  %5517 = call float @dx.op.binary.f32(i32 36, float %5501, float %5516)  ; FMin(a,b)
  %5518 = call float @dx.op.binary.f32(i32 36, float %5486, float %5517)  ; FMin(a,b)
  %5519 = fmul fast float %5518, %5310
  %5520 = fmul fast float %5518, %5311
  %5521 = fmul fast float %5518, %5312
  %5522 = fadd fast float %5519, %170
  %5523 = fadd fast float %5520, %171
  %5524 = fadd fast float %5521, %172
  %5525 = fsub fast float %5522, %5370
  %5526 = fsub fast float %5523, %5371
  %5527 = fsub fast float %5524, %5372
  br label %5535

; <label>:5528                                    ; preds = %5470
  %5529 = fmul fast float %5310, 8.096000e+03
  %5530 = fmul fast float %5311, 8.096000e+03
  %5531 = fmul fast float %5312, 8.096000e+03
  %5532 = fadd fast float %5529, %170
  %5533 = fadd fast float %5530, %171
  %5534 = fadd fast float %5531, %172
  br label %5535

; <label>:5535                                    ; preds = %5528, %5471
  %5536 = phi float [ %5310, %5528 ], [ %5525, %5471 ]
  %5537 = phi float [ %5311, %5528 ], [ %5526, %5471 ]
  %5538 = phi float [ %5312, %5528 ], [ %5527, %5471 ]
  %5539 = phi float [ %5532, %5528 ], [ %5522, %5471 ]
  %5540 = phi float [ %5533, %5528 ], [ %5523, %5471 ]
  %5541 = phi float [ %5534, %5528 ], [ %5524, %5471 ]
  %5542 = fcmp fast olt float %5389, 1.000000e+00
  br i1 %5542, label %5543, label %5574, !dx.controlflow.hints !100

; <label>:5543                                    ; preds = %5535
  %5544 = fmul fast float %5538, %5387
  %5545 = fmul fast float %5537, %5388
  %5546 = fsub fast float %5544, %5545
  %5547 = fmul fast float %5536, %5388
  %5548 = fmul fast float %5538, %5386
  %5549 = fsub fast float %5547, %5548
  %5550 = fmul fast float %5537, %5386
  %5551 = fmul fast float %5536, %5387
  %5552 = fsub fast float %5550, %5551
  %5553 = fmul fast float %5546, 2.000000e+00
  %5554 = fmul fast float %5549, 2.000000e+00
  %5555 = fmul fast float %5552, 2.000000e+00
  %5556 = fmul fast float %5553, %5389
  %5557 = fmul fast float %5554, %5389
  %5558 = fmul fast float %5555, %5389
  %5559 = fmul fast float %5555, %5387
  %5560 = fmul fast float %5554, %5388
  %5561 = fmul fast float %5553, %5388
  %5562 = fmul fast float %5555, %5386
  %5563 = fmul fast float %5554, %5386
  %5564 = fmul fast float %5553, %5387
  %5565 = fadd fast float %5559, %5536
  %5566 = fadd fast float %5565, %5556
  %5567 = fsub fast float %5566, %5560
  %5568 = fsub fast float %5537, %5562
  %5569 = fadd fast float %5568, %5557
  %5570 = fadd fast float %5569, %5561
  %5571 = fadd fast float %5558, %5538
  %5572 = fsub fast float %5571, %5564
  %5573 = fadd fast float %5572, %5563
  br label %5574

; <label>:5574                                    ; preds = %5543, %5535
  %5575 = phi float [ %5567, %5543 ], [ %5536, %5535 ]
  %5576 = phi float [ %5570, %5543 ], [ %5537, %5535 ]
  %5577 = phi float [ %5573, %5543 ], [ %5538, %5535 ]
  br i1 %5415, label %5609, label %5578

; <label>:5578                                    ; preds = %5574
  %5579 = fmul fast float %4914, 0x400187C840000000
  %5580 = fadd fast float %5579, 0xC00EFC2120000000
  %5581 = fmul fast float %5580, %4914
  %5582 = fadd fast float %5581, 0x3FE5D16340000000
  %5583 = fmul fast float %5582, %4914
  %5584 = fadd fast float %5583, 1.000000e+00
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fsub fast float %5539, %170
  %5587 = fsub fast float %5540, %171
  %5588 = fsub fast float %5541, %172
  %5589 = fsub fast float %5539, %5370
  %5590 = fsub fast float %5540, %5371
  %5591 = fsub fast float %5541, %5372
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5587, float %5588, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fadd fast float %5593, 0x3EE4F8B580000000
  %5595 = fdiv fast float %5592, %5594
  %5596 = bitcast float %5595 to i32
  %5597 = ashr i32 %5596, 1
  %5598 = add nsw i32 %5597, 532487669
  %5599 = bitcast i32 %5598 to float
  %5600 = fmul fast float %5599, %5585
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, 0x4009981AE0000000
  %5603 = fsub fast float 0x40111BBD80000000, %5602
  %5604 = fmul fast float %5603, %5601
  %5605 = fadd fast float %5604, 0xC0009F6020000000
  %5606 = fmul fast float %5605, %5601
  %5607 = fadd fast float %5606, 1.000000e+00
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  br label %5612

; <label>:5609                                    ; preds = %5574
  %5610 = icmp ne i32 %5416, -1
  %5611 = zext i1 %5610 to i32
  br label %5612

; <label>:5612                                    ; preds = %5609, %5578
  %5613 = phi float [ %4914, %5609 ], [ %5608, %5578 ]
  %5614 = phi i32 [ %5611, %5609 ], [ 0, %5578 ]
  %5615 = fmul float %5613, 5.000000e+00
  %5616 = fsub float 5.000000e+00, %5615
  %5617 = icmp ne i32 %5614, 0
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5620 = fadd fast float %5619, %5616
  %5621 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5620)  ; FMax(a,b)
  %5622 = call float @dx.op.unary.f32(i32 6, float %5575)  ; FAbs(value)
  %5623 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5624 = fadd fast float %5623, %5622
  %5625 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5626 = fadd fast float %5624, %5625
  %5627 = fcmp fast oeq float %5626, 0.000000e+00
  %5628 = fdiv fast float 1.000000e+00, %5626
  %5629 = select i1 %5627, float 1.000000e+00, float %5628
  %5630 = fmul fast float %5629, %5575
  %5631 = fmul fast float %5629, %5576
  %5632 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5634 = fsub fast float 1.000000e+00, %5632
  %5635 = fsub fast float 1.000000e+00, %5633
  %5636 = fcmp fast oge float %5630, 0.000000e+00
  %5637 = fcmp fast oge float %5631, 0.000000e+00
  %5638 = select i1 %5636, float 1.000000e+00, float -1.000000e+00
  %5639 = select i1 %5637, float 1.000000e+00, float -1.000000e+00
  %5640 = fcmp fast ole float %5577, 0.000000e+00
  %5641 = fmul fast float %5638, %5634
  %5642 = fmul fast float %5639, %5635
  %5643 = select i1 %5640, float %5641, float %5630
  %5644 = select i1 %5640, float %5642, float %5631
  %5645 = fmul fast float %5643, 5.000000e-01
  %5646 = fmul fast float %5644, 5.000000e-01
  %5647 = fadd fast float %5645, 5.000000e-01
  %5648 = fadd fast float %5646, 5.000000e-01
  %5649 = uitofp i32 %5413 to float
  %5650 = call float @dx.op.binary.f32(i32 36, float %5621, float 3.000000e+00)  ; FMin(a,b)
  %5651 = fadd fast float %5650, 2.000000e+00
  %5652 = call float @dx.op.unary.f32(i32 21, float %5651)  ; Exp(value)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5654 = fmul fast float %5653, %5652
  %5655 = fmul fast float %5654, 2.000000e+00
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = fmul fast float %5647, %5656
  %5658 = fmul fast float %5648, %5656
  %5659 = fadd fast float %5657, %5654
  %5660 = fadd fast float %5658, %5654
  %5661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5659, float %5660, float %5649, float undef, i32 0, i32 0, i32 undef, float %5621)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5662 = extractvalue %dx.types.ResRet.f32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.f32 %5661, 1
  %5664 = extractvalue %dx.types.ResRet.f32 %5661, 2
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5667 = fmul fast float %5666, %5383
  %5668 = call float @dx.op.binary.f32(i32 36, float %4945, float %5667)  ; FMin(a,b)
  %5669 = select i1 %5617, float %5668, float %5667
  %5670 = fmul fast float %5662, %5462
  %5671 = fmul fast float %5670, %5669
  %5672 = fmul fast float %5663, %5462
  %5673 = fmul fast float %5672, %5669
  %5674 = fmul fast float %5664, %5462
  %5675 = fmul fast float %5674, %5669
  %5676 = fadd fast float %5671, %5358
  %5677 = fadd fast float %5673, %5359
  %5678 = fadd fast float %5675, %5360
  %5679 = fsub fast float %5361, %5462
  br label %5464

; <label>:5680                                    ; preds = %5464
  br label %5681

; <label>:5681                                    ; preds = %5680, %5327
  %5682 = phi float [ %5328, %5327 ], [ %5465, %5680 ]
  %5683 = phi float [ %5329, %5327 ], [ %5466, %5680 ]
  %5684 = phi float [ %5330, %5327 ], [ %5467, %5680 ]
  %5685 = phi float [ %5331, %5327 ], [ %5468, %5680 ]
  %5686 = add i32 %5332, 1
  %5687 = icmp ugt i32 %5686, %5324
  br i1 %5687, label %5688, label %5327, !llvm.loop !101

; <label>:5688                                    ; preds = %5681
  br label %5689

; <label>:5689                                    ; preds = %5688, %5309
  %5690 = phi float [ 0.000000e+00, %5309 ], [ %5682, %5688 ]
  %5691 = phi float [ 0.000000e+00, %5309 ], [ %5683, %5688 ]
  %5692 = phi float [ 0.000000e+00, %5309 ], [ %5684, %5688 ]
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5690, float %5691, float %5692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = select i1 %264, float 0.000000e+00, float %5690
  %5695 = select i1 %264, float %5693, float %5691
  %5696 = select i1 %264, float 0.000000e+00, float %5692
  %5697 = fcmp fast olt float %5235, 0.000000e+00
  %5698 = call float @dx.op.unary.f32(i32 6, float %5235)  ; FAbs(value)
  %5699 = fmul fast float %5698, %5175
  %5700 = fmul fast float %5698, %5176
  %5701 = fmul fast float %5698, %5177
  %5702 = select i1 %5697, float %5175, float %5699
  %5703 = select i1 %5697, float %5176, float %5700
  %5704 = select i1 %5697, float %5177, float %5701
  %5705 = fsub fast float 1.000000e+00, %5698
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = fmul fast float %5706, %5694
  %5708 = fmul fast float %5706, %5695
  %5709 = fmul fast float %5706, %5696
  %5710 = fadd fast float %5702, %5707
  %5711 = fadd fast float %5703, %5708
  %5712 = fadd fast float %5704, %5709
  br label %5713

; <label>:5713                                    ; preds = %5689, %5218
  %5714 = phi float [ %5175, %5218 ], [ %5710, %5689 ]
  %5715 = phi float [ %5176, %5218 ], [ %5711, %5689 ]
  %5716 = phi float [ %5177, %5218 ], [ %5712, %5689 ]
  %5717 = fmul fast float %5224, %5171
  %5718 = fmul fast float %5224, %5172
  %5719 = fmul fast float %5224, %5173
  %5720 = call float @dx.op.dot3.f32(i32 55, float %4905, float %4906, float %4907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fcmp fast ogt float %5720, 0x3E7FF19E20000000
  %5722 = fdiv fast float 1.000000e+00, %5720
  %5723 = select i1 %5721, float %5722, float 0.000000e+00
  %5724 = fmul fast float %5723, %4905
  %5725 = fmul fast float %5723, %4906
  %5726 = fmul fast float %5723, %4907
  %5727 = fadd fast float %5724, -1.000000e+00
  %5728 = fadd fast float %5725, -1.000000e+00
  %5729 = fadd fast float %5726, -1.000000e+00
  %5730 = fmul fast float %5727, 5.000000e-01
  %5731 = fmul fast float %5728, 5.000000e-01
  %5732 = fmul fast float %5729, 5.000000e-01
  %5733 = fadd fast float %5730, 1.000000e+00
  %5734 = fadd fast float %5731, 1.000000e+00
  %5735 = fadd fast float %5732, 1.000000e+00
  %5736 = fmul fast float %5714, %5219
  %5737 = fmul fast float %5715, %5220
  %5738 = fmul fast float %5716, %5221
  %5739 = fsub fast float 1.000000e+00, %4919
  %5740 = bitcast float %5739 to i32
  %5741 = sitofp i32 %5740 to float
  %5742 = fmul fast float %5741, 5.000000e+00
  %5743 = fadd fast float %5742, 0xC1EFBF8940000000
  %5744 = fptosi float %5743 to i32
  %5745 = bitcast i32 %5744 to float
  %5746 = fmul fast float %5745, %4299
  %5747 = fmul fast float %5171, %5746
  %5748 = fmul fast float %5747, %5224
  %5749 = fmul fast float %5748, %5733
  %5750 = fmul fast float %5172, %5746
  %5751 = fmul fast float %5750, %5224
  %5752 = fmul fast float %5751, %5734
  %5753 = fmul fast float %5173, %5746
  %5754 = fmul fast float %5753, %5224
  %5755 = fmul fast float %5754, %5735
  %5756 = fmul fast float %5717, %4325
  %5757 = fmul fast float %5718, %4325
  %5758 = fmul fast float %5719, %4325
  %5759 = fadd fast float %5736, %4291
  %5760 = fadd fast float %5759, %5749
  %5761 = fmul fast float %5760, %4325
  %5762 = fadd fast float %5737, %4292
  %5763 = fadd fast float %5762, %5752
  %5764 = fmul fast float %5763, %4325
  %5765 = fadd fast float %5738, %4293
  %5766 = fadd fast float %5765, %5755
  %5767 = fmul fast float %5766, %4325
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 3
  %5770 = fcmp fast oeq float %5769, 0.000000e+00
  br i1 %5770, label %7313, label %5771

; <label>:5771                                    ; preds = %5713
  %5772 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5773 = extractvalue %dx.types.CBufRet.f32 %5768, 1
  %5774 = extractvalue %dx.types.CBufRet.f32 %5768, 2
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = select i1 %264, float %5780, float %5776
  %5784 = select i1 %264, float %5782, float %5777
  %5785 = select i1 %264, float %5781, float %5778
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5788 = fmul fast float %5787, %120
  %5789 = fmul fast float %5787, %122
  %5790 = fmul fast float %5787, %124
  %5791 = fadd fast float %5788, %170
  %5792 = fadd fast float %5789, %171
  %5793 = fadd fast float %5790, %172
  %5794 = fcmp fast olt float %5769, 0.000000e+00
  br i1 %5794, label %6890, label %5795

; <label>:5795                                    ; preds = %5771
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.CBufRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.CBufRet.f32 %5801, 2
  %5805 = extractvalue %dx.types.CBufRet.f32 %5801, 3
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5810 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5811 = fmul fast float %5797, %5791
  %5812 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5798, float %5811)  ; FMad(a,b,c)
  %5813 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5799, float %5812)  ; FMad(a,b,c)
  %5814 = fadd fast float %5813, %5800
  %5815 = fmul fast float %5802, %5791
  %5816 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5803, float %5815)  ; FMad(a,b,c)
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5804, float %5816)  ; FMad(a,b,c)
  %5818 = fadd fast float %5817, %5805
  %5819 = fmul fast float %5807, %5791
  %5820 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5808, float %5819)  ; FMad(a,b,c)
  %5821 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5809, float %5820)  ; FMad(a,b,c)
  %5822 = fadd fast float %5821, %5810
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5827 = fmul fast float %5826, %5814
  %5828 = fmul fast float %5826, %5818
  %5829 = fadd fast float %5827, %5824
  %5830 = fadd fast float %5828, %5825
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5835 = fmul fast float %5834, %5814
  %5836 = fmul fast float %5834, %5818
  %5837 = fadd fast float %5835, %5832
  %5838 = fadd fast float %5836, %5833
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5841 = fsub fast float %5840, %5822
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = fmul fast float %5841, %5842
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5849 = fadd fast float %5848, %5846
  %5850 = fcmp fast ogt float %5849, 0.000000e+00
  br i1 %5850, label %5851, label %5875

; <label>:5851                                    ; preds = %5795
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = fsub fast float %5837, %5853
  %5856 = fsub fast float %5838, %5854
  %5857 = fcmp fast olt float %5855, 0.000000e+00
  %5858 = fcmp fast olt float %5856, 0.000000e+00
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5863 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5864 = select i1 %5857, float %5860, float %5862
  %5865 = select i1 %5858, float %5861, float %5863
  %5866 = fmul fast float %5864, %5855
  %5867 = fmul fast float %5865, %5856
  %5868 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %5869 = call float @dx.op.unary.f32(i32 6, float %5867)  ; FAbs(value)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5871 = call float @dx.op.binary.f32(i32 35, float %5868, float %5869)  ; FMax(a,b)
  %5872 = fsub fast float %5870, %5871
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = fmul fast float %5873, %5845
  br label %5875

; <label>:5875                                    ; preds = %5851, %5795
  %5876 = phi float [ %5874, %5851 ], [ 0.000000e+00, %5795 ]
  %5877 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5879 = fadd fast float %5878, %5877
  %5880 = fcmp fast ogt float %5879, 0.000000e+00
  %5881 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  br i1 %5880, label %5882, label %5905

; <label>:5882                                    ; preds = %5875
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = fsub fast float %5829, %5884
  %5887 = fsub fast float %5830, %5885
  %5888 = fcmp fast olt float %5886, 0.000000e+00
  %5889 = fcmp fast olt float %5887, 0.000000e+00
  %5890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5891 = extractvalue %dx.types.CBufRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.CBufRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.CBufRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5890, 3
  %5895 = select i1 %5888, float %5891, float %5893
  %5896 = select i1 %5889, float %5892, float %5894
  %5897 = fmul fast float %5895, %5886
  %5898 = fmul fast float %5896, %5887
  %5899 = call float @dx.op.unary.f32(i32 6, float %5897)  ; FAbs(value)
  %5900 = call float @dx.op.unary.f32(i32 6, float %5898)  ; FAbs(value)
  %5901 = call float @dx.op.binary.f32(i32 35, float %5899, float %5900)  ; FMax(a,b)
  %5902 = fsub fast float %5881, %5901
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fmul fast float %5903, %5845
  br label %5905

; <label>:5905                                    ; preds = %5882, %5875
  %5906 = phi float [ %5904, %5882 ], [ 0.000000e+00, %5875 ]
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.CBufRet.f32 %5910, 1
  %5913 = fsub fast float %5814, %5911
  %5914 = fsub fast float %5818, %5912
  %5915 = fcmp fast olt float %5913, 0.000000e+00
  %5916 = fcmp fast olt float %5914, 0.000000e+00
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.CBufRet.f32 %5917, 2
  %5921 = extractvalue %dx.types.CBufRet.f32 %5917, 3
  %5922 = select i1 %5915, float %5918, float %5920
  %5923 = select i1 %5916, float %5919, float %5921
  %5924 = fmul fast float %5922, %5913
  %5925 = fmul fast float %5923, %5914
  %5926 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5927 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5926, float %5927)  ; FMax(a,b)
  %5929 = fsub fast float %5881, %5928
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = call float @dx.op.binary.f32(i32 36, float %5930, float %5909)  ; FMin(a,b)
  %5932 = fmul fast float %5931, %5845
  %5933 = fsub fast float %5906, %5932
  %5934 = fsub fast float %5876, %5906
  %5935 = fsub fast float %5934, %5932
  %5936 = call float @dx.op.binary.f32(i32 35, float %5906, float %5876)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5932, float %5936)  ; FMax(a,b)
  %5938 = fcmp fast olt float %5937, 1.000000e+00
  br i1 %5938, label %5939, label %6337, !dx.controlflow.hints !103

; <label>:5939                                    ; preds = %5905
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = fcmp fast une float %5941, 0.000000e+00
  br i1 %5942, label %5943, label %6337, !dx.controlflow.hints !104

; <label>:5943                                    ; preds = %5939
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.CBufRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.CBufRet.f32 %5954, 2
  %5958 = extractvalue %dx.types.CBufRet.f32 %5954, 3
  %5959 = fmul fast float %5945, %5791
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5946, float %5959)  ; FMad(a,b,c)
  %5961 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5947, float %5960)  ; FMad(a,b,c)
  %5962 = fadd fast float %5961, %5948
  %5963 = fmul fast float %5950, %5791
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5951, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5952, float %5964)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5953
  %5967 = fmul fast float %5955, %5791
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %5956, float %5967)  ; FMad(a,b,c)
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5957, float %5968)  ; FMad(a,b,c)
  %5970 = fadd fast float %5969, %5958
  %5971 = fcmp fast oge float %5962, 1.000000e+00
  %5972 = fcmp fast oge float %5966, 1.000000e+00
  %5973 = or i1 %5971, %5972
  %5974 = fcmp fast olt float %5962, 0.000000e+00
  %5975 = fcmp fast olt float %5966, 0.000000e+00
  %5976 = or i1 %5974, %5975
  %5977 = or i1 %5973, %5976
  br i1 %5977, label %6337, label %5978, !dx.controlflow.hints !105

; <label>:5978                                    ; preds = %5943
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %5983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.i32 %5983, 2
  %5985 = uitofp i32 %5984 to float
  %5986 = extractvalue %dx.types.CBufRet.i32 %5983, 3
  %5987 = uitofp i32 %5986 to float
  %5988 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5989 = fmul fast float %5988, 2.000000e+00
  %5990 = fsub fast float %5962, %5980
  %5991 = fsub fast float %5966, %5981
  %5992 = fmul fast float %5989, %5990
  %5993 = fmul fast float %5989, %5991
  %5994 = fdiv fast float 1.000000e+00, %5774
  %5995 = fmul fast float %5993, %5994
  %5996 = call float @dx.op.unary.f32(i32 6, float %5995)  ; FAbs(value)
  %5997 = fmul fast float %5982, %5793
  %5998 = fmul fast float %5997, %5989
  %5999 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6000 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5999, float %5996)  ; FMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %6000, float %6001)  ; FMax(a,b)
  %6003 = fmul fast float %6002, 2.000000e+00
  %6004 = call float @dx.op.unary.f32(i32 23, float %6003)  ; Log(value)
  %6005 = call float @dx.op.binary.f32(i32 35, float %6004, float %5985)  ; FMax(a,b)
  %6006 = call float @dx.op.unary.f32(i32 22, float %6005)  ; Frc(value)
  %6007 = fadd fast float %6006, 0xBFEA666660000000
  %6008 = fmul fast float %6007, 8.000000e+00
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = call float @dx.op.unary.f32(i32 27, float %6005)  ; Round_ni(value)
  %6011 = fadd fast float %6010, %6009
  %6012 = call float @dx.op.binary.f32(i32 36, float %6011, float %5987)  ; FMin(a,b)
  %6013 = call float @dx.op.unary.f32(i32 27, float %6012)  ; Round_ni(value)
  %6014 = fsub fast float -0.000000e+00, %6013
  %6015 = call float @dx.op.unary.f32(i32 21, float %6014)  ; Exp(value)
  %6016 = fmul fast float %6015, %5989
  %6017 = fmul fast float %6016, %5962
  %6018 = fmul fast float %6016, %5966
  %6019 = fmul fast float %6017, 2.500000e-01
  %6020 = fmul fast float %6018, 2.500000e-01
  %6021 = fadd fast float %6019, 5.000000e-01
  %6022 = fadd fast float %6020, 5.000000e-01
  %6023 = fsub fast float %5987, %5985
  %6024 = fptoui float %6023 to i32
  %6025 = add i32 %6024, 320
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6025)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = fcmp fast une float %6012, %5987
  %6030 = fsub fast float %5962, %6027
  %6031 = fsub fast float %5966, %6028
  %6032 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6033 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6034 = fmul fast float %6032, %6016
  %6035 = fmul fast float %6033, %6016
  %6036 = fcmp fast olt float %6034, 1.000000e+00
  %6037 = fcmp fast olt float %6035, 1.000000e+00
  %6038 = and i1 %6036, %6037
  %6039 = or i1 %6029, %6038
  br i1 %6039, label %6040, label %6337, !dx.controlflow.hints !106

; <label>:6040                                    ; preds = %5978
  %6041 = fmul fast float %6018, 5.000000e-01
  %6042 = fmul fast float %6017, 5.000000e-01
  %6043 = fadd fast float %6041, 5.000000e-01
  %6044 = fadd fast float %6042, 5.000000e-01
  %6045 = sitofp i32 %5984 to float
  %6046 = fsub fast float %6012, %6045
  %6047 = call float @dx.op.unary.f32(i32 27, float %6046)  ; Round_ni(value)
  %6048 = call float @dx.op.unary.f32(i32 22, float %6012)  ; Frc(value)
  %6049 = call float @dx.op.unary.f32(i32 22, float %6044)  ; Frc(value)
  %6050 = call float @dx.op.unary.f32(i32 22, float %6043)  ; Frc(value)
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6049, float %6050, float %6047, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = extractvalue %dx.types.ResRet.f32 %6051, 3
  %6056 = fcmp fast ogt float %6048, 0.000000e+00
  br i1 %6056, label %6057, label %6078, !dx.controlflow.hints !107

; <label>:6057                                    ; preds = %6040
  %6058 = fadd fast float %6047, 1.000000e+00
  %6059 = call float @dx.op.unary.f32(i32 22, float %6021)  ; Frc(value)
  %6060 = call float @dx.op.unary.f32(i32 22, float %6022)  ; Frc(value)
  %6061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6059, float %6060, float %6058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 0
  %6063 = extractvalue %dx.types.ResRet.f32 %6061, 1
  %6064 = extractvalue %dx.types.ResRet.f32 %6061, 2
  %6065 = extractvalue %dx.types.ResRet.f32 %6061, 3
  %6066 = fsub fast float %6062, %6052
  %6067 = fsub fast float %6063, %6053
  %6068 = fsub fast float %6064, %6054
  %6069 = fsub fast float %6065, %6055
  %6070 = fmul fast float %6066, %6048
  %6071 = fmul fast float %6067, %6048
  %6072 = fmul fast float %6068, %6048
  %6073 = fmul fast float %6069, %6048
  %6074 = fadd fast float %6070, %6052
  %6075 = fadd fast float %6071, %6053
  %6076 = fadd fast float %6072, %6054
  %6077 = fadd fast float %6073, %6055
  br label %6078

; <label>:6078                                    ; preds = %6057, %6040
  %6079 = phi float [ %6074, %6057 ], [ %6052, %6040 ]
  %6080 = phi float [ %6075, %6057 ], [ %6053, %6040 ]
  %6081 = phi float [ %6076, %6057 ], [ %6054, %6040 ]
  %6082 = phi float [ %6077, %6057 ], [ %6055, %6040 ]
  %6083 = fadd fast float %6079, -5.000000e-01
  %6084 = fadd fast float %6081, -5.000000e-01
  %6085 = fmul fast float %6083, 0xBFD5555560000000
  %6086 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6084, float %6085)  ; FMad(a,b,c)
  %6087 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6080, float 0.000000e+00)  ; FMad(a,b,c)
  %6088 = fadd fast float %6087, %6082
  %6089 = fmul fast float %6083, -7.500000e-01
  %6090 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6084, float %6089)  ; FMad(a,b,c)
  %6091 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6080, float 0.000000e+00)  ; FMad(a,b,c)
  %6092 = fadd fast float %6091, %6082
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 0
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6100 = fsub fast float %6096, %6086
  %6101 = fsub fast float %6097, %6088
  %6102 = fsub fast float %6098, %6090
  %6103 = fsub fast float %6099, %6092
  %6104 = fmul fast float %6100, %6094
  %6105 = fmul fast float %6101, %6094
  %6106 = fmul fast float %6102, %6094
  %6107 = fmul fast float %6103, %6094
  %6108 = fadd fast float %6104, %6086
  %6109 = fadd fast float %6105, %6088
  %6110 = fadd fast float %6106, %6090
  %6111 = fadd fast float %6107, %6092
  %6112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.i32 %6112, 0
  %6114 = and i32 %6113, 536870911
  %6115 = uitofp i32 %6114 to float
  %6116 = fmul fast float %6115, %5962
  %6117 = fmul fast float %6115, %5966
  %6118 = fptoui float %6116 to i32
  %6119 = fptoui float %6117 to i32
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = and i32 %6121, 31
  %6123 = lshr i32 %6118, %6122
  %6124 = lshr i32 %6119, %6122
  %6125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.i32 %6125, 0
  %6127 = and i32 %6126, 31
  %6128 = shl i32 1, %6127
  %6129 = call i32 @dx.op.binary.i32(i32 40, i32 %6128, i32 4)  ; UMin(a,b)
  %6130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.i32 %6130, 0
  %6132 = extractvalue %dx.types.ResRet.i32 %6130, 1
  %6133 = icmp eq i32 %6129, 0
  br i1 %6133, label %6175, label %6134

; <label>:6134                                    ; preds = %6078
  br label %6135

; <label>:6135                                    ; preds = %6163, %6134
  %6136 = phi i32 [ %6166, %6163 ], [ 0, %6134 ]
  %6137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.i32 %6137, 0
  %6139 = lshr i32 %6138, 16
  %6140 = and i32 %6139, 31
  %6141 = shl i32 %6124, %6140
  %6142 = add i32 %6141, %6123
  %6143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.i32 %6143, 0
  %6145 = and i32 %6144, 31
  %6146 = shl i32 %6142, %6145
  %6147 = add i32 %6146, %6136
  %6148 = shl i32 %6147, 2
  %6149 = add i32 %6148, 32
  %6150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6149, i32 undef)  ; BufferLoad(srv,index,wot)
  %6151 = extractvalue %dx.types.ResRet.i32 %6150, 0
  %6152 = icmp slt i32 %6151, 0
  %6153 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6136
  %6154 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6136
  %6155 = bitcast float* %6153 to i32*
  %6156 = bitcast float* %6154 to i32*
  br i1 %6152, label %6157, label %6163

; <label>:6157                                    ; preds = %6135
  %6158 = and i32 %6151, 1073741823
  %6159 = add nuw nsw i32 %6158, 20
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6159, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.i32 %6160, 1
  br label %6163

; <label>:6163                                    ; preds = %6157, %6135
  %6164 = phi i32 [ %6161, %6157 ], [ %6131, %6135 ]
  %6165 = phi i32 [ %6162, %6157 ], [ %6132, %6135 ]
  store i32 %6164, i32* %6155, align 4
  store i32 %6165, i32* %6156, align 4
  %6166 = add nuw i32 %6136, 1
  %6167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.i32 %6167, 2
  %6169 = icmp eq i32 %6168, 0
  %6170 = icmp ugt i32 %6151, -1073741825
  %6171 = and i1 %6170, %6169
  %6172 = icmp ult i32 %6166, %6129
  %6173 = and i1 %6171, %6172
  br i1 %6173, label %6135, label %6174

; <label>:6174                                    ; preds = %6163
  br label %6175

; <label>:6175                                    ; preds = %6174, %6078
  %6176 = phi i32 [ 0, %6078 ], [ %6166, %6174 ]
  %6177 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %6178 = fptoui float %6177 to i32
  %6179 = icmp eq i32 %6178, 0
  br i1 %6179, label %6231, label %6180

; <label>:6180                                    ; preds = %6175
  br label %6181

; <label>:6181                                    ; preds = %6226, %6180
  %6182 = phi i32 [ %6227, %6226 ], [ %6176, %6180 ]
  %6183 = phi i32 [ %6228, %6226 ], [ 0, %6180 ]
  %6184 = lshr i32 %6183, 2
  %6185 = and i32 %6183, 3
  %6186 = add nuw nsw i32 %6184, 83
  %6187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6186)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.i32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.i32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.i32 %6187, 2
  %6191 = extractvalue %dx.types.CBufRet.i32 %6187, 3
  %6192 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6188, i32* %6192, align 4
  %6193 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6189, i32* %6193, align 4
  %6194 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6190, i32* %6194, align 4
  %6195 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6191, i32* %6195, align 4
  %6196 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6185
  %6197 = load i32, i32* %6196, align 4, !tbaa !108, !noalias !112
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = lshr i32 %6199, 16
  %6201 = and i32 %6200, 31
  %6202 = shl i32 %6124, %6201
  %6203 = add i32 %6202, %6123
  %6204 = shl i32 %6203, 2
  %6205 = add i32 %6204, %6197
  %6206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.i32 %6206, 0
  %6208 = icmp eq i32 %6207, 0
  br i1 %6208, label %6226, label %6209

; <label>:6209                                    ; preds = %6181
  %6210 = icmp slt i32 %6207, 0
  %6211 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6182
  %6212 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6182
  %6213 = bitcast float* %6211 to i32*
  %6214 = bitcast float* %6212 to i32*
  br i1 %6210, label %6215, label %6222

; <label>:6215                                    ; preds = %6209
  %6216 = and i32 %6207, 1073741823
  %6217 = add i32 %6197, 20
  %6218 = add i32 %6217, %6216
  %6219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6218, i32 undef)  ; BufferLoad(srv,index,wot)
  %6220 = extractvalue %dx.types.ResRet.i32 %6219, 0
  %6221 = extractvalue %dx.types.ResRet.i32 %6219, 1
  br label %6222

; <label>:6222                                    ; preds = %6215, %6209
  %6223 = phi i32 [ %6220, %6215 ], [ %6131, %6209 ]
  %6224 = phi i32 [ %6221, %6215 ], [ %6132, %6209 ]
  store i32 %6223, i32* %6213, align 4
  store i32 %6224, i32* %6214, align 4
  %6225 = add i32 %6182, 1
  br label %6226

; <label>:6226                                    ; preds = %6222, %6181
  %6227 = phi i32 [ %6182, %6181 ], [ %6225, %6222 ]
  %6228 = add nuw i32 %6183, 1
  %6229 = icmp eq i32 %6228, %6178
  br i1 %6229, label %6230, label %6181

; <label>:6230                                    ; preds = %6226
  br label %6231

; <label>:6231                                    ; preds = %6230, %6175
  %6232 = phi i32 [ %6176, %6175 ], [ %6227, %6230 ]
  %6233 = icmp eq i32 %6232, 1
  %6234 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6235 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6233, label %6236, label %6239

; <label>:6236                                    ; preds = %6231
  %6237 = load float, float* %6234, align 4
  %6238 = load float, float* %6235, align 4
  br label %6266

; <label>:6239                                    ; preds = %6231
  %6240 = load float, float* %6234, align 4
  %6241 = load float, float* %6235, align 4
  %6242 = fdiv fast float 1.000000e+00, %6241
  %6243 = fsub fast float %6240, %6242
  %6244 = icmp ugt i32 %6232, 1
  br i1 %6244, label %6245, label %6261

; <label>:6245                                    ; preds = %6239
  br label %6246

; <label>:6246                                    ; preds = %6246, %6245
  %6247 = phi float [ %6256, %6246 ], [ %6243, %6245 ]
  %6248 = phi float [ %6257, %6246 ], [ %6240, %6245 ]
  %6249 = phi i32 [ %6258, %6246 ], [ 1, %6245 ]
  %6250 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6249
  %6251 = load float, float* %6250, align 4
  %6252 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6249
  %6253 = load float, float* %6252, align 4
  %6254 = fdiv fast float 1.000000e+00, %6253
  %6255 = fsub fast float %6251, %6254
  %6256 = call float @dx.op.binary.f32(i32 36, float %6247, float %6255)  ; FMin(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6248, float %6251)  ; FMax(a,b)
  %6258 = add nuw i32 %6249, 1
  %6259 = icmp eq i32 %6258, %6232
  br i1 %6259, label %6260, label %6246

; <label>:6260                                    ; preds = %6246
  br label %6261

; <label>:6261                                    ; preds = %6260, %6239
  %6262 = phi float [ %6243, %6239 ], [ %6256, %6260 ]
  %6263 = phi float [ %6240, %6239 ], [ %6257, %6260 ]
  %6264 = fsub fast float %6263, %6262
  %6265 = fdiv fast float 1.000000e+00, %6264
  br label %6266

; <label>:6266                                    ; preds = %6261, %6236
  %6267 = phi float [ %6237, %6236 ], [ %6263, %6261 ]
  %6268 = phi float [ %6238, %6236 ], [ %6265, %6261 ]
  %6269 = fadd fast float %5970, %6267
  %6270 = fmul fast float %6269, %6268
  %6271 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6272 = fmul fast float %6271, 2.000000e+00
  %6273 = fsub fast float 1.000000e+00, %6272
  %6274 = fmul fast float %6108, %6108
  %6275 = fsub fast float %6109, %6274
  %6276 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6275)  ; FMax(a,b)
  %6277 = fdiv fast float 1.000000e+00, %6276
  %6278 = fmul fast float %6109, %6108
  %6279 = fsub fast float %6110, %6278
  %6280 = fsub fast float %6273, %6108
  %6281 = fmul fast float %6273, %6273
  %6282 = fsub fast float %6281, %6109
  %6283 = fmul fast float %6277, %6279
  %6284 = fmul fast float %6283, %6280
  %6285 = fsub fast float %6282, %6284
  %6286 = fmul fast float %6109, %6109
  %6287 = fsub fast float %6111, %6286
  %6288 = fmul fast float %6279, %6279
  %6289 = fmul fast float %6288, %6277
  %6290 = fsub fast float %6287, %6289
  %6291 = fdiv fast float %6285, %6290
  %6292 = fmul fast float %6291, %6279
  %6293 = fsub fast float %6280, %6292
  %6294 = fmul fast float %6293, %6277
  %6295 = fmul fast float %6294, %6108
  %6296 = fsub fast float 1.000000e+00, %6295
  %6297 = fmul fast float %6291, %6109
  %6298 = fsub fast float %6296, %6297
  %6299 = fmul fast float %6294, %6294
  %6300 = fmul fast float %6291, 4.000000e+00
  %6301 = fmul fast float %6300, %6298
  %6302 = fsub fast float %6299, %6301
  %6303 = call float @dx.op.unary.f32(i32 24, float %6302)  ; Sqrt(value)
  %6304 = fcmp fast oge float %6294, 0.000000e+00
  %6305 = fsub fast float -0.000000e+00, %6303
  %6306 = select i1 %6304, float %6305, float %6303
  %6307 = fsub fast float %6306, %6294
  %6308 = fdiv fast float %6307, %6291
  %6309 = fdiv fast float %6298, %6307
  %6310 = fmul fast float %6308, 5.000000e-01
  %6311 = fmul fast float %6309, 2.000000e+00
  %6312 = select i1 %6304, float %6310, float %6311
  %6313 = select i1 %6304, float %6311, float %6310
  %6314 = call float @dx.op.binary.f32(i32 35, float %6312, float %6313)  ; FMax(a,b)
  %6315 = call float @dx.op.binary.f32(i32 36, float %6312, float %6313)  ; FMin(a,b)
  %6316 = fcmp fast ogt float %6273, %6314
  %6317 = fsub fast float %6273, %6315
  %6318 = fsub fast float %6273, %6314
  %6319 = fsub fast float %6314, %6315
  %6320 = select i1 %6316, float %6318, float %6319
  %6321 = fmul float %6317, %6320
  %6322 = select i1 %6316, float %6315, float %6273
  %6323 = fcmp fast ogt float %6273, %6315
  %6324 = fmul fast float %6322, %6314
  %6325 = fadd fast float %6322, %6314
  %6326 = fmul fast float %6325, %6108
  %6327 = fadd fast float %6324, %6109
  %6328 = fsub fast float %6327, %6326
  %6329 = fdiv fast float %6328, %6321
  %6330 = select i1 %6323, float %6329, float 0.000000e+00
  %6331 = fsub fast float 1.000000e+00, %6330
  %6332 = select i1 %6316, float %6331, float %6330
  %6333 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6093, 3
  %6335 = fmul fast float %6334, %6333
  %6336 = fsub fast float 1.000000e+00, %6335
  br label %6337

; <label>:6337                                    ; preds = %6266, %5978, %5943, %5939, %5905
  %6338 = phi float [ 1.000000e+00, %5905 ], [ %6336, %6266 ], [ 1.000000e+00, %5943 ], [ 1.000000e+00, %5978 ], [ 1.000000e+00, %5939 ]
  %6339 = fcmp fast ogt float %5935, 0.000000e+00
  br i1 %6339, label %6340, label %6502, !dx.controlflow.hints !121

; <label>:6340                                    ; preds = %6337
  %6341 = fadd fast float %5848, %5822
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6347 = call float @dx.op.binary.f32(i32 35, float %6341, float 0.000000e+00)  ; FMax(a,b)
  %6348 = fadd fast float %6347, 0x3F10000000000000
  %6349 = fcmp fast oeq float %6346, 0.000000e+00
  br i1 %6349, label %6350, label %6417

; <label>:6350                                    ; preds = %6340
  %6351 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6352 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6353 = fmul fast float %6352, %5837
  %6354 = fmul fast float %6351, %5838
  %6355 = fadd fast float %6353, 5.000000e-01
  %6356 = call float @dx.op.unary.f32(i32 27, float %6355)  ; Round_ni(value)
  %6357 = fadd fast float %6354, 5.000000e-01
  %6358 = call float @dx.op.unary.f32(i32 27, float %6357)  ; Round_ni(value)
  %6359 = fsub fast float %6355, %6356
  %6360 = fsub fast float %6357, %6358
  %6361 = fadd fast float %6356, -5.000000e-01
  %6362 = fadd fast float %6358, -5.000000e-01
  %6363 = fmul fast float %6359, 2.000000e+00
  %6364 = fsub fast float 3.000000e+00, %6363
  %6365 = fadd fast float %6363, 1.000000e+00
  %6366 = fsub fast float 2.000000e+00, %6359
  %6367 = bitcast float %6364 to i32
  %6368 = sub nsw i32 2129859010, %6367
  %6369 = bitcast i32 %6368 to float
  %6370 = fmul fast float %6369, %6366
  %6371 = fadd fast float %6370, -1.000000e+00
  %6372 = bitcast float %6365 to i32
  %6373 = sub nsw i32 2129859010, %6372
  %6374 = bitcast i32 %6373 to float
  %6375 = fmul fast float %6374, %6359
  %6376 = fadd fast float %6375, 1.000000e+00
  %6377 = fmul fast float %6360, 2.000000e+00
  %6378 = fsub fast float 3.000000e+00, %6377
  %6379 = fadd fast float %6377, 1.000000e+00
  %6380 = fsub fast float 2.000000e+00, %6360
  %6381 = bitcast float %6378 to i32
  %6382 = sub nsw i32 2129859010, %6381
  %6383 = bitcast i32 %6382 to float
  %6384 = fmul fast float %6383, %6380
  %6385 = fadd fast float %6384, -1.000000e+00
  %6386 = bitcast float %6379 to i32
  %6387 = sub nsw i32 2129859010, %6386
  %6388 = bitcast i32 %6387 to float
  %6389 = fmul fast float %6388, %6360
  %6390 = fadd fast float %6389, 1.000000e+00
  %6391 = fadd fast float %6371, %6361
  %6392 = fmul fast float %6391, %6343
  %6393 = fadd fast float %6385, %6362
  %6394 = fmul fast float %6393, %6344
  %6395 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6392, float %6394, float undef, float undef, i32 0, i32 0, i32 undef, float %6348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 0
  %6397 = fmul fast float %6396, %6364
  %6398 = fadd fast float %6376, %6361
  %6399 = fmul fast float %6398, %6343
  %6400 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6399, float %6394, float undef, float undef, i32 0, i32 0, i32 undef, float %6348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6401 = extractvalue %dx.types.ResRet.f32 %6400, 0
  %6402 = fmul fast float %6401, %6365
  %6403 = fadd fast float %6390, %6362
  %6404 = fmul fast float %6403, %6344
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6392, float %6404, float undef, float undef, i32 0, i32 0, i32 undef, float %6348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = fmul fast float %6406, %6364
  %6408 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6399, float %6404, float undef, float undef, i32 0, i32 0, i32 undef, float %6348)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6409 = extractvalue %dx.types.ResRet.f32 %6408, 0
  %6410 = fmul fast float %6409, %6365
  %6411 = fadd fast float %6410, %6407
  %6412 = fmul fast float %6411, %6379
  %6413 = fadd fast float %6402, %6397
  %6414 = fmul fast float %6413, %6378
  %6415 = fadd fast float %6414, %6412
  %6416 = fmul fast float %6415, 6.250000e-02
  br label %6502

; <label>:6417                                    ; preds = %6340
  %6418 = fmul fast float %275, 0x401921FB60000000
  %6419 = call float @dx.op.unary.f32(i32 13, float %6418)  ; Sin(value)
  %6420 = call float @dx.op.unary.f32(i32 12, float %6418)  ; Cos(value)
  %6421 = fsub fast float -0.000000e+00, %6419
  br label %6422

; <label>:6422                                    ; preds = %6471, %6417
  %6423 = phi float [ 0.000000e+00, %6417 ], [ %6466, %6471 ]
  %6424 = phi float [ 0.000000e+00, %6417 ], [ %6468, %6471 ]
  %6425 = phi i32 [ 0, %6417 ], [ %6472, %6471 ]
  %6426 = mul i32 %6425, 2
  %6427 = add i32 0, %6426
  %6428 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6427
  %6429 = load float, float* %6428, align 4
  %6430 = mul i32 %6425, 2
  %6431 = add i32 1, %6430
  %6432 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6431
  %6433 = load float, float* %6432, align 4
  %6434 = fmul fast float %6429, %6420
  %6435 = call float @dx.op.tertiary.f32(i32 46, float %6433, float %6421, float %6434)  ; FMad(a,b,c)
  %6436 = fmul fast float %6429, %6419
  %6437 = call float @dx.op.tertiary.f32(i32 46, float %6433, float %6420, float %6436)  ; FMad(a,b,c)
  %6438 = fmul fast float %6435, %6346
  %6439 = fmul fast float %6437, %6346
  %6440 = fadd fast float %6438, %5837
  %6441 = fadd fast float %6439, %5838
  %6442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6440, float %6441, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = extractvalue %dx.types.ResRet.f32 %6442, 3
  %6447 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6443, float* %6447, align 4
  %6448 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6444, float* %6448, align 4
  %6449 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6445, float* %6449, align 4
  %6450 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6446, float* %6450, align 4
  %6451 = fsub fast float %6443, %6348
  %6452 = fcmp fast olt float %6451, 0.000000e+00
  %6453 = select i1 %6452, float 0.000000e+00, float 1.000000e+00
  %6454 = fadd fast float %6453, %6423
  %6455 = fmul fast float %6453, %6451
  %6456 = fadd fast float %6455, %6424
  br label %6457

; <label>:6457                                    ; preds = %6457, %6422
  %6458 = phi i32 [ 1, %6422 ], [ %6469, %6457 ]
  %6459 = phi float [ %6456, %6422 ], [ %6468, %6457 ]
  %6460 = phi float [ %6454, %6422 ], [ %6466, %6457 ]
  %6461 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6458
  %6462 = load float, float* %6461, align 4, !tbaa !122, !noalias !112
  %6463 = fsub fast float %6462, %6348
  %6464 = fcmp fast olt float %6463, 0.000000e+00
  %6465 = select i1 %6464, float 0.000000e+00, float 1.000000e+00
  %6466 = fadd fast float %6465, %6460
  %6467 = fmul fast float %6465, %6463
  %6468 = fadd fast float %6467, %6459
  %6469 = add nuw nsw i32 %6458, 1
  %6470 = icmp eq i32 %6469, 4
  br i1 %6470, label %6471, label %6457, !llvm.loop !124

; <label>:6471                                    ; preds = %6457
  %6472 = add nuw nsw i32 %6425, 1
  %6473 = icmp eq i32 %6472, 8
  br i1 %6473, label %6474, label %6422, !llvm.loop !125

; <label>:6474                                    ; preds = %6471
  %6475 = fdiv fast float 1.000000e+00, %6466
  %6476 = fmul fast float %6475, %6468
  %6477 = fdiv fast float 1.000000e+00, %6348
  %6478 = fmul fast float %6476, %6477
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = call float @dx.op.binary.f32(i32 35, float %6479, float 0.000000e+00)  ; FMax(a,b)
  %6481 = fmul fast float %6466, 3.125000e-02
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  %6483 = fmul fast float %6482, 2.000000e+00
  %6484 = fadd fast float %6483, -1.000000e+00
  %6485 = fcmp fast ogt float %6484, 0.000000e+00
  %6486 = fcmp fast olt float %6484, 0.000000e+00
  %6487 = zext i1 %6485 to i32
  %6488 = zext i1 %6486 to i32
  %6489 = sub nsw i32 %6487, %6488
  %6490 = sitofp i32 %6489 to float
  %6491 = fmul fast float %6490, %6484
  %6492 = fsub fast float 1.000000e+00, %6491
  %6493 = fmul fast float %6492, %6492
  %6494 = fmul fast float %6493, %6492
  %6495 = fsub fast float %6492, %6494
  %6496 = fmul fast float %6495, %6480
  %6497 = fsub fast float 1.000000e+00, %6494
  %6498 = fsub fast float %6497, %6496
  %6499 = fmul fast float %6490, 5.000000e-01
  %6500 = fmul fast float %6499, %6498
  %6501 = fsub fast float 5.000000e-01, %6500
  br label %6502

; <label>:6502                                    ; preds = %6474, %6350, %6337
  %6503 = phi float [ 1.000000e+00, %6337 ], [ %6416, %6350 ], [ %6501, %6474 ]
  %6504 = fcmp fast ogt float %5933, 0.000000e+00
  br i1 %6504, label %6505, label %6669, !dx.controlflow.hints !126

; <label>:6505                                    ; preds = %6502
  %6506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6506, 1
  %6508 = fadd fast float %6507, %5822
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 2
  %6511 = extractvalue %dx.types.CBufRet.f32 %6509, 3
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6514 = call float @dx.op.binary.f32(i32 35, float %6508, float 0.000000e+00)  ; FMax(a,b)
  %6515 = fadd fast float %6514, 0x3F10000000000000
  %6516 = fcmp fast oeq float %6513, 0.000000e+00
  br i1 %6516, label %6517, label %6584

; <label>:6517                                    ; preds = %6505
  %6518 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6519 = extractvalue %dx.types.CBufRet.f32 %6509, 0
  %6520 = fmul fast float %6519, %5829
  %6521 = fmul fast float %6518, %5830
  %6522 = fadd fast float %6520, 5.000000e-01
  %6523 = call float @dx.op.unary.f32(i32 27, float %6522)  ; Round_ni(value)
  %6524 = fadd fast float %6521, 5.000000e-01
  %6525 = call float @dx.op.unary.f32(i32 27, float %6524)  ; Round_ni(value)
  %6526 = fsub fast float %6522, %6523
  %6527 = fsub fast float %6524, %6525
  %6528 = fadd fast float %6523, -5.000000e-01
  %6529 = fadd fast float %6525, -5.000000e-01
  %6530 = fmul fast float %6526, 2.000000e+00
  %6531 = fsub fast float 3.000000e+00, %6530
  %6532 = fadd fast float %6530, 1.000000e+00
  %6533 = fsub fast float 2.000000e+00, %6526
  %6534 = bitcast float %6531 to i32
  %6535 = sub nsw i32 2129859010, %6534
  %6536 = bitcast i32 %6535 to float
  %6537 = fmul fast float %6536, %6533
  %6538 = fadd fast float %6537, -1.000000e+00
  %6539 = bitcast float %6532 to i32
  %6540 = sub nsw i32 2129859010, %6539
  %6541 = bitcast i32 %6540 to float
  %6542 = fmul fast float %6541, %6526
  %6543 = fadd fast float %6542, 1.000000e+00
  %6544 = fmul fast float %6527, 2.000000e+00
  %6545 = fsub fast float 3.000000e+00, %6544
  %6546 = fadd fast float %6544, 1.000000e+00
  %6547 = fsub fast float 2.000000e+00, %6527
  %6548 = bitcast float %6545 to i32
  %6549 = sub nsw i32 2129859010, %6548
  %6550 = bitcast i32 %6549 to float
  %6551 = fmul fast float %6550, %6547
  %6552 = fadd fast float %6551, -1.000000e+00
  %6553 = bitcast float %6546 to i32
  %6554 = sub nsw i32 2129859010, %6553
  %6555 = bitcast i32 %6554 to float
  %6556 = fmul fast float %6555, %6527
  %6557 = fadd fast float %6556, 1.000000e+00
  %6558 = fadd fast float %6538, %6528
  %6559 = fmul fast float %6558, %6510
  %6560 = fadd fast float %6552, %6529
  %6561 = fmul fast float %6560, %6511
  %6562 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6559, float %6561, float undef, float undef, i32 0, i32 0, i32 undef, float %6515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6563 = extractvalue %dx.types.ResRet.f32 %6562, 0
  %6564 = fmul fast float %6563, %6531
  %6565 = fadd fast float %6543, %6528
  %6566 = fmul fast float %6565, %6510
  %6567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6566, float %6561, float undef, float undef, i32 0, i32 0, i32 undef, float %6515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = fmul fast float %6568, %6532
  %6570 = fadd fast float %6557, %6529
  %6571 = fmul fast float %6570, %6511
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6559, float %6571, float undef, float undef, i32 0, i32 0, i32 undef, float %6515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = fmul fast float %6573, %6531
  %6575 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6566, float %6571, float undef, float undef, i32 0, i32 0, i32 undef, float %6515)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6576 = extractvalue %dx.types.ResRet.f32 %6575, 0
  %6577 = fmul fast float %6576, %6532
  %6578 = fadd fast float %6577, %6574
  %6579 = fmul fast float %6578, %6546
  %6580 = fadd fast float %6569, %6564
  %6581 = fmul fast float %6580, %6545
  %6582 = fadd fast float %6581, %6579
  %6583 = fmul fast float %6582, 6.250000e-02
  br label %6669

; <label>:6584                                    ; preds = %6505
  %6585 = fmul fast float %275, 0x401921FB60000000
  %6586 = call float @dx.op.unary.f32(i32 13, float %6585)  ; Sin(value)
  %6587 = call float @dx.op.unary.f32(i32 12, float %6585)  ; Cos(value)
  %6588 = fsub fast float -0.000000e+00, %6586
  br label %6589

; <label>:6589                                    ; preds = %6638, %6584
  %6590 = phi float [ 0.000000e+00, %6584 ], [ %6633, %6638 ]
  %6591 = phi float [ 0.000000e+00, %6584 ], [ %6635, %6638 ]
  %6592 = phi i32 [ 0, %6584 ], [ %6639, %6638 ]
  %6593 = mul i32 %6592, 2
  %6594 = add i32 0, %6593
  %6595 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6594
  %6596 = load float, float* %6595, align 4
  %6597 = mul i32 %6592, 2
  %6598 = add i32 1, %6597
  %6599 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6598
  %6600 = load float, float* %6599, align 4
  %6601 = fmul fast float %6596, %6587
  %6602 = call float @dx.op.tertiary.f32(i32 46, float %6600, float %6588, float %6601)  ; FMad(a,b,c)
  %6603 = fmul fast float %6596, %6586
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %6600, float %6587, float %6603)  ; FMad(a,b,c)
  %6605 = fmul fast float %6602, %6513
  %6606 = fmul fast float %6604, %6513
  %6607 = fadd fast float %6605, %5829
  %6608 = fadd fast float %6606, %5830
  %6609 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6607, float %6608, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6610 = extractvalue %dx.types.ResRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.ResRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.ResRet.f32 %6609, 2
  %6613 = extractvalue %dx.types.ResRet.f32 %6609, 3
  %6614 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %6610, float* %6614, align 4
  %6615 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %6611, float* %6615, align 4
  %6616 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %6612, float* %6616, align 4
  %6617 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %6613, float* %6617, align 4
  %6618 = fsub fast float %6610, %6515
  %6619 = fcmp fast olt float %6618, 0.000000e+00
  %6620 = select i1 %6619, float 0.000000e+00, float 1.000000e+00
  %6621 = fadd fast float %6620, %6590
  %6622 = fmul fast float %6620, %6618
  %6623 = fadd fast float %6622, %6591
  br label %6624

; <label>:6624                                    ; preds = %6624, %6589
  %6625 = phi i32 [ 1, %6589 ], [ %6636, %6624 ]
  %6626 = phi float [ %6623, %6589 ], [ %6635, %6624 ]
  %6627 = phi float [ %6621, %6589 ], [ %6633, %6624 ]
  %6628 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %6625
  %6629 = load float, float* %6628, align 4, !tbaa !122, !noalias !112
  %6630 = fsub fast float %6629, %6515
  %6631 = fcmp fast olt float %6630, 0.000000e+00
  %6632 = select i1 %6631, float 0.000000e+00, float 1.000000e+00
  %6633 = fadd fast float %6632, %6627
  %6634 = fmul fast float %6632, %6630
  %6635 = fadd fast float %6634, %6626
  %6636 = add nuw nsw i32 %6625, 1
  %6637 = icmp eq i32 %6636, 4
  br i1 %6637, label %6638, label %6624, !llvm.loop !124

; <label>:6638                                    ; preds = %6624
  %6639 = add nuw nsw i32 %6592, 1
  %6640 = icmp eq i32 %6639, 8
  br i1 %6640, label %6641, label %6589, !llvm.loop !125

; <label>:6641                                    ; preds = %6638
  %6642 = fdiv fast float 1.000000e+00, %6633
  %6643 = fmul fast float %6642, %6635
  %6644 = fdiv fast float 1.000000e+00, %6515
  %6645 = fmul fast float %6643, %6644
  %6646 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6647 = call float @dx.op.binary.f32(i32 35, float %6646, float 0.000000e+00)  ; FMax(a,b)
  %6648 = fmul fast float %6633, 3.125000e-02
  %6649 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  %6650 = fmul fast float %6649, 2.000000e+00
  %6651 = fadd fast float %6650, -1.000000e+00
  %6652 = fcmp fast ogt float %6651, 0.000000e+00
  %6653 = fcmp fast olt float %6651, 0.000000e+00
  %6654 = zext i1 %6652 to i32
  %6655 = zext i1 %6653 to i32
  %6656 = sub nsw i32 %6654, %6655
  %6657 = sitofp i32 %6656 to float
  %6658 = fmul fast float %6657, %6651
  %6659 = fsub fast float 1.000000e+00, %6658
  %6660 = fmul fast float %6659, %6659
  %6661 = fmul fast float %6660, %6659
  %6662 = fsub fast float %6659, %6661
  %6663 = fmul fast float %6662, %6647
  %6664 = fsub fast float 1.000000e+00, %6661
  %6665 = fsub fast float %6664, %6663
  %6666 = fmul fast float %6657, 5.000000e-01
  %6667 = fmul fast float %6666, %6665
  %6668 = fsub fast float 5.000000e-01, %6667
  br label %6669

; <label>:6669                                    ; preds = %6641, %6517, %6502
  %6670 = phi float [ 1.000000e+00, %6502 ], [ %6583, %6517 ], [ %6668, %6641 ]
  %6671 = fcmp fast ogt float %5932, 0.000000e+00
  br i1 %6671, label %6672, label %6836, !dx.controlflow.hints !127

; <label>:6672                                    ; preds = %6669
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = fadd fast float %6674, %5822
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 2
  %6678 = extractvalue %dx.types.CBufRet.f32 %6676, 3
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = call float @dx.op.binary.f32(i32 35, float %6675, float 0.000000e+00)  ; FMax(a,b)
  %6682 = fadd fast float %6681, 0x3F10000000000000
  %6683 = fcmp fast oeq float %6680, 0.000000e+00
  br i1 %6683, label %6684, label %6751

; <label>:6684                                    ; preds = %6672
  %6685 = extractvalue %dx.types.CBufRet.f32 %6676, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6676, 0
  %6687 = fmul fast float %6686, %5814
  %6688 = fmul fast float %6685, %5818
  %6689 = fadd fast float %6687, 5.000000e-01
  %6690 = call float @dx.op.unary.f32(i32 27, float %6689)  ; Round_ni(value)
  %6691 = fadd fast float %6688, 5.000000e-01
  %6692 = call float @dx.op.unary.f32(i32 27, float %6691)  ; Round_ni(value)
  %6693 = fsub fast float %6689, %6690
  %6694 = fsub fast float %6691, %6692
  %6695 = fadd fast float %6690, -5.000000e-01
  %6696 = fadd fast float %6692, -5.000000e-01
  %6697 = fmul fast float %6693, 2.000000e+00
  %6698 = fsub fast float 3.000000e+00, %6697
  %6699 = fadd fast float %6697, 1.000000e+00
  %6700 = fsub fast float 2.000000e+00, %6693
  %6701 = bitcast float %6698 to i32
  %6702 = sub nsw i32 2129859010, %6701
  %6703 = bitcast i32 %6702 to float
  %6704 = fmul fast float %6703, %6700
  %6705 = fadd fast float %6704, -1.000000e+00
  %6706 = bitcast float %6699 to i32
  %6707 = sub nsw i32 2129859010, %6706
  %6708 = bitcast i32 %6707 to float
  %6709 = fmul fast float %6708, %6693
  %6710 = fadd fast float %6709, 1.000000e+00
  %6711 = fmul fast float %6694, 2.000000e+00
  %6712 = fsub fast float 3.000000e+00, %6711
  %6713 = fadd fast float %6711, 1.000000e+00
  %6714 = fsub fast float 2.000000e+00, %6694
  %6715 = bitcast float %6712 to i32
  %6716 = sub nsw i32 2129859010, %6715
  %6717 = bitcast i32 %6716 to float
  %6718 = fmul fast float %6717, %6714
  %6719 = fadd fast float %6718, -1.000000e+00
  %6720 = bitcast float %6713 to i32
  %6721 = sub nsw i32 2129859010, %6720
  %6722 = bitcast i32 %6721 to float
  %6723 = fmul fast float %6722, %6694
  %6724 = fadd fast float %6723, 1.000000e+00
  %6725 = fadd fast float %6705, %6695
  %6726 = fmul fast float %6725, %6677
  %6727 = fadd fast float %6719, %6696
  %6728 = fmul fast float %6727, %6678
  %6729 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6726, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6730 = extractvalue %dx.types.ResRet.f32 %6729, 0
  %6731 = fmul fast float %6730, %6698
  %6732 = fadd fast float %6710, %6695
  %6733 = fmul fast float %6732, %6677
  %6734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6733, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  %6736 = fmul fast float %6735, %6699
  %6737 = fadd fast float %6724, %6696
  %6738 = fmul fast float %6737, %6678
  %6739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6726, float %6738, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6740 = extractvalue %dx.types.ResRet.f32 %6739, 0
  %6741 = fmul fast float %6740, %6698
  %6742 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6733, float %6738, float undef, float undef, i32 0, i32 0, i32 undef, float %6682)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = fmul fast float %6743, %6699
  %6745 = fadd fast float %6744, %6741
  %6746 = fmul fast float %6745, %6713
  %6747 = fadd fast float %6736, %6731
  %6748 = fmul fast float %6747, %6712
  %6749 = fadd fast float %6748, %6746
  %6750 = fmul fast float %6749, 6.250000e-02
  br label %6836

; <label>:6751                                    ; preds = %6672
  %6752 = fmul fast float %275, 0x401921FB60000000
  %6753 = call float @dx.op.unary.f32(i32 13, float %6752)  ; Sin(value)
  %6754 = call float @dx.op.unary.f32(i32 12, float %6752)  ; Cos(value)
  %6755 = fsub fast float -0.000000e+00, %6753
  br label %6756

; <label>:6756                                    ; preds = %6805, %6751
  %6757 = phi float [ 0.000000e+00, %6751 ], [ %6800, %6805 ]
  %6758 = phi float [ 0.000000e+00, %6751 ], [ %6802, %6805 ]
  %6759 = phi i32 [ 0, %6751 ], [ %6806, %6805 ]
  %6760 = mul i32 %6759, 2
  %6761 = add i32 0, %6760
  %6762 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6761
  %6763 = load float, float* %6762, align 4
  %6764 = mul i32 %6759, 2
  %6765 = add i32 1, %6764
  %6766 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6765
  %6767 = load float, float* %6766, align 4
  %6768 = fmul fast float %6763, %6754
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6767, float %6755, float %6768)  ; FMad(a,b,c)
  %6770 = fmul fast float %6763, %6753
  %6771 = call float @dx.op.tertiary.f32(i32 46, float %6767, float %6754, float %6770)  ; FMad(a,b,c)
  %6772 = fmul fast float %6769, %6680
  %6773 = fmul fast float %6771, %6680
  %6774 = fadd fast float %6772, %5814
  %6775 = fadd fast float %6773, %5818
  %6776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6774, float %6775, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.ResRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.ResRet.f32 %6776, 2
  %6780 = extractvalue %dx.types.ResRet.f32 %6776, 3
  %6781 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6777, float* %6781, align 4
  %6782 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6778, float* %6782, align 4
  %6783 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6779, float* %6783, align 4
  %6784 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6780, float* %6784, align 4
  %6785 = fsub fast float %6777, %6682
  %6786 = fcmp fast olt float %6785, 0.000000e+00
  %6787 = select i1 %6786, float 0.000000e+00, float 1.000000e+00
  %6788 = fadd fast float %6787, %6757
  %6789 = fmul fast float %6787, %6785
  %6790 = fadd fast float %6789, %6758
  br label %6791

; <label>:6791                                    ; preds = %6791, %6756
  %6792 = phi i32 [ 1, %6756 ], [ %6803, %6791 ]
  %6793 = phi float [ %6790, %6756 ], [ %6802, %6791 ]
  %6794 = phi float [ %6788, %6756 ], [ %6800, %6791 ]
  %6795 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6792
  %6796 = load float, float* %6795, align 4, !tbaa !122, !noalias !112
  %6797 = fsub fast float %6796, %6682
  %6798 = fcmp fast olt float %6797, 0.000000e+00
  %6799 = select i1 %6798, float 0.000000e+00, float 1.000000e+00
  %6800 = fadd fast float %6799, %6794
  %6801 = fmul fast float %6799, %6797
  %6802 = fadd fast float %6801, %6793
  %6803 = add nuw nsw i32 %6792, 1
  %6804 = icmp eq i32 %6803, 4
  br i1 %6804, label %6805, label %6791, !llvm.loop !124

; <label>:6805                                    ; preds = %6791
  %6806 = add nuw nsw i32 %6759, 1
  %6807 = icmp eq i32 %6806, 8
  br i1 %6807, label %6808, label %6756, !llvm.loop !125

; <label>:6808                                    ; preds = %6805
  %6809 = fdiv fast float 1.000000e+00, %6800
  %6810 = fmul fast float %6809, %6802
  %6811 = fdiv fast float 1.000000e+00, %6682
  %6812 = fmul fast float %6810, %6811
  %6813 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6814 = call float @dx.op.binary.f32(i32 35, float %6813, float 0.000000e+00)  ; FMax(a,b)
  %6815 = fmul fast float %6800, 3.125000e-02
  %6816 = call float @dx.op.unary.f32(i32 7, float %6815)  ; Saturate(value)
  %6817 = fmul fast float %6816, 2.000000e+00
  %6818 = fadd fast float %6817, -1.000000e+00
  %6819 = fcmp fast ogt float %6818, 0.000000e+00
  %6820 = fcmp fast olt float %6818, 0.000000e+00
  %6821 = zext i1 %6819 to i32
  %6822 = zext i1 %6820 to i32
  %6823 = sub nsw i32 %6821, %6822
  %6824 = sitofp i32 %6823 to float
  %6825 = fmul fast float %6824, %6818
  %6826 = fsub fast float 1.000000e+00, %6825
  %6827 = fmul fast float %6826, %6826
  %6828 = fmul fast float %6827, %6826
  %6829 = fsub fast float %6826, %6828
  %6830 = fmul fast float %6829, %6814
  %6831 = fsub fast float 1.000000e+00, %6828
  %6832 = fsub fast float %6831, %6830
  %6833 = fmul fast float %6824, 5.000000e-01
  %6834 = fmul fast float %6833, %6832
  %6835 = fsub fast float 5.000000e-01, %6834
  br label %6836

; <label>:6836                                    ; preds = %6808, %6684, %6669
  %6837 = phi float [ 1.000000e+00, %6669 ], [ %6750, %6684 ], [ %6835, %6808 ]
  %6838 = fsub fast float %6503, %6338
  %6839 = fmul fast float %6838, %5876
  %6840 = fadd fast float %6839, %6338
  %6841 = fsub fast float %6670, %6840
  %6842 = fmul fast float %6841, %5906
  %6843 = fadd fast float %6842, %6840
  %6844 = fsub fast float %6837, %6843
  %6845 = fmul fast float %6844, %5932
  %6846 = fadd fast float %6845, %6843
  %6847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6848 = extractvalue %dx.types.CBufRet.f32 %6847, 2
  %6849 = fcmp fast ogt float %6848, 0.000000e+00
  br i1 %6849, label %6850, label %6890, !dx.controlflow.hints !128

; <label>:6850                                    ; preds = %6836
  %6851 = fcmp fast ugt float %6848, 0.000000e+00
  br i1 %6851, label %6852, label %6887

; <label>:6852                                    ; preds = %6850
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6859 = extractvalue %dx.types.CBufRet.f32 %6858, 0
  %6860 = extractvalue %dx.types.CBufRet.f32 %6858, 1
  %6861 = extractvalue %dx.types.CBufRet.f32 %6858, 2
  %6862 = extractvalue %dx.types.CBufRet.f32 %6858, 3
  %6863 = extractvalue %dx.types.CBufRet.f32 %6847, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6847, 1
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.CBufRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6869 = fadd fast float %6866, %5791
  %6870 = fadd fast float %6867, %5792
  %6871 = fadd fast float %6868, %5793
  %6872 = fmul fast float %6869, %6854
  %6873 = call float @dx.op.tertiary.f32(i32 46, float %6855, float %6870, float %6872)  ; FMad(a,b,c)
  %6874 = call float @dx.op.tertiary.f32(i32 46, float %6856, float %6871, float %6873)  ; FMad(a,b,c)
  %6875 = fadd fast float %6874, %6857
  %6876 = fmul fast float %6869, %6859
  %6877 = call float @dx.op.tertiary.f32(i32 46, float %6860, float %6870, float %6876)  ; FMad(a,b,c)
  %6878 = call float @dx.op.tertiary.f32(i32 46, float %6861, float %6871, float %6877)  ; FMad(a,b,c)
  %6879 = fadd fast float %6878, %6862
  %6880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6875, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = fmul fast float %6881, %6864
  %6883 = fadd fast float %6882, %6863
  %6884 = call float @dx.op.unary.f32(i32 7, float %6883)  ; Saturate(value)
  %6885 = fmul fast float %6884, %6848
  %6886 = fsub fast float 1.000000e+00, %6885
  br label %6887

; <label>:6887                                    ; preds = %6852, %6850
  %6888 = phi float [ %6886, %6852 ], [ 1.000000e+00, %6850 ]
  %6889 = fmul fast float %6888, %6846
  br label %6890

; <label>:6890                                    ; preds = %6887, %6836, %5771
  %6891 = phi float [ 1.000000e+00, %5771 ], [ %6889, %6887 ], [ %6846, %6836 ]
  %6892 = call float @dx.op.binary.f32(i32 36, float %6891, float %6891)  ; FMin(a,b)
  %6893 = call float @dx.op.binary.f32(i32 36, float %6891, float %6892)  ; FMin(a,b)
  %6894 = fcmp fast ogt float %6893, 0.000000e+00
  br i1 %6894, label %6895, label %7060, !dx.controlflow.hints !129

; <label>:6895                                    ; preds = %6890
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6902 = extractvalue %dx.types.CBufRet.f32 %6901, 0
  %6903 = extractvalue %dx.types.CBufRet.f32 %6901, 1
  %6904 = extractvalue %dx.types.CBufRet.f32 %6901, 2
  %6905 = extractvalue %dx.types.CBufRet.f32 %6901, 3
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6909 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6910 = extractvalue %dx.types.CBufRet.f32 %6906, 3
  %6911 = fmul fast float %6897, %5791
  %6912 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %6898, float %6911)  ; FMad(a,b,c)
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %6899, float %6912)  ; FMad(a,b,c)
  %6914 = fadd fast float %6913, %6900
  %6915 = fmul fast float %6902, %5791
  %6916 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %6903, float %6915)  ; FMad(a,b,c)
  %6917 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %6904, float %6916)  ; FMad(a,b,c)
  %6918 = fadd fast float %6917, %6905
  %6919 = fmul fast float %6907, %5791
  %6920 = call float @dx.op.tertiary.f32(i32 46, float %5792, float %6908, float %6919)  ; FMad(a,b,c)
  %6921 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %6909, float %6920)  ; FMad(a,b,c)
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6924 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6925 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6926 = fmul fast float %6925, %6914
  %6927 = fmul fast float %6925, %6918
  %6928 = fadd fast float %6926, %6923
  %6929 = fadd fast float %6927, %6924
  %6930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6930, 0
  %6932 = extractvalue %dx.types.CBufRet.f32 %6930, 1
  %6933 = fsub fast float %6928, %6931
  %6934 = fsub fast float %6929, %6932
  %6935 = fcmp fast olt float %6933, 0.000000e+00
  %6936 = fcmp fast olt float %6934, 0.000000e+00
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.CBufRet.f32 %6937, 2
  %6941 = extractvalue %dx.types.CBufRet.f32 %6937, 3
  %6942 = select i1 %6935, float %6938, float %6940
  %6943 = select i1 %6936, float %6939, float %6941
  %6944 = fmul fast float %6942, %6933
  %6945 = fmul fast float %6943, %6934
  %6946 = call float @dx.op.unary.f32(i32 6, float %6944)  ; FAbs(value)
  %6947 = call float @dx.op.unary.f32(i32 6, float %6945)  ; FAbs(value)
  %6948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6949 = extractvalue %dx.types.CBufRet.f32 %6948, 0
  %6950 = call float @dx.op.binary.f32(i32 35, float %6946, float %6947)  ; FMax(a,b)
  %6951 = fsub fast float %6949, %6950
  %6952 = call float @dx.op.unary.f32(i32 7, float %6951)  ; Saturate(value)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  br i1 %6953, label %6954, label %6995, !dx.controlflow.hints !130

; <label>:6954                                    ; preds = %6895
  %6955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6928, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 1
  %6957 = fcmp fast ogt float %6956, 0.000000e+00
  br i1 %6957, label %6958, label %6990

; <label>:6958                                    ; preds = %6954
  %6959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6928, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6960 = extractvalue %dx.types.ResRet.f32 %6959, 0
  %6961 = extractvalue %dx.types.ResRet.f32 %6959, 1
  %6962 = extractvalue %dx.types.ResRet.f32 %6959, 2
  %6963 = extractvalue %dx.types.ResRet.f32 %6959, 3
  %6964 = fsub fast float 1.000000e+00, %6910
  %6965 = fsub fast float %6964, %6921
  %6966 = fmul fast float %6965, 0x400921FB60000000
  %6967 = fadd fast float %6966, 0x3FF921FB60000000
  %6968 = call float @dx.op.unary.f32(i32 13, float %6967)  ; Sin(value)
  %6969 = fadd fast float %6968, -1.000000e+00
  %6970 = fmul fast float %6969, 0x3FD45F3060000000
  %6971 = fmul fast float %6965, 0x401921FB60000000
  %6972 = fadd fast float %6971, 0x400921FB60000000
  %6973 = call float @dx.op.unary.f32(i32 13, float %6972)  ; Sin(value)
  %6974 = fadd fast float %6973, 0x3E7777A5C0000000
  %6975 = fmul fast float %6974, 0x3FC45F3060000000
  %6976 = fmul fast float %6965, 0x4022D97C80000000
  %6977 = fadd fast float %6976, 0x4012D97C80000000
  %6978 = call float @dx.op.unary.f32(i32 13, float %6977)  ; Sin(value)
  %6979 = fadd fast float %6978, 1.000000e+00
  %6980 = fmul fast float %6979, 0x3FBB2995E0000000
  %6981 = fmul fast float %6965, 0x402921FB60000000
  %6982 = fadd fast float %6981, 0x401921FB60000000
  %6983 = call float @dx.op.unary.f32(i32 13, float %6982)  ; Sin(value)
  %6984 = fadd fast float %6983, 0xBE8777A5C0000000
  %6985 = fmul fast float %6984, 0x3FB45F3060000000
  %6986 = call float @dx.op.dot4.f32(i32 56, float %6960, float %6961, float %6962, float %6963, float %6970, float %6975, float %6980, float %6985)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6987 = fmul fast float %6986, 0xBFF7154760000000
  %6988 = call float @dx.op.unary.f32(i32 21, float %6987)  ; Exp(value)
  %6989 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  br label %6990

; <label>:6990                                    ; preds = %6958, %6954
  %6991 = phi float [ %6989, %6958 ], [ 1.000000e+00, %6954 ]
  %6992 = fadd fast float %6991, -1.000000e+00
  %6993 = fmul fast float %6992, %6952
  %6994 = fadd fast float %6993, 1.000000e+00
  br label %6995

; <label>:6995                                    ; preds = %6990, %6895
  %6996 = phi float [ %6994, %6990 ], [ 1.000000e+00, %6895 ]
  %6997 = fmul fast float %6996, %6891
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7002 = fadd fast float %6999, %170
  %7003 = fadd fast float %7000, %171
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %7010 = fsub fast float -0.000000e+00, %7002
  %7011 = fsub fast float -0.000000e+00, %7003
  %7012 = fsub fast float %4916, %7001
  %7013 = fadd fast float %7012, %7005
  %7014 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7010, float %7011, float %7013)  ; Dot3(ax,ay,az,bx,by,bz)
  %7015 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7007, float %7008, float %7009)  ; Dot3(ax,ay,az,bx,by,bz)
  %7016 = fdiv fast float 1.000000e+00, %7015
  %7017 = fmul fast float %7016, %7014
  %7018 = fmul fast float %7007, %7017
  %7019 = fmul fast float %7008, %7017
  %7020 = fadd fast float %7018, %7002
  %7021 = fadd fast float %7019, %7003
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7025 = fsub fast float %7020, %7023
  %7026 = fsub fast float %7021, %7024
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 2
  %7029 = extractvalue %dx.types.CBufRet.f32 %7027, 3
  %7030 = fmul fast float %7025, %7028
  %7031 = fmul fast float %7026, %7029
  %7032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.i32 %7032, 3
  %7034 = icmp eq i32 %7033, 0
  br i1 %7034, label %7040, label %7035

; <label>:7035                                    ; preds = %6995
  %7036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7030, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7037 = extractvalue %dx.types.ResRet.f32 %7036, 0
  %7038 = extractvalue %dx.types.ResRet.f32 %7036, 1
  %7039 = extractvalue %dx.types.ResRet.f32 %7036, 2
  br label %7045

; <label>:7040                                    ; preds = %6995
  %7041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7030, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7042 = extractvalue %dx.types.ResRet.f32 %7041, 0
  %7043 = extractvalue %dx.types.ResRet.f32 %7041, 1
  %7044 = extractvalue %dx.types.ResRet.f32 %7041, 2
  br label %7045

; <label>:7045                                    ; preds = %7040, %7035
  %7046 = phi float [ %7037, %7035 ], [ %7042, %7040 ]
  %7047 = phi float [ %7038, %7035 ], [ %7043, %7040 ]
  %7048 = phi float [ %7039, %7035 ], [ %7044, %7040 ]
  %7049 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7050 = fmul fast float %7049, %7046
  %7051 = extractvalue %dx.types.CBufRet.f32 %7004, 0
  %7052 = fsub fast float %7017, %7051
  %7053 = fsub fast float %7052, %7050
  %7054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7053)  ; FMax(a,b)
  %7055 = fmul fast float %7054, %7047
  %7056 = call float @dx.op.binary.f32(i32 36, float %7048, float %7055)  ; FMin(a,b)
  %7057 = fmul fast float %7056, 0xBFF7154760000000
  %7058 = call float @dx.op.unary.f32(i32 21, float %7057)  ; Exp(value)
  %7059 = fmul fast float %6997, %7058
  br label %7060

; <label>:7060                                    ; preds = %7045, %6890
  %7061 = phi float [ %7059, %7045 ], [ %6891, %6890 ]
  %7062 = call float @dx.op.binary.f32(i32 36, float %7061, float %7061)  ; FMin(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7061, float %7062)  ; FMin(a,b)
  %7064 = fcmp fast ogt float %7063, 0.000000e+00
  br i1 %7064, label %7065, label %7313, !dx.controlflow.hints !131

; <label>:7065                                    ; preds = %7060
  %7066 = fmul fast float %7061, %5783
  %7067 = fmul fast float %7061, %5784
  %7068 = fmul fast float %7061, %5785
  %7069 = fsub fast float %172, %4725
  %7070 = fcmp fast ogt float %7069, 0.000000e+00
  %7071 = fmul fast float %5772, 5.120000e+02
  %7072 = fmul fast float %5773, 5.120000e+02
  %7073 = fmul fast float %5774, 5.120000e+02
  %7074 = fadd fast float %7073, %172
  %7075 = fsub fast float %4725, %7074
  %7076 = fmul fast float %7075, 2.000000e+00
  %7077 = fadd fast float %7076, %7074
  %7078 = select i1 %7070, float %7077, float %7074
  %7079 = fsub fast float %7078, %172
  %7080 = call float @dx.op.dot3.f32(i32 55, float %7071, float %7072, float %7079, float %7071, float %7072, float %7079)  ; Dot3(ax,ay,az,bx,by,bz)
  %7081 = call float @dx.op.unary.f32(i32 25, float %7080)  ; Rsqrt(value)
  %7082 = fmul fast float %7081, %7071
  %7083 = fmul fast float %7081, %7072
  %7084 = fmul fast float %7081, %7079
  %7085 = fsub fast float %4725, %172
  %7086 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7085)  ; Dot3(ax,ay,az,bx,by,bz)
  %7087 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7082, float %7083, float %7084)  ; Dot3(ax,ay,az,bx,by,bz)
  %7088 = fdiv fast float 1.000000e+00, %7087
  %7089 = fmul fast float %7088, %7086
  %7090 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7069, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7091 = fcmp fast ogt float %7090, 0.000000e+00
  %7092 = fcmp fast olt float %7090, 0.000000e+00
  %7093 = zext i1 %7091 to i32
  %7094 = zext i1 %7092 to i32
  %7095 = sub nsw i32 %7093, %7094
  %7096 = sitofp i32 %7095 to float
  %7097 = fsub fast float %7078, %4725
  %7098 = call float @dx.op.dot3.f32(i32 55, float %7071, float %7072, float %7097, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7099 = fcmp fast ogt float %7098, 0.000000e+00
  %7100 = fcmp fast olt float %7098, 0.000000e+00
  %7101 = zext i1 %7099 to i32
  %7102 = zext i1 %7100 to i32
  %7103 = sub nsw i32 %7101, %7102
  %7104 = sitofp i32 %7103 to float
  %7105 = fcmp fast une float %7096, %7104
  br i1 %7105, label %7106, label %7116

; <label>:7106                                    ; preds = %7065
  %7107 = fmul fast float %7089, %7084
  %7108 = fmul fast float %7089, %7083
  %7109 = fmul fast float %7089, %7082
  %7110 = fmul fast float %7109, %7109
  %7111 = fmul fast float %7108, %7108
  %7112 = fadd fast float %7110, %7111
  %7113 = fmul fast float %7107, %7107
  %7114 = fadd fast float %7112, %7113
  %7115 = call float @dx.op.unary.f32(i32 24, float %7114)  ; Sqrt(value)
  br label %7126

; <label>:7116                                    ; preds = %7065
  %7117 = icmp slt i32 %7095, 0
  br i1 %7117, label %7118, label %7126

; <label>:7118                                    ; preds = %7116
  %7119 = fsub fast float %172, %7078
  %7120 = fmul fast float %7071, %7071
  %7121 = fmul fast float %7072, %7072
  %7122 = fadd fast float %7120, %7121
  %7123 = fmul fast float %7119, %7119
  %7124 = fadd fast float %7122, %7123
  %7125 = call float @dx.op.unary.f32(i32 24, float %7124)  ; Sqrt(value)
  br label %7126

; <label>:7126                                    ; preds = %7118, %7116, %7106
  %7127 = phi float [ %7115, %7106 ], [ %7125, %7118 ], [ 0.000000e+00, %7116 ]
  %7128 = fsub fast float -0.000000e+00, %7127
  %7129 = select i1 %7070, float -0.000000e+00, float %7128
  %7130 = fmul fast float %4722, 0x3FF7154760000000
  %7131 = fmul fast float %7130, %7129
  %7132 = fmul fast float %4723, 0x3FF7154760000000
  %7133 = fmul fast float %7132, %7129
  %7134 = fmul fast float %4724, 0x3FF7154760000000
  %7135 = fmul fast float %7134, %7129
  %7136 = call float @dx.op.unary.f32(i32 21, float %7131)  ; Exp(value)
  %7137 = call float @dx.op.unary.f32(i32 21, float %7133)  ; Exp(value)
  %7138 = call float @dx.op.unary.f32(i32 21, float %7135)  ; Exp(value)
  %7139 = call float @dx.op.unary.f32(i32 7, float %7136)  ; Saturate(value)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  %7141 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7142 = fmul fast float %7066, %7139
  %7143 = fmul fast float %7067, %7140
  %7144 = fmul fast float %7068, %7141
  %7145 = fsub fast float %5772, %190
  %7146 = fsub fast float %5773, %191
  %7147 = fsub fast float %5774, %192
  %7148 = call float @dx.op.dot3.f32(i32 55, float %7145, float %7146, float %7147, float %7145, float %7146, float %7147)  ; Dot3(ax,ay,az,bx,by,bz)
  %7149 = call float @dx.op.unary.f32(i32 25, float %7148)  ; Rsqrt(value)
  %7150 = fmul fast float %7149, %7145
  %7151 = fmul fast float %7149, %7146
  %7152 = fmul fast float %7149, %7147
  %7153 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %7154 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %7150, float %7151, float %7152)  ; Dot3(ax,ay,az,bx,by,bz)
  %7155 = call float @dx.op.unary.f32(i32 7, float %7153)  ; Saturate(value)
  %7156 = bitcast i32 %4943 to float
  %7157 = fmul fast float %7155, %7155
  %7158 = fmul fast float %7157, %7156
  %7159 = call float @dx.op.unary.f32(i32 7, float %7158)  ; Saturate(value)
  %7160 = fmul fast float %7159, %7155
  %7161 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %7150, float %7151, float %7152)  ; Dot3(ax,ay,az,bx,by,bz)
  %7162 = fmul fast float %7161, %7161
  %7163 = call float @dx.op.unary.f32(i32 6, float %7153)  ; FAbs(value)
  %7164 = fsub fast float 1.000000e+00, %4937
  %7165 = fmul fast float %4919, %4919
  %7166 = fmul fast float %7165, %7164
  %7167 = fadd fast float %7166, %4937
  %7168 = bitcast float %7167 to i32
  %7169 = ashr i32 %7168, 1
  %7170 = add nsw i32 %7169, 532487669
  %7171 = bitcast i32 %7170 to float
  %7172 = fadd fast float %7171, %4919
  %7173 = fmul fast float %4937, %7162
  %7174 = fsub fast float 1.000000e+00, %7162
  %7175 = fadd fast float %7174, %7173
  %7176 = fmul fast float %7163, %7163
  %7177 = fmul fast float %7176, %7164
  %7178 = fadd fast float %7177, %4937
  %7179 = bitcast float %7178 to i32
  %7180 = ashr i32 %7179, 1
  %7181 = add nsw i32 %7180, 532487669
  %7182 = bitcast i32 %7181 to float
  %7183 = fadd fast float %7182, %7163
  %7184 = fmul fast float %7175, %7175
  %7185 = fmul fast float %7184, %7172
  %7186 = fmul fast float %7185, %7183
  %7187 = fdiv fast float 0x3FF0A00000000000, %7186
  %7188 = fmul fast float %7187, %4937
  %7189 = call float @dx.op.unary.f32(i32 6, float %7154)  ; FAbs(value)
  %7190 = fsub fast float 1.000000e+00, %7189
  %7191 = bitcast float %7190 to i32
  %7192 = sitofp i32 %7191 to float
  %7193 = fmul fast float %7192, 5.000000e+00
  %7194 = fadd fast float %7193, 0xC1EFBF8940000000
  %7195 = fptosi float %7194 to i32
  %7196 = bitcast i32 %7195 to float
  %7197 = fsub fast float 1.000000e+00, %4908
  %7198 = fsub fast float 1.000000e+00, %4909
  %7199 = fsub fast float 1.000000e+00, %4917
  %7200 = fmul fast float %7196, %7197
  %7201 = fmul fast float %7196, %7198
  %7202 = fmul fast float %7196, %7199
  %7203 = fadd fast float %7200, %4908
  %7204 = fadd fast float %7201, %4909
  %7205 = fadd fast float %7202, %4917
  br i1 %5191, label %7206, label %7229

; <label>:7206                                    ; preds = %7126
  %7207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4298, float %7189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7208 = extractvalue %dx.types.ResRet.f32 %7207, 0
  %7209 = extractvalue %dx.types.ResRet.f32 %7207, 1
  %7210 = extractvalue %dx.types.ResRet.f32 %7207, 2
  %7211 = fadd fast float %7208, -5.000000e-01
  %7212 = fadd fast float %7209, -5.000000e-01
  %7213 = fadd fast float %7210, -5.000000e-01
  %7214 = fmul fast float %4908, 4.000000e+00
  %7215 = fmul fast float %7214, %7197
  %7216 = fmul fast float %7215, %7211
  %7217 = fmul fast float %4909, 4.000000e+00
  %7218 = fmul fast float %7217, %7198
  %7219 = fmul fast float %7218, %7212
  %7220 = fmul fast float %4917, 4.000000e+00
  %7221 = fmul fast float %7220, %7199
  %7222 = fmul fast float %7221, %7213
  %7223 = fadd fast float %7216, %7203
  %7224 = fadd fast float %7219, %7204
  %7225 = fadd fast float %7222, %7205
  %7226 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7227 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7228 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  br label %7229

; <label>:7229                                    ; preds = %7206, %7126
  %7230 = phi float [ %7226, %7206 ], [ %7203, %7126 ]
  %7231 = phi float [ %7227, %7206 ], [ %7204, %7126 ]
  %7232 = phi float [ %7228, %7206 ], [ %7205, %7126 ]
  %7233 = fmul fast float %7153, 9.843750e-01
  %7234 = fadd fast float %7233, 7.812500e-03
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7234, float %5181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 2
  %7237 = extractvalue %dx.types.ResRet.f32 %7235, 3
  %7238 = fmul fast float %7236, %4908
  %7239 = fmul fast float %7236, %4909
  %7240 = fmul fast float %7236, %4917
  %7241 = fadd fast float %7238, %7237
  %7242 = fadd fast float %7239, %7237
  %7243 = fadd fast float %7240, %7237
  br i1 %5191, label %7244, label %7267

; <label>:7244                                    ; preds = %7229
  %7245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4298, float %7153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7246 = extractvalue %dx.types.ResRet.f32 %7245, 0
  %7247 = extractvalue %dx.types.ResRet.f32 %7245, 1
  %7248 = extractvalue %dx.types.ResRet.f32 %7245, 2
  %7249 = fadd fast float %7246, -5.000000e-01
  %7250 = fadd fast float %7247, -5.000000e-01
  %7251 = fadd fast float %7248, -5.000000e-01
  %7252 = fmul fast float %4908, 4.000000e+00
  %7253 = fmul fast float %7252, %7197
  %7254 = fmul fast float %7253, %7249
  %7255 = fmul fast float %4909, 4.000000e+00
  %7256 = fmul fast float %7255, %7198
  %7257 = fmul fast float %7256, %7250
  %7258 = fmul fast float %4917, 4.000000e+00
  %7259 = fmul fast float %7258, %7199
  %7260 = fmul fast float %7259, %7251
  %7261 = fadd fast float %7254, %7241
  %7262 = fadd fast float %7257, %7242
  %7263 = fadd fast float %7260, %7243
  %7264 = call float @dx.op.unary.f32(i32 7, float %7261)  ; Saturate(value)
  %7265 = call float @dx.op.unary.f32(i32 7, float %7262)  ; Saturate(value)
  %7266 = call float @dx.op.unary.f32(i32 7, float %7263)  ; Saturate(value)
  br label %7267

; <label>:7267                                    ; preds = %7244, %7229
  %7268 = phi float [ %7264, %7244 ], [ %7241, %7229 ]
  %7269 = phi float [ %7265, %7244 ], [ %7242, %7229 ]
  %7270 = phi float [ %7266, %7244 ], [ %7243, %7229 ]
  %7271 = call float @dx.op.binary.f32(i32 35, float %7269, float %7270)  ; FMax(a,b)
  %7272 = call float @dx.op.binary.f32(i32 35, float %7268, float %7271)  ; FMax(a,b)
  %7273 = fsub fast float 1.000000e+00, %7272
  %7274 = fmul fast float %7230, %7188
  %7275 = fmul fast float %7231, %7188
  %7276 = fmul fast float %7232, %7188
  %7277 = fsub fast float 1.000000e+00, %7154
  %7278 = bitcast float %7277 to i32
  %7279 = sitofp i32 %7278 to float
  %7280 = fmul fast float %7279, 5.000000e+00
  %7281 = fadd fast float %7280, 0xC1EFBF8940000000
  %7282 = fptosi float %7281 to i32
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %4299
  %7285 = fmul fast float %7273, %7284
  %7286 = fmul fast float %7285, %5733
  %7287 = fmul fast float %7285, %5734
  %7288 = fmul fast float %7285, %5735
  %7289 = fadd fast float %7286, %7274
  %7290 = fadd fast float %7287, %7275
  %7291 = fadd fast float %7288, %7276
  %7292 = fmul fast float %7160, %7142
  %7293 = fmul fast float %7292, %7273
  %7294 = fmul fast float %7160, %7143
  %7295 = fmul fast float %7294, %7273
  %7296 = fmul fast float %7160, %7144
  %7297 = fmul fast float %7296, %7273
  %7298 = fmul fast float %7292, %7289
  %7299 = fmul fast float %7294, %7290
  %7300 = fmul fast float %7296, %7291
  %7301 = fadd fast float %7293, %5717
  %7302 = fmul fast float %7301, %4325
  %7303 = fadd fast float %7295, %5718
  %7304 = fmul fast float %7303, %4325
  %7305 = fadd fast float %7297, %5719
  %7306 = fmul fast float %7305, %4325
  %7307 = fadd fast float %7298, %5760
  %7308 = fmul fast float %7307, %4325
  %7309 = fadd fast float %7299, %5763
  %7310 = fmul fast float %7309, %4325
  %7311 = fadd fast float %7300, %5766
  %7312 = fmul fast float %7311, %4325
  br label %7313

; <label>:7313                                    ; preds = %7267, %7060, %5713
  %7314 = phi float [ %5761, %5713 ], [ %5761, %7060 ], [ %7308, %7267 ]
  %7315 = phi float [ %5764, %5713 ], [ %5764, %7060 ], [ %7310, %7267 ]
  %7316 = phi float [ %5767, %5713 ], [ %5767, %7060 ], [ %7312, %7267 ]
  %7317 = phi float [ %5756, %5713 ], [ %5756, %7060 ], [ %7302, %7267 ]
  %7318 = phi float [ %5757, %5713 ], [ %5757, %7060 ], [ %7304, %7267 ]
  %7319 = phi float [ %5758, %5713 ], [ %5758, %7060 ], [ %7306, %7267 ]
  %7320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.i32 %7320, 0
  %7322 = icmp eq i32 %7321, 0
  br i1 %7322, label %7986, label %7323

; <label>:7323                                    ; preds = %7313
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7326 = extractvalue %dx.types.CBufRet.f32 %7324, 3
  %7327 = fmul fast float %7325, %111
  %7328 = fmul fast float %7326, %112
  %7329 = fptoui float %7327 to i32
  %7330 = fptoui float %7328 to i32
  %7331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7332 = extractvalue %dx.types.CBufRet.f32 %7331, 0
  %7333 = extractvalue %dx.types.CBufRet.f32 %7331, 2
  %7334 = extractvalue %dx.types.CBufRet.f32 %7331, 3
  %7335 = fadd fast float %99, -4.000000e+00
  %7336 = call float @dx.op.binary.f32(i32 35, float %7335, float 0.000000e+00)  ; FMax(a,b)
  %7337 = fadd fast float %7336, %7332
  %7338 = fmul fast float %7337, %7333
  %7339 = call float @dx.op.unary.f32(i32 23, float %7338)  ; Log(value)
  %7340 = fmul fast float %7339, %7334
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7343 = fmul fast float %7340, %7342
  %7344 = call float @dx.op.unary.f32(i32 7, float %7343)  ; Saturate(value)
  %7345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7346 = extractvalue %dx.types.CBufRet.i32 %7345, 1
  %7347 = add i32 %7346, -1
  %7348 = uitofp i32 %7346 to float
  %7349 = fmul fast float %7348, %7344
  %7350 = fptoui float %7349 to i32
  %7351 = call i32 @dx.op.binary.i32(i32 40, i32 %7350, i32 %7347)  ; UMin(a,b)
  %7352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7353 = extractvalue %dx.types.CBufRet.i32 %7352, 2
  %7354 = extractvalue %dx.types.CBufRet.i32 %7352, 3
  %7355 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7330, i32 %7353, i32 %7329)  ; UMad(a,b,c)
  %7356 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7351, i32 %7354, i32 %7355)  ; UMad(a,b,c)
  %7357 = add nsw i32 %7321, -1
  %7358 = call i32 @dx.op.binary.i32(i32 37, i32 %7357, i32 0)  ; IMax(a,b)
  %7359 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7360 = fptoui float %7359 to i32
  %7361 = lshr i32 %7360, 5
  %7362 = call i32 @dx.op.binary.i32(i32 40, i32 %7361, i32 8191)  ; UMin(a,b)
  %7363 = shl i32 %7362, 2
  %7364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7363, i32 undef)  ; BufferLoad(srv,index,wot)
  %7365 = extractvalue %dx.types.ResRet.i32 %7364, 0
  %7366 = lshr i32 %7365, 16
  %7367 = and i32 %7365, 65535
  %7368 = lshr i32 %7365, 21
  %7369 = lshr i32 %7367, 5
  %7370 = call i32 @dx.op.binary.i32(i32 40, i32 %7369, i32 %7358)  ; UMin(a,b)
  %7371 = icmp ugt i32 %7368, %7370
  br i1 %7371, label %7986, label %7372

; <label>:7372                                    ; preds = %7323
  br label %7373

; <label>:7373                                    ; preds = %7976, %7372
  %7374 = phi i32 [ %7983, %7976 ], [ %7368, %7372 ]
  %7375 = phi float [ %7977, %7976 ], [ %7314, %7372 ]
  %7376 = phi float [ %7978, %7976 ], [ %7315, %7372 ]
  %7377 = phi float [ %7979, %7976 ], [ %7316, %7372 ]
  %7378 = phi float [ %7980, %7976 ], [ %7317, %7372 ]
  %7379 = phi float [ %7981, %7976 ], [ %7318, %7372 ]
  %7380 = phi float [ %7982, %7976 ], [ %7319, %7372 ]
  %7381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7382 = extractvalue %dx.types.CBufRet.i32 %7381, 0
  %7383 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7356, i32 %7382, i32 %7374)  ; UMad(a,b,c)
  %7384 = shl i32 %7383, 2
  %7385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7384, i32 undef)  ; BufferLoad(srv,index,wot)
  %7386 = extractvalue %dx.types.ResRet.i32 %7385, 0
  %7387 = shl i32 %7374, 5
  %7388 = sub nsw i32 %7366, %7387
  %7389 = call i32 @dx.op.binary.i32(i32 37, i32 %7388, i32 0)  ; IMax(a,b)
  %7390 = call i32 @dx.op.binary.i32(i32 38, i32 %7389, i32 31)  ; IMin(a,b)
  %7391 = sub nsw i32 1, %7366
  %7392 = add nsw i32 %7391, %7367
  %7393 = call i32 @dx.op.binary.i32(i32 37, i32 %7392, i32 0)  ; IMax(a,b)
  %7394 = call i32 @dx.op.binary.i32(i32 38, i32 %7393, i32 32)  ; IMin(a,b)
  %7395 = and i32 %7394, 31
  %7396 = shl i32 -1, %7395
  %7397 = xor i32 %7396, -1
  %7398 = and i32 %7390, 31
  %7399 = shl i32 %7397, %7398
  %7400 = icmp eq i32 %7394, 32
  %7401 = select i1 %7400, i32 -1, i32 %7399
  %7402 = and i32 %7401, %7386
  %7403 = icmp eq i32 %7402, 0
  br i1 %7403, label %7976, label %7404

; <label>:7404                                    ; preds = %7373
  br label %7405

; <label>:7405                                    ; preds = %7539, %7404
  %7406 = phi i32 [ %7417, %7539 ], [ %7402, %7404 ]
  %7407 = phi float [ %7540, %7539 ], [ %7375, %7404 ]
  %7408 = phi float [ %7541, %7539 ], [ %7376, %7404 ]
  %7409 = phi float [ %7542, %7539 ], [ %7377, %7404 ]
  %7410 = phi float [ %7543, %7539 ], [ %7378, %7404 ]
  %7411 = phi float [ %7544, %7539 ], [ %7379, %7404 ]
  %7412 = phi float [ %7545, %7539 ], [ %7380, %7404 ]
  %7413 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7406)  ; FirstbitLo(value)
  %7414 = add i32 %7413, %7387
  %7415 = and i32 %7413, 31
  %7416 = shl i32 1, %7415
  %7417 = xor i32 %7416, %7406
  %7418 = mul i32 %7414, 112
  %7419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7418, i32 undef)  ; BufferLoad(srv,index,wot)
  %7420 = extractvalue %dx.types.ResRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.ResRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.ResRet.f32 %7419, 2
  %7423 = or i32 %7418, 12
  %7424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7423, i32 undef)  ; BufferLoad(srv,index,wot)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = add i32 %7418, 16
  %7427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7426, i32 undef)  ; BufferLoad(srv,index,wot)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = add i32 %7418, 28
  %7432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7431, i32 undef)  ; BufferLoad(srv,index,wot)
  %7433 = extractvalue %dx.types.ResRet.i32 %7432, 0
  %7434 = add i32 %7418, 44
  %7435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7434, i32 undef)  ; BufferLoad(srv,index,wot)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = add i32 %7418, 48
  %7438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7437, i32 undef)  ; BufferLoad(srv,index,wot)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.ResRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.ResRet.f32 %7438, 2
  %7442 = extractvalue %dx.types.ResRet.f32 %7438, 3
  %7443 = add i32 %7418, 64
  %7444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = extractvalue %dx.types.ResRet.f32 %7444, 1
  %7447 = extractvalue %dx.types.ResRet.f32 %7444, 2
  %7448 = extractvalue %dx.types.ResRet.f32 %7444, 3
  %7449 = add i32 %7418, 80
  %7450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7449, i32 undef)  ; BufferLoad(srv,index,wot)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 1
  %7452 = extractvalue %dx.types.ResRet.f32 %7450, 2
  %7453 = add i32 %7418, 92
  %7454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7453, i32 undef)  ; BufferLoad(srv,index,wot)
  %7455 = extractvalue %dx.types.ResRet.i32 %7454, 0
  %7456 = call float @dx.op.dot3.f32(i32 55, float %7420, float %7421, float %7422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7457 = select i1 %264, float %7451, float %7420
  %7458 = select i1 %264, float %7456, float %7421
  %7459 = select i1 %264, float %7452, float %7422
  %7460 = and i32 %7455, 65535
  %7461 = uitofp i32 %7460 to float
  %7462 = lshr i32 %7455, 16
  %7463 = uitofp i32 %7462 to float
  %7464 = and i32 %7433, 65535
  %7465 = and i32 %7433, 50331648
  %7466 = icmp eq i32 %7465, 33554432
  %7467 = fsub fast float %7439, %170
  %7468 = fsub fast float %7440, %171
  %7469 = fsub fast float %7441, %172
  %7470 = call float @dx.op.dot3.f32(i32 55, float %7467, float %7468, float %7469, float %7467, float %7468, float %7469)  ; Dot3(ax,ay,az,bx,by,bz)
  %7471 = call float @dx.op.unary.f32(i32 24, float %7470)  ; Sqrt(value)
  %7472 = fdiv fast float 1.000000e+00, %7471
  %7473 = fmul fast float %7472, %7467
  %7474 = fmul fast float %7472, %7468
  %7475 = fmul fast float %7472, %7469
  %7476 = fadd fast float %7471, %7425
  %7477 = fdiv fast float 1.000000e+00, %7476
  %7478 = fmul float %7436, %7477
  %7479 = fmul float %7478, %7478
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  br i1 %7466, label %7481, label %7502

; <label>:7481                                    ; preds = %7405
  %7482 = fmul fast float %7447, %7428
  %7483 = fmul fast float %7447, %7429
  %7484 = fmul fast float %7447, %7430
  %7485 = fadd fast float %7467, %7482
  %7486 = fadd fast float %7468, %7483
  %7487 = fadd fast float %7469, %7484
  %7488 = call float @dx.op.dot3.f32(i32 55, float %7485, float %7486, float %7487, float %7485, float %7486, float %7487)  ; Dot3(ax,ay,az,bx,by,bz)
  %7489 = call float @dx.op.unary.f32(i32 25, float %7488)  ; Rsqrt(value)
  %7490 = fmul fast float %7489, %7485
  %7491 = fmul fast float %7489, %7486
  %7492 = fmul fast float %7489, %7487
  %7493 = fsub fast float %170, %7439
  %7494 = fsub fast float %171, %7440
  %7495 = fsub fast float %172, %7441
  %7496 = fsub fast float -0.000000e+00, %7493
  %7497 = fsub fast float -0.000000e+00, %7494
  %7498 = fsub fast float -0.000000e+00, %7495
  %7499 = call float @dx.op.dot3.f32(i32 55, float %7496, float %7497, float %7498, float %7428, float %7429, float %7430)  ; Dot3(ax,ay,az,bx,by,bz)
  %7500 = fcmp fast ogt float %7499, 0.000000e+00
  %7501 = uitofp i1 %7500 to float
  br label %7502

; <label>:7502                                    ; preds = %7481, %7405
  %7503 = phi float [ %7501, %7481 ], [ 1.000000e+00, %7405 ]
  %7504 = phi float [ %7490, %7481 ], [ %7473, %7405 ]
  %7505 = phi float [ %7491, %7481 ], [ %7474, %7405 ]
  %7506 = phi float [ %7492, %7481 ], [ %7475, %7405 ]
  %7507 = call float @dx.op.dot3.f32(i32 55, float %7428, float %7429, float %7430, float %7504, float %7505, float %7506)  ; Dot3(ax,ay,az,bx,by,bz)
  %7508 = fmul fast float %7507, %7507
  %7509 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7510 = fsub fast float 1.000000e+00, %7509
  %7511 = fmul fast float %7510, 5.000000e-01
  %7512 = fcmp fast ogt float %7507, 0.000000e+00
  %7513 = fsub fast float 1.000000e+00, %7511
  %7514 = select i1 %7512, float %7511, float %7513
  %7515 = fmul fast float %7514, %7463
  %7516 = fadd fast float %7515, %7461
  %7517 = fmul fast float %7516, 0x3EF0001000000000
  %7518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7517, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = fmul fast float %7507, %7445
  %7521 = fadd fast float %7520, %7446
  %7522 = call float @dx.op.unary.f32(i32 7, float %7521)  ; Saturate(value)
  %7523 = select i1 %7466, float 1.000000e+00, float %7522
  %7524 = select i1 %7466, float %7522, float 1.000000e+00
  %7525 = fmul fast float %7471, %7442
  %7526 = fsub fast float 1.000000e+00, %7525
  %7527 = fmul fast float %7526, %7448
  %7528 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7529 = fmul fast float %7528, %7524
  %7530 = fmul fast float %7529, 2.000000e+00
  %7531 = fsub fast float 3.000000e+00, %7530
  %7532 = fmul fast float %7519, %7503
  %7533 = fmul fast float %7529, %7529
  %7534 = fmul fast float %7533, %7532
  %7535 = fmul fast float %7534, %7531
  %7536 = call float @dx.op.binary.f32(i32 36, float %7535, float %7535)  ; FMin(a,b)
  %7537 = call float @dx.op.binary.f32(i32 36, float %7535, float %7536)  ; FMin(a,b)
  %7538 = fcmp fast ogt float %7537, 0.000000e+00
  br i1 %7538, label %7547, label %7539, !dx.controlflow.hints !132

; <label>:7539                                    ; preds = %7932, %7693, %7502
  %7540 = phi float [ %7407, %7693 ], [ %7407, %7502 ], [ %7972, %7932 ]
  %7541 = phi float [ %7408, %7693 ], [ %7408, %7502 ], [ %7973, %7932 ]
  %7542 = phi float [ %7409, %7693 ], [ %7409, %7502 ], [ %7974, %7932 ]
  %7543 = phi float [ %7410, %7693 ], [ %7410, %7502 ], [ %7966, %7932 ]
  %7544 = phi float [ %7411, %7693 ], [ %7411, %7502 ], [ %7967, %7932 ]
  %7545 = phi float [ %7412, %7693 ], [ %7412, %7502 ], [ %7968, %7932 ]
  %7546 = icmp eq i32 %7406, %7416
  br i1 %7546, label %7975, label %7405

; <label>:7547                                    ; preds = %7502
  %7548 = icmp eq i32 %7464, 255
  br i1 %7548, label %7693, label %7549, !dx.controlflow.hints !133

; <label>:7549                                    ; preds = %7547
  %7550 = mul nuw nsw i32 %7464, 176
  %7551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7550, i32 undef)  ; BufferLoad(srv,index,wot)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = extractvalue %dx.types.ResRet.f32 %7551, 1
  %7554 = extractvalue %dx.types.ResRet.f32 %7551, 2
  %7555 = extractvalue %dx.types.ResRet.f32 %7551, 3
  %7556 = add nuw nsw i32 %7550, 16
  %7557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7560 = add nuw nsw i32 %7550, 32
  %7561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = extractvalue %dx.types.ResRet.f32 %7561, 1
  %7564 = extractvalue %dx.types.ResRet.f32 %7561, 2
  %7565 = add nuw nsw i32 %7550, 48
  %7566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7565, i32 undef)  ; BufferLoad(srv,index,wot)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.ResRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.ResRet.f32 %7566, 2
  %7570 = extractvalue %dx.types.ResRet.f32 %7566, 3
  %7571 = add nuw nsw i32 %7550, 64
  %7572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7571, i32 undef)  ; BufferLoad(srv,index,wot)
  %7573 = extractvalue %dx.types.ResRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.ResRet.f32 %7572, 3
  %7577 = add nuw nsw i32 %7550, 80
  %7578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7577, i32 undef)  ; BufferLoad(srv,index,wot)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.ResRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.ResRet.f32 %7578, 2
  %7582 = extractvalue %dx.types.ResRet.f32 %7578, 3
  %7583 = add nuw nsw i32 %7550, 96
  %7584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7583, i32 undef)  ; BufferLoad(srv,index,wot)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.ResRet.f32 %7584, 2
  %7588 = extractvalue %dx.types.ResRet.f32 %7584, 3
  %7589 = bitcast float %7559 to i32
  %7590 = fmul fast float %7564, %120
  %7591 = fmul fast float %7564, %122
  %7592 = fmul fast float %7564, %124
  %7593 = fadd fast float %7590, %170
  %7594 = fadd fast float %7591, %171
  %7595 = fadd fast float %7592, %172
  %7596 = fmul fast float %7593, %7567
  %7597 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7573, float %7596)  ; FMad(a,b,c)
  %7598 = call float @dx.op.tertiary.f32(i32 46, float %7595, float %7579, float %7597)  ; FMad(a,b,c)
  %7599 = fadd fast float %7598, %7585
  %7600 = fmul fast float %7593, %7568
  %7601 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7574, float %7600)  ; FMad(a,b,c)
  %7602 = call float @dx.op.tertiary.f32(i32 46, float %7595, float %7580, float %7601)  ; FMad(a,b,c)
  %7603 = fadd fast float %7602, %7586
  %7604 = fmul fast float %7593, %7569
  %7605 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7575, float %7604)  ; FMad(a,b,c)
  %7606 = call float @dx.op.tertiary.f32(i32 46, float %7595, float %7581, float %7605)  ; FMad(a,b,c)
  %7607 = fadd fast float %7606, %7587
  %7608 = fmul fast float %7593, %7570
  %7609 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7576, float %7608)  ; FMad(a,b,c)
  %7610 = call float @dx.op.tertiary.f32(i32 46, float %7595, float %7582, float %7609)  ; FMad(a,b,c)
  %7611 = fadd fast float %7610, %7588
  %7612 = fdiv fast float %7599, %7611
  %7613 = fdiv fast float %7603, %7611
  %7614 = fdiv fast float %7607, %7611
  %7615 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7614)  ; FMax(a,b)
  %7616 = fmul fast float %275, 0x401921FB60000000
  %7617 = call float @dx.op.unary.f32(i32 13, float %7616)  ; Sin(value)
  %7618 = call float @dx.op.unary.f32(i32 12, float %7616)  ; Cos(value)
  %7619 = fmul fast float %7618, %7563
  %7620 = call float @dx.op.tertiary.f32(i32 46, float %7617, float %7563, float 0.000000e+00)  ; FMad(a,b,c)
  %7621 = fmul fast float %7563, %7617
  %7622 = fsub fast float -0.000000e+00, %7621
  %7623 = call float @dx.op.tertiary.f32(i32 46, float %7618, float %7563, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7624

; <label>:7624                                    ; preds = %7624, %7549
  %7625 = phi float [ 0.000000e+00, %7549 ], [ %7657, %7624 ]
  %7626 = phi float [ 0.000000e+00, %7549 ], [ %7659, %7624 ]
  %7627 = phi i32 [ 0, %7549 ], [ %7660, %7624 ]
  %7628 = mul i32 %7627, 2
  %7629 = add i32 0, %7628
  %7630 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7629
  %7631 = load float, float* %7630, align 4
  %7632 = mul i32 %7627, 2
  %7633 = add i32 1, %7632
  %7634 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7633
  %7635 = load float, float* %7634, align 4
  %7636 = fmul fast float %7619, %7631
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7635, float %7622, float %7636)  ; FMad(a,b,c)
  %7638 = fmul fast float %7631, %7620
  %7639 = call float @dx.op.tertiary.f32(i32 46, float %7635, float %7623, float %7638)  ; FMad(a,b,c)
  %7640 = fadd fast float %7637, %7612
  %7641 = fadd fast float %7639, %7613
  %7642 = fmul fast float %7640, %7558
  %7643 = fmul fast float %7641, %7558
  %7644 = call float @dx.op.binary.f32(i32 35, float %7642, float %7554)  ; FMax(a,b)
  %7645 = call float @dx.op.binary.f32(i32 35, float %7643, float %7554)  ; FMax(a,b)
  %7646 = call float @dx.op.binary.f32(i32 36, float %7644, float %7555)  ; FMin(a,b)
  %7647 = call float @dx.op.binary.f32(i32 36, float %7645, float %7555)  ; FMin(a,b)
  %7648 = fadd fast float %7646, %7552
  %7649 = fadd fast float %7647, %7553
  %7650 = uitofp i32 %7589 to float
  %7651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7648, float %7649, float %7650, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = fsub fast float %7652, %7615
  %7654 = fsub fast float %7653, %7562
  %7655 = fcmp fast ogt float %7654, 0.000000e+00
  %7656 = select i1 %7655, float 1.000000e+00, float 0.000000e+00
  %7657 = fadd fast float %7656, %7625
  %7658 = select i1 %7655, float %7654, float 0.000000e+00
  %7659 = fadd fast float %7658, %7626
  %7660 = add nuw nsw i32 %7627, 1
  %7661 = icmp eq i32 %7660, 8
  br i1 %7661, label %7662, label %7624

; <label>:7662                                    ; preds = %7624
  %7663 = fdiv fast float 1.000000e+00, %7657
  %7664 = fmul fast float %7663, %7659
  %7665 = fdiv fast float 1.000000e+00, %7615
  %7666 = fmul fast float %7664, %7665
  %7667 = call float @dx.op.unary.f32(i32 7, float %7666)  ; Saturate(value)
  %7668 = call float @dx.op.binary.f32(i32 35, float %7667, float 0.000000e+00)  ; FMax(a,b)
  %7669 = fmul fast float %7657, 1.250000e-01
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
  %7689 = fsub fast float -5.000000e-01, %7688
  %7690 = fmul fast float %7689, %7523
  %7691 = fadd fast float %7690, 1.000000e+00
  %7692 = fmul fast float %7691, %7535
  br label %7693

; <label>:7693                                    ; preds = %7662, %7547
  %7694 = phi float [ %7692, %7662 ], [ %7535, %7547 ]
  %7695 = call float @dx.op.binary.f32(i32 36, float %7694, float %7694)  ; FMin(a,b)
  %7696 = call float @dx.op.binary.f32(i32 36, float %7694, float %7695)  ; FMin(a,b)
  %7697 = fcmp fast ogt float %7696, 0.000000e+00
  br i1 %7697, label %7698, label %7539, !dx.controlflow.hints !134

; <label>:7698                                    ; preds = %7693
  %7699 = fmul fast float %7694, %7457
  %7700 = fmul fast float %7694, %7458
  %7701 = fmul fast float %7694, %7459
  %7702 = fsub fast float %7441, %4725
  %7703 = fcmp fast ogt float %7702, 0.000000e+00
  %7704 = fsub fast float %172, %4725
  %7705 = fcmp fast ogt float %7704, 0.000000e+00
  %7706 = xor i1 %7705, %7703
  %7707 = fsub fast float %4725, %7441
  %7708 = fmul fast float %7707, 2.000000e+00
  %7709 = fadd fast float %7708, %7441
  %7710 = select i1 %7706, float %7441, float %7709
  %7711 = fsub fast float %7710, %172
  %7712 = call float @dx.op.dot3.f32(i32 55, float %7467, float %7468, float %7711, float %7467, float %7468, float %7711)  ; Dot3(ax,ay,az,bx,by,bz)
  %7713 = call float @dx.op.unary.f32(i32 25, float %7712)  ; Rsqrt(value)
  %7714 = fmul fast float %7713, %7467
  %7715 = fmul fast float %7713, %7468
  %7716 = fmul fast float %7713, %7711
  %7717 = fsub fast float %4725, %172
  %7718 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7717)  ; Dot3(ax,ay,az,bx,by,bz)
  %7719 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7714, float %7715, float %7716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7720 = fdiv fast float 1.000000e+00, %7719
  %7721 = fmul fast float %7720, %7718
  %7722 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7704, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  %7724 = fcmp fast olt float %7722, 0.000000e+00
  %7725 = zext i1 %7723 to i32
  %7726 = zext i1 %7724 to i32
  %7727 = sub nsw i32 %7725, %7726
  %7728 = sitofp i32 %7727 to float
  %7729 = fsub fast float %7710, %4725
  %7730 = call float @dx.op.dot3.f32(i32 55, float %7467, float %7468, float %7729, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = fcmp fast ogt float %7730, 0.000000e+00
  %7732 = fcmp fast olt float %7730, 0.000000e+00
  %7733 = zext i1 %7731 to i32
  %7734 = zext i1 %7732 to i32
  %7735 = sub nsw i32 %7733, %7734
  %7736 = sitofp i32 %7735 to float
  %7737 = fcmp fast une float %7728, %7736
  br i1 %7737, label %7738, label %7748

; <label>:7738                                    ; preds = %7698
  %7739 = fmul fast float %7721, %7716
  %7740 = fmul fast float %7721, %7715
  %7741 = fmul fast float %7721, %7714
  %7742 = fmul fast float %7741, %7741
  %7743 = fmul fast float %7740, %7740
  %7744 = fadd fast float %7742, %7743
  %7745 = fmul fast float %7739, %7739
  %7746 = fadd fast float %7744, %7745
  %7747 = call float @dx.op.unary.f32(i32 24, float %7746)  ; Sqrt(value)
  br label %7760

; <label>:7748                                    ; preds = %7698
  %7749 = icmp slt i32 %7727, 0
  br i1 %7749, label %7750, label %7760

; <label>:7750                                    ; preds = %7748
  %7751 = fsub fast float %170, %7439
  %7752 = fsub fast float %171, %7440
  %7753 = fsub fast float %172, %7710
  %7754 = fmul fast float %7751, %7751
  %7755 = fmul fast float %7752, %7752
  %7756 = fadd fast float %7754, %7755
  %7757 = fmul fast float %7753, %7753
  %7758 = fadd fast float %7756, %7757
  %7759 = call float @dx.op.unary.f32(i32 24, float %7758)  ; Sqrt(value)
  br label %7760

; <label>:7760                                    ; preds = %7750, %7748, %7738
  %7761 = phi float [ %7747, %7738 ], [ %7759, %7750 ], [ 0.000000e+00, %7748 ]
  %7762 = and i1 %7705, %7703
  %7763 = fsub fast float -0.000000e+00, %7761
  %7764 = select i1 %7762, float -0.000000e+00, float %7763
  %7765 = fmul fast float %4722, 0x3FF7154760000000
  %7766 = fmul fast float %7765, %7764
  %7767 = fmul fast float %4723, 0x3FF7154760000000
  %7768 = fmul fast float %7767, %7764
  %7769 = fmul fast float %4724, 0x3FF7154760000000
  %7770 = fmul fast float %7769, %7764
  %7771 = call float @dx.op.unary.f32(i32 21, float %7766)  ; Exp(value)
  %7772 = call float @dx.op.unary.f32(i32 21, float %7768)  ; Exp(value)
  %7773 = call float @dx.op.unary.f32(i32 21, float %7770)  ; Exp(value)
  %7774 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7775 = call float @dx.op.unary.f32(i32 7, float %7772)  ; Saturate(value)
  %7776 = call float @dx.op.unary.f32(i32 7, float %7773)  ; Saturate(value)
  %7777 = fmul fast float %7699, %7774
  %7778 = fmul fast float %7700, %7775
  %7779 = fmul fast float %7701, %7776
  %7780 = fsub fast float %7473, %190
  %7781 = fsub fast float %7474, %191
  %7782 = fsub fast float %7475, %192
  %7783 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %7782, float %7780, float %7781, float %7782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7784 = call float @dx.op.unary.f32(i32 25, float %7783)  ; Rsqrt(value)
  %7785 = fmul fast float %7784, %7780
  %7786 = fmul fast float %7784, %7781
  %7787 = fmul fast float %7784, %7782
  %7788 = call float @dx.op.dot3.f32(i32 55, float %7473, float %7474, float %7475, float %4911, float %4912, float %4913)  ; Dot3(ax,ay,az,bx,by,bz)
  %7789 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %7785, float %7786, float %7787)  ; Dot3(ax,ay,az,bx,by,bz)
  %7790 = call float @dx.op.unary.f32(i32 7, float %7788)  ; Saturate(value)
  %7791 = fmul fast float %7790, %7480
  %7792 = bitcast i32 %4943 to float
  %7793 = fmul fast float %7790, %7790
  %7794 = fmul fast float %7793, %7792
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fmul fast float %7791, %7795
  %7797 = bitcast float %7470 to i32
  %7798 = ashr i32 %7797, 1
  %7799 = sub nsw i32 1597463007, %7798
  %7800 = bitcast i32 %7799 to float
  %7801 = fmul fast float %7800, %7467
  %7802 = fmul fast float %7800, %7468
  %7803 = fmul fast float %7800, %7469
  %7804 = fsub fast float %7801, %190
  %7805 = fsub fast float %7802, %191
  %7806 = fsub fast float %7803, %192
  %7807 = call float @dx.op.dot3.f32(i32 55, float %7804, float %7805, float %7806, float %7804, float %7805, float %7806)  ; Dot3(ax,ay,az,bx,by,bz)
  %7808 = call float @dx.op.unary.f32(i32 25, float %7807)  ; Rsqrt(value)
  %7809 = fmul fast float %7804, %7808
  %7810 = fmul fast float %7805, %7808
  %7811 = fmul fast float %7806, %7808
  %7812 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %7809, float %7810, float %7811)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = fmul fast float %7812, %7812
  %7814 = call float @dx.op.unary.f32(i32 6, float %7788)  ; FAbs(value)
  %7815 = fsub fast float 1.000000e+00, %4937
  %7816 = fmul fast float %4919, %4919
  %7817 = fmul fast float %7816, %7815
  %7818 = fadd fast float %7817, %4937
  %7819 = bitcast float %7818 to i32
  %7820 = ashr i32 %7819, 1
  %7821 = add nsw i32 %7820, 532487669
  %7822 = bitcast i32 %7821 to float
  %7823 = fadd fast float %7822, %4919
  %7824 = fmul fast float %4937, %7813
  %7825 = fsub fast float 1.000000e+00, %7813
  %7826 = fadd fast float %7825, %7824
  %7827 = fmul fast float %7814, %7814
  %7828 = fmul fast float %7827, %7815
  %7829 = fadd fast float %7828, %4937
  %7830 = bitcast float %7829 to i32
  %7831 = ashr i32 %7830, 1
  %7832 = add nsw i32 %7831, 532487669
  %7833 = bitcast i32 %7832 to float
  %7834 = fadd fast float %7833, %7814
  %7835 = fmul fast float %7826, %7826
  %7836 = fmul fast float %7835, %7823
  %7837 = fmul fast float %7836, %7834
  %7838 = fdiv fast float 1.000000e+00, %7837
  %7839 = bitcast float %4937 to i32
  %7840 = sitofp i32 %7839 to float
  %7841 = fmul fast float %7840, 0x3FE7F73180000000
  %7842 = fadd fast float %7841, 0x41AFE27C40000000
  %7843 = fptosi float %7842 to i32
  %7844 = bitcast i32 %7843 to float
  %7845 = fmul fast float %7436, 0x3FD80E9D60000000
  %7846 = fmul fast float %7845, %7800
  %7847 = fadd fast float %7844, %7846
  %7848 = bitcast float %7847 to i32
  %7849 = sub nsw i32 2129859010, %7848
  %7850 = bitcast i32 %7849 to float
  %7851 = fmul fast float %4937, %7838
  %7852 = fmul fast float %7851, %7844
  %7853 = fmul fast float %7852, %7850
  %7854 = call float @dx.op.unary.f32(i32 6, float %7789)  ; FAbs(value)
  %7855 = fsub fast float 1.000000e+00, %7854
  %7856 = bitcast float %7855 to i32
  %7857 = sitofp i32 %7856 to float
  %7858 = fmul fast float %7857, 5.000000e+00
  %7859 = fadd fast float %7858, 0xC1EFBF8940000000
  %7860 = fptosi float %7859 to i32
  %7861 = bitcast i32 %7860 to float
  %7862 = fsub fast float 1.000000e+00, %4908
  %7863 = fsub fast float 1.000000e+00, %4909
  %7864 = fsub fast float 1.000000e+00, %4917
  %7865 = fmul fast float %7861, %7862
  %7866 = fmul fast float %7861, %7863
  %7867 = fmul fast float %7861, %7864
  %7868 = fadd fast float %7865, %4908
  %7869 = fadd fast float %7866, %4909
  %7870 = fadd fast float %7867, %4917
  br i1 %5191, label %7871, label %7894

; <label>:7871                                    ; preds = %7760
  %7872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4298, float %7854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7873 = extractvalue %dx.types.ResRet.f32 %7872, 0
  %7874 = extractvalue %dx.types.ResRet.f32 %7872, 1
  %7875 = extractvalue %dx.types.ResRet.f32 %7872, 2
  %7876 = fadd fast float %7873, -5.000000e-01
  %7877 = fadd fast float %7874, -5.000000e-01
  %7878 = fadd fast float %7875, -5.000000e-01
  %7879 = fmul fast float %4908, 4.000000e+00
  %7880 = fmul fast float %7879, %7862
  %7881 = fmul fast float %7880, %7876
  %7882 = fmul fast float %4909, 4.000000e+00
  %7883 = fmul fast float %7882, %7863
  %7884 = fmul fast float %7883, %7877
  %7885 = fmul fast float %4917, 4.000000e+00
  %7886 = fmul fast float %7885, %7864
  %7887 = fmul fast float %7886, %7878
  %7888 = fadd fast float %7881, %7868
  %7889 = fadd fast float %7884, %7869
  %7890 = fadd fast float %7887, %7870
  %7891 = call float @dx.op.unary.f32(i32 7, float %7888)  ; Saturate(value)
  %7892 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7893 = call float @dx.op.unary.f32(i32 7, float %7890)  ; Saturate(value)
  br label %7894

; <label>:7894                                    ; preds = %7871, %7760
  %7895 = phi float [ %7891, %7871 ], [ %7868, %7760 ]
  %7896 = phi float [ %7892, %7871 ], [ %7869, %7760 ]
  %7897 = phi float [ %7893, %7871 ], [ %7870, %7760 ]
  %7898 = fmul fast float %7788, 9.843750e-01
  %7899 = fadd fast float %7898, 7.812500e-03
  %7900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7899, float %5181, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7901 = extractvalue %dx.types.ResRet.f32 %7900, 2
  %7902 = extractvalue %dx.types.ResRet.f32 %7900, 3
  %7903 = fmul fast float %7901, %4908
  %7904 = fmul fast float %7901, %4909
  %7905 = fmul fast float %7901, %4917
  %7906 = fadd fast float %7903, %7902
  %7907 = fadd fast float %7904, %7902
  %7908 = fadd fast float %7905, %7902
  br i1 %5191, label %7909, label %7932

; <label>:7909                                    ; preds = %7894
  %7910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4298, float %7788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7911 = extractvalue %dx.types.ResRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.ResRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.ResRet.f32 %7910, 2
  %7914 = fadd fast float %7911, -5.000000e-01
  %7915 = fadd fast float %7912, -5.000000e-01
  %7916 = fadd fast float %7913, -5.000000e-01
  %7917 = fmul fast float %4908, 4.000000e+00
  %7918 = fmul fast float %7917, %7862
  %7919 = fmul fast float %7918, %7914
  %7920 = fmul fast float %4909, 4.000000e+00
  %7921 = fmul fast float %7920, %7863
  %7922 = fmul fast float %7921, %7915
  %7923 = fmul fast float %4917, 4.000000e+00
  %7924 = fmul fast float %7923, %7864
  %7925 = fmul fast float %7924, %7916
  %7926 = fadd fast float %7919, %7906
  %7927 = fadd fast float %7922, %7907
  %7928 = fadd fast float %7925, %7908
  %7929 = call float @dx.op.unary.f32(i32 7, float %7926)  ; Saturate(value)
  %7930 = call float @dx.op.unary.f32(i32 7, float %7927)  ; Saturate(value)
  %7931 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  br label %7932

; <label>:7932                                    ; preds = %7909, %7894
  %7933 = phi float [ %7929, %7909 ], [ %7906, %7894 ]
  %7934 = phi float [ %7930, %7909 ], [ %7907, %7894 ]
  %7935 = phi float [ %7931, %7909 ], [ %7908, %7894 ]
  %7936 = call float @dx.op.binary.f32(i32 35, float %7934, float %7935)  ; FMax(a,b)
  %7937 = call float @dx.op.binary.f32(i32 35, float %7933, float %7936)  ; FMax(a,b)
  %7938 = fsub fast float 1.000000e+00, %7937
  %7939 = fmul fast float %7895, %7853
  %7940 = fmul fast float %7896, %7853
  %7941 = fmul fast float %7897, %7853
  %7942 = fsub fast float 1.000000e+00, %7789
  %7943 = bitcast float %7942 to i32
  %7944 = sitofp i32 %7943 to float
  %7945 = fmul fast float %7944, 5.000000e+00
  %7946 = fadd fast float %7945, 0xC1EFBF8940000000
  %7947 = fptosi float %7946 to i32
  %7948 = bitcast i32 %7947 to float
  %7949 = fmul fast float %7948, %4299
  %7950 = fmul fast float %7938, %7949
  %7951 = fmul fast float %7950, %5733
  %7952 = fmul fast float %7950, %5734
  %7953 = fmul fast float %7950, %5735
  %7954 = fadd fast float %7951, %7939
  %7955 = fadd fast float %7952, %7940
  %7956 = fadd fast float %7953, %7941
  %7957 = fmul fast float %7777, %4325
  %7958 = fmul fast float %7957, %7796
  %7959 = fmul fast float %7958, %7938
  %7960 = fmul fast float %7778, %4325
  %7961 = fmul fast float %7960, %7796
  %7962 = fmul fast float %7961, %7938
  %7963 = fmul fast float %7779, %4325
  %7964 = fmul fast float %7963, %7796
  %7965 = fmul fast float %7964, %7938
  %7966 = fadd fast float %7959, %7410
  %7967 = fadd fast float %7962, %7411
  %7968 = fadd fast float %7965, %7412
  %7969 = fmul fast float %7958, %7954
  %7970 = fmul fast float %7961, %7955
  %7971 = fmul fast float %7964, %7956
  %7972 = fadd fast float %7969, %7407
  %7973 = fadd fast float %7970, %7408
  %7974 = fadd fast float %7971, %7409
  br label %7539

; <label>:7975                                    ; preds = %7539
  br label %7976

; <label>:7976                                    ; preds = %7975, %7373
  %7977 = phi float [ %7375, %7373 ], [ %7540, %7975 ]
  %7978 = phi float [ %7376, %7373 ], [ %7541, %7975 ]
  %7979 = phi float [ %7377, %7373 ], [ %7542, %7975 ]
  %7980 = phi float [ %7378, %7373 ], [ %7543, %7975 ]
  %7981 = phi float [ %7379, %7373 ], [ %7544, %7975 ]
  %7982 = phi float [ %7380, %7373 ], [ %7545, %7975 ]
  %7983 = add i32 %7374, 1
  %7984 = icmp ugt i32 %7983, %7370
  br i1 %7984, label %7985, label %7373

; <label>:7985                                    ; preds = %7976
  br label %7986

; <label>:7986                                    ; preds = %7985, %7323, %7313
  %7987 = phi float [ %7314, %7313 ], [ %7314, %7323 ], [ %7977, %7985 ]
  %7988 = phi float [ %7315, %7313 ], [ %7315, %7323 ], [ %7978, %7985 ]
  %7989 = phi float [ %7316, %7313 ], [ %7316, %7323 ], [ %7979, %7985 ]
  %7990 = phi float [ %7317, %7313 ], [ %7317, %7323 ], [ %7980, %7985 ]
  %7991 = phi float [ %7318, %7313 ], [ %7318, %7323 ], [ %7981, %7985 ]
  %7992 = phi float [ %7319, %7313 ], [ %7319, %7323 ], [ %7982, %7985 ]
  %7993 = fmul fast float %4325, %4325
  %7994 = fsub fast float 1.000000e+00, %7993
  %7995 = call float @dx.op.dot3.f32(i32 55, float %7994, float %7994, float %7994, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7996 = fsub fast float 1.000000e+00, %7995
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 0
  %7999 = fmul fast float %7998, %5739
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 3
  %8002 = fsub fast float 1.000000e+00, %4303
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8004 = fadd fast float %7992, %4301
  %8005 = fmul fast float %8004, %4303
  %8006 = fmul fast float %8003, %8001
  %8007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %8008 = extractvalue %dx.types.ResRet.i32 %8007, 3
  %8009 = bitcast i32 %8008 to float
  %8010 = fsub fast float %7996, %8009
  %8011 = fmul fast float %8010, %204
  %8012 = fadd fast float %8011, %8009
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 3
  %8015 = fmul fast float %7990, %4905
  %8016 = fmul fast float %7991, %4906
  %8017 = fmul fast float %7992, %4907
  %8018 = fcmp fast ogt float %99, %224
  %8019 = and i1 %8018, %4728
  %8020 = or i1 %4734, %8019
  %8021 = icmp eq i32 %4727, 2
  %8022 = fcmp fast ole float %99, %224
  %8023 = and i1 %8022, %8021
  %8024 = or i1 %8023, %8020
  br i1 %8019, label %8025, label %8282

; <label>:8025                                    ; preds = %7986
  %8026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8027 = extractvalue %dx.types.CBufRet.f32 %8026, 2
  %8028 = extractvalue %dx.types.CBufRet.f32 %8026, 3
  %8029 = fmul fast float %8027, %111
  %8030 = fmul fast float %8028, %112
  %8031 = call float @dx.op.unary.f32(i32 7, float %8029)  ; Saturate(value)
  %8032 = call float @dx.op.unary.f32(i32 7, float %8030)  ; Saturate(value)
  %8033 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8031, float %8032, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8034 = extractvalue %dx.types.ResRet.f32 %8033, 0
  %8035 = extractvalue %dx.types.ResRet.f32 %8033, 1
  %8036 = extractvalue %dx.types.ResRet.f32 %8033, 2
  %8037 = extractvalue %dx.types.ResRet.f32 %8033, 3
  %8038 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8031, float %8032, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8039 = extractvalue %dx.types.ResRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.ResRet.f32 %8038, 1
  %8041 = extractvalue %dx.types.ResRet.f32 %8038, 2
  %8042 = extractvalue %dx.types.ResRet.f32 %8038, 3
  %8043 = call float @dx.op.binary.f32(i32 35, float %8035, float %8036)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8034, float %8043)  ; FMax(a,b)
  %8045 = call float @dx.op.binary.f32(i32 35, float %8044, float %8037)  ; FMax(a,b)
  %8046 = call float @dx.op.binary.f32(i32 36, float %8040, float %8041)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 36, float %8039, float %8046)  ; FMin(a,b)
  %8048 = call float @dx.op.binary.f32(i32 36, float %8047, float %8042)  ; FMin(a,b)
  %8049 = fmul fast float %8045, 2.550000e+02
  %8050 = fadd fast float %8049, 0x3F70101020000000
  %8051 = fptoui float %8050 to i32
  %8052 = fmul fast float %8048, 2.550000e+02
  %8053 = fadd fast float %8052, 0x3F70101020000000
  %8054 = fptoui float %8053 to i32
  %8055 = icmp ult i32 %8051, %8054
  br i1 %8055, label %8056, label %8224

; <label>:8056                                    ; preds = %8025
  %8057 = fcmp fast ogt float %98, 9.843750e-01
  %8058 = fadd fast float %99, -4.000000e+00
  %8059 = select i1 %8057, float -4.000000e+00, float %8058
  %8060 = call float @dx.op.binary.f32(i32 35, float %8059, float 0.000000e+00)  ; FMax(a,b)
  %8061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8062 = extractvalue %dx.types.CBufRet.f32 %8061, 0
  %8063 = fadd fast float %8062, %8060
  %8064 = extractvalue %dx.types.CBufRet.f32 %8061, 2
  %8065 = fmul fast float %8063, %8064
  %8066 = call float @dx.op.unary.f32(i32 23, float %8065)  ; Log(value)
  %8067 = extractvalue %dx.types.CBufRet.f32 %8061, 3
  %8068 = fmul fast float %8067, %8066
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8071 = fmul fast float %8068, %8070
  %8072 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8073 = uitofp i32 %8051 to float
  %8074 = uitofp i32 %8054 to float
  %8075 = fadd fast float %8073, 5.000000e-01
  %8076 = fadd fast float %8074, 5.000000e-01
  %8077 = fmul fast float %8070, %8075
  %8078 = fmul fast float %8070, %8076
  %8079 = fadd fast float %8077, 0x3F0FFB4800000000
  %8080 = fadd fast float %8078, 0xBF0FFB4800000000
  %8081 = call float @dx.op.binary.f32(i32 35, float %8072, float %8079)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 36, float %8081, float %8080)  ; FMin(a,b)
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 1
  %8085 = extractvalue %dx.types.CBufRet.f32 %8083, 2
  %8086 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8087 = fmul fast float %8084, %8082
  %8088 = fadd fast float %8086, %8087
  %8089 = fadd fast float %8086, %8085
  %8090 = fsub fast float %8084, %8085
  %8091 = fadd fast float %8090, %8086
  %8092 = call float @dx.op.binary.f32(i32 35, float %8088, float %8089)  ; FMax(a,b)
  %8093 = call float @dx.op.binary.f32(i32 36, float %8092, float %8091)  ; FMin(a,b)
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8031, float %8032, float %8093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.i32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.i32 %8098, 1
  %8101 = uitofp i32 %8099 to float
  %8102 = uitofp i32 %8100 to float
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %8106 = fmul fast float %8101, %8031
  %8107 = fmul fast float %8102, %8032
  %8108 = fadd fast float %8106, -5.000000e-01
  %8109 = fadd fast float %8107, -5.000000e-01
  %8110 = call float @dx.op.unary.f32(i32 22, float %8108)  ; Frc(value)
  %8111 = call float @dx.op.unary.f32(i32 22, float %8109)  ; Frc(value)
  %8112 = fmul fast float %8110, %8110
  %8113 = fmul fast float %8112, %8110
  %8114 = fsub fast float 3.000000e+00, %8110
  %8115 = fmul fast float %8112, %8114
  %8116 = fmul fast float %8110, 3.000000e+00
  %8117 = fmul fast float %8113, 3.000000e+00
  %8118 = fmul fast float %8112, 6.000000e+00
  %8119 = fsub fast float %8117, %8118
  %8120 = fadd fast float %8119, 4.000000e+00
  %8121 = fmul fast float %8120, 0x3FC5555560000000
  %8122 = fmul fast float %8113, -3.000000e+00
  %8123 = fadd fast float %8112, %8110
  %8124 = fmul fast float %8123, 3.000000e+00
  %8125 = fadd fast float %8122, 1.000000e+00
  %8126 = fadd fast float %8125, %8124
  %8127 = fmul fast float %8113, 0x3FC5555560000000
  %8128 = fmul fast float %8111, %8111
  %8129 = fmul fast float %8128, %8111
  %8130 = fsub fast float 3.000000e+00, %8111
  %8131 = fmul fast float %8128, %8130
  %8132 = fmul fast float %8111, 3.000000e+00
  %8133 = fmul fast float %8129, 3.000000e+00
  %8134 = fmul fast float %8128, 6.000000e+00
  %8135 = fsub fast float %8133, %8134
  %8136 = fadd fast float %8135, 4.000000e+00
  %8137 = fmul fast float %8136, 0x3FC5555560000000
  %8138 = fmul fast float %8129, -3.000000e+00
  %8139 = fadd fast float %8128, %8111
  %8140 = fmul fast float %8139, 3.000000e+00
  %8141 = fadd fast float %8138, 1.000000e+00
  %8142 = fadd fast float %8141, %8140
  %8143 = fmul fast float %8129, 0x3FC5555560000000
  %8144 = fadd fast float %8110, 1.000000e+00
  %8145 = fsub fast float 1.000000e+00, %8116
  %8146 = fadd fast float %8145, %8115
  %8147 = fadd fast float %8146, %8120
  %8148 = fmul fast float %8147, 0x3FC5555560000000
  %8149 = fdiv fast float %8121, %8148
  %8150 = fsub fast float %8144, %8149
  %8151 = fsub fast float 1.000000e+00, %8110
  %8152 = fadd fast float %8126, %8113
  %8153 = fmul fast float %8152, 0x3FC5555560000000
  %8154 = fdiv fast float %8127, %8153
  %8155 = fadd fast float %8151, %8154
  %8156 = fadd fast float %8111, 1.000000e+00
  %8157 = fsub fast float 1.000000e+00, %8132
  %8158 = fadd fast float %8157, %8131
  %8159 = fadd fast float %8158, %8136
  %8160 = fmul fast float %8159, 0x3FC5555560000000
  %8161 = fdiv fast float %8137, %8160
  %8162 = fsub fast float %8156, %8161
  %8163 = fsub fast float 1.000000e+00, %8111
  %8164 = fadd fast float %8142, %8129
  %8165 = fmul fast float %8164, 0x3FC5555560000000
  %8166 = fdiv fast float %8143, %8165
  %8167 = fadd fast float %8166, %8163
  %8168 = fmul fast float %8150, %8104
  %8169 = fsub fast float %8031, %8168
  %8170 = fmul fast float %8155, %8104
  %8171 = fadd fast float %8170, %8031
  %8172 = fmul fast float %8167, %8105
  %8173 = fadd fast float %8172, %8032
  %8174 = fmul fast float %8162, %8105
  %8175 = fsub fast float %8032, %8174
  %8176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8169, float %8175, float %8093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8177 = extractvalue %dx.types.ResRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.ResRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.ResRet.f32 %8176, 2
  %8180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8171, float %8175, float %8093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8169, float %8173, float %8093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8185 = extractvalue %dx.types.ResRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.ResRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.ResRet.f32 %8184, 2
  %8188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8171, float %8173, float %8093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8189 = extractvalue %dx.types.ResRet.f32 %8188, 0
  %8190 = extractvalue %dx.types.ResRet.f32 %8188, 1
  %8191 = extractvalue %dx.types.ResRet.f32 %8188, 2
  %8192 = fsub fast float %8185, %8177
  %8193 = fsub fast float %8186, %8178
  %8194 = fsub fast float %8187, %8179
  %8195 = fmul fast float %8192, %8165
  %8196 = fmul fast float %8193, %8165
  %8197 = fmul fast float %8194, %8165
  %8198 = fadd fast float %8195, %8177
  %8199 = fadd fast float %8196, %8178
  %8200 = fadd fast float %8197, %8179
  %8201 = fsub fast float %8189, %8181
  %8202 = fsub fast float %8190, %8182
  %8203 = fsub fast float %8191, %8183
  %8204 = fmul fast float %8201, %8165
  %8205 = fmul fast float %8202, %8165
  %8206 = fmul fast float %8203, %8165
  %8207 = fsub fast float %8181, %8198
  %8208 = fadd fast float %8207, %8204
  %8209 = fsub fast float %8182, %8199
  %8210 = fadd fast float %8209, %8205
  %8211 = fsub fast float %8183, %8200
  %8212 = fadd fast float %8211, %8206
  %8213 = fmul fast float %8208, %8153
  %8214 = fmul fast float %8210, %8153
  %8215 = fmul fast float %8212, %8153
  %8216 = fadd fast float %8213, %8198
  %8217 = fadd fast float %8214, %8199
  %8218 = fadd fast float %8215, %8200
  %8219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8220 = extractvalue %dx.types.CBufRet.f32 %8219, 1
  %8221 = fmul fast float %8216, %8220
  %8222 = fmul fast float %8217, %8220
  %8223 = fmul fast float %8218, %8220
  br label %8224

; <label>:8224                                    ; preds = %8056, %8025
  %8225 = phi float [ %8095, %8056 ], [ 1.000000e+00, %8025 ]
  %8226 = phi float [ %8096, %8056 ], [ 1.000000e+00, %8025 ]
  %8227 = phi float [ %8097, %8056 ], [ 1.000000e+00, %8025 ]
  %8228 = phi float [ %8221, %8056 ], [ 0.000000e+00, %8025 ]
  %8229 = phi float [ %8222, %8056 ], [ 0.000000e+00, %8025 ]
  %8230 = phi float [ %8223, %8056 ], [ 0.000000e+00, %8025 ]
  %8231 = fmul fast float %8228, %8012
  %8232 = fmul fast float %8229, %8012
  %8233 = fmul fast float %8230, %8012
  %8234 = call float @dx.op.dot3.f32(i32 55, float %8225, float %8226, float %8227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8235 = call float @dx.op.dot3.f32(i32 55, float %8231, float %8232, float %8233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8236 = select i1 %264, float %8234, float %8225
  %8237 = select i1 %264, float %8234, float %8226
  %8238 = select i1 %264, float 1.000000e+00, float %8227
  %8239 = select i1 %264, float %8235, float %8231
  %8240 = select i1 %264, float 0.000000e+00, float %8232
  %8241 = select i1 %264, float 0.000000e+00, float %8233
  %8242 = fmul fast float %8236, %8015
  %8243 = fmul fast float %8237, %8016
  %8244 = fmul fast float %8238, %8017
  %8245 = fadd fast float %8242, %8239
  %8246 = fadd fast float %8243, %8240
  %8247 = fadd fast float %8241, %8244
  %8248 = fmul fast float %8236, %7987
  %8249 = fmul fast float %8237, %7988
  %8250 = fmul fast float %8238, %7989
  %8251 = fmul fast float %140, %8027
  %8252 = fmul fast float %142, %8028
  %8253 = fsub fast float 1.000000e+00, %8251
  %8254 = fsub fast float 1.000000e+00, %8252
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = fmul fast float %8253, %8256
  %8260 = fmul fast float %8253, %8257
  %8261 = fmul fast float %8253, %8258
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8266 = fmul fast float %8254, %8263
  %8267 = fmul fast float %8254, %8264
  %8268 = fmul fast float %8254, %8265
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 0
  %8271 = extractvalue %dx.types.CBufRet.f32 %8269, 1
  %8272 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8273 = fadd fast float %8266, %8270
  %8274 = fadd fast float %8273, %8259
  %8275 = fadd fast float %8267, %8271
  %8276 = fadd fast float %8275, %8260
  %8277 = fadd fast float %8268, %8272
  %8278 = fadd fast float %8277, %8261
  %8279 = fmul fast float %8274, %224
  %8280 = fmul fast float %8276, %224
  %8281 = fmul fast float %8278, %224
  br label %8282

; <label>:8282                                    ; preds = %8224, %7986
  %8283 = phi float [ %8279, %8224 ], [ %170, %7986 ]
  %8284 = phi float [ %8280, %8224 ], [ %171, %7986 ]
  %8285 = phi float [ %8281, %8224 ], [ %172, %7986 ]
  %8286 = phi float [ %224, %8224 ], [ %99, %7986 ]
  %8287 = phi float [ %8245, %8224 ], [ %8015, %7986 ]
  %8288 = phi float [ %8246, %8224 ], [ %8016, %7986 ]
  %8289 = phi float [ %8247, %8224 ], [ %8017, %7986 ]
  %8290 = phi float [ %8248, %8224 ], [ %7987, %7986 ]
  %8291 = phi float [ %8249, %8224 ], [ %7988, %7986 ]
  %8292 = phi float [ %8250, %8224 ], [ %7989, %7986 ]
  %8293 = phi float [ %8225, %8224 ], [ 1.000000e+00, %7986 ]
  br i1 %8024, label %9448, label %8294

; <label>:8294                                    ; preds = %8282
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.f32 %8295, 1
  %8298 = extractvalue %dx.types.CBufRet.f32 %8295, 2
  %8299 = extractvalue %dx.types.CBufRet.f32 %8295, 3
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 0
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 1
  %8303 = extractvalue %dx.types.CBufRet.f32 %8300, 2
  %8304 = extractvalue %dx.types.CBufRet.f32 %8300, 3
  %8305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.CBufRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.CBufRet.f32 %8305, 2
  %8309 = extractvalue %dx.types.CBufRet.f32 %8305, 3
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8314 = extractvalue %dx.types.CBufRet.f32 %8310, 3
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 3
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 3
  %8319 = extractvalue %dx.types.CBufRet.f32 %8317, 0
  %8320 = extractvalue %dx.types.CBufRet.f32 %8317, 1
  %8321 = extractvalue %dx.types.CBufRet.f32 %8317, 2
  %8322 = fcmp fast olt float %8321, -5.000000e-01
  %8323 = call float @dx.op.dot3.f32(i32 55, float %8283, float %8284, float %8285, float %8283, float %8284, float %8285)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call float @dx.op.unary.f32(i32 25, float %8323)  ; Rsqrt(value)
  %8325 = fmul fast float %8324, %8323
  %8326 = fmul fast float %8324, %8283
  %8327 = fmul fast float %8324, %8284
  %8328 = fmul fast float %8324, %8285
  %8329 = fadd fast float %8325, %8299
  %8330 = call float @dx.op.dot3.f32(i32 55, float %8326, float %8327, float %8328, float %8296, float %8297, float %8298)  ; Dot3(ax,ay,az,bx,by,bz)
  %8331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8332 = extractvalue %dx.types.CBufRet.i32 %8331, 1
  %8333 = and i32 %8332, 1
  %8334 = icmp ne i32 %8333, 0
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8337 = fcmp fast ogt float %8336, 0.000000e+00
  %8338 = and i1 %8334, %8337
  br i1 %8338, label %8339, label %8745, !dx.controlflow.hints !135

; <label>:8339                                    ; preds = %8294
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 3
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 2
  %8344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8345 = extractvalue %dx.types.CBufRet.f32 %8344, 2
  %8346 = fsub fast float %8343, %8345
  %8347 = and i32 %8332, 2
  %8348 = extractvalue %dx.types.CBufRet.i32 %8331, 0
  %8349 = call i32 @dx.op.binary.i32(i32 40, i32 %8348, i32 3)  ; UMin(a,b)
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 1
  %8353 = extractvalue %dx.types.CBufRet.f32 %8344, 0
  %8354 = extractvalue %dx.types.CBufRet.f32 %8344, 1
  %8355 = fsub fast float %8351, %8353
  %8356 = fsub fast float %8352, %8354
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = fcmp fast ogt float %8358, 0.000000e+00
  %8360 = fsub fast float -0.000000e+00, %8355
  %8361 = fsub fast float -0.000000e+00, %8356
  %8362 = call float @dx.op.dot2.f32(i32 54, float %8326, float %8327, float %8326, float %8327)  ; Dot2(ax,ay,bx,by)
  %8363 = call float @dx.op.dot2.f32(i32 54, float %8326, float %8327, float %8360, float %8361)  ; Dot2(ax,ay,bx,by)
  %8364 = fmul fast float %8363, 2.000000e+00
  %8365 = call float @dx.op.dot2.f32(i32 54, float %8360, float %8361, float %8360, float %8361)  ; Dot2(ax,ay,bx,by)
  %8366 = fmul fast float %8358, %8358
  %8367 = fsub fast float %8365, %8366
  %8368 = fmul fast float %8364, %8364
  %8369 = fmul fast float %8362, 4.000000e+00
  %8370 = fmul fast float %8369, %8367
  %8371 = fsub fast float %8368, %8370
  %8372 = fcmp fast ogt float %8371, 0.000000e+00
  br i1 %8372, label %8373, label %8388

; <label>:8373                                    ; preds = %8339
  %8374 = fcmp fast ogt float %8364, 0.000000e+00
  %8375 = call float @dx.op.unary.f32(i32 24, float %8371)  ; Sqrt(value)
  %8376 = fsub fast float -0.000000e+00, %8375
  %8377 = select i1 %8374, float %8375, float %8376
  %8378 = fadd fast float %8377, %8364
  %8379 = fmul float %8378, -5.000000e-01
  %8380 = fdiv fast float %8379, %8362
  %8381 = call float @dx.op.binary.f32(i32 35, float %8380, float 0.000000e+00)  ; FMax(a,b)
  %8382 = call float @dx.op.binary.f32(i32 36, float %8325, float %8381)  ; FMin(a,b)
  %8383 = fdiv fast float %8367, %8379
  %8384 = call float @dx.op.binary.f32(i32 35, float %8383, float 0.000000e+00)  ; FMax(a,b)
  %8385 = call float @dx.op.binary.f32(i32 36, float %8325, float %8384)  ; FMin(a,b)
  %8386 = call float @dx.op.binary.f32(i32 36, float %8382, float %8385)  ; FMin(a,b)
  %8387 = call float @dx.op.binary.f32(i32 35, float %8382, float %8385)  ; FMax(a,b)
  br label %8388

; <label>:8388                                    ; preds = %8373, %8339
  %8389 = phi float [ %8387, %8373 ], [ -1.000000e+00, %8339 ]
  %8390 = phi float [ %8386, %8373 ], [ -1.000000e+00, %8339 ]
  %8391 = phi i1 [ true, %8373 ], [ false, %8339 ]
  %8392 = and i1 %8359, %8391
  br i1 %8392, label %8393, label %8395

; <label>:8393                                    ; preds = %8388
  %8394 = fcmp fast oeq float %8390, %8389
  br i1 %8394, label %8698, label %8396

; <label>:8395                                    ; preds = %8388
  br i1 %8359, label %8698, label %8396

; <label>:8396                                    ; preds = %8395, %8393
  %8397 = phi float [ %8325, %8395 ], [ %8389, %8393 ]
  %8398 = phi float [ 0.000000e+00, %8395 ], [ %8390, %8393 ]
  %8399 = icmp ne i32 %8347, 0
  %8400 = fmul fast float %8397, %8328
  %8401 = fadd fast float %8400, %8341
  %8402 = fmul fast float %8401, %8397
  %8403 = select i1 %8399, float 0.000000e+00, float %8402
  %8404 = fcmp fast oeq float %8328, 0.000000e+00
  %8405 = fdiv fast float %8346, %8328
  %8406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8405)  ; FMax(a,b)
  %8407 = select i1 %8404, float %8397, float %8406
  %8408 = call float @dx.op.binary.f32(i32 36, float %8397, float %8407)  ; FMin(a,b)
  %8409 = fcmp fast ogt float %8328, 0.000000e+00
  %8410 = fcmp fast olt float %8346, 0.000000e+00
  br i1 %8409, label %8411, label %8468

; <label>:8411                                    ; preds = %8396
  %8412 = icmp eq i32 %8347, 0
  br i1 %8410, label %8413, label %8457

; <label>:8413                                    ; preds = %8411
  %8414 = select i1 %8412, float %8397, float 0.000000e+00
  %8415 = fsub fast float -0.000000e+00, %8414
  %8416 = call float @dx.op.unary.f32(i32 6, float %8415)  ; FAbs(value)
  %8417 = fmul fast float %8414, %8328
  %8418 = fadd fast float %8417, %8341
  %8419 = fmul fast float %8416, %8418
  %8420 = fsub fast float %8403, %8419
  %8421 = fsub fast float %8397, %8416
  %8422 = select i1 %8412, float %8421, float 0.000000e+00
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 0
  %8425 = extractvalue %dx.types.CBufRet.f32 %8423, 1
  %8426 = extractvalue %dx.types.CBufRet.f32 %8423, 2
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8430 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %8431 = extractvalue %dx.types.CBufRet.f32 %8427, 3
  %8432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.f32 %8432, 3
  %8434 = call float @dx.op.binary.f32(i32 36, float %8420, float %8433)  ; FMin(a,b)
  %8435 = fmul fast float %8431, %8422
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = fsub fast float %8428, %8424
  %8438 = fsub fast float %8429, %8425
  %8439 = fsub fast float %8430, %8426
  %8440 = fmul fast float %8436, %8437
  %8441 = fmul fast float %8436, %8438
  %8442 = fmul fast float %8436, %8439
  %8443 = fadd fast float %8440, %8424
  %8444 = fadd fast float %8441, %8425
  %8445 = fadd fast float %8442, %8426
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.CBufRet.f32 %8446, 1
  %8449 = fadd fast float %8448, %8447
  %8450 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8446, 2
  %8452 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8453 = fadd fast float %8452, %8451
  %8454 = call float @dx.op.unary.f32(i32 7, float %8453)  ; Saturate(value)
  %8455 = fmul fast float %8450, %8434
  %8456 = fmul fast float %8455, %8454
  br label %8698

; <label>:8457                                    ; preds = %8411
  br i1 %8412, label %8458, label %8479

; <label>:8458                                    ; preds = %8457
  %8459 = call float @dx.op.binary.f32(i32 36, float %8408, float %8398)  ; FMin(a,b)
  %8460 = fsub fast float %8408, %8459
  %8461 = fsub fast float %8460, %8397
  %8462 = call float @dx.op.unary.f32(i32 6, float %8461)  ; FAbs(value)
  %8463 = fadd fast float %8460, %8397
  %8464 = fmul fast float %8463, %8328
  %8465 = fadd fast float %8464, %8341
  %8466 = fmul fast float %8465, %8462
  %8467 = fsub fast float %8403, %8466
  br label %8479

; <label>:8468                                    ; preds = %8396
  br i1 %8410, label %8469, label %8479

; <label>:8469                                    ; preds = %8468
  %8470 = call float @dx.op.binary.f32(i32 35, float %8398, float %8408)  ; FMax(a,b)
  %8471 = icmp eq i32 %8347, 0
  %8472 = select i1 %8471, float %8408, float 0.000000e+00
  %8473 = fsub fast float -0.000000e+00, %8472
  %8474 = call float @dx.op.unary.f32(i32 6, float %8473)  ; FAbs(value)
  %8475 = fmul fast float %8472, %8328
  %8476 = fadd fast float %8475, %8341
  %8477 = fmul fast float %8474, %8476
  %8478 = fsub fast float %8403, %8477
  br label %8479

; <label>:8479                                    ; preds = %8469, %8468, %8458, %8457
  %8480 = phi float [ %8398, %8457 ], [ %8398, %8458 ], [ %8470, %8469 ], [ %8398, %8468 ]
  %8481 = phi float [ 0.000000e+00, %8457 ], [ %8462, %8458 ], [ %8474, %8469 ], [ 0.000000e+00, %8468 ]
  %8482 = phi float [ %8403, %8457 ], [ %8467, %8458 ], [ %8478, %8469 ], [ %8403, %8468 ]
  %8483 = phi float [ %8408, %8457 ], [ %8408, %8458 ], [ %8397, %8469 ], [ %8397, %8468 ]
  %8484 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8484, align 4, !tbaa !122, !noalias !136
  %8485 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8485, align 4, !tbaa !122, !noalias !136
  %8486 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8486, align 4, !tbaa !122, !noalias !136
  %8487 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8487, align 4, !tbaa !122, !noalias !136
  %8488 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8488, align 4, !tbaa !122, !noalias !136
  %8489 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8489, align 4, !tbaa !122, !noalias !136
  %8490 = icmp sgt i32 %8349, 0
  br i1 %8490, label %8491, label %8552

; <label>:8491                                    ; preds = %8479
  br label %8492

; <label>:8492                                    ; preds = %8541, %8491
  %8493 = phi i32 [ %8542, %8541 ], [ 0, %8491 ]
  %8494 = phi i32 [ %8543, %8541 ], [ 0, %8491 ]
  %8495 = add nuw i32 %8494, 171
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8495)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.CBufRet.f32 %8496, 1
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8502 = fsub fast float %8497, %8500
  %8503 = fsub fast float %8498, %8501
  %8504 = extractvalue %dx.types.CBufRet.f32 %8496, 2
  %8505 = fsub fast float -0.000000e+00, %8502
  %8506 = fsub fast float -0.000000e+00, %8503
  %8507 = call float @dx.op.dot2.f32(i32 54, float %8326, float %8327, float %8505, float %8506)  ; Dot2(ax,ay,bx,by)
  %8508 = fmul fast float %8507, 2.000000e+00
  %8509 = call float @dx.op.dot2.f32(i32 54, float %8505, float %8506, float %8505, float %8506)  ; Dot2(ax,ay,bx,by)
  %8510 = fmul fast float %8504, %8504
  %8511 = fsub fast float %8509, %8510
  %8512 = fmul fast float %8508, %8508
  %8513 = fmul fast float %8369, %8511
  %8514 = fsub fast float %8512, %8513
  %8515 = fcmp fast ogt float %8514, 0.000000e+00
  br i1 %8515, label %8516, label %8531

; <label>:8516                                    ; preds = %8492
  %8517 = fcmp fast ogt float %8508, 0.000000e+00
  %8518 = call float @dx.op.unary.f32(i32 24, float %8514)  ; Sqrt(value)
  %8519 = fsub fast float -0.000000e+00, %8518
  %8520 = select i1 %8517, float %8518, float %8519
  %8521 = fadd fast float %8520, %8508
  %8522 = fmul float %8521, -5.000000e-01
  %8523 = fdiv fast float %8522, %8362
  %8524 = call float @dx.op.binary.f32(i32 35, float %8523, float 0.000000e+00)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8397, float %8524)  ; FMin(a,b)
  %8526 = fdiv fast float %8511, %8522
  %8527 = call float @dx.op.binary.f32(i32 35, float %8526, float 0.000000e+00)  ; FMax(a,b)
  %8528 = call float @dx.op.binary.f32(i32 36, float %8397, float %8527)  ; FMin(a,b)
  %8529 = call float @dx.op.binary.f32(i32 36, float %8525, float %8528)  ; FMin(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8525, float %8528)  ; FMax(a,b)
  br label %8531

; <label>:8531                                    ; preds = %8516, %8492
  %8532 = phi float [ %8530, %8516 ], [ -1.000000e+00, %8492 ]
  %8533 = phi float [ %8529, %8516 ], [ -1.000000e+00, %8492 ]
  %8534 = phi i1 [ true, %8516 ], [ false, %8492 ]
  br i1 %8534, label %8535, label %8541

; <label>:8535                                    ; preds = %8531
  %8536 = call float @dx.op.binary.f32(i32 35, float %8480, float %8533)  ; FMax(a,b)
  %8537 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8494
  store float %8536, float* %8537, align 4, !tbaa !122, !noalias !136
  %8538 = call float @dx.op.binary.f32(i32 35, float %8480, float %8532)  ; FMax(a,b)
  %8539 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8494
  store float %8538, float* %8539, align 4, !tbaa !122, !noalias !136
  %8540 = add nsw i32 %8493, 1
  br label %8541

; <label>:8541                                    ; preds = %8535, %8531
  %8542 = phi i32 [ %8540, %8535 ], [ %8493, %8531 ]
  %8543 = add nuw nsw i32 %8494, 1
  %8544 = icmp eq i32 %8543, %8349
  br i1 %8544, label %8545, label %8492

; <label>:8545                                    ; preds = %8541
  %8546 = load float, float* %8486, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %8547 = load float, float* %8485, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %8548 = load float, float* %8484, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %8549 = load float, float* %8489, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %8550 = load float, float* %8488, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %8551 = load float, float* %8487, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %8552

; <label>:8552                                    ; preds = %8545, %8479
  %8553 = phi float [ -1.000000e+00, %8479 ], [ %8551, %8545 ]
  %8554 = phi float [ -1.000000e+00, %8479 ], [ %8550, %8545 ]
  %8555 = phi float [ -1.000000e+00, %8479 ], [ %8549, %8545 ]
  %8556 = phi float [ -1.000000e+00, %8479 ], [ %8548, %8545 ]
  %8557 = phi float [ -1.000000e+00, %8479 ], [ %8547, %8545 ]
  %8558 = phi float [ -1.000000e+00, %8479 ], [ %8546, %8545 ]
  %8559 = phi i32 [ 0, %8479 ], [ %8542, %8545 ]
  %8560 = call float @dx.op.binary.f32(i32 36, float %8557, float %8558)  ; FMin(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8556, float %8560)  ; FMin(a,b)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8556, float %8557)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 36, float %8562, float %8558)  ; FMin(a,b)
  %8564 = call float @dx.op.binary.f32(i32 36, float %8556, float %8557)  ; FMin(a,b)
  %8565 = call float @dx.op.binary.f32(i32 35, float %8564, float %8563)  ; FMax(a,b)
  %8566 = call float @dx.op.binary.f32(i32 35, float %8557, float %8558)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 35, float %8556, float %8566)  ; FMax(a,b)
  store float %8561, float* %8484, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %8565, float* %8485, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %8567, float* %8486, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %8568 = call float @dx.op.binary.f32(i32 36, float %8554, float %8555)  ; FMin(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8553, float %8568)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 35, float %8553, float %8554)  ; FMax(a,b)
  %8571 = call float @dx.op.binary.f32(i32 36, float %8570, float %8555)  ; FMin(a,b)
  %8572 = call float @dx.op.binary.f32(i32 36, float %8553, float %8554)  ; FMin(a,b)
  %8573 = call float @dx.op.binary.f32(i32 35, float %8572, float %8571)  ; FMax(a,b)
  %8574 = call float @dx.op.binary.f32(i32 35, float %8554, float %8555)  ; FMax(a,b)
  %8575 = call float @dx.op.binary.f32(i32 35, float %8553, float %8574)  ; FMax(a,b)
  store float %8569, float* %8487, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %8573, float* %8488, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %8575, float* %8489, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %8576 = sub nsw i32 3, %8559
  %8577 = icmp sgt i32 %8576, 2
  br i1 %8577, label %8578, label %8616

; <label>:8578                                    ; preds = %8552
  %8579 = icmp eq i32 %8347, 0
  %8580 = fsub fast float %8397, %8481
  %8581 = select i1 %8579, float %8580, float %8481
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 0
  %8584 = extractvalue %dx.types.CBufRet.f32 %8582, 1
  %8585 = extractvalue %dx.types.CBufRet.f32 %8582, 2
  %8586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8587 = extractvalue %dx.types.CBufRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.CBufRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.CBufRet.f32 %8586, 2
  %8590 = extractvalue %dx.types.CBufRet.f32 %8586, 3
  %8591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8591, 3
  %8593 = call float @dx.op.binary.f32(i32 36, float %8482, float %8592)  ; FMin(a,b)
  %8594 = fmul fast float %8590, %8581
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = fsub fast float %8587, %8583
  %8597 = fsub fast float %8588, %8584
  %8598 = fsub fast float %8589, %8585
  %8599 = fmul fast float %8595, %8596
  %8600 = fmul fast float %8595, %8597
  %8601 = fmul fast float %8595, %8598
  %8602 = fadd fast float %8599, %8583
  %8603 = fadd fast float %8600, %8584
  %8604 = fadd fast float %8601, %8585
  %8605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8606 = extractvalue %dx.types.CBufRet.f32 %8605, 0
  %8607 = extractvalue %dx.types.CBufRet.f32 %8605, 1
  %8608 = fadd fast float %8607, %8606
  %8609 = call float @dx.op.unary.f32(i32 7, float %8608)  ; Saturate(value)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8605, 2
  %8611 = extractvalue %dx.types.CBufRet.f32 %8605, 3
  %8612 = fadd fast float %8611, %8610
  %8613 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8614 = fmul fast float %8609, %8593
  %8615 = fmul fast float %8614, %8613
  br label %8698

; <label>:8616                                    ; preds = %8552
  %8617 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8576
  %8618 = load float, float* %8617, align 4, !tbaa !122, !noalias !136
  %8619 = fcmp fast olt float %8618, %8483
  %8620 = icmp sgt i32 %8559, 0
  %8621 = and i1 %8620, %8619
  br i1 %8621, label %8622, label %8659

; <label>:8622                                    ; preds = %8616
  br label %8623

; <label>:8623                                    ; preds = %8652, %8622
  %8624 = phi float [ %8653, %8652 ], [ %8481, %8622 ]
  %8625 = phi float [ %8654, %8652 ], [ %8482, %8622 ]
  %8626 = phi float [ %8634, %8652 ], [ %8618, %8622 ]
  %8627 = phi i32 [ %8631, %8652 ], [ %8576, %8622 ]
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8627
  %8629 = load float, float* %8628, align 4, !tbaa !122, !noalias !136
  %8630 = icmp slt i32 %8627, 2
  %8631 = add nsw i32 %8627, 1
  %8632 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8631
  %8633 = load float, float* %8632, align 4, !tbaa !122, !noalias !136
  %8634 = select i1 %8630, float %8633, float %8397
  %8635 = call float @dx.op.binary.f32(i32 36, float %8634, float %8629)  ; FMin(a,b)
  %8636 = call float @dx.op.binary.f32(i32 36, float %8483, float %8635)  ; FMin(a,b)
  %8637 = icmp eq i32 %8347, 0
  %8638 = fadd fast float %8636, %8626
  %8639 = fmul fast float %8638, %8328
  %8640 = fadd fast float %8639, %8341
  br i1 %8637, label %8646, label %8641

; <label>:8641                                    ; preds = %8623
  %8642 = fsub fast float %8636, %8626
  %8643 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8642)  ; FMax(a,b)
  %8644 = fmul fast float %8643, %8640
  %8645 = fadd fast float %8644, %8625
  br label %8652

; <label>:8646                                    ; preds = %8623
  %8647 = fsub fast float %8626, %8636
  %8648 = call float @dx.op.unary.f32(i32 6, float %8647)  ; FAbs(value)
  %8649 = fadd fast float %8648, %8624
  %8650 = fmul fast float %8648, %8640
  %8651 = fsub fast float %8625, %8650
  br label %8652

; <label>:8652                                    ; preds = %8646, %8641
  %8653 = phi float [ %8643, %8641 ], [ %8649, %8646 ]
  %8654 = phi float [ %8645, %8641 ], [ %8651, %8646 ]
  %8655 = fcmp fast olt float %8634, %8483
  %8656 = icmp slt i32 %8631, 3
  %8657 = and i1 %8656, %8655
  br i1 %8657, label %8623, label %8658

; <label>:8658                                    ; preds = %8652
  br label %8659

; <label>:8659                                    ; preds = %8658, %8616
  %8660 = phi float [ %8481, %8616 ], [ %8653, %8658 ]
  %8661 = phi float [ %8482, %8616 ], [ %8654, %8658 ]
  %8662 = fsub fast float %8397, %8660
  %8663 = select i1 %8399, float %8660, float %8662
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8667 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8672 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8674 = extractvalue %dx.types.CBufRet.f32 %8673, 3
  %8675 = call float @dx.op.binary.f32(i32 36, float %8661, float %8674)  ; FMin(a,b)
  %8676 = fmul fast float %8672, %8663
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fsub fast float %8669, %8665
  %8679 = fsub fast float %8670, %8666
  %8680 = fsub fast float %8671, %8667
  %8681 = fmul fast float %8677, %8678
  %8682 = fmul fast float %8677, %8679
  %8683 = fmul fast float %8677, %8680
  %8684 = fadd fast float %8681, %8665
  %8685 = fadd fast float %8682, %8666
  %8686 = fadd fast float %8683, %8667
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.CBufRet.f32 %8687, 1
  %8690 = fadd fast float %8689, %8688
  %8691 = call float @dx.op.unary.f32(i32 7, float %8690)  ; Saturate(value)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8693 = extractvalue %dx.types.CBufRet.f32 %8687, 3
  %8694 = fadd fast float %8693, %8692
  %8695 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8696 = fmul fast float %8691, %8675
  %8697 = fmul fast float %8696, %8695
  br label %8698

; <label>:8698                                    ; preds = %8659, %8578, %8413, %8395, %8393
  %8699 = phi float [ %8422, %8413 ], [ %8581, %8578 ], [ %8663, %8659 ], [ 0.000000e+00, %8393 ], [ 0.000000e+00, %8395 ]
  %8700 = phi float [ %8456, %8413 ], [ %8615, %8578 ], [ %8697, %8659 ], [ 0.000000e+00, %8393 ], [ 0.000000e+00, %8395 ]
  %8701 = phi float [ %8443, %8413 ], [ %8602, %8578 ], [ %8684, %8659 ], [ 0.000000e+00, %8393 ], [ 0.000000e+00, %8395 ]
  %8702 = phi float [ %8444, %8413 ], [ %8603, %8578 ], [ %8685, %8659 ], [ 0.000000e+00, %8393 ], [ 0.000000e+00, %8395 ]
  %8703 = phi float [ %8445, %8413 ], [ %8604, %8578 ], [ %8686, %8659 ], [ 0.000000e+00, %8393 ], [ 0.000000e+00, %8395 ]
  %8704 = fmul fast float %8336, %8700
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 2
  %8707 = fsub fast float %8343, %8706
  %8708 = fcmp fast olt float %8704, -2.000000e+01
  %8709 = call float @dx.op.unary.f32(i32 21, float %8704)  ; Exp(value)
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 2
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 3
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8715 = fmul fast float %8712, %8707
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = fsub fast float 1.000000e+00, %8716
  %8718 = fmul fast float %8328, 5.000000e-01
  %8719 = fadd fast float %8718, 5.000000e-01
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fsub fast float 1.000000e+00, %8720
  %8722 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8717)  ; FMax(a,b)
  %8723 = fdiv fast float %8721, %8722
  %8724 = fsub fast float %8707, %8285
  %8725 = call float @dx.op.unary.f32(i32 6, float %8724)  ; FAbs(value)
  %8726 = fmul fast float %8725, %8711
  %8727 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8728 = fsub fast float 1.000000e+00, %8726
  %8729 = fmul fast float %8728, %8727
  %8730 = fadd fast float %8729, %8726
  %8731 = fmul fast float %8714, %8707
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fsub fast float 1.000000e+00, %8730
  %8734 = fmul fast float %8733, %8732
  %8735 = fadd fast float %8734, %8730
  %8736 = call float @dx.op.unary.f32(i32 7, float %8735)  ; Saturate(value)
  %8737 = fadd fast float %8709, -1.000000e+00
  %8738 = select i1 %8708, float -1.000000e+00, float %8737
  %8739 = fmul fast float %8736, %8738
  %8740 = fadd fast float %8739, 1.000000e+00
  %8741 = fsub fast float -0.000000e+00, %8739
  %8742 = fmul fast float %8701, %8741
  %8743 = fmul fast float %8702, %8741
  %8744 = fmul fast float %8703, %8741
  br label %8745

; <label>:8745                                    ; preds = %8698, %8294
  %8746 = phi float [ %8699, %8698 ], [ 0.000000e+00, %8294 ]
  %8747 = phi float [ %8740, %8698 ], [ 1.000000e+00, %8294 ]
  %8748 = phi float [ %8742, %8698 ], [ 0.000000e+00, %8294 ]
  %8749 = phi float [ %8743, %8698 ], [ 0.000000e+00, %8294 ]
  %8750 = phi float [ %8744, %8698 ], [ 0.000000e+00, %8294 ]
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 1
  %8753 = fsub fast float 1.000000e+00, %8747
  %8754 = fmul fast float %8753, %8329
  %8755 = fmul fast float %8754, %8752
  %8756 = fsub fast float %8329, %8755
  br i1 %8322, label %8757, label %8786, !dx.controlflow.hints !172

; <label>:8757                                    ; preds = %8745
  %8758 = fmul fast float %8330, %8319
  %8759 = fadd fast float %8758, %8320
  %8760 = call float @dx.op.unary.f32(i32 7, float %8759)  ; Saturate(value)
  %8761 = fmul fast float %8301, %8756
  %8762 = fsub fast float -0.000000e+00, %8761
  %8763 = fmul fast float %8302, %8756
  %8764 = fsub fast float -0.000000e+00, %8763
  %8765 = call float @dx.op.unary.f32(i32 21, float %8762)  ; Exp(value)
  %8766 = call float @dx.op.unary.f32(i32 21, float %8764)  ; Exp(value)
  %8767 = call float @dx.op.binary.f32(i32 35, float %8309, float %8765)  ; FMax(a,b)
  %8768 = call float @dx.op.binary.f32(i32 35, float %8309, float %8766)  ; FMax(a,b)
  %8769 = fsub fast float %8768, %8767
  %8770 = fmul fast float %8769, %8760
  %8771 = fadd fast float %8770, %8767
  %8772 = call float @dx.op.unary.f32(i32 7, float %8771)  ; Saturate(value)
  %8773 = fsub fast float %8306, %8311
  %8774 = fsub fast float %8307, %8312
  %8775 = fsub fast float %8308, %8313
  %8776 = fmul fast float %8760, %8773
  %8777 = fmul fast float %8760, %8774
  %8778 = fmul fast float %8760, %8775
  %8779 = fadd fast float %8776, %8311
  %8780 = fadd fast float %8777, %8312
  %8781 = fadd fast float %8778, %8313
  %8782 = fsub fast float 1.000000e+00, %8772
  %8783 = fmul fast float %8782, %8779
  %8784 = fmul fast float %8782, %8780
  %8785 = fmul fast float %8782, %8781
  br label %8845

; <label>:8786                                    ; preds = %8745
  %8787 = fmul fast float %8756, %8318
  %8788 = call float @dx.op.unary.f32(i32 7, float %8787)  ; Saturate(value)
  %8789 = fsub fast float 2.000000e+00, %8788
  %8790 = fmul fast float %8788, 9.921875e-01
  %8791 = fmul fast float %8790, %8789
  %8792 = fadd fast float %8791, 3.906250e-03
  %8793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8792, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8794 = extractvalue %dx.types.ResRet.f32 %8793, 0
  %8795 = fsub fast float %8788, %8794
  %8796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8795)  ; FMax(a,b)
  %8797 = fmul fast float %8304, %8285
  %8798 = call float @dx.op.unary.f32(i32 6, float %8797)  ; FAbs(value)
  %8799 = fcmp fast ogt float %8798, 0x3EB0C6F7A0000000
  br i1 %8799, label %8800, label %8806, !dx.controlflow.hints !173

; <label>:8800                                    ; preds = %8786
  %8801 = fmul fast float %8797, 0xBFF7154760000000
  %8802 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8803 = fsub fast float 1.000000e+00, %8802
  %8804 = fdiv fast float %8803, %8797
  %8805 = fmul fast float %8804, %8314
  br label %8806

; <label>:8806                                    ; preds = %8800, %8786
  %8807 = phi float [ %8805, %8800 ], [ %8314, %8786 ]
  %8808 = fadd fast float %8807, %8316
  %8809 = fmul fast float %8808, %8796
  %8810 = fmul fast float %8301, %8809
  %8811 = fsub fast float -0.000000e+00, %8810
  %8812 = fmul fast float %8302, %8809
  %8813 = fsub fast float -0.000000e+00, %8812
  %8814 = fmul fast float %8303, %8809
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = call float @dx.op.unary.f32(i32 21, float %8811)  ; Exp(value)
  %8817 = call float @dx.op.unary.f32(i32 21, float %8813)  ; Exp(value)
  %8818 = call float @dx.op.unary.f32(i32 21, float %8815)  ; Exp(value)
  %8819 = fmul fast float %8330, %8330
  %8820 = fadd fast float %8819, 1.000000e+00
  %8821 = fmul fast float %8820, 0x3FAE8EC8A0000000
  %8822 = fmul fast float %8821, %8311
  %8823 = fmul fast float %8821, %8312
  %8824 = fmul fast float %8821, %8313
  %8825 = fmul fast float %8330, %8309
  %8826 = fsub fast float 1.000000e+00, %8825
  %8827 = fmul fast float %8309, %8309
  %8828 = fsub fast float 1.000000e+00, %8827
  %8829 = fmul fast float %8828, 0x3FB45F3060000000
  %8830 = fmul fast float %8826, %8826
  %8831 = fdiv fast float 1.000000e+00, %8830
  %8832 = fmul fast float %8829, %8831
  %8833 = fmul fast float %8832, %8306
  %8834 = fmul fast float %8832, %8307
  %8835 = fmul fast float %8832, %8308
  %8836 = fadd fast float %8833, %8822
  %8837 = fadd fast float %8834, %8823
  %8838 = fadd fast float %8835, %8824
  %8839 = fsub fast float 1.000000e+00, %8816
  %8840 = fsub fast float 1.000000e+00, %8817
  %8841 = fsub fast float 1.000000e+00, %8818
  %8842 = fmul fast float %8836, %8839
  %8843 = fmul fast float %8837, %8840
  %8844 = fmul fast float %8838, %8841
  br label %8845

; <label>:8845                                    ; preds = %8806, %8757
  %8846 = phi float [ %8783, %8757 ], [ %8842, %8806 ]
  %8847 = phi float [ %8784, %8757 ], [ %8843, %8806 ]
  %8848 = phi float [ %8785, %8757 ], [ %8844, %8806 ]
  %8849 = phi float [ %8772, %8757 ], [ %8816, %8806 ]
  %8850 = phi float [ %8772, %8757 ], [ %8817, %8806 ]
  %8851 = phi float [ %8772, %8757 ], [ %8818, %8806 ]
  br i1 %8338, label %8852, label %9050, !dx.controlflow.hints !174

; <label>:8852                                    ; preds = %8845
  %8853 = extractvalue %dx.types.CBufRet.f32 %8751, 0
  %8854 = fmul fast float %8853, %8753
  %8855 = fsub fast float %8748, %8846
  %8856 = fsub fast float %8749, %8847
  %8857 = fsub fast float %8750, %8848
  %8858 = fmul fast float %8854, %8855
  %8859 = fmul fast float %8854, %8856
  %8860 = fmul fast float %8854, %8857
  %8861 = fadd fast float %8858, %8846
  %8862 = fadd fast float %8859, %8847
  %8863 = fadd fast float %8860, %8848
  %8864 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8849)  ; FMax(a,b)
  %8865 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8850)  ; FMax(a,b)
  %8866 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8851)  ; FMax(a,b)
  %8867 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8747)  ; FMax(a,b)
  %8868 = call float @dx.op.binary.f32(i32 35, float %8746, float %8756)  ; FMax(a,b)
  %8869 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8868)  ; FMax(a,b)
  %8870 = fdiv fast float %8746, %8869
  %8871 = call float @dx.op.unary.f32(i32 7, float %8870)  ; Saturate(value)
  %8872 = fdiv fast float %8756, %8869
  %8873 = call float @dx.op.unary.f32(i32 7, float %8872)  ; Saturate(value)
  %8874 = fcmp fast une float %8867, 1.000000e+00
  br i1 %8874, label %8875, label %8888, !dx.controlflow.hints !175

; <label>:8875                                    ; preds = %8852
  %8876 = call float @dx.op.unary.f32(i32 23, float %8867)  ; Log(value)
  %8877 = fmul fast float %8876, 0x3FE62E4300000000
  %8878 = fmul fast float %8748, %8877
  %8879 = fsub fast float -0.000000e+00, %8878
  %8880 = fmul fast float %8749, %8877
  %8881 = fsub fast float -0.000000e+00, %8880
  %8882 = fmul fast float %8750, %8877
  %8883 = fsub fast float -0.000000e+00, %8882
  %8884 = fsub fast float 1.000000e+00, %8867
  %8885 = fdiv fast float %8879, %8884
  %8886 = fdiv fast float %8881, %8884
  %8887 = fdiv fast float %8883, %8884
  br label %8888

; <label>:8888                                    ; preds = %8875, %8852
  %8889 = phi float [ %8885, %8875 ], [ %8748, %8852 ]
  %8890 = phi float [ %8886, %8875 ], [ %8749, %8852 ]
  %8891 = phi float [ %8887, %8875 ], [ %8750, %8852 ]
  %8892 = phi float [ %8877, %8875 ], [ 0.000000e+00, %8852 ]
  %8893 = fcmp fast une float %8864, 1.000000e+00
  br i1 %8893, label %8894, label %8901, !dx.controlflow.hints !176

; <label>:8894                                    ; preds = %8888
  %8895 = call float @dx.op.unary.f32(i32 23, float %8864)  ; Log(value)
  %8896 = fmul fast float %8895, 0x3FE62E4300000000
  %8897 = fmul fast float %8861, %8896
  %8898 = fsub fast float -0.000000e+00, %8897
  %8899 = fsub fast float 1.000000e+00, %8864
  %8900 = fdiv fast float %8898, %8899
  br label %8901

; <label>:8901                                    ; preds = %8894, %8888
  %8902 = phi float [ %8900, %8894 ], [ %8861, %8888 ]
  %8903 = phi float [ %8896, %8894 ], [ 0.000000e+00, %8888 ]
  %8904 = fcmp fast une float %8865, 1.000000e+00
  br i1 %8904, label %8905, label %8912, !dx.controlflow.hints !176

; <label>:8905                                    ; preds = %8901
  %8906 = call float @dx.op.unary.f32(i32 23, float %8865)  ; Log(value)
  %8907 = fmul fast float %8906, 0x3FE62E4300000000
  %8908 = fmul fast float %8862, %8907
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = fsub fast float 1.000000e+00, %8865
  %8911 = fdiv fast float %8909, %8910
  br label %8912

; <label>:8912                                    ; preds = %8905, %8901
  %8913 = phi float [ %8911, %8905 ], [ %8862, %8901 ]
  %8914 = phi float [ %8907, %8905 ], [ 0.000000e+00, %8901 ]
  %8915 = fcmp fast une float %8866, 1.000000e+00
  br i1 %8915, label %8916, label %8923, !dx.controlflow.hints !176

; <label>:8916                                    ; preds = %8912
  %8917 = call float @dx.op.unary.f32(i32 23, float %8866)  ; Log(value)
  %8918 = fmul fast float %8917, 0x3FE62E4300000000
  %8919 = fmul fast float %8863, %8918
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = fsub fast float 1.000000e+00, %8866
  %8922 = fdiv fast float %8920, %8921
  br label %8923

; <label>:8923                                    ; preds = %8916, %8912
  %8924 = phi float [ %8922, %8916 ], [ %8863, %8912 ]
  %8925 = phi float [ %8918, %8916 ], [ 0.000000e+00, %8912 ]
  %8926 = fmul fast float %8889, %8873
  %8927 = fmul fast float %8890, %8873
  %8928 = fmul fast float %8891, %8873
  %8929 = fmul fast float %8892, %8873
  %8930 = fmul fast float %8902, %8871
  %8931 = fmul fast float %8913, %8871
  %8932 = fmul fast float %8924, %8871
  %8933 = fmul fast float %8903, %8871
  %8934 = fmul fast float %8914, %8871
  %8935 = fmul fast float %8925, %8871
  %8936 = fadd fast float %8930, %8926
  %8937 = fadd fast float %8931, %8927
  %8938 = fadd fast float %8932, %8928
  %8939 = fadd fast float %8933, %8929
  %8940 = fadd fast float %8934, %8929
  %8941 = fadd fast float %8935, %8929
  %8942 = fcmp fast une float %8939, 0.000000e+00
  br i1 %8942, label %8943, label %8950, !dx.controlflow.hints !177

; <label>:8943                                    ; preds = %8923
  %8944 = fmul fast float %8939, 0x3FF7154760000000
  %8945 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8946 = fsub fast float 1.000000e+00, %8945
  %8947 = fmul fast float %8936, %8946
  %8948 = fsub fast float -0.000000e+00, %8947
  %8949 = fdiv fast float %8948, %8939
  br label %8950

; <label>:8950                                    ; preds = %8943, %8923
  %8951 = phi float [ %8945, %8943 ], [ 1.000000e+00, %8923 ]
  %8952 = phi float [ %8949, %8943 ], [ %8936, %8923 ]
  %8953 = fcmp fast une float %8940, 0.000000e+00
  br i1 %8953, label %8954, label %8961, !dx.controlflow.hints !177

; <label>:8954                                    ; preds = %8950
  %8955 = fmul fast float %8940, 0x3FF7154760000000
  %8956 = call float @dx.op.unary.f32(i32 21, float %8955)  ; Exp(value)
  %8957 = fsub fast float 1.000000e+00, %8956
  %8958 = fmul fast float %8937, %8957
  %8959 = fsub fast float -0.000000e+00, %8958
  %8960 = fdiv fast float %8959, %8940
  br label %8961

; <label>:8961                                    ; preds = %8954, %8950
  %8962 = phi float [ %8956, %8954 ], [ 1.000000e+00, %8950 ]
  %8963 = phi float [ %8960, %8954 ], [ %8937, %8950 ]
  %8964 = fcmp fast une float %8941, 0.000000e+00
  br i1 %8964, label %8965, label %8972, !dx.controlflow.hints !177

; <label>:8965                                    ; preds = %8961
  %8966 = fmul fast float %8941, 0x3FF7154760000000
  %8967 = call float @dx.op.unary.f32(i32 21, float %8966)  ; Exp(value)
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8938, %8968
  %8970 = fsub fast float -0.000000e+00, %8969
  %8971 = fdiv fast float %8970, %8941
  br label %8972

; <label>:8972                                    ; preds = %8965, %8961
  %8973 = phi float [ %8967, %8965 ], [ 1.000000e+00, %8961 ]
  %8974 = phi float [ %8971, %8965 ], [ %8938, %8961 ]
  %8975 = fcmp fast ogt float %8871, %8873
  br i1 %8975, label %8976, label %8996

; <label>:8976                                    ; preds = %8972
  %8977 = fsub fast float 1.000000e+00, %8873
  %8978 = fmul fast float %8889, %8977
  %8979 = fmul fast float %8890, %8977
  %8980 = fmul fast float %8891, %8977
  %8981 = fmul fast float %8892, %8977
  %8982 = fcmp fast une float %8981, 0.000000e+00
  br i1 %8982, label %8983, label %9034, !dx.controlflow.hints !178

; <label>:8983                                    ; preds = %8976
  %8984 = fmul fast float %8981, 0x3FF7154760000000
  %8985 = call float @dx.op.unary.f32(i32 21, float %8984)  ; Exp(value)
  %8986 = fsub fast float 1.000000e+00, %8985
  %8987 = fmul fast float %8978, %8986
  %8988 = fsub fast float -0.000000e+00, %8987
  %8989 = fmul fast float %8979, %8986
  %8990 = fsub fast float -0.000000e+00, %8989
  %8991 = fmul fast float %8980, %8986
  %8992 = fsub fast float -0.000000e+00, %8991
  %8993 = fdiv fast float %8988, %8981
  %8994 = fdiv fast float %8990, %8981
  %8995 = fdiv fast float %8992, %8981
  br label %9034

; <label>:8996                                    ; preds = %8972
  %8997 = fsub fast float 1.000000e+00, %8871
  %8998 = fmul fast float %8902, %8997
  %8999 = fmul fast float %8913, %8997
  %9000 = fmul fast float %8924, %8997
  %9001 = fmul fast float %8903, %8997
  %9002 = fmul fast float %8914, %8997
  %9003 = fmul fast float %8925, %8997
  %9004 = fcmp fast une float %9001, 0.000000e+00
  br i1 %9004, label %9005, label %9012, !dx.controlflow.hints !177

; <label>:9005                                    ; preds = %8996
  %9006 = fmul fast float %9001, 0x3FF7154760000000
  %9007 = call float @dx.op.unary.f32(i32 21, float %9006)  ; Exp(value)
  %9008 = fsub fast float 1.000000e+00, %9007
  %9009 = fmul fast float %8998, %9008
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = fdiv fast float %9010, %9001
  br label %9012

; <label>:9012                                    ; preds = %9005, %8996
  %9013 = phi float [ %9011, %9005 ], [ %8998, %8996 ]
  %9014 = phi float [ %9007, %9005 ], [ 1.000000e+00, %8996 ]
  %9015 = fcmp fast une float %9002, 0.000000e+00
  br i1 %9015, label %9016, label %9023, !dx.controlflow.hints !177

; <label>:9016                                    ; preds = %9012
  %9017 = fmul fast float %9002, 0x3FF7154760000000
  %9018 = call float @dx.op.unary.f32(i32 21, float %9017)  ; Exp(value)
  %9019 = fsub fast float 1.000000e+00, %9018
  %9020 = fmul fast float %8999, %9019
  %9021 = fsub fast float -0.000000e+00, %9020
  %9022 = fdiv fast float %9021, %9002
  br label %9023

; <label>:9023                                    ; preds = %9016, %9012
  %9024 = phi float [ %9022, %9016 ], [ %8999, %9012 ]
  %9025 = phi float [ %9018, %9016 ], [ 1.000000e+00, %9012 ]
  %9026 = fcmp fast une float %9003, 0.000000e+00
  br i1 %9026, label %9027, label %9034, !dx.controlflow.hints !177

; <label>:9027                                    ; preds = %9023
  %9028 = fmul fast float %9003, 0x3FF7154760000000
  %9029 = call float @dx.op.unary.f32(i32 21, float %9028)  ; Exp(value)
  %9030 = fsub fast float 1.000000e+00, %9029
  %9031 = fmul fast float %9000, %9030
  %9032 = fsub fast float -0.000000e+00, %9031
  %9033 = fdiv fast float %9032, %9003
  br label %9034

; <label>:9034                                    ; preds = %9027, %9023, %8983, %8976
  %9035 = phi float [ %9033, %9027 ], [ %8995, %8983 ], [ %8980, %8976 ], [ %9000, %9023 ]
  %9036 = phi float [ %9024, %9027 ], [ %8994, %8983 ], [ %8979, %8976 ], [ %9024, %9023 ]
  %9037 = phi float [ %9013, %9027 ], [ %8993, %8983 ], [ %8978, %8976 ], [ %9013, %9023 ]
  %9038 = phi float [ %9029, %9027 ], [ %8985, %8983 ], [ 1.000000e+00, %8976 ], [ 1.000000e+00, %9023 ]
  %9039 = phi float [ %9025, %9027 ], [ %8985, %8983 ], [ 1.000000e+00, %8976 ], [ %9025, %9023 ]
  %9040 = phi float [ %9014, %9027 ], [ %8985, %8983 ], [ 1.000000e+00, %8976 ], [ %9014, %9023 ]
  %9041 = fmul fast float %9040, %8952
  %9042 = fmul fast float %9039, %8963
  %9043 = fmul fast float %9038, %8974
  %9044 = fadd fast float %9041, %9037
  %9045 = fadd fast float %9042, %9036
  %9046 = fadd fast float %9043, %9035
  %9047 = fmul fast float %9040, %8951
  %9048 = fmul fast float %9039, %8962
  %9049 = fmul fast float %9038, %8973
  br label %9050

; <label>:9050                                    ; preds = %9034, %8845
  %9051 = phi float [ %9049, %9034 ], [ %8851, %8845 ]
  %9052 = phi float [ %9048, %9034 ], [ %8850, %8845 ]
  %9053 = phi float [ %9047, %9034 ], [ %8849, %8845 ]
  %9054 = phi float [ %9046, %9034 ], [ %8848, %8845 ]
  %9055 = phi float [ %9045, %9034 ], [ %8847, %8845 ]
  %9056 = phi float [ %9044, %9034 ], [ %8846, %8845 ]
  %9057 = fmul fast float %9056, %8012
  %9058 = fmul fast float %9055, %8012
  %9059 = fmul fast float %9054, %8012
  %9060 = fmul fast float %9053, %8293
  %9061 = call float @dx.op.dot3.f32(i32 55, float %9053, float %9052, float %9051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9062 = call float @dx.op.dot3.f32(i32 55, float %9057, float %9058, float %9059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9063 = select i1 %264, float %9061, float %9053
  %9064 = select i1 %264, float %9061, float %9052
  %9065 = select i1 %264, float 1.000000e+00, float %9051
  %9066 = select i1 %264, float %9062, float %9057
  %9067 = select i1 %264, float 0.000000e+00, float %9058
  %9068 = select i1 %264, float 0.000000e+00, float %9059
  %9069 = fmul fast float %9063, %8287
  %9070 = fmul fast float %9064, %8288
  %9071 = fmul fast float %9065, %8289
  %9072 = fadd fast float %9069, %9066
  %9073 = fadd fast float %9070, %9067
  %9074 = fadd fast float %9068, %9071
  %9075 = fmul fast float %9063, %8290
  %9076 = fmul fast float %9064, %8291
  %9077 = fmul fast float %9065, %8292
  %9078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.i32 %9078, 0
  %9080 = icmp eq i32 %9079, 0
  br i1 %9080, label %9448, label %9081, !dx.controlflow.hints !179

; <label>:9081                                    ; preds = %9050
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 2
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9085 = fmul fast float %9083, %111
  %9086 = fmul fast float %9084, %112
  %9087 = fmul fast float %9085, 2.000000e+00
  %9088 = fmul fast float %9086, 2.000000e+00
  %9089 = fsub fast float 1.000000e+00, %9087
  %9090 = fsub fast float 1.000000e+00, %9088
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = fmul fast float %9089, %9092
  %9096 = fmul fast float %9089, %9093
  %9097 = fmul fast float %9089, %9094
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9102 = fmul fast float %9090, %9099
  %9103 = fmul fast float %9090, %9100
  %9104 = fmul fast float %9090, %9101
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9109 = fadd fast float %9102, %9106
  %9110 = fadd fast float %9109, %9095
  %9111 = fadd fast float %9103, %9107
  %9112 = fadd fast float %9111, %9096
  %9113 = fadd fast float %9104, %9108
  %9114 = fadd fast float %9113, %9097
  %9115 = fmul fast float %9110, %8286
  %9116 = fmul fast float %9112, %8286
  %9117 = fmul fast float %9114, %8286
  %9118 = fmul fast float %9115, %9115
  %9119 = fmul fast float %9116, %9116
  %9120 = fadd fast float %9118, %9119
  %9121 = fmul fast float %9117, %9117
  %9122 = fadd fast float %9120, %9121
  %9123 = call float @dx.op.unary.f32(i32 24, float %9122)  ; Sqrt(value)
  %9124 = extractvalue %dx.types.CBufRet.f32 %8013, 0
  %9125 = fsub fast float %9123, %9124
  %9126 = extractvalue %dx.types.CBufRet.f32 %8013, 2
  %9127 = fmul fast float %9125, %9126
  %9128 = call float @dx.op.unary.f32(i32 7, float %9127)  ; Saturate(value)
  %9129 = fadd fast float %9128, -5.000000e-01
  %9130 = fmul fast float %9129, 2.000000e+00
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 2
  %9133 = call float @dx.op.binary.f32(i32 36, float %9132, float %9130)  ; FMin(a,b)
  %9134 = fsub fast float -0.000000e+00, %9132
  %9135 = fcmp fast ogt float %9133, %9134
  br i1 %9135, label %9136, label %9448, !dx.controlflow.hints !180

; <label>:9136                                    ; preds = %9081
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 3
  %9139 = fcmp fast ogt float %9138, 0.000000e+00
  br i1 %9139, label %9140, label %9215, !dx.controlflow.hints !181

; <label>:9140                                    ; preds = %9136
  %9141 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9142 = extractvalue %dx.types.Dimensions %9141, 0
  %9143 = sitofp i32 %9142 to float
  %9144 = extractvalue %dx.types.Dimensions %9141, 1
  %9145 = sitofp i32 %9144 to float
  %9146 = fmul fast float %9085, %9143
  %9147 = fmul fast float %9086, %9145
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9150 = fsub fast float -0.000000e+00, %9149
  %9151 = fptoui float %9150 to i32
  %9152 = fptoui float %9146 to i32
  %9153 = fptoui float %9147 to i32
  %9154 = and i32 %9151, 31
  %9155 = lshr i32 %9152, %9154
  %9156 = lshr i32 %9153, %9154
  %9157 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9151, i32 %9155, i32 %9156, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9158 = extractvalue %dx.types.ResRet.f32 %9157, 0
  %9159 = fcmp fast olt float %9158, -1.000000e+00
  %9160 = fcmp fast ogt float %9158, -1.000000e+00
  %9161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.f32 %9161, 1
  %9163 = select i1 %9160, float %9162, float 1.000000e+00
  %9164 = fadd fast float %9158, 1.000000e+00
  %9165 = fmul fast float %9163, %9164
  %9166 = call float @dx.op.unary.f32(i32 6, float %9165)  ; FAbs(value)
  %9167 = extractvalue %dx.types.CBufRet.f32 %9161, 3
  %9168 = fcmp fast oge float %9166, %9167
  %9169 = select i1 %9168, float 0x4197782600000000, float %9166
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 0
  %9172 = extractvalue %dx.types.CBufRet.f32 %9170, 1
  %9173 = extractvalue %dx.types.CBufRet.f32 %9170, 2
  %9174 = select i1 %9159, float %9171, float %9092
  %9175 = select i1 %9159, float %9172, float %9093
  %9176 = select i1 %9159, float %9173, float %9094
  %9177 = fmul fast float %9174, %9089
  %9178 = fmul fast float %9175, %9089
  %9179 = fmul fast float %9176, %9089
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 0
  %9182 = extractvalue %dx.types.CBufRet.f32 %9180, 1
  %9183 = extractvalue %dx.types.CBufRet.f32 %9180, 2
  %9184 = select i1 %9159, float %9181, float %9099
  %9185 = select i1 %9159, float %9182, float %9100
  %9186 = select i1 %9159, float %9183, float %9101
  %9187 = fmul fast float %9184, %9090
  %9188 = fmul fast float %9185, %9090
  %9189 = fmul fast float %9186, %9090
  %9190 = fadd fast float %9187, %9177
  %9191 = fadd fast float %9188, %9178
  %9192 = fadd fast float %9189, %9179
  %9193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9193, 0
  %9195 = extractvalue %dx.types.CBufRet.f32 %9193, 1
  %9196 = extractvalue %dx.types.CBufRet.f32 %9193, 2
  %9197 = select i1 %9159, float %9194, float %9106
  %9198 = select i1 %9159, float %9195, float %9107
  %9199 = select i1 %9159, float %9196, float %9108
  %9200 = fadd fast float %9190, %9197
  %9201 = fadd fast float %9191, %9198
  %9202 = fadd fast float %9192, %9199
  %9203 = fmul fast float %9200, %9169
  %9204 = fmul fast float %9201, %9169
  %9205 = fmul fast float %9202, %9169
  %9206 = fmul fast float %9203, %9203
  %9207 = fmul fast float %9204, %9204
  %9208 = fadd fast float %9206, %9207
  %9209 = fmul fast float %9205, %9205
  %9210 = fadd fast float %9208, %9209
  %9211 = call float @dx.op.unary.f32(i32 24, float %9210)  ; Sqrt(value)
  %9212 = fsub fast float %9211, %9124
  %9213 = fmul fast float %9212, %9126
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  br label %9215

; <label>:9215                                    ; preds = %9140, %9136
  %9216 = phi float [ %9214, %9140 ], [ 1.000000e+00, %9136 ]
  %9217 = fmul fast float %9133, 5.000000e-01
  %9218 = fadd fast float %9217, 5.000000e-01
  %9219 = call float @dx.op.unary.f32(i32 22, float %9218)  ; Frc(value)
  %9220 = call float @dx.op.unary.f32(i32 27, float %9219)  ; Round_ni(value)
  %9221 = call float @dx.op.unary.f32(i32 22, float %9219)  ; Frc(value)
  %9222 = fmul fast float %9221, 2.000000e+00
  %9223 = fadd fast float %9222, -1.000000e+00
  %9224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9085, float %9086, float %9220, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9225 = extractvalue %dx.types.ResRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.ResRet.f32 %9224, 1
  %9227 = extractvalue %dx.types.ResRet.f32 %9224, 2
  %9228 = extractvalue %dx.types.ResRet.f32 %9224, 3
  %9229 = fadd fast float %9225, -5.000000e-01
  %9230 = fadd fast float %9227, -5.000000e-01
  %9231 = fmul fast float %9229, 0xBFD5555560000000
  %9232 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9230, float %9231)  ; FMad(a,b,c)
  %9233 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9226, float 0.000000e+00)  ; FMad(a,b,c)
  %9234 = fadd fast float %9233, %9228
  %9235 = fmul fast float %9229, -7.500000e-01
  %9236 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9230, float %9235)  ; FMad(a,b,c)
  %9237 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9226, float 0.000000e+00)  ; FMad(a,b,c)
  %9238 = fadd fast float %9237, %9228
  %9239 = call float @dx.op.binary.f32(i32 35, float %9232, float -1.000000e+00)  ; FMax(a,b)
  %9240 = call float @dx.op.binary.f32(i32 35, float %9234, float -1.000000e+00)  ; FMax(a,b)
  %9241 = call float @dx.op.binary.f32(i32 35, float %9236, float -1.000000e+00)  ; FMax(a,b)
  %9242 = call float @dx.op.binary.f32(i32 35, float %9238, float -1.000000e+00)  ; FMax(a,b)
  %9243 = call float @dx.op.binary.f32(i32 36, float %9239, float 1.000000e+00)  ; FMin(a,b)
  %9244 = call float @dx.op.binary.f32(i32 36, float %9240, float 1.000000e+00)  ; FMin(a,b)
  %9245 = call float @dx.op.binary.f32(i32 36, float %9241, float 1.000000e+00)  ; FMin(a,b)
  %9246 = call float @dx.op.binary.f32(i32 36, float %9242, float 1.000000e+00)  ; FMin(a,b)
  %9247 = fcmp fast olt float %9243, 0x3FEFFF8020000000
  br i1 %9247, label %9248, label %9363, !dx.controlflow.hints !182

; <label>:9248                                    ; preds = %9215
  %9249 = extractvalue %dx.types.CBufRet.f32 %9131, 3
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 0
  %9252 = extractvalue %dx.types.CBufRet.f32 %9250, 1
  %9253 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9254 = extractvalue %dx.types.CBufRet.f32 %9250, 3
  %9255 = fsub fast float %9251, %9243
  %9256 = fsub fast float %9252, %9244
  %9257 = fsub fast float %9253, %9245
  %9258 = fsub fast float %9254, %9246
  %9259 = fmul fast float %9255, %9249
  %9260 = fmul fast float %9256, %9249
  %9261 = fmul fast float %9257, %9249
  %9262 = fmul fast float %9258, %9249
  %9263 = fadd fast float %9259, %9243
  %9264 = fadd fast float %9260, %9244
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = fadd fast float %9261, %9245
  %9267 = fadd fast float %9262, %9246
  %9268 = fmul fast float %9263, %9263
  %9269 = fsub fast float %9264, %9268
  %9270 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9269)  ; FMax(a,b)
  %9271 = fdiv fast float 1.000000e+00, %9270
  %9272 = fmul fast float %9264, %9263
  %9273 = fsub fast float %9266, %9272
  %9274 = fsub fast float %9223, %9263
  %9275 = fmul fast float %9223, %9223
  %9276 = fsub fast float %9275, %9264
  %9277 = fmul fast float %9274, %9271
  %9278 = fmul fast float %9277, %9273
  %9279 = fsub fast float %9276, %9278
  %9280 = fmul fast float %9264, %9264
  %9281 = fsub fast float %9267, %9280
  %9282 = fmul fast float %9273, %9273
  %9283 = fmul fast float %9282, %9271
  %9284 = fsub fast float %9281, %9283
  %9285 = fdiv fast float %9279, %9284
  %9286 = fmul fast float %9273, %9285
  %9287 = fsub fast float %9274, %9286
  %9288 = fmul fast float %9287, %9271
  %9289 = fmul fast float %9288, %9263
  %9290 = fsub fast float 1.000000e+00, %9289
  %9291 = fmul fast float %9264, %9285
  %9292 = fsub fast float %9290, %9291
  %9293 = fmul fast float %9288, %9288
  %9294 = fmul fast float %9285, 4.000000e+00
  %9295 = fmul fast float %9294, %9292
  %9296 = fsub fast float %9293, %9295
  %9297 = call float @dx.op.unary.f32(i32 24, float %9296)  ; Sqrt(value)
  %9298 = fcmp fast oge float %9288, 0.000000e+00
  %9299 = fsub fast float -0.000000e+00, %9297
  %9300 = select i1 %9298, float %9299, float %9297
  %9301 = fsub fast float %9300, %9288
  %9302 = fdiv fast float %9301, %9285
  %9303 = fdiv fast float %9292, %9301
  %9304 = fmul fast float %9302, 5.000000e-01
  %9305 = fmul fast float %9303, 2.000000e+00
  %9306 = select i1 %9298, float %9304, float %9305
  %9307 = select i1 %9298, float %9305, float %9304
  %9308 = call float @dx.op.binary.f32(i32 35, float %9306, float %9307)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 36, float %9306, float %9307)  ; FMin(a,b)
  %9310 = fcmp fast ogt float %9223, %9309
  br i1 %9310, label %9311, label %9321

; <label>:9311                                    ; preds = %9248
  %9312 = fsub fast float %9223, %9309
  %9313 = fsub fast float %9308, %9309
  %9314 = fmul fast float %9312, %9313
  %9315 = fmul fast float %9308, %9223
  %9316 = fadd fast float %9308, %9223
  %9317 = fmul fast float %9316, %9263
  %9318 = fadd fast float %9315, %9264
  %9319 = fsub fast float %9318, %9317
  %9320 = fdiv fast float %9319, %9314
  br label %9321

; <label>:9321                                    ; preds = %9311, %9248
  %9322 = phi float [ %9320, %9311 ], [ 0.000000e+00, %9248 ]
  %9323 = fcmp fast ogt float %9223, %9308
  %9324 = fsub fast float %9223, %9308
  br i1 %9323, label %9325, label %9335

; <label>:9325                                    ; preds = %9321
  %9326 = fsub fast float %9308, %9309
  %9327 = fmul fast float %9326, %9324
  %9328 = fmul fast float %9309, %9223
  %9329 = fadd fast float %9309, %9223
  %9330 = fmul fast float %9329, %9263
  %9331 = fsub fast float %9265, %9328
  %9332 = fadd fast float %9331, %9330
  %9333 = fdiv fast float %9332, %9327
  %9334 = fadd fast float %9333, %9322
  br label %9335

; <label>:9335                                    ; preds = %9325, %9321
  %9336 = phi float [ %9334, %9325 ], [ %9322, %9321 ]
  %9337 = fsub fast float %9223, %9309
  %9338 = fmul fast float %9337, %9324
  %9339 = fmul fast float %9309, %9308
  %9340 = fadd fast float %9309, %9308
  %9341 = fmul fast float %9340, %9263
  %9342 = fadd fast float %9339, %9264
  %9343 = fsub fast float %9342, %9341
  %9344 = fdiv fast float %9343, %9338
  %9345 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9346 = fcmp fast oeq float %8014, 0.000000e+00
  %9347 = extractvalue %dx.types.CBufRet.f32 %9131, 0
  %9348 = fcmp fast oeq float %9347, 0.000000e+00
  %9349 = or i1 %9346, %9348
  %9350 = fmul fast float %9347, 2.000000e+00
  %9351 = fadd fast float %9132, %9133
  %9352 = fdiv fast float %9351, %9350
  %9353 = call float @dx.op.unary.f32(i32 7, float %9352)  ; Saturate(value)
  %9354 = fmul fast float %9353, 2.000000e+00
  %9355 = fsub fast float 3.000000e+00, %9354
  %9356 = fmul fast float %9353, %9353
  %9357 = fmul fast float %9356, %9355
  %9358 = select i1 %9349, float 1.000000e+00, float %9357
  %9359 = fmul fast float %9344, %8014
  %9360 = fadd fast float %9345, %9359
  %9361 = call float @dx.op.unary.f32(i32 7, float %9360)  ; Saturate(value)
  %9362 = fmul fast float %9358, %9361
  br label %9363

; <label>:9363                                    ; preds = %9335, %9215
  %9364 = phi float [ %9362, %9335 ], [ 0.000000e+00, %9215 ]
  %9365 = fsub fast float 1.000000e+00, %9364
  %9366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9085, float %9086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9367 = extractvalue %dx.types.ResRet.f32 %9366, 0
  %9368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.i32 %9368, 2
  %9370 = icmp eq i32 %9369, 0
  br i1 %9370, label %9376, label %9371

; <label>:9371                                    ; preds = %9363
  %9372 = call float @dx.op.unary.f32(i32 7, float %9364)  ; Saturate(value)
  %9373 = fadd fast float %9367, -1.000000e+00
  %9374 = fmul fast float %9372, %9373
  %9375 = fadd fast float %9374, 1.000000e+00
  br label %9376

; <label>:9376                                    ; preds = %9371, %9363
  %9377 = phi float [ %9375, %9371 ], [ %9365, %9363 ]
  br i1 %9139, label %9378, label %9396

; <label>:9378                                    ; preds = %9376
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 1
  %9381 = fsub fast float %9216, %9380
  %9382 = call float @dx.op.unary.f32(i32 7, float %9381)  ; Saturate(value)
  %9383 = fsub fast float %9216, %9138
  %9384 = call float @dx.op.unary.f32(i32 7, float %9383)  ; Saturate(value)
  %9385 = fsub fast float %9382, %9384
  %9386 = fsub fast float %9218, %9384
  %9387 = fdiv fast float %9386, %9385
  %9388 = call float @dx.op.unary.f32(i32 7, float %9387)  ; Saturate(value)
  %9389 = fmul fast float %9388, 2.000000e+00
  %9390 = fsub fast float 3.000000e+00, %9389
  %9391 = fsub fast float %9367, %9377
  %9392 = fmul fast float %9388, %9388
  %9393 = fmul fast float %9392, %9391
  %9394 = fmul fast float %9393, %9390
  %9395 = fadd fast float %9394, %9377
  br label %9396

; <label>:9396                                    ; preds = %9378, %9376
  %9397 = phi float [ %9395, %9378 ], [ %9377, %9376 ]
  %9398 = call float @dx.op.binary.f32(i32 35, float %9367, float %9397)  ; FMax(a,b)
  %9399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.i32 %9399, 2
  %9401 = and i32 %9400, 1
  %9402 = icmp eq i32 %9401, 0
  %9403 = fcmp fast une float %9398, 1.000000e+00
  %9404 = and i1 %9403, %9402
  br i1 %9404, label %9405, label %9424

; <label>:9405                                    ; preds = %9396
  %9406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9085, float %9086, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9407 = extractvalue %dx.types.ResRet.f32 %9406, 0
  %9408 = extractvalue %dx.types.ResRet.f32 %9406, 1
  %9409 = extractvalue %dx.types.ResRet.f32 %9406, 2
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 1
  %9412 = fmul fast float %9411, %9407
  %9413 = fmul fast float %9411, %9408
  %9414 = fmul fast float %9411, %9409
  %9415 = fcmp fast ogt float %9367, 0x3FEFFF2E40000000
  %9416 = fsub fast float 1.000000e+00, %9398
  %9417 = fsub fast float 1.000000e+00, %9367
  %9418 = fdiv fast float %9416, %9417
  %9419 = call float @dx.op.unary.f32(i32 7, float %9418)  ; Saturate(value)
  %9420 = select i1 %9415, float 0.000000e+00, float %9419
  %9421 = fmul fast float %9412, %9420
  %9422 = fmul fast float %9413, %9420
  %9423 = fmul fast float %9414, %9420
  br label %9424

; <label>:9424                                    ; preds = %9405, %9396
  %9425 = phi float [ 0.000000e+00, %9396 ], [ %9421, %9405 ]
  %9426 = phi float [ 0.000000e+00, %9396 ], [ %9422, %9405 ]
  %9427 = phi float [ 0.000000e+00, %9396 ], [ %9423, %9405 ]
  %9428 = fmul fast float %9425, %8012
  %9429 = fmul fast float %9426, %8012
  %9430 = fmul fast float %9427, %8012
  %9431 = fmul fast float %9398, %9060
  %9432 = call float @dx.op.dot3.f32(i32 55, float %9398, float %9398, float %9398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9433 = call float @dx.op.dot3.f32(i32 55, float %9428, float %9429, float %9430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9434 = select i1 %264, float %9432, float %9398
  %9435 = select i1 %264, float 1.000000e+00, float %9398
  %9436 = select i1 %264, float %9433, float %9428
  %9437 = select i1 %264, float 0.000000e+00, float %9429
  %9438 = select i1 %264, float 0.000000e+00, float %9430
  %9439 = fmul fast float %9434, %9072
  %9440 = fmul fast float %9434, %9073
  %9441 = fmul fast float %9435, %9074
  %9442 = fadd fast float %9439, %9436
  %9443 = fadd fast float %9440, %9437
  %9444 = fadd fast float %9438, %9441
  %9445 = fmul fast float %9434, %9075
  %9446 = fmul fast float %9434, %9076
  %9447 = fmul fast float %9435, %9077
  br label %9448

; <label>:9448                                    ; preds = %9424, %9081, %9050, %8282
  %9449 = phi float [ %8287, %8282 ], [ %9072, %9050 ], [ %9442, %9424 ], [ %9072, %9081 ]
  %9450 = phi float [ %8288, %8282 ], [ %9073, %9050 ], [ %9443, %9424 ], [ %9073, %9081 ]
  %9451 = phi float [ %8289, %8282 ], [ %9074, %9050 ], [ %9444, %9424 ], [ %9074, %9081 ]
  %9452 = phi float [ %8290, %8282 ], [ %9075, %9050 ], [ %9445, %9424 ], [ %9075, %9081 ]
  %9453 = phi float [ %8291, %8282 ], [ %9076, %9050 ], [ %9446, %9424 ], [ %9076, %9081 ]
  %9454 = phi float [ %8292, %8282 ], [ %9077, %9050 ], [ %9447, %9424 ], [ %9077, %9081 ]
  %9455 = phi float [ %8293, %8282 ], [ %9060, %9050 ], [ %9431, %9424 ], [ %9060, %9081 ]
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 3
  %9459 = fmul fast float %9457, %111
  %9460 = fmul fast float %9458, %112
  %9461 = call float @dx.op.unary.f32(i32 7, float %9459)  ; Saturate(value)
  %9462 = call float @dx.op.unary.f32(i32 7, float %9460)  ; Saturate(value)
  %9463 = select i1 %8024, i32 2, i32 0
  %9464 = or i32 %9463, 1
  %9465 = uitofp i32 %9464 to float
  %9466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9461, float %9462, float %9465, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9467 = extractvalue %dx.types.ResRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.ResRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.ResRet.f32 %9466, 2
  %9470 = extractvalue %dx.types.ResRet.f32 %9466, 3
  %9471 = add nuw nsw i32 %9463, 2
  %9472 = uitofp i32 %9471 to float
  %9473 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9461, float %9462, float %9472, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9474 = extractvalue %dx.types.ResRet.f32 %9473, 0
  %9475 = extractvalue %dx.types.ResRet.f32 %9473, 1
  %9476 = extractvalue %dx.types.ResRet.f32 %9473, 2
  %9477 = extractvalue %dx.types.ResRet.f32 %9473, 3
  %9478 = call float @dx.op.binary.f32(i32 35, float %9468, float %9469)  ; FMax(a,b)
  %9479 = call float @dx.op.binary.f32(i32 35, float %9467, float %9478)  ; FMax(a,b)
  %9480 = call float @dx.op.binary.f32(i32 35, float %9479, float %9470)  ; FMax(a,b)
  %9481 = call float @dx.op.binary.f32(i32 36, float %9475, float %9476)  ; FMin(a,b)
  %9482 = call float @dx.op.binary.f32(i32 36, float %9474, float %9481)  ; FMin(a,b)
  %9483 = call float @dx.op.binary.f32(i32 36, float %9482, float %9477)  ; FMin(a,b)
  %9484 = fmul fast float %9480, 2.550000e+02
  %9485 = fadd fast float %9484, 0x3F70101020000000
  %9486 = fptoui float %9485 to i32
  %9487 = fmul fast float %9483, 2.550000e+02
  %9488 = fadd fast float %9487, 0x3F70101020000000
  %9489 = fptoui float %9488 to i32
  %9490 = icmp ult i32 %9486, %9489
  br i1 %9490, label %9491, label %9660

; <label>:9491                                    ; preds = %9448
  %9492 = fcmp fast ogt float %98, 9.843750e-01
  %9493 = fadd fast float %8286, -4.000000e+00
  %9494 = select i1 %9492, float -4.000000e+00, float %9493
  %9495 = call float @dx.op.binary.f32(i32 35, float %9494, float 0.000000e+00)  ; FMax(a,b)
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 0
  %9498 = fadd fast float %9497, %9495
  %9499 = extractvalue %dx.types.CBufRet.f32 %9496, 2
  %9500 = fmul fast float %9498, %9499
  %9501 = call float @dx.op.unary.f32(i32 23, float %9500)  ; Log(value)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9496, 3
  %9503 = fmul fast float %9502, %9501
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9506 = fmul fast float %9503, %9505
  %9507 = call float @dx.op.unary.f32(i32 7, float %9506)  ; Saturate(value)
  %9508 = uitofp i32 %9486 to float
  %9509 = uitofp i32 %9489 to float
  %9510 = fadd fast float %9508, 5.000000e-01
  %9511 = fadd fast float %9509, 5.000000e-01
  %9512 = fmul fast float %9505, %9510
  %9513 = fmul fast float %9505, %9511
  %9514 = fadd fast float %9512, 0x3F0FFB4800000000
  %9515 = fadd fast float %9513, 0xBF0FFB4800000000
  %9516 = call float @dx.op.binary.f32(i32 35, float %9507, float %9514)  ; FMax(a,b)
  %9517 = call float @dx.op.binary.f32(i32 36, float %9516, float %9515)  ; FMin(a,b)
  %9518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9519 = extractvalue %dx.types.CBufRet.f32 %9518, 1
  %9520 = extractvalue %dx.types.CBufRet.f32 %9518, 2
  %9521 = extractvalue %dx.types.CBufRet.f32 %9518, 0
  %9522 = select i1 %8024, float %9521, float 0.000000e+00
  %9523 = fmul fast float %9519, %9517
  %9524 = fadd fast float %9522, %9523
  %9525 = fadd fast float %9522, %9520
  %9526 = fsub fast float %9519, %9520
  %9527 = fadd fast float %9526, %9522
  %9528 = call float @dx.op.binary.f32(i32 35, float %9524, float %9525)  ; FMax(a,b)
  %9529 = call float @dx.op.binary.f32(i32 36, float %9528, float %9527)  ; FMin(a,b)
  %9530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9461, float %9462, float %9529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9531 = extractvalue %dx.types.ResRet.f32 %9530, 0
  %9532 = extractvalue %dx.types.ResRet.f32 %9530, 1
  %9533 = extractvalue %dx.types.ResRet.f32 %9530, 2
  %9534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.i32 %9534, 0
  %9536 = extractvalue %dx.types.CBufRet.i32 %9534, 1
  %9537 = uitofp i32 %9535 to float
  %9538 = uitofp i32 %9536 to float
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 0
  %9541 = extractvalue %dx.types.CBufRet.f32 %9539, 1
  %9542 = fmul fast float %9537, %9461
  %9543 = fmul fast float %9538, %9462
  %9544 = fadd fast float %9542, -5.000000e-01
  %9545 = fadd fast float %9543, -5.000000e-01
  %9546 = call float @dx.op.unary.f32(i32 22, float %9544)  ; Frc(value)
  %9547 = call float @dx.op.unary.f32(i32 22, float %9545)  ; Frc(value)
  %9548 = fmul fast float %9546, %9546
  %9549 = fmul fast float %9548, %9546
  %9550 = fsub fast float 3.000000e+00, %9546
  %9551 = fmul fast float %9548, %9550
  %9552 = fmul fast float %9546, 3.000000e+00
  %9553 = fmul fast float %9549, 3.000000e+00
  %9554 = fmul fast float %9548, 6.000000e+00
  %9555 = fsub fast float %9553, %9554
  %9556 = fadd fast float %9555, 4.000000e+00
  %9557 = fmul fast float %9556, 0x3FC5555560000000
  %9558 = fmul fast float %9549, -3.000000e+00
  %9559 = fadd fast float %9548, %9546
  %9560 = fmul fast float %9559, 3.000000e+00
  %9561 = fadd fast float %9558, 1.000000e+00
  %9562 = fadd fast float %9561, %9560
  %9563 = fmul fast float %9549, 0x3FC5555560000000
  %9564 = fmul fast float %9547, %9547
  %9565 = fmul fast float %9564, %9547
  %9566 = fsub fast float 3.000000e+00, %9547
  %9567 = fmul fast float %9564, %9566
  %9568 = fmul fast float %9547, 3.000000e+00
  %9569 = fmul fast float %9565, 3.000000e+00
  %9570 = fmul fast float %9564, 6.000000e+00
  %9571 = fsub fast float %9569, %9570
  %9572 = fadd fast float %9571, 4.000000e+00
  %9573 = fmul fast float %9572, 0x3FC5555560000000
  %9574 = fmul fast float %9565, -3.000000e+00
  %9575 = fadd fast float %9564, %9547
  %9576 = fmul fast float %9575, 3.000000e+00
  %9577 = fadd fast float %9574, 1.000000e+00
  %9578 = fadd fast float %9577, %9576
  %9579 = fmul fast float %9565, 0x3FC5555560000000
  %9580 = fadd fast float %9546, 1.000000e+00
  %9581 = fsub fast float 1.000000e+00, %9552
  %9582 = fadd fast float %9581, %9551
  %9583 = fadd fast float %9582, %9556
  %9584 = fmul fast float %9583, 0x3FC5555560000000
  %9585 = fdiv fast float %9557, %9584
  %9586 = fsub fast float %9580, %9585
  %9587 = fsub fast float 1.000000e+00, %9546
  %9588 = fadd fast float %9562, %9549
  %9589 = fmul fast float %9588, 0x3FC5555560000000
  %9590 = fdiv fast float %9563, %9589
  %9591 = fadd fast float %9587, %9590
  %9592 = fadd fast float %9547, 1.000000e+00
  %9593 = fsub fast float 1.000000e+00, %9568
  %9594 = fadd fast float %9593, %9567
  %9595 = fadd fast float %9594, %9572
  %9596 = fmul fast float %9595, 0x3FC5555560000000
  %9597 = fdiv fast float %9573, %9596
  %9598 = fsub fast float %9592, %9597
  %9599 = fsub fast float 1.000000e+00, %9547
  %9600 = fadd fast float %9578, %9565
  %9601 = fmul fast float %9600, 0x3FC5555560000000
  %9602 = fdiv fast float %9579, %9601
  %9603 = fadd fast float %9602, %9599
  %9604 = fmul fast float %9586, %9540
  %9605 = fsub fast float %9461, %9604
  %9606 = fmul fast float %9591, %9540
  %9607 = fadd fast float %9606, %9461
  %9608 = fmul fast float %9603, %9541
  %9609 = fadd fast float %9608, %9462
  %9610 = fmul fast float %9598, %9541
  %9611 = fsub fast float %9462, %9610
  %9612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9605, float %9611, float %9529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9613 = extractvalue %dx.types.ResRet.f32 %9612, 0
  %9614 = extractvalue %dx.types.ResRet.f32 %9612, 1
  %9615 = extractvalue %dx.types.ResRet.f32 %9612, 2
  %9616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9607, float %9611, float %9529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9617 = extractvalue %dx.types.ResRet.f32 %9616, 0
  %9618 = extractvalue %dx.types.ResRet.f32 %9616, 1
  %9619 = extractvalue %dx.types.ResRet.f32 %9616, 2
  %9620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9605, float %9609, float %9529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9621 = extractvalue %dx.types.ResRet.f32 %9620, 0
  %9622 = extractvalue %dx.types.ResRet.f32 %9620, 1
  %9623 = extractvalue %dx.types.ResRet.f32 %9620, 2
  %9624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9607, float %9609, float %9529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9625 = extractvalue %dx.types.ResRet.f32 %9624, 0
  %9626 = extractvalue %dx.types.ResRet.f32 %9624, 1
  %9627 = extractvalue %dx.types.ResRet.f32 %9624, 2
  %9628 = fsub fast float %9621, %9613
  %9629 = fsub fast float %9622, %9614
  %9630 = fsub fast float %9623, %9615
  %9631 = fmul fast float %9628, %9601
  %9632 = fmul fast float %9629, %9601
  %9633 = fmul fast float %9630, %9601
  %9634 = fadd fast float %9631, %9613
  %9635 = fadd fast float %9632, %9614
  %9636 = fadd fast float %9633, %9615
  %9637 = fsub fast float %9625, %9617
  %9638 = fsub fast float %9626, %9618
  %9639 = fsub fast float %9627, %9619
  %9640 = fmul fast float %9637, %9601
  %9641 = fmul fast float %9638, %9601
  %9642 = fmul fast float %9639, %9601
  %9643 = fsub fast float %9617, %9634
  %9644 = fadd fast float %9643, %9640
  %9645 = fsub fast float %9618, %9635
  %9646 = fadd fast float %9645, %9641
  %9647 = fsub fast float %9619, %9636
  %9648 = fadd fast float %9647, %9642
  %9649 = fmul fast float %9644, %9589
  %9650 = fmul fast float %9646, %9589
  %9651 = fmul fast float %9648, %9589
  %9652 = fadd fast float %9649, %9634
  %9653 = fadd fast float %9650, %9635
  %9654 = fadd fast float %9651, %9636
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 1
  %9657 = fmul fast float %9652, %9656
  %9658 = fmul fast float %9653, %9656
  %9659 = fmul fast float %9654, %9656
  br label %9660

; <label>:9660                                    ; preds = %9491, %9448
  %9661 = phi float [ %9531, %9491 ], [ 1.000000e+00, %9448 ]
  %9662 = phi float [ %9532, %9491 ], [ 1.000000e+00, %9448 ]
  %9663 = phi float [ %9533, %9491 ], [ 1.000000e+00, %9448 ]
  %9664 = phi float [ %9657, %9491 ], [ 0.000000e+00, %9448 ]
  %9665 = phi float [ %9658, %9491 ], [ 0.000000e+00, %9448 ]
  %9666 = phi float [ %9659, %9491 ], [ 0.000000e+00, %9448 ]
  %9667 = fmul fast float %9664, %8012
  %9668 = fmul fast float %9665, %8012
  %9669 = fmul fast float %9666, %8012
  %9670 = fmul fast float %9661, %9455
  %9671 = call float @dx.op.dot3.f32(i32 55, float %9661, float %9662, float %9663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9672 = call float @dx.op.dot3.f32(i32 55, float %9667, float %9668, float %9669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9673 = select i1 %264, float %9671, float %9661
  %9674 = select i1 %264, float %9671, float %9662
  %9675 = select i1 %264, float 1.000000e+00, float %9663
  %9676 = select i1 %264, float %9672, float %9667
  %9677 = select i1 %264, float 0.000000e+00, float %9668
  %9678 = select i1 %264, float 0.000000e+00, float %9669
  %9679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.i32 %9679, 3
  %9681 = and i32 %9680, 3
  %9682 = icmp ne i32 %9681, 0
  %9683 = and i32 %9680, 4
  %9684 = icmp ne i32 %9683, 0
  %9685 = and i1 %9682, %9684
  %9686 = and i1 %264, %9685
  br i1 %9686, label %9687, label %9693

; <label>:9687                                    ; preds = %9660
  %9688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9689 = extractvalue %dx.types.CBufRet.f32 %9688, 1
  %9690 = fadd fast float %9670, -1.000000e+00
  %9691 = fmul fast float %9689, %9690
  %9692 = fadd fast float %9691, 1.000000e+00
  br label %9693

; <label>:9693                                    ; preds = %9687, %9660
  %9694 = phi float [ %9692, %9687 ], [ %9670, %9660 ]
  %9695 = fadd fast float %9452, %9449
  %9696 = fmul fast float %9673, %9695
  %9697 = fadd fast float %9696, %9676
  %9698 = fadd fast float %9453, %9450
  %9699 = fmul fast float %9674, %9698
  %9700 = fadd fast float %9699, %9677
  %9701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9702 = extractvalue %dx.types.CBufRet.f32 %9701, 0
  br i1 %264, label %9703, label %9727

; <label>:9703                                    ; preds = %9693
  %9704 = fadd fast float %9697, %9700
  %9705 = fmul fast float %9702, %9704
  %9706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9707 = extractvalue %dx.types.CBufRet.f32 %9706, 3
  %9708 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %9709 = fsub fast float %8005, %7999
  %9710 = fadd fast float %9709, %8006
  %9711 = fsub fast float %9710, %9708
  %9712 = extractvalue %dx.types.CBufRet.f32 %8000, 2
  %9713 = fmul fast float %9711, %9712
  %9714 = call float @dx.op.unary.f32(i32 7, float %9713)  ; Saturate(value)
  %9715 = fsub fast float %9714, %9707
  %9716 = fmul fast float %9715, %9694
  %9717 = fadd fast float %9716, %9707
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 0
  %9720 = fsub fast float %9717, %9719
  %9721 = fmul fast float %9720, 1.000000e+01
  %9722 = call float @dx.op.unary.f32(i32 7, float %9721)  ; Saturate(value)
  %9723 = fsub fast float %4302, %8012
  %9724 = fmul fast float %9722, %9723
  %9725 = fadd fast float %9724, %8012
  %9726 = fmul fast float %9725, %9717
  br label %9751

; <label>:9727                                    ; preds = %9693
  %9728 = fadd fast float %9454, %9451
  %9729 = fmul fast float %9675, %9728
  %9730 = fadd fast float %9729, %9678
  %9731 = fmul fast float %9702, %9697
  %9732 = fmul fast float %9702, %9700
  %9733 = fmul fast float %9702, %9730
  %9734 = call float @dx.op.binary.f32(i32 35, float %9732, float %9733)  ; FMax(a,b)
  %9735 = call float @dx.op.binary.f32(i32 35, float %9731, float %9734)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 35, float %9735, float %8012)  ; FMax(a,b)
  %9737 = fcmp fast ugt float %9736, 0x3F10000000000000
  br i1 %9737, label %9739, label %9738

; <label>:9738                                    ; preds = %9727
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9739

; <label>:9739                                    ; preds = %9738, %9727
  %9740 = add i32 %62, 356
  %9741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9740, i32 undef)  ; BufferLoad(srv,index,wot)
  %9742 = extractvalue %dx.types.ResRet.i32 %9741, 0
  %9743 = and i32 %9742, 32
  %9744 = icmp eq i32 %9743, 0
  br i1 %9744, label %9751, label %9745

; <label>:9745                                    ; preds = %9739
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 0
  %9748 = fmul fast float %9747, 0x3FE99999A0000000
  %9749 = fadd fast float %9747, %9731
  %9750 = fadd fast float %9748, %9733
  br label %9751

; <label>:9751                                    ; preds = %9745, %9739, %9703
  %9752 = phi float [ %9705, %9703 ], [ %9749, %9745 ], [ %9731, %9739 ]
  %9753 = phi float [ %9726, %9703 ], [ %9732, %9745 ], [ %9732, %9739 ]
  %9754 = phi float [ %9725, %9703 ], [ %9750, %9745 ], [ %9733, %9739 ]
  %9755 = phi float [ %9725, %9703 ], [ %8012, %9745 ], [ %8012, %9739 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9756 = call float @dx.op.binary.f32(i32 36, float %9752, float 3.225500e+04)  ; FMin(a,b)
  %9757 = call float @dx.op.binary.f32(i32 36, float %9753, float 3.225500e+04)  ; FMin(a,b)
  %9758 = call float @dx.op.binary.f32(i32 36, float %9754, float 3.225500e+04)  ; FMin(a,b)
  %9759 = call float @dx.op.binary.f32(i32 36, float %9755, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9756)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9757)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9758)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9759)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!74}
!dx.entryPoints = !{!75}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !63, !66}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
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
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!34 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!35 = !{i32 28, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !36}
!36 = !{i32 0, i32 5}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!47 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !48}
!48 = !{i32 0, i32 14}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!60 = !{i32 51, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !48}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{!64, !65}
!64 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!65 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!68 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!69 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!70 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!71 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!72 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!73 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!74 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !99}
!76 = !{!77, !97, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94, !96}
!78 = !{i32 0, !"SV_Position", i8 9, i8 3, !79, i8 4, i32 1, i8 4, i32 0, i8 0, !80}
!79 = !{i32 0}
!80 = !{i32 3, i32 15}
!81 = !{i32 1, !"COLOR", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 1, i8 0, !80}
!82 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 2, i8 0, !83}
!83 = !{i32 3, i32 3}
!84 = !{i32 3, !"NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 3, i32 3, i8 0, !85}
!85 = !{i32 3, i32 7}
!86 = !{i32 4, !"TANGENT", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 4, i8 0, !80}
!87 = !{i32 5, !"SH_RED", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 5, i8 0, !80}
!88 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 6, i8 0, !80}
!89 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 7, i8 0, !80}
!90 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !79, i8 2, i32 1, i8 2, i32 8, i8 0, !83}
!91 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !79, i8 2, i32 1, i8 4, i32 9, i8 0, !80}
!92 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !79, i8 1, i32 1, i8 4, i32 10, i8 0, !93}
!93 = !{i32 3, i32 13}
!94 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !79, i8 1, i32 1, i8 1, i32 11, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !110, i64 0}
!124 = distinct !{!124, !102}
!125 = distinct !{!125, !102}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

