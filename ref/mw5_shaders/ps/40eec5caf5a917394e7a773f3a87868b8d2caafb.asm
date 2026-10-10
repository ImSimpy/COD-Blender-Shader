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
; shader hash: b83d4c05e90d4fda15c6bd622546f2da
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
  %173 = fmul fast float %111, 5.000000e-01
  %174 = fmul fast float %112, 5.000000e-01
  %175 = fptosi float %173 to i32
  %176 = fptosi float %174 to i32
  %177 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %175, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = lshr i32 %178, 18
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F4C00EBA0000000
  %182 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %183 = fadd fast float %182, -1.000000e+00
  %184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %185 = extractvalue %dx.types.Dimensions %184, 0
  %186 = sitofp i32 %185 to float
  %187 = extractvalue %dx.types.Dimensions %184, 1
  %188 = sitofp i32 %187 to float
  %189 = fcmp fast oge float %173, %186
  %190 = fcmp fast oge float %174, %188
  %191 = or i1 %189, %190
  %192 = select i1 %191, float 0x4197782600000000, float %183
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %196 = fmul fast float %194, %111
  %197 = fmul fast float %195, %112
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 114688
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %201, float %196, float 0.000000e+00
  %203 = select i1 %201, float %197, float 0.000000e+00
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fmul fast float %205, 2.550000e+02
  %207 = fptoui float %206 to i32
  %208 = select i1 %201, i32 %207, i32 0
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 3
  %212 = and i32 %211, 3
  %213 = icmp ne i32 %212, 0
  %214 = and i32 %211, 4
  %215 = icmp ne i32 %214, 0
  %216 = and i1 %213, %215
  br i1 %216, label %217, label %228

; <label>:217                                     ; preds = %0
  %218 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %219 = fmul fast float %218, %112
  %220 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %221 = fmul fast float %220, %111
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %221, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fsub fast float 1.000000e+00, %223
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fcmp fast olt float %224, %226
  br label %231

; <label>:228                                     ; preds = %0
  %229 = icmp eq i32 %214, 0
  %230 = and i1 %213, %229
  br label %231

; <label>:231                                     ; preds = %228, %217
  %232 = phi i1 [ %227, %217 ], [ %230, %228 ]
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fmul fast float %234, 0x3FE3C6EF40000000
  %236 = frem fast float %111, 2.560000e+02
  %237 = frem fast float %112, 2.560000e+02
  %238 = fptoui float %236 to i32
  %239 = fptoui float %237 to i32
  %240 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fadd fast float %241, %235
  %243 = call float @dx.op.unary.f32(i32 22, float %242)  ; Frc(value)
  %244 = add i32 %62, 156
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = shl i32 %246, 4
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %246, 7
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %246, 22
  %254 = shl nuw nsw i32 %253, 5
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %62, 216
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %258, 8
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %258, 16
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = add i32 %62, 36
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %62, 288
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %281, 0x3F50624DE0000000
  %285 = fmul fast float %283, 0x3F50624DE0000000
  %286 = add i32 %62, 172
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %288, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %288, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %62, 232
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %300, 8
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %300, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = add i32 %62, 52
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %62, 304
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %323, 0x3F50624DE0000000
  %327 = fmul fast float %325, 0x3F50624DE0000000
  %328 = add i32 %62, 188
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %62, 248
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %62, 68
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %62, 320
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = fmul fast float %365, 0x3F50624DE0000000
  %369 = fmul fast float %367, 0x3F50624DE0000000
  %370 = add i32 %62, 204
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = shl i32 %372, 4
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %372, 7
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %372, 22
  %380 = shl nuw nsw i32 %379, 5
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = add i32 %62, 264
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %384, 8
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = lshr i32 %384, 16
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = add i32 %62, 84
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = add i32 %62, 336
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %405, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = fmul fast float %407, 0x3F50624DE0000000
  %411 = fmul fast float %409, 0x3F50624DE0000000
  %412 = add i32 %62, 348
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 32
  %416 = icmp eq i32 %415, 0
  %417 = and i32 %414, 64
  %418 = icmp eq i32 %417, 0
  %419 = and i32 %414, 128
  %420 = icmp eq i32 %419, 0
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 2
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %440, label %425

; <label>:425                                     ; preds = %231
  %426 = add i32 %62, 488
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %428, 0
  %430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %430, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = fmul fast float %435, %92
  %437 = fmul fast float %432, %93
  %438 = fmul fast float %433, %94
  %439 = fmul fast float %434, %95
  br label %440

; <label>:440                                     ; preds = %425, %231
  %441 = phi float [ %95, %231 ], [ %439, %425 ]
  %442 = phi float [ %94, %231 ], [ %438, %425 ]
  %443 = phi float [ %93, %231 ], [ %437, %425 ]
  %444 = phi float [ %92, %231 ], [ %436, %425 ]
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 2
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %468, label %449

; <label>:449                                     ; preds = %440
  %450 = add i32 %62, 44
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %443, float 1.000000e+00
  %456 = add i32 %62, 60
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 1
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %460, float %442, float 1.000000e+00
  %462 = add i32 %62, 76
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 1
  %466 = icmp ne i32 %465, 0
  %467 = select i1 %466, float %441, float 1.000000e+00
  br label %468

; <label>:468                                     ; preds = %449, %440
  %469 = phi float [ %441, %440 ], [ %467, %449 ]
  %470 = phi float [ %442, %440 ], [ %461, %449 ]
  %471 = phi float [ %443, %440 ], [ %455, %449 ]
  %472 = lshr i32 %446, 20
  %473 = and i32 %472, 3
  %474 = add nuw nsw i32 %473, 1
  %475 = add i32 %62, 24
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = add i32 %62, 28
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = or i32 %480, %477
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %1243, label %483

; <label>:483                                     ; preds = %468
  %484 = and i32 %477, 262144
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %65, float 1.000000e+00
  %487 = select i1 %485, float %66, float 0.000000e+00
  %488 = select i1 %485, float %67, float 0.000000e+00
  %489 = select i1 %485, float %68, float 1.000000e+00
  %490 = select i1 %485, float %69, float %90
  %491 = select i1 %485, float %70, float %91
  %492 = add i32 %62, 284
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = lshr i32 %494, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = fmul fast float %496, 0x3F50624DE0000000
  %498 = add i32 %62, 88
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = lshr i32 %500, 16
  %502 = and i32 %501, 255
  %503 = lshr i32 %500, 24
  %504 = add i32 %62, 292
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 65535
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %506, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = add i32 %62, 32
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 22
  %515 = shl nuw nsw i32 %514, 5
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = shl i32 %513, 4
  %518 = and i32 %517, 32752
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %513, 7
  %521 = and i32 %520, 32752
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %525 = fmul fast float %524, 1.000000e+03
  %526 = fmul fast float %284, %525
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = fadd fast float %527, %274
  %529 = fmul fast float %285, %525
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = fadd fast float %530, %276
  %532 = fmul fast float %497, %525
  %533 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %534 = fmul fast float %533, 0x401921FB60000000
  %535 = fadd fast float %534, %516
  %536 = call float @dx.op.unary.f32(i32 13, float %535)  ; Sin(value)
  %537 = call float @dx.op.unary.f32(i32 12, float %535)  ; Cos(value)
  %538 = fsub fast float -0.000000e+00, %536
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fadd fast float %491, -5.000000e-01
  %541 = fmul fast float %508, %539
  %542 = fmul fast float %510, %540
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fadd fast float %542, 5.000000e-01
  %545 = fmul fast float %519, %543
  %546 = fmul fast float %522, %544
  %547 = fmul fast float %537, %545
  %548 = call float @dx.op.tertiary.f32(i32 46, float %538, float %546, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %536, %545
  %550 = call float @dx.op.tertiary.f32(i32 46, float %537, float %546, float %549)  ; FMad(a,b,c)
  %551 = fadd fast float %528, %548
  %552 = fadd fast float %531, %550
  %553 = icmp ugt i32 %502, 1
  %554 = icmp ugt i32 %500, 33554431
  %555 = or i1 %554, %553
  br i1 %555, label %556, label %581

; <label>:556                                     ; preds = %483
  %557 = add i32 %62, 228
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = fmul fast float %524, %561
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = mul nuw nsw i32 %502, %503
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %563, %565
  %567 = call float @dx.op.unary.f32(i32 27, float %566)  ; Round_ni(value)
  %568 = fptoui float %567 to i32
  %569 = urem i32 %568, %502
  %570 = udiv i32 %568, %503
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %573 = uitofp i32 %569 to float
  %574 = uitofp i32 %570 to float
  %575 = fadd fast float %571, %573
  %576 = fadd fast float %572, %574
  %577 = uitofp i32 %502 to float
  %578 = uitofp i32 %503 to float
  %579 = fdiv fast float %575, %577
  %580 = fdiv fast float %576, %578
  br label %581

; <label>:581                                     ; preds = %556, %483
  %582 = phi float [ %579, %556 ], [ %551, %483 ]
  %583 = phi float [ %580, %556 ], [ %552, %483 ]
  %584 = and i32 %477, 16777216
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %695, label %586

; <label>:586                                     ; preds = %581
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = fadd fast float %588, %170
  %592 = fadd fast float %589, %171
  %593 = fadd fast float %590, %172
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = icmp eq i32 %63, 65535
  br i1 %597, label %692, label %598

; <label>:598                                     ; preds = %586
  %599 = lshr i32 %63, 1
  %600 = shl i32 %599, 2
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %63, 1
  %604 = icmp ne i32 %603, 0
  %605 = lshr i32 %602, 16
  %606 = and i32 %602, 65535
  %607 = select i1 %604, i32 %605, i32 %606
  %608 = icmp eq i32 %607, 65535
  br i1 %608, label %688, label %609

; <label>:609                                     ; preds = %598
  %610 = mul nuw nsw i32 %607, 40
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %610, 12
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = add nuw nsw i32 %610, 24
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = add nuw nsw i32 %610, 36
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fsub fast float %593, %614
  %631 = fmul fast float %627, %628
  %632 = fmul fast float %627, %629
  %633 = fmul fast float %627, %630
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fadd fast float %636, 5.000000e-01
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = fmul fast float %639, %619
  %643 = shl i32 %63, 2
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %647, %dx.types.Handle %55, float %648, float %649, float %650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fmul fast float %654, 1.023000e+03
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fsub fast float %633, %636
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fmul fast float %666, 7.500000e-01
  %670 = fadd fast float %634, 1.250000e-01
  %671 = fadd fast float %670, %667
  %672 = fadd fast float %671, %661
  %673 = fadd fast float %635, 1.250000e-01
  %674 = fadd fast float %673, %668
  %675 = fadd fast float %674, %662
  %676 = fadd fast float %636, 1.250000e-01
  %677 = fadd fast float %676, %669
  %678 = fadd fast float %677, %663
  %679 = fmul fast float %672, %622
  %680 = fmul fast float %675, %623
  %681 = fmul fast float %678, %624
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %683, 0
  %685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %685, %dx.types.Handle %53, float %679, float %680, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  br label %688

; <label>:688                                     ; preds = %609, %598
  %689 = phi float [ %687, %609 ], [ -1.000000e+00, %598 ]
  %690 = fadd fast float %689, %596
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  br label %692

; <label>:692                                     ; preds = %688, %586
  %693 = phi float [ %691, %688 ], [ %596, %586 ]
  %694 = fmul fast float %693, %444
  br label %695

; <label>:695                                     ; preds = %692, %581
  %696 = phi float [ %694, %692 ], [ %444, %581 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 256
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %747, label %701

; <label>:701                                     ; preds = %695
  %702 = add i32 %62, 424
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %704, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %706, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = add i32 %62, 100
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = shl i32 %711, 4
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %711, 7
  %716 = and i32 %715, 32752
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = fsub fast float 1.000000e+00, %696
  %719 = call float @dx.op.binary.f32(i32 35, float %718, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %720 = bitcast float %696 to i32
  %721 = sitofp i32 %720 to float
  %722 = fadd fast float %721, 0xC1CFBF8940000000
  %723 = fmul fast float %717, %722
  %724 = fadd fast float %723, 0x41CFBF8940000000
  %725 = fptosi float %724 to i32
  %726 = bitcast i32 %725 to float
  %727 = bitcast float %719 to i32
  %728 = sitofp i32 %727 to float
  %729 = fadd fast float %728, 0xC1CFBF8940000000
  %730 = fmul fast float %729, %717
  %731 = fadd fast float %730, 0x41CFBF8940000000
  %732 = fptosi float %731 to i32
  %733 = bitcast i32 %732 to float
  %734 = fmul fast float %726, %714
  %735 = fmul fast float %733, %714
  %736 = fsub fast float %719, %734
  %737 = fadd fast float %735, %719
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %740 = fsub fast float %708, %738
  %741 = fsub fast float %739, %738
  %742 = bitcast float %741 to i32
  %743 = sub nsw i32 2129859010, %742
  %744 = bitcast i32 %743 to float
  %745 = fmul fast float %744, %740
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  br label %747

; <label>:747                                     ; preds = %701, %695
  %748 = phi float [ %746, %701 ], [ %696, %695 ]
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 128
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %769, label %753

; <label>:753                                     ; preds = %747
  %754 = add i32 %62, 408
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %756, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %758, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 524288
  %764 = icmp ne i32 %763, 0
  %765 = fcmp fast ogt float %760, 0x3FE0101020000000
  %766 = select i1 %765, float 1.000000e+00, float 0.000000e+00
  %767 = select i1 %764, float %766, float %760
  %768 = fmul fast float %767, %748
  br label %769

; <label>:769                                     ; preds = %753, %747
  %770 = phi float [ %768, %753 ], [ %748, %747 ]
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 16
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %973, label %775

; <label>:775                                     ; preds = %769
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %62, 360
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = and i32 %777, 255
  %789 = uitofp i32 %788 to float
  %790 = lshr i32 %777, 8
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %787, %789
  %794 = fadd fast float %793, %792
  %795 = fmul fast float %794, 0x3F70101000000000
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 512
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %808, label %800

; <label>:800                                     ; preds = %775
  %801 = add i32 %62, 440
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %803, 0
  %805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %805, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  br label %808

; <label>:808                                     ; preds = %800, %775
  %809 = phi float [ %807, %800 ], [ 1.000000e+00, %775 ]
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 33554432
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %920, label %814

; <label>:814                                     ; preds = %808
  %815 = add i32 %62, 224
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %817, 16
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = add i32 %62, 228
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = lshr i32 %828, 24
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = and i32 %828, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = lshr i32 %828, 8
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = lshr i32 %828, 16
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = add i32 %62, 220
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 24
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = and i32 %845, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %845, 8
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = lshr i32 %845, 16
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F70101020000000
  %860 = bitcast float %784 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %784, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %784
  %869 = fmul fast float %868, %867
  %870 = bitcast float %785 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %785, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %785
  %879 = fmul fast float %878, %877
  %880 = bitcast float %786 to i32
  %881 = ashr i32 %880, 1
  %882 = sub nsw i32 1597463174, %881
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %786, 5.000000e-01
  %885 = fmul fast float %883, %883
  %886 = fmul fast float %885, %884
  %887 = fsub fast float 1.500000e+00, %886
  %888 = fmul fast float %883, %786
  %889 = fmul fast float %888, %887
  %890 = fsub fast float %869, %851
  %891 = fsub fast float %879, %855
  %892 = fsub fast float %889, %859
  %893 = fmul fast float %890, %819
  %894 = fmul fast float %891, %821
  %895 = fmul fast float %892, %826
  %896 = fadd fast float %893, %834
  %897 = fadd fast float %894, %838
  %898 = fadd fast float %895, %842
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fmul fast float %901, %901
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fsub fast float %904, %786
  %908 = fmul fast float %905, %809
  %909 = fmul fast float %906, %809
  %910 = fmul fast float %907, %809
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %910, %786
  %914 = fadd fast float %831, %795
  %915 = fsub fast float %914, %848
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fsub fast float %916, %795
  %918 = fmul fast float %917, %809
  %919 = fadd fast float %918, %795
  br label %973

; <label>:920                                     ; preds = %808
  %921 = and i32 %811, 134217728
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %957, label %923

; <label>:923                                     ; preds = %920
  %924 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fadd fast float %926, -5.000000e-01
  %930 = fmul fast float %927, %809
  %931 = fmul fast float %928, %809
  %932 = fmul fast float %929, %809
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = fadd fast float %932, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = call float @dx.op.unary.f32(i32 24, float %786)  ; Sqrt(value)
  %939 = fmul fast float %933, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %936
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %936
  %944 = fmul fast float %934, 2.000000e+00
  %945 = fsub fast float 1.000000e+00, %944
  %946 = fmul fast float %945, %937
  %947 = fadd fast float %946, %944
  %948 = fmul fast float %947, %937
  %949 = fmul fast float %935, 2.000000e+00
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %950, %938
  %952 = fadd fast float %951, %949
  %953 = fmul fast float %952, %938
  %954 = fmul fast float %943, %943
  %955 = fmul fast float %948, %948
  %956 = fmul fast float %953, %953
  br label %973

; <label>:957                                     ; preds = %920
  %958 = fmul fast float %261, %261
  %959 = fmul fast float %265, %265
  %960 = fmul fast float %269, %269
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fadd fast float %960, -1.000000e+00
  %964 = fmul fast float %809, %961
  %965 = fmul fast float %809, %962
  %966 = fmul fast float %809, %963
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fadd fast float %966, 1.000000e+00
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  %972 = fmul fast float %969, %786
  br label %973

; <label>:973                                     ; preds = %957, %923, %814, %769
  %974 = phi float [ %919, %814 ], [ %795, %923 ], [ %795, %957 ], [ 0x3FA23C0BE0000000, %769 ]
  %975 = phi float [ %911, %814 ], [ %954, %923 ], [ %970, %957 ], [ 1.000000e+00, %769 ]
  %976 = phi float [ %912, %814 ], [ %955, %923 ], [ %971, %957 ], [ 1.000000e+00, %769 ]
  %977 = phi float [ %913, %814 ], [ %956, %923 ], [ %972, %957 ], [ 1.000000e+00, %769 ]
  %978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.i32 %978, 1
  %980 = and i32 %979, 1
  %981 = icmp ne i32 %980, 0
  %982 = add i32 %62, 356
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 32
  %986 = icmp ne i32 %985, 0
  %987 = and i1 %981, %986
  %988 = select i1 %987, float 1.000000e+00, float %975
  %989 = select i1 %987, float 0x3FD3333340000000, float %976
  %990 = select i1 %987, float 0x3FD3333340000000, float %977
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 32
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1067, label %995

; <label>:995                                     ; preds = %973
  %996 = add i32 %62, 92
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %62, 376
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %1001, 0
  %1003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1003, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1009 = and i32 %998, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = lshr i32 %998, 8
  %1012 = and i32 %1011, 255
  %1013 = uitofp i32 %1012 to float
  %1014 = lshr i32 %998, 16
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = fmul fast float %1016, 0x3F70101000000000
  %1018 = fmul fast float %1005, %1010
  %1019 = fadd fast float %1018, %1013
  %1020 = fmul fast float %1019, 0x3F70101000000000
  %1021 = fadd fast float %1006, -5.000000e-01
  %1022 = fadd fast float %1008, -5.000000e-01
  %1023 = fmul fast float %1021, %1017
  %1024 = fmul fast float %1022, %1017
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fmul fast float %1025, 2.000000e+00
  %1028 = fadd fast float %1027, -1.000000e+00
  %1029 = fmul fast float %1026, 2.000000e+00
  %1030 = fadd fast float %1029, -1.000000e+00
  %1031 = fadd fast float %1028, %1030
  %1032 = fmul fast float %1031, 5.000000e-01
  %1033 = fsub fast float %1028, %1030
  %1034 = fmul fast float %1033, 5.000000e-01
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = fsub fast float 1.000000e+00, %1035
  %1037 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1038 = fsub fast float %1036, %1037
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1034, float %1038, float %1032, float %1034, float %1038)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.unary.f32(i32 25, float %1039)  ; Rsqrt(value)
  %1041 = fmul fast float %1032, %1040
  %1042 = fmul fast float %1034, %1040
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 67108864
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1063, label %1047

; <label>:1047                                    ; preds = %995
  %1048 = add i32 %62, 280
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1050, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = fsub fast float %1020, %1058
  %1060 = fmul fast float %1059, %1052
  %1061 = fadd fast float %1060, %1056
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  br label %1063

; <label>:1063                                    ; preds = %1047, %995
  %1064 = phi float [ %1062, %1047 ], [ %1020, %995 ]
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %486, float %487)  ; Dot2(ax,ay,bx,by)
  %1066 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %488, float %489)  ; Dot2(ax,ay,bx,by)
  br label %1067

; <label>:1067                                    ; preds = %1063, %973
  %1068 = phi float [ %1064, %1063 ], [ 0x3FD6666660000000, %973 ]
  %1069 = phi float [ %1065, %1063 ], [ 0.000000e+00, %973 ]
  %1070 = phi float [ %1066, %1063 ], [ 0.000000e+00, %973 ]
  %1071 = phi float [ %1007, %1063 ], [ 1.000000e+00, %973 ]
  %1072 = add i32 %62, 160
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = lshr i32 %1074, 22
  %1076 = shl nuw nsw i32 %1075, 5
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 64
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1115, label %1082

; <label>:1082                                    ; preds = %1067
  %1083 = add i32 %62, 392
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 131072
  %1091 = icmp eq i32 %1090, 0
  %1092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = fmul fast float %1093, %249
  %1097 = fmul fast float %1094, %252
  %1098 = fmul fast float %1095, %255
  br i1 %1091, label %1105, label %1099

; <label>:1099                                    ; preds = %1082
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = fmul fast float %1101, %1096
  %1103 = fmul fast float %1101, %1097
  %1104 = fmul fast float %1101, %1098
  br label %1105

; <label>:1105                                    ; preds = %1099, %1082
  %1106 = phi float [ %1102, %1099 ], [ %1096, %1082 ]
  %1107 = phi float [ %1103, %1099 ], [ %1097, %1082 ]
  %1108 = phi float [ %1104, %1099 ], [ %1098, %1082 ]
  %1109 = fmul fast float %1106, %1077
  %1110 = select i1 %232, float %1109, float %1106
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = select i1 %232, float 0.000000e+00, float %1106
  %1113 = select i1 %232, float %1111, float %1107
  %1114 = select i1 %232, float 0.000000e+00, float %1108
  br label %1115

; <label>:1115                                    ; preds = %1105, %1067
  %1116 = phi float [ %1112, %1105 ], [ 0.000000e+00, %1067 ]
  %1117 = phi float [ %1113, %1105 ], [ 0.000000e+00, %1067 ]
  %1118 = phi float [ %1114, %1105 ], [ 0.000000e+00, %1067 ]
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 1024
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1153, label %1123

; <label>:1123                                    ; preds = %1115
  %1124 = add i32 %62, 152
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = lshr i32 %1126, 8
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F70101020000000
  %1134 = lshr i32 %1126, 16
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101020000000
  %1138 = fmul fast float %1129, %1129
  %1139 = fmul fast float %1133, %1133
  %1140 = fmul fast float %1137, %1137
  %1141 = add i32 %62, 456
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = fmul fast float %1138, %1147
  %1151 = fmul fast float %1139, %1148
  %1152 = fmul fast float %1140, %1149
  br label %1153

; <label>:1153                                    ; preds = %1123, %1115
  %1154 = phi float [ %1150, %1123 ], [ 0.000000e+00, %1115 ]
  %1155 = phi float [ %1151, %1123 ], [ 0.000000e+00, %1115 ]
  %1156 = phi float [ %1152, %1123 ], [ 0.000000e+00, %1115 ]
  %1157 = fcmp fast ogt float %1154, 0.000000e+00
  %1158 = fcmp fast ogt float %1155, 0.000000e+00
  %1159 = fcmp fast ogt float %1156, 0.000000e+00
  %1160 = call float @dx.op.unary.f32(i32 23, float %1154)  ; Log(value)
  %1161 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1162 = call float @dx.op.unary.f32(i32 23, float %1156)  ; Log(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 7
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1160, 0xBFE62E4300000000
  %1169 = fmul fast float %1168, %1167
  %1170 = fmul fast float %1161, 0xBFE62E4300000000
  %1171 = fmul fast float %1170, %1167
  %1172 = fmul fast float %1162, 0xBFE62E4300000000
  %1173 = fmul fast float %1172, %1167
  %1174 = select i1 %1157, float %1169, float 1.270000e+02
  %1175 = select i1 %1158, float %1171, float 1.270000e+02
  %1176 = select i1 %1159, float %1173, float 1.270000e+02
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 10240
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1225, label %1181

; <label>:1181                                    ; preds = %1153
  %1182 = add i32 %62, 472
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 3
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 1048576
  %1193 = icmp ne i32 %1192, 0
  %1194 = and i32 %1191, 8192
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1211, label %1196

; <label>:1196                                    ; preds = %1181
  %1197 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1198 = select i1 %1193, float %1197, float %1188
  %1199 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1200 = select i1 %1193, float %1199, float %1188
  %1201 = add i32 %62, 96
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = lshr i32 %1203, 16
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3F80101020000000
  %1208 = fmul fast float %1207, %1200
  %1209 = fmul fast float %1207, %1188
  %1210 = fmul fast float %1207, %1198
  br label %1211

; <label>:1211                                    ; preds = %1196, %1181
  %1212 = phi float [ %1208, %1196 ], [ 0.000000e+00, %1181 ]
  %1213 = phi float [ %1209, %1196 ], [ 0.000000e+00, %1181 ]
  %1214 = phi float [ %1210, %1196 ], [ 0.000000e+00, %1181 ]
  %1215 = and i32 %1191, 2048
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1225, label %1217

; <label>:1217                                    ; preds = %1211
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1219, 4
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fmul fast float %1222, %1189
  %1224 = call float @dx.op.binary.f32(i32 35, float %1223, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1225

; <label>:1225                                    ; preds = %1217, %1211, %1153
  %1226 = phi float [ %1212, %1217 ], [ %1212, %1211 ], [ 0.000000e+00, %1153 ]
  %1227 = phi float [ %1213, %1217 ], [ %1213, %1211 ], [ 0.000000e+00, %1153 ]
  %1228 = phi float [ %1214, %1217 ], [ %1214, %1211 ], [ 0.000000e+00, %1153 ]
  %1229 = phi float [ %1224, %1217 ], [ 0x3F70101020000000, %1211 ], [ 0x3F70101020000000, %1153 ]
  %1230 = add i32 %62, 96
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = lshr i32 %1232, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = fmul fast float %1237, %1238
  %1240 = fadd fast float %1239, %1234
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  br label %1243

; <label>:1243                                    ; preds = %1225, %468
  %1244 = phi float [ 0.000000e+00, %468 ], [ %1069, %1225 ]
  %1245 = phi float [ 0.000000e+00, %468 ], [ %1070, %1225 ]
  %1246 = phi float [ 0.000000e+00, %468 ], [ %988, %1225 ]
  %1247 = phi float [ 0.000000e+00, %468 ], [ %989, %1225 ]
  %1248 = phi float [ 0.000000e+00, %468 ], [ %990, %1225 ]
  %1249 = phi float [ 0.000000e+00, %468 ], [ %1116, %1225 ]
  %1250 = phi float [ 0.000000e+00, %468 ], [ %1117, %1225 ]
  %1251 = phi float [ 0.000000e+00, %468 ], [ %1118, %1225 ]
  %1252 = phi float [ 0.000000e+00, %468 ], [ %1226, %1225 ]
  %1253 = phi float [ 0.000000e+00, %468 ], [ %1227, %1225 ]
  %1254 = phi float [ 0.000000e+00, %468 ], [ %1228, %1225 ]
  %1255 = phi float [ 0.000000e+00, %468 ], [ %1174, %1225 ]
  %1256 = phi float [ 0.000000e+00, %468 ], [ %1175, %1225 ]
  %1257 = phi float [ 0.000000e+00, %468 ], [ %1176, %1225 ]
  %1258 = phi float [ 0.000000e+00, %468 ], [ %974, %1225 ]
  %1259 = phi float [ 0.000000e+00, %468 ], [ %770, %1225 ]
  %1260 = phi float [ 0.000000e+00, %468 ], [ %1068, %1225 ]
  %1261 = phi float [ 0.000000e+00, %468 ], [ %1071, %1225 ]
  %1262 = phi float [ 0.000000e+00, %468 ], [ %1229, %1225 ]
  %1263 = phi float [ 0.000000e+00, %468 ], [ %1242, %1225 ]
  br i1 %416, label %2301, label %1264

; <label>:1264                                    ; preds = %1243
  %1265 = icmp ult i32 %474, 2
  %1266 = add i32 %62, 40
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %62, 44
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = or i32 %1271, %1268
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %2301, label %1274

; <label>:1274                                    ; preds = %1264
  %1275 = and i32 %1268, 262144
  %1276 = icmp ne i32 %1275, 0
  %1277 = select i1 %1276, float %65, float 1.000000e+00
  %1278 = select i1 %1276, float %66, float 0.000000e+00
  %1279 = select i1 %1276, float %67, float 0.000000e+00
  %1280 = select i1 %1276, float %68, float 1.000000e+00
  %1281 = select i1 %1276, float %69, float %90
  %1282 = select i1 %1276, float %70, float %91
  %1283 = add i32 %62, 300
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = lshr i32 %1285, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = fmul fast float %1287, 0x3F50624DE0000000
  %1289 = add i32 %62, 104
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = lshr i32 %1291, 16
  %1293 = and i32 %1292, 255
  %1294 = lshr i32 %1291, 24
  %1295 = add i32 %62, 308
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = lshr i32 %1297, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = add i32 %62, 48
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 22
  %1306 = shl nuw nsw i32 %1305, 5
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = shl i32 %1304, 4
  %1309 = and i32 %1308, 32752
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = lshr i32 %1304, 7
  %1312 = and i32 %1311, 32752
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1316 = fmul fast float %1315, 1.000000e+03
  %1317 = fmul fast float %326, %1316
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = fadd fast float %1318, %316
  %1320 = fmul fast float %327, %1316
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = fadd fast float %1321, %318
  %1323 = fmul fast float %1288, %1316
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = fmul fast float %1324, 0x401921FB60000000
  %1326 = fadd fast float %1325, %1307
  %1327 = call float @dx.op.unary.f32(i32 13, float %1326)  ; Sin(value)
  %1328 = call float @dx.op.unary.f32(i32 12, float %1326)  ; Cos(value)
  %1329 = fsub fast float -0.000000e+00, %1327
  %1330 = fadd fast float %1281, -5.000000e-01
  %1331 = fadd fast float %1282, -5.000000e-01
  %1332 = fmul fast float %1299, %1330
  %1333 = fmul fast float %1301, %1331
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = fadd fast float %1333, 5.000000e-01
  %1336 = fmul fast float %1310, %1334
  %1337 = fmul fast float %1313, %1335
  %1338 = fmul fast float %1328, %1336
  %1339 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1337, float %1338)  ; FMad(a,b,c)
  %1340 = fmul fast float %1327, %1336
  %1341 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1337, float %1340)  ; FMad(a,b,c)
  %1342 = fadd fast float %1319, %1339
  %1343 = fadd fast float %1322, %1341
  %1344 = icmp ugt i32 %1293, 1
  %1345 = icmp ugt i32 %1291, 33554431
  %1346 = or i1 %1345, %1344
  br i1 %1346, label %1347, label %1372

; <label>:1347                                    ; preds = %1274
  %1348 = add i32 %62, 244
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 16
  %1352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1351)  ; LegacyF16ToF32(value)
  %1353 = fmul fast float %1315, %1352
  %1354 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1355 = mul nuw nsw i32 %1293, %1294
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1354, %1356
  %1358 = call float @dx.op.unary.f32(i32 27, float %1357)  ; Round_ni(value)
  %1359 = fptoui float %1358 to i32
  %1360 = urem i32 %1359, %1293
  %1361 = udiv i32 %1359, %1294
  %1362 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1363 = call float @dx.op.unary.f32(i32 22, float %1343)  ; Frc(value)
  %1364 = uitofp i32 %1360 to float
  %1365 = uitofp i32 %1361 to float
  %1366 = fadd fast float %1362, %1364
  %1367 = fadd fast float %1363, %1365
  %1368 = uitofp i32 %1293 to float
  %1369 = uitofp i32 %1294 to float
  %1370 = fdiv fast float %1366, %1368
  %1371 = fdiv fast float %1367, %1369
  br label %1372

; <label>:1372                                    ; preds = %1347, %1274
  %1373 = phi float [ %1370, %1347 ], [ %1342, %1274 ]
  %1374 = phi float [ %1371, %1347 ], [ %1343, %1274 ]
  %1375 = and i32 %1268, 16777216
  %1376 = icmp eq i32 %1375, 0
  br i1 %1376, label %1486, label %1377

; <label>:1377                                    ; preds = %1372
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.CBufRet.f32 %1378, 2
  %1382 = fadd fast float %1379, %170
  %1383 = fadd fast float %1380, %171
  %1384 = fadd fast float %1381, %172
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 0
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = icmp eq i32 %63, 65535
  br i1 %1388, label %1483, label %1389

; <label>:1389                                    ; preds = %1377
  %1390 = lshr i32 %63, 1
  %1391 = shl i32 %1390, 2
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %63, 1
  %1395 = icmp ne i32 %1394, 0
  %1396 = lshr i32 %1393, 16
  %1397 = and i32 %1393, 65535
  %1398 = select i1 %1395, i32 %1396, i32 %1397
  %1399 = icmp eq i32 %1398, 65535
  br i1 %1399, label %1479, label %1400

; <label>:1400                                    ; preds = %1389
  %1401 = mul nuw nsw i32 %1398, 40
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = add nuw nsw i32 %1401, 12
  %1407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = add nuw nsw i32 %1401, 24
  %1412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.ResRet.f32 %1412, 2
  %1416 = add nuw nsw i32 %1401, 36
  %1417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = fsub fast float %1382, %1403
  %1420 = fsub fast float %1383, %1404
  %1421 = fsub fast float %1384, %1405
  %1422 = fmul fast float %1418, %1419
  %1423 = fmul fast float %1418, %1420
  %1424 = fmul fast float %1418, %1421
  %1425 = call float @dx.op.unary.f32(i32 27, float %1422)  ; Round_ni(value)
  %1426 = call float @dx.op.unary.f32(i32 27, float %1423)  ; Round_ni(value)
  %1427 = call float @dx.op.unary.f32(i32 27, float %1424)  ; Round_ni(value)
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = fadd fast float %1427, 5.000000e-01
  %1431 = fmul fast float %1428, %1408
  %1432 = fmul fast float %1429, %1409
  %1433 = fmul fast float %1430, %1410
  %1434 = shl i32 %63, 2
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1440 = call float @dx.op.unary.f32(i32 22, float %1432)  ; Frc(value)
  %1441 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1438, %dx.types.Handle %55, float %1439, float %1440, float %1441, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = fmul fast float %1443, 1.023000e+03
  %1447 = fmul fast float %1444, 1.023000e+03
  %1448 = fmul fast float %1445, 1.023000e+03
  %1449 = fadd fast float %1446, 5.000000e-01
  %1450 = fadd fast float %1447, 5.000000e-01
  %1451 = fadd fast float %1448, 5.000000e-01
  %1452 = call float @dx.op.unary.f32(i32 27, float %1449)  ; Round_ni(value)
  %1453 = call float @dx.op.unary.f32(i32 27, float %1450)  ; Round_ni(value)
  %1454 = call float @dx.op.unary.f32(i32 27, float %1451)  ; Round_ni(value)
  %1455 = fsub fast float %1422, %1425
  %1456 = fsub fast float %1423, %1426
  %1457 = fsub fast float %1424, %1427
  %1458 = fmul fast float %1455, 7.500000e-01
  %1459 = fmul fast float %1456, 7.500000e-01
  %1460 = fmul fast float %1457, 7.500000e-01
  %1461 = fadd fast float %1425, 1.250000e-01
  %1462 = fadd fast float %1461, %1458
  %1463 = fadd fast float %1462, %1452
  %1464 = fadd fast float %1426, 1.250000e-01
  %1465 = fadd fast float %1464, %1459
  %1466 = fadd fast float %1465, %1453
  %1467 = fadd fast float %1427, 1.250000e-01
  %1468 = fadd fast float %1467, %1460
  %1469 = fadd fast float %1468, %1454
  %1470 = fmul fast float %1463, %1413
  %1471 = fmul fast float %1466, %1414
  %1472 = fmul fast float %1469, %1415
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1476, %dx.types.Handle %53, float %1470, float %1471, float %1472, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  br label %1479

; <label>:1479                                    ; preds = %1400, %1389
  %1480 = phi float [ %1478, %1400 ], [ -1.000000e+00, %1389 ]
  %1481 = fadd fast float %1480, %1387
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br label %1483

; <label>:1483                                    ; preds = %1479, %1377
  %1484 = phi float [ %1482, %1479 ], [ %1387, %1377 ]
  %1485 = fmul fast float %1484, %471
  br label %1486

; <label>:1486                                    ; preds = %1483, %1372
  %1487 = phi float [ %1485, %1483 ], [ %471, %1372 ]
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 256
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1538, label %1492

; <label>:1492                                    ; preds = %1486
  %1493 = add i32 %62, 428
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1497, %dx.types.Handle %108, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = add i32 %62, 116
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = shl i32 %1502, 4
  %1504 = and i32 %1503, 32752
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = lshr i32 %1502, 7
  %1507 = and i32 %1506, 32752
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = fsub fast float 1.000000e+00, %1487
  %1510 = call float @dx.op.binary.f32(i32 35, float %1509, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1511 = bitcast float %1487 to i32
  %1512 = sitofp i32 %1511 to float
  %1513 = fadd fast float %1512, 0xC1CFBF8940000000
  %1514 = fmul fast float %1508, %1513
  %1515 = fadd fast float %1514, 0x41CFBF8940000000
  %1516 = fptosi float %1515 to i32
  %1517 = bitcast i32 %1516 to float
  %1518 = bitcast float %1510 to i32
  %1519 = sitofp i32 %1518 to float
  %1520 = fadd fast float %1519, 0xC1CFBF8940000000
  %1521 = fmul fast float %1520, %1508
  %1522 = fadd fast float %1521, 0x41CFBF8940000000
  %1523 = fptosi float %1522 to i32
  %1524 = bitcast i32 %1523 to float
  %1525 = fmul fast float %1517, %1505
  %1526 = fmul fast float %1524, %1505
  %1527 = fsub fast float %1510, %1525
  %1528 = fadd fast float %1526, %1510
  %1529 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  %1530 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  %1531 = fsub fast float %1499, %1529
  %1532 = fsub fast float %1530, %1529
  %1533 = bitcast float %1532 to i32
  %1534 = sub nsw i32 2129859010, %1533
  %1535 = bitcast i32 %1534 to float
  %1536 = fmul fast float %1535, %1531
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  br label %1538

; <label>:1538                                    ; preds = %1492, %1486
  %1539 = phi float [ %1537, %1492 ], [ %1487, %1486 ]
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 128
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1560, label %1544

; <label>:1544                                    ; preds = %1538
  %1545 = add i32 %62, 412
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = add i32 %1547, 0
  %1549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1549, %dx.types.Handle %108, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 524288
  %1555 = icmp ne i32 %1554, 0
  %1556 = fcmp fast ogt float %1551, 0x3FE0101020000000
  %1557 = select i1 %1556, float 1.000000e+00, float 0.000000e+00
  %1558 = select i1 %1555, float %1557, float %1551
  %1559 = fmul fast float %1558, %1539
  br label %1560

; <label>:1560                                    ; preds = %1544, %1538
  %1561 = phi float [ %1559, %1544 ], [ %1539, %1538 ]
  %1562 = fcmp fast ult float %1561, 0x3F70101020000000
  br i1 %1562, label %2301, label %1563

; <label>:1563                                    ; preds = %1560
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 16
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1766, label %1568

; <label>:1568                                    ; preds = %1563
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = add i32 %62, 364
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = add i32 %1573, 0
  %1575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1575, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1577 = extractvalue %dx.types.ResRet.f32 %1576, 0
  %1578 = extractvalue %dx.types.ResRet.f32 %1576, 1
  %1579 = extractvalue %dx.types.ResRet.f32 %1576, 2
  %1580 = extractvalue %dx.types.ResRet.f32 %1576, 3
  %1581 = and i32 %1570, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = lshr i32 %1570, 8
  %1584 = and i32 %1583, 255
  %1585 = uitofp i32 %1584 to float
  %1586 = fmul fast float %1580, %1582
  %1587 = fadd fast float %1586, %1585
  %1588 = fmul fast float %1587, 0x3F70101000000000
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 512
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1601, label %1593

; <label>:1593                                    ; preds = %1568
  %1594 = add i32 %62, 444
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = add i32 %1596, 0
  %1598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1598, %dx.types.Handle %108, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  br label %1601

; <label>:1601                                    ; preds = %1593, %1568
  %1602 = phi float [ %1600, %1593 ], [ 1.000000e+00, %1568 ]
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 33554432
  %1606 = icmp eq i32 %1605, 0
  br i1 %1606, label %1713, label %1607

; <label>:1607                                    ; preds = %1601
  %1608 = add i32 %62, 240
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 65535
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = lshr i32 %1610, 16
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = add i32 %62, 244
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 65535
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = lshr i32 %1621, 24
  %1623 = uitofp i32 %1622 to float
  %1624 = fmul fast float %1623, 0x3F70101020000000
  %1625 = and i32 %1621, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = lshr i32 %1621, 8
  %1629 = and i32 %1628, 255
  %1630 = uitofp i32 %1629 to float
  %1631 = fmul fast float %1630, 0x3F70101020000000
  %1632 = lshr i32 %1621, 16
  %1633 = and i32 %1632, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = add i32 %62, 236
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = lshr i32 %1638, 24
  %1640 = uitofp i32 %1639 to float
  %1641 = fmul fast float %1640, 0x3F70101020000000
  %1642 = and i32 %1638, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F70101020000000
  %1645 = lshr i32 %1638, 8
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = fmul fast float %1647, 0x3F70101020000000
  %1649 = lshr i32 %1638, 16
  %1650 = and i32 %1649, 255
  %1651 = uitofp i32 %1650 to float
  %1652 = fmul fast float %1651, 0x3F70101020000000
  %1653 = bitcast float %1577 to i32
  %1654 = ashr i32 %1653, 1
  %1655 = sub nsw i32 1597463174, %1654
  %1656 = bitcast i32 %1655 to float
  %1657 = fmul fast float %1577, 5.000000e-01
  %1658 = fmul fast float %1656, %1656
  %1659 = fmul fast float %1658, %1657
  %1660 = fsub fast float 1.500000e+00, %1659
  %1661 = fmul fast float %1656, %1577
  %1662 = fmul fast float %1661, %1660
  %1663 = bitcast float %1578 to i32
  %1664 = ashr i32 %1663, 1
  %1665 = sub nsw i32 1597463174, %1664
  %1666 = bitcast i32 %1665 to float
  %1667 = fmul fast float %1578, 5.000000e-01
  %1668 = fmul fast float %1666, %1666
  %1669 = fmul fast float %1668, %1667
  %1670 = fsub fast float 1.500000e+00, %1669
  %1671 = fmul fast float %1666, %1578
  %1672 = fmul fast float %1671, %1670
  %1673 = bitcast float %1579 to i32
  %1674 = ashr i32 %1673, 1
  %1675 = sub nsw i32 1597463174, %1674
  %1676 = bitcast i32 %1675 to float
  %1677 = fmul fast float %1579, 5.000000e-01
  %1678 = fmul fast float %1676, %1676
  %1679 = fmul fast float %1678, %1677
  %1680 = fsub fast float 1.500000e+00, %1679
  %1681 = fmul fast float %1676, %1579
  %1682 = fmul fast float %1681, %1680
  %1683 = fsub fast float %1662, %1644
  %1684 = fsub fast float %1672, %1648
  %1685 = fsub fast float %1682, %1652
  %1686 = fmul fast float %1683, %1612
  %1687 = fmul fast float %1684, %1614
  %1688 = fmul fast float %1685, %1619
  %1689 = fadd fast float %1686, %1627
  %1690 = fadd fast float %1687, %1631
  %1691 = fadd fast float %1688, %1635
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1695 = fmul fast float %1692, %1692
  %1696 = fmul fast float %1693, %1693
  %1697 = fmul fast float %1694, %1694
  %1698 = fsub fast float %1695, %1577
  %1699 = fsub fast float %1696, %1578
  %1700 = fsub fast float %1697, %1579
  %1701 = fmul fast float %1698, %1602
  %1702 = fmul fast float %1699, %1602
  %1703 = fmul fast float %1700, %1602
  %1704 = fadd fast float %1701, %1577
  %1705 = fadd fast float %1702, %1578
  %1706 = fadd fast float %1703, %1579
  %1707 = fadd fast float %1624, %1588
  %1708 = fsub fast float %1707, %1641
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = fsub fast float %1709, %1588
  %1711 = fmul fast float %1710, %1602
  %1712 = fadd fast float %1711, %1588
  br label %1766

; <label>:1713                                    ; preds = %1601
  %1714 = and i32 %1604, 134217728
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1750, label %1716

; <label>:1716                                    ; preds = %1713
  %1717 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fmul fast float %1720, %1602
  %1724 = fmul fast float %1721, %1602
  %1725 = fmul fast float %1722, %1602
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1730 = call float @dx.op.unary.f32(i32 24, float %1578)  ; Sqrt(value)
  %1731 = call float @dx.op.unary.f32(i32 24, float %1579)  ; Sqrt(value)
  %1732 = fmul fast float %1726, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1729
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1729
  %1737 = fmul fast float %1727, 2.000000e+00
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1738, %1730
  %1740 = fadd fast float %1739, %1737
  %1741 = fmul fast float %1740, %1730
  %1742 = fmul fast float %1728, 2.000000e+00
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1743, %1731
  %1745 = fadd fast float %1744, %1742
  %1746 = fmul fast float %1745, %1731
  %1747 = fmul fast float %1736, %1736
  %1748 = fmul fast float %1741, %1741
  %1749 = fmul fast float %1746, %1746
  br label %1766

; <label>:1750                                    ; preds = %1713
  %1751 = fmul fast float %303, %303
  %1752 = fmul fast float %307, %307
  %1753 = fmul fast float %311, %311
  %1754 = fadd fast float %1751, -1.000000e+00
  %1755 = fadd fast float %1752, -1.000000e+00
  %1756 = fadd fast float %1753, -1.000000e+00
  %1757 = fmul fast float %1602, %1754
  %1758 = fmul fast float %1602, %1755
  %1759 = fmul fast float %1602, %1756
  %1760 = fadd fast float %1757, 1.000000e+00
  %1761 = fadd fast float %1758, 1.000000e+00
  %1762 = fadd fast float %1759, 1.000000e+00
  %1763 = fmul fast float %1760, %1577
  %1764 = fmul fast float %1761, %1578
  %1765 = fmul fast float %1762, %1579
  br label %1766

; <label>:1766                                    ; preds = %1750, %1716, %1607, %1563
  %1767 = phi float [ %1712, %1607 ], [ %1588, %1716 ], [ %1588, %1750 ], [ 0x3FA23C0BE0000000, %1563 ]
  %1768 = phi float [ %1704, %1607 ], [ %1747, %1716 ], [ %1763, %1750 ], [ 1.000000e+00, %1563 ]
  %1769 = phi float [ %1705, %1607 ], [ %1748, %1716 ], [ %1764, %1750 ], [ 1.000000e+00, %1563 ]
  %1770 = phi float [ %1706, %1607 ], [ %1749, %1716 ], [ %1765, %1750 ], [ 1.000000e+00, %1563 ]
  %1771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.i32 %1771, 1
  %1773 = and i32 %1772, 1
  %1774 = icmp ne i32 %1773, 0
  %1775 = add i32 %62, 356
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = and i32 %1777, 32
  %1779 = icmp ne i32 %1778, 0
  %1780 = and i1 %1774, %1779
  %1781 = select i1 %1780, float 1.000000e+00, float %1768
  %1782 = select i1 %1780, float 0x3FD3333340000000, float %1769
  %1783 = select i1 %1780, float 0x3FD3333340000000, float %1770
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 32
  %1787 = icmp eq i32 %1786, 0
  br i1 %1787, label %1860, label %1788

; <label>:1788                                    ; preds = %1766
  %1789 = add i32 %62, 108
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = add i32 %62, 380
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %1794, 0
  %1796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1796, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = extractvalue %dx.types.ResRet.f32 %1797, 1
  %1800 = extractvalue %dx.types.ResRet.f32 %1797, 2
  %1801 = extractvalue %dx.types.ResRet.f32 %1797, 3
  %1802 = and i32 %1791, 255
  %1803 = uitofp i32 %1802 to float
  %1804 = lshr i32 %1791, 8
  %1805 = and i32 %1804, 255
  %1806 = uitofp i32 %1805 to float
  %1807 = lshr i32 %1791, 16
  %1808 = and i32 %1807, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = fmul fast float %1809, 0x3F70101000000000
  %1811 = fmul fast float %1798, %1803
  %1812 = fadd fast float %1811, %1806
  %1813 = fmul fast float %1812, 0x3F70101000000000
  %1814 = fadd fast float %1799, -5.000000e-01
  %1815 = fadd fast float %1801, -5.000000e-01
  %1816 = fmul fast float %1814, %1810
  %1817 = fmul fast float %1815, %1810
  %1818 = fadd fast float %1816, 5.000000e-01
  %1819 = fadd fast float %1817, 5.000000e-01
  %1820 = fmul fast float %1818, 2.000000e+00
  %1821 = fadd fast float %1820, -1.000000e+00
  %1822 = fmul fast float %1819, 2.000000e+00
  %1823 = fadd fast float %1822, -1.000000e+00
  %1824 = fadd fast float %1821, %1823
  %1825 = fmul fast float %1824, 5.000000e-01
  %1826 = fsub fast float %1821, %1823
  %1827 = fmul fast float %1826, 5.000000e-01
  %1828 = call float @dx.op.unary.f32(i32 6, float %1825)  ; FAbs(value)
  %1829 = fsub fast float 1.000000e+00, %1828
  %1830 = call float @dx.op.unary.f32(i32 6, float %1827)  ; FAbs(value)
  %1831 = fsub fast float %1829, %1830
  %1832 = call float @dx.op.dot3.f32(i32 55, float %1825, float %1827, float %1831, float %1825, float %1827, float %1831)  ; Dot3(ax,ay,az,bx,by,bz)
  %1833 = call float @dx.op.unary.f32(i32 25, float %1832)  ; Rsqrt(value)
  %1834 = fmul fast float %1825, %1833
  %1835 = fmul fast float %1827, %1833
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 67108864
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1856, label %1840

; <label>:1840                                    ; preds = %1788
  %1841 = add i32 %62, 296
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 65535
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 65535
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = lshr i32 %1843, 16
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = fsub fast float %1813, %1851
  %1853 = fmul fast float %1852, %1845
  %1854 = fadd fast float %1853, %1849
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  br label %1856

; <label>:1856                                    ; preds = %1840, %1788
  %1857 = phi float [ %1855, %1840 ], [ %1813, %1788 ]
  %1858 = call float @dx.op.dot2.f32(i32 54, float %1834, float %1835, float %1277, float %1278)  ; Dot2(ax,ay,bx,by)
  %1859 = call float @dx.op.dot2.f32(i32 54, float %1834, float %1835, float %1279, float %1280)  ; Dot2(ax,ay,bx,by)
  br label %1860

; <label>:1860                                    ; preds = %1856, %1766
  %1861 = phi float [ %1857, %1856 ], [ 0x3FD6666660000000, %1766 ]
  %1862 = phi float [ %1858, %1856 ], [ 0.000000e+00, %1766 ]
  %1863 = phi float [ %1859, %1856 ], [ 0.000000e+00, %1766 ]
  %1864 = phi float [ %1800, %1856 ], [ 1.000000e+00, %1766 ]
  %1865 = add i32 %62, 176
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = lshr i32 %1867, 22
  %1869 = shl nuw nsw i32 %1868, 5
  %1870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1869)  ; LegacyF16ToF32(value)
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = and i32 %1872, 64
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1908, label %1875

; <label>:1875                                    ; preds = %1860
  %1876 = add i32 %62, 396
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = add i32 %1878, 0
  %1880 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1879, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = and i32 %1882, 131072
  %1884 = icmp eq i32 %1883, 0
  %1885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1880, %dx.types.Handle %107, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = fmul fast float %1886, %291
  %1890 = fmul fast float %1887, %294
  %1891 = fmul fast float %1888, %297
  br i1 %1884, label %1898, label %1892

; <label>:1892                                    ; preds = %1875
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1895 = fmul fast float %1894, %1889
  %1896 = fmul fast float %1894, %1890
  %1897 = fmul fast float %1894, %1891
  br label %1898

; <label>:1898                                    ; preds = %1892, %1875
  %1899 = phi float [ %1895, %1892 ], [ %1889, %1875 ]
  %1900 = phi float [ %1896, %1892 ], [ %1890, %1875 ]
  %1901 = phi float [ %1897, %1892 ], [ %1891, %1875 ]
  %1902 = fmul fast float %1899, %1870
  %1903 = select i1 %232, float %1902, float %1899
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1903, float %1900, float %1901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = select i1 %232, float 0.000000e+00, float %1899
  %1906 = select i1 %232, float %1904, float %1900
  %1907 = select i1 %232, float 0.000000e+00, float %1901
  br label %1908

; <label>:1908                                    ; preds = %1898, %1860
  %1909 = phi float [ %1905, %1898 ], [ 0.000000e+00, %1860 ]
  %1910 = phi float [ %1906, %1898 ], [ 0.000000e+00, %1860 ]
  %1911 = phi float [ %1907, %1898 ], [ 0.000000e+00, %1860 ]
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 1024
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %1946, label %1916

; <label>:1916                                    ; preds = %1908
  %1917 = add i32 %62, 168
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 255
  %1921 = uitofp i32 %1920 to float
  %1922 = fmul fast float %1921, 0x3F70101020000000
  %1923 = lshr i32 %1919, 8
  %1924 = and i32 %1923, 255
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = lshr i32 %1919, 16
  %1928 = and i32 %1927, 255
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1929, 0x3F70101020000000
  %1931 = fmul fast float %1922, %1922
  %1932 = fmul fast float %1926, %1926
  %1933 = fmul fast float %1930, %1930
  %1934 = add i32 %62, 460
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1938, %dx.types.Handle %108, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1943 = fmul fast float %1931, %1940
  %1944 = fmul fast float %1932, %1941
  %1945 = fmul fast float %1933, %1942
  br label %1946

; <label>:1946                                    ; preds = %1916, %1908
  %1947 = phi float [ %1943, %1916 ], [ 0.000000e+00, %1908 ]
  %1948 = phi float [ %1944, %1916 ], [ 0.000000e+00, %1908 ]
  %1949 = phi float [ %1945, %1916 ], [ 0.000000e+00, %1908 ]
  %1950 = fcmp fast ogt float %1947, 0.000000e+00
  %1951 = fcmp fast ogt float %1948, 0.000000e+00
  %1952 = fcmp fast ogt float %1949, 0.000000e+00
  %1953 = call float @dx.op.unary.f32(i32 23, float %1947)  ; Log(value)
  %1954 = call float @dx.op.unary.f32(i32 23, float %1948)  ; Log(value)
  %1955 = call float @dx.op.unary.f32(i32 23, float %1949)  ; Log(value)
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = lshr i32 %1957, 7
  %1959 = and i32 %1958, 32752
  %1960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1959)  ; LegacyF16ToF32(value)
  %1961 = fmul fast float %1953, 0xBFE62E4300000000
  %1962 = fmul fast float %1961, %1960
  %1963 = fmul fast float %1954, 0xBFE62E4300000000
  %1964 = fmul fast float %1963, %1960
  %1965 = fmul fast float %1955, 0xBFE62E4300000000
  %1966 = fmul fast float %1965, %1960
  %1967 = select i1 %1950, float %1962, float 1.270000e+02
  %1968 = select i1 %1951, float %1964, float 1.270000e+02
  %1969 = select i1 %1952, float %1966, float 1.270000e+02
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = and i32 %1971, 10240
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %2018, label %1974

; <label>:1974                                    ; preds = %1946
  %1975 = add i32 %62, 476
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = add i32 %1977, 0
  %1979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1979, %dx.types.Handle %108, float %1373, float %1374, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 3
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 1048576
  %1986 = icmp ne i32 %1985, 0
  %1987 = and i32 %1984, 8192
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2004, label %1989

; <label>:1989                                    ; preds = %1974
  %1990 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1991 = select i1 %1986, float %1990, float %1981
  %1992 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1993 = select i1 %1986, float %1992, float %1981
  %1994 = add i32 %62, 112
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = lshr i32 %1996, 16
  %1998 = and i32 %1997, 255
  %1999 = uitofp i32 %1998 to float
  %2000 = fmul fast float %1999, 0x3F80101020000000
  %2001 = fmul fast float %2000, %1993
  %2002 = fmul fast float %2000, %1981
  %2003 = fmul fast float %2000, %1991
  br label %2004

; <label>:2004                                    ; preds = %1989, %1974
  %2005 = phi float [ %2001, %1989 ], [ 0.000000e+00, %1974 ]
  %2006 = phi float [ %2002, %1989 ], [ 0.000000e+00, %1974 ]
  %2007 = phi float [ %2003, %1989 ], [ 0.000000e+00, %1974 ]
  %2008 = and i32 %1984, 2048
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2018, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = shl i32 %2012, 4
  %2014 = and i32 %2013, 32752
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = fmul fast float %2015, %1982
  %2017 = call float @dx.op.binary.f32(i32 35, float %2016, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2018

; <label>:2018                                    ; preds = %2010, %2004, %1946
  %2019 = phi float [ %2005, %2010 ], [ %2005, %2004 ], [ 0.000000e+00, %1946 ]
  %2020 = phi float [ %2006, %2010 ], [ %2006, %2004 ], [ 0.000000e+00, %1946 ]
  %2021 = phi float [ %2007, %2010 ], [ %2007, %2004 ], [ 0.000000e+00, %1946 ]
  %2022 = phi float [ %2017, %2010 ], [ 0x3F70101020000000, %2004 ], [ 0x3F70101020000000, %1946 ]
  %2023 = add i32 %62, 112
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 255
  %2027 = uitofp i32 %2026 to float
  %2028 = lshr i32 %2025, 8
  %2029 = and i32 %2028, 255
  %2030 = uitofp i32 %2029 to float
  %2031 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2032 = fmul fast float %2030, %2031
  %2033 = fadd fast float %2032, %2027
  %2034 = fmul fast float %2033, 0x3F70101020000000
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  br i1 %1265, label %2036, label %2071

; <label>:2036                                    ; preds = %2018
  %2037 = fmul fast float %2022, 2.000000e+00
  %2038 = fcmp fast olt float %1967, 1.270000e+02
  %2039 = fcmp fast olt float %1968, 1.270000e+02
  %2040 = fcmp fast olt float %1969, 1.270000e+02
  %2041 = fmul fast float %1967, 0xBFF7154760000000
  %2042 = fmul fast float %2041, %2037
  %2043 = fmul fast float %1968, 0xBFF7154760000000
  %2044 = fmul fast float %2043, %2037
  %2045 = fmul fast float %1969, 0xBFF7154760000000
  %2046 = fmul fast float %2045, %2037
  %2047 = call float @dx.op.unary.f32(i32 21, float %2042)  ; Exp(value)
  %2048 = call float @dx.op.unary.f32(i32 21, float %2044)  ; Exp(value)
  %2049 = call float @dx.op.unary.f32(i32 21, float %2046)  ; Exp(value)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2051 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2052 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2053 = fadd fast float %2050, -1.000000e+00
  %2054 = select i1 %2038, float %2053, float -1.000000e+00
  %2055 = fadd fast float %2051, -1.000000e+00
  %2056 = select i1 %2039, float %2055, float -1.000000e+00
  %2057 = fadd fast float %2052, -1.000000e+00
  %2058 = select i1 %2040, float %2057, float -1.000000e+00
  %2059 = fmul fast float %2054, %1561
  %2060 = fmul fast float %2056, %1561
  %2061 = fmul fast float %2058, %1561
  %2062 = fadd fast float %2059, 1.000000e+00
  %2063 = fadd fast float %2060, 1.000000e+00
  %2064 = fadd fast float %2061, 1.000000e+00
  %2065 = fmul fast float %2062, %1246
  %2066 = fmul fast float %2063, %1247
  %2067 = fmul fast float %2064, %1248
  %2068 = fmul fast float %2062, %1249
  %2069 = fmul fast float %2063, %1250
  %2070 = fmul fast float %2064, %1251
  br label %2071

; <label>:2071                                    ; preds = %2036, %2018
  %2072 = phi float [ %2065, %2036 ], [ %1246, %2018 ]
  %2073 = phi float [ %2066, %2036 ], [ %1247, %2018 ]
  %2074 = phi float [ %2067, %2036 ], [ %1248, %2018 ]
  %2075 = phi float [ %2068, %2036 ], [ %1249, %2018 ]
  %2076 = phi float [ %2069, %2036 ], [ %1250, %2018 ]
  %2077 = phi float [ %2070, %2036 ], [ %1251, %2018 ]
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 3
  %2081 = icmp eq i32 %2080, 3
  br i1 %2081, label %2160, label %2082

; <label>:2082                                    ; preds = %2071
  %2083 = and i32 %2079, 16
  %2084 = icmp ne i32 %2083, 0
  %2085 = select i1 %2084, float %1561, float 0.000000e+00
  %2086 = icmp eq i32 %2080, 0
  br i1 %2086, label %2087, label %2115

; <label>:2087                                    ; preds = %2082
  %2088 = and i32 %2079, 64
  %2089 = icmp ne i32 %2088, 0
  %2090 = select i1 %2089, float %1561, float 0.000000e+00
  %2091 = fsub fast float %1781, %2072
  %2092 = fsub fast float %1782, %2073
  %2093 = fsub fast float %1783, %2074
  %2094 = fmul fast float %2085, %2091
  %2095 = fmul fast float %2085, %2092
  %2096 = fmul fast float %2085, %2093
  %2097 = fadd fast float %2094, %2072
  %2098 = fadd fast float %2095, %2073
  %2099 = fadd fast float %2096, %2074
  %2100 = fsub fast float %1767, %1258
  %2101 = fmul fast float %2085, %2100
  %2102 = fadd fast float %2101, %1258
  %2103 = fsub fast float %1909, %2075
  %2104 = fsub fast float %1910, %2076
  %2105 = fsub fast float %1911, %2077
  %2106 = fmul fast float %2090, %2103
  %2107 = fmul fast float %2090, %2104
  %2108 = fmul fast float %2090, %2105
  %2109 = fadd fast float %2106, %2075
  %2110 = fadd fast float %2107, %2076
  %2111 = fadd fast float %2108, %2077
  %2112 = fsub fast float %2035, %1263
  %2113 = fmul fast float %2085, %2112
  %2114 = fadd fast float %2113, %1263
  br label %2160

; <label>:2115                                    ; preds = %2082
  %2116 = icmp eq i32 %2080, 1
  br i1 %2116, label %2117, label %2130

; <label>:2117                                    ; preds = %2115
  %2118 = fadd fast float %1781, -1.000000e+00
  %2119 = fadd fast float %1782, -1.000000e+00
  %2120 = fadd fast float %1783, -1.000000e+00
  %2121 = fmul fast float %2085, %2118
  %2122 = fmul fast float %2085, %2119
  %2123 = fmul fast float %2085, %2120
  %2124 = fadd fast float %2121, 1.000000e+00
  %2125 = fadd fast float %2122, 1.000000e+00
  %2126 = fadd fast float %2123, 1.000000e+00
  %2127 = fmul fast float %2124, %2072
  %2128 = fmul fast float %2125, %2073
  %2129 = fmul fast float %2126, %2074
  br label %2160

; <label>:2130                                    ; preds = %2115
  %2131 = icmp eq i32 %2080, 2
  br i1 %2131, label %2132, label %2160

; <label>:2132                                    ; preds = %2130
  %2133 = call float @dx.op.unary.f32(i32 24, float %1781)  ; Sqrt(value)
  %2134 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %2135 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fadd fast float %2134, -5.000000e-01
  %2138 = fadd fast float %2135, -5.000000e-01
  %2139 = fmul fast float %2136, %2085
  %2140 = fmul fast float %2137, %2085
  %2141 = fmul fast float %2138, %2085
  %2142 = fadd fast float %2139, 5.000000e-01
  %2143 = fadd fast float %2140, 5.000000e-01
  %2144 = fadd fast float %2141, 5.000000e-01
  %2145 = fmul fast float %2142, 2.000000e+00
  %2146 = fsub fast float 1.000000e+00, %2145
  %2147 = fmul fast float %2146, %2072
  %2148 = fadd fast float %2147, %2145
  %2149 = fmul fast float %2148, %2072
  %2150 = fmul fast float %2143, 2.000000e+00
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = fmul fast float %2151, %2073
  %2153 = fadd fast float %2152, %2150
  %2154 = fmul fast float %2153, %2073
  %2155 = fmul fast float %2144, 2.000000e+00
  %2156 = fsub fast float 1.000000e+00, %2155
  %2157 = fmul fast float %2156, %2074
  %2158 = fadd fast float %2157, %2155
  %2159 = fmul fast float %2158, %2074
  br label %2160

; <label>:2160                                    ; preds = %2132, %2130, %2117, %2087, %2071
  %2161 = phi float [ %2072, %2071 ], [ %2149, %2132 ], [ %2072, %2130 ], [ %2127, %2117 ], [ %2097, %2087 ]
  %2162 = phi float [ %2073, %2071 ], [ %2154, %2132 ], [ %2073, %2130 ], [ %2128, %2117 ], [ %2098, %2087 ]
  %2163 = phi float [ %2074, %2071 ], [ %2159, %2132 ], [ %2074, %2130 ], [ %2129, %2117 ], [ %2099, %2087 ]
  %2164 = phi float [ %2075, %2071 ], [ %2075, %2132 ], [ %2075, %2130 ], [ %2075, %2117 ], [ %2109, %2087 ]
  %2165 = phi float [ %2076, %2071 ], [ %2076, %2132 ], [ %2076, %2130 ], [ %2076, %2117 ], [ %2110, %2087 ]
  %2166 = phi float [ %2077, %2071 ], [ %2077, %2132 ], [ %2077, %2130 ], [ %2077, %2117 ], [ %2111, %2087 ]
  %2167 = phi float [ %1258, %2071 ], [ %1258, %2132 ], [ %1258, %2130 ], [ %1258, %2117 ], [ %2102, %2087 ]
  %2168 = phi float [ %1263, %2071 ], [ %1263, %2132 ], [ %1263, %2130 ], [ %1263, %2117 ], [ %2114, %2087 ]
  %2169 = and i32 %2079, 12
  %2170 = icmp eq i32 %2169, 12
  br i1 %2170, label %2301, label %2171

; <label>:2171                                    ; preds = %2160
  %2172 = and i32 %2079, 2097184
  %2173 = icmp eq i32 %2172, 2097184
  %2174 = select i1 %2173, float %1561, float 0.000000e+00
  %2175 = and i32 %2079, 4194336
  %2176 = icmp eq i32 %2175, 4194336
  %2177 = select i1 %2176, float %1561, float 0.000000e+00
  %2178 = and i32 %2079, 8388640
  %2179 = icmp eq i32 %2178, 8388640
  %2180 = select i1 %2179, float %1561, float 0.000000e+00
  %2181 = and i32 %2079, 1024
  %2182 = icmp ne i32 %2181, 0
  %2183 = select i1 %2182, float %1561, float 0.000000e+00
  %2184 = and i32 %2079, 2048
  %2185 = icmp ne i32 %2184, 0
  %2186 = select i1 %2185, float %1561, float 0.000000e+00
  %2187 = and i32 %2079, 8192
  %2188 = icmp ne i32 %2187, 0
  %2189 = select i1 %2188, float %1561, float 0.000000e+00
  %2190 = icmp eq i32 %2169, 0
  br i1 %2190, label %2191, label %2225

; <label>:2191                                    ; preds = %2171
  %2192 = fsub fast float %1862, %1244
  %2193 = fsub fast float %1863, %1245
  %2194 = fmul fast float %2174, %2192
  %2195 = fmul fast float %2174, %2193
  %2196 = fadd fast float %2194, %1244
  %2197 = fadd fast float %2195, %1245
  %2198 = fsub fast float %1864, %1261
  %2199 = fmul fast float %2177, %2198
  %2200 = fadd fast float %2199, %1261
  %2201 = fsub fast float %1861, %1260
  %2202 = fmul fast float %2180, %2201
  %2203 = fadd fast float %2202, %1260
  %2204 = fsub fast float %1967, %1255
  %2205 = fsub fast float %1968, %1256
  %2206 = fsub fast float %1969, %1257
  %2207 = fmul fast float %2183, %2204
  %2208 = fmul fast float %2183, %2205
  %2209 = fmul fast float %2183, %2206
  %2210 = fadd fast float %2207, %1255
  %2211 = fadd fast float %2208, %1256
  %2212 = fadd fast float %2209, %1257
  %2213 = fsub fast float %2022, %1262
  %2214 = fmul fast float %2186, %2213
  %2215 = fadd fast float %2214, %1262
  %2216 = fsub fast float %2019, %1252
  %2217 = fsub fast float %2020, %1253
  %2218 = fsub fast float %2021, %1254
  %2219 = fmul fast float %2189, %2216
  %2220 = fmul fast float %2189, %2217
  %2221 = fmul fast float %2189, %2218
  %2222 = fadd fast float %2219, %1252
  %2223 = fadd fast float %2220, %1253
  %2224 = fadd fast float %2221, %1254
  br label %2301

; <label>:2225                                    ; preds = %2171
  %2226 = icmp eq i32 %2169, 4
  br i1 %2226, label %2227, label %2273

; <label>:2227                                    ; preds = %2225
  %2228 = fmul fast float %2174, %1862
  %2229 = fmul fast float %2174, %1863
  %2230 = fadd fast float %2228, %1244
  %2231 = fadd fast float %2229, %1245
  %2232 = call float @dx.op.binary.f32(i32 36, float %1261, float %1864)  ; FMin(a,b)
  %2233 = fsub fast float %2232, %1261
  %2234 = fmul fast float %2233, %2177
  %2235 = fadd fast float %2234, %1261
  %2236 = fadd fast float %1861, %1260
  %2237 = fmul fast float %2236, 0x3FF337FAE0000000
  %2238 = fmul fast float %1260, %1260
  %2239 = fmul fast float %1861, %1861
  %2240 = fadd fast float %2239, %2238
  %2241 = fmul fast float %2240, 0x3FE5152B00000000
  %2242 = fmul fast float %1260, 0xBFCC1F85E0000000
  %2243 = fmul fast float %2242, %1861
  %2244 = fadd fast float %2243, 0xBFE1363700000000
  %2245 = fadd fast float %2244, %2237
  %2246 = fsub fast float %2245, %2241
  %2247 = fmul fast float %2236, 0x3FBA6F0D00000000
  %2248 = fmul fast float %2240, 0x3FD0432880000000
  %2249 = fmul fast float %1260, 0xBFEF110800000000
  %2250 = fmul fast float %2249, %1861
  %2251 = fadd fast float %2250, 1.000000e+00
  %2252 = fsub fast float %2251, %2247
  %2253 = fadd fast float %2252, %2248
  %2254 = fdiv fast float %2246, %2253
  %2255 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2256 = fsub fast float %2255, %1260
  %2257 = fmul fast float %2256, %2180
  %2258 = fadd fast float %2257, %1260
  %2259 = fmul fast float %2183, %1967
  %2260 = fmul fast float %2183, %1968
  %2261 = fmul fast float %2183, %1969
  %2262 = fadd fast float %2259, %1255
  %2263 = fadd fast float %2260, %1256
  %2264 = fadd fast float %2261, %1257
  %2265 = fmul fast float %2186, %2022
  %2266 = fadd fast float %2265, %1262
  %2267 = fmul fast float %2189, %2019
  %2268 = fmul fast float %2189, %2020
  %2269 = fmul fast float %2189, %2021
  %2270 = fadd fast float %2267, %1252
  %2271 = fadd fast float %2268, %1253
  %2272 = fadd fast float %2269, %1254
  br label %2301

; <label>:2273                                    ; preds = %2225
  %2274 = icmp eq i32 %2169, 8
  br i1 %2274, label %2275, label %2301

; <label>:2275                                    ; preds = %2273
  %2276 = fmul fast float %2174, %1862
  %2277 = fmul fast float %2174, %1863
  %2278 = fadd fast float %2276, %1244
  %2279 = fadd fast float %2277, %1245
  %2280 = call float @dx.op.binary.f32(i32 36, float %1261, float %1864)  ; FMin(a,b)
  %2281 = fsub fast float %2280, %1261
  %2282 = fmul fast float %2281, %2177
  %2283 = fadd fast float %2282, %1261
  %2284 = fsub fast float %1861, %1260
  %2285 = fmul fast float %2180, %2284
  %2286 = fadd fast float %2285, %1260
  %2287 = fmul fast float %2183, %1967
  %2288 = fmul fast float %2183, %1968
  %2289 = fmul fast float %2183, %1969
  %2290 = fadd fast float %2287, %1255
  %2291 = fadd fast float %2288, %1256
  %2292 = fadd fast float %2289, %1257
  %2293 = fmul fast float %2186, %2022
  %2294 = fadd fast float %2293, %1262
  %2295 = fmul fast float %2189, %2019
  %2296 = fmul fast float %2189, %2020
  %2297 = fmul fast float %2189, %2021
  %2298 = fadd fast float %2295, %1252
  %2299 = fadd fast float %2296, %1253
  %2300 = fadd fast float %2297, %1254
  br label %2301

; <label>:2301                                    ; preds = %2275, %2273, %2227, %2191, %2160, %1560, %1264, %1243
  %2302 = phi float [ %1244, %2160 ], [ %1244, %1560 ], [ %1244, %1243 ], [ %2278, %2275 ], [ %1244, %2273 ], [ %2230, %2227 ], [ %2196, %2191 ], [ %1244, %1264 ]
  %2303 = phi float [ %1245, %2160 ], [ %1245, %1560 ], [ %1245, %1243 ], [ %2279, %2275 ], [ %1245, %2273 ], [ %2231, %2227 ], [ %2197, %2191 ], [ %1245, %1264 ]
  %2304 = phi float [ %2161, %2160 ], [ %1246, %1560 ], [ %1246, %1243 ], [ %2161, %2275 ], [ %2161, %2273 ], [ %2161, %2227 ], [ %2161, %2191 ], [ %1246, %1264 ]
  %2305 = phi float [ %2162, %2160 ], [ %1247, %1560 ], [ %1247, %1243 ], [ %2162, %2275 ], [ %2162, %2273 ], [ %2162, %2227 ], [ %2162, %2191 ], [ %1247, %1264 ]
  %2306 = phi float [ %2163, %2160 ], [ %1248, %1560 ], [ %1248, %1243 ], [ %2163, %2275 ], [ %2163, %2273 ], [ %2163, %2227 ], [ %2163, %2191 ], [ %1248, %1264 ]
  %2307 = phi float [ %2164, %2160 ], [ %1249, %1560 ], [ %1249, %1243 ], [ %2164, %2275 ], [ %2164, %2273 ], [ %2164, %2227 ], [ %2164, %2191 ], [ %1249, %1264 ]
  %2308 = phi float [ %2165, %2160 ], [ %1250, %1560 ], [ %1250, %1243 ], [ %2165, %2275 ], [ %2165, %2273 ], [ %2165, %2227 ], [ %2165, %2191 ], [ %1250, %1264 ]
  %2309 = phi float [ %2166, %2160 ], [ %1251, %1560 ], [ %1251, %1243 ], [ %2166, %2275 ], [ %2166, %2273 ], [ %2166, %2227 ], [ %2166, %2191 ], [ %1251, %1264 ]
  %2310 = phi float [ %1252, %2160 ], [ %1252, %1560 ], [ %1252, %1243 ], [ %2298, %2275 ], [ %1252, %2273 ], [ %2270, %2227 ], [ %2222, %2191 ], [ %1252, %1264 ]
  %2311 = phi float [ %1253, %2160 ], [ %1253, %1560 ], [ %1253, %1243 ], [ %2299, %2275 ], [ %1253, %2273 ], [ %2271, %2227 ], [ %2223, %2191 ], [ %1253, %1264 ]
  %2312 = phi float [ %1254, %2160 ], [ %1254, %1560 ], [ %1254, %1243 ], [ %2300, %2275 ], [ %1254, %2273 ], [ %2272, %2227 ], [ %2224, %2191 ], [ %1254, %1264 ]
  %2313 = phi float [ %1255, %2160 ], [ %1255, %1560 ], [ %1255, %1243 ], [ %2290, %2275 ], [ %1255, %2273 ], [ %2262, %2227 ], [ %2210, %2191 ], [ %1255, %1264 ]
  %2314 = phi float [ %1256, %2160 ], [ %1256, %1560 ], [ %1256, %1243 ], [ %2291, %2275 ], [ %1256, %2273 ], [ %2263, %2227 ], [ %2211, %2191 ], [ %1256, %1264 ]
  %2315 = phi float [ %1257, %2160 ], [ %1257, %1560 ], [ %1257, %1243 ], [ %2292, %2275 ], [ %1257, %2273 ], [ %2264, %2227 ], [ %2212, %2191 ], [ %1257, %1264 ]
  %2316 = phi float [ %2167, %2160 ], [ %1258, %1560 ], [ %1258, %1243 ], [ %2167, %2275 ], [ %2167, %2273 ], [ %2167, %2227 ], [ %2167, %2191 ], [ %1258, %1264 ]
  %2317 = phi float [ %1260, %2160 ], [ %1260, %1560 ], [ %1260, %1243 ], [ %2286, %2275 ], [ %1260, %2273 ], [ %2258, %2227 ], [ %2203, %2191 ], [ %1260, %1264 ]
  %2318 = phi float [ %1261, %2160 ], [ %1261, %1560 ], [ %1261, %1243 ], [ %2283, %2275 ], [ %1261, %2273 ], [ %2235, %2227 ], [ %2200, %2191 ], [ %1261, %1264 ]
  %2319 = phi float [ %1262, %2160 ], [ %1262, %1560 ], [ %1262, %1243 ], [ %2294, %2275 ], [ %1262, %2273 ], [ %2266, %2227 ], [ %2215, %2191 ], [ %1262, %1264 ]
  %2320 = phi float [ %2168, %2160 ], [ %1263, %1560 ], [ %1263, %1243 ], [ %2168, %2275 ], [ %2168, %2273 ], [ %2168, %2227 ], [ %2168, %2191 ], [ %1263, %1264 ]
  br i1 %418, label %3358, label %2321

; <label>:2321                                    ; preds = %2301
  %2322 = icmp ult i32 %474, 3
  %2323 = add i32 %62, 56
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %62, 60
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = or i32 %2328, %2325
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %3358, label %2331

; <label>:2331                                    ; preds = %2321
  %2332 = and i32 %2325, 262144
  %2333 = icmp ne i32 %2332, 0
  %2334 = select i1 %2333, float %65, float 1.000000e+00
  %2335 = select i1 %2333, float %66, float 0.000000e+00
  %2336 = select i1 %2333, float %67, float 0.000000e+00
  %2337 = select i1 %2333, float %68, float 1.000000e+00
  %2338 = select i1 %2333, float %69, float %90
  %2339 = select i1 %2333, float %70, float %91
  %2340 = add i32 %62, 316
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = fmul fast float %2344, 0x3F50624DE0000000
  %2346 = add i32 %62, 120
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 16
  %2350 = and i32 %2349, 255
  %2351 = lshr i32 %2348, 24
  %2352 = add i32 %62, 324
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 65535
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = lshr i32 %2354, 16
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = add i32 %62, 64
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 22
  %2363 = shl nuw nsw i32 %2362, 5
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = shl i32 %2361, 4
  %2366 = and i32 %2365, 32752
  %2367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2366)  ; LegacyF16ToF32(value)
  %2368 = lshr i32 %2361, 7
  %2369 = and i32 %2368, 32752
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 3
  %2373 = fmul fast float %2372, 1.000000e+03
  %2374 = fmul fast float %368, %2373
  %2375 = call float @dx.op.unary.f32(i32 22, float %2374)  ; Frc(value)
  %2376 = fadd fast float %2375, %358
  %2377 = fmul fast float %369, %2373
  %2378 = call float @dx.op.unary.f32(i32 22, float %2377)  ; Frc(value)
  %2379 = fadd fast float %2378, %360
  %2380 = fmul fast float %2345, %2373
  %2381 = call float @dx.op.unary.f32(i32 22, float %2380)  ; Frc(value)
  %2382 = fmul fast float %2381, 0x401921FB60000000
  %2383 = fadd fast float %2382, %2364
  %2384 = call float @dx.op.unary.f32(i32 13, float %2383)  ; Sin(value)
  %2385 = call float @dx.op.unary.f32(i32 12, float %2383)  ; Cos(value)
  %2386 = fsub fast float -0.000000e+00, %2384
  %2387 = fadd fast float %2338, -5.000000e-01
  %2388 = fadd fast float %2339, -5.000000e-01
  %2389 = fmul fast float %2356, %2387
  %2390 = fmul fast float %2358, %2388
  %2391 = fadd fast float %2389, 5.000000e-01
  %2392 = fadd fast float %2390, 5.000000e-01
  %2393 = fmul fast float %2367, %2391
  %2394 = fmul fast float %2370, %2392
  %2395 = fmul fast float %2385, %2393
  %2396 = call float @dx.op.tertiary.f32(i32 46, float %2386, float %2394, float %2395)  ; FMad(a,b,c)
  %2397 = fmul fast float %2384, %2393
  %2398 = call float @dx.op.tertiary.f32(i32 46, float %2385, float %2394, float %2397)  ; FMad(a,b,c)
  %2399 = fadd fast float %2376, %2396
  %2400 = fadd fast float %2379, %2398
  %2401 = icmp ugt i32 %2350, 1
  %2402 = icmp ugt i32 %2348, 33554431
  %2403 = or i1 %2402, %2401
  br i1 %2403, label %2404, label %2429

; <label>:2404                                    ; preds = %2331
  %2405 = add i32 %62, 260
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = lshr i32 %2407, 16
  %2409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2408)  ; LegacyF16ToF32(value)
  %2410 = fmul fast float %2372, %2409
  %2411 = call float @dx.op.unary.f32(i32 22, float %2410)  ; Frc(value)
  %2412 = mul nuw nsw i32 %2350, %2351
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2411, %2413
  %2415 = call float @dx.op.unary.f32(i32 27, float %2414)  ; Round_ni(value)
  %2416 = fptoui float %2415 to i32
  %2417 = urem i32 %2416, %2350
  %2418 = udiv i32 %2416, %2351
  %2419 = call float @dx.op.unary.f32(i32 22, float %2399)  ; Frc(value)
  %2420 = call float @dx.op.unary.f32(i32 22, float %2400)  ; Frc(value)
  %2421 = uitofp i32 %2417 to float
  %2422 = uitofp i32 %2418 to float
  %2423 = fadd fast float %2419, %2421
  %2424 = fadd fast float %2420, %2422
  %2425 = uitofp i32 %2350 to float
  %2426 = uitofp i32 %2351 to float
  %2427 = fdiv fast float %2423, %2425
  %2428 = fdiv fast float %2424, %2426
  br label %2429

; <label>:2429                                    ; preds = %2404, %2331
  %2430 = phi float [ %2427, %2404 ], [ %2399, %2331 ]
  %2431 = phi float [ %2428, %2404 ], [ %2400, %2331 ]
  %2432 = and i32 %2325, 16777216
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2543, label %2434

; <label>:2434                                    ; preds = %2429
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.CBufRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.CBufRet.f32 %2435, 2
  %2439 = fadd fast float %2436, %170
  %2440 = fadd fast float %2437, %171
  %2441 = fadd fast float %2438, %172
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = icmp eq i32 %63, 65535
  br i1 %2445, label %2540, label %2446

; <label>:2446                                    ; preds = %2434
  %2447 = lshr i32 %63, 1
  %2448 = shl i32 %2447, 2
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %63, 1
  %2452 = icmp ne i32 %2451, 0
  %2453 = lshr i32 %2450, 16
  %2454 = and i32 %2450, 65535
  %2455 = select i1 %2452, i32 %2453, i32 %2454
  %2456 = icmp eq i32 %2455, 65535
  br i1 %2456, label %2536, label %2457

; <label>:2457                                    ; preds = %2446
  %2458 = mul nuw nsw i32 %2455, 40
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = extractvalue %dx.types.ResRet.f32 %2459, 1
  %2462 = extractvalue %dx.types.ResRet.f32 %2459, 2
  %2463 = add nuw nsw i32 %2458, 12
  %2464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.ResRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.ResRet.f32 %2464, 2
  %2468 = add nuw nsw i32 %2458, 24
  %2469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2468, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 0
  %2471 = extractvalue %dx.types.ResRet.f32 %2469, 1
  %2472 = extractvalue %dx.types.ResRet.f32 %2469, 2
  %2473 = add nuw nsw i32 %2458, 36
  %2474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = fsub fast float %2439, %2460
  %2477 = fsub fast float %2440, %2461
  %2478 = fsub fast float %2441, %2462
  %2479 = fmul fast float %2475, %2476
  %2480 = fmul fast float %2475, %2477
  %2481 = fmul fast float %2475, %2478
  %2482 = call float @dx.op.unary.f32(i32 27, float %2479)  ; Round_ni(value)
  %2483 = call float @dx.op.unary.f32(i32 27, float %2480)  ; Round_ni(value)
  %2484 = call float @dx.op.unary.f32(i32 27, float %2481)  ; Round_ni(value)
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = fadd fast float %2483, 5.000000e-01
  %2487 = fadd fast float %2484, 5.000000e-01
  %2488 = fmul fast float %2485, %2465
  %2489 = fmul fast float %2486, %2466
  %2490 = fmul fast float %2487, %2467
  %2491 = shl i32 %63, 2
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %2493, 0
  %2495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2496 = call float @dx.op.unary.f32(i32 22, float %2488)  ; Frc(value)
  %2497 = call float @dx.op.unary.f32(i32 22, float %2489)  ; Frc(value)
  %2498 = call float @dx.op.unary.f32(i32 22, float %2490)  ; Frc(value)
  %2499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2495, %dx.types.Handle %55, float %2496, float %2497, float %2498, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = fmul fast float %2500, 1.023000e+03
  %2504 = fmul fast float %2501, 1.023000e+03
  %2505 = fmul fast float %2502, 1.023000e+03
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = fadd fast float %2504, 5.000000e-01
  %2508 = fadd fast float %2505, 5.000000e-01
  %2509 = call float @dx.op.unary.f32(i32 27, float %2506)  ; Round_ni(value)
  %2510 = call float @dx.op.unary.f32(i32 27, float %2507)  ; Round_ni(value)
  %2511 = call float @dx.op.unary.f32(i32 27, float %2508)  ; Round_ni(value)
  %2512 = fsub fast float %2479, %2482
  %2513 = fsub fast float %2480, %2483
  %2514 = fsub fast float %2481, %2484
  %2515 = fmul fast float %2512, 7.500000e-01
  %2516 = fmul fast float %2513, 7.500000e-01
  %2517 = fmul fast float %2514, 7.500000e-01
  %2518 = fadd fast float %2482, 1.250000e-01
  %2519 = fadd fast float %2518, %2515
  %2520 = fadd fast float %2519, %2509
  %2521 = fadd fast float %2483, 1.250000e-01
  %2522 = fadd fast float %2521, %2516
  %2523 = fadd fast float %2522, %2510
  %2524 = fadd fast float %2484, 1.250000e-01
  %2525 = fadd fast float %2524, %2517
  %2526 = fadd fast float %2525, %2511
  %2527 = fmul fast float %2520, %2470
  %2528 = fmul fast float %2523, %2471
  %2529 = fmul fast float %2526, %2472
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %2531, 0
  %2533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2533, %dx.types.Handle %53, float %2527, float %2528, float %2529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  br label %2536

; <label>:2536                                    ; preds = %2457, %2446
  %2537 = phi float [ %2535, %2457 ], [ -1.000000e+00, %2446 ]
  %2538 = fadd fast float %2537, %2444
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  br label %2540

; <label>:2540                                    ; preds = %2536, %2434
  %2541 = phi float [ %2539, %2536 ], [ %2444, %2434 ]
  %2542 = fmul fast float %2541, %470
  br label %2543

; <label>:2543                                    ; preds = %2540, %2429
  %2544 = phi float [ %2542, %2540 ], [ %470, %2429 ]
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 256
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2595, label %2549

; <label>:2549                                    ; preds = %2543
  %2550 = add i32 %62, 432
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = add i32 %2552, 0
  %2554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2554, %dx.types.Handle %108, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 0
  %2557 = add i32 %62, 132
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = shl i32 %2559, 4
  %2561 = and i32 %2560, 32752
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = lshr i32 %2559, 7
  %2564 = and i32 %2563, 32752
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = fsub fast float 1.000000e+00, %2544
  %2567 = call float @dx.op.binary.f32(i32 35, float %2566, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2568 = bitcast float %2544 to i32
  %2569 = sitofp i32 %2568 to float
  %2570 = fadd fast float %2569, 0xC1CFBF8940000000
  %2571 = fmul fast float %2565, %2570
  %2572 = fadd fast float %2571, 0x41CFBF8940000000
  %2573 = fptosi float %2572 to i32
  %2574 = bitcast i32 %2573 to float
  %2575 = bitcast float %2567 to i32
  %2576 = sitofp i32 %2575 to float
  %2577 = fadd fast float %2576, 0xC1CFBF8940000000
  %2578 = fmul fast float %2577, %2565
  %2579 = fadd fast float %2578, 0x41CFBF8940000000
  %2580 = fptosi float %2579 to i32
  %2581 = bitcast i32 %2580 to float
  %2582 = fmul fast float %2574, %2562
  %2583 = fmul fast float %2581, %2562
  %2584 = fsub fast float %2567, %2582
  %2585 = fadd fast float %2583, %2567
  %2586 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2587 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2588 = fsub fast float %2556, %2586
  %2589 = fsub fast float %2587, %2586
  %2590 = bitcast float %2589 to i32
  %2591 = sub nsw i32 2129859010, %2590
  %2592 = bitcast i32 %2591 to float
  %2593 = fmul fast float %2592, %2588
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  br label %2595

; <label>:2595                                    ; preds = %2549, %2543
  %2596 = phi float [ %2594, %2549 ], [ %2544, %2543 ]
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = and i32 %2598, 128
  %2600 = icmp eq i32 %2599, 0
  br i1 %2600, label %2617, label %2601

; <label>:2601                                    ; preds = %2595
  %2602 = add i32 %62, 416
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %2604, 0
  %2606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2606, %dx.types.Handle %108, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 524288
  %2612 = icmp ne i32 %2611, 0
  %2613 = fcmp fast ogt float %2608, 0x3FE0101020000000
  %2614 = select i1 %2613, float 1.000000e+00, float 0.000000e+00
  %2615 = select i1 %2612, float %2614, float %2608
  %2616 = fmul fast float %2615, %2596
  br label %2617

; <label>:2617                                    ; preds = %2601, %2595
  %2618 = phi float [ %2616, %2601 ], [ %2596, %2595 ]
  %2619 = fcmp fast ult float %2618, 0x3F70101020000000
  br i1 %2619, label %3358, label %2620

; <label>:2620                                    ; preds = %2617
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 16
  %2624 = icmp eq i32 %2623, 0
  br i1 %2624, label %2823, label %2625

; <label>:2625                                    ; preds = %2620
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = add i32 %62, 368
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %107, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = extractvalue %dx.types.ResRet.f32 %2633, 3
  %2638 = and i32 %2627, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = lshr i32 %2627, 8
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = fmul fast float %2637, %2639
  %2644 = fadd fast float %2643, %2642
  %2645 = fmul fast float %2644, 0x3F70101000000000
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 512
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2658, label %2650

; <label>:2650                                    ; preds = %2625
  %2651 = add i32 %62, 448
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %108, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  br label %2658

; <label>:2658                                    ; preds = %2650, %2625
  %2659 = phi float [ %2657, %2650 ], [ 1.000000e+00, %2625 ]
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 33554432
  %2663 = icmp eq i32 %2662, 0
  br i1 %2663, label %2770, label %2664

; <label>:2664                                    ; preds = %2658
  %2665 = add i32 %62, 256
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = and i32 %2667, 65535
  %2669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2668)  ; LegacyF16ToF32(value)
  %2670 = lshr i32 %2667, 16
  %2671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2670)  ; LegacyF16ToF32(value)
  %2672 = add i32 %62, 260
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 65535
  %2676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2675)  ; LegacyF16ToF32(value)
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = lshr i32 %2678, 24
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2680, 0x3F70101020000000
  %2682 = and i32 %2678, 255
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = lshr i32 %2678, 8
  %2686 = and i32 %2685, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = fmul fast float %2687, 0x3F70101020000000
  %2689 = lshr i32 %2678, 16
  %2690 = and i32 %2689, 255
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2691, 0x3F70101020000000
  %2693 = add i32 %62, 252
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = lshr i32 %2695, 24
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2697, 0x3F70101020000000
  %2699 = and i32 %2695, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = lshr i32 %2695, 8
  %2703 = and i32 %2702, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2704, 0x3F70101020000000
  %2706 = lshr i32 %2695, 16
  %2707 = and i32 %2706, 255
  %2708 = uitofp i32 %2707 to float
  %2709 = fmul fast float %2708, 0x3F70101020000000
  %2710 = bitcast float %2634 to i32
  %2711 = ashr i32 %2710, 1
  %2712 = sub nsw i32 1597463174, %2711
  %2713 = bitcast i32 %2712 to float
  %2714 = fmul fast float %2634, 5.000000e-01
  %2715 = fmul fast float %2713, %2713
  %2716 = fmul fast float %2715, %2714
  %2717 = fsub fast float 1.500000e+00, %2716
  %2718 = fmul fast float %2713, %2634
  %2719 = fmul fast float %2718, %2717
  %2720 = bitcast float %2635 to i32
  %2721 = ashr i32 %2720, 1
  %2722 = sub nsw i32 1597463174, %2721
  %2723 = bitcast i32 %2722 to float
  %2724 = fmul fast float %2635, 5.000000e-01
  %2725 = fmul fast float %2723, %2723
  %2726 = fmul fast float %2725, %2724
  %2727 = fsub fast float 1.500000e+00, %2726
  %2728 = fmul fast float %2723, %2635
  %2729 = fmul fast float %2728, %2727
  %2730 = bitcast float %2636 to i32
  %2731 = ashr i32 %2730, 1
  %2732 = sub nsw i32 1597463174, %2731
  %2733 = bitcast i32 %2732 to float
  %2734 = fmul fast float %2636, 5.000000e-01
  %2735 = fmul fast float %2733, %2733
  %2736 = fmul fast float %2735, %2734
  %2737 = fsub fast float 1.500000e+00, %2736
  %2738 = fmul fast float %2733, %2636
  %2739 = fmul fast float %2738, %2737
  %2740 = fsub fast float %2719, %2701
  %2741 = fsub fast float %2729, %2705
  %2742 = fsub fast float %2739, %2709
  %2743 = fmul fast float %2740, %2669
  %2744 = fmul fast float %2741, %2671
  %2745 = fmul fast float %2742, %2676
  %2746 = fadd fast float %2743, %2684
  %2747 = fadd fast float %2744, %2688
  %2748 = fadd fast float %2745, %2692
  %2749 = call float @dx.op.unary.f32(i32 7, float %2746)  ; Saturate(value)
  %2750 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2751 = call float @dx.op.unary.f32(i32 7, float %2748)  ; Saturate(value)
  %2752 = fmul fast float %2749, %2749
  %2753 = fmul fast float %2750, %2750
  %2754 = fmul fast float %2751, %2751
  %2755 = fsub fast float %2752, %2634
  %2756 = fsub fast float %2753, %2635
  %2757 = fsub fast float %2754, %2636
  %2758 = fmul fast float %2755, %2659
  %2759 = fmul fast float %2756, %2659
  %2760 = fmul fast float %2757, %2659
  %2761 = fadd fast float %2758, %2634
  %2762 = fadd fast float %2759, %2635
  %2763 = fadd fast float %2760, %2636
  %2764 = fadd fast float %2681, %2645
  %2765 = fsub fast float %2764, %2698
  %2766 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2767 = fsub fast float %2766, %2645
  %2768 = fmul fast float %2767, %2659
  %2769 = fadd fast float %2768, %2645
  br label %2823

; <label>:2770                                    ; preds = %2658
  %2771 = and i32 %2661, 134217728
  %2772 = icmp eq i32 %2771, 0
  br i1 %2772, label %2807, label %2773

; <label>:2773                                    ; preds = %2770
  %2774 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2775 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2776 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2777 = fadd fast float %2774, -5.000000e-01
  %2778 = fadd fast float %2775, -5.000000e-01
  %2779 = fadd fast float %2776, -5.000000e-01
  %2780 = fmul fast float %2777, %2659
  %2781 = fmul fast float %2778, %2659
  %2782 = fmul fast float %2779, %2659
  %2783 = fadd fast float %2780, 5.000000e-01
  %2784 = fadd fast float %2781, 5.000000e-01
  %2785 = fadd fast float %2782, 5.000000e-01
  %2786 = call float @dx.op.unary.f32(i32 24, float %2634)  ; Sqrt(value)
  %2787 = call float @dx.op.unary.f32(i32 24, float %2635)  ; Sqrt(value)
  %2788 = call float @dx.op.unary.f32(i32 24, float %2636)  ; Sqrt(value)
  %2789 = fmul fast float %2783, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2786
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2786
  %2794 = fmul fast float %2784, 2.000000e+00
  %2795 = fsub fast float 1.000000e+00, %2794
  %2796 = fmul fast float %2795, %2787
  %2797 = fadd fast float %2796, %2794
  %2798 = fmul fast float %2797, %2787
  %2799 = fmul fast float %2785, 2.000000e+00
  %2800 = fsub fast float 1.000000e+00, %2799
  %2801 = fmul fast float %2800, %2788
  %2802 = fadd fast float %2801, %2799
  %2803 = fmul fast float %2802, %2788
  %2804 = fmul fast float %2793, %2793
  %2805 = fmul fast float %2798, %2798
  %2806 = fmul fast float %2803, %2803
  br label %2823

; <label>:2807                                    ; preds = %2770
  %2808 = fmul fast float %345, %345
  %2809 = fmul fast float %349, %349
  %2810 = fmul fast float %353, %353
  %2811 = fadd fast float %2808, -1.000000e+00
  %2812 = fadd fast float %2809, -1.000000e+00
  %2813 = fadd fast float %2810, -1.000000e+00
  %2814 = fmul fast float %2659, %2811
  %2815 = fmul fast float %2659, %2812
  %2816 = fmul fast float %2659, %2813
  %2817 = fadd fast float %2814, 1.000000e+00
  %2818 = fadd fast float %2815, 1.000000e+00
  %2819 = fadd fast float %2816, 1.000000e+00
  %2820 = fmul fast float %2817, %2634
  %2821 = fmul fast float %2818, %2635
  %2822 = fmul fast float %2819, %2636
  br label %2823

; <label>:2823                                    ; preds = %2807, %2773, %2664, %2620
  %2824 = phi float [ %2769, %2664 ], [ %2645, %2773 ], [ %2645, %2807 ], [ 0x3FA23C0BE0000000, %2620 ]
  %2825 = phi float [ %2761, %2664 ], [ %2804, %2773 ], [ %2820, %2807 ], [ 1.000000e+00, %2620 ]
  %2826 = phi float [ %2762, %2664 ], [ %2805, %2773 ], [ %2821, %2807 ], [ 1.000000e+00, %2620 ]
  %2827 = phi float [ %2763, %2664 ], [ %2806, %2773 ], [ %2822, %2807 ], [ 1.000000e+00, %2620 ]
  %2828 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.i32 %2828, 1
  %2830 = and i32 %2829, 1
  %2831 = icmp ne i32 %2830, 0
  %2832 = add i32 %62, 356
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = and i32 %2834, 32
  %2836 = icmp ne i32 %2835, 0
  %2837 = and i1 %2831, %2836
  %2838 = select i1 %2837, float 1.000000e+00, float %2825
  %2839 = select i1 %2837, float 0x3FD3333340000000, float %2826
  %2840 = select i1 %2837, float 0x3FD3333340000000, float %2827
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 32
  %2844 = icmp eq i32 %2843, 0
  br i1 %2844, label %2917, label %2845

; <label>:2845                                    ; preds = %2823
  %2846 = add i32 %62, 124
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %62, 384
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = add i32 %2851, 0
  %2853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2853, %dx.types.Handle %107, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2855 = extractvalue %dx.types.ResRet.f32 %2854, 0
  %2856 = extractvalue %dx.types.ResRet.f32 %2854, 1
  %2857 = extractvalue %dx.types.ResRet.f32 %2854, 2
  %2858 = extractvalue %dx.types.ResRet.f32 %2854, 3
  %2859 = and i32 %2848, 255
  %2860 = uitofp i32 %2859 to float
  %2861 = lshr i32 %2848, 8
  %2862 = and i32 %2861, 255
  %2863 = uitofp i32 %2862 to float
  %2864 = lshr i32 %2848, 16
  %2865 = and i32 %2864, 255
  %2866 = uitofp i32 %2865 to float
  %2867 = fmul fast float %2866, 0x3F70101000000000
  %2868 = fmul fast float %2855, %2860
  %2869 = fadd fast float %2868, %2863
  %2870 = fmul fast float %2869, 0x3F70101000000000
  %2871 = fadd fast float %2856, -5.000000e-01
  %2872 = fadd fast float %2858, -5.000000e-01
  %2873 = fmul fast float %2871, %2867
  %2874 = fmul fast float %2872, %2867
  %2875 = fadd fast float %2873, 5.000000e-01
  %2876 = fadd fast float %2874, 5.000000e-01
  %2877 = fmul fast float %2875, 2.000000e+00
  %2878 = fadd fast float %2877, -1.000000e+00
  %2879 = fmul fast float %2876, 2.000000e+00
  %2880 = fadd fast float %2879, -1.000000e+00
  %2881 = fadd fast float %2878, %2880
  %2882 = fmul fast float %2881, 5.000000e-01
  %2883 = fsub fast float %2878, %2880
  %2884 = fmul fast float %2883, 5.000000e-01
  %2885 = call float @dx.op.unary.f32(i32 6, float %2882)  ; FAbs(value)
  %2886 = fsub fast float 1.000000e+00, %2885
  %2887 = call float @dx.op.unary.f32(i32 6, float %2884)  ; FAbs(value)
  %2888 = fsub fast float %2886, %2887
  %2889 = call float @dx.op.dot3.f32(i32 55, float %2882, float %2884, float %2888, float %2882, float %2884, float %2888)  ; Dot3(ax,ay,az,bx,by,bz)
  %2890 = call float @dx.op.unary.f32(i32 25, float %2889)  ; Rsqrt(value)
  %2891 = fmul fast float %2882, %2890
  %2892 = fmul fast float %2884, %2890
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 67108864
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2913, label %2897

; <label>:2897                                    ; preds = %2845
  %2898 = add i32 %62, 312
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = and i32 %2900, 65535
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 65535
  %2906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2905)  ; LegacyF16ToF32(value)
  %2907 = lshr i32 %2900, 16
  %2908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2907)  ; LegacyF16ToF32(value)
  %2909 = fsub fast float %2870, %2908
  %2910 = fmul fast float %2909, %2902
  %2911 = fadd fast float %2910, %2906
  %2912 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  br label %2913

; <label>:2913                                    ; preds = %2897, %2845
  %2914 = phi float [ %2912, %2897 ], [ %2870, %2845 ]
  %2915 = call float @dx.op.dot2.f32(i32 54, float %2891, float %2892, float %2334, float %2335)  ; Dot2(ax,ay,bx,by)
  %2916 = call float @dx.op.dot2.f32(i32 54, float %2891, float %2892, float %2336, float %2337)  ; Dot2(ax,ay,bx,by)
  br label %2917

; <label>:2917                                    ; preds = %2913, %2823
  %2918 = phi float [ %2914, %2913 ], [ 0x3FD6666660000000, %2823 ]
  %2919 = phi float [ %2915, %2913 ], [ 0.000000e+00, %2823 ]
  %2920 = phi float [ %2916, %2913 ], [ 0.000000e+00, %2823 ]
  %2921 = phi float [ %2857, %2913 ], [ 1.000000e+00, %2823 ]
  %2922 = add i32 %62, 192
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 22
  %2926 = shl nuw nsw i32 %2925, 5
  %2927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2926)  ; LegacyF16ToF32(value)
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 64
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2965, label %2932

; <label>:2932                                    ; preds = %2917
  %2933 = add i32 %62, 400
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = add i32 %2935, 0
  %2937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 131072
  %2941 = icmp eq i32 %2940, 0
  %2942 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2937, %dx.types.Handle %107, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = fmul fast float %2943, %333
  %2947 = fmul fast float %2944, %336
  %2948 = fmul fast float %2945, %339
  br i1 %2941, label %2955, label %2949

; <label>:2949                                    ; preds = %2932
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = fmul fast float %2951, %2946
  %2953 = fmul fast float %2951, %2947
  %2954 = fmul fast float %2951, %2948
  br label %2955

; <label>:2955                                    ; preds = %2949, %2932
  %2956 = phi float [ %2952, %2949 ], [ %2946, %2932 ]
  %2957 = phi float [ %2953, %2949 ], [ %2947, %2932 ]
  %2958 = phi float [ %2954, %2949 ], [ %2948, %2932 ]
  %2959 = fmul fast float %2956, %2927
  %2960 = select i1 %232, float %2959, float %2956
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2960, float %2957, float %2958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = select i1 %232, float 0.000000e+00, float %2956
  %2963 = select i1 %232, float %2961, float %2957
  %2964 = select i1 %232, float 0.000000e+00, float %2958
  br label %2965

; <label>:2965                                    ; preds = %2955, %2917
  %2966 = phi float [ %2962, %2955 ], [ 0.000000e+00, %2917 ]
  %2967 = phi float [ %2963, %2955 ], [ 0.000000e+00, %2917 ]
  %2968 = phi float [ %2964, %2955 ], [ 0.000000e+00, %2917 ]
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 1024
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %3003, label %2973

; <label>:2973                                    ; preds = %2965
  %2974 = add i32 %62, 184
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = lshr i32 %2976, 8
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = lshr i32 %2976, 16
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = fmul fast float %2979, %2979
  %2989 = fmul fast float %2983, %2983
  %2990 = fmul fast float %2987, %2987
  %2991 = add i32 %62, 464
  %2992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2991, i32 undef)  ; BufferLoad(srv,index,wot)
  %2993 = extractvalue %dx.types.ResRet.i32 %2992, 0
  %2994 = add i32 %2993, 0
  %2995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2995, %dx.types.Handle %108, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.f32 %2996, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2996, 2
  %3000 = fmul fast float %2988, %2997
  %3001 = fmul fast float %2989, %2998
  %3002 = fmul fast float %2990, %2999
  br label %3003

; <label>:3003                                    ; preds = %2973, %2965
  %3004 = phi float [ %3000, %2973 ], [ 0.000000e+00, %2965 ]
  %3005 = phi float [ %3001, %2973 ], [ 0.000000e+00, %2965 ]
  %3006 = phi float [ %3002, %2973 ], [ 0.000000e+00, %2965 ]
  %3007 = fcmp fast ogt float %3004, 0.000000e+00
  %3008 = fcmp fast ogt float %3005, 0.000000e+00
  %3009 = fcmp fast ogt float %3006, 0.000000e+00
  %3010 = call float @dx.op.unary.f32(i32 23, float %3004)  ; Log(value)
  %3011 = call float @dx.op.unary.f32(i32 23, float %3005)  ; Log(value)
  %3012 = call float @dx.op.unary.f32(i32 23, float %3006)  ; Log(value)
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = lshr i32 %3014, 7
  %3016 = and i32 %3015, 32752
  %3017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3016)  ; LegacyF16ToF32(value)
  %3018 = fmul fast float %3010, 0xBFE62E4300000000
  %3019 = fmul fast float %3018, %3017
  %3020 = fmul fast float %3011, 0xBFE62E4300000000
  %3021 = fmul fast float %3020, %3017
  %3022 = fmul fast float %3012, 0xBFE62E4300000000
  %3023 = fmul fast float %3022, %3017
  %3024 = select i1 %3007, float %3019, float 1.270000e+02
  %3025 = select i1 %3008, float %3021, float 1.270000e+02
  %3026 = select i1 %3009, float %3023, float 1.270000e+02
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 10240
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3075, label %3031

; <label>:3031                                    ; preds = %3003
  %3032 = add i32 %62, 480
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3032, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %3034, 0
  %3036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3036, %dx.types.Handle %108, float %2430, float %2431, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3037, 3
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 1048576
  %3043 = icmp ne i32 %3042, 0
  %3044 = and i32 %3041, 8192
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3061, label %3046

; <label>:3046                                    ; preds = %3031
  %3047 = extractvalue %dx.types.ResRet.f32 %3037, 2
  %3048 = select i1 %3043, float %3047, float %3038
  %3049 = extractvalue %dx.types.ResRet.f32 %3037, 0
  %3050 = select i1 %3043, float %3049, float %3038
  %3051 = add i32 %62, 128
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = lshr i32 %3053, 16
  %3055 = and i32 %3054, 255
  %3056 = uitofp i32 %3055 to float
  %3057 = fmul fast float %3056, 0x3F80101020000000
  %3058 = fmul fast float %3057, %3050
  %3059 = fmul fast float %3057, %3038
  %3060 = fmul fast float %3057, %3048
  br label %3061

; <label>:3061                                    ; preds = %3046, %3031
  %3062 = phi float [ %3058, %3046 ], [ 0.000000e+00, %3031 ]
  %3063 = phi float [ %3059, %3046 ], [ 0.000000e+00, %3031 ]
  %3064 = phi float [ %3060, %3046 ], [ 0.000000e+00, %3031 ]
  %3065 = and i32 %3041, 2048
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3075, label %3067

; <label>:3067                                    ; preds = %3061
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = shl i32 %3069, 4
  %3071 = and i32 %3070, 32752
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = fmul fast float %3072, %3039
  %3074 = call float @dx.op.binary.f32(i32 35, float %3073, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3075

; <label>:3075                                    ; preds = %3067, %3061, %3003
  %3076 = phi float [ %3062, %3067 ], [ %3062, %3061 ], [ 0.000000e+00, %3003 ]
  %3077 = phi float [ %3063, %3067 ], [ %3063, %3061 ], [ 0.000000e+00, %3003 ]
  %3078 = phi float [ %3064, %3067 ], [ %3064, %3061 ], [ 0.000000e+00, %3003 ]
  %3079 = phi float [ %3074, %3067 ], [ 0x3F70101020000000, %3061 ], [ 0x3F70101020000000, %3003 ]
  %3080 = add i32 %62, 128
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 255
  %3084 = uitofp i32 %3083 to float
  %3085 = lshr i32 %3082, 8
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = call float @dx.op.dot3.f32(i32 55, float %2838, float %2839, float %2840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3089 = fmul fast float %3087, %3088
  %3090 = fadd fast float %3089, %3084
  %3091 = fmul fast float %3090, 0x3F70101020000000
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  br i1 %2322, label %3093, label %3128

; <label>:3093                                    ; preds = %3075
  %3094 = fmul fast float %3079, 2.000000e+00
  %3095 = fcmp fast olt float %3024, 1.270000e+02
  %3096 = fcmp fast olt float %3025, 1.270000e+02
  %3097 = fcmp fast olt float %3026, 1.270000e+02
  %3098 = fmul fast float %3024, 0xBFF7154760000000
  %3099 = fmul fast float %3098, %3094
  %3100 = fmul fast float %3025, 0xBFF7154760000000
  %3101 = fmul fast float %3100, %3094
  %3102 = fmul fast float %3026, 0xBFF7154760000000
  %3103 = fmul fast float %3102, %3094
  %3104 = call float @dx.op.unary.f32(i32 21, float %3099)  ; Exp(value)
  %3105 = call float @dx.op.unary.f32(i32 21, float %3101)  ; Exp(value)
  %3106 = call float @dx.op.unary.f32(i32 21, float %3103)  ; Exp(value)
  %3107 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  %3108 = call float @dx.op.unary.f32(i32 7, float %3105)  ; Saturate(value)
  %3109 = call float @dx.op.unary.f32(i32 7, float %3106)  ; Saturate(value)
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = select i1 %3095, float %3110, float -1.000000e+00
  %3112 = fadd fast float %3108, -1.000000e+00
  %3113 = select i1 %3096, float %3112, float -1.000000e+00
  %3114 = fadd fast float %3109, -1.000000e+00
  %3115 = select i1 %3097, float %3114, float -1.000000e+00
  %3116 = fmul fast float %3111, %2618
  %3117 = fmul fast float %3113, %2618
  %3118 = fmul fast float %3115, %2618
  %3119 = fadd fast float %3116, 1.000000e+00
  %3120 = fadd fast float %3117, 1.000000e+00
  %3121 = fadd fast float %3118, 1.000000e+00
  %3122 = fmul fast float %3119, %2304
  %3123 = fmul fast float %3120, %2305
  %3124 = fmul fast float %3121, %2306
  %3125 = fmul fast float %3119, %2307
  %3126 = fmul fast float %3120, %2308
  %3127 = fmul fast float %3121, %2309
  br label %3128

; <label>:3128                                    ; preds = %3093, %3075
  %3129 = phi float [ %3122, %3093 ], [ %2304, %3075 ]
  %3130 = phi float [ %3123, %3093 ], [ %2305, %3075 ]
  %3131 = phi float [ %3124, %3093 ], [ %2306, %3075 ]
  %3132 = phi float [ %3125, %3093 ], [ %2307, %3075 ]
  %3133 = phi float [ %3126, %3093 ], [ %2308, %3075 ]
  %3134 = phi float [ %3127, %3093 ], [ %2309, %3075 ]
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 3
  %3138 = icmp eq i32 %3137, 3
  br i1 %3138, label %3217, label %3139

; <label>:3139                                    ; preds = %3128
  %3140 = and i32 %3136, 16
  %3141 = icmp ne i32 %3140, 0
  %3142 = select i1 %3141, float %2618, float 0.000000e+00
  %3143 = icmp eq i32 %3137, 0
  br i1 %3143, label %3144, label %3172

; <label>:3144                                    ; preds = %3139
  %3145 = and i32 %3136, 64
  %3146 = icmp ne i32 %3145, 0
  %3147 = select i1 %3146, float %2618, float 0.000000e+00
  %3148 = fsub fast float %2838, %3129
  %3149 = fsub fast float %2839, %3130
  %3150 = fsub fast float %2840, %3131
  %3151 = fmul fast float %3142, %3148
  %3152 = fmul fast float %3142, %3149
  %3153 = fmul fast float %3142, %3150
  %3154 = fadd fast float %3151, %3129
  %3155 = fadd fast float %3152, %3130
  %3156 = fadd fast float %3153, %3131
  %3157 = fsub fast float %2824, %2316
  %3158 = fmul fast float %3142, %3157
  %3159 = fadd fast float %3158, %2316
  %3160 = fsub fast float %2966, %3132
  %3161 = fsub fast float %2967, %3133
  %3162 = fsub fast float %2968, %3134
  %3163 = fmul fast float %3147, %3160
  %3164 = fmul fast float %3147, %3161
  %3165 = fmul fast float %3147, %3162
  %3166 = fadd fast float %3163, %3132
  %3167 = fadd fast float %3164, %3133
  %3168 = fadd fast float %3165, %3134
  %3169 = fsub fast float %3092, %2320
  %3170 = fmul fast float %3142, %3169
  %3171 = fadd fast float %3170, %2320
  br label %3217

; <label>:3172                                    ; preds = %3139
  %3173 = icmp eq i32 %3137, 1
  br i1 %3173, label %3174, label %3187

; <label>:3174                                    ; preds = %3172
  %3175 = fadd fast float %2838, -1.000000e+00
  %3176 = fadd fast float %2839, -1.000000e+00
  %3177 = fadd fast float %2840, -1.000000e+00
  %3178 = fmul fast float %3142, %3175
  %3179 = fmul fast float %3142, %3176
  %3180 = fmul fast float %3142, %3177
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fadd fast float %3179, 1.000000e+00
  %3183 = fadd fast float %3180, 1.000000e+00
  %3184 = fmul fast float %3181, %3129
  %3185 = fmul fast float %3182, %3130
  %3186 = fmul fast float %3183, %3131
  br label %3217

; <label>:3187                                    ; preds = %3172
  %3188 = icmp eq i32 %3137, 2
  br i1 %3188, label %3189, label %3217

; <label>:3189                                    ; preds = %3187
  %3190 = call float @dx.op.unary.f32(i32 24, float %2838)  ; Sqrt(value)
  %3191 = call float @dx.op.unary.f32(i32 24, float %2839)  ; Sqrt(value)
  %3192 = call float @dx.op.unary.f32(i32 24, float %2840)  ; Sqrt(value)
  %3193 = fadd fast float %3190, -5.000000e-01
  %3194 = fadd fast float %3191, -5.000000e-01
  %3195 = fadd fast float %3192, -5.000000e-01
  %3196 = fmul fast float %3193, %3142
  %3197 = fmul fast float %3194, %3142
  %3198 = fmul fast float %3195, %3142
  %3199 = fadd fast float %3196, 5.000000e-01
  %3200 = fadd fast float %3197, 5.000000e-01
  %3201 = fadd fast float %3198, 5.000000e-01
  %3202 = fmul fast float %3199, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3129
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3129
  %3207 = fmul fast float %3200, 2.000000e+00
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3208, %3130
  %3210 = fadd fast float %3209, %3207
  %3211 = fmul fast float %3210, %3130
  %3212 = fmul fast float %3201, 2.000000e+00
  %3213 = fsub fast float 1.000000e+00, %3212
  %3214 = fmul fast float %3213, %3131
  %3215 = fadd fast float %3214, %3212
  %3216 = fmul fast float %3215, %3131
  br label %3217

; <label>:3217                                    ; preds = %3189, %3187, %3174, %3144, %3128
  %3218 = phi float [ %3129, %3128 ], [ %3206, %3189 ], [ %3129, %3187 ], [ %3184, %3174 ], [ %3154, %3144 ]
  %3219 = phi float [ %3130, %3128 ], [ %3211, %3189 ], [ %3130, %3187 ], [ %3185, %3174 ], [ %3155, %3144 ]
  %3220 = phi float [ %3131, %3128 ], [ %3216, %3189 ], [ %3131, %3187 ], [ %3186, %3174 ], [ %3156, %3144 ]
  %3221 = phi float [ %3132, %3128 ], [ %3132, %3189 ], [ %3132, %3187 ], [ %3132, %3174 ], [ %3166, %3144 ]
  %3222 = phi float [ %3133, %3128 ], [ %3133, %3189 ], [ %3133, %3187 ], [ %3133, %3174 ], [ %3167, %3144 ]
  %3223 = phi float [ %3134, %3128 ], [ %3134, %3189 ], [ %3134, %3187 ], [ %3134, %3174 ], [ %3168, %3144 ]
  %3224 = phi float [ %2316, %3128 ], [ %2316, %3189 ], [ %2316, %3187 ], [ %2316, %3174 ], [ %3159, %3144 ]
  %3225 = phi float [ %2320, %3128 ], [ %2320, %3189 ], [ %2320, %3187 ], [ %2320, %3174 ], [ %3171, %3144 ]
  %3226 = and i32 %3136, 12
  %3227 = icmp eq i32 %3226, 12
  br i1 %3227, label %3358, label %3228

; <label>:3228                                    ; preds = %3217
  %3229 = and i32 %3136, 2097184
  %3230 = icmp eq i32 %3229, 2097184
  %3231 = select i1 %3230, float %2618, float 0.000000e+00
  %3232 = and i32 %3136, 4194336
  %3233 = icmp eq i32 %3232, 4194336
  %3234 = select i1 %3233, float %2618, float 0.000000e+00
  %3235 = and i32 %3136, 8388640
  %3236 = icmp eq i32 %3235, 8388640
  %3237 = select i1 %3236, float %2618, float 0.000000e+00
  %3238 = and i32 %3136, 1024
  %3239 = icmp ne i32 %3238, 0
  %3240 = select i1 %3239, float %2618, float 0.000000e+00
  %3241 = and i32 %3136, 2048
  %3242 = icmp ne i32 %3241, 0
  %3243 = select i1 %3242, float %2618, float 0.000000e+00
  %3244 = and i32 %3136, 8192
  %3245 = icmp ne i32 %3244, 0
  %3246 = select i1 %3245, float %2618, float 0.000000e+00
  %3247 = icmp eq i32 %3226, 0
  br i1 %3247, label %3248, label %3282

; <label>:3248                                    ; preds = %3228
  %3249 = fsub fast float %2919, %2302
  %3250 = fsub fast float %2920, %2303
  %3251 = fmul fast float %3231, %3249
  %3252 = fmul fast float %3231, %3250
  %3253 = fadd fast float %3251, %2302
  %3254 = fadd fast float %3252, %2303
  %3255 = fsub fast float %2921, %2318
  %3256 = fmul fast float %3234, %3255
  %3257 = fadd fast float %3256, %2318
  %3258 = fsub fast float %2918, %2317
  %3259 = fmul fast float %3237, %3258
  %3260 = fadd fast float %3259, %2317
  %3261 = fsub fast float %3024, %2313
  %3262 = fsub fast float %3025, %2314
  %3263 = fsub fast float %3026, %2315
  %3264 = fmul fast float %3240, %3261
  %3265 = fmul fast float %3240, %3262
  %3266 = fmul fast float %3240, %3263
  %3267 = fadd fast float %3264, %2313
  %3268 = fadd fast float %3265, %2314
  %3269 = fadd fast float %3266, %2315
  %3270 = fsub fast float %3079, %2319
  %3271 = fmul fast float %3243, %3270
  %3272 = fadd fast float %3271, %2319
  %3273 = fsub fast float %3076, %2310
  %3274 = fsub fast float %3077, %2311
  %3275 = fsub fast float %3078, %2312
  %3276 = fmul fast float %3246, %3273
  %3277 = fmul fast float %3246, %3274
  %3278 = fmul fast float %3246, %3275
  %3279 = fadd fast float %3276, %2310
  %3280 = fadd fast float %3277, %2311
  %3281 = fadd fast float %3278, %2312
  br label %3358

; <label>:3282                                    ; preds = %3228
  %3283 = icmp eq i32 %3226, 4
  br i1 %3283, label %3284, label %3330

; <label>:3284                                    ; preds = %3282
  %3285 = fmul fast float %3231, %2919
  %3286 = fmul fast float %3231, %2920
  %3287 = fadd fast float %3285, %2302
  %3288 = fadd fast float %3286, %2303
  %3289 = call float @dx.op.binary.f32(i32 36, float %2318, float %2921)  ; FMin(a,b)
  %3290 = fsub fast float %3289, %2318
  %3291 = fmul fast float %3290, %3234
  %3292 = fadd fast float %3291, %2318
  %3293 = fadd fast float %2918, %2317
  %3294 = fmul fast float %3293, 0x3FF337FAE0000000
  %3295 = fmul fast float %2317, %2317
  %3296 = fmul fast float %2918, %2918
  %3297 = fadd fast float %3296, %3295
  %3298 = fmul fast float %3297, 0x3FE5152B00000000
  %3299 = fmul fast float %2317, 0xBFCC1F85E0000000
  %3300 = fmul fast float %3299, %2918
  %3301 = fadd fast float %3300, 0xBFE1363700000000
  %3302 = fadd fast float %3301, %3294
  %3303 = fsub fast float %3302, %3298
  %3304 = fmul fast float %3293, 0x3FBA6F0D00000000
  %3305 = fmul fast float %3297, 0x3FD0432880000000
  %3306 = fmul fast float %2317, 0xBFEF110800000000
  %3307 = fmul fast float %3306, %2918
  %3308 = fadd fast float %3307, 1.000000e+00
  %3309 = fsub fast float %3308, %3304
  %3310 = fadd fast float %3309, %3305
  %3311 = fdiv fast float %3303, %3310
  %3312 = call float @dx.op.unary.f32(i32 7, float %3311)  ; Saturate(value)
  %3313 = fsub fast float %3312, %2317
  %3314 = fmul fast float %3313, %3237
  %3315 = fadd fast float %3314, %2317
  %3316 = fmul fast float %3240, %3024
  %3317 = fmul fast float %3240, %3025
  %3318 = fmul fast float %3240, %3026
  %3319 = fadd fast float %3316, %2313
  %3320 = fadd fast float %3317, %2314
  %3321 = fadd fast float %3318, %2315
  %3322 = fmul fast float %3243, %3079
  %3323 = fadd fast float %3322, %2319
  %3324 = fmul fast float %3246, %3076
  %3325 = fmul fast float %3246, %3077
  %3326 = fmul fast float %3246, %3078
  %3327 = fadd fast float %3324, %2310
  %3328 = fadd fast float %3325, %2311
  %3329 = fadd fast float %3326, %2312
  br label %3358

; <label>:3330                                    ; preds = %3282
  %3331 = icmp eq i32 %3226, 8
  br i1 %3331, label %3332, label %3358

; <label>:3332                                    ; preds = %3330
  %3333 = fmul fast float %3231, %2919
  %3334 = fmul fast float %3231, %2920
  %3335 = fadd fast float %3333, %2302
  %3336 = fadd fast float %3334, %2303
  %3337 = call float @dx.op.binary.f32(i32 36, float %2318, float %2921)  ; FMin(a,b)
  %3338 = fsub fast float %3337, %2318
  %3339 = fmul fast float %3338, %3234
  %3340 = fadd fast float %3339, %2318
  %3341 = fsub fast float %2918, %2317
  %3342 = fmul fast float %3237, %3341
  %3343 = fadd fast float %3342, %2317
  %3344 = fmul fast float %3240, %3024
  %3345 = fmul fast float %3240, %3025
  %3346 = fmul fast float %3240, %3026
  %3347 = fadd fast float %3344, %2313
  %3348 = fadd fast float %3345, %2314
  %3349 = fadd fast float %3346, %2315
  %3350 = fmul fast float %3243, %3079
  %3351 = fadd fast float %3350, %2319
  %3352 = fmul fast float %3246, %3076
  %3353 = fmul fast float %3246, %3077
  %3354 = fmul fast float %3246, %3078
  %3355 = fadd fast float %3352, %2310
  %3356 = fadd fast float %3353, %2311
  %3357 = fadd fast float %3354, %2312
  br label %3358

; <label>:3358                                    ; preds = %3332, %3330, %3284, %3248, %3217, %2617, %2321, %2301
  %3359 = phi float [ %2302, %3217 ], [ %2302, %2617 ], [ %2302, %2301 ], [ %3335, %3332 ], [ %2302, %3330 ], [ %3287, %3284 ], [ %3253, %3248 ], [ %2302, %2321 ]
  %3360 = phi float [ %2303, %3217 ], [ %2303, %2617 ], [ %2303, %2301 ], [ %3336, %3332 ], [ %2303, %3330 ], [ %3288, %3284 ], [ %3254, %3248 ], [ %2303, %2321 ]
  %3361 = phi float [ %3218, %3217 ], [ %2304, %2617 ], [ %2304, %2301 ], [ %3218, %3332 ], [ %3218, %3330 ], [ %3218, %3284 ], [ %3218, %3248 ], [ %2304, %2321 ]
  %3362 = phi float [ %3219, %3217 ], [ %2305, %2617 ], [ %2305, %2301 ], [ %3219, %3332 ], [ %3219, %3330 ], [ %3219, %3284 ], [ %3219, %3248 ], [ %2305, %2321 ]
  %3363 = phi float [ %3220, %3217 ], [ %2306, %2617 ], [ %2306, %2301 ], [ %3220, %3332 ], [ %3220, %3330 ], [ %3220, %3284 ], [ %3220, %3248 ], [ %2306, %2321 ]
  %3364 = phi float [ %3221, %3217 ], [ %2307, %2617 ], [ %2307, %2301 ], [ %3221, %3332 ], [ %3221, %3330 ], [ %3221, %3284 ], [ %3221, %3248 ], [ %2307, %2321 ]
  %3365 = phi float [ %3222, %3217 ], [ %2308, %2617 ], [ %2308, %2301 ], [ %3222, %3332 ], [ %3222, %3330 ], [ %3222, %3284 ], [ %3222, %3248 ], [ %2308, %2321 ]
  %3366 = phi float [ %3223, %3217 ], [ %2309, %2617 ], [ %2309, %2301 ], [ %3223, %3332 ], [ %3223, %3330 ], [ %3223, %3284 ], [ %3223, %3248 ], [ %2309, %2321 ]
  %3367 = phi float [ %2310, %3217 ], [ %2310, %2617 ], [ %2310, %2301 ], [ %3355, %3332 ], [ %2310, %3330 ], [ %3327, %3284 ], [ %3279, %3248 ], [ %2310, %2321 ]
  %3368 = phi float [ %2311, %3217 ], [ %2311, %2617 ], [ %2311, %2301 ], [ %3356, %3332 ], [ %2311, %3330 ], [ %3328, %3284 ], [ %3280, %3248 ], [ %2311, %2321 ]
  %3369 = phi float [ %2312, %3217 ], [ %2312, %2617 ], [ %2312, %2301 ], [ %3357, %3332 ], [ %2312, %3330 ], [ %3329, %3284 ], [ %3281, %3248 ], [ %2312, %2321 ]
  %3370 = phi float [ %2313, %3217 ], [ %2313, %2617 ], [ %2313, %2301 ], [ %3347, %3332 ], [ %2313, %3330 ], [ %3319, %3284 ], [ %3267, %3248 ], [ %2313, %2321 ]
  %3371 = phi float [ %2314, %3217 ], [ %2314, %2617 ], [ %2314, %2301 ], [ %3348, %3332 ], [ %2314, %3330 ], [ %3320, %3284 ], [ %3268, %3248 ], [ %2314, %2321 ]
  %3372 = phi float [ %2315, %3217 ], [ %2315, %2617 ], [ %2315, %2301 ], [ %3349, %3332 ], [ %2315, %3330 ], [ %3321, %3284 ], [ %3269, %3248 ], [ %2315, %2321 ]
  %3373 = phi float [ %3224, %3217 ], [ %2316, %2617 ], [ %2316, %2301 ], [ %3224, %3332 ], [ %3224, %3330 ], [ %3224, %3284 ], [ %3224, %3248 ], [ %2316, %2321 ]
  %3374 = phi float [ %2317, %3217 ], [ %2317, %2617 ], [ %2317, %2301 ], [ %3343, %3332 ], [ %2317, %3330 ], [ %3315, %3284 ], [ %3260, %3248 ], [ %2317, %2321 ]
  %3375 = phi float [ %2318, %3217 ], [ %2318, %2617 ], [ %2318, %2301 ], [ %3340, %3332 ], [ %2318, %3330 ], [ %3292, %3284 ], [ %3257, %3248 ], [ %2318, %2321 ]
  %3376 = phi float [ %2319, %3217 ], [ %2319, %2617 ], [ %2319, %2301 ], [ %3351, %3332 ], [ %2319, %3330 ], [ %3323, %3284 ], [ %3272, %3248 ], [ %2319, %2321 ]
  %3377 = phi float [ %3225, %3217 ], [ %2320, %2617 ], [ %2320, %2301 ], [ %3225, %3332 ], [ %3225, %3330 ], [ %3225, %3284 ], [ %3225, %3248 ], [ %2320, %2321 ]
  br i1 %420, label %4415, label %3378

; <label>:3378                                    ; preds = %3358
  %3379 = icmp ult i32 %474, 4
  %3380 = add i32 %62, 72
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %62, 76
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = or i32 %3385, %3382
  %3387 = icmp eq i32 %3386, 0
  br i1 %3387, label %4415, label %3388

; <label>:3388                                    ; preds = %3378
  %3389 = and i32 %3382, 262144
  %3390 = icmp ne i32 %3389, 0
  %3391 = select i1 %3390, float %65, float 1.000000e+00
  %3392 = select i1 %3390, float %66, float 0.000000e+00
  %3393 = select i1 %3390, float %67, float 0.000000e+00
  %3394 = select i1 %3390, float %68, float 1.000000e+00
  %3395 = select i1 %3390, float %69, float %90
  %3396 = select i1 %3390, float %70, float %91
  %3397 = add i32 %62, 332
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = lshr i32 %3399, 16
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = fmul fast float %3401, 0x3F50624DE0000000
  %3403 = add i32 %62, 136
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = lshr i32 %3405, 16
  %3407 = and i32 %3406, 255
  %3408 = lshr i32 %3405, 24
  %3409 = add i32 %62, 340
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 65535
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = lshr i32 %3411, 16
  %3415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3414)  ; LegacyF16ToF32(value)
  %3416 = add i32 %62, 80
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 22
  %3420 = shl nuw nsw i32 %3419, 5
  %3421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3420)  ; LegacyF16ToF32(value)
  %3422 = shl i32 %3418, 4
  %3423 = and i32 %3422, 32752
  %3424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3423)  ; LegacyF16ToF32(value)
  %3425 = lshr i32 %3418, 7
  %3426 = and i32 %3425, 32752
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 3
  %3430 = fmul fast float %3429, 1.000000e+03
  %3431 = fmul fast float %410, %3430
  %3432 = call float @dx.op.unary.f32(i32 22, float %3431)  ; Frc(value)
  %3433 = fadd fast float %3432, %400
  %3434 = fmul fast float %411, %3430
  %3435 = call float @dx.op.unary.f32(i32 22, float %3434)  ; Frc(value)
  %3436 = fadd fast float %3435, %402
  %3437 = fmul fast float %3402, %3430
  %3438 = call float @dx.op.unary.f32(i32 22, float %3437)  ; Frc(value)
  %3439 = fmul fast float %3438, 0x401921FB60000000
  %3440 = fadd fast float %3439, %3421
  %3441 = call float @dx.op.unary.f32(i32 13, float %3440)  ; Sin(value)
  %3442 = call float @dx.op.unary.f32(i32 12, float %3440)  ; Cos(value)
  %3443 = fsub fast float -0.000000e+00, %3441
  %3444 = fadd fast float %3395, -5.000000e-01
  %3445 = fadd fast float %3396, -5.000000e-01
  %3446 = fmul fast float %3413, %3444
  %3447 = fmul fast float %3415, %3445
  %3448 = fadd fast float %3446, 5.000000e-01
  %3449 = fadd fast float %3447, 5.000000e-01
  %3450 = fmul fast float %3424, %3448
  %3451 = fmul fast float %3427, %3449
  %3452 = fmul fast float %3442, %3450
  %3453 = call float @dx.op.tertiary.f32(i32 46, float %3443, float %3451, float %3452)  ; FMad(a,b,c)
  %3454 = fmul fast float %3441, %3450
  %3455 = call float @dx.op.tertiary.f32(i32 46, float %3442, float %3451, float %3454)  ; FMad(a,b,c)
  %3456 = fadd fast float %3433, %3453
  %3457 = fadd fast float %3436, %3455
  %3458 = icmp ugt i32 %3407, 1
  %3459 = icmp ugt i32 %3405, 33554431
  %3460 = or i1 %3459, %3458
  br i1 %3460, label %3461, label %3486

; <label>:3461                                    ; preds = %3388
  %3462 = add i32 %62, 276
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = lshr i32 %3464, 16
  %3466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3465)  ; LegacyF16ToF32(value)
  %3467 = fmul fast float %3429, %3466
  %3468 = call float @dx.op.unary.f32(i32 22, float %3467)  ; Frc(value)
  %3469 = mul nuw nsw i32 %3407, %3408
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3468, %3470
  %3472 = call float @dx.op.unary.f32(i32 27, float %3471)  ; Round_ni(value)
  %3473 = fptoui float %3472 to i32
  %3474 = urem i32 %3473, %3407
  %3475 = udiv i32 %3473, %3408
  %3476 = call float @dx.op.unary.f32(i32 22, float %3456)  ; Frc(value)
  %3477 = call float @dx.op.unary.f32(i32 22, float %3457)  ; Frc(value)
  %3478 = uitofp i32 %3474 to float
  %3479 = uitofp i32 %3475 to float
  %3480 = fadd fast float %3476, %3478
  %3481 = fadd fast float %3477, %3479
  %3482 = uitofp i32 %3407 to float
  %3483 = uitofp i32 %3408 to float
  %3484 = fdiv fast float %3480, %3482
  %3485 = fdiv fast float %3481, %3483
  br label %3486

; <label>:3486                                    ; preds = %3461, %3388
  %3487 = phi float [ %3484, %3461 ], [ %3456, %3388 ]
  %3488 = phi float [ %3485, %3461 ], [ %3457, %3388 ]
  %3489 = and i32 %3382, 16777216
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3600, label %3491

; <label>:3491                                    ; preds = %3486
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.CBufRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.CBufRet.f32 %3492, 2
  %3496 = fadd fast float %3493, %170
  %3497 = fadd fast float %3494, %171
  %3498 = fadd fast float %3495, %172
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = icmp eq i32 %63, 65535
  br i1 %3502, label %3597, label %3503

; <label>:3503                                    ; preds = %3491
  %3504 = lshr i32 %63, 1
  %3505 = shl i32 %3504, 2
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = and i32 %63, 1
  %3509 = icmp ne i32 %3508, 0
  %3510 = lshr i32 %3507, 16
  %3511 = and i32 %3507, 65535
  %3512 = select i1 %3509, i32 %3510, i32 %3511
  %3513 = icmp eq i32 %3512, 65535
  br i1 %3513, label %3593, label %3514

; <label>:3514                                    ; preds = %3503
  %3515 = mul nuw nsw i32 %3512, 40
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = add nuw nsw i32 %3515, 12
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = add nuw nsw i32 %3515, 24
  %3526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.ResRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.ResRet.f32 %3526, 2
  %3530 = add nuw nsw i32 %3515, 36
  %3531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = fsub fast float %3496, %3517
  %3534 = fsub fast float %3497, %3518
  %3535 = fsub fast float %3498, %3519
  %3536 = fmul fast float %3532, %3533
  %3537 = fmul fast float %3532, %3534
  %3538 = fmul fast float %3532, %3535
  %3539 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3540 = call float @dx.op.unary.f32(i32 27, float %3537)  ; Round_ni(value)
  %3541 = call float @dx.op.unary.f32(i32 27, float %3538)  ; Round_ni(value)
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = fadd fast float %3540, 5.000000e-01
  %3544 = fadd fast float %3541, 5.000000e-01
  %3545 = fmul fast float %3542, %3522
  %3546 = fmul fast float %3543, %3523
  %3547 = fmul fast float %3544, %3524
  %3548 = shl i32 %63, 2
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = add i32 %3550, 0
  %3552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3553 = call float @dx.op.unary.f32(i32 22, float %3545)  ; Frc(value)
  %3554 = call float @dx.op.unary.f32(i32 22, float %3546)  ; Frc(value)
  %3555 = call float @dx.op.unary.f32(i32 22, float %3547)  ; Frc(value)
  %3556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3552, %dx.types.Handle %55, float %3553, float %3554, float %3555, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = fmul fast float %3557, 1.023000e+03
  %3561 = fmul fast float %3558, 1.023000e+03
  %3562 = fmul fast float %3559, 1.023000e+03
  %3563 = fadd fast float %3560, 5.000000e-01
  %3564 = fadd fast float %3561, 5.000000e-01
  %3565 = fadd fast float %3562, 5.000000e-01
  %3566 = call float @dx.op.unary.f32(i32 27, float %3563)  ; Round_ni(value)
  %3567 = call float @dx.op.unary.f32(i32 27, float %3564)  ; Round_ni(value)
  %3568 = call float @dx.op.unary.f32(i32 27, float %3565)  ; Round_ni(value)
  %3569 = fsub fast float %3536, %3539
  %3570 = fsub fast float %3537, %3540
  %3571 = fsub fast float %3538, %3541
  %3572 = fmul fast float %3569, 7.500000e-01
  %3573 = fmul fast float %3570, 7.500000e-01
  %3574 = fmul fast float %3571, 7.500000e-01
  %3575 = fadd fast float %3539, 1.250000e-01
  %3576 = fadd fast float %3575, %3572
  %3577 = fadd fast float %3576, %3566
  %3578 = fadd fast float %3540, 1.250000e-01
  %3579 = fadd fast float %3578, %3573
  %3580 = fadd fast float %3579, %3567
  %3581 = fadd fast float %3541, 1.250000e-01
  %3582 = fadd fast float %3581, %3574
  %3583 = fadd fast float %3582, %3568
  %3584 = fmul fast float %3577, %3527
  %3585 = fmul fast float %3580, %3528
  %3586 = fmul fast float %3583, %3529
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = add i32 %3588, 0
  %3590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3590, %dx.types.Handle %53, float %3584, float %3585, float %3586, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  br label %3593

; <label>:3593                                    ; preds = %3514, %3503
  %3594 = phi float [ %3592, %3514 ], [ -1.000000e+00, %3503 ]
  %3595 = fadd fast float %3594, %3501
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  br label %3597

; <label>:3597                                    ; preds = %3593, %3491
  %3598 = phi float [ %3596, %3593 ], [ %3501, %3491 ]
  %3599 = fmul fast float %3598, %469
  br label %3600

; <label>:3600                                    ; preds = %3597, %3486
  %3601 = phi float [ %3599, %3597 ], [ %469, %3486 ]
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 256
  %3605 = icmp eq i32 %3604, 0
  br i1 %3605, label %3652, label %3606

; <label>:3606                                    ; preds = %3600
  %3607 = add i32 %62, 436
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = add i32 %3609, 0
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3611, %dx.types.Handle %108, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = add i32 %62, 148
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = shl i32 %3616, 4
  %3618 = and i32 %3617, 32752
  %3619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3618)  ; LegacyF16ToF32(value)
  %3620 = lshr i32 %3616, 7
  %3621 = and i32 %3620, 32752
  %3622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3621)  ; LegacyF16ToF32(value)
  %3623 = fsub fast float 1.000000e+00, %3601
  %3624 = call float @dx.op.binary.f32(i32 35, float %3623, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3625 = bitcast float %3601 to i32
  %3626 = sitofp i32 %3625 to float
  %3627 = fadd fast float %3626, 0xC1CFBF8940000000
  %3628 = fmul fast float %3622, %3627
  %3629 = fadd fast float %3628, 0x41CFBF8940000000
  %3630 = fptosi float %3629 to i32
  %3631 = bitcast i32 %3630 to float
  %3632 = bitcast float %3624 to i32
  %3633 = sitofp i32 %3632 to float
  %3634 = fadd fast float %3633, 0xC1CFBF8940000000
  %3635 = fmul fast float %3634, %3622
  %3636 = fadd fast float %3635, 0x41CFBF8940000000
  %3637 = fptosi float %3636 to i32
  %3638 = bitcast i32 %3637 to float
  %3639 = fmul fast float %3631, %3619
  %3640 = fmul fast float %3638, %3619
  %3641 = fsub fast float %3624, %3639
  %3642 = fadd fast float %3640, %3624
  %3643 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3644 = call float @dx.op.unary.f32(i32 7, float %3642)  ; Saturate(value)
  %3645 = fsub fast float %3613, %3643
  %3646 = fsub fast float %3644, %3643
  %3647 = bitcast float %3646 to i32
  %3648 = sub nsw i32 2129859010, %3647
  %3649 = bitcast i32 %3648 to float
  %3650 = fmul fast float %3649, %3645
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  br label %3652

; <label>:3652                                    ; preds = %3606, %3600
  %3653 = phi float [ %3651, %3606 ], [ %3601, %3600 ]
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = and i32 %3655, 128
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %3674, label %3658

; <label>:3658                                    ; preds = %3652
  %3659 = add i32 %62, 420
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = add i32 %3661, 0
  %3663 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3662, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3664 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3663, %dx.types.Handle %108, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3665 = extractvalue %dx.types.ResRet.f32 %3664, 0
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = and i32 %3667, 524288
  %3669 = icmp ne i32 %3668, 0
  %3670 = fcmp fast ogt float %3665, 0x3FE0101020000000
  %3671 = select i1 %3670, float 1.000000e+00, float 0.000000e+00
  %3672 = select i1 %3669, float %3671, float %3665
  %3673 = fmul fast float %3672, %3653
  br label %3674

; <label>:3674                                    ; preds = %3658, %3652
  %3675 = phi float [ %3673, %3658 ], [ %3653, %3652 ]
  %3676 = fcmp fast ult float %3675, 0x3F70101020000000
  br i1 %3676, label %4415, label %3677

; <label>:3677                                    ; preds = %3674
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = and i32 %3679, 16
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %3880, label %3682

; <label>:3682                                    ; preds = %3677
  %3683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.i32 %3683, 0
  %3685 = add i32 %62, 372
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3685, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = add i32 %3687, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3689, %dx.types.Handle %107, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.ResRet.f32 %3690, 3
  %3695 = and i32 %3684, 255
  %3696 = uitofp i32 %3695 to float
  %3697 = lshr i32 %3684, 8
  %3698 = and i32 %3697, 255
  %3699 = uitofp i32 %3698 to float
  %3700 = fmul fast float %3694, %3696
  %3701 = fadd fast float %3700, %3699
  %3702 = fmul fast float %3701, 0x3F70101000000000
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 512
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %3715, label %3707

; <label>:3707                                    ; preds = %3682
  %3708 = add i32 %62, 452
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = add i32 %3710, 0
  %3712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3711, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3713 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3712, %dx.types.Handle %108, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  br label %3715

; <label>:3715                                    ; preds = %3707, %3682
  %3716 = phi float [ %3714, %3707 ], [ 1.000000e+00, %3682 ]
  %3717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3718 = extractvalue %dx.types.ResRet.i32 %3717, 0
  %3719 = and i32 %3718, 33554432
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3827, label %3721

; <label>:3721                                    ; preds = %3715
  %3722 = add i32 %62, 272
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = and i32 %3724, 65535
  %3726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3725)  ; LegacyF16ToF32(value)
  %3727 = lshr i32 %3724, 16
  %3728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3727)  ; LegacyF16ToF32(value)
  %3729 = add i32 %62, 276
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 65535
  %3733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3732)  ; LegacyF16ToF32(value)
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = lshr i32 %3735, 24
  %3737 = uitofp i32 %3736 to float
  %3738 = fmul fast float %3737, 0x3F70101020000000
  %3739 = and i32 %3735, 255
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = lshr i32 %3735, 8
  %3743 = and i32 %3742, 255
  %3744 = uitofp i32 %3743 to float
  %3745 = fmul fast float %3744, 0x3F70101020000000
  %3746 = lshr i32 %3735, 16
  %3747 = and i32 %3746, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = fmul fast float %3748, 0x3F70101020000000
  %3750 = add i32 %62, 268
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = lshr i32 %3752, 24
  %3754 = uitofp i32 %3753 to float
  %3755 = fmul fast float %3754, 0x3F70101020000000
  %3756 = and i32 %3752, 255
  %3757 = uitofp i32 %3756 to float
  %3758 = fmul fast float %3757, 0x3F70101020000000
  %3759 = lshr i32 %3752, 8
  %3760 = and i32 %3759, 255
  %3761 = uitofp i32 %3760 to float
  %3762 = fmul fast float %3761, 0x3F70101020000000
  %3763 = lshr i32 %3752, 16
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = fmul fast float %3765, 0x3F70101020000000
  %3767 = bitcast float %3691 to i32
  %3768 = ashr i32 %3767, 1
  %3769 = sub nsw i32 1597463174, %3768
  %3770 = bitcast i32 %3769 to float
  %3771 = fmul fast float %3691, 5.000000e-01
  %3772 = fmul fast float %3770, %3770
  %3773 = fmul fast float %3772, %3771
  %3774 = fsub fast float 1.500000e+00, %3773
  %3775 = fmul fast float %3770, %3691
  %3776 = fmul fast float %3775, %3774
  %3777 = bitcast float %3692 to i32
  %3778 = ashr i32 %3777, 1
  %3779 = sub nsw i32 1597463174, %3778
  %3780 = bitcast i32 %3779 to float
  %3781 = fmul fast float %3692, 5.000000e-01
  %3782 = fmul fast float %3780, %3780
  %3783 = fmul fast float %3782, %3781
  %3784 = fsub fast float 1.500000e+00, %3783
  %3785 = fmul fast float %3780, %3692
  %3786 = fmul fast float %3785, %3784
  %3787 = bitcast float %3693 to i32
  %3788 = ashr i32 %3787, 1
  %3789 = sub nsw i32 1597463174, %3788
  %3790 = bitcast i32 %3789 to float
  %3791 = fmul fast float %3693, 5.000000e-01
  %3792 = fmul fast float %3790, %3790
  %3793 = fmul fast float %3792, %3791
  %3794 = fsub fast float 1.500000e+00, %3793
  %3795 = fmul fast float %3790, %3693
  %3796 = fmul fast float %3795, %3794
  %3797 = fsub fast float %3776, %3758
  %3798 = fsub fast float %3786, %3762
  %3799 = fsub fast float %3796, %3766
  %3800 = fmul fast float %3797, %3726
  %3801 = fmul fast float %3798, %3728
  %3802 = fmul fast float %3799, %3733
  %3803 = fadd fast float %3800, %3741
  %3804 = fadd fast float %3801, %3745
  %3805 = fadd fast float %3802, %3749
  %3806 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3807 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3808 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3809 = fmul fast float %3806, %3806
  %3810 = fmul fast float %3807, %3807
  %3811 = fmul fast float %3808, %3808
  %3812 = fsub fast float %3809, %3691
  %3813 = fsub fast float %3810, %3692
  %3814 = fsub fast float %3811, %3693
  %3815 = fmul fast float %3812, %3716
  %3816 = fmul fast float %3813, %3716
  %3817 = fmul fast float %3814, %3716
  %3818 = fadd fast float %3815, %3691
  %3819 = fadd fast float %3816, %3692
  %3820 = fadd fast float %3817, %3693
  %3821 = fadd fast float %3738, %3702
  %3822 = fsub fast float %3821, %3755
  %3823 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3824 = fsub fast float %3823, %3702
  %3825 = fmul fast float %3824, %3716
  %3826 = fadd fast float %3825, %3702
  br label %3880

; <label>:3827                                    ; preds = %3715
  %3828 = and i32 %3718, 134217728
  %3829 = icmp eq i32 %3828, 0
  br i1 %3829, label %3864, label %3830

; <label>:3830                                    ; preds = %3827
  %3831 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3832 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3833 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3834 = fadd fast float %3831, -5.000000e-01
  %3835 = fadd fast float %3832, -5.000000e-01
  %3836 = fadd fast float %3833, -5.000000e-01
  %3837 = fmul fast float %3834, %3716
  %3838 = fmul fast float %3835, %3716
  %3839 = fmul fast float %3836, %3716
  %3840 = fadd fast float %3837, 5.000000e-01
  %3841 = fadd fast float %3838, 5.000000e-01
  %3842 = fadd fast float %3839, 5.000000e-01
  %3843 = call float @dx.op.unary.f32(i32 24, float %3691)  ; Sqrt(value)
  %3844 = call float @dx.op.unary.f32(i32 24, float %3692)  ; Sqrt(value)
  %3845 = call float @dx.op.unary.f32(i32 24, float %3693)  ; Sqrt(value)
  %3846 = fmul fast float %3840, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3843
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3843
  %3851 = fmul fast float %3841, 2.000000e+00
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = fmul fast float %3852, %3844
  %3854 = fadd fast float %3853, %3851
  %3855 = fmul fast float %3854, %3844
  %3856 = fmul fast float %3842, 2.000000e+00
  %3857 = fsub fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3845
  %3859 = fadd fast float %3858, %3856
  %3860 = fmul fast float %3859, %3845
  %3861 = fmul fast float %3850, %3850
  %3862 = fmul fast float %3855, %3855
  %3863 = fmul fast float %3860, %3860
  br label %3880

; <label>:3864                                    ; preds = %3827
  %3865 = fmul fast float %387, %387
  %3866 = fmul fast float %391, %391
  %3867 = fmul fast float %395, %395
  %3868 = fadd fast float %3865, -1.000000e+00
  %3869 = fadd fast float %3866, -1.000000e+00
  %3870 = fadd fast float %3867, -1.000000e+00
  %3871 = fmul fast float %3716, %3868
  %3872 = fmul fast float %3716, %3869
  %3873 = fmul fast float %3716, %3870
  %3874 = fadd fast float %3871, 1.000000e+00
  %3875 = fadd fast float %3872, 1.000000e+00
  %3876 = fadd fast float %3873, 1.000000e+00
  %3877 = fmul fast float %3874, %3691
  %3878 = fmul fast float %3875, %3692
  %3879 = fmul fast float %3876, %3693
  br label %3880

; <label>:3880                                    ; preds = %3864, %3830, %3721, %3677
  %3881 = phi float [ %3826, %3721 ], [ %3702, %3830 ], [ %3702, %3864 ], [ 0x3FA23C0BE0000000, %3677 ]
  %3882 = phi float [ %3818, %3721 ], [ %3861, %3830 ], [ %3877, %3864 ], [ 1.000000e+00, %3677 ]
  %3883 = phi float [ %3819, %3721 ], [ %3862, %3830 ], [ %3878, %3864 ], [ 1.000000e+00, %3677 ]
  %3884 = phi float [ %3820, %3721 ], [ %3863, %3830 ], [ %3879, %3864 ], [ 1.000000e+00, %3677 ]
  %3885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.i32 %3885, 1
  %3887 = and i32 %3886, 1
  %3888 = icmp ne i32 %3887, 0
  %3889 = add i32 %62, 356
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = and i32 %3891, 32
  %3893 = icmp ne i32 %3892, 0
  %3894 = and i1 %3888, %3893
  %3895 = select i1 %3894, float 1.000000e+00, float %3882
  %3896 = select i1 %3894, float 0x3FD3333340000000, float %3883
  %3897 = select i1 %3894, float 0x3FD3333340000000, float %3884
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = and i32 %3899, 32
  %3901 = icmp eq i32 %3900, 0
  br i1 %3901, label %3974, label %3902

; <label>:3902                                    ; preds = %3880
  %3903 = add i32 %62, 140
  %3904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.i32 %3904, 0
  %3906 = add i32 %62, 388
  %3907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.i32 %3907, 0
  %3909 = add i32 %3908, 0
  %3910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3910, %dx.types.Handle %107, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = and i32 %3905, 255
  %3917 = uitofp i32 %3916 to float
  %3918 = lshr i32 %3905, 8
  %3919 = and i32 %3918, 255
  %3920 = uitofp i32 %3919 to float
  %3921 = lshr i32 %3905, 16
  %3922 = and i32 %3921, 255
  %3923 = uitofp i32 %3922 to float
  %3924 = fmul fast float %3923, 0x3F70101000000000
  %3925 = fmul fast float %3912, %3917
  %3926 = fadd fast float %3925, %3920
  %3927 = fmul fast float %3926, 0x3F70101000000000
  %3928 = fadd fast float %3913, -5.000000e-01
  %3929 = fadd fast float %3915, -5.000000e-01
  %3930 = fmul fast float %3928, %3924
  %3931 = fmul fast float %3929, %3924
  %3932 = fadd fast float %3930, 5.000000e-01
  %3933 = fadd fast float %3931, 5.000000e-01
  %3934 = fmul fast float %3932, 2.000000e+00
  %3935 = fadd fast float %3934, -1.000000e+00
  %3936 = fmul fast float %3933, 2.000000e+00
  %3937 = fadd fast float %3936, -1.000000e+00
  %3938 = fadd fast float %3935, %3937
  %3939 = fmul fast float %3938, 5.000000e-01
  %3940 = fsub fast float %3935, %3937
  %3941 = fmul fast float %3940, 5.000000e-01
  %3942 = call float @dx.op.unary.f32(i32 6, float %3939)  ; FAbs(value)
  %3943 = fsub fast float 1.000000e+00, %3942
  %3944 = call float @dx.op.unary.f32(i32 6, float %3941)  ; FAbs(value)
  %3945 = fsub fast float %3943, %3944
  %3946 = call float @dx.op.dot3.f32(i32 55, float %3939, float %3941, float %3945, float %3939, float %3941, float %3945)  ; Dot3(ax,ay,az,bx,by,bz)
  %3947 = call float @dx.op.unary.f32(i32 25, float %3946)  ; Rsqrt(value)
  %3948 = fmul fast float %3939, %3947
  %3949 = fmul fast float %3941, %3947
  %3950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3951 = extractvalue %dx.types.ResRet.i32 %3950, 0
  %3952 = and i32 %3951, 67108864
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %3970, label %3954

; <label>:3954                                    ; preds = %3902
  %3955 = add i32 %62, 328
  %3956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.i32 %3956, 0
  %3958 = and i32 %3957, 65535
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = and i32 %3961, 65535
  %3963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3962)  ; LegacyF16ToF32(value)
  %3964 = lshr i32 %3957, 16
  %3965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3964)  ; LegacyF16ToF32(value)
  %3966 = fsub fast float %3927, %3965
  %3967 = fmul fast float %3966, %3959
  %3968 = fadd fast float %3967, %3963
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  br label %3970

; <label>:3970                                    ; preds = %3954, %3902
  %3971 = phi float [ %3969, %3954 ], [ %3927, %3902 ]
  %3972 = call float @dx.op.dot2.f32(i32 54, float %3948, float %3949, float %3391, float %3392)  ; Dot2(ax,ay,bx,by)
  %3973 = call float @dx.op.dot2.f32(i32 54, float %3948, float %3949, float %3393, float %3394)  ; Dot2(ax,ay,bx,by)
  br label %3974

; <label>:3974                                    ; preds = %3970, %3880
  %3975 = phi float [ %3971, %3970 ], [ 0x3FD6666660000000, %3880 ]
  %3976 = phi float [ %3972, %3970 ], [ 0.000000e+00, %3880 ]
  %3977 = phi float [ %3973, %3970 ], [ 0.000000e+00, %3880 ]
  %3978 = phi float [ %3914, %3970 ], [ 1.000000e+00, %3880 ]
  %3979 = add i32 %62, 208
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = lshr i32 %3981, 22
  %3983 = shl nuw nsw i32 %3982, 5
  %3984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3983)  ; LegacyF16ToF32(value)
  %3985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.i32 %3985, 0
  %3987 = and i32 %3986, 64
  %3988 = icmp eq i32 %3987, 0
  br i1 %3988, label %4022, label %3989

; <label>:3989                                    ; preds = %3974
  %3990 = add i32 %62, 404
  %3991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.i32 %3991, 0
  %3993 = add i32 %3992, 0
  %3994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3996 = extractvalue %dx.types.ResRet.i32 %3995, 0
  %3997 = and i32 %3996, 131072
  %3998 = icmp eq i32 %3997, 0
  %3999 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3994, %dx.types.Handle %107, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.ResRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3999, 2
  %4003 = fmul fast float %4000, %375
  %4004 = fmul fast float %4001, %378
  %4005 = fmul fast float %4002, %381
  br i1 %3998, label %4012, label %4006

; <label>:4006                                    ; preds = %3989
  %4007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4008 = extractvalue %dx.types.CBufRet.f32 %4007, 0
  %4009 = fmul fast float %4008, %4003
  %4010 = fmul fast float %4008, %4004
  %4011 = fmul fast float %4008, %4005
  br label %4012

; <label>:4012                                    ; preds = %4006, %3989
  %4013 = phi float [ %4009, %4006 ], [ %4003, %3989 ]
  %4014 = phi float [ %4010, %4006 ], [ %4004, %3989 ]
  %4015 = phi float [ %4011, %4006 ], [ %4005, %3989 ]
  %4016 = fmul fast float %4013, %3984
  %4017 = select i1 %232, float %4016, float %4013
  %4018 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4014, float %4015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4019 = select i1 %232, float 0.000000e+00, float %4013
  %4020 = select i1 %232, float %4018, float %4014
  %4021 = select i1 %232, float 0.000000e+00, float %4015
  br label %4022

; <label>:4022                                    ; preds = %4012, %3974
  %4023 = phi float [ %4019, %4012 ], [ 0.000000e+00, %3974 ]
  %4024 = phi float [ %4020, %4012 ], [ 0.000000e+00, %3974 ]
  %4025 = phi float [ %4021, %4012 ], [ 0.000000e+00, %3974 ]
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = and i32 %4027, 1024
  %4029 = icmp eq i32 %4028, 0
  br i1 %4029, label %4060, label %4030

; <label>:4030                                    ; preds = %4022
  %4031 = add i32 %62, 200
  %4032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.i32 %4032, 0
  %4034 = and i32 %4033, 255
  %4035 = uitofp i32 %4034 to float
  %4036 = fmul fast float %4035, 0x3F70101020000000
  %4037 = lshr i32 %4033, 8
  %4038 = and i32 %4037, 255
  %4039 = uitofp i32 %4038 to float
  %4040 = fmul fast float %4039, 0x3F70101020000000
  %4041 = lshr i32 %4033, 16
  %4042 = and i32 %4041, 255
  %4043 = uitofp i32 %4042 to float
  %4044 = fmul fast float %4043, 0x3F70101020000000
  %4045 = fmul fast float %4036, %4036
  %4046 = fmul fast float %4040, %4040
  %4047 = fmul fast float %4044, %4044
  %4048 = add i32 %62, 468
  %4049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.i32 %4049, 0
  %4051 = add i32 %4050, 0
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4052, %dx.types.Handle %108, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %4053, 2
  %4057 = fmul fast float %4045, %4054
  %4058 = fmul fast float %4046, %4055
  %4059 = fmul fast float %4047, %4056
  br label %4060

; <label>:4060                                    ; preds = %4030, %4022
  %4061 = phi float [ %4057, %4030 ], [ 0.000000e+00, %4022 ]
  %4062 = phi float [ %4058, %4030 ], [ 0.000000e+00, %4022 ]
  %4063 = phi float [ %4059, %4030 ], [ 0.000000e+00, %4022 ]
  %4064 = fcmp fast ogt float %4061, 0.000000e+00
  %4065 = fcmp fast ogt float %4062, 0.000000e+00
  %4066 = fcmp fast ogt float %4063, 0.000000e+00
  %4067 = call float @dx.op.unary.f32(i32 23, float %4061)  ; Log(value)
  %4068 = call float @dx.op.unary.f32(i32 23, float %4062)  ; Log(value)
  %4069 = call float @dx.op.unary.f32(i32 23, float %4063)  ; Log(value)
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = lshr i32 %4071, 7
  %4073 = and i32 %4072, 32752
  %4074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4073)  ; LegacyF16ToF32(value)
  %4075 = fmul fast float %4067, 0xBFE62E4300000000
  %4076 = fmul fast float %4075, %4074
  %4077 = fmul fast float %4068, 0xBFE62E4300000000
  %4078 = fmul fast float %4077, %4074
  %4079 = fmul fast float %4069, 0xBFE62E4300000000
  %4080 = fmul fast float %4079, %4074
  %4081 = select i1 %4064, float %4076, float 1.270000e+02
  %4082 = select i1 %4065, float %4078, float 1.270000e+02
  %4083 = select i1 %4066, float %4080, float 1.270000e+02
  %4084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.i32 %4084, 0
  %4086 = and i32 %4085, 10240
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4132, label %4088

; <label>:4088                                    ; preds = %4060
  %4089 = add i32 %62, 484
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = add i32 %4091, 0
  %4093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4093, %dx.types.Handle %108, float %3487, float %3488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4094, 3
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = and i32 %4098, 1048576
  %4100 = icmp ne i32 %4099, 0
  %4101 = and i32 %4098, 8192
  %4102 = icmp eq i32 %4101, 0
  br i1 %4102, label %4118, label %4103

; <label>:4103                                    ; preds = %4088
  %4104 = extractvalue %dx.types.ResRet.f32 %4094, 2
  %4105 = select i1 %4100, float %4104, float %4095
  %4106 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4107 = select i1 %4100, float %4106, float %4095
  %4108 = add i32 %62, 144
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = lshr i32 %4110, 16
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = fmul fast float %4113, 0x3F80101020000000
  %4115 = fmul fast float %4114, %4107
  %4116 = fmul fast float %4114, %4095
  %4117 = fmul fast float %4114, %4105
  br label %4118

; <label>:4118                                    ; preds = %4103, %4088
  %4119 = phi float [ %4115, %4103 ], [ 0.000000e+00, %4088 ]
  %4120 = phi float [ %4116, %4103 ], [ 0.000000e+00, %4088 ]
  %4121 = phi float [ %4117, %4103 ], [ 0.000000e+00, %4088 ]
  %4122 = and i32 %4098, 2048
  %4123 = icmp eq i32 %4122, 0
  br i1 %4123, label %4132, label %4124

; <label>:4124                                    ; preds = %4118
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = shl i32 %4126, 4
  %4128 = and i32 %4127, 32752
  %4129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4128)  ; LegacyF16ToF32(value)
  %4130 = fmul fast float %4129, %4096
  %4131 = call float @dx.op.binary.f32(i32 35, float %4130, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4132

; <label>:4132                                    ; preds = %4124, %4118, %4060
  %4133 = phi float [ %4119, %4124 ], [ %4119, %4118 ], [ 0.000000e+00, %4060 ]
  %4134 = phi float [ %4120, %4124 ], [ %4120, %4118 ], [ 0.000000e+00, %4060 ]
  %4135 = phi float [ %4121, %4124 ], [ %4121, %4118 ], [ 0.000000e+00, %4060 ]
  %4136 = phi float [ %4131, %4124 ], [ 0x3F70101020000000, %4118 ], [ 0x3F70101020000000, %4060 ]
  %4137 = add i32 %62, 144
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = and i32 %4139, 255
  %4141 = uitofp i32 %4140 to float
  %4142 = lshr i32 %4139, 8
  %4143 = and i32 %4142, 255
  %4144 = uitofp i32 %4143 to float
  %4145 = call float @dx.op.dot3.f32(i32 55, float %3895, float %3896, float %3897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4146 = fmul fast float %4144, %4145
  %4147 = fadd fast float %4146, %4141
  %4148 = fmul fast float %4147, 0x3F70101020000000
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  br i1 %3379, label %4150, label %4185

; <label>:4150                                    ; preds = %4132
  %4151 = fmul fast float %4136, 2.000000e+00
  %4152 = fcmp fast olt float %4081, 1.270000e+02
  %4153 = fcmp fast olt float %4082, 1.270000e+02
  %4154 = fcmp fast olt float %4083, 1.270000e+02
  %4155 = fmul fast float %4081, 0xBFF7154760000000
  %4156 = fmul fast float %4155, %4151
  %4157 = fmul fast float %4082, 0xBFF7154760000000
  %4158 = fmul fast float %4157, %4151
  %4159 = fmul fast float %4083, 0xBFF7154760000000
  %4160 = fmul fast float %4159, %4151
  %4161 = call float @dx.op.unary.f32(i32 21, float %4156)  ; Exp(value)
  %4162 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4163 = call float @dx.op.unary.f32(i32 21, float %4160)  ; Exp(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = fadd fast float %4164, -1.000000e+00
  %4168 = select i1 %4152, float %4167, float -1.000000e+00
  %4169 = fadd fast float %4165, -1.000000e+00
  %4170 = select i1 %4153, float %4169, float -1.000000e+00
  %4171 = fadd fast float %4166, -1.000000e+00
  %4172 = select i1 %4154, float %4171, float -1.000000e+00
  %4173 = fmul fast float %4168, %3675
  %4174 = fmul fast float %4170, %3675
  %4175 = fmul fast float %4172, %3675
  %4176 = fadd fast float %4173, 1.000000e+00
  %4177 = fadd fast float %4174, 1.000000e+00
  %4178 = fadd fast float %4175, 1.000000e+00
  %4179 = fmul fast float %4176, %3361
  %4180 = fmul fast float %4177, %3362
  %4181 = fmul fast float %4178, %3363
  %4182 = fmul fast float %4176, %3364
  %4183 = fmul fast float %4177, %3365
  %4184 = fmul fast float %4178, %3366
  br label %4185

; <label>:4185                                    ; preds = %4150, %4132
  %4186 = phi float [ %4179, %4150 ], [ %3361, %4132 ]
  %4187 = phi float [ %4180, %4150 ], [ %3362, %4132 ]
  %4188 = phi float [ %4181, %4150 ], [ %3363, %4132 ]
  %4189 = phi float [ %4182, %4150 ], [ %3364, %4132 ]
  %4190 = phi float [ %4183, %4150 ], [ %3365, %4132 ]
  %4191 = phi float [ %4184, %4150 ], [ %3366, %4132 ]
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = and i32 %4193, 3
  %4195 = icmp eq i32 %4194, 3
  br i1 %4195, label %4274, label %4196

; <label>:4196                                    ; preds = %4185
  %4197 = and i32 %4193, 16
  %4198 = icmp ne i32 %4197, 0
  %4199 = select i1 %4198, float %3675, float 0.000000e+00
  %4200 = icmp eq i32 %4194, 0
  br i1 %4200, label %4201, label %4229

; <label>:4201                                    ; preds = %4196
  %4202 = and i32 %4193, 64
  %4203 = icmp ne i32 %4202, 0
  %4204 = select i1 %4203, float %3675, float 0.000000e+00
  %4205 = fsub fast float %3895, %4186
  %4206 = fsub fast float %3896, %4187
  %4207 = fsub fast float %3897, %4188
  %4208 = fmul fast float %4199, %4205
  %4209 = fmul fast float %4199, %4206
  %4210 = fmul fast float %4199, %4207
  %4211 = fadd fast float %4208, %4186
  %4212 = fadd fast float %4209, %4187
  %4213 = fadd fast float %4210, %4188
  %4214 = fsub fast float %3881, %3373
  %4215 = fmul fast float %4199, %4214
  %4216 = fadd fast float %4215, %3373
  %4217 = fsub fast float %4023, %4189
  %4218 = fsub fast float %4024, %4190
  %4219 = fsub fast float %4025, %4191
  %4220 = fmul fast float %4204, %4217
  %4221 = fmul fast float %4204, %4218
  %4222 = fmul fast float %4204, %4219
  %4223 = fadd fast float %4220, %4189
  %4224 = fadd fast float %4221, %4190
  %4225 = fadd fast float %4222, %4191
  %4226 = fsub fast float %4149, %3377
  %4227 = fmul fast float %4199, %4226
  %4228 = fadd fast float %4227, %3377
  br label %4274

; <label>:4229                                    ; preds = %4196
  %4230 = icmp eq i32 %4194, 1
  br i1 %4230, label %4231, label %4244

; <label>:4231                                    ; preds = %4229
  %4232 = fadd fast float %3895, -1.000000e+00
  %4233 = fadd fast float %3896, -1.000000e+00
  %4234 = fadd fast float %3897, -1.000000e+00
  %4235 = fmul fast float %4199, %4232
  %4236 = fmul fast float %4199, %4233
  %4237 = fmul fast float %4199, %4234
  %4238 = fadd fast float %4235, 1.000000e+00
  %4239 = fadd fast float %4236, 1.000000e+00
  %4240 = fadd fast float %4237, 1.000000e+00
  %4241 = fmul fast float %4238, %4186
  %4242 = fmul fast float %4239, %4187
  %4243 = fmul fast float %4240, %4188
  br label %4274

; <label>:4244                                    ; preds = %4229
  %4245 = icmp eq i32 %4194, 2
  br i1 %4245, label %4246, label %4274

; <label>:4246                                    ; preds = %4244
  %4247 = call float @dx.op.unary.f32(i32 24, float %3895)  ; Sqrt(value)
  %4248 = call float @dx.op.unary.f32(i32 24, float %3896)  ; Sqrt(value)
  %4249 = call float @dx.op.unary.f32(i32 24, float %3897)  ; Sqrt(value)
  %4250 = fadd fast float %4247, -5.000000e-01
  %4251 = fadd fast float %4248, -5.000000e-01
  %4252 = fadd fast float %4249, -5.000000e-01
  %4253 = fmul fast float %4250, %4199
  %4254 = fmul fast float %4251, %4199
  %4255 = fmul fast float %4252, %4199
  %4256 = fadd fast float %4253, 5.000000e-01
  %4257 = fadd fast float %4254, 5.000000e-01
  %4258 = fadd fast float %4255, 5.000000e-01
  %4259 = fmul fast float %4256, 2.000000e+00
  %4260 = fsub fast float 1.000000e+00, %4259
  %4261 = fmul fast float %4260, %4186
  %4262 = fadd fast float %4261, %4259
  %4263 = fmul fast float %4262, %4186
  %4264 = fmul fast float %4257, 2.000000e+00
  %4265 = fsub fast float 1.000000e+00, %4264
  %4266 = fmul fast float %4265, %4187
  %4267 = fadd fast float %4266, %4264
  %4268 = fmul fast float %4267, %4187
  %4269 = fmul fast float %4258, 2.000000e+00
  %4270 = fsub fast float 1.000000e+00, %4269
  %4271 = fmul fast float %4270, %4188
  %4272 = fadd fast float %4271, %4269
  %4273 = fmul fast float %4272, %4188
  br label %4274

; <label>:4274                                    ; preds = %4246, %4244, %4231, %4201, %4185
  %4275 = phi float [ %4186, %4185 ], [ %4263, %4246 ], [ %4186, %4244 ], [ %4241, %4231 ], [ %4211, %4201 ]
  %4276 = phi float [ %4187, %4185 ], [ %4268, %4246 ], [ %4187, %4244 ], [ %4242, %4231 ], [ %4212, %4201 ]
  %4277 = phi float [ %4188, %4185 ], [ %4273, %4246 ], [ %4188, %4244 ], [ %4243, %4231 ], [ %4213, %4201 ]
  %4278 = phi float [ %4189, %4185 ], [ %4189, %4246 ], [ %4189, %4244 ], [ %4189, %4231 ], [ %4223, %4201 ]
  %4279 = phi float [ %4190, %4185 ], [ %4190, %4246 ], [ %4190, %4244 ], [ %4190, %4231 ], [ %4224, %4201 ]
  %4280 = phi float [ %4191, %4185 ], [ %4191, %4246 ], [ %4191, %4244 ], [ %4191, %4231 ], [ %4225, %4201 ]
  %4281 = phi float [ %3373, %4185 ], [ %3373, %4246 ], [ %3373, %4244 ], [ %3373, %4231 ], [ %4216, %4201 ]
  %4282 = phi float [ %3377, %4185 ], [ %3377, %4246 ], [ %3377, %4244 ], [ %3377, %4231 ], [ %4228, %4201 ]
  %4283 = and i32 %4193, 12
  %4284 = icmp eq i32 %4283, 12
  br i1 %4284, label %4415, label %4285

; <label>:4285                                    ; preds = %4274
  %4286 = and i32 %4193, 2097184
  %4287 = icmp eq i32 %4286, 2097184
  %4288 = select i1 %4287, float %3675, float 0.000000e+00
  %4289 = and i32 %4193, 4194336
  %4290 = icmp eq i32 %4289, 4194336
  %4291 = select i1 %4290, float %3675, float 0.000000e+00
  %4292 = and i32 %4193, 8388640
  %4293 = icmp eq i32 %4292, 8388640
  %4294 = select i1 %4293, float %3675, float 0.000000e+00
  %4295 = and i32 %4193, 1024
  %4296 = icmp ne i32 %4295, 0
  %4297 = select i1 %4296, float %3675, float 0.000000e+00
  %4298 = and i32 %4193, 2048
  %4299 = icmp ne i32 %4298, 0
  %4300 = select i1 %4299, float %3675, float 0.000000e+00
  %4301 = and i32 %4193, 8192
  %4302 = icmp ne i32 %4301, 0
  %4303 = select i1 %4302, float %3675, float 0.000000e+00
  %4304 = icmp eq i32 %4283, 0
  br i1 %4304, label %4305, label %4339

; <label>:4305                                    ; preds = %4285
  %4306 = fsub fast float %3976, %3359
  %4307 = fsub fast float %3977, %3360
  %4308 = fmul fast float %4288, %4306
  %4309 = fmul fast float %4288, %4307
  %4310 = fadd fast float %4308, %3359
  %4311 = fadd fast float %4309, %3360
  %4312 = fsub fast float %3978, %3375
  %4313 = fmul fast float %4291, %4312
  %4314 = fadd fast float %4313, %3375
  %4315 = fsub fast float %3975, %3374
  %4316 = fmul fast float %4294, %4315
  %4317 = fadd fast float %4316, %3374
  %4318 = fsub fast float %4081, %3370
  %4319 = fsub fast float %4082, %3371
  %4320 = fsub fast float %4083, %3372
  %4321 = fmul fast float %4297, %4318
  %4322 = fmul fast float %4297, %4319
  %4323 = fmul fast float %4297, %4320
  %4324 = fadd fast float %4321, %3370
  %4325 = fadd fast float %4322, %3371
  %4326 = fadd fast float %4323, %3372
  %4327 = fsub fast float %4136, %3376
  %4328 = fmul fast float %4300, %4327
  %4329 = fadd fast float %4328, %3376
  %4330 = fsub fast float %4133, %3367
  %4331 = fsub fast float %4134, %3368
  %4332 = fsub fast float %4135, %3369
  %4333 = fmul fast float %4303, %4330
  %4334 = fmul fast float %4303, %4331
  %4335 = fmul fast float %4303, %4332
  %4336 = fadd fast float %4333, %3367
  %4337 = fadd fast float %4334, %3368
  %4338 = fadd fast float %4335, %3369
  br label %4415

; <label>:4339                                    ; preds = %4285
  %4340 = icmp eq i32 %4283, 4
  br i1 %4340, label %4341, label %4387

; <label>:4341                                    ; preds = %4339
  %4342 = fmul fast float %4288, %3976
  %4343 = fmul fast float %4288, %3977
  %4344 = fadd fast float %4342, %3359
  %4345 = fadd fast float %4343, %3360
  %4346 = call float @dx.op.binary.f32(i32 36, float %3375, float %3978)  ; FMin(a,b)
  %4347 = fsub fast float %4346, %3375
  %4348 = fmul fast float %4347, %4291
  %4349 = fadd fast float %4348, %3375
  %4350 = fadd fast float %3975, %3374
  %4351 = fmul fast float %4350, 0x3FF337FAE0000000
  %4352 = fmul fast float %3374, %3374
  %4353 = fmul fast float %3975, %3975
  %4354 = fadd fast float %4353, %4352
  %4355 = fmul fast float %4354, 0x3FE5152B00000000
  %4356 = fmul fast float %3374, 0xBFCC1F85E0000000
  %4357 = fmul fast float %4356, %3975
  %4358 = fadd fast float %4357, 0xBFE1363700000000
  %4359 = fadd fast float %4358, %4351
  %4360 = fsub fast float %4359, %4355
  %4361 = fmul fast float %4350, 0x3FBA6F0D00000000
  %4362 = fmul fast float %4354, 0x3FD0432880000000
  %4363 = fmul fast float %3374, 0xBFEF110800000000
  %4364 = fmul fast float %4363, %3975
  %4365 = fadd fast float %4364, 1.000000e+00
  %4366 = fsub fast float %4365, %4361
  %4367 = fadd fast float %4366, %4362
  %4368 = fdiv fast float %4360, %4367
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = fsub fast float %4369, %3374
  %4371 = fmul fast float %4370, %4294
  %4372 = fadd fast float %4371, %3374
  %4373 = fmul fast float %4297, %4081
  %4374 = fmul fast float %4297, %4082
  %4375 = fmul fast float %4297, %4083
  %4376 = fadd fast float %4373, %3370
  %4377 = fadd fast float %4374, %3371
  %4378 = fadd fast float %4375, %3372
  %4379 = fmul fast float %4300, %4136
  %4380 = fadd fast float %4379, %3376
  %4381 = fmul fast float %4303, %4133
  %4382 = fmul fast float %4303, %4134
  %4383 = fmul fast float %4303, %4135
  %4384 = fadd fast float %4381, %3367
  %4385 = fadd fast float %4382, %3368
  %4386 = fadd fast float %4383, %3369
  br label %4415

; <label>:4387                                    ; preds = %4339
  %4388 = icmp eq i32 %4283, 8
  br i1 %4388, label %4389, label %4415

; <label>:4389                                    ; preds = %4387
  %4390 = fmul fast float %4288, %3976
  %4391 = fmul fast float %4288, %3977
  %4392 = fadd fast float %4390, %3359
  %4393 = fadd fast float %4391, %3360
  %4394 = call float @dx.op.binary.f32(i32 36, float %3375, float %3978)  ; FMin(a,b)
  %4395 = fsub fast float %4394, %3375
  %4396 = fmul fast float %4395, %4291
  %4397 = fadd fast float %4396, %3375
  %4398 = fsub fast float %3975, %3374
  %4399 = fmul fast float %4294, %4398
  %4400 = fadd fast float %4399, %3374
  %4401 = fmul fast float %4297, %4081
  %4402 = fmul fast float %4297, %4082
  %4403 = fmul fast float %4297, %4083
  %4404 = fadd fast float %4401, %3370
  %4405 = fadd fast float %4402, %3371
  %4406 = fadd fast float %4403, %3372
  %4407 = fmul fast float %4300, %4136
  %4408 = fadd fast float %4407, %3376
  %4409 = fmul fast float %4303, %4133
  %4410 = fmul fast float %4303, %4134
  %4411 = fmul fast float %4303, %4135
  %4412 = fadd fast float %4409, %3367
  %4413 = fadd fast float %4410, %3368
  %4414 = fadd fast float %4411, %3369
  br label %4415

; <label>:4415                                    ; preds = %4389, %4387, %4341, %4305, %4274, %3674, %3378, %3358
  %4416 = phi float [ %3359, %4274 ], [ %3359, %3674 ], [ %3359, %3358 ], [ %3359, %3378 ], [ %4310, %4305 ], [ %4344, %4341 ], [ %3359, %4387 ], [ %4392, %4389 ]
  %4417 = phi float [ %3360, %4274 ], [ %3360, %3674 ], [ %3360, %3358 ], [ %3360, %3378 ], [ %4311, %4305 ], [ %4345, %4341 ], [ %3360, %4387 ], [ %4393, %4389 ]
  %4418 = phi float [ %4275, %4274 ], [ %3361, %3674 ], [ %3361, %3358 ], [ %3361, %3378 ], [ %4275, %4305 ], [ %4275, %4341 ], [ %4275, %4387 ], [ %4275, %4389 ]
  %4419 = phi float [ %4276, %4274 ], [ %3362, %3674 ], [ %3362, %3358 ], [ %3362, %3378 ], [ %4276, %4305 ], [ %4276, %4341 ], [ %4276, %4387 ], [ %4276, %4389 ]
  %4420 = phi float [ %4277, %4274 ], [ %3363, %3674 ], [ %3363, %3358 ], [ %3363, %3378 ], [ %4277, %4305 ], [ %4277, %4341 ], [ %4277, %4387 ], [ %4277, %4389 ]
  %4421 = phi float [ %4278, %4274 ], [ %3364, %3674 ], [ %3364, %3358 ], [ %3364, %3378 ], [ %4278, %4305 ], [ %4278, %4341 ], [ %4278, %4387 ], [ %4278, %4389 ]
  %4422 = phi float [ %4279, %4274 ], [ %3365, %3674 ], [ %3365, %3358 ], [ %3365, %3378 ], [ %4279, %4305 ], [ %4279, %4341 ], [ %4279, %4387 ], [ %4279, %4389 ]
  %4423 = phi float [ %4280, %4274 ], [ %3366, %3674 ], [ %3366, %3358 ], [ %3366, %3378 ], [ %4280, %4305 ], [ %4280, %4341 ], [ %4280, %4387 ], [ %4280, %4389 ]
  %4424 = phi float [ %3367, %4274 ], [ %3367, %3674 ], [ %3367, %3358 ], [ %3367, %3378 ], [ %4336, %4305 ], [ %4384, %4341 ], [ %3367, %4387 ], [ %4412, %4389 ]
  %4425 = phi float [ %3368, %4274 ], [ %3368, %3674 ], [ %3368, %3358 ], [ %3368, %3378 ], [ %4337, %4305 ], [ %4385, %4341 ], [ %3368, %4387 ], [ %4413, %4389 ]
  %4426 = phi float [ %3369, %4274 ], [ %3369, %3674 ], [ %3369, %3358 ], [ %3369, %3378 ], [ %4338, %4305 ], [ %4386, %4341 ], [ %3369, %4387 ], [ %4414, %4389 ]
  %4427 = phi float [ %3370, %4274 ], [ %3370, %3674 ], [ %3370, %3358 ], [ %3370, %3378 ], [ %4324, %4305 ], [ %4376, %4341 ], [ %3370, %4387 ], [ %4404, %4389 ]
  %4428 = phi float [ %3371, %4274 ], [ %3371, %3674 ], [ %3371, %3358 ], [ %3371, %3378 ], [ %4325, %4305 ], [ %4377, %4341 ], [ %3371, %4387 ], [ %4405, %4389 ]
  %4429 = phi float [ %3372, %4274 ], [ %3372, %3674 ], [ %3372, %3358 ], [ %3372, %3378 ], [ %4326, %4305 ], [ %4378, %4341 ], [ %3372, %4387 ], [ %4406, %4389 ]
  %4430 = phi float [ %4281, %4274 ], [ %3373, %3674 ], [ %3373, %3358 ], [ %3373, %3378 ], [ %4281, %4305 ], [ %4281, %4341 ], [ %4281, %4387 ], [ %4281, %4389 ]
  %4431 = phi float [ %3374, %4274 ], [ %3374, %3674 ], [ %3374, %3358 ], [ %3374, %3378 ], [ %4317, %4305 ], [ %4372, %4341 ], [ %3374, %4387 ], [ %4400, %4389 ]
  %4432 = phi float [ %3375, %4274 ], [ %3375, %3674 ], [ %3375, %3358 ], [ %3375, %3378 ], [ %4314, %4305 ], [ %4349, %4341 ], [ %3375, %4387 ], [ %4397, %4389 ]
  %4433 = phi float [ %3376, %4274 ], [ %3376, %3674 ], [ %3376, %3358 ], [ %3376, %3378 ], [ %4329, %4305 ], [ %4380, %4341 ], [ %3376, %4387 ], [ %4408, %4389 ]
  %4434 = phi float [ %4282, %4274 ], [ %3377, %3674 ], [ %3377, %3358 ], [ %3377, %3378 ], [ %4282, %4305 ], [ %4282, %4341 ], [ %4282, %4387 ], [ %4282, %4389 ]
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4437 = call float @dx.op.dot2.f32(i32 54, float %4416, float %4417, float %4416, float %4417)  ; Dot2(ax,ay,bx,by)
  %4438 = fmul fast float %4437, 0x3FE3333340000000
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4416, float %4417, float %4439, float %4416, float %4417, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 25, float %4440)  ; Rsqrt(value)
  %4442 = fmul fast float %4441, %4416
  %4443 = fmul fast float %4441, %4417
  %4444 = fmul fast float %4439, %4441
  %4445 = fmul fast float %4444, %120
  %4446 = fmul fast float %4444, %122
  %4447 = fmul fast float %4444, %124
  %4448 = fmul fast float %4442, %83
  %4449 = fmul fast float %4442, %84
  %4450 = fmul fast float %4442, %85
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = fmul fast float %134, %4443
  %4455 = fmul fast float %135, %4443
  %4456 = fmul fast float %136, %4443
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = fadd fast float %4453, %4456
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4459, float %4457, float %4458, float %4459)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 25, float %4460)  ; Rsqrt(value)
  %4462 = fmul fast float %4457, %4461
  %4463 = fmul fast float %4458, %4461
  %4464 = fmul fast float %4459, %4461
  %4465 = and i32 %64, 1
  %4466 = icmp eq i32 %4465, 0
  br i1 %4466, label %4467, label %5059

; <label>:4467                                    ; preds = %4415
  %4468 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4472 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4473 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4474 = fadd fast float %4468, %170
  %4475 = fadd fast float %4469, %171
  %4476 = fadd fast float %4470, %172
  %4477 = fadd fast float %4471, %170
  %4478 = fadd fast float %4472, %171
  %4479 = fadd fast float %4473, %172
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4483 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4487 = fmul fast float %4481, %111
  %4488 = fmul fast float %4487, %4485
  %4489 = fmul fast float %4482, %112
  %4490 = fmul fast float %4489, %4486
  %4491 = fptoui float %4488 to i32
  %4492 = fptoui float %4490 to i32
  %4493 = fadd fast float %4481, -1.000000e+00
  %4494 = fadd fast float %4482, -1.000000e+00
  %4495 = fptoui float %4493 to i32
  %4496 = fptoui float %4494 to i32
  %4497 = call i32 @dx.op.binary.i32(i32 40, i32 %4491, i32 %4495)  ; UMin(a,b)
  %4498 = call i32 @dx.op.binary.i32(i32 40, i32 %4492, i32 %4496)  ; UMin(a,b)
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4499, 3
  %4502 = fmul fast float %4500, %99
  %4503 = fsub fast float %4502, %4501
  %4504 = fadd fast float %4483, -1.000000e+00
  %4505 = call float @dx.op.binary.f32(i32 36, float %4503, float %4504)  ; FMin(a,b)
  %4506 = fptoui float %4505 to i32
  %4507 = fptoui float %4481 to i32
  %4508 = fptoui float %4482 to i32
  %4509 = mul i32 %4506, %4508
  %4510 = add i32 %4509, %4498
  %4511 = mul i32 %4510, %4507
  %4512 = add i32 %4511, %4497
  %4513 = shl i32 %4512, 2
  %4514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.i32 %4514, 0
  %4516 = and i32 %4515, 1023
  %4517 = lshr i32 %4515, 10
  %4518 = icmp eq i32 %4516, 0
  br i1 %4518, label %5022, label %4519

; <label>:4519                                    ; preds = %4467
  %4520 = and i32 %4515, 1023
  br label %4521

; <label>:4521                                    ; preds = %4653, %4519
  %4522 = phi i32 [ %4603, %4653 ], [ 0, %4519 ]
  %4523 = phi float [ %4654, %4653 ], [ 0.000000e+00, %4519 ]
  %4524 = phi float [ %4655, %4653 ], [ %4436, %4519 ]
  %4525 = phi float [ %4656, %4653 ], [ %4434, %4519 ]
  %4526 = phi float [ %4657, %4653 ], [ %4427, %4519 ]
  %4527 = phi float [ %4658, %4653 ], [ %4428, %4519 ]
  %4528 = phi float [ %4659, %4653 ], [ %4429, %4519 ]
  %4529 = phi float [ %4660, %4653 ], [ 0.000000e+00, %4519 ]
  %4530 = phi float [ %4661, %4653 ], [ 0.000000e+00, %4519 ]
  %4531 = phi float [ %4662, %4653 ], [ %4424, %4519 ]
  %4532 = phi float [ %4663, %4653 ], [ %4425, %4519 ]
  %4533 = phi float [ %4664, %4653 ], [ %4426, %4519 ]
  %4534 = phi float [ %4665, %4653 ], [ %4421, %4519 ]
  %4535 = phi float [ %4666, %4653 ], [ %4422, %4519 ]
  %4536 = phi float [ %4667, %4653 ], [ %4423, %4519 ]
  %4537 = phi float [ %4668, %4653 ], [ %4462, %4519 ]
  %4538 = phi float [ %4669, %4653 ], [ %4463, %4519 ]
  %4539 = phi float [ %4670, %4653 ], [ %4464, %4519 ]
  %4540 = phi float [ %4671, %4653 ], [ %4432, %4519 ]
  %4541 = phi float [ %4672, %4653 ], [ %4431, %4519 ]
  %4542 = phi float [ %4673, %4653 ], [ 0.000000e+00, %4519 ]
  %4543 = phi float [ %4674, %4653 ], [ %4430, %4519 ]
  %4544 = phi float [ %4675, %4653 ], [ %4418, %4519 ]
  %4545 = phi float [ %4676, %4653 ], [ %4419, %4519 ]
  %4546 = phi float [ %4677, %4653 ], [ %4420, %4519 ]
  %4547 = add nuw nsw i32 %4522, %4517
  %4548 = shl i32 %4547, 2
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = shl i32 %4550, 8
  %4552 = or i32 %4551, 48
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = or i32 %4551, 64
  %4559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.i32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.i32 %4559, 1
  %4562 = or i32 %4551, 80
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4566 = or i32 %4551, 96
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4551, 112
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4575 = or i32 %4551, 128
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4551, 144
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = or i32 %4551, 160
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = or i32 %4551, 192
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = or i32 %4551, 208
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = or i32 %4551, 248
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = add nuw nsw i32 %4522, 1
  %4604 = bitcast float %4557 to i32
  %4605 = and i32 %4604, 512
  %4606 = icmp eq i32 %4605, 0
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4612 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4613 = or i32 %4551, 16
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = or i32 %4551, 32
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = extractvalue %dx.types.ResRet.f32 %4621, 3
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4622, float %4623, float %4624, float %4625, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4612)  ; Round_ni(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %4627)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 27, float %4619)  ; Round_ni(value)
  %4630 = call float @dx.op.unary.f32(i32 6, float %4629)  ; FAbs(value)
  %4631 = call float @dx.op.unary.f32(i32 6, float %4626)  ; FAbs(value)
  %4632 = call float @dx.op.unary.f32(i32 27, float %4631)  ; Round_ni(value)
  %4633 = fadd fast float %4630, %4628
  %4634 = fadd fast float %4633, %4632
  %4635 = fcmp fast oeq float %4634, 0.000000e+00
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %4474, float %4475, float %4476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4474, float %4475, float %4476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4638 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4639 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4640 = fsub fast float %4636, %4612
  %4641 = fsub fast float %4638, %4612
  %4642 = fsub fast float %4637, %4619
  %4643 = fsub fast float %4639, %4619
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 2
  %4647 = fadd fast float %4646, %4644
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4650 = fcmp fast ogt float %4648, %4649
  %4651 = and i1 %4635, %4650
  %4652 = and i1 %4606, %4651
  br i1 %4652, label %4679, label %4653

; <label>:4653                                    ; preds = %5008, %4760, %4679, %4521
  %4654 = phi float [ %4523, %4679 ], [ %4763, %4760 ], [ %4763, %5008 ], [ %4523, %4521 ]
  %4655 = phi float [ %4524, %4679 ], [ %4524, %4760 ], [ %4984, %5008 ], [ %4524, %4521 ]
  %4656 = phi float [ %4525, %4679 ], [ %4525, %4760 ], [ %4982, %5008 ], [ %4525, %4521 ]
  %4657 = phi float [ %4526, %4679 ], [ %4526, %4760 ], [ %4960, %5008 ], [ %4526, %4521 ]
  %4658 = phi float [ %4527, %4679 ], [ %4527, %4760 ], [ %4961, %5008 ], [ %4527, %4521 ]
  %4659 = phi float [ %4528, %4679 ], [ %4528, %4760 ], [ %4962, %5008 ], [ %4528, %4521 ]
  %4660 = phi float [ %4529, %4679 ], [ %4529, %4760 ], [ %4887, %5008 ], [ %4529, %4521 ]
  %4661 = phi float [ %4530, %4679 ], [ %4530, %4760 ], [ %4885, %5008 ], [ %4530, %4521 ]
  %4662 = phi float [ %4531, %4679 ], [ %4531, %4760 ], [ %4930, %5008 ], [ %4531, %4521 ]
  %4663 = phi float [ %4532, %4679 ], [ %4532, %4760 ], [ %4931, %5008 ], [ %4532, %4521 ]
  %4664 = phi float [ %4533, %4679 ], [ %4533, %4760 ], [ %4932, %5008 ], [ %4533, %4521 ]
  %4665 = phi float [ %4534, %4679 ], [ %4534, %4760 ], [ %5018, %5008 ], [ %4534, %4521 ]
  %4666 = phi float [ %4535, %4679 ], [ %4535, %4760 ], [ %5019, %5008 ], [ %4535, %4521 ]
  %4667 = phi float [ %4536, %4679 ], [ %4536, %4760 ], [ %5020, %5008 ], [ %4536, %4521 ]
  %4668 = phi float [ %4537, %4679 ], [ %4537, %4760 ], [ %4866, %5008 ], [ %4537, %4521 ]
  %4669 = phi float [ %4538, %4679 ], [ %4538, %4760 ], [ %4867, %5008 ], [ %4538, %4521 ]
  %4670 = phi float [ %4539, %4679 ], [ %4539, %4760 ], [ %4868, %5008 ], [ %4539, %4521 ]
  %4671 = phi float [ %4540, %4679 ], [ %4540, %4760 ], [ %4940, %5008 ], [ %4540, %4521 ]
  %4672 = phi float [ %4541, %4679 ], [ %4541, %4760 ], [ %4937, %5008 ], [ %4541, %4521 ]
  %4673 = phi float [ %4542, %4679 ], [ %4542, %4760 ], [ %4934, %5008 ], [ %4542, %4521 ]
  %4674 = phi float [ %4543, %4679 ], [ %4543, %4760 ], [ %4883, %5008 ], [ %4543, %4521 ]
  %4675 = phi float [ %4544, %4679 ], [ %4544, %4760 ], [ %4878, %5008 ], [ %4544, %4521 ]
  %4676 = phi float [ %4545, %4679 ], [ %4545, %4760 ], [ %4879, %5008 ], [ %4545, %4521 ]
  %4677 = phi float [ %4546, %4679 ], [ %4546, %4760 ], [ %4880, %5008 ], [ %4546, %4521 ]
  %4678 = icmp eq i32 %4603, %4520
  br i1 %4678, label %5021, label %4521

; <label>:4679                                    ; preds = %4521
  %4680 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4681 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4685 = extractvalue %dx.types.ResRet.i32 %4559, 3
  %4686 = extractvalue %dx.types.ResRet.i32 %4559, 2
  %4687 = add i32 %4685, 0
  %4688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4688, %dx.types.Handle %4689, float %4612, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float %4640, float %4642, float undef, float %4641, float %4643, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = fmul fast float %4691, %4684
  %4693 = fadd fast float %4692, %4683
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4612, %4568
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4619, float %4695)  ; FMad(a,b,c)
  %4697 = fadd fast float %4696, %4682
  %4698 = fmul fast float %4612, %4570
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4619, float %4698)  ; FMad(a,b,c)
  %4700 = fadd fast float %4699, %4681
  %4701 = fmul fast float %4640, %4568
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4642, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4640, %4570
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4642, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4641, %4568
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4643, float %4705)  ; FMad(a,b,c)
  %4707 = fmul fast float %4641, %4570
  %4708 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4643, float %4707)  ; FMad(a,b,c)
  %4709 = add i32 %4686, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %4689, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = and i32 %4604, 1024
  %4714 = icmp ne i32 %4713, 0
  %4715 = fcmp fast ogt float %4712, 0x3FE0101020000000
  %4716 = uitofp i1 %4715 to float
  %4717 = select i1 %4714, float %4716, float %4712
  %4718 = and i32 %4604, 8192
  %4719 = icmp ne i32 %4718, 0
  %4720 = select i1 %4719, float %4680, float 1.000000e+00
  %4721 = fmul fast float %4612, 2.000000e+00
  %4722 = fadd fast float %4721, -1.000000e+00
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fmul fast float %4723, %4601
  %4725 = fsub fast float %4724, %4601
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4619, 2.000000e+00
  %4728 = fadd fast float %4727, -1.000000e+00
  %4729 = call float @dx.op.unary.f32(i32 6, float %4728)  ; FAbs(value)
  %4730 = fmul fast float %4729, %4602
  %4731 = fsub fast float %4730, %4602
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4631, %4564
  %4734 = fsub fast float %4733, %4564
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4694, %4720
  %4737 = fmul fast float %4736, %4691
  %4738 = fmul fast float %4737, %4726
  %4739 = fmul fast float %4738, %4717
  %4740 = fmul fast float %4739, %4732
  %4741 = fmul fast float %4740, %4735
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4745 = fsub fast float %4648, %4744
  %4746 = fmul fast float %4745, %4743
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4741, %4565
  %4749 = fadd fast float %4741, %4565
  %4750 = fmul fast float %4749, %4574
  %4751 = fsub fast float %4750, %4574
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = and i32 %4604, 128
  %4754 = icmp ne i32 %4753, 0
  %4755 = select i1 %4754, float %4752, float %4748
  %4756 = fmul fast float %4755, %4747
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = fcmp fast ugt float %4756, %4758
  br i1 %4759, label %4760, label %4653

; <label>:4760                                    ; preds = %4679
  %4761 = select i1 %4719, float %4756, float 0.000000e+00
  %4762 = fadd fast float %4761, %4523
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  br i1 %4719, label %4653, label %4764

; <label>:4764                                    ; preds = %4760
  %4765 = and i32 %4604, 4
  %4766 = and i32 %4604, 8
  %4767 = add i32 %4560, 0
  %4768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4767, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4768, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4774 = extractvalue %dx.types.ResRet.f32 %4770, 3
  %4775 = bitcast float %4586 to i32
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4775, 8
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4774, %4777
  %4782 = fadd fast float %4781, %4780
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = add i32 %4561, 0
  %4785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4785, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4791 = bitcast float %4580 to i32
  %4792 = and i32 %4791, 255
  %4793 = uitofp i32 %4792 to float
  %4794 = lshr i32 %4791, 8
  %4795 = and i32 %4794, 255
  %4796 = uitofp i32 %4795 to float
  %4797 = lshr i32 %4791, 16
  %4798 = and i32 %4797, 255
  %4799 = uitofp i32 %4798 to float
  %4800 = fmul fast float %4799, 0x3F70101000000000
  %4801 = fmul fast float %4787, %4793
  %4802 = fadd fast float %4801, %4796
  %4803 = fmul fast float %4802, 0x3F70101000000000
  %4804 = fadd fast float %4788, -5.000000e-01
  %4805 = fadd fast float %4790, -5.000000e-01
  %4806 = fmul fast float %4804, %4800
  %4807 = fmul fast float %4805, %4800
  %4808 = fadd fast float %4806, 5.000000e-01
  %4809 = fadd fast float %4807, 5.000000e-01
  %4810 = fmul fast float %4771, %4589
  %4811 = fmul fast float %4772, %4590
  %4812 = fmul fast float %4773, %4591
  %4813 = fmul fast float %4808, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = fmul fast float %4809, 2.000000e+00
  %4816 = fadd fast float %4815, -1.000000e+00
  %4817 = fadd fast float %4814, %4816
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = fsub fast float %4814, %4816
  %4820 = fmul fast float %4819, 5.000000e-01
  %4821 = call float @dx.op.unary.f32(i32 6, float %4818)  ; FAbs(value)
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = call float @dx.op.unary.f32(i32 6, float %4820)  ; FAbs(value)
  %4824 = fsub fast float %4822, %4823
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4820, float %4824, float %4818, float %4820, float %4824)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.unary.f32(i32 25, float %4825)  ; Rsqrt(value)
  %4827 = fmul fast float %4818, %4826
  %4828 = fmul fast float %4820, %4826
  %4829 = fmul fast float %4826, %4824
  %4830 = fmul fast float %4829, %4554
  %4831 = fmul fast float %4829, %4555
  %4832 = fmul fast float %4829, %4556
  %4833 = fmul fast float %4827, %4577
  %4834 = fmul fast float %4827, %4578
  %4835 = fmul fast float %4827, %4579
  %4836 = fadd fast float %4833, %4830
  %4837 = fadd fast float %4834, %4831
  %4838 = fadd fast float %4835, %4832
  %4839 = fmul fast float %4828, %4583
  %4840 = fmul fast float %4828, %4584
  %4841 = fmul fast float %4828, %4585
  %4842 = fadd fast float %4836, %4839
  %4843 = fadd fast float %4837, %4840
  %4844 = fadd fast float %4838, %4841
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4842, %4846
  %4848 = fmul fast float %4843, %4846
  %4849 = fmul fast float %4844, %4846
  %4850 = icmp ne i32 %4766, 0
  %4851 = select i1 %4850, float 1.000000e+00, float 0.000000e+00
  %4852 = fmul fast float %4756, %4851
  %4853 = and i32 %4604, 1
  %4854 = icmp eq i32 %4853, 0
  br i1 %4854, label %4855, label %4859

; <label>:4855                                    ; preds = %4764
  %4856 = fsub fast float %4847, %4537
  %4857 = fsub fast float %4848, %4538
  %4858 = fsub fast float %4849, %4539
  br label %4859

; <label>:4859                                    ; preds = %4855, %4764
  %4860 = phi float [ %4856, %4855 ], [ %4847, %4764 ]
  %4861 = phi float [ %4857, %4855 ], [ %4848, %4764 ]
  %4862 = phi float [ %4858, %4855 ], [ %4849, %4764 ]
  %4863 = fmul float %4862, %4852
  %4864 = fmul float %4861, %4852
  %4865 = fmul float %4860, %4852
  %4866 = fadd fast float %4865, %4537
  %4867 = fadd fast float %4864, %4538
  %4868 = fadd fast float %4863, %4539
  %4869 = icmp ne i32 %4765, 0
  %4870 = select i1 %4869, float 1.000000e+00, float 0.000000e+00
  %4871 = fmul fast float %4756, %4870
  %4872 = fsub fast float %4810, %4544
  %4873 = fsub fast float %4811, %4545
  %4874 = fsub fast float %4812, %4546
  %4875 = fmul fast float %4872, %4871
  %4876 = fmul fast float %4873, %4871
  %4877 = fmul fast float %4874, %4871
  %4878 = fadd fast float %4875, %4544
  %4879 = fadd fast float %4876, %4545
  %4880 = fadd fast float %4877, %4546
  %4881 = fsub fast float %4783, %4543
  %4882 = fmul fast float %4881, %4871
  %4883 = fadd fast float %4882, %4543
  %4884 = fmul fast float %4871, %4530
  %4885 = fsub fast float %4530, %4884
  %4886 = fmul fast float %4871, %4529
  %4887 = fsub fast float %4529, %4886
  %4888 = bitcast float %4598 to i32
  %4889 = lshr i32 %4888, 16
  %4890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4889)  ; LegacyF16ToF32(value)
  %4891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.i32 %4891, 0
  %4893 = and i32 %4892, 1
  %4894 = icmp eq i32 %4893, 0
  br i1 %4894, label %4895, label %4920

; <label>:4895                                    ; preds = %4859
  %4896 = fadd fast float %4783, 0xBFB99999A0000000
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4897, 0x3FF1C71C80000000
  %4899 = fsub fast float 1.000000e+00, %4898
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4900, %4810
  %4902 = fmul fast float %4900, %4811
  %4903 = fmul fast float %4900, %4812
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4907 = call float @dx.op.binary.f32(i32 35, float %4905, float %4906)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4904, float %4907)  ; FMax(a,b)
  %4909 = fcmp fast ogt float %4908, 0.000000e+00
  %4910 = bitcast float %4908 to i32
  %4911 = sub nsw i32 2129859010, %4910
  %4912 = bitcast i32 %4911 to float
  %4913 = select i1 %4909, float %4912, float 0.000000e+00
  %4914 = fmul fast float %4904, %4890
  %4915 = fmul fast float %4905, %4890
  %4916 = fmul fast float %4906, %4890
  %4917 = fmul fast float %4914, %4913
  %4918 = fmul fast float %4915, %4913
  %4919 = fmul fast float %4916, %4913
  br label %4920

; <label>:4920                                    ; preds = %4895, %4859
  %4921 = phi float [ %4890, %4859 ], [ %4917, %4895 ]
  %4922 = phi float [ %4890, %4859 ], [ %4918, %4895 ]
  %4923 = phi float [ %4890, %4859 ], [ %4919, %4895 ]
  %4924 = fsub fast float %4921, %4531
  %4925 = fsub fast float %4922, %4532
  %4926 = fsub fast float %4923, %4533
  %4927 = fmul fast float %4924, %4871
  %4928 = fmul fast float %4925, %4871
  %4929 = fmul fast float %4926, %4871
  %4930 = fadd fast float %4927, %4531
  %4931 = fadd fast float %4928, %4532
  %4932 = fadd fast float %4929, %4533
  %4933 = fadd fast float %4756, %4542
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fsub fast float %4803, %4541
  %4936 = fmul fast float %4935, %4852
  %4937 = fadd fast float %4936, %4541
  %4938 = fsub fast float %4789, %4540
  %4939 = fmul fast float %4938, %4852
  %4940 = fadd fast float %4939, %4540
  br i1 %4854, label %4949, label %4941

; <label>:4941                                    ; preds = %4920
  %4942 = and i32 %4604, 32768
  %4943 = icmp eq i32 %4942, 0
  br i1 %4943, label %4959, label %4944

; <label>:4944                                    ; preds = %4941
  %4945 = fmul fast float %4852, 1.270000e+02
  %4946 = fadd fast float %4945, %4526
  %4947 = fadd fast float %4945, %4527
  %4948 = fadd fast float %4945, %4528
  br label %4959

; <label>:4949                                    ; preds = %4920
  %4950 = fsub fast float 1.270000e+02, %4526
  %4951 = fsub fast float 1.270000e+02, %4527
  %4952 = fsub fast float 1.270000e+02, %4528
  %4953 = fmul fast float %4852, %4950
  %4954 = fmul fast float %4852, %4951
  %4955 = fmul fast float %4852, %4952
  %4956 = fadd fast float %4953, %4526
  %4957 = fadd fast float %4954, %4527
  %4958 = fadd fast float %4955, %4528
  br label %4959

; <label>:4959                                    ; preds = %4949, %4944, %4941
  %4960 = phi float [ %4946, %4944 ], [ %4526, %4941 ], [ %4956, %4949 ]
  %4961 = phi float [ %4947, %4944 ], [ %4527, %4941 ], [ %4957, %4949 ]
  %4962 = phi float [ %4948, %4944 ], [ %4528, %4941 ], [ %4958, %4949 ]
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = fmul fast float %4966, %4963
  %4968 = fadd fast float %4967, %4965
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = bitcast float %4592 to i32
  %4971 = and i32 %4970, 65535
  %4972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4971)  ; LegacyF16ToF32(value)
  %4973 = lshr i32 %4970, 16
  %4974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4973)  ; LegacyF16ToF32(value)
  %4975 = fcmp fast oge float %4972, 0.000000e+00
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = select i1 %4975, float %4972, float %4977
  %4979 = fadd fast float %4978, %4974
  %4980 = fsub fast float %4969, %4525
  %4981 = fmul fast float %4980, %4756
  %4982 = fadd fast float %4981, %4525
  %4983 = fmul fast float %4979, %4756
  %4984 = call float @dx.op.binary.f32(i32 35, float %4524, float %4983)  ; FMax(a,b)
  %4985 = and i32 %4604, 16
  %4986 = icmp eq i32 %4985, 0
  br i1 %4986, label %5008, label %4987

; <label>:4987                                    ; preds = %4959
  %4988 = add i32 %4595, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = and i32 %4888, 65535
  %4995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4994)  ; LegacyF16ToF32(value)
  %4996 = fmul fast float %4991, %4589
  %4997 = fmul fast float %4992, %4590
  %4998 = fmul fast float %4993, %4591
  %4999 = and i32 %4604, 16384
  %5000 = icmp ne i32 %4999, 0
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = select i1 %5000, float %5002, float 1.000000e+00
  %5004 = fmul fast float %5003, %4995
  %5005 = fmul fast float %4996, %5004
  %5006 = fmul fast float %4997, %5004
  %5007 = fmul fast float %4998, %5004
  br label %5008

; <label>:5008                                    ; preds = %4987, %4959
  %5009 = phi float [ %5005, %4987 ], [ 0.000000e+00, %4959 ]
  %5010 = phi float [ %5006, %4987 ], [ 0.000000e+00, %4959 ]
  %5011 = phi float [ %5007, %4987 ], [ 0.000000e+00, %4959 ]
  %5012 = fsub fast float %5009, %4534
  %5013 = fsub fast float %5010, %4535
  %5014 = fsub fast float %5011, %4536
  %5015 = fmul fast float %5012, %4756
  %5016 = fmul fast float %5013, %4756
  %5017 = fmul fast float %5014, %4756
  %5018 = fadd fast float %5015, %4534
  %5019 = fadd fast float %5016, %4535
  %5020 = fadd fast float %5017, %4536
  br label %4653

; <label>:5021                                    ; preds = %4653
  br label %5022

; <label>:5022                                    ; preds = %5021, %4467
  %5023 = phi float [ 0.000000e+00, %4467 ], [ %4654, %5021 ]
  %5024 = phi float [ %4436, %4467 ], [ %4655, %5021 ]
  %5025 = phi float [ %4434, %4467 ], [ %4656, %5021 ]
  %5026 = phi float [ %4427, %4467 ], [ %4657, %5021 ]
  %5027 = phi float [ %4428, %4467 ], [ %4658, %5021 ]
  %5028 = phi float [ %4429, %4467 ], [ %4659, %5021 ]
  %5029 = phi float [ 0.000000e+00, %4467 ], [ %4660, %5021 ]
  %5030 = phi float [ 0.000000e+00, %4467 ], [ %4661, %5021 ]
  %5031 = phi float [ %4424, %4467 ], [ %4662, %5021 ]
  %5032 = phi float [ %4425, %4467 ], [ %4663, %5021 ]
  %5033 = phi float [ %4426, %4467 ], [ %4664, %5021 ]
  %5034 = phi float [ %4421, %4467 ], [ %4665, %5021 ]
  %5035 = phi float [ %4422, %4467 ], [ %4666, %5021 ]
  %5036 = phi float [ %4423, %4467 ], [ %4667, %5021 ]
  %5037 = phi float [ %4462, %4467 ], [ %4668, %5021 ]
  %5038 = phi float [ %4463, %4467 ], [ %4669, %5021 ]
  %5039 = phi float [ %4464, %4467 ], [ %4670, %5021 ]
  %5040 = phi float [ %4432, %4467 ], [ %4671, %5021 ]
  %5041 = phi float [ %4431, %4467 ], [ %4672, %5021 ]
  %5042 = phi float [ 0.000000e+00, %4467 ], [ %4673, %5021 ]
  %5043 = phi float [ %4430, %4467 ], [ %4674, %5021 ]
  %5044 = phi float [ %4418, %4467 ], [ %4675, %5021 ]
  %5045 = phi float [ %4419, %4467 ], [ %4676, %5021 ]
  %5046 = phi float [ %4420, %4467 ], [ %4677, %5021 ]
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 25, float %5047)  ; Rsqrt(value)
  %5049 = fmul fast float %5048, %5037
  %5050 = fmul fast float %5048, %5038
  %5051 = fmul fast float %5048, %5039
  %5052 = fadd fast float %5042, %1259
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %5049, float %5050, float %5051)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5055, %5049
  %5057 = fmul fast float %5055, %5050
  %5058 = fmul fast float %5055, %5051
  br label %5059

; <label>:5059                                    ; preds = %5022, %4415
  %5060 = phi float [ %5056, %5022 ], [ %4462, %4415 ]
  %5061 = phi float [ %5057, %5022 ], [ %4463, %4415 ]
  %5062 = phi float [ %5058, %5022 ], [ %4464, %4415 ]
  %5063 = phi float [ %5044, %5022 ], [ %4418, %4415 ]
  %5064 = phi float [ %5045, %5022 ], [ %4419, %4415 ]
  %5065 = phi float [ %5046, %5022 ], [ %4420, %4415 ]
  %5066 = phi float [ %5034, %5022 ], [ %4421, %4415 ]
  %5067 = phi float [ %5035, %5022 ], [ %4422, %4415 ]
  %5068 = phi float [ %5036, %5022 ], [ %4423, %4415 ]
  %5069 = phi float [ %5031, %5022 ], [ %4424, %4415 ]
  %5070 = phi float [ %5032, %5022 ], [ %4425, %4415 ]
  %5071 = phi float [ %5033, %5022 ], [ %4426, %4415 ]
  %5072 = phi float [ %5026, %5022 ], [ %4427, %4415 ]
  %5073 = phi float [ %5027, %5022 ], [ %4428, %4415 ]
  %5074 = phi float [ %5028, %5022 ], [ %4429, %4415 ]
  %5075 = phi float [ %5043, %5022 ], [ %4430, %4415 ]
  %5076 = phi float [ %5053, %5022 ], [ %1259, %4415 ]
  %5077 = phi float [ %5041, %5022 ], [ %4431, %4415 ]
  %5078 = phi float [ %5040, %5022 ], [ %4432, %4415 ]
  %5079 = phi float [ %5030, %5022 ], [ 0.000000e+00, %4415 ]
  %5080 = phi float [ %5029, %5022 ], [ 0.000000e+00, %4415 ]
  %5081 = phi float [ %5023, %5022 ], [ 0.000000e+00, %4415 ]
  %5082 = phi float [ %5024, %5022 ], [ %4436, %4415 ]
  %5083 = phi float [ %5025, %5022 ], [ %4434, %4415 ]
  %5084 = fadd fast float %5075, 0xBFB99999A0000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, 0x3FF1C71C80000000
  %5087 = call float @dx.op.binary.f32(i32 36, float %5075, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5088 = fsub fast float 1.000000e+00, %5086
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, %5063
  %5091 = fmul fast float %5089, %5064
  %5092 = fmul fast float %5089, %5065
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = fmul fast float %5086, %5063
  %5097 = fmul fast float %5086, %5064
  %5098 = fmul fast float %5086, %5065
  %5099 = fadd fast float %5096, %5087
  %5100 = fadd fast float %5097, %5087
  %5101 = fadd fast float %5098, %5087
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5107 = extractvalue %dx.types.ResRet.i32 %5106, 0
  %5108 = and i32 %5107, 1
  %5109 = icmp eq i32 %5108, 0
  br i1 %5109, label %5124, label %5110

; <label>:5110                                    ; preds = %5059
  %5111 = call float @dx.op.binary.f32(i32 35, float %5094, float %5095)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5093, float %5111)  ; FMax(a,b)
  %5113 = fcmp fast ogt float %5112, 0.000000e+00
  %5114 = bitcast float %5112 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = select i1 %5113, float %5116, float 0.000000e+00
  %5118 = fmul fast float %5093, %5069
  %5119 = fmul fast float %5094, %5070
  %5120 = fmul fast float %5095, %5071
  %5121 = fmul fast float %5118, %5117
  %5122 = fmul fast float %5119, %5117
  %5123 = fmul fast float %5120, %5117
  br label %5124

; <label>:5124                                    ; preds = %5110, %5059
  %5125 = phi float [ %5121, %5110 ], [ %5069, %5059 ]
  %5126 = phi float [ %5122, %5110 ], [ %5070, %5059 ]
  %5127 = phi float [ %5123, %5110 ], [ %5071, %5059 ]
  %5128 = call float @dx.op.binary.f32(i32 36, float %5072, float 1.270000e+02)  ; FMin(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5073, float 1.270000e+02)  ; FMin(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5074, float 1.270000e+02)  ; FMin(a,b)
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 3
  %5133 = and i32 %5132, 8
  %5134 = icmp ne i32 %5133, 0
  %5135 = call float @dx.op.binary.f32(i32 35, float %5093, float %5063)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5094, float %5063)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5095, float %5063)  ; FMax(a,b)
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = select i1 %232, float %5063, float %5093
  %5140 = select i1 %232, float %5138, float %5094
  %5141 = select i1 %232, float 1.000000e+00, float %5095
  %5142 = select i1 %5134, float %5135, float %5139
  %5143 = select i1 %5134, float %5136, float %5140
  %5144 = select i1 %5134, float %5137, float %5141
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = select i1 %232, float %5145, float %5125
  %5147 = select i1 %232, float %5145, float %5126
  %5148 = select i1 %232, float %5145, float %5127
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5153 = fadd fast float %5150, %170
  %5154 = fadd fast float %5151, %171
  %5155 = fadd fast float %5152, %172
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = fsub fast float %5153, %5157
  %5160 = fsub fast float %5154, %5158
  %5161 = fmul fast float %5159, %5159
  %5162 = fmul fast float %5160, %5160
  %5163 = fadd fast float %5161, %5162
  %5164 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5166 = fcmp fast olt float %5164, %5165
  br i1 %5166, label %5167, label %5234

; <label>:5167                                    ; preds = %5124
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5178 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5179 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5180 = fadd fast float %5177, %5153
  %5181 = fadd fast float %5178, %5154
  %5182 = fadd fast float %5179, %5155
  %5183 = fmul fast float %5180, %5169
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5171, float %5183)  ; FMad(a,b,c)
  %5185 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5173, float %5184)  ; FMad(a,b,c)
  %5186 = fmul fast float %5180, %5174
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5176, float %5187)  ; FMad(a,b,c)
  %5189 = fsub fast float %5185, %5177
  %5190 = fsub fast float %5188, %5178
  %5191 = fsub fast float %5189, %5157
  %5192 = fadd fast float %5191, %5165
  %5193 = fsub fast float %5190, %5158
  %5194 = fadd fast float %5193, %5165
  %5195 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5196 = fmul fast float %5192, %5195
  %5197 = fmul fast float %5194, %5195
  %5198 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5200 = fsub fast float 1.000000e+00, %5198
  %5201 = fsub fast float 1.000000e+00, %5199
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = fcmp fast ugt float %5203, 0.000000e+00
  br i1 %5204, label %5205, label %5508

; <label>:5205                                    ; preds = %5167
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5208 = fmul fast float %5207, %5203
  %5209 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5210 = fadd fast float %5209, %5208
  %5211 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5212 = fadd fast float %5210, %5179
  %5213 = fmul fast float %5185, %5173
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5176, float %5213)  ; FMad(a,b,c)
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5211, float %5214)  ; FMad(a,b,c)
  %5216 = fsub fast float %5215, %5179
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = fsub fast float %5216, %5218
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = fadd fast float %5225, %5221
  %5229 = fmul fast float %5228, 0x3F847AE140000000
  %5230 = fadd fast float %5226, %5222
  %5231 = fmul fast float %5230, 0x3F847AE140000000
  %5232 = fadd fast float %5227, %5223
  %5233 = fmul fast float %5232, 0x3F847AE140000000
  br label %5508

; <label>:5234                                    ; preds = %5124
  %5235 = and i32 %208, 1
  %5236 = icmp eq i32 %5235, 0
  br i1 %5236, label %5508, label %5237

; <label>:5237                                    ; preds = %5234
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5248 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5249 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5250 = fadd fast float %5247, %5153
  %5251 = fadd fast float %5248, %5154
  %5252 = fadd fast float %5249, %5155
  %5253 = fmul fast float %5250, %5239
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5241, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5243, float %5254)  ; FMad(a,b,c)
  %5256 = fmul fast float %5250, %5244
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5246, float %5257)  ; FMad(a,b,c)
  %5259 = fsub fast float %5255, %5247
  %5260 = fsub fast float %5258, %5248
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.i32 %5268, 1
  %5271 = udiv i32 %5270, %5269
  %5272 = fsub fast float %5259, %5262
  %5273 = fsub fast float %5260, %5263
  %5274 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5275 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5274, float %5264)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5275, float %5265)  ; FMin(a,b)
  %5278 = add i32 %5269, -1
  %5279 = add i32 %5271, -1
  %5280 = fmul fast float %5276, %5267
  %5281 = fmul fast float %5277, %5267
  %5282 = fptoui float %5280 to i32
  %5283 = fptoui float %5281 to i32
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5278)  ; UMin(a,b)
  %5285 = call i32 @dx.op.binary.i32(i32 40, i32 %5283, i32 %5279)  ; UMin(a,b)
  %5286 = mul i32 %5285, %5269
  %5287 = add i32 %5286, %5284
  %5288 = shl i32 %5287, 2
  %5289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.i32 %5289, 0
  %5291 = icmp eq i32 %5290, -1
  br i1 %5291, label %5508, label %5292

; <label>:5292                                    ; preds = %5237
  %5293 = mul i32 %5290, 148
  %5294 = add i32 %5293, 4
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = add i32 %5293, 8
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = add i32 %5293, 36
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = add i32 %5293, 60
  %5304 = add i32 %5293, 92
  %5305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.i32 %5305, 0
  %5307 = add i32 %5293, 116
  %5308 = fsub fast float %5259, %5296
  %5309 = fsub fast float %5260, %5299
  %5310 = fmul fast float %5267, %5308
  %5311 = fmul fast float %5267, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5317 = call float @dx.op.unary.f32(i32 83, float %5312)  ; DerivCoarseX(value)
  %5318 = call float @dx.op.unary.f32(i32 83, float %5314)  ; DerivCoarseX(value)
  %5319 = call float @dx.op.unary.f32(i32 84, float %5312)  ; DerivCoarseY(value)
  %5320 = call float @dx.op.unary.f32(i32 84, float %5314)  ; DerivCoarseY(value)
  %5321 = fmul fast float %5317, %5316
  %5322 = fmul fast float %5318, %5316
  %5323 = fmul fast float %5319, %5316
  %5324 = fmul fast float %5320, %5316
  %5325 = call float @dx.op.dot2.f32(i32 54, float %5323, float %5324, float %5323, float %5324)  ; Dot2(ax,ay,bx,by)
  %5326 = call float @dx.op.dot2.f32(i32 54, float %5321, float %5322, float %5321, float %5322)  ; Dot2(ax,ay,bx,by)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5326, float %5325)  ; FMax(a,b)
  %5328 = call float @dx.op.unary.f32(i32 23, float %5327)  ; Log(value)
  %5329 = fmul fast float %5328, 5.000000e-01
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5332 = fadd fast float %5331, %5329
  %5333 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5336 = fadd fast float %5335, %5333
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5339 = fadd fast float %5336, %5338
  %5340 = add i32 %5306, 0
  %5341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5340, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5342 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5341, i32 0)  ; GetDimensions(handle,mipLevel)
  %5343 = extractvalue %dx.types.Dimensions %5342, 0
  %5344 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5343)  ; FirstbitLo(value)
  %5345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.i32 %5345, 1
  %5347 = sub nsw i32 %5346, %5344
  %5348 = sitofp i32 %5347 to float
  %5349 = fsub fast float %5339, %5348
  %5350 = call float @dx.op.binary.f32(i32 35, float %5349, float 0.000000e+00)  ; FMax(a,b)
  %5351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5341, %dx.types.Handle %52, float %5312, float %5314, float %5302, float undef, i32 0, i32 0, i32 undef, float %5350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = fcmp ule float %5352, 0x3FE0101020000000
  %5354 = extractvalue %dx.types.CBufRet.i32 %5345, 0
  %5355 = and i32 %5354, 128
  %5356 = icmp ne i32 %5355, 0
  %5357 = and i1 %5353, %5356
  br i1 %5357, label %5508, label %5358

; <label>:5358                                    ; preds = %5292
  %5359 = add i32 %5293, 20
  %5360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = add i32 %5293, 24
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = add i32 %5293, 40
  %5366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = add i32 %5293, 96
  %5369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.i32 %5369, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5373 = fmul fast float %5372, %5312
  %5374 = fmul fast float %5372, %5314
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = fadd fast float %5373, %5375
  %5377 = fadd fast float %5374, %5375
  %5378 = add i32 %5370, 0
  %5379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5379, i32 0)  ; GetDimensions(handle,mipLevel)
  %5381 = extractvalue %dx.types.Dimensions %5380, 0
  %5382 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5381)  ; FirstbitLo(value)
  %5383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.i32 %5383, 1
  %5385 = sub nsw i32 %5384, %5382
  %5386 = sitofp i32 %5385 to float
  %5387 = fsub fast float %5336, %5386
  %5388 = call float @dx.op.binary.f32(i32 35, float %5387, float 0.000000e+00)  ; FMax(a,b)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5379, %dx.types.Handle %52, float %5376, float %5377, float %5367, float undef, i32 0, i32 0, i32 undef, float %5388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = fmul fast float %5390, %5361
  %5392 = fadd fast float %5391, %5364
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5401 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5402 = fadd fast float %5398, %5259
  %5403 = fadd fast float %5400, %5260
  %5404 = fadd fast float %5392, %5401
  %5405 = fmul fast float %5402, %5394
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5403, float %5395, float %5405)  ; FMad(a,b,c)
  %5407 = call float @dx.op.tertiary.f32(i32 46, float %5404, float %5396, float %5406)  ; FMad(a,b,c)
  %5408 = fsub fast float %5407, %5401
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = fsub fast float %5408, %5410
  %5412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.i32 %5412, 0
  %5414 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 %5413)  ; UMin(a,b)
  %5415 = mul i32 %5414, 36
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = add i32 %5415, 4
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = fmul fast float %5420, %5312
  %5422 = fmul fast float %5420, %5314
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5424 = fadd fast float %5421, %5423
  %5425 = fadd fast float %5422, %5423
  %5426 = icmp eq i32 %5417, 0
  br i1 %5426, label %5495, label %5427

; <label>:5427                                    ; preds = %5358
  br label %5428

; <label>:5428                                    ; preds = %5485, %5427
  %5429 = phi float [ %5486, %5485 ], [ 0.000000e+00, %5427 ]
  %5430 = phi float [ %5487, %5485 ], [ 0.000000e+00, %5427 ]
  %5431 = phi float [ %5488, %5485 ], [ 0.000000e+00, %5427 ]
  %5432 = phi float [ %5489, %5485 ], [ 0.000000e+00, %5427 ]
  %5433 = phi float [ %5490, %5485 ], [ 0.000000e+00, %5427 ]
  %5434 = phi float [ %5491, %5485 ], [ 0.000000e+00, %5427 ]
  %5435 = phi i32 [ %5492, %5485 ], [ 0, %5427 ]
  %5436 = shl i32 %5435, 2
  %5437 = add i32 %5303, %5436
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = add i32 %5307, %5436
  %5441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.i32 %5441, 0
  %5443 = add i32 %5442, 0
  %5444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5445 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5444, i32 0)  ; GetDimensions(handle,mipLevel)
  %5446 = extractvalue %dx.types.Dimensions %5445, 0
  %5447 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5446)  ; FirstbitLo(value)
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 1
  %5450 = sub nsw i32 %5449, %5447
  %5451 = sitofp i32 %5450 to float
  %5452 = fsub fast float %5336, %5451
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5444, %dx.types.Handle %52, float %5424, float %5425, float %5439, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5456, label %5457, label %5485

; <label>:5457                                    ; preds = %5428
  %5458 = add i32 %5418, %5436
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = and i32 %5460, 32767
  %5462 = mul nuw nsw i32 %5461, 928
  %5463 = add nuw nsw i32 %5462, 48
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = add nuw nsw i32 %5462, 60
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = fmul fast float %5465, %5455
  %5474 = fmul fast float %5466, %5455
  %5475 = fmul fast float %5467, %5455
  %5476 = fadd fast float %5473, %5429
  %5477 = fadd fast float %5474, %5430
  %5478 = fadd fast float %5475, %5431
  %5479 = fmul fast float %5470, %5455
  %5480 = fmul fast float %5471, %5455
  %5481 = fmul fast float %5472, %5455
  %5482 = fadd fast float %5479, %5432
  %5483 = fadd fast float %5480, %5433
  %5484 = fadd fast float %5481, %5434
  br label %5485

; <label>:5485                                    ; preds = %5457, %5428
  %5486 = phi float [ %5476, %5457 ], [ %5429, %5428 ]
  %5487 = phi float [ %5477, %5457 ], [ %5430, %5428 ]
  %5488 = phi float [ %5478, %5457 ], [ %5431, %5428 ]
  %5489 = phi float [ %5482, %5457 ], [ %5432, %5428 ]
  %5490 = phi float [ %5483, %5457 ], [ %5433, %5428 ]
  %5491 = phi float [ %5484, %5457 ], [ %5434, %5428 ]
  %5492 = add nuw i32 %5435, 1
  %5493 = icmp eq i32 %5492, %5417
  br i1 %5493, label %5494, label %5428

; <label>:5494                                    ; preds = %5485
  br label %5495

; <label>:5495                                    ; preds = %5494, %5358
  %5496 = phi float [ 0.000000e+00, %5358 ], [ %5486, %5494 ]
  %5497 = phi float [ 0.000000e+00, %5358 ], [ %5487, %5494 ]
  %5498 = phi float [ 0.000000e+00, %5358 ], [ %5488, %5494 ]
  %5499 = phi float [ 0.000000e+00, %5358 ], [ %5489, %5494 ]
  %5500 = phi float [ 0.000000e+00, %5358 ], [ %5490, %5494 ]
  %5501 = phi float [ 0.000000e+00, %5358 ], [ %5491, %5494 ]
  %5502 = fadd fast float %5499, %5496
  %5503 = fmul fast float %5502, 0x3F847AE140000000
  %5504 = fadd fast float %5500, %5497
  %5505 = fmul fast float %5504, 0x3F847AE140000000
  %5506 = fadd fast float %5501, %5498
  %5507 = fmul fast float %5506, 0x3F847AE140000000
  br label %5508

; <label>:5508                                    ; preds = %5495, %5292, %5237, %5234, %5205, %5167
  %5509 = phi float [ %5229, %5205 ], [ 0.000000e+00, %5167 ], [ %5503, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5510 = phi float [ %5231, %5205 ], [ 0.000000e+00, %5167 ], [ %5505, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5511 = phi float [ %5233, %5205 ], [ 0.000000e+00, %5167 ], [ %5507, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5512 = phi float [ %5219, %5205 ], [ -1.310720e+05, %5167 ], [ %5411, %5495 ], [ -1.310720e+05, %5237 ], [ -1.310720e+05, %5292 ], [ -1.310720e+05, %5234 ]
  %5513 = phi i1 [ true, %5205 ], [ false, %5167 ], [ true, %5495 ], [ false, %5237 ], [ false, %5292 ], [ false, %5234 ]
  %5514 = and i32 %208, 3
  %5515 = icmp eq i32 %5514, 1
  %5516 = select i1 %5515, float 1.000000e+00, float 0.000000e+00
  %5517 = fsub fast float %5512, %172
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = select i1 %5513, float %5518, float 1.000000e+00
  %5520 = fmul fast float %5519, %5516
  %5521 = icmp eq i32 %5514, 3
  %5522 = select i1 %5521, float 1.000000e+00, float %5520
  %5523 = call float @dx.op.binary.f32(i32 35, float %5081, float %5522)  ; FMax(a,b)
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = fcmp fast une float %5524, 0.000000e+00
  %5526 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 25, float %5526)  ; Rsqrt(value)
  br i1 %5525, label %5535, label %5528

; <label>:5528                                    ; preds = %5508
  %5529 = fmul fast float %5527, %170
  %5530 = fmul fast float %5527, %171
  %5531 = fmul fast float %5527, %172
  %5532 = fsub fast float -0.000000e+00, %5529
  %5533 = fsub fast float -0.000000e+00, %5530
  %5534 = fsub fast float -0.000000e+00, %5531
  br label %5703

; <label>:5535                                    ; preds = %5508
  %5536 = fmul fast float %170, %5527
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = fmul fast float %171, %5527
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fmul fast float %172, %5527
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5539, float %5541, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5524, 2.500000e+00
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5524, 0x4013FFFFE0000000
  %5546 = fadd fast float %5545, 0xBFFFFFFFE0000000
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fmul fast float %5524, 0x4004000020000000
  %5549 = fadd fast float %5548, 0xBFF8000040000000
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5552 = fmul fast float %5084, 1.000000e+01
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = fsub fast float 3.000000e+00, %5554
  %5556 = fmul fast float %5553, %5553
  %5557 = fmul fast float %5556, %5555
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = fsub fast float 0x3FE3333340000000, %5105
  %5560 = fmul fast float %5559, 0x400AAAAAA0000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fmul fast float %5558, %5561
  %5563 = fmul fast float %5142, 0x3FEA2B8620000000
  %5564 = fmul fast float %5143, 0x3FEA2B8620000000
  %5565 = fmul fast float %5144, 0x3FEA2B8620000000
  %5566 = fadd fast float %5563, 0x3FC81DFBA0000000
  %5567 = fmul fast float %5566, %5142
  %5568 = fadd fast float %5567, 0x3F910E6020000000
  %5569 = fadd fast float %5564, 0x3FC81DFBA0000000
  %5570 = fmul fast float %5569, %5143
  %5571 = fadd fast float %5570, 0x3F910E6020000000
  %5572 = fadd fast float %5565, 0x3FC81DFBA0000000
  %5573 = fmul fast float %5572, %5144
  %5574 = fadd fast float %5573, 0x3F910E6020000000
  %5575 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = fsub fast float %5575, %5142
  %5579 = fsub fast float %5576, %5143
  %5580 = fsub fast float %5577, %5144
  %5581 = fmul fast float %5578, %5551
  %5582 = fmul fast float %5581, %5562
  %5583 = fmul fast float %5579, %5551
  %5584 = fmul fast float %5583, %5562
  %5585 = fmul fast float %5580, %5551
  %5586 = fmul fast float %5585, %5562
  %5587 = fadd fast float %5582, %5142
  %5588 = fadd fast float %5584, %5143
  %5589 = fadd fast float %5586, %5144
  %5590 = fmul fast float %5078, %5078
  %5591 = fmul fast float %5590, %5590
  %5592 = fadd fast float %5547, 1.000000e+00
  %5593 = fsub fast float %5592, %5562
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fsub fast float 1.000000e+00, %5591
  %5598 = call float @dx.op.binary.f32(i32 36, float %5594, float %5597)  ; FMin(a,b)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5598, float %5599)  ; FMax(a,b)
  %5601 = fadd fast float %5596, 0xBFE4CCCCC0000000
  %5602 = fmul fast float %5601, 0x4006DB6DA0000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = fsub fast float 3.000000e+00, %5604
  %5606 = bitcast float %5102 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = bitcast float %5103 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = bitcast float %5104 to i32
  %5625 = ashr i32 %5624, 1
  %5626 = add nsw i32 %5625, 532487669
  %5627 = bitcast i32 %5626 to float
  %5628 = fsub fast float 1.000000e+00, %5627
  %5629 = bitcast float %5628 to i32
  %5630 = sub nsw i32 2129859010, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5631, 2.000000e+00
  %5633 = fsub fast float 0x4002A9FBE0000000, %5614
  %5634 = fadd fast float %5614, 0x3FD54FDF00000000
  %5635 = bitcast float %5634 to i32
  %5636 = sub nsw i32 2129859010, %5635
  %5637 = bitcast i32 %5636 to float
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %5638, %5638
  %5640 = fsub fast float 0x4002A9FBE0000000, %5623
  %5641 = fadd fast float %5623, 0x3FD54FDF00000000
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5645, %5645
  %5647 = fsub fast float 0x4002A9FBE0000000, %5632
  %5648 = fadd fast float %5632, 0x3FD54FDF00000000
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = bitcast i32 %5650 to float
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5652, %5652
  %5654 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5639)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5646)  ; FMax(a,b)
  %5656 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5653)  ; FMax(a,b)
  %5657 = fsub fast float 1.000000e+00, %5542
  %5658 = fadd fast float %5657, %5558
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5522
  %5661 = fmul fast float %5600, %5660
  %5662 = fmul fast float %5603, %5603
  %5663 = fmul fast float %5662, %5661
  %5664 = fmul fast float %5663, %5605
  %5665 = fmul fast float %5660, 0xBFE99999A0000000
  %5666 = fmul fast float %5665, %5551
  %5667 = fmul fast float %5666, %5562
  %5668 = fadd fast float %5667, 1.000000e+00
  %5669 = fadd fast float %5105, -1.000000e+00
  %5670 = fmul fast float %5668, %5669
  %5671 = fadd fast float %5670, 1.000000e+00
  %5672 = fsub fast float %5654, %5102
  %5673 = fsub fast float %5655, %5103
  %5674 = fsub fast float %5656, %5104
  %5675 = fmul fast float %5664, %5672
  %5676 = fmul fast float %5664, %5673
  %5677 = fmul fast float %5664, %5674
  %5678 = fadd fast float %5675, %5102
  %5679 = fadd fast float %5676, %5103
  %5680 = fadd fast float %5677, %5104
  %5681 = fsub fast float %120, %5060
  %5682 = fsub fast float %122, %5061
  %5683 = fsub fast float %124, %5062
  %5684 = fmul fast float %5664, %5681
  %5685 = fmul fast float %5664, %5682
  %5686 = fmul fast float %5664, %5683
  %5687 = fadd fast float %5684, %5060
  %5688 = fadd fast float %5685, %5061
  %5689 = fadd fast float %5686, %5062
  %5690 = fmul fast float %5664, %5659
  %5691 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5690, %5692
  %5694 = fadd fast float %5693, %5691
  %5695 = fsub fast float 1.000000e+00, %5078
  %5696 = fmul fast float %5664, %5695
  %5697 = fadd fast float %5696, %5078
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 25, float %5698)  ; Rsqrt(value)
  %5700 = fmul fast float %5687, %5699
  %5701 = fmul fast float %5688, %5699
  %5702 = fmul fast float %5689, %5699
  br label %5703

; <label>:5703                                    ; preds = %5535, %5528
  %5704 = phi float [ %5534, %5528 ], [ %5541, %5535 ]
  %5705 = phi float [ %5533, %5528 ], [ %5539, %5535 ]
  %5706 = phi float [ %5532, %5528 ], [ %5537, %5535 ]
  %5707 = phi float [ %5531, %5528 ], [ %5540, %5535 ]
  %5708 = phi float [ %5530, %5528 ], [ %5538, %5535 ]
  %5709 = phi float [ %5529, %5528 ], [ %5536, %5535 ]
  %5710 = phi float [ %5142, %5528 ], [ %5587, %5535 ]
  %5711 = phi float [ %5143, %5528 ], [ %5588, %5535 ]
  %5712 = phi float [ %5144, %5528 ], [ %5589, %5535 ]
  %5713 = phi float [ %5102, %5528 ], [ %5678, %5535 ]
  %5714 = phi float [ %5103, %5528 ], [ %5679, %5535 ]
  %5715 = phi float [ %5104, %5528 ], [ %5680, %5535 ]
  %5716 = phi float [ %5060, %5528 ], [ %5700, %5535 ]
  %5717 = phi float [ %5061, %5528 ], [ %5701, %5535 ]
  %5718 = phi float [ %5062, %5528 ], [ %5702, %5535 ]
  %5719 = phi float [ %5105, %5528 ], [ %5694, %5535 ]
  %5720 = phi float [ %5078, %5528 ], [ %5697, %5535 ]
  %5721 = fsub fast float -0.000000e+00, %172
  %5722 = select i1 %232, float 0.000000e+00, float %5715
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5706, float %5705, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5708, float %5707, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fmul fast float %5725, 2.000000e+00
  %5727 = fmul fast float %5726, %5716
  %5728 = fmul fast float %5726, %5717
  %5729 = fmul fast float %5726, %5718
  %5730 = fsub fast float %5709, %5727
  %5731 = fsub fast float %5708, %5728
  %5732 = fsub fast float %5707, %5729
  %5733 = call float @dx.op.binary.f32(i32 36, float %5720, float 1.000000e+00)  ; FMin(a,b)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = ashr i32 %5735, 1
  %5737 = add nsw i32 %5736, 532487669
  %5738 = bitcast i32 %5737 to float
  %5739 = fsub fast float 1.000000e+00, %5719
  %5740 = call float @dx.op.binary.f32(i32 35, float %5739, float 0x3F847AE140000000)  ; FMax(a,b)
  %5741 = fmul fast float %5740, %5740
  %5742 = fmul fast float %5741, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5738, float %5742, float %5743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fsub fast float 1.000000e+00, %5720
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fmul fast float %5750, 0x3FD20DD760000000
  %5752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5753 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fcmp fast oeq float %5752, 0.000000e+00
  %5756 = or i1 %5755, %5754
  br i1 %5756, label %5786, label %5757

; <label>:5757                                    ; preds = %5703
  %5758 = fsub fast float -0.000000e+00, %82
  %5759 = fsub fast float -0.000000e+00, %80
  %5760 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5761 = fdiv fast float %5760, %5752
  %5762 = fcmp fast ogt float %5761, 0x3FFB6F8900000000
  %5763 = select i1 %5762, float 0x3FFB6F8900000000, float %5761
  %5764 = fmul fast float %5763, 0x3FE8A23460000000
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5767 = fmul fast float %5765, %5752
  %5768 = fmul fast float %5766, 0x3FF279A740000000
  %5769 = fadd fast float %5768, -1.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %81, float %5758, float %5759, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5758
  %5773 = fmul fast float %5771, %5759
  %5774 = fmul fast float %5771, %81
  %5775 = fmul fast float %5769, %5769
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5766, 0x40005F8BE0000000
  %5778 = fsub fast float 0x400C5BF8A0000000, %5777
  %5779 = fdiv fast float %5767, %5778
  %5780 = fmul fast float %5779, 0x3FEE31C3C0000000
  %5781 = fmul fast float %5780, %5776
  %5782 = fmul fast float %5766, 0x3FDACB7480000000
  %5783 = fadd fast float %5782, 0xBFD7347680000000
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5776
  br label %5786

; <label>:5786                                    ; preds = %5757, %5703
  %5787 = phi float [ %5772, %5757 ], [ 0.000000e+00, %5703 ]
  %5788 = phi float [ %5773, %5757 ], [ 0.000000e+00, %5703 ]
  %5789 = phi float [ %5774, %5757 ], [ 0.000000e+00, %5703 ]
  %5790 = phi float [ %5781, %5757 ], [ 0.000000e+00, %5703 ]
  %5791 = phi float [ %5785, %5757 ], [ 0.000000e+00, %5703 ]
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = fmul fast float %5752, 0x3FD20DD760000000
  %5798 = fmul fast float %5796, %5791
  %5799 = fadd fast float %5798, %5797
  %5800 = fmul fast float %5793, %5790
  %5801 = fadd fast float %5799, %5800
  %5802 = fsub fast float %5799, %5800
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, 0x3FDF454380000000
  %5805 = fmul fast float %5803, %5803
  %5806 = fmul fast float %5805, 0x3FEE471020000000
  %5807 = fadd fast float %5806, 0xBFD42F6020000000
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5790, float %5791, float 0x3FD20DD760000000, float %5804, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5810 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fcmp fast oeq float %5810, 0.000000e+00
  %5812 = fcmp fast oeq float %5809, 0.000000e+00
  %5813 = or i1 %5812, %5811
  br i1 %5813, label %5843, label %5814

; <label>:5814                                    ; preds = %5786
  %5815 = fsub fast float -0.000000e+00, %78
  %5816 = fsub fast float -0.000000e+00, %76
  %5817 = call float @dx.op.unary.f32(i32 24, float %5810)  ; Sqrt(value)
  %5818 = fdiv fast float %5817, %5809
  %5819 = fcmp fast ogt float %5818, 0x3FFB6F8900000000
  %5820 = select i1 %5819, float 0x3FFB6F8900000000, float %5818
  %5821 = fmul fast float %5820, 0x3FE8A23460000000
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5820, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5824 = fmul fast float %5822, %5809
  %5825 = fmul fast float %5823, 0x3FF279A740000000
  %5826 = fadd fast float %5825, -1.000000e+00
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %77, float %5815, float %5816, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.unary.f32(i32 25, float %5827)  ; Rsqrt(value)
  %5829 = fmul fast float %5828, %5815
  %5830 = fmul fast float %5828, %5816
  %5831 = fmul fast float %5828, %77
  %5832 = fmul fast float %5826, %5826
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5823, 0x40005F8BE0000000
  %5835 = fsub fast float 0x400C5BF8A0000000, %5834
  %5836 = fdiv fast float %5824, %5835
  %5837 = fmul fast float %5836, 0x3FEE31C3C0000000
  %5838 = fmul fast float %5837, %5833
  %5839 = fmul fast float %5823, 0x3FDACB7480000000
  %5840 = fadd fast float %5839, 0xBFD7347680000000
  %5841 = fmul fast float %5840, %5836
  %5842 = fmul fast float %5841, %5833
  br label %5843

; <label>:5843                                    ; preds = %5814, %5786
  %5844 = phi float [ %5829, %5814 ], [ 0.000000e+00, %5786 ]
  %5845 = phi float [ %5830, %5814 ], [ 0.000000e+00, %5786 ]
  %5846 = phi float [ %5831, %5814 ], [ 0.000000e+00, %5786 ]
  %5847 = phi float [ %5838, %5814 ], [ 0.000000e+00, %5786 ]
  %5848 = phi float [ %5842, %5814 ], [ 0.000000e+00, %5786 ]
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fmul fast float %5849, 0x3FDF454380000000
  %5851 = fmul fast float %5849, %5849
  %5852 = fmul fast float %5851, 0x3FEE471020000000
  %5853 = fadd fast float %5852, 0xBFD42F6020000000
  %5854 = fmul fast float %5809, 0x3FD20DD760000000
  %5855 = fmul fast float %5853, %5848
  %5856 = fadd fast float %5855, %5854
  %5857 = fmul fast float %5850, %5847
  %5858 = fadd fast float %5856, %5857
  %5859 = fsub fast float %5856, %5857
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, 0x3FDF454380000000
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5847, float %5848, float 0x3FD20DD760000000, float %5861, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5867 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  %5869 = fcmp fast oeq float %5866, 0.000000e+00
  %5870 = or i1 %5869, %5868
  br i1 %5870, label %5900, label %5871

; <label>:5871                                    ; preds = %5843
  %5872 = fsub fast float -0.000000e+00, %74
  %5873 = fsub fast float -0.000000e+00, %72
  %5874 = call float @dx.op.unary.f32(i32 24, float %5867)  ; Sqrt(value)
  %5875 = fdiv fast float %5874, %5866
  %5876 = fcmp fast ogt float %5875, 0x3FFB6F8900000000
  %5877 = select i1 %5876, float 0x3FFB6F8900000000, float %5875
  %5878 = fmul fast float %5877, 0x3FE8A23460000000
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5881 = fmul fast float %5879, %5866
  %5882 = fmul fast float %5880, 0x3FF279A740000000
  %5883 = fadd fast float %5882, -1.000000e+00
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %73, float %5872, float %5873, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 25, float %5884)  ; Rsqrt(value)
  %5886 = fmul fast float %5885, %5872
  %5887 = fmul fast float %5885, %5873
  %5888 = fmul fast float %5885, %73
  %5889 = fmul fast float %5883, %5883
  %5890 = fsub fast float 1.000000e+00, %5889
  %5891 = fmul fast float %5880, 0x40005F8BE0000000
  %5892 = fsub fast float 0x400C5BF8A0000000, %5891
  %5893 = fdiv fast float %5881, %5892
  %5894 = fmul fast float %5893, 0x3FEE31C3C0000000
  %5895 = fmul fast float %5894, %5890
  %5896 = fmul fast float %5880, 0x3FDACB7480000000
  %5897 = fadd fast float %5896, 0xBFD7347680000000
  %5898 = fmul fast float %5897, %5893
  %5899 = fmul fast float %5898, %5890
  br label %5900

; <label>:5900                                    ; preds = %5871, %5843
  %5901 = phi float [ %5886, %5871 ], [ 0.000000e+00, %5843 ]
  %5902 = phi float [ %5887, %5871 ], [ 0.000000e+00, %5843 ]
  %5903 = phi float [ %5888, %5871 ], [ 0.000000e+00, %5843 ]
  %5904 = phi float [ %5895, %5871 ], [ 0.000000e+00, %5843 ]
  %5905 = phi float [ %5899, %5871 ], [ 0.000000e+00, %5843 ]
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fmul fast float %5906, 0x3FDF454380000000
  %5908 = fmul fast float %5906, %5906
  %5909 = fmul fast float %5908, 0x3FEE471020000000
  %5910 = fadd fast float %5909, 0xBFD42F6020000000
  %5911 = fmul fast float %5866, 0x3FD20DD760000000
  %5912 = fmul fast float %5910, %5905
  %5913 = fadd fast float %5912, %5911
  %5914 = fmul fast float %5907, %5904
  %5915 = fadd fast float %5913, %5914
  %5916 = fsub fast float %5913, %5914
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, 0x3FDF454380000000
  %5919 = fmul fast float %5917, %5917
  %5920 = fmul fast float %5919, 0x3FEE471020000000
  %5921 = fadd fast float %5920, 0xBFD42F6020000000
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5904, float %5905, float 0x3FD20DD760000000, float %5918, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5802, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5859, float 0.000000e+00)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5916, float 0.000000e+00)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = call float @dx.op.binary.f32(i32 36, float %5710, float %5933)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5734
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = call float @dx.op.binary.f32(i32 36, float %5711, float %5933)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5734
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = bitcast float %5942 to i32
  %5944 = sub nsw i32 2129859010, %5943
  %5945 = bitcast i32 %5944 to float
  %5946 = call float @dx.op.binary.f32(i32 36, float %5712, float %5933)  ; FMin(a,b)
  %5947 = fmul fast float %5946, %5734
  %5948 = fsub fast float 1.000000e+00, %5947
  %5949 = bitcast float %5948 to i32
  %5950 = sub nsw i32 2129859010, %5949
  %5951 = bitcast i32 %5950 to float
  %5952 = fmul fast float %5923, %5733
  %5953 = fmul fast float %5952, %5939
  %5954 = fmul fast float %5924, %5733
  %5955 = fmul fast float %5954, %5945
  %5956 = fmul fast float %5925, %5733
  %5957 = fmul fast float %5956, %5951
  %5958 = call float @dx.op.binary.f32(i32 36, float %5713, float %5933)  ; FMin(a,b)
  %5959 = fmul fast float %5958, %5734
  %5960 = fsub fast float 1.000000e+00, %5959
  %5961 = bitcast float %5960 to i32
  %5962 = sub nsw i32 2129859010, %5961
  %5963 = bitcast i32 %5962 to float
  %5964 = call float @dx.op.binary.f32(i32 36, float %5714, float %5933)  ; FMin(a,b)
  %5965 = fmul fast float %5964, %5734
  %5966 = fsub fast float 1.000000e+00, %5965
  %5967 = bitcast float %5966 to i32
  %5968 = sub nsw i32 2129859010, %5967
  %5969 = bitcast i32 %5968 to float
  %5970 = call float @dx.op.binary.f32(i32 36, float %5722, float %5933)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5734
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = fmul fast float %5929, %5733
  %5977 = fmul fast float %5976, %5963
  %5978 = fmul fast float %5930, %5733
  %5979 = fmul fast float %5978, %5969
  %5980 = fmul fast float %5931, %5733
  %5981 = fmul fast float %5980, %5975
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5955, float %5957, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = select i1 %232, float 0.000000e+00, float %5953
  %5984 = select i1 %232, float %5982, float %5955
  %5985 = select i1 %232, float 0.000000e+00, float %5957
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = select i1 %232, float 0.000000e+00, float %5926
  %5988 = select i1 %232, float %5986, float %5927
  %5989 = select i1 %232, float 0.000000e+00, float %5928
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5979, float %5981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = select i1 %232, float 0.000000e+00, float %5977
  %5992 = select i1 %232, float %5990, float %5979
  %5993 = select i1 %232, float 0.000000e+00, float %5981
  %5994 = fmul fast float %4433, %4433
  %5995 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5996 = fmul fast float %5724, 9.843750e-01
  %5997 = fmul fast float %5719, 9.843750e-01
  %5998 = fadd fast float %5996, 7.812500e-03
  %5999 = fadd fast float %5997, 7.812500e-03
  %6000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5998, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = extractvalue %dx.types.ResRet.f32 %6000, 3
  %6005 = fsub fast float 1.000000e+00, %5995
  %6006 = fsub fast float %6003, %6001
  %6007 = fsub fast float %6004, %6002
  %6008 = fmul fast float %6006, %6005
  %6009 = fmul fast float %6007, %6005
  %6010 = fadd fast float %6008, %6001
  %6011 = fadd fast float %6009, %6002
  %6012 = fmul fast float %6010, %5713
  %6013 = fmul fast float %6010, %5714
  %6014 = fmul fast float %6010, %5722
  %6015 = fadd fast float %6012, %6011
  %6016 = fadd fast float %6013, %6011
  %6017 = fadd fast float %6014, %6011
  %6018 = fcmp fast ogt float %5079, 0.000000e+00
  br i1 %6018, label %6019, label %6045

; <label>:6019                                    ; preds = %5900
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %5724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fsub fast float 1.000000e+00, %5713
  %6028 = fsub fast float 1.000000e+00, %5714
  %6029 = fsub fast float 1.000000e+00, %5722
  %6030 = fmul fast float %5713, 4.000000e+00
  %6031 = fmul fast float %6030, %6027
  %6032 = fmul fast float %6031, %6024
  %6033 = fmul fast float %5714, 4.000000e+00
  %6034 = fmul fast float %6033, %6028
  %6035 = fmul fast float %6034, %6025
  %6036 = fmul fast float %5722, 4.000000e+00
  %6037 = fmul fast float %6036, %6029
  %6038 = fmul fast float %6037, %6026
  %6039 = fadd fast float %6032, %6015
  %6040 = fadd fast float %6035, %6016
  %6041 = fadd fast float %6038, %6017
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  br label %6045

; <label>:6045                                    ; preds = %6019, %5900
  %6046 = phi float [ %6042, %6019 ], [ %6015, %5900 ]
  %6047 = phi float [ %6043, %6019 ], [ %6016, %5900 ]
  %6048 = phi float [ %6044, %6019 ], [ %6017, %5900 ]
  %6049 = call float @dx.op.binary.f32(i32 35, float %6047, float %6048)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float %6046, float %6049)  ; FMax(a,b)
  %6051 = fsub fast float 1.000000e+00, %6050
  %6052 = fmul fast float %6050, %5719
  %6053 = fadd fast float %6052, %5719
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6057 = fmul fast float %6053, %6055
  %6058 = fadd fast float %6057, %6056
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = fsub fast float 1.000000e+00, %5745
  %6061 = fadd fast float %6060, %6059
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = fcmp fast olt float %6062, 1.000000e+00
  br i1 %6063, label %6064, label %6540

; <label>:6064                                    ; preds = %6045
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6068 = fmul fast float %6066, %111
  %6069 = fmul fast float %6067, %112
  %6070 = fptoui float %6068 to i32
  %6071 = fptoui float %6069 to i32
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6076 = fadd fast float %99, -4.000000e+00
  %6077 = call float @dx.op.binary.f32(i32 35, float %6076, float 0.000000e+00)  ; FMax(a,b)
  %6078 = fadd fast float %6077, %6073
  %6079 = fmul fast float %6078, %6074
  %6080 = call float @dx.op.unary.f32(i32 23, float %6079)  ; Log(value)
  %6081 = fmul fast float %6080, %6075
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6084 = fmul fast float %6081, %6083
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.i32 %6086, 1
  %6088 = add i32 %6087, -1
  %6089 = uitofp i32 %6087 to float
  %6090 = fmul fast float %6089, %6085
  %6091 = fptoui float %6090 to i32
  %6092 = call i32 @dx.op.binary.i32(i32 40, i32 %6091, i32 %6088)  ; UMin(a,b)
  %6093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.i32 %6093, 2
  %6095 = extractvalue %dx.types.CBufRet.i32 %6093, 3
  %6096 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6071, i32 %6094, i32 %6070)  ; UMad(a,b,c)
  %6097 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6092, i32 %6095, i32 %6096)  ; UMad(a,b,c)
  %6098 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6099 = fptoui float %6098 to i32
  %6100 = lshr i32 %6099, 5
  %6101 = call i32 @dx.op.binary.i32(i32 40, i32 %6100, i32 8191)  ; UMin(a,b)
  %6102 = fsub fast float %5512, %172
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = fcmp fast ogt float %6103, 0.000000e+00
  %6105 = fcmp fast ogt float %5732, 0.000000e+00
  %6106 = and i1 %6105, %6104
  br i1 %6106, label %6107, label %6136

; <label>:6107                                    ; preds = %6064
  %6108 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = call float @dx.op.binary.f32(i32 35, float %6108, float -1.000000e+00)  ; FMax(a,b)
  %6110 = call float @dx.op.binary.f32(i32 36, float %6109, float 1.000000e+00)  ; FMin(a,b)
  %6111 = fmul fast float %6110, %6110
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = fmul fast float %6112, 0x3FFC6E2300000000
  %6114 = fsub fast float 1.000000e+00, %6113
  %6115 = fcmp fast ogt float %6114, 0.000000e+00
  %6116 = call float @dx.op.unary.f32(i32 24, float %6114)  ; Sqrt(value)
  %6117 = fsub fast float 1.000000e+00, %6116
  %6118 = call float @dx.op.unary.f32(i32 23, float %6117)  ; Log(value)
  %6119 = fmul fast float %6118, 5.000000e+00
  %6120 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6121 = fmul fast float %6120, 0x3FEF591A60000000
  %6122 = fadd fast float %6121, 0x3F94DCB540000000
  %6123 = select i1 %6115, float %6122, float 1.000000e+00
  %6124 = fcmp fast oge float %6123, 1.000000e+00
  %6125 = fmul fast float %6108, 2.000000e+00
  %6126 = fadd fast float %6125, %5732
  %6127 = select i1 %6124, float %6126, float %5732
  %6128 = fsub fast float %6127, %5732
  %6129 = fmul fast float %6128, %6103
  %6130 = fadd fast float %6129, %5732
  %6131 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %6130, float %5730, float %5731, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.unary.f32(i32 25, float %6131)  ; Rsqrt(value)
  %6133 = fmul fast float %6132, %5730
  %6134 = fmul fast float %6132, %5731
  %6135 = fmul fast float %6130, %6132
  br label %6136

; <label>:6136                                    ; preds = %6107, %6064
  %6137 = phi float [ %6133, %6107 ], [ %5730, %6064 ]
  %6138 = phi float [ %6134, %6107 ], [ %5731, %6064 ]
  %6139 = phi float [ %6135, %6107 ], [ %5732, %6064 ]
  %6140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.i32 %6140, 2
  %6142 = add nsw i32 %6141, -1
  %6143 = call i32 @dx.op.binary.i32(i32 37, i32 %6142, i32 0)  ; IMax(a,b)
  %6144 = shl i32 %6101, 2
  %6145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.i32 %6145, 0
  %6147 = lshr i32 %6146, 16
  %6148 = and i32 %6146, 65535
  %6149 = lshr i32 %6146, 21
  %6150 = lshr i32 %6148, 5
  %6151 = call i32 @dx.op.binary.i32(i32 40, i32 %6150, i32 %6143)  ; UMin(a,b)
  %6152 = icmp ugt i32 %6149, %6151
  br i1 %6152, label %6516, label %6153

; <label>:6153                                    ; preds = %6136
  br label %6154

; <label>:6154                                    ; preds = %6508, %6153
  %6155 = phi float [ %6509, %6508 ], [ 0.000000e+00, %6153 ]
  %6156 = phi float [ %6510, %6508 ], [ 0.000000e+00, %6153 ]
  %6157 = phi float [ %6511, %6508 ], [ 0.000000e+00, %6153 ]
  %6158 = phi float [ %6512, %6508 ], [ 1.000000e+00, %6153 ]
  %6159 = phi i32 [ %6513, %6508 ], [ %6149, %6153 ]
  %6160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.i32 %6160, 2
  %6162 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6097, i32 %6161, i32 %6159)  ; UMad(a,b,c)
  %6163 = shl i32 %6162, 2
  %6164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6163, i32 undef)  ; BufferLoad(srv,index,wot)
  %6165 = extractvalue %dx.types.ResRet.i32 %6164, 0
  %6166 = shl i32 %6159, 5
  %6167 = sub nsw i32 %6147, %6166
  %6168 = call i32 @dx.op.binary.i32(i32 37, i32 %6167, i32 0)  ; IMax(a,b)
  %6169 = call i32 @dx.op.binary.i32(i32 38, i32 %6168, i32 31)  ; IMin(a,b)
  %6170 = sub nsw i32 1, %6147
  %6171 = add nsw i32 %6170, %6148
  %6172 = call i32 @dx.op.binary.i32(i32 37, i32 %6171, i32 0)  ; IMax(a,b)
  %6173 = call i32 @dx.op.binary.i32(i32 38, i32 %6172, i32 32)  ; IMin(a,b)
  %6174 = and i32 %6173, 31
  %6175 = shl i32 -1, %6174
  %6176 = xor i32 %6175, -1
  %6177 = and i32 %6169, 31
  %6178 = shl i32 %6176, %6177
  %6179 = icmp eq i32 %6173, 32
  %6180 = select i1 %6179, i32 -1, i32 %6178
  %6181 = and i32 %6180, %6165
  %6182 = icmp eq i32 %6181, 0
  br i1 %6182, label %6508, label %6183

; <label>:6183                                    ; preds = %6154
  br label %6184

; <label>:6184                                    ; preds = %6291, %6183
  %6185 = phi float [ %6292, %6291 ], [ %6155, %6183 ]
  %6186 = phi float [ %6293, %6291 ], [ %6156, %6183 ]
  %6187 = phi float [ %6294, %6291 ], [ %6157, %6183 ]
  %6188 = phi float [ %6295, %6291 ], [ %6158, %6183 ]
  %6189 = phi i32 [ %6194, %6291 ], [ %6181, %6183 ]
  %6190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6189)  ; FirstbitLo(value)
  %6191 = add i32 %6190, %6166
  %6192 = and i32 %6190, 31
  %6193 = shl i32 1, %6192
  %6194 = xor i32 %6193, %6189
  %6195 = mul i32 %6191, 72
  %6196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6195, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.ResRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.ResRet.f32 %6196, 2
  %6200 = add i32 %6195, 12
  %6201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.i32 %6201, 0
  %6203 = add i32 %6195, 16
  %6204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.ResRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.ResRet.f32 %6204, 2
  %6208 = add i32 %6195, 28
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = add i32 %6195, 32
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6216 = extractvalue %dx.types.ResRet.f32 %6212, 3
  %6217 = add i32 %6195, 48
  %6218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6217, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = add i32 %6195, 56
  %6222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6221, i32 undef)  ; BufferLoad(srv,index,wot)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.ResRet.f32 %6222, 1
  %6225 = add i32 %6195, 64
  %6226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6225, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.ResRet.f32 %6226, 1
  %6229 = mul i32 %6191, 60
  %6230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6229, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.ResRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.ResRet.f32 %6230, 2
  %6234 = add i32 %6229, 12
  %6235 = add i32 %6229, 48
  %6236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6235, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.ResRet.f32 %6236, 2
  %6240 = and i32 %6202, 32767
  %6241 = bitcast float %6197 to i32
  %6242 = icmp eq i32 %6241, -1
  %6243 = bitcast float %6198 to i32
  %6244 = and i32 %6202, 32768
  %6245 = icmp ne i32 %6244, 0
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = fsub fast float %6231, %6247
  %6251 = fsub fast float %6232, %6248
  %6252 = fsub fast float %6233, %6249
  %6253 = fsub fast float %170, %6250
  %6254 = fsub fast float %171, %6251
  %6255 = fsub fast float %172, %6252
  %6256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6234, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.ResRet.f32 %6256, 2
  %6260 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6257, float %6258, float %6259)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = add i32 %6229, 24
  %6262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6261, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = add i32 %6229, 36
  %6268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6267, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6275 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6276 = fsub fast float %6237, %6273
  %6277 = fsub fast float %6238, %6274
  %6278 = fsub fast float %6239, %6275
  %6279 = fmul fast float %6276, %6205
  %6280 = fmul fast float %6277, %6206
  %6281 = fmul fast float %6278, %6207
  %6282 = call float @dx.op.binary.f32(i32 36, float %6280, float %6281)  ; FMin(a,b)
  %6283 = call float @dx.op.binary.f32(i32 36, float %6279, float %6282)  ; FMin(a,b)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6285 = call float @dx.op.binary.f32(i32 36, float %6188, float %6284)  ; FMin(a,b)
  %6286 = uitofp i1 %6245 to float
  %6287 = fadd fast float %6103, 1.000000e+00
  %6288 = fsub fast float %6287, %6286
  %6289 = fmul fast float %6285, %6288
  %6290 = fcmp fast ogt float %6289, 0.000000e+00
  br i1 %6290, label %6297, label %6291

; <label>:6291                                    ; preds = %6439, %6184
  %6292 = phi float [ %6503, %6439 ], [ %6185, %6184 ]
  %6293 = phi float [ %6504, %6439 ], [ %6186, %6184 ]
  %6294 = phi float [ %6505, %6439 ], [ %6187, %6184 ]
  %6295 = phi float [ %6506, %6439 ], [ %6188, %6184 ]
  %6296 = icmp eq i32 %6189, %6193
  br i1 %6296, label %6507, label %6184

; <label>:6297                                    ; preds = %6184
  br i1 %6242, label %6355, label %6298

; <label>:6298                                    ; preds = %6297
  %6299 = fsub fast float -0.000000e+00, %6257
  %6300 = fsub fast float -0.000000e+00, %6258
  %6301 = fsub fast float -0.000000e+00, %6259
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = fsub fast float -0.000000e+00, %6302
  %6304 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6305 = fadd fast float %6304, %6220
  %6306 = fadd fast float %6219, %6304
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = fcmp ogt float %6302, -0.000000e+00
  %6309 = select i1 %6308, float %6307, float %6305
  %6310 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6311 = fdiv fast float 1.000000e+00, %6310
  %6312 = fmul fast float %6309, %6311
  %6313 = call float @dx.op.binary.f32(i32 35, float %6312, float 0.000000e+00)  ; FMax(a,b)
  %6314 = fsub fast float -0.000000e+00, %6263
  %6315 = fsub fast float -0.000000e+00, %6264
  %6316 = fsub fast float -0.000000e+00, %6265
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6314, float %6315, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6314, float %6315, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = fadd fast float %6319, %6224
  %6321 = fadd fast float %6223, %6319
  %6322 = fsub fast float -0.000000e+00, %6321
  %6323 = fcmp ogt float %6317, -0.000000e+00
  %6324 = select i1 %6323, float %6322, float %6320
  %6325 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6326 = fdiv fast float 1.000000e+00, %6325
  %6327 = fmul fast float %6324, %6326
  %6328 = call float @dx.op.binary.f32(i32 35, float %6327, float 0.000000e+00)  ; FMax(a,b)
  %6329 = fsub fast float -0.000000e+00, %6269
  %6330 = fsub fast float -0.000000e+00, %6270
  %6331 = fsub fast float -0.000000e+00, %6271
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fadd fast float %6334, %6228
  %6336 = fadd fast float %6227, %6334
  %6337 = fsub fast float -0.000000e+00, %6336
  %6338 = fcmp ogt float %6332, -0.000000e+00
  %6339 = select i1 %6338, float %6337, float %6335
  %6340 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6341 = fdiv fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6339, %6341
  %6343 = call float @dx.op.binary.f32(i32 35, float %6342, float 0.000000e+00)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6328, float %6343)  ; FMin(a,b)
  %6345 = call float @dx.op.binary.f32(i32 36, float %6313, float %6344)  ; FMin(a,b)
  %6346 = fmul fast float %6345, %6137
  %6347 = fmul fast float %6345, %6138
  %6348 = fmul fast float %6345, %6139
  %6349 = fadd fast float %6346, %170
  %6350 = fadd fast float %6347, %171
  %6351 = fadd fast float %6348, %172
  %6352 = fsub fast float %6349, %6197
  %6353 = fsub fast float %6350, %6198
  %6354 = fsub fast float %6351, %6199
  br label %6362

; <label>:6355                                    ; preds = %6297
  %6356 = fmul fast float %6137, 8.096000e+03
  %6357 = fmul fast float %6138, 8.096000e+03
  %6358 = fmul fast float %6139, 8.096000e+03
  %6359 = fadd fast float %6356, %170
  %6360 = fadd fast float %6357, %171
  %6361 = fadd fast float %6358, %172
  br label %6362

; <label>:6362                                    ; preds = %6355, %6298
  %6363 = phi float [ %6137, %6355 ], [ %6352, %6298 ]
  %6364 = phi float [ %6138, %6355 ], [ %6353, %6298 ]
  %6365 = phi float [ %6139, %6355 ], [ %6354, %6298 ]
  %6366 = phi float [ %6359, %6355 ], [ %6349, %6298 ]
  %6367 = phi float [ %6360, %6355 ], [ %6350, %6298 ]
  %6368 = phi float [ %6361, %6355 ], [ %6351, %6298 ]
  %6369 = fcmp fast olt float %6216, 1.000000e+00
  br i1 %6369, label %6370, label %6401, !dx.controlflow.hints !100

; <label>:6370                                    ; preds = %6362
  %6371 = fmul fast float %6365, %6214
  %6372 = fmul fast float %6364, %6215
  %6373 = fsub fast float %6371, %6372
  %6374 = fmul fast float %6363, %6215
  %6375 = fmul fast float %6365, %6213
  %6376 = fsub fast float %6374, %6375
  %6377 = fmul fast float %6364, %6213
  %6378 = fmul fast float %6363, %6214
  %6379 = fsub fast float %6377, %6378
  %6380 = fmul fast float %6373, 2.000000e+00
  %6381 = fmul fast float %6376, 2.000000e+00
  %6382 = fmul fast float %6379, 2.000000e+00
  %6383 = fmul fast float %6380, %6216
  %6384 = fmul fast float %6381, %6216
  %6385 = fmul fast float %6382, %6216
  %6386 = fmul fast float %6382, %6214
  %6387 = fmul fast float %6381, %6215
  %6388 = fmul fast float %6380, %6215
  %6389 = fmul fast float %6382, %6213
  %6390 = fmul fast float %6381, %6213
  %6391 = fmul fast float %6380, %6214
  %6392 = fadd fast float %6386, %6363
  %6393 = fadd fast float %6392, %6383
  %6394 = fsub fast float %6393, %6387
  %6395 = fsub fast float %6364, %6389
  %6396 = fadd fast float %6395, %6384
  %6397 = fadd fast float %6396, %6388
  %6398 = fadd fast float %6385, %6365
  %6399 = fsub fast float %6398, %6391
  %6400 = fadd fast float %6399, %6390
  br label %6401

; <label>:6401                                    ; preds = %6370, %6362
  %6402 = phi float [ %6394, %6370 ], [ %6363, %6362 ]
  %6403 = phi float [ %6397, %6370 ], [ %6364, %6362 ]
  %6404 = phi float [ %6400, %6370 ], [ %6365, %6362 ]
  br i1 %6242, label %6436, label %6405

; <label>:6405                                    ; preds = %6401
  %6406 = fmul fast float %5719, 0x400187C840000000
  %6407 = fadd fast float %6406, 0xC00EFC2120000000
  %6408 = fmul fast float %6407, %5719
  %6409 = fadd fast float %6408, 0x3FE5D16340000000
  %6410 = fmul fast float %6409, %5719
  %6411 = fadd fast float %6410, 1.000000e+00
  %6412 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6413 = fsub fast float %6366, %170
  %6414 = fsub fast float %6367, %171
  %6415 = fsub fast float %6368, %172
  %6416 = fsub fast float %6366, %6197
  %6417 = fsub fast float %6367, %6198
  %6418 = fsub fast float %6368, %6199
  %6419 = call float @dx.op.dot3.f32(i32 55, float %6413, float %6414, float %6415, float %6413, float %6414, float %6415)  ; Dot3(ax,ay,az,bx,by,bz)
  %6420 = call float @dx.op.dot3.f32(i32 55, float %6416, float %6417, float %6418, float %6416, float %6417, float %6418)  ; Dot3(ax,ay,az,bx,by,bz)
  %6421 = fadd fast float %6420, 0x3EE4F8B580000000
  %6422 = fdiv fast float %6419, %6421
  %6423 = bitcast float %6422 to i32
  %6424 = ashr i32 %6423, 1
  %6425 = add nsw i32 %6424, 532487669
  %6426 = bitcast i32 %6425 to float
  %6427 = fmul fast float %6426, %6412
  %6428 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  %6429 = fmul fast float %6428, 0x4009981AE0000000
  %6430 = fsub fast float 0x40111BBD80000000, %6429
  %6431 = fmul fast float %6430, %6428
  %6432 = fadd fast float %6431, 0xC0009F6020000000
  %6433 = fmul fast float %6432, %6428
  %6434 = fadd fast float %6433, 1.000000e+00
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  br label %6439

; <label>:6436                                    ; preds = %6401
  %6437 = icmp ne i32 %6243, -1
  %6438 = zext i1 %6437 to i32
  br label %6439

; <label>:6439                                    ; preds = %6436, %6405
  %6440 = phi float [ %5719, %6436 ], [ %6435, %6405 ]
  %6441 = phi i32 [ %6438, %6436 ], [ 0, %6405 ]
  %6442 = fmul float %6440, 5.000000e+00
  %6443 = fsub float 5.000000e+00, %6442
  %6444 = icmp ne i32 %6441, 0
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 3
  %6447 = fadd fast float %6446, %6443
  %6448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6447)  ; FMax(a,b)
  %6449 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6450 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6451 = fadd fast float %6450, %6449
  %6452 = call float @dx.op.unary.f32(i32 6, float %6404)  ; FAbs(value)
  %6453 = fadd fast float %6451, %6452
  %6454 = fcmp fast oeq float %6453, 0.000000e+00
  %6455 = fdiv fast float 1.000000e+00, %6453
  %6456 = select i1 %6454, float 1.000000e+00, float %6455
  %6457 = fmul fast float %6456, %6402
  %6458 = fmul fast float %6456, %6403
  %6459 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6460 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6461 = fsub fast float 1.000000e+00, %6459
  %6462 = fsub fast float 1.000000e+00, %6460
  %6463 = fcmp fast oge float %6457, 0.000000e+00
  %6464 = fcmp fast oge float %6458, 0.000000e+00
  %6465 = select i1 %6463, float 1.000000e+00, float -1.000000e+00
  %6466 = select i1 %6464, float 1.000000e+00, float -1.000000e+00
  %6467 = fcmp fast ole float %6404, 0.000000e+00
  %6468 = fmul fast float %6465, %6461
  %6469 = fmul fast float %6466, %6462
  %6470 = select i1 %6467, float %6468, float %6457
  %6471 = select i1 %6467, float %6469, float %6458
  %6472 = fmul fast float %6470, 5.000000e-01
  %6473 = fmul fast float %6471, 5.000000e-01
  %6474 = fadd fast float %6472, 5.000000e-01
  %6475 = fadd fast float %6473, 5.000000e-01
  %6476 = uitofp i32 %6240 to float
  %6477 = call float @dx.op.binary.f32(i32 36, float %6448, float 3.000000e+00)  ; FMin(a,b)
  %6478 = fadd fast float %6477, 2.000000e+00
  %6479 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6481 = fmul fast float %6480, %6479
  %6482 = fmul fast float %6481, 2.000000e+00
  %6483 = fsub fast float 1.000000e+00, %6482
  %6484 = fmul fast float %6474, %6483
  %6485 = fmul fast float %6475, %6483
  %6486 = fadd fast float %6484, %6481
  %6487 = fadd fast float %6485, %6481
  %6488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6486, float %6487, float %6476, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6488, 2
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fmul fast float %6493, %6210
  %6495 = call float @dx.op.binary.f32(i32 36, float %5751, float %6494)  ; FMin(a,b)
  %6496 = select i1 %6444, float %6495, float %6494
  %6497 = fmul fast float %6489, %6289
  %6498 = fmul fast float %6497, %6496
  %6499 = fmul fast float %6490, %6289
  %6500 = fmul fast float %6499, %6496
  %6501 = fmul fast float %6491, %6289
  %6502 = fmul fast float %6501, %6496
  %6503 = fadd fast float %6498, %6185
  %6504 = fadd fast float %6500, %6186
  %6505 = fadd fast float %6502, %6187
  %6506 = fsub fast float %6188, %6289
  br label %6291

; <label>:6507                                    ; preds = %6291
  br label %6508

; <label>:6508                                    ; preds = %6507, %6154
  %6509 = phi float [ %6155, %6154 ], [ %6292, %6507 ]
  %6510 = phi float [ %6156, %6154 ], [ %6293, %6507 ]
  %6511 = phi float [ %6157, %6154 ], [ %6294, %6507 ]
  %6512 = phi float [ %6158, %6154 ], [ %6295, %6507 ]
  %6513 = add i32 %6159, 1
  %6514 = icmp ugt i32 %6513, %6151
  br i1 %6514, label %6515, label %6154, !llvm.loop !101

; <label>:6515                                    ; preds = %6508
  br label %6516

; <label>:6516                                    ; preds = %6515, %6136
  %6517 = phi float [ 0.000000e+00, %6136 ], [ %6509, %6515 ]
  %6518 = phi float [ 0.000000e+00, %6136 ], [ %6510, %6515 ]
  %6519 = phi float [ 0.000000e+00, %6136 ], [ %6511, %6515 ]
  %6520 = call float @dx.op.dot3.f32(i32 55, float %6517, float %6518, float %6519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = select i1 %232, float 0.000000e+00, float %6517
  %6522 = select i1 %232, float %6520, float %6518
  %6523 = select i1 %232, float 0.000000e+00, float %6519
  %6524 = fcmp fast olt float %6062, 0.000000e+00
  %6525 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6526 = fmul fast float %6525, %5991
  %6527 = fmul fast float %6525, %5992
  %6528 = fmul fast float %6525, %5993
  %6529 = select i1 %6524, float %5991, float %6526
  %6530 = select i1 %6524, float %5992, float %6527
  %6531 = select i1 %6524, float %5993, float %6528
  %6532 = fsub fast float 1.000000e+00, %6525
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = fmul fast float %6533, %6521
  %6535 = fmul fast float %6533, %6522
  %6536 = fmul fast float %6533, %6523
  %6537 = fadd fast float %6529, %6534
  %6538 = fadd fast float %6530, %6535
  %6539 = fadd fast float %6531, %6536
  br label %6540

; <label>:6540                                    ; preds = %6516, %6045
  %6541 = phi float [ %5991, %6045 ], [ %6537, %6516 ]
  %6542 = phi float [ %5992, %6045 ], [ %6538, %6516 ]
  %6543 = phi float [ %5993, %6045 ], [ %6539, %6516 ]
  %6544 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = fcmp fast ogt float %6544, 0x3E7FF19E20000000
  %6546 = fdiv fast float 1.000000e+00, %6544
  %6547 = select i1 %6545, float %6546, float 0.000000e+00
  %6548 = fmul fast float %6547, %5710
  %6549 = fmul fast float %6547, %5711
  %6550 = fmul fast float %6547, %5712
  %6551 = fadd fast float %6548, -1.000000e+00
  %6552 = fadd fast float %6549, -1.000000e+00
  %6553 = fadd fast float %6550, -1.000000e+00
  %6554 = fmul fast float %6551, 5.000000e-01
  %6555 = fmul fast float %6552, 5.000000e-01
  %6556 = fmul fast float %6553, 5.000000e-01
  %6557 = fadd fast float %6554, 1.000000e+00
  %6558 = fadd fast float %6555, 1.000000e+00
  %6559 = fadd fast float %6556, 1.000000e+00
  %6560 = call float @dx.op.binary.f32(i32 35, float %5724, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6561 = fdiv fast float %4433, %6560
  %6562 = fcmp fast olt float %5128, 1.270000e+02
  %6563 = fcmp fast olt float %5129, 1.270000e+02
  %6564 = fcmp fast olt float %5130, 1.270000e+02
  %6565 = fmul fast float %5128, 0xBFF7154760000000
  %6566 = fmul fast float %6565, %6561
  %6567 = fmul fast float %5129, 0xBFF7154760000000
  %6568 = fmul fast float %6567, %6561
  %6569 = fmul fast float %5130, 0xBFF7154760000000
  %6570 = fmul fast float %6569, %6561
  %6571 = call float @dx.op.unary.f32(i32 21, float %6566)  ; Exp(value)
  %6572 = call float @dx.op.unary.f32(i32 21, float %6568)  ; Exp(value)
  %6573 = call float @dx.op.unary.f32(i32 21, float %6570)  ; Exp(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6575 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6576 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6577 = select i1 %6562, float %6574, float 0.000000e+00
  %6578 = select i1 %6563, float %6575, float 0.000000e+00
  %6579 = select i1 %6564, float %6576, float 0.000000e+00
  %6580 = fmul fast float %6577, %6051
  %6581 = fmul fast float %6578, %6051
  %6582 = fmul fast float %6579, %6051
  %6583 = fadd fast float %6580, -1.000000e+00
  %6584 = fadd fast float %6581, -1.000000e+00
  %6585 = fadd fast float %6582, -1.000000e+00
  %6586 = fmul fast float %6583, %5076
  %6587 = fmul fast float %6584, %5076
  %6588 = fmul fast float %6585, %5076
  %6589 = fmul fast float %6541, %6046
  %6590 = fmul fast float %6542, %6047
  %6591 = fmul fast float %6543, %6048
  %6592 = fsub fast float 1.000000e+00, %5724
  %6593 = bitcast float %6592 to i32
  %6594 = sitofp i32 %6593 to float
  %6595 = fmul fast float %6594, 5.000000e+00
  %6596 = fadd fast float %6595, 0xC1EFBF8940000000
  %6597 = fptosi float %6596 to i32
  %6598 = bitcast i32 %6597 to float
  %6599 = fmul fast float %6598, %5080
  %6600 = fmul fast float %5983, %6599
  %6601 = fmul fast float %6600, %6051
  %6602 = fmul fast float %6601, %6557
  %6603 = fmul fast float %5984, %6599
  %6604 = fmul fast float %6603, %6051
  %6605 = fmul fast float %6604, %6558
  %6606 = fmul fast float %5985, %6599
  %6607 = fmul fast float %6606, %6051
  %6608 = fmul fast float %6607, %6559
  %6609 = fadd fast float %6589, %5066
  %6610 = fadd fast float %6609, %6602
  %6611 = fmul fast float %6610, %5076
  %6612 = fadd fast float %6590, %5067
  %6613 = fadd fast float %6612, %6605
  %6614 = fmul fast float %6613, %5076
  %6615 = fadd fast float %6591, %5068
  %6616 = fadd fast float %6615, %6608
  %6617 = fmul fast float %6616, %5076
  %6618 = fmul fast float %5714, 0x4012D0A400000000
  %6619 = fadd fast float %6588, 1.000000e+00
  %6620 = fadd fast float %6587, 1.000000e+00
  %6621 = fadd fast float %6586, 1.000000e+00
  %6622 = fmul fast float %6051, %5985
  %6623 = fmul fast float %6051, %5984
  %6624 = fmul fast float %6051, %5983
  %6625 = fmul fast float %5739, %5076
  %6626 = fsub fast float 1.000000e+00, %6625
  %6627 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6628 = fsub fast float 1.000000e+00, %6627
  %6629 = fadd fast float %6618, 0x3FDB6377A0000000
  %6630 = fmul fast float %6628, %6629
  %6631 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = fadd fast float %6630, %6631
  %6633 = call float @dx.op.unary.f32(i32 7, float %6632)  ; Saturate(value)
  %6634 = call float @dx.op.binary.f32(i32 35, float %6633, float 0x3F847AE140000000)  ; FMax(a,b)
  %6635 = fmul fast float %6634, %6634
  %6636 = fmul fast float %6635, %6635
  %6637 = fmul fast float %6636, 0xC00A935000000000
  %6638 = call float @dx.op.unary.f32(i32 21, float %6637)  ; Exp(value)
  %6639 = fsub fast float 1.000000e+00, %6638
  %6640 = fmul fast float %6621, %5987
  %6641 = fmul fast float %6640, %6639
  %6642 = fmul fast float %6620, %5988
  %6643 = fmul fast float %6642, %6639
  %6644 = fmul fast float %6619, %5989
  %6645 = fmul fast float %6644, %6639
  %6646 = fadd fast float %6641, %6624
  %6647 = fmul fast float %6646, %5076
  %6648 = fadd fast float %6643, %6623
  %6649 = fmul fast float %6648, %5076
  %6650 = fadd fast float %6645, %6622
  %6651 = fmul fast float %6650, %5076
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 3
  %6654 = fcmp fast oeq float %6653, 0.000000e+00
  br i1 %6654, label %8332, label %6655

; <label>:6655                                    ; preds = %6540
  %6656 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6658 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6667 = select i1 %232, float %6664, float %6660
  %6668 = select i1 %232, float %6666, float %6661
  %6669 = select i1 %232, float %6665, float %6662
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6672 = fmul fast float %6671, %120
  %6673 = fmul fast float %6671, %122
  %6674 = fmul fast float %6671, %124
  %6675 = fadd fast float %6672, %170
  %6676 = fadd fast float %6673, %171
  %6677 = fadd fast float %6674, %172
  %6678 = fcmp fast olt float %6653, 0.000000e+00
  br i1 %6678, label %7774, label %6679

; <label>:6679                                    ; preds = %6655
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6684 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6695 = fmul fast float %6681, %6675
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6682, float %6695)  ; FMad(a,b,c)
  %6697 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6683, float %6696)  ; FMad(a,b,c)
  %6698 = fadd fast float %6697, %6684
  %6699 = fmul fast float %6686, %6675
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6687, float %6699)  ; FMad(a,b,c)
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6688, float %6700)  ; FMad(a,b,c)
  %6702 = fadd fast float %6701, %6689
  %6703 = fmul fast float %6691, %6675
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6692, float %6703)  ; FMad(a,b,c)
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6693, float %6704)  ; FMad(a,b,c)
  %6706 = fadd fast float %6705, %6694
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6710 = extractvalue %dx.types.CBufRet.f32 %6707, 3
  %6711 = fmul fast float %6710, %6698
  %6712 = fmul fast float %6710, %6702
  %6713 = fadd fast float %6711, %6708
  %6714 = fadd fast float %6712, %6709
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6719 = fmul fast float %6718, %6698
  %6720 = fmul fast float %6718, %6702
  %6721 = fadd fast float %6719, %6716
  %6722 = fadd fast float %6720, %6717
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6725 = fsub fast float %6724, %6706
  %6726 = extractvalue %dx.types.CBufRet.f32 %6723, 2
  %6727 = fmul fast float %6725, %6726
  %6728 = fsub fast float 1.000000e+00, %6727
  %6729 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6733 = fadd fast float %6732, %6730
  %6734 = fcmp fast ogt float %6733, 0.000000e+00
  br i1 %6734, label %6735, label %6759

; <label>:6735                                    ; preds = %6679
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6739 = fsub fast float %6721, %6737
  %6740 = fsub fast float %6722, %6738
  %6741 = fcmp fast olt float %6739, 0.000000e+00
  %6742 = fcmp fast olt float %6740, 0.000000e+00
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6747 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6748 = select i1 %6741, float %6744, float %6746
  %6749 = select i1 %6742, float %6745, float %6747
  %6750 = fmul fast float %6748, %6739
  %6751 = fmul fast float %6749, %6740
  %6752 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6753 = call float @dx.op.unary.f32(i32 6, float %6751)  ; FAbs(value)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6755 = call float @dx.op.binary.f32(i32 35, float %6752, float %6753)  ; FMax(a,b)
  %6756 = fsub fast float %6754, %6755
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  %6758 = fmul fast float %6757, %6729
  br label %6759

; <label>:6759                                    ; preds = %6735, %6679
  %6760 = phi float [ %6758, %6735 ], [ 0.000000e+00, %6679 ]
  %6761 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6763 = fadd fast float %6762, %6761
  %6764 = fcmp fast ogt float %6763, 0.000000e+00
  %6765 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  br i1 %6764, label %6766, label %6789

; <label>:6766                                    ; preds = %6759
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6770 = fsub fast float %6713, %6768
  %6771 = fsub fast float %6714, %6769
  %6772 = fcmp fast olt float %6770, 0.000000e+00
  %6773 = fcmp fast olt float %6771, 0.000000e+00
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6778 = extractvalue %dx.types.CBufRet.f32 %6774, 3
  %6779 = select i1 %6772, float %6775, float %6777
  %6780 = select i1 %6773, float %6776, float %6778
  %6781 = fmul fast float %6779, %6770
  %6782 = fmul fast float %6780, %6771
  %6783 = call float @dx.op.unary.f32(i32 6, float %6781)  ; FAbs(value)
  %6784 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6785 = call float @dx.op.binary.f32(i32 35, float %6783, float %6784)  ; FMax(a,b)
  %6786 = fsub fast float %6765, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, %6729
  br label %6789

; <label>:6789                                    ; preds = %6766, %6759
  %6790 = phi float [ %6788, %6766 ], [ 0.000000e+00, %6759 ]
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6793 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = fsub fast float %6698, %6795
  %6798 = fsub fast float %6702, %6796
  %6799 = fcmp fast olt float %6797, 0.000000e+00
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6806 = select i1 %6799, float %6802, float %6804
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = fmul fast float %6806, %6797
  %6809 = fmul fast float %6807, %6798
  %6810 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = call float @dx.op.binary.f32(i32 35, float %6810, float %6811)  ; FMax(a,b)
  %6813 = fsub fast float %6765, %6812
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = call float @dx.op.binary.f32(i32 36, float %6814, float %6793)  ; FMin(a,b)
  %6816 = fmul fast float %6815, %6729
  %6817 = fsub fast float %6790, %6816
  %6818 = fsub fast float %6760, %6790
  %6819 = fsub fast float %6818, %6816
  %6820 = call float @dx.op.binary.f32(i32 35, float %6790, float %6760)  ; FMax(a,b)
  %6821 = call float @dx.op.binary.f32(i32 35, float %6816, float %6820)  ; FMax(a,b)
  %6822 = fcmp fast olt float %6821, 1.000000e+00
  br i1 %6822, label %6823, label %7221, !dx.controlflow.hints !103

; <label>:6823                                    ; preds = %6789
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = fcmp fast une float %6825, 0.000000e+00
  br i1 %6826, label %6827, label %7221, !dx.controlflow.hints !104

; <label>:6827                                    ; preds = %6823
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6843 = fmul fast float %6829, %6675
  %6844 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6830, float %6843)  ; FMad(a,b,c)
  %6845 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6831, float %6844)  ; FMad(a,b,c)
  %6846 = fadd fast float %6845, %6832
  %6847 = fmul fast float %6834, %6675
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6835, float %6847)  ; FMad(a,b,c)
  %6849 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6836, float %6848)  ; FMad(a,b,c)
  %6850 = fadd fast float %6849, %6837
  %6851 = fmul fast float %6839, %6675
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6840, float %6851)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6841, float %6852)  ; FMad(a,b,c)
  %6854 = fadd fast float %6853, %6842
  %6855 = fcmp fast oge float %6846, 1.000000e+00
  %6856 = fcmp fast oge float %6850, 1.000000e+00
  %6857 = or i1 %6855, %6856
  %6858 = fcmp fast olt float %6846, 0.000000e+00
  %6859 = fcmp fast olt float %6850, 0.000000e+00
  %6860 = or i1 %6858, %6859
  %6861 = or i1 %6857, %6860
  br i1 %6861, label %7221, label %6862, !dx.controlflow.hints !105

; <label>:6862                                    ; preds = %6827
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.i32 %6867, 2
  %6869 = uitofp i32 %6868 to float
  %6870 = extractvalue %dx.types.CBufRet.i32 %6867, 3
  %6871 = uitofp i32 %6870 to float
  %6872 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6873 = fmul fast float %6872, 2.000000e+00
  %6874 = fsub fast float %6846, %6864
  %6875 = fsub fast float %6850, %6865
  %6876 = fmul fast float %6873, %6874
  %6877 = fmul fast float %6873, %6875
  %6878 = fdiv fast float 1.000000e+00, %6658
  %6879 = fmul fast float %6877, %6878
  %6880 = call float @dx.op.unary.f32(i32 6, float %6879)  ; FAbs(value)
  %6881 = fmul fast float %6866, %6677
  %6882 = fmul fast float %6881, %6873
  %6883 = call float @dx.op.unary.f32(i32 6, float %6882)  ; FAbs(value)
  %6884 = call float @dx.op.unary.f32(i32 6, float %6876)  ; FAbs(value)
  %6885 = call float @dx.op.binary.f32(i32 35, float %6883, float %6880)  ; FMax(a,b)
  %6886 = call float @dx.op.binary.f32(i32 35, float %6884, float %6885)  ; FMax(a,b)
  %6887 = fmul fast float %6886, 2.000000e+00
  %6888 = call float @dx.op.unary.f32(i32 23, float %6887)  ; Log(value)
  %6889 = call float @dx.op.binary.f32(i32 35, float %6888, float %6869)  ; FMax(a,b)
  %6890 = call float @dx.op.unary.f32(i32 22, float %6889)  ; Frc(value)
  %6891 = fadd fast float %6890, 0xBFEA666660000000
  %6892 = fmul fast float %6891, 8.000000e+00
  %6893 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6894 = call float @dx.op.unary.f32(i32 27, float %6889)  ; Round_ni(value)
  %6895 = fadd fast float %6894, %6893
  %6896 = call float @dx.op.binary.f32(i32 36, float %6895, float %6871)  ; FMin(a,b)
  %6897 = call float @dx.op.unary.f32(i32 27, float %6896)  ; Round_ni(value)
  %6898 = fsub fast float -0.000000e+00, %6897
  %6899 = call float @dx.op.unary.f32(i32 21, float %6898)  ; Exp(value)
  %6900 = fmul fast float %6899, %6873
  %6901 = fmul fast float %6900, %6846
  %6902 = fmul fast float %6900, %6850
  %6903 = fmul fast float %6901, 2.500000e-01
  %6904 = fmul fast float %6902, 2.500000e-01
  %6905 = fadd fast float %6903, 5.000000e-01
  %6906 = fadd fast float %6904, 5.000000e-01
  %6907 = fsub fast float %6871, %6869
  %6908 = fptoui float %6907 to i32
  %6909 = add i32 %6908, 320
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6909)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = fcmp fast une float %6896, %6871
  %6914 = fsub fast float %6846, %6911
  %6915 = fsub fast float %6850, %6912
  %6916 = call float @dx.op.unary.f32(i32 6, float %6914)  ; FAbs(value)
  %6917 = call float @dx.op.unary.f32(i32 6, float %6915)  ; FAbs(value)
  %6918 = fmul fast float %6916, %6900
  %6919 = fmul fast float %6917, %6900
  %6920 = fcmp fast olt float %6918, 1.000000e+00
  %6921 = fcmp fast olt float %6919, 1.000000e+00
  %6922 = and i1 %6920, %6921
  %6923 = or i1 %6913, %6922
  br i1 %6923, label %6924, label %7221, !dx.controlflow.hints !106

; <label>:6924                                    ; preds = %6862
  %6925 = fmul fast float %6902, 5.000000e-01
  %6926 = fmul fast float %6901, 5.000000e-01
  %6927 = fadd fast float %6925, 5.000000e-01
  %6928 = fadd fast float %6926, 5.000000e-01
  %6929 = sitofp i32 %6868 to float
  %6930 = fsub fast float %6896, %6929
  %6931 = call float @dx.op.unary.f32(i32 27, float %6930)  ; Round_ni(value)
  %6932 = call float @dx.op.unary.f32(i32 22, float %6896)  ; Frc(value)
  %6933 = call float @dx.op.unary.f32(i32 22, float %6928)  ; Frc(value)
  %6934 = call float @dx.op.unary.f32(i32 22, float %6927)  ; Frc(value)
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6933, float %6934, float %6931, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.ResRet.f32 %6935, 2
  %6939 = extractvalue %dx.types.ResRet.f32 %6935, 3
  %6940 = fcmp fast ogt float %6932, 0.000000e+00
  br i1 %6940, label %6941, label %6962, !dx.controlflow.hints !107

; <label>:6941                                    ; preds = %6924
  %6942 = fadd fast float %6931, 1.000000e+00
  %6943 = call float @dx.op.unary.f32(i32 22, float %6905)  ; Frc(value)
  %6944 = call float @dx.op.unary.f32(i32 22, float %6906)  ; Frc(value)
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6943, float %6944, float %6942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = fsub fast float %6946, %6936
  %6951 = fsub fast float %6947, %6937
  %6952 = fsub fast float %6948, %6938
  %6953 = fsub fast float %6949, %6939
  %6954 = fmul fast float %6950, %6932
  %6955 = fmul fast float %6951, %6932
  %6956 = fmul fast float %6952, %6932
  %6957 = fmul fast float %6953, %6932
  %6958 = fadd fast float %6954, %6936
  %6959 = fadd fast float %6955, %6937
  %6960 = fadd fast float %6956, %6938
  %6961 = fadd fast float %6957, %6939
  br label %6962

; <label>:6962                                    ; preds = %6941, %6924
  %6963 = phi float [ %6958, %6941 ], [ %6936, %6924 ]
  %6964 = phi float [ %6959, %6941 ], [ %6937, %6924 ]
  %6965 = phi float [ %6960, %6941 ], [ %6938, %6924 ]
  %6966 = phi float [ %6961, %6941 ], [ %6939, %6924 ]
  %6967 = fadd fast float %6963, -5.000000e-01
  %6968 = fadd fast float %6965, -5.000000e-01
  %6969 = fmul fast float %6967, 0xBFD5555560000000
  %6970 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6968, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6964, float 0.000000e+00)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6966
  %6973 = fmul fast float %6967, -7.500000e-01
  %6974 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6968, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6964, float 0.000000e+00)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6966
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6984 = fsub fast float %6980, %6970
  %6985 = fsub fast float %6981, %6972
  %6986 = fsub fast float %6982, %6974
  %6987 = fsub fast float %6983, %6976
  %6988 = fmul fast float %6984, %6978
  %6989 = fmul fast float %6985, %6978
  %6990 = fmul fast float %6986, %6978
  %6991 = fmul fast float %6987, %6978
  %6992 = fadd fast float %6988, %6970
  %6993 = fadd fast float %6989, %6972
  %6994 = fadd fast float %6990, %6974
  %6995 = fadd fast float %6991, %6976
  %6996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6997 = extractvalue %dx.types.ResRet.i32 %6996, 0
  %6998 = and i32 %6997, 536870911
  %6999 = uitofp i32 %6998 to float
  %7000 = fmul fast float %6999, %6846
  %7001 = fmul fast float %6999, %6850
  %7002 = fptoui float %7000 to i32
  %7003 = fptoui float %7001 to i32
  %7004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7005 = extractvalue %dx.types.ResRet.i32 %7004, 0
  %7006 = and i32 %7005, 31
  %7007 = lshr i32 %7002, %7006
  %7008 = lshr i32 %7003, %7006
  %7009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7010 = extractvalue %dx.types.ResRet.i32 %7009, 0
  %7011 = and i32 %7010, 31
  %7012 = shl i32 1, %7011
  %7013 = call i32 @dx.op.binary.i32(i32 40, i32 %7012, i32 4)  ; UMin(a,b)
  %7014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7015 = extractvalue %dx.types.ResRet.i32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.i32 %7014, 1
  %7017 = icmp eq i32 %7013, 0
  br i1 %7017, label %7059, label %7018

; <label>:7018                                    ; preds = %6962
  br label %7019

; <label>:7019                                    ; preds = %7047, %7018
  %7020 = phi i32 [ %7050, %7047 ], [ 0, %7018 ]
  %7021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7022 = extractvalue %dx.types.ResRet.i32 %7021, 0
  %7023 = lshr i32 %7022, 16
  %7024 = and i32 %7023, 31
  %7025 = shl i32 %7008, %7024
  %7026 = add i32 %7025, %7007
  %7027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7028 = extractvalue %dx.types.ResRet.i32 %7027, 0
  %7029 = and i32 %7028, 31
  %7030 = shl i32 %7026, %7029
  %7031 = add i32 %7030, %7020
  %7032 = shl i32 %7031, 2
  %7033 = add i32 %7032, 32
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7033, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = icmp slt i32 %7035, 0
  %7037 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7020
  %7038 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7020
  %7039 = bitcast float* %7037 to i32*
  %7040 = bitcast float* %7038 to i32*
  br i1 %7036, label %7041, label %7047

; <label>:7041                                    ; preds = %7019
  %7042 = and i32 %7035, 1073741823
  %7043 = add nuw nsw i32 %7042, 20
  %7044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7043, i32 undef)  ; BufferLoad(srv,index,wot)
  %7045 = extractvalue %dx.types.ResRet.i32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.i32 %7044, 1
  br label %7047

; <label>:7047                                    ; preds = %7041, %7019
  %7048 = phi i32 [ %7045, %7041 ], [ %7015, %7019 ]
  %7049 = phi i32 [ %7046, %7041 ], [ %7016, %7019 ]
  store i32 %7048, i32* %7039, align 4
  store i32 %7049, i32* %7040, align 4
  %7050 = add nuw i32 %7020, 1
  %7051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.i32 %7051, 2
  %7053 = icmp eq i32 %7052, 0
  %7054 = icmp ugt i32 %7035, -1073741825
  %7055 = and i1 %7054, %7053
  %7056 = icmp ult i32 %7050, %7013
  %7057 = and i1 %7055, %7056
  br i1 %7057, label %7019, label %7058

; <label>:7058                                    ; preds = %7047
  br label %7059

; <label>:7059                                    ; preds = %7058, %6962
  %7060 = phi i32 [ 0, %6962 ], [ %7050, %7058 ]
  %7061 = extractvalue %dx.types.CBufRet.f32 %6824, 2
  %7062 = fptoui float %7061 to i32
  %7063 = icmp eq i32 %7062, 0
  br i1 %7063, label %7115, label %7064

; <label>:7064                                    ; preds = %7059
  br label %7065

; <label>:7065                                    ; preds = %7110, %7064
  %7066 = phi i32 [ %7111, %7110 ], [ %7060, %7064 ]
  %7067 = phi i32 [ %7112, %7110 ], [ 0, %7064 ]
  %7068 = lshr i32 %7067, 2
  %7069 = and i32 %7067, 3
  %7070 = add nuw nsw i32 %7068, 83
  %7071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7070)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.i32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.i32 %7071, 1
  %7074 = extractvalue %dx.types.CBufRet.i32 %7071, 2
  %7075 = extractvalue %dx.types.CBufRet.i32 %7071, 3
  %7076 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7072, i32* %7076, align 4
  %7077 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7073, i32* %7077, align 4
  %7078 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7074, i32* %7078, align 4
  %7079 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7075, i32* %7079, align 4
  %7080 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7069
  %7081 = load i32, i32* %7080, align 4, !tbaa !108, !noalias !112
  %7082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.i32 %7082, 0
  %7084 = lshr i32 %7083, 16
  %7085 = and i32 %7084, 31
  %7086 = shl i32 %7008, %7085
  %7087 = add i32 %7086, %7007
  %7088 = shl i32 %7087, 2
  %7089 = add i32 %7088, %7081
  %7090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7089, i32 undef)  ; BufferLoad(srv,index,wot)
  %7091 = extractvalue %dx.types.ResRet.i32 %7090, 0
  %7092 = icmp eq i32 %7091, 0
  br i1 %7092, label %7110, label %7093

; <label>:7093                                    ; preds = %7065
  %7094 = icmp slt i32 %7091, 0
  %7095 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7066
  %7096 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7066
  %7097 = bitcast float* %7095 to i32*
  %7098 = bitcast float* %7096 to i32*
  br i1 %7094, label %7099, label %7106

; <label>:7099                                    ; preds = %7093
  %7100 = and i32 %7091, 1073741823
  %7101 = add i32 %7081, 20
  %7102 = add i32 %7101, %7100
  %7103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7102, i32 undef)  ; BufferLoad(srv,index,wot)
  %7104 = extractvalue %dx.types.ResRet.i32 %7103, 0
  %7105 = extractvalue %dx.types.ResRet.i32 %7103, 1
  br label %7106

; <label>:7106                                    ; preds = %7099, %7093
  %7107 = phi i32 [ %7104, %7099 ], [ %7015, %7093 ]
  %7108 = phi i32 [ %7105, %7099 ], [ %7016, %7093 ]
  store i32 %7107, i32* %7097, align 4
  store i32 %7108, i32* %7098, align 4
  %7109 = add i32 %7066, 1
  br label %7110

; <label>:7110                                    ; preds = %7106, %7065
  %7111 = phi i32 [ %7066, %7065 ], [ %7109, %7106 ]
  %7112 = add nuw i32 %7067, 1
  %7113 = icmp eq i32 %7112, %7062
  br i1 %7113, label %7114, label %7065

; <label>:7114                                    ; preds = %7110
  br label %7115

; <label>:7115                                    ; preds = %7114, %7059
  %7116 = phi i32 [ %7060, %7059 ], [ %7111, %7114 ]
  %7117 = icmp eq i32 %7116, 1
  %7118 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7119 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7117, label %7120, label %7123

; <label>:7120                                    ; preds = %7115
  %7121 = load float, float* %7118, align 4
  %7122 = load float, float* %7119, align 4
  br label %7150

; <label>:7123                                    ; preds = %7115
  %7124 = load float, float* %7118, align 4
  %7125 = load float, float* %7119, align 4
  %7126 = fdiv fast float 1.000000e+00, %7125
  %7127 = fsub fast float %7124, %7126
  %7128 = icmp ugt i32 %7116, 1
  br i1 %7128, label %7129, label %7145

; <label>:7129                                    ; preds = %7123
  br label %7130

; <label>:7130                                    ; preds = %7130, %7129
  %7131 = phi float [ %7140, %7130 ], [ %7127, %7129 ]
  %7132 = phi float [ %7141, %7130 ], [ %7124, %7129 ]
  %7133 = phi i32 [ %7142, %7130 ], [ 1, %7129 ]
  %7134 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7133
  %7135 = load float, float* %7134, align 4
  %7136 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7133
  %7137 = load float, float* %7136, align 4
  %7138 = fdiv fast float 1.000000e+00, %7137
  %7139 = fsub fast float %7135, %7138
  %7140 = call float @dx.op.binary.f32(i32 36, float %7131, float %7139)  ; FMin(a,b)
  %7141 = call float @dx.op.binary.f32(i32 35, float %7132, float %7135)  ; FMax(a,b)
  %7142 = add nuw i32 %7133, 1
  %7143 = icmp eq i32 %7142, %7116
  br i1 %7143, label %7144, label %7130

; <label>:7144                                    ; preds = %7130
  br label %7145

; <label>:7145                                    ; preds = %7144, %7123
  %7146 = phi float [ %7127, %7123 ], [ %7140, %7144 ]
  %7147 = phi float [ %7124, %7123 ], [ %7141, %7144 ]
  %7148 = fsub fast float %7147, %7146
  %7149 = fdiv fast float 1.000000e+00, %7148
  br label %7150

; <label>:7150                                    ; preds = %7145, %7120
  %7151 = phi float [ %7121, %7120 ], [ %7147, %7145 ]
  %7152 = phi float [ %7122, %7120 ], [ %7149, %7145 ]
  %7153 = fadd fast float %6854, %7151
  %7154 = fmul fast float %7153, %7152
  %7155 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7156 = fmul fast float %7155, 2.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7156
  %7158 = fmul fast float %6992, %6992
  %7159 = fsub fast float %6993, %7158
  %7160 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7159)  ; FMax(a,b)
  %7161 = fdiv fast float 1.000000e+00, %7160
  %7162 = fmul fast float %6993, %6992
  %7163 = fsub fast float %6994, %7162
  %7164 = fsub fast float %7157, %6992
  %7165 = fmul fast float %7157, %7157
  %7166 = fsub fast float %7165, %6993
  %7167 = fmul fast float %7161, %7163
  %7168 = fmul fast float %7167, %7164
  %7169 = fsub fast float %7166, %7168
  %7170 = fmul fast float %6993, %6993
  %7171 = fsub fast float %6995, %7170
  %7172 = fmul fast float %7163, %7163
  %7173 = fmul fast float %7172, %7161
  %7174 = fsub fast float %7171, %7173
  %7175 = fdiv fast float %7169, %7174
  %7176 = fmul fast float %7175, %7163
  %7177 = fsub fast float %7164, %7176
  %7178 = fmul fast float %7177, %7161
  %7179 = fmul fast float %7178, %6992
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7175, %6993
  %7182 = fsub fast float %7180, %7181
  %7183 = fmul fast float %7178, %7178
  %7184 = fmul fast float %7175, 4.000000e+00
  %7185 = fmul fast float %7184, %7182
  %7186 = fsub fast float %7183, %7185
  %7187 = call float @dx.op.unary.f32(i32 24, float %7186)  ; Sqrt(value)
  %7188 = fcmp fast oge float %7178, 0.000000e+00
  %7189 = fsub fast float -0.000000e+00, %7187
  %7190 = select i1 %7188, float %7189, float %7187
  %7191 = fsub fast float %7190, %7178
  %7192 = fdiv fast float %7191, %7175
  %7193 = fdiv fast float %7182, %7191
  %7194 = fmul fast float %7192, 5.000000e-01
  %7195 = fmul fast float %7193, 2.000000e+00
  %7196 = select i1 %7188, float %7194, float %7195
  %7197 = select i1 %7188, float %7195, float %7194
  %7198 = call float @dx.op.binary.f32(i32 35, float %7196, float %7197)  ; FMax(a,b)
  %7199 = call float @dx.op.binary.f32(i32 36, float %7196, float %7197)  ; FMin(a,b)
  %7200 = fcmp fast ogt float %7157, %7198
  %7201 = fsub fast float %7157, %7199
  %7202 = fsub fast float %7157, %7198
  %7203 = fsub fast float %7198, %7199
  %7204 = select i1 %7200, float %7202, float %7203
  %7205 = fmul float %7201, %7204
  %7206 = select i1 %7200, float %7199, float %7157
  %7207 = fcmp fast ogt float %7157, %7199
  %7208 = fmul fast float %7206, %7198
  %7209 = fadd fast float %7206, %7198
  %7210 = fmul fast float %7209, %6992
  %7211 = fadd fast float %7208, %6993
  %7212 = fsub fast float %7211, %7210
  %7213 = fdiv fast float %7212, %7205
  %7214 = select i1 %7207, float %7213, float 0.000000e+00
  %7215 = fsub fast float 1.000000e+00, %7214
  %7216 = select i1 %7200, float %7215, float %7214
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = extractvalue %dx.types.CBufRet.f32 %6977, 3
  %7219 = fmul fast float %7218, %7217
  %7220 = fsub fast float 1.000000e+00, %7219
  br label %7221

; <label>:7221                                    ; preds = %7150, %6862, %6827, %6823, %6789
  %7222 = phi float [ 1.000000e+00, %6789 ], [ %7220, %7150 ], [ 1.000000e+00, %6827 ], [ 1.000000e+00, %6862 ], [ 1.000000e+00, %6823 ]
  %7223 = fcmp fast ogt float %6819, 0.000000e+00
  br i1 %7223, label %7224, label %7386, !dx.controlflow.hints !121

; <label>:7224                                    ; preds = %7221
  %7225 = fadd fast float %6732, %6706
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7231 = call float @dx.op.binary.f32(i32 35, float %7225, float 0.000000e+00)  ; FMax(a,b)
  %7232 = fadd fast float %7231, 0x3F10000000000000
  %7233 = fcmp fast oeq float %7230, 0.000000e+00
  br i1 %7233, label %7234, label %7301

; <label>:7234                                    ; preds = %7224
  %7235 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7236 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7237 = fmul fast float %7236, %6721
  %7238 = fmul fast float %7235, %6722
  %7239 = fadd fast float %7237, 5.000000e-01
  %7240 = call float @dx.op.unary.f32(i32 27, float %7239)  ; Round_ni(value)
  %7241 = fadd fast float %7238, 5.000000e-01
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = fsub fast float %7239, %7240
  %7244 = fsub fast float %7241, %7242
  %7245 = fadd fast float %7240, -5.000000e-01
  %7246 = fadd fast float %7242, -5.000000e-01
  %7247 = fmul fast float %7243, 2.000000e+00
  %7248 = fsub fast float 3.000000e+00, %7247
  %7249 = fadd fast float %7247, 1.000000e+00
  %7250 = fsub fast float 2.000000e+00, %7243
  %7251 = bitcast float %7248 to i32
  %7252 = sub nsw i32 2129859010, %7251
  %7253 = bitcast i32 %7252 to float
  %7254 = fmul fast float %7253, %7250
  %7255 = fadd fast float %7254, -1.000000e+00
  %7256 = bitcast float %7249 to i32
  %7257 = sub nsw i32 2129859010, %7256
  %7258 = bitcast i32 %7257 to float
  %7259 = fmul fast float %7258, %7243
  %7260 = fadd fast float %7259, 1.000000e+00
  %7261 = fmul fast float %7244, 2.000000e+00
  %7262 = fsub fast float 3.000000e+00, %7261
  %7263 = fadd fast float %7261, 1.000000e+00
  %7264 = fsub fast float 2.000000e+00, %7244
  %7265 = bitcast float %7262 to i32
  %7266 = sub nsw i32 2129859010, %7265
  %7267 = bitcast i32 %7266 to float
  %7268 = fmul fast float %7267, %7264
  %7269 = fadd fast float %7268, -1.000000e+00
  %7270 = bitcast float %7263 to i32
  %7271 = sub nsw i32 2129859010, %7270
  %7272 = bitcast i32 %7271 to float
  %7273 = fmul fast float %7272, %7244
  %7274 = fadd fast float %7273, 1.000000e+00
  %7275 = fadd fast float %7255, %7245
  %7276 = fmul fast float %7275, %7227
  %7277 = fadd fast float %7269, %7246
  %7278 = fmul fast float %7277, %7228
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7276, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = fmul fast float %7280, %7248
  %7282 = fadd fast float %7260, %7245
  %7283 = fmul fast float %7282, %7227
  %7284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7283, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = fmul fast float %7285, %7249
  %7287 = fadd fast float %7274, %7246
  %7288 = fmul fast float %7287, %7228
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7276, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = fmul fast float %7290, %7248
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7283, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = fmul fast float %7293, %7249
  %7295 = fadd fast float %7294, %7291
  %7296 = fmul fast float %7295, %7263
  %7297 = fadd fast float %7286, %7281
  %7298 = fmul fast float %7297, %7262
  %7299 = fadd fast float %7298, %7296
  %7300 = fmul fast float %7299, 6.250000e-02
  br label %7386

; <label>:7301                                    ; preds = %7224
  %7302 = fmul fast float %243, 0x401921FB60000000
  %7303 = call float @dx.op.unary.f32(i32 13, float %7302)  ; Sin(value)
  %7304 = call float @dx.op.unary.f32(i32 12, float %7302)  ; Cos(value)
  %7305 = fsub fast float -0.000000e+00, %7303
  br label %7306

; <label>:7306                                    ; preds = %7355, %7301
  %7307 = phi float [ 0.000000e+00, %7301 ], [ %7350, %7355 ]
  %7308 = phi float [ 0.000000e+00, %7301 ], [ %7352, %7355 ]
  %7309 = phi i32 [ 0, %7301 ], [ %7356, %7355 ]
  %7310 = mul i32 %7309, 2
  %7311 = add i32 0, %7310
  %7312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7311
  %7313 = load float, float* %7312, align 4
  %7314 = mul i32 %7309, 2
  %7315 = add i32 1, %7314
  %7316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7315
  %7317 = load float, float* %7316, align 4
  %7318 = fmul fast float %7313, %7304
  %7319 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7305, float %7318)  ; FMad(a,b,c)
  %7320 = fmul fast float %7313, %7303
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7304, float %7320)  ; FMad(a,b,c)
  %7322 = fmul fast float %7319, %7230
  %7323 = fmul fast float %7321, %7230
  %7324 = fadd fast float %7322, %6721
  %7325 = fadd fast float %7323, %6722
  %7326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.ResRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.ResRet.f32 %7326, 2
  %7330 = extractvalue %dx.types.ResRet.f32 %7326, 3
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7327, float* %7331, align 4
  %7332 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7328, float* %7332, align 4
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7329, float* %7333, align 4
  %7334 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7330, float* %7334, align 4
  %7335 = fsub fast float %7327, %7232
  %7336 = fcmp fast olt float %7335, 0.000000e+00
  %7337 = select i1 %7336, float 0.000000e+00, float 1.000000e+00
  %7338 = fadd fast float %7337, %7307
  %7339 = fmul fast float %7337, %7335
  %7340 = fadd fast float %7339, %7308
  br label %7341

; <label>:7341                                    ; preds = %7341, %7306
  %7342 = phi i32 [ 1, %7306 ], [ %7353, %7341 ]
  %7343 = phi float [ %7340, %7306 ], [ %7352, %7341 ]
  %7344 = phi float [ %7338, %7306 ], [ %7350, %7341 ]
  %7345 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7342
  %7346 = load float, float* %7345, align 4, !tbaa !122, !noalias !112
  %7347 = fsub fast float %7346, %7232
  %7348 = fcmp fast olt float %7347, 0.000000e+00
  %7349 = select i1 %7348, float 0.000000e+00, float 1.000000e+00
  %7350 = fadd fast float %7349, %7344
  %7351 = fmul fast float %7349, %7347
  %7352 = fadd fast float %7351, %7343
  %7353 = add nuw nsw i32 %7342, 1
  %7354 = icmp eq i32 %7353, 4
  br i1 %7354, label %7355, label %7341, !llvm.loop !124

; <label>:7355                                    ; preds = %7341
  %7356 = add nuw nsw i32 %7309, 1
  %7357 = icmp eq i32 %7356, 8
  br i1 %7357, label %7358, label %7306, !llvm.loop !125

; <label>:7358                                    ; preds = %7355
  %7359 = fdiv fast float 1.000000e+00, %7350
  %7360 = fmul fast float %7359, %7352
  %7361 = fdiv fast float 1.000000e+00, %7232
  %7362 = fmul fast float %7360, %7361
  %7363 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float 0.000000e+00)  ; FMax(a,b)
  %7365 = fmul fast float %7350, 3.125000e-02
  %7366 = call float @dx.op.unary.f32(i32 7, float %7365)  ; Saturate(value)
  %7367 = fmul fast float %7366, 2.000000e+00
  %7368 = fadd fast float %7367, -1.000000e+00
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  %7370 = fcmp fast olt float %7368, 0.000000e+00
  %7371 = zext i1 %7369 to i32
  %7372 = zext i1 %7370 to i32
  %7373 = sub nsw i32 %7371, %7372
  %7374 = sitofp i32 %7373 to float
  %7375 = fmul fast float %7374, %7368
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = fmul fast float %7376, %7376
  %7378 = fmul fast float %7377, %7376
  %7379 = fsub fast float %7376, %7378
  %7380 = fmul fast float %7379, %7364
  %7381 = fsub fast float 1.000000e+00, %7378
  %7382 = fsub fast float %7381, %7380
  %7383 = fmul fast float %7374, 5.000000e-01
  %7384 = fmul fast float %7383, %7382
  %7385 = fsub fast float 5.000000e-01, %7384
  br label %7386

; <label>:7386                                    ; preds = %7358, %7234, %7221
  %7387 = phi float [ 1.000000e+00, %7221 ], [ %7300, %7234 ], [ %7385, %7358 ]
  %7388 = fcmp fast ogt float %6817, 0.000000e+00
  br i1 %7388, label %7389, label %7553, !dx.controlflow.hints !126

; <label>:7389                                    ; preds = %7386
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 1
  %7392 = fadd fast float %7391, %6706
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 3
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7398 = call float @dx.op.binary.f32(i32 35, float %7392, float 0.000000e+00)  ; FMax(a,b)
  %7399 = fadd fast float %7398, 0x3F10000000000000
  %7400 = fcmp fast oeq float %7397, 0.000000e+00
  br i1 %7400, label %7401, label %7468

; <label>:7401                                    ; preds = %7389
  %7402 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7404 = fmul fast float %7403, %6713
  %7405 = fmul fast float %7402, %6714
  %7406 = fadd fast float %7404, 5.000000e-01
  %7407 = call float @dx.op.unary.f32(i32 27, float %7406)  ; Round_ni(value)
  %7408 = fadd fast float %7405, 5.000000e-01
  %7409 = call float @dx.op.unary.f32(i32 27, float %7408)  ; Round_ni(value)
  %7410 = fsub fast float %7406, %7407
  %7411 = fsub fast float %7408, %7409
  %7412 = fadd fast float %7407, -5.000000e-01
  %7413 = fadd fast float %7409, -5.000000e-01
  %7414 = fmul fast float %7410, 2.000000e+00
  %7415 = fsub fast float 3.000000e+00, %7414
  %7416 = fadd fast float %7414, 1.000000e+00
  %7417 = fsub fast float 2.000000e+00, %7410
  %7418 = bitcast float %7415 to i32
  %7419 = sub nsw i32 2129859010, %7418
  %7420 = bitcast i32 %7419 to float
  %7421 = fmul fast float %7420, %7417
  %7422 = fadd fast float %7421, -1.000000e+00
  %7423 = bitcast float %7416 to i32
  %7424 = sub nsw i32 2129859010, %7423
  %7425 = bitcast i32 %7424 to float
  %7426 = fmul fast float %7425, %7410
  %7427 = fadd fast float %7426, 1.000000e+00
  %7428 = fmul fast float %7411, 2.000000e+00
  %7429 = fsub fast float 3.000000e+00, %7428
  %7430 = fadd fast float %7428, 1.000000e+00
  %7431 = fsub fast float 2.000000e+00, %7411
  %7432 = bitcast float %7429 to i32
  %7433 = sub nsw i32 2129859010, %7432
  %7434 = bitcast i32 %7433 to float
  %7435 = fmul fast float %7434, %7431
  %7436 = fadd fast float %7435, -1.000000e+00
  %7437 = bitcast float %7430 to i32
  %7438 = sub nsw i32 2129859010, %7437
  %7439 = bitcast i32 %7438 to float
  %7440 = fmul fast float %7439, %7411
  %7441 = fadd fast float %7440, 1.000000e+00
  %7442 = fadd fast float %7422, %7412
  %7443 = fmul fast float %7442, %7394
  %7444 = fadd fast float %7436, %7413
  %7445 = fmul fast float %7444, %7395
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7443, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = fmul fast float %7447, %7415
  %7449 = fadd fast float %7427, %7412
  %7450 = fmul fast float %7449, %7394
  %7451 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7450, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = fmul fast float %7452, %7416
  %7454 = fadd fast float %7441, %7413
  %7455 = fmul fast float %7454, %7395
  %7456 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7443, float %7455, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = fmul fast float %7457, %7415
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7450, float %7455, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = fmul fast float %7460, %7416
  %7462 = fadd fast float %7461, %7458
  %7463 = fmul fast float %7462, %7430
  %7464 = fadd fast float %7453, %7448
  %7465 = fmul fast float %7464, %7429
  %7466 = fadd fast float %7465, %7463
  %7467 = fmul fast float %7466, 6.250000e-02
  br label %7553

; <label>:7468                                    ; preds = %7389
  %7469 = fmul fast float %243, 0x401921FB60000000
  %7470 = call float @dx.op.unary.f32(i32 13, float %7469)  ; Sin(value)
  %7471 = call float @dx.op.unary.f32(i32 12, float %7469)  ; Cos(value)
  %7472 = fsub fast float -0.000000e+00, %7470
  br label %7473

; <label>:7473                                    ; preds = %7522, %7468
  %7474 = phi float [ 0.000000e+00, %7468 ], [ %7517, %7522 ]
  %7475 = phi float [ 0.000000e+00, %7468 ], [ %7519, %7522 ]
  %7476 = phi i32 [ 0, %7468 ], [ %7523, %7522 ]
  %7477 = mul i32 %7476, 2
  %7478 = add i32 0, %7477
  %7479 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7478
  %7480 = load float, float* %7479, align 4
  %7481 = mul i32 %7476, 2
  %7482 = add i32 1, %7481
  %7483 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7482
  %7484 = load float, float* %7483, align 4
  %7485 = fmul fast float %7480, %7471
  %7486 = call float @dx.op.tertiary.f32(i32 46, float %7484, float %7472, float %7485)  ; FMad(a,b,c)
  %7487 = fmul fast float %7480, %7470
  %7488 = call float @dx.op.tertiary.f32(i32 46, float %7484, float %7471, float %7487)  ; FMad(a,b,c)
  %7489 = fmul fast float %7486, %7397
  %7490 = fmul fast float %7488, %7397
  %7491 = fadd fast float %7489, %6713
  %7492 = fadd fast float %7490, %6714
  %7493 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7491, float %7492, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.ResRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7493, 2
  %7497 = extractvalue %dx.types.ResRet.f32 %7493, 3
  %7498 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7494, float* %7498, align 4
  %7499 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7495, float* %7499, align 4
  %7500 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7496, float* %7500, align 4
  %7501 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7497, float* %7501, align 4
  %7502 = fsub fast float %7494, %7399
  %7503 = fcmp fast olt float %7502, 0.000000e+00
  %7504 = select i1 %7503, float 0.000000e+00, float 1.000000e+00
  %7505 = fadd fast float %7504, %7474
  %7506 = fmul fast float %7504, %7502
  %7507 = fadd fast float %7506, %7475
  br label %7508

; <label>:7508                                    ; preds = %7508, %7473
  %7509 = phi i32 [ 1, %7473 ], [ %7520, %7508 ]
  %7510 = phi float [ %7507, %7473 ], [ %7519, %7508 ]
  %7511 = phi float [ %7505, %7473 ], [ %7517, %7508 ]
  %7512 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7509
  %7513 = load float, float* %7512, align 4, !tbaa !122, !noalias !112
  %7514 = fsub fast float %7513, %7399
  %7515 = fcmp fast olt float %7514, 0.000000e+00
  %7516 = select i1 %7515, float 0.000000e+00, float 1.000000e+00
  %7517 = fadd fast float %7516, %7511
  %7518 = fmul fast float %7516, %7514
  %7519 = fadd fast float %7518, %7510
  %7520 = add nuw nsw i32 %7509, 1
  %7521 = icmp eq i32 %7520, 4
  br i1 %7521, label %7522, label %7508, !llvm.loop !124

; <label>:7522                                    ; preds = %7508
  %7523 = add nuw nsw i32 %7476, 1
  %7524 = icmp eq i32 %7523, 8
  br i1 %7524, label %7525, label %7473, !llvm.loop !125

; <label>:7525                                    ; preds = %7522
  %7526 = fdiv fast float 1.000000e+00, %7517
  %7527 = fmul fast float %7526, %7519
  %7528 = fdiv fast float 1.000000e+00, %7399
  %7529 = fmul fast float %7527, %7528
  %7530 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7531 = call float @dx.op.binary.f32(i32 35, float %7530, float 0.000000e+00)  ; FMax(a,b)
  %7532 = fmul fast float %7517, 3.125000e-02
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = fmul fast float %7533, 2.000000e+00
  %7535 = fadd fast float %7534, -1.000000e+00
  %7536 = fcmp fast ogt float %7535, 0.000000e+00
  %7537 = fcmp fast olt float %7535, 0.000000e+00
  %7538 = zext i1 %7536 to i32
  %7539 = zext i1 %7537 to i32
  %7540 = sub nsw i32 %7538, %7539
  %7541 = sitofp i32 %7540 to float
  %7542 = fmul fast float %7541, %7535
  %7543 = fsub fast float 1.000000e+00, %7542
  %7544 = fmul fast float %7543, %7543
  %7545 = fmul fast float %7544, %7543
  %7546 = fsub fast float %7543, %7545
  %7547 = fmul fast float %7546, %7531
  %7548 = fsub fast float 1.000000e+00, %7545
  %7549 = fsub fast float %7548, %7547
  %7550 = fmul fast float %7541, 5.000000e-01
  %7551 = fmul fast float %7550, %7549
  %7552 = fsub fast float 5.000000e-01, %7551
  br label %7553

; <label>:7553                                    ; preds = %7525, %7401, %7386
  %7554 = phi float [ 1.000000e+00, %7386 ], [ %7467, %7401 ], [ %7552, %7525 ]
  %7555 = fcmp fast ogt float %6816, 0.000000e+00
  br i1 %7555, label %7556, label %7720, !dx.controlflow.hints !127

; <label>:7556                                    ; preds = %7553
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = fadd fast float %7558, %6706
  %7560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.f32 %7560, 2
  %7562 = extractvalue %dx.types.CBufRet.f32 %7560, 3
  %7563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.f32 %7563, 0
  %7565 = call float @dx.op.binary.f32(i32 35, float %7559, float 0.000000e+00)  ; FMax(a,b)
  %7566 = fadd fast float %7565, 0x3F10000000000000
  %7567 = fcmp fast oeq float %7564, 0.000000e+00
  br i1 %7567, label %7568, label %7635

; <label>:7568                                    ; preds = %7556
  %7569 = extractvalue %dx.types.CBufRet.f32 %7560, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7560, 0
  %7571 = fmul fast float %7570, %6698
  %7572 = fmul fast float %7569, %6702
  %7573 = fadd fast float %7571, 5.000000e-01
  %7574 = call float @dx.op.unary.f32(i32 27, float %7573)  ; Round_ni(value)
  %7575 = fadd fast float %7572, 5.000000e-01
  %7576 = call float @dx.op.unary.f32(i32 27, float %7575)  ; Round_ni(value)
  %7577 = fsub fast float %7573, %7574
  %7578 = fsub fast float %7575, %7576
  %7579 = fadd fast float %7574, -5.000000e-01
  %7580 = fadd fast float %7576, -5.000000e-01
  %7581 = fmul fast float %7577, 2.000000e+00
  %7582 = fsub fast float 3.000000e+00, %7581
  %7583 = fadd fast float %7581, 1.000000e+00
  %7584 = fsub fast float 2.000000e+00, %7577
  %7585 = bitcast float %7582 to i32
  %7586 = sub nsw i32 2129859010, %7585
  %7587 = bitcast i32 %7586 to float
  %7588 = fmul fast float %7587, %7584
  %7589 = fadd fast float %7588, -1.000000e+00
  %7590 = bitcast float %7583 to i32
  %7591 = sub nsw i32 2129859010, %7590
  %7592 = bitcast i32 %7591 to float
  %7593 = fmul fast float %7592, %7577
  %7594 = fadd fast float %7593, 1.000000e+00
  %7595 = fmul fast float %7578, 2.000000e+00
  %7596 = fsub fast float 3.000000e+00, %7595
  %7597 = fadd fast float %7595, 1.000000e+00
  %7598 = fsub fast float 2.000000e+00, %7578
  %7599 = bitcast float %7596 to i32
  %7600 = sub nsw i32 2129859010, %7599
  %7601 = bitcast i32 %7600 to float
  %7602 = fmul fast float %7601, %7598
  %7603 = fadd fast float %7602, -1.000000e+00
  %7604 = bitcast float %7597 to i32
  %7605 = sub nsw i32 2129859010, %7604
  %7606 = bitcast i32 %7605 to float
  %7607 = fmul fast float %7606, %7578
  %7608 = fadd fast float %7607, 1.000000e+00
  %7609 = fadd fast float %7589, %7579
  %7610 = fmul fast float %7609, %7561
  %7611 = fadd fast float %7603, %7580
  %7612 = fmul fast float %7611, %7562
  %7613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7610, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = fmul fast float %7614, %7582
  %7616 = fadd fast float %7594, %7579
  %7617 = fmul fast float %7616, %7561
  %7618 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7617, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7619 = extractvalue %dx.types.ResRet.f32 %7618, 0
  %7620 = fmul fast float %7619, %7583
  %7621 = fadd fast float %7608, %7580
  %7622 = fmul fast float %7621, %7562
  %7623 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7610, float %7622, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = fmul fast float %7624, %7582
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7617, float %7622, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = fmul fast float %7627, %7583
  %7629 = fadd fast float %7628, %7625
  %7630 = fmul fast float %7629, %7597
  %7631 = fadd fast float %7620, %7615
  %7632 = fmul fast float %7631, %7596
  %7633 = fadd fast float %7632, %7630
  %7634 = fmul fast float %7633, 6.250000e-02
  br label %7720

; <label>:7635                                    ; preds = %7556
  %7636 = fmul fast float %243, 0x401921FB60000000
  %7637 = call float @dx.op.unary.f32(i32 13, float %7636)  ; Sin(value)
  %7638 = call float @dx.op.unary.f32(i32 12, float %7636)  ; Cos(value)
  %7639 = fsub fast float -0.000000e+00, %7637
  br label %7640

; <label>:7640                                    ; preds = %7689, %7635
  %7641 = phi float [ 0.000000e+00, %7635 ], [ %7684, %7689 ]
  %7642 = phi float [ 0.000000e+00, %7635 ], [ %7686, %7689 ]
  %7643 = phi i32 [ 0, %7635 ], [ %7690, %7689 ]
  %7644 = mul i32 %7643, 2
  %7645 = add i32 0, %7644
  %7646 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7645
  %7647 = load float, float* %7646, align 4
  %7648 = mul i32 %7643, 2
  %7649 = add i32 1, %7648
  %7650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7649
  %7651 = load float, float* %7650, align 4
  %7652 = fmul fast float %7647, %7638
  %7653 = call float @dx.op.tertiary.f32(i32 46, float %7651, float %7639, float %7652)  ; FMad(a,b,c)
  %7654 = fmul fast float %7647, %7637
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7651, float %7638, float %7654)  ; FMad(a,b,c)
  %7656 = fmul fast float %7653, %7564
  %7657 = fmul fast float %7655, %7564
  %7658 = fadd fast float %7656, %6698
  %7659 = fadd fast float %7657, %6702
  %7660 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7658, float %7659, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.ResRet.f32 %7660, 1
  %7663 = extractvalue %dx.types.ResRet.f32 %7660, 2
  %7664 = extractvalue %dx.types.ResRet.f32 %7660, 3
  %7665 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7661, float* %7665, align 4
  %7666 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7662, float* %7666, align 4
  %7667 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7663, float* %7667, align 4
  %7668 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7664, float* %7668, align 4
  %7669 = fsub fast float %7661, %7566
  %7670 = fcmp fast olt float %7669, 0.000000e+00
  %7671 = select i1 %7670, float 0.000000e+00, float 1.000000e+00
  %7672 = fadd fast float %7671, %7641
  %7673 = fmul fast float %7671, %7669
  %7674 = fadd fast float %7673, %7642
  br label %7675

; <label>:7675                                    ; preds = %7675, %7640
  %7676 = phi i32 [ 1, %7640 ], [ %7687, %7675 ]
  %7677 = phi float [ %7674, %7640 ], [ %7686, %7675 ]
  %7678 = phi float [ %7672, %7640 ], [ %7684, %7675 ]
  %7679 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7676
  %7680 = load float, float* %7679, align 4, !tbaa !122, !noalias !112
  %7681 = fsub fast float %7680, %7566
  %7682 = fcmp fast olt float %7681, 0.000000e+00
  %7683 = select i1 %7682, float 0.000000e+00, float 1.000000e+00
  %7684 = fadd fast float %7683, %7678
  %7685 = fmul fast float %7683, %7681
  %7686 = fadd fast float %7685, %7677
  %7687 = add nuw nsw i32 %7676, 1
  %7688 = icmp eq i32 %7687, 4
  br i1 %7688, label %7689, label %7675, !llvm.loop !124

; <label>:7689                                    ; preds = %7675
  %7690 = add nuw nsw i32 %7643, 1
  %7691 = icmp eq i32 %7690, 8
  br i1 %7691, label %7692, label %7640, !llvm.loop !125

; <label>:7692                                    ; preds = %7689
  %7693 = fdiv fast float 1.000000e+00, %7684
  %7694 = fmul fast float %7693, %7686
  %7695 = fdiv fast float 1.000000e+00, %7566
  %7696 = fmul fast float %7694, %7695
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = call float @dx.op.binary.f32(i32 35, float %7697, float 0.000000e+00)  ; FMax(a,b)
  %7699 = fmul fast float %7684, 3.125000e-02
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fmul fast float %7700, 2.000000e+00
  %7702 = fadd fast float %7701, -1.000000e+00
  %7703 = fcmp fast ogt float %7702, 0.000000e+00
  %7704 = fcmp fast olt float %7702, 0.000000e+00
  %7705 = zext i1 %7703 to i32
  %7706 = zext i1 %7704 to i32
  %7707 = sub nsw i32 %7705, %7706
  %7708 = sitofp i32 %7707 to float
  %7709 = fmul fast float %7708, %7702
  %7710 = fsub fast float 1.000000e+00, %7709
  %7711 = fmul fast float %7710, %7710
  %7712 = fmul fast float %7711, %7710
  %7713 = fsub fast float %7710, %7712
  %7714 = fmul fast float %7713, %7698
  %7715 = fsub fast float 1.000000e+00, %7712
  %7716 = fsub fast float %7715, %7714
  %7717 = fmul fast float %7708, 5.000000e-01
  %7718 = fmul fast float %7717, %7716
  %7719 = fsub fast float 5.000000e-01, %7718
  br label %7720

; <label>:7720                                    ; preds = %7692, %7568, %7553
  %7721 = phi float [ 1.000000e+00, %7553 ], [ %7634, %7568 ], [ %7719, %7692 ]
  %7722 = fsub fast float %7387, %7222
  %7723 = fmul fast float %7722, %6760
  %7724 = fadd fast float %7723, %7222
  %7725 = fsub fast float %7554, %7724
  %7726 = fmul fast float %7725, %6790
  %7727 = fadd fast float %7726, %7724
  %7728 = fsub fast float %7721, %7727
  %7729 = fmul fast float %7728, %6816
  %7730 = fadd fast float %7729, %7727
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7733 = fcmp fast ogt float %7732, 0.000000e+00
  br i1 %7733, label %7734, label %7774, !dx.controlflow.hints !128

; <label>:7734                                    ; preds = %7720
  %7735 = fcmp fast ugt float %7732, 0.000000e+00
  br i1 %7735, label %7736, label %7771

; <label>:7736                                    ; preds = %7734
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7741 = extractvalue %dx.types.CBufRet.f32 %7737, 3
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7745 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7746 = extractvalue %dx.types.CBufRet.f32 %7742, 3
  %7747 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7748 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7753 = fadd fast float %7750, %6675
  %7754 = fadd fast float %7751, %6676
  %7755 = fadd fast float %7752, %6677
  %7756 = fmul fast float %7753, %7738
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7739, float %7754, float %7756)  ; FMad(a,b,c)
  %7758 = call float @dx.op.tertiary.f32(i32 46, float %7740, float %7755, float %7757)  ; FMad(a,b,c)
  %7759 = fadd fast float %7758, %7741
  %7760 = fmul fast float %7753, %7743
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7754, float %7760)  ; FMad(a,b,c)
  %7762 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7755, float %7761)  ; FMad(a,b,c)
  %7763 = fadd fast float %7762, %7746
  %7764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7759, float %7763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = fmul fast float %7765, %7748
  %7767 = fadd fast float %7766, %7747
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fmul fast float %7768, %7732
  %7770 = fsub fast float 1.000000e+00, %7769
  br label %7771

; <label>:7771                                    ; preds = %7736, %7734
  %7772 = phi float [ %7770, %7736 ], [ 1.000000e+00, %7734 ]
  %7773 = fmul fast float %7772, %7730
  br label %7774

; <label>:7774                                    ; preds = %7771, %7720, %6655
  %7775 = phi float [ 1.000000e+00, %6655 ], [ %7773, %7771 ], [ %7730, %7720 ]
  %7776 = call float @dx.op.binary.f32(i32 36, float %7775, float %7775)  ; FMin(a,b)
  %7777 = call float @dx.op.binary.f32(i32 36, float %7775, float %7776)  ; FMin(a,b)
  %7778 = fcmp fast ogt float %7777, 0.000000e+00
  br i1 %7778, label %7779, label %7944, !dx.controlflow.hints !129

; <label>:7779                                    ; preds = %7774
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7784 = extractvalue %dx.types.CBufRet.f32 %7780, 3
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.CBufRet.f32 %7790, 1
  %7793 = extractvalue %dx.types.CBufRet.f32 %7790, 2
  %7794 = extractvalue %dx.types.CBufRet.f32 %7790, 3
  %7795 = fmul fast float %7781, %6675
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7782, float %7795)  ; FMad(a,b,c)
  %7797 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7783, float %7796)  ; FMad(a,b,c)
  %7798 = fadd fast float %7797, %7784
  %7799 = fmul fast float %7786, %6675
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7787, float %7799)  ; FMad(a,b,c)
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7788, float %7800)  ; FMad(a,b,c)
  %7802 = fadd fast float %7801, %7789
  %7803 = fmul fast float %7791, %6675
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7792, float %7803)  ; FMad(a,b,c)
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7793, float %7804)  ; FMad(a,b,c)
  %7806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7807 = extractvalue %dx.types.CBufRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.CBufRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.CBufRet.f32 %7806, 3
  %7810 = fmul fast float %7809, %7798
  %7811 = fmul fast float %7809, %7802
  %7812 = fadd fast float %7810, %7807
  %7813 = fadd fast float %7811, %7808
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = fsub fast float %7812, %7815
  %7818 = fsub fast float %7813, %7816
  %7819 = fcmp fast olt float %7817, 0.000000e+00
  %7820 = fcmp fast olt float %7818, 0.000000e+00
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7826 = select i1 %7819, float %7822, float %7824
  %7827 = select i1 %7820, float %7823, float %7825
  %7828 = fmul fast float %7826, %7817
  %7829 = fmul fast float %7827, %7818
  %7830 = call float @dx.op.unary.f32(i32 6, float %7828)  ; FAbs(value)
  %7831 = call float @dx.op.unary.f32(i32 6, float %7829)  ; FAbs(value)
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = call float @dx.op.binary.f32(i32 35, float %7830, float %7831)  ; FMax(a,b)
  %7835 = fsub fast float %7833, %7834
  %7836 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7837 = fcmp fast ogt float %7836, 0.000000e+00
  br i1 %7837, label %7838, label %7879, !dx.controlflow.hints !130

; <label>:7838                                    ; preds = %7779
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7841 = fcmp fast ogt float %7840, 0.000000e+00
  br i1 %7841, label %7842, label %7874

; <label>:7842                                    ; preds = %7838
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = extractvalue %dx.types.ResRet.f32 %7843, 3
  %7848 = fsub fast float 1.000000e+00, %7794
  %7849 = fsub fast float %7848, %7805
  %7850 = fmul fast float %7849, 0x400921FB60000000
  %7851 = fadd fast float %7850, 0x3FF921FB60000000
  %7852 = call float @dx.op.unary.f32(i32 13, float %7851)  ; Sin(value)
  %7853 = fadd fast float %7852, -1.000000e+00
  %7854 = fmul fast float %7853, 0x3FD45F3060000000
  %7855 = fmul fast float %7849, 0x401921FB60000000
  %7856 = fadd fast float %7855, 0x400921FB60000000
  %7857 = call float @dx.op.unary.f32(i32 13, float %7856)  ; Sin(value)
  %7858 = fadd fast float %7857, 0x3E7777A5C0000000
  %7859 = fmul fast float %7858, 0x3FC45F3060000000
  %7860 = fmul fast float %7849, 0x4022D97C80000000
  %7861 = fadd fast float %7860, 0x4012D97C80000000
  %7862 = call float @dx.op.unary.f32(i32 13, float %7861)  ; Sin(value)
  %7863 = fadd fast float %7862, 1.000000e+00
  %7864 = fmul fast float %7863, 0x3FBB2995E0000000
  %7865 = fmul fast float %7849, 0x402921FB60000000
  %7866 = fadd fast float %7865, 0x401921FB60000000
  %7867 = call float @dx.op.unary.f32(i32 13, float %7866)  ; Sin(value)
  %7868 = fadd fast float %7867, 0xBE8777A5C0000000
  %7869 = fmul fast float %7868, 0x3FB45F3060000000
  %7870 = call float @dx.op.dot4.f32(i32 56, float %7844, float %7845, float %7846, float %7847, float %7854, float %7859, float %7864, float %7869)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7871 = fmul fast float %7870, 0xBFF7154760000000
  %7872 = call float @dx.op.unary.f32(i32 21, float %7871)  ; Exp(value)
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  br label %7874

; <label>:7874                                    ; preds = %7842, %7838
  %7875 = phi float [ %7873, %7842 ], [ 1.000000e+00, %7838 ]
  %7876 = fadd fast float %7875, -1.000000e+00
  %7877 = fmul fast float %7876, %7836
  %7878 = fadd fast float %7877, 1.000000e+00
  br label %7879

; <label>:7879                                    ; preds = %7874, %7779
  %7880 = phi float [ %7878, %7874 ], [ 1.000000e+00, %7779 ]
  %7881 = fmul fast float %7880, %7775
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 0
  %7884 = extractvalue %dx.types.CBufRet.f32 %7882, 1
  %7885 = extractvalue %dx.types.CBufRet.f32 %7882, 2
  %7886 = fadd fast float %7883, %170
  %7887 = fadd fast float %7884, %171
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fsub fast float -0.000000e+00, %7886
  %7895 = fsub fast float -0.000000e+00, %7887
  %7896 = fsub fast float %5721, %7885
  %7897 = fadd fast float %7896, %7889
  %7898 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7894, float %7895, float %7897)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = fdiv fast float 1.000000e+00, %7899
  %7901 = fmul fast float %7900, %7898
  %7902 = fmul fast float %7891, %7901
  %7903 = fmul fast float %7892, %7901
  %7904 = fadd fast float %7902, %7886
  %7905 = fadd fast float %7903, %7887
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 0
  %7908 = extractvalue %dx.types.CBufRet.f32 %7906, 1
  %7909 = fsub fast float %7904, %7907
  %7910 = fsub fast float %7905, %7908
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7911, 3
  %7914 = fmul fast float %7909, %7912
  %7915 = fmul fast float %7910, %7913
  %7916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.i32 %7916, 3
  %7918 = icmp eq i32 %7917, 0
  br i1 %7918, label %7924, label %7919

; <label>:7919                                    ; preds = %7879
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  br label %7929

; <label>:7924                                    ; preds = %7879
  %7925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  br label %7929

; <label>:7929                                    ; preds = %7924, %7919
  %7930 = phi float [ %7921, %7919 ], [ %7926, %7924 ]
  %7931 = phi float [ %7922, %7919 ], [ %7927, %7924 ]
  %7932 = phi float [ %7923, %7919 ], [ %7928, %7924 ]
  %7933 = extractvalue %dx.types.CBufRet.f32 %7888, 2
  %7934 = fmul fast float %7933, %7930
  %7935 = extractvalue %dx.types.CBufRet.f32 %7888, 0
  %7936 = fsub fast float %7901, %7935
  %7937 = fsub fast float %7936, %7934
  %7938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7937)  ; FMax(a,b)
  %7939 = fmul fast float %7938, %7931
  %7940 = call float @dx.op.binary.f32(i32 36, float %7932, float %7939)  ; FMin(a,b)
  %7941 = fmul fast float %7940, 0xBFF7154760000000
  %7942 = call float @dx.op.unary.f32(i32 21, float %7941)  ; Exp(value)
  %7943 = fmul fast float %7881, %7942
  br label %7944

; <label>:7944                                    ; preds = %7929, %7774
  %7945 = phi float [ %7943, %7929 ], [ %7775, %7774 ]
  %7946 = call float @dx.op.binary.f32(i32 36, float %7945, float %7945)  ; FMin(a,b)
  %7947 = call float @dx.op.binary.f32(i32 36, float %7945, float %7946)  ; FMin(a,b)
  %7948 = fcmp fast ogt float %7947, 0.000000e+00
  br i1 %7948, label %7949, label %8332, !dx.controlflow.hints !131

; <label>:7949                                    ; preds = %7944
  %7950 = fmul fast float %7945, %6667
  %7951 = fmul fast float %7945, %6668
  %7952 = fmul fast float %7945, %6669
  %7953 = fsub fast float %172, %5512
  %7954 = fcmp fast ogt float %7953, 0.000000e+00
  %7955 = fmul fast float %6656, 5.120000e+02
  %7956 = fmul fast float %6657, 5.120000e+02
  %7957 = fmul fast float %6658, 5.120000e+02
  %7958 = fadd fast float %7957, %172
  %7959 = fsub fast float %5512, %7958
  %7960 = fmul fast float %7959, 2.000000e+00
  %7961 = fadd fast float %7960, %7958
  %7962 = select i1 %7954, float %7961, float %7958
  %7963 = fsub fast float %7962, %172
  %7964 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7963, float %7955, float %7956, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = call float @dx.op.unary.f32(i32 25, float %7964)  ; Rsqrt(value)
  %7966 = fmul fast float %7965, %7955
  %7967 = fmul fast float %7965, %7956
  %7968 = fmul fast float %7965, %7963
  %7969 = fsub fast float %5512, %172
  %7970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7969)  ; Dot3(ax,ay,az,bx,by,bz)
  %7971 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7966, float %7967, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7972 = fdiv fast float 1.000000e+00, %7971
  %7973 = fmul fast float %7972, %7970
  %7974 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7953, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7975 = fcmp fast ogt float %7974, 0.000000e+00
  %7976 = fcmp fast olt float %7974, 0.000000e+00
  %7977 = zext i1 %7975 to i32
  %7978 = zext i1 %7976 to i32
  %7979 = sub nsw i32 %7977, %7978
  %7980 = sitofp i32 %7979 to float
  %7981 = fsub fast float %7962, %5512
  %7982 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7981, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7983 = fcmp fast ogt float %7982, 0.000000e+00
  %7984 = fcmp fast olt float %7982, 0.000000e+00
  %7985 = zext i1 %7983 to i32
  %7986 = zext i1 %7984 to i32
  %7987 = sub nsw i32 %7985, %7986
  %7988 = sitofp i32 %7987 to float
  %7989 = fcmp fast une float %7980, %7988
  br i1 %7989, label %7990, label %8000

; <label>:7990                                    ; preds = %7949
  %7991 = fmul fast float %7973, %7968
  %7992 = fmul fast float %7973, %7967
  %7993 = fmul fast float %7973, %7966
  %7994 = fmul fast float %7993, %7993
  %7995 = fmul fast float %7992, %7992
  %7996 = fadd fast float %7994, %7995
  %7997 = fmul fast float %7991, %7991
  %7998 = fadd fast float %7996, %7997
  %7999 = call float @dx.op.unary.f32(i32 24, float %7998)  ; Sqrt(value)
  br label %8010

; <label>:8000                                    ; preds = %7949
  %8001 = icmp slt i32 %7979, 0
  br i1 %8001, label %8002, label %8010

; <label>:8002                                    ; preds = %8000
  %8003 = fsub fast float %172, %7962
  %8004 = fmul fast float %7955, %7955
  %8005 = fmul fast float %7956, %7956
  %8006 = fadd fast float %8004, %8005
  %8007 = fmul fast float %8003, %8003
  %8008 = fadd fast float %8006, %8007
  %8009 = call float @dx.op.unary.f32(i32 24, float %8008)  ; Sqrt(value)
  br label %8010

; <label>:8010                                    ; preds = %8002, %8000, %7990
  %8011 = phi float [ %7999, %7990 ], [ %8009, %8002 ], [ 0.000000e+00, %8000 ]
  %8012 = fsub fast float -0.000000e+00, %8011
  %8013 = select i1 %7954, float -0.000000e+00, float %8012
  %8014 = fmul fast float %5509, 0x3FF7154760000000
  %8015 = fmul fast float %8014, %8013
  %8016 = fmul fast float %5510, 0x3FF7154760000000
  %8017 = fmul fast float %8016, %8013
  %8018 = fmul fast float %5511, 0x3FF7154760000000
  %8019 = fmul fast float %8018, %8013
  %8020 = call float @dx.op.unary.f32(i32 21, float %8015)  ; Exp(value)
  %8021 = call float @dx.op.unary.f32(i32 21, float %8017)  ; Exp(value)
  %8022 = call float @dx.op.unary.f32(i32 21, float %8019)  ; Exp(value)
  %8023 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8024 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = fmul fast float %7950, %8023
  %8027 = fmul fast float %7951, %8024
  %8028 = fmul fast float %7952, %8025
  %8029 = fsub fast float %6656, %5709
  %8030 = fsub fast float %6657, %5708
  %8031 = fsub fast float %6658, %5707
  %8032 = call float @dx.op.dot3.f32(i32 55, float %8029, float %8030, float %8031, float %8029, float %8030, float %8031)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = call float @dx.op.unary.f32(i32 25, float %8032)  ; Rsqrt(value)
  %8034 = fmul fast float %8033, %8029
  %8035 = fmul fast float %8033, %8030
  %8036 = fmul fast float %8033, %8031
  %8037 = call float @dx.op.dot3.f32(i32 55, float %6656, float %6657, float %6658, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8038 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8034, float %8035, float %8036)  ; Dot3(ax,ay,az,bx,by,bz)
  %8039 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8040 = fmul fast float %8039, %8039
  %8041 = fmul fast float %8040, %5749
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fmul fast float %8042, %8039
  %8044 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8034, float %8035, float %8036)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = fmul fast float %8044, %8044
  %8046 = call float @dx.op.unary.f32(i32 6, float %8037)  ; FAbs(value)
  %8047 = fsub fast float 1.000000e+00, %5742
  %8048 = fmul fast float %5724, %5724
  %8049 = fmul fast float %8048, %8047
  %8050 = fadd fast float %8049, %5742
  %8051 = bitcast float %8050 to i32
  %8052 = ashr i32 %8051, 1
  %8053 = add nsw i32 %8052, 532487669
  %8054 = bitcast i32 %8053 to float
  %8055 = fadd fast float %8054, %5724
  %8056 = fmul fast float %5742, %8045
  %8057 = fsub fast float 1.000000e+00, %8045
  %8058 = fadd fast float %8057, %8056
  %8059 = fmul fast float %8046, %8046
  %8060 = fmul fast float %8059, %8047
  %8061 = fadd fast float %8060, %5742
  %8062 = bitcast float %8061 to i32
  %8063 = ashr i32 %8062, 1
  %8064 = add nsw i32 %8063, 532487669
  %8065 = bitcast i32 %8064 to float
  %8066 = fadd fast float %8065, %8046
  %8067 = fmul fast float %8058, %8058
  %8068 = fmul fast float %8067, %8055
  %8069 = fmul fast float %8068, %8066
  %8070 = fdiv fast float 0x3FF0A00000000000, %8069
  %8071 = fmul fast float %8070, %5742
  %8072 = fmul fast float %5995, 0x3FF9999980000000
  %8073 = fsub fast float 5.000000e+00, %8072
  %8074 = call float @dx.op.unary.f32(i32 6, float %8038)  ; FAbs(value)
  %8075 = fsub fast float 1.000000e+00, %8074
  %8076 = fmul fast float %5995, 0x41D9660740000000
  %8077 = fadd fast float %8076, 0xC1EFBF8940000000
  %8078 = bitcast float %8075 to i32
  %8079 = sitofp i32 %8078 to float
  %8080 = fmul fast float %8079, %8073
  %8081 = fadd fast float %8077, %8080
  %8082 = fptosi float %8081 to i32
  %8083 = bitcast i32 %8082 to float
  %8084 = fsub fast float 1.000000e+00, %5713
  %8085 = fsub fast float 1.000000e+00, %5714
  %8086 = fsub fast float 1.000000e+00, %5722
  %8087 = fmul fast float %8083, %8084
  %8088 = fmul fast float %8083, %8085
  %8089 = fmul fast float %8083, %8086
  %8090 = fadd fast float %8087, %5713
  %8091 = fadd fast float %8088, %5714
  %8092 = fadd fast float %8089, %5722
  br i1 %6018, label %8093, label %8116

; <label>:8093                                    ; preds = %8010
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fadd fast float %8097, -5.000000e-01
  %8101 = fmul fast float %5713, 4.000000e+00
  %8102 = fmul fast float %8101, %8084
  %8103 = fmul fast float %8102, %8098
  %8104 = fmul fast float %5714, 4.000000e+00
  %8105 = fmul fast float %8104, %8085
  %8106 = fmul fast float %8105, %8099
  %8107 = fmul fast float %5722, 4.000000e+00
  %8108 = fmul fast float %8107, %8086
  %8109 = fmul fast float %8108, %8100
  %8110 = fadd fast float %8103, %8090
  %8111 = fadd fast float %8106, %8091
  %8112 = fadd fast float %8109, %8092
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  br label %8116

; <label>:8116                                    ; preds = %8093, %8010
  %8117 = phi float [ %8113, %8093 ], [ %8090, %8010 ]
  %8118 = phi float [ %8114, %8093 ], [ %8091, %8010 ]
  %8119 = phi float [ %8115, %8093 ], [ %8092, %8010 ]
  %8120 = fmul fast float %8037, 9.843750e-01
  %8121 = fadd fast float %8120, 7.812500e-03
  %8122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8121, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8123 = extractvalue %dx.types.ResRet.f32 %8122, 0
  %8124 = extractvalue %dx.types.ResRet.f32 %8122, 1
  %8125 = extractvalue %dx.types.ResRet.f32 %8122, 2
  %8126 = extractvalue %dx.types.ResRet.f32 %8122, 3
  %8127 = fsub fast float %8125, %8123
  %8128 = fsub fast float %8126, %8124
  %8129 = fmul fast float %8127, %6005
  %8130 = fmul fast float %8128, %6005
  %8131 = fadd fast float %8129, %8123
  %8132 = fadd fast float %8130, %8124
  %8133 = fmul fast float %8131, %5713
  %8134 = fmul fast float %8131, %5714
  %8135 = fmul fast float %8131, %5722
  %8136 = fadd fast float %8133, %8132
  %8137 = fadd fast float %8134, %8132
  %8138 = fadd fast float %8135, %8132
  br i1 %6018, label %8139, label %8162

; <label>:8139                                    ; preds = %8116
  %8140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = fadd fast float %8141, -5.000000e-01
  %8145 = fadd fast float %8142, -5.000000e-01
  %8146 = fadd fast float %8143, -5.000000e-01
  %8147 = fmul fast float %5713, 4.000000e+00
  %8148 = fmul fast float %8147, %8084
  %8149 = fmul fast float %8148, %8144
  %8150 = fmul fast float %5714, 4.000000e+00
  %8151 = fmul fast float %8150, %8085
  %8152 = fmul fast float %8151, %8145
  %8153 = fmul fast float %5722, 4.000000e+00
  %8154 = fmul fast float %8153, %8086
  %8155 = fmul fast float %8154, %8146
  %8156 = fadd fast float %8149, %8136
  %8157 = fadd fast float %8152, %8137
  %8158 = fadd fast float %8155, %8138
  %8159 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8160 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8161 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  br label %8162

; <label>:8162                                    ; preds = %8139, %8116
  %8163 = phi float [ %8159, %8139 ], [ %8136, %8116 ]
  %8164 = phi float [ %8160, %8139 ], [ %8137, %8116 ]
  %8165 = phi float [ %8161, %8139 ], [ %8138, %8116 ]
  %8166 = call float @dx.op.binary.f32(i32 35, float %8164, float %8165)  ; FMax(a,b)
  %8167 = call float @dx.op.binary.f32(i32 35, float %8163, float %8166)  ; FMax(a,b)
  %8168 = fsub fast float 1.000000e+00, %8167
  %8169 = call float @dx.op.binary.f32(i32 35, float %8046, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8170 = fdiv fast float %4433, %8169
  %8171 = fmul fast float %6565, %8170
  %8172 = fmul fast float %6567, %8170
  %8173 = fmul fast float %6569, %8170
  %8174 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8175 = call float @dx.op.unary.f32(i32 21, float %8172)  ; Exp(value)
  %8176 = call float @dx.op.unary.f32(i32 21, float %8173)  ; Exp(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8178 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8179 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8180 = select i1 %6562, float %8177, float 0.000000e+00
  %8181 = select i1 %6563, float %8178, float 0.000000e+00
  %8182 = select i1 %6564, float %8179, float 0.000000e+00
  %8183 = fsub fast float -0.000000e+00, %5716
  %8184 = fsub fast float -0.000000e+00, %5717
  %8185 = fsub fast float -0.000000e+00, %5718
  %8186 = call float @dx.op.dot3.f32(i32 55, float %6656, float %6657, float %6658, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fmul fast float %8187, 9.843750e-01
  %8189 = fadd fast float %8188, 7.812500e-03
  %8190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8189, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.ResRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.ResRet.f32 %8190, 2
  %8194 = extractvalue %dx.types.ResRet.f32 %8190, 3
  %8195 = fsub fast float %8193, %8191
  %8196 = fsub fast float %8194, %8192
  %8197 = fmul fast float %8195, %6005
  %8198 = fmul fast float %8196, %6005
  %8199 = fadd fast float %8197, %8191
  %8200 = fadd fast float %8198, %8192
  %8201 = fmul fast float %8199, %5713
  %8202 = fmul fast float %8199, %5714
  %8203 = fmul fast float %8199, %5722
  %8204 = fadd fast float %8201, %8200
  %8205 = fadd fast float %8202, %8200
  %8206 = fadd fast float %8203, %8200
  br i1 %6018, label %8207, label %8230

; <label>:8207                                    ; preds = %8162
  %8208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8212 = fadd fast float %8209, -5.000000e-01
  %8213 = fadd fast float %8210, -5.000000e-01
  %8214 = fadd fast float %8211, -5.000000e-01
  %8215 = fmul fast float %5713, 4.000000e+00
  %8216 = fmul fast float %8215, %8084
  %8217 = fmul fast float %8216, %8212
  %8218 = fmul fast float %5714, 4.000000e+00
  %8219 = fmul fast float %8218, %8085
  %8220 = fmul fast float %8219, %8213
  %8221 = fmul fast float %5722, 4.000000e+00
  %8222 = fmul fast float %8221, %8086
  %8223 = fmul fast float %8222, %8214
  %8224 = fadd fast float %8217, %8204
  %8225 = fadd fast float %8220, %8205
  %8226 = fadd fast float %8223, %8206
  %8227 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8228 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  %8229 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  br label %8230

; <label>:8230                                    ; preds = %8207, %8162
  %8231 = phi float [ %8227, %8207 ], [ %8204, %8162 ]
  %8232 = phi float [ %8228, %8207 ], [ %8205, %8162 ]
  %8233 = phi float [ %8229, %8207 ], [ %8206, %8162 ]
  %8234 = call float @dx.op.binary.f32(i32 35, float %8232, float %8233)  ; FMax(a,b)
  %8235 = call float @dx.op.binary.f32(i32 35, float %8231, float %8234)  ; FMax(a,b)
  %8236 = fsub fast float 1.000000e+00, %8235
  %8237 = fmul fast float %5739, %6629
  %8238 = fadd fast float %6631, %8237
  %8239 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8240 = fsub fast float %6656, %5730
  %8241 = fsub fast float %6657, %5731
  %8242 = fsub fast float %6658, %5732
  %8243 = call float @dx.op.dot3.f32(i32 55, float %8240, float %8241, float %8242, float %8240, float %8241, float %8242)  ; Dot3(ax,ay,az,bx,by,bz)
  %8244 = call float @dx.op.unary.f32(i32 25, float %8243)  ; Rsqrt(value)
  %8245 = fmul fast float %8244, %8240
  %8246 = fmul fast float %8244, %8241
  %8247 = fmul fast float %8244, %8242
  %8248 = call float @dx.op.dot3.f32(i32 55, float %8183, float %8184, float %8185, float %8245, float %8246, float %8247)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = fmul fast float %8248, %8248
  %8250 = call float @dx.op.unary.f32(i32 6, float %8187)  ; FAbs(value)
  %8251 = call float @dx.op.binary.f32(i32 35, float %8239, float 0x3F847AE140000000)  ; FMax(a,b)
  %8252 = fmul fast float %8251, %8251
  %8253 = fmul fast float %8252, %8252
  %8254 = fsub fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8048, %8254
  %8256 = fadd fast float %8255, %8253
  %8257 = bitcast float %8256 to i32
  %8258 = ashr i32 %8257, 1
  %8259 = add nsw i32 %8258, 532487669
  %8260 = bitcast i32 %8259 to float
  %8261 = fadd fast float %8260, %5724
  %8262 = fmul fast float %8253, %8249
  %8263 = fsub fast float 1.000000e+00, %8249
  %8264 = fadd fast float %8263, %8262
  %8265 = fmul fast float %8250, %8250
  %8266 = fmul fast float %8265, %8254
  %8267 = fadd fast float %8266, %8253
  %8268 = bitcast float %8267 to i32
  %8269 = ashr i32 %8268, 1
  %8270 = add nsw i32 %8269, 532487669
  %8271 = bitcast i32 %8270 to float
  %8272 = fadd fast float %8271, %8250
  %8273 = fmul fast float %8264, %8264
  %8274 = fmul fast float %8273, %8261
  %8275 = fmul fast float %8274, %8272
  %8276 = fdiv fast float 0x3FF0A00000000000, %8275
  %8277 = fmul fast float %8276, %8253
  %8278 = fmul fast float %8187, %8180
  %8279 = fmul fast float %8187, %8181
  %8280 = fmul fast float %8187, %8182
  %8281 = fmul fast float %8278, %8236
  %8282 = fmul fast float %8281, %8277
  %8283 = fmul fast float %8279, %8236
  %8284 = fmul fast float %8283, %8277
  %8285 = fmul fast float %8280, %8236
  %8286 = fmul fast float %8285, %8277
  %8287 = fmul fast float %8117, %8071
  %8288 = fmul fast float %8118, %8071
  %8289 = fmul fast float %8119, %8071
  %8290 = fsub fast float 1.000000e+00, %8038
  %8291 = bitcast float %8290 to i32
  %8292 = sitofp i32 %8291 to float
  %8293 = fmul fast float %8292, 5.000000e+00
  %8294 = fadd fast float %8293, 0xC1EFBF8940000000
  %8295 = fptosi float %8294 to i32
  %8296 = bitcast i32 %8295 to float
  %8297 = fmul fast float %8296, %5080
  %8298 = fmul fast float %8168, %8297
  %8299 = fmul fast float %8298, %6557
  %8300 = fmul fast float %8298, %6558
  %8301 = fmul fast float %8298, %6559
  %8302 = fadd fast float %8299, %8287
  %8303 = fadd fast float %8300, %8288
  %8304 = fadd fast float %8301, %8289
  %8305 = fmul fast float %8302, %8043
  %8306 = fmul fast float %8303, %8043
  %8307 = fmul fast float %8304, %8043
  %8308 = fmul fast float %8043, %8026
  %8309 = fmul fast float %8308, %8168
  %8310 = fmul fast float %8043, %8027
  %8311 = fmul fast float %8310, %8168
  %8312 = fmul fast float %8043, %8028
  %8313 = fmul fast float %8312, %8168
  %8314 = fadd fast float %8305, %8282
  %8315 = fadd fast float %8306, %8284
  %8316 = fadd fast float %8307, %8286
  %8317 = fmul fast float %8314, %8026
  %8318 = fmul fast float %8315, %8027
  %8319 = fmul fast float %8316, %8028
  %8320 = fadd fast float %8309, %6646
  %8321 = fmul fast float %8320, %5076
  %8322 = fadd fast float %8311, %6648
  %8323 = fmul fast float %8322, %5076
  %8324 = fadd fast float %8313, %6650
  %8325 = fmul fast float %8324, %5076
  %8326 = fadd fast float %8317, %6610
  %8327 = fmul fast float %8326, %5076
  %8328 = fadd fast float %8318, %6613
  %8329 = fmul fast float %8328, %5076
  %8330 = fadd fast float %8319, %6616
  %8331 = fmul fast float %8330, %5076
  br label %8332

; <label>:8332                                    ; preds = %8230, %7944, %6540
  %8333 = phi float [ %6611, %6540 ], [ %6611, %7944 ], [ %8327, %8230 ]
  %8334 = phi float [ %6614, %6540 ], [ %6614, %7944 ], [ %8329, %8230 ]
  %8335 = phi float [ %6617, %6540 ], [ %6617, %7944 ], [ %8331, %8230 ]
  %8336 = phi float [ %6647, %6540 ], [ %6647, %7944 ], [ %8321, %8230 ]
  %8337 = phi float [ %6649, %6540 ], [ %6649, %7944 ], [ %8323, %8230 ]
  %8338 = phi float [ %6651, %6540 ], [ %6651, %7944 ], [ %8325, %8230 ]
  %8339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.i32 %8339, 0
  %8341 = icmp eq i32 %8340, 0
  br i1 %8341, label %9159, label %8342

; <label>:8342                                    ; preds = %8332
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 3
  %8346 = fmul fast float %8344, %111
  %8347 = fmul fast float %8345, %112
  %8348 = fptoui float %8346 to i32
  %8349 = fptoui float %8347 to i32
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 2
  %8353 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8354 = fadd fast float %99, -4.000000e+00
  %8355 = call float @dx.op.binary.f32(i32 35, float %8354, float 0.000000e+00)  ; FMax(a,b)
  %8356 = fadd fast float %8355, %8351
  %8357 = fmul fast float %8356, %8352
  %8358 = call float @dx.op.unary.f32(i32 23, float %8357)  ; Log(value)
  %8359 = fmul fast float %8358, %8353
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %8362 = fmul fast float %8359, %8361
  %8363 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.i32 %8364, 1
  %8366 = add i32 %8365, -1
  %8367 = uitofp i32 %8365 to float
  %8368 = fmul fast float %8367, %8363
  %8369 = fptoui float %8368 to i32
  %8370 = call i32 @dx.op.binary.i32(i32 40, i32 %8369, i32 %8366)  ; UMin(a,b)
  %8371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.i32 %8371, 2
  %8373 = extractvalue %dx.types.CBufRet.i32 %8371, 3
  %8374 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8349, i32 %8372, i32 %8348)  ; UMad(a,b,c)
  %8375 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8370, i32 %8373, i32 %8374)  ; UMad(a,b,c)
  %8376 = add nsw i32 %8340, -1
  %8377 = call i32 @dx.op.binary.i32(i32 37, i32 %8376, i32 0)  ; IMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %8379 = fptoui float %8378 to i32
  %8380 = lshr i32 %8379, 5
  %8381 = call i32 @dx.op.binary.i32(i32 40, i32 %8380, i32 8191)  ; UMin(a,b)
  %8382 = shl i32 %8381, 2
  %8383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8382, i32 undef)  ; BufferLoad(srv,index,wot)
  %8384 = extractvalue %dx.types.ResRet.i32 %8383, 0
  %8385 = lshr i32 %8384, 16
  %8386 = and i32 %8384, 65535
  %8387 = lshr i32 %8384, 21
  %8388 = lshr i32 %8386, 5
  %8389 = call i32 @dx.op.binary.i32(i32 40, i32 %8388, i32 %8377)  ; UMin(a,b)
  %8390 = icmp ugt i32 %8387, %8389
  br i1 %8390, label %9159, label %8391

; <label>:8391                                    ; preds = %8342
  br label %8392

; <label>:8392                                    ; preds = %9149, %8391
  %8393 = phi i32 [ %9156, %9149 ], [ %8387, %8391 ]
  %8394 = phi float [ %9150, %9149 ], [ %8333, %8391 ]
  %8395 = phi float [ %9151, %9149 ], [ %8334, %8391 ]
  %8396 = phi float [ %9152, %9149 ], [ %8335, %8391 ]
  %8397 = phi float [ %9153, %9149 ], [ %8336, %8391 ]
  %8398 = phi float [ %9154, %9149 ], [ %8337, %8391 ]
  %8399 = phi float [ %9155, %9149 ], [ %8338, %8391 ]
  %8400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.i32 %8400, 0
  %8402 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8375, i32 %8401, i32 %8393)  ; UMad(a,b,c)
  %8403 = shl i32 %8402, 2
  %8404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8403, i32 undef)  ; BufferLoad(srv,index,wot)
  %8405 = extractvalue %dx.types.ResRet.i32 %8404, 0
  %8406 = shl i32 %8393, 5
  %8407 = sub nsw i32 %8385, %8406
  %8408 = call i32 @dx.op.binary.i32(i32 37, i32 %8407, i32 0)  ; IMax(a,b)
  %8409 = call i32 @dx.op.binary.i32(i32 38, i32 %8408, i32 31)  ; IMin(a,b)
  %8410 = sub nsw i32 1, %8385
  %8411 = add nsw i32 %8410, %8386
  %8412 = call i32 @dx.op.binary.i32(i32 37, i32 %8411, i32 0)  ; IMax(a,b)
  %8413 = call i32 @dx.op.binary.i32(i32 38, i32 %8412, i32 32)  ; IMin(a,b)
  %8414 = and i32 %8413, 31
  %8415 = shl i32 -1, %8414
  %8416 = xor i32 %8415, -1
  %8417 = and i32 %8409, 31
  %8418 = shl i32 %8416, %8417
  %8419 = icmp eq i32 %8413, 32
  %8420 = select i1 %8419, i32 -1, i32 %8418
  %8421 = and i32 %8420, %8405
  %8422 = icmp eq i32 %8421, 0
  br i1 %8422, label %9149, label %8423

; <label>:8423                                    ; preds = %8392
  br label %8424

; <label>:8424                                    ; preds = %8559, %8423
  %8425 = phi i32 [ %8436, %8559 ], [ %8421, %8423 ]
  %8426 = phi float [ %8560, %8559 ], [ %8394, %8423 ]
  %8427 = phi float [ %8561, %8559 ], [ %8395, %8423 ]
  %8428 = phi float [ %8562, %8559 ], [ %8396, %8423 ]
  %8429 = phi float [ %8563, %8559 ], [ %8397, %8423 ]
  %8430 = phi float [ %8564, %8559 ], [ %8398, %8423 ]
  %8431 = phi float [ %8565, %8559 ], [ %8399, %8423 ]
  %8432 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8425)  ; FirstbitLo(value)
  %8433 = add i32 %8432, %8406
  %8434 = and i32 %8432, 31
  %8435 = shl i32 1, %8434
  %8436 = xor i32 %8435, %8425
  %8437 = mul i32 %8433, 112
  %8438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8437, i32 undef)  ; BufferLoad(srv,index,wot)
  %8439 = extractvalue %dx.types.ResRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.ResRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.ResRet.f32 %8438, 2
  %8442 = or i32 %8437, 12
  %8443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8442, i32 undef)  ; BufferLoad(srv,index,wot)
  %8444 = extractvalue %dx.types.ResRet.f32 %8443, 0
  %8445 = add i32 %8437, 16
  %8446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8445, i32 undef)  ; BufferLoad(srv,index,wot)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = add i32 %8437, 28
  %8451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8450, i32 undef)  ; BufferLoad(srv,index,wot)
  %8452 = extractvalue %dx.types.ResRet.i32 %8451, 0
  %8453 = add i32 %8437, 44
  %8454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8453, i32 undef)  ; BufferLoad(srv,index,wot)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = add i32 %8437, 48
  %8457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8456, i32 undef)  ; BufferLoad(srv,index,wot)
  %8458 = extractvalue %dx.types.ResRet.f32 %8457, 0
  %8459 = extractvalue %dx.types.ResRet.f32 %8457, 1
  %8460 = extractvalue %dx.types.ResRet.f32 %8457, 2
  %8461 = extractvalue %dx.types.ResRet.f32 %8457, 3
  %8462 = add i32 %8437, 64
  %8463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8462, i32 undef)  ; BufferLoad(srv,index,wot)
  %8464 = extractvalue %dx.types.ResRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.ResRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.ResRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.ResRet.f32 %8463, 3
  %8468 = add i32 %8437, 80
  %8469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8468, i32 undef)  ; BufferLoad(srv,index,wot)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8472 = add i32 %8437, 92
  %8473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8472, i32 undef)  ; BufferLoad(srv,index,wot)
  %8474 = extractvalue %dx.types.ResRet.i32 %8473, 0
  %8475 = call float @dx.op.dot3.f32(i32 55, float %8439, float %8440, float %8441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8476 = select i1 %232, float %8470, float %8439
  %8477 = select i1 %232, float %8475, float %8440
  %8478 = select i1 %232, float %8471, float %8441
  %8479 = and i32 %8474, 65535
  %8480 = uitofp i32 %8479 to float
  %8481 = lshr i32 %8474, 16
  %8482 = uitofp i32 %8481 to float
  %8483 = and i32 %8452, 65535
  %8484 = and i32 %8452, 50331648
  %8485 = icmp slt i32 %8452, 0
  %8486 = icmp eq i32 %8484, 33554432
  %8487 = fsub fast float %8458, %170
  %8488 = fsub fast float %8459, %171
  %8489 = fsub fast float %8460, %172
  %8490 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8489, float %8487, float %8488, float %8489)  ; Dot3(ax,ay,az,bx,by,bz)
  %8491 = call float @dx.op.unary.f32(i32 24, float %8490)  ; Sqrt(value)
  %8492 = fdiv fast float 1.000000e+00, %8491
  %8493 = fmul fast float %8492, %8487
  %8494 = fmul fast float %8492, %8488
  %8495 = fmul fast float %8492, %8489
  %8496 = fadd fast float %8491, %8444
  %8497 = fdiv fast float 1.000000e+00, %8496
  %8498 = fmul float %8455, %8497
  %8499 = fmul float %8498, %8498
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  br i1 %8486, label %8501, label %8522

; <label>:8501                                    ; preds = %8424
  %8502 = fmul fast float %8466, %8447
  %8503 = fmul fast float %8466, %8448
  %8504 = fmul fast float %8466, %8449
  %8505 = fadd fast float %8487, %8502
  %8506 = fadd fast float %8488, %8503
  %8507 = fadd fast float %8489, %8504
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8505, float %8506, float %8507, float %8505, float %8506, float %8507)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = call float @dx.op.unary.f32(i32 25, float %8508)  ; Rsqrt(value)
  %8510 = fmul fast float %8509, %8505
  %8511 = fmul fast float %8509, %8506
  %8512 = fmul fast float %8509, %8507
  %8513 = fsub fast float %170, %8458
  %8514 = fsub fast float %171, %8459
  %8515 = fsub fast float %172, %8460
  %8516 = fsub fast float -0.000000e+00, %8513
  %8517 = fsub fast float -0.000000e+00, %8514
  %8518 = fsub fast float -0.000000e+00, %8515
  %8519 = call float @dx.op.dot3.f32(i32 55, float %8516, float %8517, float %8518, float %8447, float %8448, float %8449)  ; Dot3(ax,ay,az,bx,by,bz)
  %8520 = fcmp fast ogt float %8519, 0.000000e+00
  %8521 = uitofp i1 %8520 to float
  br label %8522

; <label>:8522                                    ; preds = %8501, %8424
  %8523 = phi float [ %8521, %8501 ], [ 1.000000e+00, %8424 ]
  %8524 = phi float [ %8510, %8501 ], [ %8493, %8424 ]
  %8525 = phi float [ %8511, %8501 ], [ %8494, %8424 ]
  %8526 = phi float [ %8512, %8501 ], [ %8495, %8424 ]
  %8527 = call float @dx.op.dot3.f32(i32 55, float %8447, float %8448, float %8449, float %8524, float %8525, float %8526)  ; Dot3(ax,ay,az,bx,by,bz)
  %8528 = fmul fast float %8527, %8527
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fsub fast float 1.000000e+00, %8529
  %8531 = fmul fast float %8530, 5.000000e-01
  %8532 = fcmp fast ogt float %8527, 0.000000e+00
  %8533 = fsub fast float 1.000000e+00, %8531
  %8534 = select i1 %8532, float %8531, float %8533
  %8535 = fmul fast float %8534, %8482
  %8536 = fadd fast float %8535, %8480
  %8537 = fmul fast float %8536, 0x3EF0001000000000
  %8538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8537, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8539 = extractvalue %dx.types.ResRet.f32 %8538, 0
  %8540 = fmul fast float %8527, %8464
  %8541 = fadd fast float %8540, %8465
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = select i1 %8486, float 1.000000e+00, float %8542
  %8544 = select i1 %8486, float %8542, float 1.000000e+00
  %8545 = fmul fast float %8491, %8461
  %8546 = fsub fast float 1.000000e+00, %8545
  %8547 = fmul fast float %8546, %8467
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fmul fast float %8548, %8544
  %8550 = fmul fast float %8549, 2.000000e+00
  %8551 = fsub fast float 3.000000e+00, %8550
  %8552 = fmul fast float %8539, %8523
  %8553 = fmul fast float %8549, %8549
  %8554 = fmul fast float %8553, %8552
  %8555 = fmul fast float %8554, %8551
  %8556 = call float @dx.op.binary.f32(i32 36, float %8555, float %8555)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8555, float %8556)  ; FMin(a,b)
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  br i1 %8558, label %8567, label %8559, !dx.controlflow.hints !132

; <label>:8559                                    ; preds = %9102, %8713, %8522
  %8560 = phi float [ %8426, %8713 ], [ %8426, %8522 ], [ %9145, %9102 ]
  %8561 = phi float [ %8427, %8713 ], [ %8427, %8522 ], [ %9146, %9102 ]
  %8562 = phi float [ %8428, %8713 ], [ %8428, %8522 ], [ %9147, %9102 ]
  %8563 = phi float [ %8429, %8713 ], [ %8429, %8522 ], [ %9139, %9102 ]
  %8564 = phi float [ %8430, %8713 ], [ %8430, %8522 ], [ %9140, %9102 ]
  %8565 = phi float [ %8431, %8713 ], [ %8431, %8522 ], [ %9141, %9102 ]
  %8566 = icmp eq i32 %8425, %8435
  br i1 %8566, label %9148, label %8424

; <label>:8567                                    ; preds = %8522
  %8568 = icmp eq i32 %8483, 255
  br i1 %8568, label %8713, label %8569, !dx.controlflow.hints !133

; <label>:8569                                    ; preds = %8567
  %8570 = mul nuw nsw i32 %8483, 176
  %8571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8570, i32 undef)  ; BufferLoad(srv,index,wot)
  %8572 = extractvalue %dx.types.ResRet.f32 %8571, 0
  %8573 = extractvalue %dx.types.ResRet.f32 %8571, 1
  %8574 = extractvalue %dx.types.ResRet.f32 %8571, 2
  %8575 = extractvalue %dx.types.ResRet.f32 %8571, 3
  %8576 = add nuw nsw i32 %8570, 16
  %8577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8576, i32 undef)  ; BufferLoad(srv,index,wot)
  %8578 = extractvalue %dx.types.ResRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.ResRet.f32 %8577, 1
  %8580 = add nuw nsw i32 %8570, 32
  %8581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8580, i32 undef)  ; BufferLoad(srv,index,wot)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.ResRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.ResRet.f32 %8581, 2
  %8585 = add nuw nsw i32 %8570, 48
  %8586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8585, i32 undef)  ; BufferLoad(srv,index,wot)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = extractvalue %dx.types.ResRet.f32 %8586, 3
  %8591 = add nuw nsw i32 %8570, 64
  %8592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8591, i32 undef)  ; BufferLoad(srv,index,wot)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = extractvalue %dx.types.ResRet.f32 %8592, 3
  %8597 = add nuw nsw i32 %8570, 80
  %8598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8597, i32 undef)  ; BufferLoad(srv,index,wot)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.ResRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.ResRet.f32 %8598, 2
  %8602 = extractvalue %dx.types.ResRet.f32 %8598, 3
  %8603 = add nuw nsw i32 %8570, 96
  %8604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8603, i32 undef)  ; BufferLoad(srv,index,wot)
  %8605 = extractvalue %dx.types.ResRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.ResRet.f32 %8604, 1
  %8607 = extractvalue %dx.types.ResRet.f32 %8604, 2
  %8608 = extractvalue %dx.types.ResRet.f32 %8604, 3
  %8609 = bitcast float %8579 to i32
  %8610 = fmul fast float %8584, %120
  %8611 = fmul fast float %8584, %122
  %8612 = fmul fast float %8584, %124
  %8613 = fadd fast float %8610, %170
  %8614 = fadd fast float %8611, %171
  %8615 = fadd fast float %8612, %172
  %8616 = fmul fast float %8613, %8587
  %8617 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8593, float %8616)  ; FMad(a,b,c)
  %8618 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8599, float %8617)  ; FMad(a,b,c)
  %8619 = fadd fast float %8618, %8605
  %8620 = fmul fast float %8613, %8588
  %8621 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8594, float %8620)  ; FMad(a,b,c)
  %8622 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8600, float %8621)  ; FMad(a,b,c)
  %8623 = fadd fast float %8622, %8606
  %8624 = fmul fast float %8613, %8589
  %8625 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8595, float %8624)  ; FMad(a,b,c)
  %8626 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8601, float %8625)  ; FMad(a,b,c)
  %8627 = fadd fast float %8626, %8607
  %8628 = fmul fast float %8613, %8590
  %8629 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8596, float %8628)  ; FMad(a,b,c)
  %8630 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8602, float %8629)  ; FMad(a,b,c)
  %8631 = fadd fast float %8630, %8608
  %8632 = fdiv fast float %8619, %8631
  %8633 = fdiv fast float %8623, %8631
  %8634 = fdiv fast float %8627, %8631
  %8635 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8634)  ; FMax(a,b)
  %8636 = fmul fast float %243, 0x401921FB60000000
  %8637 = call float @dx.op.unary.f32(i32 13, float %8636)  ; Sin(value)
  %8638 = call float @dx.op.unary.f32(i32 12, float %8636)  ; Cos(value)
  %8639 = fmul fast float %8638, %8583
  %8640 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8583, float 0.000000e+00)  ; FMad(a,b,c)
  %8641 = fmul fast float %8583, %8637
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = call float @dx.op.tertiary.f32(i32 46, float %8638, float %8583, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8644

; <label>:8644                                    ; preds = %8644, %8569
  %8645 = phi float [ 0.000000e+00, %8569 ], [ %8677, %8644 ]
  %8646 = phi float [ 0.000000e+00, %8569 ], [ %8679, %8644 ]
  %8647 = phi i32 [ 0, %8569 ], [ %8680, %8644 ]
  %8648 = mul i32 %8647, 2
  %8649 = add i32 0, %8648
  %8650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8649
  %8651 = load float, float* %8650, align 4
  %8652 = mul i32 %8647, 2
  %8653 = add i32 1, %8652
  %8654 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8653
  %8655 = load float, float* %8654, align 4
  %8656 = fmul fast float %8639, %8651
  %8657 = call float @dx.op.tertiary.f32(i32 46, float %8655, float %8642, float %8656)  ; FMad(a,b,c)
  %8658 = fmul fast float %8651, %8640
  %8659 = call float @dx.op.tertiary.f32(i32 46, float %8655, float %8643, float %8658)  ; FMad(a,b,c)
  %8660 = fadd fast float %8657, %8632
  %8661 = fadd fast float %8659, %8633
  %8662 = fmul fast float %8660, %8578
  %8663 = fmul fast float %8661, %8578
  %8664 = call float @dx.op.binary.f32(i32 35, float %8662, float %8574)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 35, float %8663, float %8574)  ; FMax(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8664, float %8575)  ; FMin(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8665, float %8575)  ; FMin(a,b)
  %8668 = fadd fast float %8666, %8572
  %8669 = fadd fast float %8667, %8573
  %8670 = uitofp i32 %8609 to float
  %8671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8668, float %8669, float %8670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8672 = extractvalue %dx.types.ResRet.f32 %8671, 0
  %8673 = fsub fast float %8672, %8635
  %8674 = fsub fast float %8673, %8582
  %8675 = fcmp fast ogt float %8674, 0.000000e+00
  %8676 = select i1 %8675, float 1.000000e+00, float 0.000000e+00
  %8677 = fadd fast float %8676, %8645
  %8678 = select i1 %8675, float %8674, float 0.000000e+00
  %8679 = fadd fast float %8678, %8646
  %8680 = add nuw nsw i32 %8647, 1
  %8681 = icmp eq i32 %8680, 8
  br i1 %8681, label %8682, label %8644

; <label>:8682                                    ; preds = %8644
  %8683 = fdiv fast float 1.000000e+00, %8677
  %8684 = fmul fast float %8683, %8679
  %8685 = fdiv fast float 1.000000e+00, %8635
  %8686 = fmul fast float %8684, %8685
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = call float @dx.op.binary.f32(i32 35, float %8687, float 0.000000e+00)  ; FMax(a,b)
  %8689 = fmul fast float %8677, 1.250000e-01
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fmul fast float %8690, 2.000000e+00
  %8692 = fadd fast float %8691, -1.000000e+00
  %8693 = fcmp fast ogt float %8692, 0.000000e+00
  %8694 = fcmp fast olt float %8692, 0.000000e+00
  %8695 = zext i1 %8693 to i32
  %8696 = zext i1 %8694 to i32
  %8697 = sub nsw i32 %8695, %8696
  %8698 = sitofp i32 %8697 to float
  %8699 = fmul fast float %8698, %8692
  %8700 = fsub fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8700, %8700
  %8702 = fmul fast float %8701, %8700
  %8703 = fsub fast float %8700, %8702
  %8704 = fmul fast float %8703, %8688
  %8705 = fsub fast float 1.000000e+00, %8702
  %8706 = fsub fast float %8705, %8704
  %8707 = fmul fast float %8698, 5.000000e-01
  %8708 = fmul fast float %8707, %8706
  %8709 = fsub fast float -5.000000e-01, %8708
  %8710 = fmul fast float %8709, %8543
  %8711 = fadd fast float %8710, 1.000000e+00
  %8712 = fmul fast float %8711, %8555
  br label %8713

; <label>:8713                                    ; preds = %8682, %8567
  %8714 = phi float [ %8712, %8682 ], [ %8555, %8567 ]
  %8715 = call float @dx.op.binary.f32(i32 36, float %8714, float %8714)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8714, float %8715)  ; FMin(a,b)
  %8717 = fcmp fast ogt float %8716, 0.000000e+00
  br i1 %8717, label %8718, label %8559, !dx.controlflow.hints !134

; <label>:8718                                    ; preds = %8713
  %8719 = fmul fast float %8714, %8476
  %8720 = fmul fast float %8714, %8477
  %8721 = fmul fast float %8714, %8478
  %8722 = fsub fast float %8460, %5512
  %8723 = fcmp fast ogt float %8722, 0.000000e+00
  %8724 = fsub fast float %172, %5512
  %8725 = fcmp fast ogt float %8724, 0.000000e+00
  %8726 = xor i1 %8725, %8723
  %8727 = fsub fast float %5512, %8460
  %8728 = fmul fast float %8727, 2.000000e+00
  %8729 = fadd fast float %8728, %8460
  %8730 = select i1 %8726, float %8460, float %8729
  %8731 = fsub fast float %8730, %172
  %8732 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8731, float %8487, float %8488, float %8731)  ; Dot3(ax,ay,az,bx,by,bz)
  %8733 = call float @dx.op.unary.f32(i32 25, float %8732)  ; Rsqrt(value)
  %8734 = fmul fast float %8733, %8487
  %8735 = fmul fast float %8733, %8488
  %8736 = fmul fast float %8733, %8731
  %8737 = fsub fast float %5512, %172
  %8738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8737)  ; Dot3(ax,ay,az,bx,by,bz)
  %8739 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8734, float %8735, float %8736)  ; Dot3(ax,ay,az,bx,by,bz)
  %8740 = fdiv fast float 1.000000e+00, %8739
  %8741 = fmul fast float %8740, %8738
  %8742 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8724, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8743 = fcmp fast ogt float %8742, 0.000000e+00
  %8744 = fcmp fast olt float %8742, 0.000000e+00
  %8745 = zext i1 %8743 to i32
  %8746 = zext i1 %8744 to i32
  %8747 = sub nsw i32 %8745, %8746
  %8748 = sitofp i32 %8747 to float
  %8749 = fsub fast float %8730, %5512
  %8750 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8751 = fcmp fast ogt float %8750, 0.000000e+00
  %8752 = fcmp fast olt float %8750, 0.000000e+00
  %8753 = zext i1 %8751 to i32
  %8754 = zext i1 %8752 to i32
  %8755 = sub nsw i32 %8753, %8754
  %8756 = sitofp i32 %8755 to float
  %8757 = fcmp fast une float %8748, %8756
  br i1 %8757, label %8758, label %8768

; <label>:8758                                    ; preds = %8718
  %8759 = fmul fast float %8741, %8736
  %8760 = fmul fast float %8741, %8735
  %8761 = fmul fast float %8741, %8734
  %8762 = fmul fast float %8761, %8761
  %8763 = fmul fast float %8760, %8760
  %8764 = fadd fast float %8762, %8763
  %8765 = fmul fast float %8759, %8759
  %8766 = fadd fast float %8764, %8765
  %8767 = call float @dx.op.unary.f32(i32 24, float %8766)  ; Sqrt(value)
  br label %8780

; <label>:8768                                    ; preds = %8718
  %8769 = icmp slt i32 %8747, 0
  br i1 %8769, label %8770, label %8780

; <label>:8770                                    ; preds = %8768
  %8771 = fsub fast float %170, %8458
  %8772 = fsub fast float %171, %8459
  %8773 = fsub fast float %172, %8730
  %8774 = fmul fast float %8771, %8771
  %8775 = fmul fast float %8772, %8772
  %8776 = fadd fast float %8774, %8775
  %8777 = fmul fast float %8773, %8773
  %8778 = fadd fast float %8776, %8777
  %8779 = call float @dx.op.unary.f32(i32 24, float %8778)  ; Sqrt(value)
  br label %8780

; <label>:8780                                    ; preds = %8770, %8768, %8758
  %8781 = phi float [ %8767, %8758 ], [ %8779, %8770 ], [ 0.000000e+00, %8768 ]
  %8782 = and i1 %8725, %8723
  %8783 = fsub fast float -0.000000e+00, %8781
  %8784 = select i1 %8782, float -0.000000e+00, float %8783
  %8785 = fmul fast float %5509, 0x3FF7154760000000
  %8786 = fmul fast float %8785, %8784
  %8787 = fmul fast float %5510, 0x3FF7154760000000
  %8788 = fmul fast float %8787, %8784
  %8789 = fmul fast float %5511, 0x3FF7154760000000
  %8790 = fmul fast float %8789, %8784
  %8791 = call float @dx.op.unary.f32(i32 21, float %8786)  ; Exp(value)
  %8792 = call float @dx.op.unary.f32(i32 21, float %8788)  ; Exp(value)
  %8793 = call float @dx.op.unary.f32(i32 21, float %8790)  ; Exp(value)
  %8794 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8795 = call float @dx.op.unary.f32(i32 7, float %8792)  ; Saturate(value)
  %8796 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8797 = fmul fast float %8719, %8794
  %8798 = fmul fast float %8720, %8795
  %8799 = fmul fast float %8721, %8796
  %8800 = fsub fast float %8493, %5709
  %8801 = fsub fast float %8494, %5708
  %8802 = fsub fast float %8495, %5707
  %8803 = call float @dx.op.dot3.f32(i32 55, float %8800, float %8801, float %8802, float %8800, float %8801, float %8802)  ; Dot3(ax,ay,az,bx,by,bz)
  %8804 = call float @dx.op.unary.f32(i32 25, float %8803)  ; Rsqrt(value)
  %8805 = fmul fast float %8804, %8800
  %8806 = fmul fast float %8804, %8801
  %8807 = fmul fast float %8804, %8802
  %8808 = call float @dx.op.dot3.f32(i32 55, float %8493, float %8494, float %8495, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8809 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8805, float %8806, float %8807)  ; Dot3(ax,ay,az,bx,by,bz)
  %8810 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8811 = fmul fast float %8810, %8500
  %8812 = fmul fast float %8810, %8810
  %8813 = fmul fast float %8812, %5749
  %8814 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8815 = fmul fast float %8811, %8814
  %8816 = bitcast float %8490 to i32
  %8817 = ashr i32 %8816, 1
  %8818 = sub nsw i32 1597463007, %8817
  %8819 = bitcast i32 %8818 to float
  %8820 = fmul fast float %8819, %8487
  %8821 = fmul fast float %8819, %8488
  %8822 = fmul fast float %8819, %8489
  %8823 = fsub fast float %8820, %5709
  %8824 = fsub fast float %8821, %5708
  %8825 = fsub fast float %8822, %5707
  %8826 = call float @dx.op.dot3.f32(i32 55, float %8823, float %8824, float %8825, float %8823, float %8824, float %8825)  ; Dot3(ax,ay,az,bx,by,bz)
  %8827 = call float @dx.op.unary.f32(i32 25, float %8826)  ; Rsqrt(value)
  %8828 = fmul fast float %8823, %8827
  %8829 = fmul fast float %8824, %8827
  %8830 = fmul fast float %8825, %8827
  %8831 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8828, float %8829, float %8830)  ; Dot3(ax,ay,az,bx,by,bz)
  %8832 = fmul fast float %8831, %8831
  %8833 = call float @dx.op.unary.f32(i32 6, float %8808)  ; FAbs(value)
  %8834 = fsub fast float 1.000000e+00, %5742
  %8835 = fmul fast float %5724, %5724
  %8836 = fmul fast float %8835, %8834
  %8837 = fadd fast float %8836, %5742
  %8838 = bitcast float %8837 to i32
  %8839 = ashr i32 %8838, 1
  %8840 = add nsw i32 %8839, 532487669
  %8841 = bitcast i32 %8840 to float
  %8842 = fadd fast float %8841, %5724
  %8843 = fmul fast float %5742, %8832
  %8844 = fsub fast float 1.000000e+00, %8832
  %8845 = fadd fast float %8844, %8843
  %8846 = fmul fast float %8833, %8833
  %8847 = fmul fast float %8846, %8834
  %8848 = fadd fast float %8847, %5742
  %8849 = bitcast float %8848 to i32
  %8850 = ashr i32 %8849, 1
  %8851 = add nsw i32 %8850, 532487669
  %8852 = bitcast i32 %8851 to float
  %8853 = fadd fast float %8852, %8833
  %8854 = fmul fast float %8845, %8845
  %8855 = fmul fast float %8854, %8842
  %8856 = fmul fast float %8855, %8853
  %8857 = fdiv fast float 1.000000e+00, %8856
  %8858 = bitcast float %5742 to i32
  %8859 = sitofp i32 %8858 to float
  %8860 = fmul fast float %8859, 0x3FE7F73180000000
  %8861 = fadd fast float %8860, 0x41AFE27C40000000
  %8862 = fptosi float %8861 to i32
  %8863 = bitcast i32 %8862 to float
  %8864 = fmul fast float %8455, 0x3FD80E9D60000000
  %8865 = fmul fast float %8864, %8819
  %8866 = fadd fast float %8863, %8865
  %8867 = bitcast float %8866 to i32
  %8868 = sub nsw i32 2129859010, %8867
  %8869 = bitcast i32 %8868 to float
  %8870 = fmul fast float %5742, %8857
  %8871 = fmul fast float %8870, %8863
  %8872 = fmul fast float %8871, %8869
  %8873 = fmul fast float %5995, 0x3FF9999980000000
  %8874 = fsub fast float 5.000000e+00, %8873
  %8875 = call float @dx.op.unary.f32(i32 6, float %8809)  ; FAbs(value)
  %8876 = fsub fast float 1.000000e+00, %8875
  %8877 = fmul fast float %5995, 0x41D9660740000000
  %8878 = fadd fast float %8877, 0xC1EFBF8940000000
  %8879 = bitcast float %8876 to i32
  %8880 = sitofp i32 %8879 to float
  %8881 = fmul fast float %8880, %8874
  %8882 = fadd fast float %8878, %8881
  %8883 = fptosi float %8882 to i32
  %8884 = bitcast i32 %8883 to float
  %8885 = fsub fast float 1.000000e+00, %5713
  %8886 = fsub fast float 1.000000e+00, %5714
  %8887 = fsub fast float 1.000000e+00, %5722
  %8888 = fmul fast float %8884, %8885
  %8889 = fmul fast float %8884, %8886
  %8890 = fmul fast float %8884, %8887
  %8891 = fadd fast float %8888, %5713
  %8892 = fadd fast float %8889, %5714
  %8893 = fadd fast float %8890, %5722
  br i1 %6018, label %8894, label %8917

; <label>:8894                                    ; preds = %8780
  %8895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = fadd fast float %8896, -5.000000e-01
  %8900 = fadd fast float %8897, -5.000000e-01
  %8901 = fadd fast float %8898, -5.000000e-01
  %8902 = fmul fast float %5713, 4.000000e+00
  %8903 = fmul fast float %8902, %8885
  %8904 = fmul fast float %8903, %8899
  %8905 = fmul fast float %5714, 4.000000e+00
  %8906 = fmul fast float %8905, %8886
  %8907 = fmul fast float %8906, %8900
  %8908 = fmul fast float %5722, 4.000000e+00
  %8909 = fmul fast float %8908, %8887
  %8910 = fmul fast float %8909, %8901
  %8911 = fadd fast float %8904, %8891
  %8912 = fadd fast float %8907, %8892
  %8913 = fadd fast float %8910, %8893
  %8914 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8915 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8916 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  br label %8917

; <label>:8917                                    ; preds = %8894, %8780
  %8918 = phi float [ %8914, %8894 ], [ %8891, %8780 ]
  %8919 = phi float [ %8915, %8894 ], [ %8892, %8780 ]
  %8920 = phi float [ %8916, %8894 ], [ %8893, %8780 ]
  %8921 = fmul fast float %8808, 9.843750e-01
  %8922 = fadd fast float %8921, 7.812500e-03
  %8923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8922, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8924 = extractvalue %dx.types.ResRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.ResRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.ResRet.f32 %8923, 2
  %8927 = extractvalue %dx.types.ResRet.f32 %8923, 3
  %8928 = fsub fast float %8926, %8924
  %8929 = fsub fast float %8927, %8925
  %8930 = fmul fast float %8928, %6005
  %8931 = fmul fast float %8929, %6005
  %8932 = fadd fast float %8930, %8924
  %8933 = fadd fast float %8931, %8925
  %8934 = fmul fast float %8932, %5713
  %8935 = fmul fast float %8932, %5714
  %8936 = fmul fast float %8932, %5722
  %8937 = fadd fast float %8934, %8933
  %8938 = fadd fast float %8935, %8933
  %8939 = fadd fast float %8936, %8933
  br i1 %6018, label %8940, label %8963

; <label>:8940                                    ; preds = %8917
  %8941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8942 = extractvalue %dx.types.ResRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.ResRet.f32 %8941, 1
  %8944 = extractvalue %dx.types.ResRet.f32 %8941, 2
  %8945 = fadd fast float %8942, -5.000000e-01
  %8946 = fadd fast float %8943, -5.000000e-01
  %8947 = fadd fast float %8944, -5.000000e-01
  %8948 = fmul fast float %5713, 4.000000e+00
  %8949 = fmul fast float %8948, %8885
  %8950 = fmul fast float %8949, %8945
  %8951 = fmul fast float %5714, 4.000000e+00
  %8952 = fmul fast float %8951, %8886
  %8953 = fmul fast float %8952, %8946
  %8954 = fmul fast float %5722, 4.000000e+00
  %8955 = fmul fast float %8954, %8887
  %8956 = fmul fast float %8955, %8947
  %8957 = fadd fast float %8950, %8937
  %8958 = fadd fast float %8953, %8938
  %8959 = fadd fast float %8956, %8939
  %8960 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8961 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  %8962 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  br label %8963

; <label>:8963                                    ; preds = %8940, %8917
  %8964 = phi float [ %8960, %8940 ], [ %8937, %8917 ]
  %8965 = phi float [ %8961, %8940 ], [ %8938, %8917 ]
  %8966 = phi float [ %8962, %8940 ], [ %8939, %8917 ]
  %8967 = call float @dx.op.binary.f32(i32 35, float %8965, float %8966)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8964, float %8967)  ; FMax(a,b)
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = call float @dx.op.binary.f32(i32 35, float %8833, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8971 = fdiv fast float %4433, %8970
  %8972 = fmul fast float %6565, %8971
  %8973 = fmul fast float %6567, %8971
  %8974 = fmul fast float %6569, %8971
  %8975 = call float @dx.op.unary.f32(i32 21, float %8972)  ; Exp(value)
  %8976 = call float @dx.op.unary.f32(i32 21, float %8973)  ; Exp(value)
  %8977 = call float @dx.op.unary.f32(i32 21, float %8974)  ; Exp(value)
  %8978 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8979 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8980 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8981 = select i1 %6562, float %8978, float 0.000000e+00
  %8982 = select i1 %6563, float %8979, float 0.000000e+00
  %8983 = select i1 %6564, float %8980, float 0.000000e+00
  %8984 = fsub fast float -0.000000e+00, %5716
  %8985 = fsub fast float -0.000000e+00, %5717
  %8986 = fsub fast float -0.000000e+00, %5718
  %8987 = call float @dx.op.dot3.f32(i32 55, float %8493, float %8494, float %8495, float %8984, float %8985, float %8986)  ; Dot3(ax,ay,az,bx,by,bz)
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = fmul fast float %8988, %8500
  %8990 = fmul fast float %8988, 9.843750e-01
  %8991 = fadd fast float %8990, 7.812500e-03
  %8992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8991, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8993 = extractvalue %dx.types.ResRet.f32 %8992, 0
  %8994 = extractvalue %dx.types.ResRet.f32 %8992, 1
  %8995 = extractvalue %dx.types.ResRet.f32 %8992, 2
  %8996 = extractvalue %dx.types.ResRet.f32 %8992, 3
  %8997 = fsub fast float %8995, %8993
  %8998 = fsub fast float %8996, %8994
  %8999 = fmul fast float %8997, %6005
  %9000 = fmul fast float %8998, %6005
  %9001 = fadd fast float %8999, %8993
  %9002 = fadd fast float %9000, %8994
  %9003 = fmul fast float %9001, %5713
  %9004 = fmul fast float %9001, %5714
  %9005 = fmul fast float %9001, %5722
  %9006 = fadd fast float %9003, %9002
  %9007 = fadd fast float %9004, %9002
  %9008 = fadd fast float %9005, %9002
  br i1 %6018, label %9009, label %9032

; <label>:9009                                    ; preds = %8963
  %9010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9011 = extractvalue %dx.types.ResRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.ResRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.ResRet.f32 %9010, 2
  %9014 = fadd fast float %9011, -5.000000e-01
  %9015 = fadd fast float %9012, -5.000000e-01
  %9016 = fadd fast float %9013, -5.000000e-01
  %9017 = fmul fast float %5713, 4.000000e+00
  %9018 = fmul fast float %9017, %8885
  %9019 = fmul fast float %9018, %9014
  %9020 = fmul fast float %5714, 4.000000e+00
  %9021 = fmul fast float %9020, %8886
  %9022 = fmul fast float %9021, %9015
  %9023 = fmul fast float %5722, 4.000000e+00
  %9024 = fmul fast float %9023, %8887
  %9025 = fmul fast float %9024, %9016
  %9026 = fadd fast float %9019, %9006
  %9027 = fadd fast float %9022, %9007
  %9028 = fadd fast float %9025, %9008
  %9029 = call float @dx.op.unary.f32(i32 7, float %9026)  ; Saturate(value)
  %9030 = call float @dx.op.unary.f32(i32 7, float %9027)  ; Saturate(value)
  %9031 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  br label %9032

; <label>:9032                                    ; preds = %9009, %8963
  %9033 = phi float [ %9029, %9009 ], [ %9006, %8963 ]
  %9034 = phi float [ %9030, %9009 ], [ %9007, %8963 ]
  %9035 = phi float [ %9031, %9009 ], [ %9008, %8963 ]
  %9036 = call float @dx.op.binary.f32(i32 35, float %9034, float %9035)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9033, float %9036)  ; FMax(a,b)
  %9038 = fsub fast float 1.000000e+00, %9037
  %9039 = fmul fast float %5739, %6629
  %9040 = fadd fast float %6631, %9039
  %9041 = call float @dx.op.unary.f32(i32 7, float %9040)  ; Saturate(value)
  %9042 = fsub fast float %8820, %5730
  %9043 = fsub fast float %8821, %5731
  %9044 = fsub fast float %8822, %5732
  %9045 = call float @dx.op.dot3.f32(i32 55, float %9042, float %9043, float %9044, float %9042, float %9043, float %9044)  ; Dot3(ax,ay,az,bx,by,bz)
  %9046 = call float @dx.op.unary.f32(i32 25, float %9045)  ; Rsqrt(value)
  %9047 = fmul fast float %9042, %9046
  %9048 = fmul fast float %9043, %9046
  %9049 = fmul fast float %9044, %9046
  %9050 = call float @dx.op.dot3.f32(i32 55, float %8984, float %8985, float %8986, float %9047, float %9048, float %9049)  ; Dot3(ax,ay,az,bx,by,bz)
  %9051 = fmul fast float %9050, %9050
  %9052 = call float @dx.op.unary.f32(i32 6, float %8988)  ; FAbs(value)
  %9053 = call float @dx.op.binary.f32(i32 35, float %9041, float 0x3F847AE140000000)  ; FMax(a,b)
  %9054 = fmul fast float %9053, %9053
  %9055 = fmul fast float %9054, %9054
  %9056 = fsub fast float 1.000000e+00, %9055
  %9057 = fmul fast float %8835, %9056
  %9058 = fadd fast float %9057, %9055
  %9059 = bitcast float %9058 to i32
  %9060 = ashr i32 %9059, 1
  %9061 = add nsw i32 %9060, 532487669
  %9062 = bitcast i32 %9061 to float
  %9063 = fadd fast float %9062, %5724
  %9064 = fmul fast float %9055, %9051
  %9065 = fsub fast float 1.000000e+00, %9051
  %9066 = fadd fast float %9065, %9064
  %9067 = fmul fast float %9052, %9052
  %9068 = fmul fast float %9067, %9056
  %9069 = fadd fast float %9068, %9055
  %9070 = bitcast float %9069 to i32
  %9071 = ashr i32 %9070, 1
  %9072 = add nsw i32 %9071, 532487669
  %9073 = bitcast i32 %9072 to float
  %9074 = fadd fast float %9073, %9052
  %9075 = fmul fast float %9066, %9066
  %9076 = fmul fast float %9075, %9063
  %9077 = fmul fast float %9076, %9074
  %9078 = fdiv fast float 1.000000e+00, %9077
  %9079 = bitcast float %9055 to i32
  %9080 = sitofp i32 %9079 to float
  %9081 = fmul fast float %9080, 0x3FE7F73180000000
  %9082 = fadd fast float %9081, 0x41AFE27C40000000
  %9083 = fptosi float %9082 to i32
  %9084 = bitcast i32 %9083 to float
  %9085 = fadd fast float %9084, %8865
  %9086 = bitcast float %9085 to i32
  %9087 = sub nsw i32 2129859010, %9086
  %9088 = bitcast i32 %9087 to float
  %9089 = fmul fast float %9055, %9078
  %9090 = fmul fast float %9089, %9084
  %9091 = fmul fast float %9090, %9088
  br i1 %8485, label %9092, label %9102

; <label>:9092                                    ; preds = %9032
  %9093 = fmul fast float %8989, %8981
  %9094 = fmul fast float %8989, %8982
  %9095 = fmul fast float %8989, %8983
  %9096 = fmul fast float %9093, %9038
  %9097 = fmul fast float %9096, %9091
  %9098 = fmul fast float %9094, %9038
  %9099 = fmul fast float %9098, %9091
  %9100 = fmul fast float %9095, %9038
  %9101 = fmul fast float %9100, %9091
  br label %9102

; <label>:9102                                    ; preds = %9092, %9032
  %9103 = phi float [ %9097, %9092 ], [ 0.000000e+00, %9032 ]
  %9104 = phi float [ %9099, %9092 ], [ 0.000000e+00, %9032 ]
  %9105 = phi float [ %9101, %9092 ], [ 0.000000e+00, %9032 ]
  %9106 = fmul fast float %8918, %8872
  %9107 = fmul fast float %8919, %8872
  %9108 = fmul fast float %8920, %8872
  %9109 = fsub fast float 1.000000e+00, %8809
  %9110 = bitcast float %9109 to i32
  %9111 = sitofp i32 %9110 to float
  %9112 = fmul fast float %9111, 5.000000e+00
  %9113 = fadd fast float %9112, 0xC1EFBF8940000000
  %9114 = fptosi float %9113 to i32
  %9115 = bitcast i32 %9114 to float
  %9116 = fmul fast float %9115, %5080
  %9117 = fmul fast float %8969, %9116
  %9118 = fmul fast float %9117, %6557
  %9119 = fmul fast float %9117, %6558
  %9120 = fmul fast float %9117, %6559
  %9121 = fadd fast float %9118, %9106
  %9122 = fadd fast float %9119, %9107
  %9123 = fadd fast float %9120, %9108
  %9124 = fmul fast float %9121, %8815
  %9125 = fmul fast float %9122, %8815
  %9126 = fmul fast float %9123, %8815
  %9127 = fadd fast float %9124, %9103
  %9128 = fadd fast float %9125, %9104
  %9129 = fadd fast float %9126, %9105
  %9130 = fmul fast float %8797, %5076
  %9131 = fmul fast float %9130, %8815
  %9132 = fmul fast float %9131, %8969
  %9133 = fmul fast float %8798, %5076
  %9134 = fmul fast float %9133, %8815
  %9135 = fmul fast float %9134, %8969
  %9136 = fmul fast float %8799, %5076
  %9137 = fmul fast float %9136, %8815
  %9138 = fmul fast float %9137, %8969
  %9139 = fadd fast float %9132, %8429
  %9140 = fadd fast float %9135, %8430
  %9141 = fadd fast float %9138, %8431
  %9142 = fmul fast float %9130, %9127
  %9143 = fmul fast float %9133, %9128
  %9144 = fmul fast float %9136, %9129
  %9145 = fadd fast float %9142, %8426
  %9146 = fadd fast float %9143, %8427
  %9147 = fadd fast float %9144, %8428
  br label %8559

; <label>:9148                                    ; preds = %8559
  br label %9149

; <label>:9149                                    ; preds = %9148, %8392
  %9150 = phi float [ %8394, %8392 ], [ %8560, %9148 ]
  %9151 = phi float [ %8395, %8392 ], [ %8561, %9148 ]
  %9152 = phi float [ %8396, %8392 ], [ %8562, %9148 ]
  %9153 = phi float [ %8397, %8392 ], [ %8563, %9148 ]
  %9154 = phi float [ %8398, %8392 ], [ %8564, %9148 ]
  %9155 = phi float [ %8399, %8392 ], [ %8565, %9148 ]
  %9156 = add i32 %8393, 1
  %9157 = icmp ugt i32 %9156, %8389
  br i1 %9157, label %9158, label %8392

; <label>:9158                                    ; preds = %9149
  br label %9159

; <label>:9159                                    ; preds = %9158, %8342, %8332
  %9160 = phi float [ %8333, %8332 ], [ %8333, %8342 ], [ %9150, %9158 ]
  %9161 = phi float [ %8334, %8332 ], [ %8334, %8342 ], [ %9151, %9158 ]
  %9162 = phi float [ %8335, %8332 ], [ %8335, %8342 ], [ %9152, %9158 ]
  %9163 = phi float [ %8336, %8332 ], [ %8336, %8342 ], [ %9153, %9158 ]
  %9164 = phi float [ %8337, %8332 ], [ %8337, %8342 ], [ %9154, %9158 ]
  %9165 = phi float [ %8338, %8332 ], [ %8338, %8342 ], [ %9155, %9158 ]
  %9166 = fmul fast float %6586, %5076
  %9167 = fmul fast float %6587, %5076
  %9168 = fmul fast float %6588, %5076
  %9169 = fadd fast float %9166, 1.000000e+00
  %9170 = fadd fast float %9167, 1.000000e+00
  %9171 = fadd fast float %9168, 1.000000e+00
  %9172 = call float @dx.op.dot3.f32(i32 55, float %9169, float %9170, float %9171, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 0
  %9176 = fmul fast float %9175, %6592
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 3
  %9179 = fsub fast float 1.000000e+00, %5083
  %9180 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9181 = fadd fast float %9165, %5082
  %9182 = fmul fast float %9181, %5083
  %9183 = fmul fast float %9180, %9178
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 3
  %9186 = fmul fast float %9163, %5710
  %9187 = fmul fast float %9164, %5711
  %9188 = fmul fast float %9165, %5712
  %9189 = fcmp fast ogt float %99, %192
  %9190 = and i1 %9189, %5515
  %9191 = or i1 %5521, %9190
  %9192 = icmp eq i32 %5514, 2
  %9193 = fcmp fast ole float %99, %192
  %9194 = and i1 %9193, %9192
  %9195 = or i1 %9194, %9191
  br i1 %9190, label %9196, label %9453

; <label>:9196                                    ; preds = %9159
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9199 = extractvalue %dx.types.CBufRet.f32 %9197, 3
  %9200 = fmul fast float %9198, %111
  %9201 = fmul fast float %9199, %112
  %9202 = call float @dx.op.unary.f32(i32 7, float %9200)  ; Saturate(value)
  %9203 = call float @dx.op.unary.f32(i32 7, float %9201)  ; Saturate(value)
  %9204 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9202, float %9203, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9205 = extractvalue %dx.types.ResRet.f32 %9204, 0
  %9206 = extractvalue %dx.types.ResRet.f32 %9204, 1
  %9207 = extractvalue %dx.types.ResRet.f32 %9204, 2
  %9208 = extractvalue %dx.types.ResRet.f32 %9204, 3
  %9209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9202, float %9203, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.ResRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.ResRet.f32 %9209, 2
  %9213 = extractvalue %dx.types.ResRet.f32 %9209, 3
  %9214 = call float @dx.op.binary.f32(i32 35, float %9206, float %9207)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float %9205, float %9214)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9215, float %9208)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 36, float %9211, float %9212)  ; FMin(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9210, float %9217)  ; FMin(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9218, float %9213)  ; FMin(a,b)
  %9220 = fmul fast float %9216, 2.550000e+02
  %9221 = fadd fast float %9220, 0x3F70101020000000
  %9222 = fptoui float %9221 to i32
  %9223 = fmul fast float %9219, 2.550000e+02
  %9224 = fadd fast float %9223, 0x3F70101020000000
  %9225 = fptoui float %9224 to i32
  %9226 = icmp ult i32 %9222, %9225
  br i1 %9226, label %9227, label %9395

; <label>:9227                                    ; preds = %9196
  %9228 = fcmp fast ogt float %98, 9.843750e-01
  %9229 = fadd fast float %99, -4.000000e+00
  %9230 = select i1 %9228, float -4.000000e+00, float %9229
  %9231 = call float @dx.op.binary.f32(i32 35, float %9230, float 0.000000e+00)  ; FMax(a,b)
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = fadd fast float %9233, %9231
  %9235 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9236 = fmul fast float %9234, %9235
  %9237 = call float @dx.op.unary.f32(i32 23, float %9236)  ; Log(value)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9232, 3
  %9239 = fmul fast float %9238, %9237
  %9240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9241 = extractvalue %dx.types.CBufRet.f32 %9240, 2
  %9242 = fmul fast float %9239, %9241
  %9243 = call float @dx.op.unary.f32(i32 7, float %9242)  ; Saturate(value)
  %9244 = uitofp i32 %9222 to float
  %9245 = uitofp i32 %9225 to float
  %9246 = fadd fast float %9244, 5.000000e-01
  %9247 = fadd fast float %9245, 5.000000e-01
  %9248 = fmul fast float %9241, %9246
  %9249 = fmul fast float %9241, %9247
  %9250 = fadd fast float %9248, 0x3F0FFB4800000000
  %9251 = fadd fast float %9249, 0xBF0FFB4800000000
  %9252 = call float @dx.op.binary.f32(i32 35, float %9243, float %9250)  ; FMax(a,b)
  %9253 = call float @dx.op.binary.f32(i32 36, float %9252, float %9251)  ; FMin(a,b)
  %9254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9255 = extractvalue %dx.types.CBufRet.f32 %9254, 1
  %9256 = extractvalue %dx.types.CBufRet.f32 %9254, 2
  %9257 = extractvalue %dx.types.CBufRet.f32 %9254, 0
  %9258 = fmul fast float %9255, %9253
  %9259 = fadd fast float %9257, %9258
  %9260 = fadd fast float %9257, %9256
  %9261 = fsub fast float %9255, %9256
  %9262 = fadd fast float %9261, %9257
  %9263 = call float @dx.op.binary.f32(i32 35, float %9259, float %9260)  ; FMax(a,b)
  %9264 = call float @dx.op.binary.f32(i32 36, float %9263, float %9262)  ; FMin(a,b)
  %9265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9202, float %9203, float %9264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9266 = extractvalue %dx.types.ResRet.f32 %9265, 0
  %9267 = extractvalue %dx.types.ResRet.f32 %9265, 1
  %9268 = extractvalue %dx.types.ResRet.f32 %9265, 2
  %9269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.i32 %9269, 0
  %9271 = extractvalue %dx.types.CBufRet.i32 %9269, 1
  %9272 = uitofp i32 %9270 to float
  %9273 = uitofp i32 %9271 to float
  %9274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.CBufRet.f32 %9274, 1
  %9277 = fmul fast float %9272, %9202
  %9278 = fmul fast float %9273, %9203
  %9279 = fadd fast float %9277, -5.000000e-01
  %9280 = fadd fast float %9278, -5.000000e-01
  %9281 = call float @dx.op.unary.f32(i32 22, float %9279)  ; Frc(value)
  %9282 = call float @dx.op.unary.f32(i32 22, float %9280)  ; Frc(value)
  %9283 = fmul fast float %9281, %9281
  %9284 = fmul fast float %9283, %9281
  %9285 = fsub fast float 3.000000e+00, %9281
  %9286 = fmul fast float %9283, %9285
  %9287 = fmul fast float %9281, 3.000000e+00
  %9288 = fmul fast float %9284, 3.000000e+00
  %9289 = fmul fast float %9283, 6.000000e+00
  %9290 = fsub fast float %9288, %9289
  %9291 = fadd fast float %9290, 4.000000e+00
  %9292 = fmul fast float %9291, 0x3FC5555560000000
  %9293 = fmul fast float %9284, -3.000000e+00
  %9294 = fadd fast float %9283, %9281
  %9295 = fmul fast float %9294, 3.000000e+00
  %9296 = fadd fast float %9293, 1.000000e+00
  %9297 = fadd fast float %9296, %9295
  %9298 = fmul fast float %9284, 0x3FC5555560000000
  %9299 = fmul fast float %9282, %9282
  %9300 = fmul fast float %9299, %9282
  %9301 = fsub fast float 3.000000e+00, %9282
  %9302 = fmul fast float %9299, %9301
  %9303 = fmul fast float %9282, 3.000000e+00
  %9304 = fmul fast float %9300, 3.000000e+00
  %9305 = fmul fast float %9299, 6.000000e+00
  %9306 = fsub fast float %9304, %9305
  %9307 = fadd fast float %9306, 4.000000e+00
  %9308 = fmul fast float %9307, 0x3FC5555560000000
  %9309 = fmul fast float %9300, -3.000000e+00
  %9310 = fadd fast float %9299, %9282
  %9311 = fmul fast float %9310, 3.000000e+00
  %9312 = fadd fast float %9309, 1.000000e+00
  %9313 = fadd fast float %9312, %9311
  %9314 = fmul fast float %9300, 0x3FC5555560000000
  %9315 = fadd fast float %9281, 1.000000e+00
  %9316 = fsub fast float 1.000000e+00, %9287
  %9317 = fadd fast float %9316, %9286
  %9318 = fadd fast float %9317, %9291
  %9319 = fmul fast float %9318, 0x3FC5555560000000
  %9320 = fdiv fast float %9292, %9319
  %9321 = fsub fast float %9315, %9320
  %9322 = fsub fast float 1.000000e+00, %9281
  %9323 = fadd fast float %9297, %9284
  %9324 = fmul fast float %9323, 0x3FC5555560000000
  %9325 = fdiv fast float %9298, %9324
  %9326 = fadd fast float %9322, %9325
  %9327 = fadd fast float %9282, 1.000000e+00
  %9328 = fsub fast float 1.000000e+00, %9303
  %9329 = fadd fast float %9328, %9302
  %9330 = fadd fast float %9329, %9307
  %9331 = fmul fast float %9330, 0x3FC5555560000000
  %9332 = fdiv fast float %9308, %9331
  %9333 = fsub fast float %9327, %9332
  %9334 = fsub fast float 1.000000e+00, %9282
  %9335 = fadd fast float %9313, %9300
  %9336 = fmul fast float %9335, 0x3FC5555560000000
  %9337 = fdiv fast float %9314, %9336
  %9338 = fadd fast float %9337, %9334
  %9339 = fmul fast float %9321, %9275
  %9340 = fsub fast float %9202, %9339
  %9341 = fmul fast float %9326, %9275
  %9342 = fadd fast float %9341, %9202
  %9343 = fmul fast float %9338, %9276
  %9344 = fadd fast float %9343, %9203
  %9345 = fmul fast float %9333, %9276
  %9346 = fsub fast float %9203, %9345
  %9347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9340, float %9346, float %9264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9348 = extractvalue %dx.types.ResRet.f32 %9347, 0
  %9349 = extractvalue %dx.types.ResRet.f32 %9347, 1
  %9350 = extractvalue %dx.types.ResRet.f32 %9347, 2
  %9351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9342, float %9346, float %9264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9352 = extractvalue %dx.types.ResRet.f32 %9351, 0
  %9353 = extractvalue %dx.types.ResRet.f32 %9351, 1
  %9354 = extractvalue %dx.types.ResRet.f32 %9351, 2
  %9355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9340, float %9344, float %9264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9356 = extractvalue %dx.types.ResRet.f32 %9355, 0
  %9357 = extractvalue %dx.types.ResRet.f32 %9355, 1
  %9358 = extractvalue %dx.types.ResRet.f32 %9355, 2
  %9359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9342, float %9344, float %9264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9360 = extractvalue %dx.types.ResRet.f32 %9359, 0
  %9361 = extractvalue %dx.types.ResRet.f32 %9359, 1
  %9362 = extractvalue %dx.types.ResRet.f32 %9359, 2
  %9363 = fsub fast float %9356, %9348
  %9364 = fsub fast float %9357, %9349
  %9365 = fsub fast float %9358, %9350
  %9366 = fmul fast float %9363, %9336
  %9367 = fmul fast float %9364, %9336
  %9368 = fmul fast float %9365, %9336
  %9369 = fadd fast float %9366, %9348
  %9370 = fadd fast float %9367, %9349
  %9371 = fadd fast float %9368, %9350
  %9372 = fsub fast float %9360, %9352
  %9373 = fsub fast float %9361, %9353
  %9374 = fsub fast float %9362, %9354
  %9375 = fmul fast float %9372, %9336
  %9376 = fmul fast float %9373, %9336
  %9377 = fmul fast float %9374, %9336
  %9378 = fsub fast float %9352, %9369
  %9379 = fadd fast float %9378, %9375
  %9380 = fsub fast float %9353, %9370
  %9381 = fadd fast float %9380, %9376
  %9382 = fsub fast float %9354, %9371
  %9383 = fadd fast float %9382, %9377
  %9384 = fmul fast float %9379, %9324
  %9385 = fmul fast float %9381, %9324
  %9386 = fmul fast float %9383, %9324
  %9387 = fadd fast float %9384, %9369
  %9388 = fadd fast float %9385, %9370
  %9389 = fadd fast float %9386, %9371
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9392 = fmul fast float %9387, %9391
  %9393 = fmul fast float %9388, %9391
  %9394 = fmul fast float %9389, %9391
  br label %9395

; <label>:9395                                    ; preds = %9227, %9196
  %9396 = phi float [ %9266, %9227 ], [ 1.000000e+00, %9196 ]
  %9397 = phi float [ %9267, %9227 ], [ 1.000000e+00, %9196 ]
  %9398 = phi float [ %9268, %9227 ], [ 1.000000e+00, %9196 ]
  %9399 = phi float [ %9392, %9227 ], [ 0.000000e+00, %9196 ]
  %9400 = phi float [ %9393, %9227 ], [ 0.000000e+00, %9196 ]
  %9401 = phi float [ %9394, %9227 ], [ 0.000000e+00, %9196 ]
  %9402 = fmul fast float %9399, %9173
  %9403 = fmul fast float %9400, %9173
  %9404 = fmul fast float %9401, %9173
  %9405 = call float @dx.op.dot3.f32(i32 55, float %9396, float %9397, float %9398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9406 = call float @dx.op.dot3.f32(i32 55, float %9402, float %9403, float %9404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9407 = select i1 %232, float %9405, float %9396
  %9408 = select i1 %232, float %9405, float %9397
  %9409 = select i1 %232, float 1.000000e+00, float %9398
  %9410 = select i1 %232, float %9406, float %9402
  %9411 = select i1 %232, float 0.000000e+00, float %9403
  %9412 = select i1 %232, float 0.000000e+00, float %9404
  %9413 = fmul fast float %9407, %9186
  %9414 = fmul fast float %9408, %9187
  %9415 = fmul fast float %9409, %9188
  %9416 = fadd fast float %9413, %9410
  %9417 = fadd fast float %9414, %9411
  %9418 = fadd fast float %9412, %9415
  %9419 = fmul fast float %9407, %9160
  %9420 = fmul fast float %9408, %9161
  %9421 = fmul fast float %9409, %9162
  %9422 = fmul fast float %140, %9198
  %9423 = fmul fast float %142, %9199
  %9424 = fsub fast float 1.000000e+00, %9422
  %9425 = fsub fast float 1.000000e+00, %9423
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 0
  %9428 = extractvalue %dx.types.CBufRet.f32 %9426, 1
  %9429 = extractvalue %dx.types.CBufRet.f32 %9426, 2
  %9430 = fmul fast float %9424, %9427
  %9431 = fmul fast float %9424, %9428
  %9432 = fmul fast float %9424, %9429
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9436 = extractvalue %dx.types.CBufRet.f32 %9433, 2
  %9437 = fmul fast float %9425, %9434
  %9438 = fmul fast float %9425, %9435
  %9439 = fmul fast float %9425, %9436
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 0
  %9442 = extractvalue %dx.types.CBufRet.f32 %9440, 1
  %9443 = extractvalue %dx.types.CBufRet.f32 %9440, 2
  %9444 = fadd fast float %9437, %9441
  %9445 = fadd fast float %9444, %9430
  %9446 = fadd fast float %9438, %9442
  %9447 = fadd fast float %9446, %9431
  %9448 = fadd fast float %9439, %9443
  %9449 = fadd fast float %9448, %9432
  %9450 = fmul fast float %9445, %192
  %9451 = fmul fast float %9447, %192
  %9452 = fmul fast float %9449, %192
  br label %9453

; <label>:9453                                    ; preds = %9395, %9159
  %9454 = phi float [ %9450, %9395 ], [ %170, %9159 ]
  %9455 = phi float [ %9451, %9395 ], [ %171, %9159 ]
  %9456 = phi float [ %9452, %9395 ], [ %172, %9159 ]
  %9457 = phi float [ %192, %9395 ], [ %99, %9159 ]
  %9458 = phi float [ %9416, %9395 ], [ %9186, %9159 ]
  %9459 = phi float [ %9417, %9395 ], [ %9187, %9159 ]
  %9460 = phi float [ %9418, %9395 ], [ %9188, %9159 ]
  %9461 = phi float [ %9419, %9395 ], [ %9160, %9159 ]
  %9462 = phi float [ %9420, %9395 ], [ %9161, %9159 ]
  %9463 = phi float [ %9421, %9395 ], [ %9162, %9159 ]
  %9464 = phi float [ %9396, %9395 ], [ 1.000000e+00, %9159 ]
  br i1 %9195, label %10619, label %9465

; <label>:9465                                    ; preds = %9453
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.CBufRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.CBufRet.f32 %9466, 2
  %9470 = extractvalue %dx.types.CBufRet.f32 %9466, 3
  %9471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9472 = extractvalue %dx.types.CBufRet.f32 %9471, 0
  %9473 = extractvalue %dx.types.CBufRet.f32 %9471, 1
  %9474 = extractvalue %dx.types.CBufRet.f32 %9471, 2
  %9475 = extractvalue %dx.types.CBufRet.f32 %9471, 3
  %9476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.f32 %9476, 0
  %9478 = extractvalue %dx.types.CBufRet.f32 %9476, 1
  %9479 = extractvalue %dx.types.CBufRet.f32 %9476, 2
  %9480 = extractvalue %dx.types.CBufRet.f32 %9476, 3
  %9481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9482 = extractvalue %dx.types.CBufRet.f32 %9481, 0
  %9483 = extractvalue %dx.types.CBufRet.f32 %9481, 1
  %9484 = extractvalue %dx.types.CBufRet.f32 %9481, 2
  %9485 = extractvalue %dx.types.CBufRet.f32 %9481, 3
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 3
  %9488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9489 = extractvalue %dx.types.CBufRet.f32 %9488, 3
  %9490 = extractvalue %dx.types.CBufRet.f32 %9488, 0
  %9491 = extractvalue %dx.types.CBufRet.f32 %9488, 1
  %9492 = extractvalue %dx.types.CBufRet.f32 %9488, 2
  %9493 = fcmp fast olt float %9492, -5.000000e-01
  %9494 = call float @dx.op.dot3.f32(i32 55, float %9454, float %9455, float %9456, float %9454, float %9455, float %9456)  ; Dot3(ax,ay,az,bx,by,bz)
  %9495 = call float @dx.op.unary.f32(i32 25, float %9494)  ; Rsqrt(value)
  %9496 = fmul fast float %9495, %9494
  %9497 = fmul fast float %9495, %9454
  %9498 = fmul fast float %9495, %9455
  %9499 = fmul fast float %9495, %9456
  %9500 = fadd fast float %9496, %9470
  %9501 = call float @dx.op.dot3.f32(i32 55, float %9497, float %9498, float %9499, float %9467, float %9468, float %9469)  ; Dot3(ax,ay,az,bx,by,bz)
  %9502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9503 = extractvalue %dx.types.CBufRet.i32 %9502, 1
  %9504 = and i32 %9503, 1
  %9505 = icmp ne i32 %9504, 0
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9508 = fcmp fast ogt float %9507, 0.000000e+00
  %9509 = and i1 %9505, %9508
  br i1 %9509, label %9510, label %9916, !dx.controlflow.hints !135

; <label>:9510                                    ; preds = %9465
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 3
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 2
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9517 = fsub fast float %9514, %9516
  %9518 = and i32 %9503, 2
  %9519 = extractvalue %dx.types.CBufRet.i32 %9502, 0
  %9520 = call i32 @dx.op.binary.i32(i32 40, i32 %9519, i32 3)  ; UMin(a,b)
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.CBufRet.f32 %9521, 1
  %9524 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9525 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9526 = fsub fast float %9522, %9524
  %9527 = fsub fast float %9523, %9525
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = fcmp fast ogt float %9529, 0.000000e+00
  %9531 = fsub fast float -0.000000e+00, %9526
  %9532 = fsub fast float -0.000000e+00, %9527
  %9533 = call float @dx.op.dot2.f32(i32 54, float %9497, float %9498, float %9497, float %9498)  ; Dot2(ax,ay,bx,by)
  %9534 = call float @dx.op.dot2.f32(i32 54, float %9497, float %9498, float %9531, float %9532)  ; Dot2(ax,ay,bx,by)
  %9535 = fmul fast float %9534, 2.000000e+00
  %9536 = call float @dx.op.dot2.f32(i32 54, float %9531, float %9532, float %9531, float %9532)  ; Dot2(ax,ay,bx,by)
  %9537 = fmul fast float %9529, %9529
  %9538 = fsub fast float %9536, %9537
  %9539 = fmul fast float %9535, %9535
  %9540 = fmul fast float %9533, 4.000000e+00
  %9541 = fmul fast float %9540, %9538
  %9542 = fsub fast float %9539, %9541
  %9543 = fcmp fast ogt float %9542, 0.000000e+00
  br i1 %9543, label %9544, label %9559

; <label>:9544                                    ; preds = %9510
  %9545 = fcmp fast ogt float %9535, 0.000000e+00
  %9546 = call float @dx.op.unary.f32(i32 24, float %9542)  ; Sqrt(value)
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = select i1 %9545, float %9546, float %9547
  %9549 = fadd fast float %9548, %9535
  %9550 = fmul float %9549, -5.000000e-01
  %9551 = fdiv fast float %9550, %9533
  %9552 = call float @dx.op.binary.f32(i32 35, float %9551, float 0.000000e+00)  ; FMax(a,b)
  %9553 = call float @dx.op.binary.f32(i32 36, float %9496, float %9552)  ; FMin(a,b)
  %9554 = fdiv fast float %9538, %9550
  %9555 = call float @dx.op.binary.f32(i32 35, float %9554, float 0.000000e+00)  ; FMax(a,b)
  %9556 = call float @dx.op.binary.f32(i32 36, float %9496, float %9555)  ; FMin(a,b)
  %9557 = call float @dx.op.binary.f32(i32 36, float %9553, float %9556)  ; FMin(a,b)
  %9558 = call float @dx.op.binary.f32(i32 35, float %9553, float %9556)  ; FMax(a,b)
  br label %9559

; <label>:9559                                    ; preds = %9544, %9510
  %9560 = phi float [ %9558, %9544 ], [ -1.000000e+00, %9510 ]
  %9561 = phi float [ %9557, %9544 ], [ -1.000000e+00, %9510 ]
  %9562 = phi i1 [ true, %9544 ], [ false, %9510 ]
  %9563 = and i1 %9530, %9562
  br i1 %9563, label %9564, label %9566

; <label>:9564                                    ; preds = %9559
  %9565 = fcmp fast oeq float %9561, %9560
  br i1 %9565, label %9869, label %9567

; <label>:9566                                    ; preds = %9559
  br i1 %9530, label %9869, label %9567

; <label>:9567                                    ; preds = %9566, %9564
  %9568 = phi float [ %9496, %9566 ], [ %9560, %9564 ]
  %9569 = phi float [ 0.000000e+00, %9566 ], [ %9561, %9564 ]
  %9570 = icmp ne i32 %9518, 0
  %9571 = fmul fast float %9568, %9499
  %9572 = fadd fast float %9571, %9512
  %9573 = fmul fast float %9572, %9568
  %9574 = select i1 %9570, float 0.000000e+00, float %9573
  %9575 = fcmp fast oeq float %9499, 0.000000e+00
  %9576 = fdiv fast float %9517, %9499
  %9577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9576)  ; FMax(a,b)
  %9578 = select i1 %9575, float %9568, float %9577
  %9579 = call float @dx.op.binary.f32(i32 36, float %9568, float %9578)  ; FMin(a,b)
  %9580 = fcmp fast ogt float %9499, 0.000000e+00
  %9581 = fcmp fast olt float %9517, 0.000000e+00
  br i1 %9580, label %9582, label %9639

; <label>:9582                                    ; preds = %9567
  %9583 = icmp eq i32 %9518, 0
  br i1 %9581, label %9584, label %9628

; <label>:9584                                    ; preds = %9582
  %9585 = select i1 %9583, float %9568, float 0.000000e+00
  %9586 = fsub fast float -0.000000e+00, %9585
  %9587 = call float @dx.op.unary.f32(i32 6, float %9586)  ; FAbs(value)
  %9588 = fmul fast float %9585, %9499
  %9589 = fadd fast float %9588, %9512
  %9590 = fmul fast float %9587, %9589
  %9591 = fsub fast float %9574, %9590
  %9592 = fsub fast float %9568, %9587
  %9593 = select i1 %9583, float %9592, float 0.000000e+00
  %9594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9595 = extractvalue %dx.types.CBufRet.f32 %9594, 0
  %9596 = extractvalue %dx.types.CBufRet.f32 %9594, 1
  %9597 = extractvalue %dx.types.CBufRet.f32 %9594, 2
  %9598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9599 = extractvalue %dx.types.CBufRet.f32 %9598, 0
  %9600 = extractvalue %dx.types.CBufRet.f32 %9598, 1
  %9601 = extractvalue %dx.types.CBufRet.f32 %9598, 2
  %9602 = extractvalue %dx.types.CBufRet.f32 %9598, 3
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 3
  %9605 = call float @dx.op.binary.f32(i32 36, float %9591, float %9604)  ; FMin(a,b)
  %9606 = fmul fast float %9602, %9593
  %9607 = call float @dx.op.unary.f32(i32 7, float %9606)  ; Saturate(value)
  %9608 = fsub fast float %9599, %9595
  %9609 = fsub fast float %9600, %9596
  %9610 = fsub fast float %9601, %9597
  %9611 = fmul fast float %9607, %9608
  %9612 = fmul fast float %9607, %9609
  %9613 = fmul fast float %9607, %9610
  %9614 = fadd fast float %9611, %9595
  %9615 = fadd fast float %9612, %9596
  %9616 = fadd fast float %9613, %9597
  %9617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9618 = extractvalue %dx.types.CBufRet.f32 %9617, 0
  %9619 = extractvalue %dx.types.CBufRet.f32 %9617, 1
  %9620 = fadd fast float %9619, %9618
  %9621 = call float @dx.op.unary.f32(i32 7, float %9620)  ; Saturate(value)
  %9622 = extractvalue %dx.types.CBufRet.f32 %9617, 2
  %9623 = extractvalue %dx.types.CBufRet.f32 %9617, 3
  %9624 = fadd fast float %9623, %9622
  %9625 = call float @dx.op.unary.f32(i32 7, float %9624)  ; Saturate(value)
  %9626 = fmul fast float %9621, %9605
  %9627 = fmul fast float %9626, %9625
  br label %9869

; <label>:9628                                    ; preds = %9582
  br i1 %9583, label %9629, label %9650

; <label>:9629                                    ; preds = %9628
  %9630 = call float @dx.op.binary.f32(i32 36, float %9579, float %9569)  ; FMin(a,b)
  %9631 = fsub fast float %9579, %9630
  %9632 = fsub fast float %9631, %9568
  %9633 = call float @dx.op.unary.f32(i32 6, float %9632)  ; FAbs(value)
  %9634 = fadd fast float %9631, %9568
  %9635 = fmul fast float %9634, %9499
  %9636 = fadd fast float %9635, %9512
  %9637 = fmul fast float %9636, %9633
  %9638 = fsub fast float %9574, %9637
  br label %9650

; <label>:9639                                    ; preds = %9567
  br i1 %9581, label %9640, label %9650

; <label>:9640                                    ; preds = %9639
  %9641 = call float @dx.op.binary.f32(i32 35, float %9569, float %9579)  ; FMax(a,b)
  %9642 = icmp eq i32 %9518, 0
  %9643 = select i1 %9642, float %9579, float 0.000000e+00
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = call float @dx.op.unary.f32(i32 6, float %9644)  ; FAbs(value)
  %9646 = fmul fast float %9643, %9499
  %9647 = fadd fast float %9646, %9512
  %9648 = fmul fast float %9645, %9647
  %9649 = fsub fast float %9574, %9648
  br label %9650

; <label>:9650                                    ; preds = %9640, %9639, %9629, %9628
  %9651 = phi float [ %9569, %9628 ], [ %9569, %9629 ], [ %9641, %9640 ], [ %9569, %9639 ]
  %9652 = phi float [ 0.000000e+00, %9628 ], [ %9633, %9629 ], [ %9645, %9640 ], [ 0.000000e+00, %9639 ]
  %9653 = phi float [ %9574, %9628 ], [ %9638, %9629 ], [ %9649, %9640 ], [ %9574, %9639 ]
  %9654 = phi float [ %9579, %9628 ], [ %9579, %9629 ], [ %9568, %9640 ], [ %9568, %9639 ]
  %9655 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9655, align 4, !tbaa !122, !noalias !136
  %9656 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9656, align 4, !tbaa !122, !noalias !136
  %9657 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9657, align 4, !tbaa !122, !noalias !136
  %9658 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9658, align 4, !tbaa !122, !noalias !136
  %9659 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9659, align 4, !tbaa !122, !noalias !136
  %9660 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9660, align 4, !tbaa !122, !noalias !136
  %9661 = icmp sgt i32 %9520, 0
  br i1 %9661, label %9662, label %9723

; <label>:9662                                    ; preds = %9650
  br label %9663

; <label>:9663                                    ; preds = %9712, %9662
  %9664 = phi i32 [ %9713, %9712 ], [ 0, %9662 ]
  %9665 = phi i32 [ %9714, %9712 ], [ 0, %9662 ]
  %9666 = add nuw i32 %9665, 171
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9666)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 0
  %9669 = extractvalue %dx.types.CBufRet.f32 %9667, 1
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.CBufRet.f32 %9670, 1
  %9673 = fsub fast float %9668, %9671
  %9674 = fsub fast float %9669, %9672
  %9675 = extractvalue %dx.types.CBufRet.f32 %9667, 2
  %9676 = fsub fast float -0.000000e+00, %9673
  %9677 = fsub fast float -0.000000e+00, %9674
  %9678 = call float @dx.op.dot2.f32(i32 54, float %9497, float %9498, float %9676, float %9677)  ; Dot2(ax,ay,bx,by)
  %9679 = fmul fast float %9678, 2.000000e+00
  %9680 = call float @dx.op.dot2.f32(i32 54, float %9676, float %9677, float %9676, float %9677)  ; Dot2(ax,ay,bx,by)
  %9681 = fmul fast float %9675, %9675
  %9682 = fsub fast float %9680, %9681
  %9683 = fmul fast float %9679, %9679
  %9684 = fmul fast float %9540, %9682
  %9685 = fsub fast float %9683, %9684
  %9686 = fcmp fast ogt float %9685, 0.000000e+00
  br i1 %9686, label %9687, label %9702

; <label>:9687                                    ; preds = %9663
  %9688 = fcmp fast ogt float %9679, 0.000000e+00
  %9689 = call float @dx.op.unary.f32(i32 24, float %9685)  ; Sqrt(value)
  %9690 = fsub fast float -0.000000e+00, %9689
  %9691 = select i1 %9688, float %9689, float %9690
  %9692 = fadd fast float %9691, %9679
  %9693 = fmul float %9692, -5.000000e-01
  %9694 = fdiv fast float %9693, %9533
  %9695 = call float @dx.op.binary.f32(i32 35, float %9694, float 0.000000e+00)  ; FMax(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9568, float %9695)  ; FMin(a,b)
  %9697 = fdiv fast float %9682, %9693
  %9698 = call float @dx.op.binary.f32(i32 35, float %9697, float 0.000000e+00)  ; FMax(a,b)
  %9699 = call float @dx.op.binary.f32(i32 36, float %9568, float %9698)  ; FMin(a,b)
  %9700 = call float @dx.op.binary.f32(i32 36, float %9696, float %9699)  ; FMin(a,b)
  %9701 = call float @dx.op.binary.f32(i32 35, float %9696, float %9699)  ; FMax(a,b)
  br label %9702

; <label>:9702                                    ; preds = %9687, %9663
  %9703 = phi float [ %9701, %9687 ], [ -1.000000e+00, %9663 ]
  %9704 = phi float [ %9700, %9687 ], [ -1.000000e+00, %9663 ]
  %9705 = phi i1 [ true, %9687 ], [ false, %9663 ]
  br i1 %9705, label %9706, label %9712

; <label>:9706                                    ; preds = %9702
  %9707 = call float @dx.op.binary.f32(i32 35, float %9651, float %9704)  ; FMax(a,b)
  %9708 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9665
  store float %9707, float* %9708, align 4, !tbaa !122, !noalias !136
  %9709 = call float @dx.op.binary.f32(i32 35, float %9651, float %9703)  ; FMax(a,b)
  %9710 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9665
  store float %9709, float* %9710, align 4, !tbaa !122, !noalias !136
  %9711 = add nsw i32 %9664, 1
  br label %9712

; <label>:9712                                    ; preds = %9706, %9702
  %9713 = phi i32 [ %9711, %9706 ], [ %9664, %9702 ]
  %9714 = add nuw nsw i32 %9665, 1
  %9715 = icmp eq i32 %9714, %9520
  br i1 %9715, label %9716, label %9663

; <label>:9716                                    ; preds = %9712
  %9717 = load float, float* %9657, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9718 = load float, float* %9656, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9719 = load float, float* %9655, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9720 = load float, float* %9660, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9721 = load float, float* %9659, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9722 = load float, float* %9658, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9723

; <label>:9723                                    ; preds = %9716, %9650
  %9724 = phi float [ -1.000000e+00, %9650 ], [ %9722, %9716 ]
  %9725 = phi float [ -1.000000e+00, %9650 ], [ %9721, %9716 ]
  %9726 = phi float [ -1.000000e+00, %9650 ], [ %9720, %9716 ]
  %9727 = phi float [ -1.000000e+00, %9650 ], [ %9719, %9716 ]
  %9728 = phi float [ -1.000000e+00, %9650 ], [ %9718, %9716 ]
  %9729 = phi float [ -1.000000e+00, %9650 ], [ %9717, %9716 ]
  %9730 = phi i32 [ 0, %9650 ], [ %9713, %9716 ]
  %9731 = call float @dx.op.binary.f32(i32 36, float %9728, float %9729)  ; FMin(a,b)
  %9732 = call float @dx.op.binary.f32(i32 36, float %9727, float %9731)  ; FMin(a,b)
  %9733 = call float @dx.op.binary.f32(i32 35, float %9727, float %9728)  ; FMax(a,b)
  %9734 = call float @dx.op.binary.f32(i32 36, float %9733, float %9729)  ; FMin(a,b)
  %9735 = call float @dx.op.binary.f32(i32 36, float %9727, float %9728)  ; FMin(a,b)
  %9736 = call float @dx.op.binary.f32(i32 35, float %9735, float %9734)  ; FMax(a,b)
  %9737 = call float @dx.op.binary.f32(i32 35, float %9728, float %9729)  ; FMax(a,b)
  %9738 = call float @dx.op.binary.f32(i32 35, float %9727, float %9737)  ; FMax(a,b)
  store float %9732, float* %9655, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9736, float* %9656, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9738, float* %9657, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9739 = call float @dx.op.binary.f32(i32 36, float %9725, float %9726)  ; FMin(a,b)
  %9740 = call float @dx.op.binary.f32(i32 36, float %9724, float %9739)  ; FMin(a,b)
  %9741 = call float @dx.op.binary.f32(i32 35, float %9724, float %9725)  ; FMax(a,b)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9741, float %9726)  ; FMin(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9724, float %9725)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 35, float %9743, float %9742)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 35, float %9725, float %9726)  ; FMax(a,b)
  %9746 = call float @dx.op.binary.f32(i32 35, float %9724, float %9745)  ; FMax(a,b)
  store float %9740, float* %9658, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9744, float* %9659, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9746, float* %9660, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9747 = sub nsw i32 3, %9730
  %9748 = icmp sgt i32 %9747, 2
  br i1 %9748, label %9749, label %9787

; <label>:9749                                    ; preds = %9723
  %9750 = icmp eq i32 %9518, 0
  %9751 = fsub fast float %9568, %9652
  %9752 = select i1 %9750, float %9751, float %9652
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9758 = extractvalue %dx.types.CBufRet.f32 %9757, 0
  %9759 = extractvalue %dx.types.CBufRet.f32 %9757, 1
  %9760 = extractvalue %dx.types.CBufRet.f32 %9757, 2
  %9761 = extractvalue %dx.types.CBufRet.f32 %9757, 3
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 3
  %9764 = call float @dx.op.binary.f32(i32 36, float %9653, float %9763)  ; FMin(a,b)
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
  %9776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %9869

; <label>:9787                                    ; preds = %9723
  %9788 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9747
  %9789 = load float, float* %9788, align 4, !tbaa !122, !noalias !136
  %9790 = fcmp fast olt float %9789, %9654
  %9791 = icmp sgt i32 %9730, 0
  %9792 = and i1 %9791, %9790
  br i1 %9792, label %9793, label %9830

; <label>:9793                                    ; preds = %9787
  br label %9794

; <label>:9794                                    ; preds = %9823, %9793
  %9795 = phi float [ %9824, %9823 ], [ %9652, %9793 ]
  %9796 = phi float [ %9825, %9823 ], [ %9653, %9793 ]
  %9797 = phi float [ %9805, %9823 ], [ %9789, %9793 ]
  %9798 = phi i32 [ %9802, %9823 ], [ %9747, %9793 ]
  %9799 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9798
  %9800 = load float, float* %9799, align 4, !tbaa !122, !noalias !136
  %9801 = icmp slt i32 %9798, 2
  %9802 = add nsw i32 %9798, 1
  %9803 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9802
  %9804 = load float, float* %9803, align 4, !tbaa !122, !noalias !136
  %9805 = select i1 %9801, float %9804, float %9568
  %9806 = call float @dx.op.binary.f32(i32 36, float %9805, float %9800)  ; FMin(a,b)
  %9807 = call float @dx.op.binary.f32(i32 36, float %9654, float %9806)  ; FMin(a,b)
  %9808 = icmp eq i32 %9518, 0
  %9809 = fadd fast float %9807, %9797
  %9810 = fmul fast float %9809, %9499
  %9811 = fadd fast float %9810, %9512
  br i1 %9808, label %9817, label %9812

; <label>:9812                                    ; preds = %9794
  %9813 = fsub fast float %9807, %9797
  %9814 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9813)  ; FMax(a,b)
  %9815 = fmul fast float %9814, %9811
  %9816 = fadd fast float %9815, %9796
  br label %9823

; <label>:9817                                    ; preds = %9794
  %9818 = fsub fast float %9797, %9807
  %9819 = call float @dx.op.unary.f32(i32 6, float %9818)  ; FAbs(value)
  %9820 = fadd fast float %9819, %9795
  %9821 = fmul fast float %9819, %9811
  %9822 = fsub fast float %9796, %9821
  br label %9823

; <label>:9823                                    ; preds = %9817, %9812
  %9824 = phi float [ %9814, %9812 ], [ %9820, %9817 ]
  %9825 = phi float [ %9816, %9812 ], [ %9822, %9817 ]
  %9826 = fcmp fast olt float %9805, %9654
  %9827 = icmp slt i32 %9802, 3
  %9828 = and i1 %9827, %9826
  br i1 %9828, label %9794, label %9829

; <label>:9829                                    ; preds = %9823
  br label %9830

; <label>:9830                                    ; preds = %9829, %9787
  %9831 = phi float [ %9652, %9787 ], [ %9824, %9829 ]
  %9832 = phi float [ %9653, %9787 ], [ %9825, %9829 ]
  %9833 = fsub fast float %9568, %9831
  %9834 = select i1 %9570, float %9831, float %9833
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.CBufRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.CBufRet.f32 %9835, 2
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 0
  %9841 = extractvalue %dx.types.CBufRet.f32 %9839, 1
  %9842 = extractvalue %dx.types.CBufRet.f32 %9839, 2
  %9843 = extractvalue %dx.types.CBufRet.f32 %9839, 3
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 3
  %9846 = call float @dx.op.binary.f32(i32 36, float %9832, float %9845)  ; FMin(a,b)
  %9847 = fmul fast float %9843, %9834
  %9848 = call float @dx.op.unary.f32(i32 7, float %9847)  ; Saturate(value)
  %9849 = fsub fast float %9840, %9836
  %9850 = fsub fast float %9841, %9837
  %9851 = fsub fast float %9842, %9838
  %9852 = fmul fast float %9848, %9849
  %9853 = fmul fast float %9848, %9850
  %9854 = fmul fast float %9848, %9851
  %9855 = fadd fast float %9852, %9836
  %9856 = fadd fast float %9853, %9837
  %9857 = fadd fast float %9854, %9838
  %9858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9859 = extractvalue %dx.types.CBufRet.f32 %9858, 0
  %9860 = extractvalue %dx.types.CBufRet.f32 %9858, 1
  %9861 = fadd fast float %9860, %9859
  %9862 = call float @dx.op.unary.f32(i32 7, float %9861)  ; Saturate(value)
  %9863 = extractvalue %dx.types.CBufRet.f32 %9858, 2
  %9864 = extractvalue %dx.types.CBufRet.f32 %9858, 3
  %9865 = fadd fast float %9864, %9863
  %9866 = call float @dx.op.unary.f32(i32 7, float %9865)  ; Saturate(value)
  %9867 = fmul fast float %9862, %9846
  %9868 = fmul fast float %9867, %9866
  br label %9869

; <label>:9869                                    ; preds = %9830, %9749, %9584, %9566, %9564
  %9870 = phi float [ %9593, %9584 ], [ %9752, %9749 ], [ %9834, %9830 ], [ 0.000000e+00, %9564 ], [ 0.000000e+00, %9566 ]
  %9871 = phi float [ %9627, %9584 ], [ %9786, %9749 ], [ %9868, %9830 ], [ 0.000000e+00, %9564 ], [ 0.000000e+00, %9566 ]
  %9872 = phi float [ %9614, %9584 ], [ %9773, %9749 ], [ %9855, %9830 ], [ 0.000000e+00, %9564 ], [ 0.000000e+00, %9566 ]
  %9873 = phi float [ %9615, %9584 ], [ %9774, %9749 ], [ %9856, %9830 ], [ 0.000000e+00, %9564 ], [ 0.000000e+00, %9566 ]
  %9874 = phi float [ %9616, %9584 ], [ %9775, %9749 ], [ %9857, %9830 ], [ 0.000000e+00, %9564 ], [ 0.000000e+00, %9566 ]
  %9875 = fmul fast float %9507, %9871
  %9876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.f32 %9876, 2
  %9878 = fsub fast float %9514, %9877
  %9879 = fcmp fast olt float %9875, -2.000000e+01
  %9880 = call float @dx.op.unary.f32(i32 21, float %9875)  ; Exp(value)
  %9881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.f32 %9881, 2
  %9883 = extractvalue %dx.types.CBufRet.f32 %9881, 3
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 2
  %9886 = fmul fast float %9883, %9878
  %9887 = call float @dx.op.unary.f32(i32 7, float %9886)  ; Saturate(value)
  %9888 = fsub fast float 1.000000e+00, %9887
  %9889 = fmul fast float %9499, 5.000000e-01
  %9890 = fadd fast float %9889, 5.000000e-01
  %9891 = call float @dx.op.unary.f32(i32 7, float %9890)  ; Saturate(value)
  %9892 = fsub fast float 1.000000e+00, %9891
  %9893 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9888)  ; FMax(a,b)
  %9894 = fdiv fast float %9892, %9893
  %9895 = fsub fast float %9878, %9456
  %9896 = call float @dx.op.unary.f32(i32 6, float %9895)  ; FAbs(value)
  %9897 = fmul fast float %9896, %9882
  %9898 = call float @dx.op.unary.f32(i32 7, float %9894)  ; Saturate(value)
  %9899 = fsub fast float 1.000000e+00, %9897
  %9900 = fmul fast float %9899, %9898
  %9901 = fadd fast float %9900, %9897
  %9902 = fmul fast float %9885, %9878
  %9903 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9904 = fsub fast float 1.000000e+00, %9901
  %9905 = fmul fast float %9904, %9903
  %9906 = fadd fast float %9905, %9901
  %9907 = call float @dx.op.unary.f32(i32 7, float %9906)  ; Saturate(value)
  %9908 = fadd fast float %9880, -1.000000e+00
  %9909 = select i1 %9879, float -1.000000e+00, float %9908
  %9910 = fmul fast float %9907, %9909
  %9911 = fadd fast float %9910, 1.000000e+00
  %9912 = fsub fast float -0.000000e+00, %9910
  %9913 = fmul fast float %9872, %9912
  %9914 = fmul fast float %9873, %9912
  %9915 = fmul fast float %9874, %9912
  br label %9916

; <label>:9916                                    ; preds = %9869, %9465
  %9917 = phi float [ %9870, %9869 ], [ 0.000000e+00, %9465 ]
  %9918 = phi float [ %9911, %9869 ], [ 1.000000e+00, %9465 ]
  %9919 = phi float [ %9913, %9869 ], [ 0.000000e+00, %9465 ]
  %9920 = phi float [ %9914, %9869 ], [ 0.000000e+00, %9465 ]
  %9921 = phi float [ %9915, %9869 ], [ 0.000000e+00, %9465 ]
  %9922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9923 = extractvalue %dx.types.CBufRet.f32 %9922, 1
  %9924 = fsub fast float 1.000000e+00, %9918
  %9925 = fmul fast float %9924, %9500
  %9926 = fmul fast float %9925, %9923
  %9927 = fsub fast float %9500, %9926
  br i1 %9493, label %9928, label %9957, !dx.controlflow.hints !172

; <label>:9928                                    ; preds = %9916
  %9929 = fmul fast float %9501, %9490
  %9930 = fadd fast float %9929, %9491
  %9931 = call float @dx.op.unary.f32(i32 7, float %9930)  ; Saturate(value)
  %9932 = fmul fast float %9472, %9927
  %9933 = fsub fast float -0.000000e+00, %9932
  %9934 = fmul fast float %9473, %9927
  %9935 = fsub fast float -0.000000e+00, %9934
  %9936 = call float @dx.op.unary.f32(i32 21, float %9933)  ; Exp(value)
  %9937 = call float @dx.op.unary.f32(i32 21, float %9935)  ; Exp(value)
  %9938 = call float @dx.op.binary.f32(i32 35, float %9480, float %9936)  ; FMax(a,b)
  %9939 = call float @dx.op.binary.f32(i32 35, float %9480, float %9937)  ; FMax(a,b)
  %9940 = fsub fast float %9939, %9938
  %9941 = fmul fast float %9940, %9931
  %9942 = fadd fast float %9941, %9938
  %9943 = call float @dx.op.unary.f32(i32 7, float %9942)  ; Saturate(value)
  %9944 = fsub fast float %9477, %9482
  %9945 = fsub fast float %9478, %9483
  %9946 = fsub fast float %9479, %9484
  %9947 = fmul fast float %9931, %9944
  %9948 = fmul fast float %9931, %9945
  %9949 = fmul fast float %9931, %9946
  %9950 = fadd fast float %9947, %9482
  %9951 = fadd fast float %9948, %9483
  %9952 = fadd fast float %9949, %9484
  %9953 = fsub fast float 1.000000e+00, %9943
  %9954 = fmul fast float %9953, %9950
  %9955 = fmul fast float %9953, %9951
  %9956 = fmul fast float %9953, %9952
  br label %10016

; <label>:9957                                    ; preds = %9916
  %9958 = fmul fast float %9927, %9489
  %9959 = call float @dx.op.unary.f32(i32 7, float %9958)  ; Saturate(value)
  %9960 = fsub fast float 2.000000e+00, %9959
  %9961 = fmul fast float %9959, 9.921875e-01
  %9962 = fmul fast float %9961, %9960
  %9963 = fadd fast float %9962, 3.906250e-03
  %9964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9963, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9965 = extractvalue %dx.types.ResRet.f32 %9964, 0
  %9966 = fsub fast float %9959, %9965
  %9967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9966)  ; FMax(a,b)
  %9968 = fmul fast float %9475, %9456
  %9969 = call float @dx.op.unary.f32(i32 6, float %9968)  ; FAbs(value)
  %9970 = fcmp fast ogt float %9969, 0x3EB0C6F7A0000000
  br i1 %9970, label %9971, label %9977, !dx.controlflow.hints !173

; <label>:9971                                    ; preds = %9957
  %9972 = fmul fast float %9968, 0xBFF7154760000000
  %9973 = call float @dx.op.unary.f32(i32 21, float %9972)  ; Exp(value)
  %9974 = fsub fast float 1.000000e+00, %9973
  %9975 = fdiv fast float %9974, %9968
  %9976 = fmul fast float %9975, %9485
  br label %9977

; <label>:9977                                    ; preds = %9971, %9957
  %9978 = phi float [ %9976, %9971 ], [ %9485, %9957 ]
  %9979 = fadd fast float %9978, %9487
  %9980 = fmul fast float %9979, %9967
  %9981 = fmul fast float %9472, %9980
  %9982 = fsub fast float -0.000000e+00, %9981
  %9983 = fmul fast float %9473, %9980
  %9984 = fsub fast float -0.000000e+00, %9983
  %9985 = fmul fast float %9474, %9980
  %9986 = fsub fast float -0.000000e+00, %9985
  %9987 = call float @dx.op.unary.f32(i32 21, float %9982)  ; Exp(value)
  %9988 = call float @dx.op.unary.f32(i32 21, float %9984)  ; Exp(value)
  %9989 = call float @dx.op.unary.f32(i32 21, float %9986)  ; Exp(value)
  %9990 = fmul fast float %9501, %9501
  %9991 = fadd fast float %9990, 1.000000e+00
  %9992 = fmul fast float %9991, 0x3FAE8EC8A0000000
  %9993 = fmul fast float %9992, %9482
  %9994 = fmul fast float %9992, %9483
  %9995 = fmul fast float %9992, %9484
  %9996 = fmul fast float %9501, %9480
  %9997 = fsub fast float 1.000000e+00, %9996
  %9998 = fmul fast float %9480, %9480
  %9999 = fsub fast float 1.000000e+00, %9998
  %10000 = fmul fast float %9999, 0x3FB45F3060000000
  %10001 = fmul fast float %9997, %9997
  %10002 = fdiv fast float 1.000000e+00, %10001
  %10003 = fmul fast float %10000, %10002
  %10004 = fmul fast float %10003, %9477
  %10005 = fmul fast float %10003, %9478
  %10006 = fmul fast float %10003, %9479
  %10007 = fadd fast float %10004, %9993
  %10008 = fadd fast float %10005, %9994
  %10009 = fadd fast float %10006, %9995
  %10010 = fsub fast float 1.000000e+00, %9987
  %10011 = fsub fast float 1.000000e+00, %9988
  %10012 = fsub fast float 1.000000e+00, %9989
  %10013 = fmul fast float %10007, %10010
  %10014 = fmul fast float %10008, %10011
  %10015 = fmul fast float %10009, %10012
  br label %10016

; <label>:10016                                   ; preds = %9977, %9928
  %10017 = phi float [ %9954, %9928 ], [ %10013, %9977 ]
  %10018 = phi float [ %9955, %9928 ], [ %10014, %9977 ]
  %10019 = phi float [ %9956, %9928 ], [ %10015, %9977 ]
  %10020 = phi float [ %9943, %9928 ], [ %9987, %9977 ]
  %10021 = phi float [ %9943, %9928 ], [ %9988, %9977 ]
  %10022 = phi float [ %9943, %9928 ], [ %9989, %9977 ]
  br i1 %9509, label %10023, label %10221, !dx.controlflow.hints !174

; <label>:10023                                   ; preds = %10016
  %10024 = extractvalue %dx.types.CBufRet.f32 %9922, 0
  %10025 = fmul fast float %10024, %9924
  %10026 = fsub fast float %9919, %10017
  %10027 = fsub fast float %9920, %10018
  %10028 = fsub fast float %9921, %10019
  %10029 = fmul fast float %10025, %10026
  %10030 = fmul fast float %10025, %10027
  %10031 = fmul fast float %10025, %10028
  %10032 = fadd fast float %10029, %10017
  %10033 = fadd fast float %10030, %10018
  %10034 = fadd fast float %10031, %10019
  %10035 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10020)  ; FMax(a,b)
  %10036 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10021)  ; FMax(a,b)
  %10037 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10022)  ; FMax(a,b)
  %10038 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9918)  ; FMax(a,b)
  %10039 = call float @dx.op.binary.f32(i32 35, float %9917, float %9927)  ; FMax(a,b)
  %10040 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10039)  ; FMax(a,b)
  %10041 = fdiv fast float %9917, %10040
  %10042 = call float @dx.op.unary.f32(i32 7, float %10041)  ; Saturate(value)
  %10043 = fdiv fast float %9927, %10040
  %10044 = call float @dx.op.unary.f32(i32 7, float %10043)  ; Saturate(value)
  %10045 = fcmp fast une float %10038, 1.000000e+00
  br i1 %10045, label %10046, label %10059, !dx.controlflow.hints !175

; <label>:10046                                   ; preds = %10023
  %10047 = call float @dx.op.unary.f32(i32 23, float %10038)  ; Log(value)
  %10048 = fmul fast float %10047, 0x3FE62E4300000000
  %10049 = fmul fast float %9919, %10048
  %10050 = fsub fast float -0.000000e+00, %10049
  %10051 = fmul fast float %9920, %10048
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fmul fast float %9921, %10048
  %10054 = fsub fast float -0.000000e+00, %10053
  %10055 = fsub fast float 1.000000e+00, %10038
  %10056 = fdiv fast float %10050, %10055
  %10057 = fdiv fast float %10052, %10055
  %10058 = fdiv fast float %10054, %10055
  br label %10059

; <label>:10059                                   ; preds = %10046, %10023
  %10060 = phi float [ %10056, %10046 ], [ %9919, %10023 ]
  %10061 = phi float [ %10057, %10046 ], [ %9920, %10023 ]
  %10062 = phi float [ %10058, %10046 ], [ %9921, %10023 ]
  %10063 = phi float [ %10048, %10046 ], [ 0.000000e+00, %10023 ]
  %10064 = fcmp fast une float %10035, 1.000000e+00
  br i1 %10064, label %10065, label %10072, !dx.controlflow.hints !176

; <label>:10065                                   ; preds = %10059
  %10066 = call float @dx.op.unary.f32(i32 23, float %10035)  ; Log(value)
  %10067 = fmul fast float %10066, 0x3FE62E4300000000
  %10068 = fmul fast float %10032, %10067
  %10069 = fsub fast float -0.000000e+00, %10068
  %10070 = fsub fast float 1.000000e+00, %10035
  %10071 = fdiv fast float %10069, %10070
  br label %10072

; <label>:10072                                   ; preds = %10065, %10059
  %10073 = phi float [ %10071, %10065 ], [ %10032, %10059 ]
  %10074 = phi float [ %10067, %10065 ], [ 0.000000e+00, %10059 ]
  %10075 = fcmp fast une float %10036, 1.000000e+00
  br i1 %10075, label %10076, label %10083, !dx.controlflow.hints !176

; <label>:10076                                   ; preds = %10072
  %10077 = call float @dx.op.unary.f32(i32 23, float %10036)  ; Log(value)
  %10078 = fmul fast float %10077, 0x3FE62E4300000000
  %10079 = fmul fast float %10033, %10078
  %10080 = fsub fast float -0.000000e+00, %10079
  %10081 = fsub fast float 1.000000e+00, %10036
  %10082 = fdiv fast float %10080, %10081
  br label %10083

; <label>:10083                                   ; preds = %10076, %10072
  %10084 = phi float [ %10082, %10076 ], [ %10033, %10072 ]
  %10085 = phi float [ %10078, %10076 ], [ 0.000000e+00, %10072 ]
  %10086 = fcmp fast une float %10037, 1.000000e+00
  br i1 %10086, label %10087, label %10094, !dx.controlflow.hints !176

; <label>:10087                                   ; preds = %10083
  %10088 = call float @dx.op.unary.f32(i32 23, float %10037)  ; Log(value)
  %10089 = fmul fast float %10088, 0x3FE62E4300000000
  %10090 = fmul fast float %10034, %10089
  %10091 = fsub fast float -0.000000e+00, %10090
  %10092 = fsub fast float 1.000000e+00, %10037
  %10093 = fdiv fast float %10091, %10092
  br label %10094

; <label>:10094                                   ; preds = %10087, %10083
  %10095 = phi float [ %10093, %10087 ], [ %10034, %10083 ]
  %10096 = phi float [ %10089, %10087 ], [ 0.000000e+00, %10083 ]
  %10097 = fmul fast float %10060, %10044
  %10098 = fmul fast float %10061, %10044
  %10099 = fmul fast float %10062, %10044
  %10100 = fmul fast float %10063, %10044
  %10101 = fmul fast float %10073, %10042
  %10102 = fmul fast float %10084, %10042
  %10103 = fmul fast float %10095, %10042
  %10104 = fmul fast float %10074, %10042
  %10105 = fmul fast float %10085, %10042
  %10106 = fmul fast float %10096, %10042
  %10107 = fadd fast float %10101, %10097
  %10108 = fadd fast float %10102, %10098
  %10109 = fadd fast float %10103, %10099
  %10110 = fadd fast float %10104, %10100
  %10111 = fadd fast float %10105, %10100
  %10112 = fadd fast float %10106, %10100
  %10113 = fcmp fast une float %10110, 0.000000e+00
  br i1 %10113, label %10114, label %10121, !dx.controlflow.hints !177

; <label>:10114                                   ; preds = %10094
  %10115 = fmul fast float %10110, 0x3FF7154760000000
  %10116 = call float @dx.op.unary.f32(i32 21, float %10115)  ; Exp(value)
  %10117 = fsub fast float 1.000000e+00, %10116
  %10118 = fmul fast float %10107, %10117
  %10119 = fsub fast float -0.000000e+00, %10118
  %10120 = fdiv fast float %10119, %10110
  br label %10121

; <label>:10121                                   ; preds = %10114, %10094
  %10122 = phi float [ %10116, %10114 ], [ 1.000000e+00, %10094 ]
  %10123 = phi float [ %10120, %10114 ], [ %10107, %10094 ]
  %10124 = fcmp fast une float %10111, 0.000000e+00
  br i1 %10124, label %10125, label %10132, !dx.controlflow.hints !177

; <label>:10125                                   ; preds = %10121
  %10126 = fmul fast float %10111, 0x3FF7154760000000
  %10127 = call float @dx.op.unary.f32(i32 21, float %10126)  ; Exp(value)
  %10128 = fsub fast float 1.000000e+00, %10127
  %10129 = fmul fast float %10108, %10128
  %10130 = fsub fast float -0.000000e+00, %10129
  %10131 = fdiv fast float %10130, %10111
  br label %10132

; <label>:10132                                   ; preds = %10125, %10121
  %10133 = phi float [ %10127, %10125 ], [ 1.000000e+00, %10121 ]
  %10134 = phi float [ %10131, %10125 ], [ %10108, %10121 ]
  %10135 = fcmp fast une float %10112, 0.000000e+00
  br i1 %10135, label %10136, label %10143, !dx.controlflow.hints !177

; <label>:10136                                   ; preds = %10132
  %10137 = fmul fast float %10112, 0x3FF7154760000000
  %10138 = call float @dx.op.unary.f32(i32 21, float %10137)  ; Exp(value)
  %10139 = fsub fast float 1.000000e+00, %10138
  %10140 = fmul fast float %10109, %10139
  %10141 = fsub fast float -0.000000e+00, %10140
  %10142 = fdiv fast float %10141, %10112
  br label %10143

; <label>:10143                                   ; preds = %10136, %10132
  %10144 = phi float [ %10138, %10136 ], [ 1.000000e+00, %10132 ]
  %10145 = phi float [ %10142, %10136 ], [ %10109, %10132 ]
  %10146 = fcmp fast ogt float %10042, %10044
  br i1 %10146, label %10147, label %10167

; <label>:10147                                   ; preds = %10143
  %10148 = fsub fast float 1.000000e+00, %10044
  %10149 = fmul fast float %10060, %10148
  %10150 = fmul fast float %10061, %10148
  %10151 = fmul fast float %10062, %10148
  %10152 = fmul fast float %10063, %10148
  %10153 = fcmp fast une float %10152, 0.000000e+00
  br i1 %10153, label %10154, label %10205, !dx.controlflow.hints !178

; <label>:10154                                   ; preds = %10147
  %10155 = fmul fast float %10152, 0x3FF7154760000000
  %10156 = call float @dx.op.unary.f32(i32 21, float %10155)  ; Exp(value)
  %10157 = fsub fast float 1.000000e+00, %10156
  %10158 = fmul fast float %10149, %10157
  %10159 = fsub fast float -0.000000e+00, %10158
  %10160 = fmul fast float %10150, %10157
  %10161 = fsub fast float -0.000000e+00, %10160
  %10162 = fmul fast float %10151, %10157
  %10163 = fsub fast float -0.000000e+00, %10162
  %10164 = fdiv fast float %10159, %10152
  %10165 = fdiv fast float %10161, %10152
  %10166 = fdiv fast float %10163, %10152
  br label %10205

; <label>:10167                                   ; preds = %10143
  %10168 = fsub fast float 1.000000e+00, %10042
  %10169 = fmul fast float %10073, %10168
  %10170 = fmul fast float %10084, %10168
  %10171 = fmul fast float %10095, %10168
  %10172 = fmul fast float %10074, %10168
  %10173 = fmul fast float %10085, %10168
  %10174 = fmul fast float %10096, %10168
  %10175 = fcmp fast une float %10172, 0.000000e+00
  br i1 %10175, label %10176, label %10183, !dx.controlflow.hints !177

; <label>:10176                                   ; preds = %10167
  %10177 = fmul fast float %10172, 0x3FF7154760000000
  %10178 = call float @dx.op.unary.f32(i32 21, float %10177)  ; Exp(value)
  %10179 = fsub fast float 1.000000e+00, %10178
  %10180 = fmul fast float %10169, %10179
  %10181 = fsub fast float -0.000000e+00, %10180
  %10182 = fdiv fast float %10181, %10172
  br label %10183

; <label>:10183                                   ; preds = %10176, %10167
  %10184 = phi float [ %10182, %10176 ], [ %10169, %10167 ]
  %10185 = phi float [ %10178, %10176 ], [ 1.000000e+00, %10167 ]
  %10186 = fcmp fast une float %10173, 0.000000e+00
  br i1 %10186, label %10187, label %10194, !dx.controlflow.hints !177

; <label>:10187                                   ; preds = %10183
  %10188 = fmul fast float %10173, 0x3FF7154760000000
  %10189 = call float @dx.op.unary.f32(i32 21, float %10188)  ; Exp(value)
  %10190 = fsub fast float 1.000000e+00, %10189
  %10191 = fmul fast float %10170, %10190
  %10192 = fsub fast float -0.000000e+00, %10191
  %10193 = fdiv fast float %10192, %10173
  br label %10194

; <label>:10194                                   ; preds = %10187, %10183
  %10195 = phi float [ %10193, %10187 ], [ %10170, %10183 ]
  %10196 = phi float [ %10189, %10187 ], [ 1.000000e+00, %10183 ]
  %10197 = fcmp fast une float %10174, 0.000000e+00
  br i1 %10197, label %10198, label %10205, !dx.controlflow.hints !177

; <label>:10198                                   ; preds = %10194
  %10199 = fmul fast float %10174, 0x3FF7154760000000
  %10200 = call float @dx.op.unary.f32(i32 21, float %10199)  ; Exp(value)
  %10201 = fsub fast float 1.000000e+00, %10200
  %10202 = fmul fast float %10171, %10201
  %10203 = fsub fast float -0.000000e+00, %10202
  %10204 = fdiv fast float %10203, %10174
  br label %10205

; <label>:10205                                   ; preds = %10198, %10194, %10154, %10147
  %10206 = phi float [ %10204, %10198 ], [ %10166, %10154 ], [ %10151, %10147 ], [ %10171, %10194 ]
  %10207 = phi float [ %10195, %10198 ], [ %10165, %10154 ], [ %10150, %10147 ], [ %10195, %10194 ]
  %10208 = phi float [ %10184, %10198 ], [ %10164, %10154 ], [ %10149, %10147 ], [ %10184, %10194 ]
  %10209 = phi float [ %10200, %10198 ], [ %10156, %10154 ], [ 1.000000e+00, %10147 ], [ 1.000000e+00, %10194 ]
  %10210 = phi float [ %10196, %10198 ], [ %10156, %10154 ], [ 1.000000e+00, %10147 ], [ %10196, %10194 ]
  %10211 = phi float [ %10185, %10198 ], [ %10156, %10154 ], [ 1.000000e+00, %10147 ], [ %10185, %10194 ]
  %10212 = fmul fast float %10211, %10123
  %10213 = fmul fast float %10210, %10134
  %10214 = fmul fast float %10209, %10145
  %10215 = fadd fast float %10212, %10208
  %10216 = fadd fast float %10213, %10207
  %10217 = fadd fast float %10214, %10206
  %10218 = fmul fast float %10211, %10122
  %10219 = fmul fast float %10210, %10133
  %10220 = fmul fast float %10209, %10144
  br label %10221

; <label>:10221                                   ; preds = %10205, %10016
  %10222 = phi float [ %10220, %10205 ], [ %10022, %10016 ]
  %10223 = phi float [ %10219, %10205 ], [ %10021, %10016 ]
  %10224 = phi float [ %10218, %10205 ], [ %10020, %10016 ]
  %10225 = phi float [ %10217, %10205 ], [ %10019, %10016 ]
  %10226 = phi float [ %10216, %10205 ], [ %10018, %10016 ]
  %10227 = phi float [ %10215, %10205 ], [ %10017, %10016 ]
  %10228 = fmul fast float %10227, %9173
  %10229 = fmul fast float %10226, %9173
  %10230 = fmul fast float %10225, %9173
  %10231 = fmul fast float %10224, %9464
  %10232 = call float @dx.op.dot3.f32(i32 55, float %10224, float %10223, float %10222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10233 = call float @dx.op.dot3.f32(i32 55, float %10228, float %10229, float %10230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10234 = select i1 %232, float %10232, float %10224
  %10235 = select i1 %232, float %10232, float %10223
  %10236 = select i1 %232, float 1.000000e+00, float %10222
  %10237 = select i1 %232, float %10233, float %10228
  %10238 = select i1 %232, float 0.000000e+00, float %10229
  %10239 = select i1 %232, float 0.000000e+00, float %10230
  %10240 = fmul fast float %10234, %9458
  %10241 = fmul fast float %10235, %9459
  %10242 = fmul fast float %10236, %9460
  %10243 = fadd fast float %10240, %10237
  %10244 = fadd fast float %10241, %10238
  %10245 = fadd fast float %10239, %10242
  %10246 = fmul fast float %10234, %9461
  %10247 = fmul fast float %10235, %9462
  %10248 = fmul fast float %10236, %9463
  %10249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10250 = extractvalue %dx.types.CBufRet.i32 %10249, 0
  %10251 = icmp eq i32 %10250, 0
  br i1 %10251, label %10619, label %10252, !dx.controlflow.hints !179

; <label>:10252                                   ; preds = %10221
  %10253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10254 = extractvalue %dx.types.CBufRet.f32 %10253, 2
  %10255 = extractvalue %dx.types.CBufRet.f32 %10253, 3
  %10256 = fmul fast float %10254, %111
  %10257 = fmul fast float %10255, %112
  %10258 = fmul fast float %10256, 2.000000e+00
  %10259 = fmul fast float %10257, 2.000000e+00
  %10260 = fsub fast float 1.000000e+00, %10258
  %10261 = fsub fast float 1.000000e+00, %10259
  %10262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10263 = extractvalue %dx.types.CBufRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.CBufRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.CBufRet.f32 %10262, 2
  %10266 = fmul fast float %10260, %10263
  %10267 = fmul fast float %10260, %10264
  %10268 = fmul fast float %10260, %10265
  %10269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10270 = extractvalue %dx.types.CBufRet.f32 %10269, 0
  %10271 = extractvalue %dx.types.CBufRet.f32 %10269, 1
  %10272 = extractvalue %dx.types.CBufRet.f32 %10269, 2
  %10273 = fmul fast float %10261, %10270
  %10274 = fmul fast float %10261, %10271
  %10275 = fmul fast float %10261, %10272
  %10276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10277 = extractvalue %dx.types.CBufRet.f32 %10276, 0
  %10278 = extractvalue %dx.types.CBufRet.f32 %10276, 1
  %10279 = extractvalue %dx.types.CBufRet.f32 %10276, 2
  %10280 = fadd fast float %10273, %10277
  %10281 = fadd fast float %10280, %10266
  %10282 = fadd fast float %10274, %10278
  %10283 = fadd fast float %10282, %10267
  %10284 = fadd fast float %10275, %10279
  %10285 = fadd fast float %10284, %10268
  %10286 = fmul fast float %10281, %9457
  %10287 = fmul fast float %10283, %9457
  %10288 = fmul fast float %10285, %9457
  %10289 = fmul fast float %10286, %10286
  %10290 = fmul fast float %10287, %10287
  %10291 = fadd fast float %10289, %10290
  %10292 = fmul fast float %10288, %10288
  %10293 = fadd fast float %10291, %10292
  %10294 = call float @dx.op.unary.f32(i32 24, float %10293)  ; Sqrt(value)
  %10295 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %10296 = fsub fast float %10294, %10295
  %10297 = extractvalue %dx.types.CBufRet.f32 %9184, 2
  %10298 = fmul fast float %10296, %10297
  %10299 = call float @dx.op.unary.f32(i32 7, float %10298)  ; Saturate(value)
  %10300 = fadd fast float %10299, -5.000000e-01
  %10301 = fmul fast float %10300, 2.000000e+00
  %10302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10303 = extractvalue %dx.types.CBufRet.f32 %10302, 2
  %10304 = call float @dx.op.binary.f32(i32 36, float %10303, float %10301)  ; FMin(a,b)
  %10305 = fsub fast float -0.000000e+00, %10303
  %10306 = fcmp fast ogt float %10304, %10305
  br i1 %10306, label %10307, label %10619, !dx.controlflow.hints !180

; <label>:10307                                   ; preds = %10252
  %10308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10309 = extractvalue %dx.types.CBufRet.f32 %10308, 3
  %10310 = fcmp fast ogt float %10309, 0.000000e+00
  br i1 %10310, label %10311, label %10386, !dx.controlflow.hints !181

; <label>:10311                                   ; preds = %10307
  %10312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10313 = extractvalue %dx.types.Dimensions %10312, 0
  %10314 = sitofp i32 %10313 to float
  %10315 = extractvalue %dx.types.Dimensions %10312, 1
  %10316 = sitofp i32 %10315 to float
  %10317 = fmul fast float %10256, %10314
  %10318 = fmul fast float %10257, %10316
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 1
  %10321 = fsub fast float -0.000000e+00, %10320
  %10322 = fptoui float %10321 to i32
  %10323 = fptoui float %10317 to i32
  %10324 = fptoui float %10318 to i32
  %10325 = and i32 %10322, 31
  %10326 = lshr i32 %10323, %10325
  %10327 = lshr i32 %10324, %10325
  %10328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10322, i32 %10326, i32 %10327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10329 = extractvalue %dx.types.ResRet.f32 %10328, 0
  %10330 = fcmp fast olt float %10329, -1.000000e+00
  %10331 = fcmp fast ogt float %10329, -1.000000e+00
  %10332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10333 = extractvalue %dx.types.CBufRet.f32 %10332, 1
  %10334 = select i1 %10331, float %10333, float 1.000000e+00
  %10335 = fadd fast float %10329, 1.000000e+00
  %10336 = fmul fast float %10334, %10335
  %10337 = call float @dx.op.unary.f32(i32 6, float %10336)  ; FAbs(value)
  %10338 = extractvalue %dx.types.CBufRet.f32 %10332, 3
  %10339 = fcmp fast oge float %10337, %10338
  %10340 = select i1 %10339, float 0x4197782600000000, float %10337
  %10341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10342 = extractvalue %dx.types.CBufRet.f32 %10341, 0
  %10343 = extractvalue %dx.types.CBufRet.f32 %10341, 1
  %10344 = extractvalue %dx.types.CBufRet.f32 %10341, 2
  %10345 = select i1 %10330, float %10342, float %10263
  %10346 = select i1 %10330, float %10343, float %10264
  %10347 = select i1 %10330, float %10344, float %10265
  %10348 = fmul fast float %10345, %10260
  %10349 = fmul fast float %10346, %10260
  %10350 = fmul fast float %10347, %10260
  %10351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10352 = extractvalue %dx.types.CBufRet.f32 %10351, 0
  %10353 = extractvalue %dx.types.CBufRet.f32 %10351, 1
  %10354 = extractvalue %dx.types.CBufRet.f32 %10351, 2
  %10355 = select i1 %10330, float %10352, float %10270
  %10356 = select i1 %10330, float %10353, float %10271
  %10357 = select i1 %10330, float %10354, float %10272
  %10358 = fmul fast float %10355, %10261
  %10359 = fmul fast float %10356, %10261
  %10360 = fmul fast float %10357, %10261
  %10361 = fadd fast float %10358, %10348
  %10362 = fadd fast float %10359, %10349
  %10363 = fadd fast float %10360, %10350
  %10364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10365 = extractvalue %dx.types.CBufRet.f32 %10364, 0
  %10366 = extractvalue %dx.types.CBufRet.f32 %10364, 1
  %10367 = extractvalue %dx.types.CBufRet.f32 %10364, 2
  %10368 = select i1 %10330, float %10365, float %10277
  %10369 = select i1 %10330, float %10366, float %10278
  %10370 = select i1 %10330, float %10367, float %10279
  %10371 = fadd fast float %10361, %10368
  %10372 = fadd fast float %10362, %10369
  %10373 = fadd fast float %10363, %10370
  %10374 = fmul fast float %10371, %10340
  %10375 = fmul fast float %10372, %10340
  %10376 = fmul fast float %10373, %10340
  %10377 = fmul fast float %10374, %10374
  %10378 = fmul fast float %10375, %10375
  %10379 = fadd fast float %10377, %10378
  %10380 = fmul fast float %10376, %10376
  %10381 = fadd fast float %10379, %10380
  %10382 = call float @dx.op.unary.f32(i32 24, float %10381)  ; Sqrt(value)
  %10383 = fsub fast float %10382, %10295
  %10384 = fmul fast float %10383, %10297
  %10385 = call float @dx.op.unary.f32(i32 7, float %10384)  ; Saturate(value)
  br label %10386

; <label>:10386                                   ; preds = %10311, %10307
  %10387 = phi float [ %10385, %10311 ], [ 1.000000e+00, %10307 ]
  %10388 = fmul fast float %10304, 5.000000e-01
  %10389 = fadd fast float %10388, 5.000000e-01
  %10390 = call float @dx.op.unary.f32(i32 22, float %10389)  ; Frc(value)
  %10391 = call float @dx.op.unary.f32(i32 27, float %10390)  ; Round_ni(value)
  %10392 = call float @dx.op.unary.f32(i32 22, float %10390)  ; Frc(value)
  %10393 = fmul fast float %10392, 2.000000e+00
  %10394 = fadd fast float %10393, -1.000000e+00
  %10395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10256, float %10257, float %10391, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10396 = extractvalue %dx.types.ResRet.f32 %10395, 0
  %10397 = extractvalue %dx.types.ResRet.f32 %10395, 1
  %10398 = extractvalue %dx.types.ResRet.f32 %10395, 2
  %10399 = extractvalue %dx.types.ResRet.f32 %10395, 3
  %10400 = fadd fast float %10396, -5.000000e-01
  %10401 = fadd fast float %10398, -5.000000e-01
  %10402 = fmul fast float %10400, 0xBFD5555560000000
  %10403 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10401, float %10402)  ; FMad(a,b,c)
  %10404 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10397, float 0.000000e+00)  ; FMad(a,b,c)
  %10405 = fadd fast float %10404, %10399
  %10406 = fmul fast float %10400, -7.500000e-01
  %10407 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10401, float %10406)  ; FMad(a,b,c)
  %10408 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10397, float 0.000000e+00)  ; FMad(a,b,c)
  %10409 = fadd fast float %10408, %10399
  %10410 = call float @dx.op.binary.f32(i32 35, float %10403, float -1.000000e+00)  ; FMax(a,b)
  %10411 = call float @dx.op.binary.f32(i32 35, float %10405, float -1.000000e+00)  ; FMax(a,b)
  %10412 = call float @dx.op.binary.f32(i32 35, float %10407, float -1.000000e+00)  ; FMax(a,b)
  %10413 = call float @dx.op.binary.f32(i32 35, float %10409, float -1.000000e+00)  ; FMax(a,b)
  %10414 = call float @dx.op.binary.f32(i32 36, float %10410, float 1.000000e+00)  ; FMin(a,b)
  %10415 = call float @dx.op.binary.f32(i32 36, float %10411, float 1.000000e+00)  ; FMin(a,b)
  %10416 = call float @dx.op.binary.f32(i32 36, float %10412, float 1.000000e+00)  ; FMin(a,b)
  %10417 = call float @dx.op.binary.f32(i32 36, float %10413, float 1.000000e+00)  ; FMin(a,b)
  %10418 = fcmp fast olt float %10414, 0x3FEFFF8020000000
  br i1 %10418, label %10419, label %10534, !dx.controlflow.hints !182

; <label>:10419                                   ; preds = %10386
  %10420 = extractvalue %dx.types.CBufRet.f32 %10302, 3
  %10421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10422 = extractvalue %dx.types.CBufRet.f32 %10421, 0
  %10423 = extractvalue %dx.types.CBufRet.f32 %10421, 1
  %10424 = extractvalue %dx.types.CBufRet.f32 %10421, 2
  %10425 = extractvalue %dx.types.CBufRet.f32 %10421, 3
  %10426 = fsub fast float %10422, %10414
  %10427 = fsub fast float %10423, %10415
  %10428 = fsub fast float %10424, %10416
  %10429 = fsub fast float %10425, %10417
  %10430 = fmul fast float %10426, %10420
  %10431 = fmul fast float %10427, %10420
  %10432 = fmul fast float %10428, %10420
  %10433 = fmul fast float %10429, %10420
  %10434 = fadd fast float %10430, %10414
  %10435 = fadd fast float %10431, %10415
  %10436 = fsub fast float -0.000000e+00, %10435
  %10437 = fadd fast float %10432, %10416
  %10438 = fadd fast float %10433, %10417
  %10439 = fmul fast float %10434, %10434
  %10440 = fsub fast float %10435, %10439
  %10441 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10440)  ; FMax(a,b)
  %10442 = fdiv fast float 1.000000e+00, %10441
  %10443 = fmul fast float %10435, %10434
  %10444 = fsub fast float %10437, %10443
  %10445 = fsub fast float %10394, %10434
  %10446 = fmul fast float %10394, %10394
  %10447 = fsub fast float %10446, %10435
  %10448 = fmul fast float %10445, %10442
  %10449 = fmul fast float %10448, %10444
  %10450 = fsub fast float %10447, %10449
  %10451 = fmul fast float %10435, %10435
  %10452 = fsub fast float %10438, %10451
  %10453 = fmul fast float %10444, %10444
  %10454 = fmul fast float %10453, %10442
  %10455 = fsub fast float %10452, %10454
  %10456 = fdiv fast float %10450, %10455
  %10457 = fmul fast float %10444, %10456
  %10458 = fsub fast float %10445, %10457
  %10459 = fmul fast float %10458, %10442
  %10460 = fmul fast float %10459, %10434
  %10461 = fsub fast float 1.000000e+00, %10460
  %10462 = fmul fast float %10435, %10456
  %10463 = fsub fast float %10461, %10462
  %10464 = fmul fast float %10459, %10459
  %10465 = fmul fast float %10456, 4.000000e+00
  %10466 = fmul fast float %10465, %10463
  %10467 = fsub fast float %10464, %10466
  %10468 = call float @dx.op.unary.f32(i32 24, float %10467)  ; Sqrt(value)
  %10469 = fcmp fast oge float %10459, 0.000000e+00
  %10470 = fsub fast float -0.000000e+00, %10468
  %10471 = select i1 %10469, float %10470, float %10468
  %10472 = fsub fast float %10471, %10459
  %10473 = fdiv fast float %10472, %10456
  %10474 = fdiv fast float %10463, %10472
  %10475 = fmul fast float %10473, 5.000000e-01
  %10476 = fmul fast float %10474, 2.000000e+00
  %10477 = select i1 %10469, float %10475, float %10476
  %10478 = select i1 %10469, float %10476, float %10475
  %10479 = call float @dx.op.binary.f32(i32 35, float %10477, float %10478)  ; FMax(a,b)
  %10480 = call float @dx.op.binary.f32(i32 36, float %10477, float %10478)  ; FMin(a,b)
  %10481 = fcmp fast ogt float %10394, %10480
  br i1 %10481, label %10482, label %10492

; <label>:10482                                   ; preds = %10419
  %10483 = fsub fast float %10394, %10480
  %10484 = fsub fast float %10479, %10480
  %10485 = fmul fast float %10483, %10484
  %10486 = fmul fast float %10479, %10394
  %10487 = fadd fast float %10479, %10394
  %10488 = fmul fast float %10487, %10434
  %10489 = fadd fast float %10486, %10435
  %10490 = fsub fast float %10489, %10488
  %10491 = fdiv fast float %10490, %10485
  br label %10492

; <label>:10492                                   ; preds = %10482, %10419
  %10493 = phi float [ %10491, %10482 ], [ 0.000000e+00, %10419 ]
  %10494 = fcmp fast ogt float %10394, %10479
  %10495 = fsub fast float %10394, %10479
  br i1 %10494, label %10496, label %10506

; <label>:10496                                   ; preds = %10492
  %10497 = fsub fast float %10479, %10480
  %10498 = fmul fast float %10497, %10495
  %10499 = fmul fast float %10480, %10394
  %10500 = fadd fast float %10480, %10394
  %10501 = fmul fast float %10500, %10434
  %10502 = fsub fast float %10436, %10499
  %10503 = fadd fast float %10502, %10501
  %10504 = fdiv fast float %10503, %10498
  %10505 = fadd fast float %10504, %10493
  br label %10506

; <label>:10506                                   ; preds = %10496, %10492
  %10507 = phi float [ %10505, %10496 ], [ %10493, %10492 ]
  %10508 = fsub fast float %10394, %10480
  %10509 = fmul fast float %10508, %10495
  %10510 = fmul fast float %10480, %10479
  %10511 = fadd fast float %10480, %10479
  %10512 = fmul fast float %10511, %10434
  %10513 = fadd fast float %10510, %10435
  %10514 = fsub fast float %10513, %10512
  %10515 = fdiv fast float %10514, %10509
  %10516 = call float @dx.op.unary.f32(i32 7, float %10507)  ; Saturate(value)
  %10517 = fcmp fast oeq float %9185, 0.000000e+00
  %10518 = extractvalue %dx.types.CBufRet.f32 %10302, 0
  %10519 = fcmp fast oeq float %10518, 0.000000e+00
  %10520 = or i1 %10517, %10519
  %10521 = fmul fast float %10518, 2.000000e+00
  %10522 = fadd fast float %10303, %10304
  %10523 = fdiv fast float %10522, %10521
  %10524 = call float @dx.op.unary.f32(i32 7, float %10523)  ; Saturate(value)
  %10525 = fmul fast float %10524, 2.000000e+00
  %10526 = fsub fast float 3.000000e+00, %10525
  %10527 = fmul fast float %10524, %10524
  %10528 = fmul fast float %10527, %10526
  %10529 = select i1 %10520, float 1.000000e+00, float %10528
  %10530 = fmul fast float %10515, %9185
  %10531 = fadd fast float %10516, %10530
  %10532 = call float @dx.op.unary.f32(i32 7, float %10531)  ; Saturate(value)
  %10533 = fmul fast float %10529, %10532
  br label %10534

; <label>:10534                                   ; preds = %10506, %10386
  %10535 = phi float [ %10533, %10506 ], [ 0.000000e+00, %10386 ]
  %10536 = fsub fast float 1.000000e+00, %10535
  %10537 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10256, float %10257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10538 = extractvalue %dx.types.ResRet.f32 %10537, 0
  %10539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10540 = extractvalue %dx.types.CBufRet.i32 %10539, 2
  %10541 = icmp eq i32 %10540, 0
  br i1 %10541, label %10547, label %10542

; <label>:10542                                   ; preds = %10534
  %10543 = call float @dx.op.unary.f32(i32 7, float %10535)  ; Saturate(value)
  %10544 = fadd fast float %10538, -1.000000e+00
  %10545 = fmul fast float %10543, %10544
  %10546 = fadd fast float %10545, 1.000000e+00
  br label %10547

; <label>:10547                                   ; preds = %10542, %10534
  %10548 = phi float [ %10546, %10542 ], [ %10536, %10534 ]
  br i1 %10310, label %10549, label %10567

; <label>:10549                                   ; preds = %10547
  %10550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10551 = extractvalue %dx.types.CBufRet.f32 %10550, 1
  %10552 = fsub fast float %10387, %10551
  %10553 = call float @dx.op.unary.f32(i32 7, float %10552)  ; Saturate(value)
  %10554 = fsub fast float %10387, %10309
  %10555 = call float @dx.op.unary.f32(i32 7, float %10554)  ; Saturate(value)
  %10556 = fsub fast float %10553, %10555
  %10557 = fsub fast float %10389, %10555
  %10558 = fdiv fast float %10557, %10556
  %10559 = call float @dx.op.unary.f32(i32 7, float %10558)  ; Saturate(value)
  %10560 = fmul fast float %10559, 2.000000e+00
  %10561 = fsub fast float 3.000000e+00, %10560
  %10562 = fsub fast float %10538, %10548
  %10563 = fmul fast float %10559, %10559
  %10564 = fmul fast float %10563, %10562
  %10565 = fmul fast float %10564, %10561
  %10566 = fadd fast float %10565, %10548
  br label %10567

; <label>:10567                                   ; preds = %10549, %10547
  %10568 = phi float [ %10566, %10549 ], [ %10548, %10547 ]
  %10569 = call float @dx.op.binary.f32(i32 35, float %10538, float %10568)  ; FMax(a,b)
  %10570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10571 = extractvalue %dx.types.CBufRet.i32 %10570, 2
  %10572 = and i32 %10571, 1
  %10573 = icmp eq i32 %10572, 0
  %10574 = fcmp fast une float %10569, 1.000000e+00
  %10575 = and i1 %10574, %10573
  br i1 %10575, label %10576, label %10595

; <label>:10576                                   ; preds = %10567
  %10577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10256, float %10257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10578 = extractvalue %dx.types.ResRet.f32 %10577, 0
  %10579 = extractvalue %dx.types.ResRet.f32 %10577, 1
  %10580 = extractvalue %dx.types.ResRet.f32 %10577, 2
  %10581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10582 = extractvalue %dx.types.CBufRet.f32 %10581, 1
  %10583 = fmul fast float %10582, %10578
  %10584 = fmul fast float %10582, %10579
  %10585 = fmul fast float %10582, %10580
  %10586 = fcmp fast ogt float %10538, 0x3FEFFF2E40000000
  %10587 = fsub fast float 1.000000e+00, %10569
  %10588 = fsub fast float 1.000000e+00, %10538
  %10589 = fdiv fast float %10587, %10588
  %10590 = call float @dx.op.unary.f32(i32 7, float %10589)  ; Saturate(value)
  %10591 = select i1 %10586, float 0.000000e+00, float %10590
  %10592 = fmul fast float %10583, %10591
  %10593 = fmul fast float %10584, %10591
  %10594 = fmul fast float %10585, %10591
  br label %10595

; <label>:10595                                   ; preds = %10576, %10567
  %10596 = phi float [ 0.000000e+00, %10567 ], [ %10592, %10576 ]
  %10597 = phi float [ 0.000000e+00, %10567 ], [ %10593, %10576 ]
  %10598 = phi float [ 0.000000e+00, %10567 ], [ %10594, %10576 ]
  %10599 = fmul fast float %10596, %9173
  %10600 = fmul fast float %10597, %9173
  %10601 = fmul fast float %10598, %9173
  %10602 = fmul fast float %10569, %10231
  %10603 = call float @dx.op.dot3.f32(i32 55, float %10569, float %10569, float %10569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10604 = call float @dx.op.dot3.f32(i32 55, float %10599, float %10600, float %10601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10605 = select i1 %232, float %10603, float %10569
  %10606 = select i1 %232, float 1.000000e+00, float %10569
  %10607 = select i1 %232, float %10604, float %10599
  %10608 = select i1 %232, float 0.000000e+00, float %10600
  %10609 = select i1 %232, float 0.000000e+00, float %10601
  %10610 = fmul fast float %10605, %10243
  %10611 = fmul fast float %10605, %10244
  %10612 = fmul fast float %10606, %10245
  %10613 = fadd fast float %10610, %10607
  %10614 = fadd fast float %10611, %10608
  %10615 = fadd fast float %10609, %10612
  %10616 = fmul fast float %10605, %10246
  %10617 = fmul fast float %10605, %10247
  %10618 = fmul fast float %10606, %10248
  br label %10619

; <label>:10619                                   ; preds = %10595, %10252, %10221, %9453
  %10620 = phi float [ %9458, %9453 ], [ %10243, %10221 ], [ %10613, %10595 ], [ %10243, %10252 ]
  %10621 = phi float [ %9459, %9453 ], [ %10244, %10221 ], [ %10614, %10595 ], [ %10244, %10252 ]
  %10622 = phi float [ %9460, %9453 ], [ %10245, %10221 ], [ %10615, %10595 ], [ %10245, %10252 ]
  %10623 = phi float [ %9461, %9453 ], [ %10246, %10221 ], [ %10616, %10595 ], [ %10246, %10252 ]
  %10624 = phi float [ %9462, %9453 ], [ %10247, %10221 ], [ %10617, %10595 ], [ %10247, %10252 ]
  %10625 = phi float [ %9463, %9453 ], [ %10248, %10221 ], [ %10618, %10595 ], [ %10248, %10252 ]
  %10626 = phi float [ %9464, %9453 ], [ %10231, %10221 ], [ %10602, %10595 ], [ %10231, %10252 ]
  %10627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10628 = extractvalue %dx.types.CBufRet.f32 %10627, 2
  %10629 = extractvalue %dx.types.CBufRet.f32 %10627, 3
  %10630 = fmul fast float %10628, %111
  %10631 = fmul fast float %10629, %112
  %10632 = call float @dx.op.unary.f32(i32 7, float %10630)  ; Saturate(value)
  %10633 = call float @dx.op.unary.f32(i32 7, float %10631)  ; Saturate(value)
  %10634 = select i1 %9195, i32 2, i32 0
  %10635 = or i32 %10634, 1
  %10636 = uitofp i32 %10635 to float
  %10637 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10632, float %10633, float %10636, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10638 = extractvalue %dx.types.ResRet.f32 %10637, 0
  %10639 = extractvalue %dx.types.ResRet.f32 %10637, 1
  %10640 = extractvalue %dx.types.ResRet.f32 %10637, 2
  %10641 = extractvalue %dx.types.ResRet.f32 %10637, 3
  %10642 = add nuw nsw i32 %10634, 2
  %10643 = uitofp i32 %10642 to float
  %10644 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10632, float %10633, float %10643, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10645 = extractvalue %dx.types.ResRet.f32 %10644, 0
  %10646 = extractvalue %dx.types.ResRet.f32 %10644, 1
  %10647 = extractvalue %dx.types.ResRet.f32 %10644, 2
  %10648 = extractvalue %dx.types.ResRet.f32 %10644, 3
  %10649 = call float @dx.op.binary.f32(i32 35, float %10639, float %10640)  ; FMax(a,b)
  %10650 = call float @dx.op.binary.f32(i32 35, float %10638, float %10649)  ; FMax(a,b)
  %10651 = call float @dx.op.binary.f32(i32 35, float %10650, float %10641)  ; FMax(a,b)
  %10652 = call float @dx.op.binary.f32(i32 36, float %10646, float %10647)  ; FMin(a,b)
  %10653 = call float @dx.op.binary.f32(i32 36, float %10645, float %10652)  ; FMin(a,b)
  %10654 = call float @dx.op.binary.f32(i32 36, float %10653, float %10648)  ; FMin(a,b)
  %10655 = fmul fast float %10651, 2.550000e+02
  %10656 = fadd fast float %10655, 0x3F70101020000000
  %10657 = fptoui float %10656 to i32
  %10658 = fmul fast float %10654, 2.550000e+02
  %10659 = fadd fast float %10658, 0x3F70101020000000
  %10660 = fptoui float %10659 to i32
  %10661 = icmp ult i32 %10657, %10660
  br i1 %10661, label %10662, label %10831

; <label>:10662                                   ; preds = %10619
  %10663 = fcmp fast ogt float %98, 9.843750e-01
  %10664 = fadd fast float %9457, -4.000000e+00
  %10665 = select i1 %10663, float -4.000000e+00, float %10664
  %10666 = call float @dx.op.binary.f32(i32 35, float %10665, float 0.000000e+00)  ; FMax(a,b)
  %10667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10668 = extractvalue %dx.types.CBufRet.f32 %10667, 0
  %10669 = fadd fast float %10668, %10666
  %10670 = extractvalue %dx.types.CBufRet.f32 %10667, 2
  %10671 = fmul fast float %10669, %10670
  %10672 = call float @dx.op.unary.f32(i32 23, float %10671)  ; Log(value)
  %10673 = extractvalue %dx.types.CBufRet.f32 %10667, 3
  %10674 = fmul fast float %10673, %10672
  %10675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10676 = extractvalue %dx.types.CBufRet.f32 %10675, 2
  %10677 = fmul fast float %10674, %10676
  %10678 = call float @dx.op.unary.f32(i32 7, float %10677)  ; Saturate(value)
  %10679 = uitofp i32 %10657 to float
  %10680 = uitofp i32 %10660 to float
  %10681 = fadd fast float %10679, 5.000000e-01
  %10682 = fadd fast float %10680, 5.000000e-01
  %10683 = fmul fast float %10676, %10681
  %10684 = fmul fast float %10676, %10682
  %10685 = fadd fast float %10683, 0x3F0FFB4800000000
  %10686 = fadd fast float %10684, 0xBF0FFB4800000000
  %10687 = call float @dx.op.binary.f32(i32 35, float %10678, float %10685)  ; FMax(a,b)
  %10688 = call float @dx.op.binary.f32(i32 36, float %10687, float %10686)  ; FMin(a,b)
  %10689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10690 = extractvalue %dx.types.CBufRet.f32 %10689, 1
  %10691 = extractvalue %dx.types.CBufRet.f32 %10689, 2
  %10692 = extractvalue %dx.types.CBufRet.f32 %10689, 0
  %10693 = select i1 %9195, float %10692, float 0.000000e+00
  %10694 = fmul fast float %10690, %10688
  %10695 = fadd fast float %10693, %10694
  %10696 = fadd fast float %10693, %10691
  %10697 = fsub fast float %10690, %10691
  %10698 = fadd fast float %10697, %10693
  %10699 = call float @dx.op.binary.f32(i32 35, float %10695, float %10696)  ; FMax(a,b)
  %10700 = call float @dx.op.binary.f32(i32 36, float %10699, float %10698)  ; FMin(a,b)
  %10701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10632, float %10633, float %10700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10702 = extractvalue %dx.types.ResRet.f32 %10701, 0
  %10703 = extractvalue %dx.types.ResRet.f32 %10701, 1
  %10704 = extractvalue %dx.types.ResRet.f32 %10701, 2
  %10705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10706 = extractvalue %dx.types.CBufRet.i32 %10705, 0
  %10707 = extractvalue %dx.types.CBufRet.i32 %10705, 1
  %10708 = uitofp i32 %10706 to float
  %10709 = uitofp i32 %10707 to float
  %10710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10711 = extractvalue %dx.types.CBufRet.f32 %10710, 0
  %10712 = extractvalue %dx.types.CBufRet.f32 %10710, 1
  %10713 = fmul fast float %10708, %10632
  %10714 = fmul fast float %10709, %10633
  %10715 = fadd fast float %10713, -5.000000e-01
  %10716 = fadd fast float %10714, -5.000000e-01
  %10717 = call float @dx.op.unary.f32(i32 22, float %10715)  ; Frc(value)
  %10718 = call float @dx.op.unary.f32(i32 22, float %10716)  ; Frc(value)
  %10719 = fmul fast float %10717, %10717
  %10720 = fmul fast float %10719, %10717
  %10721 = fsub fast float 3.000000e+00, %10717
  %10722 = fmul fast float %10719, %10721
  %10723 = fmul fast float %10717, 3.000000e+00
  %10724 = fmul fast float %10720, 3.000000e+00
  %10725 = fmul fast float %10719, 6.000000e+00
  %10726 = fsub fast float %10724, %10725
  %10727 = fadd fast float %10726, 4.000000e+00
  %10728 = fmul fast float %10727, 0x3FC5555560000000
  %10729 = fmul fast float %10720, -3.000000e+00
  %10730 = fadd fast float %10719, %10717
  %10731 = fmul fast float %10730, 3.000000e+00
  %10732 = fadd fast float %10729, 1.000000e+00
  %10733 = fadd fast float %10732, %10731
  %10734 = fmul fast float %10720, 0x3FC5555560000000
  %10735 = fmul fast float %10718, %10718
  %10736 = fmul fast float %10735, %10718
  %10737 = fsub fast float 3.000000e+00, %10718
  %10738 = fmul fast float %10735, %10737
  %10739 = fmul fast float %10718, 3.000000e+00
  %10740 = fmul fast float %10736, 3.000000e+00
  %10741 = fmul fast float %10735, 6.000000e+00
  %10742 = fsub fast float %10740, %10741
  %10743 = fadd fast float %10742, 4.000000e+00
  %10744 = fmul fast float %10743, 0x3FC5555560000000
  %10745 = fmul fast float %10736, -3.000000e+00
  %10746 = fadd fast float %10735, %10718
  %10747 = fmul fast float %10746, 3.000000e+00
  %10748 = fadd fast float %10745, 1.000000e+00
  %10749 = fadd fast float %10748, %10747
  %10750 = fmul fast float %10736, 0x3FC5555560000000
  %10751 = fadd fast float %10717, 1.000000e+00
  %10752 = fsub fast float 1.000000e+00, %10723
  %10753 = fadd fast float %10752, %10722
  %10754 = fadd fast float %10753, %10727
  %10755 = fmul fast float %10754, 0x3FC5555560000000
  %10756 = fdiv fast float %10728, %10755
  %10757 = fsub fast float %10751, %10756
  %10758 = fsub fast float 1.000000e+00, %10717
  %10759 = fadd fast float %10733, %10720
  %10760 = fmul fast float %10759, 0x3FC5555560000000
  %10761 = fdiv fast float %10734, %10760
  %10762 = fadd fast float %10758, %10761
  %10763 = fadd fast float %10718, 1.000000e+00
  %10764 = fsub fast float 1.000000e+00, %10739
  %10765 = fadd fast float %10764, %10738
  %10766 = fadd fast float %10765, %10743
  %10767 = fmul fast float %10766, 0x3FC5555560000000
  %10768 = fdiv fast float %10744, %10767
  %10769 = fsub fast float %10763, %10768
  %10770 = fsub fast float 1.000000e+00, %10718
  %10771 = fadd fast float %10749, %10736
  %10772 = fmul fast float %10771, 0x3FC5555560000000
  %10773 = fdiv fast float %10750, %10772
  %10774 = fadd fast float %10773, %10770
  %10775 = fmul fast float %10757, %10711
  %10776 = fsub fast float %10632, %10775
  %10777 = fmul fast float %10762, %10711
  %10778 = fadd fast float %10777, %10632
  %10779 = fmul fast float %10774, %10712
  %10780 = fadd fast float %10779, %10633
  %10781 = fmul fast float %10769, %10712
  %10782 = fsub fast float %10633, %10781
  %10783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10776, float %10782, float %10700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10784 = extractvalue %dx.types.ResRet.f32 %10783, 0
  %10785 = extractvalue %dx.types.ResRet.f32 %10783, 1
  %10786 = extractvalue %dx.types.ResRet.f32 %10783, 2
  %10787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10778, float %10782, float %10700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10788 = extractvalue %dx.types.ResRet.f32 %10787, 0
  %10789 = extractvalue %dx.types.ResRet.f32 %10787, 1
  %10790 = extractvalue %dx.types.ResRet.f32 %10787, 2
  %10791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10776, float %10780, float %10700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10792 = extractvalue %dx.types.ResRet.f32 %10791, 0
  %10793 = extractvalue %dx.types.ResRet.f32 %10791, 1
  %10794 = extractvalue %dx.types.ResRet.f32 %10791, 2
  %10795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10778, float %10780, float %10700, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10796 = extractvalue %dx.types.ResRet.f32 %10795, 0
  %10797 = extractvalue %dx.types.ResRet.f32 %10795, 1
  %10798 = extractvalue %dx.types.ResRet.f32 %10795, 2
  %10799 = fsub fast float %10792, %10784
  %10800 = fsub fast float %10793, %10785
  %10801 = fsub fast float %10794, %10786
  %10802 = fmul fast float %10799, %10772
  %10803 = fmul fast float %10800, %10772
  %10804 = fmul fast float %10801, %10772
  %10805 = fadd fast float %10802, %10784
  %10806 = fadd fast float %10803, %10785
  %10807 = fadd fast float %10804, %10786
  %10808 = fsub fast float %10796, %10788
  %10809 = fsub fast float %10797, %10789
  %10810 = fsub fast float %10798, %10790
  %10811 = fmul fast float %10808, %10772
  %10812 = fmul fast float %10809, %10772
  %10813 = fmul fast float %10810, %10772
  %10814 = fsub fast float %10788, %10805
  %10815 = fadd fast float %10814, %10811
  %10816 = fsub fast float %10789, %10806
  %10817 = fadd fast float %10816, %10812
  %10818 = fsub fast float %10790, %10807
  %10819 = fadd fast float %10818, %10813
  %10820 = fmul fast float %10815, %10760
  %10821 = fmul fast float %10817, %10760
  %10822 = fmul fast float %10819, %10760
  %10823 = fadd fast float %10820, %10805
  %10824 = fadd fast float %10821, %10806
  %10825 = fadd fast float %10822, %10807
  %10826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10827 = extractvalue %dx.types.CBufRet.f32 %10826, 1
  %10828 = fmul fast float %10823, %10827
  %10829 = fmul fast float %10824, %10827
  %10830 = fmul fast float %10825, %10827
  br label %10831

; <label>:10831                                   ; preds = %10662, %10619
  %10832 = phi float [ %10702, %10662 ], [ 1.000000e+00, %10619 ]
  %10833 = phi float [ %10703, %10662 ], [ 1.000000e+00, %10619 ]
  %10834 = phi float [ %10704, %10662 ], [ 1.000000e+00, %10619 ]
  %10835 = phi float [ %10828, %10662 ], [ 0.000000e+00, %10619 ]
  %10836 = phi float [ %10829, %10662 ], [ 0.000000e+00, %10619 ]
  %10837 = phi float [ %10830, %10662 ], [ 0.000000e+00, %10619 ]
  %10838 = fmul fast float %10835, %9173
  %10839 = fmul fast float %10836, %9173
  %10840 = fmul fast float %10837, %9173
  %10841 = fmul fast float %10832, %10626
  %10842 = call float @dx.op.dot3.f32(i32 55, float %10832, float %10833, float %10834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10843 = call float @dx.op.dot3.f32(i32 55, float %10838, float %10839, float %10840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10844 = select i1 %232, float %10842, float %10832
  %10845 = select i1 %232, float %10842, float %10833
  %10846 = select i1 %232, float 1.000000e+00, float %10834
  %10847 = select i1 %232, float %10843, float %10838
  %10848 = select i1 %232, float 0.000000e+00, float %10839
  %10849 = select i1 %232, float 0.000000e+00, float %10840
  %10850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10851 = extractvalue %dx.types.CBufRet.i32 %10850, 3
  %10852 = and i32 %10851, 3
  %10853 = icmp ne i32 %10852, 0
  %10854 = and i32 %10851, 4
  %10855 = icmp ne i32 %10854, 0
  %10856 = and i1 %10853, %10855
  %10857 = and i1 %232, %10856
  br i1 %10857, label %10858, label %10864

; <label>:10858                                   ; preds = %10831
  %10859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10860 = extractvalue %dx.types.CBufRet.f32 %10859, 1
  %10861 = fadd fast float %10841, -1.000000e+00
  %10862 = fmul fast float %10860, %10861
  %10863 = fadd fast float %10862, 1.000000e+00
  br label %10864

; <label>:10864                                   ; preds = %10858, %10831
  %10865 = phi float [ %10863, %10858 ], [ %10841, %10831 ]
  %10866 = fadd fast float %10623, %10620
  %10867 = fmul fast float %10844, %10866
  %10868 = fadd fast float %10867, %10847
  %10869 = fadd fast float %10624, %10621
  %10870 = fmul fast float %10845, %10869
  %10871 = fadd fast float %10870, %10848
  %10872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10873 = extractvalue %dx.types.CBufRet.f32 %10872, 0
  br i1 %232, label %10874, label %10897

; <label>:10874                                   ; preds = %10864
  %10875 = fadd fast float %10868, %10871
  %10876 = fmul fast float %10873, %10875
  %10877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10878 = extractvalue %dx.types.CBufRet.f32 %10877, 3
  %10879 = extractvalue %dx.types.CBufRet.f32 %9177, 1
  %10880 = fsub fast float %9182, %9176
  %10881 = fadd fast float %10880, %9183
  %10882 = fsub fast float %10881, %10879
  %10883 = extractvalue %dx.types.CBufRet.f32 %9177, 2
  %10884 = fmul fast float %10882, %10883
  %10885 = call float @dx.op.unary.f32(i32 7, float %10884)  ; Saturate(value)
  %10886 = fsub fast float %10885, %10878
  %10887 = fmul fast float %10886, %10865
  %10888 = fadd fast float %10887, %10878
  %10889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10890 = extractvalue %dx.types.CBufRet.f32 %10889, 0
  %10891 = fsub fast float %10888, %10890
  %10892 = fmul fast float %10891, 1.000000e+01
  %10893 = call float @dx.op.unary.f32(i32 7, float %10892)  ; Saturate(value)
  %10894 = fmul fast float %10893, %9172
  %10895 = fadd fast float %10894, %9173
  %10896 = fmul fast float %10895, %10888
  br label %10921

; <label>:10897                                   ; preds = %10864
  %10898 = fadd fast float %10625, %10622
  %10899 = fmul fast float %10846, %10898
  %10900 = fadd fast float %10899, %10849
  %10901 = fmul fast float %10873, %10868
  %10902 = fmul fast float %10873, %10871
  %10903 = fmul fast float %10873, %10900
  %10904 = call float @dx.op.binary.f32(i32 35, float %10902, float %10903)  ; FMax(a,b)
  %10905 = call float @dx.op.binary.f32(i32 35, float %10901, float %10904)  ; FMax(a,b)
  %10906 = call float @dx.op.binary.f32(i32 35, float %10905, float %9173)  ; FMax(a,b)
  %10907 = fcmp fast ugt float %10906, 0x3F10000000000000
  br i1 %10907, label %10909, label %10908

; <label>:10908                                   ; preds = %10897
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10909

; <label>:10909                                   ; preds = %10908, %10897
  %10910 = add i32 %62, 356
  %10911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10910, i32 undef)  ; BufferLoad(srv,index,wot)
  %10912 = extractvalue %dx.types.ResRet.i32 %10911, 0
  %10913 = and i32 %10912, 32
  %10914 = icmp eq i32 %10913, 0
  br i1 %10914, label %10921, label %10915

; <label>:10915                                   ; preds = %10909
  %10916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10917 = extractvalue %dx.types.CBufRet.f32 %10916, 0
  %10918 = fmul fast float %10917, 0x3FE99999A0000000
  %10919 = fadd fast float %10917, %10901
  %10920 = fadd fast float %10918, %10903
  br label %10921

; <label>:10921                                   ; preds = %10915, %10909, %10874
  %10922 = phi float [ %10876, %10874 ], [ %10919, %10915 ], [ %10901, %10909 ]
  %10923 = phi float [ %10896, %10874 ], [ %10902, %10915 ], [ %10902, %10909 ]
  %10924 = phi float [ %10895, %10874 ], [ %10920, %10915 ], [ %10903, %10909 ]
  %10925 = phi float [ %10895, %10874 ], [ %9173, %10915 ], [ %9173, %10909 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10926 = call float @dx.op.binary.f32(i32 36, float %10922, float 3.225500e+04)  ; FMin(a,b)
  %10927 = call float @dx.op.binary.f32(i32 36, float %10923, float 3.225500e+04)  ; FMin(a,b)
  %10928 = call float @dx.op.binary.f32(i32 36, float %10924, float 3.225500e+04)  ; FMin(a,b)
  %10929 = call float @dx.op.binary.f32(i32 36, float %10925, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10929)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

