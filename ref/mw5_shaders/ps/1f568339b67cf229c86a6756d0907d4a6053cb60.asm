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
; shader hash: 292a54a264aebe7c825b06763d9a7e36
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
  %426 = add i32 %62, 552
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
  br i1 %482, label %1185, label %483

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
  %702 = add i32 %62, 504
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
  %754 = add i32 %62, 488
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
  %778 = add i32 %62, 440
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
  %801 = add i32 %62, 520
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
  %999 = add i32 %62, 456
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
  %1083 = add i32 %62, 472
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
  %1121 = and i32 %1120, 10240
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1167, label %1123

; <label>:1123                                    ; preds = %1115
  %1124 = add i32 %62, 536
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 1048576
  %1135 = icmp ne i32 %1134, 0
  %1136 = and i32 %1133, 8192
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1153, label %1138

; <label>:1138                                    ; preds = %1123
  %1139 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1140 = select i1 %1135, float %1139, float %1130
  %1141 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1142 = select i1 %1135, float %1141, float %1130
  %1143 = add i32 %62, 96
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80101020000000
  %1150 = fmul fast float %1149, %1142
  %1151 = fmul fast float %1149, %1130
  %1152 = fmul fast float %1149, %1140
  br label %1153

; <label>:1153                                    ; preds = %1138, %1123
  %1154 = phi float [ %1150, %1138 ], [ 0.000000e+00, %1123 ]
  %1155 = phi float [ %1151, %1138 ], [ 0.000000e+00, %1123 ]
  %1156 = phi float [ %1152, %1138 ], [ 0.000000e+00, %1123 ]
  %1157 = and i32 %1133, 2048
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1167, label %1159

; <label>:1159                                    ; preds = %1153
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = shl i32 %1161, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1164, %1131
  %1166 = call float @dx.op.binary.f32(i32 35, float %1165, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1167

; <label>:1167                                    ; preds = %1159, %1153, %1115
  %1168 = phi float [ %1154, %1159 ], [ %1154, %1153 ], [ 0.000000e+00, %1115 ]
  %1169 = phi float [ %1155, %1159 ], [ %1155, %1153 ], [ 0.000000e+00, %1115 ]
  %1170 = phi float [ %1156, %1159 ], [ %1156, %1153 ], [ 0.000000e+00, %1115 ]
  %1171 = phi float [ %1166, %1159 ], [ 0x3F70101020000000, %1153 ], [ 0x3F70101020000000, %1115 ]
  %1172 = add i32 %62, 96
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = lshr i32 %1174, 8
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = fmul fast float %1179, %1180
  %1182 = fadd fast float %1181, %1176
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br label %1185

; <label>:1185                                    ; preds = %1167, %468
  %1186 = phi float [ 0.000000e+00, %468 ], [ %1069, %1167 ]
  %1187 = phi float [ 0.000000e+00, %468 ], [ %1070, %1167 ]
  %1188 = phi float [ 0.000000e+00, %468 ], [ %988, %1167 ]
  %1189 = phi float [ 0.000000e+00, %468 ], [ %989, %1167 ]
  %1190 = phi float [ 0.000000e+00, %468 ], [ %990, %1167 ]
  %1191 = phi float [ 0.000000e+00, %468 ], [ %1116, %1167 ]
  %1192 = phi float [ 0.000000e+00, %468 ], [ %1117, %1167 ]
  %1193 = phi float [ 0.000000e+00, %468 ], [ %1118, %1167 ]
  %1194 = phi float [ 0.000000e+00, %468 ], [ %1168, %1167 ]
  %1195 = phi float [ 0.000000e+00, %468 ], [ %1169, %1167 ]
  %1196 = phi float [ 0.000000e+00, %468 ], [ %1170, %1167 ]
  %1197 = phi float [ 0.000000e+00, %468 ], [ %974, %1167 ]
  %1198 = phi float [ 0.000000e+00, %468 ], [ %770, %1167 ]
  %1199 = phi float [ 0.000000e+00, %468 ], [ %1068, %1167 ]
  %1200 = phi float [ 0.000000e+00, %468 ], [ %1071, %1167 ]
  %1201 = phi float [ 0.000000e+00, %468 ], [ %1171, %1167 ]
  %1202 = phi float [ 0.000000e+00, %468 ], [ %1184, %1167 ]
  br i1 %416, label %2131, label %1203

; <label>:1203                                    ; preds = %1185
  %1204 = icmp ult i32 %474, 2
  %1205 = add i32 %62, 40
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %62, 44
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = or i32 %1210, %1207
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %2131, label %1213

; <label>:1213                                    ; preds = %1203
  %1214 = and i32 %1207, 262144
  %1215 = icmp ne i32 %1214, 0
  %1216 = select i1 %1215, float %65, float 1.000000e+00
  %1217 = select i1 %1215, float %66, float 0.000000e+00
  %1218 = select i1 %1215, float %67, float 0.000000e+00
  %1219 = select i1 %1215, float %68, float 1.000000e+00
  %1220 = select i1 %1215, float %69, float %90
  %1221 = select i1 %1215, float %70, float %91
  %1222 = add i32 %62, 300
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = fmul fast float %1226, 0x3F50624DE0000000
  %1228 = add i32 %62, 104
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = and i32 %1231, 255
  %1233 = lshr i32 %1230, 24
  %1234 = add i32 %62, 308
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 65535
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = lshr i32 %1236, 16
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = add i32 %62, 48
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 22
  %1245 = shl nuw nsw i32 %1244, 5
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = shl i32 %1243, 4
  %1248 = and i32 %1247, 32752
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = lshr i32 %1243, 7
  %1251 = and i32 %1250, 32752
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 3
  %1255 = fmul fast float %1254, 1.000000e+03
  %1256 = fmul fast float %326, %1255
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = fadd fast float %1257, %316
  %1259 = fmul fast float %327, %1255
  %1260 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1261 = fadd fast float %1260, %318
  %1262 = fmul fast float %1227, %1255
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fmul fast float %1263, 0x401921FB60000000
  %1265 = fadd fast float %1264, %1246
  %1266 = call float @dx.op.unary.f32(i32 13, float %1265)  ; Sin(value)
  %1267 = call float @dx.op.unary.f32(i32 12, float %1265)  ; Cos(value)
  %1268 = fsub fast float -0.000000e+00, %1266
  %1269 = fadd fast float %1220, -5.000000e-01
  %1270 = fadd fast float %1221, -5.000000e-01
  %1271 = fmul fast float %1238, %1269
  %1272 = fmul fast float %1240, %1270
  %1273 = fadd fast float %1271, 5.000000e-01
  %1274 = fadd fast float %1272, 5.000000e-01
  %1275 = fmul fast float %1249, %1273
  %1276 = fmul fast float %1252, %1274
  %1277 = fmul fast float %1267, %1275
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %1276, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1266, %1275
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1267, float %1276, float %1279)  ; FMad(a,b,c)
  %1281 = fadd fast float %1258, %1278
  %1282 = fadd fast float %1261, %1280
  %1283 = icmp ugt i32 %1232, 1
  %1284 = icmp ugt i32 %1230, 33554431
  %1285 = or i1 %1284, %1283
  br i1 %1285, label %1286, label %1311

; <label>:1286                                    ; preds = %1213
  %1287 = add i32 %62, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = fmul fast float %1254, %1291
  %1293 = call float @dx.op.unary.f32(i32 22, float %1292)  ; Frc(value)
  %1294 = mul nuw nsw i32 %1232, %1233
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1293, %1295
  %1297 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1298 = fptoui float %1297 to i32
  %1299 = urem i32 %1298, %1232
  %1300 = udiv i32 %1298, %1233
  %1301 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1302 = call float @dx.op.unary.f32(i32 22, float %1282)  ; Frc(value)
  %1303 = uitofp i32 %1299 to float
  %1304 = uitofp i32 %1300 to float
  %1305 = fadd fast float %1301, %1303
  %1306 = fadd fast float %1302, %1304
  %1307 = uitofp i32 %1232 to float
  %1308 = uitofp i32 %1233 to float
  %1309 = fdiv fast float %1305, %1307
  %1310 = fdiv fast float %1306, %1308
  br label %1311

; <label>:1311                                    ; preds = %1286, %1213
  %1312 = phi float [ %1309, %1286 ], [ %1281, %1213 ]
  %1313 = phi float [ %1310, %1286 ], [ %1282, %1213 ]
  %1314 = and i32 %1207, 16777216
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1425, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1321 = fadd fast float %1318, %170
  %1322 = fadd fast float %1319, %171
  %1323 = fadd fast float %1320, %172
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = icmp eq i32 %63, 65535
  br i1 %1327, label %1422, label %1328

; <label>:1328                                    ; preds = %1316
  %1329 = lshr i32 %63, 1
  %1330 = shl i32 %1329, 2
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %63, 1
  %1334 = icmp ne i32 %1333, 0
  %1335 = lshr i32 %1332, 16
  %1336 = and i32 %1332, 65535
  %1337 = select i1 %1334, i32 %1335, i32 %1336
  %1338 = icmp eq i32 %1337, 65535
  br i1 %1338, label %1418, label %1339

; <label>:1339                                    ; preds = %1328
  %1340 = mul nuw nsw i32 %1337, 40
  %1341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = add nuw nsw i32 %1340, 12
  %1346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = add nuw nsw i32 %1340, 24
  %1351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = add nuw nsw i32 %1340, 36
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = fsub fast float %1321, %1342
  %1359 = fsub fast float %1322, %1343
  %1360 = fsub fast float %1323, %1344
  %1361 = fmul fast float %1357, %1358
  %1362 = fmul fast float %1357, %1359
  %1363 = fmul fast float %1357, %1360
  %1364 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1365 = call float @dx.op.unary.f32(i32 27, float %1362)  ; Round_ni(value)
  %1366 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fmul fast float %1367, %1347
  %1371 = fmul fast float %1368, %1348
  %1372 = fmul fast float %1369, %1349
  %1373 = shl i32 %63, 2
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1379 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1380 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1377, %dx.types.Handle %55, float %1378, float %1379, float %1380, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = fmul fast float %1382, 1.023000e+03
  %1386 = fmul fast float %1383, 1.023000e+03
  %1387 = fmul fast float %1384, 1.023000e+03
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = call float @dx.op.unary.f32(i32 27, float %1388)  ; Round_ni(value)
  %1392 = call float @dx.op.unary.f32(i32 27, float %1389)  ; Round_ni(value)
  %1393 = call float @dx.op.unary.f32(i32 27, float %1390)  ; Round_ni(value)
  %1394 = fsub fast float %1361, %1364
  %1395 = fsub fast float %1362, %1365
  %1396 = fsub fast float %1363, %1366
  %1397 = fmul fast float %1394, 7.500000e-01
  %1398 = fmul fast float %1395, 7.500000e-01
  %1399 = fmul fast float %1396, 7.500000e-01
  %1400 = fadd fast float %1364, 1.250000e-01
  %1401 = fadd fast float %1400, %1397
  %1402 = fadd fast float %1401, %1391
  %1403 = fadd fast float %1365, 1.250000e-01
  %1404 = fadd fast float %1403, %1398
  %1405 = fadd fast float %1404, %1392
  %1406 = fadd fast float %1366, 1.250000e-01
  %1407 = fadd fast float %1406, %1399
  %1408 = fadd fast float %1407, %1393
  %1409 = fmul fast float %1402, %1352
  %1410 = fmul fast float %1405, %1353
  %1411 = fmul fast float %1408, %1354
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1415, %dx.types.Handle %53, float %1409, float %1410, float %1411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  br label %1418

; <label>:1418                                    ; preds = %1339, %1328
  %1419 = phi float [ %1417, %1339 ], [ -1.000000e+00, %1328 ]
  %1420 = fadd fast float %1419, %1326
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  br label %1422

; <label>:1422                                    ; preds = %1418, %1316
  %1423 = phi float [ %1421, %1418 ], [ %1326, %1316 ]
  %1424 = fmul fast float %1423, %471
  br label %1425

; <label>:1425                                    ; preds = %1422, %1311
  %1426 = phi float [ %1424, %1422 ], [ %471, %1311 ]
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 256
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1477, label %1431

; <label>:1431                                    ; preds = %1425
  %1432 = add i32 %62, 508
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = add i32 %62, 116
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = shl i32 %1441, 4
  %1443 = and i32 %1442, 32752
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %1441, 7
  %1446 = and i32 %1445, 32752
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = fsub fast float 1.000000e+00, %1426
  %1449 = call float @dx.op.binary.f32(i32 35, float %1448, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1450 = bitcast float %1426 to i32
  %1451 = sitofp i32 %1450 to float
  %1452 = fadd fast float %1451, 0xC1CFBF8940000000
  %1453 = fmul fast float %1447, %1452
  %1454 = fadd fast float %1453, 0x41CFBF8940000000
  %1455 = fptosi float %1454 to i32
  %1456 = bitcast i32 %1455 to float
  %1457 = bitcast float %1449 to i32
  %1458 = sitofp i32 %1457 to float
  %1459 = fadd fast float %1458, 0xC1CFBF8940000000
  %1460 = fmul fast float %1459, %1447
  %1461 = fadd fast float %1460, 0x41CFBF8940000000
  %1462 = fptosi float %1461 to i32
  %1463 = bitcast i32 %1462 to float
  %1464 = fmul fast float %1456, %1444
  %1465 = fmul fast float %1463, %1444
  %1466 = fsub fast float %1449, %1464
  %1467 = fadd fast float %1465, %1449
  %1468 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1470 = fsub fast float %1438, %1468
  %1471 = fsub fast float %1469, %1468
  %1472 = bitcast float %1471 to i32
  %1473 = sub nsw i32 2129859010, %1472
  %1474 = bitcast i32 %1473 to float
  %1475 = fmul fast float %1474, %1470
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br label %1477

; <label>:1477                                    ; preds = %1431, %1425
  %1478 = phi float [ %1476, %1431 ], [ %1426, %1425 ]
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 128
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1499, label %1483

; <label>:1483                                    ; preds = %1477
  %1484 = add i32 %62, 492
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 524288
  %1494 = icmp ne i32 %1493, 0
  %1495 = fcmp fast ogt float %1490, 0x3FE0101020000000
  %1496 = select i1 %1495, float 1.000000e+00, float 0.000000e+00
  %1497 = select i1 %1494, float %1496, float %1490
  %1498 = fmul fast float %1497, %1478
  br label %1499

; <label>:1499                                    ; preds = %1483, %1477
  %1500 = phi float [ %1498, %1483 ], [ %1478, %1477 ]
  %1501 = fcmp fast ult float %1500, 0x3F70101020000000
  br i1 %1501, label %2131, label %1502

; <label>:1502                                    ; preds = %1499
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 16
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1705, label %1507

; <label>:1507                                    ; preds = %1502
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = add i32 %62, 444
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = and i32 %1509, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = lshr i32 %1509, 8
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1519, %1521
  %1526 = fadd fast float %1525, %1524
  %1527 = fmul fast float %1526, 0x3F70101000000000
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 512
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1540, label %1532

; <label>:1532                                    ; preds = %1507
  %1533 = add i32 %62, 524
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %1535, 0
  %1537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1537, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  br label %1540

; <label>:1540                                    ; preds = %1532, %1507
  %1541 = phi float [ %1539, %1532 ], [ 1.000000e+00, %1507 ]
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 33554432
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1652, label %1546

; <label>:1546                                    ; preds = %1540
  %1547 = add i32 %62, 240
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = lshr i32 %1549, 16
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = add i32 %62, 244
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 65535
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 24
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = and i32 %1560, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = lshr i32 %1560, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = lshr i32 %1560, 16
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = add i32 %62, 236
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 24
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = and i32 %1577, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = lshr i32 %1577, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1577, 16
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = bitcast float %1516 to i32
  %1593 = ashr i32 %1592, 1
  %1594 = sub nsw i32 1597463174, %1593
  %1595 = bitcast i32 %1594 to float
  %1596 = fmul fast float %1516, 5.000000e-01
  %1597 = fmul fast float %1595, %1595
  %1598 = fmul fast float %1597, %1596
  %1599 = fsub fast float 1.500000e+00, %1598
  %1600 = fmul fast float %1595, %1516
  %1601 = fmul fast float %1600, %1599
  %1602 = bitcast float %1517 to i32
  %1603 = ashr i32 %1602, 1
  %1604 = sub nsw i32 1597463174, %1603
  %1605 = bitcast i32 %1604 to float
  %1606 = fmul fast float %1517, 5.000000e-01
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1607, %1606
  %1609 = fsub fast float 1.500000e+00, %1608
  %1610 = fmul fast float %1605, %1517
  %1611 = fmul fast float %1610, %1609
  %1612 = bitcast float %1518 to i32
  %1613 = ashr i32 %1612, 1
  %1614 = sub nsw i32 1597463174, %1613
  %1615 = bitcast i32 %1614 to float
  %1616 = fmul fast float %1518, 5.000000e-01
  %1617 = fmul fast float %1615, %1615
  %1618 = fmul fast float %1617, %1616
  %1619 = fsub fast float 1.500000e+00, %1618
  %1620 = fmul fast float %1615, %1518
  %1621 = fmul fast float %1620, %1619
  %1622 = fsub fast float %1601, %1583
  %1623 = fsub fast float %1611, %1587
  %1624 = fsub fast float %1621, %1591
  %1625 = fmul fast float %1622, %1551
  %1626 = fmul fast float %1623, %1553
  %1627 = fmul fast float %1624, %1558
  %1628 = fadd fast float %1625, %1566
  %1629 = fadd fast float %1626, %1570
  %1630 = fadd fast float %1627, %1574
  %1631 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1632 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1634 = fmul fast float %1631, %1631
  %1635 = fmul fast float %1632, %1632
  %1636 = fmul fast float %1633, %1633
  %1637 = fsub fast float %1634, %1516
  %1638 = fsub fast float %1635, %1517
  %1639 = fsub fast float %1636, %1518
  %1640 = fmul fast float %1637, %1541
  %1641 = fmul fast float %1638, %1541
  %1642 = fmul fast float %1639, %1541
  %1643 = fadd fast float %1640, %1516
  %1644 = fadd fast float %1641, %1517
  %1645 = fadd fast float %1642, %1518
  %1646 = fadd fast float %1563, %1527
  %1647 = fsub fast float %1646, %1580
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fsub fast float %1648, %1527
  %1650 = fmul fast float %1649, %1541
  %1651 = fadd fast float %1650, %1527
  br label %1705

; <label>:1652                                    ; preds = %1540
  %1653 = and i32 %1543, 134217728
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1689, label %1655

; <label>:1655                                    ; preds = %1652
  %1656 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1657 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1658 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1659 = fadd fast float %1656, -5.000000e-01
  %1660 = fadd fast float %1657, -5.000000e-01
  %1661 = fadd fast float %1658, -5.000000e-01
  %1662 = fmul fast float %1659, %1541
  %1663 = fmul fast float %1660, %1541
  %1664 = fmul fast float %1661, %1541
  %1665 = fadd fast float %1662, 5.000000e-01
  %1666 = fadd fast float %1663, 5.000000e-01
  %1667 = fadd fast float %1664, 5.000000e-01
  %1668 = call float @dx.op.unary.f32(i32 24, float %1516)  ; Sqrt(value)
  %1669 = call float @dx.op.unary.f32(i32 24, float %1517)  ; Sqrt(value)
  %1670 = call float @dx.op.unary.f32(i32 24, float %1518)  ; Sqrt(value)
  %1671 = fmul fast float %1665, 2.000000e+00
  %1672 = fsub fast float 1.000000e+00, %1671
  %1673 = fmul fast float %1672, %1668
  %1674 = fadd fast float %1673, %1671
  %1675 = fmul fast float %1674, %1668
  %1676 = fmul fast float %1666, 2.000000e+00
  %1677 = fsub fast float 1.000000e+00, %1676
  %1678 = fmul fast float %1677, %1669
  %1679 = fadd fast float %1678, %1676
  %1680 = fmul fast float %1679, %1669
  %1681 = fmul fast float %1667, 2.000000e+00
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1682, %1670
  %1684 = fadd fast float %1683, %1681
  %1685 = fmul fast float %1684, %1670
  %1686 = fmul fast float %1675, %1675
  %1687 = fmul fast float %1680, %1680
  %1688 = fmul fast float %1685, %1685
  br label %1705

; <label>:1689                                    ; preds = %1652
  %1690 = fmul fast float %303, %303
  %1691 = fmul fast float %307, %307
  %1692 = fmul fast float %311, %311
  %1693 = fadd fast float %1690, -1.000000e+00
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = fadd fast float %1692, -1.000000e+00
  %1696 = fmul fast float %1541, %1693
  %1697 = fmul fast float %1541, %1694
  %1698 = fmul fast float %1541, %1695
  %1699 = fadd fast float %1696, 1.000000e+00
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fadd fast float %1698, 1.000000e+00
  %1702 = fmul fast float %1699, %1516
  %1703 = fmul fast float %1700, %1517
  %1704 = fmul fast float %1701, %1518
  br label %1705

; <label>:1705                                    ; preds = %1689, %1655, %1546, %1502
  %1706 = phi float [ %1651, %1546 ], [ %1527, %1655 ], [ %1527, %1689 ], [ 0x3FA23C0BE0000000, %1502 ]
  %1707 = phi float [ %1643, %1546 ], [ %1686, %1655 ], [ %1702, %1689 ], [ 1.000000e+00, %1502 ]
  %1708 = phi float [ %1644, %1546 ], [ %1687, %1655 ], [ %1703, %1689 ], [ 1.000000e+00, %1502 ]
  %1709 = phi float [ %1645, %1546 ], [ %1688, %1655 ], [ %1704, %1689 ], [ 1.000000e+00, %1502 ]
  %1710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.i32 %1710, 1
  %1712 = and i32 %1711, 1
  %1713 = icmp ne i32 %1712, 0
  %1714 = add i32 %62, 356
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 32
  %1718 = icmp ne i32 %1717, 0
  %1719 = and i1 %1713, %1718
  %1720 = select i1 %1719, float 1.000000e+00, float %1707
  %1721 = select i1 %1719, float 0x3FD3333340000000, float %1708
  %1722 = select i1 %1719, float 0x3FD3333340000000, float %1709
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 32
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1799, label %1727

; <label>:1727                                    ; preds = %1705
  %1728 = add i32 %62, 108
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %62, 460
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = add i32 %1733, 0
  %1735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1735, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.f32 %1736, 2
  %1740 = extractvalue %dx.types.ResRet.f32 %1736, 3
  %1741 = and i32 %1730, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = lshr i32 %1730, 8
  %1744 = and i32 %1743, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = lshr i32 %1730, 16
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = fmul fast float %1748, 0x3F70101000000000
  %1750 = fmul fast float %1737, %1742
  %1751 = fadd fast float %1750, %1745
  %1752 = fmul fast float %1751, 0x3F70101000000000
  %1753 = fadd fast float %1738, -5.000000e-01
  %1754 = fadd fast float %1740, -5.000000e-01
  %1755 = fmul fast float %1753, %1749
  %1756 = fmul fast float %1754, %1749
  %1757 = fadd fast float %1755, 5.000000e-01
  %1758 = fadd fast float %1756, 5.000000e-01
  %1759 = fmul fast float %1757, 2.000000e+00
  %1760 = fadd fast float %1759, -1.000000e+00
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fadd fast float %1761, -1.000000e+00
  %1763 = fadd fast float %1760, %1762
  %1764 = fmul fast float %1763, 5.000000e-01
  %1765 = fsub fast float %1760, %1762
  %1766 = fmul fast float %1765, 5.000000e-01
  %1767 = call float @dx.op.unary.f32(i32 6, float %1764)  ; FAbs(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call float @dx.op.unary.f32(i32 6, float %1766)  ; FAbs(value)
  %1770 = fsub fast float %1768, %1769
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1766, float %1770, float %1764, float %1766, float %1770)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.unary.f32(i32 25, float %1771)  ; Rsqrt(value)
  %1773 = fmul fast float %1764, %1772
  %1774 = fmul fast float %1766, %1772
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 67108864
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1795, label %1779

; <label>:1779                                    ; preds = %1727
  %1780 = add i32 %62, 296
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 65535
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 65535
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = lshr i32 %1782, 16
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fsub fast float %1752, %1790
  %1792 = fmul fast float %1791, %1784
  %1793 = fadd fast float %1792, %1788
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br label %1795

; <label>:1795                                    ; preds = %1779, %1727
  %1796 = phi float [ %1794, %1779 ], [ %1752, %1727 ]
  %1797 = call float @dx.op.dot2.f32(i32 54, float %1773, float %1774, float %1216, float %1217)  ; Dot2(ax,ay,bx,by)
  %1798 = call float @dx.op.dot2.f32(i32 54, float %1773, float %1774, float %1218, float %1219)  ; Dot2(ax,ay,bx,by)
  br label %1799

; <label>:1799                                    ; preds = %1795, %1705
  %1800 = phi float [ %1796, %1795 ], [ 0x3FD6666660000000, %1705 ]
  %1801 = phi float [ %1797, %1795 ], [ 0.000000e+00, %1705 ]
  %1802 = phi float [ %1798, %1795 ], [ 0.000000e+00, %1705 ]
  %1803 = phi float [ %1739, %1795 ], [ 1.000000e+00, %1705 ]
  %1804 = add i32 %62, 176
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = lshr i32 %1806, 22
  %1808 = shl nuw nsw i32 %1807, 5
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 64
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1847, label %1814

; <label>:1814                                    ; preds = %1799
  %1815 = add i32 %62, 476
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = add i32 %1817, 0
  %1819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 131072
  %1823 = icmp eq i32 %1822, 0
  %1824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1819, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1824, 2
  %1828 = fmul fast float %1825, %291
  %1829 = fmul fast float %1826, %294
  %1830 = fmul fast float %1827, %297
  br i1 %1823, label %1837, label %1831

; <label>:1831                                    ; preds = %1814
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = fmul fast float %1833, %1828
  %1835 = fmul fast float %1833, %1829
  %1836 = fmul fast float %1833, %1830
  br label %1837

; <label>:1837                                    ; preds = %1831, %1814
  %1838 = phi float [ %1834, %1831 ], [ %1828, %1814 ]
  %1839 = phi float [ %1835, %1831 ], [ %1829, %1814 ]
  %1840 = phi float [ %1836, %1831 ], [ %1830, %1814 ]
  %1841 = fmul fast float %1838, %1809
  %1842 = select i1 %232, float %1841, float %1838
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1839, float %1840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = select i1 %232, float 0.000000e+00, float %1838
  %1845 = select i1 %232, float %1843, float %1839
  %1846 = select i1 %232, float 0.000000e+00, float %1840
  br label %1847

; <label>:1847                                    ; preds = %1837, %1799
  %1848 = phi float [ %1844, %1837 ], [ 0.000000e+00, %1799 ]
  %1849 = phi float [ %1845, %1837 ], [ 0.000000e+00, %1799 ]
  %1850 = phi float [ %1846, %1837 ], [ 0.000000e+00, %1799 ]
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 10240
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1899, label %1855

; <label>:1855                                    ; preds = %1847
  %1856 = add i32 %62, 540
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = add i32 %1858, 0
  %1860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1860, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 1048576
  %1867 = icmp ne i32 %1866, 0
  %1868 = and i32 %1865, 8192
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1885, label %1870

; <label>:1870                                    ; preds = %1855
  %1871 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1872 = select i1 %1867, float %1871, float %1862
  %1873 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1874 = select i1 %1867, float %1873, float %1862
  %1875 = add i32 %62, 112
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = and i32 %1878, 255
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1880, 0x3F80101020000000
  %1882 = fmul fast float %1881, %1874
  %1883 = fmul fast float %1881, %1862
  %1884 = fmul fast float %1881, %1872
  br label %1885

; <label>:1885                                    ; preds = %1870, %1855
  %1886 = phi float [ %1882, %1870 ], [ 0.000000e+00, %1855 ]
  %1887 = phi float [ %1883, %1870 ], [ 0.000000e+00, %1855 ]
  %1888 = phi float [ %1884, %1870 ], [ 0.000000e+00, %1855 ]
  %1889 = and i32 %1865, 2048
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1899, label %1891

; <label>:1891                                    ; preds = %1885
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = shl i32 %1893, 4
  %1895 = and i32 %1894, 32752
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = fmul fast float %1896, %1863
  %1898 = call float @dx.op.binary.f32(i32 35, float %1897, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1899

; <label>:1899                                    ; preds = %1891, %1885, %1847
  %1900 = phi float [ %1886, %1891 ], [ %1886, %1885 ], [ 0.000000e+00, %1847 ]
  %1901 = phi float [ %1887, %1891 ], [ %1887, %1885 ], [ 0.000000e+00, %1847 ]
  %1902 = phi float [ %1888, %1891 ], [ %1888, %1885 ], [ 0.000000e+00, %1847 ]
  %1903 = phi float [ %1898, %1891 ], [ 0x3F70101020000000, %1885 ], [ 0x3F70101020000000, %1847 ]
  %1904 = add i32 %62, 112
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = lshr i32 %1906, 8
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = fmul fast float %1911, %1912
  %1914 = fadd fast float %1913, %1908
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  br i1 %1204, label %1917, label %1925

; <label>:1917                                    ; preds = %1899
  %1918 = fsub fast float 1.000000e+00, %1500
  %1919 = fmul fast float %1918, %1188
  %1920 = fmul fast float %1918, %1189
  %1921 = fmul fast float %1918, %1190
  %1922 = fmul fast float %1918, %1191
  %1923 = fmul fast float %1918, %1192
  %1924 = fmul fast float %1918, %1193
  br label %1925

; <label>:1925                                    ; preds = %1917, %1899
  %1926 = phi float [ %1919, %1917 ], [ %1188, %1899 ]
  %1927 = phi float [ %1920, %1917 ], [ %1189, %1899 ]
  %1928 = phi float [ %1921, %1917 ], [ %1190, %1899 ]
  %1929 = phi float [ %1922, %1917 ], [ %1191, %1899 ]
  %1930 = phi float [ %1923, %1917 ], [ %1192, %1899 ]
  %1931 = phi float [ %1924, %1917 ], [ %1193, %1899 ]
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = and i32 %1933, 3
  %1935 = icmp eq i32 %1934, 3
  br i1 %1935, label %2014, label %1936

; <label>:1936                                    ; preds = %1925
  %1937 = and i32 %1933, 16
  %1938 = icmp ne i32 %1937, 0
  %1939 = select i1 %1938, float %1500, float 0.000000e+00
  %1940 = icmp eq i32 %1934, 0
  br i1 %1940, label %1941, label %1969

; <label>:1941                                    ; preds = %1936
  %1942 = and i32 %1933, 64
  %1943 = icmp ne i32 %1942, 0
  %1944 = select i1 %1943, float %1500, float 0.000000e+00
  %1945 = fsub fast float %1720, %1926
  %1946 = fsub fast float %1721, %1927
  %1947 = fsub fast float %1722, %1928
  %1948 = fmul fast float %1939, %1945
  %1949 = fmul fast float %1939, %1946
  %1950 = fmul fast float %1939, %1947
  %1951 = fadd fast float %1948, %1926
  %1952 = fadd fast float %1949, %1927
  %1953 = fadd fast float %1950, %1928
  %1954 = fsub fast float %1706, %1197
  %1955 = fmul fast float %1939, %1954
  %1956 = fadd fast float %1955, %1197
  %1957 = fsub fast float %1848, %1929
  %1958 = fsub fast float %1849, %1930
  %1959 = fsub fast float %1850, %1931
  %1960 = fmul fast float %1944, %1957
  %1961 = fmul fast float %1944, %1958
  %1962 = fmul fast float %1944, %1959
  %1963 = fadd fast float %1960, %1929
  %1964 = fadd fast float %1961, %1930
  %1965 = fadd fast float %1962, %1931
  %1966 = fsub fast float %1916, %1202
  %1967 = fmul fast float %1939, %1966
  %1968 = fadd fast float %1967, %1202
  br label %2014

; <label>:1969                                    ; preds = %1936
  %1970 = icmp eq i32 %1934, 1
  br i1 %1970, label %1971, label %1984

; <label>:1971                                    ; preds = %1969
  %1972 = fadd fast float %1720, -1.000000e+00
  %1973 = fadd fast float %1721, -1.000000e+00
  %1974 = fadd fast float %1722, -1.000000e+00
  %1975 = fmul fast float %1939, %1972
  %1976 = fmul fast float %1939, %1973
  %1977 = fmul fast float %1939, %1974
  %1978 = fadd fast float %1975, 1.000000e+00
  %1979 = fadd fast float %1976, 1.000000e+00
  %1980 = fadd fast float %1977, 1.000000e+00
  %1981 = fmul fast float %1978, %1926
  %1982 = fmul fast float %1979, %1927
  %1983 = fmul fast float %1980, %1928
  br label %2014

; <label>:1984                                    ; preds = %1969
  %1985 = icmp eq i32 %1934, 2
  br i1 %1985, label %1986, label %2014

; <label>:1986                                    ; preds = %1984
  %1987 = call float @dx.op.unary.f32(i32 24, float %1720)  ; Sqrt(value)
  %1988 = call float @dx.op.unary.f32(i32 24, float %1721)  ; Sqrt(value)
  %1989 = call float @dx.op.unary.f32(i32 24, float %1722)  ; Sqrt(value)
  %1990 = fadd fast float %1987, -5.000000e-01
  %1991 = fadd fast float %1988, -5.000000e-01
  %1992 = fadd fast float %1989, -5.000000e-01
  %1993 = fmul fast float %1990, %1939
  %1994 = fmul fast float %1991, %1939
  %1995 = fmul fast float %1992, %1939
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fmul fast float %1996, 2.000000e+00
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = fmul fast float %2000, %1926
  %2002 = fadd fast float %2001, %1999
  %2003 = fmul fast float %2002, %1926
  %2004 = fmul fast float %1997, 2.000000e+00
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = fmul fast float %2005, %1927
  %2007 = fadd fast float %2006, %2004
  %2008 = fmul fast float %2007, %1927
  %2009 = fmul fast float %1998, 2.000000e+00
  %2010 = fsub fast float 1.000000e+00, %2009
  %2011 = fmul fast float %2010, %1928
  %2012 = fadd fast float %2011, %2009
  %2013 = fmul fast float %2012, %1928
  br label %2014

; <label>:2014                                    ; preds = %1986, %1984, %1971, %1941, %1925
  %2015 = phi float [ %1926, %1925 ], [ %2003, %1986 ], [ %1926, %1984 ], [ %1981, %1971 ], [ %1951, %1941 ]
  %2016 = phi float [ %1927, %1925 ], [ %2008, %1986 ], [ %1927, %1984 ], [ %1982, %1971 ], [ %1952, %1941 ]
  %2017 = phi float [ %1928, %1925 ], [ %2013, %1986 ], [ %1928, %1984 ], [ %1983, %1971 ], [ %1953, %1941 ]
  %2018 = phi float [ %1929, %1925 ], [ %1929, %1986 ], [ %1929, %1984 ], [ %1929, %1971 ], [ %1963, %1941 ]
  %2019 = phi float [ %1930, %1925 ], [ %1930, %1986 ], [ %1930, %1984 ], [ %1930, %1971 ], [ %1964, %1941 ]
  %2020 = phi float [ %1931, %1925 ], [ %1931, %1986 ], [ %1931, %1984 ], [ %1931, %1971 ], [ %1965, %1941 ]
  %2021 = phi float [ %1197, %1925 ], [ %1197, %1986 ], [ %1197, %1984 ], [ %1197, %1971 ], [ %1956, %1941 ]
  %2022 = phi float [ %1202, %1925 ], [ %1202, %1986 ], [ %1202, %1984 ], [ %1202, %1971 ], [ %1968, %1941 ]
  %2023 = and i32 %1933, 12
  %2024 = icmp eq i32 %2023, 12
  br i1 %2024, label %2131, label %2025

; <label>:2025                                    ; preds = %2014
  %2026 = and i32 %1933, 2097184
  %2027 = icmp eq i32 %2026, 2097184
  %2028 = select i1 %2027, float %1500, float 0.000000e+00
  %2029 = and i32 %1933, 4194336
  %2030 = icmp eq i32 %2029, 4194336
  %2031 = select i1 %2030, float %1500, float 0.000000e+00
  %2032 = and i32 %1933, 8388640
  %2033 = icmp eq i32 %2032, 8388640
  %2034 = select i1 %2033, float %1500, float 0.000000e+00
  %2035 = and i32 %1933, 2048
  %2036 = icmp ne i32 %2035, 0
  %2037 = select i1 %2036, float %1500, float 0.000000e+00
  %2038 = and i32 %1933, 8192
  %2039 = icmp ne i32 %2038, 0
  %2040 = select i1 %2039, float %1500, float 0.000000e+00
  %2041 = icmp eq i32 %2023, 0
  br i1 %2041, label %2042, label %2067

; <label>:2042                                    ; preds = %2025
  %2043 = fsub fast float %1801, %1186
  %2044 = fsub fast float %1802, %1187
  %2045 = fmul fast float %2028, %2043
  %2046 = fmul fast float %2028, %2044
  %2047 = fadd fast float %2045, %1186
  %2048 = fadd fast float %2046, %1187
  %2049 = fsub fast float %1803, %1200
  %2050 = fmul fast float %2031, %2049
  %2051 = fadd fast float %2050, %1200
  %2052 = fsub fast float %1800, %1199
  %2053 = fmul fast float %2034, %2052
  %2054 = fadd fast float %2053, %1199
  %2055 = fsub fast float %1903, %1201
  %2056 = fmul fast float %2037, %2055
  %2057 = fadd fast float %2056, %1201
  %2058 = fsub fast float %1900, %1194
  %2059 = fsub fast float %1901, %1195
  %2060 = fsub fast float %1902, %1196
  %2061 = fmul fast float %2040, %2058
  %2062 = fmul fast float %2040, %2059
  %2063 = fmul fast float %2040, %2060
  %2064 = fadd fast float %2061, %1194
  %2065 = fadd fast float %2062, %1195
  %2066 = fadd fast float %2063, %1196
  br label %2131

; <label>:2067                                    ; preds = %2025
  %2068 = icmp eq i32 %2023, 4
  br i1 %2068, label %2069, label %2109

; <label>:2069                                    ; preds = %2067
  %2070 = fmul fast float %2028, %1801
  %2071 = fmul fast float %2028, %1802
  %2072 = fadd fast float %2070, %1186
  %2073 = fadd fast float %2071, %1187
  %2074 = call float @dx.op.binary.f32(i32 36, float %1200, float %1803)  ; FMin(a,b)
  %2075 = fsub fast float %2074, %1200
  %2076 = fmul fast float %2075, %2031
  %2077 = fadd fast float %2076, %1200
  %2078 = fadd fast float %1800, %1199
  %2079 = fmul fast float %2078, 0x3FF337FAE0000000
  %2080 = fmul fast float %1199, %1199
  %2081 = fmul fast float %1800, %1800
  %2082 = fadd fast float %2081, %2080
  %2083 = fmul fast float %2082, 0x3FE5152B00000000
  %2084 = fmul fast float %1199, 0xBFCC1F85E0000000
  %2085 = fmul fast float %2084, %1800
  %2086 = fadd fast float %2085, 0xBFE1363700000000
  %2087 = fadd fast float %2086, %2079
  %2088 = fsub fast float %2087, %2083
  %2089 = fmul fast float %2078, 0x3FBA6F0D00000000
  %2090 = fmul fast float %2082, 0x3FD0432880000000
  %2091 = fmul fast float %1199, 0xBFEF110800000000
  %2092 = fmul fast float %2091, %1800
  %2093 = fadd fast float %2092, 1.000000e+00
  %2094 = fsub fast float %2093, %2089
  %2095 = fadd fast float %2094, %2090
  %2096 = fdiv fast float %2088, %2095
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2098 = fsub fast float %2097, %1199
  %2099 = fmul fast float %2098, %2034
  %2100 = fadd fast float %2099, %1199
  %2101 = fmul fast float %2037, %1903
  %2102 = fadd fast float %2101, %1201
  %2103 = fmul fast float %2040, %1900
  %2104 = fmul fast float %2040, %1901
  %2105 = fmul fast float %2040, %1902
  %2106 = fadd fast float %2103, %1194
  %2107 = fadd fast float %2104, %1195
  %2108 = fadd fast float %2105, %1196
  br label %2131

; <label>:2109                                    ; preds = %2067
  %2110 = icmp eq i32 %2023, 8
  br i1 %2110, label %2111, label %2131

; <label>:2111                                    ; preds = %2109
  %2112 = fmul fast float %2028, %1801
  %2113 = fmul fast float %2028, %1802
  %2114 = fadd fast float %2112, %1186
  %2115 = fadd fast float %2113, %1187
  %2116 = call float @dx.op.binary.f32(i32 36, float %1200, float %1803)  ; FMin(a,b)
  %2117 = fsub fast float %2116, %1200
  %2118 = fmul fast float %2117, %2031
  %2119 = fadd fast float %2118, %1200
  %2120 = fsub fast float %1800, %1199
  %2121 = fmul fast float %2034, %2120
  %2122 = fadd fast float %2121, %1199
  %2123 = fmul fast float %2037, %1903
  %2124 = fadd fast float %2123, %1201
  %2125 = fmul fast float %2040, %1900
  %2126 = fmul fast float %2040, %1901
  %2127 = fmul fast float %2040, %1902
  %2128 = fadd fast float %2125, %1194
  %2129 = fadd fast float %2126, %1195
  %2130 = fadd fast float %2127, %1196
  br label %2131

; <label>:2131                                    ; preds = %2111, %2109, %2069, %2042, %2014, %1499, %1203, %1185
  %2132 = phi float [ %1186, %2014 ], [ %1186, %1499 ], [ %1186, %1185 ], [ %2114, %2111 ], [ %1186, %2109 ], [ %2072, %2069 ], [ %2047, %2042 ], [ %1186, %1203 ]
  %2133 = phi float [ %1187, %2014 ], [ %1187, %1499 ], [ %1187, %1185 ], [ %2115, %2111 ], [ %1187, %2109 ], [ %2073, %2069 ], [ %2048, %2042 ], [ %1187, %1203 ]
  %2134 = phi float [ %2015, %2014 ], [ %1188, %1499 ], [ %1188, %1185 ], [ %2015, %2111 ], [ %2015, %2109 ], [ %2015, %2069 ], [ %2015, %2042 ], [ %1188, %1203 ]
  %2135 = phi float [ %2016, %2014 ], [ %1189, %1499 ], [ %1189, %1185 ], [ %2016, %2111 ], [ %2016, %2109 ], [ %2016, %2069 ], [ %2016, %2042 ], [ %1189, %1203 ]
  %2136 = phi float [ %2017, %2014 ], [ %1190, %1499 ], [ %1190, %1185 ], [ %2017, %2111 ], [ %2017, %2109 ], [ %2017, %2069 ], [ %2017, %2042 ], [ %1190, %1203 ]
  %2137 = phi float [ %2018, %2014 ], [ %1191, %1499 ], [ %1191, %1185 ], [ %2018, %2111 ], [ %2018, %2109 ], [ %2018, %2069 ], [ %2018, %2042 ], [ %1191, %1203 ]
  %2138 = phi float [ %2019, %2014 ], [ %1192, %1499 ], [ %1192, %1185 ], [ %2019, %2111 ], [ %2019, %2109 ], [ %2019, %2069 ], [ %2019, %2042 ], [ %1192, %1203 ]
  %2139 = phi float [ %2020, %2014 ], [ %1193, %1499 ], [ %1193, %1185 ], [ %2020, %2111 ], [ %2020, %2109 ], [ %2020, %2069 ], [ %2020, %2042 ], [ %1193, %1203 ]
  %2140 = phi float [ %1194, %2014 ], [ %1194, %1499 ], [ %1194, %1185 ], [ %2128, %2111 ], [ %1194, %2109 ], [ %2106, %2069 ], [ %2064, %2042 ], [ %1194, %1203 ]
  %2141 = phi float [ %1195, %2014 ], [ %1195, %1499 ], [ %1195, %1185 ], [ %2129, %2111 ], [ %1195, %2109 ], [ %2107, %2069 ], [ %2065, %2042 ], [ %1195, %1203 ]
  %2142 = phi float [ %1196, %2014 ], [ %1196, %1499 ], [ %1196, %1185 ], [ %2130, %2111 ], [ %1196, %2109 ], [ %2108, %2069 ], [ %2066, %2042 ], [ %1196, %1203 ]
  %2143 = phi float [ %2021, %2014 ], [ %1197, %1499 ], [ %1197, %1185 ], [ %2021, %2111 ], [ %2021, %2109 ], [ %2021, %2069 ], [ %2021, %2042 ], [ %1197, %1203 ]
  %2144 = phi float [ %1199, %2014 ], [ %1199, %1499 ], [ %1199, %1185 ], [ %2122, %2111 ], [ %1199, %2109 ], [ %2100, %2069 ], [ %2054, %2042 ], [ %1199, %1203 ]
  %2145 = phi float [ %1200, %2014 ], [ %1200, %1499 ], [ %1200, %1185 ], [ %2119, %2111 ], [ %1200, %2109 ], [ %2077, %2069 ], [ %2051, %2042 ], [ %1200, %1203 ]
  %2146 = phi float [ %1201, %2014 ], [ %1201, %1499 ], [ %1201, %1185 ], [ %2124, %2111 ], [ %1201, %2109 ], [ %2102, %2069 ], [ %2057, %2042 ], [ %1201, %1203 ]
  %2147 = phi float [ %2022, %2014 ], [ %1202, %1499 ], [ %1202, %1185 ], [ %2022, %2111 ], [ %2022, %2109 ], [ %2022, %2069 ], [ %2022, %2042 ], [ %1202, %1203 ]
  br i1 %418, label %3076, label %2148

; <label>:2148                                    ; preds = %2131
  %2149 = icmp ult i32 %474, 3
  %2150 = add i32 %62, 56
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %62, 60
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = or i32 %2155, %2152
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %3076, label %2158

; <label>:2158                                    ; preds = %2148
  %2159 = and i32 %2152, 262144
  %2160 = icmp ne i32 %2159, 0
  %2161 = select i1 %2160, float %65, float 1.000000e+00
  %2162 = select i1 %2160, float %66, float 0.000000e+00
  %2163 = select i1 %2160, float %67, float 0.000000e+00
  %2164 = select i1 %2160, float %68, float 1.000000e+00
  %2165 = select i1 %2160, float %69, float %90
  %2166 = select i1 %2160, float %70, float %91
  %2167 = add i32 %62, 316
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fmul fast float %2171, 0x3F50624DE0000000
  %2173 = add i32 %62, 120
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = lshr i32 %2175, 16
  %2177 = and i32 %2176, 255
  %2178 = lshr i32 %2175, 24
  %2179 = add i32 %62, 324
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = lshr i32 %2181, 16
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = add i32 %62, 64
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = lshr i32 %2188, 22
  %2190 = shl nuw nsw i32 %2189, 5
  %2191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2190)  ; LegacyF16ToF32(value)
  %2192 = shl i32 %2188, 4
  %2193 = and i32 %2192, 32752
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = lshr i32 %2188, 7
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = fmul fast float %2199, 1.000000e+03
  %2201 = fmul fast float %368, %2200
  %2202 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2203 = fadd fast float %2202, %358
  %2204 = fmul fast float %369, %2200
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %360
  %2207 = fmul fast float %2172, %2200
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fmul fast float %2208, 0x401921FB60000000
  %2210 = fadd fast float %2209, %2191
  %2211 = call float @dx.op.unary.f32(i32 13, float %2210)  ; Sin(value)
  %2212 = call float @dx.op.unary.f32(i32 12, float %2210)  ; Cos(value)
  %2213 = fsub fast float -0.000000e+00, %2211
  %2214 = fadd fast float %2165, -5.000000e-01
  %2215 = fadd fast float %2166, -5.000000e-01
  %2216 = fmul fast float %2183, %2214
  %2217 = fmul fast float %2185, %2215
  %2218 = fadd fast float %2216, 5.000000e-01
  %2219 = fadd fast float %2217, 5.000000e-01
  %2220 = fmul fast float %2194, %2218
  %2221 = fmul fast float %2197, %2219
  %2222 = fmul fast float %2212, %2220
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2213, float %2221, float %2222)  ; FMad(a,b,c)
  %2224 = fmul fast float %2211, %2220
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2212, float %2221, float %2224)  ; FMad(a,b,c)
  %2226 = fadd fast float %2203, %2223
  %2227 = fadd fast float %2206, %2225
  %2228 = icmp ugt i32 %2177, 1
  %2229 = icmp ugt i32 %2175, 33554431
  %2230 = or i1 %2229, %2228
  br i1 %2230, label %2231, label %2256

; <label>:2231                                    ; preds = %2158
  %2232 = add i32 %62, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = lshr i32 %2234, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fmul fast float %2199, %2236
  %2238 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2239 = mul nuw nsw i32 %2177, %2178
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2238, %2240
  %2242 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2243 = fptoui float %2242 to i32
  %2244 = urem i32 %2243, %2177
  %2245 = udiv i32 %2243, %2178
  %2246 = call float @dx.op.unary.f32(i32 22, float %2226)  ; Frc(value)
  %2247 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2248 = uitofp i32 %2244 to float
  %2249 = uitofp i32 %2245 to float
  %2250 = fadd fast float %2246, %2248
  %2251 = fadd fast float %2247, %2249
  %2252 = uitofp i32 %2177 to float
  %2253 = uitofp i32 %2178 to float
  %2254 = fdiv fast float %2250, %2252
  %2255 = fdiv fast float %2251, %2253
  br label %2256

; <label>:2256                                    ; preds = %2231, %2158
  %2257 = phi float [ %2254, %2231 ], [ %2226, %2158 ]
  %2258 = phi float [ %2255, %2231 ], [ %2227, %2158 ]
  %2259 = and i32 %2152, 16777216
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2370, label %2261

; <label>:2261                                    ; preds = %2256
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = fadd fast float %2263, %170
  %2267 = fadd fast float %2264, %171
  %2268 = fadd fast float %2265, %172
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = icmp eq i32 %63, 65535
  br i1 %2272, label %2367, label %2273

; <label>:2273                                    ; preds = %2261
  %2274 = lshr i32 %63, 1
  %2275 = shl i32 %2274, 2
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %63, 1
  %2279 = icmp ne i32 %2278, 0
  %2280 = lshr i32 %2277, 16
  %2281 = and i32 %2277, 65535
  %2282 = select i1 %2279, i32 %2280, i32 %2281
  %2283 = icmp eq i32 %2282, 65535
  br i1 %2283, label %2363, label %2284

; <label>:2284                                    ; preds = %2273
  %2285 = mul nuw nsw i32 %2282, 40
  %2286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = add nuw nsw i32 %2285, 12
  %2291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = extractvalue %dx.types.ResRet.f32 %2291, 2
  %2295 = add nuw nsw i32 %2285, 24
  %2296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = add nuw nsw i32 %2285, 36
  %2301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = fsub fast float %2266, %2287
  %2304 = fsub fast float %2267, %2288
  %2305 = fsub fast float %2268, %2289
  %2306 = fmul fast float %2302, %2303
  %2307 = fmul fast float %2302, %2304
  %2308 = fmul fast float %2302, %2305
  %2309 = call float @dx.op.unary.f32(i32 27, float %2306)  ; Round_ni(value)
  %2310 = call float @dx.op.unary.f32(i32 27, float %2307)  ; Round_ni(value)
  %2311 = call float @dx.op.unary.f32(i32 27, float %2308)  ; Round_ni(value)
  %2312 = fadd fast float %2309, 5.000000e-01
  %2313 = fadd fast float %2310, 5.000000e-01
  %2314 = fadd fast float %2311, 5.000000e-01
  %2315 = fmul fast float %2312, %2292
  %2316 = fmul fast float %2313, %2293
  %2317 = fmul fast float %2314, %2294
  %2318 = shl i32 %63, 2
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call float @dx.op.unary.f32(i32 22, float %2315)  ; Frc(value)
  %2324 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2325 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2322, %dx.types.Handle %55, float %2323, float %2324, float %2325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = fmul fast float %2327, 1.023000e+03
  %2331 = fmul fast float %2328, 1.023000e+03
  %2332 = fmul fast float %2329, 1.023000e+03
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2337 = call float @dx.op.unary.f32(i32 27, float %2334)  ; Round_ni(value)
  %2338 = call float @dx.op.unary.f32(i32 27, float %2335)  ; Round_ni(value)
  %2339 = fsub fast float %2306, %2309
  %2340 = fsub fast float %2307, %2310
  %2341 = fsub fast float %2308, %2311
  %2342 = fmul fast float %2339, 7.500000e-01
  %2343 = fmul fast float %2340, 7.500000e-01
  %2344 = fmul fast float %2341, 7.500000e-01
  %2345 = fadd fast float %2309, 1.250000e-01
  %2346 = fadd fast float %2345, %2342
  %2347 = fadd fast float %2346, %2336
  %2348 = fadd fast float %2310, 1.250000e-01
  %2349 = fadd fast float %2348, %2343
  %2350 = fadd fast float %2349, %2337
  %2351 = fadd fast float %2311, 1.250000e-01
  %2352 = fadd fast float %2351, %2344
  %2353 = fadd fast float %2352, %2338
  %2354 = fmul fast float %2347, %2297
  %2355 = fmul fast float %2350, %2298
  %2356 = fmul fast float %2353, %2299
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2360, %dx.types.Handle %53, float %2354, float %2355, float %2356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  br label %2363

; <label>:2363                                    ; preds = %2284, %2273
  %2364 = phi float [ %2362, %2284 ], [ -1.000000e+00, %2273 ]
  %2365 = fadd fast float %2364, %2271
  %2366 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  br label %2367

; <label>:2367                                    ; preds = %2363, %2261
  %2368 = phi float [ %2366, %2363 ], [ %2271, %2261 ]
  %2369 = fmul fast float %2368, %470
  br label %2370

; <label>:2370                                    ; preds = %2367, %2256
  %2371 = phi float [ %2369, %2367 ], [ %470, %2256 ]
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 256
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2422, label %2376

; <label>:2376                                    ; preds = %2370
  %2377 = add i32 %62, 512
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = add i32 %2379, 0
  %2381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2381, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = add i32 %62, 132
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = shl i32 %2386, 4
  %2388 = and i32 %2387, 32752
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2386, 7
  %2391 = and i32 %2390, 32752
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = fsub fast float 1.000000e+00, %2371
  %2394 = call float @dx.op.binary.f32(i32 35, float %2393, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2395 = bitcast float %2371 to i32
  %2396 = sitofp i32 %2395 to float
  %2397 = fadd fast float %2396, 0xC1CFBF8940000000
  %2398 = fmul fast float %2392, %2397
  %2399 = fadd fast float %2398, 0x41CFBF8940000000
  %2400 = fptosi float %2399 to i32
  %2401 = bitcast i32 %2400 to float
  %2402 = bitcast float %2394 to i32
  %2403 = sitofp i32 %2402 to float
  %2404 = fadd fast float %2403, 0xC1CFBF8940000000
  %2405 = fmul fast float %2404, %2392
  %2406 = fadd fast float %2405, 0x41CFBF8940000000
  %2407 = fptosi float %2406 to i32
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2401, %2389
  %2410 = fmul fast float %2408, %2389
  %2411 = fsub fast float %2394, %2409
  %2412 = fadd fast float %2410, %2394
  %2413 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2415 = fsub fast float %2383, %2413
  %2416 = fsub fast float %2414, %2413
  %2417 = bitcast float %2416 to i32
  %2418 = sub nsw i32 2129859010, %2417
  %2419 = bitcast i32 %2418 to float
  %2420 = fmul fast float %2419, %2415
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  br label %2422

; <label>:2422                                    ; preds = %2376, %2370
  %2423 = phi float [ %2421, %2376 ], [ %2371, %2370 ]
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 128
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2444, label %2428

; <label>:2428                                    ; preds = %2422
  %2429 = add i32 %62, 496
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 524288
  %2439 = icmp ne i32 %2438, 0
  %2440 = fcmp fast ogt float %2435, 0x3FE0101020000000
  %2441 = select i1 %2440, float 1.000000e+00, float 0.000000e+00
  %2442 = select i1 %2439, float %2441, float %2435
  %2443 = fmul fast float %2442, %2423
  br label %2444

; <label>:2444                                    ; preds = %2428, %2422
  %2445 = phi float [ %2443, %2428 ], [ %2423, %2422 ]
  %2446 = fcmp fast ult float %2445, 0x3F70101020000000
  br i1 %2446, label %3076, label %2447

; <label>:2447                                    ; preds = %2444
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 16
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2650, label %2452

; <label>:2452                                    ; preds = %2447
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %62, 448
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = extractvalue %dx.types.ResRet.f32 %2460, 3
  %2465 = and i32 %2454, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = lshr i32 %2454, 8
  %2468 = and i32 %2467, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = fmul fast float %2464, %2466
  %2471 = fadd fast float %2470, %2469
  %2472 = fmul fast float %2471, 0x3F70101000000000
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = and i32 %2474, 512
  %2476 = icmp eq i32 %2475, 0
  br i1 %2476, label %2485, label %2477

; <label>:2477                                    ; preds = %2452
  %2478 = add i32 %62, 528
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %2480, 0
  %2482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2482, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  br label %2485

; <label>:2485                                    ; preds = %2477, %2452
  %2486 = phi float [ %2484, %2477 ], [ 1.000000e+00, %2452 ]
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 33554432
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2597, label %2491

; <label>:2491                                    ; preds = %2485
  %2492 = add i32 %62, 256
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 65535
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = lshr i32 %2494, 16
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = add i32 %62, 260
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 65535
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = lshr i32 %2505, 24
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = and i32 %2505, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = lshr i32 %2505, 8
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = lshr i32 %2505, 16
  %2517 = and i32 %2516, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = fmul fast float %2518, 0x3F70101020000000
  %2520 = add i32 %62, 252
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = lshr i32 %2522, 24
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = and i32 %2522, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = fmul fast float %2527, 0x3F70101020000000
  %2529 = lshr i32 %2522, 8
  %2530 = and i32 %2529, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = lshr i32 %2522, 16
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 0x3F70101020000000
  %2537 = bitcast float %2461 to i32
  %2538 = ashr i32 %2537, 1
  %2539 = sub nsw i32 1597463174, %2538
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2461, 5.000000e-01
  %2542 = fmul fast float %2540, %2540
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float 1.500000e+00, %2543
  %2545 = fmul fast float %2540, %2461
  %2546 = fmul fast float %2545, %2544
  %2547 = bitcast float %2462 to i32
  %2548 = ashr i32 %2547, 1
  %2549 = sub nsw i32 1597463174, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2462, 5.000000e-01
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2552, %2551
  %2554 = fsub fast float 1.500000e+00, %2553
  %2555 = fmul fast float %2550, %2462
  %2556 = fmul fast float %2555, %2554
  %2557 = bitcast float %2463 to i32
  %2558 = ashr i32 %2557, 1
  %2559 = sub nsw i32 1597463174, %2558
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2463, 5.000000e-01
  %2562 = fmul fast float %2560, %2560
  %2563 = fmul fast float %2562, %2561
  %2564 = fsub fast float 1.500000e+00, %2563
  %2565 = fmul fast float %2560, %2463
  %2566 = fmul fast float %2565, %2564
  %2567 = fsub fast float %2546, %2528
  %2568 = fsub fast float %2556, %2532
  %2569 = fsub fast float %2566, %2536
  %2570 = fmul fast float %2567, %2496
  %2571 = fmul fast float %2568, %2498
  %2572 = fmul fast float %2569, %2503
  %2573 = fadd fast float %2570, %2511
  %2574 = fadd fast float %2571, %2515
  %2575 = fadd fast float %2572, %2519
  %2576 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2577 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2579 = fmul fast float %2576, %2576
  %2580 = fmul fast float %2577, %2577
  %2581 = fmul fast float %2578, %2578
  %2582 = fsub fast float %2579, %2461
  %2583 = fsub fast float %2580, %2462
  %2584 = fsub fast float %2581, %2463
  %2585 = fmul fast float %2582, %2486
  %2586 = fmul fast float %2583, %2486
  %2587 = fmul fast float %2584, %2486
  %2588 = fadd fast float %2585, %2461
  %2589 = fadd fast float %2586, %2462
  %2590 = fadd fast float %2587, %2463
  %2591 = fadd fast float %2508, %2472
  %2592 = fsub fast float %2591, %2525
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = fsub fast float %2593, %2472
  %2595 = fmul fast float %2594, %2486
  %2596 = fadd fast float %2595, %2472
  br label %2650

; <label>:2597                                    ; preds = %2485
  %2598 = and i32 %2488, 134217728
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2634, label %2600

; <label>:2600                                    ; preds = %2597
  %2601 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2602 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2604 = fadd fast float %2601, -5.000000e-01
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fmul fast float %2604, %2486
  %2608 = fmul fast float %2605, %2486
  %2609 = fmul fast float %2606, %2486
  %2610 = fadd fast float %2607, 5.000000e-01
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = call float @dx.op.unary.f32(i32 24, float %2461)  ; Sqrt(value)
  %2614 = call float @dx.op.unary.f32(i32 24, float %2462)  ; Sqrt(value)
  %2615 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2616 = fmul fast float %2610, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2617, %2613
  %2619 = fadd fast float %2618, %2616
  %2620 = fmul fast float %2619, %2613
  %2621 = fmul fast float %2611, 2.000000e+00
  %2622 = fsub fast float 1.000000e+00, %2621
  %2623 = fmul fast float %2622, %2614
  %2624 = fadd fast float %2623, %2621
  %2625 = fmul fast float %2624, %2614
  %2626 = fmul fast float %2612, 2.000000e+00
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = fmul fast float %2627, %2615
  %2629 = fadd fast float %2628, %2626
  %2630 = fmul fast float %2629, %2615
  %2631 = fmul fast float %2620, %2620
  %2632 = fmul fast float %2625, %2625
  %2633 = fmul fast float %2630, %2630
  br label %2650

; <label>:2634                                    ; preds = %2597
  %2635 = fmul fast float %345, %345
  %2636 = fmul fast float %349, %349
  %2637 = fmul fast float %353, %353
  %2638 = fadd fast float %2635, -1.000000e+00
  %2639 = fadd fast float %2636, -1.000000e+00
  %2640 = fadd fast float %2637, -1.000000e+00
  %2641 = fmul fast float %2486, %2638
  %2642 = fmul fast float %2486, %2639
  %2643 = fmul fast float %2486, %2640
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fadd fast float %2643, 1.000000e+00
  %2647 = fmul fast float %2644, %2461
  %2648 = fmul fast float %2645, %2462
  %2649 = fmul fast float %2646, %2463
  br label %2650

; <label>:2650                                    ; preds = %2634, %2600, %2491, %2447
  %2651 = phi float [ %2596, %2491 ], [ %2472, %2600 ], [ %2472, %2634 ], [ 0x3FA23C0BE0000000, %2447 ]
  %2652 = phi float [ %2588, %2491 ], [ %2631, %2600 ], [ %2647, %2634 ], [ 1.000000e+00, %2447 ]
  %2653 = phi float [ %2589, %2491 ], [ %2632, %2600 ], [ %2648, %2634 ], [ 1.000000e+00, %2447 ]
  %2654 = phi float [ %2590, %2491 ], [ %2633, %2600 ], [ %2649, %2634 ], [ 1.000000e+00, %2447 ]
  %2655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.i32 %2655, 1
  %2657 = and i32 %2656, 1
  %2658 = icmp ne i32 %2657, 0
  %2659 = add i32 %62, 356
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 32
  %2663 = icmp ne i32 %2662, 0
  %2664 = and i1 %2658, %2663
  %2665 = select i1 %2664, float 1.000000e+00, float %2652
  %2666 = select i1 %2664, float 0x3FD3333340000000, float %2653
  %2667 = select i1 %2664, float 0x3FD3333340000000, float %2654
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 32
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2744, label %2672

; <label>:2672                                    ; preds = %2650
  %2673 = add i32 %62, 124
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %62, 464
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.ResRet.f32 %2681, 3
  %2686 = and i32 %2675, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = lshr i32 %2675, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = lshr i32 %2675, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101000000000
  %2695 = fmul fast float %2682, %2687
  %2696 = fadd fast float %2695, %2690
  %2697 = fmul fast float %2696, 0x3F70101000000000
  %2698 = fadd fast float %2683, -5.000000e-01
  %2699 = fadd fast float %2685, -5.000000e-01
  %2700 = fmul fast float %2698, %2694
  %2701 = fmul fast float %2699, %2694
  %2702 = fadd fast float %2700, 5.000000e-01
  %2703 = fadd fast float %2701, 5.000000e-01
  %2704 = fmul fast float %2702, 2.000000e+00
  %2705 = fadd fast float %2704, -1.000000e+00
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fadd fast float %2706, -1.000000e+00
  %2708 = fadd fast float %2705, %2707
  %2709 = fmul fast float %2708, 5.000000e-01
  %2710 = fsub fast float %2705, %2707
  %2711 = fmul fast float %2710, 5.000000e-01
  %2712 = call float @dx.op.unary.f32(i32 6, float %2709)  ; FAbs(value)
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = call float @dx.op.unary.f32(i32 6, float %2711)  ; FAbs(value)
  %2715 = fsub fast float %2713, %2714
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2711, float %2715, float %2709, float %2711, float %2715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = call float @dx.op.unary.f32(i32 25, float %2716)  ; Rsqrt(value)
  %2718 = fmul fast float %2709, %2717
  %2719 = fmul fast float %2711, %2717
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 67108864
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2740, label %2724

; <label>:2724                                    ; preds = %2672
  %2725 = add i32 %62, 312
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, 65535
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 65535
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = lshr i32 %2727, 16
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = fsub fast float %2697, %2735
  %2737 = fmul fast float %2736, %2729
  %2738 = fadd fast float %2737, %2733
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  br label %2740

; <label>:2740                                    ; preds = %2724, %2672
  %2741 = phi float [ %2739, %2724 ], [ %2697, %2672 ]
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2161, float %2162)  ; Dot2(ax,ay,bx,by)
  %2743 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  br label %2744

; <label>:2744                                    ; preds = %2740, %2650
  %2745 = phi float [ %2741, %2740 ], [ 0x3FD6666660000000, %2650 ]
  %2746 = phi float [ %2742, %2740 ], [ 0.000000e+00, %2650 ]
  %2747 = phi float [ %2743, %2740 ], [ 0.000000e+00, %2650 ]
  %2748 = phi float [ %2684, %2740 ], [ 1.000000e+00, %2650 ]
  %2749 = add i32 %62, 192
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 22
  %2753 = shl nuw nsw i32 %2752, 5
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 64
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2792, label %2759

; <label>:2759                                    ; preds = %2744
  %2760 = add i32 %62, 480
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 131072
  %2768 = icmp eq i32 %2767, 0
  %2769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2764, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = fmul fast float %2770, %333
  %2774 = fmul fast float %2771, %336
  %2775 = fmul fast float %2772, %339
  br i1 %2768, label %2782, label %2776

; <label>:2776                                    ; preds = %2759
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = fmul fast float %2778, %2773
  %2780 = fmul fast float %2778, %2774
  %2781 = fmul fast float %2778, %2775
  br label %2782

; <label>:2782                                    ; preds = %2776, %2759
  %2783 = phi float [ %2779, %2776 ], [ %2773, %2759 ]
  %2784 = phi float [ %2780, %2776 ], [ %2774, %2759 ]
  %2785 = phi float [ %2781, %2776 ], [ %2775, %2759 ]
  %2786 = fmul fast float %2783, %2754
  %2787 = select i1 %232, float %2786, float %2783
  %2788 = call float @dx.op.dot3.f32(i32 55, float %2787, float %2784, float %2785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2789 = select i1 %232, float 0.000000e+00, float %2783
  %2790 = select i1 %232, float %2788, float %2784
  %2791 = select i1 %232, float 0.000000e+00, float %2785
  br label %2792

; <label>:2792                                    ; preds = %2782, %2744
  %2793 = phi float [ %2789, %2782 ], [ 0.000000e+00, %2744 ]
  %2794 = phi float [ %2790, %2782 ], [ 0.000000e+00, %2744 ]
  %2795 = phi float [ %2791, %2782 ], [ 0.000000e+00, %2744 ]
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 10240
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2844, label %2800

; <label>:2800                                    ; preds = %2792
  %2801 = add i32 %62, 544
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %2803, 0
  %2805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2805, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 3
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 1048576
  %2812 = icmp ne i32 %2811, 0
  %2813 = and i32 %2810, 8192
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2830, label %2815

; <label>:2815                                    ; preds = %2800
  %2816 = extractvalue %dx.types.ResRet.f32 %2806, 2
  %2817 = select i1 %2812, float %2816, float %2807
  %2818 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2819 = select i1 %2812, float %2818, float %2807
  %2820 = add i32 %62, 128
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = lshr i32 %2822, 16
  %2824 = and i32 %2823, 255
  %2825 = uitofp i32 %2824 to float
  %2826 = fmul fast float %2825, 0x3F80101020000000
  %2827 = fmul fast float %2826, %2819
  %2828 = fmul fast float %2826, %2807
  %2829 = fmul fast float %2826, %2817
  br label %2830

; <label>:2830                                    ; preds = %2815, %2800
  %2831 = phi float [ %2827, %2815 ], [ 0.000000e+00, %2800 ]
  %2832 = phi float [ %2828, %2815 ], [ 0.000000e+00, %2800 ]
  %2833 = phi float [ %2829, %2815 ], [ 0.000000e+00, %2800 ]
  %2834 = and i32 %2810, 2048
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2844, label %2836

; <label>:2836                                    ; preds = %2830
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = shl i32 %2838, 4
  %2840 = and i32 %2839, 32752
  %2841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2840)  ; LegacyF16ToF32(value)
  %2842 = fmul fast float %2841, %2808
  %2843 = call float @dx.op.binary.f32(i32 35, float %2842, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2844

; <label>:2844                                    ; preds = %2836, %2830, %2792
  %2845 = phi float [ %2831, %2836 ], [ %2831, %2830 ], [ 0.000000e+00, %2792 ]
  %2846 = phi float [ %2832, %2836 ], [ %2832, %2830 ], [ 0.000000e+00, %2792 ]
  %2847 = phi float [ %2833, %2836 ], [ %2833, %2830 ], [ 0.000000e+00, %2792 ]
  %2848 = phi float [ %2843, %2836 ], [ 0x3F70101020000000, %2830 ], [ 0x3F70101020000000, %2792 ]
  %2849 = add i32 %62, 128
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2851, 8
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2666, float %2667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = fmul fast float %2856, %2857
  %2859 = fadd fast float %2858, %2853
  %2860 = fmul fast float %2859, 0x3F70101020000000
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  br i1 %2149, label %2862, label %2870

; <label>:2862                                    ; preds = %2844
  %2863 = fsub fast float 1.000000e+00, %2445
  %2864 = fmul fast float %2863, %2134
  %2865 = fmul fast float %2863, %2135
  %2866 = fmul fast float %2863, %2136
  %2867 = fmul fast float %2863, %2137
  %2868 = fmul fast float %2863, %2138
  %2869 = fmul fast float %2863, %2139
  br label %2870

; <label>:2870                                    ; preds = %2862, %2844
  %2871 = phi float [ %2864, %2862 ], [ %2134, %2844 ]
  %2872 = phi float [ %2865, %2862 ], [ %2135, %2844 ]
  %2873 = phi float [ %2866, %2862 ], [ %2136, %2844 ]
  %2874 = phi float [ %2867, %2862 ], [ %2137, %2844 ]
  %2875 = phi float [ %2868, %2862 ], [ %2138, %2844 ]
  %2876 = phi float [ %2869, %2862 ], [ %2139, %2844 ]
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 3
  %2880 = icmp eq i32 %2879, 3
  br i1 %2880, label %2959, label %2881

; <label>:2881                                    ; preds = %2870
  %2882 = and i32 %2878, 16
  %2883 = icmp ne i32 %2882, 0
  %2884 = select i1 %2883, float %2445, float 0.000000e+00
  %2885 = icmp eq i32 %2879, 0
  br i1 %2885, label %2886, label %2914

; <label>:2886                                    ; preds = %2881
  %2887 = and i32 %2878, 64
  %2888 = icmp ne i32 %2887, 0
  %2889 = select i1 %2888, float %2445, float 0.000000e+00
  %2890 = fsub fast float %2665, %2871
  %2891 = fsub fast float %2666, %2872
  %2892 = fsub fast float %2667, %2873
  %2893 = fmul fast float %2884, %2890
  %2894 = fmul fast float %2884, %2891
  %2895 = fmul fast float %2884, %2892
  %2896 = fadd fast float %2893, %2871
  %2897 = fadd fast float %2894, %2872
  %2898 = fadd fast float %2895, %2873
  %2899 = fsub fast float %2651, %2143
  %2900 = fmul fast float %2884, %2899
  %2901 = fadd fast float %2900, %2143
  %2902 = fsub fast float %2793, %2874
  %2903 = fsub fast float %2794, %2875
  %2904 = fsub fast float %2795, %2876
  %2905 = fmul fast float %2889, %2902
  %2906 = fmul fast float %2889, %2903
  %2907 = fmul fast float %2889, %2904
  %2908 = fadd fast float %2905, %2874
  %2909 = fadd fast float %2906, %2875
  %2910 = fadd fast float %2907, %2876
  %2911 = fsub fast float %2861, %2147
  %2912 = fmul fast float %2884, %2911
  %2913 = fadd fast float %2912, %2147
  br label %2959

; <label>:2914                                    ; preds = %2881
  %2915 = icmp eq i32 %2879, 1
  br i1 %2915, label %2916, label %2929

; <label>:2916                                    ; preds = %2914
  %2917 = fadd fast float %2665, -1.000000e+00
  %2918 = fadd fast float %2666, -1.000000e+00
  %2919 = fadd fast float %2667, -1.000000e+00
  %2920 = fmul fast float %2884, %2917
  %2921 = fmul fast float %2884, %2918
  %2922 = fmul fast float %2884, %2919
  %2923 = fadd fast float %2920, 1.000000e+00
  %2924 = fadd fast float %2921, 1.000000e+00
  %2925 = fadd fast float %2922, 1.000000e+00
  %2926 = fmul fast float %2923, %2871
  %2927 = fmul fast float %2924, %2872
  %2928 = fmul fast float %2925, %2873
  br label %2959

; <label>:2929                                    ; preds = %2914
  %2930 = icmp eq i32 %2879, 2
  br i1 %2930, label %2931, label %2959

; <label>:2931                                    ; preds = %2929
  %2932 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2933 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2934 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2935 = fadd fast float %2932, -5.000000e-01
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fadd fast float %2934, -5.000000e-01
  %2938 = fmul fast float %2935, %2884
  %2939 = fmul fast float %2936, %2884
  %2940 = fmul fast float %2937, %2884
  %2941 = fadd fast float %2938, 5.000000e-01
  %2942 = fadd fast float %2939, 5.000000e-01
  %2943 = fadd fast float %2940, 5.000000e-01
  %2944 = fmul fast float %2941, 2.000000e+00
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2945, %2871
  %2947 = fadd fast float %2946, %2944
  %2948 = fmul fast float %2947, %2871
  %2949 = fmul fast float %2942, 2.000000e+00
  %2950 = fsub fast float 1.000000e+00, %2949
  %2951 = fmul fast float %2950, %2872
  %2952 = fadd fast float %2951, %2949
  %2953 = fmul fast float %2952, %2872
  %2954 = fmul fast float %2943, 2.000000e+00
  %2955 = fsub fast float 1.000000e+00, %2954
  %2956 = fmul fast float %2955, %2873
  %2957 = fadd fast float %2956, %2954
  %2958 = fmul fast float %2957, %2873
  br label %2959

; <label>:2959                                    ; preds = %2931, %2929, %2916, %2886, %2870
  %2960 = phi float [ %2871, %2870 ], [ %2948, %2931 ], [ %2871, %2929 ], [ %2926, %2916 ], [ %2896, %2886 ]
  %2961 = phi float [ %2872, %2870 ], [ %2953, %2931 ], [ %2872, %2929 ], [ %2927, %2916 ], [ %2897, %2886 ]
  %2962 = phi float [ %2873, %2870 ], [ %2958, %2931 ], [ %2873, %2929 ], [ %2928, %2916 ], [ %2898, %2886 ]
  %2963 = phi float [ %2874, %2870 ], [ %2874, %2931 ], [ %2874, %2929 ], [ %2874, %2916 ], [ %2908, %2886 ]
  %2964 = phi float [ %2875, %2870 ], [ %2875, %2931 ], [ %2875, %2929 ], [ %2875, %2916 ], [ %2909, %2886 ]
  %2965 = phi float [ %2876, %2870 ], [ %2876, %2931 ], [ %2876, %2929 ], [ %2876, %2916 ], [ %2910, %2886 ]
  %2966 = phi float [ %2143, %2870 ], [ %2143, %2931 ], [ %2143, %2929 ], [ %2143, %2916 ], [ %2901, %2886 ]
  %2967 = phi float [ %2147, %2870 ], [ %2147, %2931 ], [ %2147, %2929 ], [ %2147, %2916 ], [ %2913, %2886 ]
  %2968 = and i32 %2878, 12
  %2969 = icmp eq i32 %2968, 12
  br i1 %2969, label %3076, label %2970

; <label>:2970                                    ; preds = %2959
  %2971 = and i32 %2878, 2097184
  %2972 = icmp eq i32 %2971, 2097184
  %2973 = select i1 %2972, float %2445, float 0.000000e+00
  %2974 = and i32 %2878, 4194336
  %2975 = icmp eq i32 %2974, 4194336
  %2976 = select i1 %2975, float %2445, float 0.000000e+00
  %2977 = and i32 %2878, 8388640
  %2978 = icmp eq i32 %2977, 8388640
  %2979 = select i1 %2978, float %2445, float 0.000000e+00
  %2980 = and i32 %2878, 2048
  %2981 = icmp ne i32 %2980, 0
  %2982 = select i1 %2981, float %2445, float 0.000000e+00
  %2983 = and i32 %2878, 8192
  %2984 = icmp ne i32 %2983, 0
  %2985 = select i1 %2984, float %2445, float 0.000000e+00
  %2986 = icmp eq i32 %2968, 0
  br i1 %2986, label %2987, label %3012

; <label>:2987                                    ; preds = %2970
  %2988 = fsub fast float %2746, %2132
  %2989 = fsub fast float %2747, %2133
  %2990 = fmul fast float %2973, %2988
  %2991 = fmul fast float %2973, %2989
  %2992 = fadd fast float %2990, %2132
  %2993 = fadd fast float %2991, %2133
  %2994 = fsub fast float %2748, %2145
  %2995 = fmul fast float %2976, %2994
  %2996 = fadd fast float %2995, %2145
  %2997 = fsub fast float %2745, %2144
  %2998 = fmul fast float %2979, %2997
  %2999 = fadd fast float %2998, %2144
  %3000 = fsub fast float %2848, %2146
  %3001 = fmul fast float %2982, %3000
  %3002 = fadd fast float %3001, %2146
  %3003 = fsub fast float %2845, %2140
  %3004 = fsub fast float %2846, %2141
  %3005 = fsub fast float %2847, %2142
  %3006 = fmul fast float %2985, %3003
  %3007 = fmul fast float %2985, %3004
  %3008 = fmul fast float %2985, %3005
  %3009 = fadd fast float %3006, %2140
  %3010 = fadd fast float %3007, %2141
  %3011 = fadd fast float %3008, %2142
  br label %3076

; <label>:3012                                    ; preds = %2970
  %3013 = icmp eq i32 %2968, 4
  br i1 %3013, label %3014, label %3054

; <label>:3014                                    ; preds = %3012
  %3015 = fmul fast float %2973, %2746
  %3016 = fmul fast float %2973, %2747
  %3017 = fadd fast float %3015, %2132
  %3018 = fadd fast float %3016, %2133
  %3019 = call float @dx.op.binary.f32(i32 36, float %2145, float %2748)  ; FMin(a,b)
  %3020 = fsub fast float %3019, %2145
  %3021 = fmul fast float %3020, %2976
  %3022 = fadd fast float %3021, %2145
  %3023 = fadd fast float %2745, %2144
  %3024 = fmul fast float %3023, 0x3FF337FAE0000000
  %3025 = fmul fast float %2144, %2144
  %3026 = fmul fast float %2745, %2745
  %3027 = fadd fast float %3026, %3025
  %3028 = fmul fast float %3027, 0x3FE5152B00000000
  %3029 = fmul fast float %2144, 0xBFCC1F85E0000000
  %3030 = fmul fast float %3029, %2745
  %3031 = fadd fast float %3030, 0xBFE1363700000000
  %3032 = fadd fast float %3031, %3024
  %3033 = fsub fast float %3032, %3028
  %3034 = fmul fast float %3023, 0x3FBA6F0D00000000
  %3035 = fmul fast float %3027, 0x3FD0432880000000
  %3036 = fmul fast float %2144, 0xBFEF110800000000
  %3037 = fmul fast float %3036, %2745
  %3038 = fadd fast float %3037, 1.000000e+00
  %3039 = fsub fast float %3038, %3034
  %3040 = fadd fast float %3039, %3035
  %3041 = fdiv fast float %3033, %3040
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = fsub fast float %3042, %2144
  %3044 = fmul fast float %3043, %2979
  %3045 = fadd fast float %3044, %2144
  %3046 = fmul fast float %2982, %2848
  %3047 = fadd fast float %3046, %2146
  %3048 = fmul fast float %2985, %2845
  %3049 = fmul fast float %2985, %2846
  %3050 = fmul fast float %2985, %2847
  %3051 = fadd fast float %3048, %2140
  %3052 = fadd fast float %3049, %2141
  %3053 = fadd fast float %3050, %2142
  br label %3076

; <label>:3054                                    ; preds = %3012
  %3055 = icmp eq i32 %2968, 8
  br i1 %3055, label %3056, label %3076

; <label>:3056                                    ; preds = %3054
  %3057 = fmul fast float %2973, %2746
  %3058 = fmul fast float %2973, %2747
  %3059 = fadd fast float %3057, %2132
  %3060 = fadd fast float %3058, %2133
  %3061 = call float @dx.op.binary.f32(i32 36, float %2145, float %2748)  ; FMin(a,b)
  %3062 = fsub fast float %3061, %2145
  %3063 = fmul fast float %3062, %2976
  %3064 = fadd fast float %3063, %2145
  %3065 = fsub fast float %2745, %2144
  %3066 = fmul fast float %2979, %3065
  %3067 = fadd fast float %3066, %2144
  %3068 = fmul fast float %2982, %2848
  %3069 = fadd fast float %3068, %2146
  %3070 = fmul fast float %2985, %2845
  %3071 = fmul fast float %2985, %2846
  %3072 = fmul fast float %2985, %2847
  %3073 = fadd fast float %3070, %2140
  %3074 = fadd fast float %3071, %2141
  %3075 = fadd fast float %3072, %2142
  br label %3076

; <label>:3076                                    ; preds = %3056, %3054, %3014, %2987, %2959, %2444, %2148, %2131
  %3077 = phi float [ %2132, %2959 ], [ %2132, %2444 ], [ %2132, %2131 ], [ %3059, %3056 ], [ %2132, %3054 ], [ %3017, %3014 ], [ %2992, %2987 ], [ %2132, %2148 ]
  %3078 = phi float [ %2133, %2959 ], [ %2133, %2444 ], [ %2133, %2131 ], [ %3060, %3056 ], [ %2133, %3054 ], [ %3018, %3014 ], [ %2993, %2987 ], [ %2133, %2148 ]
  %3079 = phi float [ %2960, %2959 ], [ %2134, %2444 ], [ %2134, %2131 ], [ %2960, %3056 ], [ %2960, %3054 ], [ %2960, %3014 ], [ %2960, %2987 ], [ %2134, %2148 ]
  %3080 = phi float [ %2961, %2959 ], [ %2135, %2444 ], [ %2135, %2131 ], [ %2961, %3056 ], [ %2961, %3054 ], [ %2961, %3014 ], [ %2961, %2987 ], [ %2135, %2148 ]
  %3081 = phi float [ %2962, %2959 ], [ %2136, %2444 ], [ %2136, %2131 ], [ %2962, %3056 ], [ %2962, %3054 ], [ %2962, %3014 ], [ %2962, %2987 ], [ %2136, %2148 ]
  %3082 = phi float [ %2963, %2959 ], [ %2137, %2444 ], [ %2137, %2131 ], [ %2963, %3056 ], [ %2963, %3054 ], [ %2963, %3014 ], [ %2963, %2987 ], [ %2137, %2148 ]
  %3083 = phi float [ %2964, %2959 ], [ %2138, %2444 ], [ %2138, %2131 ], [ %2964, %3056 ], [ %2964, %3054 ], [ %2964, %3014 ], [ %2964, %2987 ], [ %2138, %2148 ]
  %3084 = phi float [ %2965, %2959 ], [ %2139, %2444 ], [ %2139, %2131 ], [ %2965, %3056 ], [ %2965, %3054 ], [ %2965, %3014 ], [ %2965, %2987 ], [ %2139, %2148 ]
  %3085 = phi float [ %2140, %2959 ], [ %2140, %2444 ], [ %2140, %2131 ], [ %3073, %3056 ], [ %2140, %3054 ], [ %3051, %3014 ], [ %3009, %2987 ], [ %2140, %2148 ]
  %3086 = phi float [ %2141, %2959 ], [ %2141, %2444 ], [ %2141, %2131 ], [ %3074, %3056 ], [ %2141, %3054 ], [ %3052, %3014 ], [ %3010, %2987 ], [ %2141, %2148 ]
  %3087 = phi float [ %2142, %2959 ], [ %2142, %2444 ], [ %2142, %2131 ], [ %3075, %3056 ], [ %2142, %3054 ], [ %3053, %3014 ], [ %3011, %2987 ], [ %2142, %2148 ]
  %3088 = phi float [ %2966, %2959 ], [ %2143, %2444 ], [ %2143, %2131 ], [ %2966, %3056 ], [ %2966, %3054 ], [ %2966, %3014 ], [ %2966, %2987 ], [ %2143, %2148 ]
  %3089 = phi float [ %2144, %2959 ], [ %2144, %2444 ], [ %2144, %2131 ], [ %3067, %3056 ], [ %2144, %3054 ], [ %3045, %3014 ], [ %2999, %2987 ], [ %2144, %2148 ]
  %3090 = phi float [ %2145, %2959 ], [ %2145, %2444 ], [ %2145, %2131 ], [ %3064, %3056 ], [ %2145, %3054 ], [ %3022, %3014 ], [ %2996, %2987 ], [ %2145, %2148 ]
  %3091 = phi float [ %2146, %2959 ], [ %2146, %2444 ], [ %2146, %2131 ], [ %3069, %3056 ], [ %2146, %3054 ], [ %3047, %3014 ], [ %3002, %2987 ], [ %2146, %2148 ]
  %3092 = phi float [ %2967, %2959 ], [ %2147, %2444 ], [ %2147, %2131 ], [ %2967, %3056 ], [ %2967, %3054 ], [ %2967, %3014 ], [ %2967, %2987 ], [ %2147, %2148 ]
  br i1 %420, label %4021, label %3093

; <label>:3093                                    ; preds = %3076
  %3094 = icmp ult i32 %474, 4
  %3095 = add i32 %62, 72
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %62, 76
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = or i32 %3100, %3097
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %4021, label %3103

; <label>:3103                                    ; preds = %3093
  %3104 = and i32 %3097, 262144
  %3105 = icmp ne i32 %3104, 0
  %3106 = select i1 %3105, float %65, float 1.000000e+00
  %3107 = select i1 %3105, float %66, float 0.000000e+00
  %3108 = select i1 %3105, float %67, float 0.000000e+00
  %3109 = select i1 %3105, float %68, float 1.000000e+00
  %3110 = select i1 %3105, float %69, float %90
  %3111 = select i1 %3105, float %70, float %91
  %3112 = add i32 %62, 332
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = lshr i32 %3114, 16
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = fmul fast float %3116, 0x3F50624DE0000000
  %3118 = add i32 %62, 136
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = lshr i32 %3120, 16
  %3122 = and i32 %3121, 255
  %3123 = lshr i32 %3120, 24
  %3124 = add i32 %62, 340
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 65535
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = lshr i32 %3126, 16
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = add i32 %62, 80
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = lshr i32 %3133, 22
  %3135 = shl nuw nsw i32 %3134, 5
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = shl i32 %3133, 4
  %3138 = and i32 %3137, 32752
  %3139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3138)  ; LegacyF16ToF32(value)
  %3140 = lshr i32 %3133, 7
  %3141 = and i32 %3140, 32752
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 3
  %3145 = fmul fast float %3144, 1.000000e+03
  %3146 = fmul fast float %410, %3145
  %3147 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3148 = fadd fast float %3147, %400
  %3149 = fmul fast float %411, %3145
  %3150 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3151 = fadd fast float %3150, %402
  %3152 = fmul fast float %3117, %3145
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = fmul fast float %3153, 0x401921FB60000000
  %3155 = fadd fast float %3154, %3136
  %3156 = call float @dx.op.unary.f32(i32 13, float %3155)  ; Sin(value)
  %3157 = call float @dx.op.unary.f32(i32 12, float %3155)  ; Cos(value)
  %3158 = fsub fast float -0.000000e+00, %3156
  %3159 = fadd fast float %3110, -5.000000e-01
  %3160 = fadd fast float %3111, -5.000000e-01
  %3161 = fmul fast float %3128, %3159
  %3162 = fmul fast float %3130, %3160
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fadd fast float %3162, 5.000000e-01
  %3165 = fmul fast float %3139, %3163
  %3166 = fmul fast float %3142, %3164
  %3167 = fmul fast float %3157, %3165
  %3168 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3166, float %3167)  ; FMad(a,b,c)
  %3169 = fmul fast float %3156, %3165
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3166, float %3169)  ; FMad(a,b,c)
  %3171 = fadd fast float %3148, %3168
  %3172 = fadd fast float %3151, %3170
  %3173 = icmp ugt i32 %3122, 1
  %3174 = icmp ugt i32 %3120, 33554431
  %3175 = or i1 %3174, %3173
  br i1 %3175, label %3176, label %3201

; <label>:3176                                    ; preds = %3103
  %3177 = add i32 %62, 276
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = lshr i32 %3179, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = fmul fast float %3144, %3181
  %3183 = call float @dx.op.unary.f32(i32 22, float %3182)  ; Frc(value)
  %3184 = mul nuw nsw i32 %3122, %3123
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3183, %3185
  %3187 = call float @dx.op.unary.f32(i32 27, float %3186)  ; Round_ni(value)
  %3188 = fptoui float %3187 to i32
  %3189 = urem i32 %3188, %3122
  %3190 = udiv i32 %3188, %3123
  %3191 = call float @dx.op.unary.f32(i32 22, float %3171)  ; Frc(value)
  %3192 = call float @dx.op.unary.f32(i32 22, float %3172)  ; Frc(value)
  %3193 = uitofp i32 %3189 to float
  %3194 = uitofp i32 %3190 to float
  %3195 = fadd fast float %3191, %3193
  %3196 = fadd fast float %3192, %3194
  %3197 = uitofp i32 %3122 to float
  %3198 = uitofp i32 %3123 to float
  %3199 = fdiv fast float %3195, %3197
  %3200 = fdiv fast float %3196, %3198
  br label %3201

; <label>:3201                                    ; preds = %3176, %3103
  %3202 = phi float [ %3199, %3176 ], [ %3171, %3103 ]
  %3203 = phi float [ %3200, %3176 ], [ %3172, %3103 ]
  %3204 = and i32 %3097, 16777216
  %3205 = icmp eq i32 %3204, 0
  br i1 %3205, label %3315, label %3206

; <label>:3206                                    ; preds = %3201
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = fadd fast float %3208, %170
  %3212 = fadd fast float %3209, %171
  %3213 = fadd fast float %3210, %172
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3217 = icmp eq i32 %63, 65535
  br i1 %3217, label %3312, label %3218

; <label>:3218                                    ; preds = %3206
  %3219 = lshr i32 %63, 1
  %3220 = shl i32 %3219, 2
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %63, 1
  %3224 = icmp ne i32 %3223, 0
  %3225 = lshr i32 %3222, 16
  %3226 = and i32 %3222, 65535
  %3227 = select i1 %3224, i32 %3225, i32 %3226
  %3228 = icmp eq i32 %3227, 65535
  br i1 %3228, label %3308, label %3229

; <label>:3229                                    ; preds = %3218
  %3230 = mul nuw nsw i32 %3227, 40
  %3231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.ResRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.ResRet.f32 %3231, 2
  %3235 = add nuw nsw i32 %3230, 12
  %3236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = add nuw nsw i32 %3230, 24
  %3241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.ResRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.ResRet.f32 %3241, 2
  %3245 = add nuw nsw i32 %3230, 36
  %3246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = fsub fast float %3211, %3232
  %3249 = fsub fast float %3212, %3233
  %3250 = fsub fast float %3213, %3234
  %3251 = fmul fast float %3247, %3248
  %3252 = fmul fast float %3247, %3249
  %3253 = fmul fast float %3247, %3250
  %3254 = call float @dx.op.unary.f32(i32 27, float %3251)  ; Round_ni(value)
  %3255 = call float @dx.op.unary.f32(i32 27, float %3252)  ; Round_ni(value)
  %3256 = call float @dx.op.unary.f32(i32 27, float %3253)  ; Round_ni(value)
  %3257 = fadd fast float %3254, 5.000000e-01
  %3258 = fadd fast float %3255, 5.000000e-01
  %3259 = fadd fast float %3256, 5.000000e-01
  %3260 = fmul fast float %3257, %3237
  %3261 = fmul fast float %3258, %3238
  %3262 = fmul fast float %3259, %3239
  %3263 = shl i32 %63, 2
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = add i32 %3265, 0
  %3267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3268 = call float @dx.op.unary.f32(i32 22, float %3260)  ; Frc(value)
  %3269 = call float @dx.op.unary.f32(i32 22, float %3261)  ; Frc(value)
  %3270 = call float @dx.op.unary.f32(i32 22, float %3262)  ; Frc(value)
  %3271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3267, %dx.types.Handle %55, float %3268, float %3269, float %3270, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.ResRet.f32 %3271, 2
  %3275 = fmul fast float %3272, 1.023000e+03
  %3276 = fmul fast float %3273, 1.023000e+03
  %3277 = fmul fast float %3274, 1.023000e+03
  %3278 = fadd fast float %3275, 5.000000e-01
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = fadd fast float %3277, 5.000000e-01
  %3281 = call float @dx.op.unary.f32(i32 27, float %3278)  ; Round_ni(value)
  %3282 = call float @dx.op.unary.f32(i32 27, float %3279)  ; Round_ni(value)
  %3283 = call float @dx.op.unary.f32(i32 27, float %3280)  ; Round_ni(value)
  %3284 = fsub fast float %3251, %3254
  %3285 = fsub fast float %3252, %3255
  %3286 = fsub fast float %3253, %3256
  %3287 = fmul fast float %3284, 7.500000e-01
  %3288 = fmul fast float %3285, 7.500000e-01
  %3289 = fmul fast float %3286, 7.500000e-01
  %3290 = fadd fast float %3254, 1.250000e-01
  %3291 = fadd fast float %3290, %3287
  %3292 = fadd fast float %3291, %3281
  %3293 = fadd fast float %3255, 1.250000e-01
  %3294 = fadd fast float %3293, %3288
  %3295 = fadd fast float %3294, %3282
  %3296 = fadd fast float %3256, 1.250000e-01
  %3297 = fadd fast float %3296, %3289
  %3298 = fadd fast float %3297, %3283
  %3299 = fmul fast float %3292, %3242
  %3300 = fmul fast float %3295, %3243
  %3301 = fmul fast float %3298, %3244
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = add i32 %3303, 0
  %3305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3305, %dx.types.Handle %53, float %3299, float %3300, float %3301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  br label %3308

; <label>:3308                                    ; preds = %3229, %3218
  %3309 = phi float [ %3307, %3229 ], [ -1.000000e+00, %3218 ]
  %3310 = fadd fast float %3309, %3216
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  br label %3312

; <label>:3312                                    ; preds = %3308, %3206
  %3313 = phi float [ %3311, %3308 ], [ %3216, %3206 ]
  %3314 = fmul fast float %3313, %469
  br label %3315

; <label>:3315                                    ; preds = %3312, %3201
  %3316 = phi float [ %3314, %3312 ], [ %469, %3201 ]
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 256
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3367, label %3321

; <label>:3321                                    ; preds = %3315
  %3322 = add i32 %62, 516
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %3324, 0
  %3326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3326, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = add i32 %62, 148
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = shl i32 %3331, 4
  %3333 = and i32 %3332, 32752
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = lshr i32 %3331, 7
  %3336 = and i32 %3335, 32752
  %3337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3336)  ; LegacyF16ToF32(value)
  %3338 = fsub fast float 1.000000e+00, %3316
  %3339 = call float @dx.op.binary.f32(i32 35, float %3338, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3340 = bitcast float %3316 to i32
  %3341 = sitofp i32 %3340 to float
  %3342 = fadd fast float %3341, 0xC1CFBF8940000000
  %3343 = fmul fast float %3337, %3342
  %3344 = fadd fast float %3343, 0x41CFBF8940000000
  %3345 = fptosi float %3344 to i32
  %3346 = bitcast i32 %3345 to float
  %3347 = bitcast float %3339 to i32
  %3348 = sitofp i32 %3347 to float
  %3349 = fadd fast float %3348, 0xC1CFBF8940000000
  %3350 = fmul fast float %3349, %3337
  %3351 = fadd fast float %3350, 0x41CFBF8940000000
  %3352 = fptosi float %3351 to i32
  %3353 = bitcast i32 %3352 to float
  %3354 = fmul fast float %3346, %3334
  %3355 = fmul fast float %3353, %3334
  %3356 = fsub fast float %3339, %3354
  %3357 = fadd fast float %3355, %3339
  %3358 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3360 = fsub fast float %3328, %3358
  %3361 = fsub fast float %3359, %3358
  %3362 = bitcast float %3361 to i32
  %3363 = sub nsw i32 2129859010, %3362
  %3364 = bitcast i32 %3363 to float
  %3365 = fmul fast float %3364, %3360
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  br label %3367

; <label>:3367                                    ; preds = %3321, %3315
  %3368 = phi float [ %3366, %3321 ], [ %3316, %3315 ]
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = and i32 %3370, 128
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3389, label %3373

; <label>:3373                                    ; preds = %3367
  %3374 = add i32 %62, 500
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %3376, 0
  %3378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3378, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 524288
  %3384 = icmp ne i32 %3383, 0
  %3385 = fcmp fast ogt float %3380, 0x3FE0101020000000
  %3386 = select i1 %3385, float 1.000000e+00, float 0.000000e+00
  %3387 = select i1 %3384, float %3386, float %3380
  %3388 = fmul fast float %3387, %3368
  br label %3389

; <label>:3389                                    ; preds = %3373, %3367
  %3390 = phi float [ %3388, %3373 ], [ %3368, %3367 ]
  %3391 = fcmp fast ult float %3390, 0x3F70101020000000
  br i1 %3391, label %4021, label %3392

; <label>:3392                                    ; preds = %3389
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, 16
  %3396 = icmp eq i32 %3395, 0
  br i1 %3396, label %3595, label %3397

; <label>:3397                                    ; preds = %3392
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = add i32 %62, 452
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = add i32 %3402, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3404, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3405, 3
  %3410 = and i32 %3399, 255
  %3411 = uitofp i32 %3410 to float
  %3412 = lshr i32 %3399, 8
  %3413 = and i32 %3412, 255
  %3414 = uitofp i32 %3413 to float
  %3415 = fmul fast float %3409, %3411
  %3416 = fadd fast float %3415, %3414
  %3417 = fmul fast float %3416, 0x3F70101000000000
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 512
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3430, label %3422

; <label>:3422                                    ; preds = %3397
  %3423 = add i32 %62, 532
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = add i32 %3425, 0
  %3427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3427, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  br label %3430

; <label>:3430                                    ; preds = %3422, %3397
  %3431 = phi float [ %3429, %3422 ], [ 1.000000e+00, %3397 ]
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 33554432
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3542, label %3436

; <label>:3436                                    ; preds = %3430
  %3437 = add i32 %62, 272
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = lshr i32 %3439, 16
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = add i32 %62, 276
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 65535
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 24
  %3452 = uitofp i32 %3451 to float
  %3453 = fmul fast float %3452, 0x3F70101020000000
  %3454 = and i32 %3450, 255
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = lshr i32 %3450, 8
  %3458 = and i32 %3457, 255
  %3459 = uitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 0x3F70101020000000
  %3461 = lshr i32 %3450, 16
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = add i32 %62, 268
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = lshr i32 %3467, 24
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = and i32 %3467, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3472, 0x3F70101020000000
  %3474 = lshr i32 %3467, 8
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = lshr i32 %3467, 16
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101020000000
  %3482 = bitcast float %3406 to i32
  %3483 = ashr i32 %3482, 1
  %3484 = sub nsw i32 1597463174, %3483
  %3485 = bitcast i32 %3484 to float
  %3486 = fmul fast float %3406, 5.000000e-01
  %3487 = fmul fast float %3485, %3485
  %3488 = fmul fast float %3487, %3486
  %3489 = fsub fast float 1.500000e+00, %3488
  %3490 = fmul fast float %3485, %3406
  %3491 = fmul fast float %3490, %3489
  %3492 = bitcast float %3407 to i32
  %3493 = ashr i32 %3492, 1
  %3494 = sub nsw i32 1597463174, %3493
  %3495 = bitcast i32 %3494 to float
  %3496 = fmul fast float %3407, 5.000000e-01
  %3497 = fmul fast float %3495, %3495
  %3498 = fmul fast float %3497, %3496
  %3499 = fsub fast float 1.500000e+00, %3498
  %3500 = fmul fast float %3495, %3407
  %3501 = fmul fast float %3500, %3499
  %3502 = bitcast float %3408 to i32
  %3503 = ashr i32 %3502, 1
  %3504 = sub nsw i32 1597463174, %3503
  %3505 = bitcast i32 %3504 to float
  %3506 = fmul fast float %3408, 5.000000e-01
  %3507 = fmul fast float %3505, %3505
  %3508 = fmul fast float %3507, %3506
  %3509 = fsub fast float 1.500000e+00, %3508
  %3510 = fmul fast float %3505, %3408
  %3511 = fmul fast float %3510, %3509
  %3512 = fsub fast float %3491, %3473
  %3513 = fsub fast float %3501, %3477
  %3514 = fsub fast float %3511, %3481
  %3515 = fmul fast float %3512, %3441
  %3516 = fmul fast float %3513, %3443
  %3517 = fmul fast float %3514, %3448
  %3518 = fadd fast float %3515, %3456
  %3519 = fadd fast float %3516, %3460
  %3520 = fadd fast float %3517, %3464
  %3521 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3522 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3523 = call float @dx.op.unary.f32(i32 7, float %3520)  ; Saturate(value)
  %3524 = fmul fast float %3521, %3521
  %3525 = fmul fast float %3522, %3522
  %3526 = fmul fast float %3523, %3523
  %3527 = fsub fast float %3524, %3406
  %3528 = fsub fast float %3525, %3407
  %3529 = fsub fast float %3526, %3408
  %3530 = fmul fast float %3527, %3431
  %3531 = fmul fast float %3528, %3431
  %3532 = fmul fast float %3529, %3431
  %3533 = fadd fast float %3530, %3406
  %3534 = fadd fast float %3531, %3407
  %3535 = fadd fast float %3532, %3408
  %3536 = fadd fast float %3453, %3417
  %3537 = fsub fast float %3536, %3470
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = fsub fast float %3538, %3417
  %3540 = fmul fast float %3539, %3431
  %3541 = fadd fast float %3540, %3417
  br label %3595

; <label>:3542                                    ; preds = %3430
  %3543 = and i32 %3433, 134217728
  %3544 = icmp eq i32 %3543, 0
  br i1 %3544, label %3579, label %3545

; <label>:3545                                    ; preds = %3542
  %3546 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3547 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3548 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3549 = fadd fast float %3546, -5.000000e-01
  %3550 = fadd fast float %3547, -5.000000e-01
  %3551 = fadd fast float %3548, -5.000000e-01
  %3552 = fmul fast float %3549, %3431
  %3553 = fmul fast float %3550, %3431
  %3554 = fmul fast float %3551, %3431
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = call float @dx.op.unary.f32(i32 24, float %3406)  ; Sqrt(value)
  %3559 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  %3560 = call float @dx.op.unary.f32(i32 24, float %3408)  ; Sqrt(value)
  %3561 = fmul fast float %3555, 2.000000e+00
  %3562 = fsub fast float 1.000000e+00, %3561
  %3563 = fmul fast float %3562, %3558
  %3564 = fadd fast float %3563, %3561
  %3565 = fmul fast float %3564, %3558
  %3566 = fmul fast float %3556, 2.000000e+00
  %3567 = fsub fast float 1.000000e+00, %3566
  %3568 = fmul fast float %3567, %3559
  %3569 = fadd fast float %3568, %3566
  %3570 = fmul fast float %3569, %3559
  %3571 = fmul fast float %3557, 2.000000e+00
  %3572 = fsub fast float 1.000000e+00, %3571
  %3573 = fmul fast float %3572, %3560
  %3574 = fadd fast float %3573, %3571
  %3575 = fmul fast float %3574, %3560
  %3576 = fmul fast float %3565, %3565
  %3577 = fmul fast float %3570, %3570
  %3578 = fmul fast float %3575, %3575
  br label %3595

; <label>:3579                                    ; preds = %3542
  %3580 = fmul fast float %387, %387
  %3581 = fmul fast float %391, %391
  %3582 = fmul fast float %395, %395
  %3583 = fadd fast float %3580, -1.000000e+00
  %3584 = fadd fast float %3581, -1.000000e+00
  %3585 = fadd fast float %3582, -1.000000e+00
  %3586 = fmul fast float %3431, %3583
  %3587 = fmul fast float %3431, %3584
  %3588 = fmul fast float %3431, %3585
  %3589 = fadd fast float %3586, 1.000000e+00
  %3590 = fadd fast float %3587, 1.000000e+00
  %3591 = fadd fast float %3588, 1.000000e+00
  %3592 = fmul fast float %3589, %3406
  %3593 = fmul fast float %3590, %3407
  %3594 = fmul fast float %3591, %3408
  br label %3595

; <label>:3595                                    ; preds = %3579, %3545, %3436, %3392
  %3596 = phi float [ %3541, %3436 ], [ %3417, %3545 ], [ %3417, %3579 ], [ 0x3FA23C0BE0000000, %3392 ]
  %3597 = phi float [ %3533, %3436 ], [ %3576, %3545 ], [ %3592, %3579 ], [ 1.000000e+00, %3392 ]
  %3598 = phi float [ %3534, %3436 ], [ %3577, %3545 ], [ %3593, %3579 ], [ 1.000000e+00, %3392 ]
  %3599 = phi float [ %3535, %3436 ], [ %3578, %3545 ], [ %3594, %3579 ], [ 1.000000e+00, %3392 ]
  %3600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.i32 %3600, 1
  %3602 = and i32 %3601, 1
  %3603 = icmp ne i32 %3602, 0
  %3604 = add i32 %62, 356
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, 32
  %3608 = icmp ne i32 %3607, 0
  %3609 = and i1 %3603, %3608
  %3610 = select i1 %3609, float 1.000000e+00, float %3597
  %3611 = select i1 %3609, float 0x3FD3333340000000, float %3598
  %3612 = select i1 %3609, float 0x3FD3333340000000, float %3599
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 32
  %3616 = icmp eq i32 %3615, 0
  br i1 %3616, label %3689, label %3617

; <label>:3617                                    ; preds = %3595
  %3618 = add i32 %62, 140
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = add i32 %62, 468
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = add i32 %3623, 0
  %3625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3625, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.ResRet.f32 %3626, 3
  %3631 = and i32 %3620, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = lshr i32 %3620, 8
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3620, 16
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fmul fast float %3638, 0x3F70101000000000
  %3640 = fmul fast float %3627, %3632
  %3641 = fadd fast float %3640, %3635
  %3642 = fmul fast float %3641, 0x3F70101000000000
  %3643 = fadd fast float %3628, -5.000000e-01
  %3644 = fadd fast float %3630, -5.000000e-01
  %3645 = fmul fast float %3643, %3639
  %3646 = fmul fast float %3644, %3639
  %3647 = fadd fast float %3645, 5.000000e-01
  %3648 = fadd fast float %3646, 5.000000e-01
  %3649 = fmul fast float %3647, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = fmul fast float %3648, 2.000000e+00
  %3652 = fadd fast float %3651, -1.000000e+00
  %3653 = fadd fast float %3650, %3652
  %3654 = fmul fast float %3653, 5.000000e-01
  %3655 = fsub fast float %3650, %3652
  %3656 = fmul fast float %3655, 5.000000e-01
  %3657 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3660 = fsub fast float %3658, %3659
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3656, float %3660, float %3654, float %3656, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.unary.f32(i32 25, float %3661)  ; Rsqrt(value)
  %3663 = fmul fast float %3654, %3662
  %3664 = fmul fast float %3656, %3662
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 67108864
  %3668 = icmp eq i32 %3667, 0
  br i1 %3668, label %3685, label %3669

; <label>:3669                                    ; preds = %3617
  %3670 = add i32 %62, 328
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 65535
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 65535
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = lshr i32 %3672, 16
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = fsub fast float %3642, %3680
  %3682 = fmul fast float %3681, %3674
  %3683 = fadd fast float %3682, %3678
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  br label %3685

; <label>:3685                                    ; preds = %3669, %3617
  %3686 = phi float [ %3684, %3669 ], [ %3642, %3617 ]
  %3687 = call float @dx.op.dot2.f32(i32 54, float %3663, float %3664, float %3106, float %3107)  ; Dot2(ax,ay,bx,by)
  %3688 = call float @dx.op.dot2.f32(i32 54, float %3663, float %3664, float %3108, float %3109)  ; Dot2(ax,ay,bx,by)
  br label %3689

; <label>:3689                                    ; preds = %3685, %3595
  %3690 = phi float [ %3686, %3685 ], [ 0x3FD6666660000000, %3595 ]
  %3691 = phi float [ %3687, %3685 ], [ 0.000000e+00, %3595 ]
  %3692 = phi float [ %3688, %3685 ], [ 0.000000e+00, %3595 ]
  %3693 = phi float [ %3629, %3685 ], [ 1.000000e+00, %3595 ]
  %3694 = add i32 %62, 208
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = lshr i32 %3696, 22
  %3698 = shl nuw nsw i32 %3697, 5
  %3699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3698)  ; LegacyF16ToF32(value)
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = and i32 %3701, 64
  %3703 = icmp eq i32 %3702, 0
  br i1 %3703, label %3737, label %3704

; <label>:3704                                    ; preds = %3689
  %3705 = add i32 %62, 484
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = add i32 %3707, 0
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 131072
  %3713 = icmp eq i32 %3712, 0
  %3714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3709, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = fmul fast float %3715, %375
  %3719 = fmul fast float %3716, %378
  %3720 = fmul fast float %3717, %381
  br i1 %3713, label %3727, label %3721

; <label>:3721                                    ; preds = %3704
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = fmul fast float %3723, %3718
  %3725 = fmul fast float %3723, %3719
  %3726 = fmul fast float %3723, %3720
  br label %3727

; <label>:3727                                    ; preds = %3721, %3704
  %3728 = phi float [ %3724, %3721 ], [ %3718, %3704 ]
  %3729 = phi float [ %3725, %3721 ], [ %3719, %3704 ]
  %3730 = phi float [ %3726, %3721 ], [ %3720, %3704 ]
  %3731 = fmul fast float %3728, %3699
  %3732 = select i1 %232, float %3731, float %3728
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3732, float %3729, float %3730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = select i1 %232, float 0.000000e+00, float %3728
  %3735 = select i1 %232, float %3733, float %3729
  %3736 = select i1 %232, float 0.000000e+00, float %3730
  br label %3737

; <label>:3737                                    ; preds = %3727, %3689
  %3738 = phi float [ %3734, %3727 ], [ 0.000000e+00, %3689 ]
  %3739 = phi float [ %3735, %3727 ], [ 0.000000e+00, %3689 ]
  %3740 = phi float [ %3736, %3727 ], [ 0.000000e+00, %3689 ]
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 10240
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3789, label %3745

; <label>:3745                                    ; preds = %3737
  %3746 = add i32 %62, 548
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = add i32 %3748, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3750, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 3
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 1048576
  %3757 = icmp ne i32 %3756, 0
  %3758 = and i32 %3755, 8192
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3775, label %3760

; <label>:3760                                    ; preds = %3745
  %3761 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3762 = select i1 %3757, float %3761, float %3752
  %3763 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3764 = select i1 %3757, float %3763, float %3752
  %3765 = add i32 %62, 144
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = lshr i32 %3767, 16
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F80101020000000
  %3772 = fmul fast float %3771, %3764
  %3773 = fmul fast float %3771, %3752
  %3774 = fmul fast float %3771, %3762
  br label %3775

; <label>:3775                                    ; preds = %3760, %3745
  %3776 = phi float [ %3772, %3760 ], [ 0.000000e+00, %3745 ]
  %3777 = phi float [ %3773, %3760 ], [ 0.000000e+00, %3745 ]
  %3778 = phi float [ %3774, %3760 ], [ 0.000000e+00, %3745 ]
  %3779 = and i32 %3755, 2048
  %3780 = icmp eq i32 %3779, 0
  br i1 %3780, label %3789, label %3781

; <label>:3781                                    ; preds = %3775
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = shl i32 %3783, 4
  %3785 = and i32 %3784, 32752
  %3786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3785)  ; LegacyF16ToF32(value)
  %3787 = fmul fast float %3786, %3753
  %3788 = call float @dx.op.binary.f32(i32 35, float %3787, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3789

; <label>:3789                                    ; preds = %3781, %3775, %3737
  %3790 = phi float [ %3776, %3781 ], [ %3776, %3775 ], [ 0.000000e+00, %3737 ]
  %3791 = phi float [ %3777, %3781 ], [ %3777, %3775 ], [ 0.000000e+00, %3737 ]
  %3792 = phi float [ %3778, %3781 ], [ %3778, %3775 ], [ 0.000000e+00, %3737 ]
  %3793 = phi float [ %3788, %3781 ], [ 0x3F70101020000000, %3775 ], [ 0x3F70101020000000, %3737 ]
  %3794 = add i32 %62, 144
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = lshr i32 %3796, 8
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = fmul fast float %3801, %3802
  %3804 = fadd fast float %3803, %3798
  %3805 = fmul fast float %3804, 0x3F70101020000000
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  br i1 %3094, label %3807, label %3815

; <label>:3807                                    ; preds = %3789
  %3808 = fsub fast float 1.000000e+00, %3390
  %3809 = fmul fast float %3808, %3079
  %3810 = fmul fast float %3808, %3080
  %3811 = fmul fast float %3808, %3081
  %3812 = fmul fast float %3808, %3082
  %3813 = fmul fast float %3808, %3083
  %3814 = fmul fast float %3808, %3084
  br label %3815

; <label>:3815                                    ; preds = %3807, %3789
  %3816 = phi float [ %3809, %3807 ], [ %3079, %3789 ]
  %3817 = phi float [ %3810, %3807 ], [ %3080, %3789 ]
  %3818 = phi float [ %3811, %3807 ], [ %3081, %3789 ]
  %3819 = phi float [ %3812, %3807 ], [ %3082, %3789 ]
  %3820 = phi float [ %3813, %3807 ], [ %3083, %3789 ]
  %3821 = phi float [ %3814, %3807 ], [ %3084, %3789 ]
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = and i32 %3823, 3
  %3825 = icmp eq i32 %3824, 3
  br i1 %3825, label %3904, label %3826

; <label>:3826                                    ; preds = %3815
  %3827 = and i32 %3823, 16
  %3828 = icmp ne i32 %3827, 0
  %3829 = select i1 %3828, float %3390, float 0.000000e+00
  %3830 = icmp eq i32 %3824, 0
  br i1 %3830, label %3831, label %3859

; <label>:3831                                    ; preds = %3826
  %3832 = and i32 %3823, 64
  %3833 = icmp ne i32 %3832, 0
  %3834 = select i1 %3833, float %3390, float 0.000000e+00
  %3835 = fsub fast float %3610, %3816
  %3836 = fsub fast float %3611, %3817
  %3837 = fsub fast float %3612, %3818
  %3838 = fmul fast float %3829, %3835
  %3839 = fmul fast float %3829, %3836
  %3840 = fmul fast float %3829, %3837
  %3841 = fadd fast float %3838, %3816
  %3842 = fadd fast float %3839, %3817
  %3843 = fadd fast float %3840, %3818
  %3844 = fsub fast float %3596, %3088
  %3845 = fmul fast float %3829, %3844
  %3846 = fadd fast float %3845, %3088
  %3847 = fsub fast float %3738, %3819
  %3848 = fsub fast float %3739, %3820
  %3849 = fsub fast float %3740, %3821
  %3850 = fmul fast float %3834, %3847
  %3851 = fmul fast float %3834, %3848
  %3852 = fmul fast float %3834, %3849
  %3853 = fadd fast float %3850, %3819
  %3854 = fadd fast float %3851, %3820
  %3855 = fadd fast float %3852, %3821
  %3856 = fsub fast float %3806, %3092
  %3857 = fmul fast float %3829, %3856
  %3858 = fadd fast float %3857, %3092
  br label %3904

; <label>:3859                                    ; preds = %3826
  %3860 = icmp eq i32 %3824, 1
  br i1 %3860, label %3861, label %3874

; <label>:3861                                    ; preds = %3859
  %3862 = fadd fast float %3610, -1.000000e+00
  %3863 = fadd fast float %3611, -1.000000e+00
  %3864 = fadd fast float %3612, -1.000000e+00
  %3865 = fmul fast float %3829, %3862
  %3866 = fmul fast float %3829, %3863
  %3867 = fmul fast float %3829, %3864
  %3868 = fadd fast float %3865, 1.000000e+00
  %3869 = fadd fast float %3866, 1.000000e+00
  %3870 = fadd fast float %3867, 1.000000e+00
  %3871 = fmul fast float %3868, %3816
  %3872 = fmul fast float %3869, %3817
  %3873 = fmul fast float %3870, %3818
  br label %3904

; <label>:3874                                    ; preds = %3859
  %3875 = icmp eq i32 %3824, 2
  br i1 %3875, label %3876, label %3904

; <label>:3876                                    ; preds = %3874
  %3877 = call float @dx.op.unary.f32(i32 24, float %3610)  ; Sqrt(value)
  %3878 = call float @dx.op.unary.f32(i32 24, float %3611)  ; Sqrt(value)
  %3879 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3880 = fadd fast float %3877, -5.000000e-01
  %3881 = fadd fast float %3878, -5.000000e-01
  %3882 = fadd fast float %3879, -5.000000e-01
  %3883 = fmul fast float %3880, %3829
  %3884 = fmul fast float %3881, %3829
  %3885 = fmul fast float %3882, %3829
  %3886 = fadd fast float %3883, 5.000000e-01
  %3887 = fadd fast float %3884, 5.000000e-01
  %3888 = fadd fast float %3885, 5.000000e-01
  %3889 = fmul fast float %3886, 2.000000e+00
  %3890 = fsub fast float 1.000000e+00, %3889
  %3891 = fmul fast float %3890, %3816
  %3892 = fadd fast float %3891, %3889
  %3893 = fmul fast float %3892, %3816
  %3894 = fmul fast float %3887, 2.000000e+00
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = fmul fast float %3895, %3817
  %3897 = fadd fast float %3896, %3894
  %3898 = fmul fast float %3897, %3817
  %3899 = fmul fast float %3888, 2.000000e+00
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = fmul fast float %3900, %3818
  %3902 = fadd fast float %3901, %3899
  %3903 = fmul fast float %3902, %3818
  br label %3904

; <label>:3904                                    ; preds = %3876, %3874, %3861, %3831, %3815
  %3905 = phi float [ %3816, %3815 ], [ %3893, %3876 ], [ %3816, %3874 ], [ %3871, %3861 ], [ %3841, %3831 ]
  %3906 = phi float [ %3817, %3815 ], [ %3898, %3876 ], [ %3817, %3874 ], [ %3872, %3861 ], [ %3842, %3831 ]
  %3907 = phi float [ %3818, %3815 ], [ %3903, %3876 ], [ %3818, %3874 ], [ %3873, %3861 ], [ %3843, %3831 ]
  %3908 = phi float [ %3819, %3815 ], [ %3819, %3876 ], [ %3819, %3874 ], [ %3819, %3861 ], [ %3853, %3831 ]
  %3909 = phi float [ %3820, %3815 ], [ %3820, %3876 ], [ %3820, %3874 ], [ %3820, %3861 ], [ %3854, %3831 ]
  %3910 = phi float [ %3821, %3815 ], [ %3821, %3876 ], [ %3821, %3874 ], [ %3821, %3861 ], [ %3855, %3831 ]
  %3911 = phi float [ %3088, %3815 ], [ %3088, %3876 ], [ %3088, %3874 ], [ %3088, %3861 ], [ %3846, %3831 ]
  %3912 = phi float [ %3092, %3815 ], [ %3092, %3876 ], [ %3092, %3874 ], [ %3092, %3861 ], [ %3858, %3831 ]
  %3913 = and i32 %3823, 12
  %3914 = icmp eq i32 %3913, 12
  br i1 %3914, label %4021, label %3915

; <label>:3915                                    ; preds = %3904
  %3916 = and i32 %3823, 2097184
  %3917 = icmp eq i32 %3916, 2097184
  %3918 = select i1 %3917, float %3390, float 0.000000e+00
  %3919 = and i32 %3823, 4194336
  %3920 = icmp eq i32 %3919, 4194336
  %3921 = select i1 %3920, float %3390, float 0.000000e+00
  %3922 = and i32 %3823, 8388640
  %3923 = icmp eq i32 %3922, 8388640
  %3924 = select i1 %3923, float %3390, float 0.000000e+00
  %3925 = and i32 %3823, 2048
  %3926 = icmp ne i32 %3925, 0
  %3927 = select i1 %3926, float %3390, float 0.000000e+00
  %3928 = and i32 %3823, 8192
  %3929 = icmp ne i32 %3928, 0
  %3930 = select i1 %3929, float %3390, float 0.000000e+00
  %3931 = icmp eq i32 %3913, 0
  br i1 %3931, label %3932, label %3957

; <label>:3932                                    ; preds = %3915
  %3933 = fsub fast float %3691, %3077
  %3934 = fsub fast float %3692, %3078
  %3935 = fmul fast float %3918, %3933
  %3936 = fmul fast float %3918, %3934
  %3937 = fadd fast float %3935, %3077
  %3938 = fadd fast float %3936, %3078
  %3939 = fsub fast float %3693, %3090
  %3940 = fmul fast float %3921, %3939
  %3941 = fadd fast float %3940, %3090
  %3942 = fsub fast float %3690, %3089
  %3943 = fmul fast float %3924, %3942
  %3944 = fadd fast float %3943, %3089
  %3945 = fsub fast float %3793, %3091
  %3946 = fmul fast float %3927, %3945
  %3947 = fadd fast float %3946, %3091
  %3948 = fsub fast float %3790, %3085
  %3949 = fsub fast float %3791, %3086
  %3950 = fsub fast float %3792, %3087
  %3951 = fmul fast float %3930, %3948
  %3952 = fmul fast float %3930, %3949
  %3953 = fmul fast float %3930, %3950
  %3954 = fadd fast float %3951, %3085
  %3955 = fadd fast float %3952, %3086
  %3956 = fadd fast float %3953, %3087
  br label %4021

; <label>:3957                                    ; preds = %3915
  %3958 = icmp eq i32 %3913, 4
  br i1 %3958, label %3959, label %3999

; <label>:3959                                    ; preds = %3957
  %3960 = fmul fast float %3918, %3691
  %3961 = fmul fast float %3918, %3692
  %3962 = fadd fast float %3960, %3077
  %3963 = fadd fast float %3961, %3078
  %3964 = call float @dx.op.binary.f32(i32 36, float %3090, float %3693)  ; FMin(a,b)
  %3965 = fsub fast float %3964, %3090
  %3966 = fmul fast float %3965, %3921
  %3967 = fadd fast float %3966, %3090
  %3968 = fadd fast float %3690, %3089
  %3969 = fmul fast float %3968, 0x3FF337FAE0000000
  %3970 = fmul fast float %3089, %3089
  %3971 = fmul fast float %3690, %3690
  %3972 = fadd fast float %3971, %3970
  %3973 = fmul fast float %3972, 0x3FE5152B00000000
  %3974 = fmul fast float %3089, 0xBFCC1F85E0000000
  %3975 = fmul fast float %3974, %3690
  %3976 = fadd fast float %3975, 0xBFE1363700000000
  %3977 = fadd fast float %3976, %3969
  %3978 = fsub fast float %3977, %3973
  %3979 = fmul fast float %3968, 0x3FBA6F0D00000000
  %3980 = fmul fast float %3972, 0x3FD0432880000000
  %3981 = fmul fast float %3089, 0xBFEF110800000000
  %3982 = fmul fast float %3981, %3690
  %3983 = fadd fast float %3982, 1.000000e+00
  %3984 = fsub fast float %3983, %3979
  %3985 = fadd fast float %3984, %3980
  %3986 = fdiv fast float %3978, %3985
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = fsub fast float %3987, %3089
  %3989 = fmul fast float %3988, %3924
  %3990 = fadd fast float %3989, %3089
  %3991 = fmul fast float %3927, %3793
  %3992 = fadd fast float %3991, %3091
  %3993 = fmul fast float %3930, %3790
  %3994 = fmul fast float %3930, %3791
  %3995 = fmul fast float %3930, %3792
  %3996 = fadd fast float %3993, %3085
  %3997 = fadd fast float %3994, %3086
  %3998 = fadd fast float %3995, %3087
  br label %4021

; <label>:3999                                    ; preds = %3957
  %4000 = icmp eq i32 %3913, 8
  br i1 %4000, label %4001, label %4021

; <label>:4001                                    ; preds = %3999
  %4002 = fmul fast float %3918, %3691
  %4003 = fmul fast float %3918, %3692
  %4004 = fadd fast float %4002, %3077
  %4005 = fadd fast float %4003, %3078
  %4006 = call float @dx.op.binary.f32(i32 36, float %3090, float %3693)  ; FMin(a,b)
  %4007 = fsub fast float %4006, %3090
  %4008 = fmul fast float %4007, %3921
  %4009 = fadd fast float %4008, %3090
  %4010 = fsub fast float %3690, %3089
  %4011 = fmul fast float %3924, %4010
  %4012 = fadd fast float %4011, %3089
  %4013 = fmul fast float %3927, %3793
  %4014 = fadd fast float %4013, %3091
  %4015 = fmul fast float %3930, %3790
  %4016 = fmul fast float %3930, %3791
  %4017 = fmul fast float %3930, %3792
  %4018 = fadd fast float %4015, %3085
  %4019 = fadd fast float %4016, %3086
  %4020 = fadd fast float %4017, %3087
  br label %4021

; <label>:4021                                    ; preds = %4001, %3999, %3959, %3932, %3904, %3389, %3093, %3076
  %4022 = phi float [ %3077, %3904 ], [ %3077, %3389 ], [ %3077, %3076 ], [ %3077, %3093 ], [ %3937, %3932 ], [ %3962, %3959 ], [ %3077, %3999 ], [ %4004, %4001 ]
  %4023 = phi float [ %3078, %3904 ], [ %3078, %3389 ], [ %3078, %3076 ], [ %3078, %3093 ], [ %3938, %3932 ], [ %3963, %3959 ], [ %3078, %3999 ], [ %4005, %4001 ]
  %4024 = phi float [ %3905, %3904 ], [ %3079, %3389 ], [ %3079, %3076 ], [ %3079, %3093 ], [ %3905, %3932 ], [ %3905, %3959 ], [ %3905, %3999 ], [ %3905, %4001 ]
  %4025 = phi float [ %3906, %3904 ], [ %3080, %3389 ], [ %3080, %3076 ], [ %3080, %3093 ], [ %3906, %3932 ], [ %3906, %3959 ], [ %3906, %3999 ], [ %3906, %4001 ]
  %4026 = phi float [ %3907, %3904 ], [ %3081, %3389 ], [ %3081, %3076 ], [ %3081, %3093 ], [ %3907, %3932 ], [ %3907, %3959 ], [ %3907, %3999 ], [ %3907, %4001 ]
  %4027 = phi float [ %3908, %3904 ], [ %3082, %3389 ], [ %3082, %3076 ], [ %3082, %3093 ], [ %3908, %3932 ], [ %3908, %3959 ], [ %3908, %3999 ], [ %3908, %4001 ]
  %4028 = phi float [ %3909, %3904 ], [ %3083, %3389 ], [ %3083, %3076 ], [ %3083, %3093 ], [ %3909, %3932 ], [ %3909, %3959 ], [ %3909, %3999 ], [ %3909, %4001 ]
  %4029 = phi float [ %3910, %3904 ], [ %3084, %3389 ], [ %3084, %3076 ], [ %3084, %3093 ], [ %3910, %3932 ], [ %3910, %3959 ], [ %3910, %3999 ], [ %3910, %4001 ]
  %4030 = phi float [ %3085, %3904 ], [ %3085, %3389 ], [ %3085, %3076 ], [ %3085, %3093 ], [ %3954, %3932 ], [ %3996, %3959 ], [ %3085, %3999 ], [ %4018, %4001 ]
  %4031 = phi float [ %3086, %3904 ], [ %3086, %3389 ], [ %3086, %3076 ], [ %3086, %3093 ], [ %3955, %3932 ], [ %3997, %3959 ], [ %3086, %3999 ], [ %4019, %4001 ]
  %4032 = phi float [ %3087, %3904 ], [ %3087, %3389 ], [ %3087, %3076 ], [ %3087, %3093 ], [ %3956, %3932 ], [ %3998, %3959 ], [ %3087, %3999 ], [ %4020, %4001 ]
  %4033 = phi float [ %3911, %3904 ], [ %3088, %3389 ], [ %3088, %3076 ], [ %3088, %3093 ], [ %3911, %3932 ], [ %3911, %3959 ], [ %3911, %3999 ], [ %3911, %4001 ]
  %4034 = phi float [ %3089, %3904 ], [ %3089, %3389 ], [ %3089, %3076 ], [ %3089, %3093 ], [ %3944, %3932 ], [ %3990, %3959 ], [ %3089, %3999 ], [ %4012, %4001 ]
  %4035 = phi float [ %3090, %3904 ], [ %3090, %3389 ], [ %3090, %3076 ], [ %3090, %3093 ], [ %3941, %3932 ], [ %3967, %3959 ], [ %3090, %3999 ], [ %4009, %4001 ]
  %4036 = phi float [ %3091, %3904 ], [ %3091, %3389 ], [ %3091, %3076 ], [ %3091, %3093 ], [ %3947, %3932 ], [ %3992, %3959 ], [ %3091, %3999 ], [ %4014, %4001 ]
  %4037 = phi float [ %3912, %3904 ], [ %3092, %3389 ], [ %3092, %3076 ], [ %3092, %3093 ], [ %3912, %3932 ], [ %3912, %3959 ], [ %3912, %3999 ], [ %3912, %4001 ]
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = call float @dx.op.dot2.f32(i32 54, float %4022, float %4023, float %4022, float %4023)  ; Dot2(ax,ay,bx,by)
  %4041 = fmul fast float %4040, 0x3FE3333340000000
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4042, float %4022, float %4023, float %4042)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = call float @dx.op.unary.f32(i32 25, float %4043)  ; Rsqrt(value)
  %4045 = fmul fast float %4044, %4022
  %4046 = fmul fast float %4044, %4023
  %4047 = fmul fast float %4042, %4044
  %4048 = fmul fast float %4047, %120
  %4049 = fmul fast float %4047, %122
  %4050 = fmul fast float %4047, %124
  %4051 = fmul fast float %4045, %83
  %4052 = fmul fast float %4045, %84
  %4053 = fmul fast float %4045, %85
  %4054 = fadd fast float %4048, %4051
  %4055 = fadd fast float %4049, %4052
  %4056 = fadd fast float %4050, %4053
  %4057 = fmul fast float %134, %4046
  %4058 = fmul fast float %135, %4046
  %4059 = fmul fast float %136, %4046
  %4060 = fadd fast float %4054, %4057
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %4060, float %4061, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4060, %4064
  %4066 = fmul fast float %4061, %4064
  %4067 = fmul fast float %4062, %4064
  %4068 = and i32 %64, 1
  %4069 = icmp eq i32 %4068, 0
  br i1 %4069, label %4070, label %4635

; <label>:4070                                    ; preds = %4021
  %4071 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4072 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4073 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4074 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4075 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4077 = fadd fast float %4071, %170
  %4078 = fadd fast float %4072, %171
  %4079 = fadd fast float %4073, %172
  %4080 = fadd fast float %4074, %170
  %4081 = fadd fast float %4075, %171
  %4082 = fadd fast float %4076, %172
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4090 = fmul fast float %4084, %111
  %4091 = fmul fast float %4090, %4088
  %4092 = fmul fast float %4085, %112
  %4093 = fmul fast float %4092, %4089
  %4094 = fptoui float %4091 to i32
  %4095 = fptoui float %4093 to i32
  %4096 = fadd fast float %4084, -1.000000e+00
  %4097 = fadd fast float %4085, -1.000000e+00
  %4098 = fptoui float %4096 to i32
  %4099 = fptoui float %4097 to i32
  %4100 = call i32 @dx.op.binary.i32(i32 40, i32 %4094, i32 %4098)  ; UMin(a,b)
  %4101 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4099)  ; UMin(a,b)
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4105 = fmul fast float %4103, %99
  %4106 = fsub fast float %4105, %4104
  %4107 = fadd fast float %4086, -1.000000e+00
  %4108 = call float @dx.op.binary.f32(i32 36, float %4106, float %4107)  ; FMin(a,b)
  %4109 = fptoui float %4108 to i32
  %4110 = fptoui float %4084 to i32
  %4111 = fptoui float %4085 to i32
  %4112 = mul i32 %4109, %4111
  %4113 = add i32 %4112, %4101
  %4114 = mul i32 %4113, %4110
  %4115 = add i32 %4114, %4100
  %4116 = shl i32 %4115, 2
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = and i32 %4118, 1023
  %4120 = lshr i32 %4118, 10
  %4121 = icmp eq i32 %4119, 0
  br i1 %4121, label %4600, label %4122

; <label>:4122                                    ; preds = %4070
  %4123 = and i32 %4118, 1023
  br label %4124

; <label>:4124                                    ; preds = %4254, %4122
  %4125 = phi i32 [ %4204, %4254 ], [ 0, %4122 ]
  %4126 = phi float [ %4255, %4254 ], [ 0.000000e+00, %4122 ]
  %4127 = phi float [ %4256, %4254 ], [ %1198, %4122 ]
  %4128 = phi float [ %4257, %4254 ], [ %4039, %4122 ]
  %4129 = phi float [ %4258, %4254 ], [ %4037, %4122 ]
  %4130 = phi float [ %4259, %4254 ], [ 0.000000e+00, %4122 ]
  %4131 = phi float [ %4260, %4254 ], [ 0.000000e+00, %4122 ]
  %4132 = phi float [ %4261, %4254 ], [ %4030, %4122 ]
  %4133 = phi float [ %4262, %4254 ], [ %4031, %4122 ]
  %4134 = phi float [ %4263, %4254 ], [ %4032, %4122 ]
  %4135 = phi float [ %4264, %4254 ], [ %4027, %4122 ]
  %4136 = phi float [ %4265, %4254 ], [ %4028, %4122 ]
  %4137 = phi float [ %4266, %4254 ], [ %4029, %4122 ]
  %4138 = phi float [ %4267, %4254 ], [ %4065, %4122 ]
  %4139 = phi float [ %4268, %4254 ], [ %4066, %4122 ]
  %4140 = phi float [ %4269, %4254 ], [ %4067, %4122 ]
  %4141 = phi float [ %4270, %4254 ], [ %4035, %4122 ]
  %4142 = phi float [ %4271, %4254 ], [ %4034, %4122 ]
  %4143 = phi float [ %4272, %4254 ], [ 0.000000e+00, %4122 ]
  %4144 = phi float [ %4273, %4254 ], [ %4033, %4122 ]
  %4145 = phi float [ %4274, %4254 ], [ %4024, %4122 ]
  %4146 = phi float [ %4275, %4254 ], [ %4025, %4122 ]
  %4147 = phi float [ %4276, %4254 ], [ %4026, %4122 ]
  %4148 = add nuw nsw i32 %4125, %4120
  %4149 = shl i32 %4148, 2
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = shl i32 %4151, 8
  %4153 = or i32 %4152, 48
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = extractvalue %dx.types.ResRet.f32 %4154, 3
  %4159 = or i32 %4152, 64
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.i32 %4160, 1
  %4163 = or i32 %4152, 80
  %4164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 3
  %4167 = or i32 %4152, 96
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.ResRet.f32 %4168, 3
  %4173 = or i32 %4152, 112
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4176 = or i32 %4152, 128
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.ResRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.ResRet.f32 %4177, 2
  %4181 = extractvalue %dx.types.ResRet.f32 %4177, 3
  %4182 = or i32 %4152, 144
  %4183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.ResRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.ResRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.ResRet.f32 %4183, 3
  %4188 = or i32 %4152, 160
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.ResRet.f32 %4189, 2
  %4193 = extractvalue %dx.types.ResRet.f32 %4189, 3
  %4194 = or i32 %4152, 192
  %4195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.i32 %4195, 0
  %4197 = or i32 %4152, 208
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = or i32 %4152, 248
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = add nuw nsw i32 %4125, 1
  %4205 = bitcast float %4158 to i32
  %4206 = and i32 %4205, 512
  %4207 = icmp eq i32 %4206, 0
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = call float @dx.op.dot4.f32(i32 56, float %4209, float %4210, float %4211, float %4212, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4214 = or i32 %4152, 16
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = extractvalue %dx.types.ResRet.f32 %4215, 3
  %4220 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4221 = or i32 %4152, 32
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = call float @dx.op.dot4.f32(i32 56, float %4223, float %4224, float %4225, float %4226, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4228 = call float @dx.op.unary.f32(i32 27, float %4213)  ; Round_ni(value)
  %4229 = call float @dx.op.unary.f32(i32 6, float %4228)  ; FAbs(value)
  %4230 = call float @dx.op.unary.f32(i32 27, float %4220)  ; Round_ni(value)
  %4231 = call float @dx.op.unary.f32(i32 6, float %4230)  ; FAbs(value)
  %4232 = call float @dx.op.unary.f32(i32 6, float %4227)  ; FAbs(value)
  %4233 = call float @dx.op.unary.f32(i32 27, float %4232)  ; Round_ni(value)
  %4234 = fadd fast float %4231, %4229
  %4235 = fadd fast float %4234, %4233
  %4236 = fcmp fast oeq float %4235, 0.000000e+00
  %4237 = call float @dx.op.dot4.f32(i32 56, float %4209, float %4210, float %4211, float %4212, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4238 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4239 = call float @dx.op.dot4.f32(i32 56, float %4209, float %4210, float %4211, float %4212, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4240 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4241 = fsub fast float %4237, %4213
  %4242 = fsub fast float %4239, %4213
  %4243 = fsub fast float %4238, %4220
  %4244 = fsub fast float %4240, %4220
  %4245 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4156, float %4157, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4248 = fadd fast float %4247, %4245
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4246, 0
  %4251 = fcmp fast ogt float %4249, %4250
  %4252 = and i1 %4236, %4251
  %4253 = and i1 %4207, %4252
  br i1 %4253, label %4278, label %4254

; <label>:4254                                    ; preds = %4586, %4359, %4278, %4124
  %4255 = phi float [ %4126, %4278 ], [ %4362, %4359 ], [ %4362, %4586 ], [ %4126, %4124 ]
  %4256 = phi float [ %4127, %4278 ], [ %4127, %4359 ], [ %4562, %4586 ], [ %4127, %4124 ]
  %4257 = phi float [ %4128, %4278 ], [ %4128, %4359 ], [ %4561, %4586 ], [ %4128, %4124 ]
  %4258 = phi float [ %4129, %4278 ], [ %4129, %4359 ], [ %4559, %4586 ], [ %4129, %4124 ]
  %4259 = phi float [ %4130, %4278 ], [ %4130, %4359 ], [ %4486, %4586 ], [ %4130, %4124 ]
  %4260 = phi float [ %4131, %4278 ], [ %4131, %4359 ], [ %4484, %4586 ], [ %4131, %4124 ]
  %4261 = phi float [ %4132, %4278 ], [ %4132, %4359 ], [ %4529, %4586 ], [ %4132, %4124 ]
  %4262 = phi float [ %4133, %4278 ], [ %4133, %4359 ], [ %4530, %4586 ], [ %4133, %4124 ]
  %4263 = phi float [ %4134, %4278 ], [ %4134, %4359 ], [ %4531, %4586 ], [ %4134, %4124 ]
  %4264 = phi float [ %4135, %4278 ], [ %4135, %4359 ], [ %4596, %4586 ], [ %4135, %4124 ]
  %4265 = phi float [ %4136, %4278 ], [ %4136, %4359 ], [ %4597, %4586 ], [ %4136, %4124 ]
  %4266 = phi float [ %4137, %4278 ], [ %4137, %4359 ], [ %4598, %4586 ], [ %4137, %4124 ]
  %4267 = phi float [ %4138, %4278 ], [ %4138, %4359 ], [ %4465, %4586 ], [ %4138, %4124 ]
  %4268 = phi float [ %4139, %4278 ], [ %4139, %4359 ], [ %4466, %4586 ], [ %4139, %4124 ]
  %4269 = phi float [ %4140, %4278 ], [ %4140, %4359 ], [ %4467, %4586 ], [ %4140, %4124 ]
  %4270 = phi float [ %4141, %4278 ], [ %4141, %4359 ], [ %4539, %4586 ], [ %4141, %4124 ]
  %4271 = phi float [ %4142, %4278 ], [ %4142, %4359 ], [ %4536, %4586 ], [ %4142, %4124 ]
  %4272 = phi float [ %4143, %4278 ], [ %4143, %4359 ], [ %4533, %4586 ], [ %4143, %4124 ]
  %4273 = phi float [ %4144, %4278 ], [ %4144, %4359 ], [ %4482, %4586 ], [ %4144, %4124 ]
  %4274 = phi float [ %4145, %4278 ], [ %4145, %4359 ], [ %4477, %4586 ], [ %4145, %4124 ]
  %4275 = phi float [ %4146, %4278 ], [ %4146, %4359 ], [ %4478, %4586 ], [ %4146, %4124 ]
  %4276 = phi float [ %4147, %4278 ], [ %4147, %4359 ], [ %4479, %4586 ], [ %4147, %4124 ]
  %4277 = icmp eq i32 %4204, %4123
  br i1 %4277, label %4599, label %4124

; <label>:4278                                    ; preds = %4124
  %4279 = extractvalue %dx.types.ResRet.f32 %4174, 3
  %4280 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4282 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4283 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4284 = extractvalue %dx.types.ResRet.i32 %4160, 3
  %4285 = extractvalue %dx.types.ResRet.i32 %4160, 2
  %4286 = add i32 %4284, 0
  %4287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4287, %dx.types.Handle %4288, float %4213, float %4220, float undef, float undef, i32 0, i32 0, i32 undef, float %4241, float %4243, float undef, float %4242, float %4244, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = fmul fast float %4290, %4283
  %4292 = fadd fast float %4291, %4282
  %4293 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4294 = fmul fast float %4213, %4169
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4220, float %4294)  ; FMad(a,b,c)
  %4296 = fadd fast float %4295, %4281
  %4297 = fmul fast float %4213, %4171
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4220, float %4297)  ; FMad(a,b,c)
  %4299 = fadd fast float %4298, %4280
  %4300 = fmul fast float %4241, %4169
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4243, float %4300)  ; FMad(a,b,c)
  %4302 = fmul fast float %4241, %4171
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4243, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4242, %4169
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4244, float %4304)  ; FMad(a,b,c)
  %4306 = fmul fast float %4242, %4171
  %4307 = call float @dx.op.tertiary.f32(i32 46, float %4172, float %4244, float %4306)  ; FMad(a,b,c)
  %4308 = add i32 %4285, 0
  %4309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4310 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4309, %dx.types.Handle %4288, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4311 = extractvalue %dx.types.ResRet.f32 %4310, 0
  %4312 = and i32 %4205, 1024
  %4313 = icmp ne i32 %4312, 0
  %4314 = fcmp fast ogt float %4311, 0x3FE0101020000000
  %4315 = uitofp i1 %4314 to float
  %4316 = select i1 %4313, float %4315, float %4311
  %4317 = and i32 %4205, 8192
  %4318 = icmp ne i32 %4317, 0
  %4319 = select i1 %4318, float %4279, float 1.000000e+00
  %4320 = fmul fast float %4213, 2.000000e+00
  %4321 = fadd fast float %4320, -1.000000e+00
  %4322 = call float @dx.op.unary.f32(i32 6, float %4321)  ; FAbs(value)
  %4323 = fmul fast float %4322, %4202
  %4324 = fsub fast float %4323, %4202
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fmul fast float %4220, 2.000000e+00
  %4327 = fadd fast float %4326, -1.000000e+00
  %4328 = call float @dx.op.unary.f32(i32 6, float %4327)  ; FAbs(value)
  %4329 = fmul fast float %4328, %4203
  %4330 = fsub fast float %4329, %4203
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4232, %4165
  %4333 = fsub fast float %4332, %4165
  %4334 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4335 = fmul fast float %4293, %4319
  %4336 = fmul fast float %4335, %4290
  %4337 = fmul fast float %4336, %4325
  %4338 = fmul fast float %4337, %4316
  %4339 = fmul fast float %4338, %4331
  %4340 = fmul fast float %4339, %4334
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4344 = fsub fast float %4249, %4343
  %4345 = fmul fast float %4344, %4342
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4340, %4166
  %4348 = fadd fast float %4340, %4166
  %4349 = fmul fast float %4348, %4175
  %4350 = fsub fast float %4349, %4175
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = and i32 %4205, 128
  %4353 = icmp ne i32 %4352, 0
  %4354 = select i1 %4353, float %4351, float %4347
  %4355 = fmul fast float %4354, %4346
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = fcmp fast ugt float %4355, %4357
  br i1 %4358, label %4359, label %4254

; <label>:4359                                    ; preds = %4278
  %4360 = select i1 %4318, float %4355, float 0.000000e+00
  %4361 = fadd fast float %4360, %4126
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  br i1 %4318, label %4254, label %4363

; <label>:4363                                    ; preds = %4359
  %4364 = and i32 %4205, 4
  %4365 = and i32 %4205, 8
  %4366 = add i32 %4161, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.ResRet.f32 %4369, 3
  %4374 = bitcast float %4187 to i32
  %4375 = and i32 %4374, 255
  %4376 = uitofp i32 %4375 to float
  %4377 = lshr i32 %4374, 8
  %4378 = and i32 %4377, 255
  %4379 = uitofp i32 %4378 to float
  %4380 = fmul fast float %4373, %4376
  %4381 = fadd fast float %4380, %4379
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = add i32 %4162, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4384, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = extractvalue %dx.types.ResRet.f32 %4385, 3
  %4390 = bitcast float %4181 to i32
  %4391 = and i32 %4390, 255
  %4392 = uitofp i32 %4391 to float
  %4393 = lshr i32 %4390, 8
  %4394 = and i32 %4393, 255
  %4395 = uitofp i32 %4394 to float
  %4396 = lshr i32 %4390, 16
  %4397 = and i32 %4396, 255
  %4398 = uitofp i32 %4397 to float
  %4399 = fmul fast float %4398, 0x3F70101000000000
  %4400 = fmul fast float %4386, %4392
  %4401 = fadd fast float %4400, %4395
  %4402 = fmul fast float %4401, 0x3F70101000000000
  %4403 = fadd fast float %4387, -5.000000e-01
  %4404 = fadd fast float %4389, -5.000000e-01
  %4405 = fmul fast float %4403, %4399
  %4406 = fmul fast float %4404, %4399
  %4407 = fadd fast float %4405, 5.000000e-01
  %4408 = fadd fast float %4406, 5.000000e-01
  %4409 = fmul fast float %4370, %4190
  %4410 = fmul fast float %4371, %4191
  %4411 = fmul fast float %4372, %4192
  %4412 = fmul fast float %4407, 2.000000e+00
  %4413 = fadd fast float %4412, -1.000000e+00
  %4414 = fmul fast float %4408, 2.000000e+00
  %4415 = fadd fast float %4414, -1.000000e+00
  %4416 = fadd fast float %4413, %4415
  %4417 = fmul fast float %4416, 5.000000e-01
  %4418 = fsub fast float %4413, %4415
  %4419 = fmul fast float %4418, 5.000000e-01
  %4420 = call float @dx.op.unary.f32(i32 6, float %4417)  ; FAbs(value)
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4423 = fsub fast float %4421, %4422
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4417, float %4419, float %4423, float %4417, float %4419, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  %4426 = fmul fast float %4417, %4425
  %4427 = fmul fast float %4419, %4425
  %4428 = fmul fast float %4425, %4423
  %4429 = fmul fast float %4428, %4155
  %4430 = fmul fast float %4428, %4156
  %4431 = fmul fast float %4428, %4157
  %4432 = fmul fast float %4426, %4178
  %4433 = fmul fast float %4426, %4179
  %4434 = fmul fast float %4426, %4180
  %4435 = fadd fast float %4432, %4429
  %4436 = fadd fast float %4433, %4430
  %4437 = fadd fast float %4434, %4431
  %4438 = fmul fast float %4427, %4184
  %4439 = fmul fast float %4427, %4185
  %4440 = fmul fast float %4427, %4186
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4442, float %4443, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 25, float %4444)  ; Rsqrt(value)
  %4446 = fmul fast float %4441, %4445
  %4447 = fmul fast float %4442, %4445
  %4448 = fmul fast float %4443, %4445
  %4449 = icmp ne i32 %4365, 0
  %4450 = select i1 %4449, float 1.000000e+00, float 0.000000e+00
  %4451 = fmul fast float %4355, %4450
  %4452 = and i32 %4205, 1
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4454, label %4458

; <label>:4454                                    ; preds = %4363
  %4455 = fsub fast float %4446, %4138
  %4456 = fsub fast float %4447, %4139
  %4457 = fsub fast float %4448, %4140
  br label %4458

; <label>:4458                                    ; preds = %4454, %4363
  %4459 = phi float [ %4455, %4454 ], [ %4446, %4363 ]
  %4460 = phi float [ %4456, %4454 ], [ %4447, %4363 ]
  %4461 = phi float [ %4457, %4454 ], [ %4448, %4363 ]
  %4462 = fmul float %4461, %4451
  %4463 = fmul float %4460, %4451
  %4464 = fmul float %4459, %4451
  %4465 = fadd fast float %4464, %4138
  %4466 = fadd fast float %4463, %4139
  %4467 = fadd fast float %4462, %4140
  %4468 = icmp ne i32 %4364, 0
  %4469 = select i1 %4468, float 1.000000e+00, float 0.000000e+00
  %4470 = fmul fast float %4355, %4469
  %4471 = fsub fast float %4409, %4145
  %4472 = fsub fast float %4410, %4146
  %4473 = fsub fast float %4411, %4147
  %4474 = fmul fast float %4471, %4470
  %4475 = fmul fast float %4472, %4470
  %4476 = fmul fast float %4473, %4470
  %4477 = fadd fast float %4474, %4145
  %4478 = fadd fast float %4475, %4146
  %4479 = fadd fast float %4476, %4147
  %4480 = fsub fast float %4382, %4144
  %4481 = fmul fast float %4480, %4470
  %4482 = fadd fast float %4481, %4144
  %4483 = fmul fast float %4470, %4131
  %4484 = fsub fast float %4131, %4483
  %4485 = fmul fast float %4470, %4130
  %4486 = fsub fast float %4130, %4485
  %4487 = bitcast float %4199 to i32
  %4488 = lshr i32 %4487, 16
  %4489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4488)  ; LegacyF16ToF32(value)
  %4490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4491 = extractvalue %dx.types.ResRet.i32 %4490, 0
  %4492 = and i32 %4491, 1
  %4493 = icmp eq i32 %4492, 0
  br i1 %4493, label %4494, label %4519

; <label>:4494                                    ; preds = %4458
  %4495 = fadd fast float %4382, 0xBFB99999A0000000
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fmul fast float %4496, 0x3FF1C71C80000000
  %4498 = fsub fast float 1.000000e+00, %4497
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, %4409
  %4501 = fmul fast float %4499, %4410
  %4502 = fmul fast float %4499, %4411
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.binary.f32(i32 35, float %4504, float %4505)  ; FMax(a,b)
  %4507 = call float @dx.op.binary.f32(i32 35, float %4503, float %4506)  ; FMax(a,b)
  %4508 = fcmp fast ogt float %4507, 0.000000e+00
  %4509 = bitcast float %4507 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = select i1 %4508, float %4511, float 0.000000e+00
  %4513 = fmul fast float %4503, %4489
  %4514 = fmul fast float %4504, %4489
  %4515 = fmul fast float %4505, %4489
  %4516 = fmul fast float %4513, %4512
  %4517 = fmul fast float %4514, %4512
  %4518 = fmul fast float %4515, %4512
  br label %4519

; <label>:4519                                    ; preds = %4494, %4458
  %4520 = phi float [ %4489, %4458 ], [ %4516, %4494 ]
  %4521 = phi float [ %4489, %4458 ], [ %4517, %4494 ]
  %4522 = phi float [ %4489, %4458 ], [ %4518, %4494 ]
  %4523 = fsub fast float %4520, %4132
  %4524 = fsub fast float %4521, %4133
  %4525 = fsub fast float %4522, %4134
  %4526 = fmul fast float %4523, %4470
  %4527 = fmul fast float %4524, %4470
  %4528 = fmul fast float %4525, %4470
  %4529 = fadd fast float %4526, %4132
  %4530 = fadd fast float %4527, %4133
  %4531 = fadd fast float %4528, %4134
  %4532 = fadd fast float %4355, %4143
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fsub fast float %4402, %4142
  %4535 = fmul fast float %4534, %4451
  %4536 = fadd fast float %4535, %4142
  %4537 = fsub fast float %4388, %4141
  %4538 = fmul fast float %4537, %4451
  %4539 = fadd fast float %4538, %4141
  %4540 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4544 = fmul fast float %4543, %4540
  %4545 = fadd fast float %4544, %4542
  %4546 = call float @dx.op.unary.f32(i32 7, float %4545)  ; Saturate(value)
  %4547 = bitcast float %4193 to i32
  %4548 = and i32 %4547, 65535
  %4549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4548)  ; LegacyF16ToF32(value)
  %4550 = lshr i32 %4547, 16
  %4551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4550)  ; LegacyF16ToF32(value)
  %4552 = fcmp fast oge float %4549, 0.000000e+00
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = select i1 %4552, float %4549, float %4554
  %4556 = fadd fast float %4555, %4551
  %4557 = fsub fast float %4546, %4129
  %4558 = fmul fast float %4557, %4355
  %4559 = fadd fast float %4558, %4129
  %4560 = fmul fast float %4556, %4355
  %4561 = call float @dx.op.binary.f32(i32 35, float %4128, float %4560)  ; FMax(a,b)
  %4562 = call float @dx.op.binary.f32(i32 35, float %4127, float %4355)  ; FMax(a,b)
  %4563 = and i32 %4205, 16
  %4564 = icmp eq i32 %4563, 0
  br i1 %4564, label %4586, label %4565

; <label>:4565                                    ; preds = %4519
  %4566 = add i32 %4196, 0
  %4567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4566, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4568 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4567, %dx.types.Handle %4368, float %4296, float %4299, float undef, float undef, i32 0, i32 0, i32 undef, float %4301, float %4303, float undef, float %4305, float %4307, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.ResRet.f32 %4568, 1
  %4571 = extractvalue %dx.types.ResRet.f32 %4568, 2
  %4572 = and i32 %4487, 65535
  %4573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4572)  ; LegacyF16ToF32(value)
  %4574 = fmul fast float %4569, %4190
  %4575 = fmul fast float %4570, %4191
  %4576 = fmul fast float %4571, %4192
  %4577 = and i32 %4205, 16384
  %4578 = icmp ne i32 %4577, 0
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = select i1 %4578, float %4580, float 1.000000e+00
  %4582 = fmul fast float %4581, %4573
  %4583 = fmul fast float %4574, %4582
  %4584 = fmul fast float %4575, %4582
  %4585 = fmul fast float %4576, %4582
  br label %4586

; <label>:4586                                    ; preds = %4565, %4519
  %4587 = phi float [ %4583, %4565 ], [ 0.000000e+00, %4519 ]
  %4588 = phi float [ %4584, %4565 ], [ 0.000000e+00, %4519 ]
  %4589 = phi float [ %4585, %4565 ], [ 0.000000e+00, %4519 ]
  %4590 = fsub fast float %4587, %4135
  %4591 = fsub fast float %4588, %4136
  %4592 = fsub fast float %4589, %4137
  %4593 = fmul fast float %4590, %4355
  %4594 = fmul fast float %4591, %4355
  %4595 = fmul fast float %4592, %4355
  %4596 = fadd fast float %4593, %4135
  %4597 = fadd fast float %4594, %4136
  %4598 = fadd fast float %4595, %4137
  br label %4254

; <label>:4599                                    ; preds = %4254
  br label %4600

; <label>:4600                                    ; preds = %4599, %4070
  %4601 = phi float [ 0.000000e+00, %4070 ], [ %4255, %4599 ]
  %4602 = phi float [ %1198, %4070 ], [ %4256, %4599 ]
  %4603 = phi float [ %4039, %4070 ], [ %4257, %4599 ]
  %4604 = phi float [ %4037, %4070 ], [ %4258, %4599 ]
  %4605 = phi float [ 0.000000e+00, %4070 ], [ %4259, %4599 ]
  %4606 = phi float [ 0.000000e+00, %4070 ], [ %4260, %4599 ]
  %4607 = phi float [ %4030, %4070 ], [ %4261, %4599 ]
  %4608 = phi float [ %4031, %4070 ], [ %4262, %4599 ]
  %4609 = phi float [ %4032, %4070 ], [ %4263, %4599 ]
  %4610 = phi float [ %4027, %4070 ], [ %4264, %4599 ]
  %4611 = phi float [ %4028, %4070 ], [ %4265, %4599 ]
  %4612 = phi float [ %4029, %4070 ], [ %4266, %4599 ]
  %4613 = phi float [ %4065, %4070 ], [ %4267, %4599 ]
  %4614 = phi float [ %4066, %4070 ], [ %4268, %4599 ]
  %4615 = phi float [ %4067, %4070 ], [ %4269, %4599 ]
  %4616 = phi float [ %4035, %4070 ], [ %4270, %4599 ]
  %4617 = phi float [ %4034, %4070 ], [ %4271, %4599 ]
  %4618 = phi float [ 0.000000e+00, %4070 ], [ %4272, %4599 ]
  %4619 = phi float [ %4033, %4070 ], [ %4273, %4599 ]
  %4620 = phi float [ %4024, %4070 ], [ %4274, %4599 ]
  %4621 = phi float [ %4025, %4070 ], [ %4275, %4599 ]
  %4622 = phi float [ %4026, %4070 ], [ %4276, %4599 ]
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4613, float %4614, float %4615, float %4613, float %4614, float %4615)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4624, %4613
  %4626 = fmul fast float %4624, %4614
  %4627 = fmul fast float %4624, %4615
  %4628 = fadd fast float %4618, %1198
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4626, float %4627, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 25, float %4630)  ; Rsqrt(value)
  %4632 = fmul fast float %4631, %4625
  %4633 = fmul fast float %4631, %4626
  %4634 = fmul fast float %4631, %4627
  br label %4635

; <label>:4635                                    ; preds = %4600, %4021
  %4636 = phi float [ %4610, %4600 ], [ %4027, %4021 ]
  %4637 = phi float [ %4611, %4600 ], [ %4028, %4021 ]
  %4638 = phi float [ %4612, %4600 ], [ %4029, %4021 ]
  %4639 = phi float [ %4632, %4600 ], [ %4065, %4021 ]
  %4640 = phi float [ %4633, %4600 ], [ %4066, %4021 ]
  %4641 = phi float [ %4634, %4600 ], [ %4067, %4021 ]
  %4642 = phi float [ %4620, %4600 ], [ %4024, %4021 ]
  %4643 = phi float [ %4621, %4600 ], [ %4025, %4021 ]
  %4644 = phi float [ %4622, %4600 ], [ %4026, %4021 ]
  %4645 = phi float [ %4607, %4600 ], [ %4030, %4021 ]
  %4646 = phi float [ %4608, %4600 ], [ %4031, %4021 ]
  %4647 = phi float [ %4609, %4600 ], [ %4032, %4021 ]
  %4648 = phi float [ %4619, %4600 ], [ %4033, %4021 ]
  %4649 = phi float [ %4629, %4600 ], [ %1198, %4021 ]
  %4650 = phi float [ %4617, %4600 ], [ %4034, %4021 ]
  %4651 = phi float [ %4616, %4600 ], [ %4035, %4021 ]
  %4652 = phi float [ %4606, %4600 ], [ 0.000000e+00, %4021 ]
  %4653 = phi float [ %4605, %4600 ], [ 0.000000e+00, %4021 ]
  %4654 = phi float [ %4601, %4600 ], [ 0.000000e+00, %4021 ]
  %4655 = phi float [ %4603, %4600 ], [ %4039, %4021 ]
  %4656 = phi float [ %4602, %4600 ], [ %1198, %4021 ]
  %4657 = phi float [ %4604, %4600 ], [ %4037, %4021 ]
  %4658 = fadd fast float %4648, 0xBFB99999A0000000
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = fmul fast float %4659, 0x3FF1C71C80000000
  %4661 = call float @dx.op.binary.f32(i32 36, float %4648, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4662 = fsub fast float 1.000000e+00, %4660
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fmul fast float %4663, %4642
  %4665 = fmul fast float %4663, %4643
  %4666 = fmul fast float %4663, %4644
  %4667 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = fmul fast float %4660, %4642
  %4671 = fmul fast float %4660, %4643
  %4672 = fmul fast float %4660, %4644
  %4673 = fadd fast float %4670, %4661
  %4674 = fadd fast float %4671, %4661
  %4675 = fadd fast float %4672, %4661
  %4676 = call float @dx.op.unary.f32(i32 7, float %4673)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4679 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.i32 %4680, 0
  %4682 = and i32 %4681, 1
  %4683 = icmp eq i32 %4682, 0
  br i1 %4683, label %4698, label %4684

; <label>:4684                                    ; preds = %4635
  %4685 = call float @dx.op.binary.f32(i32 35, float %4668, float %4669)  ; FMax(a,b)
  %4686 = call float @dx.op.binary.f32(i32 35, float %4667, float %4685)  ; FMax(a,b)
  %4687 = fcmp fast ogt float %4686, 0.000000e+00
  %4688 = bitcast float %4686 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = select i1 %4687, float %4690, float 0.000000e+00
  %4692 = fmul fast float %4667, %4645
  %4693 = fmul fast float %4668, %4646
  %4694 = fmul fast float %4669, %4647
  %4695 = fmul fast float %4692, %4691
  %4696 = fmul fast float %4693, %4691
  %4697 = fmul fast float %4694, %4691
  br label %4698

; <label>:4698                                    ; preds = %4684, %4635
  %4699 = phi float [ %4695, %4684 ], [ %4645, %4635 ]
  %4700 = phi float [ %4696, %4684 ], [ %4646, %4635 ]
  %4701 = phi float [ %4697, %4684 ], [ %4647, %4635 ]
  %4702 = fadd fast float %4667, 0xBFD51EB860000000
  %4703 = fadd fast float %4668, 0xBFD51EB860000000
  %4704 = fadd fast float %4669, 0xBFD51EB860000000
  %4705 = fmul fast float %4702, %4702
  %4706 = fmul fast float %4703, %4703
  %4707 = fmul fast float %4704, %4704
  %4708 = fmul fast float %4705, %4705
  %4709 = fmul fast float %4708, 1.000000e+02
  %4710 = fmul fast float %4706, %4706
  %4711 = fmul fast float %4710, 1.000000e+02
  %4712 = fmul fast float %4707, %4707
  %4713 = fmul fast float %4712, 1.000000e+02
  %4714 = fadd fast float %4709, 3.500000e+00
  %4715 = fadd fast float %4711, 3.500000e+00
  %4716 = fadd fast float %4713, 3.500000e+00
  %4717 = call float @dx.op.binary.f32(i32 35, float %4699, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4718 = call float @dx.op.binary.f32(i32 35, float %4700, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4701, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4720 = fdiv fast float %4714, %4717
  %4721 = fdiv fast float %4715, %4718
  %4722 = fdiv fast float %4716, %4719
  %4723 = fmul fast float %4036, 0xBFF7154760000000
  %4724 = fmul fast float %4723, %4720
  %4725 = call float @dx.op.unary.f32(i32 21, float %4724)  ; Exp(value)
  %4726 = fmul fast float %4725, 2.500000e-01
  %4727 = fmul fast float %4036, 0xBFDEC709E0000000
  %4728 = fmul fast float %4727, %4720
  %4729 = call float @dx.op.unary.f32(i32 21, float %4728)  ; Exp(value)
  %4730 = fmul fast float %4729, 7.500000e-01
  %4731 = fmul fast float %4723, %4721
  %4732 = call float @dx.op.unary.f32(i32 21, float %4731)  ; Exp(value)
  %4733 = fmul fast float %4732, 2.500000e-01
  %4734 = fmul fast float %4727, %4721
  %4735 = call float @dx.op.unary.f32(i32 21, float %4734)  ; Exp(value)
  %4736 = fmul fast float %4735, 7.500000e-01
  %4737 = fmul fast float %4723, %4722
  %4738 = call float @dx.op.unary.f32(i32 21, float %4737)  ; Exp(value)
  %4739 = fmul fast float %4738, 2.500000e-01
  %4740 = fmul fast float %4727, %4722
  %4741 = call float @dx.op.unary.f32(i32 21, float %4740)  ; Exp(value)
  %4742 = fmul fast float %4741, 7.500000e-01
  %4743 = fadd fast float %4726, %4730
  %4744 = fadd fast float %4733, %4736
  %4745 = fadd fast float %4739, %4742
  %4746 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.i32 %4746, 3
  %4748 = and i32 %4747, 8
  %4749 = icmp ne i32 %4748, 0
  %4750 = call float @dx.op.binary.f32(i32 35, float %4667, float %4642)  ; FMax(a,b)
  %4751 = call float @dx.op.binary.f32(i32 35, float %4668, float %4642)  ; FMax(a,b)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4669, float %4642)  ; FMax(a,b)
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %4669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = select i1 %232, float %4642, float %4667
  %4755 = select i1 %232, float %4753, float %4668
  %4756 = select i1 %232, float 1.000000e+00, float %4669
  %4757 = select i1 %4749, float %4750, float %4754
  %4758 = select i1 %4749, float %4751, float %4755
  %4759 = select i1 %4749, float %4752, float %4756
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 0
  %4762 = extractvalue %dx.types.CBufRet.f32 %4760, 1
  %4763 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4764 = fadd fast float %4761, %170
  %4765 = fadd fast float %4762, %171
  %4766 = fadd fast float %4763, %172
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = fsub fast float %4764, %4768
  %4771 = fsub fast float %4765, %4769
  %4772 = fmul fast float %4770, %4770
  %4773 = fmul fast float %4771, %4771
  %4774 = fadd fast float %4772, %4773
  %4775 = call float @dx.op.unary.f32(i32 24, float %4774)  ; Sqrt(value)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4777 = fcmp fast olt float %4775, %4776
  br i1 %4777, label %4778, label %4845

; <label>:4778                                    ; preds = %4698
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4786 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4787 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4788 = extractvalue %dx.types.CBufRet.f32 %4779, 3
  %4789 = extractvalue %dx.types.CBufRet.f32 %4781, 3
  %4790 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4791 = fadd fast float %4788, %4764
  %4792 = fadd fast float %4789, %4765
  %4793 = fadd fast float %4790, %4766
  %4794 = fmul fast float %4791, %4780
  %4795 = call float @dx.op.tertiary.f32(i32 46, float %4792, float %4782, float %4794)  ; FMad(a,b,c)
  %4796 = call float @dx.op.tertiary.f32(i32 46, float %4793, float %4784, float %4795)  ; FMad(a,b,c)
  %4797 = fmul fast float %4791, %4785
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4792, float %4786, float %4797)  ; FMad(a,b,c)
  %4799 = call float @dx.op.tertiary.f32(i32 46, float %4793, float %4787, float %4798)  ; FMad(a,b,c)
  %4800 = fsub fast float %4796, %4788
  %4801 = fsub fast float %4799, %4789
  %4802 = fsub fast float %4800, %4768
  %4803 = fadd fast float %4802, %4776
  %4804 = fsub fast float %4801, %4769
  %4805 = fadd fast float %4804, %4776
  %4806 = extractvalue %dx.types.CBufRet.f32 %4767, 3
  %4807 = fmul fast float %4803, %4806
  %4808 = fmul fast float %4805, %4806
  %4809 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4811 = fsub fast float 1.000000e+00, %4809
  %4812 = fsub fast float 1.000000e+00, %4810
  %4813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4811, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4814 = extractvalue %dx.types.ResRet.f32 %4813, 0
  %4815 = fcmp fast ugt float %4814, 0.000000e+00
  br i1 %4815, label %4816, label %5119

; <label>:4816                                    ; preds = %4778
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4819 = fmul fast float %4818, %4814
  %4820 = extractvalue %dx.types.CBufRet.f32 %4817, 3
  %4821 = fadd fast float %4820, %4819
  %4822 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4823 = fadd fast float %4821, %4790
  %4824 = fmul fast float %4796, %4784
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4799, float %4787, float %4824)  ; FMad(a,b,c)
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4822, float %4825)  ; FMad(a,b,c)
  %4827 = fsub fast float %4826, %4790
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4830 = fsub fast float %4827, %4829
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4811, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  %4835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4811, float %4812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4836 = extractvalue %dx.types.ResRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.ResRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.ResRet.f32 %4835, 2
  %4839 = fadd fast float %4836, %4832
  %4840 = fmul fast float %4839, 0x3F847AE140000000
  %4841 = fadd fast float %4837, %4833
  %4842 = fmul fast float %4841, 0x3F847AE140000000
  %4843 = fadd fast float %4838, %4834
  %4844 = fmul fast float %4843, 0x3F847AE140000000
  br label %5119

; <label>:4845                                    ; preds = %4698
  %4846 = and i32 %208, 1
  %4847 = icmp eq i32 %4846, 0
  br i1 %4847, label %5119, label %4848

; <label>:4848                                    ; preds = %4845
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4855 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4858 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4859 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4860 = extractvalue %dx.types.CBufRet.f32 %4853, 3
  %4861 = fadd fast float %4858, %4764
  %4862 = fadd fast float %4859, %4765
  %4863 = fadd fast float %4860, %4766
  %4864 = fmul fast float %4861, %4850
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4852, float %4864)  ; FMad(a,b,c)
  %4866 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4854, float %4865)  ; FMad(a,b,c)
  %4867 = fmul fast float %4861, %4855
  %4868 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4856, float %4867)  ; FMad(a,b,c)
  %4869 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4857, float %4868)  ; FMad(a,b,c)
  %4870 = fsub fast float %4866, %4858
  %4871 = fsub fast float %4869, %4859
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.i32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.i32 %4879, 1
  %4882 = udiv i32 %4881, %4880
  %4883 = fsub fast float %4870, %4873
  %4884 = fsub fast float %4871, %4874
  %4885 = call float @dx.op.binary.f32(i32 35, float %4883, float 0.000000e+00)  ; FMax(a,b)
  %4886 = call float @dx.op.binary.f32(i32 35, float %4884, float 0.000000e+00)  ; FMax(a,b)
  %4887 = call float @dx.op.binary.f32(i32 36, float %4885, float %4875)  ; FMin(a,b)
  %4888 = call float @dx.op.binary.f32(i32 36, float %4886, float %4876)  ; FMin(a,b)
  %4889 = add i32 %4880, -1
  %4890 = add i32 %4882, -1
  %4891 = fmul fast float %4887, %4878
  %4892 = fmul fast float %4888, %4878
  %4893 = fptoui float %4891 to i32
  %4894 = fptoui float %4892 to i32
  %4895 = call i32 @dx.op.binary.i32(i32 40, i32 %4893, i32 %4889)  ; UMin(a,b)
  %4896 = call i32 @dx.op.binary.i32(i32 40, i32 %4894, i32 %4890)  ; UMin(a,b)
  %4897 = mul i32 %4896, %4880
  %4898 = add i32 %4897, %4895
  %4899 = shl i32 %4898, 2
  %4900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4899, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.i32 %4900, 0
  %4902 = icmp eq i32 %4901, -1
  br i1 %4902, label %5119, label %4903

; <label>:4903                                    ; preds = %4848
  %4904 = mul i32 %4901, 148
  %4905 = add i32 %4904, 4
  %4906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4905, i32 undef)  ; BufferLoad(srv,index,wot)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = add i32 %4904, 8
  %4909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4908, i32 undef)  ; BufferLoad(srv,index,wot)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = add i32 %4904, 36
  %4912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.f32 %4912, 0
  %4914 = add i32 %4904, 60
  %4915 = add i32 %4904, 92
  %4916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.i32 %4916, 0
  %4918 = add i32 %4904, 116
  %4919 = fsub fast float %4870, %4907
  %4920 = fsub fast float %4871, %4910
  %4921 = fmul fast float %4878, %4919
  %4922 = fmul fast float %4878, %4920
  %4923 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4928 = call float @dx.op.unary.f32(i32 83, float %4923)  ; DerivCoarseX(value)
  %4929 = call float @dx.op.unary.f32(i32 83, float %4925)  ; DerivCoarseX(value)
  %4930 = call float @dx.op.unary.f32(i32 84, float %4923)  ; DerivCoarseY(value)
  %4931 = call float @dx.op.unary.f32(i32 84, float %4925)  ; DerivCoarseY(value)
  %4932 = fmul fast float %4928, %4927
  %4933 = fmul fast float %4929, %4927
  %4934 = fmul fast float %4930, %4927
  %4935 = fmul fast float %4931, %4927
  %4936 = call float @dx.op.dot2.f32(i32 54, float %4934, float %4935, float %4934, float %4935)  ; Dot2(ax,ay,bx,by)
  %4937 = call float @dx.op.dot2.f32(i32 54, float %4932, float %4933, float %4932, float %4933)  ; Dot2(ax,ay,bx,by)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float %4936)  ; FMax(a,b)
  %4939 = call float @dx.op.unary.f32(i32 23, float %4938)  ; Log(value)
  %4940 = fmul fast float %4939, 5.000000e-01
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4943 = fadd fast float %4942, %4940
  %4944 = call float @dx.op.binary.f32(i32 35, float %4943, float 0.000000e+00)  ; FMax(a,b)
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4947 = fadd fast float %4946, %4944
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4950 = fadd fast float %4947, %4949
  %4951 = add i32 %4917, 0
  %4952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4953 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4952, i32 0)  ; GetDimensions(handle,mipLevel)
  %4954 = extractvalue %dx.types.Dimensions %4953, 0
  %4955 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4954)  ; FirstbitLo(value)
  %4956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.i32 %4956, 1
  %4958 = sub nsw i32 %4957, %4955
  %4959 = sitofp i32 %4958 to float
  %4960 = fsub fast float %4950, %4959
  %4961 = call float @dx.op.binary.f32(i32 35, float %4960, float 0.000000e+00)  ; FMax(a,b)
  %4962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4952, %dx.types.Handle %52, float %4923, float %4925, float %4913, float undef, i32 0, i32 0, i32 undef, float %4961)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = fcmp ule float %4963, 0x3FE0101020000000
  %4965 = extractvalue %dx.types.CBufRet.i32 %4956, 0
  %4966 = and i32 %4965, 128
  %4967 = icmp ne i32 %4966, 0
  %4968 = and i1 %4964, %4967
  br i1 %4968, label %5119, label %4969

; <label>:4969                                    ; preds = %4903
  %4970 = add i32 %4904, 20
  %4971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4970, i32 undef)  ; BufferLoad(srv,index,wot)
  %4972 = extractvalue %dx.types.ResRet.f32 %4971, 0
  %4973 = add i32 %4904, 24
  %4974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4973, i32 undef)  ; BufferLoad(srv,index,wot)
  %4975 = extractvalue %dx.types.ResRet.f32 %4974, 0
  %4976 = add i32 %4904, 40
  %4977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4976, i32 undef)  ; BufferLoad(srv,index,wot)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = add i32 %4904, 96
  %4980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4979, i32 undef)  ; BufferLoad(srv,index,wot)
  %4981 = extractvalue %dx.types.ResRet.i32 %4980, 0
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 2
  %4984 = fmul fast float %4983, %4923
  %4985 = fmul fast float %4983, %4925
  %4986 = extractvalue %dx.types.CBufRet.f32 %4982, 3
  %4987 = fadd fast float %4984, %4986
  %4988 = fadd fast float %4985, %4986
  %4989 = add i32 %4981, 0
  %4990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4989, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4991 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4990, i32 0)  ; GetDimensions(handle,mipLevel)
  %4992 = extractvalue %dx.types.Dimensions %4991, 0
  %4993 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4992)  ; FirstbitLo(value)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 1
  %4996 = sub nsw i32 %4995, %4993
  %4997 = sitofp i32 %4996 to float
  %4998 = fsub fast float %4947, %4997
  %4999 = call float @dx.op.binary.f32(i32 35, float %4998, float 0.000000e+00)  ; FMax(a,b)
  %5000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4990, %dx.types.Handle %52, float %4987, float %4988, float %4978, float undef, i32 0, i32 0, i32 undef, float %4999)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  %5002 = fmul fast float %5001, %4972
  %5003 = fadd fast float %5002, %4975
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5012 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5013 = fadd fast float %5009, %4870
  %5014 = fadd fast float %5011, %4871
  %5015 = fadd fast float %5003, %5012
  %5016 = fmul fast float %5013, %5005
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %5006, float %5016)  ; FMad(a,b,c)
  %5018 = call float @dx.op.tertiary.f32(i32 46, float %5015, float %5007, float %5017)  ; FMad(a,b,c)
  %5019 = fsub fast float %5018, %5012
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5022 = fsub fast float %5019, %5021
  %5023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5024 = extractvalue %dx.types.CBufRet.i32 %5023, 0
  %5025 = call i32 @dx.op.binary.i32(i32 40, i32 %4901, i32 %5024)  ; UMin(a,b)
  %5026 = mul i32 %5025, 36
  %5027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5026, i32 undef)  ; BufferLoad(srv,index,wot)
  %5028 = extractvalue %dx.types.ResRet.i32 %5027, 0
  %5029 = add i32 %5026, 4
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = fmul fast float %5031, %4923
  %5033 = fmul fast float %5031, %4925
  %5034 = extractvalue %dx.types.CBufRet.f32 %5030, 1
  %5035 = fadd fast float %5032, %5034
  %5036 = fadd fast float %5033, %5034
  %5037 = icmp eq i32 %5028, 0
  br i1 %5037, label %5106, label %5038

; <label>:5038                                    ; preds = %4969
  br label %5039

; <label>:5039                                    ; preds = %5096, %5038
  %5040 = phi float [ %5097, %5096 ], [ 0.000000e+00, %5038 ]
  %5041 = phi float [ %5098, %5096 ], [ 0.000000e+00, %5038 ]
  %5042 = phi float [ %5099, %5096 ], [ 0.000000e+00, %5038 ]
  %5043 = phi float [ %5100, %5096 ], [ 0.000000e+00, %5038 ]
  %5044 = phi float [ %5101, %5096 ], [ 0.000000e+00, %5038 ]
  %5045 = phi float [ %5102, %5096 ], [ 0.000000e+00, %5038 ]
  %5046 = phi i32 [ %5103, %5096 ], [ 0, %5038 ]
  %5047 = shl i32 %5046, 2
  %5048 = add i32 %4914, %5047
  %5049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5048, i32 undef)  ; BufferLoad(srv,index,wot)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = add i32 %4918, %5047
  %5052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5051, i32 undef)  ; BufferLoad(srv,index,wot)
  %5053 = extractvalue %dx.types.ResRet.i32 %5052, 0
  %5054 = add i32 %5053, 0
  %5055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5056 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5055, i32 0)  ; GetDimensions(handle,mipLevel)
  %5057 = extractvalue %dx.types.Dimensions %5056, 0
  %5058 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5057)  ; FirstbitLo(value)
  %5059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5060 = extractvalue %dx.types.CBufRet.i32 %5059, 1
  %5061 = sub nsw i32 %5060, %5058
  %5062 = sitofp i32 %5061 to float
  %5063 = fsub fast float %4947, %5062
  %5064 = call float @dx.op.binary.f32(i32 35, float %5063, float 0.000000e+00)  ; FMax(a,b)
  %5065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5055, %dx.types.Handle %52, float %5035, float %5036, float %5050, float undef, i32 0, i32 0, i32 undef, float %5064)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 0
  %5067 = fcmp fast ogt float %5066, 0.000000e+00
  br i1 %5067, label %5068, label %5096

; <label>:5068                                    ; preds = %5039
  %5069 = add i32 %5029, %5047
  %5070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5069, i32 undef)  ; BufferLoad(srv,index,wot)
  %5071 = extractvalue %dx.types.ResRet.i32 %5070, 0
  %5072 = and i32 %5071, 32767
  %5073 = mul nuw nsw i32 %5072, 928
  %5074 = add nuw nsw i32 %5073, 48
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5079 = add nuw nsw i32 %5073, 60
  %5080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5079, i32 undef)  ; BufferLoad(srv,index,wot)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.ResRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.ResRet.f32 %5080, 2
  %5084 = fmul fast float %5076, %5066
  %5085 = fmul fast float %5077, %5066
  %5086 = fmul fast float %5078, %5066
  %5087 = fadd fast float %5084, %5040
  %5088 = fadd fast float %5085, %5041
  %5089 = fadd fast float %5086, %5042
  %5090 = fmul fast float %5081, %5066
  %5091 = fmul fast float %5082, %5066
  %5092 = fmul fast float %5083, %5066
  %5093 = fadd fast float %5090, %5043
  %5094 = fadd fast float %5091, %5044
  %5095 = fadd fast float %5092, %5045
  br label %5096

; <label>:5096                                    ; preds = %5068, %5039
  %5097 = phi float [ %5087, %5068 ], [ %5040, %5039 ]
  %5098 = phi float [ %5088, %5068 ], [ %5041, %5039 ]
  %5099 = phi float [ %5089, %5068 ], [ %5042, %5039 ]
  %5100 = phi float [ %5093, %5068 ], [ %5043, %5039 ]
  %5101 = phi float [ %5094, %5068 ], [ %5044, %5039 ]
  %5102 = phi float [ %5095, %5068 ], [ %5045, %5039 ]
  %5103 = add nuw i32 %5046, 1
  %5104 = icmp eq i32 %5103, %5028
  br i1 %5104, label %5105, label %5039

; <label>:5105                                    ; preds = %5096
  br label %5106

; <label>:5106                                    ; preds = %5105, %4969
  %5107 = phi float [ 0.000000e+00, %4969 ], [ %5097, %5105 ]
  %5108 = phi float [ 0.000000e+00, %4969 ], [ %5098, %5105 ]
  %5109 = phi float [ 0.000000e+00, %4969 ], [ %5099, %5105 ]
  %5110 = phi float [ 0.000000e+00, %4969 ], [ %5100, %5105 ]
  %5111 = phi float [ 0.000000e+00, %4969 ], [ %5101, %5105 ]
  %5112 = phi float [ 0.000000e+00, %4969 ], [ %5102, %5105 ]
  %5113 = fadd fast float %5110, %5107
  %5114 = fmul fast float %5113, 0x3F847AE140000000
  %5115 = fadd fast float %5111, %5108
  %5116 = fmul fast float %5115, 0x3F847AE140000000
  %5117 = fadd fast float %5112, %5109
  %5118 = fmul fast float %5117, 0x3F847AE140000000
  br label %5119

; <label>:5119                                    ; preds = %5106, %4903, %4848, %4845, %4816, %4778
  %5120 = phi float [ %4830, %4816 ], [ -1.310720e+05, %4778 ], [ %5022, %5106 ], [ -1.310720e+05, %4848 ], [ -1.310720e+05, %4903 ], [ -1.310720e+05, %4845 ]
  %5121 = phi float [ %4840, %4816 ], [ 0.000000e+00, %4778 ], [ %5114, %5106 ], [ 0.000000e+00, %4848 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4845 ]
  %5122 = phi float [ %4842, %4816 ], [ 0.000000e+00, %4778 ], [ %5116, %5106 ], [ 0.000000e+00, %4848 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4845 ]
  %5123 = phi float [ %4844, %4816 ], [ 0.000000e+00, %4778 ], [ %5118, %5106 ], [ 0.000000e+00, %4848 ], [ 0.000000e+00, %4903 ], [ 0.000000e+00, %4845 ]
  %5124 = phi i1 [ true, %4816 ], [ false, %4778 ], [ true, %5106 ], [ false, %4848 ], [ false, %4903 ], [ false, %4845 ]
  %5125 = and i32 %208, 3
  %5126 = icmp eq i32 %5125, 1
  %5127 = select i1 %5126, float 1.000000e+00, float 0.000000e+00
  %5128 = fsub fast float %5120, %172
  %5129 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5130 = select i1 %5124, float %5129, float 1.000000e+00
  %5131 = fmul fast float %5130, %5127
  %5132 = icmp eq i32 %5125, 3
  %5133 = select i1 %5132, float 1.000000e+00, float %5131
  %5134 = call float @dx.op.binary.f32(i32 35, float %4654, float %5133)  ; FMax(a,b)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fcmp fast une float %5135, 0.000000e+00
  %5137 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5138 = call float @dx.op.unary.f32(i32 25, float %5137)  ; Rsqrt(value)
  br i1 %5136, label %5146, label %5139

; <label>:5139                                    ; preds = %5119
  %5140 = fmul fast float %5138, %170
  %5141 = fmul fast float %5138, %171
  %5142 = fmul fast float %5138, %172
  %5143 = fsub fast float -0.000000e+00, %5140
  %5144 = fsub fast float -0.000000e+00, %5141
  %5145 = fsub fast float -0.000000e+00, %5142
  br label %5314

; <label>:5146                                    ; preds = %5119
  %5147 = fmul fast float %170, %5138
  %5148 = fsub fast float -0.000000e+00, %5147
  %5149 = fmul fast float %171, %5138
  %5150 = fsub fast float -0.000000e+00, %5149
  %5151 = fmul fast float %172, %5138
  %5152 = fsub fast float -0.000000e+00, %5151
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5150, float %5152, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = fmul fast float %5135, 2.500000e+00
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5135, 0x4013FFFFE0000000
  %5157 = fadd fast float %5156, 0xBFFFFFFFE0000000
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fmul fast float %5135, 0x4004000020000000
  %5160 = fadd fast float %5159, 0xBFF8000040000000
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5163 = fmul fast float %4658, 1.000000e+01
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fmul fast float %5164, 2.000000e+00
  %5166 = fsub fast float 3.000000e+00, %5165
  %5167 = fmul fast float %5164, %5164
  %5168 = fmul fast float %5167, %5166
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = fsub fast float 0x3FE3333340000000, %4679
  %5171 = fmul fast float %5170, 0x400AAAAAA0000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5169, %5172
  %5174 = fmul fast float %4757, 0x3FEA2B8620000000
  %5175 = fmul fast float %4758, 0x3FEA2B8620000000
  %5176 = fmul fast float %4759, 0x3FEA2B8620000000
  %5177 = fadd fast float %5174, 0x3FC81DFBA0000000
  %5178 = fmul fast float %5177, %4757
  %5179 = fadd fast float %5178, 0x3F910E6020000000
  %5180 = fadd fast float %5175, 0x3FC81DFBA0000000
  %5181 = fmul fast float %5180, %4758
  %5182 = fadd fast float %5181, 0x3F910E6020000000
  %5183 = fadd fast float %5176, 0x3FC81DFBA0000000
  %5184 = fmul fast float %5183, %4759
  %5185 = fadd fast float %5184, 0x3F910E6020000000
  %5186 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = fsub fast float %5186, %4757
  %5190 = fsub fast float %5187, %4758
  %5191 = fsub fast float %5188, %4759
  %5192 = fmul fast float %5189, %5162
  %5193 = fmul fast float %5192, %5173
  %5194 = fmul fast float %5190, %5162
  %5195 = fmul fast float %5194, %5173
  %5196 = fmul fast float %5191, %5162
  %5197 = fmul fast float %5196, %5173
  %5198 = fadd fast float %5193, %4757
  %5199 = fadd fast float %5195, %4758
  %5200 = fadd fast float %5197, %4759
  %5201 = fmul fast float %4651, %4651
  %5202 = fmul fast float %5201, %5201
  %5203 = fadd fast float %5158, 1.000000e+00
  %5204 = fsub fast float %5203, %5173
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = fsub fast float 1.000000e+00, %5202
  %5209 = call float @dx.op.binary.f32(i32 36, float %5205, float %5208)  ; FMin(a,b)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5211 = call float @dx.op.binary.f32(i32 35, float %5209, float %5210)  ; FMax(a,b)
  %5212 = fadd fast float %5207, 0xBFE4CCCCC0000000
  %5213 = fmul fast float %5212, 0x4006DB6DA0000000
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fmul fast float %5214, 2.000000e+00
  %5216 = fsub fast float 3.000000e+00, %5215
  %5217 = bitcast float %4676 to i32
  %5218 = ashr i32 %5217, 1
  %5219 = add nsw i32 %5218, 532487669
  %5220 = bitcast i32 %5219 to float
  %5221 = fsub fast float 1.000000e+00, %5220
  %5222 = bitcast float %5221 to i32
  %5223 = sub nsw i32 2129859010, %5222
  %5224 = bitcast i32 %5223 to float
  %5225 = fmul fast float %5224, 2.000000e+00
  %5226 = bitcast float %4677 to i32
  %5227 = ashr i32 %5226, 1
  %5228 = add nsw i32 %5227, 532487669
  %5229 = bitcast i32 %5228 to float
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = bitcast float %5230 to i32
  %5232 = sub nsw i32 2129859010, %5231
  %5233 = bitcast i32 %5232 to float
  %5234 = fmul fast float %5233, 2.000000e+00
  %5235 = bitcast float %4678 to i32
  %5236 = ashr i32 %5235, 1
  %5237 = add nsw i32 %5236, 532487669
  %5238 = bitcast i32 %5237 to float
  %5239 = fsub fast float 1.000000e+00, %5238
  %5240 = bitcast float %5239 to i32
  %5241 = sub nsw i32 2129859010, %5240
  %5242 = bitcast i32 %5241 to float
  %5243 = fmul fast float %5242, 2.000000e+00
  %5244 = fsub fast float 0x4002A9FBE0000000, %5225
  %5245 = fadd fast float %5225, 0x3FD54FDF00000000
  %5246 = bitcast float %5245 to i32
  %5247 = sub nsw i32 2129859010, %5246
  %5248 = bitcast i32 %5247 to float
  %5249 = fmul fast float %5248, %5244
  %5250 = fmul fast float %5249, %5249
  %5251 = fsub fast float 0x4002A9FBE0000000, %5234
  %5252 = fadd fast float %5234, 0x3FD54FDF00000000
  %5253 = bitcast float %5252 to i32
  %5254 = sub nsw i32 2129859010, %5253
  %5255 = bitcast i32 %5254 to float
  %5256 = fmul fast float %5255, %5251
  %5257 = fmul fast float %5256, %5256
  %5258 = fsub fast float 0x4002A9FBE0000000, %5243
  %5259 = fadd fast float %5243, 0x3FD54FDF00000000
  %5260 = bitcast float %5259 to i32
  %5261 = sub nsw i32 2129859010, %5260
  %5262 = bitcast i32 %5261 to float
  %5263 = fmul fast float %5262, %5258
  %5264 = fmul fast float %5263, %5263
  %5265 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5250)  ; FMax(a,b)
  %5266 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5257)  ; FMax(a,b)
  %5267 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5264)  ; FMax(a,b)
  %5268 = fsub fast float 1.000000e+00, %5153
  %5269 = fadd fast float %5268, %5169
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fsub fast float 1.000000e+00, %5133
  %5272 = fmul fast float %5211, %5271
  %5273 = fmul fast float %5214, %5214
  %5274 = fmul fast float %5273, %5272
  %5275 = fmul fast float %5274, %5216
  %5276 = fmul fast float %5271, 0xBFE99999A0000000
  %5277 = fmul fast float %5276, %5162
  %5278 = fmul fast float %5277, %5173
  %5279 = fadd fast float %5278, 1.000000e+00
  %5280 = fadd fast float %4679, -1.000000e+00
  %5281 = fmul fast float %5279, %5280
  %5282 = fadd fast float %5281, 1.000000e+00
  %5283 = fsub fast float %5265, %4676
  %5284 = fsub fast float %5266, %4677
  %5285 = fsub fast float %5267, %4678
  %5286 = fmul fast float %5275, %5283
  %5287 = fmul fast float %5275, %5284
  %5288 = fmul fast float %5275, %5285
  %5289 = fadd fast float %5286, %4676
  %5290 = fadd fast float %5287, %4677
  %5291 = fadd fast float %5288, %4678
  %5292 = fsub fast float %120, %4639
  %5293 = fsub fast float %122, %4640
  %5294 = fsub fast float %124, %4641
  %5295 = fmul fast float %5275, %5292
  %5296 = fmul fast float %5275, %5293
  %5297 = fmul fast float %5275, %5294
  %5298 = fadd fast float %5295, %4639
  %5299 = fadd fast float %5296, %4640
  %5300 = fadd fast float %5297, %4641
  %5301 = fmul fast float %5275, %5270
  %5302 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fmul fast float %5301, %5303
  %5305 = fadd fast float %5304, %5302
  %5306 = fsub fast float 1.000000e+00, %4651
  %5307 = fmul fast float %5275, %5306
  %5308 = fadd fast float %5307, %4651
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5298, float %5299, float %5300)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 25, float %5309)  ; Rsqrt(value)
  %5311 = fmul fast float %5298, %5310
  %5312 = fmul fast float %5299, %5310
  %5313 = fmul fast float %5300, %5310
  br label %5314

; <label>:5314                                    ; preds = %5146, %5139
  %5315 = phi float [ %5145, %5139 ], [ %5152, %5146 ]
  %5316 = phi float [ %5144, %5139 ], [ %5150, %5146 ]
  %5317 = phi float [ %5143, %5139 ], [ %5148, %5146 ]
  %5318 = phi float [ %5142, %5139 ], [ %5151, %5146 ]
  %5319 = phi float [ %5141, %5139 ], [ %5149, %5146 ]
  %5320 = phi float [ %5140, %5139 ], [ %5147, %5146 ]
  %5321 = phi float [ %4757, %5139 ], [ %5198, %5146 ]
  %5322 = phi float [ %4758, %5139 ], [ %5199, %5146 ]
  %5323 = phi float [ %4759, %5139 ], [ %5200, %5146 ]
  %5324 = phi float [ %4676, %5139 ], [ %5289, %5146 ]
  %5325 = phi float [ %4677, %5139 ], [ %5290, %5146 ]
  %5326 = phi float [ %4678, %5139 ], [ %5291, %5146 ]
  %5327 = phi float [ %4639, %5139 ], [ %5311, %5146 ]
  %5328 = phi float [ %4640, %5139 ], [ %5312, %5146 ]
  %5329 = phi float [ %4641, %5139 ], [ %5313, %5146 ]
  %5330 = phi float [ %4679, %5139 ], [ %5305, %5146 ]
  %5331 = phi float [ %4651, %5139 ], [ %5308, %5146 ]
  %5332 = fsub fast float -0.000000e+00, %172
  %5333 = select i1 %232, float 0.000000e+00, float %5326
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float %5317, float %5316, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5319, float %5318, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5337 = fmul fast float %5336, 2.000000e+00
  %5338 = fmul fast float %5337, %5327
  %5339 = fmul fast float %5337, %5328
  %5340 = fmul fast float %5337, %5329
  %5341 = fsub fast float %5320, %5338
  %5342 = fsub fast float %5319, %5339
  %5343 = fsub fast float %5318, %5340
  %5344 = call float @dx.op.binary.f32(i32 36, float %5331, float 1.000000e+00)  ; FMin(a,b)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = bitcast float %5345 to i32
  %5347 = ashr i32 %5346, 1
  %5348 = add nsw i32 %5347, 532487669
  %5349 = bitcast i32 %5348 to float
  %5350 = fsub fast float 1.000000e+00, %5330
  %5351 = call float @dx.op.binary.f32(i32 35, float %5350, float 0x3F847AE140000000)  ; FMax(a,b)
  %5352 = fmul fast float %5351, %5351
  %5353 = fmul fast float %5352, %5352
  %5354 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5349, float %5353, float %5354, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = fsub fast float 1.000000e+00, %5331
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fmul fast float %5361, 0x3FD20DD760000000
  %5363 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5364 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fcmp fast oeq float %5364, 0.000000e+00
  %5366 = fcmp fast oeq float %5363, 0.000000e+00
  %5367 = or i1 %5366, %5365
  br i1 %5367, label %5397, label %5368

; <label>:5368                                    ; preds = %5314
  %5369 = fsub fast float -0.000000e+00, %82
  %5370 = fsub fast float -0.000000e+00, %80
  %5371 = call float @dx.op.unary.f32(i32 24, float %5364)  ; Sqrt(value)
  %5372 = fdiv fast float %5371, %5363
  %5373 = fcmp fast ogt float %5372, 0x3FFB6F8900000000
  %5374 = select i1 %5373, float 0x3FFB6F8900000000, float %5372
  %5375 = fmul fast float %5374, 0x3FE8A23460000000
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = call float @dx.op.binary.f32(i32 35, float %5374, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5378 = fmul fast float %5376, %5363
  %5379 = fmul fast float %5377, 0x3FF279A740000000
  %5380 = fadd fast float %5379, -1.000000e+00
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %81, float %5369, float %5370, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.unary.f32(i32 25, float %5381)  ; Rsqrt(value)
  %5383 = fmul fast float %5382, %5369
  %5384 = fmul fast float %5382, %5370
  %5385 = fmul fast float %5382, %81
  %5386 = fmul fast float %5380, %5380
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5377, 0x40005F8BE0000000
  %5389 = fsub fast float 0x400C5BF8A0000000, %5388
  %5390 = fdiv fast float %5378, %5389
  %5391 = fmul fast float %5390, 0x3FEE31C3C0000000
  %5392 = fmul fast float %5391, %5387
  %5393 = fmul fast float %5377, 0x3FDACB7480000000
  %5394 = fadd fast float %5393, 0xBFD7347680000000
  %5395 = fmul fast float %5394, %5390
  %5396 = fmul fast float %5395, %5387
  br label %5397

; <label>:5397                                    ; preds = %5368, %5314
  %5398 = phi float [ %5383, %5368 ], [ 0.000000e+00, %5314 ]
  %5399 = phi float [ %5384, %5368 ], [ 0.000000e+00, %5314 ]
  %5400 = phi float [ %5385, %5368 ], [ 0.000000e+00, %5314 ]
  %5401 = phi float [ %5392, %5368 ], [ 0.000000e+00, %5314 ]
  %5402 = phi float [ %5396, %5368 ], [ 0.000000e+00, %5314 ]
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fmul fast float %5403, 0x3FDF454380000000
  %5405 = fmul fast float %5403, %5403
  %5406 = fmul fast float %5405, 0x3FEE471020000000
  %5407 = fadd fast float %5406, 0xBFD42F6020000000
  %5408 = fmul fast float %5363, 0x3FD20DD760000000
  %5409 = fmul fast float %5407, %5402
  %5410 = fadd fast float %5409, %5408
  %5411 = fmul fast float %5404, %5401
  %5412 = fadd fast float %5410, %5411
  %5413 = fsub fast float %5410, %5411
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fmul fast float %5414, 0x3FDF454380000000
  %5416 = fmul fast float %5414, %5414
  %5417 = fmul fast float %5416, 0x3FEE471020000000
  %5418 = fadd fast float %5417, 0xBFD42F6020000000
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5363, float %5401, float %5402, float 0x3FD20DD760000000, float %5415, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5421 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = fcmp fast oeq float %5421, 0.000000e+00
  %5423 = fcmp fast oeq float %5420, 0.000000e+00
  %5424 = or i1 %5423, %5422
  br i1 %5424, label %5454, label %5425

; <label>:5425                                    ; preds = %5397
  %5426 = fsub fast float -0.000000e+00, %78
  %5427 = fsub fast float -0.000000e+00, %76
  %5428 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  %5429 = fdiv fast float %5428, %5420
  %5430 = fcmp fast ogt float %5429, 0x3FFB6F8900000000
  %5431 = select i1 %5430, float 0x3FFB6F8900000000, float %5429
  %5432 = fmul fast float %5431, 0x3FE8A23460000000
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = call float @dx.op.binary.f32(i32 35, float %5431, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5435 = fmul fast float %5433, %5420
  %5436 = fmul fast float %5434, 0x3FF279A740000000
  %5437 = fadd fast float %5436, -1.000000e+00
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %77, float %5426, float %5427, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = call float @dx.op.unary.f32(i32 25, float %5438)  ; Rsqrt(value)
  %5440 = fmul fast float %5439, %5426
  %5441 = fmul fast float %5439, %5427
  %5442 = fmul fast float %5439, %77
  %5443 = fmul fast float %5437, %5437
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = fmul fast float %5434, 0x40005F8BE0000000
  %5446 = fsub fast float 0x400C5BF8A0000000, %5445
  %5447 = fdiv fast float %5435, %5446
  %5448 = fmul fast float %5447, 0x3FEE31C3C0000000
  %5449 = fmul fast float %5448, %5444
  %5450 = fmul fast float %5434, 0x3FDACB7480000000
  %5451 = fadd fast float %5450, 0xBFD7347680000000
  %5452 = fmul fast float %5451, %5447
  %5453 = fmul fast float %5452, %5444
  br label %5454

; <label>:5454                                    ; preds = %5425, %5397
  %5455 = phi float [ %5440, %5425 ], [ 0.000000e+00, %5397 ]
  %5456 = phi float [ %5441, %5425 ], [ 0.000000e+00, %5397 ]
  %5457 = phi float [ %5442, %5425 ], [ 0.000000e+00, %5397 ]
  %5458 = phi float [ %5449, %5425 ], [ 0.000000e+00, %5397 ]
  %5459 = phi float [ %5453, %5425 ], [ 0.000000e+00, %5397 ]
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = fmul fast float %5460, 0x3FDF454380000000
  %5462 = fmul fast float %5460, %5460
  %5463 = fmul fast float %5462, 0x3FEE471020000000
  %5464 = fadd fast float %5463, 0xBFD42F6020000000
  %5465 = fmul fast float %5420, 0x3FD20DD760000000
  %5466 = fmul fast float %5464, %5459
  %5467 = fadd fast float %5466, %5465
  %5468 = fmul fast float %5461, %5458
  %5469 = fadd fast float %5467, %5468
  %5470 = fsub fast float %5467, %5468
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = fmul fast float %5471, 0x3FDF454380000000
  %5473 = fmul fast float %5471, %5471
  %5474 = fmul fast float %5473, 0x3FEE471020000000
  %5475 = fadd fast float %5474, 0xBFD42F6020000000
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5458, float %5459, float 0x3FD20DD760000000, float %5472, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5478 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fcmp fast oeq float %5478, 0.000000e+00
  %5480 = fcmp fast oeq float %5477, 0.000000e+00
  %5481 = or i1 %5480, %5479
  br i1 %5481, label %5511, label %5482

; <label>:5482                                    ; preds = %5454
  %5483 = fsub fast float -0.000000e+00, %74
  %5484 = fsub fast float -0.000000e+00, %72
  %5485 = call float @dx.op.unary.f32(i32 24, float %5478)  ; Sqrt(value)
  %5486 = fdiv fast float %5485, %5477
  %5487 = fcmp fast ogt float %5486, 0x3FFB6F8900000000
  %5488 = select i1 %5487, float 0x3FFB6F8900000000, float %5486
  %5489 = fmul fast float %5488, 0x3FE8A23460000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5488, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5492 = fmul fast float %5490, %5477
  %5493 = fmul fast float %5491, 0x3FF279A740000000
  %5494 = fadd fast float %5493, -1.000000e+00
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %73, float %5483, float %5484, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.unary.f32(i32 25, float %5495)  ; Rsqrt(value)
  %5497 = fmul fast float %5496, %5483
  %5498 = fmul fast float %5496, %5484
  %5499 = fmul fast float %5496, %73
  %5500 = fmul fast float %5494, %5494
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = fmul fast float %5491, 0x40005F8BE0000000
  %5503 = fsub fast float 0x400C5BF8A0000000, %5502
  %5504 = fdiv fast float %5492, %5503
  %5505 = fmul fast float %5504, 0x3FEE31C3C0000000
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %5491, 0x3FDACB7480000000
  %5508 = fadd fast float %5507, 0xBFD7347680000000
  %5509 = fmul fast float %5508, %5504
  %5510 = fmul fast float %5509, %5501
  br label %5511

; <label>:5511                                    ; preds = %5482, %5454
  %5512 = phi float [ %5497, %5482 ], [ 0.000000e+00, %5454 ]
  %5513 = phi float [ %5498, %5482 ], [ 0.000000e+00, %5454 ]
  %5514 = phi float [ %5499, %5482 ], [ 0.000000e+00, %5454 ]
  %5515 = phi float [ %5506, %5482 ], [ 0.000000e+00, %5454 ]
  %5516 = phi float [ %5510, %5482 ], [ 0.000000e+00, %5454 ]
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5513, float %5514, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fmul fast float %5517, 0x3FDF454380000000
  %5519 = fmul fast float %5517, %5517
  %5520 = fmul fast float %5519, 0x3FEE471020000000
  %5521 = fadd fast float %5520, 0xBFD42F6020000000
  %5522 = fmul fast float %5477, 0x3FD20DD760000000
  %5523 = fmul fast float %5521, %5516
  %5524 = fadd fast float %5523, %5522
  %5525 = fmul fast float %5518, %5515
  %5526 = fadd fast float %5524, %5525
  %5527 = fsub fast float %5524, %5525
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5513, float %5514, float %5341, float %5342, float %5343)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = fmul fast float %5528, 0x3FDF454380000000
  %5530 = fmul fast float %5528, %5528
  %5531 = fmul fast float %5530, 0x3FEE471020000000
  %5532 = fadd fast float %5531, 0xBFD42F6020000000
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5515, float %5516, float 0x3FD20DD760000000, float %5529, float %5532)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5412, float 0.000000e+00)  ; FMax(a,b)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5469, float 0.000000e+00)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float %5413, float 0.000000e+00)  ; FMax(a,b)
  %5538 = call float @dx.op.binary.f32(i32 35, float %5470, float 0.000000e+00)  ; FMax(a,b)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5527, float 0.000000e+00)  ; FMax(a,b)
  %5540 = call float @dx.op.binary.f32(i32 35, float %5419, float 0.000000e+00)  ; FMax(a,b)
  %5541 = call float @dx.op.binary.f32(i32 35, float %5476, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 35, float %5533, float 0.000000e+00)  ; FMax(a,b)
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 0
  %5545 = call float @dx.op.binary.f32(i32 36, float %5321, float %5544)  ; FMin(a,b)
  %5546 = fmul fast float %5545, %5345
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = bitcast float %5547 to i32
  %5549 = sub nsw i32 2129859010, %5548
  %5550 = bitcast i32 %5549 to float
  %5551 = call float @dx.op.binary.f32(i32 36, float %5322, float %5544)  ; FMin(a,b)
  %5552 = fmul fast float %5551, %5345
  %5553 = fsub fast float 1.000000e+00, %5552
  %5554 = bitcast float %5553 to i32
  %5555 = sub nsw i32 2129859010, %5554
  %5556 = bitcast i32 %5555 to float
  %5557 = call float @dx.op.binary.f32(i32 36, float %5323, float %5544)  ; FMin(a,b)
  %5558 = fmul fast float %5557, %5345
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = fmul fast float %5534, %5344
  %5564 = fmul fast float %5563, %5550
  %5565 = fmul fast float %5535, %5344
  %5566 = fmul fast float %5565, %5556
  %5567 = fmul fast float %5536, %5344
  %5568 = fmul fast float %5567, %5562
  %5569 = call float @dx.op.binary.f32(i32 36, float %5324, float %5544)  ; FMin(a,b)
  %5570 = fmul fast float %5569, %5345
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = call float @dx.op.binary.f32(i32 36, float %5325, float %5544)  ; FMin(a,b)
  %5576 = fmul fast float %5575, %5345
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = call float @dx.op.binary.f32(i32 36, float %5333, float %5544)  ; FMin(a,b)
  %5582 = fmul fast float %5581, %5345
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = fmul fast float %5540, %5344
  %5588 = fmul fast float %5587, %5574
  %5589 = fmul fast float %5541, %5344
  %5590 = fmul fast float %5589, %5580
  %5591 = fmul fast float %5542, %5344
  %5592 = fmul fast float %5591, %5586
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5564, float %5566, float %5568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = select i1 %232, float 0.000000e+00, float %5564
  %5595 = select i1 %232, float %5593, float %5566
  %5596 = select i1 %232, float 0.000000e+00, float %5568
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = select i1 %232, float 0.000000e+00, float %5537
  %5599 = select i1 %232, float %5597, float %5538
  %5600 = select i1 %232, float 0.000000e+00, float %5539
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5590, float %5592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = select i1 %232, float 0.000000e+00, float %5588
  %5603 = select i1 %232, float %5601, float %5590
  %5604 = select i1 %232, float 0.000000e+00, float %5592
  %5605 = fmul fast float %5335, 9.843750e-01
  %5606 = fmul fast float %5330, 9.843750e-01
  %5607 = fadd fast float %5605, 7.812500e-03
  %5608 = fadd fast float %5606, 7.812500e-03
  %5609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5607, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 3
  %5612 = fmul fast float %5610, %5324
  %5613 = fmul fast float %5610, %5325
  %5614 = fmul fast float %5610, %5333
  %5615 = fadd fast float %5612, %5611
  %5616 = fadd fast float %5613, %5611
  %5617 = fadd fast float %5614, %5611
  %5618 = fcmp fast ogt float %4652, 0.000000e+00
  br i1 %5618, label %5619, label %5645

; <label>:5619                                    ; preds = %5511
  %5620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %5335, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5621 = extractvalue %dx.types.ResRet.f32 %5620, 0
  %5622 = extractvalue %dx.types.ResRet.f32 %5620, 1
  %5623 = extractvalue %dx.types.ResRet.f32 %5620, 2
  %5624 = fadd fast float %5621, -5.000000e-01
  %5625 = fadd fast float %5622, -5.000000e-01
  %5626 = fadd fast float %5623, -5.000000e-01
  %5627 = fsub fast float 1.000000e+00, %5324
  %5628 = fsub fast float 1.000000e+00, %5325
  %5629 = fsub fast float 1.000000e+00, %5333
  %5630 = fmul fast float %5324, 4.000000e+00
  %5631 = fmul fast float %5630, %5627
  %5632 = fmul fast float %5631, %5624
  %5633 = fmul fast float %5325, 4.000000e+00
  %5634 = fmul fast float %5633, %5628
  %5635 = fmul fast float %5634, %5625
  %5636 = fmul fast float %5333, 4.000000e+00
  %5637 = fmul fast float %5636, %5629
  %5638 = fmul fast float %5637, %5626
  %5639 = fadd fast float %5632, %5615
  %5640 = fadd fast float %5635, %5616
  %5641 = fadd fast float %5638, %5617
  %5642 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  br label %5645

; <label>:5645                                    ; preds = %5619, %5511
  %5646 = phi float [ %5642, %5619 ], [ %5615, %5511 ]
  %5647 = phi float [ %5643, %5619 ], [ %5616, %5511 ]
  %5648 = phi float [ %5644, %5619 ], [ %5617, %5511 ]
  %5649 = call float @dx.op.binary.f32(i32 35, float %5647, float %5648)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5646, float %5649)  ; FMax(a,b)
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = fmul fast float %5650, %5330
  %5653 = fadd fast float %5652, %5330
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 2
  %5656 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5657 = fmul fast float %5653, %5655
  %5658 = fadd fast float %5657, %5656
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5356
  %5661 = fadd fast float %5660, %5659
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = fcmp fast olt float %5662, 1.000000e+00
  br i1 %5663, label %5664, label %6140

; <label>:5664                                    ; preds = %5645
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5667 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5668 = fmul fast float %5666, %111
  %5669 = fmul fast float %5667, %112
  %5670 = fptoui float %5668 to i32
  %5671 = fptoui float %5669 to i32
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5675 = extractvalue %dx.types.CBufRet.f32 %5672, 3
  %5676 = fadd fast float %99, -4.000000e+00
  %5677 = call float @dx.op.binary.f32(i32 35, float %5676, float 0.000000e+00)  ; FMax(a,b)
  %5678 = fadd fast float %5677, %5673
  %5679 = fmul fast float %5678, %5674
  %5680 = call float @dx.op.unary.f32(i32 23, float %5679)  ; Log(value)
  %5681 = fmul fast float %5680, %5675
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 2
  %5684 = fmul fast float %5681, %5683
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.i32 %5686, 1
  %5688 = add i32 %5687, -1
  %5689 = uitofp i32 %5687 to float
  %5690 = fmul fast float %5689, %5685
  %5691 = fptoui float %5690 to i32
  %5692 = call i32 @dx.op.binary.i32(i32 40, i32 %5691, i32 %5688)  ; UMin(a,b)
  %5693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.i32 %5693, 2
  %5695 = extractvalue %dx.types.CBufRet.i32 %5693, 3
  %5696 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5671, i32 %5694, i32 %5670)  ; UMad(a,b,c)
  %5697 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5692, i32 %5695, i32 %5696)  ; UMad(a,b,c)
  %5698 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5699 = fptoui float %5698 to i32
  %5700 = lshr i32 %5699, 5
  %5701 = call i32 @dx.op.binary.i32(i32 40, i32 %5700, i32 8191)  ; UMin(a,b)
  %5702 = fsub fast float %5120, %172
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fcmp fast ogt float %5703, 0.000000e+00
  %5705 = fcmp fast ogt float %5343, 0.000000e+00
  %5706 = and i1 %5705, %5704
  br i1 %5706, label %5707, label %5736

; <label>:5707                                    ; preds = %5664
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5708, float -1.000000e+00)  ; FMax(a,b)
  %5710 = call float @dx.op.binary.f32(i32 36, float %5709, float 1.000000e+00)  ; FMin(a,b)
  %5711 = fmul fast float %5710, %5710
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = fmul fast float %5712, 0x3FFC6E2300000000
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = fcmp fast ogt float %5714, 0.000000e+00
  %5716 = call float @dx.op.unary.f32(i32 24, float %5714)  ; Sqrt(value)
  %5717 = fsub fast float 1.000000e+00, %5716
  %5718 = call float @dx.op.unary.f32(i32 23, float %5717)  ; Log(value)
  %5719 = fmul fast float %5718, 5.000000e+00
  %5720 = call float @dx.op.unary.f32(i32 21, float %5719)  ; Exp(value)
  %5721 = fmul fast float %5720, 0x3FEF591A60000000
  %5722 = fadd fast float %5721, 0x3F94DCB540000000
  %5723 = select i1 %5715, float %5722, float 1.000000e+00
  %5724 = fcmp fast oge float %5723, 1.000000e+00
  %5725 = fmul fast float %5708, 2.000000e+00
  %5726 = fadd fast float %5725, %5343
  %5727 = select i1 %5724, float %5726, float %5343
  %5728 = fsub fast float %5727, %5343
  %5729 = fmul fast float %5728, %5703
  %5730 = fadd fast float %5729, %5343
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5730, float %5341, float %5342, float %5730)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = call float @dx.op.unary.f32(i32 25, float %5731)  ; Rsqrt(value)
  %5733 = fmul fast float %5732, %5341
  %5734 = fmul fast float %5732, %5342
  %5735 = fmul fast float %5730, %5732
  br label %5736

; <label>:5736                                    ; preds = %5707, %5664
  %5737 = phi float [ %5733, %5707 ], [ %5341, %5664 ]
  %5738 = phi float [ %5734, %5707 ], [ %5342, %5664 ]
  %5739 = phi float [ %5735, %5707 ], [ %5343, %5664 ]
  %5740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.i32 %5740, 2
  %5742 = add nsw i32 %5741, -1
  %5743 = call i32 @dx.op.binary.i32(i32 37, i32 %5742, i32 0)  ; IMax(a,b)
  %5744 = shl i32 %5701, 2
  %5745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.i32 %5745, 0
  %5747 = lshr i32 %5746, 16
  %5748 = and i32 %5746, 65535
  %5749 = lshr i32 %5746, 21
  %5750 = lshr i32 %5748, 5
  %5751 = call i32 @dx.op.binary.i32(i32 40, i32 %5750, i32 %5743)  ; UMin(a,b)
  %5752 = icmp ugt i32 %5749, %5751
  br i1 %5752, label %6116, label %5753

; <label>:5753                                    ; preds = %5736
  br label %5754

; <label>:5754                                    ; preds = %6108, %5753
  %5755 = phi float [ %6109, %6108 ], [ 0.000000e+00, %5753 ]
  %5756 = phi float [ %6110, %6108 ], [ 0.000000e+00, %5753 ]
  %5757 = phi float [ %6111, %6108 ], [ 0.000000e+00, %5753 ]
  %5758 = phi float [ %6112, %6108 ], [ 1.000000e+00, %5753 ]
  %5759 = phi i32 [ %6113, %6108 ], [ %5749, %5753 ]
  %5760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.i32 %5760, 2
  %5762 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5697, i32 %5761, i32 %5759)  ; UMad(a,b,c)
  %5763 = shl i32 %5762, 2
  %5764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5763, i32 undef)  ; BufferLoad(srv,index,wot)
  %5765 = extractvalue %dx.types.ResRet.i32 %5764, 0
  %5766 = shl i32 %5759, 5
  %5767 = sub nsw i32 %5747, %5766
  %5768 = call i32 @dx.op.binary.i32(i32 37, i32 %5767, i32 0)  ; IMax(a,b)
  %5769 = call i32 @dx.op.binary.i32(i32 38, i32 %5768, i32 31)  ; IMin(a,b)
  %5770 = sub nsw i32 1, %5747
  %5771 = add nsw i32 %5770, %5748
  %5772 = call i32 @dx.op.binary.i32(i32 37, i32 %5771, i32 0)  ; IMax(a,b)
  %5773 = call i32 @dx.op.binary.i32(i32 38, i32 %5772, i32 32)  ; IMin(a,b)
  %5774 = and i32 %5773, 31
  %5775 = shl i32 -1, %5774
  %5776 = xor i32 %5775, -1
  %5777 = and i32 %5769, 31
  %5778 = shl i32 %5776, %5777
  %5779 = icmp eq i32 %5773, 32
  %5780 = select i1 %5779, i32 -1, i32 %5778
  %5781 = and i32 %5780, %5765
  %5782 = icmp eq i32 %5781, 0
  br i1 %5782, label %6108, label %5783

; <label>:5783                                    ; preds = %5754
  br label %5784

; <label>:5784                                    ; preds = %5891, %5783
  %5785 = phi float [ %5892, %5891 ], [ %5755, %5783 ]
  %5786 = phi float [ %5893, %5891 ], [ %5756, %5783 ]
  %5787 = phi float [ %5894, %5891 ], [ %5757, %5783 ]
  %5788 = phi float [ %5895, %5891 ], [ %5758, %5783 ]
  %5789 = phi i32 [ %5794, %5891 ], [ %5781, %5783 ]
  %5790 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5789)  ; FirstbitLo(value)
  %5791 = add i32 %5790, %5766
  %5792 = and i32 %5790, 31
  %5793 = shl i32 1, %5792
  %5794 = xor i32 %5793, %5789
  %5795 = mul i32 %5791, 72
  %5796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5795, i32 undef)  ; BufferLoad(srv,index,wot)
  %5797 = extractvalue %dx.types.ResRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.ResRet.f32 %5796, 1
  %5799 = extractvalue %dx.types.ResRet.f32 %5796, 2
  %5800 = add i32 %5795, 12
  %5801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.i32 %5801, 0
  %5803 = add i32 %5795, 16
  %5804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.ResRet.f32 %5804, 1
  %5807 = extractvalue %dx.types.ResRet.f32 %5804, 2
  %5808 = add i32 %5795, 28
  %5809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5808, i32 undef)  ; BufferLoad(srv,index,wot)
  %5810 = extractvalue %dx.types.ResRet.f32 %5809, 0
  %5811 = add i32 %5795, 32
  %5812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.ResRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.ResRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.ResRet.f32 %5812, 3
  %5817 = add i32 %5795, 48
  %5818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5817, i32 undef)  ; BufferLoad(srv,index,wot)
  %5819 = extractvalue %dx.types.ResRet.f32 %5818, 0
  %5820 = extractvalue %dx.types.ResRet.f32 %5818, 1
  %5821 = add i32 %5795, 56
  %5822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5821, i32 undef)  ; BufferLoad(srv,index,wot)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5825 = add i32 %5795, 64
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = mul i32 %5791, 60
  %5830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.ResRet.f32 %5830, 2
  %5834 = add i32 %5829, 12
  %5835 = add i32 %5829, 48
  %5836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5835, i32 undef)  ; BufferLoad(srv,index,wot)
  %5837 = extractvalue %dx.types.ResRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.ResRet.f32 %5836, 1
  %5839 = extractvalue %dx.types.ResRet.f32 %5836, 2
  %5840 = and i32 %5802, 32767
  %5841 = bitcast float %5797 to i32
  %5842 = icmp eq i32 %5841, -1
  %5843 = bitcast float %5798 to i32
  %5844 = and i32 %5802, 32768
  %5845 = icmp ne i32 %5844, 0
  %5846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5847 = extractvalue %dx.types.CBufRet.f32 %5846, 0
  %5848 = extractvalue %dx.types.CBufRet.f32 %5846, 1
  %5849 = extractvalue %dx.types.CBufRet.f32 %5846, 2
  %5850 = fsub fast float %5831, %5847
  %5851 = fsub fast float %5832, %5848
  %5852 = fsub fast float %5833, %5849
  %5853 = fsub fast float %170, %5850
  %5854 = fsub fast float %171, %5851
  %5855 = fsub fast float %172, %5852
  %5856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5834, i32 undef)  ; BufferLoad(srv,index,wot)
  %5857 = extractvalue %dx.types.ResRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.ResRet.f32 %5856, 1
  %5859 = extractvalue %dx.types.ResRet.f32 %5856, 2
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5857, float %5858, float %5859)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = add i32 %5829, 24
  %5862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5861, i32 undef)  ; BufferLoad(srv,index,wot)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.ResRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.ResRet.f32 %5862, 2
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5863, float %5864, float %5865)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = add i32 %5829, 36
  %5868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5867, i32 undef)  ; BufferLoad(srv,index,wot)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.unary.f32(i32 6, float %5860)  ; FAbs(value)
  %5874 = call float @dx.op.unary.f32(i32 6, float %5866)  ; FAbs(value)
  %5875 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5876 = fsub fast float %5837, %5873
  %5877 = fsub fast float %5838, %5874
  %5878 = fsub fast float %5839, %5875
  %5879 = fmul fast float %5876, %5805
  %5880 = fmul fast float %5877, %5806
  %5881 = fmul fast float %5878, %5807
  %5882 = call float @dx.op.binary.f32(i32 36, float %5880, float %5881)  ; FMin(a,b)
  %5883 = call float @dx.op.binary.f32(i32 36, float %5879, float %5882)  ; FMin(a,b)
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = call float @dx.op.binary.f32(i32 36, float %5788, float %5884)  ; FMin(a,b)
  %5886 = uitofp i1 %5845 to float
  %5887 = fadd fast float %5703, 1.000000e+00
  %5888 = fsub fast float %5887, %5886
  %5889 = fmul fast float %5885, %5888
  %5890 = fcmp fast ogt float %5889, 0.000000e+00
  br i1 %5890, label %5897, label %5891

; <label>:5891                                    ; preds = %6039, %5784
  %5892 = phi float [ %6103, %6039 ], [ %5785, %5784 ]
  %5893 = phi float [ %6104, %6039 ], [ %5786, %5784 ]
  %5894 = phi float [ %6105, %6039 ], [ %5787, %5784 ]
  %5895 = phi float [ %6106, %6039 ], [ %5788, %5784 ]
  %5896 = icmp eq i32 %5789, %5793
  br i1 %5896, label %6107, label %5784

; <label>:5897                                    ; preds = %5784
  br i1 %5842, label %5955, label %5898

; <label>:5898                                    ; preds = %5897
  %5899 = fsub fast float -0.000000e+00, %5857
  %5900 = fsub fast float -0.000000e+00, %5858
  %5901 = fsub fast float -0.000000e+00, %5859
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %5899, float %5900, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = fsub fast float -0.000000e+00, %5902
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5899, float %5900, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fadd fast float %5904, %5820
  %5906 = fadd fast float %5819, %5904
  %5907 = fsub fast float -0.000000e+00, %5906
  %5908 = fcmp ogt float %5902, -0.000000e+00
  %5909 = select i1 %5908, float %5907, float %5905
  %5910 = call float @dx.op.unary.f32(i32 6, float %5903)  ; FAbs(value)
  %5911 = fdiv fast float 1.000000e+00, %5910
  %5912 = fmul fast float %5909, %5911
  %5913 = call float @dx.op.binary.f32(i32 35, float %5912, float 0.000000e+00)  ; FMax(a,b)
  %5914 = fsub fast float -0.000000e+00, %5863
  %5915 = fsub fast float -0.000000e+00, %5864
  %5916 = fsub fast float -0.000000e+00, %5865
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %5914, float %5915, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fsub fast float -0.000000e+00, %5917
  %5919 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5914, float %5915, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = fadd fast float %5919, %5824
  %5921 = fadd fast float %5823, %5919
  %5922 = fsub fast float -0.000000e+00, %5921
  %5923 = fcmp ogt float %5917, -0.000000e+00
  %5924 = select i1 %5923, float %5922, float %5920
  %5925 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5926 = fdiv fast float 1.000000e+00, %5925
  %5927 = fmul fast float %5924, %5926
  %5928 = call float @dx.op.binary.f32(i32 35, float %5927, float 0.000000e+00)  ; FMax(a,b)
  %5929 = fsub fast float -0.000000e+00, %5869
  %5930 = fsub fast float -0.000000e+00, %5870
  %5931 = fsub fast float -0.000000e+00, %5871
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5737, float %5738, float %5739, float %5929, float %5930, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = fsub fast float -0.000000e+00, %5932
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float %5929, float %5930, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = fadd fast float %5934, %5828
  %5936 = fadd fast float %5827, %5934
  %5937 = fsub fast float -0.000000e+00, %5936
  %5938 = fcmp ogt float %5932, -0.000000e+00
  %5939 = select i1 %5938, float %5937, float %5935
  %5940 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5941 = fdiv fast float 1.000000e+00, %5940
  %5942 = fmul fast float %5939, %5941
  %5943 = call float @dx.op.binary.f32(i32 35, float %5942, float 0.000000e+00)  ; FMax(a,b)
  %5944 = call float @dx.op.binary.f32(i32 36, float %5928, float %5943)  ; FMin(a,b)
  %5945 = call float @dx.op.binary.f32(i32 36, float %5913, float %5944)  ; FMin(a,b)
  %5946 = fmul fast float %5945, %5737
  %5947 = fmul fast float %5945, %5738
  %5948 = fmul fast float %5945, %5739
  %5949 = fadd fast float %5946, %170
  %5950 = fadd fast float %5947, %171
  %5951 = fadd fast float %5948, %172
  %5952 = fsub fast float %5949, %5797
  %5953 = fsub fast float %5950, %5798
  %5954 = fsub fast float %5951, %5799
  br label %5962

; <label>:5955                                    ; preds = %5897
  %5956 = fmul fast float %5737, 8.096000e+03
  %5957 = fmul fast float %5738, 8.096000e+03
  %5958 = fmul fast float %5739, 8.096000e+03
  %5959 = fadd fast float %5956, %170
  %5960 = fadd fast float %5957, %171
  %5961 = fadd fast float %5958, %172
  br label %5962

; <label>:5962                                    ; preds = %5955, %5898
  %5963 = phi float [ %5737, %5955 ], [ %5952, %5898 ]
  %5964 = phi float [ %5738, %5955 ], [ %5953, %5898 ]
  %5965 = phi float [ %5739, %5955 ], [ %5954, %5898 ]
  %5966 = phi float [ %5959, %5955 ], [ %5949, %5898 ]
  %5967 = phi float [ %5960, %5955 ], [ %5950, %5898 ]
  %5968 = phi float [ %5961, %5955 ], [ %5951, %5898 ]
  %5969 = fcmp fast olt float %5816, 1.000000e+00
  br i1 %5969, label %5970, label %6001, !dx.controlflow.hints !100

; <label>:5970                                    ; preds = %5962
  %5971 = fmul fast float %5965, %5814
  %5972 = fmul fast float %5964, %5815
  %5973 = fsub fast float %5971, %5972
  %5974 = fmul fast float %5963, %5815
  %5975 = fmul fast float %5965, %5813
  %5976 = fsub fast float %5974, %5975
  %5977 = fmul fast float %5964, %5813
  %5978 = fmul fast float %5963, %5814
  %5979 = fsub fast float %5977, %5978
  %5980 = fmul fast float %5973, 2.000000e+00
  %5981 = fmul fast float %5976, 2.000000e+00
  %5982 = fmul fast float %5979, 2.000000e+00
  %5983 = fmul fast float %5980, %5816
  %5984 = fmul fast float %5981, %5816
  %5985 = fmul fast float %5982, %5816
  %5986 = fmul fast float %5982, %5814
  %5987 = fmul fast float %5981, %5815
  %5988 = fmul fast float %5980, %5815
  %5989 = fmul fast float %5982, %5813
  %5990 = fmul fast float %5981, %5813
  %5991 = fmul fast float %5980, %5814
  %5992 = fadd fast float %5986, %5963
  %5993 = fadd fast float %5992, %5983
  %5994 = fsub fast float %5993, %5987
  %5995 = fsub fast float %5964, %5989
  %5996 = fadd fast float %5995, %5984
  %5997 = fadd fast float %5996, %5988
  %5998 = fadd fast float %5985, %5965
  %5999 = fsub fast float %5998, %5991
  %6000 = fadd fast float %5999, %5990
  br label %6001

; <label>:6001                                    ; preds = %5970, %5962
  %6002 = phi float [ %5994, %5970 ], [ %5963, %5962 ]
  %6003 = phi float [ %5997, %5970 ], [ %5964, %5962 ]
  %6004 = phi float [ %6000, %5970 ], [ %5965, %5962 ]
  br i1 %5842, label %6036, label %6005

; <label>:6005                                    ; preds = %6001
  %6006 = fmul fast float %5330, 0x400187C840000000
  %6007 = fadd fast float %6006, 0xC00EFC2120000000
  %6008 = fmul fast float %6007, %5330
  %6009 = fadd fast float %6008, 0x3FE5D16340000000
  %6010 = fmul fast float %6009, %5330
  %6011 = fadd fast float %6010, 1.000000e+00
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fsub fast float %5966, %170
  %6014 = fsub fast float %5967, %171
  %6015 = fsub fast float %5968, %172
  %6016 = fsub fast float %5966, %5797
  %6017 = fsub fast float %5967, %5798
  %6018 = fsub fast float %5968, %5799
  %6019 = call float @dx.op.dot3.f32(i32 55, float %6013, float %6014, float %6015, float %6013, float %6014, float %6015)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = call float @dx.op.dot3.f32(i32 55, float %6016, float %6017, float %6018, float %6016, float %6017, float %6018)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = fadd fast float %6020, 0x3EE4F8B580000000
  %6022 = fdiv fast float %6019, %6021
  %6023 = bitcast float %6022 to i32
  %6024 = ashr i32 %6023, 1
  %6025 = add nsw i32 %6024, 532487669
  %6026 = bitcast i32 %6025 to float
  %6027 = fmul fast float %6026, %6012
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = fmul fast float %6028, 0x4009981AE0000000
  %6030 = fsub fast float 0x40111BBD80000000, %6029
  %6031 = fmul fast float %6030, %6028
  %6032 = fadd fast float %6031, 0xC0009F6020000000
  %6033 = fmul fast float %6032, %6028
  %6034 = fadd fast float %6033, 1.000000e+00
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  br label %6039

; <label>:6036                                    ; preds = %6001
  %6037 = icmp ne i32 %5843, -1
  %6038 = zext i1 %6037 to i32
  br label %6039

; <label>:6039                                    ; preds = %6036, %6005
  %6040 = phi float [ %5330, %6036 ], [ %6035, %6005 ]
  %6041 = phi i32 [ %6038, %6036 ], [ 0, %6005 ]
  %6042 = fmul float %6040, 5.000000e+00
  %6043 = fsub float 5.000000e+00, %6042
  %6044 = icmp ne i32 %6041, 0
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6047 = fadd fast float %6046, %6043
  %6048 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6047)  ; FMax(a,b)
  %6049 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6050 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6051 = fadd fast float %6050, %6049
  %6052 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6053 = fadd fast float %6051, %6052
  %6054 = fcmp fast oeq float %6053, 0.000000e+00
  %6055 = fdiv fast float 1.000000e+00, %6053
  %6056 = select i1 %6054, float 1.000000e+00, float %6055
  %6057 = fmul fast float %6056, %6002
  %6058 = fmul fast float %6056, %6003
  %6059 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6060 = call float @dx.op.unary.f32(i32 6, float %6057)  ; FAbs(value)
  %6061 = fsub fast float 1.000000e+00, %6059
  %6062 = fsub fast float 1.000000e+00, %6060
  %6063 = fcmp fast oge float %6057, 0.000000e+00
  %6064 = fcmp fast oge float %6058, 0.000000e+00
  %6065 = select i1 %6063, float 1.000000e+00, float -1.000000e+00
  %6066 = select i1 %6064, float 1.000000e+00, float -1.000000e+00
  %6067 = fcmp fast ole float %6004, 0.000000e+00
  %6068 = fmul fast float %6065, %6061
  %6069 = fmul fast float %6066, %6062
  %6070 = select i1 %6067, float %6068, float %6057
  %6071 = select i1 %6067, float %6069, float %6058
  %6072 = fmul fast float %6070, 5.000000e-01
  %6073 = fmul fast float %6071, 5.000000e-01
  %6074 = fadd fast float %6072, 5.000000e-01
  %6075 = fadd fast float %6073, 5.000000e-01
  %6076 = uitofp i32 %5840 to float
  %6077 = call float @dx.op.binary.f32(i32 36, float %6048, float 3.000000e+00)  ; FMin(a,b)
  %6078 = fadd fast float %6077, 2.000000e+00
  %6079 = call float @dx.op.unary.f32(i32 21, float %6078)  ; Exp(value)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6081 = fmul fast float %6080, %6079
  %6082 = fmul fast float %6081, 2.000000e+00
  %6083 = fsub fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6074, %6083
  %6085 = fmul fast float %6075, %6083
  %6086 = fadd fast float %6084, %6081
  %6087 = fadd fast float %6085, %6081
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6086, float %6087, float %6076, float undef, i32 0, i32 0, i32 undef, float %6048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6088, 2
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6094 = fmul fast float %6093, %5810
  %6095 = call float @dx.op.binary.f32(i32 36, float %5362, float %6094)  ; FMin(a,b)
  %6096 = select i1 %6044, float %6095, float %6094
  %6097 = fmul fast float %6089, %5889
  %6098 = fmul fast float %6097, %6096
  %6099 = fmul fast float %6090, %5889
  %6100 = fmul fast float %6099, %6096
  %6101 = fmul fast float %6091, %5889
  %6102 = fmul fast float %6101, %6096
  %6103 = fadd fast float %6098, %5785
  %6104 = fadd fast float %6100, %5786
  %6105 = fadd fast float %6102, %5787
  %6106 = fsub fast float %5788, %5889
  br label %5891

; <label>:6107                                    ; preds = %5891
  br label %6108

; <label>:6108                                    ; preds = %6107, %5754
  %6109 = phi float [ %5755, %5754 ], [ %5892, %6107 ]
  %6110 = phi float [ %5756, %5754 ], [ %5893, %6107 ]
  %6111 = phi float [ %5757, %5754 ], [ %5894, %6107 ]
  %6112 = phi float [ %5758, %5754 ], [ %5895, %6107 ]
  %6113 = add i32 %5759, 1
  %6114 = icmp ugt i32 %6113, %5751
  br i1 %6114, label %6115, label %5754, !llvm.loop !101

; <label>:6115                                    ; preds = %6108
  br label %6116

; <label>:6116                                    ; preds = %6115, %5736
  %6117 = phi float [ 0.000000e+00, %5736 ], [ %6109, %6115 ]
  %6118 = phi float [ 0.000000e+00, %5736 ], [ %6110, %6115 ]
  %6119 = phi float [ 0.000000e+00, %5736 ], [ %6111, %6115 ]
  %6120 = call float @dx.op.dot3.f32(i32 55, float %6117, float %6118, float %6119, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = select i1 %232, float 0.000000e+00, float %6117
  %6122 = select i1 %232, float %6120, float %6118
  %6123 = select i1 %232, float 0.000000e+00, float %6119
  %6124 = fcmp fast olt float %5662, 0.000000e+00
  %6125 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %6126 = fmul fast float %6125, %5602
  %6127 = fmul fast float %6125, %5603
  %6128 = fmul fast float %6125, %5604
  %6129 = select i1 %6124, float %5602, float %6126
  %6130 = select i1 %6124, float %5603, float %6127
  %6131 = select i1 %6124, float %5604, float %6128
  %6132 = fsub fast float 1.000000e+00, %6125
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = fmul fast float %6133, %6121
  %6135 = fmul fast float %6133, %6122
  %6136 = fmul fast float %6133, %6123
  %6137 = fadd fast float %6129, %6134
  %6138 = fadd fast float %6130, %6135
  %6139 = fadd fast float %6131, %6136
  br label %6140

; <label>:6140                                    ; preds = %6116, %5645
  %6141 = phi float [ %5602, %5645 ], [ %6137, %6116 ]
  %6142 = phi float [ %5603, %5645 ], [ %6138, %6116 ]
  %6143 = phi float [ %5604, %5645 ], [ %6139, %6116 ]
  %6144 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = fcmp fast ogt float %6144, 0x3E7FF19E20000000
  %6146 = fdiv fast float 1.000000e+00, %6144
  %6147 = select i1 %6145, float %6146, float 0.000000e+00
  %6148 = fmul fast float %6147, %5321
  %6149 = fmul fast float %6147, %5322
  %6150 = fmul fast float %6147, %5323
  %6151 = fadd fast float %6148, -1.000000e+00
  %6152 = fadd fast float %6149, -1.000000e+00
  %6153 = fadd fast float %6150, -1.000000e+00
  %6154 = fmul fast float %6151, 5.000000e-01
  %6155 = fmul fast float %6152, 5.000000e-01
  %6156 = fmul fast float %6153, 5.000000e-01
  %6157 = fadd fast float %6154, 1.000000e+00
  %6158 = fadd fast float %6155, 1.000000e+00
  %6159 = fadd fast float %6156, 1.000000e+00
  %6160 = fmul fast float %5651, %4743
  %6161 = fmul fast float %5651, %4744
  %6162 = fmul fast float %5651, %4745
  %6163 = fadd fast float %6160, -1.000000e+00
  %6164 = fadd fast float %6161, -1.000000e+00
  %6165 = fadd fast float %6162, -1.000000e+00
  %6166 = fmul fast float %6163, %4649
  %6167 = fmul fast float %6164, %4649
  %6168 = fmul fast float %6165, %4649
  %6169 = fmul fast float %6141, %5646
  %6170 = fmul fast float %6142, %5647
  %6171 = fmul fast float %6143, %5648
  %6172 = fsub fast float 1.000000e+00, %5335
  %6173 = bitcast float %6172 to i32
  %6174 = sitofp i32 %6173 to float
  %6175 = fmul fast float %6174, 5.000000e+00
  %6176 = fadd fast float %6175, 0xC1EFBF8940000000
  %6177 = fptosi float %6176 to i32
  %6178 = bitcast i32 %6177 to float
  %6179 = fmul fast float %6178, %4653
  %6180 = fmul fast float %5594, %6179
  %6181 = fmul fast float %6180, %5651
  %6182 = fmul fast float %6181, %6157
  %6183 = fmul fast float %5595, %6179
  %6184 = fmul fast float %6183, %5651
  %6185 = fmul fast float %6184, %6158
  %6186 = fmul fast float %5596, %6179
  %6187 = fmul fast float %6186, %5651
  %6188 = fmul fast float %6187, %6159
  %6189 = fadd fast float %6169, %4636
  %6190 = fadd fast float %6189, %6182
  %6191 = fmul fast float %6190, %4649
  %6192 = fadd fast float %6170, %4637
  %6193 = fadd fast float %6192, %6185
  %6194 = fmul fast float %6193, %4649
  %6195 = fadd fast float %6171, %4638
  %6196 = fadd fast float %6195, %6188
  %6197 = fmul fast float %6196, %4649
  %6198 = fadd fast float %6168, 1.000000e+00
  %6199 = fadd fast float %6167, 1.000000e+00
  %6200 = fadd fast float %6166, 1.000000e+00
  %6201 = fmul fast float %5651, %5596
  %6202 = fmul fast float %5651, %5595
  %6203 = fmul fast float %5651, %5594
  %6204 = fmul fast float %6200, %5598
  %6205 = fmul fast float %6199, %5599
  %6206 = fmul fast float %6198, %5600
  %6207 = fadd fast float %6204, %6203
  %6208 = fmul fast float %6207, %4649
  %6209 = fadd fast float %6205, %6202
  %6210 = fmul fast float %6209, %4649
  %6211 = fadd fast float %6206, %6201
  %6212 = fmul fast float %6211, %4649
  %6213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6214 = extractvalue %dx.types.CBufRet.f32 %6213, 3
  %6215 = fcmp fast oeq float %6214, 0.000000e+00
  br i1 %6215, label %7811, label %6216

; <label>:6216                                    ; preds = %6140
  %6217 = extractvalue %dx.types.CBufRet.f32 %6213, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6213, 1
  %6219 = extractvalue %dx.types.CBufRet.f32 %6213, 2
  %6220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6221 = extractvalue %dx.types.CBufRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.CBufRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6220, 2
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6221, float %6222, float %6223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = select i1 %232, float %6225, float %6221
  %6229 = select i1 %232, float %6227, float %6222
  %6230 = select i1 %232, float %6226, float %6223
  %6231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6232 = extractvalue %dx.types.CBufRet.f32 %6231, 2
  %6233 = fmul fast float %6232, %120
  %6234 = fmul fast float %6232, %122
  %6235 = fmul fast float %6232, %124
  %6236 = fadd fast float %6233, %170
  %6237 = fadd fast float %6234, %171
  %6238 = fadd fast float %6235, %172
  %6239 = fcmp fast olt float %6214, 0.000000e+00
  br i1 %6239, label %7335, label %6240

; <label>:6240                                    ; preds = %6216
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6251, 1
  %6254 = extractvalue %dx.types.CBufRet.f32 %6251, 2
  %6255 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6256 = fmul fast float %6242, %6236
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6243, float %6256)  ; FMad(a,b,c)
  %6258 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6244, float %6257)  ; FMad(a,b,c)
  %6259 = fadd fast float %6258, %6245
  %6260 = fmul fast float %6247, %6236
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6248, float %6260)  ; FMad(a,b,c)
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6249, float %6261)  ; FMad(a,b,c)
  %6263 = fadd fast float %6262, %6250
  %6264 = fmul fast float %6252, %6236
  %6265 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6253, float %6264)  ; FMad(a,b,c)
  %6266 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6254, float %6265)  ; FMad(a,b,c)
  %6267 = fadd fast float %6266, %6255
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.CBufRet.f32 %6268, 3
  %6272 = fmul fast float %6271, %6259
  %6273 = fmul fast float %6271, %6263
  %6274 = fadd fast float %6272, %6269
  %6275 = fadd fast float %6273, %6270
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6280 = fmul fast float %6279, %6259
  %6281 = fmul fast float %6279, %6263
  %6282 = fadd fast float %6280, %6277
  %6283 = fadd fast float %6281, %6278
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6286 = fsub fast float %6285, %6267
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = fmul fast float %6286, %6287
  %6289 = fsub fast float 1.000000e+00, %6288
  %6290 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6294 = fadd fast float %6293, %6291
  %6295 = fcmp fast ogt float %6294, 0.000000e+00
  br i1 %6295, label %6296, label %6320

; <label>:6296                                    ; preds = %6240
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = fsub fast float %6282, %6298
  %6301 = fsub fast float %6283, %6299
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = fcmp fast olt float %6301, 0.000000e+00
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6308 = extractvalue %dx.types.CBufRet.f32 %6304, 3
  %6309 = select i1 %6302, float %6305, float %6307
  %6310 = select i1 %6303, float %6306, float %6308
  %6311 = fmul fast float %6309, %6300
  %6312 = fmul fast float %6310, %6301
  %6313 = call float @dx.op.unary.f32(i32 6, float %6311)  ; FAbs(value)
  %6314 = call float @dx.op.unary.f32(i32 6, float %6312)  ; FAbs(value)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  %6316 = call float @dx.op.binary.f32(i32 35, float %6313, float %6314)  ; FMax(a,b)
  %6317 = fsub fast float %6315, %6316
  %6318 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6319 = fmul fast float %6318, %6290
  br label %6320

; <label>:6320                                    ; preds = %6296, %6240
  %6321 = phi float [ %6319, %6296 ], [ 0.000000e+00, %6240 ]
  %6322 = extractvalue %dx.types.CBufRet.f32 %6268, 2
  %6323 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6324 = fadd fast float %6323, %6322
  %6325 = fcmp fast ogt float %6324, 0.000000e+00
  %6326 = extractvalue %dx.types.CBufRet.f32 %6231, 0
  br i1 %6325, label %6327, label %6350

; <label>:6327                                    ; preds = %6320
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = fsub fast float %6274, %6329
  %6332 = fsub fast float %6275, %6330
  %6333 = fcmp fast olt float %6331, 0.000000e+00
  %6334 = fcmp fast olt float %6332, 0.000000e+00
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6339 = extractvalue %dx.types.CBufRet.f32 %6335, 3
  %6340 = select i1 %6333, float %6336, float %6338
  %6341 = select i1 %6334, float %6337, float %6339
  %6342 = fmul fast float %6340, %6331
  %6343 = fmul fast float %6341, %6332
  %6344 = call float @dx.op.unary.f32(i32 6, float %6342)  ; FAbs(value)
  %6345 = call float @dx.op.unary.f32(i32 6, float %6343)  ; FAbs(value)
  %6346 = call float @dx.op.binary.f32(i32 35, float %6344, float %6345)  ; FMax(a,b)
  %6347 = fsub fast float %6326, %6346
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = fmul fast float %6348, %6290
  br label %6350

; <label>:6350                                    ; preds = %6327, %6320
  %6351 = phi float [ %6349, %6327 ], [ 0.000000e+00, %6320 ]
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6354 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = fsub fast float %6259, %6356
  %6359 = fsub fast float %6263, %6357
  %6360 = fcmp fast olt float %6358, 0.000000e+00
  %6361 = fcmp fast olt float %6359, 0.000000e+00
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = select i1 %6360, float %6363, float %6365
  %6368 = select i1 %6361, float %6364, float %6366
  %6369 = fmul fast float %6367, %6358
  %6370 = fmul fast float %6368, %6359
  %6371 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6372 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6373 = call float @dx.op.binary.f32(i32 35, float %6371, float %6372)  ; FMax(a,b)
  %6374 = fsub fast float %6326, %6373
  %6375 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  %6376 = call float @dx.op.binary.f32(i32 36, float %6375, float %6354)  ; FMin(a,b)
  %6377 = fmul fast float %6376, %6290
  %6378 = fsub fast float %6351, %6377
  %6379 = fsub fast float %6321, %6351
  %6380 = fsub fast float %6379, %6377
  %6381 = call float @dx.op.binary.f32(i32 35, float %6351, float %6321)  ; FMax(a,b)
  %6382 = call float @dx.op.binary.f32(i32 35, float %6377, float %6381)  ; FMax(a,b)
  %6383 = fcmp fast olt float %6382, 1.000000e+00
  br i1 %6383, label %6384, label %6782, !dx.controlflow.hints !103

; <label>:6384                                    ; preds = %6350
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = fcmp fast une float %6386, 0.000000e+00
  br i1 %6387, label %6388, label %6782, !dx.controlflow.hints !104

; <label>:6388                                    ; preds = %6384
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6403 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6404 = fmul fast float %6390, %6236
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6391, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6392, float %6405)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6393
  %6408 = fmul fast float %6395, %6236
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6396, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6397, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6398
  %6412 = fmul fast float %6400, %6236
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %6401, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %6402, float %6413)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6403
  %6416 = fcmp fast oge float %6407, 1.000000e+00
  %6417 = fcmp fast oge float %6411, 1.000000e+00
  %6418 = or i1 %6416, %6417
  %6419 = fcmp fast olt float %6407, 0.000000e+00
  %6420 = fcmp fast olt float %6411, 0.000000e+00
  %6421 = or i1 %6419, %6420
  %6422 = or i1 %6418, %6421
  br i1 %6422, label %6782, label %6423, !dx.controlflow.hints !105

; <label>:6423                                    ; preds = %6388
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.i32 %6428, 2
  %6430 = uitofp i32 %6429 to float
  %6431 = extractvalue %dx.types.CBufRet.i32 %6428, 3
  %6432 = uitofp i32 %6431 to float
  %6433 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6434 = fmul fast float %6433, 2.000000e+00
  %6435 = fsub fast float %6407, %6425
  %6436 = fsub fast float %6411, %6426
  %6437 = fmul fast float %6434, %6435
  %6438 = fmul fast float %6434, %6436
  %6439 = fdiv fast float 1.000000e+00, %6219
  %6440 = fmul fast float %6438, %6439
  %6441 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6442 = fmul fast float %6427, %6238
  %6443 = fmul fast float %6442, %6434
  %6444 = call float @dx.op.unary.f32(i32 6, float %6443)  ; FAbs(value)
  %6445 = call float @dx.op.unary.f32(i32 6, float %6437)  ; FAbs(value)
  %6446 = call float @dx.op.binary.f32(i32 35, float %6444, float %6441)  ; FMax(a,b)
  %6447 = call float @dx.op.binary.f32(i32 35, float %6445, float %6446)  ; FMax(a,b)
  %6448 = fmul fast float %6447, 2.000000e+00
  %6449 = call float @dx.op.unary.f32(i32 23, float %6448)  ; Log(value)
  %6450 = call float @dx.op.binary.f32(i32 35, float %6449, float %6430)  ; FMax(a,b)
  %6451 = call float @dx.op.unary.f32(i32 22, float %6450)  ; Frc(value)
  %6452 = fadd fast float %6451, 0xBFEA666660000000
  %6453 = fmul fast float %6452, 8.000000e+00
  %6454 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6455 = call float @dx.op.unary.f32(i32 27, float %6450)  ; Round_ni(value)
  %6456 = fadd fast float %6455, %6454
  %6457 = call float @dx.op.binary.f32(i32 36, float %6456, float %6432)  ; FMin(a,b)
  %6458 = call float @dx.op.unary.f32(i32 27, float %6457)  ; Round_ni(value)
  %6459 = fsub fast float -0.000000e+00, %6458
  %6460 = call float @dx.op.unary.f32(i32 21, float %6459)  ; Exp(value)
  %6461 = fmul fast float %6460, %6434
  %6462 = fmul fast float %6461, %6407
  %6463 = fmul fast float %6461, %6411
  %6464 = fmul fast float %6462, 2.500000e-01
  %6465 = fmul fast float %6463, 2.500000e-01
  %6466 = fadd fast float %6464, 5.000000e-01
  %6467 = fadd fast float %6465, 5.000000e-01
  %6468 = fsub fast float %6432, %6430
  %6469 = fptoui float %6468 to i32
  %6470 = add i32 %6469, 320
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6470)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = fcmp fast une float %6457, %6432
  %6475 = fsub fast float %6407, %6472
  %6476 = fsub fast float %6411, %6473
  %6477 = call float @dx.op.unary.f32(i32 6, float %6475)  ; FAbs(value)
  %6478 = call float @dx.op.unary.f32(i32 6, float %6476)  ; FAbs(value)
  %6479 = fmul fast float %6477, %6461
  %6480 = fmul fast float %6478, %6461
  %6481 = fcmp fast olt float %6479, 1.000000e+00
  %6482 = fcmp fast olt float %6480, 1.000000e+00
  %6483 = and i1 %6481, %6482
  %6484 = or i1 %6474, %6483
  br i1 %6484, label %6485, label %6782, !dx.controlflow.hints !106

; <label>:6485                                    ; preds = %6423
  %6486 = fmul fast float %6463, 5.000000e-01
  %6487 = fmul fast float %6462, 5.000000e-01
  %6488 = fadd fast float %6486, 5.000000e-01
  %6489 = fadd fast float %6487, 5.000000e-01
  %6490 = sitofp i32 %6429 to float
  %6491 = fsub fast float %6457, %6490
  %6492 = call float @dx.op.unary.f32(i32 27, float %6491)  ; Round_ni(value)
  %6493 = call float @dx.op.unary.f32(i32 22, float %6457)  ; Frc(value)
  %6494 = call float @dx.op.unary.f32(i32 22, float %6489)  ; Frc(value)
  %6495 = call float @dx.op.unary.f32(i32 22, float %6488)  ; Frc(value)
  %6496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6494, float %6495, float %6492, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.ResRet.f32 %6496, 3
  %6501 = fcmp fast ogt float %6493, 0.000000e+00
  br i1 %6501, label %6502, label %6523, !dx.controlflow.hints !107

; <label>:6502                                    ; preds = %6485
  %6503 = fadd fast float %6492, 1.000000e+00
  %6504 = call float @dx.op.unary.f32(i32 22, float %6466)  ; Frc(value)
  %6505 = call float @dx.op.unary.f32(i32 22, float %6467)  ; Frc(value)
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6504, float %6505, float %6503, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6510 = extractvalue %dx.types.ResRet.f32 %6506, 3
  %6511 = fsub fast float %6507, %6497
  %6512 = fsub fast float %6508, %6498
  %6513 = fsub fast float %6509, %6499
  %6514 = fsub fast float %6510, %6500
  %6515 = fmul fast float %6511, %6493
  %6516 = fmul fast float %6512, %6493
  %6517 = fmul fast float %6513, %6493
  %6518 = fmul fast float %6514, %6493
  %6519 = fadd fast float %6515, %6497
  %6520 = fadd fast float %6516, %6498
  %6521 = fadd fast float %6517, %6499
  %6522 = fadd fast float %6518, %6500
  br label %6523

; <label>:6523                                    ; preds = %6502, %6485
  %6524 = phi float [ %6519, %6502 ], [ %6497, %6485 ]
  %6525 = phi float [ %6520, %6502 ], [ %6498, %6485 ]
  %6526 = phi float [ %6521, %6502 ], [ %6499, %6485 ]
  %6527 = phi float [ %6522, %6502 ], [ %6500, %6485 ]
  %6528 = fadd fast float %6524, -5.000000e-01
  %6529 = fadd fast float %6526, -5.000000e-01
  %6530 = fmul fast float %6528, 0xBFD5555560000000
  %6531 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6529, float %6530)  ; FMad(a,b,c)
  %6532 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6525, float 0.000000e+00)  ; FMad(a,b,c)
  %6533 = fadd fast float %6532, %6527
  %6534 = fmul fast float %6528, -7.500000e-01
  %6535 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6529, float %6534)  ; FMad(a,b,c)
  %6536 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6525, float 0.000000e+00)  ; FMad(a,b,c)
  %6537 = fadd fast float %6536, %6527
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6545 = fsub fast float %6541, %6531
  %6546 = fsub fast float %6542, %6533
  %6547 = fsub fast float %6543, %6535
  %6548 = fsub fast float %6544, %6537
  %6549 = fmul fast float %6545, %6539
  %6550 = fmul fast float %6546, %6539
  %6551 = fmul fast float %6547, %6539
  %6552 = fmul fast float %6548, %6539
  %6553 = fadd fast float %6549, %6531
  %6554 = fadd fast float %6550, %6533
  %6555 = fadd fast float %6551, %6535
  %6556 = fadd fast float %6552, %6537
  %6557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6558 = extractvalue %dx.types.ResRet.i32 %6557, 0
  %6559 = and i32 %6558, 536870911
  %6560 = uitofp i32 %6559 to float
  %6561 = fmul fast float %6560, %6407
  %6562 = fmul fast float %6560, %6411
  %6563 = fptoui float %6561 to i32
  %6564 = fptoui float %6562 to i32
  %6565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6566 = extractvalue %dx.types.ResRet.i32 %6565, 0
  %6567 = and i32 %6566, 31
  %6568 = lshr i32 %6563, %6567
  %6569 = lshr i32 %6564, %6567
  %6570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6571 = extractvalue %dx.types.ResRet.i32 %6570, 0
  %6572 = and i32 %6571, 31
  %6573 = shl i32 1, %6572
  %6574 = call i32 @dx.op.binary.i32(i32 40, i32 %6573, i32 4)  ; UMin(a,b)
  %6575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6576 = extractvalue %dx.types.ResRet.i32 %6575, 0
  %6577 = extractvalue %dx.types.ResRet.i32 %6575, 1
  %6578 = icmp eq i32 %6574, 0
  br i1 %6578, label %6620, label %6579

; <label>:6579                                    ; preds = %6523
  br label %6580

; <label>:6580                                    ; preds = %6608, %6579
  %6581 = phi i32 [ %6611, %6608 ], [ 0, %6579 ]
  %6582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6583 = extractvalue %dx.types.ResRet.i32 %6582, 0
  %6584 = lshr i32 %6583, 16
  %6585 = and i32 %6584, 31
  %6586 = shl i32 %6569, %6585
  %6587 = add i32 %6586, %6568
  %6588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6589 = extractvalue %dx.types.ResRet.i32 %6588, 0
  %6590 = and i32 %6589, 31
  %6591 = shl i32 %6587, %6590
  %6592 = add i32 %6591, %6581
  %6593 = shl i32 %6592, 2
  %6594 = add i32 %6593, 32
  %6595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6594, i32 undef)  ; BufferLoad(srv,index,wot)
  %6596 = extractvalue %dx.types.ResRet.i32 %6595, 0
  %6597 = icmp slt i32 %6596, 0
  %6598 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6581
  %6599 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6581
  %6600 = bitcast float* %6598 to i32*
  %6601 = bitcast float* %6599 to i32*
  br i1 %6597, label %6602, label %6608

; <label>:6602                                    ; preds = %6580
  %6603 = and i32 %6596, 1073741823
  %6604 = add nuw nsw i32 %6603, 20
  %6605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6604, i32 undef)  ; BufferLoad(srv,index,wot)
  %6606 = extractvalue %dx.types.ResRet.i32 %6605, 0
  %6607 = extractvalue %dx.types.ResRet.i32 %6605, 1
  br label %6608

; <label>:6608                                    ; preds = %6602, %6580
  %6609 = phi i32 [ %6606, %6602 ], [ %6576, %6580 ]
  %6610 = phi i32 [ %6607, %6602 ], [ %6577, %6580 ]
  store i32 %6609, i32* %6600, align 4
  store i32 %6610, i32* %6601, align 4
  %6611 = add nuw i32 %6581, 1
  %6612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.i32 %6612, 2
  %6614 = icmp eq i32 %6613, 0
  %6615 = icmp ugt i32 %6596, -1073741825
  %6616 = and i1 %6615, %6614
  %6617 = icmp ult i32 %6611, %6574
  %6618 = and i1 %6616, %6617
  br i1 %6618, label %6580, label %6619

; <label>:6619                                    ; preds = %6608
  br label %6620

; <label>:6620                                    ; preds = %6619, %6523
  %6621 = phi i32 [ 0, %6523 ], [ %6611, %6619 ]
  %6622 = extractvalue %dx.types.CBufRet.f32 %6385, 2
  %6623 = fptoui float %6622 to i32
  %6624 = icmp eq i32 %6623, 0
  br i1 %6624, label %6676, label %6625

; <label>:6625                                    ; preds = %6620
  br label %6626

; <label>:6626                                    ; preds = %6671, %6625
  %6627 = phi i32 [ %6672, %6671 ], [ %6621, %6625 ]
  %6628 = phi i32 [ %6673, %6671 ], [ 0, %6625 ]
  %6629 = lshr i32 %6628, 2
  %6630 = and i32 %6628, 3
  %6631 = add nuw nsw i32 %6629, 83
  %6632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6631)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.i32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.i32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.i32 %6632, 2
  %6636 = extractvalue %dx.types.CBufRet.i32 %6632, 3
  %6637 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6633, i32* %6637, align 4
  %6638 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6634, i32* %6638, align 4
  %6639 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6635, i32* %6639, align 4
  %6640 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6636, i32* %6640, align 4
  %6641 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6630
  %6642 = load i32, i32* %6641, align 4, !tbaa !108, !noalias !112
  %6643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6644 = extractvalue %dx.types.ResRet.i32 %6643, 0
  %6645 = lshr i32 %6644, 16
  %6646 = and i32 %6645, 31
  %6647 = shl i32 %6569, %6646
  %6648 = add i32 %6647, %6568
  %6649 = shl i32 %6648, 2
  %6650 = add i32 %6649, %6642
  %6651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6650, i32 undef)  ; BufferLoad(srv,index,wot)
  %6652 = extractvalue %dx.types.ResRet.i32 %6651, 0
  %6653 = icmp eq i32 %6652, 0
  br i1 %6653, label %6671, label %6654

; <label>:6654                                    ; preds = %6626
  %6655 = icmp slt i32 %6652, 0
  %6656 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6627
  %6657 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6627
  %6658 = bitcast float* %6656 to i32*
  %6659 = bitcast float* %6657 to i32*
  br i1 %6655, label %6660, label %6667

; <label>:6660                                    ; preds = %6654
  %6661 = and i32 %6652, 1073741823
  %6662 = add i32 %6642, 20
  %6663 = add i32 %6662, %6661
  %6664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6663, i32 undef)  ; BufferLoad(srv,index,wot)
  %6665 = extractvalue %dx.types.ResRet.i32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.i32 %6664, 1
  br label %6667

; <label>:6667                                    ; preds = %6660, %6654
  %6668 = phi i32 [ %6665, %6660 ], [ %6576, %6654 ]
  %6669 = phi i32 [ %6666, %6660 ], [ %6577, %6654 ]
  store i32 %6668, i32* %6658, align 4
  store i32 %6669, i32* %6659, align 4
  %6670 = add i32 %6627, 1
  br label %6671

; <label>:6671                                    ; preds = %6667, %6626
  %6672 = phi i32 [ %6627, %6626 ], [ %6670, %6667 ]
  %6673 = add nuw i32 %6628, 1
  %6674 = icmp eq i32 %6673, %6623
  br i1 %6674, label %6675, label %6626

; <label>:6675                                    ; preds = %6671
  br label %6676

; <label>:6676                                    ; preds = %6675, %6620
  %6677 = phi i32 [ %6621, %6620 ], [ %6672, %6675 ]
  %6678 = icmp eq i32 %6677, 1
  %6679 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6680 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6678, label %6681, label %6684

; <label>:6681                                    ; preds = %6676
  %6682 = load float, float* %6679, align 4
  %6683 = load float, float* %6680, align 4
  br label %6711

; <label>:6684                                    ; preds = %6676
  %6685 = load float, float* %6679, align 4
  %6686 = load float, float* %6680, align 4
  %6687 = fdiv fast float 1.000000e+00, %6686
  %6688 = fsub fast float %6685, %6687
  %6689 = icmp ugt i32 %6677, 1
  br i1 %6689, label %6690, label %6706

; <label>:6690                                    ; preds = %6684
  br label %6691

; <label>:6691                                    ; preds = %6691, %6690
  %6692 = phi float [ %6701, %6691 ], [ %6688, %6690 ]
  %6693 = phi float [ %6702, %6691 ], [ %6685, %6690 ]
  %6694 = phi i32 [ %6703, %6691 ], [ 1, %6690 ]
  %6695 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6694
  %6696 = load float, float* %6695, align 4
  %6697 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6694
  %6698 = load float, float* %6697, align 4
  %6699 = fdiv fast float 1.000000e+00, %6698
  %6700 = fsub fast float %6696, %6699
  %6701 = call float @dx.op.binary.f32(i32 36, float %6692, float %6700)  ; FMin(a,b)
  %6702 = call float @dx.op.binary.f32(i32 35, float %6693, float %6696)  ; FMax(a,b)
  %6703 = add nuw i32 %6694, 1
  %6704 = icmp eq i32 %6703, %6677
  br i1 %6704, label %6705, label %6691

; <label>:6705                                    ; preds = %6691
  br label %6706

; <label>:6706                                    ; preds = %6705, %6684
  %6707 = phi float [ %6688, %6684 ], [ %6701, %6705 ]
  %6708 = phi float [ %6685, %6684 ], [ %6702, %6705 ]
  %6709 = fsub fast float %6708, %6707
  %6710 = fdiv fast float 1.000000e+00, %6709
  br label %6711

; <label>:6711                                    ; preds = %6706, %6681
  %6712 = phi float [ %6682, %6681 ], [ %6708, %6706 ]
  %6713 = phi float [ %6683, %6681 ], [ %6710, %6706 ]
  %6714 = fadd fast float %6415, %6712
  %6715 = fmul fast float %6714, %6713
  %6716 = call float @dx.op.unary.f32(i32 7, float %6715)  ; Saturate(value)
  %6717 = fmul fast float %6716, 2.000000e+00
  %6718 = fsub fast float 1.000000e+00, %6717
  %6719 = fmul fast float %6553, %6553
  %6720 = fsub fast float %6554, %6719
  %6721 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6720)  ; FMax(a,b)
  %6722 = fdiv fast float 1.000000e+00, %6721
  %6723 = fmul fast float %6554, %6553
  %6724 = fsub fast float %6555, %6723
  %6725 = fsub fast float %6718, %6553
  %6726 = fmul fast float %6718, %6718
  %6727 = fsub fast float %6726, %6554
  %6728 = fmul fast float %6722, %6724
  %6729 = fmul fast float %6728, %6725
  %6730 = fsub fast float %6727, %6729
  %6731 = fmul fast float %6554, %6554
  %6732 = fsub fast float %6556, %6731
  %6733 = fmul fast float %6724, %6724
  %6734 = fmul fast float %6733, %6722
  %6735 = fsub fast float %6732, %6734
  %6736 = fdiv fast float %6730, %6735
  %6737 = fmul fast float %6736, %6724
  %6738 = fsub fast float %6725, %6737
  %6739 = fmul fast float %6738, %6722
  %6740 = fmul fast float %6739, %6553
  %6741 = fsub fast float 1.000000e+00, %6740
  %6742 = fmul fast float %6736, %6554
  %6743 = fsub fast float %6741, %6742
  %6744 = fmul fast float %6739, %6739
  %6745 = fmul fast float %6736, 4.000000e+00
  %6746 = fmul fast float %6745, %6743
  %6747 = fsub fast float %6744, %6746
  %6748 = call float @dx.op.unary.f32(i32 24, float %6747)  ; Sqrt(value)
  %6749 = fcmp fast oge float %6739, 0.000000e+00
  %6750 = fsub fast float -0.000000e+00, %6748
  %6751 = select i1 %6749, float %6750, float %6748
  %6752 = fsub fast float %6751, %6739
  %6753 = fdiv fast float %6752, %6736
  %6754 = fdiv fast float %6743, %6752
  %6755 = fmul fast float %6753, 5.000000e-01
  %6756 = fmul fast float %6754, 2.000000e+00
  %6757 = select i1 %6749, float %6755, float %6756
  %6758 = select i1 %6749, float %6756, float %6755
  %6759 = call float @dx.op.binary.f32(i32 35, float %6757, float %6758)  ; FMax(a,b)
  %6760 = call float @dx.op.binary.f32(i32 36, float %6757, float %6758)  ; FMin(a,b)
  %6761 = fcmp fast ogt float %6718, %6759
  %6762 = fsub fast float %6718, %6760
  %6763 = fsub fast float %6718, %6759
  %6764 = fsub fast float %6759, %6760
  %6765 = select i1 %6761, float %6763, float %6764
  %6766 = fmul float %6762, %6765
  %6767 = select i1 %6761, float %6760, float %6718
  %6768 = fcmp fast ogt float %6718, %6760
  %6769 = fmul fast float %6767, %6759
  %6770 = fadd fast float %6767, %6759
  %6771 = fmul fast float %6770, %6553
  %6772 = fadd fast float %6769, %6554
  %6773 = fsub fast float %6772, %6771
  %6774 = fdiv fast float %6773, %6766
  %6775 = select i1 %6768, float %6774, float 0.000000e+00
  %6776 = fsub fast float 1.000000e+00, %6775
  %6777 = select i1 %6761, float %6776, float %6775
  %6778 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6780 = fmul fast float %6779, %6778
  %6781 = fsub fast float 1.000000e+00, %6780
  br label %6782

; <label>:6782                                    ; preds = %6711, %6423, %6388, %6384, %6350
  %6783 = phi float [ 1.000000e+00, %6350 ], [ %6781, %6711 ], [ 1.000000e+00, %6388 ], [ 1.000000e+00, %6423 ], [ 1.000000e+00, %6384 ]
  %6784 = fcmp fast ogt float %6380, 0.000000e+00
  br i1 %6784, label %6785, label %6947, !dx.controlflow.hints !121

; <label>:6785                                    ; preds = %6782
  %6786 = fadd fast float %6293, %6267
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 2
  %6792 = call float @dx.op.binary.f32(i32 35, float %6786, float 0.000000e+00)  ; FMax(a,b)
  %6793 = fadd fast float %6792, 0x3F10000000000000
  %6794 = fcmp fast oeq float %6791, 0.000000e+00
  br i1 %6794, label %6795, label %6862

; <label>:6795                                    ; preds = %6785
  %6796 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6797 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6798 = fmul fast float %6797, %6282
  %6799 = fmul fast float %6796, %6283
  %6800 = fadd fast float %6798, 5.000000e-01
  %6801 = call float @dx.op.unary.f32(i32 27, float %6800)  ; Round_ni(value)
  %6802 = fadd fast float %6799, 5.000000e-01
  %6803 = call float @dx.op.unary.f32(i32 27, float %6802)  ; Round_ni(value)
  %6804 = fsub fast float %6800, %6801
  %6805 = fsub fast float %6802, %6803
  %6806 = fadd fast float %6801, -5.000000e-01
  %6807 = fadd fast float %6803, -5.000000e-01
  %6808 = fmul fast float %6804, 2.000000e+00
  %6809 = fsub fast float 3.000000e+00, %6808
  %6810 = fadd fast float %6808, 1.000000e+00
  %6811 = fsub fast float 2.000000e+00, %6804
  %6812 = bitcast float %6809 to i32
  %6813 = sub nsw i32 2129859010, %6812
  %6814 = bitcast i32 %6813 to float
  %6815 = fmul fast float %6814, %6811
  %6816 = fadd fast float %6815, -1.000000e+00
  %6817 = bitcast float %6810 to i32
  %6818 = sub nsw i32 2129859010, %6817
  %6819 = bitcast i32 %6818 to float
  %6820 = fmul fast float %6819, %6804
  %6821 = fadd fast float %6820, 1.000000e+00
  %6822 = fmul fast float %6805, 2.000000e+00
  %6823 = fsub fast float 3.000000e+00, %6822
  %6824 = fadd fast float %6822, 1.000000e+00
  %6825 = fsub fast float 2.000000e+00, %6805
  %6826 = bitcast float %6823 to i32
  %6827 = sub nsw i32 2129859010, %6826
  %6828 = bitcast i32 %6827 to float
  %6829 = fmul fast float %6828, %6825
  %6830 = fadd fast float %6829, -1.000000e+00
  %6831 = bitcast float %6824 to i32
  %6832 = sub nsw i32 2129859010, %6831
  %6833 = bitcast i32 %6832 to float
  %6834 = fmul fast float %6833, %6805
  %6835 = fadd fast float %6834, 1.000000e+00
  %6836 = fadd fast float %6816, %6806
  %6837 = fmul fast float %6836, %6788
  %6838 = fadd fast float %6830, %6807
  %6839 = fmul fast float %6838, %6789
  %6840 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6837, float %6839, float undef, float undef, i32 0, i32 0, i32 undef, float %6793)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6841 = extractvalue %dx.types.ResRet.f32 %6840, 0
  %6842 = fmul fast float %6841, %6809
  %6843 = fadd fast float %6821, %6806
  %6844 = fmul fast float %6843, %6788
  %6845 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6844, float %6839, float undef, float undef, i32 0, i32 0, i32 undef, float %6793)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6846 = extractvalue %dx.types.ResRet.f32 %6845, 0
  %6847 = fmul fast float %6846, %6810
  %6848 = fadd fast float %6835, %6807
  %6849 = fmul fast float %6848, %6789
  %6850 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6837, float %6849, float undef, float undef, i32 0, i32 0, i32 undef, float %6793)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6851 = extractvalue %dx.types.ResRet.f32 %6850, 0
  %6852 = fmul fast float %6851, %6809
  %6853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6844, float %6849, float undef, float undef, i32 0, i32 0, i32 undef, float %6793)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6854 = extractvalue %dx.types.ResRet.f32 %6853, 0
  %6855 = fmul fast float %6854, %6810
  %6856 = fadd fast float %6855, %6852
  %6857 = fmul fast float %6856, %6824
  %6858 = fadd fast float %6847, %6842
  %6859 = fmul fast float %6858, %6823
  %6860 = fadd fast float %6859, %6857
  %6861 = fmul fast float %6860, 6.250000e-02
  br label %6947

; <label>:6862                                    ; preds = %6785
  %6863 = fmul fast float %243, 0x401921FB60000000
  %6864 = call float @dx.op.unary.f32(i32 13, float %6863)  ; Sin(value)
  %6865 = call float @dx.op.unary.f32(i32 12, float %6863)  ; Cos(value)
  %6866 = fsub fast float -0.000000e+00, %6864
  br label %6867

; <label>:6867                                    ; preds = %6916, %6862
  %6868 = phi float [ 0.000000e+00, %6862 ], [ %6911, %6916 ]
  %6869 = phi float [ 0.000000e+00, %6862 ], [ %6913, %6916 ]
  %6870 = phi i32 [ 0, %6862 ], [ %6917, %6916 ]
  %6871 = mul i32 %6870, 2
  %6872 = add i32 0, %6871
  %6873 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6872
  %6874 = load float, float* %6873, align 4
  %6875 = mul i32 %6870, 2
  %6876 = add i32 1, %6875
  %6877 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6876
  %6878 = load float, float* %6877, align 4
  %6879 = fmul fast float %6874, %6865
  %6880 = call float @dx.op.tertiary.f32(i32 46, float %6878, float %6866, float %6879)  ; FMad(a,b,c)
  %6881 = fmul fast float %6874, %6864
  %6882 = call float @dx.op.tertiary.f32(i32 46, float %6878, float %6865, float %6881)  ; FMad(a,b,c)
  %6883 = fmul fast float %6880, %6791
  %6884 = fmul fast float %6882, %6791
  %6885 = fadd fast float %6883, %6282
  %6886 = fadd fast float %6884, %6283
  %6887 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6885, float %6886, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6888 = extractvalue %dx.types.ResRet.f32 %6887, 0
  %6889 = extractvalue %dx.types.ResRet.f32 %6887, 1
  %6890 = extractvalue %dx.types.ResRet.f32 %6887, 2
  %6891 = extractvalue %dx.types.ResRet.f32 %6887, 3
  %6892 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6888, float* %6892, align 4
  %6893 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6889, float* %6893, align 4
  %6894 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6890, float* %6894, align 4
  %6895 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6891, float* %6895, align 4
  %6896 = fsub fast float %6888, %6793
  %6897 = fcmp fast olt float %6896, 0.000000e+00
  %6898 = select i1 %6897, float 0.000000e+00, float 1.000000e+00
  %6899 = fadd fast float %6898, %6868
  %6900 = fmul fast float %6898, %6896
  %6901 = fadd fast float %6900, %6869
  br label %6902

; <label>:6902                                    ; preds = %6902, %6867
  %6903 = phi i32 [ 1, %6867 ], [ %6914, %6902 ]
  %6904 = phi float [ %6901, %6867 ], [ %6913, %6902 ]
  %6905 = phi float [ %6899, %6867 ], [ %6911, %6902 ]
  %6906 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6903
  %6907 = load float, float* %6906, align 4, !tbaa !122, !noalias !112
  %6908 = fsub fast float %6907, %6793
  %6909 = fcmp fast olt float %6908, 0.000000e+00
  %6910 = select i1 %6909, float 0.000000e+00, float 1.000000e+00
  %6911 = fadd fast float %6910, %6905
  %6912 = fmul fast float %6910, %6908
  %6913 = fadd fast float %6912, %6904
  %6914 = add nuw nsw i32 %6903, 1
  %6915 = icmp eq i32 %6914, 4
  br i1 %6915, label %6916, label %6902, !llvm.loop !124

; <label>:6916                                    ; preds = %6902
  %6917 = add nuw nsw i32 %6870, 1
  %6918 = icmp eq i32 %6917, 8
  br i1 %6918, label %6919, label %6867, !llvm.loop !125

; <label>:6919                                    ; preds = %6916
  %6920 = fdiv fast float 1.000000e+00, %6911
  %6921 = fmul fast float %6920, %6913
  %6922 = fdiv fast float 1.000000e+00, %6793
  %6923 = fmul fast float %6921, %6922
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = call float @dx.op.binary.f32(i32 35, float %6924, float 0.000000e+00)  ; FMax(a,b)
  %6926 = fmul fast float %6911, 3.125000e-02
  %6927 = call float @dx.op.unary.f32(i32 7, float %6926)  ; Saturate(value)
  %6928 = fmul fast float %6927, 2.000000e+00
  %6929 = fadd fast float %6928, -1.000000e+00
  %6930 = fcmp fast ogt float %6929, 0.000000e+00
  %6931 = fcmp fast olt float %6929, 0.000000e+00
  %6932 = zext i1 %6930 to i32
  %6933 = zext i1 %6931 to i32
  %6934 = sub nsw i32 %6932, %6933
  %6935 = sitofp i32 %6934 to float
  %6936 = fmul fast float %6935, %6929
  %6937 = fsub fast float 1.000000e+00, %6936
  %6938 = fmul fast float %6937, %6937
  %6939 = fmul fast float %6938, %6937
  %6940 = fsub fast float %6937, %6939
  %6941 = fmul fast float %6940, %6925
  %6942 = fsub fast float 1.000000e+00, %6939
  %6943 = fsub fast float %6942, %6941
  %6944 = fmul fast float %6935, 5.000000e-01
  %6945 = fmul fast float %6944, %6943
  %6946 = fsub fast float 5.000000e-01, %6945
  br label %6947

; <label>:6947                                    ; preds = %6919, %6795, %6782
  %6948 = phi float [ 1.000000e+00, %6782 ], [ %6861, %6795 ], [ %6946, %6919 ]
  %6949 = fcmp fast ogt float %6378, 0.000000e+00
  br i1 %6949, label %6950, label %7114, !dx.controlflow.hints !126

; <label>:6950                                    ; preds = %6947
  %6951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6951, 1
  %6953 = fadd fast float %6952, %6267
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 3
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6959 = call float @dx.op.binary.f32(i32 35, float %6953, float 0.000000e+00)  ; FMax(a,b)
  %6960 = fadd fast float %6959, 0x3F10000000000000
  %6961 = fcmp fast oeq float %6958, 0.000000e+00
  br i1 %6961, label %6962, label %7029

; <label>:6962                                    ; preds = %6950
  %6963 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6964 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6965 = fmul fast float %6964, %6274
  %6966 = fmul fast float %6963, %6275
  %6967 = fadd fast float %6965, 5.000000e-01
  %6968 = call float @dx.op.unary.f32(i32 27, float %6967)  ; Round_ni(value)
  %6969 = fadd fast float %6966, 5.000000e-01
  %6970 = call float @dx.op.unary.f32(i32 27, float %6969)  ; Round_ni(value)
  %6971 = fsub fast float %6967, %6968
  %6972 = fsub fast float %6969, %6970
  %6973 = fadd fast float %6968, -5.000000e-01
  %6974 = fadd fast float %6970, -5.000000e-01
  %6975 = fmul fast float %6971, 2.000000e+00
  %6976 = fsub fast float 3.000000e+00, %6975
  %6977 = fadd fast float %6975, 1.000000e+00
  %6978 = fsub fast float 2.000000e+00, %6971
  %6979 = bitcast float %6976 to i32
  %6980 = sub nsw i32 2129859010, %6979
  %6981 = bitcast i32 %6980 to float
  %6982 = fmul fast float %6981, %6978
  %6983 = fadd fast float %6982, -1.000000e+00
  %6984 = bitcast float %6977 to i32
  %6985 = sub nsw i32 2129859010, %6984
  %6986 = bitcast i32 %6985 to float
  %6987 = fmul fast float %6986, %6971
  %6988 = fadd fast float %6987, 1.000000e+00
  %6989 = fmul fast float %6972, 2.000000e+00
  %6990 = fsub fast float 3.000000e+00, %6989
  %6991 = fadd fast float %6989, 1.000000e+00
  %6992 = fsub fast float 2.000000e+00, %6972
  %6993 = bitcast float %6990 to i32
  %6994 = sub nsw i32 2129859010, %6993
  %6995 = bitcast i32 %6994 to float
  %6996 = fmul fast float %6995, %6992
  %6997 = fadd fast float %6996, -1.000000e+00
  %6998 = bitcast float %6991 to i32
  %6999 = sub nsw i32 2129859010, %6998
  %7000 = bitcast i32 %6999 to float
  %7001 = fmul fast float %7000, %6972
  %7002 = fadd fast float %7001, 1.000000e+00
  %7003 = fadd fast float %6983, %6973
  %7004 = fmul fast float %7003, %6955
  %7005 = fadd fast float %6997, %6974
  %7006 = fmul fast float %7005, %6956
  %7007 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7004, float %7006, float undef, float undef, i32 0, i32 0, i32 undef, float %6960)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = fmul fast float %7008, %6976
  %7010 = fadd fast float %6988, %6973
  %7011 = fmul fast float %7010, %6955
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7011, float %7006, float undef, float undef, i32 0, i32 0, i32 undef, float %6960)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = fmul fast float %7013, %6977
  %7015 = fadd fast float %7002, %6974
  %7016 = fmul fast float %7015, %6956
  %7017 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7004, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float %6960)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7018 = extractvalue %dx.types.ResRet.f32 %7017, 0
  %7019 = fmul fast float %7018, %6976
  %7020 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7011, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float %6960)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7021 = extractvalue %dx.types.ResRet.f32 %7020, 0
  %7022 = fmul fast float %7021, %6977
  %7023 = fadd fast float %7022, %7019
  %7024 = fmul fast float %7023, %6991
  %7025 = fadd fast float %7014, %7009
  %7026 = fmul fast float %7025, %6990
  %7027 = fadd fast float %7026, %7024
  %7028 = fmul fast float %7027, 6.250000e-02
  br label %7114

; <label>:7029                                    ; preds = %6950
  %7030 = fmul fast float %243, 0x401921FB60000000
  %7031 = call float @dx.op.unary.f32(i32 13, float %7030)  ; Sin(value)
  %7032 = call float @dx.op.unary.f32(i32 12, float %7030)  ; Cos(value)
  %7033 = fsub fast float -0.000000e+00, %7031
  br label %7034

; <label>:7034                                    ; preds = %7083, %7029
  %7035 = phi float [ 0.000000e+00, %7029 ], [ %7078, %7083 ]
  %7036 = phi float [ 0.000000e+00, %7029 ], [ %7080, %7083 ]
  %7037 = phi i32 [ 0, %7029 ], [ %7084, %7083 ]
  %7038 = mul i32 %7037, 2
  %7039 = add i32 0, %7038
  %7040 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7039
  %7041 = load float, float* %7040, align 4
  %7042 = mul i32 %7037, 2
  %7043 = add i32 1, %7042
  %7044 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7043
  %7045 = load float, float* %7044, align 4
  %7046 = fmul fast float %7041, %7032
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %7045, float %7033, float %7046)  ; FMad(a,b,c)
  %7048 = fmul fast float %7041, %7031
  %7049 = call float @dx.op.tertiary.f32(i32 46, float %7045, float %7032, float %7048)  ; FMad(a,b,c)
  %7050 = fmul fast float %7047, %6958
  %7051 = fmul fast float %7049, %6958
  %7052 = fadd fast float %7050, %6274
  %7053 = fadd fast float %7051, %6275
  %7054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7052, float %7053, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.ResRet.f32 %7054, 3
  %7059 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7055, float* %7059, align 4
  %7060 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7056, float* %7060, align 4
  %7061 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7057, float* %7061, align 4
  %7062 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7058, float* %7062, align 4
  %7063 = fsub fast float %7055, %6960
  %7064 = fcmp fast olt float %7063, 0.000000e+00
  %7065 = select i1 %7064, float 0.000000e+00, float 1.000000e+00
  %7066 = fadd fast float %7065, %7035
  %7067 = fmul fast float %7065, %7063
  %7068 = fadd fast float %7067, %7036
  br label %7069

; <label>:7069                                    ; preds = %7069, %7034
  %7070 = phi i32 [ 1, %7034 ], [ %7081, %7069 ]
  %7071 = phi float [ %7068, %7034 ], [ %7080, %7069 ]
  %7072 = phi float [ %7066, %7034 ], [ %7078, %7069 ]
  %7073 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7070
  %7074 = load float, float* %7073, align 4, !tbaa !122, !noalias !112
  %7075 = fsub fast float %7074, %6960
  %7076 = fcmp fast olt float %7075, 0.000000e+00
  %7077 = select i1 %7076, float 0.000000e+00, float 1.000000e+00
  %7078 = fadd fast float %7077, %7072
  %7079 = fmul fast float %7077, %7075
  %7080 = fadd fast float %7079, %7071
  %7081 = add nuw nsw i32 %7070, 1
  %7082 = icmp eq i32 %7081, 4
  br i1 %7082, label %7083, label %7069, !llvm.loop !124

; <label>:7083                                    ; preds = %7069
  %7084 = add nuw nsw i32 %7037, 1
  %7085 = icmp eq i32 %7084, 8
  br i1 %7085, label %7086, label %7034, !llvm.loop !125

; <label>:7086                                    ; preds = %7083
  %7087 = fdiv fast float 1.000000e+00, %7078
  %7088 = fmul fast float %7087, %7080
  %7089 = fdiv fast float 1.000000e+00, %6960
  %7090 = fmul fast float %7088, %7089
  %7091 = call float @dx.op.unary.f32(i32 7, float %7090)  ; Saturate(value)
  %7092 = call float @dx.op.binary.f32(i32 35, float %7091, float 0.000000e+00)  ; FMax(a,b)
  %7093 = fmul fast float %7078, 3.125000e-02
  %7094 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7095 = fmul fast float %7094, 2.000000e+00
  %7096 = fadd fast float %7095, -1.000000e+00
  %7097 = fcmp fast ogt float %7096, 0.000000e+00
  %7098 = fcmp fast olt float %7096, 0.000000e+00
  %7099 = zext i1 %7097 to i32
  %7100 = zext i1 %7098 to i32
  %7101 = sub nsw i32 %7099, %7100
  %7102 = sitofp i32 %7101 to float
  %7103 = fmul fast float %7102, %7096
  %7104 = fsub fast float 1.000000e+00, %7103
  %7105 = fmul fast float %7104, %7104
  %7106 = fmul fast float %7105, %7104
  %7107 = fsub fast float %7104, %7106
  %7108 = fmul fast float %7107, %7092
  %7109 = fsub fast float 1.000000e+00, %7106
  %7110 = fsub fast float %7109, %7108
  %7111 = fmul fast float %7102, 5.000000e-01
  %7112 = fmul fast float %7111, %7110
  %7113 = fsub fast float 5.000000e-01, %7112
  br label %7114

; <label>:7114                                    ; preds = %7086, %6962, %6947
  %7115 = phi float [ 1.000000e+00, %6947 ], [ %7028, %6962 ], [ %7113, %7086 ]
  %7116 = fcmp fast ogt float %6377, 0.000000e+00
  br i1 %7116, label %7117, label %7281, !dx.controlflow.hints !127

; <label>:7117                                    ; preds = %7114
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = fadd fast float %7119, %6267
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 2
  %7123 = extractvalue %dx.types.CBufRet.f32 %7121, 3
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7126 = call float @dx.op.binary.f32(i32 35, float %7120, float 0.000000e+00)  ; FMax(a,b)
  %7127 = fadd fast float %7126, 0x3F10000000000000
  %7128 = fcmp fast oeq float %7125, 0.000000e+00
  br i1 %7128, label %7129, label %7196

; <label>:7129                                    ; preds = %7117
  %7130 = extractvalue %dx.types.CBufRet.f32 %7121, 1
  %7131 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7132 = fmul fast float %7131, %6259
  %7133 = fmul fast float %7130, %6263
  %7134 = fadd fast float %7132, 5.000000e-01
  %7135 = call float @dx.op.unary.f32(i32 27, float %7134)  ; Round_ni(value)
  %7136 = fadd fast float %7133, 5.000000e-01
  %7137 = call float @dx.op.unary.f32(i32 27, float %7136)  ; Round_ni(value)
  %7138 = fsub fast float %7134, %7135
  %7139 = fsub fast float %7136, %7137
  %7140 = fadd fast float %7135, -5.000000e-01
  %7141 = fadd fast float %7137, -5.000000e-01
  %7142 = fmul fast float %7138, 2.000000e+00
  %7143 = fsub fast float 3.000000e+00, %7142
  %7144 = fadd fast float %7142, 1.000000e+00
  %7145 = fsub fast float 2.000000e+00, %7138
  %7146 = bitcast float %7143 to i32
  %7147 = sub nsw i32 2129859010, %7146
  %7148 = bitcast i32 %7147 to float
  %7149 = fmul fast float %7148, %7145
  %7150 = fadd fast float %7149, -1.000000e+00
  %7151 = bitcast float %7144 to i32
  %7152 = sub nsw i32 2129859010, %7151
  %7153 = bitcast i32 %7152 to float
  %7154 = fmul fast float %7153, %7138
  %7155 = fadd fast float %7154, 1.000000e+00
  %7156 = fmul fast float %7139, 2.000000e+00
  %7157 = fsub fast float 3.000000e+00, %7156
  %7158 = fadd fast float %7156, 1.000000e+00
  %7159 = fsub fast float 2.000000e+00, %7139
  %7160 = bitcast float %7157 to i32
  %7161 = sub nsw i32 2129859010, %7160
  %7162 = bitcast i32 %7161 to float
  %7163 = fmul fast float %7162, %7159
  %7164 = fadd fast float %7163, -1.000000e+00
  %7165 = bitcast float %7158 to i32
  %7166 = sub nsw i32 2129859010, %7165
  %7167 = bitcast i32 %7166 to float
  %7168 = fmul fast float %7167, %7139
  %7169 = fadd fast float %7168, 1.000000e+00
  %7170 = fadd fast float %7150, %7140
  %7171 = fmul fast float %7170, %7122
  %7172 = fadd fast float %7164, %7141
  %7173 = fmul fast float %7172, %7123
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7171, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float %7127)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = fmul fast float %7175, %7143
  %7177 = fadd fast float %7155, %7140
  %7178 = fmul fast float %7177, %7122
  %7179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7178, float %7173, float undef, float undef, i32 0, i32 0, i32 undef, float %7127)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7180 = extractvalue %dx.types.ResRet.f32 %7179, 0
  %7181 = fmul fast float %7180, %7144
  %7182 = fadd fast float %7169, %7141
  %7183 = fmul fast float %7182, %7123
  %7184 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7171, float %7183, float undef, float undef, i32 0, i32 0, i32 undef, float %7127)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = fmul fast float %7185, %7143
  %7187 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7178, float %7183, float undef, float undef, i32 0, i32 0, i32 undef, float %7127)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7188 = extractvalue %dx.types.ResRet.f32 %7187, 0
  %7189 = fmul fast float %7188, %7144
  %7190 = fadd fast float %7189, %7186
  %7191 = fmul fast float %7190, %7158
  %7192 = fadd fast float %7181, %7176
  %7193 = fmul fast float %7192, %7157
  %7194 = fadd fast float %7193, %7191
  %7195 = fmul fast float %7194, 6.250000e-02
  br label %7281

; <label>:7196                                    ; preds = %7117
  %7197 = fmul fast float %243, 0x401921FB60000000
  %7198 = call float @dx.op.unary.f32(i32 13, float %7197)  ; Sin(value)
  %7199 = call float @dx.op.unary.f32(i32 12, float %7197)  ; Cos(value)
  %7200 = fsub fast float -0.000000e+00, %7198
  br label %7201

; <label>:7201                                    ; preds = %7250, %7196
  %7202 = phi float [ 0.000000e+00, %7196 ], [ %7245, %7250 ]
  %7203 = phi float [ 0.000000e+00, %7196 ], [ %7247, %7250 ]
  %7204 = phi i32 [ 0, %7196 ], [ %7251, %7250 ]
  %7205 = mul i32 %7204, 2
  %7206 = add i32 0, %7205
  %7207 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7206
  %7208 = load float, float* %7207, align 4
  %7209 = mul i32 %7204, 2
  %7210 = add i32 1, %7209
  %7211 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7210
  %7212 = load float, float* %7211, align 4
  %7213 = fmul fast float %7208, %7199
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %7212, float %7200, float %7213)  ; FMad(a,b,c)
  %7215 = fmul fast float %7208, %7198
  %7216 = call float @dx.op.tertiary.f32(i32 46, float %7212, float %7199, float %7215)  ; FMad(a,b,c)
  %7217 = fmul fast float %7214, %7125
  %7218 = fmul fast float %7216, %7125
  %7219 = fadd fast float %7217, %6259
  %7220 = fadd fast float %7218, %6263
  %7221 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7219, float %7220, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7222 = extractvalue %dx.types.ResRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.ResRet.f32 %7221, 1
  %7224 = extractvalue %dx.types.ResRet.f32 %7221, 2
  %7225 = extractvalue %dx.types.ResRet.f32 %7221, 3
  %7226 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7222, float* %7226, align 4
  %7227 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7223, float* %7227, align 4
  %7228 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7224, float* %7228, align 4
  %7229 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7225, float* %7229, align 4
  %7230 = fsub fast float %7222, %7127
  %7231 = fcmp fast olt float %7230, 0.000000e+00
  %7232 = select i1 %7231, float 0.000000e+00, float 1.000000e+00
  %7233 = fadd fast float %7232, %7202
  %7234 = fmul fast float %7232, %7230
  %7235 = fadd fast float %7234, %7203
  br label %7236

; <label>:7236                                    ; preds = %7236, %7201
  %7237 = phi i32 [ 1, %7201 ], [ %7248, %7236 ]
  %7238 = phi float [ %7235, %7201 ], [ %7247, %7236 ]
  %7239 = phi float [ %7233, %7201 ], [ %7245, %7236 ]
  %7240 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7237
  %7241 = load float, float* %7240, align 4, !tbaa !122, !noalias !112
  %7242 = fsub fast float %7241, %7127
  %7243 = fcmp fast olt float %7242, 0.000000e+00
  %7244 = select i1 %7243, float 0.000000e+00, float 1.000000e+00
  %7245 = fadd fast float %7244, %7239
  %7246 = fmul fast float %7244, %7242
  %7247 = fadd fast float %7246, %7238
  %7248 = add nuw nsw i32 %7237, 1
  %7249 = icmp eq i32 %7248, 4
  br i1 %7249, label %7250, label %7236, !llvm.loop !124

; <label>:7250                                    ; preds = %7236
  %7251 = add nuw nsw i32 %7204, 1
  %7252 = icmp eq i32 %7251, 8
  br i1 %7252, label %7253, label %7201, !llvm.loop !125

; <label>:7253                                    ; preds = %7250
  %7254 = fdiv fast float 1.000000e+00, %7245
  %7255 = fmul fast float %7254, %7247
  %7256 = fdiv fast float 1.000000e+00, %7127
  %7257 = fmul fast float %7255, %7256
  %7258 = call float @dx.op.unary.f32(i32 7, float %7257)  ; Saturate(value)
  %7259 = call float @dx.op.binary.f32(i32 35, float %7258, float 0.000000e+00)  ; FMax(a,b)
  %7260 = fmul fast float %7245, 3.125000e-02
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = fmul fast float %7261, 2.000000e+00
  %7263 = fadd fast float %7262, -1.000000e+00
  %7264 = fcmp fast ogt float %7263, 0.000000e+00
  %7265 = fcmp fast olt float %7263, 0.000000e+00
  %7266 = zext i1 %7264 to i32
  %7267 = zext i1 %7265 to i32
  %7268 = sub nsw i32 %7266, %7267
  %7269 = sitofp i32 %7268 to float
  %7270 = fmul fast float %7269, %7263
  %7271 = fsub fast float 1.000000e+00, %7270
  %7272 = fmul fast float %7271, %7271
  %7273 = fmul fast float %7272, %7271
  %7274 = fsub fast float %7271, %7273
  %7275 = fmul fast float %7274, %7259
  %7276 = fsub fast float 1.000000e+00, %7273
  %7277 = fsub fast float %7276, %7275
  %7278 = fmul fast float %7269, 5.000000e-01
  %7279 = fmul fast float %7278, %7277
  %7280 = fsub fast float 5.000000e-01, %7279
  br label %7281

; <label>:7281                                    ; preds = %7253, %7129, %7114
  %7282 = phi float [ 1.000000e+00, %7114 ], [ %7195, %7129 ], [ %7280, %7253 ]
  %7283 = fsub fast float %6948, %6783
  %7284 = fmul fast float %7283, %6321
  %7285 = fadd fast float %7284, %6783
  %7286 = fsub fast float %7115, %7285
  %7287 = fmul fast float %7286, %6351
  %7288 = fadd fast float %7287, %7285
  %7289 = fsub fast float %7282, %7288
  %7290 = fmul fast float %7289, %6377
  %7291 = fadd fast float %7290, %7288
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7294 = fcmp fast ogt float %7293, 0.000000e+00
  br i1 %7294, label %7295, label %7335, !dx.controlflow.hints !128

; <label>:7295                                    ; preds = %7281
  %7296 = fcmp fast ugt float %7293, 0.000000e+00
  br i1 %7296, label %7297, label %7332

; <label>:7297                                    ; preds = %7295
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7301 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7302 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7305 = extractvalue %dx.types.CBufRet.f32 %7303, 1
  %7306 = extractvalue %dx.types.CBufRet.f32 %7303, 2
  %7307 = extractvalue %dx.types.CBufRet.f32 %7303, 3
  %7308 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7309 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7314 = fadd fast float %7311, %6236
  %7315 = fadd fast float %7312, %6237
  %7316 = fadd fast float %7313, %6238
  %7317 = fmul fast float %7314, %7299
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7300, float %7315, float %7317)  ; FMad(a,b,c)
  %7319 = call float @dx.op.tertiary.f32(i32 46, float %7301, float %7316, float %7318)  ; FMad(a,b,c)
  %7320 = fadd fast float %7319, %7302
  %7321 = fmul fast float %7314, %7304
  %7322 = call float @dx.op.tertiary.f32(i32 46, float %7305, float %7315, float %7321)  ; FMad(a,b,c)
  %7323 = call float @dx.op.tertiary.f32(i32 46, float %7306, float %7316, float %7322)  ; FMad(a,b,c)
  %7324 = fadd fast float %7323, %7307
  %7325 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7320, float %7324, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = fmul fast float %7326, %7309
  %7328 = fadd fast float %7327, %7308
  %7329 = call float @dx.op.unary.f32(i32 7, float %7328)  ; Saturate(value)
  %7330 = fmul fast float %7329, %7293
  %7331 = fsub fast float 1.000000e+00, %7330
  br label %7332

; <label>:7332                                    ; preds = %7297, %7295
  %7333 = phi float [ %7331, %7297 ], [ 1.000000e+00, %7295 ]
  %7334 = fmul fast float %7333, %7291
  br label %7335

; <label>:7335                                    ; preds = %7332, %7281, %6216
  %7336 = phi float [ 1.000000e+00, %6216 ], [ %7334, %7332 ], [ %7291, %7281 ]
  %7337 = call float @dx.op.binary.f32(i32 36, float %7336, float %7336)  ; FMin(a,b)
  %7338 = call float @dx.op.binary.f32(i32 36, float %7336, float %7337)  ; FMin(a,b)
  %7339 = fcmp fast ogt float %7338, 0.000000e+00
  br i1 %7339, label %7340, label %7505, !dx.controlflow.hints !129

; <label>:7340                                    ; preds = %7335
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7344 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7345 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7356 = fmul fast float %7342, %6236
  %7357 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %7343, float %7356)  ; FMad(a,b,c)
  %7358 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %7344, float %7357)  ; FMad(a,b,c)
  %7359 = fadd fast float %7358, %7345
  %7360 = fmul fast float %7347, %6236
  %7361 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %7348, float %7360)  ; FMad(a,b,c)
  %7362 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %7349, float %7361)  ; FMad(a,b,c)
  %7363 = fadd fast float %7362, %7350
  %7364 = fmul fast float %7352, %6236
  %7365 = call float @dx.op.tertiary.f32(i32 46, float %6237, float %7353, float %7364)  ; FMad(a,b,c)
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %6238, float %7354, float %7365)  ; FMad(a,b,c)
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.CBufRet.f32 %7367, 3
  %7371 = fmul fast float %7370, %7359
  %7372 = fmul fast float %7370, %7363
  %7373 = fadd fast float %7371, %7368
  %7374 = fadd fast float %7372, %7369
  %7375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7376 = extractvalue %dx.types.CBufRet.f32 %7375, 0
  %7377 = extractvalue %dx.types.CBufRet.f32 %7375, 1
  %7378 = fsub fast float %7373, %7376
  %7379 = fsub fast float %7374, %7377
  %7380 = fcmp fast olt float %7378, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.CBufRet.f32 %7382, 2
  %7386 = extractvalue %dx.types.CBufRet.f32 %7382, 3
  %7387 = select i1 %7380, float %7383, float %7385
  %7388 = select i1 %7381, float %7384, float %7386
  %7389 = fmul fast float %7387, %7378
  %7390 = fmul fast float %7388, %7379
  %7391 = call float @dx.op.unary.f32(i32 6, float %7389)  ; FAbs(value)
  %7392 = call float @dx.op.unary.f32(i32 6, float %7390)  ; FAbs(value)
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = call float @dx.op.binary.f32(i32 35, float %7391, float %7392)  ; FMax(a,b)
  %7396 = fsub fast float %7394, %7395
  %7397 = call float @dx.op.unary.f32(i32 7, float %7396)  ; Saturate(value)
  %7398 = fcmp fast ogt float %7397, 0.000000e+00
  br i1 %7398, label %7399, label %7440, !dx.controlflow.hints !130

; <label>:7399                                    ; preds = %7340
  %7400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7373, float %7374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7401 = extractvalue %dx.types.ResRet.f32 %7400, 1
  %7402 = fcmp fast ogt float %7401, 0.000000e+00
  br i1 %7402, label %7403, label %7435

; <label>:7403                                    ; preds = %7399
  %7404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7373, float %7374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7405 = extractvalue %dx.types.ResRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.ResRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.ResRet.f32 %7404, 2
  %7408 = extractvalue %dx.types.ResRet.f32 %7404, 3
  %7409 = fsub fast float 1.000000e+00, %7355
  %7410 = fsub fast float %7409, %7366
  %7411 = fmul fast float %7410, 0x400921FB60000000
  %7412 = fadd fast float %7411, 0x3FF921FB60000000
  %7413 = call float @dx.op.unary.f32(i32 13, float %7412)  ; Sin(value)
  %7414 = fadd fast float %7413, -1.000000e+00
  %7415 = fmul fast float %7414, 0x3FD45F3060000000
  %7416 = fmul fast float %7410, 0x401921FB60000000
  %7417 = fadd fast float %7416, 0x400921FB60000000
  %7418 = call float @dx.op.unary.f32(i32 13, float %7417)  ; Sin(value)
  %7419 = fadd fast float %7418, 0x3E7777A5C0000000
  %7420 = fmul fast float %7419, 0x3FC45F3060000000
  %7421 = fmul fast float %7410, 0x4022D97C80000000
  %7422 = fadd fast float %7421, 0x4012D97C80000000
  %7423 = call float @dx.op.unary.f32(i32 13, float %7422)  ; Sin(value)
  %7424 = fadd fast float %7423, 1.000000e+00
  %7425 = fmul fast float %7424, 0x3FBB2995E0000000
  %7426 = fmul fast float %7410, 0x402921FB60000000
  %7427 = fadd fast float %7426, 0x401921FB60000000
  %7428 = call float @dx.op.unary.f32(i32 13, float %7427)  ; Sin(value)
  %7429 = fadd fast float %7428, 0xBE8777A5C0000000
  %7430 = fmul fast float %7429, 0x3FB45F3060000000
  %7431 = call float @dx.op.dot4.f32(i32 56, float %7405, float %7406, float %7407, float %7408, float %7415, float %7420, float %7425, float %7430)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7432 = fmul fast float %7431, 0xBFF7154760000000
  %7433 = call float @dx.op.unary.f32(i32 21, float %7432)  ; Exp(value)
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  br label %7435

; <label>:7435                                    ; preds = %7403, %7399
  %7436 = phi float [ %7434, %7403 ], [ 1.000000e+00, %7399 ]
  %7437 = fadd fast float %7436, -1.000000e+00
  %7438 = fmul fast float %7437, %7397
  %7439 = fadd fast float %7438, 1.000000e+00
  br label %7440

; <label>:7440                                    ; preds = %7435, %7340
  %7441 = phi float [ %7439, %7435 ], [ 1.000000e+00, %7340 ]
  %7442 = fmul fast float %7441, %7336
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7447 = fadd fast float %7444, %170
  %7448 = fadd fast float %7445, %171
  %7449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7449, 1
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7455 = fsub fast float -0.000000e+00, %7447
  %7456 = fsub fast float -0.000000e+00, %7448
  %7457 = fsub fast float %5332, %7446
  %7458 = fadd fast float %7457, %7450
  %7459 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7455, float %7456, float %7458)  ; Dot3(ax,ay,az,bx,by,bz)
  %7460 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7452, float %7453, float %7454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7461 = fdiv fast float 1.000000e+00, %7460
  %7462 = fmul fast float %7461, %7459
  %7463 = fmul fast float %7452, %7462
  %7464 = fmul fast float %7453, %7462
  %7465 = fadd fast float %7463, %7447
  %7466 = fadd fast float %7464, %7448
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = fsub fast float %7465, %7468
  %7471 = fsub fast float %7466, %7469
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 2
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7475 = fmul fast float %7470, %7473
  %7476 = fmul fast float %7471, %7474
  %7477 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.i32 %7477, 3
  %7479 = icmp eq i32 %7478, 0
  br i1 %7479, label %7485, label %7480

; <label>:7480                                    ; preds = %7440
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7475, float %7476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.ResRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7481, 2
  br label %7490

; <label>:7485                                    ; preds = %7440
  %7486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7475, float %7476, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.ResRet.f32 %7486, 2
  br label %7490

; <label>:7490                                    ; preds = %7485, %7480
  %7491 = phi float [ %7482, %7480 ], [ %7487, %7485 ]
  %7492 = phi float [ %7483, %7480 ], [ %7488, %7485 ]
  %7493 = phi float [ %7484, %7480 ], [ %7489, %7485 ]
  %7494 = extractvalue %dx.types.CBufRet.f32 %7449, 2
  %7495 = fmul fast float %7494, %7491
  %7496 = extractvalue %dx.types.CBufRet.f32 %7449, 0
  %7497 = fsub fast float %7462, %7496
  %7498 = fsub fast float %7497, %7495
  %7499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7498)  ; FMax(a,b)
  %7500 = fmul fast float %7499, %7492
  %7501 = call float @dx.op.binary.f32(i32 36, float %7493, float %7500)  ; FMin(a,b)
  %7502 = fmul fast float %7501, 0xBFF7154760000000
  %7503 = call float @dx.op.unary.f32(i32 21, float %7502)  ; Exp(value)
  %7504 = fmul fast float %7442, %7503
  br label %7505

; <label>:7505                                    ; preds = %7490, %7335
  %7506 = phi float [ %7504, %7490 ], [ %7336, %7335 ]
  %7507 = call float @dx.op.binary.f32(i32 36, float %7506, float %7506)  ; FMin(a,b)
  %7508 = call float @dx.op.binary.f32(i32 36, float %7506, float %7507)  ; FMin(a,b)
  %7509 = fcmp fast ogt float %7508, 0.000000e+00
  br i1 %7509, label %7510, label %7811, !dx.controlflow.hints !131

; <label>:7510                                    ; preds = %7505
  %7511 = fmul fast float %7506, %6228
  %7512 = fmul fast float %7506, %6229
  %7513 = fmul fast float %7506, %6230
  %7514 = fsub fast float %172, %5120
  %7515 = fcmp fast ogt float %7514, 0.000000e+00
  %7516 = fmul fast float %6217, 5.120000e+02
  %7517 = fmul fast float %6218, 5.120000e+02
  %7518 = fmul fast float %6219, 5.120000e+02
  %7519 = fadd fast float %7518, %172
  %7520 = fsub fast float %5120, %7519
  %7521 = fmul fast float %7520, 2.000000e+00
  %7522 = fadd fast float %7521, %7519
  %7523 = select i1 %7515, float %7522, float %7519
  %7524 = fsub fast float %7523, %172
  %7525 = call float @dx.op.dot3.f32(i32 55, float %7516, float %7517, float %7524, float %7516, float %7517, float %7524)  ; Dot3(ax,ay,az,bx,by,bz)
  %7526 = call float @dx.op.unary.f32(i32 25, float %7525)  ; Rsqrt(value)
  %7527 = fmul fast float %7526, %7516
  %7528 = fmul fast float %7526, %7517
  %7529 = fmul fast float %7526, %7524
  %7530 = fsub fast float %5120, %172
  %7531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7530)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7527, float %7528, float %7529)  ; Dot3(ax,ay,az,bx,by,bz)
  %7533 = fdiv fast float 1.000000e+00, %7532
  %7534 = fmul fast float %7533, %7531
  %7535 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7514, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7536 = fcmp fast ogt float %7535, 0.000000e+00
  %7537 = fcmp fast olt float %7535, 0.000000e+00
  %7538 = zext i1 %7536 to i32
  %7539 = zext i1 %7537 to i32
  %7540 = sub nsw i32 %7538, %7539
  %7541 = sitofp i32 %7540 to float
  %7542 = fsub fast float %7523, %5120
  %7543 = call float @dx.op.dot3.f32(i32 55, float %7516, float %7517, float %7542, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7544 = fcmp fast ogt float %7543, 0.000000e+00
  %7545 = fcmp fast olt float %7543, 0.000000e+00
  %7546 = zext i1 %7544 to i32
  %7547 = zext i1 %7545 to i32
  %7548 = sub nsw i32 %7546, %7547
  %7549 = sitofp i32 %7548 to float
  %7550 = fcmp fast une float %7541, %7549
  br i1 %7550, label %7551, label %7561

; <label>:7551                                    ; preds = %7510
  %7552 = fmul fast float %7534, %7529
  %7553 = fmul fast float %7534, %7528
  %7554 = fmul fast float %7534, %7527
  %7555 = fmul fast float %7554, %7554
  %7556 = fmul fast float %7553, %7553
  %7557 = fadd fast float %7555, %7556
  %7558 = fmul fast float %7552, %7552
  %7559 = fadd fast float %7557, %7558
  %7560 = call float @dx.op.unary.f32(i32 24, float %7559)  ; Sqrt(value)
  br label %7571

; <label>:7561                                    ; preds = %7510
  %7562 = icmp slt i32 %7540, 0
  br i1 %7562, label %7563, label %7571

; <label>:7563                                    ; preds = %7561
  %7564 = fsub fast float %172, %7523
  %7565 = fmul fast float %7516, %7516
  %7566 = fmul fast float %7517, %7517
  %7567 = fadd fast float %7565, %7566
  %7568 = fmul fast float %7564, %7564
  %7569 = fadd fast float %7567, %7568
  %7570 = call float @dx.op.unary.f32(i32 24, float %7569)  ; Sqrt(value)
  br label %7571

; <label>:7571                                    ; preds = %7563, %7561, %7551
  %7572 = phi float [ %7560, %7551 ], [ %7570, %7563 ], [ 0.000000e+00, %7561 ]
  %7573 = fsub fast float -0.000000e+00, %7572
  %7574 = select i1 %7515, float -0.000000e+00, float %7573
  %7575 = fmul fast float %5121, 0x3FF7154760000000
  %7576 = fmul fast float %7575, %7574
  %7577 = fmul fast float %5122, 0x3FF7154760000000
  %7578 = fmul fast float %7577, %7574
  %7579 = fmul fast float %5123, 0x3FF7154760000000
  %7580 = fmul fast float %7579, %7574
  %7581 = call float @dx.op.unary.f32(i32 21, float %7576)  ; Exp(value)
  %7582 = call float @dx.op.unary.f32(i32 21, float %7578)  ; Exp(value)
  %7583 = call float @dx.op.unary.f32(i32 21, float %7580)  ; Exp(value)
  %7584 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7585 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7586 = call float @dx.op.unary.f32(i32 7, float %7583)  ; Saturate(value)
  %7587 = fmul fast float %7511, %7584
  %7588 = fmul fast float %7512, %7585
  %7589 = fmul fast float %7513, %7586
  %7590 = fsub fast float %6217, %5320
  %7591 = fsub fast float %6218, %5319
  %7592 = fsub fast float %6219, %5318
  %7593 = call float @dx.op.dot3.f32(i32 55, float %7590, float %7591, float %7592, float %7590, float %7591, float %7592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7594 = call float @dx.op.unary.f32(i32 25, float %7593)  ; Rsqrt(value)
  %7595 = fmul fast float %7594, %7590
  %7596 = fmul fast float %7594, %7591
  %7597 = fmul fast float %7594, %7592
  %7598 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %7599 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5316, float %5315, float %7595, float %7596, float %7597)  ; Dot3(ax,ay,az,bx,by,bz)
  %7600 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7601 = fmul fast float %7600, %7600
  %7602 = fmul fast float %7601, %5360
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fmul fast float %7603, %7600
  %7605 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float %7595, float %7596, float %7597)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = fmul fast float %7605, %7605
  %7607 = call float @dx.op.unary.f32(i32 6, float %7598)  ; FAbs(value)
  %7608 = fsub fast float 1.000000e+00, %5353
  %7609 = fmul fast float %5335, %5335
  %7610 = fmul fast float %7609, %7608
  %7611 = fadd fast float %7610, %5353
  %7612 = bitcast float %7611 to i32
  %7613 = ashr i32 %7612, 1
  %7614 = add nsw i32 %7613, 532487669
  %7615 = bitcast i32 %7614 to float
  %7616 = fadd fast float %7615, %5335
  %7617 = fmul fast float %5353, %7606
  %7618 = fsub fast float 1.000000e+00, %7606
  %7619 = fadd fast float %7618, %7617
  %7620 = fmul fast float %7607, %7607
  %7621 = fmul fast float %7620, %7608
  %7622 = fadd fast float %7621, %5353
  %7623 = bitcast float %7622 to i32
  %7624 = ashr i32 %7623, 1
  %7625 = add nsw i32 %7624, 532487669
  %7626 = bitcast i32 %7625 to float
  %7627 = fadd fast float %7626, %7607
  %7628 = fmul fast float %7619, %7619
  %7629 = fmul fast float %7628, %7616
  %7630 = fmul fast float %7629, %7627
  %7631 = fdiv fast float 0x3FF0A00000000000, %7630
  %7632 = fmul fast float %7631, %5353
  %7633 = call float @dx.op.unary.f32(i32 6, float %7599)  ; FAbs(value)
  %7634 = fsub fast float 1.000000e+00, %7633
  %7635 = bitcast float %7634 to i32
  %7636 = sitofp i32 %7635 to float
  %7637 = fmul fast float %7636, 5.000000e+00
  %7638 = fadd fast float %7637, 0xC1EFBF8940000000
  %7639 = fptosi float %7638 to i32
  %7640 = bitcast i32 %7639 to float
  %7641 = fsub fast float 1.000000e+00, %5324
  %7642 = fsub fast float 1.000000e+00, %5325
  %7643 = fsub fast float 1.000000e+00, %5333
  %7644 = fmul fast float %7640, %7641
  %7645 = fmul fast float %7640, %7642
  %7646 = fmul fast float %7640, %7643
  %7647 = fadd fast float %7644, %5324
  %7648 = fadd fast float %7645, %5325
  %7649 = fadd fast float %7646, %5333
  br i1 %5618, label %7650, label %7673

; <label>:7650                                    ; preds = %7571
  %7651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %7633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.ResRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.ResRet.f32 %7651, 2
  %7655 = fadd fast float %7652, -5.000000e-01
  %7656 = fadd fast float %7653, -5.000000e-01
  %7657 = fadd fast float %7654, -5.000000e-01
  %7658 = fmul fast float %5324, 4.000000e+00
  %7659 = fmul fast float %7658, %7641
  %7660 = fmul fast float %7659, %7655
  %7661 = fmul fast float %5325, 4.000000e+00
  %7662 = fmul fast float %7661, %7642
  %7663 = fmul fast float %7662, %7656
  %7664 = fmul fast float %5333, 4.000000e+00
  %7665 = fmul fast float %7664, %7643
  %7666 = fmul fast float %7665, %7657
  %7667 = fadd fast float %7660, %7647
  %7668 = fadd fast float %7663, %7648
  %7669 = fadd fast float %7666, %7649
  %7670 = call float @dx.op.unary.f32(i32 7, float %7667)  ; Saturate(value)
  %7671 = call float @dx.op.unary.f32(i32 7, float %7668)  ; Saturate(value)
  %7672 = call float @dx.op.unary.f32(i32 7, float %7669)  ; Saturate(value)
  br label %7673

; <label>:7673                                    ; preds = %7650, %7571
  %7674 = phi float [ %7670, %7650 ], [ %7647, %7571 ]
  %7675 = phi float [ %7671, %7650 ], [ %7648, %7571 ]
  %7676 = phi float [ %7672, %7650 ], [ %7649, %7571 ]
  %7677 = fmul fast float %7598, 9.843750e-01
  %7678 = fadd fast float %7677, 7.812500e-03
  %7679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7678, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7680 = extractvalue %dx.types.ResRet.f32 %7679, 2
  %7681 = extractvalue %dx.types.ResRet.f32 %7679, 3
  %7682 = fmul fast float %7680, %5324
  %7683 = fmul fast float %7680, %5325
  %7684 = fmul fast float %7680, %5333
  %7685 = fadd fast float %7682, %7681
  %7686 = fadd fast float %7683, %7681
  %7687 = fadd fast float %7684, %7681
  br i1 %5618, label %7688, label %7711

; <label>:7688                                    ; preds = %7673
  %7689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7690 = extractvalue %dx.types.ResRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.ResRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.ResRet.f32 %7689, 2
  %7693 = fadd fast float %7690, -5.000000e-01
  %7694 = fadd fast float %7691, -5.000000e-01
  %7695 = fadd fast float %7692, -5.000000e-01
  %7696 = fmul fast float %5324, 4.000000e+00
  %7697 = fmul fast float %7696, %7641
  %7698 = fmul fast float %7697, %7693
  %7699 = fmul fast float %5325, 4.000000e+00
  %7700 = fmul fast float %7699, %7642
  %7701 = fmul fast float %7700, %7694
  %7702 = fmul fast float %5333, 4.000000e+00
  %7703 = fmul fast float %7702, %7643
  %7704 = fmul fast float %7703, %7695
  %7705 = fadd fast float %7698, %7685
  %7706 = fadd fast float %7701, %7686
  %7707 = fadd fast float %7704, %7687
  %7708 = call float @dx.op.unary.f32(i32 7, float %7705)  ; Saturate(value)
  %7709 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7710 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  br label %7711

; <label>:7711                                    ; preds = %7688, %7673
  %7712 = phi float [ %7708, %7688 ], [ %7685, %7673 ]
  %7713 = phi float [ %7709, %7688 ], [ %7686, %7673 ]
  %7714 = phi float [ %7710, %7688 ], [ %7687, %7673 ]
  %7715 = call float @dx.op.binary.f32(i32 35, float %7713, float %7714)  ; FMax(a,b)
  %7716 = call float @dx.op.binary.f32(i32 35, float %7712, float %7715)  ; FMax(a,b)
  %7717 = fsub fast float 1.000000e+00, %7716
  %7718 = fsub fast float -0.000000e+00, %5327
  %7719 = fsub fast float -0.000000e+00, %5328
  %7720 = fsub fast float -0.000000e+00, %5329
  %7721 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %7718, float %7719, float %7720)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fmul fast float %7722, 9.843750e-01
  %7724 = fadd fast float %7723, 7.812500e-03
  %7725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7724, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 2
  %7727 = extractvalue %dx.types.ResRet.f32 %7725, 3
  %7728 = fmul fast float %7726, %5324
  %7729 = fmul fast float %7726, %5325
  %7730 = fmul fast float %7726, %5333
  %7731 = fadd fast float %7728, %7727
  %7732 = fadd fast float %7729, %7727
  %7733 = fadd fast float %7730, %7727
  br i1 %5618, label %7734, label %7757

; <label>:7734                                    ; preds = %7711
  %7735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %7722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7736 = extractvalue %dx.types.ResRet.f32 %7735, 0
  %7737 = extractvalue %dx.types.ResRet.f32 %7735, 1
  %7738 = extractvalue %dx.types.ResRet.f32 %7735, 2
  %7739 = fadd fast float %7736, -5.000000e-01
  %7740 = fadd fast float %7737, -5.000000e-01
  %7741 = fadd fast float %7738, -5.000000e-01
  %7742 = fmul fast float %5324, 4.000000e+00
  %7743 = fmul fast float %7742, %7641
  %7744 = fmul fast float %7743, %7739
  %7745 = fmul fast float %5325, 4.000000e+00
  %7746 = fmul fast float %7745, %7642
  %7747 = fmul fast float %7746, %7740
  %7748 = fmul fast float %5333, 4.000000e+00
  %7749 = fmul fast float %7748, %7643
  %7750 = fmul fast float %7749, %7741
  %7751 = fadd fast float %7744, %7731
  %7752 = fadd fast float %7747, %7732
  %7753 = fadd fast float %7750, %7733
  %7754 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7755 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  %7756 = call float @dx.op.unary.f32(i32 7, float %7753)  ; Saturate(value)
  br label %7757

; <label>:7757                                    ; preds = %7734, %7711
  %7758 = phi float [ %7754, %7734 ], [ %7731, %7711 ]
  %7759 = phi float [ %7755, %7734 ], [ %7732, %7711 ]
  %7760 = phi float [ %7756, %7734 ], [ %7733, %7711 ]
  %7761 = call float @dx.op.binary.f32(i32 35, float %7759, float %7760)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 35, float %7758, float %7761)  ; FMax(a,b)
  %7763 = fsub fast float 1.000000e+00, %7762
  %7764 = fmul fast float %7763, %7722
  %7765 = fmul fast float %7764, %4743
  %7766 = fmul fast float %7764, %4744
  %7767 = fmul fast float %7764, %4745
  %7768 = fmul fast float %7674, %7632
  %7769 = fmul fast float %7675, %7632
  %7770 = fmul fast float %7676, %7632
  %7771 = fsub fast float 1.000000e+00, %7599
  %7772 = bitcast float %7771 to i32
  %7773 = sitofp i32 %7772 to float
  %7774 = fmul fast float %7773, 5.000000e+00
  %7775 = fadd fast float %7774, 0xC1EFBF8940000000
  %7776 = fptosi float %7775 to i32
  %7777 = bitcast i32 %7776 to float
  %7778 = fmul fast float %7777, %4653
  %7779 = fmul fast float %7717, %7778
  %7780 = fmul fast float %7779, %6157
  %7781 = fmul fast float %7779, %6158
  %7782 = fmul fast float %7779, %6159
  %7783 = fmul fast float %7717, %7604
  %7784 = fadd fast float %7780, %7768
  %7785 = fadd fast float %7781, %7769
  %7786 = fadd fast float %7782, %7770
  %7787 = fadd fast float %7765, %7783
  %7788 = fadd fast float %7766, %7783
  %7789 = fadd fast float %7767, %7783
  %7790 = fmul fast float %7787, %7587
  %7791 = fmul fast float %7788, %7588
  %7792 = fmul fast float %7789, %7589
  %7793 = fmul fast float %7604, %7587
  %7794 = fmul fast float %7793, %7784
  %7795 = fmul fast float %7604, %7588
  %7796 = fmul fast float %7795, %7785
  %7797 = fmul fast float %7604, %7589
  %7798 = fmul fast float %7797, %7786
  %7799 = fadd fast float %7790, %6207
  %7800 = fmul fast float %7799, %4649
  %7801 = fadd fast float %7791, %6209
  %7802 = fmul fast float %7801, %4649
  %7803 = fadd fast float %7792, %6211
  %7804 = fmul fast float %7803, %4649
  %7805 = fadd fast float %7794, %6190
  %7806 = fmul fast float %7805, %4649
  %7807 = fadd fast float %7796, %6193
  %7808 = fmul fast float %7807, %4649
  %7809 = fadd fast float %7798, %6196
  %7810 = fmul fast float %7809, %4649
  br label %7811

; <label>:7811                                    ; preds = %7757, %7505, %6140
  %7812 = phi float [ %6191, %6140 ], [ %6191, %7505 ], [ %7806, %7757 ]
  %7813 = phi float [ %6194, %6140 ], [ %6194, %7505 ], [ %7808, %7757 ]
  %7814 = phi float [ %6197, %6140 ], [ %6197, %7505 ], [ %7810, %7757 ]
  %7815 = phi float [ %6208, %6140 ], [ %6208, %7505 ], [ %7800, %7757 ]
  %7816 = phi float [ %6210, %6140 ], [ %6210, %7505 ], [ %7802, %7757 ]
  %7817 = phi float [ %6212, %6140 ], [ %6212, %7505 ], [ %7804, %7757 ]
  %7818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.i32 %7818, 0
  %7820 = icmp eq i32 %7819, 0
  br i1 %7820, label %8538, label %7821

; <label>:7821                                    ; preds = %7811
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 2
  %7824 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7825 = fmul fast float %7823, %111
  %7826 = fmul fast float %7824, %112
  %7827 = fptoui float %7825 to i32
  %7828 = fptoui float %7826 to i32
  %7829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7830 = extractvalue %dx.types.CBufRet.f32 %7829, 0
  %7831 = extractvalue %dx.types.CBufRet.f32 %7829, 2
  %7832 = extractvalue %dx.types.CBufRet.f32 %7829, 3
  %7833 = fadd fast float %99, -4.000000e+00
  %7834 = call float @dx.op.binary.f32(i32 35, float %7833, float 0.000000e+00)  ; FMax(a,b)
  %7835 = fadd fast float %7834, %7830
  %7836 = fmul fast float %7835, %7831
  %7837 = call float @dx.op.unary.f32(i32 23, float %7836)  ; Log(value)
  %7838 = fmul fast float %7837, %7832
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7841 = fmul fast float %7838, %7840
  %7842 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.i32 %7843, 1
  %7845 = add i32 %7844, -1
  %7846 = uitofp i32 %7844 to float
  %7847 = fmul fast float %7846, %7842
  %7848 = fptoui float %7847 to i32
  %7849 = call i32 @dx.op.binary.i32(i32 40, i32 %7848, i32 %7845)  ; UMin(a,b)
  %7850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.i32 %7850, 2
  %7852 = extractvalue %dx.types.CBufRet.i32 %7850, 3
  %7853 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7828, i32 %7851, i32 %7827)  ; UMad(a,b,c)
  %7854 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7849, i32 %7852, i32 %7853)  ; UMad(a,b,c)
  %7855 = add nsw i32 %7819, -1
  %7856 = call i32 @dx.op.binary.i32(i32 37, i32 %7855, i32 0)  ; IMax(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7858 = fptoui float %7857 to i32
  %7859 = lshr i32 %7858, 5
  %7860 = call i32 @dx.op.binary.i32(i32 40, i32 %7859, i32 8191)  ; UMin(a,b)
  %7861 = shl i32 %7860, 2
  %7862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7861, i32 undef)  ; BufferLoad(srv,index,wot)
  %7863 = extractvalue %dx.types.ResRet.i32 %7862, 0
  %7864 = lshr i32 %7863, 16
  %7865 = and i32 %7863, 65535
  %7866 = lshr i32 %7863, 21
  %7867 = lshr i32 %7865, 5
  %7868 = call i32 @dx.op.binary.i32(i32 40, i32 %7867, i32 %7856)  ; UMin(a,b)
  %7869 = icmp ugt i32 %7866, %7868
  br i1 %7869, label %8538, label %7870

; <label>:7870                                    ; preds = %7821
  br label %7871

; <label>:7871                                    ; preds = %8528, %7870
  %7872 = phi i32 [ %8535, %8528 ], [ %7866, %7870 ]
  %7873 = phi float [ %8529, %8528 ], [ %7812, %7870 ]
  %7874 = phi float [ %8530, %8528 ], [ %7813, %7870 ]
  %7875 = phi float [ %8531, %8528 ], [ %7814, %7870 ]
  %7876 = phi float [ %8532, %8528 ], [ %7815, %7870 ]
  %7877 = phi float [ %8533, %8528 ], [ %7816, %7870 ]
  %7878 = phi float [ %8534, %8528 ], [ %7817, %7870 ]
  %7879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.i32 %7879, 0
  %7881 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7854, i32 %7880, i32 %7872)  ; UMad(a,b,c)
  %7882 = shl i32 %7881, 2
  %7883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7882, i32 undef)  ; BufferLoad(srv,index,wot)
  %7884 = extractvalue %dx.types.ResRet.i32 %7883, 0
  %7885 = shl i32 %7872, 5
  %7886 = sub nsw i32 %7864, %7885
  %7887 = call i32 @dx.op.binary.i32(i32 37, i32 %7886, i32 0)  ; IMax(a,b)
  %7888 = call i32 @dx.op.binary.i32(i32 38, i32 %7887, i32 31)  ; IMin(a,b)
  %7889 = sub nsw i32 1, %7864
  %7890 = add nsw i32 %7889, %7865
  %7891 = call i32 @dx.op.binary.i32(i32 37, i32 %7890, i32 0)  ; IMax(a,b)
  %7892 = call i32 @dx.op.binary.i32(i32 38, i32 %7891, i32 32)  ; IMin(a,b)
  %7893 = and i32 %7892, 31
  %7894 = shl i32 -1, %7893
  %7895 = xor i32 %7894, -1
  %7896 = and i32 %7888, 31
  %7897 = shl i32 %7895, %7896
  %7898 = icmp eq i32 %7892, 32
  %7899 = select i1 %7898, i32 -1, i32 %7897
  %7900 = and i32 %7899, %7884
  %7901 = icmp eq i32 %7900, 0
  br i1 %7901, label %8528, label %7902

; <label>:7902                                    ; preds = %7871
  br label %7903

; <label>:7903                                    ; preds = %8037, %7902
  %7904 = phi i32 [ %7915, %8037 ], [ %7900, %7902 ]
  %7905 = phi float [ %8038, %8037 ], [ %7873, %7902 ]
  %7906 = phi float [ %8039, %8037 ], [ %7874, %7902 ]
  %7907 = phi float [ %8040, %8037 ], [ %7875, %7902 ]
  %7908 = phi float [ %8041, %8037 ], [ %7876, %7902 ]
  %7909 = phi float [ %8042, %8037 ], [ %7877, %7902 ]
  %7910 = phi float [ %8043, %8037 ], [ %7878, %7902 ]
  %7911 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7904)  ; FirstbitLo(value)
  %7912 = add i32 %7911, %7885
  %7913 = and i32 %7911, 31
  %7914 = shl i32 1, %7913
  %7915 = xor i32 %7914, %7904
  %7916 = mul i32 %7912, 112
  %7917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7916, i32 undef)  ; BufferLoad(srv,index,wot)
  %7918 = extractvalue %dx.types.ResRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.ResRet.f32 %7917, 1
  %7920 = extractvalue %dx.types.ResRet.f32 %7917, 2
  %7921 = or i32 %7916, 12
  %7922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7921, i32 undef)  ; BufferLoad(srv,index,wot)
  %7923 = extractvalue %dx.types.ResRet.f32 %7922, 0
  %7924 = add i32 %7916, 16
  %7925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7924, i32 undef)  ; BufferLoad(srv,index,wot)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  %7929 = add i32 %7916, 28
  %7930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7929, i32 undef)  ; BufferLoad(srv,index,wot)
  %7931 = extractvalue %dx.types.ResRet.i32 %7930, 0
  %7932 = add i32 %7916, 44
  %7933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7932, i32 undef)  ; BufferLoad(srv,index,wot)
  %7934 = extractvalue %dx.types.ResRet.f32 %7933, 0
  %7935 = add i32 %7916, 48
  %7936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7935, i32 undef)  ; BufferLoad(srv,index,wot)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.ResRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.ResRet.f32 %7936, 2
  %7940 = extractvalue %dx.types.ResRet.f32 %7936, 3
  %7941 = add i32 %7916, 64
  %7942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7941, i32 undef)  ; BufferLoad(srv,index,wot)
  %7943 = extractvalue %dx.types.ResRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.ResRet.f32 %7942, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7942, 2
  %7946 = extractvalue %dx.types.ResRet.f32 %7942, 3
  %7947 = add i32 %7916, 80
  %7948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7947, i32 undef)  ; BufferLoad(srv,index,wot)
  %7949 = extractvalue %dx.types.ResRet.f32 %7948, 1
  %7950 = extractvalue %dx.types.ResRet.f32 %7948, 2
  %7951 = add i32 %7916, 92
  %7952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7951, i32 undef)  ; BufferLoad(srv,index,wot)
  %7953 = extractvalue %dx.types.ResRet.i32 %7952, 0
  %7954 = call float @dx.op.dot3.f32(i32 55, float %7918, float %7919, float %7920, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7955 = select i1 %232, float %7949, float %7918
  %7956 = select i1 %232, float %7954, float %7919
  %7957 = select i1 %232, float %7950, float %7920
  %7958 = and i32 %7953, 65535
  %7959 = uitofp i32 %7958 to float
  %7960 = lshr i32 %7953, 16
  %7961 = uitofp i32 %7960 to float
  %7962 = and i32 %7931, 65535
  %7963 = and i32 %7931, 50331648
  %7964 = icmp eq i32 %7963, 33554432
  %7965 = fsub fast float %7937, %170
  %7966 = fsub fast float %7938, %171
  %7967 = fsub fast float %7939, %172
  %7968 = call float @dx.op.dot3.f32(i32 55, float %7965, float %7966, float %7967, float %7965, float %7966, float %7967)  ; Dot3(ax,ay,az,bx,by,bz)
  %7969 = call float @dx.op.unary.f32(i32 24, float %7968)  ; Sqrt(value)
  %7970 = fdiv fast float 1.000000e+00, %7969
  %7971 = fmul fast float %7970, %7965
  %7972 = fmul fast float %7970, %7966
  %7973 = fmul fast float %7970, %7967
  %7974 = fadd fast float %7969, %7923
  %7975 = fdiv fast float 1.000000e+00, %7974
  %7976 = fmul float %7934, %7975
  %7977 = fmul float %7976, %7976
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  br i1 %7964, label %7979, label %8000

; <label>:7979                                    ; preds = %7903
  %7980 = fmul fast float %7945, %7926
  %7981 = fmul fast float %7945, %7927
  %7982 = fmul fast float %7945, %7928
  %7983 = fadd fast float %7965, %7980
  %7984 = fadd fast float %7966, %7981
  %7985 = fadd fast float %7967, %7982
  %7986 = call float @dx.op.dot3.f32(i32 55, float %7983, float %7984, float %7985, float %7983, float %7984, float %7985)  ; Dot3(ax,ay,az,bx,by,bz)
  %7987 = call float @dx.op.unary.f32(i32 25, float %7986)  ; Rsqrt(value)
  %7988 = fmul fast float %7987, %7983
  %7989 = fmul fast float %7987, %7984
  %7990 = fmul fast float %7987, %7985
  %7991 = fsub fast float %170, %7937
  %7992 = fsub fast float %171, %7938
  %7993 = fsub fast float %172, %7939
  %7994 = fsub fast float -0.000000e+00, %7991
  %7995 = fsub fast float -0.000000e+00, %7992
  %7996 = fsub fast float -0.000000e+00, %7993
  %7997 = call float @dx.op.dot3.f32(i32 55, float %7994, float %7995, float %7996, float %7926, float %7927, float %7928)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = fcmp fast ogt float %7997, 0.000000e+00
  %7999 = uitofp i1 %7998 to float
  br label %8000

; <label>:8000                                    ; preds = %7979, %7903
  %8001 = phi float [ %7999, %7979 ], [ 1.000000e+00, %7903 ]
  %8002 = phi float [ %7988, %7979 ], [ %7971, %7903 ]
  %8003 = phi float [ %7989, %7979 ], [ %7972, %7903 ]
  %8004 = phi float [ %7990, %7979 ], [ %7973, %7903 ]
  %8005 = call float @dx.op.dot3.f32(i32 55, float %7926, float %7927, float %7928, float %8002, float %8003, float %8004)  ; Dot3(ax,ay,az,bx,by,bz)
  %8006 = fmul fast float %8005, %8005
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = fsub fast float 1.000000e+00, %8007
  %8009 = fmul fast float %8008, 5.000000e-01
  %8010 = fcmp fast ogt float %8005, 0.000000e+00
  %8011 = fsub fast float 1.000000e+00, %8009
  %8012 = select i1 %8010, float %8009, float %8011
  %8013 = fmul fast float %8012, %7961
  %8014 = fadd fast float %8013, %7959
  %8015 = fmul fast float %8014, 0x3EF0001000000000
  %8016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8015, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8017 = extractvalue %dx.types.ResRet.f32 %8016, 0
  %8018 = fmul fast float %8005, %7943
  %8019 = fadd fast float %8018, %7944
  %8020 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8021 = select i1 %7964, float 1.000000e+00, float %8020
  %8022 = select i1 %7964, float %8020, float 1.000000e+00
  %8023 = fmul fast float %7969, %7940
  %8024 = fsub fast float 1.000000e+00, %8023
  %8025 = fmul fast float %8024, %7946
  %8026 = call float @dx.op.unary.f32(i32 7, float %8025)  ; Saturate(value)
  %8027 = fmul fast float %8026, %8022
  %8028 = fmul fast float %8027, 2.000000e+00
  %8029 = fsub fast float 3.000000e+00, %8028
  %8030 = fmul fast float %8017, %8001
  %8031 = fmul fast float %8027, %8027
  %8032 = fmul fast float %8031, %8030
  %8033 = fmul fast float %8032, %8029
  %8034 = call float @dx.op.binary.f32(i32 36, float %8033, float %8033)  ; FMin(a,b)
  %8035 = call float @dx.op.binary.f32(i32 36, float %8033, float %8034)  ; FMin(a,b)
  %8036 = fcmp fast ogt float %8035, 0.000000e+00
  br i1 %8036, label %8045, label %8037, !dx.controlflow.hints !132

; <label>:8037                                    ; preds = %8476, %8191, %8000
  %8038 = phi float [ %7905, %8191 ], [ %7905, %8000 ], [ %8524, %8476 ]
  %8039 = phi float [ %7906, %8191 ], [ %7906, %8000 ], [ %8525, %8476 ]
  %8040 = phi float [ %7907, %8191 ], [ %7907, %8000 ], [ %8526, %8476 ]
  %8041 = phi float [ %7908, %8191 ], [ %7908, %8000 ], [ %8515, %8476 ]
  %8042 = phi float [ %7909, %8191 ], [ %7909, %8000 ], [ %8516, %8476 ]
  %8043 = phi float [ %7910, %8191 ], [ %7910, %8000 ], [ %8517, %8476 ]
  %8044 = icmp eq i32 %7904, %7914
  br i1 %8044, label %8527, label %7903

; <label>:8045                                    ; preds = %8000
  %8046 = icmp eq i32 %7962, 255
  br i1 %8046, label %8191, label %8047, !dx.controlflow.hints !133

; <label>:8047                                    ; preds = %8045
  %8048 = mul nuw nsw i32 %7962, 176
  %8049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8048, i32 undef)  ; BufferLoad(srv,index,wot)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = extractvalue %dx.types.ResRet.f32 %8049, 1
  %8052 = extractvalue %dx.types.ResRet.f32 %8049, 2
  %8053 = extractvalue %dx.types.ResRet.f32 %8049, 3
  %8054 = add nuw nsw i32 %8048, 16
  %8055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8054, i32 undef)  ; BufferLoad(srv,index,wot)
  %8056 = extractvalue %dx.types.ResRet.f32 %8055, 0
  %8057 = extractvalue %dx.types.ResRet.f32 %8055, 1
  %8058 = add nuw nsw i32 %8048, 32
  %8059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8058, i32 undef)  ; BufferLoad(srv,index,wot)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.ResRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.ResRet.f32 %8059, 2
  %8063 = add nuw nsw i32 %8048, 48
  %8064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8063, i32 undef)  ; BufferLoad(srv,index,wot)
  %8065 = extractvalue %dx.types.ResRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.ResRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.ResRet.f32 %8064, 2
  %8068 = extractvalue %dx.types.ResRet.f32 %8064, 3
  %8069 = add nuw nsw i32 %8048, 64
  %8070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8069, i32 undef)  ; BufferLoad(srv,index,wot)
  %8071 = extractvalue %dx.types.ResRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.ResRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.ResRet.f32 %8070, 2
  %8074 = extractvalue %dx.types.ResRet.f32 %8070, 3
  %8075 = add nuw nsw i32 %8048, 80
  %8076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8075, i32 undef)  ; BufferLoad(srv,index,wot)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = extractvalue %dx.types.ResRet.f32 %8076, 3
  %8081 = add nuw nsw i32 %8048, 96
  %8082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8081, i32 undef)  ; BufferLoad(srv,index,wot)
  %8083 = extractvalue %dx.types.ResRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.ResRet.f32 %8082, 1
  %8085 = extractvalue %dx.types.ResRet.f32 %8082, 2
  %8086 = extractvalue %dx.types.ResRet.f32 %8082, 3
  %8087 = bitcast float %8057 to i32
  %8088 = fmul fast float %8062, %120
  %8089 = fmul fast float %8062, %122
  %8090 = fmul fast float %8062, %124
  %8091 = fadd fast float %8088, %170
  %8092 = fadd fast float %8089, %171
  %8093 = fadd fast float %8090, %172
  %8094 = fmul fast float %8091, %8065
  %8095 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8071, float %8094)  ; FMad(a,b,c)
  %8096 = call float @dx.op.tertiary.f32(i32 46, float %8093, float %8077, float %8095)  ; FMad(a,b,c)
  %8097 = fadd fast float %8096, %8083
  %8098 = fmul fast float %8091, %8066
  %8099 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8072, float %8098)  ; FMad(a,b,c)
  %8100 = call float @dx.op.tertiary.f32(i32 46, float %8093, float %8078, float %8099)  ; FMad(a,b,c)
  %8101 = fadd fast float %8100, %8084
  %8102 = fmul fast float %8091, %8067
  %8103 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8073, float %8102)  ; FMad(a,b,c)
  %8104 = call float @dx.op.tertiary.f32(i32 46, float %8093, float %8079, float %8103)  ; FMad(a,b,c)
  %8105 = fadd fast float %8104, %8085
  %8106 = fmul fast float %8091, %8068
  %8107 = call float @dx.op.tertiary.f32(i32 46, float %8092, float %8074, float %8106)  ; FMad(a,b,c)
  %8108 = call float @dx.op.tertiary.f32(i32 46, float %8093, float %8080, float %8107)  ; FMad(a,b,c)
  %8109 = fadd fast float %8108, %8086
  %8110 = fdiv fast float %8097, %8109
  %8111 = fdiv fast float %8101, %8109
  %8112 = fdiv fast float %8105, %8109
  %8113 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8112)  ; FMax(a,b)
  %8114 = fmul fast float %243, 0x401921FB60000000
  %8115 = call float @dx.op.unary.f32(i32 13, float %8114)  ; Sin(value)
  %8116 = call float @dx.op.unary.f32(i32 12, float %8114)  ; Cos(value)
  %8117 = fmul fast float %8116, %8061
  %8118 = call float @dx.op.tertiary.f32(i32 46, float %8115, float %8061, float 0.000000e+00)  ; FMad(a,b,c)
  %8119 = fmul fast float %8061, %8115
  %8120 = fsub fast float -0.000000e+00, %8119
  %8121 = call float @dx.op.tertiary.f32(i32 46, float %8116, float %8061, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8122

; <label>:8122                                    ; preds = %8122, %8047
  %8123 = phi float [ 0.000000e+00, %8047 ], [ %8155, %8122 ]
  %8124 = phi float [ 0.000000e+00, %8047 ], [ %8157, %8122 ]
  %8125 = phi i32 [ 0, %8047 ], [ %8158, %8122 ]
  %8126 = mul i32 %8125, 2
  %8127 = add i32 0, %8126
  %8128 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8127
  %8129 = load float, float* %8128, align 4
  %8130 = mul i32 %8125, 2
  %8131 = add i32 1, %8130
  %8132 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8131
  %8133 = load float, float* %8132, align 4
  %8134 = fmul fast float %8117, %8129
  %8135 = call float @dx.op.tertiary.f32(i32 46, float %8133, float %8120, float %8134)  ; FMad(a,b,c)
  %8136 = fmul fast float %8129, %8118
  %8137 = call float @dx.op.tertiary.f32(i32 46, float %8133, float %8121, float %8136)  ; FMad(a,b,c)
  %8138 = fadd fast float %8135, %8110
  %8139 = fadd fast float %8137, %8111
  %8140 = fmul fast float %8138, %8056
  %8141 = fmul fast float %8139, %8056
  %8142 = call float @dx.op.binary.f32(i32 35, float %8140, float %8052)  ; FMax(a,b)
  %8143 = call float @dx.op.binary.f32(i32 35, float %8141, float %8052)  ; FMax(a,b)
  %8144 = call float @dx.op.binary.f32(i32 36, float %8142, float %8053)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8143, float %8053)  ; FMin(a,b)
  %8146 = fadd fast float %8144, %8050
  %8147 = fadd fast float %8145, %8051
  %8148 = uitofp i32 %8087 to float
  %8149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8146, float %8147, float %8148, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8150 = extractvalue %dx.types.ResRet.f32 %8149, 0
  %8151 = fsub fast float %8150, %8113
  %8152 = fsub fast float %8151, %8060
  %8153 = fcmp fast ogt float %8152, 0.000000e+00
  %8154 = select i1 %8153, float 1.000000e+00, float 0.000000e+00
  %8155 = fadd fast float %8154, %8123
  %8156 = select i1 %8153, float %8152, float 0.000000e+00
  %8157 = fadd fast float %8156, %8124
  %8158 = add nuw nsw i32 %8125, 1
  %8159 = icmp eq i32 %8158, 8
  br i1 %8159, label %8160, label %8122

; <label>:8160                                    ; preds = %8122
  %8161 = fdiv fast float 1.000000e+00, %8155
  %8162 = fmul fast float %8161, %8157
  %8163 = fdiv fast float 1.000000e+00, %8113
  %8164 = fmul fast float %8162, %8163
  %8165 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8166 = call float @dx.op.binary.f32(i32 35, float %8165, float 0.000000e+00)  ; FMax(a,b)
  %8167 = fmul fast float %8155, 1.250000e-01
  %8168 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8169 = fmul fast float %8168, 2.000000e+00
  %8170 = fadd fast float %8169, -1.000000e+00
  %8171 = fcmp fast ogt float %8170, 0.000000e+00
  %8172 = fcmp fast olt float %8170, 0.000000e+00
  %8173 = zext i1 %8171 to i32
  %8174 = zext i1 %8172 to i32
  %8175 = sub nsw i32 %8173, %8174
  %8176 = sitofp i32 %8175 to float
  %8177 = fmul fast float %8176, %8170
  %8178 = fsub fast float 1.000000e+00, %8177
  %8179 = fmul fast float %8178, %8178
  %8180 = fmul fast float %8179, %8178
  %8181 = fsub fast float %8178, %8180
  %8182 = fmul fast float %8181, %8166
  %8183 = fsub fast float 1.000000e+00, %8180
  %8184 = fsub fast float %8183, %8182
  %8185 = fmul fast float %8176, 5.000000e-01
  %8186 = fmul fast float %8185, %8184
  %8187 = fsub fast float -5.000000e-01, %8186
  %8188 = fmul fast float %8187, %8021
  %8189 = fadd fast float %8188, 1.000000e+00
  %8190 = fmul fast float %8189, %8033
  br label %8191

; <label>:8191                                    ; preds = %8160, %8045
  %8192 = phi float [ %8190, %8160 ], [ %8033, %8045 ]
  %8193 = call float @dx.op.binary.f32(i32 36, float %8192, float %8192)  ; FMin(a,b)
  %8194 = call float @dx.op.binary.f32(i32 36, float %8192, float %8193)  ; FMin(a,b)
  %8195 = fcmp fast ogt float %8194, 0.000000e+00
  br i1 %8195, label %8196, label %8037, !dx.controlflow.hints !134

; <label>:8196                                    ; preds = %8191
  %8197 = fmul fast float %8192, %7955
  %8198 = fmul fast float %8192, %7956
  %8199 = fmul fast float %8192, %7957
  %8200 = fsub fast float %7939, %5120
  %8201 = fcmp fast ogt float %8200, 0.000000e+00
  %8202 = fsub fast float %172, %5120
  %8203 = fcmp fast ogt float %8202, 0.000000e+00
  %8204 = xor i1 %8203, %8201
  %8205 = fsub fast float %5120, %7939
  %8206 = fmul fast float %8205, 2.000000e+00
  %8207 = fadd fast float %8206, %7939
  %8208 = select i1 %8204, float %7939, float %8207
  %8209 = fsub fast float %8208, %172
  %8210 = call float @dx.op.dot3.f32(i32 55, float %7965, float %7966, float %8209, float %7965, float %7966, float %8209)  ; Dot3(ax,ay,az,bx,by,bz)
  %8211 = call float @dx.op.unary.f32(i32 25, float %8210)  ; Rsqrt(value)
  %8212 = fmul fast float %8211, %7965
  %8213 = fmul fast float %8211, %7966
  %8214 = fmul fast float %8211, %8209
  %8215 = fsub fast float %5120, %172
  %8216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8215)  ; Dot3(ax,ay,az,bx,by,bz)
  %8217 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8212, float %8213, float %8214)  ; Dot3(ax,ay,az,bx,by,bz)
  %8218 = fdiv fast float 1.000000e+00, %8217
  %8219 = fmul fast float %8218, %8216
  %8220 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8202, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = fcmp fast ogt float %8220, 0.000000e+00
  %8222 = fcmp fast olt float %8220, 0.000000e+00
  %8223 = zext i1 %8221 to i32
  %8224 = zext i1 %8222 to i32
  %8225 = sub nsw i32 %8223, %8224
  %8226 = sitofp i32 %8225 to float
  %8227 = fsub fast float %8208, %5120
  %8228 = call float @dx.op.dot3.f32(i32 55, float %7965, float %7966, float %8227, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8229 = fcmp fast ogt float %8228, 0.000000e+00
  %8230 = fcmp fast olt float %8228, 0.000000e+00
  %8231 = zext i1 %8229 to i32
  %8232 = zext i1 %8230 to i32
  %8233 = sub nsw i32 %8231, %8232
  %8234 = sitofp i32 %8233 to float
  %8235 = fcmp fast une float %8226, %8234
  br i1 %8235, label %8236, label %8246

; <label>:8236                                    ; preds = %8196
  %8237 = fmul fast float %8219, %8214
  %8238 = fmul fast float %8219, %8213
  %8239 = fmul fast float %8219, %8212
  %8240 = fmul fast float %8239, %8239
  %8241 = fmul fast float %8238, %8238
  %8242 = fadd fast float %8240, %8241
  %8243 = fmul fast float %8237, %8237
  %8244 = fadd fast float %8242, %8243
  %8245 = call float @dx.op.unary.f32(i32 24, float %8244)  ; Sqrt(value)
  br label %8258

; <label>:8246                                    ; preds = %8196
  %8247 = icmp slt i32 %8225, 0
  br i1 %8247, label %8248, label %8258

; <label>:8248                                    ; preds = %8246
  %8249 = fsub fast float %170, %7937
  %8250 = fsub fast float %171, %7938
  %8251 = fsub fast float %172, %8208
  %8252 = fmul fast float %8249, %8249
  %8253 = fmul fast float %8250, %8250
  %8254 = fadd fast float %8252, %8253
  %8255 = fmul fast float %8251, %8251
  %8256 = fadd fast float %8254, %8255
  %8257 = call float @dx.op.unary.f32(i32 24, float %8256)  ; Sqrt(value)
  br label %8258

; <label>:8258                                    ; preds = %8248, %8246, %8236
  %8259 = phi float [ %8245, %8236 ], [ %8257, %8248 ], [ 0.000000e+00, %8246 ]
  %8260 = and i1 %8203, %8201
  %8261 = fsub fast float -0.000000e+00, %8259
  %8262 = select i1 %8260, float -0.000000e+00, float %8261
  %8263 = fmul fast float %5121, 0x3FF7154760000000
  %8264 = fmul fast float %8263, %8262
  %8265 = fmul fast float %5122, 0x3FF7154760000000
  %8266 = fmul fast float %8265, %8262
  %8267 = fmul fast float %5123, 0x3FF7154760000000
  %8268 = fmul fast float %8267, %8262
  %8269 = call float @dx.op.unary.f32(i32 21, float %8264)  ; Exp(value)
  %8270 = call float @dx.op.unary.f32(i32 21, float %8266)  ; Exp(value)
  %8271 = call float @dx.op.unary.f32(i32 21, float %8268)  ; Exp(value)
  %8272 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8273 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8274 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8275 = fmul fast float %8197, %8272
  %8276 = fmul fast float %8198, %8273
  %8277 = fmul fast float %8199, %8274
  %8278 = fsub fast float %7971, %5320
  %8279 = fsub fast float %7972, %5319
  %8280 = fsub fast float %7973, %5318
  %8281 = call float @dx.op.dot3.f32(i32 55, float %8278, float %8279, float %8280, float %8278, float %8279, float %8280)  ; Dot3(ax,ay,az,bx,by,bz)
  %8282 = call float @dx.op.unary.f32(i32 25, float %8281)  ; Rsqrt(value)
  %8283 = fmul fast float %8282, %8278
  %8284 = fmul fast float %8282, %8279
  %8285 = fmul fast float %8282, %8280
  %8286 = call float @dx.op.dot3.f32(i32 55, float %7971, float %7972, float %7973, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %8287 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5316, float %5315, float %8283, float %8284, float %8285)  ; Dot3(ax,ay,az,bx,by,bz)
  %8288 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8289 = fmul fast float %8288, %7978
  %8290 = fmul fast float %8288, %8288
  %8291 = fmul fast float %8290, %5360
  %8292 = call float @dx.op.unary.f32(i32 7, float %8291)  ; Saturate(value)
  %8293 = fmul fast float %8289, %8292
  %8294 = bitcast float %7968 to i32
  %8295 = ashr i32 %8294, 1
  %8296 = sub nsw i32 1597463007, %8295
  %8297 = bitcast i32 %8296 to float
  %8298 = fmul fast float %8297, %7965
  %8299 = fmul fast float %8297, %7966
  %8300 = fmul fast float %8297, %7967
  %8301 = fsub fast float %8298, %5320
  %8302 = fsub fast float %8299, %5319
  %8303 = fsub fast float %8300, %5318
  %8304 = call float @dx.op.dot3.f32(i32 55, float %8301, float %8302, float %8303, float %8301, float %8302, float %8303)  ; Dot3(ax,ay,az,bx,by,bz)
  %8305 = call float @dx.op.unary.f32(i32 25, float %8304)  ; Rsqrt(value)
  %8306 = fmul fast float %8301, %8305
  %8307 = fmul fast float %8302, %8305
  %8308 = fmul fast float %8303, %8305
  %8309 = call float @dx.op.dot3.f32(i32 55, float %5327, float %5328, float %5329, float %8306, float %8307, float %8308)  ; Dot3(ax,ay,az,bx,by,bz)
  %8310 = fmul fast float %8309, %8309
  %8311 = call float @dx.op.unary.f32(i32 6, float %8286)  ; FAbs(value)
  %8312 = fsub fast float 1.000000e+00, %5353
  %8313 = fmul fast float %5335, %5335
  %8314 = fmul fast float %8313, %8312
  %8315 = fadd fast float %8314, %5353
  %8316 = bitcast float %8315 to i32
  %8317 = ashr i32 %8316, 1
  %8318 = add nsw i32 %8317, 532487669
  %8319 = bitcast i32 %8318 to float
  %8320 = fadd fast float %8319, %5335
  %8321 = fmul fast float %5353, %8310
  %8322 = fsub fast float 1.000000e+00, %8310
  %8323 = fadd fast float %8322, %8321
  %8324 = fmul fast float %8311, %8311
  %8325 = fmul fast float %8324, %8312
  %8326 = fadd fast float %8325, %5353
  %8327 = bitcast float %8326 to i32
  %8328 = ashr i32 %8327, 1
  %8329 = add nsw i32 %8328, 532487669
  %8330 = bitcast i32 %8329 to float
  %8331 = fadd fast float %8330, %8311
  %8332 = fmul fast float %8323, %8323
  %8333 = fmul fast float %8332, %8320
  %8334 = fmul fast float %8333, %8331
  %8335 = fdiv fast float 1.000000e+00, %8334
  %8336 = bitcast float %5353 to i32
  %8337 = sitofp i32 %8336 to float
  %8338 = fmul fast float %8337, 0x3FE7F73180000000
  %8339 = fadd fast float %8338, 0x41AFE27C40000000
  %8340 = fptosi float %8339 to i32
  %8341 = bitcast i32 %8340 to float
  %8342 = fmul fast float %7934, 0x3FD80E9D60000000
  %8343 = fmul fast float %8342, %8297
  %8344 = fadd fast float %8341, %8343
  %8345 = bitcast float %8344 to i32
  %8346 = sub nsw i32 2129859010, %8345
  %8347 = bitcast i32 %8346 to float
  %8348 = fmul fast float %5353, %8335
  %8349 = fmul fast float %8348, %8341
  %8350 = fmul fast float %8349, %8347
  %8351 = call float @dx.op.unary.f32(i32 6, float %8287)  ; FAbs(value)
  %8352 = fsub fast float 1.000000e+00, %8351
  %8353 = bitcast float %8352 to i32
  %8354 = sitofp i32 %8353 to float
  %8355 = fmul fast float %8354, 5.000000e+00
  %8356 = fadd fast float %8355, 0xC1EFBF8940000000
  %8357 = fptosi float %8356 to i32
  %8358 = bitcast i32 %8357 to float
  %8359 = fsub fast float 1.000000e+00, %5324
  %8360 = fsub fast float 1.000000e+00, %5325
  %8361 = fsub fast float 1.000000e+00, %5333
  %8362 = fmul fast float %8358, %8359
  %8363 = fmul fast float %8358, %8360
  %8364 = fmul fast float %8358, %8361
  %8365 = fadd fast float %8362, %5324
  %8366 = fadd fast float %8363, %5325
  %8367 = fadd fast float %8364, %5333
  br i1 %5618, label %8368, label %8391

; <label>:8368                                    ; preds = %8258
  %8369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %8351, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8370 = extractvalue %dx.types.ResRet.f32 %8369, 0
  %8371 = extractvalue %dx.types.ResRet.f32 %8369, 1
  %8372 = extractvalue %dx.types.ResRet.f32 %8369, 2
  %8373 = fadd fast float %8370, -5.000000e-01
  %8374 = fadd fast float %8371, -5.000000e-01
  %8375 = fadd fast float %8372, -5.000000e-01
  %8376 = fmul fast float %5324, 4.000000e+00
  %8377 = fmul fast float %8376, %8359
  %8378 = fmul fast float %8377, %8373
  %8379 = fmul fast float %5325, 4.000000e+00
  %8380 = fmul fast float %8379, %8360
  %8381 = fmul fast float %8380, %8374
  %8382 = fmul fast float %5333, 4.000000e+00
  %8383 = fmul fast float %8382, %8361
  %8384 = fmul fast float %8383, %8375
  %8385 = fadd fast float %8378, %8365
  %8386 = fadd fast float %8381, %8366
  %8387 = fadd fast float %8384, %8367
  %8388 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8389 = call float @dx.op.unary.f32(i32 7, float %8386)  ; Saturate(value)
  %8390 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  br label %8391

; <label>:8391                                    ; preds = %8368, %8258
  %8392 = phi float [ %8388, %8368 ], [ %8365, %8258 ]
  %8393 = phi float [ %8389, %8368 ], [ %8366, %8258 ]
  %8394 = phi float [ %8390, %8368 ], [ %8367, %8258 ]
  %8395 = fmul fast float %8286, 9.843750e-01
  %8396 = fadd fast float %8395, 7.812500e-03
  %8397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8396, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8398 = extractvalue %dx.types.ResRet.f32 %8397, 2
  %8399 = extractvalue %dx.types.ResRet.f32 %8397, 3
  %8400 = fmul fast float %8398, %5324
  %8401 = fmul fast float %8398, %5325
  %8402 = fmul fast float %8398, %5333
  %8403 = fadd fast float %8400, %8399
  %8404 = fadd fast float %8401, %8399
  %8405 = fadd fast float %8402, %8399
  br i1 %5618, label %8406, label %8429

; <label>:8406                                    ; preds = %8391
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %8286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = fadd fast float %8408, -5.000000e-01
  %8412 = fadd fast float %8409, -5.000000e-01
  %8413 = fadd fast float %8410, -5.000000e-01
  %8414 = fmul fast float %5324, 4.000000e+00
  %8415 = fmul fast float %8414, %8359
  %8416 = fmul fast float %8415, %8411
  %8417 = fmul fast float %5325, 4.000000e+00
  %8418 = fmul fast float %8417, %8360
  %8419 = fmul fast float %8418, %8412
  %8420 = fmul fast float %5333, 4.000000e+00
  %8421 = fmul fast float %8420, %8361
  %8422 = fmul fast float %8421, %8413
  %8423 = fadd fast float %8416, %8403
  %8424 = fadd fast float %8419, %8404
  %8425 = fadd fast float %8422, %8405
  %8426 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8427 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8428 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  br label %8429

; <label>:8429                                    ; preds = %8406, %8391
  %8430 = phi float [ %8426, %8406 ], [ %8403, %8391 ]
  %8431 = phi float [ %8427, %8406 ], [ %8404, %8391 ]
  %8432 = phi float [ %8428, %8406 ], [ %8405, %8391 ]
  %8433 = call float @dx.op.binary.f32(i32 35, float %8431, float %8432)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 35, float %8430, float %8433)  ; FMax(a,b)
  %8435 = fsub fast float 1.000000e+00, %8434
  %8436 = fsub fast float -0.000000e+00, %5327
  %8437 = fsub fast float -0.000000e+00, %5328
  %8438 = fsub fast float -0.000000e+00, %5329
  %8439 = call float @dx.op.dot3.f32(i32 55, float %7971, float %7972, float %7973, float %8436, float %8437, float %8438)  ; Dot3(ax,ay,az,bx,by,bz)
  %8440 = call float @dx.op.unary.f32(i32 7, float %8439)  ; Saturate(value)
  %8441 = fmul fast float %8440, %7978
  %8442 = fmul fast float %8440, 9.843750e-01
  %8443 = fadd fast float %8442, 7.812500e-03
  %8444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8443, float %5608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8445 = extractvalue %dx.types.ResRet.f32 %8444, 2
  %8446 = extractvalue %dx.types.ResRet.f32 %8444, 3
  %8447 = fmul fast float %8445, %5324
  %8448 = fmul fast float %8445, %5325
  %8449 = fmul fast float %8445, %5333
  %8450 = fadd fast float %8447, %8446
  %8451 = fadd fast float %8448, %8446
  %8452 = fadd fast float %8449, %8446
  br i1 %5618, label %8453, label %8476

; <label>:8453                                    ; preds = %8429
  %8454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4652, float %8440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.ResRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.ResRet.f32 %8454, 2
  %8458 = fadd fast float %8455, -5.000000e-01
  %8459 = fadd fast float %8456, -5.000000e-01
  %8460 = fadd fast float %8457, -5.000000e-01
  %8461 = fmul fast float %5324, 4.000000e+00
  %8462 = fmul fast float %8461, %8359
  %8463 = fmul fast float %8462, %8458
  %8464 = fmul fast float %5325, 4.000000e+00
  %8465 = fmul fast float %8464, %8360
  %8466 = fmul fast float %8465, %8459
  %8467 = fmul fast float %5333, 4.000000e+00
  %8468 = fmul fast float %8467, %8361
  %8469 = fmul fast float %8468, %8460
  %8470 = fadd fast float %8463, %8450
  %8471 = fadd fast float %8466, %8451
  %8472 = fadd fast float %8469, %8452
  %8473 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8474 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8475 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  br label %8476

; <label>:8476                                    ; preds = %8453, %8429
  %8477 = phi float [ %8473, %8453 ], [ %8450, %8429 ]
  %8478 = phi float [ %8474, %8453 ], [ %8451, %8429 ]
  %8479 = phi float [ %8475, %8453 ], [ %8452, %8429 ]
  %8480 = call float @dx.op.binary.f32(i32 35, float %8478, float %8479)  ; FMax(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float %8477, float %8480)  ; FMax(a,b)
  %8482 = fsub fast float 1.000000e+00, %8481
  %8483 = fmul fast float %8441, %8482
  %8484 = fmul fast float %8483, %4743
  %8485 = fmul fast float %8483, %4744
  %8486 = fmul fast float %8483, %4745
  %8487 = fmul fast float %8392, %8350
  %8488 = fmul fast float %8393, %8350
  %8489 = fmul fast float %8394, %8350
  %8490 = fsub fast float 1.000000e+00, %8287
  %8491 = bitcast float %8490 to i32
  %8492 = sitofp i32 %8491 to float
  %8493 = fmul fast float %8492, 5.000000e+00
  %8494 = fadd fast float %8493, 0xC1EFBF8940000000
  %8495 = fptosi float %8494 to i32
  %8496 = bitcast i32 %8495 to float
  %8497 = fmul fast float %8496, %4653
  %8498 = fmul fast float %8435, %8497
  %8499 = fmul fast float %8498, %6157
  %8500 = fmul fast float %8498, %6158
  %8501 = fmul fast float %8498, %6159
  %8502 = fmul fast float %8435, %8293
  %8503 = fadd fast float %8499, %8487
  %8504 = fadd fast float %8500, %8488
  %8505 = fadd fast float %8501, %8489
  %8506 = fadd fast float %8484, %8502
  %8507 = fadd fast float %8485, %8502
  %8508 = fadd fast float %8486, %8502
  %8509 = fmul fast float %8275, %4649
  %8510 = fmul fast float %8509, %8506
  %8511 = fmul fast float %8276, %4649
  %8512 = fmul fast float %8511, %8507
  %8513 = fmul fast float %8277, %4649
  %8514 = fmul fast float %8513, %8508
  %8515 = fadd fast float %8510, %7908
  %8516 = fadd fast float %8512, %7909
  %8517 = fadd fast float %8514, %7910
  %8518 = fmul fast float %8509, %8293
  %8519 = fmul fast float %8518, %8503
  %8520 = fmul fast float %8511, %8293
  %8521 = fmul fast float %8520, %8504
  %8522 = fmul fast float %8513, %8293
  %8523 = fmul fast float %8522, %8505
  %8524 = fadd fast float %8519, %7905
  %8525 = fadd fast float %8521, %7906
  %8526 = fadd fast float %8523, %7907
  br label %8037

; <label>:8527                                    ; preds = %8037
  br label %8528

; <label>:8528                                    ; preds = %8527, %7871
  %8529 = phi float [ %7873, %7871 ], [ %8038, %8527 ]
  %8530 = phi float [ %7874, %7871 ], [ %8039, %8527 ]
  %8531 = phi float [ %7875, %7871 ], [ %8040, %8527 ]
  %8532 = phi float [ %7876, %7871 ], [ %8041, %8527 ]
  %8533 = phi float [ %7877, %7871 ], [ %8042, %8527 ]
  %8534 = phi float [ %7878, %7871 ], [ %8043, %8527 ]
  %8535 = add i32 %7872, 1
  %8536 = icmp ugt i32 %8535, %7868
  br i1 %8536, label %8537, label %7871

; <label>:8537                                    ; preds = %8528
  br label %8538

; <label>:8538                                    ; preds = %8537, %7821, %7811
  %8539 = phi float [ %7812, %7811 ], [ %7812, %7821 ], [ %8529, %8537 ]
  %8540 = phi float [ %7813, %7811 ], [ %7813, %7821 ], [ %8530, %8537 ]
  %8541 = phi float [ %7814, %7811 ], [ %7814, %7821 ], [ %8531, %8537 ]
  %8542 = phi float [ %7815, %7811 ], [ %7815, %7821 ], [ %8532, %8537 ]
  %8543 = phi float [ %7816, %7811 ], [ %7816, %7821 ], [ %8533, %8537 ]
  %8544 = phi float [ %7817, %7811 ], [ %7817, %7821 ], [ %8534, %8537 ]
  %8545 = fmul fast float %6166, %4649
  %8546 = fmul fast float %6167, %4649
  %8547 = fmul fast float %6168, %4649
  %8548 = fadd fast float %8545, 1.000000e+00
  %8549 = fadd fast float %8546, 1.000000e+00
  %8550 = fadd fast float %8547, 1.000000e+00
  %8551 = call float @dx.op.dot3.f32(i32 55, float %8548, float %8549, float %8550, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8552 = fsub fast float 1.000000e+00, %8551
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 0
  %8555 = fmul fast float %8554, %6172
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 3
  %8558 = fsub fast float 1.000000e+00, %4657
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fadd fast float %8544, %4655
  %8561 = fmul fast float %8560, %4657
  %8562 = fmul fast float %8559, %8557
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 3
  %8565 = fmul fast float %8542, %5321
  %8566 = fmul fast float %8543, %5322
  %8567 = fmul fast float %8544, %5323
  %8568 = fcmp fast ogt float %99, %192
  %8569 = and i1 %8568, %5126
  %8570 = or i1 %5132, %8569
  %8571 = icmp eq i32 %5125, 2
  %8572 = fcmp fast ole float %99, %192
  %8573 = and i1 %8572, %8571
  %8574 = or i1 %8573, %8570
  br i1 %8569, label %8575, label %8832

; <label>:8575                                    ; preds = %8538
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 2
  %8578 = extractvalue %dx.types.CBufRet.f32 %8576, 3
  %8579 = fmul fast float %8577, %111
  %8580 = fmul fast float %8578, %112
  %8581 = call float @dx.op.unary.f32(i32 7, float %8579)  ; Saturate(value)
  %8582 = call float @dx.op.unary.f32(i32 7, float %8580)  ; Saturate(value)
  %8583 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8581, float %8582, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8587 = extractvalue %dx.types.ResRet.f32 %8583, 3
  %8588 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8581, float %8582, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.ResRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.ResRet.f32 %8588, 2
  %8592 = extractvalue %dx.types.ResRet.f32 %8588, 3
  %8593 = call float @dx.op.binary.f32(i32 35, float %8585, float %8586)  ; FMax(a,b)
  %8594 = call float @dx.op.binary.f32(i32 35, float %8584, float %8593)  ; FMax(a,b)
  %8595 = call float @dx.op.binary.f32(i32 35, float %8594, float %8587)  ; FMax(a,b)
  %8596 = call float @dx.op.binary.f32(i32 36, float %8590, float %8591)  ; FMin(a,b)
  %8597 = call float @dx.op.binary.f32(i32 36, float %8589, float %8596)  ; FMin(a,b)
  %8598 = call float @dx.op.binary.f32(i32 36, float %8597, float %8592)  ; FMin(a,b)
  %8599 = fmul fast float %8595, 2.550000e+02
  %8600 = fadd fast float %8599, 0x3F70101020000000
  %8601 = fptoui float %8600 to i32
  %8602 = fmul fast float %8598, 2.550000e+02
  %8603 = fadd fast float %8602, 0x3F70101020000000
  %8604 = fptoui float %8603 to i32
  %8605 = icmp ult i32 %8601, %8604
  br i1 %8605, label %8606, label %8774

; <label>:8606                                    ; preds = %8575
  %8607 = fcmp fast ogt float %98, 9.843750e-01
  %8608 = fadd fast float %99, -4.000000e+00
  %8609 = select i1 %8607, float -4.000000e+00, float %8608
  %8610 = call float @dx.op.binary.f32(i32 35, float %8609, float 0.000000e+00)  ; FMax(a,b)
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = fadd fast float %8612, %8610
  %8614 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8615 = fmul fast float %8613, %8614
  %8616 = call float @dx.op.unary.f32(i32 23, float %8615)  ; Log(value)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8618 = fmul fast float %8617, %8616
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 2
  %8621 = fmul fast float %8618, %8620
  %8622 = call float @dx.op.unary.f32(i32 7, float %8621)  ; Saturate(value)
  %8623 = uitofp i32 %8601 to float
  %8624 = uitofp i32 %8604 to float
  %8625 = fadd fast float %8623, 5.000000e-01
  %8626 = fadd fast float %8624, 5.000000e-01
  %8627 = fmul fast float %8620, %8625
  %8628 = fmul fast float %8620, %8626
  %8629 = fadd fast float %8627, 0x3F0FFB4800000000
  %8630 = fadd fast float %8628, 0xBF0FFB4800000000
  %8631 = call float @dx.op.binary.f32(i32 35, float %8622, float %8629)  ; FMax(a,b)
  %8632 = call float @dx.op.binary.f32(i32 36, float %8631, float %8630)  ; FMin(a,b)
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 1
  %8635 = extractvalue %dx.types.CBufRet.f32 %8633, 2
  %8636 = extractvalue %dx.types.CBufRet.f32 %8633, 0
  %8637 = fmul fast float %8634, %8632
  %8638 = fadd fast float %8636, %8637
  %8639 = fadd fast float %8636, %8635
  %8640 = fsub fast float %8634, %8635
  %8641 = fadd fast float %8640, %8636
  %8642 = call float @dx.op.binary.f32(i32 35, float %8638, float %8639)  ; FMax(a,b)
  %8643 = call float @dx.op.binary.f32(i32 36, float %8642, float %8641)  ; FMin(a,b)
  %8644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8581, float %8582, float %8643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8645 = extractvalue %dx.types.ResRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.ResRet.f32 %8644, 1
  %8647 = extractvalue %dx.types.ResRet.f32 %8644, 2
  %8648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.i32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.i32 %8648, 1
  %8651 = uitofp i32 %8649 to float
  %8652 = uitofp i32 %8650 to float
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8653, 1
  %8656 = fmul fast float %8651, %8581
  %8657 = fmul fast float %8652, %8582
  %8658 = fadd fast float %8656, -5.000000e-01
  %8659 = fadd fast float %8657, -5.000000e-01
  %8660 = call float @dx.op.unary.f32(i32 22, float %8658)  ; Frc(value)
  %8661 = call float @dx.op.unary.f32(i32 22, float %8659)  ; Frc(value)
  %8662 = fmul fast float %8660, %8660
  %8663 = fmul fast float %8662, %8660
  %8664 = fsub fast float 3.000000e+00, %8660
  %8665 = fmul fast float %8662, %8664
  %8666 = fmul fast float %8660, 3.000000e+00
  %8667 = fmul fast float %8663, 3.000000e+00
  %8668 = fmul fast float %8662, 6.000000e+00
  %8669 = fsub fast float %8667, %8668
  %8670 = fadd fast float %8669, 4.000000e+00
  %8671 = fmul fast float %8670, 0x3FC5555560000000
  %8672 = fmul fast float %8663, -3.000000e+00
  %8673 = fadd fast float %8662, %8660
  %8674 = fmul fast float %8673, 3.000000e+00
  %8675 = fadd fast float %8672, 1.000000e+00
  %8676 = fadd fast float %8675, %8674
  %8677 = fmul fast float %8663, 0x3FC5555560000000
  %8678 = fmul fast float %8661, %8661
  %8679 = fmul fast float %8678, %8661
  %8680 = fsub fast float 3.000000e+00, %8661
  %8681 = fmul fast float %8678, %8680
  %8682 = fmul fast float %8661, 3.000000e+00
  %8683 = fmul fast float %8679, 3.000000e+00
  %8684 = fmul fast float %8678, 6.000000e+00
  %8685 = fsub fast float %8683, %8684
  %8686 = fadd fast float %8685, 4.000000e+00
  %8687 = fmul fast float %8686, 0x3FC5555560000000
  %8688 = fmul fast float %8679, -3.000000e+00
  %8689 = fadd fast float %8678, %8661
  %8690 = fmul fast float %8689, 3.000000e+00
  %8691 = fadd fast float %8688, 1.000000e+00
  %8692 = fadd fast float %8691, %8690
  %8693 = fmul fast float %8679, 0x3FC5555560000000
  %8694 = fadd fast float %8660, 1.000000e+00
  %8695 = fsub fast float 1.000000e+00, %8666
  %8696 = fadd fast float %8695, %8665
  %8697 = fadd fast float %8696, %8670
  %8698 = fmul fast float %8697, 0x3FC5555560000000
  %8699 = fdiv fast float %8671, %8698
  %8700 = fsub fast float %8694, %8699
  %8701 = fsub fast float 1.000000e+00, %8660
  %8702 = fadd fast float %8676, %8663
  %8703 = fmul fast float %8702, 0x3FC5555560000000
  %8704 = fdiv fast float %8677, %8703
  %8705 = fadd fast float %8701, %8704
  %8706 = fadd fast float %8661, 1.000000e+00
  %8707 = fsub fast float 1.000000e+00, %8682
  %8708 = fadd fast float %8707, %8681
  %8709 = fadd fast float %8708, %8686
  %8710 = fmul fast float %8709, 0x3FC5555560000000
  %8711 = fdiv fast float %8687, %8710
  %8712 = fsub fast float %8706, %8711
  %8713 = fsub fast float 1.000000e+00, %8661
  %8714 = fadd fast float %8692, %8679
  %8715 = fmul fast float %8714, 0x3FC5555560000000
  %8716 = fdiv fast float %8693, %8715
  %8717 = fadd fast float %8716, %8713
  %8718 = fmul fast float %8700, %8654
  %8719 = fsub fast float %8581, %8718
  %8720 = fmul fast float %8705, %8654
  %8721 = fadd fast float %8720, %8581
  %8722 = fmul fast float %8717, %8655
  %8723 = fadd fast float %8722, %8582
  %8724 = fmul fast float %8712, %8655
  %8725 = fsub fast float %8582, %8724
  %8726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8719, float %8725, float %8643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8727 = extractvalue %dx.types.ResRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.ResRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.ResRet.f32 %8726, 2
  %8730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8721, float %8725, float %8643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8731 = extractvalue %dx.types.ResRet.f32 %8730, 0
  %8732 = extractvalue %dx.types.ResRet.f32 %8730, 1
  %8733 = extractvalue %dx.types.ResRet.f32 %8730, 2
  %8734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8719, float %8723, float %8643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8735 = extractvalue %dx.types.ResRet.f32 %8734, 0
  %8736 = extractvalue %dx.types.ResRet.f32 %8734, 1
  %8737 = extractvalue %dx.types.ResRet.f32 %8734, 2
  %8738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8721, float %8723, float %8643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8739 = extractvalue %dx.types.ResRet.f32 %8738, 0
  %8740 = extractvalue %dx.types.ResRet.f32 %8738, 1
  %8741 = extractvalue %dx.types.ResRet.f32 %8738, 2
  %8742 = fsub fast float %8735, %8727
  %8743 = fsub fast float %8736, %8728
  %8744 = fsub fast float %8737, %8729
  %8745 = fmul fast float %8742, %8715
  %8746 = fmul fast float %8743, %8715
  %8747 = fmul fast float %8744, %8715
  %8748 = fadd fast float %8745, %8727
  %8749 = fadd fast float %8746, %8728
  %8750 = fadd fast float %8747, %8729
  %8751 = fsub fast float %8739, %8731
  %8752 = fsub fast float %8740, %8732
  %8753 = fsub fast float %8741, %8733
  %8754 = fmul fast float %8751, %8715
  %8755 = fmul fast float %8752, %8715
  %8756 = fmul fast float %8753, %8715
  %8757 = fsub fast float %8731, %8748
  %8758 = fadd fast float %8757, %8754
  %8759 = fsub fast float %8732, %8749
  %8760 = fadd fast float %8759, %8755
  %8761 = fsub fast float %8733, %8750
  %8762 = fadd fast float %8761, %8756
  %8763 = fmul fast float %8758, %8703
  %8764 = fmul fast float %8760, %8703
  %8765 = fmul fast float %8762, %8703
  %8766 = fadd fast float %8763, %8748
  %8767 = fadd fast float %8764, %8749
  %8768 = fadd fast float %8765, %8750
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8771 = fmul fast float %8766, %8770
  %8772 = fmul fast float %8767, %8770
  %8773 = fmul fast float %8768, %8770
  br label %8774

; <label>:8774                                    ; preds = %8606, %8575
  %8775 = phi float [ %8645, %8606 ], [ 1.000000e+00, %8575 ]
  %8776 = phi float [ %8646, %8606 ], [ 1.000000e+00, %8575 ]
  %8777 = phi float [ %8647, %8606 ], [ 1.000000e+00, %8575 ]
  %8778 = phi float [ %8771, %8606 ], [ 0.000000e+00, %8575 ]
  %8779 = phi float [ %8772, %8606 ], [ 0.000000e+00, %8575 ]
  %8780 = phi float [ %8773, %8606 ], [ 0.000000e+00, %8575 ]
  %8781 = fmul fast float %8778, %8552
  %8782 = fmul fast float %8779, %8552
  %8783 = fmul fast float %8780, %8552
  %8784 = call float @dx.op.dot3.f32(i32 55, float %8775, float %8776, float %8777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8785 = call float @dx.op.dot3.f32(i32 55, float %8781, float %8782, float %8783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8786 = select i1 %232, float %8784, float %8775
  %8787 = select i1 %232, float %8784, float %8776
  %8788 = select i1 %232, float 1.000000e+00, float %8777
  %8789 = select i1 %232, float %8785, float %8781
  %8790 = select i1 %232, float 0.000000e+00, float %8782
  %8791 = select i1 %232, float 0.000000e+00, float %8783
  %8792 = fmul fast float %8786, %8565
  %8793 = fmul fast float %8787, %8566
  %8794 = fmul fast float %8788, %8567
  %8795 = fadd fast float %8792, %8789
  %8796 = fadd fast float %8793, %8790
  %8797 = fadd fast float %8791, %8794
  %8798 = fmul fast float %8786, %8539
  %8799 = fmul fast float %8787, %8540
  %8800 = fmul fast float %8788, %8541
  %8801 = fmul fast float %140, %8577
  %8802 = fmul fast float %142, %8578
  %8803 = fsub fast float 1.000000e+00, %8801
  %8804 = fsub fast float 1.000000e+00, %8802
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = extractvalue %dx.types.CBufRet.f32 %8805, 2
  %8809 = fmul fast float %8803, %8806
  %8810 = fmul fast float %8803, %8807
  %8811 = fmul fast float %8803, %8808
  %8812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8812, 0
  %8814 = extractvalue %dx.types.CBufRet.f32 %8812, 1
  %8815 = extractvalue %dx.types.CBufRet.f32 %8812, 2
  %8816 = fmul fast float %8804, %8813
  %8817 = fmul fast float %8804, %8814
  %8818 = fmul fast float %8804, %8815
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 0
  %8821 = extractvalue %dx.types.CBufRet.f32 %8819, 1
  %8822 = extractvalue %dx.types.CBufRet.f32 %8819, 2
  %8823 = fadd fast float %8816, %8820
  %8824 = fadd fast float %8823, %8809
  %8825 = fadd fast float %8817, %8821
  %8826 = fadd fast float %8825, %8810
  %8827 = fadd fast float %8818, %8822
  %8828 = fadd fast float %8827, %8811
  %8829 = fmul fast float %8824, %192
  %8830 = fmul fast float %8826, %192
  %8831 = fmul fast float %8828, %192
  br label %8832

; <label>:8832                                    ; preds = %8774, %8538
  %8833 = phi float [ %8829, %8774 ], [ %170, %8538 ]
  %8834 = phi float [ %8830, %8774 ], [ %171, %8538 ]
  %8835 = phi float [ %8831, %8774 ], [ %172, %8538 ]
  %8836 = phi float [ %192, %8774 ], [ %99, %8538 ]
  %8837 = phi float [ %8795, %8774 ], [ %8565, %8538 ]
  %8838 = phi float [ %8796, %8774 ], [ %8566, %8538 ]
  %8839 = phi float [ %8797, %8774 ], [ %8567, %8538 ]
  %8840 = phi float [ %8798, %8774 ], [ %8539, %8538 ]
  %8841 = phi float [ %8799, %8774 ], [ %8540, %8538 ]
  %8842 = phi float [ %8800, %8774 ], [ %8541, %8538 ]
  %8843 = phi float [ %8775, %8774 ], [ 1.000000e+00, %8538 ]
  br i1 %8574, label %9998, label %8844

; <label>:8844                                    ; preds = %8832
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8847 = extractvalue %dx.types.CBufRet.f32 %8845, 1
  %8848 = extractvalue %dx.types.CBufRet.f32 %8845, 2
  %8849 = extractvalue %dx.types.CBufRet.f32 %8845, 3
  %8850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.f32 %8850, 0
  %8852 = extractvalue %dx.types.CBufRet.f32 %8850, 1
  %8853 = extractvalue %dx.types.CBufRet.f32 %8850, 2
  %8854 = extractvalue %dx.types.CBufRet.f32 %8850, 3
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = extractvalue %dx.types.CBufRet.f32 %8855, 1
  %8858 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8859 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 0
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 1
  %8863 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8864 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 3
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 3
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8870 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8871 = extractvalue %dx.types.CBufRet.f32 %8867, 2
  %8872 = fcmp fast olt float %8871, -5.000000e-01
  %8873 = call float @dx.op.dot3.f32(i32 55, float %8833, float %8834, float %8835, float %8833, float %8834, float %8835)  ; Dot3(ax,ay,az,bx,by,bz)
  %8874 = call float @dx.op.unary.f32(i32 25, float %8873)  ; Rsqrt(value)
  %8875 = fmul fast float %8874, %8873
  %8876 = fmul fast float %8874, %8833
  %8877 = fmul fast float %8874, %8834
  %8878 = fmul fast float %8874, %8835
  %8879 = fadd fast float %8875, %8849
  %8880 = call float @dx.op.dot3.f32(i32 55, float %8876, float %8877, float %8878, float %8846, float %8847, float %8848)  ; Dot3(ax,ay,az,bx,by,bz)
  %8881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8882 = extractvalue %dx.types.CBufRet.i32 %8881, 1
  %8883 = and i32 %8882, 1
  %8884 = icmp ne i32 %8883, 0
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8887 = fcmp fast ogt float %8886, 0.000000e+00
  %8888 = and i1 %8884, %8887
  br i1 %8888, label %8889, label %9295, !dx.controlflow.hints !135

; <label>:8889                                    ; preds = %8844
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 2
  %8896 = fsub fast float %8893, %8895
  %8897 = and i32 %8882, 2
  %8898 = extractvalue %dx.types.CBufRet.i32 %8881, 0
  %8899 = call i32 @dx.op.binary.i32(i32 40, i32 %8898, i32 3)  ; UMin(a,b)
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 0
  %8902 = extractvalue %dx.types.CBufRet.f32 %8900, 1
  %8903 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8904 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8905 = fsub fast float %8901, %8903
  %8906 = fsub fast float %8902, %8904
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 0
  %8909 = fcmp fast ogt float %8908, 0.000000e+00
  %8910 = fsub fast float -0.000000e+00, %8905
  %8911 = fsub fast float -0.000000e+00, %8906
  %8912 = call float @dx.op.dot2.f32(i32 54, float %8876, float %8877, float %8876, float %8877)  ; Dot2(ax,ay,bx,by)
  %8913 = call float @dx.op.dot2.f32(i32 54, float %8876, float %8877, float %8910, float %8911)  ; Dot2(ax,ay,bx,by)
  %8914 = fmul fast float %8913, 2.000000e+00
  %8915 = call float @dx.op.dot2.f32(i32 54, float %8910, float %8911, float %8910, float %8911)  ; Dot2(ax,ay,bx,by)
  %8916 = fmul fast float %8908, %8908
  %8917 = fsub fast float %8915, %8916
  %8918 = fmul fast float %8914, %8914
  %8919 = fmul fast float %8912, 4.000000e+00
  %8920 = fmul fast float %8919, %8917
  %8921 = fsub fast float %8918, %8920
  %8922 = fcmp fast ogt float %8921, 0.000000e+00
  br i1 %8922, label %8923, label %8938

; <label>:8923                                    ; preds = %8889
  %8924 = fcmp fast ogt float %8914, 0.000000e+00
  %8925 = call float @dx.op.unary.f32(i32 24, float %8921)  ; Sqrt(value)
  %8926 = fsub fast float -0.000000e+00, %8925
  %8927 = select i1 %8924, float %8925, float %8926
  %8928 = fadd fast float %8927, %8914
  %8929 = fmul float %8928, -5.000000e-01
  %8930 = fdiv fast float %8929, %8912
  %8931 = call float @dx.op.binary.f32(i32 35, float %8930, float 0.000000e+00)  ; FMax(a,b)
  %8932 = call float @dx.op.binary.f32(i32 36, float %8875, float %8931)  ; FMin(a,b)
  %8933 = fdiv fast float %8917, %8929
  %8934 = call float @dx.op.binary.f32(i32 35, float %8933, float 0.000000e+00)  ; FMax(a,b)
  %8935 = call float @dx.op.binary.f32(i32 36, float %8875, float %8934)  ; FMin(a,b)
  %8936 = call float @dx.op.binary.f32(i32 36, float %8932, float %8935)  ; FMin(a,b)
  %8937 = call float @dx.op.binary.f32(i32 35, float %8932, float %8935)  ; FMax(a,b)
  br label %8938

; <label>:8938                                    ; preds = %8923, %8889
  %8939 = phi float [ %8937, %8923 ], [ -1.000000e+00, %8889 ]
  %8940 = phi float [ %8936, %8923 ], [ -1.000000e+00, %8889 ]
  %8941 = phi i1 [ true, %8923 ], [ false, %8889 ]
  %8942 = and i1 %8909, %8941
  br i1 %8942, label %8943, label %8945

; <label>:8943                                    ; preds = %8938
  %8944 = fcmp fast oeq float %8940, %8939
  br i1 %8944, label %9248, label %8946

; <label>:8945                                    ; preds = %8938
  br i1 %8909, label %9248, label %8946

; <label>:8946                                    ; preds = %8945, %8943
  %8947 = phi float [ %8875, %8945 ], [ %8939, %8943 ]
  %8948 = phi float [ 0.000000e+00, %8945 ], [ %8940, %8943 ]
  %8949 = icmp ne i32 %8897, 0
  %8950 = fmul fast float %8947, %8878
  %8951 = fadd fast float %8950, %8891
  %8952 = fmul fast float %8951, %8947
  %8953 = select i1 %8949, float 0.000000e+00, float %8952
  %8954 = fcmp fast oeq float %8878, 0.000000e+00
  %8955 = fdiv fast float %8896, %8878
  %8956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8955)  ; FMax(a,b)
  %8957 = select i1 %8954, float %8947, float %8956
  %8958 = call float @dx.op.binary.f32(i32 36, float %8947, float %8957)  ; FMin(a,b)
  %8959 = fcmp fast ogt float %8878, 0.000000e+00
  %8960 = fcmp fast olt float %8896, 0.000000e+00
  br i1 %8959, label %8961, label %9018

; <label>:8961                                    ; preds = %8946
  %8962 = icmp eq i32 %8897, 0
  br i1 %8960, label %8963, label %9007

; <label>:8963                                    ; preds = %8961
  %8964 = select i1 %8962, float %8947, float 0.000000e+00
  %8965 = fsub fast float -0.000000e+00, %8964
  %8966 = call float @dx.op.unary.f32(i32 6, float %8965)  ; FAbs(value)
  %8967 = fmul fast float %8964, %8878
  %8968 = fadd fast float %8967, %8891
  %8969 = fmul fast float %8966, %8968
  %8970 = fsub fast float %8953, %8969
  %8971 = fsub fast float %8947, %8966
  %8972 = select i1 %8962, float %8971, float 0.000000e+00
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 0
  %8975 = extractvalue %dx.types.CBufRet.f32 %8973, 1
  %8976 = extractvalue %dx.types.CBufRet.f32 %8973, 2
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.CBufRet.f32 %8977, 1
  %8980 = extractvalue %dx.types.CBufRet.f32 %8977, 2
  %8981 = extractvalue %dx.types.CBufRet.f32 %8977, 3
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 3
  %8984 = call float @dx.op.binary.f32(i32 36, float %8970, float %8983)  ; FMin(a,b)
  %8985 = fmul fast float %8981, %8972
  %8986 = call float @dx.op.unary.f32(i32 7, float %8985)  ; Saturate(value)
  %8987 = fsub fast float %8978, %8974
  %8988 = fsub fast float %8979, %8975
  %8989 = fsub fast float %8980, %8976
  %8990 = fmul fast float %8986, %8987
  %8991 = fmul fast float %8986, %8988
  %8992 = fmul fast float %8986, %8989
  %8993 = fadd fast float %8990, %8974
  %8994 = fadd fast float %8991, %8975
  %8995 = fadd fast float %8992, %8976
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %8998 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %8999 = fadd fast float %8998, %8997
  %9000 = call float @dx.op.unary.f32(i32 7, float %8999)  ; Saturate(value)
  %9001 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %9002 = extractvalue %dx.types.CBufRet.f32 %8996, 3
  %9003 = fadd fast float %9002, %9001
  %9004 = call float @dx.op.unary.f32(i32 7, float %9003)  ; Saturate(value)
  %9005 = fmul fast float %9000, %8984
  %9006 = fmul fast float %9005, %9004
  br label %9248

; <label>:9007                                    ; preds = %8961
  br i1 %8962, label %9008, label %9029

; <label>:9008                                    ; preds = %9007
  %9009 = call float @dx.op.binary.f32(i32 36, float %8958, float %8948)  ; FMin(a,b)
  %9010 = fsub fast float %8958, %9009
  %9011 = fsub fast float %9010, %8947
  %9012 = call float @dx.op.unary.f32(i32 6, float %9011)  ; FAbs(value)
  %9013 = fadd fast float %9010, %8947
  %9014 = fmul fast float %9013, %8878
  %9015 = fadd fast float %9014, %8891
  %9016 = fmul fast float %9015, %9012
  %9017 = fsub fast float %8953, %9016
  br label %9029

; <label>:9018                                    ; preds = %8946
  br i1 %8960, label %9019, label %9029

; <label>:9019                                    ; preds = %9018
  %9020 = call float @dx.op.binary.f32(i32 35, float %8948, float %8958)  ; FMax(a,b)
  %9021 = icmp eq i32 %8897, 0
  %9022 = select i1 %9021, float %8958, float 0.000000e+00
  %9023 = fsub fast float -0.000000e+00, %9022
  %9024 = call float @dx.op.unary.f32(i32 6, float %9023)  ; FAbs(value)
  %9025 = fmul fast float %9022, %8878
  %9026 = fadd fast float %9025, %8891
  %9027 = fmul fast float %9024, %9026
  %9028 = fsub fast float %8953, %9027
  br label %9029

; <label>:9029                                    ; preds = %9019, %9018, %9008, %9007
  %9030 = phi float [ %8948, %9007 ], [ %8948, %9008 ], [ %9020, %9019 ], [ %8948, %9018 ]
  %9031 = phi float [ 0.000000e+00, %9007 ], [ %9012, %9008 ], [ %9024, %9019 ], [ 0.000000e+00, %9018 ]
  %9032 = phi float [ %8953, %9007 ], [ %9017, %9008 ], [ %9028, %9019 ], [ %8953, %9018 ]
  %9033 = phi float [ %8958, %9007 ], [ %8958, %9008 ], [ %8947, %9019 ], [ %8947, %9018 ]
  %9034 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9034, align 4, !tbaa !122, !noalias !136
  %9035 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9035, align 4, !tbaa !122, !noalias !136
  %9036 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9036, align 4, !tbaa !122, !noalias !136
  %9037 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9037, align 4, !tbaa !122, !noalias !136
  %9038 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9038, align 4, !tbaa !122, !noalias !136
  %9039 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9039, align 4, !tbaa !122, !noalias !136
  %9040 = icmp sgt i32 %8899, 0
  br i1 %9040, label %9041, label %9102

; <label>:9041                                    ; preds = %9029
  br label %9042

; <label>:9042                                    ; preds = %9091, %9041
  %9043 = phi i32 [ %9092, %9091 ], [ 0, %9041 ]
  %9044 = phi i32 [ %9093, %9091 ], [ 0, %9041 ]
  %9045 = add nuw i32 %9044, 171
  %9046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9045)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.CBufRet.f32 %9046, 1
  %9049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9050 = extractvalue %dx.types.CBufRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.CBufRet.f32 %9049, 1
  %9052 = fsub fast float %9047, %9050
  %9053 = fsub fast float %9048, %9051
  %9054 = extractvalue %dx.types.CBufRet.f32 %9046, 2
  %9055 = fsub fast float -0.000000e+00, %9052
  %9056 = fsub fast float -0.000000e+00, %9053
  %9057 = call float @dx.op.dot2.f32(i32 54, float %8876, float %8877, float %9055, float %9056)  ; Dot2(ax,ay,bx,by)
  %9058 = fmul fast float %9057, 2.000000e+00
  %9059 = call float @dx.op.dot2.f32(i32 54, float %9055, float %9056, float %9055, float %9056)  ; Dot2(ax,ay,bx,by)
  %9060 = fmul fast float %9054, %9054
  %9061 = fsub fast float %9059, %9060
  %9062 = fmul fast float %9058, %9058
  %9063 = fmul fast float %8919, %9061
  %9064 = fsub fast float %9062, %9063
  %9065 = fcmp fast ogt float %9064, 0.000000e+00
  br i1 %9065, label %9066, label %9081

; <label>:9066                                    ; preds = %9042
  %9067 = fcmp fast ogt float %9058, 0.000000e+00
  %9068 = call float @dx.op.unary.f32(i32 24, float %9064)  ; Sqrt(value)
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = select i1 %9067, float %9068, float %9069
  %9071 = fadd fast float %9070, %9058
  %9072 = fmul float %9071, -5.000000e-01
  %9073 = fdiv fast float %9072, %8912
  %9074 = call float @dx.op.binary.f32(i32 35, float %9073, float 0.000000e+00)  ; FMax(a,b)
  %9075 = call float @dx.op.binary.f32(i32 36, float %8947, float %9074)  ; FMin(a,b)
  %9076 = fdiv fast float %9061, %9072
  %9077 = call float @dx.op.binary.f32(i32 35, float %9076, float 0.000000e+00)  ; FMax(a,b)
  %9078 = call float @dx.op.binary.f32(i32 36, float %8947, float %9077)  ; FMin(a,b)
  %9079 = call float @dx.op.binary.f32(i32 36, float %9075, float %9078)  ; FMin(a,b)
  %9080 = call float @dx.op.binary.f32(i32 35, float %9075, float %9078)  ; FMax(a,b)
  br label %9081

; <label>:9081                                    ; preds = %9066, %9042
  %9082 = phi float [ %9080, %9066 ], [ -1.000000e+00, %9042 ]
  %9083 = phi float [ %9079, %9066 ], [ -1.000000e+00, %9042 ]
  %9084 = phi i1 [ true, %9066 ], [ false, %9042 ]
  br i1 %9084, label %9085, label %9091

; <label>:9085                                    ; preds = %9081
  %9086 = call float @dx.op.binary.f32(i32 35, float %9030, float %9083)  ; FMax(a,b)
  %9087 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9044
  store float %9086, float* %9087, align 4, !tbaa !122, !noalias !136
  %9088 = call float @dx.op.binary.f32(i32 35, float %9030, float %9082)  ; FMax(a,b)
  %9089 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9044
  store float %9088, float* %9089, align 4, !tbaa !122, !noalias !136
  %9090 = add nsw i32 %9043, 1
  br label %9091

; <label>:9091                                    ; preds = %9085, %9081
  %9092 = phi i32 [ %9090, %9085 ], [ %9043, %9081 ]
  %9093 = add nuw nsw i32 %9044, 1
  %9094 = icmp eq i32 %9093, %8899
  br i1 %9094, label %9095, label %9042

; <label>:9095                                    ; preds = %9091
  %9096 = load float, float* %9036, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9097 = load float, float* %9035, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9098 = load float, float* %9034, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9099 = load float, float* %9039, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9100 = load float, float* %9038, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9101 = load float, float* %9037, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9102

; <label>:9102                                    ; preds = %9095, %9029
  %9103 = phi float [ -1.000000e+00, %9029 ], [ %9101, %9095 ]
  %9104 = phi float [ -1.000000e+00, %9029 ], [ %9100, %9095 ]
  %9105 = phi float [ -1.000000e+00, %9029 ], [ %9099, %9095 ]
  %9106 = phi float [ -1.000000e+00, %9029 ], [ %9098, %9095 ]
  %9107 = phi float [ -1.000000e+00, %9029 ], [ %9097, %9095 ]
  %9108 = phi float [ -1.000000e+00, %9029 ], [ %9096, %9095 ]
  %9109 = phi i32 [ 0, %9029 ], [ %9092, %9095 ]
  %9110 = call float @dx.op.binary.f32(i32 36, float %9107, float %9108)  ; FMin(a,b)
  %9111 = call float @dx.op.binary.f32(i32 36, float %9106, float %9110)  ; FMin(a,b)
  %9112 = call float @dx.op.binary.f32(i32 35, float %9106, float %9107)  ; FMax(a,b)
  %9113 = call float @dx.op.binary.f32(i32 36, float %9112, float %9108)  ; FMin(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9106, float %9107)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 35, float %9114, float %9113)  ; FMax(a,b)
  %9116 = call float @dx.op.binary.f32(i32 35, float %9107, float %9108)  ; FMax(a,b)
  %9117 = call float @dx.op.binary.f32(i32 35, float %9106, float %9116)  ; FMax(a,b)
  store float %9111, float* %9034, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9115, float* %9035, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9117, float* %9036, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9118 = call float @dx.op.binary.f32(i32 36, float %9104, float %9105)  ; FMin(a,b)
  %9119 = call float @dx.op.binary.f32(i32 36, float %9103, float %9118)  ; FMin(a,b)
  %9120 = call float @dx.op.binary.f32(i32 35, float %9103, float %9104)  ; FMax(a,b)
  %9121 = call float @dx.op.binary.f32(i32 36, float %9120, float %9105)  ; FMin(a,b)
  %9122 = call float @dx.op.binary.f32(i32 36, float %9103, float %9104)  ; FMin(a,b)
  %9123 = call float @dx.op.binary.f32(i32 35, float %9122, float %9121)  ; FMax(a,b)
  %9124 = call float @dx.op.binary.f32(i32 35, float %9104, float %9105)  ; FMax(a,b)
  %9125 = call float @dx.op.binary.f32(i32 35, float %9103, float %9124)  ; FMax(a,b)
  store float %9119, float* %9037, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9123, float* %9038, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9125, float* %9039, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9126 = sub nsw i32 3, %9109
  %9127 = icmp sgt i32 %9126, 2
  br i1 %9127, label %9128, label %9166

; <label>:9128                                    ; preds = %9102
  %9129 = icmp eq i32 %8897, 0
  %9130 = fsub fast float %8947, %9031
  %9131 = select i1 %9129, float %9130, float %9031
  %9132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9133 = extractvalue %dx.types.CBufRet.f32 %9132, 0
  %9134 = extractvalue %dx.types.CBufRet.f32 %9132, 1
  %9135 = extractvalue %dx.types.CBufRet.f32 %9132, 2
  %9136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9136, 0
  %9138 = extractvalue %dx.types.CBufRet.f32 %9136, 1
  %9139 = extractvalue %dx.types.CBufRet.f32 %9136, 2
  %9140 = extractvalue %dx.types.CBufRet.f32 %9136, 3
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 3
  %9143 = call float @dx.op.binary.f32(i32 36, float %9032, float %9142)  ; FMin(a,b)
  %9144 = fmul fast float %9140, %9131
  %9145 = call float @dx.op.unary.f32(i32 7, float %9144)  ; Saturate(value)
  %9146 = fsub fast float %9137, %9133
  %9147 = fsub fast float %9138, %9134
  %9148 = fsub fast float %9139, %9135
  %9149 = fmul fast float %9145, %9146
  %9150 = fmul fast float %9145, %9147
  %9151 = fmul fast float %9145, %9148
  %9152 = fadd fast float %9149, %9133
  %9153 = fadd fast float %9150, %9134
  %9154 = fadd fast float %9151, %9135
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 0
  %9157 = extractvalue %dx.types.CBufRet.f32 %9155, 1
  %9158 = fadd fast float %9157, %9156
  %9159 = call float @dx.op.unary.f32(i32 7, float %9158)  ; Saturate(value)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9161 = extractvalue %dx.types.CBufRet.f32 %9155, 3
  %9162 = fadd fast float %9161, %9160
  %9163 = call float @dx.op.unary.f32(i32 7, float %9162)  ; Saturate(value)
  %9164 = fmul fast float %9159, %9143
  %9165 = fmul fast float %9164, %9163
  br label %9248

; <label>:9166                                    ; preds = %9102
  %9167 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9126
  %9168 = load float, float* %9167, align 4, !tbaa !122, !noalias !136
  %9169 = fcmp fast olt float %9168, %9033
  %9170 = icmp sgt i32 %9109, 0
  %9171 = and i1 %9170, %9169
  br i1 %9171, label %9172, label %9209

; <label>:9172                                    ; preds = %9166
  br label %9173

; <label>:9173                                    ; preds = %9202, %9172
  %9174 = phi float [ %9203, %9202 ], [ %9031, %9172 ]
  %9175 = phi float [ %9204, %9202 ], [ %9032, %9172 ]
  %9176 = phi float [ %9184, %9202 ], [ %9168, %9172 ]
  %9177 = phi i32 [ %9181, %9202 ], [ %9126, %9172 ]
  %9178 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9177
  %9179 = load float, float* %9178, align 4, !tbaa !122, !noalias !136
  %9180 = icmp slt i32 %9177, 2
  %9181 = add nsw i32 %9177, 1
  %9182 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9181
  %9183 = load float, float* %9182, align 4, !tbaa !122, !noalias !136
  %9184 = select i1 %9180, float %9183, float %8947
  %9185 = call float @dx.op.binary.f32(i32 36, float %9184, float %9179)  ; FMin(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9033, float %9185)  ; FMin(a,b)
  %9187 = icmp eq i32 %8897, 0
  %9188 = fadd fast float %9186, %9176
  %9189 = fmul fast float %9188, %8878
  %9190 = fadd fast float %9189, %8891
  br i1 %9187, label %9196, label %9191

; <label>:9191                                    ; preds = %9173
  %9192 = fsub fast float %9186, %9176
  %9193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9192)  ; FMax(a,b)
  %9194 = fmul fast float %9193, %9190
  %9195 = fadd fast float %9194, %9175
  br label %9202

; <label>:9196                                    ; preds = %9173
  %9197 = fsub fast float %9176, %9186
  %9198 = call float @dx.op.unary.f32(i32 6, float %9197)  ; FAbs(value)
  %9199 = fadd fast float %9198, %9174
  %9200 = fmul fast float %9198, %9190
  %9201 = fsub fast float %9175, %9200
  br label %9202

; <label>:9202                                    ; preds = %9196, %9191
  %9203 = phi float [ %9193, %9191 ], [ %9199, %9196 ]
  %9204 = phi float [ %9195, %9191 ], [ %9201, %9196 ]
  %9205 = fcmp fast olt float %9184, %9033
  %9206 = icmp slt i32 %9181, 3
  %9207 = and i1 %9206, %9205
  br i1 %9207, label %9173, label %9208

; <label>:9208                                    ; preds = %9202
  br label %9209

; <label>:9209                                    ; preds = %9208, %9166
  %9210 = phi float [ %9031, %9166 ], [ %9203, %9208 ]
  %9211 = phi float [ %9032, %9166 ], [ %9204, %9208 ]
  %9212 = fsub fast float %8947, %9210
  %9213 = select i1 %8949, float %9210, float %9212
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 0
  %9216 = extractvalue %dx.types.CBufRet.f32 %9214, 1
  %9217 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %9218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.f32 %9218, 0
  %9220 = extractvalue %dx.types.CBufRet.f32 %9218, 1
  %9221 = extractvalue %dx.types.CBufRet.f32 %9218, 2
  %9222 = extractvalue %dx.types.CBufRet.f32 %9218, 3
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9225 = call float @dx.op.binary.f32(i32 36, float %9211, float %9224)  ; FMin(a,b)
  %9226 = fmul fast float %9222, %9213
  %9227 = call float @dx.op.unary.f32(i32 7, float %9226)  ; Saturate(value)
  %9228 = fsub fast float %9219, %9215
  %9229 = fsub fast float %9220, %9216
  %9230 = fsub fast float %9221, %9217
  %9231 = fmul fast float %9227, %9228
  %9232 = fmul fast float %9227, %9229
  %9233 = fmul fast float %9227, %9230
  %9234 = fadd fast float %9231, %9215
  %9235 = fadd fast float %9232, %9216
  %9236 = fadd fast float %9233, %9217
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = fadd fast float %9239, %9238
  %9241 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9243 = extractvalue %dx.types.CBufRet.f32 %9237, 3
  %9244 = fadd fast float %9243, %9242
  %9245 = call float @dx.op.unary.f32(i32 7, float %9244)  ; Saturate(value)
  %9246 = fmul fast float %9241, %9225
  %9247 = fmul fast float %9246, %9245
  br label %9248

; <label>:9248                                    ; preds = %9209, %9128, %8963, %8945, %8943
  %9249 = phi float [ %8972, %8963 ], [ %9131, %9128 ], [ %9213, %9209 ], [ 0.000000e+00, %8943 ], [ 0.000000e+00, %8945 ]
  %9250 = phi float [ %9006, %8963 ], [ %9165, %9128 ], [ %9247, %9209 ], [ 0.000000e+00, %8943 ], [ 0.000000e+00, %8945 ]
  %9251 = phi float [ %8993, %8963 ], [ %9152, %9128 ], [ %9234, %9209 ], [ 0.000000e+00, %8943 ], [ 0.000000e+00, %8945 ]
  %9252 = phi float [ %8994, %8963 ], [ %9153, %9128 ], [ %9235, %9209 ], [ 0.000000e+00, %8943 ], [ 0.000000e+00, %8945 ]
  %9253 = phi float [ %8995, %8963 ], [ %9154, %9128 ], [ %9236, %9209 ], [ 0.000000e+00, %8943 ], [ 0.000000e+00, %8945 ]
  %9254 = fmul fast float %8886, %9250
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 2
  %9257 = fsub fast float %8893, %9256
  %9258 = fcmp fast olt float %9254, -2.000000e+01
  %9259 = call float @dx.op.unary.f32(i32 21, float %9254)  ; Exp(value)
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 2
  %9262 = extractvalue %dx.types.CBufRet.f32 %9260, 3
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 2
  %9265 = fmul fast float %9262, %9257
  %9266 = call float @dx.op.unary.f32(i32 7, float %9265)  ; Saturate(value)
  %9267 = fsub fast float 1.000000e+00, %9266
  %9268 = fmul fast float %8878, 5.000000e-01
  %9269 = fadd fast float %9268, 5.000000e-01
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = fsub fast float 1.000000e+00, %9270
  %9272 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9267)  ; FMax(a,b)
  %9273 = fdiv fast float %9271, %9272
  %9274 = fsub fast float %9257, %8835
  %9275 = call float @dx.op.unary.f32(i32 6, float %9274)  ; FAbs(value)
  %9276 = fmul fast float %9275, %9261
  %9277 = call float @dx.op.unary.f32(i32 7, float %9273)  ; Saturate(value)
  %9278 = fsub fast float 1.000000e+00, %9276
  %9279 = fmul fast float %9278, %9277
  %9280 = fadd fast float %9279, %9276
  %9281 = fmul fast float %9264, %9257
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = fsub fast float 1.000000e+00, %9280
  %9284 = fmul fast float %9283, %9282
  %9285 = fadd fast float %9284, %9280
  %9286 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9287 = fadd fast float %9259, -1.000000e+00
  %9288 = select i1 %9258, float -1.000000e+00, float %9287
  %9289 = fmul fast float %9286, %9288
  %9290 = fadd fast float %9289, 1.000000e+00
  %9291 = fsub fast float -0.000000e+00, %9289
  %9292 = fmul fast float %9251, %9291
  %9293 = fmul fast float %9252, %9291
  %9294 = fmul fast float %9253, %9291
  br label %9295

; <label>:9295                                    ; preds = %9248, %8844
  %9296 = phi float [ %9249, %9248 ], [ 0.000000e+00, %8844 ]
  %9297 = phi float [ %9290, %9248 ], [ 1.000000e+00, %8844 ]
  %9298 = phi float [ %9292, %9248 ], [ 0.000000e+00, %8844 ]
  %9299 = phi float [ %9293, %9248 ], [ 0.000000e+00, %8844 ]
  %9300 = phi float [ %9294, %9248 ], [ 0.000000e+00, %8844 ]
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 1
  %9303 = fsub fast float 1.000000e+00, %9297
  %9304 = fmul fast float %9303, %8879
  %9305 = fmul fast float %9304, %9302
  %9306 = fsub fast float %8879, %9305
  br i1 %8872, label %9307, label %9336, !dx.controlflow.hints !172

; <label>:9307                                    ; preds = %9295
  %9308 = fmul fast float %8880, %8869
  %9309 = fadd fast float %9308, %8870
  %9310 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9311 = fmul fast float %8851, %9306
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = fmul fast float %8852, %9306
  %9314 = fsub fast float -0.000000e+00, %9313
  %9315 = call float @dx.op.unary.f32(i32 21, float %9312)  ; Exp(value)
  %9316 = call float @dx.op.unary.f32(i32 21, float %9314)  ; Exp(value)
  %9317 = call float @dx.op.binary.f32(i32 35, float %8859, float %9315)  ; FMax(a,b)
  %9318 = call float @dx.op.binary.f32(i32 35, float %8859, float %9316)  ; FMax(a,b)
  %9319 = fsub fast float %9318, %9317
  %9320 = fmul fast float %9319, %9310
  %9321 = fadd fast float %9320, %9317
  %9322 = call float @dx.op.unary.f32(i32 7, float %9321)  ; Saturate(value)
  %9323 = fsub fast float %8856, %8861
  %9324 = fsub fast float %8857, %8862
  %9325 = fsub fast float %8858, %8863
  %9326 = fmul fast float %9310, %9323
  %9327 = fmul fast float %9310, %9324
  %9328 = fmul fast float %9310, %9325
  %9329 = fadd fast float %9326, %8861
  %9330 = fadd fast float %9327, %8862
  %9331 = fadd fast float %9328, %8863
  %9332 = fsub fast float 1.000000e+00, %9322
  %9333 = fmul fast float %9332, %9329
  %9334 = fmul fast float %9332, %9330
  %9335 = fmul fast float %9332, %9331
  br label %9395

; <label>:9336                                    ; preds = %9295
  %9337 = fmul fast float %9306, %8868
  %9338 = call float @dx.op.unary.f32(i32 7, float %9337)  ; Saturate(value)
  %9339 = fsub fast float 2.000000e+00, %9338
  %9340 = fmul fast float %9338, 9.921875e-01
  %9341 = fmul fast float %9340, %9339
  %9342 = fadd fast float %9341, 3.906250e-03
  %9343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9342, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9344 = extractvalue %dx.types.ResRet.f32 %9343, 0
  %9345 = fsub fast float %9338, %9344
  %9346 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9345)  ; FMax(a,b)
  %9347 = fmul fast float %8854, %8835
  %9348 = call float @dx.op.unary.f32(i32 6, float %9347)  ; FAbs(value)
  %9349 = fcmp fast ogt float %9348, 0x3EB0C6F7A0000000
  br i1 %9349, label %9350, label %9356, !dx.controlflow.hints !173

; <label>:9350                                    ; preds = %9336
  %9351 = fmul fast float %9347, 0xBFF7154760000000
  %9352 = call float @dx.op.unary.f32(i32 21, float %9351)  ; Exp(value)
  %9353 = fsub fast float 1.000000e+00, %9352
  %9354 = fdiv fast float %9353, %9347
  %9355 = fmul fast float %9354, %8864
  br label %9356

; <label>:9356                                    ; preds = %9350, %9336
  %9357 = phi float [ %9355, %9350 ], [ %8864, %9336 ]
  %9358 = fadd fast float %9357, %8866
  %9359 = fmul fast float %9358, %9346
  %9360 = fmul fast float %8851, %9359
  %9361 = fsub fast float -0.000000e+00, %9360
  %9362 = fmul fast float %8852, %9359
  %9363 = fsub fast float -0.000000e+00, %9362
  %9364 = fmul fast float %8853, %9359
  %9365 = fsub fast float -0.000000e+00, %9364
  %9366 = call float @dx.op.unary.f32(i32 21, float %9361)  ; Exp(value)
  %9367 = call float @dx.op.unary.f32(i32 21, float %9363)  ; Exp(value)
  %9368 = call float @dx.op.unary.f32(i32 21, float %9365)  ; Exp(value)
  %9369 = fmul fast float %8880, %8880
  %9370 = fadd fast float %9369, 1.000000e+00
  %9371 = fmul fast float %9370, 0x3FAE8EC8A0000000
  %9372 = fmul fast float %9371, %8861
  %9373 = fmul fast float %9371, %8862
  %9374 = fmul fast float %9371, %8863
  %9375 = fmul fast float %8880, %8859
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = fmul fast float %8859, %8859
  %9378 = fsub fast float 1.000000e+00, %9377
  %9379 = fmul fast float %9378, 0x3FB45F3060000000
  %9380 = fmul fast float %9376, %9376
  %9381 = fdiv fast float 1.000000e+00, %9380
  %9382 = fmul fast float %9379, %9381
  %9383 = fmul fast float %9382, %8856
  %9384 = fmul fast float %9382, %8857
  %9385 = fmul fast float %9382, %8858
  %9386 = fadd fast float %9383, %9372
  %9387 = fadd fast float %9384, %9373
  %9388 = fadd fast float %9385, %9374
  %9389 = fsub fast float 1.000000e+00, %9366
  %9390 = fsub fast float 1.000000e+00, %9367
  %9391 = fsub fast float 1.000000e+00, %9368
  %9392 = fmul fast float %9386, %9389
  %9393 = fmul fast float %9387, %9390
  %9394 = fmul fast float %9388, %9391
  br label %9395

; <label>:9395                                    ; preds = %9356, %9307
  %9396 = phi float [ %9333, %9307 ], [ %9392, %9356 ]
  %9397 = phi float [ %9334, %9307 ], [ %9393, %9356 ]
  %9398 = phi float [ %9335, %9307 ], [ %9394, %9356 ]
  %9399 = phi float [ %9322, %9307 ], [ %9366, %9356 ]
  %9400 = phi float [ %9322, %9307 ], [ %9367, %9356 ]
  %9401 = phi float [ %9322, %9307 ], [ %9368, %9356 ]
  br i1 %8888, label %9402, label %9600, !dx.controlflow.hints !174

; <label>:9402                                    ; preds = %9395
  %9403 = extractvalue %dx.types.CBufRet.f32 %9301, 0
  %9404 = fmul fast float %9403, %9303
  %9405 = fsub fast float %9298, %9396
  %9406 = fsub fast float %9299, %9397
  %9407 = fsub fast float %9300, %9398
  %9408 = fmul fast float %9404, %9405
  %9409 = fmul fast float %9404, %9406
  %9410 = fmul fast float %9404, %9407
  %9411 = fadd fast float %9408, %9396
  %9412 = fadd fast float %9409, %9397
  %9413 = fadd fast float %9410, %9398
  %9414 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9399)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9400)  ; FMax(a,b)
  %9416 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9401)  ; FMax(a,b)
  %9417 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9297)  ; FMax(a,b)
  %9418 = call float @dx.op.binary.f32(i32 35, float %9296, float %9306)  ; FMax(a,b)
  %9419 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9418)  ; FMax(a,b)
  %9420 = fdiv fast float %9296, %9419
  %9421 = call float @dx.op.unary.f32(i32 7, float %9420)  ; Saturate(value)
  %9422 = fdiv fast float %9306, %9419
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = fcmp fast une float %9417, 1.000000e+00
  br i1 %9424, label %9425, label %9438, !dx.controlflow.hints !175

; <label>:9425                                    ; preds = %9402
  %9426 = call float @dx.op.unary.f32(i32 23, float %9417)  ; Log(value)
  %9427 = fmul fast float %9426, 0x3FE62E4300000000
  %9428 = fmul fast float %9298, %9427
  %9429 = fsub fast float -0.000000e+00, %9428
  %9430 = fmul fast float %9299, %9427
  %9431 = fsub fast float -0.000000e+00, %9430
  %9432 = fmul fast float %9300, %9427
  %9433 = fsub fast float -0.000000e+00, %9432
  %9434 = fsub fast float 1.000000e+00, %9417
  %9435 = fdiv fast float %9429, %9434
  %9436 = fdiv fast float %9431, %9434
  %9437 = fdiv fast float %9433, %9434
  br label %9438

; <label>:9438                                    ; preds = %9425, %9402
  %9439 = phi float [ %9435, %9425 ], [ %9298, %9402 ]
  %9440 = phi float [ %9436, %9425 ], [ %9299, %9402 ]
  %9441 = phi float [ %9437, %9425 ], [ %9300, %9402 ]
  %9442 = phi float [ %9427, %9425 ], [ 0.000000e+00, %9402 ]
  %9443 = fcmp fast une float %9414, 1.000000e+00
  br i1 %9443, label %9444, label %9451, !dx.controlflow.hints !176

; <label>:9444                                    ; preds = %9438
  %9445 = call float @dx.op.unary.f32(i32 23, float %9414)  ; Log(value)
  %9446 = fmul fast float %9445, 0x3FE62E4300000000
  %9447 = fmul fast float %9411, %9446
  %9448 = fsub fast float -0.000000e+00, %9447
  %9449 = fsub fast float 1.000000e+00, %9414
  %9450 = fdiv fast float %9448, %9449
  br label %9451

; <label>:9451                                    ; preds = %9444, %9438
  %9452 = phi float [ %9450, %9444 ], [ %9411, %9438 ]
  %9453 = phi float [ %9446, %9444 ], [ 0.000000e+00, %9438 ]
  %9454 = fcmp fast une float %9415, 1.000000e+00
  br i1 %9454, label %9455, label %9462, !dx.controlflow.hints !176

; <label>:9455                                    ; preds = %9451
  %9456 = call float @dx.op.unary.f32(i32 23, float %9415)  ; Log(value)
  %9457 = fmul fast float %9456, 0x3FE62E4300000000
  %9458 = fmul fast float %9412, %9457
  %9459 = fsub fast float -0.000000e+00, %9458
  %9460 = fsub fast float 1.000000e+00, %9415
  %9461 = fdiv fast float %9459, %9460
  br label %9462

; <label>:9462                                    ; preds = %9455, %9451
  %9463 = phi float [ %9461, %9455 ], [ %9412, %9451 ]
  %9464 = phi float [ %9457, %9455 ], [ 0.000000e+00, %9451 ]
  %9465 = fcmp fast une float %9416, 1.000000e+00
  br i1 %9465, label %9466, label %9473, !dx.controlflow.hints !176

; <label>:9466                                    ; preds = %9462
  %9467 = call float @dx.op.unary.f32(i32 23, float %9416)  ; Log(value)
  %9468 = fmul fast float %9467, 0x3FE62E4300000000
  %9469 = fmul fast float %9413, %9468
  %9470 = fsub fast float -0.000000e+00, %9469
  %9471 = fsub fast float 1.000000e+00, %9416
  %9472 = fdiv fast float %9470, %9471
  br label %9473

; <label>:9473                                    ; preds = %9466, %9462
  %9474 = phi float [ %9472, %9466 ], [ %9413, %9462 ]
  %9475 = phi float [ %9468, %9466 ], [ 0.000000e+00, %9462 ]
  %9476 = fmul fast float %9439, %9423
  %9477 = fmul fast float %9440, %9423
  %9478 = fmul fast float %9441, %9423
  %9479 = fmul fast float %9442, %9423
  %9480 = fmul fast float %9452, %9421
  %9481 = fmul fast float %9463, %9421
  %9482 = fmul fast float %9474, %9421
  %9483 = fmul fast float %9453, %9421
  %9484 = fmul fast float %9464, %9421
  %9485 = fmul fast float %9475, %9421
  %9486 = fadd fast float %9480, %9476
  %9487 = fadd fast float %9481, %9477
  %9488 = fadd fast float %9482, %9478
  %9489 = fadd fast float %9483, %9479
  %9490 = fadd fast float %9484, %9479
  %9491 = fadd fast float %9485, %9479
  %9492 = fcmp fast une float %9489, 0.000000e+00
  br i1 %9492, label %9493, label %9500, !dx.controlflow.hints !177

; <label>:9493                                    ; preds = %9473
  %9494 = fmul fast float %9489, 0x3FF7154760000000
  %9495 = call float @dx.op.unary.f32(i32 21, float %9494)  ; Exp(value)
  %9496 = fsub fast float 1.000000e+00, %9495
  %9497 = fmul fast float %9486, %9496
  %9498 = fsub fast float -0.000000e+00, %9497
  %9499 = fdiv fast float %9498, %9489
  br label %9500

; <label>:9500                                    ; preds = %9493, %9473
  %9501 = phi float [ %9495, %9493 ], [ 1.000000e+00, %9473 ]
  %9502 = phi float [ %9499, %9493 ], [ %9486, %9473 ]
  %9503 = fcmp fast une float %9490, 0.000000e+00
  br i1 %9503, label %9504, label %9511, !dx.controlflow.hints !177

; <label>:9504                                    ; preds = %9500
  %9505 = fmul fast float %9490, 0x3FF7154760000000
  %9506 = call float @dx.op.unary.f32(i32 21, float %9505)  ; Exp(value)
  %9507 = fsub fast float 1.000000e+00, %9506
  %9508 = fmul fast float %9487, %9507
  %9509 = fsub fast float -0.000000e+00, %9508
  %9510 = fdiv fast float %9509, %9490
  br label %9511

; <label>:9511                                    ; preds = %9504, %9500
  %9512 = phi float [ %9506, %9504 ], [ 1.000000e+00, %9500 ]
  %9513 = phi float [ %9510, %9504 ], [ %9487, %9500 ]
  %9514 = fcmp fast une float %9491, 0.000000e+00
  br i1 %9514, label %9515, label %9522, !dx.controlflow.hints !177

; <label>:9515                                    ; preds = %9511
  %9516 = fmul fast float %9491, 0x3FF7154760000000
  %9517 = call float @dx.op.unary.f32(i32 21, float %9516)  ; Exp(value)
  %9518 = fsub fast float 1.000000e+00, %9517
  %9519 = fmul fast float %9488, %9518
  %9520 = fsub fast float -0.000000e+00, %9519
  %9521 = fdiv fast float %9520, %9491
  br label %9522

; <label>:9522                                    ; preds = %9515, %9511
  %9523 = phi float [ %9517, %9515 ], [ 1.000000e+00, %9511 ]
  %9524 = phi float [ %9521, %9515 ], [ %9488, %9511 ]
  %9525 = fcmp fast ogt float %9421, %9423
  br i1 %9525, label %9526, label %9546

; <label>:9526                                    ; preds = %9522
  %9527 = fsub fast float 1.000000e+00, %9423
  %9528 = fmul fast float %9439, %9527
  %9529 = fmul fast float %9440, %9527
  %9530 = fmul fast float %9441, %9527
  %9531 = fmul fast float %9442, %9527
  %9532 = fcmp fast une float %9531, 0.000000e+00
  br i1 %9532, label %9533, label %9584, !dx.controlflow.hints !178

; <label>:9533                                    ; preds = %9526
  %9534 = fmul fast float %9531, 0x3FF7154760000000
  %9535 = call float @dx.op.unary.f32(i32 21, float %9534)  ; Exp(value)
  %9536 = fsub fast float 1.000000e+00, %9535
  %9537 = fmul fast float %9528, %9536
  %9538 = fsub fast float -0.000000e+00, %9537
  %9539 = fmul fast float %9529, %9536
  %9540 = fsub fast float -0.000000e+00, %9539
  %9541 = fmul fast float %9530, %9536
  %9542 = fsub fast float -0.000000e+00, %9541
  %9543 = fdiv fast float %9538, %9531
  %9544 = fdiv fast float %9540, %9531
  %9545 = fdiv fast float %9542, %9531
  br label %9584

; <label>:9546                                    ; preds = %9522
  %9547 = fsub fast float 1.000000e+00, %9421
  %9548 = fmul fast float %9452, %9547
  %9549 = fmul fast float %9463, %9547
  %9550 = fmul fast float %9474, %9547
  %9551 = fmul fast float %9453, %9547
  %9552 = fmul fast float %9464, %9547
  %9553 = fmul fast float %9475, %9547
  %9554 = fcmp fast une float %9551, 0.000000e+00
  br i1 %9554, label %9555, label %9562, !dx.controlflow.hints !177

; <label>:9555                                    ; preds = %9546
  %9556 = fmul fast float %9551, 0x3FF7154760000000
  %9557 = call float @dx.op.unary.f32(i32 21, float %9556)  ; Exp(value)
  %9558 = fsub fast float 1.000000e+00, %9557
  %9559 = fmul fast float %9548, %9558
  %9560 = fsub fast float -0.000000e+00, %9559
  %9561 = fdiv fast float %9560, %9551
  br label %9562

; <label>:9562                                    ; preds = %9555, %9546
  %9563 = phi float [ %9561, %9555 ], [ %9548, %9546 ]
  %9564 = phi float [ %9557, %9555 ], [ 1.000000e+00, %9546 ]
  %9565 = fcmp fast une float %9552, 0.000000e+00
  br i1 %9565, label %9566, label %9573, !dx.controlflow.hints !177

; <label>:9566                                    ; preds = %9562
  %9567 = fmul fast float %9552, 0x3FF7154760000000
  %9568 = call float @dx.op.unary.f32(i32 21, float %9567)  ; Exp(value)
  %9569 = fsub fast float 1.000000e+00, %9568
  %9570 = fmul fast float %9549, %9569
  %9571 = fsub fast float -0.000000e+00, %9570
  %9572 = fdiv fast float %9571, %9552
  br label %9573

; <label>:9573                                    ; preds = %9566, %9562
  %9574 = phi float [ %9572, %9566 ], [ %9549, %9562 ]
  %9575 = phi float [ %9568, %9566 ], [ 1.000000e+00, %9562 ]
  %9576 = fcmp fast une float %9553, 0.000000e+00
  br i1 %9576, label %9577, label %9584, !dx.controlflow.hints !177

; <label>:9577                                    ; preds = %9573
  %9578 = fmul fast float %9553, 0x3FF7154760000000
  %9579 = call float @dx.op.unary.f32(i32 21, float %9578)  ; Exp(value)
  %9580 = fsub fast float 1.000000e+00, %9579
  %9581 = fmul fast float %9550, %9580
  %9582 = fsub fast float -0.000000e+00, %9581
  %9583 = fdiv fast float %9582, %9553
  br label %9584

; <label>:9584                                    ; preds = %9577, %9573, %9533, %9526
  %9585 = phi float [ %9583, %9577 ], [ %9545, %9533 ], [ %9530, %9526 ], [ %9550, %9573 ]
  %9586 = phi float [ %9574, %9577 ], [ %9544, %9533 ], [ %9529, %9526 ], [ %9574, %9573 ]
  %9587 = phi float [ %9563, %9577 ], [ %9543, %9533 ], [ %9528, %9526 ], [ %9563, %9573 ]
  %9588 = phi float [ %9579, %9577 ], [ %9535, %9533 ], [ 1.000000e+00, %9526 ], [ 1.000000e+00, %9573 ]
  %9589 = phi float [ %9575, %9577 ], [ %9535, %9533 ], [ 1.000000e+00, %9526 ], [ %9575, %9573 ]
  %9590 = phi float [ %9564, %9577 ], [ %9535, %9533 ], [ 1.000000e+00, %9526 ], [ %9564, %9573 ]
  %9591 = fmul fast float %9590, %9502
  %9592 = fmul fast float %9589, %9513
  %9593 = fmul fast float %9588, %9524
  %9594 = fadd fast float %9591, %9587
  %9595 = fadd fast float %9592, %9586
  %9596 = fadd fast float %9593, %9585
  %9597 = fmul fast float %9590, %9501
  %9598 = fmul fast float %9589, %9512
  %9599 = fmul fast float %9588, %9523
  br label %9600

; <label>:9600                                    ; preds = %9584, %9395
  %9601 = phi float [ %9599, %9584 ], [ %9401, %9395 ]
  %9602 = phi float [ %9598, %9584 ], [ %9400, %9395 ]
  %9603 = phi float [ %9597, %9584 ], [ %9399, %9395 ]
  %9604 = phi float [ %9596, %9584 ], [ %9398, %9395 ]
  %9605 = phi float [ %9595, %9584 ], [ %9397, %9395 ]
  %9606 = phi float [ %9594, %9584 ], [ %9396, %9395 ]
  %9607 = fmul fast float %9606, %8552
  %9608 = fmul fast float %9605, %8552
  %9609 = fmul fast float %9604, %8552
  %9610 = fmul fast float %9603, %8843
  %9611 = call float @dx.op.dot3.f32(i32 55, float %9603, float %9602, float %9601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9612 = call float @dx.op.dot3.f32(i32 55, float %9607, float %9608, float %9609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9613 = select i1 %232, float %9611, float %9603
  %9614 = select i1 %232, float %9611, float %9602
  %9615 = select i1 %232, float 1.000000e+00, float %9601
  %9616 = select i1 %232, float %9612, float %9607
  %9617 = select i1 %232, float 0.000000e+00, float %9608
  %9618 = select i1 %232, float 0.000000e+00, float %9609
  %9619 = fmul fast float %9613, %8837
  %9620 = fmul fast float %9614, %8838
  %9621 = fmul fast float %9615, %8839
  %9622 = fadd fast float %9619, %9616
  %9623 = fadd fast float %9620, %9617
  %9624 = fadd fast float %9618, %9621
  %9625 = fmul fast float %9613, %8840
  %9626 = fmul fast float %9614, %8841
  %9627 = fmul fast float %9615, %8842
  %9628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9629 = extractvalue %dx.types.CBufRet.i32 %9628, 0
  %9630 = icmp eq i32 %9629, 0
  br i1 %9630, label %9998, label %9631, !dx.controlflow.hints !179

; <label>:9631                                    ; preds = %9600
  %9632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9633 = extractvalue %dx.types.CBufRet.f32 %9632, 2
  %9634 = extractvalue %dx.types.CBufRet.f32 %9632, 3
  %9635 = fmul fast float %9633, %111
  %9636 = fmul fast float %9634, %112
  %9637 = fmul fast float %9635, 2.000000e+00
  %9638 = fmul fast float %9636, 2.000000e+00
  %9639 = fsub fast float 1.000000e+00, %9637
  %9640 = fsub fast float 1.000000e+00, %9638
  %9641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9642 = extractvalue %dx.types.CBufRet.f32 %9641, 0
  %9643 = extractvalue %dx.types.CBufRet.f32 %9641, 1
  %9644 = extractvalue %dx.types.CBufRet.f32 %9641, 2
  %9645 = fmul fast float %9639, %9642
  %9646 = fmul fast float %9639, %9643
  %9647 = fmul fast float %9639, %9644
  %9648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.f32 %9648, 0
  %9650 = extractvalue %dx.types.CBufRet.f32 %9648, 1
  %9651 = extractvalue %dx.types.CBufRet.f32 %9648, 2
  %9652 = fmul fast float %9640, %9649
  %9653 = fmul fast float %9640, %9650
  %9654 = fmul fast float %9640, %9651
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 0
  %9657 = extractvalue %dx.types.CBufRet.f32 %9655, 1
  %9658 = extractvalue %dx.types.CBufRet.f32 %9655, 2
  %9659 = fadd fast float %9652, %9656
  %9660 = fadd fast float %9659, %9645
  %9661 = fadd fast float %9653, %9657
  %9662 = fadd fast float %9661, %9646
  %9663 = fadd fast float %9654, %9658
  %9664 = fadd fast float %9663, %9647
  %9665 = fmul fast float %9660, %8836
  %9666 = fmul fast float %9662, %8836
  %9667 = fmul fast float %9664, %8836
  %9668 = fmul fast float %9665, %9665
  %9669 = fmul fast float %9666, %9666
  %9670 = fadd fast float %9668, %9669
  %9671 = fmul fast float %9667, %9667
  %9672 = fadd fast float %9670, %9671
  %9673 = call float @dx.op.unary.f32(i32 24, float %9672)  ; Sqrt(value)
  %9674 = extractvalue %dx.types.CBufRet.f32 %8563, 0
  %9675 = fsub fast float %9673, %9674
  %9676 = extractvalue %dx.types.CBufRet.f32 %8563, 2
  %9677 = fmul fast float %9675, %9676
  %9678 = call float @dx.op.unary.f32(i32 7, float %9677)  ; Saturate(value)
  %9679 = fadd fast float %9678, -5.000000e-01
  %9680 = fmul fast float %9679, 2.000000e+00
  %9681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.f32 %9681, 2
  %9683 = call float @dx.op.binary.f32(i32 36, float %9682, float %9680)  ; FMin(a,b)
  %9684 = fsub fast float -0.000000e+00, %9682
  %9685 = fcmp fast ogt float %9683, %9684
  br i1 %9685, label %9686, label %9998, !dx.controlflow.hints !180

; <label>:9686                                    ; preds = %9631
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 3
  %9689 = fcmp fast ogt float %9688, 0.000000e+00
  br i1 %9689, label %9690, label %9765, !dx.controlflow.hints !181

; <label>:9690                                    ; preds = %9686
  %9691 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9692 = extractvalue %dx.types.Dimensions %9691, 0
  %9693 = sitofp i32 %9692 to float
  %9694 = extractvalue %dx.types.Dimensions %9691, 1
  %9695 = sitofp i32 %9694 to float
  %9696 = fmul fast float %9635, %9693
  %9697 = fmul fast float %9636, %9695
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 1
  %9700 = fsub fast float -0.000000e+00, %9699
  %9701 = fptoui float %9700 to i32
  %9702 = fptoui float %9696 to i32
  %9703 = fptoui float %9697 to i32
  %9704 = and i32 %9701, 31
  %9705 = lshr i32 %9702, %9704
  %9706 = lshr i32 %9703, %9704
  %9707 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9701, i32 %9705, i32 %9706, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9708 = extractvalue %dx.types.ResRet.f32 %9707, 0
  %9709 = fcmp fast olt float %9708, -1.000000e+00
  %9710 = fcmp fast ogt float %9708, -1.000000e+00
  %9711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9712 = extractvalue %dx.types.CBufRet.f32 %9711, 1
  %9713 = select i1 %9710, float %9712, float 1.000000e+00
  %9714 = fadd fast float %9708, 1.000000e+00
  %9715 = fmul fast float %9713, %9714
  %9716 = call float @dx.op.unary.f32(i32 6, float %9715)  ; FAbs(value)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9711, 3
  %9718 = fcmp fast oge float %9716, %9717
  %9719 = select i1 %9718, float 0x4197782600000000, float %9716
  %9720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.f32 %9720, 0
  %9722 = extractvalue %dx.types.CBufRet.f32 %9720, 1
  %9723 = extractvalue %dx.types.CBufRet.f32 %9720, 2
  %9724 = select i1 %9709, float %9721, float %9642
  %9725 = select i1 %9709, float %9722, float %9643
  %9726 = select i1 %9709, float %9723, float %9644
  %9727 = fmul fast float %9724, %9639
  %9728 = fmul fast float %9725, %9639
  %9729 = fmul fast float %9726, %9639
  %9730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9731 = extractvalue %dx.types.CBufRet.f32 %9730, 0
  %9732 = extractvalue %dx.types.CBufRet.f32 %9730, 1
  %9733 = extractvalue %dx.types.CBufRet.f32 %9730, 2
  %9734 = select i1 %9709, float %9731, float %9649
  %9735 = select i1 %9709, float %9732, float %9650
  %9736 = select i1 %9709, float %9733, float %9651
  %9737 = fmul fast float %9734, %9640
  %9738 = fmul fast float %9735, %9640
  %9739 = fmul fast float %9736, %9640
  %9740 = fadd fast float %9737, %9727
  %9741 = fadd fast float %9738, %9728
  %9742 = fadd fast float %9739, %9729
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 0
  %9745 = extractvalue %dx.types.CBufRet.f32 %9743, 1
  %9746 = extractvalue %dx.types.CBufRet.f32 %9743, 2
  %9747 = select i1 %9709, float %9744, float %9656
  %9748 = select i1 %9709, float %9745, float %9657
  %9749 = select i1 %9709, float %9746, float %9658
  %9750 = fadd fast float %9740, %9747
  %9751 = fadd fast float %9741, %9748
  %9752 = fadd fast float %9742, %9749
  %9753 = fmul fast float %9750, %9719
  %9754 = fmul fast float %9751, %9719
  %9755 = fmul fast float %9752, %9719
  %9756 = fmul fast float %9753, %9753
  %9757 = fmul fast float %9754, %9754
  %9758 = fadd fast float %9756, %9757
  %9759 = fmul fast float %9755, %9755
  %9760 = fadd fast float %9758, %9759
  %9761 = call float @dx.op.unary.f32(i32 24, float %9760)  ; Sqrt(value)
  %9762 = fsub fast float %9761, %9674
  %9763 = fmul fast float %9762, %9676
  %9764 = call float @dx.op.unary.f32(i32 7, float %9763)  ; Saturate(value)
  br label %9765

; <label>:9765                                    ; preds = %9690, %9686
  %9766 = phi float [ %9764, %9690 ], [ 1.000000e+00, %9686 ]
  %9767 = fmul fast float %9683, 5.000000e-01
  %9768 = fadd fast float %9767, 5.000000e-01
  %9769 = call float @dx.op.unary.f32(i32 22, float %9768)  ; Frc(value)
  %9770 = call float @dx.op.unary.f32(i32 27, float %9769)  ; Round_ni(value)
  %9771 = call float @dx.op.unary.f32(i32 22, float %9769)  ; Frc(value)
  %9772 = fmul fast float %9771, 2.000000e+00
  %9773 = fadd fast float %9772, -1.000000e+00
  %9774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9635, float %9636, float %9770, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9775 = extractvalue %dx.types.ResRet.f32 %9774, 0
  %9776 = extractvalue %dx.types.ResRet.f32 %9774, 1
  %9777 = extractvalue %dx.types.ResRet.f32 %9774, 2
  %9778 = extractvalue %dx.types.ResRet.f32 %9774, 3
  %9779 = fadd fast float %9775, -5.000000e-01
  %9780 = fadd fast float %9777, -5.000000e-01
  %9781 = fmul fast float %9779, 0xBFD5555560000000
  %9782 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9780, float %9781)  ; FMad(a,b,c)
  %9783 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9776, float 0.000000e+00)  ; FMad(a,b,c)
  %9784 = fadd fast float %9783, %9778
  %9785 = fmul fast float %9779, -7.500000e-01
  %9786 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9780, float %9785)  ; FMad(a,b,c)
  %9787 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9776, float 0.000000e+00)  ; FMad(a,b,c)
  %9788 = fadd fast float %9787, %9778
  %9789 = call float @dx.op.binary.f32(i32 35, float %9782, float -1.000000e+00)  ; FMax(a,b)
  %9790 = call float @dx.op.binary.f32(i32 35, float %9784, float -1.000000e+00)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 35, float %9786, float -1.000000e+00)  ; FMax(a,b)
  %9792 = call float @dx.op.binary.f32(i32 35, float %9788, float -1.000000e+00)  ; FMax(a,b)
  %9793 = call float @dx.op.binary.f32(i32 36, float %9789, float 1.000000e+00)  ; FMin(a,b)
  %9794 = call float @dx.op.binary.f32(i32 36, float %9790, float 1.000000e+00)  ; FMin(a,b)
  %9795 = call float @dx.op.binary.f32(i32 36, float %9791, float 1.000000e+00)  ; FMin(a,b)
  %9796 = call float @dx.op.binary.f32(i32 36, float %9792, float 1.000000e+00)  ; FMin(a,b)
  %9797 = fcmp fast olt float %9793, 0x3FEFFF8020000000
  br i1 %9797, label %9798, label %9913, !dx.controlflow.hints !182

; <label>:9798                                    ; preds = %9765
  %9799 = extractvalue %dx.types.CBufRet.f32 %9681, 3
  %9800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9801 = extractvalue %dx.types.CBufRet.f32 %9800, 0
  %9802 = extractvalue %dx.types.CBufRet.f32 %9800, 1
  %9803 = extractvalue %dx.types.CBufRet.f32 %9800, 2
  %9804 = extractvalue %dx.types.CBufRet.f32 %9800, 3
  %9805 = fsub fast float %9801, %9793
  %9806 = fsub fast float %9802, %9794
  %9807 = fsub fast float %9803, %9795
  %9808 = fsub fast float %9804, %9796
  %9809 = fmul fast float %9805, %9799
  %9810 = fmul fast float %9806, %9799
  %9811 = fmul fast float %9807, %9799
  %9812 = fmul fast float %9808, %9799
  %9813 = fadd fast float %9809, %9793
  %9814 = fadd fast float %9810, %9794
  %9815 = fsub fast float -0.000000e+00, %9814
  %9816 = fadd fast float %9811, %9795
  %9817 = fadd fast float %9812, %9796
  %9818 = fmul fast float %9813, %9813
  %9819 = fsub fast float %9814, %9818
  %9820 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9819)  ; FMax(a,b)
  %9821 = fdiv fast float 1.000000e+00, %9820
  %9822 = fmul fast float %9814, %9813
  %9823 = fsub fast float %9816, %9822
  %9824 = fsub fast float %9773, %9813
  %9825 = fmul fast float %9773, %9773
  %9826 = fsub fast float %9825, %9814
  %9827 = fmul fast float %9824, %9821
  %9828 = fmul fast float %9827, %9823
  %9829 = fsub fast float %9826, %9828
  %9830 = fmul fast float %9814, %9814
  %9831 = fsub fast float %9817, %9830
  %9832 = fmul fast float %9823, %9823
  %9833 = fmul fast float %9832, %9821
  %9834 = fsub fast float %9831, %9833
  %9835 = fdiv fast float %9829, %9834
  %9836 = fmul fast float %9823, %9835
  %9837 = fsub fast float %9824, %9836
  %9838 = fmul fast float %9837, %9821
  %9839 = fmul fast float %9838, %9813
  %9840 = fsub fast float 1.000000e+00, %9839
  %9841 = fmul fast float %9814, %9835
  %9842 = fsub fast float %9840, %9841
  %9843 = fmul fast float %9838, %9838
  %9844 = fmul fast float %9835, 4.000000e+00
  %9845 = fmul fast float %9844, %9842
  %9846 = fsub fast float %9843, %9845
  %9847 = call float @dx.op.unary.f32(i32 24, float %9846)  ; Sqrt(value)
  %9848 = fcmp fast oge float %9838, 0.000000e+00
  %9849 = fsub fast float -0.000000e+00, %9847
  %9850 = select i1 %9848, float %9849, float %9847
  %9851 = fsub fast float %9850, %9838
  %9852 = fdiv fast float %9851, %9835
  %9853 = fdiv fast float %9842, %9851
  %9854 = fmul fast float %9852, 5.000000e-01
  %9855 = fmul fast float %9853, 2.000000e+00
  %9856 = select i1 %9848, float %9854, float %9855
  %9857 = select i1 %9848, float %9855, float %9854
  %9858 = call float @dx.op.binary.f32(i32 35, float %9856, float %9857)  ; FMax(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9856, float %9857)  ; FMin(a,b)
  %9860 = fcmp fast ogt float %9773, %9859
  br i1 %9860, label %9861, label %9871

; <label>:9861                                    ; preds = %9798
  %9862 = fsub fast float %9773, %9859
  %9863 = fsub fast float %9858, %9859
  %9864 = fmul fast float %9862, %9863
  %9865 = fmul fast float %9858, %9773
  %9866 = fadd fast float %9858, %9773
  %9867 = fmul fast float %9866, %9813
  %9868 = fadd fast float %9865, %9814
  %9869 = fsub fast float %9868, %9867
  %9870 = fdiv fast float %9869, %9864
  br label %9871

; <label>:9871                                    ; preds = %9861, %9798
  %9872 = phi float [ %9870, %9861 ], [ 0.000000e+00, %9798 ]
  %9873 = fcmp fast ogt float %9773, %9858
  %9874 = fsub fast float %9773, %9858
  br i1 %9873, label %9875, label %9885

; <label>:9875                                    ; preds = %9871
  %9876 = fsub fast float %9858, %9859
  %9877 = fmul fast float %9876, %9874
  %9878 = fmul fast float %9859, %9773
  %9879 = fadd fast float %9859, %9773
  %9880 = fmul fast float %9879, %9813
  %9881 = fsub fast float %9815, %9878
  %9882 = fadd fast float %9881, %9880
  %9883 = fdiv fast float %9882, %9877
  %9884 = fadd fast float %9883, %9872
  br label %9885

; <label>:9885                                    ; preds = %9875, %9871
  %9886 = phi float [ %9884, %9875 ], [ %9872, %9871 ]
  %9887 = fsub fast float %9773, %9859
  %9888 = fmul fast float %9887, %9874
  %9889 = fmul fast float %9859, %9858
  %9890 = fadd fast float %9859, %9858
  %9891 = fmul fast float %9890, %9813
  %9892 = fadd fast float %9889, %9814
  %9893 = fsub fast float %9892, %9891
  %9894 = fdiv fast float %9893, %9888
  %9895 = call float @dx.op.unary.f32(i32 7, float %9886)  ; Saturate(value)
  %9896 = fcmp fast oeq float %8564, 0.000000e+00
  %9897 = extractvalue %dx.types.CBufRet.f32 %9681, 0
  %9898 = fcmp fast oeq float %9897, 0.000000e+00
  %9899 = or i1 %9896, %9898
  %9900 = fmul fast float %9897, 2.000000e+00
  %9901 = fadd fast float %9682, %9683
  %9902 = fdiv fast float %9901, %9900
  %9903 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9904 = fmul fast float %9903, 2.000000e+00
  %9905 = fsub fast float 3.000000e+00, %9904
  %9906 = fmul fast float %9903, %9903
  %9907 = fmul fast float %9906, %9905
  %9908 = select i1 %9899, float 1.000000e+00, float %9907
  %9909 = fmul fast float %9894, %8564
  %9910 = fadd fast float %9895, %9909
  %9911 = call float @dx.op.unary.f32(i32 7, float %9910)  ; Saturate(value)
  %9912 = fmul fast float %9908, %9911
  br label %9913

; <label>:9913                                    ; preds = %9885, %9765
  %9914 = phi float [ %9912, %9885 ], [ 0.000000e+00, %9765 ]
  %9915 = fsub fast float 1.000000e+00, %9914
  %9916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9635, float %9636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9917 = extractvalue %dx.types.ResRet.f32 %9916, 0
  %9918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.i32 %9918, 2
  %9920 = icmp eq i32 %9919, 0
  br i1 %9920, label %9926, label %9921

; <label>:9921                                    ; preds = %9913
  %9922 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9923 = fadd fast float %9917, -1.000000e+00
  %9924 = fmul fast float %9922, %9923
  %9925 = fadd fast float %9924, 1.000000e+00
  br label %9926

; <label>:9926                                    ; preds = %9921, %9913
  %9927 = phi float [ %9925, %9921 ], [ %9915, %9913 ]
  br i1 %9689, label %9928, label %9946

; <label>:9928                                    ; preds = %9926
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 1
  %9931 = fsub fast float %9766, %9930
  %9932 = call float @dx.op.unary.f32(i32 7, float %9931)  ; Saturate(value)
  %9933 = fsub fast float %9766, %9688
  %9934 = call float @dx.op.unary.f32(i32 7, float %9933)  ; Saturate(value)
  %9935 = fsub fast float %9932, %9934
  %9936 = fsub fast float %9768, %9934
  %9937 = fdiv fast float %9936, %9935
  %9938 = call float @dx.op.unary.f32(i32 7, float %9937)  ; Saturate(value)
  %9939 = fmul fast float %9938, 2.000000e+00
  %9940 = fsub fast float 3.000000e+00, %9939
  %9941 = fsub fast float %9917, %9927
  %9942 = fmul fast float %9938, %9938
  %9943 = fmul fast float %9942, %9941
  %9944 = fmul fast float %9943, %9940
  %9945 = fadd fast float %9944, %9927
  br label %9946

; <label>:9946                                    ; preds = %9928, %9926
  %9947 = phi float [ %9945, %9928 ], [ %9927, %9926 ]
  %9948 = call float @dx.op.binary.f32(i32 35, float %9917, float %9947)  ; FMax(a,b)
  %9949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9950 = extractvalue %dx.types.CBufRet.i32 %9949, 2
  %9951 = and i32 %9950, 1
  %9952 = icmp eq i32 %9951, 0
  %9953 = fcmp fast une float %9948, 1.000000e+00
  %9954 = and i1 %9953, %9952
  br i1 %9954, label %9955, label %9974

; <label>:9955                                    ; preds = %9946
  %9956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9635, float %9636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9957 = extractvalue %dx.types.ResRet.f32 %9956, 0
  %9958 = extractvalue %dx.types.ResRet.f32 %9956, 1
  %9959 = extractvalue %dx.types.ResRet.f32 %9956, 2
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 1
  %9962 = fmul fast float %9961, %9957
  %9963 = fmul fast float %9961, %9958
  %9964 = fmul fast float %9961, %9959
  %9965 = fcmp fast ogt float %9917, 0x3FEFFF2E40000000
  %9966 = fsub fast float 1.000000e+00, %9948
  %9967 = fsub fast float 1.000000e+00, %9917
  %9968 = fdiv fast float %9966, %9967
  %9969 = call float @dx.op.unary.f32(i32 7, float %9968)  ; Saturate(value)
  %9970 = select i1 %9965, float 0.000000e+00, float %9969
  %9971 = fmul fast float %9962, %9970
  %9972 = fmul fast float %9963, %9970
  %9973 = fmul fast float %9964, %9970
  br label %9974

; <label>:9974                                    ; preds = %9955, %9946
  %9975 = phi float [ 0.000000e+00, %9946 ], [ %9971, %9955 ]
  %9976 = phi float [ 0.000000e+00, %9946 ], [ %9972, %9955 ]
  %9977 = phi float [ 0.000000e+00, %9946 ], [ %9973, %9955 ]
  %9978 = fmul fast float %9975, %8552
  %9979 = fmul fast float %9976, %8552
  %9980 = fmul fast float %9977, %8552
  %9981 = fmul fast float %9948, %9610
  %9982 = call float @dx.op.dot3.f32(i32 55, float %9948, float %9948, float %9948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9983 = call float @dx.op.dot3.f32(i32 55, float %9978, float %9979, float %9980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9984 = select i1 %232, float %9982, float %9948
  %9985 = select i1 %232, float 1.000000e+00, float %9948
  %9986 = select i1 %232, float %9983, float %9978
  %9987 = select i1 %232, float 0.000000e+00, float %9979
  %9988 = select i1 %232, float 0.000000e+00, float %9980
  %9989 = fmul fast float %9984, %9622
  %9990 = fmul fast float %9984, %9623
  %9991 = fmul fast float %9985, %9624
  %9992 = fadd fast float %9989, %9986
  %9993 = fadd fast float %9990, %9987
  %9994 = fadd fast float %9988, %9991
  %9995 = fmul fast float %9984, %9625
  %9996 = fmul fast float %9984, %9626
  %9997 = fmul fast float %9985, %9627
  br label %9998

; <label>:9998                                    ; preds = %9974, %9631, %9600, %8832
  %9999 = phi float [ %8837, %8832 ], [ %9622, %9600 ], [ %9992, %9974 ], [ %9622, %9631 ]
  %10000 = phi float [ %8838, %8832 ], [ %9623, %9600 ], [ %9993, %9974 ], [ %9623, %9631 ]
  %10001 = phi float [ %8839, %8832 ], [ %9624, %9600 ], [ %9994, %9974 ], [ %9624, %9631 ]
  %10002 = phi float [ %8840, %8832 ], [ %9625, %9600 ], [ %9995, %9974 ], [ %9625, %9631 ]
  %10003 = phi float [ %8841, %8832 ], [ %9626, %9600 ], [ %9996, %9974 ], [ %9626, %9631 ]
  %10004 = phi float [ %8842, %8832 ], [ %9627, %9600 ], [ %9997, %9974 ], [ %9627, %9631 ]
  %10005 = phi float [ %8843, %8832 ], [ %9610, %9600 ], [ %9981, %9974 ], [ %9610, %9631 ]
  %10006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10007 = extractvalue %dx.types.CBufRet.f32 %10006, 2
  %10008 = extractvalue %dx.types.CBufRet.f32 %10006, 3
  %10009 = fmul fast float %10007, %111
  %10010 = fmul fast float %10008, %112
  %10011 = call float @dx.op.unary.f32(i32 7, float %10009)  ; Saturate(value)
  %10012 = call float @dx.op.unary.f32(i32 7, float %10010)  ; Saturate(value)
  %10013 = select i1 %8574, i32 2, i32 0
  %10014 = or i32 %10013, 1
  %10015 = uitofp i32 %10014 to float
  %10016 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10011, float %10012, float %10015, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10017 = extractvalue %dx.types.ResRet.f32 %10016, 0
  %10018 = extractvalue %dx.types.ResRet.f32 %10016, 1
  %10019 = extractvalue %dx.types.ResRet.f32 %10016, 2
  %10020 = extractvalue %dx.types.ResRet.f32 %10016, 3
  %10021 = add nuw nsw i32 %10013, 2
  %10022 = uitofp i32 %10021 to float
  %10023 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10011, float %10012, float %10022, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10024 = extractvalue %dx.types.ResRet.f32 %10023, 0
  %10025 = extractvalue %dx.types.ResRet.f32 %10023, 1
  %10026 = extractvalue %dx.types.ResRet.f32 %10023, 2
  %10027 = extractvalue %dx.types.ResRet.f32 %10023, 3
  %10028 = call float @dx.op.binary.f32(i32 35, float %10018, float %10019)  ; FMax(a,b)
  %10029 = call float @dx.op.binary.f32(i32 35, float %10017, float %10028)  ; FMax(a,b)
  %10030 = call float @dx.op.binary.f32(i32 35, float %10029, float %10020)  ; FMax(a,b)
  %10031 = call float @dx.op.binary.f32(i32 36, float %10025, float %10026)  ; FMin(a,b)
  %10032 = call float @dx.op.binary.f32(i32 36, float %10024, float %10031)  ; FMin(a,b)
  %10033 = call float @dx.op.binary.f32(i32 36, float %10032, float %10027)  ; FMin(a,b)
  %10034 = fmul fast float %10030, 2.550000e+02
  %10035 = fadd fast float %10034, 0x3F70101020000000
  %10036 = fptoui float %10035 to i32
  %10037 = fmul fast float %10033, 2.550000e+02
  %10038 = fadd fast float %10037, 0x3F70101020000000
  %10039 = fptoui float %10038 to i32
  %10040 = icmp ult i32 %10036, %10039
  br i1 %10040, label %10041, label %10210

; <label>:10041                                   ; preds = %9998
  %10042 = fcmp fast ogt float %98, 9.843750e-01
  %10043 = fadd fast float %8836, -4.000000e+00
  %10044 = select i1 %10042, float -4.000000e+00, float %10043
  %10045 = call float @dx.op.binary.f32(i32 35, float %10044, float 0.000000e+00)  ; FMax(a,b)
  %10046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10047 = extractvalue %dx.types.CBufRet.f32 %10046, 0
  %10048 = fadd fast float %10047, %10045
  %10049 = extractvalue %dx.types.CBufRet.f32 %10046, 2
  %10050 = fmul fast float %10048, %10049
  %10051 = call float @dx.op.unary.f32(i32 23, float %10050)  ; Log(value)
  %10052 = extractvalue %dx.types.CBufRet.f32 %10046, 3
  %10053 = fmul fast float %10052, %10051
  %10054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.f32 %10054, 2
  %10056 = fmul fast float %10053, %10055
  %10057 = call float @dx.op.unary.f32(i32 7, float %10056)  ; Saturate(value)
  %10058 = uitofp i32 %10036 to float
  %10059 = uitofp i32 %10039 to float
  %10060 = fadd fast float %10058, 5.000000e-01
  %10061 = fadd fast float %10059, 5.000000e-01
  %10062 = fmul fast float %10055, %10060
  %10063 = fmul fast float %10055, %10061
  %10064 = fadd fast float %10062, 0x3F0FFB4800000000
  %10065 = fadd fast float %10063, 0xBF0FFB4800000000
  %10066 = call float @dx.op.binary.f32(i32 35, float %10057, float %10064)  ; FMax(a,b)
  %10067 = call float @dx.op.binary.f32(i32 36, float %10066, float %10065)  ; FMin(a,b)
  %10068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10069 = extractvalue %dx.types.CBufRet.f32 %10068, 1
  %10070 = extractvalue %dx.types.CBufRet.f32 %10068, 2
  %10071 = extractvalue %dx.types.CBufRet.f32 %10068, 0
  %10072 = select i1 %8574, float %10071, float 0.000000e+00
  %10073 = fmul fast float %10069, %10067
  %10074 = fadd fast float %10072, %10073
  %10075 = fadd fast float %10072, %10070
  %10076 = fsub fast float %10069, %10070
  %10077 = fadd fast float %10076, %10072
  %10078 = call float @dx.op.binary.f32(i32 35, float %10074, float %10075)  ; FMax(a,b)
  %10079 = call float @dx.op.binary.f32(i32 36, float %10078, float %10077)  ; FMin(a,b)
  %10080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10011, float %10012, float %10079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10081 = extractvalue %dx.types.ResRet.f32 %10080, 0
  %10082 = extractvalue %dx.types.ResRet.f32 %10080, 1
  %10083 = extractvalue %dx.types.ResRet.f32 %10080, 2
  %10084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10085 = extractvalue %dx.types.CBufRet.i32 %10084, 0
  %10086 = extractvalue %dx.types.CBufRet.i32 %10084, 1
  %10087 = uitofp i32 %10085 to float
  %10088 = uitofp i32 %10086 to float
  %10089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10090 = extractvalue %dx.types.CBufRet.f32 %10089, 0
  %10091 = extractvalue %dx.types.CBufRet.f32 %10089, 1
  %10092 = fmul fast float %10087, %10011
  %10093 = fmul fast float %10088, %10012
  %10094 = fadd fast float %10092, -5.000000e-01
  %10095 = fadd fast float %10093, -5.000000e-01
  %10096 = call float @dx.op.unary.f32(i32 22, float %10094)  ; Frc(value)
  %10097 = call float @dx.op.unary.f32(i32 22, float %10095)  ; Frc(value)
  %10098 = fmul fast float %10096, %10096
  %10099 = fmul fast float %10098, %10096
  %10100 = fsub fast float 3.000000e+00, %10096
  %10101 = fmul fast float %10098, %10100
  %10102 = fmul fast float %10096, 3.000000e+00
  %10103 = fmul fast float %10099, 3.000000e+00
  %10104 = fmul fast float %10098, 6.000000e+00
  %10105 = fsub fast float %10103, %10104
  %10106 = fadd fast float %10105, 4.000000e+00
  %10107 = fmul fast float %10106, 0x3FC5555560000000
  %10108 = fmul fast float %10099, -3.000000e+00
  %10109 = fadd fast float %10098, %10096
  %10110 = fmul fast float %10109, 3.000000e+00
  %10111 = fadd fast float %10108, 1.000000e+00
  %10112 = fadd fast float %10111, %10110
  %10113 = fmul fast float %10099, 0x3FC5555560000000
  %10114 = fmul fast float %10097, %10097
  %10115 = fmul fast float %10114, %10097
  %10116 = fsub fast float 3.000000e+00, %10097
  %10117 = fmul fast float %10114, %10116
  %10118 = fmul fast float %10097, 3.000000e+00
  %10119 = fmul fast float %10115, 3.000000e+00
  %10120 = fmul fast float %10114, 6.000000e+00
  %10121 = fsub fast float %10119, %10120
  %10122 = fadd fast float %10121, 4.000000e+00
  %10123 = fmul fast float %10122, 0x3FC5555560000000
  %10124 = fmul fast float %10115, -3.000000e+00
  %10125 = fadd fast float %10114, %10097
  %10126 = fmul fast float %10125, 3.000000e+00
  %10127 = fadd fast float %10124, 1.000000e+00
  %10128 = fadd fast float %10127, %10126
  %10129 = fmul fast float %10115, 0x3FC5555560000000
  %10130 = fadd fast float %10096, 1.000000e+00
  %10131 = fsub fast float 1.000000e+00, %10102
  %10132 = fadd fast float %10131, %10101
  %10133 = fadd fast float %10132, %10106
  %10134 = fmul fast float %10133, 0x3FC5555560000000
  %10135 = fdiv fast float %10107, %10134
  %10136 = fsub fast float %10130, %10135
  %10137 = fsub fast float 1.000000e+00, %10096
  %10138 = fadd fast float %10112, %10099
  %10139 = fmul fast float %10138, 0x3FC5555560000000
  %10140 = fdiv fast float %10113, %10139
  %10141 = fadd fast float %10137, %10140
  %10142 = fadd fast float %10097, 1.000000e+00
  %10143 = fsub fast float 1.000000e+00, %10118
  %10144 = fadd fast float %10143, %10117
  %10145 = fadd fast float %10144, %10122
  %10146 = fmul fast float %10145, 0x3FC5555560000000
  %10147 = fdiv fast float %10123, %10146
  %10148 = fsub fast float %10142, %10147
  %10149 = fsub fast float 1.000000e+00, %10097
  %10150 = fadd fast float %10128, %10115
  %10151 = fmul fast float %10150, 0x3FC5555560000000
  %10152 = fdiv fast float %10129, %10151
  %10153 = fadd fast float %10152, %10149
  %10154 = fmul fast float %10136, %10090
  %10155 = fsub fast float %10011, %10154
  %10156 = fmul fast float %10141, %10090
  %10157 = fadd fast float %10156, %10011
  %10158 = fmul fast float %10153, %10091
  %10159 = fadd fast float %10158, %10012
  %10160 = fmul fast float %10148, %10091
  %10161 = fsub fast float %10012, %10160
  %10162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10155, float %10161, float %10079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10163 = extractvalue %dx.types.ResRet.f32 %10162, 0
  %10164 = extractvalue %dx.types.ResRet.f32 %10162, 1
  %10165 = extractvalue %dx.types.ResRet.f32 %10162, 2
  %10166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10157, float %10161, float %10079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10167 = extractvalue %dx.types.ResRet.f32 %10166, 0
  %10168 = extractvalue %dx.types.ResRet.f32 %10166, 1
  %10169 = extractvalue %dx.types.ResRet.f32 %10166, 2
  %10170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10155, float %10159, float %10079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10171 = extractvalue %dx.types.ResRet.f32 %10170, 0
  %10172 = extractvalue %dx.types.ResRet.f32 %10170, 1
  %10173 = extractvalue %dx.types.ResRet.f32 %10170, 2
  %10174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10157, float %10159, float %10079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10175 = extractvalue %dx.types.ResRet.f32 %10174, 0
  %10176 = extractvalue %dx.types.ResRet.f32 %10174, 1
  %10177 = extractvalue %dx.types.ResRet.f32 %10174, 2
  %10178 = fsub fast float %10171, %10163
  %10179 = fsub fast float %10172, %10164
  %10180 = fsub fast float %10173, %10165
  %10181 = fmul fast float %10178, %10151
  %10182 = fmul fast float %10179, %10151
  %10183 = fmul fast float %10180, %10151
  %10184 = fadd fast float %10181, %10163
  %10185 = fadd fast float %10182, %10164
  %10186 = fadd fast float %10183, %10165
  %10187 = fsub fast float %10175, %10167
  %10188 = fsub fast float %10176, %10168
  %10189 = fsub fast float %10177, %10169
  %10190 = fmul fast float %10187, %10151
  %10191 = fmul fast float %10188, %10151
  %10192 = fmul fast float %10189, %10151
  %10193 = fsub fast float %10167, %10184
  %10194 = fadd fast float %10193, %10190
  %10195 = fsub fast float %10168, %10185
  %10196 = fadd fast float %10195, %10191
  %10197 = fsub fast float %10169, %10186
  %10198 = fadd fast float %10197, %10192
  %10199 = fmul fast float %10194, %10139
  %10200 = fmul fast float %10196, %10139
  %10201 = fmul fast float %10198, %10139
  %10202 = fadd fast float %10199, %10184
  %10203 = fadd fast float %10200, %10185
  %10204 = fadd fast float %10201, %10186
  %10205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10206 = extractvalue %dx.types.CBufRet.f32 %10205, 1
  %10207 = fmul fast float %10202, %10206
  %10208 = fmul fast float %10203, %10206
  %10209 = fmul fast float %10204, %10206
  br label %10210

; <label>:10210                                   ; preds = %10041, %9998
  %10211 = phi float [ %10081, %10041 ], [ 1.000000e+00, %9998 ]
  %10212 = phi float [ %10082, %10041 ], [ 1.000000e+00, %9998 ]
  %10213 = phi float [ %10083, %10041 ], [ 1.000000e+00, %9998 ]
  %10214 = phi float [ %10207, %10041 ], [ 0.000000e+00, %9998 ]
  %10215 = phi float [ %10208, %10041 ], [ 0.000000e+00, %9998 ]
  %10216 = phi float [ %10209, %10041 ], [ 0.000000e+00, %9998 ]
  %10217 = fmul fast float %10214, %8552
  %10218 = fmul fast float %10215, %8552
  %10219 = fmul fast float %10216, %8552
  %10220 = fmul fast float %10211, %10005
  %10221 = call float @dx.op.dot3.f32(i32 55, float %10211, float %10212, float %10213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10222 = call float @dx.op.dot3.f32(i32 55, float %10217, float %10218, float %10219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10223 = select i1 %232, float %10221, float %10211
  %10224 = select i1 %232, float %10221, float %10212
  %10225 = select i1 %232, float 1.000000e+00, float %10213
  %10226 = select i1 %232, float %10222, float %10217
  %10227 = select i1 %232, float 0.000000e+00, float %10218
  %10228 = select i1 %232, float 0.000000e+00, float %10219
  %10229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10230 = extractvalue %dx.types.CBufRet.i32 %10229, 3
  %10231 = and i32 %10230, 3
  %10232 = icmp ne i32 %10231, 0
  %10233 = and i32 %10230, 4
  %10234 = icmp ne i32 %10233, 0
  %10235 = and i1 %10232, %10234
  %10236 = and i1 %232, %10235
  br i1 %10236, label %10237, label %10243

; <label>:10237                                   ; preds = %10210
  %10238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10239 = extractvalue %dx.types.CBufRet.f32 %10238, 1
  %10240 = fadd fast float %10220, -1.000000e+00
  %10241 = fmul fast float %10239, %10240
  %10242 = fadd fast float %10241, 1.000000e+00
  br label %10243

; <label>:10243                                   ; preds = %10237, %10210
  %10244 = phi float [ %10242, %10237 ], [ %10220, %10210 ]
  %10245 = fadd fast float %10002, %9999
  %10246 = fmul fast float %10223, %10245
  %10247 = fadd fast float %10246, %10226
  %10248 = fadd fast float %10003, %10000
  %10249 = fmul fast float %10224, %10248
  %10250 = fadd fast float %10249, %10227
  %10251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10252 = extractvalue %dx.types.CBufRet.f32 %10251, 0
  br i1 %232, label %10253, label %10277

; <label>:10253                                   ; preds = %10243
  %10254 = fadd fast float %10247, %10250
  %10255 = fmul fast float %10252, %10254
  %10256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10257 = extractvalue %dx.types.CBufRet.f32 %10256, 3
  %10258 = extractvalue %dx.types.CBufRet.f32 %8556, 1
  %10259 = fsub fast float %8561, %8555
  %10260 = fadd fast float %10259, %8562
  %10261 = fsub fast float %10260, %10258
  %10262 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %10263 = fmul fast float %10261, %10262
  %10264 = call float @dx.op.unary.f32(i32 7, float %10263)  ; Saturate(value)
  %10265 = fsub fast float %10264, %10257
  %10266 = fmul fast float %10265, %10244
  %10267 = fadd fast float %10266, %10257
  %10268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10269 = extractvalue %dx.types.CBufRet.f32 %10268, 0
  %10270 = fsub fast float %10267, %10269
  %10271 = fmul fast float %10270, 1.000000e+01
  %10272 = call float @dx.op.unary.f32(i32 7, float %10271)  ; Saturate(value)
  %10273 = fsub fast float %4656, %8552
  %10274 = fmul fast float %10272, %10273
  %10275 = fadd fast float %10274, %8552
  %10276 = fmul fast float %10275, %10267
  br label %10301

; <label>:10277                                   ; preds = %10243
  %10278 = fadd fast float %10004, %10001
  %10279 = fmul fast float %10225, %10278
  %10280 = fadd fast float %10279, %10228
  %10281 = fmul fast float %10252, %10247
  %10282 = fmul fast float %10252, %10250
  %10283 = fmul fast float %10252, %10280
  %10284 = call float @dx.op.binary.f32(i32 35, float %10282, float %10283)  ; FMax(a,b)
  %10285 = call float @dx.op.binary.f32(i32 35, float %10281, float %10284)  ; FMax(a,b)
  %10286 = call float @dx.op.binary.f32(i32 35, float %10285, float %8552)  ; FMax(a,b)
  %10287 = fcmp fast ugt float %10286, 0x3F10000000000000
  br i1 %10287, label %10289, label %10288

; <label>:10288                                   ; preds = %10277
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10289

; <label>:10289                                   ; preds = %10288, %10277
  %10290 = add i32 %62, 356
  %10291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10290, i32 undef)  ; BufferLoad(srv,index,wot)
  %10292 = extractvalue %dx.types.ResRet.i32 %10291, 0
  %10293 = and i32 %10292, 32
  %10294 = icmp eq i32 %10293, 0
  br i1 %10294, label %10301, label %10295

; <label>:10295                                   ; preds = %10289
  %10296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10297 = extractvalue %dx.types.CBufRet.f32 %10296, 0
  %10298 = fmul fast float %10297, 0x3FE99999A0000000
  %10299 = fadd fast float %10297, %10281
  %10300 = fadd fast float %10298, %10283
  br label %10301

; <label>:10301                                   ; preds = %10295, %10289, %10253
  %10302 = phi float [ %10255, %10253 ], [ %10299, %10295 ], [ %10281, %10289 ]
  %10303 = phi float [ %10276, %10253 ], [ %10282, %10295 ], [ %10282, %10289 ]
  %10304 = phi float [ %10275, %10253 ], [ %10300, %10295 ], [ %10283, %10289 ]
  %10305 = phi float [ %10275, %10253 ], [ %8552, %10295 ], [ %8552, %10289 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10306 = call float @dx.op.binary.f32(i32 36, float %10302, float 3.225500e+04)  ; FMin(a,b)
  %10307 = call float @dx.op.binary.f32(i32 36, float %10303, float 3.225500e+04)  ; FMin(a,b)
  %10308 = call float @dx.op.binary.f32(i32 36, float %10304, float 3.225500e+04)  ; FMin(a,b)
  %10309 = call float @dx.op.binary.f32(i32 36, float %10305, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10306)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10307)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10308)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10309)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

