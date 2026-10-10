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
; shader hash: 384686878360d451710b03afab098aa0
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
;                                   texture     f32          2d      T6     t69,space2     1
;                                   texture    byte         r/o      T7     t49,space1     1
;                                   texture    byte         r/o      T8     t50,space1     1
;                                   texture    byte         r/o      T9     t51,space1     1
;                                   texture    byte         r/o     T10     t52,space1     1
;                                   texture    byte         r/o     T11     t16,space1     1
;                                   texture    byte         r/o     T12     t17,space1     1
;                                   texture     f32          2d     T13     t37,space2     1
;                                   texture     f32          2d     T14             t0     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t2,space2     1
;                                   texture     f32          2d     T31      t3,space2     1
;                                   texture     f32          2d     T32      t4,space2     1
;                                   textureunorm_f32     2darray     T33     t80,space2     1
;                                   texture    byte         r/o     T34     t67,space1     1
;                                   texture     f32          2d     T35      t7,space2     1
;                                   texture     f32          2d     T36      t6,space2     1
;                                   texture     f32          2d     T37      t5,space2     1
;                                   texture     f32          2d     T38     t38,space2     1
;                                   texture    byte         r/o     T39     t12,space1     1
;                                   texture    byte         r/o     T40     t13,space1     1
;                                   texture     f32          1d     T41     t30,space2     1
;                                   texture     f32          3d     T42     t44,space2     1
;                                   texture     f32          3d     T43     t45,space2     1
;                                   texture     f32     2darray     T44     t47,space2     1
;                                   textureunorm_f32     2darray     T45     t85,space2     1
;                                   texture     f32          2d     T46     t83,space2     1
;                                   texture     f32          2d     T47     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = alloca [4 x i32], align 4
  %54 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = icmp ne i32 %54, 0
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = alloca [12 x float], align 4
  %95 = alloca [12 x float], align 4
  %96 = alloca [3 x float], align 4
  %97 = alloca [3 x float], align 4
  %98 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %99 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fmul fast float %101, %90
  %103 = fmul fast float %101, %91
  %104 = select i1 %55, float 1.000000e+00, float -1.000000e+00
  %105 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = bitcast float %105 to i32
  %107 = ashr i32 %106, 1
  %108 = sub nsw i32 1597250115, %107
  %109 = bitcast i32 %108 to float
  %110 = fmul fast float %81, %104
  %111 = fmul fast float %110, %109
  %112 = fmul fast float %82, %104
  %113 = fmul fast float %112, %109
  %114 = fmul fast float %83, %104
  %115 = fmul fast float %114, %109
  %116 = fmul fast float %82, %79
  %117 = fmul fast float %83, %78
  %118 = fsub fast float %116, %117
  %119 = fmul fast float %83, %77
  %120 = fmul fast float %81, %79
  %121 = fsub fast float %119, %120
  %122 = fmul fast float %81, %78
  %123 = fmul fast float %82, %77
  %124 = fsub fast float %122, %123
  %125 = fmul fast float %118, %80
  %126 = fmul fast float %121, %80
  %127 = fmul fast float %124, %80
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %131 = fmul fast float %102, 2.000000e+00
  %132 = fmul fast float %131, %129
  %133 = fmul fast float %103, 2.000000e+00
  %134 = fmul fast float %133, %130
  %135 = fsub fast float 1.000000e+00, %132
  %136 = fsub fast float 1.000000e+00, %134
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %135, %138
  %142 = fmul fast float %135, %139
  %143 = fmul fast float %135, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fmul fast float %136, %145
  %149 = fmul fast float %136, %146
  %150 = fmul fast float %136, %147
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fadd fast float %148, %152
  %156 = fadd fast float %155, %141
  %157 = fadd fast float %149, %153
  %158 = fadd fast float %157, %142
  %159 = fadd fast float %150, %154
  %160 = fadd fast float %159, %143
  %161 = fmul fast float %156, %93
  %162 = fmul fast float %158, %93
  %163 = fmul fast float %160, %93
  %164 = fmul fast float %102, 5.000000e-01
  %165 = fmul fast float %103, 5.000000e-01
  %166 = fptosi float %164 to i32
  %167 = fptosi float %165 to i32
  %168 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %166, i32 %167, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = lshr i32 %169, 18
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F4C00EBA0000000
  %173 = call float @dx.op.unary.f32(i32 21, float %172)  ; Exp(value)
  %174 = fadd fast float %173, -1.000000e+00
  %175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %176 = extractvalue %dx.types.Dimensions %175, 0
  %177 = sitofp i32 %176 to float
  %178 = extractvalue %dx.types.Dimensions %175, 1
  %179 = sitofp i32 %178 to float
  %180 = fcmp fast oge float %164, %177
  %181 = fcmp fast oge float %165, %179
  %182 = or i1 %180, %181
  %183 = select i1 %182, float 0x4197782600000000, float %174
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = extractvalue %dx.types.CBufRet.f32 %184, 3
  %187 = fmul fast float %185, %102
  %188 = fmul fast float %186, %103
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 114688
  %192 = icmp ne i32 %191, 0
  %193 = select i1 %192, float %187, float 0.000000e+00
  %194 = select i1 %192, float %188, float 0.000000e+00
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %49, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fmul fast float %196, 2.550000e+02
  %198 = fptoui float %197 to i32
  %199 = select i1 %192, i32 %198, i32 0
  %200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.i32 %201, 3
  %203 = and i32 %202, 3
  %204 = icmp ne i32 %203, 0
  %205 = and i32 %202, 4
  %206 = icmp ne i32 %205, 0
  %207 = and i1 %204, %206
  br i1 %207, label %208, label %219

; <label>:208                                     ; preds = %0
  %209 = extractvalue %dx.types.CBufRet.f32 %200, 3
  %210 = fmul fast float %209, %103
  %211 = extractvalue %dx.types.CBufRet.f32 %200, 2
  %212 = fmul fast float %211, %102
  %213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %48, float %212, float %210, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fsub fast float 1.000000e+00, %214
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = fcmp fast olt float %215, %217
  br label %222

; <label>:219                                     ; preds = %0
  %220 = icmp eq i32 %205, 0
  %221 = and i1 %204, %220
  br label %222

; <label>:222                                     ; preds = %219, %208
  %223 = phi i1 [ %218, %208 ], [ %221, %219 ]
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = fmul fast float %225, 0x3FE3C6EF40000000
  %227 = frem fast float %102, 2.560000e+02
  %228 = frem fast float %103, 2.560000e+02
  %229 = fptoui float %227 to i32
  %230 = fptoui float %228 to i32
  %231 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %229, i32 %230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = fadd fast float %232, %226
  %234 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %235 = add i32 %56, 156
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = shl i32 %237, 4
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %237, 7
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %237, 22
  %245 = shl nuw nsw i32 %244, 5
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %56, 216
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 255
  %251 = uitofp i32 %250 to float
  %252 = fmul fast float %251, 0x3F70101020000000
  %253 = lshr i32 %249, 8
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %249, 16
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = add i32 %56, 36
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = add i32 %56, 288
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = fmul fast float %272, 0x3F50624DE0000000
  %276 = fmul fast float %274, 0x3F50624DE0000000
  %277 = add i32 %56, 172
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = shl i32 %279, 4
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %279, 7
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %279, 22
  %287 = shl nuw nsw i32 %286, 5
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %56, 232
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 255
  %293 = uitofp i32 %292 to float
  %294 = fmul fast float %293, 0x3F70101020000000
  %295 = lshr i32 %291, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %291, 16
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = add i32 %56, 52
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = add i32 %56, 304
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %314, 0x3F50624DE0000000
  %318 = fmul fast float %316, 0x3F50624DE0000000
  %319 = add i32 %56, 188
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %56, 248
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %56, 68
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %56, 320
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %356, 0x3F50624DE0000000
  %360 = fmul fast float %358, 0x3F50624DE0000000
  %361 = add i32 %56, 204
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = shl i32 %363, 4
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %363, 7
  %368 = and i32 %367, 32752
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %363, 22
  %371 = shl nuw nsw i32 %370, 5
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = add i32 %56, 264
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 255
  %377 = uitofp i32 %376 to float
  %378 = fmul fast float %377, 0x3F70101020000000
  %379 = lshr i32 %375, 8
  %380 = and i32 %379, 255
  %381 = uitofp i32 %380 to float
  %382 = fmul fast float %381, 0x3F70101020000000
  %383 = lshr i32 %375, 16
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = add i32 %56, 84
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = add i32 %56, 336
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 65535
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = lshr i32 %396, 16
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = fmul fast float %398, 0x3F50624DE0000000
  %402 = fmul fast float %400, 0x3F50624DE0000000
  %403 = add i32 %56, 348
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 32
  %407 = icmp eq i32 %406, 0
  %408 = and i32 %405, 64
  %409 = icmp eq i32 %408, 0
  %410 = and i32 %405, 128
  %411 = icmp eq i32 %410, 0
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 2
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %431, label %416

; <label>:416                                     ; preds = %222
  %417 = add i32 %56, 508
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %419, 0
  %421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %421, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = extractvalue %dx.types.ResRet.f32 %422, 1
  %425 = extractvalue %dx.types.ResRet.f32 %422, 2
  %426 = extractvalue %dx.types.ResRet.f32 %422, 3
  %427 = fmul fast float %426, %86
  %428 = fmul fast float %423, %87
  %429 = fmul fast float %424, %88
  %430 = fmul fast float %425, %89
  br label %431

; <label>:431                                     ; preds = %416, %222
  %432 = phi float [ %89, %222 ], [ %430, %416 ]
  %433 = phi float [ %88, %222 ], [ %429, %416 ]
  %434 = phi float [ %87, %222 ], [ %428, %416 ]
  %435 = phi float [ %86, %222 ], [ %427, %416 ]
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %459, label %440

; <label>:440                                     ; preds = %431
  %441 = add i32 %56, 44
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %434, float 1.000000e+00
  %447 = add i32 %56, 60
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %433, float 1.000000e+00
  %453 = add i32 %56, 76
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 1
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %457, float %432, float 1.000000e+00
  br label %459

; <label>:459                                     ; preds = %440, %431
  %460 = phi float [ %432, %431 ], [ %458, %440 ]
  %461 = phi float [ %433, %431 ], [ %452, %440 ]
  %462 = phi float [ %434, %431 ], [ %446, %440 ]
  %463 = lshr i32 %437, 20
  %464 = and i32 %463, 3
  %465 = add nuw nsw i32 %464, 1
  %466 = add i32 %56, 24
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %56, 28
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = or i32 %471, %468
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %1207, label %474

; <label>:474                                     ; preds = %459
  %475 = and i32 %468, 262144
  %476 = icmp ne i32 %475, 0
  %477 = select i1 %476, float %59, float 1.000000e+00
  %478 = select i1 %476, float %60, float 0.000000e+00
  %479 = select i1 %476, float %61, float 0.000000e+00
  %480 = select i1 %476, float %62, float 1.000000e+00
  %481 = select i1 %476, float %63, float %84
  %482 = select i1 %476, float %64, float %85
  %483 = add i32 %56, 284
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = fmul fast float %487, 0x3F50624DE0000000
  %489 = add i32 %56, 88
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  %494 = lshr i32 %491, 24
  %495 = add i32 %56, 292
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = and i32 %497, 65535
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = lshr i32 %497, 16
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = add i32 %56, 32
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = lshr i32 %504, 22
  %506 = shl nuw nsw i32 %505, 5
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = shl i32 %504, 4
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = lshr i32 %504, 7
  %512 = and i32 %511, 32752
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %515 = extractvalue %dx.types.CBufRet.f32 %514, 3
  %516 = fmul fast float %515, 1.000000e+03
  %517 = fmul fast float %275, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %265
  %520 = fmul fast float %276, %516
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fadd fast float %521, %267
  %523 = fmul fast float %488, %516
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = fmul fast float %524, 0x401921FB60000000
  %526 = fadd fast float %525, %507
  %527 = call float @dx.op.unary.f32(i32 13, float %526)  ; Sin(value)
  %528 = call float @dx.op.unary.f32(i32 12, float %526)  ; Cos(value)
  %529 = fsub fast float -0.000000e+00, %527
  %530 = fadd fast float %481, -5.000000e-01
  %531 = fadd fast float %482, -5.000000e-01
  %532 = fmul fast float %499, %530
  %533 = fmul fast float %501, %531
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fmul fast float %510, %534
  %537 = fmul fast float %513, %535
  %538 = fmul fast float %528, %536
  %539 = call float @dx.op.tertiary.f32(i32 46, float %529, float %537, float %538)  ; FMad(a,b,c)
  %540 = fmul fast float %527, %536
  %541 = call float @dx.op.tertiary.f32(i32 46, float %528, float %537, float %540)  ; FMad(a,b,c)
  %542 = fadd fast float %519, %539
  %543 = fadd fast float %522, %541
  %544 = icmp ugt i32 %493, 1
  %545 = icmp ugt i32 %491, 33554431
  %546 = or i1 %545, %544
  br i1 %546, label %547, label %572

; <label>:547                                     ; preds = %474
  %548 = add i32 %56, 228
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = lshr i32 %550, 16
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fmul fast float %515, %552
  %554 = call float @dx.op.unary.f32(i32 22, float %553)  ; Frc(value)
  %555 = mul nuw nsw i32 %493, %494
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %554, %556
  %558 = call float @dx.op.unary.f32(i32 27, float %557)  ; Round_ni(value)
  %559 = fptoui float %558 to i32
  %560 = urem i32 %559, %493
  %561 = udiv i32 %559, %494
  %562 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %563 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %564 = uitofp i32 %560 to float
  %565 = uitofp i32 %561 to float
  %566 = fadd fast float %562, %564
  %567 = fadd fast float %563, %565
  %568 = uitofp i32 %493 to float
  %569 = uitofp i32 %494 to float
  %570 = fdiv fast float %566, %568
  %571 = fdiv fast float %567, %569
  br label %572

; <label>:572                                     ; preds = %547, %474
  %573 = phi float [ %570, %547 ], [ %542, %474 ]
  %574 = phi float [ %571, %547 ], [ %543, %474 ]
  %575 = and i32 %468, 16777216
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %686, label %577

; <label>:577                                     ; preds = %572
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = extractvalue %dx.types.CBufRet.f32 %578, 1
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = fadd fast float %579, %161
  %583 = fadd fast float %580, %162
  %584 = fadd fast float %581, %163
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = call float @dx.op.unary.f32(i32 7, float %586)  ; Saturate(value)
  %588 = icmp eq i32 %57, 65535
  br i1 %588, label %683, label %589

; <label>:589                                     ; preds = %577
  %590 = lshr i32 %57, 1
  %591 = shl i32 %590, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %57, 1
  %595 = icmp ne i32 %594, 0
  %596 = lshr i32 %593, 16
  %597 = and i32 %593, 65535
  %598 = select i1 %595, i32 %596, i32 %597
  %599 = icmp eq i32 %598, 65535
  br i1 %599, label %679, label %600

; <label>:600                                     ; preds = %589
  %601 = mul nuw nsw i32 %598, 40
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %601, 12
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %601, 24
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add nuw nsw i32 %601, 36
  %617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = fsub fast float %582, %603
  %620 = fsub fast float %583, %604
  %621 = fsub fast float %584, %605
  %622 = fmul fast float %618, %619
  %623 = fmul fast float %618, %620
  %624 = fmul fast float %618, %621
  %625 = call float @dx.op.unary.f32(i32 27, float %622)  ; Round_ni(value)
  %626 = call float @dx.op.unary.f32(i32 27, float %623)  ; Round_ni(value)
  %627 = call float @dx.op.unary.f32(i32 27, float %624)  ; Round_ni(value)
  %628 = fadd fast float %625, 5.000000e-01
  %629 = fadd fast float %626, 5.000000e-01
  %630 = fadd fast float %627, 5.000000e-01
  %631 = fmul fast float %628, %608
  %632 = fmul fast float %629, %609
  %633 = fmul fast float %630, %610
  %634 = shl i32 %57, 2
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call float @dx.op.unary.f32(i32 22, float %631)  ; Frc(value)
  %640 = call float @dx.op.unary.f32(i32 22, float %632)  ; Frc(value)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %638, %dx.types.Handle %49, float %639, float %640, float %641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = fmul fast float %643, 1.023000e+03
  %647 = fmul fast float %644, 1.023000e+03
  %648 = fmul fast float %645, 1.023000e+03
  %649 = fadd fast float %646, 5.000000e-01
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = fsub fast float %622, %625
  %656 = fsub fast float %623, %626
  %657 = fsub fast float %624, %627
  %658 = fmul fast float %655, 7.500000e-01
  %659 = fmul fast float %656, 7.500000e-01
  %660 = fmul fast float %657, 7.500000e-01
  %661 = fadd fast float %625, 1.250000e-01
  %662 = fadd fast float %661, %658
  %663 = fadd fast float %662, %652
  %664 = fadd fast float %626, 1.250000e-01
  %665 = fadd fast float %664, %659
  %666 = fadd fast float %665, %653
  %667 = fadd fast float %627, 1.250000e-01
  %668 = fadd fast float %667, %660
  %669 = fadd fast float %668, %654
  %670 = fmul fast float %663, %613
  %671 = fmul fast float %666, %614
  %672 = fmul fast float %669, %615
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = add i32 %674, 0
  %676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %676, %dx.types.Handle %47, float %670, float %671, float %672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  br label %679

; <label>:679                                     ; preds = %600, %589
  %680 = phi float [ %678, %600 ], [ -1.000000e+00, %589 ]
  %681 = fadd fast float %680, %587
  %682 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  br label %683

; <label>:683                                     ; preds = %679, %577
  %684 = phi float [ %682, %679 ], [ %587, %577 ]
  %685 = fmul fast float %684, %435
  br label %686

; <label>:686                                     ; preds = %683, %572
  %687 = phi float [ %685, %683 ], [ %435, %572 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 256
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %738, label %692

; <label>:692                                     ; preds = %686
  %693 = add i32 %56, 440
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = add i32 %695, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = add i32 %56, 100
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = shl i32 %702, 4
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = lshr i32 %702, 7
  %707 = and i32 %706, 32752
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = fsub fast float 1.000000e+00, %687
  %710 = call float @dx.op.binary.f32(i32 35, float %709, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %711 = bitcast float %687 to i32
  %712 = sitofp i32 %711 to float
  %713 = fadd fast float %712, 0xC1CFBF8940000000
  %714 = fmul fast float %708, %713
  %715 = fadd fast float %714, 0x41CFBF8940000000
  %716 = fptosi float %715 to i32
  %717 = bitcast i32 %716 to float
  %718 = bitcast float %710 to i32
  %719 = sitofp i32 %718 to float
  %720 = fadd fast float %719, 0xC1CFBF8940000000
  %721 = fmul fast float %720, %708
  %722 = fadd fast float %721, 0x41CFBF8940000000
  %723 = fptosi float %722 to i32
  %724 = bitcast i32 %723 to float
  %725 = fmul fast float %717, %705
  %726 = fmul fast float %724, %705
  %727 = fsub fast float %710, %725
  %728 = fadd fast float %726, %710
  %729 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = fsub fast float %699, %729
  %732 = fsub fast float %730, %729
  %733 = bitcast float %732 to i32
  %734 = sub nsw i32 2129859010, %733
  %735 = bitcast i32 %734 to float
  %736 = fmul fast float %735, %731
  %737 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  br label %738

; <label>:738                                     ; preds = %692, %686
  %739 = phi float [ %737, %692 ], [ %687, %686 ]
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 128
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %760, label %744

; <label>:744                                     ; preds = %738
  %745 = add i32 %56, 424
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = add i32 %747, 0
  %749 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %748, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %749, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 524288
  %755 = icmp ne i32 %754, 0
  %756 = fcmp fast ogt float %751, 0x3FE0101020000000
  %757 = select i1 %756, float 1.000000e+00, float 0.000000e+00
  %758 = select i1 %755, float %757, float %751
  %759 = fmul fast float %758, %739
  br label %760

; <label>:760                                     ; preds = %744, %738
  %761 = phi float [ %759, %744 ], [ %739, %738 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 16
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %964, label %766

; <label>:766                                     ; preds = %760
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %56, 376
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = add i32 %771, 0
  %773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %774 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %773, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = and i32 %768, 255
  %780 = uitofp i32 %779 to float
  %781 = lshr i32 %768, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %778, %780
  %785 = fadd fast float %784, %783
  %786 = fmul fast float %785, 0x3F70101000000000
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 512
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %799, label %791

; <label>:791                                     ; preds = %766
  %792 = add i32 %56, 460
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = add i32 %794, 0
  %796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %796, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  br label %799

; <label>:799                                     ; preds = %791, %766
  %800 = phi float [ %798, %791 ], [ 1.000000e+00, %766 ]
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 33554432
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %911, label %805

; <label>:805                                     ; preds = %799
  %806 = add i32 %56, 224
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %808, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = add i32 %56, 228
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 65535
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 24
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = and i32 %819, 255
  %824 = uitofp i32 %823 to float
  %825 = fmul fast float %824, 0x3F70101020000000
  %826 = lshr i32 %819, 8
  %827 = and i32 %826, 255
  %828 = uitofp i32 %827 to float
  %829 = fmul fast float %828, 0x3F70101020000000
  %830 = lshr i32 %819, 16
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = add i32 %56, 220
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 24
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = and i32 %836, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = lshr i32 %836, 8
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = lshr i32 %836, 16
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = bitcast float %775 to i32
  %852 = ashr i32 %851, 1
  %853 = sub nsw i32 1597463174, %852
  %854 = bitcast i32 %853 to float
  %855 = fmul fast float %775, 5.000000e-01
  %856 = fmul fast float %854, %854
  %857 = fmul fast float %856, %855
  %858 = fsub fast float 1.500000e+00, %857
  %859 = fmul fast float %854, %775
  %860 = fmul fast float %859, %858
  %861 = bitcast float %776 to i32
  %862 = ashr i32 %861, 1
  %863 = sub nsw i32 1597463174, %862
  %864 = bitcast i32 %863 to float
  %865 = fmul fast float %776, 5.000000e-01
  %866 = fmul fast float %864, %864
  %867 = fmul fast float %866, %865
  %868 = fsub fast float 1.500000e+00, %867
  %869 = fmul fast float %864, %776
  %870 = fmul fast float %869, %868
  %871 = bitcast float %777 to i32
  %872 = ashr i32 %871, 1
  %873 = sub nsw i32 1597463174, %872
  %874 = bitcast i32 %873 to float
  %875 = fmul fast float %777, 5.000000e-01
  %876 = fmul fast float %874, %874
  %877 = fmul fast float %876, %875
  %878 = fsub fast float 1.500000e+00, %877
  %879 = fmul fast float %874, %777
  %880 = fmul fast float %879, %878
  %881 = fsub fast float %860, %842
  %882 = fsub fast float %870, %846
  %883 = fsub fast float %880, %850
  %884 = fmul fast float %881, %810
  %885 = fmul fast float %882, %812
  %886 = fmul fast float %883, %817
  %887 = fadd fast float %884, %825
  %888 = fadd fast float %885, %829
  %889 = fadd fast float %886, %833
  %890 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %891 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  %892 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %893 = fmul fast float %890, %890
  %894 = fmul fast float %891, %891
  %895 = fmul fast float %892, %892
  %896 = fsub fast float %893, %775
  %897 = fsub fast float %894, %776
  %898 = fsub fast float %895, %777
  %899 = fmul fast float %896, %800
  %900 = fmul fast float %897, %800
  %901 = fmul fast float %898, %800
  %902 = fadd fast float %899, %775
  %903 = fadd fast float %900, %776
  %904 = fadd fast float %901, %777
  %905 = fadd fast float %822, %786
  %906 = fsub fast float %905, %839
  %907 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %908 = fsub fast float %907, %786
  %909 = fmul fast float %908, %800
  %910 = fadd fast float %909, %786
  br label %964

; <label>:911                                     ; preds = %799
  %912 = and i32 %802, 134217728
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %948, label %914

; <label>:914                                     ; preds = %911
  %915 = call float @dx.op.unary.f32(i32 24, float %252)  ; Sqrt(value)
  %916 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %917 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %918 = fadd fast float %915, -5.000000e-01
  %919 = fadd fast float %916, -5.000000e-01
  %920 = fadd fast float %917, -5.000000e-01
  %921 = fmul fast float %918, %800
  %922 = fmul fast float %919, %800
  %923 = fmul fast float %920, %800
  %924 = fadd fast float %921, 5.000000e-01
  %925 = fadd fast float %922, 5.000000e-01
  %926 = fadd fast float %923, 5.000000e-01
  %927 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %928 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %929 = call float @dx.op.unary.f32(i32 24, float %777)  ; Sqrt(value)
  %930 = fmul fast float %924, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %927
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %927
  %935 = fmul fast float %925, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %928
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %928
  %940 = fmul fast float %926, 2.000000e+00
  %941 = fsub fast float 1.000000e+00, %940
  %942 = fmul fast float %941, %929
  %943 = fadd fast float %942, %940
  %944 = fmul fast float %943, %929
  %945 = fmul fast float %934, %934
  %946 = fmul fast float %939, %939
  %947 = fmul fast float %944, %944
  br label %964

; <label>:948                                     ; preds = %911
  %949 = fmul fast float %252, %252
  %950 = fmul fast float %256, %256
  %951 = fmul fast float %260, %260
  %952 = fadd fast float %949, -1.000000e+00
  %953 = fadd fast float %950, -1.000000e+00
  %954 = fadd fast float %951, -1.000000e+00
  %955 = fmul fast float %800, %952
  %956 = fmul fast float %800, %953
  %957 = fmul fast float %800, %954
  %958 = fadd fast float %955, 1.000000e+00
  %959 = fadd fast float %956, 1.000000e+00
  %960 = fadd fast float %957, 1.000000e+00
  %961 = fmul fast float %958, %775
  %962 = fmul fast float %959, %776
  %963 = fmul fast float %960, %777
  br label %964

; <label>:964                                     ; preds = %948, %914, %805, %760
  %965 = phi float [ %910, %805 ], [ %786, %914 ], [ %786, %948 ], [ 0x3FA23C0BE0000000, %760 ]
  %966 = phi float [ %902, %805 ], [ %945, %914 ], [ %961, %948 ], [ 1.000000e+00, %760 ]
  %967 = phi float [ %903, %805 ], [ %946, %914 ], [ %962, %948 ], [ 1.000000e+00, %760 ]
  %968 = phi float [ %904, %805 ], [ %947, %914 ], [ %963, %948 ], [ 1.000000e+00, %760 ]
  %969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.i32 %969, 1
  %971 = and i32 %970, 1
  %972 = icmp ne i32 %971, 0
  %973 = add i32 %56, 356
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 32
  %977 = icmp ne i32 %976, 0
  %978 = and i1 %972, %977
  %979 = select i1 %978, float 1.000000e+00, float %966
  %980 = select i1 %978, float 0x3FD3333340000000, float %967
  %981 = select i1 %978, float 0x3FD3333340000000, float %968
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1058, label %986

; <label>:986                                     ; preds = %964
  %987 = add i32 %56, 92
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %56, 392
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = add i32 %992, 0
  %994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %994, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = extractvalue %dx.types.ResRet.f32 %995, 3
  %1000 = and i32 %989, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %989, 8
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = lshr i32 %989, 16
  %1006 = and i32 %1005, 255
  %1007 = uitofp i32 %1006 to float
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fmul fast float %996, %1001
  %1010 = fadd fast float %1009, %1004
  %1011 = fmul fast float %1010, 0x3F70101000000000
  %1012 = fadd fast float %997, -5.000000e-01
  %1013 = fadd fast float %999, -5.000000e-01
  %1014 = fmul fast float %1012, %1008
  %1015 = fmul fast float %1013, %1008
  %1016 = fadd fast float %1014, 5.000000e-01
  %1017 = fadd fast float %1015, 5.000000e-01
  %1018 = fmul fast float %1016, 2.000000e+00
  %1019 = fadd fast float %1018, -1.000000e+00
  %1020 = fmul fast float %1017, 2.000000e+00
  %1021 = fadd fast float %1020, -1.000000e+00
  %1022 = fadd fast float %1019, %1021
  %1023 = fmul fast float %1022, 5.000000e-01
  %1024 = fsub fast float %1019, %1021
  %1025 = fmul fast float %1024, 5.000000e-01
  %1026 = call float @dx.op.unary.f32(i32 6, float %1023)  ; FAbs(value)
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = call float @dx.op.unary.f32(i32 6, float %1025)  ; FAbs(value)
  %1029 = fsub fast float %1027, %1028
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1025, float %1029, float %1023, float %1025, float %1029)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.unary.f32(i32 25, float %1030)  ; Rsqrt(value)
  %1032 = fmul fast float %1023, %1031
  %1033 = fmul fast float %1025, %1031
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 67108864
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1054, label %1038

; <label>:1038                                    ; preds = %986
  %1039 = add i32 %56, 280
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %1041, 65535
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = and i32 %1045, 65535
  %1047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1046)  ; LegacyF16ToF32(value)
  %1048 = lshr i32 %1041, 16
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = fsub fast float %1011, %1049
  %1051 = fmul fast float %1050, %1043
  %1052 = fadd fast float %1051, %1047
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  br label %1054

; <label>:1054                                    ; preds = %1038, %986
  %1055 = phi float [ %1053, %1038 ], [ %1011, %986 ]
  %1056 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %1057 = call float @dx.op.dot2.f32(i32 54, float %1032, float %1033, float %479, float %480)  ; Dot2(ax,ay,bx,by)
  br label %1058

; <label>:1058                                    ; preds = %1054, %964
  %1059 = phi float [ %1055, %1054 ], [ 0x3FD6666660000000, %964 ]
  %1060 = phi float [ %1056, %1054 ], [ 0.000000e+00, %964 ]
  %1061 = phi float [ %1057, %1054 ], [ 0.000000e+00, %964 ]
  %1062 = phi float [ %998, %1054 ], [ 1.000000e+00, %964 ]
  %1063 = add i32 %56, 160
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = lshr i32 %1065, 22
  %1067 = shl nuw nsw i32 %1066, 5
  %1068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1067)  ; LegacyF16ToF32(value)
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 64
  %1072 = icmp eq i32 %1071, 0
  br i1 %1072, label %1106, label %1073

; <label>:1073                                    ; preds = %1058
  %1074 = add i32 %56, 408
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 131072
  %1082 = icmp eq i32 %1081, 0
  %1083 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1078, %dx.types.Handle %98, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = fmul fast float %1084, %240
  %1088 = fmul fast float %1085, %243
  %1089 = fmul fast float %1086, %246
  br i1 %1082, label %1096, label %1090

; <label>:1090                                    ; preds = %1073
  %1091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.f32 %1091, 0
  %1093 = fmul fast float %1092, %1087
  %1094 = fmul fast float %1092, %1088
  %1095 = fmul fast float %1092, %1089
  br label %1096

; <label>:1096                                    ; preds = %1090, %1073
  %1097 = phi float [ %1093, %1090 ], [ %1087, %1073 ]
  %1098 = phi float [ %1094, %1090 ], [ %1088, %1073 ]
  %1099 = phi float [ %1095, %1090 ], [ %1089, %1073 ]
  %1100 = fmul fast float %1097, %1068
  %1101 = select i1 %223, float %1100, float %1097
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = select i1 %223, float 0.000000e+00, float %1097
  %1104 = select i1 %223, float %1102, float %1098
  %1105 = select i1 %223, float 0.000000e+00, float %1099
  br label %1106

; <label>:1106                                    ; preds = %1096, %1058
  %1107 = phi float [ %1103, %1096 ], [ 0.000000e+00, %1058 ]
  %1108 = phi float [ %1104, %1096 ], [ 0.000000e+00, %1058 ]
  %1109 = phi float [ %1105, %1096 ], [ 0.000000e+00, %1058 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 1024
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1144, label %1114

; <label>:1114                                    ; preds = %1106
  %1115 = add i32 %56, 152
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = and i32 %1117, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = fmul fast float %1119, 0x3F70101020000000
  %1121 = lshr i32 %1117, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F70101020000000
  %1125 = lshr i32 %1117, 16
  %1126 = and i32 %1125, 255
  %1127 = uitofp i32 %1126 to float
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = fmul fast float %1120, %1120
  %1130 = fmul fast float %1124, %1124
  %1131 = fmul fast float %1128, %1128
  %1132 = add i32 %56, 476
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %1134, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1138 = extractvalue %dx.types.ResRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.ResRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.ResRet.f32 %1137, 2
  %1141 = fmul fast float %1129, %1138
  %1142 = fmul fast float %1130, %1139
  %1143 = fmul fast float %1131, %1140
  br label %1144

; <label>:1144                                    ; preds = %1114, %1106
  %1145 = phi float [ %1141, %1114 ], [ 0.000000e+00, %1106 ]
  %1146 = phi float [ %1142, %1114 ], [ 0.000000e+00, %1106 ]
  %1147 = phi float [ %1143, %1114 ], [ 0.000000e+00, %1106 ]
  %1148 = fcmp fast ogt float %1145, 0.000000e+00
  %1149 = fcmp fast ogt float %1146, 0.000000e+00
  %1150 = fcmp fast ogt float %1147, 0.000000e+00
  %1151 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1152 = call float @dx.op.unary.f32(i32 23, float %1146)  ; Log(value)
  %1153 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = lshr i32 %1155, 7
  %1157 = and i32 %1156, 32752
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fmul fast float %1151, 0xBFE62E4300000000
  %1160 = fmul fast float %1159, %1158
  %1161 = fmul fast float %1152, 0xBFE62E4300000000
  %1162 = fmul fast float %1161, %1158
  %1163 = fmul fast float %1153, 0xBFE62E4300000000
  %1164 = fmul fast float %1163, %1158
  %1165 = select i1 %1148, float %1160, float 1.270000e+02
  %1166 = select i1 %1149, float %1162, float 1.270000e+02
  %1167 = select i1 %1150, float %1164, float 1.270000e+02
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 10240
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1192, label %1172

; <label>:1172                                    ; preds = %1144
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 2048
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1192, label %1177

; <label>:1177                                    ; preds = %1172
  %1178 = add i32 %56, 492
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = add i32 %1180, 0
  %1182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1182, %dx.types.Handle %99, float %573, float %574, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = shl i32 %1186, 4
  %1188 = and i32 %1187, 32752
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1189, %1184
  %1191 = call float @dx.op.binary.f32(i32 35, float %1190, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1192

; <label>:1192                                    ; preds = %1177, %1172, %1144
  %1193 = phi float [ %1191, %1177 ], [ 0x3F70101020000000, %1172 ], [ 0x3F70101020000000, %1144 ]
  %1194 = add i32 %56, 96
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = lshr i32 %1196, 8
  %1200 = and i32 %1199, 255
  %1201 = uitofp i32 %1200 to float
  %1202 = call float @dx.op.dot3.f32(i32 55, float %979, float %980, float %981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1203 = fmul fast float %1201, %1202
  %1204 = fadd fast float %1203, %1198
  %1205 = fmul fast float %1204, 0x3F70101020000000
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  br label %1207

; <label>:1207                                    ; preds = %1192, %459
  %1208 = phi float [ 0.000000e+00, %459 ], [ %1060, %1192 ]
  %1209 = phi float [ 0.000000e+00, %459 ], [ %1061, %1192 ]
  %1210 = phi float [ 0.000000e+00, %459 ], [ %979, %1192 ]
  %1211 = phi float [ 0.000000e+00, %459 ], [ %980, %1192 ]
  %1212 = phi float [ 0.000000e+00, %459 ], [ %981, %1192 ]
  %1213 = phi float [ 0.000000e+00, %459 ], [ %1107, %1192 ]
  %1214 = phi float [ 0.000000e+00, %459 ], [ %1108, %1192 ]
  %1215 = phi float [ 0.000000e+00, %459 ], [ %1109, %1192 ]
  %1216 = phi float [ 0.000000e+00, %459 ], [ %1165, %1192 ]
  %1217 = phi float [ 0.000000e+00, %459 ], [ %1166, %1192 ]
  %1218 = phi float [ 0.000000e+00, %459 ], [ %1167, %1192 ]
  %1219 = phi float [ 0.000000e+00, %459 ], [ %965, %1192 ]
  %1220 = phi float [ 0.000000e+00, %459 ], [ %761, %1192 ]
  %1221 = phi float [ 0.000000e+00, %459 ], [ %1059, %1192 ]
  %1222 = phi float [ 0.000000e+00, %459 ], [ %1062, %1192 ]
  %1223 = phi float [ 0.000000e+00, %459 ], [ %1193, %1192 ]
  %1224 = phi float [ 0.000000e+00, %459 ], [ %1206, %1192 ]
  br i1 %407, label %2211, label %1225

; <label>:1225                                    ; preds = %1207
  %1226 = icmp ult i32 %465, 2
  %1227 = add i32 %56, 40
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %56, 44
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = or i32 %1232, %1229
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %2211, label %1235

; <label>:1235                                    ; preds = %1225
  %1236 = and i32 %1229, 262144
  %1237 = icmp ne i32 %1236, 0
  %1238 = select i1 %1237, float %59, float 1.000000e+00
  %1239 = select i1 %1237, float %60, float 0.000000e+00
  %1240 = select i1 %1237, float %61, float 0.000000e+00
  %1241 = select i1 %1237, float %62, float 1.000000e+00
  %1242 = select i1 %1237, float %63, float %84
  %1243 = select i1 %1237, float %64, float %85
  %1244 = add i32 %56, 300
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = lshr i32 %1246, 16
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = fmul fast float %1248, 0x3F50624DE0000000
  %1250 = add i32 %56, 104
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = lshr i32 %1252, 16
  %1254 = and i32 %1253, 255
  %1255 = lshr i32 %1252, 24
  %1256 = add i32 %56, 308
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = lshr i32 %1258, 16
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = add i32 %56, 48
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 22
  %1267 = shl nuw nsw i32 %1266, 5
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = shl i32 %1265, 4
  %1270 = and i32 %1269, 32752
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = lshr i32 %1265, 7
  %1273 = and i32 %1272, 32752
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1277 = fmul fast float %1276, 1.000000e+03
  %1278 = fmul fast float %317, %1277
  %1279 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1280 = fadd fast float %1279, %307
  %1281 = fmul fast float %318, %1277
  %1282 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1283 = fadd fast float %1282, %309
  %1284 = fmul fast float %1249, %1277
  %1285 = call float @dx.op.unary.f32(i32 22, float %1284)  ; Frc(value)
  %1286 = fmul fast float %1285, 0x401921FB60000000
  %1287 = fadd fast float %1286, %1268
  %1288 = call float @dx.op.unary.f32(i32 13, float %1287)  ; Sin(value)
  %1289 = call float @dx.op.unary.f32(i32 12, float %1287)  ; Cos(value)
  %1290 = fsub fast float -0.000000e+00, %1288
  %1291 = fadd fast float %1242, -5.000000e-01
  %1292 = fadd fast float %1243, -5.000000e-01
  %1293 = fmul fast float %1260, %1291
  %1294 = fmul fast float %1262, %1292
  %1295 = fadd fast float %1293, 5.000000e-01
  %1296 = fadd fast float %1294, 5.000000e-01
  %1297 = fmul fast float %1271, %1295
  %1298 = fmul fast float %1274, %1296
  %1299 = fmul fast float %1289, %1297
  %1300 = call float @dx.op.tertiary.f32(i32 46, float %1290, float %1298, float %1299)  ; FMad(a,b,c)
  %1301 = fmul fast float %1288, %1297
  %1302 = call float @dx.op.tertiary.f32(i32 46, float %1289, float %1298, float %1301)  ; FMad(a,b,c)
  %1303 = fadd fast float %1280, %1300
  %1304 = fadd fast float %1283, %1302
  %1305 = icmp ugt i32 %1254, 1
  %1306 = icmp ugt i32 %1252, 33554431
  %1307 = or i1 %1306, %1305
  br i1 %1307, label %1308, label %1333

; <label>:1308                                    ; preds = %1235
  %1309 = add i32 %56, 244
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = lshr i32 %1311, 16
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = fmul fast float %1276, %1313
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = mul nuw nsw i32 %1254, %1255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1315, %1317
  %1319 = call float @dx.op.unary.f32(i32 27, float %1318)  ; Round_ni(value)
  %1320 = fptoui float %1319 to i32
  %1321 = urem i32 %1320, %1254
  %1322 = udiv i32 %1320, %1255
  %1323 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1324 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1325 = uitofp i32 %1321 to float
  %1326 = uitofp i32 %1322 to float
  %1327 = fadd fast float %1323, %1325
  %1328 = fadd fast float %1324, %1326
  %1329 = uitofp i32 %1254 to float
  %1330 = uitofp i32 %1255 to float
  %1331 = fdiv fast float %1327, %1329
  %1332 = fdiv fast float %1328, %1330
  br label %1333

; <label>:1333                                    ; preds = %1308, %1235
  %1334 = phi float [ %1331, %1308 ], [ %1303, %1235 ]
  %1335 = phi float [ %1332, %1308 ], [ %1304, %1235 ]
  %1336 = and i32 %1229, 16777216
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1447, label %1338

; <label>:1338                                    ; preds = %1333
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = fadd fast float %1340, %161
  %1344 = fadd fast float %1341, %162
  %1345 = fadd fast float %1342, %163
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = icmp eq i32 %57, 65535
  br i1 %1349, label %1444, label %1350

; <label>:1350                                    ; preds = %1338
  %1351 = lshr i32 %57, 1
  %1352 = shl i32 %1351, 2
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %57, 1
  %1356 = icmp ne i32 %1355, 0
  %1357 = lshr i32 %1354, 16
  %1358 = and i32 %1354, 65535
  %1359 = select i1 %1356, i32 %1357, i32 %1358
  %1360 = icmp eq i32 %1359, 65535
  br i1 %1360, label %1440, label %1361

; <label>:1361                                    ; preds = %1350
  %1362 = mul nuw nsw i32 %1359, 40
  %1363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = add nuw nsw i32 %1362, 12
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = add nuw nsw i32 %1362, 24
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = add nuw nsw i32 %1362, 36
  %1378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = fsub fast float %1343, %1364
  %1381 = fsub fast float %1344, %1365
  %1382 = fsub fast float %1345, %1366
  %1383 = fmul fast float %1379, %1380
  %1384 = fmul fast float %1379, %1381
  %1385 = fmul fast float %1379, %1382
  %1386 = call float @dx.op.unary.f32(i32 27, float %1383)  ; Round_ni(value)
  %1387 = call float @dx.op.unary.f32(i32 27, float %1384)  ; Round_ni(value)
  %1388 = call float @dx.op.unary.f32(i32 27, float %1385)  ; Round_ni(value)
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = fadd fast float %1388, 5.000000e-01
  %1392 = fmul fast float %1389, %1369
  %1393 = fmul fast float %1390, %1370
  %1394 = fmul fast float %1391, %1371
  %1395 = shl i32 %57, 2
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1401 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1402 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1399, %dx.types.Handle %49, float %1400, float %1401, float %1402, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = fmul fast float %1404, 1.023000e+03
  %1408 = fmul fast float %1405, 1.023000e+03
  %1409 = fmul fast float %1406, 1.023000e+03
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = call float @dx.op.unary.f32(i32 27, float %1411)  ; Round_ni(value)
  %1415 = call float @dx.op.unary.f32(i32 27, float %1412)  ; Round_ni(value)
  %1416 = fsub fast float %1383, %1386
  %1417 = fsub fast float %1384, %1387
  %1418 = fsub fast float %1385, %1388
  %1419 = fmul fast float %1416, 7.500000e-01
  %1420 = fmul fast float %1417, 7.500000e-01
  %1421 = fmul fast float %1418, 7.500000e-01
  %1422 = fadd fast float %1386, 1.250000e-01
  %1423 = fadd fast float %1422, %1419
  %1424 = fadd fast float %1423, %1413
  %1425 = fadd fast float %1387, 1.250000e-01
  %1426 = fadd fast float %1425, %1420
  %1427 = fadd fast float %1426, %1414
  %1428 = fadd fast float %1388, 1.250000e-01
  %1429 = fadd fast float %1428, %1421
  %1430 = fadd fast float %1429, %1415
  %1431 = fmul fast float %1424, %1374
  %1432 = fmul fast float %1427, %1375
  %1433 = fmul fast float %1430, %1376
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1435, 0
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1437, %dx.types.Handle %47, float %1431, float %1432, float %1433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  br label %1440

; <label>:1440                                    ; preds = %1361, %1350
  %1441 = phi float [ %1439, %1361 ], [ -1.000000e+00, %1350 ]
  %1442 = fadd fast float %1441, %1348
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  br label %1444

; <label>:1444                                    ; preds = %1440, %1338
  %1445 = phi float [ %1443, %1440 ], [ %1348, %1338 ]
  %1446 = fmul fast float %1445, %462
  br label %1447

; <label>:1447                                    ; preds = %1444, %1333
  %1448 = phi float [ %1446, %1444 ], [ %462, %1333 ]
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 256
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1499, label %1453

; <label>:1453                                    ; preds = %1447
  %1454 = add i32 %56, 444
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %1456, 0
  %1458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1458, %dx.types.Handle %99, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  %1461 = add i32 %56, 116
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = shl i32 %1463, 4
  %1465 = and i32 %1464, 32752
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = lshr i32 %1463, 7
  %1468 = and i32 %1467, 32752
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = fsub fast float 1.000000e+00, %1448
  %1471 = call float @dx.op.binary.f32(i32 35, float %1470, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1472 = bitcast float %1448 to i32
  %1473 = sitofp i32 %1472 to float
  %1474 = fadd fast float %1473, 0xC1CFBF8940000000
  %1475 = fmul fast float %1469, %1474
  %1476 = fadd fast float %1475, 0x41CFBF8940000000
  %1477 = fptosi float %1476 to i32
  %1478 = bitcast i32 %1477 to float
  %1479 = bitcast float %1471 to i32
  %1480 = sitofp i32 %1479 to float
  %1481 = fadd fast float %1480, 0xC1CFBF8940000000
  %1482 = fmul fast float %1481, %1469
  %1483 = fadd fast float %1482, 0x41CFBF8940000000
  %1484 = fptosi float %1483 to i32
  %1485 = bitcast i32 %1484 to float
  %1486 = fmul fast float %1478, %1466
  %1487 = fmul fast float %1485, %1466
  %1488 = fsub fast float %1471, %1486
  %1489 = fadd fast float %1487, %1471
  %1490 = call float @dx.op.unary.f32(i32 7, float %1488)  ; Saturate(value)
  %1491 = call float @dx.op.unary.f32(i32 7, float %1489)  ; Saturate(value)
  %1492 = fsub fast float %1460, %1490
  %1493 = fsub fast float %1491, %1490
  %1494 = bitcast float %1493 to i32
  %1495 = sub nsw i32 2129859010, %1494
  %1496 = bitcast i32 %1495 to float
  %1497 = fmul fast float %1496, %1492
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  br label %1499

; <label>:1499                                    ; preds = %1453, %1447
  %1500 = phi float [ %1498, %1453 ], [ %1448, %1447 ]
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 128
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1521, label %1505

; <label>:1505                                    ; preds = %1499
  %1506 = add i32 %56, 428
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %1508, 0
  %1510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1510, %dx.types.Handle %99, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 524288
  %1516 = icmp ne i32 %1515, 0
  %1517 = fcmp fast ogt float %1512, 0x3FE0101020000000
  %1518 = select i1 %1517, float 1.000000e+00, float 0.000000e+00
  %1519 = select i1 %1516, float %1518, float %1512
  %1520 = fmul fast float %1519, %1500
  br label %1521

; <label>:1521                                    ; preds = %1505, %1499
  %1522 = phi float [ %1520, %1505 ], [ %1500, %1499 ]
  %1523 = fcmp fast ult float %1522, 0x3F70101020000000
  br i1 %1523, label %2211, label %1524

; <label>:1524                                    ; preds = %1521
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 16
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1727, label %1529

; <label>:1529                                    ; preds = %1524
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %56, 380
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = add i32 %1534, 0
  %1536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1536, %dx.types.Handle %98, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = and i32 %1531, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1531, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1541, %1543
  %1548 = fadd fast float %1547, %1546
  %1549 = fmul fast float %1548, 0x3F70101000000000
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 512
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1562, label %1554

; <label>:1554                                    ; preds = %1529
  %1555 = add i32 %56, 464
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1559, %dx.types.Handle %99, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  br label %1562

; <label>:1562                                    ; preds = %1554, %1529
  %1563 = phi float [ %1561, %1554 ], [ 1.000000e+00, %1529 ]
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 33554432
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1674, label %1568

; <label>:1568                                    ; preds = %1562
  %1569 = add i32 %56, 240
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 65535
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  %1574 = lshr i32 %1571, 16
  %1575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1574)  ; LegacyF16ToF32(value)
  %1576 = add i32 %56, 244
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = and i32 %1578, 65535
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = lshr i32 %1582, 24
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = and i32 %1582, 255
  %1587 = uitofp i32 %1586 to float
  %1588 = fmul fast float %1587, 0x3F70101020000000
  %1589 = lshr i32 %1582, 8
  %1590 = and i32 %1589, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = fmul fast float %1591, 0x3F70101020000000
  %1593 = lshr i32 %1582, 16
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = fmul fast float %1595, 0x3F70101020000000
  %1597 = add i32 %56, 236
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = lshr i32 %1599, 24
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = and i32 %1599, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = fmul fast float %1604, 0x3F70101020000000
  %1606 = lshr i32 %1599, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = lshr i32 %1599, 16
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = bitcast float %1538 to i32
  %1615 = ashr i32 %1614, 1
  %1616 = sub nsw i32 1597463174, %1615
  %1617 = bitcast i32 %1616 to float
  %1618 = fmul fast float %1538, 5.000000e-01
  %1619 = fmul fast float %1617, %1617
  %1620 = fmul fast float %1619, %1618
  %1621 = fsub fast float 1.500000e+00, %1620
  %1622 = fmul fast float %1617, %1538
  %1623 = fmul fast float %1622, %1621
  %1624 = bitcast float %1539 to i32
  %1625 = ashr i32 %1624, 1
  %1626 = sub nsw i32 1597463174, %1625
  %1627 = bitcast i32 %1626 to float
  %1628 = fmul fast float %1539, 5.000000e-01
  %1629 = fmul fast float %1627, %1627
  %1630 = fmul fast float %1629, %1628
  %1631 = fsub fast float 1.500000e+00, %1630
  %1632 = fmul fast float %1627, %1539
  %1633 = fmul fast float %1632, %1631
  %1634 = bitcast float %1540 to i32
  %1635 = ashr i32 %1634, 1
  %1636 = sub nsw i32 1597463174, %1635
  %1637 = bitcast i32 %1636 to float
  %1638 = fmul fast float %1540, 5.000000e-01
  %1639 = fmul fast float %1637, %1637
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float 1.500000e+00, %1640
  %1642 = fmul fast float %1637, %1540
  %1643 = fmul fast float %1642, %1641
  %1644 = fsub fast float %1623, %1605
  %1645 = fsub fast float %1633, %1609
  %1646 = fsub fast float %1643, %1613
  %1647 = fmul fast float %1644, %1573
  %1648 = fmul fast float %1645, %1575
  %1649 = fmul fast float %1646, %1580
  %1650 = fadd fast float %1647, %1588
  %1651 = fadd fast float %1648, %1592
  %1652 = fadd fast float %1649, %1596
  %1653 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1656 = fmul fast float %1653, %1653
  %1657 = fmul fast float %1654, %1654
  %1658 = fmul fast float %1655, %1655
  %1659 = fsub fast float %1656, %1538
  %1660 = fsub fast float %1657, %1539
  %1661 = fsub fast float %1658, %1540
  %1662 = fmul fast float %1659, %1563
  %1663 = fmul fast float %1660, %1563
  %1664 = fmul fast float %1661, %1563
  %1665 = fadd fast float %1662, %1538
  %1666 = fadd fast float %1663, %1539
  %1667 = fadd fast float %1664, %1540
  %1668 = fadd fast float %1585, %1549
  %1669 = fsub fast float %1668, %1602
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = fsub fast float %1670, %1549
  %1672 = fmul fast float %1671, %1563
  %1673 = fadd fast float %1672, %1549
  br label %1727

; <label>:1674                                    ; preds = %1562
  %1675 = and i32 %1565, 134217728
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1711, label %1677

; <label>:1677                                    ; preds = %1674
  %1678 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %1679 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %1680 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1681 = fadd fast float %1678, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fadd fast float %1680, -5.000000e-01
  %1684 = fmul fast float %1681, %1563
  %1685 = fmul fast float %1682, %1563
  %1686 = fmul fast float %1683, %1563
  %1687 = fadd fast float %1684, 5.000000e-01
  %1688 = fadd fast float %1685, 5.000000e-01
  %1689 = fadd fast float %1686, 5.000000e-01
  %1690 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1691 = call float @dx.op.unary.f32(i32 24, float %1539)  ; Sqrt(value)
  %1692 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1693 = fmul fast float %1687, 2.000000e+00
  %1694 = fsub fast float 1.000000e+00, %1693
  %1695 = fmul fast float %1694, %1690
  %1696 = fadd fast float %1695, %1693
  %1697 = fmul fast float %1696, %1690
  %1698 = fmul fast float %1688, 2.000000e+00
  %1699 = fsub fast float 1.000000e+00, %1698
  %1700 = fmul fast float %1699, %1691
  %1701 = fadd fast float %1700, %1698
  %1702 = fmul fast float %1701, %1691
  %1703 = fmul fast float %1689, 2.000000e+00
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fmul fast float %1704, %1692
  %1706 = fadd fast float %1705, %1703
  %1707 = fmul fast float %1706, %1692
  %1708 = fmul fast float %1697, %1697
  %1709 = fmul fast float %1702, %1702
  %1710 = fmul fast float %1707, %1707
  br label %1727

; <label>:1711                                    ; preds = %1674
  %1712 = fmul fast float %294, %294
  %1713 = fmul fast float %298, %298
  %1714 = fmul fast float %302, %302
  %1715 = fadd fast float %1712, -1.000000e+00
  %1716 = fadd fast float %1713, -1.000000e+00
  %1717 = fadd fast float %1714, -1.000000e+00
  %1718 = fmul fast float %1563, %1715
  %1719 = fmul fast float %1563, %1716
  %1720 = fmul fast float %1563, %1717
  %1721 = fadd fast float %1718, 1.000000e+00
  %1722 = fadd fast float %1719, 1.000000e+00
  %1723 = fadd fast float %1720, 1.000000e+00
  %1724 = fmul fast float %1721, %1538
  %1725 = fmul fast float %1722, %1539
  %1726 = fmul fast float %1723, %1540
  br label %1727

; <label>:1727                                    ; preds = %1711, %1677, %1568, %1524
  %1728 = phi float [ %1673, %1568 ], [ %1549, %1677 ], [ %1549, %1711 ], [ 0x3FA23C0BE0000000, %1524 ]
  %1729 = phi float [ %1665, %1568 ], [ %1708, %1677 ], [ %1724, %1711 ], [ 1.000000e+00, %1524 ]
  %1730 = phi float [ %1666, %1568 ], [ %1709, %1677 ], [ %1725, %1711 ], [ 1.000000e+00, %1524 ]
  %1731 = phi float [ %1667, %1568 ], [ %1710, %1677 ], [ %1726, %1711 ], [ 1.000000e+00, %1524 ]
  %1732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.i32 %1732, 1
  %1734 = and i32 %1733, 1
  %1735 = icmp ne i32 %1734, 0
  %1736 = add i32 %56, 356
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 32
  %1740 = icmp ne i32 %1739, 0
  %1741 = and i1 %1735, %1740
  %1742 = select i1 %1741, float 1.000000e+00, float %1729
  %1743 = select i1 %1741, float 0x3FD3333340000000, float %1730
  %1744 = select i1 %1741, float 0x3FD3333340000000, float %1731
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 32
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1821, label %1749

; <label>:1749                                    ; preds = %1727
  %1750 = add i32 %56, 108
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %56, 396
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = add i32 %1755, 0
  %1757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1757, %dx.types.Handle %98, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1759 = extractvalue %dx.types.ResRet.f32 %1758, 0
  %1760 = extractvalue %dx.types.ResRet.f32 %1758, 1
  %1761 = extractvalue %dx.types.ResRet.f32 %1758, 2
  %1762 = extractvalue %dx.types.ResRet.f32 %1758, 3
  %1763 = and i32 %1752, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = lshr i32 %1752, 8
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = lshr i32 %1752, 16
  %1769 = and i32 %1768, 255
  %1770 = uitofp i32 %1769 to float
  %1771 = fmul fast float %1770, 0x3F70101000000000
  %1772 = fmul fast float %1759, %1764
  %1773 = fadd fast float %1772, %1767
  %1774 = fmul fast float %1773, 0x3F70101000000000
  %1775 = fadd fast float %1760, -5.000000e-01
  %1776 = fadd fast float %1762, -5.000000e-01
  %1777 = fmul fast float %1775, %1771
  %1778 = fmul fast float %1776, %1771
  %1779 = fadd fast float %1777, 5.000000e-01
  %1780 = fadd fast float %1778, 5.000000e-01
  %1781 = fmul fast float %1779, 2.000000e+00
  %1782 = fadd fast float %1781, -1.000000e+00
  %1783 = fmul fast float %1780, 2.000000e+00
  %1784 = fadd fast float %1783, -1.000000e+00
  %1785 = fadd fast float %1782, %1784
  %1786 = fmul fast float %1785, 5.000000e-01
  %1787 = fsub fast float %1782, %1784
  %1788 = fmul fast float %1787, 5.000000e-01
  %1789 = call float @dx.op.unary.f32(i32 6, float %1786)  ; FAbs(value)
  %1790 = fsub fast float 1.000000e+00, %1789
  %1791 = call float @dx.op.unary.f32(i32 6, float %1788)  ; FAbs(value)
  %1792 = fsub fast float %1790, %1791
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1788, float %1792, float %1786, float %1788, float %1792)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = call float @dx.op.unary.f32(i32 25, float %1793)  ; Rsqrt(value)
  %1795 = fmul fast float %1786, %1794
  %1796 = fmul fast float %1788, %1794
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 67108864
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1817, label %1801

; <label>:1801                                    ; preds = %1749
  %1802 = add i32 %56, 296
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = and i32 %1804, 65535
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 65535
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = lshr i32 %1804, 16
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = fsub fast float %1774, %1812
  %1814 = fmul fast float %1813, %1806
  %1815 = fadd fast float %1814, %1810
  %1816 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  br label %1817

; <label>:1817                                    ; preds = %1801, %1749
  %1818 = phi float [ %1816, %1801 ], [ %1774, %1749 ]
  %1819 = call float @dx.op.dot2.f32(i32 54, float %1795, float %1796, float %1238, float %1239)  ; Dot2(ax,ay,bx,by)
  %1820 = call float @dx.op.dot2.f32(i32 54, float %1795, float %1796, float %1240, float %1241)  ; Dot2(ax,ay,bx,by)
  br label %1821

; <label>:1821                                    ; preds = %1817, %1727
  %1822 = phi float [ %1818, %1817 ], [ 0x3FD6666660000000, %1727 ]
  %1823 = phi float [ %1819, %1817 ], [ 0.000000e+00, %1727 ]
  %1824 = phi float [ %1820, %1817 ], [ 0.000000e+00, %1727 ]
  %1825 = phi float [ %1761, %1817 ], [ 1.000000e+00, %1727 ]
  %1826 = add i32 %56, 176
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = lshr i32 %1828, 22
  %1830 = shl nuw nsw i32 %1829, 5
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 64
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1869, label %1836

; <label>:1836                                    ; preds = %1821
  %1837 = add i32 %56, 412
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = add i32 %1839, 0
  %1841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = and i32 %1843, 131072
  %1845 = icmp eq i32 %1844, 0
  %1846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1841, %dx.types.Handle %98, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1846, 2
  %1850 = fmul fast float %1847, %282
  %1851 = fmul fast float %1848, %285
  %1852 = fmul fast float %1849, %288
  br i1 %1845, label %1859, label %1853

; <label>:1853                                    ; preds = %1836
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = fmul fast float %1855, %1850
  %1857 = fmul fast float %1855, %1851
  %1858 = fmul fast float %1855, %1852
  br label %1859

; <label>:1859                                    ; preds = %1853, %1836
  %1860 = phi float [ %1856, %1853 ], [ %1850, %1836 ]
  %1861 = phi float [ %1857, %1853 ], [ %1851, %1836 ]
  %1862 = phi float [ %1858, %1853 ], [ %1852, %1836 ]
  %1863 = fmul fast float %1860, %1831
  %1864 = select i1 %223, float %1863, float %1860
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1864, float %1861, float %1862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = select i1 %223, float 0.000000e+00, float %1860
  %1867 = select i1 %223, float %1865, float %1861
  %1868 = select i1 %223, float 0.000000e+00, float %1862
  br label %1869

; <label>:1869                                    ; preds = %1859, %1821
  %1870 = phi float [ %1866, %1859 ], [ 0.000000e+00, %1821 ]
  %1871 = phi float [ %1867, %1859 ], [ 0.000000e+00, %1821 ]
  %1872 = phi float [ %1868, %1859 ], [ 0.000000e+00, %1821 ]
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %1874, 1024
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1907, label %1877

; <label>:1877                                    ; preds = %1869
  %1878 = add i32 %56, 168
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 255
  %1882 = uitofp i32 %1881 to float
  %1883 = fmul fast float %1882, 0x3F70101020000000
  %1884 = lshr i32 %1880, 8
  %1885 = and i32 %1884, 255
  %1886 = uitofp i32 %1885 to float
  %1887 = fmul fast float %1886, 0x3F70101020000000
  %1888 = lshr i32 %1880, 16
  %1889 = and i32 %1888, 255
  %1890 = uitofp i32 %1889 to float
  %1891 = fmul fast float %1890, 0x3F70101020000000
  %1892 = fmul fast float %1883, %1883
  %1893 = fmul fast float %1887, %1887
  %1894 = fmul fast float %1891, %1891
  %1895 = add i32 %56, 480
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = add i32 %1897, 0
  %1899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1899, %dx.types.Handle %99, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = fmul fast float %1892, %1901
  %1905 = fmul fast float %1893, %1902
  %1906 = fmul fast float %1894, %1903
  br label %1907

; <label>:1907                                    ; preds = %1877, %1869
  %1908 = phi float [ %1904, %1877 ], [ 0.000000e+00, %1869 ]
  %1909 = phi float [ %1905, %1877 ], [ 0.000000e+00, %1869 ]
  %1910 = phi float [ %1906, %1877 ], [ 0.000000e+00, %1869 ]
  %1911 = fcmp fast ogt float %1908, 0.000000e+00
  %1912 = fcmp fast ogt float %1909, 0.000000e+00
  %1913 = fcmp fast ogt float %1910, 0.000000e+00
  %1914 = call float @dx.op.unary.f32(i32 23, float %1908)  ; Log(value)
  %1915 = call float @dx.op.unary.f32(i32 23, float %1909)  ; Log(value)
  %1916 = call float @dx.op.unary.f32(i32 23, float %1910)  ; Log(value)
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 7
  %1920 = and i32 %1919, 32752
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = fmul fast float %1914, 0xBFE62E4300000000
  %1923 = fmul fast float %1922, %1921
  %1924 = fmul fast float %1915, 0xBFE62E4300000000
  %1925 = fmul fast float %1924, %1921
  %1926 = fmul fast float %1916, 0xBFE62E4300000000
  %1927 = fmul fast float %1926, %1921
  %1928 = select i1 %1911, float %1923, float 1.270000e+02
  %1929 = select i1 %1912, float %1925, float 1.270000e+02
  %1930 = select i1 %1913, float %1927, float 1.270000e+02
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 10240
  %1934 = icmp eq i32 %1933, 0
  br i1 %1934, label %1955, label %1935

; <label>:1935                                    ; preds = %1907
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = and i32 %1937, 2048
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %1955, label %1940

; <label>:1940                                    ; preds = %1935
  %1941 = add i32 %56, 496
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = add i32 %1943, 0
  %1945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1945, %dx.types.Handle %99, float %1334, float %1335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1947 = extractvalue %dx.types.ResRet.f32 %1946, 3
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = shl i32 %1949, 4
  %1951 = and i32 %1950, 32752
  %1952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1951)  ; LegacyF16ToF32(value)
  %1953 = fmul fast float %1952, %1947
  %1954 = call float @dx.op.binary.f32(i32 35, float %1953, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1955

; <label>:1955                                    ; preds = %1940, %1935, %1907
  %1956 = phi float [ %1954, %1940 ], [ 0x3F70101020000000, %1935 ], [ 0x3F70101020000000, %1907 ]
  %1957 = add i32 %56, 112
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 255
  %1961 = uitofp i32 %1960 to float
  %1962 = lshr i32 %1959, 8
  %1963 = and i32 %1962, 255
  %1964 = uitofp i32 %1963 to float
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1743, float %1744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = fmul fast float %1964, %1965
  %1967 = fadd fast float %1966, %1961
  %1968 = fmul fast float %1967, 0x3F70101020000000
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  br i1 %1226, label %1970, label %2005

; <label>:1970                                    ; preds = %1955
  %1971 = fmul fast float %1956, 2.000000e+00
  %1972 = fcmp fast olt float %1928, 1.270000e+02
  %1973 = fcmp fast olt float %1929, 1.270000e+02
  %1974 = fcmp fast olt float %1930, 1.270000e+02
  %1975 = fmul fast float %1928, 0xBFF7154760000000
  %1976 = fmul fast float %1975, %1971
  %1977 = fmul fast float %1929, 0xBFF7154760000000
  %1978 = fmul fast float %1977, %1971
  %1979 = fmul fast float %1930, 0xBFF7154760000000
  %1980 = fmul fast float %1979, %1971
  %1981 = call float @dx.op.unary.f32(i32 21, float %1976)  ; Exp(value)
  %1982 = call float @dx.op.unary.f32(i32 21, float %1978)  ; Exp(value)
  %1983 = call float @dx.op.unary.f32(i32 21, float %1980)  ; Exp(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1985 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1987 = fadd fast float %1984, -1.000000e+00
  %1988 = select i1 %1972, float %1987, float -1.000000e+00
  %1989 = fadd fast float %1985, -1.000000e+00
  %1990 = select i1 %1973, float %1989, float -1.000000e+00
  %1991 = fadd fast float %1986, -1.000000e+00
  %1992 = select i1 %1974, float %1991, float -1.000000e+00
  %1993 = fmul fast float %1988, %1522
  %1994 = fmul fast float %1990, %1522
  %1995 = fmul fast float %1992, %1522
  %1996 = fadd fast float %1993, 1.000000e+00
  %1997 = fadd fast float %1994, 1.000000e+00
  %1998 = fadd fast float %1995, 1.000000e+00
  %1999 = fmul fast float %1996, %1210
  %2000 = fmul fast float %1997, %1211
  %2001 = fmul fast float %1998, %1212
  %2002 = fmul fast float %1996, %1213
  %2003 = fmul fast float %1997, %1214
  %2004 = fmul fast float %1998, %1215
  br label %2005

; <label>:2005                                    ; preds = %1970, %1955
  %2006 = phi float [ %1999, %1970 ], [ %1210, %1955 ]
  %2007 = phi float [ %2000, %1970 ], [ %1211, %1955 ]
  %2008 = phi float [ %2001, %1970 ], [ %1212, %1955 ]
  %2009 = phi float [ %2002, %1970 ], [ %1213, %1955 ]
  %2010 = phi float [ %2003, %1970 ], [ %1214, %1955 ]
  %2011 = phi float [ %2004, %1970 ], [ %1215, %1955 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 3
  %2015 = icmp eq i32 %2014, 3
  br i1 %2015, label %2094, label %2016

; <label>:2016                                    ; preds = %2005
  %2017 = and i32 %2013, 16
  %2018 = icmp ne i32 %2017, 0
  %2019 = select i1 %2018, float %1522, float 0.000000e+00
  %2020 = icmp eq i32 %2014, 0
  br i1 %2020, label %2021, label %2049

; <label>:2021                                    ; preds = %2016
  %2022 = and i32 %2013, 64
  %2023 = icmp ne i32 %2022, 0
  %2024 = select i1 %2023, float %1522, float 0.000000e+00
  %2025 = fsub fast float %1742, %2006
  %2026 = fsub fast float %1743, %2007
  %2027 = fsub fast float %1744, %2008
  %2028 = fmul fast float %2019, %2025
  %2029 = fmul fast float %2019, %2026
  %2030 = fmul fast float %2019, %2027
  %2031 = fadd fast float %2028, %2006
  %2032 = fadd fast float %2029, %2007
  %2033 = fadd fast float %2030, %2008
  %2034 = fsub fast float %1728, %1219
  %2035 = fmul fast float %2019, %2034
  %2036 = fadd fast float %2035, %1219
  %2037 = fsub fast float %1870, %2009
  %2038 = fsub fast float %1871, %2010
  %2039 = fsub fast float %1872, %2011
  %2040 = fmul fast float %2024, %2037
  %2041 = fmul fast float %2024, %2038
  %2042 = fmul fast float %2024, %2039
  %2043 = fadd fast float %2040, %2009
  %2044 = fadd fast float %2041, %2010
  %2045 = fadd fast float %2042, %2011
  %2046 = fsub fast float %1969, %1224
  %2047 = fmul fast float %2019, %2046
  %2048 = fadd fast float %2047, %1224
  br label %2094

; <label>:2049                                    ; preds = %2016
  %2050 = icmp eq i32 %2014, 1
  br i1 %2050, label %2051, label %2064

; <label>:2051                                    ; preds = %2049
  %2052 = fadd fast float %1742, -1.000000e+00
  %2053 = fadd fast float %1743, -1.000000e+00
  %2054 = fadd fast float %1744, -1.000000e+00
  %2055 = fmul fast float %2019, %2052
  %2056 = fmul fast float %2019, %2053
  %2057 = fmul fast float %2019, %2054
  %2058 = fadd fast float %2055, 1.000000e+00
  %2059 = fadd fast float %2056, 1.000000e+00
  %2060 = fadd fast float %2057, 1.000000e+00
  %2061 = fmul fast float %2058, %2006
  %2062 = fmul fast float %2059, %2007
  %2063 = fmul fast float %2060, %2008
  br label %2094

; <label>:2064                                    ; preds = %2049
  %2065 = icmp eq i32 %2014, 2
  br i1 %2065, label %2066, label %2094

; <label>:2066                                    ; preds = %2064
  %2067 = call float @dx.op.unary.f32(i32 24, float %1742)  ; Sqrt(value)
  %2068 = call float @dx.op.unary.f32(i32 24, float %1743)  ; Sqrt(value)
  %2069 = call float @dx.op.unary.f32(i32 24, float %1744)  ; Sqrt(value)
  %2070 = fadd fast float %2067, -5.000000e-01
  %2071 = fadd fast float %2068, -5.000000e-01
  %2072 = fadd fast float %2069, -5.000000e-01
  %2073 = fmul fast float %2070, %2019
  %2074 = fmul fast float %2071, %2019
  %2075 = fmul fast float %2072, %2019
  %2076 = fadd fast float %2073, 5.000000e-01
  %2077 = fadd fast float %2074, 5.000000e-01
  %2078 = fadd fast float %2075, 5.000000e-01
  %2079 = fmul fast float %2076, 2.000000e+00
  %2080 = fsub fast float 1.000000e+00, %2079
  %2081 = fmul fast float %2080, %2006
  %2082 = fadd fast float %2081, %2079
  %2083 = fmul fast float %2082, %2006
  %2084 = fmul fast float %2077, 2.000000e+00
  %2085 = fsub fast float 1.000000e+00, %2084
  %2086 = fmul fast float %2085, %2007
  %2087 = fadd fast float %2086, %2084
  %2088 = fmul fast float %2087, %2007
  %2089 = fmul fast float %2078, 2.000000e+00
  %2090 = fsub fast float 1.000000e+00, %2089
  %2091 = fmul fast float %2090, %2008
  %2092 = fadd fast float %2091, %2089
  %2093 = fmul fast float %2092, %2008
  br label %2094

; <label>:2094                                    ; preds = %2066, %2064, %2051, %2021, %2005
  %2095 = phi float [ %2006, %2005 ], [ %2083, %2066 ], [ %2006, %2064 ], [ %2061, %2051 ], [ %2031, %2021 ]
  %2096 = phi float [ %2007, %2005 ], [ %2088, %2066 ], [ %2007, %2064 ], [ %2062, %2051 ], [ %2032, %2021 ]
  %2097 = phi float [ %2008, %2005 ], [ %2093, %2066 ], [ %2008, %2064 ], [ %2063, %2051 ], [ %2033, %2021 ]
  %2098 = phi float [ %2009, %2005 ], [ %2009, %2066 ], [ %2009, %2064 ], [ %2009, %2051 ], [ %2043, %2021 ]
  %2099 = phi float [ %2010, %2005 ], [ %2010, %2066 ], [ %2010, %2064 ], [ %2010, %2051 ], [ %2044, %2021 ]
  %2100 = phi float [ %2011, %2005 ], [ %2011, %2066 ], [ %2011, %2064 ], [ %2011, %2051 ], [ %2045, %2021 ]
  %2101 = phi float [ %1219, %2005 ], [ %1219, %2066 ], [ %1219, %2064 ], [ %1219, %2051 ], [ %2036, %2021 ]
  %2102 = phi float [ %1224, %2005 ], [ %1224, %2066 ], [ %1224, %2064 ], [ %1224, %2051 ], [ %2048, %2021 ]
  %2103 = and i32 %2013, 12
  %2104 = icmp eq i32 %2103, 12
  br i1 %2104, label %2211, label %2105

; <label>:2105                                    ; preds = %2094
  %2106 = and i32 %2013, 2097184
  %2107 = icmp eq i32 %2106, 2097184
  %2108 = select i1 %2107, float %1522, float 0.000000e+00
  %2109 = and i32 %2013, 4194336
  %2110 = icmp eq i32 %2109, 4194336
  %2111 = select i1 %2110, float %1522, float 0.000000e+00
  %2112 = and i32 %2013, 8388640
  %2113 = icmp eq i32 %2112, 8388640
  %2114 = select i1 %2113, float %1522, float 0.000000e+00
  %2115 = and i32 %2013, 1024
  %2116 = icmp ne i32 %2115, 0
  %2117 = select i1 %2116, float %1522, float 0.000000e+00
  %2118 = and i32 %2013, 2048
  %2119 = icmp ne i32 %2118, 0
  %2120 = select i1 %2119, float %1522, float 0.000000e+00
  %2121 = icmp eq i32 %2103, 0
  br i1 %2121, label %2122, label %2147

; <label>:2122                                    ; preds = %2105
  %2123 = fsub fast float %1823, %1208
  %2124 = fsub fast float %1824, %1209
  %2125 = fmul fast float %2108, %2123
  %2126 = fmul fast float %2108, %2124
  %2127 = fadd fast float %2125, %1208
  %2128 = fadd fast float %2126, %1209
  %2129 = fsub fast float %1825, %1222
  %2130 = fmul fast float %2111, %2129
  %2131 = fadd fast float %2130, %1222
  %2132 = fsub fast float %1822, %1221
  %2133 = fmul fast float %2114, %2132
  %2134 = fadd fast float %2133, %1221
  %2135 = fsub fast float %1928, %1216
  %2136 = fsub fast float %1929, %1217
  %2137 = fsub fast float %1930, %1218
  %2138 = fmul fast float %2117, %2135
  %2139 = fmul fast float %2117, %2136
  %2140 = fmul fast float %2117, %2137
  %2141 = fadd fast float %2138, %1216
  %2142 = fadd fast float %2139, %1217
  %2143 = fadd fast float %2140, %1218
  %2144 = fsub fast float %1956, %1223
  %2145 = fmul fast float %2120, %2144
  %2146 = fadd fast float %2145, %1223
  br label %2211

; <label>:2147                                    ; preds = %2105
  %2148 = icmp eq i32 %2103, 4
  br i1 %2148, label %2149, label %2189

; <label>:2149                                    ; preds = %2147
  %2150 = fmul fast float %2108, %1823
  %2151 = fmul fast float %2108, %1824
  %2152 = fadd fast float %2150, %1208
  %2153 = fadd fast float %2151, %1209
  %2154 = call float @dx.op.binary.f32(i32 36, float %1222, float %1825)  ; FMin(a,b)
  %2155 = fsub fast float %2154, %1222
  %2156 = fmul fast float %2155, %2111
  %2157 = fadd fast float %2156, %1222
  %2158 = fadd fast float %1822, %1221
  %2159 = fmul fast float %2158, 0x3FF337FAE0000000
  %2160 = fmul fast float %1221, %1221
  %2161 = fmul fast float %1822, %1822
  %2162 = fadd fast float %2161, %2160
  %2163 = fmul fast float %2162, 0x3FE5152B00000000
  %2164 = fmul fast float %1221, 0xBFCC1F85E0000000
  %2165 = fmul fast float %2164, %1822
  %2166 = fadd fast float %2165, 0xBFE1363700000000
  %2167 = fadd fast float %2166, %2159
  %2168 = fsub fast float %2167, %2163
  %2169 = fmul fast float %2158, 0x3FBA6F0D00000000
  %2170 = fmul fast float %2162, 0x3FD0432880000000
  %2171 = fmul fast float %1221, 0xBFEF110800000000
  %2172 = fmul fast float %2171, %1822
  %2173 = fadd fast float %2172, 1.000000e+00
  %2174 = fsub fast float %2173, %2169
  %2175 = fadd fast float %2174, %2170
  %2176 = fdiv fast float %2168, %2175
  %2177 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2178 = fsub fast float %2177, %1221
  %2179 = fmul fast float %2178, %2114
  %2180 = fadd fast float %2179, %1221
  %2181 = fmul fast float %2117, %1928
  %2182 = fmul fast float %2117, %1929
  %2183 = fmul fast float %2117, %1930
  %2184 = fadd fast float %2181, %1216
  %2185 = fadd fast float %2182, %1217
  %2186 = fadd fast float %2183, %1218
  %2187 = fmul fast float %2120, %1956
  %2188 = fadd fast float %2187, %1223
  br label %2211

; <label>:2189                                    ; preds = %2147
  %2190 = icmp eq i32 %2103, 8
  br i1 %2190, label %2191, label %2211

; <label>:2191                                    ; preds = %2189
  %2192 = fmul fast float %2108, %1823
  %2193 = fmul fast float %2108, %1824
  %2194 = fadd fast float %2192, %1208
  %2195 = fadd fast float %2193, %1209
  %2196 = call float @dx.op.binary.f32(i32 36, float %1222, float %1825)  ; FMin(a,b)
  %2197 = fsub fast float %2196, %1222
  %2198 = fmul fast float %2197, %2111
  %2199 = fadd fast float %2198, %1222
  %2200 = fsub fast float %1822, %1221
  %2201 = fmul fast float %2114, %2200
  %2202 = fadd fast float %2201, %1221
  %2203 = fmul fast float %2117, %1928
  %2204 = fmul fast float %2117, %1929
  %2205 = fmul fast float %2117, %1930
  %2206 = fadd fast float %2203, %1216
  %2207 = fadd fast float %2204, %1217
  %2208 = fadd fast float %2205, %1218
  %2209 = fmul fast float %2120, %1956
  %2210 = fadd fast float %2209, %1223
  br label %2211

; <label>:2211                                    ; preds = %2191, %2189, %2149, %2122, %2094, %1521, %1225, %1207
  %2212 = phi float [ %1208, %2094 ], [ %1208, %1521 ], [ %1208, %1207 ], [ %2194, %2191 ], [ %1208, %2189 ], [ %2152, %2149 ], [ %2127, %2122 ], [ %1208, %1225 ]
  %2213 = phi float [ %1209, %2094 ], [ %1209, %1521 ], [ %1209, %1207 ], [ %2195, %2191 ], [ %1209, %2189 ], [ %2153, %2149 ], [ %2128, %2122 ], [ %1209, %1225 ]
  %2214 = phi float [ %2095, %2094 ], [ %1210, %1521 ], [ %1210, %1207 ], [ %2095, %2191 ], [ %2095, %2189 ], [ %2095, %2149 ], [ %2095, %2122 ], [ %1210, %1225 ]
  %2215 = phi float [ %2096, %2094 ], [ %1211, %1521 ], [ %1211, %1207 ], [ %2096, %2191 ], [ %2096, %2189 ], [ %2096, %2149 ], [ %2096, %2122 ], [ %1211, %1225 ]
  %2216 = phi float [ %2097, %2094 ], [ %1212, %1521 ], [ %1212, %1207 ], [ %2097, %2191 ], [ %2097, %2189 ], [ %2097, %2149 ], [ %2097, %2122 ], [ %1212, %1225 ]
  %2217 = phi float [ %2098, %2094 ], [ %1213, %1521 ], [ %1213, %1207 ], [ %2098, %2191 ], [ %2098, %2189 ], [ %2098, %2149 ], [ %2098, %2122 ], [ %1213, %1225 ]
  %2218 = phi float [ %2099, %2094 ], [ %1214, %1521 ], [ %1214, %1207 ], [ %2099, %2191 ], [ %2099, %2189 ], [ %2099, %2149 ], [ %2099, %2122 ], [ %1214, %1225 ]
  %2219 = phi float [ %2100, %2094 ], [ %1215, %1521 ], [ %1215, %1207 ], [ %2100, %2191 ], [ %2100, %2189 ], [ %2100, %2149 ], [ %2100, %2122 ], [ %1215, %1225 ]
  %2220 = phi float [ %1216, %2094 ], [ %1216, %1521 ], [ %1216, %1207 ], [ %2206, %2191 ], [ %1216, %2189 ], [ %2184, %2149 ], [ %2141, %2122 ], [ %1216, %1225 ]
  %2221 = phi float [ %1217, %2094 ], [ %1217, %1521 ], [ %1217, %1207 ], [ %2207, %2191 ], [ %1217, %2189 ], [ %2185, %2149 ], [ %2142, %2122 ], [ %1217, %1225 ]
  %2222 = phi float [ %1218, %2094 ], [ %1218, %1521 ], [ %1218, %1207 ], [ %2208, %2191 ], [ %1218, %2189 ], [ %2186, %2149 ], [ %2143, %2122 ], [ %1218, %1225 ]
  %2223 = phi float [ %2101, %2094 ], [ %1219, %1521 ], [ %1219, %1207 ], [ %2101, %2191 ], [ %2101, %2189 ], [ %2101, %2149 ], [ %2101, %2122 ], [ %1219, %1225 ]
  %2224 = phi float [ %1221, %2094 ], [ %1221, %1521 ], [ %1221, %1207 ], [ %2202, %2191 ], [ %1221, %2189 ], [ %2180, %2149 ], [ %2134, %2122 ], [ %1221, %1225 ]
  %2225 = phi float [ %1222, %2094 ], [ %1222, %1521 ], [ %1222, %1207 ], [ %2199, %2191 ], [ %1222, %2189 ], [ %2157, %2149 ], [ %2131, %2122 ], [ %1222, %1225 ]
  %2226 = phi float [ %1223, %2094 ], [ %1223, %1521 ], [ %1223, %1207 ], [ %2210, %2191 ], [ %1223, %2189 ], [ %2188, %2149 ], [ %2146, %2122 ], [ %1223, %1225 ]
  %2227 = phi float [ %2102, %2094 ], [ %1224, %1521 ], [ %1224, %1207 ], [ %2102, %2191 ], [ %2102, %2189 ], [ %2102, %2149 ], [ %2102, %2122 ], [ %1224, %1225 ]
  br i1 %409, label %3214, label %2228

; <label>:2228                                    ; preds = %2211
  %2229 = icmp ult i32 %465, 3
  %2230 = add i32 %56, 56
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %56, 60
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = or i32 %2235, %2232
  %2237 = icmp eq i32 %2236, 0
  br i1 %2237, label %3214, label %2238

; <label>:2238                                    ; preds = %2228
  %2239 = and i32 %2232, 262144
  %2240 = icmp ne i32 %2239, 0
  %2241 = select i1 %2240, float %59, float 1.000000e+00
  %2242 = select i1 %2240, float %60, float 0.000000e+00
  %2243 = select i1 %2240, float %61, float 0.000000e+00
  %2244 = select i1 %2240, float %62, float 1.000000e+00
  %2245 = select i1 %2240, float %63, float %84
  %2246 = select i1 %2240, float %64, float %85
  %2247 = add i32 %56, 316
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = lshr i32 %2249, 16
  %2251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2250)  ; LegacyF16ToF32(value)
  %2252 = fmul fast float %2251, 0x3F50624DE0000000
  %2253 = add i32 %56, 120
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 16
  %2257 = and i32 %2256, 255
  %2258 = lshr i32 %2255, 24
  %2259 = add i32 %56, 324
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 65535
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = lshr i32 %2261, 16
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = add i32 %56, 64
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = lshr i32 %2268, 22
  %2270 = shl nuw nsw i32 %2269, 5
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = shl i32 %2268, 4
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = lshr i32 %2268, 7
  %2276 = and i32 %2275, 32752
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.f32 %2278, 3
  %2280 = fmul fast float %2279, 1.000000e+03
  %2281 = fmul fast float %359, %2280
  %2282 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2283 = fadd fast float %2282, %349
  %2284 = fmul fast float %360, %2280
  %2285 = call float @dx.op.unary.f32(i32 22, float %2284)  ; Frc(value)
  %2286 = fadd fast float %2285, %351
  %2287 = fmul fast float %2252, %2280
  %2288 = call float @dx.op.unary.f32(i32 22, float %2287)  ; Frc(value)
  %2289 = fmul fast float %2288, 0x401921FB60000000
  %2290 = fadd fast float %2289, %2271
  %2291 = call float @dx.op.unary.f32(i32 13, float %2290)  ; Sin(value)
  %2292 = call float @dx.op.unary.f32(i32 12, float %2290)  ; Cos(value)
  %2293 = fsub fast float -0.000000e+00, %2291
  %2294 = fadd fast float %2245, -5.000000e-01
  %2295 = fadd fast float %2246, -5.000000e-01
  %2296 = fmul fast float %2263, %2294
  %2297 = fmul fast float %2265, %2295
  %2298 = fadd fast float %2296, 5.000000e-01
  %2299 = fadd fast float %2297, 5.000000e-01
  %2300 = fmul fast float %2274, %2298
  %2301 = fmul fast float %2277, %2299
  %2302 = fmul fast float %2292, %2300
  %2303 = call float @dx.op.tertiary.f32(i32 46, float %2293, float %2301, float %2302)  ; FMad(a,b,c)
  %2304 = fmul fast float %2291, %2300
  %2305 = call float @dx.op.tertiary.f32(i32 46, float %2292, float %2301, float %2304)  ; FMad(a,b,c)
  %2306 = fadd fast float %2283, %2303
  %2307 = fadd fast float %2286, %2305
  %2308 = icmp ugt i32 %2257, 1
  %2309 = icmp ugt i32 %2255, 33554431
  %2310 = or i1 %2309, %2308
  br i1 %2310, label %2311, label %2336

; <label>:2311                                    ; preds = %2238
  %2312 = add i32 %56, 260
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = lshr i32 %2314, 16
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = fmul fast float %2279, %2316
  %2318 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  %2319 = mul nuw nsw i32 %2257, %2258
  %2320 = uitofp i32 %2319 to float
  %2321 = fmul fast float %2318, %2320
  %2322 = call float @dx.op.unary.f32(i32 27, float %2321)  ; Round_ni(value)
  %2323 = fptoui float %2322 to i32
  %2324 = urem i32 %2323, %2257
  %2325 = udiv i32 %2323, %2258
  %2326 = call float @dx.op.unary.f32(i32 22, float %2306)  ; Frc(value)
  %2327 = call float @dx.op.unary.f32(i32 22, float %2307)  ; Frc(value)
  %2328 = uitofp i32 %2324 to float
  %2329 = uitofp i32 %2325 to float
  %2330 = fadd fast float %2326, %2328
  %2331 = fadd fast float %2327, %2329
  %2332 = uitofp i32 %2257 to float
  %2333 = uitofp i32 %2258 to float
  %2334 = fdiv fast float %2330, %2332
  %2335 = fdiv fast float %2331, %2333
  br label %2336

; <label>:2336                                    ; preds = %2311, %2238
  %2337 = phi float [ %2334, %2311 ], [ %2306, %2238 ]
  %2338 = phi float [ %2335, %2311 ], [ %2307, %2238 ]
  %2339 = and i32 %2232, 16777216
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2450, label %2341

; <label>:2341                                    ; preds = %2336
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2346 = fadd fast float %2343, %161
  %2347 = fadd fast float %2344, %162
  %2348 = fadd fast float %2345, %163
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  %2352 = icmp eq i32 %57, 65535
  br i1 %2352, label %2447, label %2353

; <label>:2353                                    ; preds = %2341
  %2354 = lshr i32 %57, 1
  %2355 = shl i32 %2354, 2
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %57, 1
  %2359 = icmp ne i32 %2358, 0
  %2360 = lshr i32 %2357, 16
  %2361 = and i32 %2357, 65535
  %2362 = select i1 %2359, i32 %2360, i32 %2361
  %2363 = icmp eq i32 %2362, 65535
  br i1 %2363, label %2443, label %2364

; <label>:2364                                    ; preds = %2353
  %2365 = mul nuw nsw i32 %2362, 40
  %2366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = add nuw nsw i32 %2365, 12
  %2371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.ResRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.ResRet.f32 %2371, 2
  %2375 = add nuw nsw i32 %2365, 24
  %2376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.f32 %2376, 0
  %2378 = extractvalue %dx.types.ResRet.f32 %2376, 1
  %2379 = extractvalue %dx.types.ResRet.f32 %2376, 2
  %2380 = add nuw nsw i32 %2365, 36
  %2381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = fsub fast float %2346, %2367
  %2384 = fsub fast float %2347, %2368
  %2385 = fsub fast float %2348, %2369
  %2386 = fmul fast float %2382, %2383
  %2387 = fmul fast float %2382, %2384
  %2388 = fmul fast float %2382, %2385
  %2389 = call float @dx.op.unary.f32(i32 27, float %2386)  ; Round_ni(value)
  %2390 = call float @dx.op.unary.f32(i32 27, float %2387)  ; Round_ni(value)
  %2391 = call float @dx.op.unary.f32(i32 27, float %2388)  ; Round_ni(value)
  %2392 = fadd fast float %2389, 5.000000e-01
  %2393 = fadd fast float %2390, 5.000000e-01
  %2394 = fadd fast float %2391, 5.000000e-01
  %2395 = fmul fast float %2392, %2372
  %2396 = fmul fast float %2393, %2373
  %2397 = fmul fast float %2394, %2374
  %2398 = shl i32 %57, 2
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = add i32 %2400, 0
  %2402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2403 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2404 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2405 = call float @dx.op.unary.f32(i32 22, float %2397)  ; Frc(value)
  %2406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2402, %dx.types.Handle %49, float %2403, float %2404, float %2405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = extractvalue %dx.types.ResRet.f32 %2406, 1
  %2409 = extractvalue %dx.types.ResRet.f32 %2406, 2
  %2410 = fmul fast float %2407, 1.023000e+03
  %2411 = fmul fast float %2408, 1.023000e+03
  %2412 = fmul fast float %2409, 1.023000e+03
  %2413 = fadd fast float %2410, 5.000000e-01
  %2414 = fadd fast float %2411, 5.000000e-01
  %2415 = fadd fast float %2412, 5.000000e-01
  %2416 = call float @dx.op.unary.f32(i32 27, float %2413)  ; Round_ni(value)
  %2417 = call float @dx.op.unary.f32(i32 27, float %2414)  ; Round_ni(value)
  %2418 = call float @dx.op.unary.f32(i32 27, float %2415)  ; Round_ni(value)
  %2419 = fsub fast float %2386, %2389
  %2420 = fsub fast float %2387, %2390
  %2421 = fsub fast float %2388, %2391
  %2422 = fmul fast float %2419, 7.500000e-01
  %2423 = fmul fast float %2420, 7.500000e-01
  %2424 = fmul fast float %2421, 7.500000e-01
  %2425 = fadd fast float %2389, 1.250000e-01
  %2426 = fadd fast float %2425, %2422
  %2427 = fadd fast float %2426, %2416
  %2428 = fadd fast float %2390, 1.250000e-01
  %2429 = fadd fast float %2428, %2423
  %2430 = fadd fast float %2429, %2417
  %2431 = fadd fast float %2391, 1.250000e-01
  %2432 = fadd fast float %2431, %2424
  %2433 = fadd fast float %2432, %2418
  %2434 = fmul fast float %2427, %2377
  %2435 = fmul fast float %2430, %2378
  %2436 = fmul fast float %2433, %2379
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2438, 0
  %2440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2440, %dx.types.Handle %47, float %2434, float %2435, float %2436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  br label %2443

; <label>:2443                                    ; preds = %2364, %2353
  %2444 = phi float [ %2442, %2364 ], [ -1.000000e+00, %2353 ]
  %2445 = fadd fast float %2444, %2351
  %2446 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  br label %2447

; <label>:2447                                    ; preds = %2443, %2341
  %2448 = phi float [ %2446, %2443 ], [ %2351, %2341 ]
  %2449 = fmul fast float %2448, %461
  br label %2450

; <label>:2450                                    ; preds = %2447, %2336
  %2451 = phi float [ %2449, %2447 ], [ %461, %2336 ]
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 256
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2502, label %2456

; <label>:2456                                    ; preds = %2450
  %2457 = add i32 %56, 448
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = add i32 %2459, 0
  %2461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2461, %dx.types.Handle %99, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2463 = extractvalue %dx.types.ResRet.f32 %2462, 0
  %2464 = add i32 %56, 132
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = shl i32 %2466, 4
  %2468 = and i32 %2467, 32752
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = lshr i32 %2466, 7
  %2471 = and i32 %2470, 32752
  %2472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2471)  ; LegacyF16ToF32(value)
  %2473 = fsub fast float 1.000000e+00, %2451
  %2474 = call float @dx.op.binary.f32(i32 35, float %2473, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2475 = bitcast float %2451 to i32
  %2476 = sitofp i32 %2475 to float
  %2477 = fadd fast float %2476, 0xC1CFBF8940000000
  %2478 = fmul fast float %2472, %2477
  %2479 = fadd fast float %2478, 0x41CFBF8940000000
  %2480 = fptosi float %2479 to i32
  %2481 = bitcast i32 %2480 to float
  %2482 = bitcast float %2474 to i32
  %2483 = sitofp i32 %2482 to float
  %2484 = fadd fast float %2483, 0xC1CFBF8940000000
  %2485 = fmul fast float %2484, %2472
  %2486 = fadd fast float %2485, 0x41CFBF8940000000
  %2487 = fptosi float %2486 to i32
  %2488 = bitcast i32 %2487 to float
  %2489 = fmul fast float %2481, %2469
  %2490 = fmul fast float %2488, %2469
  %2491 = fsub fast float %2474, %2489
  %2492 = fadd fast float %2490, %2474
  %2493 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2494 = call float @dx.op.unary.f32(i32 7, float %2492)  ; Saturate(value)
  %2495 = fsub fast float %2463, %2493
  %2496 = fsub fast float %2494, %2493
  %2497 = bitcast float %2496 to i32
  %2498 = sub nsw i32 2129859010, %2497
  %2499 = bitcast i32 %2498 to float
  %2500 = fmul fast float %2499, %2495
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2502

; <label>:2502                                    ; preds = %2456, %2450
  %2503 = phi float [ %2501, %2456 ], [ %2451, %2450 ]
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 128
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2524, label %2508

; <label>:2508                                    ; preds = %2502
  %2509 = add i32 %56, 432
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %2511, 0
  %2513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2513, %dx.types.Handle %99, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 524288
  %2519 = icmp ne i32 %2518, 0
  %2520 = fcmp fast ogt float %2515, 0x3FE0101020000000
  %2521 = select i1 %2520, float 1.000000e+00, float 0.000000e+00
  %2522 = select i1 %2519, float %2521, float %2515
  %2523 = fmul fast float %2522, %2503
  br label %2524

; <label>:2524                                    ; preds = %2508, %2502
  %2525 = phi float [ %2523, %2508 ], [ %2503, %2502 ]
  %2526 = fcmp fast ult float %2525, 0x3F70101020000000
  br i1 %2526, label %3214, label %2527

; <label>:2527                                    ; preds = %2524
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 16
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2730, label %2532

; <label>:2532                                    ; preds = %2527
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %56, 384
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2539, %dx.types.Handle %98, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = extractvalue %dx.types.ResRet.f32 %2540, 1
  %2543 = extractvalue %dx.types.ResRet.f32 %2540, 2
  %2544 = extractvalue %dx.types.ResRet.f32 %2540, 3
  %2545 = and i32 %2534, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = lshr i32 %2534, 8
  %2548 = and i32 %2547, 255
  %2549 = uitofp i32 %2548 to float
  %2550 = fmul fast float %2544, %2546
  %2551 = fadd fast float %2550, %2549
  %2552 = fmul fast float %2551, 0x3F70101000000000
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = and i32 %2554, 512
  %2556 = icmp eq i32 %2555, 0
  br i1 %2556, label %2565, label %2557

; <label>:2557                                    ; preds = %2532
  %2558 = add i32 %56, 468
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = add i32 %2560, 0
  %2562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2562, %dx.types.Handle %99, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  br label %2565

; <label>:2565                                    ; preds = %2557, %2532
  %2566 = phi float [ %2564, %2557 ], [ 1.000000e+00, %2532 ]
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 33554432
  %2570 = icmp eq i32 %2569, 0
  br i1 %2570, label %2677, label %2571

; <label>:2571                                    ; preds = %2565
  %2572 = add i32 %56, 256
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 65535
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = lshr i32 %2574, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = add i32 %56, 260
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 65535
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = lshr i32 %2585, 24
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = and i32 %2585, 255
  %2590 = uitofp i32 %2589 to float
  %2591 = fmul fast float %2590, 0x3F70101020000000
  %2592 = lshr i32 %2585, 8
  %2593 = and i32 %2592, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = fmul fast float %2594, 0x3F70101020000000
  %2596 = lshr i32 %2585, 16
  %2597 = and i32 %2596, 255
  %2598 = uitofp i32 %2597 to float
  %2599 = fmul fast float %2598, 0x3F70101020000000
  %2600 = add i32 %56, 252
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 24
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = and i32 %2602, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = fmul fast float %2607, 0x3F70101020000000
  %2609 = lshr i32 %2602, 8
  %2610 = and i32 %2609, 255
  %2611 = uitofp i32 %2610 to float
  %2612 = fmul fast float %2611, 0x3F70101020000000
  %2613 = lshr i32 %2602, 16
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = fmul fast float %2615, 0x3F70101020000000
  %2617 = bitcast float %2541 to i32
  %2618 = ashr i32 %2617, 1
  %2619 = sub nsw i32 1597463174, %2618
  %2620 = bitcast i32 %2619 to float
  %2621 = fmul fast float %2541, 5.000000e-01
  %2622 = fmul fast float %2620, %2620
  %2623 = fmul fast float %2622, %2621
  %2624 = fsub fast float 1.500000e+00, %2623
  %2625 = fmul fast float %2620, %2541
  %2626 = fmul fast float %2625, %2624
  %2627 = bitcast float %2542 to i32
  %2628 = ashr i32 %2627, 1
  %2629 = sub nsw i32 1597463174, %2628
  %2630 = bitcast i32 %2629 to float
  %2631 = fmul fast float %2542, 5.000000e-01
  %2632 = fmul fast float %2630, %2630
  %2633 = fmul fast float %2632, %2631
  %2634 = fsub fast float 1.500000e+00, %2633
  %2635 = fmul fast float %2630, %2542
  %2636 = fmul fast float %2635, %2634
  %2637 = bitcast float %2543 to i32
  %2638 = ashr i32 %2637, 1
  %2639 = sub nsw i32 1597463174, %2638
  %2640 = bitcast i32 %2639 to float
  %2641 = fmul fast float %2543, 5.000000e-01
  %2642 = fmul fast float %2640, %2640
  %2643 = fmul fast float %2642, %2641
  %2644 = fsub fast float 1.500000e+00, %2643
  %2645 = fmul fast float %2640, %2543
  %2646 = fmul fast float %2645, %2644
  %2647 = fsub fast float %2626, %2608
  %2648 = fsub fast float %2636, %2612
  %2649 = fsub fast float %2646, %2616
  %2650 = fmul fast float %2647, %2576
  %2651 = fmul fast float %2648, %2578
  %2652 = fmul fast float %2649, %2583
  %2653 = fadd fast float %2650, %2591
  %2654 = fadd fast float %2651, %2595
  %2655 = fadd fast float %2652, %2599
  %2656 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2657 = call float @dx.op.unary.f32(i32 7, float %2654)  ; Saturate(value)
  %2658 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2659 = fmul fast float %2656, %2656
  %2660 = fmul fast float %2657, %2657
  %2661 = fmul fast float %2658, %2658
  %2662 = fsub fast float %2659, %2541
  %2663 = fsub fast float %2660, %2542
  %2664 = fsub fast float %2661, %2543
  %2665 = fmul fast float %2662, %2566
  %2666 = fmul fast float %2663, %2566
  %2667 = fmul fast float %2664, %2566
  %2668 = fadd fast float %2665, %2541
  %2669 = fadd fast float %2666, %2542
  %2670 = fadd fast float %2667, %2543
  %2671 = fadd fast float %2588, %2552
  %2672 = fsub fast float %2671, %2605
  %2673 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2674 = fsub fast float %2673, %2552
  %2675 = fmul fast float %2674, %2566
  %2676 = fadd fast float %2675, %2552
  br label %2730

; <label>:2677                                    ; preds = %2565
  %2678 = and i32 %2568, 134217728
  %2679 = icmp eq i32 %2678, 0
  br i1 %2679, label %2714, label %2680

; <label>:2680                                    ; preds = %2677
  %2681 = call float @dx.op.unary.f32(i32 24, float %336)  ; Sqrt(value)
  %2682 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %2683 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2684 = fadd fast float %2681, -5.000000e-01
  %2685 = fadd fast float %2682, -5.000000e-01
  %2686 = fadd fast float %2683, -5.000000e-01
  %2687 = fmul fast float %2684, %2566
  %2688 = fmul fast float %2685, %2566
  %2689 = fmul fast float %2686, %2566
  %2690 = fadd fast float %2687, 5.000000e-01
  %2691 = fadd fast float %2688, 5.000000e-01
  %2692 = fadd fast float %2689, 5.000000e-01
  %2693 = call float @dx.op.unary.f32(i32 24, float %2541)  ; Sqrt(value)
  %2694 = call float @dx.op.unary.f32(i32 24, float %2542)  ; Sqrt(value)
  %2695 = call float @dx.op.unary.f32(i32 24, float %2543)  ; Sqrt(value)
  %2696 = fmul fast float %2690, 2.000000e+00
  %2697 = fsub fast float 1.000000e+00, %2696
  %2698 = fmul fast float %2697, %2693
  %2699 = fadd fast float %2698, %2696
  %2700 = fmul fast float %2699, %2693
  %2701 = fmul fast float %2691, 2.000000e+00
  %2702 = fsub fast float 1.000000e+00, %2701
  %2703 = fmul fast float %2702, %2694
  %2704 = fadd fast float %2703, %2701
  %2705 = fmul fast float %2704, %2694
  %2706 = fmul fast float %2692, 2.000000e+00
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2707, %2695
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2695
  %2711 = fmul fast float %2700, %2700
  %2712 = fmul fast float %2705, %2705
  %2713 = fmul fast float %2710, %2710
  br label %2730

; <label>:2714                                    ; preds = %2677
  %2715 = fmul fast float %336, %336
  %2716 = fmul fast float %340, %340
  %2717 = fmul fast float %344, %344
  %2718 = fadd fast float %2715, -1.000000e+00
  %2719 = fadd fast float %2716, -1.000000e+00
  %2720 = fadd fast float %2717, -1.000000e+00
  %2721 = fmul fast float %2566, %2718
  %2722 = fmul fast float %2566, %2719
  %2723 = fmul fast float %2566, %2720
  %2724 = fadd fast float %2721, 1.000000e+00
  %2725 = fadd fast float %2722, 1.000000e+00
  %2726 = fadd fast float %2723, 1.000000e+00
  %2727 = fmul fast float %2724, %2541
  %2728 = fmul fast float %2725, %2542
  %2729 = fmul fast float %2726, %2543
  br label %2730

; <label>:2730                                    ; preds = %2714, %2680, %2571, %2527
  %2731 = phi float [ %2676, %2571 ], [ %2552, %2680 ], [ %2552, %2714 ], [ 0x3FA23C0BE0000000, %2527 ]
  %2732 = phi float [ %2668, %2571 ], [ %2711, %2680 ], [ %2727, %2714 ], [ 1.000000e+00, %2527 ]
  %2733 = phi float [ %2669, %2571 ], [ %2712, %2680 ], [ %2728, %2714 ], [ 1.000000e+00, %2527 ]
  %2734 = phi float [ %2670, %2571 ], [ %2713, %2680 ], [ %2729, %2714 ], [ 1.000000e+00, %2527 ]
  %2735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.i32 %2735, 1
  %2737 = and i32 %2736, 1
  %2738 = icmp ne i32 %2737, 0
  %2739 = add i32 %56, 356
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %2741, 32
  %2743 = icmp ne i32 %2742, 0
  %2744 = and i1 %2738, %2743
  %2745 = select i1 %2744, float 1.000000e+00, float %2732
  %2746 = select i1 %2744, float 0x3FD3333340000000, float %2733
  %2747 = select i1 %2744, float 0x3FD3333340000000, float %2734
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = and i32 %2749, 32
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2824, label %2752

; <label>:2752                                    ; preds = %2730
  %2753 = add i32 %56, 124
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %56, 400
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = add i32 %2758, 0
  %2760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2760, %dx.types.Handle %98, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.ResRet.f32 %2761, 2
  %2765 = extractvalue %dx.types.ResRet.f32 %2761, 3
  %2766 = and i32 %2755, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = lshr i32 %2755, 8
  %2769 = and i32 %2768, 255
  %2770 = uitofp i32 %2769 to float
  %2771 = lshr i32 %2755, 16
  %2772 = and i32 %2771, 255
  %2773 = uitofp i32 %2772 to float
  %2774 = fmul fast float %2773, 0x3F70101000000000
  %2775 = fmul fast float %2762, %2767
  %2776 = fadd fast float %2775, %2770
  %2777 = fmul fast float %2776, 0x3F70101000000000
  %2778 = fadd fast float %2763, -5.000000e-01
  %2779 = fadd fast float %2765, -5.000000e-01
  %2780 = fmul fast float %2778, %2774
  %2781 = fmul fast float %2779, %2774
  %2782 = fadd fast float %2780, 5.000000e-01
  %2783 = fadd fast float %2781, 5.000000e-01
  %2784 = fmul fast float %2782, 2.000000e+00
  %2785 = fadd fast float %2784, -1.000000e+00
  %2786 = fmul fast float %2783, 2.000000e+00
  %2787 = fadd fast float %2786, -1.000000e+00
  %2788 = fadd fast float %2785, %2787
  %2789 = fmul fast float %2788, 5.000000e-01
  %2790 = fsub fast float %2785, %2787
  %2791 = fmul fast float %2790, 5.000000e-01
  %2792 = call float @dx.op.unary.f32(i32 6, float %2789)  ; FAbs(value)
  %2793 = fsub fast float 1.000000e+00, %2792
  %2794 = call float @dx.op.unary.f32(i32 6, float %2791)  ; FAbs(value)
  %2795 = fsub fast float %2793, %2794
  %2796 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2791, float %2795, float %2789, float %2791, float %2795)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = call float @dx.op.unary.f32(i32 25, float %2796)  ; Rsqrt(value)
  %2798 = fmul fast float %2789, %2797
  %2799 = fmul fast float %2791, %2797
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = and i32 %2801, 67108864
  %2803 = icmp eq i32 %2802, 0
  br i1 %2803, label %2820, label %2804

; <label>:2804                                    ; preds = %2752
  %2805 = add i32 %56, 312
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 65535
  %2809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2808)  ; LegacyF16ToF32(value)
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 65535
  %2813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2812)  ; LegacyF16ToF32(value)
  %2814 = lshr i32 %2807, 16
  %2815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2814)  ; LegacyF16ToF32(value)
  %2816 = fsub fast float %2777, %2815
  %2817 = fmul fast float %2816, %2809
  %2818 = fadd fast float %2817, %2813
  %2819 = call float @dx.op.unary.f32(i32 7, float %2818)  ; Saturate(value)
  br label %2820

; <label>:2820                                    ; preds = %2804, %2752
  %2821 = phi float [ %2819, %2804 ], [ %2777, %2752 ]
  %2822 = call float @dx.op.dot2.f32(i32 54, float %2798, float %2799, float %2241, float %2242)  ; Dot2(ax,ay,bx,by)
  %2823 = call float @dx.op.dot2.f32(i32 54, float %2798, float %2799, float %2243, float %2244)  ; Dot2(ax,ay,bx,by)
  br label %2824

; <label>:2824                                    ; preds = %2820, %2730
  %2825 = phi float [ %2821, %2820 ], [ 0x3FD6666660000000, %2730 ]
  %2826 = phi float [ %2822, %2820 ], [ 0.000000e+00, %2730 ]
  %2827 = phi float [ %2823, %2820 ], [ 0.000000e+00, %2730 ]
  %2828 = phi float [ %2764, %2820 ], [ 1.000000e+00, %2730 ]
  %2829 = add i32 %56, 192
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = lshr i32 %2831, 22
  %2833 = shl nuw nsw i32 %2832, 5
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 64
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2872, label %2839

; <label>:2839                                    ; preds = %2824
  %2840 = add i32 %56, 416
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %2842, 0
  %2844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = and i32 %2846, 131072
  %2848 = icmp eq i32 %2847, 0
  %2849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2844, %dx.types.Handle %98, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = extractvalue %dx.types.ResRet.f32 %2849, 1
  %2852 = extractvalue %dx.types.ResRet.f32 %2849, 2
  %2853 = fmul fast float %2850, %324
  %2854 = fmul fast float %2851, %327
  %2855 = fmul fast float %2852, %330
  br i1 %2848, label %2862, label %2856

; <label>:2856                                    ; preds = %2839
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = fmul fast float %2858, %2853
  %2860 = fmul fast float %2858, %2854
  %2861 = fmul fast float %2858, %2855
  br label %2862

; <label>:2862                                    ; preds = %2856, %2839
  %2863 = phi float [ %2859, %2856 ], [ %2853, %2839 ]
  %2864 = phi float [ %2860, %2856 ], [ %2854, %2839 ]
  %2865 = phi float [ %2861, %2856 ], [ %2855, %2839 ]
  %2866 = fmul fast float %2863, %2834
  %2867 = select i1 %223, float %2866, float %2863
  %2868 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2864, float %2865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = select i1 %223, float 0.000000e+00, float %2863
  %2870 = select i1 %223, float %2868, float %2864
  %2871 = select i1 %223, float 0.000000e+00, float %2865
  br label %2872

; <label>:2872                                    ; preds = %2862, %2824
  %2873 = phi float [ %2869, %2862 ], [ 0.000000e+00, %2824 ]
  %2874 = phi float [ %2870, %2862 ], [ 0.000000e+00, %2824 ]
  %2875 = phi float [ %2871, %2862 ], [ 0.000000e+00, %2824 ]
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 1024
  %2879 = icmp eq i32 %2878, 0
  br i1 %2879, label %2910, label %2880

; <label>:2880                                    ; preds = %2872
  %2881 = add i32 %56, 184
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 255
  %2885 = uitofp i32 %2884 to float
  %2886 = fmul fast float %2885, 0x3F70101020000000
  %2887 = lshr i32 %2883, 8
  %2888 = and i32 %2887, 255
  %2889 = uitofp i32 %2888 to float
  %2890 = fmul fast float %2889, 0x3F70101020000000
  %2891 = lshr i32 %2883, 16
  %2892 = and i32 %2891, 255
  %2893 = uitofp i32 %2892 to float
  %2894 = fmul fast float %2893, 0x3F70101020000000
  %2895 = fmul fast float %2886, %2886
  %2896 = fmul fast float %2890, %2890
  %2897 = fmul fast float %2894, %2894
  %2898 = add i32 %56, 484
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2902, %dx.types.Handle %99, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.ResRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.ResRet.f32 %2903, 2
  %2907 = fmul fast float %2895, %2904
  %2908 = fmul fast float %2896, %2905
  %2909 = fmul fast float %2897, %2906
  br label %2910

; <label>:2910                                    ; preds = %2880, %2872
  %2911 = phi float [ %2907, %2880 ], [ 0.000000e+00, %2872 ]
  %2912 = phi float [ %2908, %2880 ], [ 0.000000e+00, %2872 ]
  %2913 = phi float [ %2909, %2880 ], [ 0.000000e+00, %2872 ]
  %2914 = fcmp fast ogt float %2911, 0.000000e+00
  %2915 = fcmp fast ogt float %2912, 0.000000e+00
  %2916 = fcmp fast ogt float %2913, 0.000000e+00
  %2917 = call float @dx.op.unary.f32(i32 23, float %2911)  ; Log(value)
  %2918 = call float @dx.op.unary.f32(i32 23, float %2912)  ; Log(value)
  %2919 = call float @dx.op.unary.f32(i32 23, float %2913)  ; Log(value)
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = lshr i32 %2921, 7
  %2923 = and i32 %2922, 32752
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = fmul fast float %2917, 0xBFE62E4300000000
  %2926 = fmul fast float %2925, %2924
  %2927 = fmul fast float %2918, 0xBFE62E4300000000
  %2928 = fmul fast float %2927, %2924
  %2929 = fmul fast float %2919, 0xBFE62E4300000000
  %2930 = fmul fast float %2929, %2924
  %2931 = select i1 %2914, float %2926, float 1.270000e+02
  %2932 = select i1 %2915, float %2928, float 1.270000e+02
  %2933 = select i1 %2916, float %2930, float 1.270000e+02
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 10240
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %2958, label %2938

; <label>:2938                                    ; preds = %2910
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 2048
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2958, label %2943

; <label>:2943                                    ; preds = %2938
  %2944 = add i32 %56, 500
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %99, float %2337, float %2338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 3
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = shl i32 %2952, 4
  %2954 = and i32 %2953, 32752
  %2955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2954)  ; LegacyF16ToF32(value)
  %2956 = fmul fast float %2955, %2950
  %2957 = call float @dx.op.binary.f32(i32 35, float %2956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2958

; <label>:2958                                    ; preds = %2943, %2938, %2910
  %2959 = phi float [ %2957, %2943 ], [ 0x3F70101020000000, %2938 ], [ 0x3F70101020000000, %2910 ]
  %2960 = add i32 %56, 128
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = lshr i32 %2962, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = call float @dx.op.dot3.f32(i32 55, float %2745, float %2746, float %2747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2969 = fmul fast float %2967, %2968
  %2970 = fadd fast float %2969, %2964
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  br i1 %2229, label %2973, label %3008

; <label>:2973                                    ; preds = %2958
  %2974 = fmul fast float %2959, 2.000000e+00
  %2975 = fcmp fast olt float %2931, 1.270000e+02
  %2976 = fcmp fast olt float %2932, 1.270000e+02
  %2977 = fcmp fast olt float %2933, 1.270000e+02
  %2978 = fmul fast float %2931, 0xBFF7154760000000
  %2979 = fmul fast float %2978, %2974
  %2980 = fmul fast float %2932, 0xBFF7154760000000
  %2981 = fmul fast float %2980, %2974
  %2982 = fmul fast float %2933, 0xBFF7154760000000
  %2983 = fmul fast float %2982, %2974
  %2984 = call float @dx.op.unary.f32(i32 21, float %2979)  ; Exp(value)
  %2985 = call float @dx.op.unary.f32(i32 21, float %2981)  ; Exp(value)
  %2986 = call float @dx.op.unary.f32(i32 21, float %2983)  ; Exp(value)
  %2987 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2988 = call float @dx.op.unary.f32(i32 7, float %2985)  ; Saturate(value)
  %2989 = call float @dx.op.unary.f32(i32 7, float %2986)  ; Saturate(value)
  %2990 = fadd fast float %2987, -1.000000e+00
  %2991 = select i1 %2975, float %2990, float -1.000000e+00
  %2992 = fadd fast float %2988, -1.000000e+00
  %2993 = select i1 %2976, float %2992, float -1.000000e+00
  %2994 = fadd fast float %2989, -1.000000e+00
  %2995 = select i1 %2977, float %2994, float -1.000000e+00
  %2996 = fmul fast float %2991, %2525
  %2997 = fmul fast float %2993, %2525
  %2998 = fmul fast float %2995, %2525
  %2999 = fadd fast float %2996, 1.000000e+00
  %3000 = fadd fast float %2997, 1.000000e+00
  %3001 = fadd fast float %2998, 1.000000e+00
  %3002 = fmul fast float %2999, %2214
  %3003 = fmul fast float %3000, %2215
  %3004 = fmul fast float %3001, %2216
  %3005 = fmul fast float %2999, %2217
  %3006 = fmul fast float %3000, %2218
  %3007 = fmul fast float %3001, %2219
  br label %3008

; <label>:3008                                    ; preds = %2973, %2958
  %3009 = phi float [ %3002, %2973 ], [ %2214, %2958 ]
  %3010 = phi float [ %3003, %2973 ], [ %2215, %2958 ]
  %3011 = phi float [ %3004, %2973 ], [ %2216, %2958 ]
  %3012 = phi float [ %3005, %2973 ], [ %2217, %2958 ]
  %3013 = phi float [ %3006, %2973 ], [ %2218, %2958 ]
  %3014 = phi float [ %3007, %2973 ], [ %2219, %2958 ]
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 3
  %3018 = icmp eq i32 %3017, 3
  br i1 %3018, label %3097, label %3019

; <label>:3019                                    ; preds = %3008
  %3020 = and i32 %3016, 16
  %3021 = icmp ne i32 %3020, 0
  %3022 = select i1 %3021, float %2525, float 0.000000e+00
  %3023 = icmp eq i32 %3017, 0
  br i1 %3023, label %3024, label %3052

; <label>:3024                                    ; preds = %3019
  %3025 = and i32 %3016, 64
  %3026 = icmp ne i32 %3025, 0
  %3027 = select i1 %3026, float %2525, float 0.000000e+00
  %3028 = fsub fast float %2745, %3009
  %3029 = fsub fast float %2746, %3010
  %3030 = fsub fast float %2747, %3011
  %3031 = fmul fast float %3022, %3028
  %3032 = fmul fast float %3022, %3029
  %3033 = fmul fast float %3022, %3030
  %3034 = fadd fast float %3031, %3009
  %3035 = fadd fast float %3032, %3010
  %3036 = fadd fast float %3033, %3011
  %3037 = fsub fast float %2731, %2223
  %3038 = fmul fast float %3022, %3037
  %3039 = fadd fast float %3038, %2223
  %3040 = fsub fast float %2873, %3012
  %3041 = fsub fast float %2874, %3013
  %3042 = fsub fast float %2875, %3014
  %3043 = fmul fast float %3027, %3040
  %3044 = fmul fast float %3027, %3041
  %3045 = fmul fast float %3027, %3042
  %3046 = fadd fast float %3043, %3012
  %3047 = fadd fast float %3044, %3013
  %3048 = fadd fast float %3045, %3014
  %3049 = fsub fast float %2972, %2227
  %3050 = fmul fast float %3022, %3049
  %3051 = fadd fast float %3050, %2227
  br label %3097

; <label>:3052                                    ; preds = %3019
  %3053 = icmp eq i32 %3017, 1
  br i1 %3053, label %3054, label %3067

; <label>:3054                                    ; preds = %3052
  %3055 = fadd fast float %2745, -1.000000e+00
  %3056 = fadd fast float %2746, -1.000000e+00
  %3057 = fadd fast float %2747, -1.000000e+00
  %3058 = fmul fast float %3022, %3055
  %3059 = fmul fast float %3022, %3056
  %3060 = fmul fast float %3022, %3057
  %3061 = fadd fast float %3058, 1.000000e+00
  %3062 = fadd fast float %3059, 1.000000e+00
  %3063 = fadd fast float %3060, 1.000000e+00
  %3064 = fmul fast float %3061, %3009
  %3065 = fmul fast float %3062, %3010
  %3066 = fmul fast float %3063, %3011
  br label %3097

; <label>:3067                                    ; preds = %3052
  %3068 = icmp eq i32 %3017, 2
  br i1 %3068, label %3069, label %3097

; <label>:3069                                    ; preds = %3067
  %3070 = call float @dx.op.unary.f32(i32 24, float %2745)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %2746)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %2747)  ; Sqrt(value)
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fmul fast float %3073, %3022
  %3077 = fmul fast float %3074, %3022
  %3078 = fmul fast float %3075, %3022
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3078, 5.000000e-01
  %3082 = fmul fast float %3079, 2.000000e+00
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = fmul fast float %3083, %3009
  %3085 = fadd fast float %3084, %3082
  %3086 = fmul fast float %3085, %3009
  %3087 = fmul fast float %3080, 2.000000e+00
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3088, %3010
  %3090 = fadd fast float %3089, %3087
  %3091 = fmul fast float %3090, %3010
  %3092 = fmul fast float %3081, 2.000000e+00
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = fmul fast float %3093, %3011
  %3095 = fadd fast float %3094, %3092
  %3096 = fmul fast float %3095, %3011
  br label %3097

; <label>:3097                                    ; preds = %3069, %3067, %3054, %3024, %3008
  %3098 = phi float [ %3009, %3008 ], [ %3086, %3069 ], [ %3009, %3067 ], [ %3064, %3054 ], [ %3034, %3024 ]
  %3099 = phi float [ %3010, %3008 ], [ %3091, %3069 ], [ %3010, %3067 ], [ %3065, %3054 ], [ %3035, %3024 ]
  %3100 = phi float [ %3011, %3008 ], [ %3096, %3069 ], [ %3011, %3067 ], [ %3066, %3054 ], [ %3036, %3024 ]
  %3101 = phi float [ %3012, %3008 ], [ %3012, %3069 ], [ %3012, %3067 ], [ %3012, %3054 ], [ %3046, %3024 ]
  %3102 = phi float [ %3013, %3008 ], [ %3013, %3069 ], [ %3013, %3067 ], [ %3013, %3054 ], [ %3047, %3024 ]
  %3103 = phi float [ %3014, %3008 ], [ %3014, %3069 ], [ %3014, %3067 ], [ %3014, %3054 ], [ %3048, %3024 ]
  %3104 = phi float [ %2223, %3008 ], [ %2223, %3069 ], [ %2223, %3067 ], [ %2223, %3054 ], [ %3039, %3024 ]
  %3105 = phi float [ %2227, %3008 ], [ %2227, %3069 ], [ %2227, %3067 ], [ %2227, %3054 ], [ %3051, %3024 ]
  %3106 = and i32 %3016, 12
  %3107 = icmp eq i32 %3106, 12
  br i1 %3107, label %3214, label %3108

; <label>:3108                                    ; preds = %3097
  %3109 = and i32 %3016, 2097184
  %3110 = icmp eq i32 %3109, 2097184
  %3111 = select i1 %3110, float %2525, float 0.000000e+00
  %3112 = and i32 %3016, 4194336
  %3113 = icmp eq i32 %3112, 4194336
  %3114 = select i1 %3113, float %2525, float 0.000000e+00
  %3115 = and i32 %3016, 8388640
  %3116 = icmp eq i32 %3115, 8388640
  %3117 = select i1 %3116, float %2525, float 0.000000e+00
  %3118 = and i32 %3016, 1024
  %3119 = icmp ne i32 %3118, 0
  %3120 = select i1 %3119, float %2525, float 0.000000e+00
  %3121 = and i32 %3016, 2048
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2525, float 0.000000e+00
  %3124 = icmp eq i32 %3106, 0
  br i1 %3124, label %3125, label %3150

; <label>:3125                                    ; preds = %3108
  %3126 = fsub fast float %2826, %2212
  %3127 = fsub fast float %2827, %2213
  %3128 = fmul fast float %3111, %3126
  %3129 = fmul fast float %3111, %3127
  %3130 = fadd fast float %3128, %2212
  %3131 = fadd fast float %3129, %2213
  %3132 = fsub fast float %2828, %2225
  %3133 = fmul fast float %3114, %3132
  %3134 = fadd fast float %3133, %2225
  %3135 = fsub fast float %2825, %2224
  %3136 = fmul fast float %3117, %3135
  %3137 = fadd fast float %3136, %2224
  %3138 = fsub fast float %2931, %2220
  %3139 = fsub fast float %2932, %2221
  %3140 = fsub fast float %2933, %2222
  %3141 = fmul fast float %3120, %3138
  %3142 = fmul fast float %3120, %3139
  %3143 = fmul fast float %3120, %3140
  %3144 = fadd fast float %3141, %2220
  %3145 = fadd fast float %3142, %2221
  %3146 = fadd fast float %3143, %2222
  %3147 = fsub fast float %2959, %2226
  %3148 = fmul fast float %3123, %3147
  %3149 = fadd fast float %3148, %2226
  br label %3214

; <label>:3150                                    ; preds = %3108
  %3151 = icmp eq i32 %3106, 4
  br i1 %3151, label %3152, label %3192

; <label>:3152                                    ; preds = %3150
  %3153 = fmul fast float %3111, %2826
  %3154 = fmul fast float %3111, %2827
  %3155 = fadd fast float %3153, %2212
  %3156 = fadd fast float %3154, %2213
  %3157 = call float @dx.op.binary.f32(i32 36, float %2225, float %2828)  ; FMin(a,b)
  %3158 = fsub fast float %3157, %2225
  %3159 = fmul fast float %3158, %3114
  %3160 = fadd fast float %3159, %2225
  %3161 = fadd fast float %2825, %2224
  %3162 = fmul fast float %3161, 0x3FF337FAE0000000
  %3163 = fmul fast float %2224, %2224
  %3164 = fmul fast float %2825, %2825
  %3165 = fadd fast float %3164, %3163
  %3166 = fmul fast float %3165, 0x3FE5152B00000000
  %3167 = fmul fast float %2224, 0xBFCC1F85E0000000
  %3168 = fmul fast float %3167, %2825
  %3169 = fadd fast float %3168, 0xBFE1363700000000
  %3170 = fadd fast float %3169, %3162
  %3171 = fsub fast float %3170, %3166
  %3172 = fmul fast float %3161, 0x3FBA6F0D00000000
  %3173 = fmul fast float %3165, 0x3FD0432880000000
  %3174 = fmul fast float %2224, 0xBFEF110800000000
  %3175 = fmul fast float %3174, %2825
  %3176 = fadd fast float %3175, 1.000000e+00
  %3177 = fsub fast float %3176, %3172
  %3178 = fadd fast float %3177, %3173
  %3179 = fdiv fast float %3171, %3178
  %3180 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  %3181 = fsub fast float %3180, %2224
  %3182 = fmul fast float %3181, %3117
  %3183 = fadd fast float %3182, %2224
  %3184 = fmul fast float %3120, %2931
  %3185 = fmul fast float %3120, %2932
  %3186 = fmul fast float %3120, %2933
  %3187 = fadd fast float %3184, %2220
  %3188 = fadd fast float %3185, %2221
  %3189 = fadd fast float %3186, %2222
  %3190 = fmul fast float %3123, %2959
  %3191 = fadd fast float %3190, %2226
  br label %3214

; <label>:3192                                    ; preds = %3150
  %3193 = icmp eq i32 %3106, 8
  br i1 %3193, label %3194, label %3214

; <label>:3194                                    ; preds = %3192
  %3195 = fmul fast float %3111, %2826
  %3196 = fmul fast float %3111, %2827
  %3197 = fadd fast float %3195, %2212
  %3198 = fadd fast float %3196, %2213
  %3199 = call float @dx.op.binary.f32(i32 36, float %2225, float %2828)  ; FMin(a,b)
  %3200 = fsub fast float %3199, %2225
  %3201 = fmul fast float %3200, %3114
  %3202 = fadd fast float %3201, %2225
  %3203 = fsub fast float %2825, %2224
  %3204 = fmul fast float %3117, %3203
  %3205 = fadd fast float %3204, %2224
  %3206 = fmul fast float %3120, %2931
  %3207 = fmul fast float %3120, %2932
  %3208 = fmul fast float %3120, %2933
  %3209 = fadd fast float %3206, %2220
  %3210 = fadd fast float %3207, %2221
  %3211 = fadd fast float %3208, %2222
  %3212 = fmul fast float %3123, %2959
  %3213 = fadd fast float %3212, %2226
  br label %3214

; <label>:3214                                    ; preds = %3194, %3192, %3152, %3125, %3097, %2524, %2228, %2211
  %3215 = phi float [ %2212, %3097 ], [ %2212, %2524 ], [ %2212, %2211 ], [ %3197, %3194 ], [ %2212, %3192 ], [ %3155, %3152 ], [ %3130, %3125 ], [ %2212, %2228 ]
  %3216 = phi float [ %2213, %3097 ], [ %2213, %2524 ], [ %2213, %2211 ], [ %3198, %3194 ], [ %2213, %3192 ], [ %3156, %3152 ], [ %3131, %3125 ], [ %2213, %2228 ]
  %3217 = phi float [ %3098, %3097 ], [ %2214, %2524 ], [ %2214, %2211 ], [ %3098, %3194 ], [ %3098, %3192 ], [ %3098, %3152 ], [ %3098, %3125 ], [ %2214, %2228 ]
  %3218 = phi float [ %3099, %3097 ], [ %2215, %2524 ], [ %2215, %2211 ], [ %3099, %3194 ], [ %3099, %3192 ], [ %3099, %3152 ], [ %3099, %3125 ], [ %2215, %2228 ]
  %3219 = phi float [ %3100, %3097 ], [ %2216, %2524 ], [ %2216, %2211 ], [ %3100, %3194 ], [ %3100, %3192 ], [ %3100, %3152 ], [ %3100, %3125 ], [ %2216, %2228 ]
  %3220 = phi float [ %3101, %3097 ], [ %2217, %2524 ], [ %2217, %2211 ], [ %3101, %3194 ], [ %3101, %3192 ], [ %3101, %3152 ], [ %3101, %3125 ], [ %2217, %2228 ]
  %3221 = phi float [ %3102, %3097 ], [ %2218, %2524 ], [ %2218, %2211 ], [ %3102, %3194 ], [ %3102, %3192 ], [ %3102, %3152 ], [ %3102, %3125 ], [ %2218, %2228 ]
  %3222 = phi float [ %3103, %3097 ], [ %2219, %2524 ], [ %2219, %2211 ], [ %3103, %3194 ], [ %3103, %3192 ], [ %3103, %3152 ], [ %3103, %3125 ], [ %2219, %2228 ]
  %3223 = phi float [ %2220, %3097 ], [ %2220, %2524 ], [ %2220, %2211 ], [ %3209, %3194 ], [ %2220, %3192 ], [ %3187, %3152 ], [ %3144, %3125 ], [ %2220, %2228 ]
  %3224 = phi float [ %2221, %3097 ], [ %2221, %2524 ], [ %2221, %2211 ], [ %3210, %3194 ], [ %2221, %3192 ], [ %3188, %3152 ], [ %3145, %3125 ], [ %2221, %2228 ]
  %3225 = phi float [ %2222, %3097 ], [ %2222, %2524 ], [ %2222, %2211 ], [ %3211, %3194 ], [ %2222, %3192 ], [ %3189, %3152 ], [ %3146, %3125 ], [ %2222, %2228 ]
  %3226 = phi float [ %3104, %3097 ], [ %2223, %2524 ], [ %2223, %2211 ], [ %3104, %3194 ], [ %3104, %3192 ], [ %3104, %3152 ], [ %3104, %3125 ], [ %2223, %2228 ]
  %3227 = phi float [ %2224, %3097 ], [ %2224, %2524 ], [ %2224, %2211 ], [ %3205, %3194 ], [ %2224, %3192 ], [ %3183, %3152 ], [ %3137, %3125 ], [ %2224, %2228 ]
  %3228 = phi float [ %2225, %3097 ], [ %2225, %2524 ], [ %2225, %2211 ], [ %3202, %3194 ], [ %2225, %3192 ], [ %3160, %3152 ], [ %3134, %3125 ], [ %2225, %2228 ]
  %3229 = phi float [ %2226, %3097 ], [ %2226, %2524 ], [ %2226, %2211 ], [ %3213, %3194 ], [ %2226, %3192 ], [ %3191, %3152 ], [ %3149, %3125 ], [ %2226, %2228 ]
  %3230 = phi float [ %3105, %3097 ], [ %2227, %2524 ], [ %2227, %2211 ], [ %3105, %3194 ], [ %3105, %3192 ], [ %3105, %3152 ], [ %3105, %3125 ], [ %2227, %2228 ]
  br i1 %411, label %4217, label %3231

; <label>:3231                                    ; preds = %3214
  %3232 = icmp ult i32 %465, 4
  %3233 = add i32 %56, 72
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = add i32 %56, 76
  %3237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3236, i32 undef)  ; BufferLoad(srv,index,wot)
  %3238 = extractvalue %dx.types.ResRet.i32 %3237, 0
  %3239 = or i32 %3238, %3235
  %3240 = icmp eq i32 %3239, 0
  br i1 %3240, label %4217, label %3241

; <label>:3241                                    ; preds = %3231
  %3242 = and i32 %3235, 262144
  %3243 = icmp ne i32 %3242, 0
  %3244 = select i1 %3243, float %59, float 1.000000e+00
  %3245 = select i1 %3243, float %60, float 0.000000e+00
  %3246 = select i1 %3243, float %61, float 0.000000e+00
  %3247 = select i1 %3243, float %62, float 1.000000e+00
  %3248 = select i1 %3243, float %63, float %84
  %3249 = select i1 %3243, float %64, float %85
  %3250 = add i32 %56, 332
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = lshr i32 %3252, 16
  %3254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3253)  ; LegacyF16ToF32(value)
  %3255 = fmul fast float %3254, 0x3F50624DE0000000
  %3256 = add i32 %56, 136
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = lshr i32 %3258, 16
  %3260 = and i32 %3259, 255
  %3261 = lshr i32 %3258, 24
  %3262 = add i32 %56, 340
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 65535
  %3266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3265)  ; LegacyF16ToF32(value)
  %3267 = lshr i32 %3264, 16
  %3268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3267)  ; LegacyF16ToF32(value)
  %3269 = add i32 %56, 80
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = lshr i32 %3271, 22
  %3273 = shl nuw nsw i32 %3272, 5
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = shl i32 %3271, 4
  %3276 = and i32 %3275, 32752
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = lshr i32 %3271, 7
  %3279 = and i32 %3278, 32752
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3282 = extractvalue %dx.types.CBufRet.f32 %3281, 3
  %3283 = fmul fast float %3282, 1.000000e+03
  %3284 = fmul fast float %401, %3283
  %3285 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3286 = fadd fast float %3285, %391
  %3287 = fmul fast float %402, %3283
  %3288 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3289 = fadd fast float %3288, %393
  %3290 = fmul fast float %3255, %3283
  %3291 = call float @dx.op.unary.f32(i32 22, float %3290)  ; Frc(value)
  %3292 = fmul fast float %3291, 0x401921FB60000000
  %3293 = fadd fast float %3292, %3274
  %3294 = call float @dx.op.unary.f32(i32 13, float %3293)  ; Sin(value)
  %3295 = call float @dx.op.unary.f32(i32 12, float %3293)  ; Cos(value)
  %3296 = fsub fast float -0.000000e+00, %3294
  %3297 = fadd fast float %3248, -5.000000e-01
  %3298 = fadd fast float %3249, -5.000000e-01
  %3299 = fmul fast float %3266, %3297
  %3300 = fmul fast float %3268, %3298
  %3301 = fadd fast float %3299, 5.000000e-01
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = fmul fast float %3277, %3301
  %3304 = fmul fast float %3280, %3302
  %3305 = fmul fast float %3295, %3303
  %3306 = call float @dx.op.tertiary.f32(i32 46, float %3296, float %3304, float %3305)  ; FMad(a,b,c)
  %3307 = fmul fast float %3294, %3303
  %3308 = call float @dx.op.tertiary.f32(i32 46, float %3295, float %3304, float %3307)  ; FMad(a,b,c)
  %3309 = fadd fast float %3286, %3306
  %3310 = fadd fast float %3289, %3308
  %3311 = icmp ugt i32 %3260, 1
  %3312 = icmp ugt i32 %3258, 33554431
  %3313 = or i1 %3312, %3311
  br i1 %3313, label %3314, label %3339

; <label>:3314                                    ; preds = %3241
  %3315 = add i32 %56, 276
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = lshr i32 %3317, 16
  %3319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3318)  ; LegacyF16ToF32(value)
  %3320 = fmul fast float %3282, %3319
  %3321 = call float @dx.op.unary.f32(i32 22, float %3320)  ; Frc(value)
  %3322 = mul nuw nsw i32 %3260, %3261
  %3323 = uitofp i32 %3322 to float
  %3324 = fmul fast float %3321, %3323
  %3325 = call float @dx.op.unary.f32(i32 27, float %3324)  ; Round_ni(value)
  %3326 = fptoui float %3325 to i32
  %3327 = urem i32 %3326, %3260
  %3328 = udiv i32 %3326, %3261
  %3329 = call float @dx.op.unary.f32(i32 22, float %3309)  ; Frc(value)
  %3330 = call float @dx.op.unary.f32(i32 22, float %3310)  ; Frc(value)
  %3331 = uitofp i32 %3327 to float
  %3332 = uitofp i32 %3328 to float
  %3333 = fadd fast float %3329, %3331
  %3334 = fadd fast float %3330, %3332
  %3335 = uitofp i32 %3260 to float
  %3336 = uitofp i32 %3261 to float
  %3337 = fdiv fast float %3333, %3335
  %3338 = fdiv fast float %3334, %3336
  br label %3339

; <label>:3339                                    ; preds = %3314, %3241
  %3340 = phi float [ %3337, %3314 ], [ %3309, %3241 ]
  %3341 = phi float [ %3338, %3314 ], [ %3310, %3241 ]
  %3342 = and i32 %3235, 16777216
  %3343 = icmp eq i32 %3342, 0
  br i1 %3343, label %3453, label %3344

; <label>:3344                                    ; preds = %3339
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.CBufRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.CBufRet.f32 %3345, 2
  %3349 = fadd fast float %3346, %161
  %3350 = fadd fast float %3347, %162
  %3351 = fadd fast float %3348, %163
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 0
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = icmp eq i32 %57, 65535
  br i1 %3355, label %3450, label %3356

; <label>:3356                                    ; preds = %3344
  %3357 = lshr i32 %57, 1
  %3358 = shl i32 %3357, 2
  %3359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3358, i32 undef)  ; BufferLoad(srv,index,wot)
  %3360 = extractvalue %dx.types.ResRet.i32 %3359, 0
  %3361 = and i32 %57, 1
  %3362 = icmp ne i32 %3361, 0
  %3363 = lshr i32 %3360, 16
  %3364 = and i32 %3360, 65535
  %3365 = select i1 %3362, i32 %3363, i32 %3364
  %3366 = icmp eq i32 %3365, 65535
  br i1 %3366, label %3446, label %3367

; <label>:3367                                    ; preds = %3356
  %3368 = mul nuw nsw i32 %3365, 40
  %3369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = add nuw nsw i32 %3368, 12
  %3374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.ResRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.ResRet.f32 %3374, 2
  %3378 = add nuw nsw i32 %3368, 24
  %3379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = extractvalue %dx.types.ResRet.f32 %3379, 1
  %3382 = extractvalue %dx.types.ResRet.f32 %3379, 2
  %3383 = add nuw nsw i32 %3368, 36
  %3384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.f32 %3384, 0
  %3386 = fsub fast float %3349, %3370
  %3387 = fsub fast float %3350, %3371
  %3388 = fsub fast float %3351, %3372
  %3389 = fmul fast float %3385, %3386
  %3390 = fmul fast float %3385, %3387
  %3391 = fmul fast float %3385, %3388
  %3392 = call float @dx.op.unary.f32(i32 27, float %3389)  ; Round_ni(value)
  %3393 = call float @dx.op.unary.f32(i32 27, float %3390)  ; Round_ni(value)
  %3394 = call float @dx.op.unary.f32(i32 27, float %3391)  ; Round_ni(value)
  %3395 = fadd fast float %3392, 5.000000e-01
  %3396 = fadd fast float %3393, 5.000000e-01
  %3397 = fadd fast float %3394, 5.000000e-01
  %3398 = fmul fast float %3395, %3375
  %3399 = fmul fast float %3396, %3376
  %3400 = fmul fast float %3397, %3377
  %3401 = shl i32 %57, 2
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = add i32 %3403, 0
  %3405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3406 = call float @dx.op.unary.f32(i32 22, float %3398)  ; Frc(value)
  %3407 = call float @dx.op.unary.f32(i32 22, float %3399)  ; Frc(value)
  %3408 = call float @dx.op.unary.f32(i32 22, float %3400)  ; Frc(value)
  %3409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3405, %dx.types.Handle %49, float %3406, float %3407, float %3408, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  %3411 = extractvalue %dx.types.ResRet.f32 %3409, 1
  %3412 = extractvalue %dx.types.ResRet.f32 %3409, 2
  %3413 = fmul fast float %3410, 1.023000e+03
  %3414 = fmul fast float %3411, 1.023000e+03
  %3415 = fmul fast float %3412, 1.023000e+03
  %3416 = fadd fast float %3413, 5.000000e-01
  %3417 = fadd fast float %3414, 5.000000e-01
  %3418 = fadd fast float %3415, 5.000000e-01
  %3419 = call float @dx.op.unary.f32(i32 27, float %3416)  ; Round_ni(value)
  %3420 = call float @dx.op.unary.f32(i32 27, float %3417)  ; Round_ni(value)
  %3421 = call float @dx.op.unary.f32(i32 27, float %3418)  ; Round_ni(value)
  %3422 = fsub fast float %3389, %3392
  %3423 = fsub fast float %3390, %3393
  %3424 = fsub fast float %3391, %3394
  %3425 = fmul fast float %3422, 7.500000e-01
  %3426 = fmul fast float %3423, 7.500000e-01
  %3427 = fmul fast float %3424, 7.500000e-01
  %3428 = fadd fast float %3392, 1.250000e-01
  %3429 = fadd fast float %3428, %3425
  %3430 = fadd fast float %3429, %3419
  %3431 = fadd fast float %3393, 1.250000e-01
  %3432 = fadd fast float %3431, %3426
  %3433 = fadd fast float %3432, %3420
  %3434 = fadd fast float %3394, 1.250000e-01
  %3435 = fadd fast float %3434, %3427
  %3436 = fadd fast float %3435, %3421
  %3437 = fmul fast float %3430, %3380
  %3438 = fmul fast float %3433, %3381
  %3439 = fmul fast float %3436, %3382
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3443, %dx.types.Handle %47, float %3437, float %3438, float %3439, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  br label %3446

; <label>:3446                                    ; preds = %3367, %3356
  %3447 = phi float [ %3445, %3367 ], [ -1.000000e+00, %3356 ]
  %3448 = fadd fast float %3447, %3354
  %3449 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  br label %3450

; <label>:3450                                    ; preds = %3446, %3344
  %3451 = phi float [ %3449, %3446 ], [ %3354, %3344 ]
  %3452 = fmul fast float %3451, %460
  br label %3453

; <label>:3453                                    ; preds = %3450, %3339
  %3454 = phi float [ %3452, %3450 ], [ %460, %3339 ]
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 256
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3505, label %3459

; <label>:3459                                    ; preds = %3453
  %3460 = add i32 %56, 452
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = add i32 %3462, 0
  %3464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3464, %dx.types.Handle %99, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = add i32 %56, 148
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = shl i32 %3469, 4
  %3471 = and i32 %3470, 32752
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = lshr i32 %3469, 7
  %3474 = and i32 %3473, 32752
  %3475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3474)  ; LegacyF16ToF32(value)
  %3476 = fsub fast float 1.000000e+00, %3454
  %3477 = call float @dx.op.binary.f32(i32 35, float %3476, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3478 = bitcast float %3454 to i32
  %3479 = sitofp i32 %3478 to float
  %3480 = fadd fast float %3479, 0xC1CFBF8940000000
  %3481 = fmul fast float %3475, %3480
  %3482 = fadd fast float %3481, 0x41CFBF8940000000
  %3483 = fptosi float %3482 to i32
  %3484 = bitcast i32 %3483 to float
  %3485 = bitcast float %3477 to i32
  %3486 = sitofp i32 %3485 to float
  %3487 = fadd fast float %3486, 0xC1CFBF8940000000
  %3488 = fmul fast float %3487, %3475
  %3489 = fadd fast float %3488, 0x41CFBF8940000000
  %3490 = fptosi float %3489 to i32
  %3491 = bitcast i32 %3490 to float
  %3492 = fmul fast float %3484, %3472
  %3493 = fmul fast float %3491, %3472
  %3494 = fsub fast float %3477, %3492
  %3495 = fadd fast float %3493, %3477
  %3496 = call float @dx.op.unary.f32(i32 7, float %3494)  ; Saturate(value)
  %3497 = call float @dx.op.unary.f32(i32 7, float %3495)  ; Saturate(value)
  %3498 = fsub fast float %3466, %3496
  %3499 = fsub fast float %3497, %3496
  %3500 = bitcast float %3499 to i32
  %3501 = sub nsw i32 2129859010, %3500
  %3502 = bitcast i32 %3501 to float
  %3503 = fmul fast float %3502, %3498
  %3504 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  br label %3505

; <label>:3505                                    ; preds = %3459, %3453
  %3506 = phi float [ %3504, %3459 ], [ %3454, %3453 ]
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 128
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3527, label %3511

; <label>:3511                                    ; preds = %3505
  %3512 = add i32 %56, 436
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = add i32 %3514, 0
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3516, %dx.types.Handle %99, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 524288
  %3522 = icmp ne i32 %3521, 0
  %3523 = fcmp fast ogt float %3518, 0x3FE0101020000000
  %3524 = select i1 %3523, float 1.000000e+00, float 0.000000e+00
  %3525 = select i1 %3522, float %3524, float %3518
  %3526 = fmul fast float %3525, %3506
  br label %3527

; <label>:3527                                    ; preds = %3511, %3505
  %3528 = phi float [ %3526, %3511 ], [ %3506, %3505 ]
  %3529 = fcmp fast ult float %3528, 0x3F70101020000000
  br i1 %3529, label %4217, label %3530

; <label>:3530                                    ; preds = %3527
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 16
  %3534 = icmp eq i32 %3533, 0
  br i1 %3534, label %3733, label %3535

; <label>:3535                                    ; preds = %3530
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = add i32 %56, 388
  %3539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.i32 %3539, 0
  %3541 = add i32 %3540, 0
  %3542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3542, %dx.types.Handle %98, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.ResRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.ResRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.ResRet.f32 %3543, 3
  %3548 = and i32 %3537, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = lshr i32 %3537, 8
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = fmul fast float %3547, %3549
  %3554 = fadd fast float %3553, %3552
  %3555 = fmul fast float %3554, 0x3F70101000000000
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 512
  %3559 = icmp eq i32 %3558, 0
  br i1 %3559, label %3568, label %3560

; <label>:3560                                    ; preds = %3535
  %3561 = add i32 %56, 472
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = add i32 %3563, 0
  %3565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3565, %dx.types.Handle %99, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  br label %3568

; <label>:3568                                    ; preds = %3560, %3535
  %3569 = phi float [ %3567, %3560 ], [ 1.000000e+00, %3535 ]
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = and i32 %3571, 33554432
  %3573 = icmp eq i32 %3572, 0
  br i1 %3573, label %3680, label %3574

; <label>:3574                                    ; preds = %3568
  %3575 = add i32 %56, 272
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = and i32 %3577, 65535
  %3579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3578)  ; LegacyF16ToF32(value)
  %3580 = lshr i32 %3577, 16
  %3581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3580)  ; LegacyF16ToF32(value)
  %3582 = add i32 %56, 276
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 65535
  %3586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3585)  ; LegacyF16ToF32(value)
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = lshr i32 %3588, 24
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = and i32 %3588, 255
  %3593 = uitofp i32 %3592 to float
  %3594 = fmul fast float %3593, 0x3F70101020000000
  %3595 = lshr i32 %3588, 8
  %3596 = and i32 %3595, 255
  %3597 = uitofp i32 %3596 to float
  %3598 = fmul fast float %3597, 0x3F70101020000000
  %3599 = lshr i32 %3588, 16
  %3600 = and i32 %3599, 255
  %3601 = uitofp i32 %3600 to float
  %3602 = fmul fast float %3601, 0x3F70101020000000
  %3603 = add i32 %56, 268
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = lshr i32 %3605, 24
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = and i32 %3605, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = fmul fast float %3610, 0x3F70101020000000
  %3612 = lshr i32 %3605, 8
  %3613 = and i32 %3612, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = fmul fast float %3614, 0x3F70101020000000
  %3616 = lshr i32 %3605, 16
  %3617 = and i32 %3616, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = fmul fast float %3618, 0x3F70101020000000
  %3620 = bitcast float %3544 to i32
  %3621 = ashr i32 %3620, 1
  %3622 = sub nsw i32 1597463174, %3621
  %3623 = bitcast i32 %3622 to float
  %3624 = fmul fast float %3544, 5.000000e-01
  %3625 = fmul fast float %3623, %3623
  %3626 = fmul fast float %3625, %3624
  %3627 = fsub fast float 1.500000e+00, %3626
  %3628 = fmul fast float %3623, %3544
  %3629 = fmul fast float %3628, %3627
  %3630 = bitcast float %3545 to i32
  %3631 = ashr i32 %3630, 1
  %3632 = sub nsw i32 1597463174, %3631
  %3633 = bitcast i32 %3632 to float
  %3634 = fmul fast float %3545, 5.000000e-01
  %3635 = fmul fast float %3633, %3633
  %3636 = fmul fast float %3635, %3634
  %3637 = fsub fast float 1.500000e+00, %3636
  %3638 = fmul fast float %3633, %3545
  %3639 = fmul fast float %3638, %3637
  %3640 = bitcast float %3546 to i32
  %3641 = ashr i32 %3640, 1
  %3642 = sub nsw i32 1597463174, %3641
  %3643 = bitcast i32 %3642 to float
  %3644 = fmul fast float %3546, 5.000000e-01
  %3645 = fmul fast float %3643, %3643
  %3646 = fmul fast float %3645, %3644
  %3647 = fsub fast float 1.500000e+00, %3646
  %3648 = fmul fast float %3643, %3546
  %3649 = fmul fast float %3648, %3647
  %3650 = fsub fast float %3629, %3611
  %3651 = fsub fast float %3639, %3615
  %3652 = fsub fast float %3649, %3619
  %3653 = fmul fast float %3650, %3579
  %3654 = fmul fast float %3651, %3581
  %3655 = fmul fast float %3652, %3586
  %3656 = fadd fast float %3653, %3594
  %3657 = fadd fast float %3654, %3598
  %3658 = fadd fast float %3655, %3602
  %3659 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3660 = call float @dx.op.unary.f32(i32 7, float %3657)  ; Saturate(value)
  %3661 = call float @dx.op.unary.f32(i32 7, float %3658)  ; Saturate(value)
  %3662 = fmul fast float %3659, %3659
  %3663 = fmul fast float %3660, %3660
  %3664 = fmul fast float %3661, %3661
  %3665 = fsub fast float %3662, %3544
  %3666 = fsub fast float %3663, %3545
  %3667 = fsub fast float %3664, %3546
  %3668 = fmul fast float %3665, %3569
  %3669 = fmul fast float %3666, %3569
  %3670 = fmul fast float %3667, %3569
  %3671 = fadd fast float %3668, %3544
  %3672 = fadd fast float %3669, %3545
  %3673 = fadd fast float %3670, %3546
  %3674 = fadd fast float %3591, %3555
  %3675 = fsub fast float %3674, %3608
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fsub fast float %3676, %3555
  %3678 = fmul fast float %3677, %3569
  %3679 = fadd fast float %3678, %3555
  br label %3733

; <label>:3680                                    ; preds = %3568
  %3681 = and i32 %3571, 134217728
  %3682 = icmp eq i32 %3681, 0
  br i1 %3682, label %3717, label %3683

; <label>:3683                                    ; preds = %3680
  %3684 = call float @dx.op.unary.f32(i32 24, float %378)  ; Sqrt(value)
  %3685 = call float @dx.op.unary.f32(i32 24, float %382)  ; Sqrt(value)
  %3686 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3687 = fadd fast float %3684, -5.000000e-01
  %3688 = fadd fast float %3685, -5.000000e-01
  %3689 = fadd fast float %3686, -5.000000e-01
  %3690 = fmul fast float %3687, %3569
  %3691 = fmul fast float %3688, %3569
  %3692 = fmul fast float %3689, %3569
  %3693 = fadd fast float %3690, 5.000000e-01
  %3694 = fadd fast float %3691, 5.000000e-01
  %3695 = fadd fast float %3692, 5.000000e-01
  %3696 = call float @dx.op.unary.f32(i32 24, float %3544)  ; Sqrt(value)
  %3697 = call float @dx.op.unary.f32(i32 24, float %3545)  ; Sqrt(value)
  %3698 = call float @dx.op.unary.f32(i32 24, float %3546)  ; Sqrt(value)
  %3699 = fmul fast float %3693, 2.000000e+00
  %3700 = fsub fast float 1.000000e+00, %3699
  %3701 = fmul fast float %3700, %3696
  %3702 = fadd fast float %3701, %3699
  %3703 = fmul fast float %3702, %3696
  %3704 = fmul fast float %3694, 2.000000e+00
  %3705 = fsub fast float 1.000000e+00, %3704
  %3706 = fmul fast float %3705, %3697
  %3707 = fadd fast float %3706, %3704
  %3708 = fmul fast float %3707, %3697
  %3709 = fmul fast float %3695, 2.000000e+00
  %3710 = fsub fast float 1.000000e+00, %3709
  %3711 = fmul fast float %3710, %3698
  %3712 = fadd fast float %3711, %3709
  %3713 = fmul fast float %3712, %3698
  %3714 = fmul fast float %3703, %3703
  %3715 = fmul fast float %3708, %3708
  %3716 = fmul fast float %3713, %3713
  br label %3733

; <label>:3717                                    ; preds = %3680
  %3718 = fmul fast float %378, %378
  %3719 = fmul fast float %382, %382
  %3720 = fmul fast float %386, %386
  %3721 = fadd fast float %3718, -1.000000e+00
  %3722 = fadd fast float %3719, -1.000000e+00
  %3723 = fadd fast float %3720, -1.000000e+00
  %3724 = fmul fast float %3569, %3721
  %3725 = fmul fast float %3569, %3722
  %3726 = fmul fast float %3569, %3723
  %3727 = fadd fast float %3724, 1.000000e+00
  %3728 = fadd fast float %3725, 1.000000e+00
  %3729 = fadd fast float %3726, 1.000000e+00
  %3730 = fmul fast float %3727, %3544
  %3731 = fmul fast float %3728, %3545
  %3732 = fmul fast float %3729, %3546
  br label %3733

; <label>:3733                                    ; preds = %3717, %3683, %3574, %3530
  %3734 = phi float [ %3679, %3574 ], [ %3555, %3683 ], [ %3555, %3717 ], [ 0x3FA23C0BE0000000, %3530 ]
  %3735 = phi float [ %3671, %3574 ], [ %3714, %3683 ], [ %3730, %3717 ], [ 1.000000e+00, %3530 ]
  %3736 = phi float [ %3672, %3574 ], [ %3715, %3683 ], [ %3731, %3717 ], [ 1.000000e+00, %3530 ]
  %3737 = phi float [ %3673, %3574 ], [ %3716, %3683 ], [ %3732, %3717 ], [ 1.000000e+00, %3530 ]
  %3738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.i32 %3738, 1
  %3740 = and i32 %3739, 1
  %3741 = icmp ne i32 %3740, 0
  %3742 = add i32 %56, 356
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = and i32 %3744, 32
  %3746 = icmp ne i32 %3745, 0
  %3747 = and i1 %3741, %3746
  %3748 = select i1 %3747, float 1.000000e+00, float %3735
  %3749 = select i1 %3747, float 0x3FD3333340000000, float %3736
  %3750 = select i1 %3747, float 0x3FD3333340000000, float %3737
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = and i32 %3752, 32
  %3754 = icmp eq i32 %3753, 0
  br i1 %3754, label %3827, label %3755

; <label>:3755                                    ; preds = %3733
  %3756 = add i32 %56, 140
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = add i32 %56, 404
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = add i32 %3761, 0
  %3763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3763, %dx.types.Handle %98, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = and i32 %3758, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = lshr i32 %3758, 8
  %3772 = and i32 %3771, 255
  %3773 = uitofp i32 %3772 to float
  %3774 = lshr i32 %3758, 16
  %3775 = and i32 %3774, 255
  %3776 = uitofp i32 %3775 to float
  %3777 = fmul fast float %3776, 0x3F70101000000000
  %3778 = fmul fast float %3765, %3770
  %3779 = fadd fast float %3778, %3773
  %3780 = fmul fast float %3779, 0x3F70101000000000
  %3781 = fadd fast float %3766, -5.000000e-01
  %3782 = fadd fast float %3768, -5.000000e-01
  %3783 = fmul fast float %3781, %3777
  %3784 = fmul fast float %3782, %3777
  %3785 = fadd fast float %3783, 5.000000e-01
  %3786 = fadd fast float %3784, 5.000000e-01
  %3787 = fmul fast float %3785, 2.000000e+00
  %3788 = fadd fast float %3787, -1.000000e+00
  %3789 = fmul fast float %3786, 2.000000e+00
  %3790 = fadd fast float %3789, -1.000000e+00
  %3791 = fadd fast float %3788, %3790
  %3792 = fmul fast float %3791, 5.000000e-01
  %3793 = fsub fast float %3788, %3790
  %3794 = fmul fast float %3793, 5.000000e-01
  %3795 = call float @dx.op.unary.f32(i32 6, float %3792)  ; FAbs(value)
  %3796 = fsub fast float 1.000000e+00, %3795
  %3797 = call float @dx.op.unary.f32(i32 6, float %3794)  ; FAbs(value)
  %3798 = fsub fast float %3796, %3797
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3792, float %3794, float %3798, float %3792, float %3794, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call float @dx.op.unary.f32(i32 25, float %3799)  ; Rsqrt(value)
  %3801 = fmul fast float %3792, %3800
  %3802 = fmul fast float %3794, %3800
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = and i32 %3804, 67108864
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3823, label %3807

; <label>:3807                                    ; preds = %3755
  %3808 = add i32 %56, 328
  %3809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.i32 %3809, 0
  %3811 = and i32 %3810, 65535
  %3812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3811)  ; LegacyF16ToF32(value)
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = and i32 %3814, 65535
  %3816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3815)  ; LegacyF16ToF32(value)
  %3817 = lshr i32 %3810, 16
  %3818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3817)  ; LegacyF16ToF32(value)
  %3819 = fsub fast float %3780, %3818
  %3820 = fmul fast float %3819, %3812
  %3821 = fadd fast float %3820, %3816
  %3822 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  br label %3823

; <label>:3823                                    ; preds = %3807, %3755
  %3824 = phi float [ %3822, %3807 ], [ %3780, %3755 ]
  %3825 = call float @dx.op.dot2.f32(i32 54, float %3801, float %3802, float %3244, float %3245)  ; Dot2(ax,ay,bx,by)
  %3826 = call float @dx.op.dot2.f32(i32 54, float %3801, float %3802, float %3246, float %3247)  ; Dot2(ax,ay,bx,by)
  br label %3827

; <label>:3827                                    ; preds = %3823, %3733
  %3828 = phi float [ %3824, %3823 ], [ 0x3FD6666660000000, %3733 ]
  %3829 = phi float [ %3825, %3823 ], [ 0.000000e+00, %3733 ]
  %3830 = phi float [ %3826, %3823 ], [ 0.000000e+00, %3733 ]
  %3831 = phi float [ %3767, %3823 ], [ 1.000000e+00, %3733 ]
  %3832 = add i32 %56, 208
  %3833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.i32 %3833, 0
  %3835 = lshr i32 %3834, 22
  %3836 = shl nuw nsw i32 %3835, 5
  %3837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3836)  ; LegacyF16ToF32(value)
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = and i32 %3839, 64
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %3875, label %3842

; <label>:3842                                    ; preds = %3827
  %3843 = add i32 %56, 420
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = add i32 %3845, 0
  %3847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = and i32 %3849, 131072
  %3851 = icmp eq i32 %3850, 0
  %3852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3847, %dx.types.Handle %98, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = fmul fast float %3853, %366
  %3857 = fmul fast float %3854, %369
  %3858 = fmul fast float %3855, %372
  br i1 %3851, label %3865, label %3859

; <label>:3859                                    ; preds = %3842
  %3860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3861 = extractvalue %dx.types.CBufRet.f32 %3860, 0
  %3862 = fmul fast float %3861, %3856
  %3863 = fmul fast float %3861, %3857
  %3864 = fmul fast float %3861, %3858
  br label %3865

; <label>:3865                                    ; preds = %3859, %3842
  %3866 = phi float [ %3862, %3859 ], [ %3856, %3842 ]
  %3867 = phi float [ %3863, %3859 ], [ %3857, %3842 ]
  %3868 = phi float [ %3864, %3859 ], [ %3858, %3842 ]
  %3869 = fmul fast float %3866, %3837
  %3870 = select i1 %223, float %3869, float %3866
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3870, float %3867, float %3868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = select i1 %223, float 0.000000e+00, float %3866
  %3873 = select i1 %223, float %3871, float %3867
  %3874 = select i1 %223, float 0.000000e+00, float %3868
  br label %3875

; <label>:3875                                    ; preds = %3865, %3827
  %3876 = phi float [ %3872, %3865 ], [ 0.000000e+00, %3827 ]
  %3877 = phi float [ %3873, %3865 ], [ 0.000000e+00, %3827 ]
  %3878 = phi float [ %3874, %3865 ], [ 0.000000e+00, %3827 ]
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = and i32 %3880, 1024
  %3882 = icmp eq i32 %3881, 0
  br i1 %3882, label %3913, label %3883

; <label>:3883                                    ; preds = %3875
  %3884 = add i32 %56, 200
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = and i32 %3886, 255
  %3888 = uitofp i32 %3887 to float
  %3889 = fmul fast float %3888, 0x3F70101020000000
  %3890 = lshr i32 %3886, 8
  %3891 = and i32 %3890, 255
  %3892 = uitofp i32 %3891 to float
  %3893 = fmul fast float %3892, 0x3F70101020000000
  %3894 = lshr i32 %3886, 16
  %3895 = and i32 %3894, 255
  %3896 = uitofp i32 %3895 to float
  %3897 = fmul fast float %3896, 0x3F70101020000000
  %3898 = fmul fast float %3889, %3889
  %3899 = fmul fast float %3893, %3893
  %3900 = fmul fast float %3897, %3897
  %3901 = add i32 %56, 488
  %3902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.i32 %3902, 0
  %3904 = add i32 %3903, 0
  %3905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3905, %dx.types.Handle %99, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = fmul fast float %3898, %3907
  %3911 = fmul fast float %3899, %3908
  %3912 = fmul fast float %3900, %3909
  br label %3913

; <label>:3913                                    ; preds = %3883, %3875
  %3914 = phi float [ %3910, %3883 ], [ 0.000000e+00, %3875 ]
  %3915 = phi float [ %3911, %3883 ], [ 0.000000e+00, %3875 ]
  %3916 = phi float [ %3912, %3883 ], [ 0.000000e+00, %3875 ]
  %3917 = fcmp fast ogt float %3914, 0.000000e+00
  %3918 = fcmp fast ogt float %3915, 0.000000e+00
  %3919 = fcmp fast ogt float %3916, 0.000000e+00
  %3920 = call float @dx.op.unary.f32(i32 23, float %3914)  ; Log(value)
  %3921 = call float @dx.op.unary.f32(i32 23, float %3915)  ; Log(value)
  %3922 = call float @dx.op.unary.f32(i32 23, float %3916)  ; Log(value)
  %3923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.i32 %3923, 0
  %3925 = lshr i32 %3924, 7
  %3926 = and i32 %3925, 32752
  %3927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3926)  ; LegacyF16ToF32(value)
  %3928 = fmul fast float %3920, 0xBFE62E4300000000
  %3929 = fmul fast float %3928, %3927
  %3930 = fmul fast float %3921, 0xBFE62E4300000000
  %3931 = fmul fast float %3930, %3927
  %3932 = fmul fast float %3922, 0xBFE62E4300000000
  %3933 = fmul fast float %3932, %3927
  %3934 = select i1 %3917, float %3929, float 1.270000e+02
  %3935 = select i1 %3918, float %3931, float 1.270000e+02
  %3936 = select i1 %3919, float %3933, float 1.270000e+02
  %3937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.i32 %3937, 0
  %3939 = and i32 %3938, 10240
  %3940 = icmp eq i32 %3939, 0
  br i1 %3940, label %3961, label %3941

; <label>:3941                                    ; preds = %3913
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 2048
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %3961, label %3946

; <label>:3946                                    ; preds = %3941
  %3947 = add i32 %56, 504
  %3948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.i32 %3948, 0
  %3950 = add i32 %3949, 0
  %3951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3951, %dx.types.Handle %99, float %3340, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3953 = extractvalue %dx.types.ResRet.f32 %3952, 3
  %3954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.i32 %3954, 0
  %3956 = shl i32 %3955, 4
  %3957 = and i32 %3956, 32752
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = fmul fast float %3958, %3953
  %3960 = call float @dx.op.binary.f32(i32 35, float %3959, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3961

; <label>:3961                                    ; preds = %3946, %3941, %3913
  %3962 = phi float [ %3960, %3946 ], [ 0x3F70101020000000, %3941 ], [ 0x3F70101020000000, %3913 ]
  %3963 = add i32 %56, 144
  %3964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.i32 %3964, 0
  %3966 = and i32 %3965, 255
  %3967 = uitofp i32 %3966 to float
  %3968 = lshr i32 %3965, 8
  %3969 = and i32 %3968, 255
  %3970 = uitofp i32 %3969 to float
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3748, float %3749, float %3750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = fmul fast float %3970, %3971
  %3973 = fadd fast float %3972, %3967
  %3974 = fmul fast float %3973, 0x3F70101020000000
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  br i1 %3232, label %3976, label %4011

; <label>:3976                                    ; preds = %3961
  %3977 = fmul fast float %3962, 2.000000e+00
  %3978 = fcmp fast olt float %3934, 1.270000e+02
  %3979 = fcmp fast olt float %3935, 1.270000e+02
  %3980 = fcmp fast olt float %3936, 1.270000e+02
  %3981 = fmul fast float %3934, 0xBFF7154760000000
  %3982 = fmul fast float %3981, %3977
  %3983 = fmul fast float %3935, 0xBFF7154760000000
  %3984 = fmul fast float %3983, %3977
  %3985 = fmul fast float %3936, 0xBFF7154760000000
  %3986 = fmul fast float %3985, %3977
  %3987 = call float @dx.op.unary.f32(i32 21, float %3982)  ; Exp(value)
  %3988 = call float @dx.op.unary.f32(i32 21, float %3984)  ; Exp(value)
  %3989 = call float @dx.op.unary.f32(i32 21, float %3986)  ; Exp(value)
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = fadd fast float %3990, -1.000000e+00
  %3994 = select i1 %3978, float %3993, float -1.000000e+00
  %3995 = fadd fast float %3991, -1.000000e+00
  %3996 = select i1 %3979, float %3995, float -1.000000e+00
  %3997 = fadd fast float %3992, -1.000000e+00
  %3998 = select i1 %3980, float %3997, float -1.000000e+00
  %3999 = fmul fast float %3994, %3528
  %4000 = fmul fast float %3996, %3528
  %4001 = fmul fast float %3998, %3528
  %4002 = fadd fast float %3999, 1.000000e+00
  %4003 = fadd fast float %4000, 1.000000e+00
  %4004 = fadd fast float %4001, 1.000000e+00
  %4005 = fmul fast float %4002, %3217
  %4006 = fmul fast float %4003, %3218
  %4007 = fmul fast float %4004, %3219
  %4008 = fmul fast float %4002, %3220
  %4009 = fmul fast float %4003, %3221
  %4010 = fmul fast float %4004, %3222
  br label %4011

; <label>:4011                                    ; preds = %3976, %3961
  %4012 = phi float [ %4005, %3976 ], [ %3217, %3961 ]
  %4013 = phi float [ %4006, %3976 ], [ %3218, %3961 ]
  %4014 = phi float [ %4007, %3976 ], [ %3219, %3961 ]
  %4015 = phi float [ %4008, %3976 ], [ %3220, %3961 ]
  %4016 = phi float [ %4009, %3976 ], [ %3221, %3961 ]
  %4017 = phi float [ %4010, %3976 ], [ %3222, %3961 ]
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = and i32 %4019, 3
  %4021 = icmp eq i32 %4020, 3
  br i1 %4021, label %4100, label %4022

; <label>:4022                                    ; preds = %4011
  %4023 = and i32 %4019, 16
  %4024 = icmp ne i32 %4023, 0
  %4025 = select i1 %4024, float %3528, float 0.000000e+00
  %4026 = icmp eq i32 %4020, 0
  br i1 %4026, label %4027, label %4055

; <label>:4027                                    ; preds = %4022
  %4028 = and i32 %4019, 64
  %4029 = icmp ne i32 %4028, 0
  %4030 = select i1 %4029, float %3528, float 0.000000e+00
  %4031 = fsub fast float %3748, %4012
  %4032 = fsub fast float %3749, %4013
  %4033 = fsub fast float %3750, %4014
  %4034 = fmul fast float %4025, %4031
  %4035 = fmul fast float %4025, %4032
  %4036 = fmul fast float %4025, %4033
  %4037 = fadd fast float %4034, %4012
  %4038 = fadd fast float %4035, %4013
  %4039 = fadd fast float %4036, %4014
  %4040 = fsub fast float %3734, %3226
  %4041 = fmul fast float %4025, %4040
  %4042 = fadd fast float %4041, %3226
  %4043 = fsub fast float %3876, %4015
  %4044 = fsub fast float %3877, %4016
  %4045 = fsub fast float %3878, %4017
  %4046 = fmul fast float %4030, %4043
  %4047 = fmul fast float %4030, %4044
  %4048 = fmul fast float %4030, %4045
  %4049 = fadd fast float %4046, %4015
  %4050 = fadd fast float %4047, %4016
  %4051 = fadd fast float %4048, %4017
  %4052 = fsub fast float %3975, %3230
  %4053 = fmul fast float %4025, %4052
  %4054 = fadd fast float %4053, %3230
  br label %4100

; <label>:4055                                    ; preds = %4022
  %4056 = icmp eq i32 %4020, 1
  br i1 %4056, label %4057, label %4070

; <label>:4057                                    ; preds = %4055
  %4058 = fadd fast float %3748, -1.000000e+00
  %4059 = fadd fast float %3749, -1.000000e+00
  %4060 = fadd fast float %3750, -1.000000e+00
  %4061 = fmul fast float %4025, %4058
  %4062 = fmul fast float %4025, %4059
  %4063 = fmul fast float %4025, %4060
  %4064 = fadd fast float %4061, 1.000000e+00
  %4065 = fadd fast float %4062, 1.000000e+00
  %4066 = fadd fast float %4063, 1.000000e+00
  %4067 = fmul fast float %4064, %4012
  %4068 = fmul fast float %4065, %4013
  %4069 = fmul fast float %4066, %4014
  br label %4100

; <label>:4070                                    ; preds = %4055
  %4071 = icmp eq i32 %4020, 2
  br i1 %4071, label %4072, label %4100

; <label>:4072                                    ; preds = %4070
  %4073 = call float @dx.op.unary.f32(i32 24, float %3748)  ; Sqrt(value)
  %4074 = call float @dx.op.unary.f32(i32 24, float %3749)  ; Sqrt(value)
  %4075 = call float @dx.op.unary.f32(i32 24, float %3750)  ; Sqrt(value)
  %4076 = fadd fast float %4073, -5.000000e-01
  %4077 = fadd fast float %4074, -5.000000e-01
  %4078 = fadd fast float %4075, -5.000000e-01
  %4079 = fmul fast float %4076, %4025
  %4080 = fmul fast float %4077, %4025
  %4081 = fmul fast float %4078, %4025
  %4082 = fadd fast float %4079, 5.000000e-01
  %4083 = fadd fast float %4080, 5.000000e-01
  %4084 = fadd fast float %4081, 5.000000e-01
  %4085 = fmul fast float %4082, 2.000000e+00
  %4086 = fsub fast float 1.000000e+00, %4085
  %4087 = fmul fast float %4086, %4012
  %4088 = fadd fast float %4087, %4085
  %4089 = fmul fast float %4088, %4012
  %4090 = fmul fast float %4083, 2.000000e+00
  %4091 = fsub fast float 1.000000e+00, %4090
  %4092 = fmul fast float %4091, %4013
  %4093 = fadd fast float %4092, %4090
  %4094 = fmul fast float %4093, %4013
  %4095 = fmul fast float %4084, 2.000000e+00
  %4096 = fsub fast float 1.000000e+00, %4095
  %4097 = fmul fast float %4096, %4014
  %4098 = fadd fast float %4097, %4095
  %4099 = fmul fast float %4098, %4014
  br label %4100

; <label>:4100                                    ; preds = %4072, %4070, %4057, %4027, %4011
  %4101 = phi float [ %4012, %4011 ], [ %4089, %4072 ], [ %4012, %4070 ], [ %4067, %4057 ], [ %4037, %4027 ]
  %4102 = phi float [ %4013, %4011 ], [ %4094, %4072 ], [ %4013, %4070 ], [ %4068, %4057 ], [ %4038, %4027 ]
  %4103 = phi float [ %4014, %4011 ], [ %4099, %4072 ], [ %4014, %4070 ], [ %4069, %4057 ], [ %4039, %4027 ]
  %4104 = phi float [ %4015, %4011 ], [ %4015, %4072 ], [ %4015, %4070 ], [ %4015, %4057 ], [ %4049, %4027 ]
  %4105 = phi float [ %4016, %4011 ], [ %4016, %4072 ], [ %4016, %4070 ], [ %4016, %4057 ], [ %4050, %4027 ]
  %4106 = phi float [ %4017, %4011 ], [ %4017, %4072 ], [ %4017, %4070 ], [ %4017, %4057 ], [ %4051, %4027 ]
  %4107 = phi float [ %3226, %4011 ], [ %3226, %4072 ], [ %3226, %4070 ], [ %3226, %4057 ], [ %4042, %4027 ]
  %4108 = phi float [ %3230, %4011 ], [ %3230, %4072 ], [ %3230, %4070 ], [ %3230, %4057 ], [ %4054, %4027 ]
  %4109 = and i32 %4019, 12
  %4110 = icmp eq i32 %4109, 12
  br i1 %4110, label %4217, label %4111

; <label>:4111                                    ; preds = %4100
  %4112 = and i32 %4019, 2097184
  %4113 = icmp eq i32 %4112, 2097184
  %4114 = select i1 %4113, float %3528, float 0.000000e+00
  %4115 = and i32 %4019, 4194336
  %4116 = icmp eq i32 %4115, 4194336
  %4117 = select i1 %4116, float %3528, float 0.000000e+00
  %4118 = and i32 %4019, 8388640
  %4119 = icmp eq i32 %4118, 8388640
  %4120 = select i1 %4119, float %3528, float 0.000000e+00
  %4121 = and i32 %4019, 1024
  %4122 = icmp ne i32 %4121, 0
  %4123 = select i1 %4122, float %3528, float 0.000000e+00
  %4124 = and i32 %4019, 2048
  %4125 = icmp ne i32 %4124, 0
  %4126 = select i1 %4125, float %3528, float 0.000000e+00
  %4127 = icmp eq i32 %4109, 0
  br i1 %4127, label %4128, label %4153

; <label>:4128                                    ; preds = %4111
  %4129 = fsub fast float %3829, %3215
  %4130 = fsub fast float %3830, %3216
  %4131 = fmul fast float %4114, %4129
  %4132 = fmul fast float %4114, %4130
  %4133 = fadd fast float %4131, %3215
  %4134 = fadd fast float %4132, %3216
  %4135 = fsub fast float %3831, %3228
  %4136 = fmul fast float %4117, %4135
  %4137 = fadd fast float %4136, %3228
  %4138 = fsub fast float %3828, %3227
  %4139 = fmul fast float %4120, %4138
  %4140 = fadd fast float %4139, %3227
  %4141 = fsub fast float %3934, %3223
  %4142 = fsub fast float %3935, %3224
  %4143 = fsub fast float %3936, %3225
  %4144 = fmul fast float %4123, %4141
  %4145 = fmul fast float %4123, %4142
  %4146 = fmul fast float %4123, %4143
  %4147 = fadd fast float %4144, %3223
  %4148 = fadd fast float %4145, %3224
  %4149 = fadd fast float %4146, %3225
  %4150 = fsub fast float %3962, %3229
  %4151 = fmul fast float %4126, %4150
  %4152 = fadd fast float %4151, %3229
  br label %4217

; <label>:4153                                    ; preds = %4111
  %4154 = icmp eq i32 %4109, 4
  br i1 %4154, label %4155, label %4195

; <label>:4155                                    ; preds = %4153
  %4156 = fmul fast float %4114, %3829
  %4157 = fmul fast float %4114, %3830
  %4158 = fadd fast float %4156, %3215
  %4159 = fadd fast float %4157, %3216
  %4160 = call float @dx.op.binary.f32(i32 36, float %3228, float %3831)  ; FMin(a,b)
  %4161 = fsub fast float %4160, %3228
  %4162 = fmul fast float %4161, %4117
  %4163 = fadd fast float %4162, %3228
  %4164 = fadd fast float %3828, %3227
  %4165 = fmul fast float %4164, 0x3FF337FAE0000000
  %4166 = fmul fast float %3227, %3227
  %4167 = fmul fast float %3828, %3828
  %4168 = fadd fast float %4167, %4166
  %4169 = fmul fast float %4168, 0x3FE5152B00000000
  %4170 = fmul fast float %3227, 0xBFCC1F85E0000000
  %4171 = fmul fast float %4170, %3828
  %4172 = fadd fast float %4171, 0xBFE1363700000000
  %4173 = fadd fast float %4172, %4165
  %4174 = fsub fast float %4173, %4169
  %4175 = fmul fast float %4164, 0x3FBA6F0D00000000
  %4176 = fmul fast float %4168, 0x3FD0432880000000
  %4177 = fmul fast float %3227, 0xBFEF110800000000
  %4178 = fmul fast float %4177, %3828
  %4179 = fadd fast float %4178, 1.000000e+00
  %4180 = fsub fast float %4179, %4175
  %4181 = fadd fast float %4180, %4176
  %4182 = fdiv fast float %4174, %4181
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fsub fast float %4183, %3227
  %4185 = fmul fast float %4184, %4120
  %4186 = fadd fast float %4185, %3227
  %4187 = fmul fast float %4123, %3934
  %4188 = fmul fast float %4123, %3935
  %4189 = fmul fast float %4123, %3936
  %4190 = fadd fast float %4187, %3223
  %4191 = fadd fast float %4188, %3224
  %4192 = fadd fast float %4189, %3225
  %4193 = fmul fast float %4126, %3962
  %4194 = fadd fast float %4193, %3229
  br label %4217

; <label>:4195                                    ; preds = %4153
  %4196 = icmp eq i32 %4109, 8
  br i1 %4196, label %4197, label %4217

; <label>:4197                                    ; preds = %4195
  %4198 = fmul fast float %4114, %3829
  %4199 = fmul fast float %4114, %3830
  %4200 = fadd fast float %4198, %3215
  %4201 = fadd fast float %4199, %3216
  %4202 = call float @dx.op.binary.f32(i32 36, float %3228, float %3831)  ; FMin(a,b)
  %4203 = fsub fast float %4202, %3228
  %4204 = fmul fast float %4203, %4117
  %4205 = fadd fast float %4204, %3228
  %4206 = fsub fast float %3828, %3227
  %4207 = fmul fast float %4120, %4206
  %4208 = fadd fast float %4207, %3227
  %4209 = fmul fast float %4123, %3934
  %4210 = fmul fast float %4123, %3935
  %4211 = fmul fast float %4123, %3936
  %4212 = fadd fast float %4209, %3223
  %4213 = fadd fast float %4210, %3224
  %4214 = fadd fast float %4211, %3225
  %4215 = fmul fast float %4126, %3962
  %4216 = fadd fast float %4215, %3229
  br label %4217

; <label>:4217                                    ; preds = %4197, %4195, %4155, %4128, %4100, %3527, %3231, %3214
  %4218 = phi float [ %3215, %4100 ], [ %3215, %3527 ], [ %3215, %3214 ], [ %3215, %3231 ], [ %4133, %4128 ], [ %4158, %4155 ], [ %3215, %4195 ], [ %4200, %4197 ]
  %4219 = phi float [ %3216, %4100 ], [ %3216, %3527 ], [ %3216, %3214 ], [ %3216, %3231 ], [ %4134, %4128 ], [ %4159, %4155 ], [ %3216, %4195 ], [ %4201, %4197 ]
  %4220 = phi float [ %4101, %4100 ], [ %3217, %3527 ], [ %3217, %3214 ], [ %3217, %3231 ], [ %4101, %4128 ], [ %4101, %4155 ], [ %4101, %4195 ], [ %4101, %4197 ]
  %4221 = phi float [ %4102, %4100 ], [ %3218, %3527 ], [ %3218, %3214 ], [ %3218, %3231 ], [ %4102, %4128 ], [ %4102, %4155 ], [ %4102, %4195 ], [ %4102, %4197 ]
  %4222 = phi float [ %4103, %4100 ], [ %3219, %3527 ], [ %3219, %3214 ], [ %3219, %3231 ], [ %4103, %4128 ], [ %4103, %4155 ], [ %4103, %4195 ], [ %4103, %4197 ]
  %4223 = phi float [ %4104, %4100 ], [ %3220, %3527 ], [ %3220, %3214 ], [ %3220, %3231 ], [ %4104, %4128 ], [ %4104, %4155 ], [ %4104, %4195 ], [ %4104, %4197 ]
  %4224 = phi float [ %4105, %4100 ], [ %3221, %3527 ], [ %3221, %3214 ], [ %3221, %3231 ], [ %4105, %4128 ], [ %4105, %4155 ], [ %4105, %4195 ], [ %4105, %4197 ]
  %4225 = phi float [ %4106, %4100 ], [ %3222, %3527 ], [ %3222, %3214 ], [ %3222, %3231 ], [ %4106, %4128 ], [ %4106, %4155 ], [ %4106, %4195 ], [ %4106, %4197 ]
  %4226 = phi float [ %3223, %4100 ], [ %3223, %3527 ], [ %3223, %3214 ], [ %3223, %3231 ], [ %4147, %4128 ], [ %4190, %4155 ], [ %3223, %4195 ], [ %4212, %4197 ]
  %4227 = phi float [ %3224, %4100 ], [ %3224, %3527 ], [ %3224, %3214 ], [ %3224, %3231 ], [ %4148, %4128 ], [ %4191, %4155 ], [ %3224, %4195 ], [ %4213, %4197 ]
  %4228 = phi float [ %3225, %4100 ], [ %3225, %3527 ], [ %3225, %3214 ], [ %3225, %3231 ], [ %4149, %4128 ], [ %4192, %4155 ], [ %3225, %4195 ], [ %4214, %4197 ]
  %4229 = phi float [ %4107, %4100 ], [ %3226, %3527 ], [ %3226, %3214 ], [ %3226, %3231 ], [ %4107, %4128 ], [ %4107, %4155 ], [ %4107, %4195 ], [ %4107, %4197 ]
  %4230 = phi float [ %3227, %4100 ], [ %3227, %3527 ], [ %3227, %3214 ], [ %3227, %3231 ], [ %4140, %4128 ], [ %4186, %4155 ], [ %3227, %4195 ], [ %4208, %4197 ]
  %4231 = phi float [ %3228, %4100 ], [ %3228, %3527 ], [ %3228, %3214 ], [ %3228, %3231 ], [ %4137, %4128 ], [ %4163, %4155 ], [ %3228, %4195 ], [ %4205, %4197 ]
  %4232 = phi float [ %3229, %4100 ], [ %3229, %3527 ], [ %3229, %3214 ], [ %3229, %3231 ], [ %4152, %4128 ], [ %4194, %4155 ], [ %3229, %4195 ], [ %4216, %4197 ]
  %4233 = phi float [ %4108, %4100 ], [ %3230, %3527 ], [ %3230, %3214 ], [ %3230, %3231 ], [ %4108, %4128 ], [ %4108, %4155 ], [ %4108, %4195 ], [ %4108, %4197 ]
  %4234 = add i32 %56, 360
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.i32 %4235, 1
  %4238 = bitcast i32 %4236 to float
  %4239 = bitcast i32 %4237 to float
  %4240 = fcmp fast oge float %4238, 0.000000e+00
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = select i1 %4240, float %4238, float %4242
  %4244 = add i32 %56, 456
  %4245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.i32 %4245, 0
  %4247 = add i32 %4246, 0
  %4248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4248, %dx.types.Handle %99, float %84, float %85, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fmul fast float %4250, %4239
  %4252 = fadd fast float %4251, %4243
  %4253 = call float @dx.op.dot2.f32(i32 54, float %4218, float %4219, float %4218, float %4219)  ; Dot2(ax,ay,bx,by)
  %4254 = fmul fast float %4253, 0x3FE3333340000000
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4255, float %4218, float %4219, float %4255)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call float @dx.op.unary.f32(i32 25, float %4256)  ; Rsqrt(value)
  %4258 = fmul fast float %4257, %4218
  %4259 = fmul fast float %4257, %4219
  %4260 = fmul fast float %4255, %4257
  %4261 = fmul fast float %4260, %111
  %4262 = fmul fast float %4260, %113
  %4263 = fmul fast float %4260, %115
  %4264 = fmul fast float %4258, %77
  %4265 = fmul fast float %4258, %78
  %4266 = fmul fast float %4258, %79
  %4267 = fadd fast float %4261, %4264
  %4268 = fadd fast float %4262, %4265
  %4269 = fadd fast float %4263, %4266
  %4270 = fmul fast float %125, %4259
  %4271 = fmul fast float %126, %4259
  %4272 = fmul fast float %127, %4259
  %4273 = fadd fast float %4267, %4270
  %4274 = fadd fast float %4268, %4271
  %4275 = fadd fast float %4269, %4272
  %4276 = call float @dx.op.dot3.f32(i32 55, float %4273, float %4274, float %4275, float %4273, float %4274, float %4275)  ; Dot3(ax,ay,az,bx,by,bz)
  %4277 = call float @dx.op.unary.f32(i32 25, float %4276)  ; Rsqrt(value)
  %4278 = fmul fast float %4273, %4277
  %4279 = fmul fast float %4274, %4277
  %4280 = fmul fast float %4275, %4277
  %4281 = and i32 %58, 1
  %4282 = icmp eq i32 %4281, 0
  br i1 %4282, label %4283, label %4826

; <label>:4283                                    ; preds = %4217
  %4284 = call float @dx.op.unary.f32(i32 83, float %161)  ; DerivCoarseX(value)
  %4285 = call float @dx.op.unary.f32(i32 83, float %162)  ; DerivCoarseX(value)
  %4286 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4287 = call float @dx.op.unary.f32(i32 84, float %161)  ; DerivCoarseY(value)
  %4288 = call float @dx.op.unary.f32(i32 84, float %162)  ; DerivCoarseY(value)
  %4289 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4290 = fadd fast float %4284, %161
  %4291 = fadd fast float %4285, %162
  %4292 = fadd fast float %4286, %163
  %4293 = fadd fast float %4287, %161
  %4294 = fadd fast float %4288, %162
  %4295 = fadd fast float %4289, %163
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 2
  %4302 = extractvalue %dx.types.CBufRet.f32 %4300, 3
  %4303 = fmul fast float %4297, %102
  %4304 = fmul fast float %4303, %4301
  %4305 = fmul fast float %4298, %103
  %4306 = fmul fast float %4305, %4302
  %4307 = fptoui float %4304 to i32
  %4308 = fptoui float %4306 to i32
  %4309 = fadd fast float %4297, -1.000000e+00
  %4310 = fadd fast float %4298, -1.000000e+00
  %4311 = fptoui float %4309 to i32
  %4312 = fptoui float %4310 to i32
  %4313 = call i32 @dx.op.binary.i32(i32 40, i32 %4307, i32 %4311)  ; UMin(a,b)
  %4314 = call i32 @dx.op.binary.i32(i32 40, i32 %4308, i32 %4312)  ; UMin(a,b)
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4317 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4318 = fmul fast float %4316, %93
  %4319 = fsub fast float %4318, %4317
  %4320 = fadd fast float %4299, -1.000000e+00
  %4321 = call float @dx.op.binary.f32(i32 36, float %4319, float %4320)  ; FMin(a,b)
  %4322 = fptoui float %4321 to i32
  %4323 = fptoui float %4297 to i32
  %4324 = fptoui float %4298 to i32
  %4325 = mul i32 %4322, %4324
  %4326 = add i32 %4325, %4314
  %4327 = mul i32 %4326, %4323
  %4328 = add i32 %4327, %4313
  %4329 = shl i32 %4328, 2
  %4330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.i32 %4330, 0
  %4332 = and i32 %4331, 1023
  %4333 = lshr i32 %4331, 10
  %4334 = icmp eq i32 %4332, 0
  br i1 %4334, label %4791, label %4335

; <label>:4335                                    ; preds = %4283
  %4336 = and i32 %4331, 1023
  br label %4337

; <label>:4337                                    ; preds = %4467, %4335
  %4338 = phi i32 [ %4417, %4467 ], [ 0, %4335 ]
  %4339 = phi float [ %4468, %4467 ], [ 0.000000e+00, %4335 ]
  %4340 = phi float [ %4469, %4467 ], [ %1220, %4335 ]
  %4341 = phi float [ %4470, %4467 ], [ %4252, %4335 ]
  %4342 = phi float [ %4471, %4467 ], [ %4233, %4335 ]
  %4343 = phi float [ %4472, %4467 ], [ %4226, %4335 ]
  %4344 = phi float [ %4473, %4467 ], [ %4227, %4335 ]
  %4345 = phi float [ %4474, %4467 ], [ %4228, %4335 ]
  %4346 = phi float [ %4475, %4467 ], [ 0.000000e+00, %4335 ]
  %4347 = phi float [ %4476, %4467 ], [ 0.000000e+00, %4335 ]
  %4348 = phi float [ %4477, %4467 ], [ %4223, %4335 ]
  %4349 = phi float [ %4478, %4467 ], [ %4224, %4335 ]
  %4350 = phi float [ %4479, %4467 ], [ %4225, %4335 ]
  %4351 = phi float [ %4480, %4467 ], [ %4278, %4335 ]
  %4352 = phi float [ %4481, %4467 ], [ %4279, %4335 ]
  %4353 = phi float [ %4482, %4467 ], [ %4280, %4335 ]
  %4354 = phi float [ %4483, %4467 ], [ %4231, %4335 ]
  %4355 = phi float [ %4484, %4467 ], [ %4230, %4335 ]
  %4356 = phi float [ %4485, %4467 ], [ 0.000000e+00, %4335 ]
  %4357 = phi float [ %4486, %4467 ], [ %4229, %4335 ]
  %4358 = phi float [ %4487, %4467 ], [ %4220, %4335 ]
  %4359 = phi float [ %4488, %4467 ], [ %4221, %4335 ]
  %4360 = phi float [ %4489, %4467 ], [ %4222, %4335 ]
  %4361 = add nuw nsw i32 %4338, %4333
  %4362 = shl i32 %4361, 2
  %4363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.i32 %4363, 0
  %4365 = shl i32 %4364, 8
  %4366 = or i32 %4365, 48
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = extractvalue %dx.types.ResRet.f32 %4367, 3
  %4372 = or i32 %4365, 64
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = extractvalue %dx.types.ResRet.i32 %4373, 1
  %4376 = or i32 %4365, 80
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 2
  %4379 = extractvalue %dx.types.ResRet.f32 %4377, 3
  %4380 = or i32 %4365, 96
  %4381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = extractvalue %dx.types.ResRet.f32 %4381, 3
  %4386 = or i32 %4365, 112
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4389 = or i32 %4365, 128
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = or i32 %4365, 144
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4401 = or i32 %4365, 160
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.ResRet.f32 %4402, 2
  %4406 = extractvalue %dx.types.ResRet.f32 %4402, 3
  %4407 = or i32 %4365, 192
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = or i32 %4365, 208
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = or i32 %4365, 248
  %4414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4413, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.ResRet.f32 %4414, 1
  %4417 = add nuw nsw i32 %4338, 1
  %4418 = bitcast float %4371 to i32
  %4419 = and i32 %4418, 512
  %4420 = icmp eq i32 %4419, 0
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = extractvalue %dx.types.ResRet.f32 %4421, 2
  %4425 = extractvalue %dx.types.ResRet.f32 %4421, 3
  %4426 = call float @dx.op.dot4.f32(i32 56, float %4422, float %4423, float %4424, float %4425, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4427 = or i32 %4365, 16
  %4428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.ResRet.f32 %4428, 1
  %4431 = extractvalue %dx.types.ResRet.f32 %4428, 2
  %4432 = extractvalue %dx.types.ResRet.f32 %4428, 3
  %4433 = call float @dx.op.dot4.f32(i32 56, float %4429, float %4430, float %4431, float %4432, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4434 = or i32 %4365, 32
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = extractvalue %dx.types.ResRet.f32 %4435, 1
  %4438 = extractvalue %dx.types.ResRet.f32 %4435, 2
  %4439 = extractvalue %dx.types.ResRet.f32 %4435, 3
  %4440 = call float @dx.op.dot4.f32(i32 56, float %4436, float %4437, float %4438, float %4439, float %161, float %162, float %163, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4441 = call float @dx.op.unary.f32(i32 27, float %4426)  ; Round_ni(value)
  %4442 = call float @dx.op.unary.f32(i32 6, float %4441)  ; FAbs(value)
  %4443 = call float @dx.op.unary.f32(i32 27, float %4433)  ; Round_ni(value)
  %4444 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4445 = call float @dx.op.unary.f32(i32 6, float %4440)  ; FAbs(value)
  %4446 = call float @dx.op.unary.f32(i32 27, float %4445)  ; Round_ni(value)
  %4447 = fadd fast float %4444, %4442
  %4448 = fadd fast float %4447, %4446
  %4449 = fcmp fast oeq float %4448, 0.000000e+00
  %4450 = call float @dx.op.dot4.f32(i32 56, float %4422, float %4423, float %4424, float %4425, float %4290, float %4291, float %4292, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4451 = call float @dx.op.dot4.f32(i32 56, float %4429, float %4430, float %4431, float %4432, float %4290, float %4291, float %4292, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4452 = call float @dx.op.dot4.f32(i32 56, float %4422, float %4423, float %4424, float %4425, float %4293, float %4294, float %4295, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4453 = call float @dx.op.dot4.f32(i32 56, float %4429, float %4430, float %4431, float %4432, float %4293, float %4294, float %4295, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4454 = fsub fast float %4450, %4426
  %4455 = fsub fast float %4452, %4426
  %4456 = fsub fast float %4451, %4433
  %4457 = fsub fast float %4453, %4433
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4368, float %4369, float %4370, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = fadd fast float %4460, %4458
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4464 = fcmp fast ogt float %4462, %4463
  %4465 = and i1 %4449, %4464
  %4466 = and i1 %4420, %4465
  br i1 %4466, label %4491, label %4467

; <label>:4467                                    ; preds = %4777, %4572, %4491, %4337
  %4468 = phi float [ %4339, %4491 ], [ %4575, %4572 ], [ %4575, %4777 ], [ %4339, %4337 ]
  %4469 = phi float [ %4340, %4491 ], [ %4340, %4572 ], [ %4753, %4777 ], [ %4340, %4337 ]
  %4470 = phi float [ %4341, %4491 ], [ %4341, %4572 ], [ %4752, %4777 ], [ %4341, %4337 ]
  %4471 = phi float [ %4342, %4491 ], [ %4342, %4572 ], [ %4750, %4777 ], [ %4342, %4337 ]
  %4472 = phi float [ %4343, %4491 ], [ %4343, %4572 ], [ %4728, %4777 ], [ %4343, %4337 ]
  %4473 = phi float [ %4344, %4491 ], [ %4344, %4572 ], [ %4729, %4777 ], [ %4344, %4337 ]
  %4474 = phi float [ %4345, %4491 ], [ %4345, %4572 ], [ %4730, %4777 ], [ %4345, %4337 ]
  %4475 = phi float [ %4346, %4491 ], [ %4346, %4572 ], [ %4699, %4777 ], [ %4346, %4337 ]
  %4476 = phi float [ %4347, %4491 ], [ %4347, %4572 ], [ %4697, %4777 ], [ %4347, %4337 ]
  %4477 = phi float [ %4348, %4491 ], [ %4348, %4572 ], [ %4787, %4777 ], [ %4348, %4337 ]
  %4478 = phi float [ %4349, %4491 ], [ %4349, %4572 ], [ %4788, %4777 ], [ %4349, %4337 ]
  %4479 = phi float [ %4350, %4491 ], [ %4350, %4572 ], [ %4789, %4777 ], [ %4350, %4337 ]
  %4480 = phi float [ %4351, %4491 ], [ %4351, %4572 ], [ %4678, %4777 ], [ %4351, %4337 ]
  %4481 = phi float [ %4352, %4491 ], [ %4352, %4572 ], [ %4679, %4777 ], [ %4352, %4337 ]
  %4482 = phi float [ %4353, %4491 ], [ %4353, %4572 ], [ %4680, %4777 ], [ %4353, %4337 ]
  %4483 = phi float [ %4354, %4491 ], [ %4354, %4572 ], [ %4708, %4777 ], [ %4354, %4337 ]
  %4484 = phi float [ %4355, %4491 ], [ %4355, %4572 ], [ %4705, %4777 ], [ %4355, %4337 ]
  %4485 = phi float [ %4356, %4491 ], [ %4356, %4572 ], [ %4702, %4777 ], [ %4356, %4337 ]
  %4486 = phi float [ %4357, %4491 ], [ %4357, %4572 ], [ %4695, %4777 ], [ %4357, %4337 ]
  %4487 = phi float [ %4358, %4491 ], [ %4358, %4572 ], [ %4690, %4777 ], [ %4358, %4337 ]
  %4488 = phi float [ %4359, %4491 ], [ %4359, %4572 ], [ %4691, %4777 ], [ %4359, %4337 ]
  %4489 = phi float [ %4360, %4491 ], [ %4360, %4572 ], [ %4692, %4777 ], [ %4360, %4337 ]
  %4490 = icmp eq i32 %4417, %4336
  br i1 %4490, label %4790, label %4337

; <label>:4491                                    ; preds = %4337
  %4492 = extractvalue %dx.types.ResRet.f32 %4387, 3
  %4493 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4495 = extractvalue %dx.types.ResRet.f32 %4377, 1
  %4496 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4497 = extractvalue %dx.types.ResRet.i32 %4373, 3
  %4498 = extractvalue %dx.types.ResRet.i32 %4373, 2
  %4499 = add i32 %4497, 0
  %4500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4502 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4500, %dx.types.Handle %4501, float %4426, float %4433, float undef, float undef, i32 0, i32 0, i32 undef, float %4454, float %4456, float undef, float %4455, float %4457, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = fmul fast float %4503, %4496
  %4505 = fadd fast float %4504, %4495
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fmul fast float %4426, %4382
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4433, float %4507)  ; FMad(a,b,c)
  %4509 = fadd fast float %4508, %4494
  %4510 = fmul fast float %4426, %4384
  %4511 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4433, float %4510)  ; FMad(a,b,c)
  %4512 = fadd fast float %4511, %4493
  %4513 = fmul fast float %4454, %4382
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4456, float %4513)  ; FMad(a,b,c)
  %4515 = fmul fast float %4454, %4384
  %4516 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4456, float %4515)  ; FMad(a,b,c)
  %4517 = fmul fast float %4455, %4382
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4457, float %4517)  ; FMad(a,b,c)
  %4519 = fmul fast float %4455, %4384
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4457, float %4519)  ; FMad(a,b,c)
  %4521 = add i32 %4498, 0
  %4522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4522, %dx.types.Handle %4501, float %4509, float %4512, float undef, float undef, i32 0, i32 0, i32 undef, float %4514, float %4516, float undef, float %4518, float %4520, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = and i32 %4418, 1024
  %4526 = icmp ne i32 %4525, 0
  %4527 = fcmp fast ogt float %4524, 0x3FE0101020000000
  %4528 = uitofp i1 %4527 to float
  %4529 = select i1 %4526, float %4528, float %4524
  %4530 = and i32 %4418, 8192
  %4531 = icmp ne i32 %4530, 0
  %4532 = select i1 %4531, float %4492, float 1.000000e+00
  %4533 = fmul fast float %4426, 2.000000e+00
  %4534 = fadd fast float %4533, -1.000000e+00
  %4535 = call float @dx.op.unary.f32(i32 6, float %4534)  ; FAbs(value)
  %4536 = fmul fast float %4535, %4415
  %4537 = fsub fast float %4536, %4415
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = fmul fast float %4433, 2.000000e+00
  %4540 = fadd fast float %4539, -1.000000e+00
  %4541 = call float @dx.op.unary.f32(i32 6, float %4540)  ; FAbs(value)
  %4542 = fmul fast float %4541, %4416
  %4543 = fsub fast float %4542, %4416
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fmul fast float %4445, %4378
  %4546 = fsub fast float %4545, %4378
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fmul fast float %4506, %4532
  %4549 = fmul fast float %4548, %4503
  %4550 = fmul fast float %4549, %4538
  %4551 = fmul fast float %4550, %4529
  %4552 = fmul fast float %4551, %4544
  %4553 = fmul fast float %4552, %4547
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4556 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4557 = fsub fast float %4462, %4556
  %4558 = fmul fast float %4557, %4555
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = fmul fast float %4553, %4379
  %4561 = fadd fast float %4553, %4379
  %4562 = fmul fast float %4561, %4388
  %4563 = fsub fast float %4562, %4388
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = and i32 %4418, 128
  %4566 = icmp ne i32 %4565, 0
  %4567 = select i1 %4566, float %4564, float %4560
  %4568 = fmul fast float %4567, %4559
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = fcmp fast ugt float %4568, %4570
  br i1 %4571, label %4572, label %4467

; <label>:4572                                    ; preds = %4491
  %4573 = select i1 %4531, float %4568, float 0.000000e+00
  %4574 = fadd fast float %4573, %4339
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  br i1 %4531, label %4467, label %4576

; <label>:4576                                    ; preds = %4572
  %4577 = and i32 %4418, 4
  %4578 = and i32 %4418, 8
  %4579 = add i32 %4374, 0
  %4580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4579, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4580, %dx.types.Handle %4581, float %4509, float %4512, float undef, float undef, i32 0, i32 0, i32 undef, float %4514, float %4516, float undef, float %4518, float %4520, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = bitcast float %4400 to i32
  %4588 = and i32 %4587, 255
  %4589 = uitofp i32 %4588 to float
  %4590 = lshr i32 %4587, 8
  %4591 = and i32 %4590, 255
  %4592 = uitofp i32 %4591 to float
  %4593 = fmul fast float %4586, %4589
  %4594 = fadd fast float %4593, %4592
  %4595 = fmul fast float %4594, 0x3F70101000000000
  %4596 = add i32 %4375, 0
  %4597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4596, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4598 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4597, %dx.types.Handle %4581, float %4509, float %4512, float undef, float undef, i32 0, i32 0, i32 undef, float %4514, float %4516, float undef, float %4518, float %4520, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = bitcast float %4394 to i32
  %4604 = and i32 %4603, 255
  %4605 = uitofp i32 %4604 to float
  %4606 = lshr i32 %4603, 8
  %4607 = and i32 %4606, 255
  %4608 = uitofp i32 %4607 to float
  %4609 = lshr i32 %4603, 16
  %4610 = and i32 %4609, 255
  %4611 = uitofp i32 %4610 to float
  %4612 = fmul fast float %4611, 0x3F70101000000000
  %4613 = fmul fast float %4599, %4605
  %4614 = fadd fast float %4613, %4608
  %4615 = fmul fast float %4614, 0x3F70101000000000
  %4616 = fadd fast float %4600, -5.000000e-01
  %4617 = fadd fast float %4602, -5.000000e-01
  %4618 = fmul fast float %4616, %4612
  %4619 = fmul fast float %4617, %4612
  %4620 = fadd fast float %4618, 5.000000e-01
  %4621 = fadd fast float %4619, 5.000000e-01
  %4622 = fmul fast float %4583, %4403
  %4623 = fmul fast float %4584, %4404
  %4624 = fmul fast float %4585, %4405
  %4625 = fmul fast float %4620, 2.000000e+00
  %4626 = fadd fast float %4625, -1.000000e+00
  %4627 = fmul fast float %4621, 2.000000e+00
  %4628 = fadd fast float %4627, -1.000000e+00
  %4629 = fadd fast float %4626, %4628
  %4630 = fmul fast float %4629, 5.000000e-01
  %4631 = fsub fast float %4626, %4628
  %4632 = fmul fast float %4631, 5.000000e-01
  %4633 = call float @dx.op.unary.f32(i32 6, float %4630)  ; FAbs(value)
  %4634 = fsub fast float 1.000000e+00, %4633
  %4635 = call float @dx.op.unary.f32(i32 6, float %4632)  ; FAbs(value)
  %4636 = fsub fast float %4634, %4635
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4630, float %4632, float %4636, float %4630, float %4632, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.unary.f32(i32 25, float %4637)  ; Rsqrt(value)
  %4639 = fmul fast float %4630, %4638
  %4640 = fmul fast float %4632, %4638
  %4641 = fmul fast float %4638, %4636
  %4642 = fmul fast float %4641, %4368
  %4643 = fmul fast float %4641, %4369
  %4644 = fmul fast float %4641, %4370
  %4645 = fmul fast float %4639, %4391
  %4646 = fmul fast float %4639, %4392
  %4647 = fmul fast float %4639, %4393
  %4648 = fadd fast float %4645, %4642
  %4649 = fadd fast float %4646, %4643
  %4650 = fadd fast float %4647, %4644
  %4651 = fmul fast float %4640, %4397
  %4652 = fmul fast float %4640, %4398
  %4653 = fmul fast float %4640, %4399
  %4654 = fadd fast float %4648, %4651
  %4655 = fadd fast float %4649, %4652
  %4656 = fadd fast float %4650, %4653
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4655, float %4656, float %4654, float %4655, float %4656)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call float @dx.op.unary.f32(i32 25, float %4657)  ; Rsqrt(value)
  %4659 = fmul fast float %4654, %4658
  %4660 = fmul fast float %4655, %4658
  %4661 = fmul fast float %4656, %4658
  %4662 = icmp ne i32 %4578, 0
  %4663 = select i1 %4662, float 1.000000e+00, float 0.000000e+00
  %4664 = fmul fast float %4568, %4663
  %4665 = and i32 %4418, 1
  %4666 = icmp eq i32 %4665, 0
  br i1 %4666, label %4667, label %4671

; <label>:4667                                    ; preds = %4576
  %4668 = fsub fast float %4659, %4351
  %4669 = fsub fast float %4660, %4352
  %4670 = fsub fast float %4661, %4353
  br label %4671

; <label>:4671                                    ; preds = %4667, %4576
  %4672 = phi float [ %4668, %4667 ], [ %4659, %4576 ]
  %4673 = phi float [ %4669, %4667 ], [ %4660, %4576 ]
  %4674 = phi float [ %4670, %4667 ], [ %4661, %4576 ]
  %4675 = fmul float %4674, %4664
  %4676 = fmul float %4673, %4664
  %4677 = fmul float %4672, %4664
  %4678 = fadd fast float %4677, %4351
  %4679 = fadd fast float %4676, %4352
  %4680 = fadd fast float %4675, %4353
  %4681 = icmp ne i32 %4577, 0
  %4682 = select i1 %4681, float 1.000000e+00, float 0.000000e+00
  %4683 = fmul fast float %4568, %4682
  %4684 = fsub fast float %4622, %4358
  %4685 = fsub fast float %4623, %4359
  %4686 = fsub fast float %4624, %4360
  %4687 = fmul fast float %4684, %4683
  %4688 = fmul fast float %4685, %4683
  %4689 = fmul fast float %4686, %4683
  %4690 = fadd fast float %4687, %4358
  %4691 = fadd fast float %4688, %4359
  %4692 = fadd fast float %4689, %4360
  %4693 = fsub fast float %4595, %4357
  %4694 = fmul fast float %4693, %4683
  %4695 = fadd fast float %4694, %4357
  %4696 = fmul fast float %4683, %4347
  %4697 = fsub fast float %4347, %4696
  %4698 = fmul fast float %4683, %4346
  %4699 = fsub fast float %4346, %4698
  %4700 = bitcast float %4412 to i32
  %4701 = fadd fast float %4568, %4356
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = fsub fast float %4615, %4355
  %4704 = fmul fast float %4703, %4664
  %4705 = fadd fast float %4704, %4355
  %4706 = fsub fast float %4601, %4354
  %4707 = fmul fast float %4706, %4664
  %4708 = fadd fast float %4707, %4354
  br i1 %4666, label %4717, label %4709

; <label>:4709                                    ; preds = %4671
  %4710 = and i32 %4418, 32768
  %4711 = icmp eq i32 %4710, 0
  br i1 %4711, label %4727, label %4712

; <label>:4712                                    ; preds = %4709
  %4713 = fmul fast float %4664, 1.270000e+02
  %4714 = fadd fast float %4713, %4343
  %4715 = fadd fast float %4713, %4344
  %4716 = fadd fast float %4713, %4345
  br label %4727

; <label>:4717                                    ; preds = %4671
  %4718 = fsub fast float 1.270000e+02, %4343
  %4719 = fsub fast float 1.270000e+02, %4344
  %4720 = fsub fast float 1.270000e+02, %4345
  %4721 = fmul fast float %4664, %4718
  %4722 = fmul fast float %4664, %4719
  %4723 = fmul fast float %4664, %4720
  %4724 = fadd fast float %4721, %4343
  %4725 = fadd fast float %4722, %4344
  %4726 = fadd fast float %4723, %4345
  br label %4727

; <label>:4727                                    ; preds = %4717, %4712, %4709
  %4728 = phi float [ %4714, %4712 ], [ %4343, %4709 ], [ %4724, %4717 ]
  %4729 = phi float [ %4715, %4712 ], [ %4344, %4709 ], [ %4725, %4717 ]
  %4730 = phi float [ %4716, %4712 ], [ %4345, %4709 ], [ %4726, %4717 ]
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4623, float %4624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4735 = fmul fast float %4734, %4731
  %4736 = fadd fast float %4735, %4733
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = bitcast float %4406 to i32
  %4739 = and i32 %4738, 65535
  %4740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4739)  ; LegacyF16ToF32(value)
  %4741 = lshr i32 %4738, 16
  %4742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4741)  ; LegacyF16ToF32(value)
  %4743 = fcmp fast oge float %4740, 0.000000e+00
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = select i1 %4743, float %4740, float %4745
  %4747 = fadd fast float %4746, %4742
  %4748 = fsub fast float %4737, %4342
  %4749 = fmul fast float %4748, %4568
  %4750 = fadd fast float %4749, %4342
  %4751 = fmul fast float %4747, %4568
  %4752 = call float @dx.op.binary.f32(i32 35, float %4341, float %4751)  ; FMax(a,b)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4340, float %4568)  ; FMax(a,b)
  %4754 = and i32 %4418, 16
  %4755 = icmp eq i32 %4754, 0
  br i1 %4755, label %4777, label %4756

; <label>:4756                                    ; preds = %4727
  %4757 = add i32 %4409, 0
  %4758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4757, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4758, %dx.types.Handle %4581, float %4509, float %4512, float undef, float undef, i32 0, i32 0, i32 undef, float %4514, float %4516, float undef, float %4518, float %4520, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  %4763 = and i32 %4700, 65535
  %4764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4763)  ; LegacyF16ToF32(value)
  %4765 = fmul fast float %4760, %4403
  %4766 = fmul fast float %4761, %4404
  %4767 = fmul fast float %4762, %4405
  %4768 = and i32 %4418, 16384
  %4769 = icmp ne i32 %4768, 0
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = select i1 %4769, float %4771, float 1.000000e+00
  %4773 = fmul fast float %4772, %4764
  %4774 = fmul fast float %4765, %4773
  %4775 = fmul fast float %4766, %4773
  %4776 = fmul fast float %4767, %4773
  br label %4777

; <label>:4777                                    ; preds = %4756, %4727
  %4778 = phi float [ %4774, %4756 ], [ 0.000000e+00, %4727 ]
  %4779 = phi float [ %4775, %4756 ], [ 0.000000e+00, %4727 ]
  %4780 = phi float [ %4776, %4756 ], [ 0.000000e+00, %4727 ]
  %4781 = fsub fast float %4778, %4348
  %4782 = fsub fast float %4779, %4349
  %4783 = fsub fast float %4780, %4350
  %4784 = fmul fast float %4781, %4568
  %4785 = fmul fast float %4782, %4568
  %4786 = fmul fast float %4783, %4568
  %4787 = fadd fast float %4784, %4348
  %4788 = fadd fast float %4785, %4349
  %4789 = fadd fast float %4786, %4350
  br label %4467

; <label>:4790                                    ; preds = %4467
  br label %4791

; <label>:4791                                    ; preds = %4790, %4283
  %4792 = phi float [ 0.000000e+00, %4283 ], [ %4468, %4790 ]
  %4793 = phi float [ %1220, %4283 ], [ %4469, %4790 ]
  %4794 = phi float [ %4252, %4283 ], [ %4470, %4790 ]
  %4795 = phi float [ %4233, %4283 ], [ %4471, %4790 ]
  %4796 = phi float [ %4226, %4283 ], [ %4472, %4790 ]
  %4797 = phi float [ %4227, %4283 ], [ %4473, %4790 ]
  %4798 = phi float [ %4228, %4283 ], [ %4474, %4790 ]
  %4799 = phi float [ 0.000000e+00, %4283 ], [ %4475, %4790 ]
  %4800 = phi float [ 0.000000e+00, %4283 ], [ %4476, %4790 ]
  %4801 = phi float [ %4223, %4283 ], [ %4477, %4790 ]
  %4802 = phi float [ %4224, %4283 ], [ %4478, %4790 ]
  %4803 = phi float [ %4225, %4283 ], [ %4479, %4790 ]
  %4804 = phi float [ %4278, %4283 ], [ %4480, %4790 ]
  %4805 = phi float [ %4279, %4283 ], [ %4481, %4790 ]
  %4806 = phi float [ %4280, %4283 ], [ %4482, %4790 ]
  %4807 = phi float [ %4231, %4283 ], [ %4483, %4790 ]
  %4808 = phi float [ %4230, %4283 ], [ %4484, %4790 ]
  %4809 = phi float [ 0.000000e+00, %4283 ], [ %4485, %4790 ]
  %4810 = phi float [ %4229, %4283 ], [ %4486, %4790 ]
  %4811 = phi float [ %4220, %4283 ], [ %4487, %4790 ]
  %4812 = phi float [ %4221, %4283 ], [ %4488, %4790 ]
  %4813 = phi float [ %4222, %4283 ], [ %4489, %4790 ]
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %4804, float %4805, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 25, float %4814)  ; Rsqrt(value)
  %4816 = fmul fast float %4815, %4804
  %4817 = fmul fast float %4815, %4805
  %4818 = fmul fast float %4815, %4806
  %4819 = fadd fast float %4809, %1220
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = call float @dx.op.unary.f32(i32 25, float %4821)  ; Rsqrt(value)
  %4823 = fmul fast float %4822, %4816
  %4824 = fmul fast float %4822, %4817
  %4825 = fmul fast float %4822, %4818
  br label %4826

; <label>:4826                                    ; preds = %4791, %4217
  %4827 = phi float [ %4823, %4791 ], [ %4278, %4217 ]
  %4828 = phi float [ %4824, %4791 ], [ %4279, %4217 ]
  %4829 = phi float [ %4825, %4791 ], [ %4280, %4217 ]
  %4830 = phi float [ %4811, %4791 ], [ %4220, %4217 ]
  %4831 = phi float [ %4812, %4791 ], [ %4221, %4217 ]
  %4832 = phi float [ %4813, %4791 ], [ %4222, %4217 ]
  %4833 = phi float [ %4801, %4791 ], [ %4223, %4217 ]
  %4834 = phi float [ %4802, %4791 ], [ %4224, %4217 ]
  %4835 = phi float [ %4803, %4791 ], [ %4225, %4217 ]
  %4836 = phi float [ %4796, %4791 ], [ %4226, %4217 ]
  %4837 = phi float [ %4797, %4791 ], [ %4227, %4217 ]
  %4838 = phi float [ %4798, %4791 ], [ %4228, %4217 ]
  %4839 = phi float [ %4810, %4791 ], [ %4229, %4217 ]
  %4840 = phi float [ %4820, %4791 ], [ %1220, %4217 ]
  %4841 = phi float [ %4808, %4791 ], [ %4230, %4217 ]
  %4842 = phi float [ %4807, %4791 ], [ %4231, %4217 ]
  %4843 = phi float [ %4800, %4791 ], [ 0.000000e+00, %4217 ]
  %4844 = phi float [ %4799, %4791 ], [ 0.000000e+00, %4217 ]
  %4845 = phi float [ %4792, %4791 ], [ 0.000000e+00, %4217 ]
  %4846 = phi float [ %4794, %4791 ], [ %4252, %4217 ]
  %4847 = phi float [ %4793, %4791 ], [ %1220, %4217 ]
  %4848 = phi float [ %4795, %4791 ], [ %4233, %4217 ]
  %4849 = fadd fast float %4839, 0xBFB99999A0000000
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fmul fast float %4850, 0x3FF1C71C80000000
  %4852 = call float @dx.op.binary.f32(i32 36, float %4839, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4853 = fsub fast float 1.000000e+00, %4851
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fmul fast float %4854, %4830
  %4856 = fmul fast float %4854, %4831
  %4857 = fmul fast float %4854, %4832
  %4858 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4861 = fmul fast float %4851, %4830
  %4862 = fmul fast float %4851, %4831
  %4863 = fmul fast float %4851, %4832
  %4864 = fadd fast float %4861, %4852
  %4865 = fadd fast float %4862, %4852
  %4866 = fadd fast float %4863, %4852
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4870 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4871 = call float @dx.op.binary.f32(i32 36, float %4836, float 1.270000e+02)  ; FMin(a,b)
  %4872 = call float @dx.op.binary.f32(i32 36, float %4837, float 1.270000e+02)  ; FMin(a,b)
  %4873 = call float @dx.op.binary.f32(i32 36, float %4838, float 1.270000e+02)  ; FMin(a,b)
  %4874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.i32 %4874, 3
  %4876 = and i32 %4875, 8
  %4877 = icmp ne i32 %4876, 0
  %4878 = call float @dx.op.binary.f32(i32 35, float %4858, float %4830)  ; FMax(a,b)
  %4879 = call float @dx.op.binary.f32(i32 35, float %4859, float %4830)  ; FMax(a,b)
  %4880 = call float @dx.op.binary.f32(i32 35, float %4860, float %4830)  ; FMax(a,b)
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4858, float %4859, float %4860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = select i1 %223, float %4830, float %4858
  %4883 = select i1 %223, float %4881, float %4859
  %4884 = select i1 %223, float 1.000000e+00, float %4860
  %4885 = select i1 %4877, float %4878, float %4882
  %4886 = select i1 %4877, float %4879, float %4883
  %4887 = select i1 %4877, float %4880, float %4884
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = fadd fast float %4889, %161
  %4893 = fadd fast float %4890, %162
  %4894 = fadd fast float %4891, %163
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4898 = fsub fast float %4892, %4896
  %4899 = fsub fast float %4893, %4897
  %4900 = fmul fast float %4898, %4898
  %4901 = fmul fast float %4899, %4899
  %4902 = fadd fast float %4900, %4901
  %4903 = call float @dx.op.unary.f32(i32 24, float %4902)  ; Sqrt(value)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4905 = fcmp fast olt float %4903, %4904
  br i1 %4905, label %4906, label %4973

; <label>:4906                                    ; preds = %4826
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4917 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4918 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4919 = fadd fast float %4916, %4892
  %4920 = fadd fast float %4917, %4893
  %4921 = fadd fast float %4918, %4894
  %4922 = fmul fast float %4919, %4908
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4910, float %4922)  ; FMad(a,b,c)
  %4924 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4912, float %4923)  ; FMad(a,b,c)
  %4925 = fmul fast float %4919, %4913
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4914, float %4925)  ; FMad(a,b,c)
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4915, float %4926)  ; FMad(a,b,c)
  %4928 = fsub fast float %4924, %4916
  %4929 = fsub fast float %4927, %4917
  %4930 = fsub fast float %4928, %4896
  %4931 = fadd fast float %4930, %4904
  %4932 = fsub fast float %4929, %4897
  %4933 = fadd fast float %4932, %4904
  %4934 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4935 = fmul fast float %4931, %4934
  %4936 = fmul fast float %4933, %4934
  %4937 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = fsub fast float 1.000000e+00, %4937
  %4940 = fsub fast float 1.000000e+00, %4938
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %48, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = fcmp fast ugt float %4942, 0.000000e+00
  br i1 %4943, label %4944, label %5247

; <label>:4944                                    ; preds = %4906
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4947 = fmul fast float %4946, %4942
  %4948 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4949 = fadd fast float %4948, %4947
  %4950 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4951 = fadd fast float %4949, %4918
  %4952 = fmul fast float %4924, %4912
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4927, float %4915, float %4952)  ; FMad(a,b,c)
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4950, float %4953)  ; FMad(a,b,c)
  %4955 = fsub fast float %4954, %4918
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4958 = fsub fast float %4955, %4957
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %48, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 1
  %4962 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %48, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.ResRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.ResRet.f32 %4963, 2
  %4967 = fadd fast float %4964, %4960
  %4968 = fmul fast float %4967, 0x3F847AE140000000
  %4969 = fadd fast float %4965, %4961
  %4970 = fmul fast float %4969, 0x3F847AE140000000
  %4971 = fadd fast float %4966, %4962
  %4972 = fmul fast float %4971, 0x3F847AE140000000
  br label %5247

; <label>:4973                                    ; preds = %4826
  %4974 = and i32 %199, 1
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %5247, label %4976

; <label>:4976                                    ; preds = %4973
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4987 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4988 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4989 = fadd fast float %4986, %4892
  %4990 = fadd fast float %4987, %4893
  %4991 = fadd fast float %4988, %4894
  %4992 = fmul fast float %4989, %4978
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4980, float %4992)  ; FMad(a,b,c)
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4982, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4989, %4983
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4984, float %4995)  ; FMad(a,b,c)
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4985, float %4996)  ; FMad(a,b,c)
  %4998 = fsub fast float %4994, %4986
  %4999 = fsub fast float %4997, %4987
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.i32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.i32 %5007, 1
  %5010 = udiv i32 %5009, %5008
  %5011 = fsub fast float %4998, %5001
  %5012 = fsub fast float %4999, %5002
  %5013 = call float @dx.op.binary.f32(i32 35, float %5011, float 0.000000e+00)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5012, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 36, float %5013, float %5003)  ; FMin(a,b)
  %5016 = call float @dx.op.binary.f32(i32 36, float %5014, float %5004)  ; FMin(a,b)
  %5017 = add i32 %5008, -1
  %5018 = add i32 %5010, -1
  %5019 = fmul fast float %5015, %5006
  %5020 = fmul fast float %5016, %5006
  %5021 = fptoui float %5019 to i32
  %5022 = fptoui float %5020 to i32
  %5023 = call i32 @dx.op.binary.i32(i32 40, i32 %5021, i32 %5017)  ; UMin(a,b)
  %5024 = call i32 @dx.op.binary.i32(i32 40, i32 %5022, i32 %5018)  ; UMin(a,b)
  %5025 = mul i32 %5024, %5008
  %5026 = add i32 %5025, %5023
  %5027 = shl i32 %5026, 2
  %5028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.i32 %5028, 0
  %5030 = icmp eq i32 %5029, -1
  br i1 %5030, label %5247, label %5031

; <label>:5031                                    ; preds = %4976
  %5032 = mul i32 %5029, 148
  %5033 = add i32 %5032, 4
  %5034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = add i32 %5032, 8
  %5037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = add i32 %5032, 36
  %5040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = add i32 %5032, 60
  %5043 = add i32 %5032, 92
  %5044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.i32 %5044, 0
  %5046 = add i32 %5032, 116
  %5047 = fsub fast float %4998, %5035
  %5048 = fsub fast float %4999, %5038
  %5049 = fmul fast float %5006, %5047
  %5050 = fmul fast float %5006, %5048
  %5051 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = call float @dx.op.unary.f32(i32 83, float %5051)  ; DerivCoarseX(value)
  %5057 = call float @dx.op.unary.f32(i32 83, float %5053)  ; DerivCoarseX(value)
  %5058 = call float @dx.op.unary.f32(i32 84, float %5051)  ; DerivCoarseY(value)
  %5059 = call float @dx.op.unary.f32(i32 84, float %5053)  ; DerivCoarseY(value)
  %5060 = fmul fast float %5056, %5055
  %5061 = fmul fast float %5057, %5055
  %5062 = fmul fast float %5058, %5055
  %5063 = fmul fast float %5059, %5055
  %5064 = call float @dx.op.dot2.f32(i32 54, float %5062, float %5063, float %5062, float %5063)  ; Dot2(ax,ay,bx,by)
  %5065 = call float @dx.op.dot2.f32(i32 54, float %5060, float %5061, float %5060, float %5061)  ; Dot2(ax,ay,bx,by)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5065, float %5064)  ; FMax(a,b)
  %5067 = call float @dx.op.unary.f32(i32 23, float %5066)  ; Log(value)
  %5068 = fmul fast float %5067, 5.000000e-01
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = fadd fast float %5070, %5068
  %5072 = call float @dx.op.binary.f32(i32 35, float %5071, float 0.000000e+00)  ; FMax(a,b)
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5075 = fadd fast float %5074, %5072
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5078 = fadd fast float %5075, %5077
  %5079 = add i32 %5045, 0
  %5080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5080, i32 0)  ; GetDimensions(handle,mipLevel)
  %5082 = extractvalue %dx.types.Dimensions %5081, 0
  %5083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5082)  ; FirstbitLo(value)
  %5084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.i32 %5084, 1
  %5086 = sub nsw i32 %5085, %5083
  %5087 = sitofp i32 %5086 to float
  %5088 = fsub fast float %5078, %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0.000000e+00)  ; FMax(a,b)
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5080, %dx.types.Handle %46, float %5051, float %5053, float %5041, float undef, i32 0, i32 0, i32 undef, float %5089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = fcmp ule float %5091, 0x3FE0101020000000
  %5093 = extractvalue %dx.types.CBufRet.i32 %5084, 0
  %5094 = and i32 %5093, 128
  %5095 = icmp ne i32 %5094, 0
  %5096 = and i1 %5092, %5095
  br i1 %5096, label %5247, label %5097

; <label>:5097                                    ; preds = %5031
  %5098 = add i32 %5032, 20
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = add i32 %5032, 24
  %5102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = add i32 %5032, 40
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = add i32 %5032, 96
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5112 = fmul fast float %5111, %5051
  %5113 = fmul fast float %5111, %5053
  %5114 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5115 = fadd fast float %5112, %5114
  %5116 = fadd fast float %5113, %5114
  %5117 = add i32 %5109, 0
  %5118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5118, i32 0)  ; GetDimensions(handle,mipLevel)
  %5120 = extractvalue %dx.types.Dimensions %5119, 0
  %5121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5120)  ; FirstbitLo(value)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 1
  %5124 = sub nsw i32 %5123, %5121
  %5125 = sitofp i32 %5124 to float
  %5126 = fsub fast float %5075, %5125
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0.000000e+00)  ; FMax(a,b)
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5118, %dx.types.Handle %46, float %5115, float %5116, float %5106, float undef, i32 0, i32 0, i32 undef, float %5127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fmul fast float %5129, %5100
  %5131 = fadd fast float %5130, %5103
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5140 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5141 = fadd fast float %5137, %4998
  %5142 = fadd fast float %5139, %4999
  %5143 = fadd fast float %5131, %5140
  %5144 = fmul fast float %5141, %5133
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5134, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5143, float %5135, float %5145)  ; FMad(a,b,c)
  %5147 = fsub fast float %5146, %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5150 = fsub fast float %5147, %5149
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 0
  %5153 = call i32 @dx.op.binary.i32(i32 40, i32 %5029, i32 %5152)  ; UMin(a,b)
  %5154 = mul i32 %5153, 36
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = add i32 %5154, 4
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = fmul fast float %5159, %5051
  %5161 = fmul fast float %5159, %5053
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5163 = fadd fast float %5160, %5162
  %5164 = fadd fast float %5161, %5162
  %5165 = icmp eq i32 %5156, 0
  br i1 %5165, label %5234, label %5166

; <label>:5166                                    ; preds = %5097
  br label %5167

; <label>:5167                                    ; preds = %5224, %5166
  %5168 = phi float [ %5225, %5224 ], [ 0.000000e+00, %5166 ]
  %5169 = phi float [ %5226, %5224 ], [ 0.000000e+00, %5166 ]
  %5170 = phi float [ %5227, %5224 ], [ 0.000000e+00, %5166 ]
  %5171 = phi float [ %5228, %5224 ], [ 0.000000e+00, %5166 ]
  %5172 = phi float [ %5229, %5224 ], [ 0.000000e+00, %5166 ]
  %5173 = phi float [ %5230, %5224 ], [ 0.000000e+00, %5166 ]
  %5174 = phi i32 [ %5231, %5224 ], [ 0, %5166 ]
  %5175 = shl i32 %5174, 2
  %5176 = add i32 %5042, %5175
  %5177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = add i32 %5046, %5175
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = add i32 %5181, 0
  %5183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5183, i32 0)  ; GetDimensions(handle,mipLevel)
  %5185 = extractvalue %dx.types.Dimensions %5184, 0
  %5186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5185)  ; FirstbitLo(value)
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 1
  %5189 = sub nsw i32 %5188, %5186
  %5190 = sitofp i32 %5189 to float
  %5191 = fsub fast float %5075, %5190
  %5192 = call float @dx.op.binary.f32(i32 35, float %5191, float 0.000000e+00)  ; FMax(a,b)
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5183, %dx.types.Handle %46, float %5163, float %5164, float %5178, float undef, i32 0, i32 0, i32 undef, float %5192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ogt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5224

; <label>:5196                                    ; preds = %5167
  %5197 = add i32 %5157, %5175
  %5198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5197, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.i32 %5198, 0
  %5200 = and i32 %5199, 32767
  %5201 = mul nuw nsw i32 %5200, 928
  %5202 = add nuw nsw i32 %5201, 48
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = add nuw nsw i32 %5201, 60
  %5208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = fmul fast float %5204, %5194
  %5213 = fmul fast float %5205, %5194
  %5214 = fmul fast float %5206, %5194
  %5215 = fadd fast float %5212, %5168
  %5216 = fadd fast float %5213, %5169
  %5217 = fadd fast float %5214, %5170
  %5218 = fmul fast float %5209, %5194
  %5219 = fmul fast float %5210, %5194
  %5220 = fmul fast float %5211, %5194
  %5221 = fadd fast float %5218, %5171
  %5222 = fadd fast float %5219, %5172
  %5223 = fadd fast float %5220, %5173
  br label %5224

; <label>:5224                                    ; preds = %5196, %5167
  %5225 = phi float [ %5215, %5196 ], [ %5168, %5167 ]
  %5226 = phi float [ %5216, %5196 ], [ %5169, %5167 ]
  %5227 = phi float [ %5217, %5196 ], [ %5170, %5167 ]
  %5228 = phi float [ %5221, %5196 ], [ %5171, %5167 ]
  %5229 = phi float [ %5222, %5196 ], [ %5172, %5167 ]
  %5230 = phi float [ %5223, %5196 ], [ %5173, %5167 ]
  %5231 = add nuw i32 %5174, 1
  %5232 = icmp eq i32 %5231, %5156
  br i1 %5232, label %5233, label %5167

; <label>:5233                                    ; preds = %5224
  br label %5234

; <label>:5234                                    ; preds = %5233, %5097
  %5235 = phi float [ 0.000000e+00, %5097 ], [ %5225, %5233 ]
  %5236 = phi float [ 0.000000e+00, %5097 ], [ %5226, %5233 ]
  %5237 = phi float [ 0.000000e+00, %5097 ], [ %5227, %5233 ]
  %5238 = phi float [ 0.000000e+00, %5097 ], [ %5228, %5233 ]
  %5239 = phi float [ 0.000000e+00, %5097 ], [ %5229, %5233 ]
  %5240 = phi float [ 0.000000e+00, %5097 ], [ %5230, %5233 ]
  %5241 = fadd fast float %5238, %5235
  %5242 = fmul fast float %5241, 0x3F847AE140000000
  %5243 = fadd fast float %5239, %5236
  %5244 = fmul fast float %5243, 0x3F847AE140000000
  %5245 = fadd fast float %5240, %5237
  %5246 = fmul fast float %5245, 0x3F847AE140000000
  br label %5247

; <label>:5247                                    ; preds = %5234, %5031, %4976, %4973, %4944, %4906
  %5248 = phi float [ %4958, %4944 ], [ -1.310720e+05, %4906 ], [ %5150, %5234 ], [ -1.310720e+05, %4976 ], [ -1.310720e+05, %5031 ], [ -1.310720e+05, %4973 ]
  %5249 = phi float [ %4968, %4944 ], [ 0.000000e+00, %4906 ], [ %5242, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5250 = phi float [ %4970, %4944 ], [ 0.000000e+00, %4906 ], [ %5244, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5251 = phi float [ %4972, %4944 ], [ 0.000000e+00, %4906 ], [ %5246, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5252 = phi i1 [ true, %4944 ], [ false, %4906 ], [ true, %5234 ], [ false, %4976 ], [ false, %5031 ], [ false, %4973 ]
  %5253 = and i32 %199, 3
  %5254 = icmp eq i32 %5253, 1
  %5255 = select i1 %5254, float 1.000000e+00, float 0.000000e+00
  %5256 = fsub fast float %5248, %163
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5252, float %5257, float 1.000000e+00
  %5259 = fmul fast float %5258, %5255
  %5260 = icmp eq i32 %5253, 3
  %5261 = select i1 %5260, float 1.000000e+00, float %5259
  %5262 = call float @dx.op.binary.f32(i32 35, float %4845, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fcmp fast une float %5263, 0.000000e+00
  %5265 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %161, float %162, float %163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  br i1 %5264, label %5274, label %5267

; <label>:5267                                    ; preds = %5247
  %5268 = fmul fast float %5266, %161
  %5269 = fmul fast float %5266, %162
  %5270 = fmul fast float %5266, %163
  %5271 = fsub fast float -0.000000e+00, %5268
  %5272 = fsub fast float -0.000000e+00, %5269
  %5273 = fsub fast float -0.000000e+00, %5270
  br label %5442

; <label>:5274                                    ; preds = %5247
  %5275 = fmul fast float %161, %5266
  %5276 = fsub fast float -0.000000e+00, %5275
  %5277 = fmul fast float %162, %5266
  %5278 = fsub fast float -0.000000e+00, %5277
  %5279 = fmul fast float %163, %5266
  %5280 = fsub fast float -0.000000e+00, %5279
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5278, float %5280, float %111, float %113, float %115)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5263, 2.500000e+00
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5263, 0x4013FFFFE0000000
  %5285 = fadd fast float %5284, 0xBFFFFFFFE0000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fmul fast float %5263, 0x4004000020000000
  %5288 = fadd fast float %5287, 0xBFF8000040000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5291 = fmul fast float %4849, 1.000000e+01
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fsub fast float 3.000000e+00, %5293
  %5295 = fmul fast float %5292, %5292
  %5296 = fmul fast float %5295, %5294
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fsub fast float 0x3FE3333340000000, %4870
  %5299 = fmul fast float %5298, 0x400AAAAAA0000000
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5297, %5300
  %5302 = fmul fast float %4885, 0x3FEA2B8620000000
  %5303 = fmul fast float %4886, 0x3FEA2B8620000000
  %5304 = fmul fast float %4887, 0x3FEA2B8620000000
  %5305 = fadd fast float %5302, 0x3FC81DFBA0000000
  %5306 = fmul fast float %5305, %4885
  %5307 = fadd fast float %5306, 0x3F910E6020000000
  %5308 = fadd fast float %5303, 0x3FC81DFBA0000000
  %5309 = fmul fast float %5308, %4886
  %5310 = fadd fast float %5309, 0x3F910E6020000000
  %5311 = fadd fast float %5304, 0x3FC81DFBA0000000
  %5312 = fmul fast float %5311, %4887
  %5313 = fadd fast float %5312, 0x3F910E6020000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = fsub fast float %5314, %4885
  %5318 = fsub fast float %5315, %4886
  %5319 = fsub fast float %5316, %4887
  %5320 = fmul fast float %5317, %5290
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5318, %5290
  %5323 = fmul fast float %5322, %5301
  %5324 = fmul fast float %5319, %5290
  %5325 = fmul fast float %5324, %5301
  %5326 = fadd fast float %5321, %4885
  %5327 = fadd fast float %5323, %4886
  %5328 = fadd fast float %5325, %4887
  %5329 = fmul fast float %4842, %4842
  %5330 = fmul fast float %5329, %5329
  %5331 = fadd fast float %5286, 1.000000e+00
  %5332 = fsub fast float %5331, %5301
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = call float @dx.op.dot3.f32(i32 55, float %111, float %113, float %115, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fsub fast float 1.000000e+00, %5330
  %5337 = call float @dx.op.binary.f32(i32 36, float %5333, float %5336)  ; FMin(a,b)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5337, float %5338)  ; FMax(a,b)
  %5340 = fadd fast float %5335, 0xBFE4CCCCC0000000
  %5341 = fmul fast float %5340, 0x4006DB6DA0000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = fsub fast float 3.000000e+00, %5343
  %5345 = bitcast float %4867 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = bitcast float %4868 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = bitcast float %4869 to i32
  %5364 = ashr i32 %5363, 1
  %5365 = add nsw i32 %5364, 532487669
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, 2.000000e+00
  %5372 = fsub fast float 0x4002A9FBE0000000, %5353
  %5373 = fadd fast float %5353, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5362
  %5380 = fadd fast float %5362, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = fsub fast float 0x4002A9FBE0000000, %5371
  %5387 = fadd fast float %5371, 0x3FD54FDF00000000
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5390, %5386
  %5392 = fmul fast float %5391, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5395 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5392)  ; FMax(a,b)
  %5396 = fsub fast float 1.000000e+00, %5281
  %5397 = fadd fast float %5396, %5297
  %5398 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5399 = fsub fast float 1.000000e+00, %5261
  %5400 = fmul fast float %5339, %5399
  %5401 = fmul fast float %5342, %5342
  %5402 = fmul fast float %5401, %5400
  %5403 = fmul fast float %5402, %5344
  %5404 = fmul fast float %5399, 0xBFE99999A0000000
  %5405 = fmul fast float %5404, %5290
  %5406 = fmul fast float %5405, %5301
  %5407 = fadd fast float %5406, 1.000000e+00
  %5408 = fadd fast float %4870, -1.000000e+00
  %5409 = fmul fast float %5407, %5408
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = fsub fast float %5393, %4867
  %5412 = fsub fast float %5394, %4868
  %5413 = fsub fast float %5395, %4869
  %5414 = fmul fast float %5403, %5411
  %5415 = fmul fast float %5403, %5412
  %5416 = fmul fast float %5403, %5413
  %5417 = fadd fast float %5414, %4867
  %5418 = fadd fast float %5415, %4868
  %5419 = fadd fast float %5416, %4869
  %5420 = fsub fast float %111, %4827
  %5421 = fsub fast float %113, %4828
  %5422 = fsub fast float %115, %4829
  %5423 = fmul fast float %5403, %5420
  %5424 = fmul fast float %5403, %5421
  %5425 = fmul fast float %5403, %5422
  %5426 = fadd fast float %5423, %4827
  %5427 = fadd fast float %5424, %4828
  %5428 = fadd fast float %5425, %4829
  %5429 = fmul fast float %5403, %5398
  %5430 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = fmul fast float %5429, %5431
  %5433 = fadd fast float %5432, %5430
  %5434 = fsub fast float 1.000000e+00, %4842
  %5435 = fmul fast float %5403, %5434
  %5436 = fadd fast float %5435, %4842
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 25, float %5437)  ; Rsqrt(value)
  %5439 = fmul fast float %5426, %5438
  %5440 = fmul fast float %5427, %5438
  %5441 = fmul fast float %5428, %5438
  br label %5442

; <label>:5442                                    ; preds = %5274, %5267
  %5443 = phi float [ %5273, %5267 ], [ %5280, %5274 ]
  %5444 = phi float [ %5272, %5267 ], [ %5278, %5274 ]
  %5445 = phi float [ %5271, %5267 ], [ %5276, %5274 ]
  %5446 = phi float [ %5270, %5267 ], [ %5279, %5274 ]
  %5447 = phi float [ %5269, %5267 ], [ %5277, %5274 ]
  %5448 = phi float [ %5268, %5267 ], [ %5275, %5274 ]
  %5449 = phi float [ %4867, %5267 ], [ %5417, %5274 ]
  %5450 = phi float [ %4868, %5267 ], [ %5418, %5274 ]
  %5451 = phi float [ %4869, %5267 ], [ %5419, %5274 ]
  %5452 = phi float [ %4827, %5267 ], [ %5439, %5274 ]
  %5453 = phi float [ %4828, %5267 ], [ %5440, %5274 ]
  %5454 = phi float [ %4829, %5267 ], [ %5441, %5274 ]
  %5455 = phi float [ %4885, %5267 ], [ %5326, %5274 ]
  %5456 = phi float [ %4886, %5267 ], [ %5327, %5274 ]
  %5457 = phi float [ %4887, %5267 ], [ %5328, %5274 ]
  %5458 = phi float [ %4870, %5267 ], [ %5433, %5274 ]
  %5459 = phi float [ %4842, %5267 ], [ %5436, %5274 ]
  %5460 = fsub fast float -0.000000e+00, %163
  %5461 = select i1 %223, float 0.000000e+00, float %5451
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5445, float %5444, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5447, float %5446, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = fmul fast float %5464, 2.000000e+00
  %5466 = fmul fast float %5465, %5452
  %5467 = fmul fast float %5465, %5453
  %5468 = fmul fast float %5465, %5454
  %5469 = fsub fast float %5448, %5466
  %5470 = fsub fast float %5447, %5467
  %5471 = fsub fast float %5446, %5468
  %5472 = call float @dx.op.binary.f32(i32 36, float %5459, float 1.000000e+00)  ; FMin(a,b)
  %5473 = fsub fast float 1.000000e+00, %5459
  %5474 = bitcast float %5473 to i32
  %5475 = sub nsw i32 2129859010, %5474
  %5476 = bitcast i32 %5475 to float
  %5477 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5478 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fcmp fast oeq float %5478, 0.000000e+00
  %5480 = fcmp fast oeq float %5477, 0.000000e+00
  %5481 = or i1 %5480, %5479
  br i1 %5481, label %5511, label %5482

; <label>:5482                                    ; preds = %5442
  %5483 = fsub fast float -0.000000e+00, %76
  %5484 = fsub fast float -0.000000e+00, %74
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
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %75, float %5483, float %5484, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.unary.f32(i32 25, float %5495)  ; Rsqrt(value)
  %5497 = fmul fast float %5496, %5483
  %5498 = fmul fast float %5496, %5484
  %5499 = fmul fast float %5496, %75
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

; <label>:5511                                    ; preds = %5482, %5442
  %5512 = phi float [ %5497, %5482 ], [ 0.000000e+00, %5442 ]
  %5513 = phi float [ %5498, %5482 ], [ 0.000000e+00, %5442 ]
  %5514 = phi float [ %5499, %5482 ], [ 0.000000e+00, %5442 ]
  %5515 = phi float [ %5506, %5482 ], [ 0.000000e+00, %5442 ]
  %5516 = phi float [ %5510, %5482 ], [ 0.000000e+00, %5442 ]
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5513, float %5514, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fmul fast float %5517, %5517
  %5519 = fmul fast float %5518, 0x3FEE471020000000
  %5520 = fadd fast float %5519, 0xBFD42F6020000000
  %5521 = fmul fast float %5477, 0x3FD20DD760000000
  %5522 = fmul fast float %5520, %5516
  %5523 = fmul fast float %5515, 0x3FDF454380000000
  %5524 = fmul fast float %5523, %5517
  %5525 = fadd fast float %5524, %5521
  %5526 = fadd fast float %5525, %5522
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5513, float %5514, float %5469, float %5470, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, 0x3FDF454380000000
  %5529 = fmul fast float %5527, %5527
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5515, float %5516, float 0x3FD20DD760000000, float %5528, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  %5536 = fcmp fast oeq float %5533, 0.000000e+00
  %5537 = or i1 %5536, %5535
  br i1 %5537, label %5567, label %5538

; <label>:5538                                    ; preds = %5511
  %5539 = fsub fast float -0.000000e+00, %72
  %5540 = fsub fast float -0.000000e+00, %70
  %5541 = call float @dx.op.unary.f32(i32 24, float %5534)  ; Sqrt(value)
  %5542 = fdiv fast float %5541, %5533
  %5543 = fcmp fast ogt float %5542, 0x3FFB6F8900000000
  %5544 = select i1 %5543, float 0x3FFB6F8900000000, float %5542
  %5545 = fmul fast float %5544, 0x3FE8A23460000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5544, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5548 = fmul fast float %5546, %5533
  %5549 = fmul fast float %5547, 0x3FF279A740000000
  %5550 = fadd fast float %5549, -1.000000e+00
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %71, float %5539, float %5540, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 25, float %5551)  ; Rsqrt(value)
  %5553 = fmul fast float %5552, %5539
  %5554 = fmul fast float %5552, %5540
  %5555 = fmul fast float %5552, %71
  %5556 = fmul fast float %5550, %5550
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fmul fast float %5547, 0x40005F8BE0000000
  %5559 = fsub fast float 0x400C5BF8A0000000, %5558
  %5560 = fdiv fast float %5548, %5559
  %5561 = fmul fast float %5560, 0x3FEE31C3C0000000
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %5547, 0x3FDACB7480000000
  %5564 = fadd fast float %5563, 0xBFD7347680000000
  %5565 = fmul fast float %5564, %5560
  %5566 = fmul fast float %5565, %5557
  br label %5567

; <label>:5567                                    ; preds = %5538, %5511
  %5568 = phi float [ %5553, %5538 ], [ 0.000000e+00, %5511 ]
  %5569 = phi float [ %5554, %5538 ], [ 0.000000e+00, %5511 ]
  %5570 = phi float [ %5555, %5538 ], [ 0.000000e+00, %5511 ]
  %5571 = phi float [ %5562, %5538 ], [ 0.000000e+00, %5511 ]
  %5572 = phi float [ %5566, %5538 ], [ 0.000000e+00, %5511 ]
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fmul fast float %5573, %5573
  %5575 = fmul fast float %5574, 0x3FEE471020000000
  %5576 = fadd fast float %5575, 0xBFD42F6020000000
  %5577 = fmul fast float %5533, 0x3FD20DD760000000
  %5578 = fmul fast float %5576, %5572
  %5579 = fmul fast float %5571, 0x3FDF454380000000
  %5580 = fmul fast float %5579, %5573
  %5581 = fadd fast float %5580, %5577
  %5582 = fadd fast float %5581, %5578
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5469, float %5470, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = fmul fast float %5583, 0x3FDF454380000000
  %5585 = fmul fast float %5583, %5583
  %5586 = fmul fast float %5585, 0x3FEE471020000000
  %5587 = fadd fast float %5586, 0xBFD42F6020000000
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5571, float %5572, float 0x3FD20DD760000000, float %5584, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5590 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fcmp fast oeq float %5590, 0.000000e+00
  %5592 = fcmp fast oeq float %5589, 0.000000e+00
  %5593 = or i1 %5592, %5591
  br i1 %5593, label %5623, label %5594

; <label>:5594                                    ; preds = %5567
  %5595 = fsub fast float -0.000000e+00, %68
  %5596 = fsub fast float -0.000000e+00, %66
  %5597 = call float @dx.op.unary.f32(i32 24, float %5590)  ; Sqrt(value)
  %5598 = fdiv fast float %5597, %5589
  %5599 = fcmp fast ogt float %5598, 0x3FFB6F8900000000
  %5600 = select i1 %5599, float 0x3FFB6F8900000000, float %5598
  %5601 = fmul fast float %5600, 0x3FE8A23460000000
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5600, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5604 = fmul fast float %5602, %5589
  %5605 = fmul fast float %5603, 0x3FF279A740000000
  %5606 = fadd fast float %5605, -1.000000e+00
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %67, float %5595, float %5596, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 25, float %5607)  ; Rsqrt(value)
  %5609 = fmul fast float %5608, %5595
  %5610 = fmul fast float %5608, %5596
  %5611 = fmul fast float %5608, %67
  %5612 = fmul fast float %5606, %5606
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = fmul fast float %5603, 0x40005F8BE0000000
  %5615 = fsub fast float 0x400C5BF8A0000000, %5614
  %5616 = fdiv fast float %5604, %5615
  %5617 = fmul fast float %5616, 0x3FEE31C3C0000000
  %5618 = fmul fast float %5617, %5613
  %5619 = fmul fast float %5603, 0x3FDACB7480000000
  %5620 = fadd fast float %5619, 0xBFD7347680000000
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %5621, %5613
  br label %5623

; <label>:5623                                    ; preds = %5594, %5567
  %5624 = phi float [ %5609, %5594 ], [ 0.000000e+00, %5567 ]
  %5625 = phi float [ %5610, %5594 ], [ 0.000000e+00, %5567 ]
  %5626 = phi float [ %5611, %5594 ], [ 0.000000e+00, %5567 ]
  %5627 = phi float [ %5618, %5594 ], [ 0.000000e+00, %5567 ]
  %5628 = phi float [ %5622, %5594 ], [ 0.000000e+00, %5567 ]
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fmul fast float %5629, %5629
  %5631 = fmul fast float %5630, 0x3FEE471020000000
  %5632 = fadd fast float %5631, 0xBFD42F6020000000
  %5633 = fmul fast float %5589, 0x3FD20DD760000000
  %5634 = fmul fast float %5632, %5628
  %5635 = fmul fast float %5627, 0x3FDF454380000000
  %5636 = fmul fast float %5635, %5629
  %5637 = fadd fast float %5636, %5633
  %5638 = fadd fast float %5637, %5634
  %5639 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5469, float %5470, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5640 = fmul fast float %5639, 0x3FDF454380000000
  %5641 = fmul fast float %5639, %5639
  %5642 = fmul fast float %5641, 0x3FEE471020000000
  %5643 = fadd fast float %5642, 0xBFD42F6020000000
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5627, float %5628, float 0x3FD20DD760000000, float %5640, float %5643)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5646 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5638, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5532, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5588, float 0.000000e+00)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5644, float 0.000000e+00)  ; FMax(a,b)
  %5651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5652 = extractvalue %dx.types.CBufRet.f32 %5651, 0
  %5653 = call float @dx.op.binary.f32(i32 36, float %5455, float %5652)  ; FMin(a,b)
  %5654 = fsub fast float 1.000000e+00, %5472
  %5655 = fmul fast float %5653, %5654
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = call float @dx.op.binary.f32(i32 36, float %5456, float %5652)  ; FMin(a,b)
  %5661 = fmul fast float %5660, %5654
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = bitcast float %5662 to i32
  %5664 = sub nsw i32 2129859010, %5663
  %5665 = bitcast i32 %5664 to float
  %5666 = call float @dx.op.binary.f32(i32 36, float %5457, float %5652)  ; FMin(a,b)
  %5667 = fmul fast float %5666, %5654
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5645, %5472
  %5673 = fmul fast float %5672, %5659
  %5674 = fmul fast float %5646, %5472
  %5675 = fmul fast float %5674, %5665
  %5676 = fmul fast float %5647, %5472
  %5677 = fmul fast float %5676, %5671
  %5678 = call float @dx.op.binary.f32(i32 36, float %5449, float %5652)  ; FMin(a,b)
  %5679 = fmul fast float %5678, %5654
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = bitcast float %5680 to i32
  %5682 = sub nsw i32 2129859010, %5681
  %5683 = bitcast i32 %5682 to float
  %5684 = call float @dx.op.binary.f32(i32 36, float %5450, float %5652)  ; FMin(a,b)
  %5685 = fmul fast float %5684, %5654
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = bitcast float %5686 to i32
  %5688 = sub nsw i32 2129859010, %5687
  %5689 = bitcast i32 %5688 to float
  %5690 = call float @dx.op.binary.f32(i32 36, float %5461, float %5652)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5654
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = fmul fast float %5648, %5472
  %5697 = fmul fast float %5696, %5683
  %5698 = fmul fast float %5649, %5472
  %5699 = fmul fast float %5698, %5689
  %5700 = fmul fast float %5650, %5472
  %5701 = fmul fast float %5700, %5695
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5673, float %5675, float %5677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = select i1 %223, float 0.000000e+00, float %5673
  %5704 = select i1 %223, float %5702, float %5675
  %5705 = select i1 %223, float 0.000000e+00, float %5677
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5697, float %5699, float %5701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = select i1 %223, float 0.000000e+00, float %5697
  %5708 = select i1 %223, float %5706, float %5699
  %5709 = select i1 %223, float 0.000000e+00, float %5701
  %5710 = fmul fast float %4232, %4232
  %5711 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5712 = fmul fast float %5463, 9.843750e-01
  %5713 = fmul fast float %5458, 9.843750e-01
  %5714 = fadd fast float %5712, 7.812500e-03
  %5715 = fadd fast float %5713, 7.812500e-03
  %5716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %5714, float %5715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5717 = extractvalue %dx.types.ResRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.ResRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.ResRet.f32 %5716, 2
  %5720 = extractvalue %dx.types.ResRet.f32 %5716, 3
  %5721 = fsub fast float 1.000000e+00, %5711
  %5722 = fsub fast float %5719, %5717
  %5723 = fsub fast float %5720, %5718
  %5724 = fmul fast float %5722, %5721
  %5725 = fmul fast float %5723, %5721
  %5726 = fadd fast float %5724, %5717
  %5727 = fadd fast float %5725, %5718
  %5728 = fmul fast float %5726, %5449
  %5729 = fmul fast float %5726, %5450
  %5730 = fmul fast float %5726, %5461
  %5731 = fadd fast float %5728, %5727
  %5732 = fadd fast float %5729, %5727
  %5733 = fadd fast float %5730, %5727
  %5734 = fcmp fast ogt float %4843, 0.000000e+00
  br i1 %5734, label %5735, label %5761

; <label>:5735                                    ; preds = %5623
  %5736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4843, float %5463, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5737 = extractvalue %dx.types.ResRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.ResRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.ResRet.f32 %5736, 2
  %5740 = fadd fast float %5737, -5.000000e-01
  %5741 = fadd fast float %5738, -5.000000e-01
  %5742 = fadd fast float %5739, -5.000000e-01
  %5743 = fsub fast float 1.000000e+00, %5449
  %5744 = fsub fast float 1.000000e+00, %5450
  %5745 = fsub fast float 1.000000e+00, %5461
  %5746 = fmul fast float %5449, 4.000000e+00
  %5747 = fmul fast float %5746, %5743
  %5748 = fmul fast float %5747, %5740
  %5749 = fmul fast float %5450, 4.000000e+00
  %5750 = fmul fast float %5749, %5744
  %5751 = fmul fast float %5750, %5741
  %5752 = fmul fast float %5461, 4.000000e+00
  %5753 = fmul fast float %5752, %5745
  %5754 = fmul fast float %5753, %5742
  %5755 = fadd fast float %5748, %5731
  %5756 = fadd fast float %5751, %5732
  %5757 = fadd fast float %5754, %5733
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  br label %5761

; <label>:5761                                    ; preds = %5735, %5623
  %5762 = phi float [ %5758, %5735 ], [ %5731, %5623 ]
  %5763 = phi float [ %5759, %5735 ], [ %5732, %5623 ]
  %5764 = phi float [ %5760, %5735 ], [ %5733, %5623 ]
  %5765 = call float @dx.op.binary.f32(i32 35, float %5763, float %5764)  ; FMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5762, float %5765)  ; FMax(a,b)
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = fmul fast float %5767, %5703
  %5769 = fmul fast float %5767, %5704
  %5770 = fmul fast float %5767, %5705
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = fcmp fast ogt float %5771, 0x3E7FF19E20000000
  %5773 = fdiv fast float 1.000000e+00, %5771
  %5774 = select i1 %5772, float %5773, float 0.000000e+00
  %5775 = fmul fast float %5774, %5455
  %5776 = fmul fast float %5774, %5456
  %5777 = fmul fast float %5774, %5457
  %5778 = fadd fast float %5775, -1.000000e+00
  %5779 = fadd fast float %5776, -1.000000e+00
  %5780 = fadd fast float %5777, -1.000000e+00
  %5781 = fmul fast float %5778, 5.000000e-01
  %5782 = fmul fast float %5779, 5.000000e-01
  %5783 = fmul fast float %5780, 5.000000e-01
  %5784 = fadd fast float %5781, 1.000000e+00
  %5785 = fadd fast float %5782, 1.000000e+00
  %5786 = fadd fast float %5783, 1.000000e+00
  %5787 = call float @dx.op.binary.f32(i32 35, float %5463, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5788 = fdiv fast float %4232, %5787
  %5789 = fcmp fast olt float %4871, 1.270000e+02
  %5790 = fcmp fast olt float %4872, 1.270000e+02
  %5791 = fcmp fast olt float %4873, 1.270000e+02
  %5792 = fmul fast float %4871, 0xBFF7154760000000
  %5793 = fmul fast float %5792, %5788
  %5794 = fmul fast float %4872, 0xBFF7154760000000
  %5795 = fmul fast float %5794, %5788
  %5796 = fmul fast float %4873, 0xBFF7154760000000
  %5797 = fmul fast float %5796, %5788
  %5798 = call float @dx.op.unary.f32(i32 21, float %5793)  ; Exp(value)
  %5799 = call float @dx.op.unary.f32(i32 21, float %5795)  ; Exp(value)
  %5800 = call float @dx.op.unary.f32(i32 21, float %5797)  ; Exp(value)
  %5801 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5802 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5803 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5804 = select i1 %5789, float %5801, float 0.000000e+00
  %5805 = select i1 %5790, float %5802, float 0.000000e+00
  %5806 = select i1 %5791, float %5803, float 0.000000e+00
  %5807 = fmul fast float %5804, %5767
  %5808 = fmul fast float %5805, %5767
  %5809 = fmul fast float %5806, %5767
  %5810 = fadd fast float %5807, -1.000000e+00
  %5811 = fadd fast float %5808, -1.000000e+00
  %5812 = fadd fast float %5809, -1.000000e+00
  %5813 = fmul fast float %5762, %5707
  %5814 = fmul fast float %5763, %5708
  %5815 = fmul fast float %5764, %5709
  %5816 = fsub fast float 1.000000e+00, %5463
  %5817 = bitcast float %5816 to i32
  %5818 = sitofp i32 %5817 to float
  %5819 = fmul fast float %5818, 5.000000e+00
  %5820 = fadd fast float %5819, 0xC1EFBF8940000000
  %5821 = fptosi float %5820 to i32
  %5822 = bitcast i32 %5821 to float
  %5823 = fmul fast float %5822, %4844
  %5824 = fmul fast float %5703, %5823
  %5825 = fmul fast float %5824, %5767
  %5826 = fmul fast float %5825, %5784
  %5827 = fmul fast float %5704, %5823
  %5828 = fmul fast float %5827, %5767
  %5829 = fmul fast float %5828, %5785
  %5830 = fmul fast float %5705, %5823
  %5831 = fmul fast float %5830, %5767
  %5832 = fmul fast float %5831, %5786
  %5833 = fmul fast float %5768, %4840
  %5834 = fmul fast float %5769, %4840
  %5835 = fmul fast float %5770, %4840
  %5836 = fadd fast float %5813, %4833
  %5837 = fadd fast float %5836, %5826
  %5838 = fmul fast float %5837, %4840
  %5839 = fadd fast float %5814, %4834
  %5840 = fadd fast float %5839, %5829
  %5841 = fmul fast float %5840, %4840
  %5842 = fadd fast float %5815, %4835
  %5843 = fadd fast float %5842, %5832
  %5844 = fmul fast float %5843, %4840
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5847 = fcmp fast oeq float %5846, 0.000000e+00
  br i1 %5847, label %6929, label %5848

; <label>:5848                                    ; preds = %5761
  %5849 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5850 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5851 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.f32 %5856, 0
  %5858 = extractvalue %dx.types.CBufRet.f32 %5856, 1
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %5855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = select i1 %223, float %5857, float %5853
  %5861 = select i1 %223, float %5859, float %5854
  %5862 = select i1 %223, float %5858, float %5855
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5865 = fmul fast float %5864, %111
  %5866 = fmul fast float %5864, %113
  %5867 = fmul fast float %5864, %115
  %5868 = fadd fast float %5865, %161
  %5869 = fadd fast float %5866, %162
  %5870 = fadd fast float %5867, %163
  %5871 = fcmp fast olt float %5846, 0.000000e+00
  br i1 %5871, label %6496, label %5872

; <label>:5872                                    ; preds = %5848
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.CBufRet.f32 %5878, 3
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5888 = fmul fast float %5874, %5868
  %5889 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %5875, float %5888)  ; FMad(a,b,c)
  %5890 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %5876, float %5889)  ; FMad(a,b,c)
  %5891 = fadd fast float %5890, %5877
  %5892 = fmul fast float %5879, %5868
  %5893 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %5880, float %5892)  ; FMad(a,b,c)
  %5894 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %5881, float %5893)  ; FMad(a,b,c)
  %5895 = fadd fast float %5894, %5882
  %5896 = fmul fast float %5884, %5868
  %5897 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %5885, float %5896)  ; FMad(a,b,c)
  %5898 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %5886, float %5897)  ; FMad(a,b,c)
  %5899 = fadd fast float %5898, %5887
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5904 = fmul fast float %5903, %5891
  %5905 = fmul fast float %5903, %5895
  %5906 = fadd fast float %5904, %5901
  %5907 = fadd fast float %5905, %5902
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5908, 3
  %5912 = fmul fast float %5911, %5891
  %5913 = fmul fast float %5911, %5895
  %5914 = fadd fast float %5912, %5909
  %5915 = fadd fast float %5913, %5910
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5918 = fsub fast float %5917, %5899
  %5919 = extractvalue %dx.types.CBufRet.f32 %5916, 2
  %5920 = fmul fast float %5918, %5919
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = call float @dx.op.unary.f32(i32 7, float %5921)  ; Saturate(value)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5926 = fadd fast float %5925, %5923
  %5927 = fcmp fast ogt float %5926, 0.000000e+00
  br i1 %5927, label %5928, label %5952

; <label>:5928                                    ; preds = %5872
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5932 = fsub fast float %5914, %5930
  %5933 = fsub fast float %5915, %5931
  %5934 = fcmp fast olt float %5932, 0.000000e+00
  %5935 = fcmp fast olt float %5933, 0.000000e+00
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5941 = select i1 %5934, float %5937, float %5939
  %5942 = select i1 %5935, float %5938, float %5940
  %5943 = fmul fast float %5941, %5932
  %5944 = fmul fast float %5942, %5933
  %5945 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5946 = call float @dx.op.unary.f32(i32 6, float %5944)  ; FAbs(value)
  %5947 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5948 = call float @dx.op.binary.f32(i32 35, float %5945, float %5946)  ; FMax(a,b)
  %5949 = fsub fast float %5947, %5948
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = fmul fast float %5950, %5922
  br label %5952

; <label>:5952                                    ; preds = %5928, %5872
  %5953 = phi float [ %5951, %5928 ], [ 0.000000e+00, %5872 ]
  %5954 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5955 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5956 = fadd fast float %5955, %5954
  %5957 = fcmp fast ogt float %5956, 0.000000e+00
  %5958 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  br i1 %5957, label %5959, label %5982

; <label>:5959                                    ; preds = %5952
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = fsub fast float %5906, %5961
  %5964 = fsub fast float %5907, %5962
  %5965 = fcmp fast olt float %5963, 0.000000e+00
  %5966 = fcmp fast olt float %5964, 0.000000e+00
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.CBufRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %5972 = select i1 %5965, float %5968, float %5970
  %5973 = select i1 %5966, float %5969, float %5971
  %5974 = fmul fast float %5972, %5963
  %5975 = fmul fast float %5973, %5964
  %5976 = call float @dx.op.unary.f32(i32 6, float %5974)  ; FAbs(value)
  %5977 = call float @dx.op.unary.f32(i32 6, float %5975)  ; FAbs(value)
  %5978 = call float @dx.op.binary.f32(i32 35, float %5976, float %5977)  ; FMax(a,b)
  %5979 = fsub fast float %5958, %5978
  %5980 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5981 = fmul fast float %5980, %5922
  br label %5982

; <label>:5982                                    ; preds = %5959, %5952
  %5983 = phi float [ %5981, %5959 ], [ 0.000000e+00, %5952 ]
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5986 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5990 = fsub fast float %5891, %5988
  %5991 = fsub fast float %5895, %5989
  %5992 = fcmp fast olt float %5990, 0.000000e+00
  %5993 = fcmp fast olt float %5991, 0.000000e+00
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = extractvalue %dx.types.CBufRet.f32 %5994, 3
  %5999 = select i1 %5992, float %5995, float %5997
  %6000 = select i1 %5993, float %5996, float %5998
  %6001 = fmul fast float %5999, %5990
  %6002 = fmul fast float %6000, %5991
  %6003 = call float @dx.op.unary.f32(i32 6, float %6001)  ; FAbs(value)
  %6004 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6005 = call float @dx.op.binary.f32(i32 35, float %6003, float %6004)  ; FMax(a,b)
  %6006 = fsub fast float %5958, %6005
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = call float @dx.op.binary.f32(i32 36, float %6007, float %5986)  ; FMin(a,b)
  %6009 = fmul fast float %6008, %5922
  %6010 = fsub fast float %5983, %6009
  %6011 = fsub fast float %5953, %5983
  %6012 = fsub fast float %6011, %6009
  %6013 = call float @dx.op.binary.f32(i32 35, float %5983, float %5953)  ; FMax(a,b)
  %6014 = call float @dx.op.binary.f32(i32 35, float %6009, float %6013)  ; FMax(a,b)
  %6015 = fcmp fast olt float %6014, 1.000000e+00
  br i1 %6015, label %6016, label %6414, !dx.controlflow.hints !94

; <label>:6016                                    ; preds = %5982
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = fcmp fast une float %6018, 0.000000e+00
  br i1 %6019, label %6020, label %6414, !dx.controlflow.hints !95

; <label>:6020                                    ; preds = %6016
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.CBufRet.f32 %6021, 2
  %6025 = extractvalue %dx.types.CBufRet.f32 %6021, 3
  %6026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6027 = extractvalue %dx.types.CBufRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.CBufRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.CBufRet.f32 %6026, 2
  %6030 = extractvalue %dx.types.CBufRet.f32 %6026, 3
  %6031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6032 = extractvalue %dx.types.CBufRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.CBufRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.CBufRet.f32 %6031, 2
  %6035 = extractvalue %dx.types.CBufRet.f32 %6031, 3
  %6036 = fmul fast float %6022, %5868
  %6037 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6023, float %6036)  ; FMad(a,b,c)
  %6038 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6024, float %6037)  ; FMad(a,b,c)
  %6039 = fadd fast float %6038, %6025
  %6040 = fmul fast float %6027, %5868
  %6041 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6028, float %6040)  ; FMad(a,b,c)
  %6042 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6029, float %6041)  ; FMad(a,b,c)
  %6043 = fadd fast float %6042, %6030
  %6044 = fmul fast float %6032, %5868
  %6045 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6033, float %6044)  ; FMad(a,b,c)
  %6046 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6034, float %6045)  ; FMad(a,b,c)
  %6047 = fadd fast float %6046, %6035
  %6048 = fcmp fast oge float %6039, 1.000000e+00
  %6049 = fcmp fast oge float %6043, 1.000000e+00
  %6050 = or i1 %6048, %6049
  %6051 = fcmp fast olt float %6039, 0.000000e+00
  %6052 = fcmp fast olt float %6043, 0.000000e+00
  %6053 = or i1 %6051, %6052
  %6054 = or i1 %6050, %6053
  br i1 %6054, label %6414, label %6055, !dx.controlflow.hints !96

; <label>:6055                                    ; preds = %6020
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.CBufRet.f32 %6056, 2
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 2
  %6062 = uitofp i32 %6061 to float
  %6063 = extractvalue %dx.types.CBufRet.i32 %6060, 3
  %6064 = uitofp i32 %6063 to float
  %6065 = extractvalue %dx.types.CBufRet.f32 %6056, 3
  %6066 = fmul fast float %6065, 2.000000e+00
  %6067 = fsub fast float %6039, %6057
  %6068 = fsub fast float %6043, %6058
  %6069 = fmul fast float %6066, %6067
  %6070 = fmul fast float %6066, %6068
  %6071 = fdiv fast float 1.000000e+00, %5851
  %6072 = fmul fast float %6070, %6071
  %6073 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6074 = fmul fast float %6059, %5870
  %6075 = fmul fast float %6074, %6066
  %6076 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6077 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6078 = call float @dx.op.binary.f32(i32 35, float %6076, float %6073)  ; FMax(a,b)
  %6079 = call float @dx.op.binary.f32(i32 35, float %6077, float %6078)  ; FMax(a,b)
  %6080 = fmul fast float %6079, 2.000000e+00
  %6081 = call float @dx.op.unary.f32(i32 23, float %6080)  ; Log(value)
  %6082 = call float @dx.op.binary.f32(i32 35, float %6081, float %6062)  ; FMax(a,b)
  %6083 = call float @dx.op.unary.f32(i32 22, float %6082)  ; Frc(value)
  %6084 = fadd fast float %6083, 0xBFEA666660000000
  %6085 = fmul fast float %6084, 8.000000e+00
  %6086 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 27, float %6082)  ; Round_ni(value)
  %6088 = fadd fast float %6087, %6086
  %6089 = call float @dx.op.binary.f32(i32 36, float %6088, float %6064)  ; FMin(a,b)
  %6090 = call float @dx.op.unary.f32(i32 27, float %6089)  ; Round_ni(value)
  %6091 = fsub fast float -0.000000e+00, %6090
  %6092 = call float @dx.op.unary.f32(i32 21, float %6091)  ; Exp(value)
  %6093 = fmul fast float %6092, %6066
  %6094 = fmul fast float %6093, %6039
  %6095 = fmul fast float %6093, %6043
  %6096 = fmul fast float %6094, 2.500000e-01
  %6097 = fmul fast float %6095, 2.500000e-01
  %6098 = fadd fast float %6096, 5.000000e-01
  %6099 = fadd fast float %6097, 5.000000e-01
  %6100 = fsub fast float %6064, %6062
  %6101 = fptoui float %6100 to i32
  %6102 = add i32 %6101, 320
  %6103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %6102)  ; CBufferLoadLegacy(handle,regIndex)
  %6104 = extractvalue %dx.types.CBufRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.CBufRet.f32 %6103, 1
  %6106 = fcmp fast une float %6089, %6064
  %6107 = fsub fast float %6039, %6104
  %6108 = fsub fast float %6043, %6105
  %6109 = call float @dx.op.unary.f32(i32 6, float %6107)  ; FAbs(value)
  %6110 = call float @dx.op.unary.f32(i32 6, float %6108)  ; FAbs(value)
  %6111 = fmul fast float %6109, %6093
  %6112 = fmul fast float %6110, %6093
  %6113 = fcmp fast olt float %6111, 1.000000e+00
  %6114 = fcmp fast olt float %6112, 1.000000e+00
  %6115 = and i1 %6113, %6114
  %6116 = or i1 %6106, %6115
  br i1 %6116, label %6117, label %6414, !dx.controlflow.hints !97

; <label>:6117                                    ; preds = %6055
  %6118 = fmul fast float %6095, 5.000000e-01
  %6119 = fmul fast float %6094, 5.000000e-01
  %6120 = fadd fast float %6118, 5.000000e-01
  %6121 = fadd fast float %6119, 5.000000e-01
  %6122 = sitofp i32 %6061 to float
  %6123 = fsub fast float %6089, %6122
  %6124 = call float @dx.op.unary.f32(i32 27, float %6123)  ; Round_ni(value)
  %6125 = call float @dx.op.unary.f32(i32 22, float %6089)  ; Frc(value)
  %6126 = call float @dx.op.unary.f32(i32 22, float %6121)  ; Frc(value)
  %6127 = call float @dx.op.unary.f32(i32 22, float %6120)  ; Frc(value)
  %6128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6126, float %6127, float %6124, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.ResRet.f32 %6128, 2
  %6132 = extractvalue %dx.types.ResRet.f32 %6128, 3
  %6133 = fcmp fast ogt float %6125, 0.000000e+00
  br i1 %6133, label %6134, label %6155, !dx.controlflow.hints !98

; <label>:6134                                    ; preds = %6117
  %6135 = fadd fast float %6124, 1.000000e+00
  %6136 = call float @dx.op.unary.f32(i32 22, float %6098)  ; Frc(value)
  %6137 = call float @dx.op.unary.f32(i32 22, float %6099)  ; Frc(value)
  %6138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %47, float %6136, float %6137, float %6135, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.ResRet.f32 %6138, 2
  %6142 = extractvalue %dx.types.ResRet.f32 %6138, 3
  %6143 = fsub fast float %6139, %6129
  %6144 = fsub fast float %6140, %6130
  %6145 = fsub fast float %6141, %6131
  %6146 = fsub fast float %6142, %6132
  %6147 = fmul fast float %6143, %6125
  %6148 = fmul fast float %6144, %6125
  %6149 = fmul fast float %6145, %6125
  %6150 = fmul fast float %6146, %6125
  %6151 = fadd fast float %6147, %6129
  %6152 = fadd fast float %6148, %6130
  %6153 = fadd fast float %6149, %6131
  %6154 = fadd fast float %6150, %6132
  br label %6155

; <label>:6155                                    ; preds = %6134, %6117
  %6156 = phi float [ %6151, %6134 ], [ %6129, %6117 ]
  %6157 = phi float [ %6152, %6134 ], [ %6130, %6117 ]
  %6158 = phi float [ %6153, %6134 ], [ %6131, %6117 ]
  %6159 = phi float [ %6154, %6134 ], [ %6132, %6117 ]
  %6160 = fadd fast float %6156, -5.000000e-01
  %6161 = fadd fast float %6158, -5.000000e-01
  %6162 = fmul fast float %6160, 0xBFD5555560000000
  %6163 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6161, float %6162)  ; FMad(a,b,c)
  %6164 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6157, float 0.000000e+00)  ; FMad(a,b,c)
  %6165 = fadd fast float %6164, %6159
  %6166 = fmul fast float %6160, -7.500000e-01
  %6167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6161, float %6166)  ; FMad(a,b,c)
  %6168 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6157, float 0.000000e+00)  ; FMad(a,b,c)
  %6169 = fadd fast float %6168, %6159
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.CBufRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.CBufRet.f32 %6172, 2
  %6176 = extractvalue %dx.types.CBufRet.f32 %6172, 3
  %6177 = fsub fast float %6173, %6163
  %6178 = fsub fast float %6174, %6165
  %6179 = fsub fast float %6175, %6167
  %6180 = fsub fast float %6176, %6169
  %6181 = fmul fast float %6177, %6171
  %6182 = fmul fast float %6178, %6171
  %6183 = fmul fast float %6179, %6171
  %6184 = fmul fast float %6180, %6171
  %6185 = fadd fast float %6181, %6163
  %6186 = fadd fast float %6182, %6165
  %6187 = fadd fast float %6183, %6167
  %6188 = fadd fast float %6184, %6169
  %6189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6190 = extractvalue %dx.types.ResRet.i32 %6189, 0
  %6191 = and i32 %6190, 536870911
  %6192 = uitofp i32 %6191 to float
  %6193 = fmul fast float %6192, %6039
  %6194 = fmul fast float %6192, %6043
  %6195 = fptoui float %6193 to i32
  %6196 = fptoui float %6194 to i32
  %6197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6198 = extractvalue %dx.types.ResRet.i32 %6197, 0
  %6199 = and i32 %6198, 31
  %6200 = lshr i32 %6195, %6199
  %6201 = lshr i32 %6196, %6199
  %6202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6203 = extractvalue %dx.types.ResRet.i32 %6202, 0
  %6204 = and i32 %6203, 31
  %6205 = shl i32 1, %6204
  %6206 = call i32 @dx.op.binary.i32(i32 40, i32 %6205, i32 4)  ; UMin(a,b)
  %6207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6208 = extractvalue %dx.types.ResRet.i32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.i32 %6207, 1
  %6210 = icmp eq i32 %6206, 0
  br i1 %6210, label %6252, label %6211

; <label>:6211                                    ; preds = %6155
  br label %6212

; <label>:6212                                    ; preds = %6240, %6211
  %6213 = phi i32 [ %6243, %6240 ], [ 0, %6211 ]
  %6214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.i32 %6214, 0
  %6216 = lshr i32 %6215, 16
  %6217 = and i32 %6216, 31
  %6218 = shl i32 %6201, %6217
  %6219 = add i32 %6218, %6200
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = and i32 %6221, 31
  %6223 = shl i32 %6219, %6222
  %6224 = add i32 %6223, %6213
  %6225 = shl i32 %6224, 2
  %6226 = add i32 %6225, 32
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6226, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = icmp slt i32 %6228, 0
  %6230 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6213
  %6231 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6213
  %6232 = bitcast float* %6230 to i32*
  %6233 = bitcast float* %6231 to i32*
  br i1 %6229, label %6234, label %6240

; <label>:6234                                    ; preds = %6212
  %6235 = and i32 %6228, 1073741823
  %6236 = add nuw nsw i32 %6235, 20
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.i32 %6237, 1
  br label %6240

; <label>:6240                                    ; preds = %6234, %6212
  %6241 = phi i32 [ %6238, %6234 ], [ %6208, %6212 ]
  %6242 = phi i32 [ %6239, %6234 ], [ %6209, %6212 ]
  store i32 %6241, i32* %6232, align 4
  store i32 %6242, i32* %6233, align 4
  %6243 = add nuw i32 %6213, 1
  %6244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.i32 %6244, 2
  %6246 = icmp eq i32 %6245, 0
  %6247 = icmp ugt i32 %6228, -1073741825
  %6248 = and i1 %6247, %6246
  %6249 = icmp ult i32 %6243, %6206
  %6250 = and i1 %6248, %6249
  br i1 %6250, label %6212, label %6251

; <label>:6251                                    ; preds = %6240
  br label %6252

; <label>:6252                                    ; preds = %6251, %6155
  %6253 = phi i32 [ 0, %6155 ], [ %6243, %6251 ]
  %6254 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6255 = fptoui float %6254 to i32
  %6256 = icmp eq i32 %6255, 0
  br i1 %6256, label %6308, label %6257

; <label>:6257                                    ; preds = %6252
  br label %6258

; <label>:6258                                    ; preds = %6303, %6257
  %6259 = phi i32 [ %6304, %6303 ], [ %6253, %6257 ]
  %6260 = phi i32 [ %6305, %6303 ], [ 0, %6257 ]
  %6261 = lshr i32 %6260, 2
  %6262 = and i32 %6260, 3
  %6263 = add nuw nsw i32 %6261, 83
  %6264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 %6263)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.i32 %6264, 0
  %6266 = extractvalue %dx.types.CBufRet.i32 %6264, 1
  %6267 = extractvalue %dx.types.CBufRet.i32 %6264, 2
  %6268 = extractvalue %dx.types.CBufRet.i32 %6264, 3
  %6269 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 0
  store i32 %6265, i32* %6269, align 4
  %6270 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 1
  store i32 %6266, i32* %6270, align 4
  %6271 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 2
  store i32 %6267, i32* %6271, align 4
  %6272 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 3
  store i32 %6268, i32* %6272, align 4
  %6273 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i32 0, i32 %6262
  %6274 = load i32, i32* %6273, align 4, !tbaa !99, !noalias !103
  %6275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6276 = extractvalue %dx.types.ResRet.i32 %6275, 0
  %6277 = lshr i32 %6276, 16
  %6278 = and i32 %6277, 31
  %6279 = shl i32 %6201, %6278
  %6280 = add i32 %6279, %6200
  %6281 = shl i32 %6280, 2
  %6282 = add i32 %6281, %6274
  %6283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6282, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.i32 %6283, 0
  %6285 = icmp eq i32 %6284, 0
  br i1 %6285, label %6303, label %6286

; <label>:6286                                    ; preds = %6258
  %6287 = icmp slt i32 %6284, 0
  %6288 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6259
  %6289 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6259
  %6290 = bitcast float* %6288 to i32*
  %6291 = bitcast float* %6289 to i32*
  br i1 %6287, label %6292, label %6299

; <label>:6292                                    ; preds = %6286
  %6293 = and i32 %6284, 1073741823
  %6294 = add i32 %6274, 20
  %6295 = add i32 %6294, %6293
  %6296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6297 = extractvalue %dx.types.ResRet.i32 %6296, 0
  %6298 = extractvalue %dx.types.ResRet.i32 %6296, 1
  br label %6299

; <label>:6299                                    ; preds = %6292, %6286
  %6300 = phi i32 [ %6297, %6292 ], [ %6208, %6286 ]
  %6301 = phi i32 [ %6298, %6292 ], [ %6209, %6286 ]
  store i32 %6300, i32* %6290, align 4
  store i32 %6301, i32* %6291, align 4
  %6302 = add i32 %6259, 1
  br label %6303

; <label>:6303                                    ; preds = %6299, %6258
  %6304 = phi i32 [ %6259, %6258 ], [ %6302, %6299 ]
  %6305 = add nuw i32 %6260, 1
  %6306 = icmp eq i32 %6305, %6255
  br i1 %6306, label %6307, label %6258

; <label>:6307                                    ; preds = %6303
  br label %6308

; <label>:6308                                    ; preds = %6307, %6252
  %6309 = phi i32 [ %6253, %6252 ], [ %6304, %6307 ]
  %6310 = icmp eq i32 %6309, 1
  %6311 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 0
  %6312 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  br i1 %6310, label %6313, label %6316

; <label>:6313                                    ; preds = %6308
  %6314 = load float, float* %6311, align 4
  %6315 = load float, float* %6312, align 4
  br label %6343

; <label>:6316                                    ; preds = %6308
  %6317 = load float, float* %6311, align 4
  %6318 = load float, float* %6312, align 4
  %6319 = fdiv fast float 1.000000e+00, %6318
  %6320 = fsub fast float %6317, %6319
  %6321 = icmp ugt i32 %6309, 1
  br i1 %6321, label %6322, label %6338

; <label>:6322                                    ; preds = %6316
  br label %6323

; <label>:6323                                    ; preds = %6323, %6322
  %6324 = phi float [ %6333, %6323 ], [ %6320, %6322 ]
  %6325 = phi float [ %6334, %6323 ], [ %6317, %6322 ]
  %6326 = phi i32 [ %6335, %6323 ], [ 1, %6322 ]
  %6327 = getelementptr [12 x float], [12 x float]* %94, i32 0, i32 %6326
  %6328 = load float, float* %6327, align 4
  %6329 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6326
  %6330 = load float, float* %6329, align 4
  %6331 = fdiv fast float 1.000000e+00, %6330
  %6332 = fsub fast float %6328, %6331
  %6333 = call float @dx.op.binary.f32(i32 36, float %6324, float %6332)  ; FMin(a,b)
  %6334 = call float @dx.op.binary.f32(i32 35, float %6325, float %6328)  ; FMax(a,b)
  %6335 = add nuw i32 %6326, 1
  %6336 = icmp eq i32 %6335, %6309
  br i1 %6336, label %6337, label %6323

; <label>:6337                                    ; preds = %6323
  br label %6338

; <label>:6338                                    ; preds = %6337, %6316
  %6339 = phi float [ %6320, %6316 ], [ %6333, %6337 ]
  %6340 = phi float [ %6317, %6316 ], [ %6334, %6337 ]
  %6341 = fsub fast float %6340, %6339
  %6342 = fdiv fast float 1.000000e+00, %6341
  br label %6343

; <label>:6343                                    ; preds = %6338, %6313
  %6344 = phi float [ %6314, %6313 ], [ %6340, %6338 ]
  %6345 = phi float [ %6315, %6313 ], [ %6342, %6338 ]
  %6346 = fadd fast float %6047, %6344
  %6347 = fmul fast float %6346, %6345
  %6348 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6349 = fmul fast float %6348, 2.000000e+00
  %6350 = fsub fast float 1.000000e+00, %6349
  %6351 = fmul fast float %6185, %6185
  %6352 = fsub fast float %6186, %6351
  %6353 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6352)  ; FMax(a,b)
  %6354 = fdiv fast float 1.000000e+00, %6353
  %6355 = fmul fast float %6186, %6185
  %6356 = fsub fast float %6187, %6355
  %6357 = fsub fast float %6350, %6185
  %6358 = fmul fast float %6350, %6350
  %6359 = fsub fast float %6358, %6186
  %6360 = fmul fast float %6354, %6356
  %6361 = fmul fast float %6360, %6357
  %6362 = fsub fast float %6359, %6361
  %6363 = fmul fast float %6186, %6186
  %6364 = fsub fast float %6188, %6363
  %6365 = fmul fast float %6356, %6356
  %6366 = fmul fast float %6365, %6354
  %6367 = fsub fast float %6364, %6366
  %6368 = fdiv fast float %6362, %6367
  %6369 = fmul fast float %6368, %6356
  %6370 = fsub fast float %6357, %6369
  %6371 = fmul fast float %6370, %6354
  %6372 = fmul fast float %6371, %6185
  %6373 = fsub fast float 1.000000e+00, %6372
  %6374 = fmul fast float %6368, %6186
  %6375 = fsub fast float %6373, %6374
  %6376 = fmul fast float %6371, %6371
  %6377 = fmul fast float %6368, 4.000000e+00
  %6378 = fmul fast float %6377, %6375
  %6379 = fsub fast float %6376, %6378
  %6380 = call float @dx.op.unary.f32(i32 24, float %6379)  ; Sqrt(value)
  %6381 = fcmp fast oge float %6371, 0.000000e+00
  %6382 = fsub fast float -0.000000e+00, %6380
  %6383 = select i1 %6381, float %6382, float %6380
  %6384 = fsub fast float %6383, %6371
  %6385 = fdiv fast float %6384, %6368
  %6386 = fdiv fast float %6375, %6384
  %6387 = fmul fast float %6385, 5.000000e-01
  %6388 = fmul fast float %6386, 2.000000e+00
  %6389 = select i1 %6381, float %6387, float %6388
  %6390 = select i1 %6381, float %6388, float %6387
  %6391 = call float @dx.op.binary.f32(i32 35, float %6389, float %6390)  ; FMax(a,b)
  %6392 = call float @dx.op.binary.f32(i32 36, float %6389, float %6390)  ; FMin(a,b)
  %6393 = fcmp fast ogt float %6350, %6391
  %6394 = fsub fast float %6350, %6392
  %6395 = fsub fast float %6350, %6391
  %6396 = fsub fast float %6391, %6392
  %6397 = select i1 %6393, float %6395, float %6396
  %6398 = fmul float %6394, %6397
  %6399 = select i1 %6393, float %6392, float %6350
  %6400 = fcmp fast ogt float %6350, %6392
  %6401 = fmul fast float %6399, %6391
  %6402 = fadd fast float %6399, %6391
  %6403 = fmul fast float %6402, %6185
  %6404 = fadd fast float %6401, %6186
  %6405 = fsub fast float %6404, %6403
  %6406 = fdiv fast float %6405, %6398
  %6407 = select i1 %6400, float %6406, float 0.000000e+00
  %6408 = fsub fast float 1.000000e+00, %6407
  %6409 = select i1 %6393, float %6408, float %6407
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6412 = fmul fast float %6411, %6410
  %6413 = fsub fast float 1.000000e+00, %6412
  br label %6414

; <label>:6414                                    ; preds = %6343, %6055, %6020, %6016, %5982
  %6415 = phi float [ 1.000000e+00, %5982 ], [ %6413, %6343 ], [ 1.000000e+00, %6020 ], [ 1.000000e+00, %6055 ], [ 1.000000e+00, %6016 ]
  %6416 = fcmp fast ogt float %6012, 0.000000e+00
  br i1 %6416, label %6417, label %6423, !dx.controlflow.hints !112

; <label>:6417                                    ; preds = %6414
  %6418 = fadd fast float %5925, %5899
  %6419 = call float @dx.op.binary.f32(i32 35, float %6418, float 0.000000e+00)  ; FMax(a,b)
  %6420 = fadd fast float %6419, 0x3F10000000000000
  %6421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %50, float %5914, float %5915, float undef, float undef, i32 0, i32 0, i32 undef, float %6420)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6422 = extractvalue %dx.types.ResRet.f32 %6421, 0
  br label %6423

; <label>:6423                                    ; preds = %6417, %6414
  %6424 = phi float [ %6422, %6417 ], [ 1.000000e+00, %6414 ]
  %6425 = fcmp fast ogt float %6010, 0.000000e+00
  br i1 %6425, label %6426, label %6432, !dx.controlflow.hints !113

; <label>:6426                                    ; preds = %6423
  %6427 = fadd fast float %5955, %5899
  %6428 = call float @dx.op.binary.f32(i32 35, float %6427, float 0.000000e+00)  ; FMax(a,b)
  %6429 = fadd fast float %6428, 0x3F10000000000000
  %6430 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %50, float %5906, float %5907, float undef, float undef, i32 0, i32 0, i32 undef, float %6429)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  br label %6432

; <label>:6432                                    ; preds = %6426, %6423
  %6433 = phi float [ %6431, %6426 ], [ 1.000000e+00, %6423 ]
  %6434 = fcmp fast ogt float %6009, 0.000000e+00
  br i1 %6434, label %6435, label %6442, !dx.controlflow.hints !114

; <label>:6435                                    ; preds = %6432
  %6436 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %6437 = fadd fast float %6436, %5899
  %6438 = call float @dx.op.binary.f32(i32 35, float %6437, float 0.000000e+00)  ; FMax(a,b)
  %6439 = fadd fast float %6438, 0x3F10000000000000
  %6440 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %50, float %5891, float %5895, float undef, float undef, i32 0, i32 0, i32 undef, float %6439)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  br label %6442

; <label>:6442                                    ; preds = %6435, %6432
  %6443 = phi float [ %6441, %6435 ], [ 1.000000e+00, %6432 ]
  %6444 = fsub fast float %6424, %6415
  %6445 = fmul fast float %6444, %5953
  %6446 = fadd fast float %6445, %6415
  %6447 = fsub fast float %6433, %6446
  %6448 = fmul fast float %6447, %5983
  %6449 = fadd fast float %6448, %6446
  %6450 = fsub fast float %6443, %6449
  %6451 = fmul fast float %6450, %6009
  %6452 = fadd fast float %6451, %6449
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6455 = fcmp fast ogt float %6454, 0.000000e+00
  br i1 %6455, label %6456, label %6496, !dx.controlflow.hints !115

; <label>:6456                                    ; preds = %6442
  %6457 = fcmp fast ugt float %6454, 0.000000e+00
  br i1 %6457, label %6458, label %6493

; <label>:6458                                    ; preds = %6456
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = extractvalue %dx.types.CBufRet.f32 %6459, 3
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 1
  %6467 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6468 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6469 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6470 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6475 = fadd fast float %6472, %5868
  %6476 = fadd fast float %6473, %5869
  %6477 = fadd fast float %6474, %5870
  %6478 = fmul fast float %6475, %6460
  %6479 = call float @dx.op.tertiary.f32(i32 46, float %6461, float %6476, float %6478)  ; FMad(a,b,c)
  %6480 = call float @dx.op.tertiary.f32(i32 46, float %6462, float %6477, float %6479)  ; FMad(a,b,c)
  %6481 = fadd fast float %6480, %6463
  %6482 = fmul fast float %6475, %6465
  %6483 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6476, float %6482)  ; FMad(a,b,c)
  %6484 = call float @dx.op.tertiary.f32(i32 46, float %6467, float %6477, float %6483)  ; FMad(a,b,c)
  %6485 = fadd fast float %6484, %6468
  %6486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %45, float %6481, float %6485, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6487 = extractvalue %dx.types.ResRet.f32 %6486, 0
  %6488 = fmul fast float %6487, %6470
  %6489 = fadd fast float %6488, %6469
  %6490 = call float @dx.op.unary.f32(i32 7, float %6489)  ; Saturate(value)
  %6491 = fmul fast float %6490, %6454
  %6492 = fsub fast float 1.000000e+00, %6491
  br label %6493

; <label>:6493                                    ; preds = %6458, %6456
  %6494 = phi float [ %6492, %6458 ], [ 1.000000e+00, %6456 ]
  %6495 = fmul fast float %6494, %6452
  br label %6496

; <label>:6496                                    ; preds = %6493, %6442, %5848
  %6497 = phi float [ 1.000000e+00, %5848 ], [ %6495, %6493 ], [ %6452, %6442 ]
  %6498 = call float @dx.op.binary.f32(i32 36, float %6497, float %6497)  ; FMin(a,b)
  %6499 = call float @dx.op.binary.f32(i32 36, float %6497, float %6498)  ; FMin(a,b)
  %6500 = fcmp fast ogt float %6499, 0.000000e+00
  br i1 %6500, label %6501, label %6661, !dx.controlflow.hints !116

; <label>:6501                                    ; preds = %6496
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6506 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6511 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6516 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6517 = fmul fast float %6503, %5868
  %6518 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6504, float %6517)  ; FMad(a,b,c)
  %6519 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6505, float %6518)  ; FMad(a,b,c)
  %6520 = fadd fast float %6519, %6506
  %6521 = fmul fast float %6508, %5868
  %6522 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6509, float %6521)  ; FMad(a,b,c)
  %6523 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6510, float %6522)  ; FMad(a,b,c)
  %6524 = fadd fast float %6523, %6511
  %6525 = fmul fast float %6513, %5868
  %6526 = call float @dx.op.tertiary.f32(i32 46, float %5869, float %6514, float %6525)  ; FMad(a,b,c)
  %6527 = call float @dx.op.tertiary.f32(i32 46, float %5870, float %6515, float %6526)  ; FMad(a,b,c)
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6532 = fmul fast float %6531, %6520
  %6533 = fmul fast float %6531, %6524
  %6534 = fadd fast float %6532, %6529
  %6535 = fadd fast float %6533, %6530
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.CBufRet.f32 %6536, 1
  %6539 = fsub fast float %6534, %6537
  %6540 = fsub fast float %6535, %6538
  %6541 = fcmp fast olt float %6539, 0.000000e+00
  %6542 = fcmp fast olt float %6540, 0.000000e+00
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.CBufRet.f32 %6543, 2
  %6547 = extractvalue %dx.types.CBufRet.f32 %6543, 3
  %6548 = select i1 %6541, float %6544, float %6546
  %6549 = select i1 %6542, float %6545, float %6547
  %6550 = fmul fast float %6548, %6539
  %6551 = fmul fast float %6549, %6540
  %6552 = call float @dx.op.unary.f32(i32 6, float %6550)  ; FAbs(value)
  %6553 = call float @dx.op.unary.f32(i32 6, float %6551)  ; FAbs(value)
  %6554 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %6555 = call float @dx.op.binary.f32(i32 35, float %6552, float %6553)  ; FMax(a,b)
  %6556 = fsub fast float %6554, %6555
  %6557 = call float @dx.op.unary.f32(i32 7, float %6556)  ; Saturate(value)
  %6558 = fcmp fast ogt float %6557, 0.000000e+00
  br i1 %6558, label %6559, label %6600, !dx.controlflow.hints !117

; <label>:6559                                    ; preds = %6501
  %6560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %48, float %6534, float %6535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 1
  %6562 = fcmp fast ogt float %6561, 0.000000e+00
  br i1 %6562, label %6563, label %6595

; <label>:6563                                    ; preds = %6559
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %48, float %6534, float %6535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.ResRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.ResRet.f32 %6564, 2
  %6568 = extractvalue %dx.types.ResRet.f32 %6564, 3
  %6569 = fsub fast float 1.000000e+00, %6516
  %6570 = fsub fast float %6569, %6527
  %6571 = fmul fast float %6570, 0x400921FB60000000
  %6572 = fadd fast float %6571, 0x3FF921FB60000000
  %6573 = call float @dx.op.unary.f32(i32 13, float %6572)  ; Sin(value)
  %6574 = fadd fast float %6573, -1.000000e+00
  %6575 = fmul fast float %6574, 0x3FD45F3060000000
  %6576 = fmul fast float %6570, 0x401921FB60000000
  %6577 = fadd fast float %6576, 0x400921FB60000000
  %6578 = call float @dx.op.unary.f32(i32 13, float %6577)  ; Sin(value)
  %6579 = fadd fast float %6578, 0x3E7777A5C0000000
  %6580 = fmul fast float %6579, 0x3FC45F3060000000
  %6581 = fmul fast float %6570, 0x4022D97C80000000
  %6582 = fadd fast float %6581, 0x4012D97C80000000
  %6583 = call float @dx.op.unary.f32(i32 13, float %6582)  ; Sin(value)
  %6584 = fadd fast float %6583, 1.000000e+00
  %6585 = fmul fast float %6584, 0x3FBB2995E0000000
  %6586 = fmul fast float %6570, 0x402921FB60000000
  %6587 = fadd fast float %6586, 0x401921FB60000000
  %6588 = call float @dx.op.unary.f32(i32 13, float %6587)  ; Sin(value)
  %6589 = fadd fast float %6588, 0xBE8777A5C0000000
  %6590 = fmul fast float %6589, 0x3FB45F3060000000
  %6591 = call float @dx.op.dot4.f32(i32 56, float %6565, float %6566, float %6567, float %6568, float %6575, float %6580, float %6585, float %6590)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6592 = fmul fast float %6591, 0xBFF7154760000000
  %6593 = call float @dx.op.unary.f32(i32 21, float %6592)  ; Exp(value)
  %6594 = call float @dx.op.unary.f32(i32 7, float %6593)  ; Saturate(value)
  br label %6595

; <label>:6595                                    ; preds = %6563, %6559
  %6596 = phi float [ %6594, %6563 ], [ 1.000000e+00, %6559 ]
  %6597 = fadd fast float %6596, -1.000000e+00
  %6598 = fmul fast float %6597, %6557
  %6599 = fadd fast float %6598, 1.000000e+00
  br label %6600

; <label>:6600                                    ; preds = %6595, %6501
  %6601 = phi float [ %6599, %6595 ], [ 1.000000e+00, %6501 ]
  %6602 = fmul fast float %6601, %6497
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 0
  %6605 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6606 = extractvalue %dx.types.CBufRet.f32 %6603, 2
  %6607 = fadd fast float %6604, %161
  %6608 = fadd fast float %6605, %162
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6611 = fsub fast float -0.000000e+00, %6607
  %6612 = fsub fast float -0.000000e+00, %6608
  %6613 = fsub fast float %5460, %6606
  %6614 = fadd fast float %6613, %6610
  %6615 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6611, float %6612, float %6614)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5849, float %5850, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %6617 = fdiv fast float 1.000000e+00, %6616
  %6618 = fmul fast float %6617, %6615
  %6619 = fmul fast float %5849, %6618
  %6620 = fmul fast float %5850, %6618
  %6621 = fadd fast float %6619, %6607
  %6622 = fadd fast float %6620, %6608
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = fsub fast float %6621, %6624
  %6627 = fsub fast float %6622, %6625
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6631 = fmul fast float %6626, %6629
  %6632 = fmul fast float %6627, %6630
  %6633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.i32 %6633, 3
  %6635 = icmp eq i32 %6634, 0
  br i1 %6635, label %6641, label %6636

; <label>:6636                                    ; preds = %6600
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %47, float %6631, float %6632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  br label %6646

; <label>:6641                                    ; preds = %6600
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %48, float %6631, float %6632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  br label %6646

; <label>:6646                                    ; preds = %6641, %6636
  %6647 = phi float [ %6638, %6636 ], [ %6643, %6641 ]
  %6648 = phi float [ %6639, %6636 ], [ %6644, %6641 ]
  %6649 = phi float [ %6640, %6636 ], [ %6645, %6641 ]
  %6650 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6651 = fmul fast float %6650, %6647
  %6652 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6653 = fsub fast float %6618, %6652
  %6654 = fsub fast float %6653, %6651
  %6655 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6654)  ; FMax(a,b)
  %6656 = fmul fast float %6655, %6648
  %6657 = call float @dx.op.binary.f32(i32 36, float %6649, float %6656)  ; FMin(a,b)
  %6658 = fmul fast float %6657, 0xBFF7154760000000
  %6659 = call float @dx.op.unary.f32(i32 21, float %6658)  ; Exp(value)
  %6660 = fmul fast float %6602, %6659
  br label %6661

; <label>:6661                                    ; preds = %6646, %6496
  %6662 = phi float [ %6660, %6646 ], [ %6497, %6496 ]
  %6663 = call float @dx.op.binary.f32(i32 36, float %6662, float %6662)  ; FMin(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6662, float %6663)  ; FMin(a,b)
  %6665 = fcmp fast ogt float %6664, 0.000000e+00
  br i1 %6665, label %6666, label %6929, !dx.controlflow.hints !118

; <label>:6666                                    ; preds = %6661
  %6667 = fmul fast float %6662, %5860
  %6668 = fmul fast float %6662, %5861
  %6669 = fmul fast float %6662, %5862
  %6670 = fsub fast float %163, %5248
  %6671 = fcmp fast ogt float %6670, 0.000000e+00
  %6672 = fmul fast float %5849, 5.120000e+02
  %6673 = fmul fast float %5850, 5.120000e+02
  %6674 = fmul fast float %5851, 5.120000e+02
  %6675 = fadd fast float %6674, %163
  %6676 = fsub fast float %5248, %6675
  %6677 = fmul fast float %6676, 2.000000e+00
  %6678 = fadd fast float %6677, %6675
  %6679 = select i1 %6671, float %6678, float %6675
  %6680 = fsub fast float %6679, %163
  %6681 = call float @dx.op.dot3.f32(i32 55, float %6672, float %6673, float %6680, float %6672, float %6673, float %6680)  ; Dot3(ax,ay,az,bx,by,bz)
  %6682 = call float @dx.op.unary.f32(i32 25, float %6681)  ; Rsqrt(value)
  %6683 = fmul fast float %6682, %6672
  %6684 = fmul fast float %6682, %6673
  %6685 = fmul fast float %6682, %6680
  %6686 = fsub fast float %5248, %163
  %6687 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6683, float %6684, float %6685)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = fdiv fast float 1.000000e+00, %6688
  %6690 = fmul fast float %6689, %6687
  %6691 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6670, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6692 = fcmp fast ogt float %6691, 0.000000e+00
  %6693 = fcmp fast olt float %6691, 0.000000e+00
  %6694 = zext i1 %6692 to i32
  %6695 = zext i1 %6693 to i32
  %6696 = sub nsw i32 %6694, %6695
  %6697 = sitofp i32 %6696 to float
  %6698 = fsub fast float %6679, %5248
  %6699 = call float @dx.op.dot3.f32(i32 55, float %6672, float %6673, float %6698, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6700 = fcmp fast ogt float %6699, 0.000000e+00
  %6701 = fcmp fast olt float %6699, 0.000000e+00
  %6702 = zext i1 %6700 to i32
  %6703 = zext i1 %6701 to i32
  %6704 = sub nsw i32 %6702, %6703
  %6705 = sitofp i32 %6704 to float
  %6706 = fcmp fast une float %6697, %6705
  br i1 %6706, label %6707, label %6717

; <label>:6707                                    ; preds = %6666
  %6708 = fmul fast float %6690, %6685
  %6709 = fmul fast float %6690, %6684
  %6710 = fmul fast float %6690, %6683
  %6711 = fmul fast float %6710, %6710
  %6712 = fmul fast float %6709, %6709
  %6713 = fadd fast float %6711, %6712
  %6714 = fmul fast float %6708, %6708
  %6715 = fadd fast float %6713, %6714
  %6716 = call float @dx.op.unary.f32(i32 24, float %6715)  ; Sqrt(value)
  br label %6727

; <label>:6717                                    ; preds = %6666
  %6718 = icmp slt i32 %6696, 0
  br i1 %6718, label %6719, label %6727

; <label>:6719                                    ; preds = %6717
  %6720 = fsub fast float %163, %6679
  %6721 = fmul fast float %6672, %6672
  %6722 = fmul fast float %6673, %6673
  %6723 = fadd fast float %6721, %6722
  %6724 = fmul fast float %6720, %6720
  %6725 = fadd fast float %6723, %6724
  %6726 = call float @dx.op.unary.f32(i32 24, float %6725)  ; Sqrt(value)
  br label %6727

; <label>:6727                                    ; preds = %6719, %6717, %6707
  %6728 = phi float [ %6716, %6707 ], [ %6726, %6719 ], [ 0.000000e+00, %6717 ]
  %6729 = fsub fast float -0.000000e+00, %6728
  %6730 = select i1 %6671, float -0.000000e+00, float %6729
  %6731 = fmul fast float %5249, 0x3FF7154760000000
  %6732 = fmul fast float %6731, %6730
  %6733 = fmul fast float %5250, 0x3FF7154760000000
  %6734 = fmul fast float %6733, %6730
  %6735 = fmul fast float %5251, 0x3FF7154760000000
  %6736 = fmul fast float %6735, %6730
  %6737 = call float @dx.op.unary.f32(i32 21, float %6732)  ; Exp(value)
  %6738 = call float @dx.op.unary.f32(i32 21, float %6734)  ; Exp(value)
  %6739 = call float @dx.op.unary.f32(i32 21, float %6736)  ; Exp(value)
  %6740 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6741 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  %6742 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6743 = fmul fast float %6667, %6740
  %6744 = fmul fast float %6668, %6741
  %6745 = fmul fast float %6669, %6742
  %6746 = fsub fast float %5849, %5448
  %6747 = fsub fast float %5850, %5447
  %6748 = fsub fast float %5851, %5446
  %6749 = call float @dx.op.dot3.f32(i32 55, float %6746, float %6747, float %6748, float %6746, float %6747, float %6748)  ; Dot3(ax,ay,az,bx,by,bz)
  %6750 = call float @dx.op.unary.f32(i32 25, float %6749)  ; Rsqrt(value)
  %6751 = fmul fast float %6750, %6746
  %6752 = fmul fast float %6750, %6747
  %6753 = fmul fast float %6750, %6748
  %6754 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5851, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %6755 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %6751, float %6752, float %6753)  ; Dot3(ax,ay,az,bx,by,bz)
  %6756 = call float @dx.op.unary.f32(i32 7, float %6754)  ; Saturate(value)
  %6757 = fmul fast float %6756, %6756
  %6758 = fmul fast float %6757, %5476
  %6759 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6760 = fmul fast float %6759, %6756
  %6761 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %6751, float %6752, float %6753)  ; Dot3(ax,ay,az,bx,by,bz)
  %6762 = fmul fast float %6761, %6761
  %6763 = call float @dx.op.unary.f32(i32 6, float %6754)  ; FAbs(value)
  %6764 = fsub fast float 1.000000e+00, %5458
  %6765 = call float @dx.op.binary.f32(i32 35, float %6764, float 0x3F847AE140000000)  ; FMax(a,b)
  %6766 = fmul fast float %6765, %6765
  %6767 = fmul fast float %6766, %6766
  %6768 = fsub fast float 1.000000e+00, %6767
  %6769 = fmul fast float %5463, %5463
  %6770 = fmul fast float %6769, %6768
  %6771 = fadd fast float %6770, %6767
  %6772 = bitcast float %6771 to i32
  %6773 = ashr i32 %6772, 1
  %6774 = add nsw i32 %6773, 532487669
  %6775 = bitcast i32 %6774 to float
  %6776 = fadd fast float %6775, %5463
  %6777 = fmul fast float %6767, %6762
  %6778 = fsub fast float 1.000000e+00, %6762
  %6779 = fadd fast float %6778, %6777
  %6780 = fmul fast float %6763, %6763
  %6781 = fmul fast float %6780, %6768
  %6782 = fadd fast float %6781, %6767
  %6783 = bitcast float %6782 to i32
  %6784 = ashr i32 %6783, 1
  %6785 = add nsw i32 %6784, 532487669
  %6786 = bitcast i32 %6785 to float
  %6787 = fadd fast float %6786, %6763
  %6788 = fmul fast float %6779, %6779
  %6789 = fmul fast float %6788, %6776
  %6790 = fmul fast float %6789, %6787
  %6791 = fdiv fast float 0x3FF0A00000000000, %6790
  %6792 = fmul fast float %6791, %6767
  %6793 = fmul fast float %5711, 0x3FF9999980000000
  %6794 = fsub fast float 5.000000e+00, %6793
  %6795 = call float @dx.op.unary.f32(i32 6, float %6755)  ; FAbs(value)
  %6796 = fsub fast float 1.000000e+00, %6795
  %6797 = fmul fast float %5711, 0x41D9660740000000
  %6798 = fadd fast float %6797, 0xC1EFBF8940000000
  %6799 = bitcast float %6796 to i32
  %6800 = sitofp i32 %6799 to float
  %6801 = fmul fast float %6800, %6794
  %6802 = fadd fast float %6798, %6801
  %6803 = fptosi float %6802 to i32
  %6804 = bitcast i32 %6803 to float
  %6805 = fsub fast float 1.000000e+00, %5449
  %6806 = fsub fast float 1.000000e+00, %5450
  %6807 = fsub fast float 1.000000e+00, %5461
  %6808 = fmul fast float %6804, %6805
  %6809 = fmul fast float %6804, %6806
  %6810 = fmul fast float %6804, %6807
  %6811 = fadd fast float %6808, %5449
  %6812 = fadd fast float %6809, %5450
  %6813 = fadd fast float %6810, %5461
  br i1 %5734, label %6814, label %6837

; <label>:6814                                    ; preds = %6727
  %6815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4843, float %6795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6816 = extractvalue %dx.types.ResRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.ResRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.ResRet.f32 %6815, 2
  %6819 = fadd fast float %6816, -5.000000e-01
  %6820 = fadd fast float %6817, -5.000000e-01
  %6821 = fadd fast float %6818, -5.000000e-01
  %6822 = fmul fast float %5449, 4.000000e+00
  %6823 = fmul fast float %6822, %6805
  %6824 = fmul fast float %6823, %6819
  %6825 = fmul fast float %5450, 4.000000e+00
  %6826 = fmul fast float %6825, %6806
  %6827 = fmul fast float %6826, %6820
  %6828 = fmul fast float %5461, 4.000000e+00
  %6829 = fmul fast float %6828, %6807
  %6830 = fmul fast float %6829, %6821
  %6831 = fadd fast float %6824, %6811
  %6832 = fadd fast float %6827, %6812
  %6833 = fadd fast float %6830, %6813
  %6834 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6835 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6836 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  br label %6837

; <label>:6837                                    ; preds = %6814, %6727
  %6838 = phi float [ %6834, %6814 ], [ %6811, %6727 ]
  %6839 = phi float [ %6835, %6814 ], [ %6812, %6727 ]
  %6840 = phi float [ %6836, %6814 ], [ %6813, %6727 ]
  %6841 = fmul fast float %6754, 9.843750e-01
  %6842 = fadd fast float %6841, 7.812500e-03
  %6843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %6842, float %5715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6844 = extractvalue %dx.types.ResRet.f32 %6843, 0
  %6845 = extractvalue %dx.types.ResRet.f32 %6843, 1
  %6846 = extractvalue %dx.types.ResRet.f32 %6843, 2
  %6847 = extractvalue %dx.types.ResRet.f32 %6843, 3
  %6848 = fsub fast float %6846, %6844
  %6849 = fsub fast float %6847, %6845
  %6850 = fmul fast float %6848, %5721
  %6851 = fmul fast float %6849, %5721
  %6852 = fadd fast float %6850, %6844
  %6853 = fadd fast float %6851, %6845
  %6854 = fmul fast float %6852, %5449
  %6855 = fmul fast float %6852, %5450
  %6856 = fmul fast float %6852, %5461
  %6857 = fadd fast float %6854, %6853
  %6858 = fadd fast float %6855, %6853
  %6859 = fadd fast float %6856, %6853
  br i1 %5734, label %6860, label %6883

; <label>:6860                                    ; preds = %6837
  %6861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4843, float %6754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6862 = extractvalue %dx.types.ResRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.ResRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.ResRet.f32 %6861, 2
  %6865 = fadd fast float %6862, -5.000000e-01
  %6866 = fadd fast float %6863, -5.000000e-01
  %6867 = fadd fast float %6864, -5.000000e-01
  %6868 = fmul fast float %5449, 4.000000e+00
  %6869 = fmul fast float %6868, %6805
  %6870 = fmul fast float %6869, %6865
  %6871 = fmul fast float %5450, 4.000000e+00
  %6872 = fmul fast float %6871, %6806
  %6873 = fmul fast float %6872, %6866
  %6874 = fmul fast float %5461, 4.000000e+00
  %6875 = fmul fast float %6874, %6807
  %6876 = fmul fast float %6875, %6867
  %6877 = fadd fast float %6870, %6857
  %6878 = fadd fast float %6873, %6858
  %6879 = fadd fast float %6876, %6859
  %6880 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6881 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6882 = call float @dx.op.unary.f32(i32 7, float %6879)  ; Saturate(value)
  br label %6883

; <label>:6883                                    ; preds = %6860, %6837
  %6884 = phi float [ %6880, %6860 ], [ %6857, %6837 ]
  %6885 = phi float [ %6881, %6860 ], [ %6858, %6837 ]
  %6886 = phi float [ %6882, %6860 ], [ %6859, %6837 ]
  %6887 = call float @dx.op.binary.f32(i32 35, float %6885, float %6886)  ; FMax(a,b)
  %6888 = call float @dx.op.binary.f32(i32 35, float %6884, float %6887)  ; FMax(a,b)
  %6889 = fsub fast float 1.000000e+00, %6888
  %6890 = fmul fast float %6838, %6792
  %6891 = fmul fast float %6839, %6792
  %6892 = fmul fast float %6840, %6792
  %6893 = fsub fast float 1.000000e+00, %6755
  %6894 = bitcast float %6893 to i32
  %6895 = sitofp i32 %6894 to float
  %6896 = fmul fast float %6895, 5.000000e+00
  %6897 = fadd fast float %6896, 0xC1EFBF8940000000
  %6898 = fptosi float %6897 to i32
  %6899 = bitcast i32 %6898 to float
  %6900 = fmul fast float %6899, %4844
  %6901 = fmul fast float %6889, %6900
  %6902 = fmul fast float %6901, %5784
  %6903 = fmul fast float %6901, %5785
  %6904 = fmul fast float %6901, %5786
  %6905 = fadd fast float %6902, %6890
  %6906 = fadd fast float %6903, %6891
  %6907 = fadd fast float %6904, %6892
  %6908 = fmul fast float %6760, %6743
  %6909 = fmul fast float %6908, %6889
  %6910 = fmul fast float %6760, %6744
  %6911 = fmul fast float %6910, %6889
  %6912 = fmul fast float %6760, %6745
  %6913 = fmul fast float %6912, %6889
  %6914 = fmul fast float %6908, %6905
  %6915 = fmul fast float %6910, %6906
  %6916 = fmul fast float %6912, %6907
  %6917 = fadd fast float %6909, %5768
  %6918 = fmul fast float %6917, %4840
  %6919 = fadd fast float %6911, %5769
  %6920 = fmul fast float %6919, %4840
  %6921 = fadd fast float %6913, %5770
  %6922 = fmul fast float %6921, %4840
  %6923 = fadd fast float %6914, %5837
  %6924 = fmul fast float %6923, %4840
  %6925 = fadd fast float %6915, %5840
  %6926 = fmul fast float %6925, %4840
  %6927 = fadd fast float %6916, %5843
  %6928 = fmul fast float %6927, %4840
  br label %6929

; <label>:6929                                    ; preds = %6883, %6661, %5761
  %6930 = phi float [ %5838, %5761 ], [ %5838, %6661 ], [ %6924, %6883 ]
  %6931 = phi float [ %5841, %5761 ], [ %5841, %6661 ], [ %6926, %6883 ]
  %6932 = phi float [ %5844, %5761 ], [ %5844, %6661 ], [ %6928, %6883 ]
  %6933 = phi float [ %5833, %5761 ], [ %5833, %6661 ], [ %6918, %6883 ]
  %6934 = phi float [ %5834, %5761 ], [ %5834, %6661 ], [ %6920, %6883 ]
  %6935 = phi float [ %5835, %5761 ], [ %5835, %6661 ], [ %6922, %6883 ]
  %6936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.i32 %6936, 0
  %6938 = icmp eq i32 %6937, 0
  br i1 %6938, label %7571, label %6939

; <label>:6939                                    ; preds = %6929
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 3
  %6943 = fmul fast float %6941, %102
  %6944 = fmul fast float %6942, %103
  %6945 = fptoui float %6943 to i32
  %6946 = fptoui float %6944 to i32
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %6950 = extractvalue %dx.types.CBufRet.f32 %6947, 3
  %6951 = fadd fast float %93, -4.000000e+00
  %6952 = call float @dx.op.binary.f32(i32 35, float %6951, float 0.000000e+00)  ; FMax(a,b)
  %6953 = fadd fast float %6952, %6948
  %6954 = fmul fast float %6953, %6949
  %6955 = call float @dx.op.unary.f32(i32 23, float %6954)  ; Log(value)
  %6956 = fmul fast float %6955, %6950
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6959 = fmul fast float %6956, %6958
  %6960 = call float @dx.op.unary.f32(i32 7, float %6959)  ; Saturate(value)
  %6961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.i32 %6961, 1
  %6963 = add i32 %6962, -1
  %6964 = uitofp i32 %6962 to float
  %6965 = fmul fast float %6964, %6960
  %6966 = fptoui float %6965 to i32
  %6967 = call i32 @dx.op.binary.i32(i32 40, i32 %6966, i32 %6963)  ; UMin(a,b)
  %6968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6969 = extractvalue %dx.types.CBufRet.i32 %6968, 2
  %6970 = extractvalue %dx.types.CBufRet.i32 %6968, 3
  %6971 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6946, i32 %6969, i32 %6945)  ; UMad(a,b,c)
  %6972 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6967, i32 %6970, i32 %6971)  ; UMad(a,b,c)
  %6973 = add nsw i32 %6937, -1
  %6974 = call i32 @dx.op.binary.i32(i32 37, i32 %6973, i32 0)  ; IMax(a,b)
  %6975 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %6976 = fptoui float %6975 to i32
  %6977 = lshr i32 %6976, 5
  %6978 = call i32 @dx.op.binary.i32(i32 40, i32 %6977, i32 8191)  ; UMin(a,b)
  %6979 = shl i32 %6978, 2
  %6980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6979, i32 undef)  ; BufferLoad(srv,index,wot)
  %6981 = extractvalue %dx.types.ResRet.i32 %6980, 0
  %6982 = lshr i32 %6981, 16
  %6983 = and i32 %6981, 65535
  %6984 = lshr i32 %6981, 21
  %6985 = lshr i32 %6983, 5
  %6986 = call i32 @dx.op.binary.i32(i32 40, i32 %6985, i32 %6974)  ; UMin(a,b)
  %6987 = icmp ugt i32 %6984, %6986
  br i1 %6987, label %7571, label %6988

; <label>:6988                                    ; preds = %6939
  br label %6989

; <label>:6989                                    ; preds = %7561, %6988
  %6990 = phi i32 [ %7568, %7561 ], [ %6984, %6988 ]
  %6991 = phi float [ %7562, %7561 ], [ %6930, %6988 ]
  %6992 = phi float [ %7563, %7561 ], [ %6931, %6988 ]
  %6993 = phi float [ %7564, %7561 ], [ %6932, %6988 ]
  %6994 = phi float [ %7565, %7561 ], [ %6933, %6988 ]
  %6995 = phi float [ %7566, %7561 ], [ %6934, %6988 ]
  %6996 = phi float [ %7567, %7561 ], [ %6935, %6988 ]
  %6997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.i32 %6997, 0
  %6999 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6972, i32 %6998, i32 %6990)  ; UMad(a,b,c)
  %7000 = shl i32 %6999, 2
  %7001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7000, i32 undef)  ; BufferLoad(srv,index,wot)
  %7002 = extractvalue %dx.types.ResRet.i32 %7001, 0
  %7003 = shl i32 %6990, 5
  %7004 = sub nsw i32 %6982, %7003
  %7005 = call i32 @dx.op.binary.i32(i32 37, i32 %7004, i32 0)  ; IMax(a,b)
  %7006 = call i32 @dx.op.binary.i32(i32 38, i32 %7005, i32 31)  ; IMin(a,b)
  %7007 = sub nsw i32 1, %6982
  %7008 = add nsw i32 %7007, %6983
  %7009 = call i32 @dx.op.binary.i32(i32 37, i32 %7008, i32 0)  ; IMax(a,b)
  %7010 = call i32 @dx.op.binary.i32(i32 38, i32 %7009, i32 32)  ; IMin(a,b)
  %7011 = and i32 %7010, 31
  %7012 = shl i32 -1, %7011
  %7013 = xor i32 %7012, -1
  %7014 = and i32 %7006, 31
  %7015 = shl i32 %7013, %7014
  %7016 = icmp eq i32 %7010, 32
  %7017 = select i1 %7016, i32 -1, i32 %7015
  %7018 = and i32 %7017, %7002
  %7019 = icmp eq i32 %7018, 0
  br i1 %7019, label %7561, label %7020

; <label>:7020                                    ; preds = %6989
  br label %7021

; <label>:7021                                    ; preds = %7155, %7020
  %7022 = phi i32 [ %7033, %7155 ], [ %7018, %7020 ]
  %7023 = phi float [ %7156, %7155 ], [ %6991, %7020 ]
  %7024 = phi float [ %7157, %7155 ], [ %6992, %7020 ]
  %7025 = phi float [ %7158, %7155 ], [ %6993, %7020 ]
  %7026 = phi float [ %7159, %7155 ], [ %6994, %7020 ]
  %7027 = phi float [ %7160, %7155 ], [ %6995, %7020 ]
  %7028 = phi float [ %7161, %7155 ], [ %6996, %7020 ]
  %7029 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7022)  ; FirstbitLo(value)
  %7030 = add i32 %7029, %7003
  %7031 = and i32 %7029, 31
  %7032 = shl i32 1, %7031
  %7033 = xor i32 %7032, %7022
  %7034 = mul i32 %7030, 112
  %7035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7034, i32 undef)  ; BufferLoad(srv,index,wot)
  %7036 = extractvalue %dx.types.ResRet.f32 %7035, 0
  %7037 = extractvalue %dx.types.ResRet.f32 %7035, 1
  %7038 = extractvalue %dx.types.ResRet.f32 %7035, 2
  %7039 = or i32 %7034, 12
  %7040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7039, i32 undef)  ; BufferLoad(srv,index,wot)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = add i32 %7034, 16
  %7043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7042, i32 undef)  ; BufferLoad(srv,index,wot)
  %7044 = extractvalue %dx.types.ResRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.ResRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.ResRet.f32 %7043, 2
  %7047 = add i32 %7034, 28
  %7048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7047, i32 undef)  ; BufferLoad(srv,index,wot)
  %7049 = extractvalue %dx.types.ResRet.i32 %7048, 0
  %7050 = add i32 %7034, 44
  %7051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7050, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = add i32 %7034, 48
  %7054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7053, i32 undef)  ; BufferLoad(srv,index,wot)
  %7055 = extractvalue %dx.types.ResRet.f32 %7054, 0
  %7056 = extractvalue %dx.types.ResRet.f32 %7054, 1
  %7057 = extractvalue %dx.types.ResRet.f32 %7054, 2
  %7058 = extractvalue %dx.types.ResRet.f32 %7054, 3
  %7059 = add i32 %7034, 64
  %7060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7059, i32 undef)  ; BufferLoad(srv,index,wot)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.ResRet.f32 %7060, 2
  %7064 = extractvalue %dx.types.ResRet.f32 %7060, 3
  %7065 = add i32 %7034, 80
  %7066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7065, i32 undef)  ; BufferLoad(srv,index,wot)
  %7067 = extractvalue %dx.types.ResRet.f32 %7066, 1
  %7068 = extractvalue %dx.types.ResRet.f32 %7066, 2
  %7069 = add i32 %7034, 92
  %7070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7069, i32 undef)  ; BufferLoad(srv,index,wot)
  %7071 = extractvalue %dx.types.ResRet.i32 %7070, 0
  %7072 = call float @dx.op.dot3.f32(i32 55, float %7036, float %7037, float %7038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7073 = select i1 %223, float %7067, float %7036
  %7074 = select i1 %223, float %7072, float %7037
  %7075 = select i1 %223, float %7068, float %7038
  %7076 = and i32 %7071, 65535
  %7077 = uitofp i32 %7076 to float
  %7078 = lshr i32 %7071, 16
  %7079 = uitofp i32 %7078 to float
  %7080 = and i32 %7049, 65535
  %7081 = and i32 %7049, 50331648
  %7082 = icmp eq i32 %7081, 33554432
  %7083 = fsub fast float %7055, %161
  %7084 = fsub fast float %7056, %162
  %7085 = fsub fast float %7057, %163
  %7086 = call float @dx.op.dot3.f32(i32 55, float %7083, float %7084, float %7085, float %7083, float %7084, float %7085)  ; Dot3(ax,ay,az,bx,by,bz)
  %7087 = call float @dx.op.unary.f32(i32 24, float %7086)  ; Sqrt(value)
  %7088 = fdiv fast float 1.000000e+00, %7087
  %7089 = fmul fast float %7088, %7083
  %7090 = fmul fast float %7088, %7084
  %7091 = fmul fast float %7088, %7085
  %7092 = fadd fast float %7087, %7041
  %7093 = fdiv fast float 1.000000e+00, %7092
  %7094 = fmul float %7052, %7093
  %7095 = fmul float %7094, %7094
  %7096 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  br i1 %7082, label %7097, label %7118

; <label>:7097                                    ; preds = %7021
  %7098 = fmul fast float %7063, %7044
  %7099 = fmul fast float %7063, %7045
  %7100 = fmul fast float %7063, %7046
  %7101 = fadd fast float %7083, %7098
  %7102 = fadd fast float %7084, %7099
  %7103 = fadd fast float %7085, %7100
  %7104 = call float @dx.op.dot3.f32(i32 55, float %7101, float %7102, float %7103, float %7101, float %7102, float %7103)  ; Dot3(ax,ay,az,bx,by,bz)
  %7105 = call float @dx.op.unary.f32(i32 25, float %7104)  ; Rsqrt(value)
  %7106 = fmul fast float %7105, %7101
  %7107 = fmul fast float %7105, %7102
  %7108 = fmul fast float %7105, %7103
  %7109 = fsub fast float %161, %7055
  %7110 = fsub fast float %162, %7056
  %7111 = fsub fast float %163, %7057
  %7112 = fsub fast float -0.000000e+00, %7109
  %7113 = fsub fast float -0.000000e+00, %7110
  %7114 = fsub fast float -0.000000e+00, %7111
  %7115 = call float @dx.op.dot3.f32(i32 55, float %7112, float %7113, float %7114, float %7044, float %7045, float %7046)  ; Dot3(ax,ay,az,bx,by,bz)
  %7116 = fcmp fast ogt float %7115, 0.000000e+00
  %7117 = uitofp i1 %7116 to float
  br label %7118

; <label>:7118                                    ; preds = %7097, %7021
  %7119 = phi float [ %7117, %7097 ], [ 1.000000e+00, %7021 ]
  %7120 = phi float [ %7106, %7097 ], [ %7089, %7021 ]
  %7121 = phi float [ %7107, %7097 ], [ %7090, %7021 ]
  %7122 = phi float [ %7108, %7097 ], [ %7091, %7021 ]
  %7123 = call float @dx.op.dot3.f32(i32 55, float %7044, float %7045, float %7046, float %7120, float %7121, float %7122)  ; Dot3(ax,ay,az,bx,by,bz)
  %7124 = fmul fast float %7123, %7123
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = fsub fast float 1.000000e+00, %7125
  %7127 = fmul fast float %7126, 5.000000e-01
  %7128 = fcmp fast ogt float %7123, 0.000000e+00
  %7129 = fsub fast float 1.000000e+00, %7127
  %7130 = select i1 %7128, float %7127, float %7129
  %7131 = fmul fast float %7130, %7079
  %7132 = fadd fast float %7131, %7077
  %7133 = fmul fast float %7132, 0x3EF0001000000000
  %7134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %48, float %7133, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7135 = extractvalue %dx.types.ResRet.f32 %7134, 0
  %7136 = fmul fast float %7123, %7061
  %7137 = fadd fast float %7136, %7062
  %7138 = call float @dx.op.unary.f32(i32 7, float %7137)  ; Saturate(value)
  %7139 = select i1 %7082, float 1.000000e+00, float %7138
  %7140 = select i1 %7082, float %7138, float 1.000000e+00
  %7141 = fmul fast float %7087, %7058
  %7142 = fsub fast float 1.000000e+00, %7141
  %7143 = fmul fast float %7142, %7064
  %7144 = call float @dx.op.unary.f32(i32 7, float %7143)  ; Saturate(value)
  %7145 = fmul fast float %7144, %7140
  %7146 = fmul fast float %7145, 2.000000e+00
  %7147 = fsub fast float 3.000000e+00, %7146
  %7148 = fmul fast float %7135, %7119
  %7149 = fmul fast float %7145, %7145
  %7150 = fmul fast float %7149, %7148
  %7151 = fmul fast float %7150, %7147
  %7152 = call float @dx.op.binary.f32(i32 36, float %7151, float %7151)  ; FMin(a,b)
  %7153 = call float @dx.op.binary.f32(i32 36, float %7151, float %7152)  ; FMin(a,b)
  %7154 = fcmp fast ogt float %7153, 0.000000e+00
  br i1 %7154, label %7163, label %7155, !dx.controlflow.hints !119

; <label>:7155                                    ; preds = %7517, %7263, %7118
  %7156 = phi float [ %7023, %7263 ], [ %7023, %7118 ], [ %7557, %7517 ]
  %7157 = phi float [ %7024, %7263 ], [ %7024, %7118 ], [ %7558, %7517 ]
  %7158 = phi float [ %7025, %7263 ], [ %7025, %7118 ], [ %7559, %7517 ]
  %7159 = phi float [ %7026, %7263 ], [ %7026, %7118 ], [ %7551, %7517 ]
  %7160 = phi float [ %7027, %7263 ], [ %7027, %7118 ], [ %7552, %7517 ]
  %7161 = phi float [ %7028, %7263 ], [ %7028, %7118 ], [ %7553, %7517 ]
  %7162 = icmp eq i32 %7022, %7032
  br i1 %7162, label %7560, label %7021

; <label>:7163                                    ; preds = %7118
  %7164 = icmp eq i32 %7080, 255
  br i1 %7164, label %7263, label %7165, !dx.controlflow.hints !120

; <label>:7165                                    ; preds = %7163
  %7166 = mul nuw nsw i32 %7080, 176
  %7167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7166, i32 undef)  ; BufferLoad(srv,index,wot)
  %7168 = extractvalue %dx.types.ResRet.f32 %7167, 0
  %7169 = extractvalue %dx.types.ResRet.f32 %7167, 1
  %7170 = extractvalue %dx.types.ResRet.f32 %7167, 2
  %7171 = extractvalue %dx.types.ResRet.f32 %7167, 3
  %7172 = add nuw nsw i32 %7166, 16
  %7173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7172, i32 undef)  ; BufferLoad(srv,index,wot)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.ResRet.f32 %7173, 1
  %7176 = add nuw nsw i32 %7166, 32
  %7177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7176, i32 undef)  ; BufferLoad(srv,index,wot)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = extractvalue %dx.types.ResRet.f32 %7177, 1
  %7180 = extractvalue %dx.types.ResRet.f32 %7177, 2
  %7181 = add nuw nsw i32 %7166, 48
  %7182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7181, i32 undef)  ; BufferLoad(srv,index,wot)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = extractvalue %dx.types.ResRet.f32 %7182, 1
  %7185 = extractvalue %dx.types.ResRet.f32 %7182, 2
  %7186 = extractvalue %dx.types.ResRet.f32 %7182, 3
  %7187 = add nuw nsw i32 %7166, 64
  %7188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7187, i32 undef)  ; BufferLoad(srv,index,wot)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.ResRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.ResRet.f32 %7188, 2
  %7192 = extractvalue %dx.types.ResRet.f32 %7188, 3
  %7193 = add nuw nsw i32 %7166, 80
  %7194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7193, i32 undef)  ; BufferLoad(srv,index,wot)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.ResRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.ResRet.f32 %7194, 2
  %7198 = extractvalue %dx.types.ResRet.f32 %7194, 3
  %7199 = add nuw nsw i32 %7166, 96
  %7200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7199, i32 undef)  ; BufferLoad(srv,index,wot)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = extractvalue %dx.types.ResRet.f32 %7200, 1
  %7203 = extractvalue %dx.types.ResRet.f32 %7200, 2
  %7204 = extractvalue %dx.types.ResRet.f32 %7200, 3
  %7205 = bitcast float %7175 to i32
  %7206 = fmul fast float %7180, %111
  %7207 = fmul fast float %7180, %113
  %7208 = fmul fast float %7180, %115
  %7209 = fadd fast float %7206, %161
  %7210 = fadd fast float %7207, %162
  %7211 = fadd fast float %7208, %163
  %7212 = fmul fast float %7209, %7183
  %7213 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7189, float %7212)  ; FMad(a,b,c)
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7195, float %7213)  ; FMad(a,b,c)
  %7215 = fadd fast float %7214, %7201
  %7216 = fmul fast float %7209, %7184
  %7217 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7190, float %7216)  ; FMad(a,b,c)
  %7218 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7196, float %7217)  ; FMad(a,b,c)
  %7219 = fadd fast float %7218, %7202
  %7220 = fmul fast float %7209, %7185
  %7221 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7191, float %7220)  ; FMad(a,b,c)
  %7222 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7197, float %7221)  ; FMad(a,b,c)
  %7223 = fadd fast float %7222, %7203
  %7224 = fmul fast float %7209, %7186
  %7225 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7192, float %7224)  ; FMad(a,b,c)
  %7226 = call float @dx.op.tertiary.f32(i32 46, float %7211, float %7198, float %7225)  ; FMad(a,b,c)
  %7227 = fadd fast float %7226, %7204
  %7228 = fdiv fast float %7215, %7227
  %7229 = fdiv fast float %7219, %7227
  %7230 = fdiv fast float %7223, %7227
  %7231 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7230)  ; FMax(a,b)
  %7232 = fmul fast float %234, 0x401921FB60000000
  %7233 = call float @dx.op.unary.f32(i32 13, float %7232)  ; Sin(value)
  %7234 = call float @dx.op.unary.f32(i32 12, float %7232)  ; Cos(value)
  %7235 = fsub fast float -0.000000e+00, %7233
  %7236 = fmul fast float %7170, 5.000000e-01
  %7237 = call float @dx.op.dot2.f32(i32 54, float %234, float %234, float 0x40601B45E0000000, float 0x4019376BC0000000)  ; Dot2(ax,ay,bx,by)
  %7238 = call float @dx.op.unary.f32(i32 22, float %7237)  ; Frc(value)
  %7239 = fmul fast float %7238, 0x404A7DD040000000
  %7240 = call float @dx.op.unary.f32(i32 22, float %7239)  ; Frc(value)
  %7241 = fmul fast float %7240, %7179
  %7242 = fadd fast float %7241, %7236
  %7243 = call float @dx.op.tertiary.f32(i32 46, float %7242, float %7235, float 0.000000e+00)  ; FMad(a,b,c)
  %7244 = call float @dx.op.tertiary.f32(i32 46, float %7242, float %7234, float 0.000000e+00)  ; FMad(a,b,c)
  %7245 = fadd fast float %7243, %7228
  %7246 = fadd fast float %7244, %7229
  %7247 = fmul fast float %7245, %7174
  %7248 = fmul fast float %7246, %7174
  %7249 = call float @dx.op.binary.f32(i32 35, float %7247, float %7170)  ; FMax(a,b)
  %7250 = call float @dx.op.binary.f32(i32 35, float %7248, float %7170)  ; FMax(a,b)
  %7251 = call float @dx.op.binary.f32(i32 36, float %7249, float %7171)  ; FMin(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7250, float %7171)  ; FMin(a,b)
  %7253 = fadd fast float %7251, %7168
  %7254 = fadd fast float %7252, %7169
  %7255 = uitofp i32 %7205 to float
  %7256 = fadd fast float %7231, %7178
  %7257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %50, float %7253, float %7254, float %7255, float undef, i32 0, i32 0, i32 undef, float %7256)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7258 = extractvalue %dx.types.ResRet.f32 %7257, 0
  %7259 = fadd fast float %7258, -1.000000e+00
  %7260 = fmul fast float %7259, %7139
  %7261 = fadd fast float %7260, 1.000000e+00
  %7262 = fmul fast float %7261, %7151
  br label %7263

; <label>:7263                                    ; preds = %7165, %7163
  %7264 = phi float [ %7262, %7165 ], [ %7151, %7163 ]
  %7265 = call float @dx.op.binary.f32(i32 36, float %7264, float %7264)  ; FMin(a,b)
  %7266 = call float @dx.op.binary.f32(i32 36, float %7264, float %7265)  ; FMin(a,b)
  %7267 = fcmp fast ogt float %7266, 0.000000e+00
  br i1 %7267, label %7268, label %7155, !dx.controlflow.hints !121

; <label>:7268                                    ; preds = %7263
  %7269 = fmul fast float %7264, %7073
  %7270 = fmul fast float %7264, %7074
  %7271 = fmul fast float %7264, %7075
  %7272 = fsub fast float %7057, %5248
  %7273 = fcmp fast ogt float %7272, 0.000000e+00
  %7274 = fsub fast float %163, %5248
  %7275 = fcmp fast ogt float %7274, 0.000000e+00
  %7276 = xor i1 %7275, %7273
  %7277 = fsub fast float %5248, %7057
  %7278 = fmul fast float %7277, 2.000000e+00
  %7279 = fadd fast float %7278, %7057
  %7280 = select i1 %7276, float %7057, float %7279
  %7281 = fsub fast float %7280, %163
  %7282 = call float @dx.op.dot3.f32(i32 55, float %7083, float %7084, float %7281, float %7083, float %7084, float %7281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7283 = call float @dx.op.unary.f32(i32 25, float %7282)  ; Rsqrt(value)
  %7284 = fmul fast float %7283, %7083
  %7285 = fmul fast float %7283, %7084
  %7286 = fmul fast float %7283, %7281
  %7287 = fsub fast float %5248, %163
  %7288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7287)  ; Dot3(ax,ay,az,bx,by,bz)
  %7289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7284, float %7285, float %7286)  ; Dot3(ax,ay,az,bx,by,bz)
  %7290 = fdiv fast float 1.000000e+00, %7289
  %7291 = fmul fast float %7290, %7288
  %7292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7274, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = fcmp fast ogt float %7292, 0.000000e+00
  %7294 = fcmp fast olt float %7292, 0.000000e+00
  %7295 = zext i1 %7293 to i32
  %7296 = zext i1 %7294 to i32
  %7297 = sub nsw i32 %7295, %7296
  %7298 = sitofp i32 %7297 to float
  %7299 = fsub fast float %7280, %5248
  %7300 = call float @dx.op.dot3.f32(i32 55, float %7083, float %7084, float %7299, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7301 = fcmp fast ogt float %7300, 0.000000e+00
  %7302 = fcmp fast olt float %7300, 0.000000e+00
  %7303 = zext i1 %7301 to i32
  %7304 = zext i1 %7302 to i32
  %7305 = sub nsw i32 %7303, %7304
  %7306 = sitofp i32 %7305 to float
  %7307 = fcmp fast une float %7298, %7306
  br i1 %7307, label %7308, label %7318

; <label>:7308                                    ; preds = %7268
  %7309 = fmul fast float %7291, %7286
  %7310 = fmul fast float %7291, %7285
  %7311 = fmul fast float %7291, %7284
  %7312 = fmul fast float %7311, %7311
  %7313 = fmul fast float %7310, %7310
  %7314 = fadd fast float %7312, %7313
  %7315 = fmul fast float %7309, %7309
  %7316 = fadd fast float %7314, %7315
  %7317 = call float @dx.op.unary.f32(i32 24, float %7316)  ; Sqrt(value)
  br label %7330

; <label>:7318                                    ; preds = %7268
  %7319 = icmp slt i32 %7297, 0
  br i1 %7319, label %7320, label %7330

; <label>:7320                                    ; preds = %7318
  %7321 = fsub fast float %161, %7055
  %7322 = fsub fast float %162, %7056
  %7323 = fsub fast float %163, %7280
  %7324 = fmul fast float %7321, %7321
  %7325 = fmul fast float %7322, %7322
  %7326 = fadd fast float %7324, %7325
  %7327 = fmul fast float %7323, %7323
  %7328 = fadd fast float %7326, %7327
  %7329 = call float @dx.op.unary.f32(i32 24, float %7328)  ; Sqrt(value)
  br label %7330

; <label>:7330                                    ; preds = %7320, %7318, %7308
  %7331 = phi float [ %7317, %7308 ], [ %7329, %7320 ], [ 0.000000e+00, %7318 ]
  %7332 = and i1 %7275, %7273
  %7333 = fsub fast float -0.000000e+00, %7331
  %7334 = select i1 %7332, float -0.000000e+00, float %7333
  %7335 = fmul fast float %5249, 0x3FF7154760000000
  %7336 = fmul fast float %7335, %7334
  %7337 = fmul fast float %5250, 0x3FF7154760000000
  %7338 = fmul fast float %7337, %7334
  %7339 = fmul fast float %5251, 0x3FF7154760000000
  %7340 = fmul fast float %7339, %7334
  %7341 = call float @dx.op.unary.f32(i32 21, float %7336)  ; Exp(value)
  %7342 = call float @dx.op.unary.f32(i32 21, float %7338)  ; Exp(value)
  %7343 = call float @dx.op.unary.f32(i32 21, float %7340)  ; Exp(value)
  %7344 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7345 = call float @dx.op.unary.f32(i32 7, float %7342)  ; Saturate(value)
  %7346 = call float @dx.op.unary.f32(i32 7, float %7343)  ; Saturate(value)
  %7347 = fmul fast float %7269, %7344
  %7348 = fmul fast float %7270, %7345
  %7349 = fmul fast float %7271, %7346
  %7350 = fsub fast float %7089, %5448
  %7351 = fsub fast float %7090, %5447
  %7352 = fsub fast float %7091, %5446
  %7353 = call float @dx.op.dot3.f32(i32 55, float %7350, float %7351, float %7352, float %7350, float %7351, float %7352)  ; Dot3(ax,ay,az,bx,by,bz)
  %7354 = call float @dx.op.unary.f32(i32 25, float %7353)  ; Rsqrt(value)
  %7355 = fmul fast float %7354, %7350
  %7356 = fmul fast float %7354, %7351
  %7357 = fmul fast float %7354, %7352
  %7358 = call float @dx.op.dot3.f32(i32 55, float %7089, float %7090, float %7091, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %7359 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %7355, float %7356, float %7357)  ; Dot3(ax,ay,az,bx,by,bz)
  %7360 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  %7361 = fmul fast float %7360, %7096
  %7362 = fmul fast float %7360, %7360
  %7363 = fmul fast float %7362, %5476
  %7364 = call float @dx.op.unary.f32(i32 7, float %7363)  ; Saturate(value)
  %7365 = fmul fast float %7361, %7364
  %7366 = bitcast float %7086 to i32
  %7367 = ashr i32 %7366, 1
  %7368 = sub nsw i32 1597463007, %7367
  %7369 = bitcast i32 %7368 to float
  %7370 = fmul fast float %7369, %7083
  %7371 = fmul fast float %7369, %7084
  %7372 = fmul fast float %7369, %7085
  %7373 = fsub fast float %7370, %5448
  %7374 = fsub fast float %7371, %5447
  %7375 = fsub fast float %7372, %5446
  %7376 = call float @dx.op.dot3.f32(i32 55, float %7373, float %7374, float %7375, float %7373, float %7374, float %7375)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = call float @dx.op.unary.f32(i32 25, float %7376)  ; Rsqrt(value)
  %7378 = fmul fast float %7373, %7377
  %7379 = fmul fast float %7374, %7377
  %7380 = fmul fast float %7375, %7377
  %7381 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %7378, float %7379, float %7380)  ; Dot3(ax,ay,az,bx,by,bz)
  %7382 = fmul fast float %7381, %7381
  %7383 = call float @dx.op.unary.f32(i32 6, float %7358)  ; FAbs(value)
  %7384 = fsub fast float 1.000000e+00, %5458
  %7385 = call float @dx.op.binary.f32(i32 35, float %7384, float 0x3F847AE140000000)  ; FMax(a,b)
  %7386 = fmul fast float %7385, %7385
  %7387 = fmul fast float %7386, %7386
  %7388 = fsub fast float 1.000000e+00, %7387
  %7389 = fmul fast float %5463, %5463
  %7390 = fmul fast float %7389, %7388
  %7391 = fadd fast float %7390, %7387
  %7392 = bitcast float %7391 to i32
  %7393 = ashr i32 %7392, 1
  %7394 = add nsw i32 %7393, 532487669
  %7395 = bitcast i32 %7394 to float
  %7396 = fadd fast float %7395, %5463
  %7397 = fmul fast float %7387, %7382
  %7398 = fsub fast float 1.000000e+00, %7382
  %7399 = fadd fast float %7398, %7397
  %7400 = fmul fast float %7383, %7383
  %7401 = fmul fast float %7400, %7388
  %7402 = fadd fast float %7401, %7387
  %7403 = bitcast float %7402 to i32
  %7404 = ashr i32 %7403, 1
  %7405 = add nsw i32 %7404, 532487669
  %7406 = bitcast i32 %7405 to float
  %7407 = fadd fast float %7406, %7383
  %7408 = fmul fast float %7399, %7399
  %7409 = fmul fast float %7408, %7396
  %7410 = fmul fast float %7409, %7407
  %7411 = fdiv fast float 1.000000e+00, %7410
  %7412 = bitcast float %7387 to i32
  %7413 = sitofp i32 %7412 to float
  %7414 = fmul fast float %7413, 0x3FE7F73180000000
  %7415 = fadd fast float %7414, 0x41AFE27C40000000
  %7416 = fptosi float %7415 to i32
  %7417 = bitcast i32 %7416 to float
  %7418 = fmul fast float %7052, 0x3FD80E9D60000000
  %7419 = fmul fast float %7418, %7369
  %7420 = fadd fast float %7417, %7419
  %7421 = bitcast float %7420 to i32
  %7422 = sub nsw i32 2129859010, %7421
  %7423 = bitcast i32 %7422 to float
  %7424 = fmul fast float %7387, %7411
  %7425 = fmul fast float %7424, %7417
  %7426 = fmul fast float %7425, %7423
  %7427 = fmul fast float %5711, 0x3FF9999980000000
  %7428 = fsub fast float 5.000000e+00, %7427
  %7429 = call float @dx.op.unary.f32(i32 6, float %7359)  ; FAbs(value)
  %7430 = fsub fast float 1.000000e+00, %7429
  %7431 = fmul fast float %5711, 0x41D9660740000000
  %7432 = fadd fast float %7431, 0xC1EFBF8940000000
  %7433 = bitcast float %7430 to i32
  %7434 = sitofp i32 %7433 to float
  %7435 = fmul fast float %7434, %7428
  %7436 = fadd fast float %7432, %7435
  %7437 = fptosi float %7436 to i32
  %7438 = bitcast i32 %7437 to float
  %7439 = fsub fast float 1.000000e+00, %5449
  %7440 = fsub fast float 1.000000e+00, %5450
  %7441 = fsub fast float 1.000000e+00, %5461
  %7442 = fmul fast float %7438, %7439
  %7443 = fmul fast float %7438, %7440
  %7444 = fmul fast float %7438, %7441
  %7445 = fadd fast float %7442, %5449
  %7446 = fadd fast float %7443, %5450
  %7447 = fadd fast float %7444, %5461
  br i1 %5734, label %7448, label %7471

; <label>:7448                                    ; preds = %7330
  %7449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4843, float %7429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7450 = extractvalue %dx.types.ResRet.f32 %7449, 0
  %7451 = extractvalue %dx.types.ResRet.f32 %7449, 1
  %7452 = extractvalue %dx.types.ResRet.f32 %7449, 2
  %7453 = fadd fast float %7450, -5.000000e-01
  %7454 = fadd fast float %7451, -5.000000e-01
  %7455 = fadd fast float %7452, -5.000000e-01
  %7456 = fmul fast float %5449, 4.000000e+00
  %7457 = fmul fast float %7456, %7439
  %7458 = fmul fast float %7457, %7453
  %7459 = fmul fast float %5450, 4.000000e+00
  %7460 = fmul fast float %7459, %7440
  %7461 = fmul fast float %7460, %7454
  %7462 = fmul fast float %5461, 4.000000e+00
  %7463 = fmul fast float %7462, %7441
  %7464 = fmul fast float %7463, %7455
  %7465 = fadd fast float %7458, %7445
  %7466 = fadd fast float %7461, %7446
  %7467 = fadd fast float %7464, %7447
  %7468 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7469 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7470 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  br label %7471

; <label>:7471                                    ; preds = %7448, %7330
  %7472 = phi float [ %7468, %7448 ], [ %7445, %7330 ]
  %7473 = phi float [ %7469, %7448 ], [ %7446, %7330 ]
  %7474 = phi float [ %7470, %7448 ], [ %7447, %7330 ]
  %7475 = fmul fast float %7358, 9.843750e-01
  %7476 = fadd fast float %7475, 7.812500e-03
  %7477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %48, float %7476, float %5715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = extractvalue %dx.types.ResRet.f32 %7477, 1
  %7480 = extractvalue %dx.types.ResRet.f32 %7477, 2
  %7481 = extractvalue %dx.types.ResRet.f32 %7477, 3
  %7482 = fsub fast float %7480, %7478
  %7483 = fsub fast float %7481, %7479
  %7484 = fmul fast float %7482, %5721
  %7485 = fmul fast float %7483, %5721
  %7486 = fadd fast float %7484, %7478
  %7487 = fadd fast float %7485, %7479
  %7488 = fmul fast float %7486, %5449
  %7489 = fmul fast float %7486, %5450
  %7490 = fmul fast float %7486, %5461
  %7491 = fadd fast float %7488, %7487
  %7492 = fadd fast float %7489, %7487
  %7493 = fadd fast float %7490, %7487
  br i1 %5734, label %7494, label %7517

; <label>:7494                                    ; preds = %7471
  %7495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %48, float %4843, float %7358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.ResRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.ResRet.f32 %7495, 2
  %7499 = fadd fast float %7496, -5.000000e-01
  %7500 = fadd fast float %7497, -5.000000e-01
  %7501 = fadd fast float %7498, -5.000000e-01
  %7502 = fmul fast float %5449, 4.000000e+00
  %7503 = fmul fast float %7502, %7439
  %7504 = fmul fast float %7503, %7499
  %7505 = fmul fast float %5450, 4.000000e+00
  %7506 = fmul fast float %7505, %7440
  %7507 = fmul fast float %7506, %7500
  %7508 = fmul fast float %5461, 4.000000e+00
  %7509 = fmul fast float %7508, %7441
  %7510 = fmul fast float %7509, %7501
  %7511 = fadd fast float %7504, %7491
  %7512 = fadd fast float %7507, %7492
  %7513 = fadd fast float %7510, %7493
  %7514 = call float @dx.op.unary.f32(i32 7, float %7511)  ; Saturate(value)
  %7515 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7516 = call float @dx.op.unary.f32(i32 7, float %7513)  ; Saturate(value)
  br label %7517

; <label>:7517                                    ; preds = %7494, %7471
  %7518 = phi float [ %7514, %7494 ], [ %7491, %7471 ]
  %7519 = phi float [ %7515, %7494 ], [ %7492, %7471 ]
  %7520 = phi float [ %7516, %7494 ], [ %7493, %7471 ]
  %7521 = call float @dx.op.binary.f32(i32 35, float %7519, float %7520)  ; FMax(a,b)
  %7522 = call float @dx.op.binary.f32(i32 35, float %7518, float %7521)  ; FMax(a,b)
  %7523 = fsub fast float 1.000000e+00, %7522
  %7524 = fmul fast float %7472, %7426
  %7525 = fmul fast float %7473, %7426
  %7526 = fmul fast float %7474, %7426
  %7527 = fsub fast float 1.000000e+00, %7359
  %7528 = bitcast float %7527 to i32
  %7529 = sitofp i32 %7528 to float
  %7530 = fmul fast float %7529, 5.000000e+00
  %7531 = fadd fast float %7530, 0xC1EFBF8940000000
  %7532 = fptosi float %7531 to i32
  %7533 = bitcast i32 %7532 to float
  %7534 = fmul fast float %7533, %4844
  %7535 = fmul fast float %7523, %7534
  %7536 = fmul fast float %7535, %5784
  %7537 = fmul fast float %7535, %5785
  %7538 = fmul fast float %7535, %5786
  %7539 = fadd fast float %7536, %7524
  %7540 = fadd fast float %7537, %7525
  %7541 = fadd fast float %7538, %7526
  %7542 = fmul fast float %7347, %4840
  %7543 = fmul fast float %7542, %7365
  %7544 = fmul fast float %7543, %7523
  %7545 = fmul fast float %7348, %4840
  %7546 = fmul fast float %7545, %7365
  %7547 = fmul fast float %7546, %7523
  %7548 = fmul fast float %7349, %4840
  %7549 = fmul fast float %7548, %7365
  %7550 = fmul fast float %7549, %7523
  %7551 = fadd fast float %7544, %7026
  %7552 = fadd fast float %7547, %7027
  %7553 = fadd fast float %7550, %7028
  %7554 = fmul fast float %7543, %7539
  %7555 = fmul fast float %7546, %7540
  %7556 = fmul fast float %7549, %7541
  %7557 = fadd fast float %7554, %7023
  %7558 = fadd fast float %7555, %7024
  %7559 = fadd fast float %7556, %7025
  br label %7155

; <label>:7560                                    ; preds = %7155
  br label %7561

; <label>:7561                                    ; preds = %7560, %6989
  %7562 = phi float [ %6991, %6989 ], [ %7156, %7560 ]
  %7563 = phi float [ %6992, %6989 ], [ %7157, %7560 ]
  %7564 = phi float [ %6993, %6989 ], [ %7158, %7560 ]
  %7565 = phi float [ %6994, %6989 ], [ %7159, %7560 ]
  %7566 = phi float [ %6995, %6989 ], [ %7160, %7560 ]
  %7567 = phi float [ %6996, %6989 ], [ %7161, %7560 ]
  %7568 = add i32 %6990, 1
  %7569 = icmp ugt i32 %7568, %6986
  br i1 %7569, label %7570, label %6989

; <label>:7570                                    ; preds = %7561
  br label %7571

; <label>:7571                                    ; preds = %7570, %6939, %6929
  %7572 = phi float [ %6930, %6929 ], [ %6930, %6939 ], [ %7562, %7570 ]
  %7573 = phi float [ %6931, %6929 ], [ %6931, %6939 ], [ %7563, %7570 ]
  %7574 = phi float [ %6932, %6929 ], [ %6932, %6939 ], [ %7564, %7570 ]
  %7575 = phi float [ %6933, %6929 ], [ %6933, %6939 ], [ %7565, %7570 ]
  %7576 = phi float [ %6934, %6929 ], [ %6934, %6939 ], [ %7566, %7570 ]
  %7577 = phi float [ %6935, %6929 ], [ %6935, %6939 ], [ %7567, %7570 ]
  %7578 = fmul fast float %4840, %4840
  %7579 = fmul fast float %7578, %5810
  %7580 = fmul fast float %7578, %5811
  %7581 = fmul fast float %7578, %5812
  %7582 = fadd fast float %7579, 1.000000e+00
  %7583 = fadd fast float %7580, 1.000000e+00
  %7584 = fadd fast float %7581, 1.000000e+00
  %7585 = call float @dx.op.dot3.f32(i32 55, float %7582, float %7583, float %7584, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7586 = fsub fast float 1.000000e+00, %7585
  %7587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7588 = extractvalue %dx.types.CBufRet.f32 %7587, 0
  %7589 = fmul fast float %7588, %5816
  %7590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7591 = extractvalue %dx.types.CBufRet.f32 %7590, 3
  %7592 = fsub fast float 1.000000e+00, %4848
  %7593 = call float @dx.op.unary.f32(i32 7, float %7592)  ; Saturate(value)
  %7594 = fadd fast float %7577, %4846
  %7595 = fmul fast float %7594, %4848
  %7596 = fmul fast float %7593, %7591
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7599 = fmul fast float %7575, %5455
  %7600 = fmul fast float %7576, %5456
  %7601 = fmul fast float %7577, %5457
  %7602 = fcmp fast ogt float %93, %183
  %7603 = and i1 %7602, %5254
  %7604 = or i1 %5260, %7603
  %7605 = icmp eq i32 %5253, 2
  %7606 = fcmp fast ole float %93, %183
  %7607 = and i1 %7606, %7605
  %7608 = or i1 %7607, %7604
  br i1 %7603, label %7609, label %7866

; <label>:7609                                    ; preds = %7571
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %7612 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7613 = fmul fast float %7611, %102
  %7614 = fmul fast float %7612, %103
  %7615 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7616 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7617 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7615, float %7616, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.ResRet.f32 %7617, 3
  %7622 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %7615, float %7616, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.ResRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.ResRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.ResRet.f32 %7622, 3
  %7627 = call float @dx.op.binary.f32(i32 35, float %7619, float %7620)  ; FMax(a,b)
  %7628 = call float @dx.op.binary.f32(i32 35, float %7618, float %7627)  ; FMax(a,b)
  %7629 = call float @dx.op.binary.f32(i32 35, float %7628, float %7621)  ; FMax(a,b)
  %7630 = call float @dx.op.binary.f32(i32 36, float %7624, float %7625)  ; FMin(a,b)
  %7631 = call float @dx.op.binary.f32(i32 36, float %7623, float %7630)  ; FMin(a,b)
  %7632 = call float @dx.op.binary.f32(i32 36, float %7631, float %7626)  ; FMin(a,b)
  %7633 = fmul fast float %7629, 2.550000e+02
  %7634 = fadd fast float %7633, 0x3F70101020000000
  %7635 = fptoui float %7634 to i32
  %7636 = fmul fast float %7632, 2.550000e+02
  %7637 = fadd fast float %7636, 0x3F70101020000000
  %7638 = fptoui float %7637 to i32
  %7639 = icmp ult i32 %7635, %7638
  br i1 %7639, label %7640, label %7808

; <label>:7640                                    ; preds = %7609
  %7641 = fcmp fast ogt float %92, 9.843750e-01
  %7642 = fadd fast float %93, -4.000000e+00
  %7643 = select i1 %7641, float -4.000000e+00, float %7642
  %7644 = call float @dx.op.binary.f32(i32 35, float %7643, float 0.000000e+00)  ; FMax(a,b)
  %7645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7646 = extractvalue %dx.types.CBufRet.f32 %7645, 0
  %7647 = fadd fast float %7646, %7644
  %7648 = extractvalue %dx.types.CBufRet.f32 %7645, 2
  %7649 = fmul fast float %7647, %7648
  %7650 = call float @dx.op.unary.f32(i32 23, float %7649)  ; Log(value)
  %7651 = extractvalue %dx.types.CBufRet.f32 %7645, 3
  %7652 = fmul fast float %7651, %7650
  %7653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7653, 2
  %7655 = fmul fast float %7652, %7654
  %7656 = call float @dx.op.unary.f32(i32 7, float %7655)  ; Saturate(value)
  %7657 = uitofp i32 %7635 to float
  %7658 = uitofp i32 %7638 to float
  %7659 = fadd fast float %7657, 5.000000e-01
  %7660 = fadd fast float %7658, 5.000000e-01
  %7661 = fmul fast float %7654, %7659
  %7662 = fmul fast float %7654, %7660
  %7663 = fadd fast float %7661, 0x3F0FFB4800000000
  %7664 = fadd fast float %7662, 0xBF0FFB4800000000
  %7665 = call float @dx.op.binary.f32(i32 35, float %7656, float %7663)  ; FMax(a,b)
  %7666 = call float @dx.op.binary.f32(i32 36, float %7665, float %7664)  ; FMin(a,b)
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7667, 2
  %7670 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %7671 = fmul fast float %7668, %7666
  %7672 = fadd fast float %7670, %7671
  %7673 = fadd fast float %7670, %7669
  %7674 = fsub fast float %7668, %7669
  %7675 = fadd fast float %7674, %7670
  %7676 = call float @dx.op.binary.f32(i32 35, float %7672, float %7673)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 36, float %7676, float %7675)  ; FMin(a,b)
  %7678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %7615, float %7616, float %7677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.ResRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.ResRet.f32 %7678, 2
  %7682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.i32 %7682, 0
  %7684 = extractvalue %dx.types.CBufRet.i32 %7682, 1
  %7685 = uitofp i32 %7683 to float
  %7686 = uitofp i32 %7684 to float
  %7687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.f32 %7687, 1
  %7690 = fmul fast float %7685, %7615
  %7691 = fmul fast float %7686, %7616
  %7692 = fadd fast float %7690, -5.000000e-01
  %7693 = fadd fast float %7691, -5.000000e-01
  %7694 = call float @dx.op.unary.f32(i32 22, float %7692)  ; Frc(value)
  %7695 = call float @dx.op.unary.f32(i32 22, float %7693)  ; Frc(value)
  %7696 = fmul fast float %7694, %7694
  %7697 = fmul fast float %7696, %7694
  %7698 = fsub fast float 3.000000e+00, %7694
  %7699 = fmul fast float %7696, %7698
  %7700 = fmul fast float %7694, 3.000000e+00
  %7701 = fmul fast float %7697, 3.000000e+00
  %7702 = fmul fast float %7696, 6.000000e+00
  %7703 = fsub fast float %7701, %7702
  %7704 = fadd fast float %7703, 4.000000e+00
  %7705 = fmul fast float %7704, 0x3FC5555560000000
  %7706 = fmul fast float %7697, -3.000000e+00
  %7707 = fadd fast float %7696, %7694
  %7708 = fmul fast float %7707, 3.000000e+00
  %7709 = fadd fast float %7706, 1.000000e+00
  %7710 = fadd fast float %7709, %7708
  %7711 = fmul fast float %7697, 0x3FC5555560000000
  %7712 = fmul fast float %7695, %7695
  %7713 = fmul fast float %7712, %7695
  %7714 = fsub fast float 3.000000e+00, %7695
  %7715 = fmul fast float %7712, %7714
  %7716 = fmul fast float %7695, 3.000000e+00
  %7717 = fmul fast float %7713, 3.000000e+00
  %7718 = fmul fast float %7712, 6.000000e+00
  %7719 = fsub fast float %7717, %7718
  %7720 = fadd fast float %7719, 4.000000e+00
  %7721 = fmul fast float %7720, 0x3FC5555560000000
  %7722 = fmul fast float %7713, -3.000000e+00
  %7723 = fadd fast float %7712, %7695
  %7724 = fmul fast float %7723, 3.000000e+00
  %7725 = fadd fast float %7722, 1.000000e+00
  %7726 = fadd fast float %7725, %7724
  %7727 = fmul fast float %7713, 0x3FC5555560000000
  %7728 = fadd fast float %7694, 1.000000e+00
  %7729 = fsub fast float 1.000000e+00, %7700
  %7730 = fadd fast float %7729, %7699
  %7731 = fadd fast float %7730, %7704
  %7732 = fmul fast float %7731, 0x3FC5555560000000
  %7733 = fdiv fast float %7705, %7732
  %7734 = fsub fast float %7728, %7733
  %7735 = fsub fast float 1.000000e+00, %7694
  %7736 = fadd fast float %7710, %7697
  %7737 = fmul fast float %7736, 0x3FC5555560000000
  %7738 = fdiv fast float %7711, %7737
  %7739 = fadd fast float %7735, %7738
  %7740 = fadd fast float %7695, 1.000000e+00
  %7741 = fsub fast float 1.000000e+00, %7716
  %7742 = fadd fast float %7741, %7715
  %7743 = fadd fast float %7742, %7720
  %7744 = fmul fast float %7743, 0x3FC5555560000000
  %7745 = fdiv fast float %7721, %7744
  %7746 = fsub fast float %7740, %7745
  %7747 = fsub fast float 1.000000e+00, %7695
  %7748 = fadd fast float %7726, %7713
  %7749 = fmul fast float %7748, 0x3FC5555560000000
  %7750 = fdiv fast float %7727, %7749
  %7751 = fadd fast float %7750, %7747
  %7752 = fmul fast float %7734, %7688
  %7753 = fsub fast float %7615, %7752
  %7754 = fmul fast float %7739, %7688
  %7755 = fadd fast float %7754, %7615
  %7756 = fmul fast float %7751, %7689
  %7757 = fadd fast float %7756, %7616
  %7758 = fmul fast float %7746, %7689
  %7759 = fsub fast float %7616, %7758
  %7760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7753, float %7759, float %7677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.ResRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.ResRet.f32 %7760, 2
  %7764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7755, float %7759, float %7677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = extractvalue %dx.types.ResRet.f32 %7764, 1
  %7767 = extractvalue %dx.types.ResRet.f32 %7764, 2
  %7768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7753, float %7757, float %7677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7769 = extractvalue %dx.types.ResRet.f32 %7768, 0
  %7770 = extractvalue %dx.types.ResRet.f32 %7768, 1
  %7771 = extractvalue %dx.types.ResRet.f32 %7768, 2
  %7772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %7755, float %7757, float %7677, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 0
  %7774 = extractvalue %dx.types.ResRet.f32 %7772, 1
  %7775 = extractvalue %dx.types.ResRet.f32 %7772, 2
  %7776 = fsub fast float %7769, %7761
  %7777 = fsub fast float %7770, %7762
  %7778 = fsub fast float %7771, %7763
  %7779 = fmul fast float %7776, %7749
  %7780 = fmul fast float %7777, %7749
  %7781 = fmul fast float %7778, %7749
  %7782 = fadd fast float %7779, %7761
  %7783 = fadd fast float %7780, %7762
  %7784 = fadd fast float %7781, %7763
  %7785 = fsub fast float %7773, %7765
  %7786 = fsub fast float %7774, %7766
  %7787 = fsub fast float %7775, %7767
  %7788 = fmul fast float %7785, %7749
  %7789 = fmul fast float %7786, %7749
  %7790 = fmul fast float %7787, %7749
  %7791 = fsub fast float %7765, %7782
  %7792 = fadd fast float %7791, %7788
  %7793 = fsub fast float %7766, %7783
  %7794 = fadd fast float %7793, %7789
  %7795 = fsub fast float %7767, %7784
  %7796 = fadd fast float %7795, %7790
  %7797 = fmul fast float %7792, %7737
  %7798 = fmul fast float %7794, %7737
  %7799 = fmul fast float %7796, %7737
  %7800 = fadd fast float %7797, %7782
  %7801 = fadd fast float %7798, %7783
  %7802 = fadd fast float %7799, %7784
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 1
  %7805 = fmul fast float %7800, %7804
  %7806 = fmul fast float %7801, %7804
  %7807 = fmul fast float %7802, %7804
  br label %7808

; <label>:7808                                    ; preds = %7640, %7609
  %7809 = phi float [ %7679, %7640 ], [ 1.000000e+00, %7609 ]
  %7810 = phi float [ %7680, %7640 ], [ 1.000000e+00, %7609 ]
  %7811 = phi float [ %7681, %7640 ], [ 1.000000e+00, %7609 ]
  %7812 = phi float [ %7805, %7640 ], [ 0.000000e+00, %7609 ]
  %7813 = phi float [ %7806, %7640 ], [ 0.000000e+00, %7609 ]
  %7814 = phi float [ %7807, %7640 ], [ 0.000000e+00, %7609 ]
  %7815 = fmul fast float %7812, %7586
  %7816 = fmul fast float %7813, %7586
  %7817 = fmul fast float %7814, %7586
  %7818 = call float @dx.op.dot3.f32(i32 55, float %7809, float %7810, float %7811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7819 = call float @dx.op.dot3.f32(i32 55, float %7815, float %7816, float %7817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7820 = select i1 %223, float %7818, float %7809
  %7821 = select i1 %223, float %7818, float %7810
  %7822 = select i1 %223, float 1.000000e+00, float %7811
  %7823 = select i1 %223, float %7819, float %7815
  %7824 = select i1 %223, float 0.000000e+00, float %7816
  %7825 = select i1 %223, float 0.000000e+00, float %7817
  %7826 = fmul fast float %7820, %7599
  %7827 = fmul fast float %7821, %7600
  %7828 = fmul fast float %7822, %7601
  %7829 = fadd fast float %7826, %7823
  %7830 = fadd fast float %7827, %7824
  %7831 = fadd fast float %7825, %7828
  %7832 = fmul fast float %7820, %7572
  %7833 = fmul fast float %7821, %7573
  %7834 = fmul fast float %7822, %7574
  %7835 = fmul fast float %131, %7611
  %7836 = fmul fast float %133, %7612
  %7837 = fsub fast float 1.000000e+00, %7835
  %7838 = fsub fast float 1.000000e+00, %7836
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7842 = extractvalue %dx.types.CBufRet.f32 %7839, 2
  %7843 = fmul fast float %7837, %7840
  %7844 = fmul fast float %7837, %7841
  %7845 = fmul fast float %7837, %7842
  %7846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7847 = extractvalue %dx.types.CBufRet.f32 %7846, 0
  %7848 = extractvalue %dx.types.CBufRet.f32 %7846, 1
  %7849 = extractvalue %dx.types.CBufRet.f32 %7846, 2
  %7850 = fmul fast float %7838, %7847
  %7851 = fmul fast float %7838, %7848
  %7852 = fmul fast float %7838, %7849
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7857 = fadd fast float %7850, %7854
  %7858 = fadd fast float %7857, %7843
  %7859 = fadd fast float %7851, %7855
  %7860 = fadd fast float %7859, %7844
  %7861 = fadd fast float %7852, %7856
  %7862 = fadd fast float %7861, %7845
  %7863 = fmul fast float %7858, %183
  %7864 = fmul fast float %7860, %183
  %7865 = fmul fast float %7862, %183
  br label %7866

; <label>:7866                                    ; preds = %7808, %7571
  %7867 = phi float [ %7863, %7808 ], [ %161, %7571 ]
  %7868 = phi float [ %7864, %7808 ], [ %162, %7571 ]
  %7869 = phi float [ %7865, %7808 ], [ %163, %7571 ]
  %7870 = phi float [ %183, %7808 ], [ %93, %7571 ]
  %7871 = phi float [ %7829, %7808 ], [ %7599, %7571 ]
  %7872 = phi float [ %7830, %7808 ], [ %7600, %7571 ]
  %7873 = phi float [ %7831, %7808 ], [ %7601, %7571 ]
  %7874 = phi float [ %7832, %7808 ], [ %7572, %7571 ]
  %7875 = phi float [ %7833, %7808 ], [ %7573, %7571 ]
  %7876 = phi float [ %7834, %7808 ], [ %7574, %7571 ]
  %7877 = phi float [ %7809, %7808 ], [ 1.000000e+00, %7571 ]
  br i1 %7608, label %9032, label %7878

; <label>:7878                                    ; preds = %7866
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7879, 3
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 0
  %7886 = extractvalue %dx.types.CBufRet.f32 %7884, 1
  %7887 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7888 = extractvalue %dx.types.CBufRet.f32 %7884, 3
  %7889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7890 = extractvalue %dx.types.CBufRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.CBufRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.CBufRet.f32 %7889, 2
  %7893 = extractvalue %dx.types.CBufRet.f32 %7889, 3
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 0
  %7896 = extractvalue %dx.types.CBufRet.f32 %7894, 1
  %7897 = extractvalue %dx.types.CBufRet.f32 %7894, 2
  %7898 = extractvalue %dx.types.CBufRet.f32 %7894, 3
  %7899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7899, 3
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7905 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7906 = fcmp fast olt float %7905, -5.000000e-01
  %7907 = call float @dx.op.dot3.f32(i32 55, float %7867, float %7868, float %7869, float %7867, float %7868, float %7869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7908 = call float @dx.op.unary.f32(i32 25, float %7907)  ; Rsqrt(value)
  %7909 = fmul fast float %7908, %7907
  %7910 = fmul fast float %7908, %7867
  %7911 = fmul fast float %7908, %7868
  %7912 = fmul fast float %7908, %7869
  %7913 = fadd fast float %7909, %7883
  %7914 = call float @dx.op.dot3.f32(i32 55, float %7910, float %7911, float %7912, float %7880, float %7881, float %7882)  ; Dot3(ax,ay,az,bx,by,bz)
  %7915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.i32 %7915, 1
  %7917 = and i32 %7916, 1
  %7918 = icmp ne i32 %7917, 0
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7921 = fcmp fast ogt float %7920, 0.000000e+00
  %7922 = and i1 %7918, %7921
  br i1 %7922, label %7923, label %8329, !dx.controlflow.hints !122

; <label>:7923                                    ; preds = %7878
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 3
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7930 = fsub fast float %7927, %7929
  %7931 = and i32 %7916, 2
  %7932 = extractvalue %dx.types.CBufRet.i32 %7915, 0
  %7933 = call i32 @dx.op.binary.i32(i32 40, i32 %7932, i32 3)  ; UMin(a,b)
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7939 = fsub fast float %7935, %7937
  %7940 = fsub fast float %7936, %7938
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = fcmp fast ogt float %7942, 0.000000e+00
  %7944 = fsub fast float -0.000000e+00, %7939
  %7945 = fsub fast float -0.000000e+00, %7940
  %7946 = call float @dx.op.dot2.f32(i32 54, float %7910, float %7911, float %7910, float %7911)  ; Dot2(ax,ay,bx,by)
  %7947 = call float @dx.op.dot2.f32(i32 54, float %7910, float %7911, float %7944, float %7945)  ; Dot2(ax,ay,bx,by)
  %7948 = fmul fast float %7947, 2.000000e+00
  %7949 = call float @dx.op.dot2.f32(i32 54, float %7944, float %7945, float %7944, float %7945)  ; Dot2(ax,ay,bx,by)
  %7950 = fmul fast float %7942, %7942
  %7951 = fsub fast float %7949, %7950
  %7952 = fmul fast float %7948, %7948
  %7953 = fmul fast float %7946, 4.000000e+00
  %7954 = fmul fast float %7953, %7951
  %7955 = fsub fast float %7952, %7954
  %7956 = fcmp fast ogt float %7955, 0.000000e+00
  br i1 %7956, label %7957, label %7972

; <label>:7957                                    ; preds = %7923
  %7958 = fcmp fast ogt float %7948, 0.000000e+00
  %7959 = call float @dx.op.unary.f32(i32 24, float %7955)  ; Sqrt(value)
  %7960 = fsub fast float -0.000000e+00, %7959
  %7961 = select i1 %7958, float %7959, float %7960
  %7962 = fadd fast float %7961, %7948
  %7963 = fmul float %7962, -5.000000e-01
  %7964 = fdiv fast float %7963, %7946
  %7965 = call float @dx.op.binary.f32(i32 35, float %7964, float 0.000000e+00)  ; FMax(a,b)
  %7966 = call float @dx.op.binary.f32(i32 36, float %7909, float %7965)  ; FMin(a,b)
  %7967 = fdiv fast float %7951, %7963
  %7968 = call float @dx.op.binary.f32(i32 35, float %7967, float 0.000000e+00)  ; FMax(a,b)
  %7969 = call float @dx.op.binary.f32(i32 36, float %7909, float %7968)  ; FMin(a,b)
  %7970 = call float @dx.op.binary.f32(i32 36, float %7966, float %7969)  ; FMin(a,b)
  %7971 = call float @dx.op.binary.f32(i32 35, float %7966, float %7969)  ; FMax(a,b)
  br label %7972

; <label>:7972                                    ; preds = %7957, %7923
  %7973 = phi float [ %7971, %7957 ], [ -1.000000e+00, %7923 ]
  %7974 = phi float [ %7970, %7957 ], [ -1.000000e+00, %7923 ]
  %7975 = phi i1 [ true, %7957 ], [ false, %7923 ]
  %7976 = and i1 %7943, %7975
  br i1 %7976, label %7977, label %7979

; <label>:7977                                    ; preds = %7972
  %7978 = fcmp fast oeq float %7974, %7973
  br i1 %7978, label %8282, label %7980

; <label>:7979                                    ; preds = %7972
  br i1 %7943, label %8282, label %7980

; <label>:7980                                    ; preds = %7979, %7977
  %7981 = phi float [ %7909, %7979 ], [ %7973, %7977 ]
  %7982 = phi float [ 0.000000e+00, %7979 ], [ %7974, %7977 ]
  %7983 = icmp ne i32 %7931, 0
  %7984 = fmul fast float %7981, %7912
  %7985 = fadd fast float %7984, %7925
  %7986 = fmul fast float %7985, %7981
  %7987 = select i1 %7983, float 0.000000e+00, float %7986
  %7988 = fcmp fast oeq float %7912, 0.000000e+00
  %7989 = fdiv fast float %7930, %7912
  %7990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7989)  ; FMax(a,b)
  %7991 = select i1 %7988, float %7981, float %7990
  %7992 = call float @dx.op.binary.f32(i32 36, float %7981, float %7991)  ; FMin(a,b)
  %7993 = fcmp fast ogt float %7912, 0.000000e+00
  %7994 = fcmp fast olt float %7930, 0.000000e+00
  br i1 %7993, label %7995, label %8052

; <label>:7995                                    ; preds = %7980
  %7996 = icmp eq i32 %7931, 0
  br i1 %7994, label %7997, label %8041

; <label>:7997                                    ; preds = %7995
  %7998 = select i1 %7996, float %7981, float 0.000000e+00
  %7999 = fsub fast float -0.000000e+00, %7998
  %8000 = call float @dx.op.unary.f32(i32 6, float %7999)  ; FAbs(value)
  %8001 = fmul fast float %7998, %7912
  %8002 = fadd fast float %8001, %7925
  %8003 = fmul fast float %8000, %8002
  %8004 = fsub fast float %7987, %8003
  %8005 = fsub fast float %7981, %8000
  %8006 = select i1 %7996, float %8005, float 0.000000e+00
  %8007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8008 = extractvalue %dx.types.CBufRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.CBufRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.CBufRet.f32 %8007, 2
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = extractvalue %dx.types.CBufRet.f32 %8011, 1
  %8014 = extractvalue %dx.types.CBufRet.f32 %8011, 2
  %8015 = extractvalue %dx.types.CBufRet.f32 %8011, 3
  %8016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.f32 %8016, 3
  %8018 = call float @dx.op.binary.f32(i32 36, float %8004, float %8017)  ; FMin(a,b)
  %8019 = fmul fast float %8015, %8006
  %8020 = call float @dx.op.unary.f32(i32 7, float %8019)  ; Saturate(value)
  %8021 = fsub fast float %8012, %8008
  %8022 = fsub fast float %8013, %8009
  %8023 = fsub fast float %8014, %8010
  %8024 = fmul fast float %8020, %8021
  %8025 = fmul fast float %8020, %8022
  %8026 = fmul fast float %8020, %8023
  %8027 = fadd fast float %8024, %8008
  %8028 = fadd fast float %8025, %8009
  %8029 = fadd fast float %8026, %8010
  %8030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8031 = extractvalue %dx.types.CBufRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.CBufRet.f32 %8030, 1
  %8033 = fadd fast float %8032, %8031
  %8034 = call float @dx.op.unary.f32(i32 7, float %8033)  ; Saturate(value)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8030, 2
  %8036 = extractvalue %dx.types.CBufRet.f32 %8030, 3
  %8037 = fadd fast float %8036, %8035
  %8038 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8039 = fmul fast float %8034, %8018
  %8040 = fmul fast float %8039, %8038
  br label %8282

; <label>:8041                                    ; preds = %7995
  br i1 %7996, label %8042, label %8063

; <label>:8042                                    ; preds = %8041
  %8043 = call float @dx.op.binary.f32(i32 36, float %7992, float %7982)  ; FMin(a,b)
  %8044 = fsub fast float %7992, %8043
  %8045 = fsub fast float %8044, %7981
  %8046 = call float @dx.op.unary.f32(i32 6, float %8045)  ; FAbs(value)
  %8047 = fadd fast float %8044, %7981
  %8048 = fmul fast float %8047, %7912
  %8049 = fadd fast float %8048, %7925
  %8050 = fmul fast float %8049, %8046
  %8051 = fsub fast float %7987, %8050
  br label %8063

; <label>:8052                                    ; preds = %7980
  br i1 %7994, label %8053, label %8063

; <label>:8053                                    ; preds = %8052
  %8054 = call float @dx.op.binary.f32(i32 35, float %7982, float %7992)  ; FMax(a,b)
  %8055 = icmp eq i32 %7931, 0
  %8056 = select i1 %8055, float %7992, float 0.000000e+00
  %8057 = fsub fast float -0.000000e+00, %8056
  %8058 = call float @dx.op.unary.f32(i32 6, float %8057)  ; FAbs(value)
  %8059 = fmul fast float %8056, %7912
  %8060 = fadd fast float %8059, %7925
  %8061 = fmul fast float %8058, %8060
  %8062 = fsub fast float %7987, %8061
  br label %8063

; <label>:8063                                    ; preds = %8053, %8052, %8042, %8041
  %8064 = phi float [ %7982, %8041 ], [ %7982, %8042 ], [ %8054, %8053 ], [ %7982, %8052 ]
  %8065 = phi float [ 0.000000e+00, %8041 ], [ %8046, %8042 ], [ %8058, %8053 ], [ 0.000000e+00, %8052 ]
  %8066 = phi float [ %7987, %8041 ], [ %8051, %8042 ], [ %8062, %8053 ], [ %7987, %8052 ]
  %8067 = phi float [ %7992, %8041 ], [ %7992, %8042 ], [ %7981, %8053 ], [ %7981, %8052 ]
  %8068 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 0
  store float -1.000000e+00, float* %8068, align 4, !tbaa !123, !noalias !125
  %8069 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 1
  store float -1.000000e+00, float* %8069, align 4, !tbaa !123, !noalias !125
  %8070 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 2
  store float -1.000000e+00, float* %8070, align 4, !tbaa !123, !noalias !125
  %8071 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 0
  store float -1.000000e+00, float* %8071, align 4, !tbaa !123, !noalias !125
  %8072 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 1
  store float -1.000000e+00, float* %8072, align 4, !tbaa !123, !noalias !125
  %8073 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 2
  store float -1.000000e+00, float* %8073, align 4, !tbaa !123, !noalias !125
  %8074 = icmp sgt i32 %7933, 0
  br i1 %8074, label %8075, label %8136

; <label>:8075                                    ; preds = %8063
  br label %8076

; <label>:8076                                    ; preds = %8125, %8075
  %8077 = phi i32 [ %8126, %8125 ], [ 0, %8075 ]
  %8078 = phi i32 [ %8127, %8125 ], [ 0, %8075 ]
  %8079 = add nuw i32 %8078, 171
  %8080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 %8079)  ; CBufferLoadLegacy(handle,regIndex)
  %8081 = extractvalue %dx.types.CBufRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.CBufRet.f32 %8080, 1
  %8083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8084 = extractvalue %dx.types.CBufRet.f32 %8083, 0
  %8085 = extractvalue %dx.types.CBufRet.f32 %8083, 1
  %8086 = fsub fast float %8081, %8084
  %8087 = fsub fast float %8082, %8085
  %8088 = extractvalue %dx.types.CBufRet.f32 %8080, 2
  %8089 = fsub fast float -0.000000e+00, %8086
  %8090 = fsub fast float -0.000000e+00, %8087
  %8091 = call float @dx.op.dot2.f32(i32 54, float %7910, float %7911, float %8089, float %8090)  ; Dot2(ax,ay,bx,by)
  %8092 = fmul fast float %8091, 2.000000e+00
  %8093 = call float @dx.op.dot2.f32(i32 54, float %8089, float %8090, float %8089, float %8090)  ; Dot2(ax,ay,bx,by)
  %8094 = fmul fast float %8088, %8088
  %8095 = fsub fast float %8093, %8094
  %8096 = fmul fast float %8092, %8092
  %8097 = fmul fast float %7953, %8095
  %8098 = fsub fast float %8096, %8097
  %8099 = fcmp fast ogt float %8098, 0.000000e+00
  br i1 %8099, label %8100, label %8115

; <label>:8100                                    ; preds = %8076
  %8101 = fcmp fast ogt float %8092, 0.000000e+00
  %8102 = call float @dx.op.unary.f32(i32 24, float %8098)  ; Sqrt(value)
  %8103 = fsub fast float -0.000000e+00, %8102
  %8104 = select i1 %8101, float %8102, float %8103
  %8105 = fadd fast float %8104, %8092
  %8106 = fmul float %8105, -5.000000e-01
  %8107 = fdiv fast float %8106, %7946
  %8108 = call float @dx.op.binary.f32(i32 35, float %8107, float 0.000000e+00)  ; FMax(a,b)
  %8109 = call float @dx.op.binary.f32(i32 36, float %7981, float %8108)  ; FMin(a,b)
  %8110 = fdiv fast float %8095, %8106
  %8111 = call float @dx.op.binary.f32(i32 35, float %8110, float 0.000000e+00)  ; FMax(a,b)
  %8112 = call float @dx.op.binary.f32(i32 36, float %7981, float %8111)  ; FMin(a,b)
  %8113 = call float @dx.op.binary.f32(i32 36, float %8109, float %8112)  ; FMin(a,b)
  %8114 = call float @dx.op.binary.f32(i32 35, float %8109, float %8112)  ; FMax(a,b)
  br label %8115

; <label>:8115                                    ; preds = %8100, %8076
  %8116 = phi float [ %8114, %8100 ], [ -1.000000e+00, %8076 ]
  %8117 = phi float [ %8113, %8100 ], [ -1.000000e+00, %8076 ]
  %8118 = phi i1 [ true, %8100 ], [ false, %8076 ]
  br i1 %8118, label %8119, label %8125

; <label>:8119                                    ; preds = %8115
  %8120 = call float @dx.op.binary.f32(i32 35, float %8064, float %8117)  ; FMax(a,b)
  %8121 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8078
  store float %8120, float* %8121, align 4, !tbaa !123, !noalias !125
  %8122 = call float @dx.op.binary.f32(i32 35, float %8064, float %8116)  ; FMax(a,b)
  %8123 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8078
  store float %8122, float* %8123, align 4, !tbaa !123, !noalias !125
  %8124 = add nsw i32 %8077, 1
  br label %8125

; <label>:8125                                    ; preds = %8119, %8115
  %8126 = phi i32 [ %8124, %8119 ], [ %8077, %8115 ]
  %8127 = add nuw nsw i32 %8078, 1
  %8128 = icmp eq i32 %8127, %7933
  br i1 %8128, label %8129, label %8076

; <label>:8129                                    ; preds = %8125
  %8130 = load float, float* %8070, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8131 = load float, float* %8069, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  %8132 = load float, float* %8068, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  %8133 = load float, float* %8073, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8134 = load float, float* %8072, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  %8135 = load float, float* %8071, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  br label %8136

; <label>:8136                                    ; preds = %8129, %8063
  %8137 = phi float [ -1.000000e+00, %8063 ], [ %8135, %8129 ]
  %8138 = phi float [ -1.000000e+00, %8063 ], [ %8134, %8129 ]
  %8139 = phi float [ -1.000000e+00, %8063 ], [ %8133, %8129 ]
  %8140 = phi float [ -1.000000e+00, %8063 ], [ %8132, %8129 ]
  %8141 = phi float [ -1.000000e+00, %8063 ], [ %8131, %8129 ]
  %8142 = phi float [ -1.000000e+00, %8063 ], [ %8130, %8129 ]
  %8143 = phi i32 [ 0, %8063 ], [ %8126, %8129 ]
  %8144 = call float @dx.op.binary.f32(i32 36, float %8141, float %8142)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8140, float %8144)  ; FMin(a,b)
  %8146 = call float @dx.op.binary.f32(i32 35, float %8140, float %8141)  ; FMax(a,b)
  %8147 = call float @dx.op.binary.f32(i32 36, float %8146, float %8142)  ; FMin(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8140, float %8141)  ; FMin(a,b)
  %8149 = call float @dx.op.binary.f32(i32 35, float %8148, float %8147)  ; FMax(a,b)
  %8150 = call float @dx.op.binary.f32(i32 35, float %8141, float %8142)  ; FMax(a,b)
  %8151 = call float @dx.op.binary.f32(i32 35, float %8140, float %8150)  ; FMax(a,b)
  store float %8145, float* %8068, align 4, !tbaa !123, !alias.scope !149, !noalias !150
  store float %8149, float* %8069, align 4, !tbaa !123, !alias.scope !147, !noalias !148
  store float %8151, float* %8070, align 4, !tbaa !123, !alias.scope !141, !noalias !144
  %8152 = call float @dx.op.binary.f32(i32 36, float %8138, float %8139)  ; FMin(a,b)
  %8153 = call float @dx.op.binary.f32(i32 36, float %8137, float %8152)  ; FMin(a,b)
  %8154 = call float @dx.op.binary.f32(i32 35, float %8137, float %8138)  ; FMax(a,b)
  %8155 = call float @dx.op.binary.f32(i32 36, float %8154, float %8139)  ; FMin(a,b)
  %8156 = call float @dx.op.binary.f32(i32 36, float %8137, float %8138)  ; FMin(a,b)
  %8157 = call float @dx.op.binary.f32(i32 35, float %8156, float %8155)  ; FMax(a,b)
  %8158 = call float @dx.op.binary.f32(i32 35, float %8138, float %8139)  ; FMax(a,b)
  %8159 = call float @dx.op.binary.f32(i32 35, float %8137, float %8158)  ; FMax(a,b)
  store float %8153, float* %8071, align 4, !tbaa !123, !alias.scope !159, !noalias !160
  store float %8157, float* %8072, align 4, !tbaa !123, !alias.scope !157, !noalias !158
  store float %8159, float* %8073, align 4, !tbaa !123, !alias.scope !151, !noalias !154
  %8160 = sub nsw i32 3, %8143
  %8161 = icmp sgt i32 %8160, 2
  br i1 %8161, label %8162, label %8200

; <label>:8162                                    ; preds = %8136
  %8163 = icmp eq i32 %7931, 0
  %8164 = fsub fast float %7981, %8065
  %8165 = select i1 %8163, float %8164, float %8065
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.CBufRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.CBufRet.f32 %8170, 2
  %8174 = extractvalue %dx.types.CBufRet.f32 %8170, 3
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 3
  %8177 = call float @dx.op.binary.f32(i32 36, float %8066, float %8176)  ; FMin(a,b)
  %8178 = fmul fast float %8174, %8165
  %8179 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8180 = fsub fast float %8171, %8167
  %8181 = fsub fast float %8172, %8168
  %8182 = fsub fast float %8173, %8169
  %8183 = fmul fast float %8179, %8180
  %8184 = fmul fast float %8179, %8181
  %8185 = fmul fast float %8179, %8182
  %8186 = fadd fast float %8183, %8167
  %8187 = fadd fast float %8184, %8168
  %8188 = fadd fast float %8185, %8169
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8192 = fadd fast float %8191, %8190
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8195 = extractvalue %dx.types.CBufRet.f32 %8189, 3
  %8196 = fadd fast float %8195, %8194
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8198 = fmul fast float %8193, %8177
  %8199 = fmul fast float %8198, %8197
  br label %8282

; <label>:8200                                    ; preds = %8136
  %8201 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8160
  %8202 = load float, float* %8201, align 4, !tbaa !123, !noalias !125
  %8203 = fcmp fast olt float %8202, %8067
  %8204 = icmp sgt i32 %8143, 0
  %8205 = and i1 %8204, %8203
  br i1 %8205, label %8206, label %8243

; <label>:8206                                    ; preds = %8200
  br label %8207

; <label>:8207                                    ; preds = %8236, %8206
  %8208 = phi float [ %8237, %8236 ], [ %8065, %8206 ]
  %8209 = phi float [ %8238, %8236 ], [ %8066, %8206 ]
  %8210 = phi float [ %8218, %8236 ], [ %8202, %8206 ]
  %8211 = phi i32 [ %8215, %8236 ], [ %8160, %8206 ]
  %8212 = getelementptr inbounds [3 x float], [3 x float]* %97, i32 0, i32 %8211
  %8213 = load float, float* %8212, align 4, !tbaa !123, !noalias !125
  %8214 = icmp slt i32 %8211, 2
  %8215 = add nsw i32 %8211, 1
  %8216 = getelementptr inbounds [3 x float], [3 x float]* %96, i32 0, i32 %8215
  %8217 = load float, float* %8216, align 4, !tbaa !123, !noalias !125
  %8218 = select i1 %8214, float %8217, float %7981
  %8219 = call float @dx.op.binary.f32(i32 36, float %8218, float %8213)  ; FMin(a,b)
  %8220 = call float @dx.op.binary.f32(i32 36, float %8067, float %8219)  ; FMin(a,b)
  %8221 = icmp eq i32 %7931, 0
  %8222 = fadd fast float %8220, %8210
  %8223 = fmul fast float %8222, %7912
  %8224 = fadd fast float %8223, %7925
  br i1 %8221, label %8230, label %8225

; <label>:8225                                    ; preds = %8207
  %8226 = fsub fast float %8220, %8210
  %8227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8226)  ; FMax(a,b)
  %8228 = fmul fast float %8227, %8224
  %8229 = fadd fast float %8228, %8209
  br label %8236

; <label>:8230                                    ; preds = %8207
  %8231 = fsub fast float %8210, %8220
  %8232 = call float @dx.op.unary.f32(i32 6, float %8231)  ; FAbs(value)
  %8233 = fadd fast float %8232, %8208
  %8234 = fmul fast float %8232, %8224
  %8235 = fsub fast float %8209, %8234
  br label %8236

; <label>:8236                                    ; preds = %8230, %8225
  %8237 = phi float [ %8227, %8225 ], [ %8233, %8230 ]
  %8238 = phi float [ %8229, %8225 ], [ %8235, %8230 ]
  %8239 = fcmp fast olt float %8218, %8067
  %8240 = icmp slt i32 %8215, 3
  %8241 = and i1 %8240, %8239
  br i1 %8241, label %8207, label %8242

; <label>:8242                                    ; preds = %8236
  br label %8243

; <label>:8243                                    ; preds = %8242, %8200
  %8244 = phi float [ %8065, %8200 ], [ %8237, %8242 ]
  %8245 = phi float [ %8066, %8200 ], [ %8238, %8242 ]
  %8246 = fsub fast float %7981, %8244
  %8247 = select i1 %7983, float %8244, float %8246
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8256 = extractvalue %dx.types.CBufRet.f32 %8252, 3
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8259 = call float @dx.op.binary.f32(i32 36, float %8245, float %8258)  ; FMin(a,b)
  %8260 = fmul fast float %8256, %8247
  %8261 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8262 = fsub fast float %8253, %8249
  %8263 = fsub fast float %8254, %8250
  %8264 = fsub fast float %8255, %8251
  %8265 = fmul fast float %8261, %8262
  %8266 = fmul fast float %8261, %8263
  %8267 = fmul fast float %8261, %8264
  %8268 = fadd fast float %8265, %8249
  %8269 = fadd fast float %8266, %8250
  %8270 = fadd fast float %8267, %8251
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 0
  %8273 = extractvalue %dx.types.CBufRet.f32 %8271, 1
  %8274 = fadd fast float %8273, %8272
  %8275 = call float @dx.op.unary.f32(i32 7, float %8274)  ; Saturate(value)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8271, 2
  %8277 = extractvalue %dx.types.CBufRet.f32 %8271, 3
  %8278 = fadd fast float %8277, %8276
  %8279 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8280 = fmul fast float %8275, %8259
  %8281 = fmul fast float %8280, %8279
  br label %8282

; <label>:8282                                    ; preds = %8243, %8162, %7997, %7979, %7977
  %8283 = phi float [ %8006, %7997 ], [ %8165, %8162 ], [ %8247, %8243 ], [ 0.000000e+00, %7977 ], [ 0.000000e+00, %7979 ]
  %8284 = phi float [ %8040, %7997 ], [ %8199, %8162 ], [ %8281, %8243 ], [ 0.000000e+00, %7977 ], [ 0.000000e+00, %7979 ]
  %8285 = phi float [ %8027, %7997 ], [ %8186, %8162 ], [ %8268, %8243 ], [ 0.000000e+00, %7977 ], [ 0.000000e+00, %7979 ]
  %8286 = phi float [ %8028, %7997 ], [ %8187, %8162 ], [ %8269, %8243 ], [ 0.000000e+00, %7977 ], [ 0.000000e+00, %7979 ]
  %8287 = phi float [ %8029, %7997 ], [ %8188, %8162 ], [ %8270, %8243 ], [ 0.000000e+00, %7977 ], [ 0.000000e+00, %7979 ]
  %8288 = fmul fast float %7920, %8284
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8291 = fsub fast float %7927, %8290
  %8292 = fcmp fast olt float %8288, -2.000000e+01
  %8293 = call float @dx.op.unary.f32(i32 21, float %8288)  ; Exp(value)
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 2
  %8296 = extractvalue %dx.types.CBufRet.f32 %8294, 3
  %8297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8298 = extractvalue %dx.types.CBufRet.f32 %8297, 2
  %8299 = fmul fast float %8296, %8291
  %8300 = call float @dx.op.unary.f32(i32 7, float %8299)  ; Saturate(value)
  %8301 = fsub fast float 1.000000e+00, %8300
  %8302 = fmul fast float %7912, 5.000000e-01
  %8303 = fadd fast float %8302, 5.000000e-01
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8305 = fsub fast float 1.000000e+00, %8304
  %8306 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8301)  ; FMax(a,b)
  %8307 = fdiv fast float %8305, %8306
  %8308 = fsub fast float %8291, %7869
  %8309 = call float @dx.op.unary.f32(i32 6, float %8308)  ; FAbs(value)
  %8310 = fmul fast float %8309, %8295
  %8311 = call float @dx.op.unary.f32(i32 7, float %8307)  ; Saturate(value)
  %8312 = fsub fast float 1.000000e+00, %8310
  %8313 = fmul fast float %8312, %8311
  %8314 = fadd fast float %8313, %8310
  %8315 = fmul fast float %8298, %8291
  %8316 = call float @dx.op.unary.f32(i32 7, float %8315)  ; Saturate(value)
  %8317 = fsub fast float 1.000000e+00, %8314
  %8318 = fmul fast float %8317, %8316
  %8319 = fadd fast float %8318, %8314
  %8320 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  %8321 = fadd fast float %8293, -1.000000e+00
  %8322 = select i1 %8292, float -1.000000e+00, float %8321
  %8323 = fmul fast float %8320, %8322
  %8324 = fadd fast float %8323, 1.000000e+00
  %8325 = fsub fast float -0.000000e+00, %8323
  %8326 = fmul fast float %8285, %8325
  %8327 = fmul fast float %8286, %8325
  %8328 = fmul fast float %8287, %8325
  br label %8329

; <label>:8329                                    ; preds = %8282, %7878
  %8330 = phi float [ %8283, %8282 ], [ 0.000000e+00, %7878 ]
  %8331 = phi float [ %8324, %8282 ], [ 1.000000e+00, %7878 ]
  %8332 = phi float [ %8326, %8282 ], [ 0.000000e+00, %7878 ]
  %8333 = phi float [ %8327, %8282 ], [ 0.000000e+00, %7878 ]
  %8334 = phi float [ %8328, %8282 ], [ 0.000000e+00, %7878 ]
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 1
  %8337 = fsub fast float 1.000000e+00, %8331
  %8338 = fmul fast float %8337, %7913
  %8339 = fmul fast float %8338, %8336
  %8340 = fsub fast float %7913, %8339
  br i1 %7906, label %8341, label %8370, !dx.controlflow.hints !161

; <label>:8341                                    ; preds = %8329
  %8342 = fmul fast float %7914, %7903
  %8343 = fadd fast float %8342, %7904
  %8344 = call float @dx.op.unary.f32(i32 7, float %8343)  ; Saturate(value)
  %8345 = fmul fast float %7885, %8340
  %8346 = fsub fast float -0.000000e+00, %8345
  %8347 = fmul fast float %7886, %8340
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = call float @dx.op.unary.f32(i32 21, float %8346)  ; Exp(value)
  %8350 = call float @dx.op.unary.f32(i32 21, float %8348)  ; Exp(value)
  %8351 = call float @dx.op.binary.f32(i32 35, float %7893, float %8349)  ; FMax(a,b)
  %8352 = call float @dx.op.binary.f32(i32 35, float %7893, float %8350)  ; FMax(a,b)
  %8353 = fsub fast float %8352, %8351
  %8354 = fmul fast float %8353, %8344
  %8355 = fadd fast float %8354, %8351
  %8356 = call float @dx.op.unary.f32(i32 7, float %8355)  ; Saturate(value)
  %8357 = fsub fast float %7890, %7895
  %8358 = fsub fast float %7891, %7896
  %8359 = fsub fast float %7892, %7897
  %8360 = fmul fast float %8344, %8357
  %8361 = fmul fast float %8344, %8358
  %8362 = fmul fast float %8344, %8359
  %8363 = fadd fast float %8360, %7895
  %8364 = fadd fast float %8361, %7896
  %8365 = fadd fast float %8362, %7897
  %8366 = fsub fast float 1.000000e+00, %8356
  %8367 = fmul fast float %8366, %8363
  %8368 = fmul fast float %8366, %8364
  %8369 = fmul fast float %8366, %8365
  br label %8429

; <label>:8370                                    ; preds = %8329
  %8371 = fmul fast float %8340, %7902
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fsub fast float 2.000000e+00, %8372
  %8374 = fmul fast float %8372, 9.921875e-01
  %8375 = fmul fast float %8374, %8373
  %8376 = fadd fast float %8375, 3.906250e-03
  %8377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %48, float %8376, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8378 = extractvalue %dx.types.ResRet.f32 %8377, 0
  %8379 = fsub fast float %8372, %8378
  %8380 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8379)  ; FMax(a,b)
  %8381 = fmul fast float %7888, %7869
  %8382 = call float @dx.op.unary.f32(i32 6, float %8381)  ; FAbs(value)
  %8383 = fcmp fast ogt float %8382, 0x3EB0C6F7A0000000
  br i1 %8383, label %8384, label %8390, !dx.controlflow.hints !162

; <label>:8384                                    ; preds = %8370
  %8385 = fmul fast float %8381, 0xBFF7154760000000
  %8386 = call float @dx.op.unary.f32(i32 21, float %8385)  ; Exp(value)
  %8387 = fsub fast float 1.000000e+00, %8386
  %8388 = fdiv fast float %8387, %8381
  %8389 = fmul fast float %8388, %7898
  br label %8390

; <label>:8390                                    ; preds = %8384, %8370
  %8391 = phi float [ %8389, %8384 ], [ %7898, %8370 ]
  %8392 = fadd fast float %8391, %7900
  %8393 = fmul fast float %8392, %8380
  %8394 = fmul fast float %7885, %8393
  %8395 = fsub fast float -0.000000e+00, %8394
  %8396 = fmul fast float %7886, %8393
  %8397 = fsub fast float -0.000000e+00, %8396
  %8398 = fmul fast float %7887, %8393
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = call float @dx.op.unary.f32(i32 21, float %8395)  ; Exp(value)
  %8401 = call float @dx.op.unary.f32(i32 21, float %8397)  ; Exp(value)
  %8402 = call float @dx.op.unary.f32(i32 21, float %8399)  ; Exp(value)
  %8403 = fmul fast float %7914, %7914
  %8404 = fadd fast float %8403, 1.000000e+00
  %8405 = fmul fast float %8404, 0x3FAE8EC8A0000000
  %8406 = fmul fast float %8405, %7895
  %8407 = fmul fast float %8405, %7896
  %8408 = fmul fast float %8405, %7897
  %8409 = fmul fast float %7914, %7893
  %8410 = fsub fast float 1.000000e+00, %8409
  %8411 = fmul fast float %7893, %7893
  %8412 = fsub fast float 1.000000e+00, %8411
  %8413 = fmul fast float %8412, 0x3FB45F3060000000
  %8414 = fmul fast float %8410, %8410
  %8415 = fdiv fast float 1.000000e+00, %8414
  %8416 = fmul fast float %8413, %8415
  %8417 = fmul fast float %8416, %7890
  %8418 = fmul fast float %8416, %7891
  %8419 = fmul fast float %8416, %7892
  %8420 = fadd fast float %8417, %8406
  %8421 = fadd fast float %8418, %8407
  %8422 = fadd fast float %8419, %8408
  %8423 = fsub fast float 1.000000e+00, %8400
  %8424 = fsub fast float 1.000000e+00, %8401
  %8425 = fsub fast float 1.000000e+00, %8402
  %8426 = fmul fast float %8420, %8423
  %8427 = fmul fast float %8421, %8424
  %8428 = fmul fast float %8422, %8425
  br label %8429

; <label>:8429                                    ; preds = %8390, %8341
  %8430 = phi float [ %8367, %8341 ], [ %8426, %8390 ]
  %8431 = phi float [ %8368, %8341 ], [ %8427, %8390 ]
  %8432 = phi float [ %8369, %8341 ], [ %8428, %8390 ]
  %8433 = phi float [ %8356, %8341 ], [ %8400, %8390 ]
  %8434 = phi float [ %8356, %8341 ], [ %8401, %8390 ]
  %8435 = phi float [ %8356, %8341 ], [ %8402, %8390 ]
  br i1 %7922, label %8436, label %8634, !dx.controlflow.hints !163

; <label>:8436                                    ; preds = %8429
  %8437 = extractvalue %dx.types.CBufRet.f32 %8335, 0
  %8438 = fmul fast float %8437, %8337
  %8439 = fsub fast float %8332, %8430
  %8440 = fsub fast float %8333, %8431
  %8441 = fsub fast float %8334, %8432
  %8442 = fmul fast float %8438, %8439
  %8443 = fmul fast float %8438, %8440
  %8444 = fmul fast float %8438, %8441
  %8445 = fadd fast float %8442, %8430
  %8446 = fadd fast float %8443, %8431
  %8447 = fadd fast float %8444, %8432
  %8448 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8433)  ; FMax(a,b)
  %8449 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8434)  ; FMax(a,b)
  %8450 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8435)  ; FMax(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8331)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float %8330, float %8340)  ; FMax(a,b)
  %8453 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8452)  ; FMax(a,b)
  %8454 = fdiv fast float %8330, %8453
  %8455 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  %8456 = fdiv fast float %8340, %8453
  %8457 = call float @dx.op.unary.f32(i32 7, float %8456)  ; Saturate(value)
  %8458 = fcmp fast une float %8451, 1.000000e+00
  br i1 %8458, label %8459, label %8472, !dx.controlflow.hints !164

; <label>:8459                                    ; preds = %8436
  %8460 = call float @dx.op.unary.f32(i32 23, float %8451)  ; Log(value)
  %8461 = fmul fast float %8460, 0x3FE62E4300000000
  %8462 = fmul fast float %8332, %8461
  %8463 = fsub fast float -0.000000e+00, %8462
  %8464 = fmul fast float %8333, %8461
  %8465 = fsub fast float -0.000000e+00, %8464
  %8466 = fmul fast float %8334, %8461
  %8467 = fsub fast float -0.000000e+00, %8466
  %8468 = fsub fast float 1.000000e+00, %8451
  %8469 = fdiv fast float %8463, %8468
  %8470 = fdiv fast float %8465, %8468
  %8471 = fdiv fast float %8467, %8468
  br label %8472

; <label>:8472                                    ; preds = %8459, %8436
  %8473 = phi float [ %8469, %8459 ], [ %8332, %8436 ]
  %8474 = phi float [ %8470, %8459 ], [ %8333, %8436 ]
  %8475 = phi float [ %8471, %8459 ], [ %8334, %8436 ]
  %8476 = phi float [ %8461, %8459 ], [ 0.000000e+00, %8436 ]
  %8477 = fcmp fast une float %8448, 1.000000e+00
  br i1 %8477, label %8478, label %8485, !dx.controlflow.hints !165

; <label>:8478                                    ; preds = %8472
  %8479 = call float @dx.op.unary.f32(i32 23, float %8448)  ; Log(value)
  %8480 = fmul fast float %8479, 0x3FE62E4300000000
  %8481 = fmul fast float %8445, %8480
  %8482 = fsub fast float -0.000000e+00, %8481
  %8483 = fsub fast float 1.000000e+00, %8448
  %8484 = fdiv fast float %8482, %8483
  br label %8485

; <label>:8485                                    ; preds = %8478, %8472
  %8486 = phi float [ %8484, %8478 ], [ %8445, %8472 ]
  %8487 = phi float [ %8480, %8478 ], [ 0.000000e+00, %8472 ]
  %8488 = fcmp fast une float %8449, 1.000000e+00
  br i1 %8488, label %8489, label %8496, !dx.controlflow.hints !165

; <label>:8489                                    ; preds = %8485
  %8490 = call float @dx.op.unary.f32(i32 23, float %8449)  ; Log(value)
  %8491 = fmul fast float %8490, 0x3FE62E4300000000
  %8492 = fmul fast float %8446, %8491
  %8493 = fsub fast float -0.000000e+00, %8492
  %8494 = fsub fast float 1.000000e+00, %8449
  %8495 = fdiv fast float %8493, %8494
  br label %8496

; <label>:8496                                    ; preds = %8489, %8485
  %8497 = phi float [ %8495, %8489 ], [ %8446, %8485 ]
  %8498 = phi float [ %8491, %8489 ], [ 0.000000e+00, %8485 ]
  %8499 = fcmp fast une float %8450, 1.000000e+00
  br i1 %8499, label %8500, label %8507, !dx.controlflow.hints !165

; <label>:8500                                    ; preds = %8496
  %8501 = call float @dx.op.unary.f32(i32 23, float %8450)  ; Log(value)
  %8502 = fmul fast float %8501, 0x3FE62E4300000000
  %8503 = fmul fast float %8447, %8502
  %8504 = fsub fast float -0.000000e+00, %8503
  %8505 = fsub fast float 1.000000e+00, %8450
  %8506 = fdiv fast float %8504, %8505
  br label %8507

; <label>:8507                                    ; preds = %8500, %8496
  %8508 = phi float [ %8506, %8500 ], [ %8447, %8496 ]
  %8509 = phi float [ %8502, %8500 ], [ 0.000000e+00, %8496 ]
  %8510 = fmul fast float %8473, %8457
  %8511 = fmul fast float %8474, %8457
  %8512 = fmul fast float %8475, %8457
  %8513 = fmul fast float %8476, %8457
  %8514 = fmul fast float %8486, %8455
  %8515 = fmul fast float %8497, %8455
  %8516 = fmul fast float %8508, %8455
  %8517 = fmul fast float %8487, %8455
  %8518 = fmul fast float %8498, %8455
  %8519 = fmul fast float %8509, %8455
  %8520 = fadd fast float %8514, %8510
  %8521 = fadd fast float %8515, %8511
  %8522 = fadd fast float %8516, %8512
  %8523 = fadd fast float %8517, %8513
  %8524 = fadd fast float %8518, %8513
  %8525 = fadd fast float %8519, %8513
  %8526 = fcmp fast une float %8523, 0.000000e+00
  br i1 %8526, label %8527, label %8534, !dx.controlflow.hints !166

; <label>:8527                                    ; preds = %8507
  %8528 = fmul fast float %8523, 0x3FF7154760000000
  %8529 = call float @dx.op.unary.f32(i32 21, float %8528)  ; Exp(value)
  %8530 = fsub fast float 1.000000e+00, %8529
  %8531 = fmul fast float %8520, %8530
  %8532 = fsub fast float -0.000000e+00, %8531
  %8533 = fdiv fast float %8532, %8523
  br label %8534

; <label>:8534                                    ; preds = %8527, %8507
  %8535 = phi float [ %8529, %8527 ], [ 1.000000e+00, %8507 ]
  %8536 = phi float [ %8533, %8527 ], [ %8520, %8507 ]
  %8537 = fcmp fast une float %8524, 0.000000e+00
  br i1 %8537, label %8538, label %8545, !dx.controlflow.hints !166

; <label>:8538                                    ; preds = %8534
  %8539 = fmul fast float %8524, 0x3FF7154760000000
  %8540 = call float @dx.op.unary.f32(i32 21, float %8539)  ; Exp(value)
  %8541 = fsub fast float 1.000000e+00, %8540
  %8542 = fmul fast float %8521, %8541
  %8543 = fsub fast float -0.000000e+00, %8542
  %8544 = fdiv fast float %8543, %8524
  br label %8545

; <label>:8545                                    ; preds = %8538, %8534
  %8546 = phi float [ %8540, %8538 ], [ 1.000000e+00, %8534 ]
  %8547 = phi float [ %8544, %8538 ], [ %8521, %8534 ]
  %8548 = fcmp fast une float %8525, 0.000000e+00
  br i1 %8548, label %8549, label %8556, !dx.controlflow.hints !166

; <label>:8549                                    ; preds = %8545
  %8550 = fmul fast float %8525, 0x3FF7154760000000
  %8551 = call float @dx.op.unary.f32(i32 21, float %8550)  ; Exp(value)
  %8552 = fsub fast float 1.000000e+00, %8551
  %8553 = fmul fast float %8522, %8552
  %8554 = fsub fast float -0.000000e+00, %8553
  %8555 = fdiv fast float %8554, %8525
  br label %8556

; <label>:8556                                    ; preds = %8549, %8545
  %8557 = phi float [ %8551, %8549 ], [ 1.000000e+00, %8545 ]
  %8558 = phi float [ %8555, %8549 ], [ %8522, %8545 ]
  %8559 = fcmp fast ogt float %8455, %8457
  br i1 %8559, label %8560, label %8580

; <label>:8560                                    ; preds = %8556
  %8561 = fsub fast float 1.000000e+00, %8457
  %8562 = fmul fast float %8473, %8561
  %8563 = fmul fast float %8474, %8561
  %8564 = fmul fast float %8475, %8561
  %8565 = fmul fast float %8476, %8561
  %8566 = fcmp fast une float %8565, 0.000000e+00
  br i1 %8566, label %8567, label %8618, !dx.controlflow.hints !167

; <label>:8567                                    ; preds = %8560
  %8568 = fmul fast float %8565, 0x3FF7154760000000
  %8569 = call float @dx.op.unary.f32(i32 21, float %8568)  ; Exp(value)
  %8570 = fsub fast float 1.000000e+00, %8569
  %8571 = fmul fast float %8562, %8570
  %8572 = fsub fast float -0.000000e+00, %8571
  %8573 = fmul fast float %8563, %8570
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = fmul fast float %8564, %8570
  %8576 = fsub fast float -0.000000e+00, %8575
  %8577 = fdiv fast float %8572, %8565
  %8578 = fdiv fast float %8574, %8565
  %8579 = fdiv fast float %8576, %8565
  br label %8618

; <label>:8580                                    ; preds = %8556
  %8581 = fsub fast float 1.000000e+00, %8455
  %8582 = fmul fast float %8486, %8581
  %8583 = fmul fast float %8497, %8581
  %8584 = fmul fast float %8508, %8581
  %8585 = fmul fast float %8487, %8581
  %8586 = fmul fast float %8498, %8581
  %8587 = fmul fast float %8509, %8581
  %8588 = fcmp fast une float %8585, 0.000000e+00
  br i1 %8588, label %8589, label %8596, !dx.controlflow.hints !166

; <label>:8589                                    ; preds = %8580
  %8590 = fmul fast float %8585, 0x3FF7154760000000
  %8591 = call float @dx.op.unary.f32(i32 21, float %8590)  ; Exp(value)
  %8592 = fsub fast float 1.000000e+00, %8591
  %8593 = fmul fast float %8582, %8592
  %8594 = fsub fast float -0.000000e+00, %8593
  %8595 = fdiv fast float %8594, %8585
  br label %8596

; <label>:8596                                    ; preds = %8589, %8580
  %8597 = phi float [ %8595, %8589 ], [ %8582, %8580 ]
  %8598 = phi float [ %8591, %8589 ], [ 1.000000e+00, %8580 ]
  %8599 = fcmp fast une float %8586, 0.000000e+00
  br i1 %8599, label %8600, label %8607, !dx.controlflow.hints !166

; <label>:8600                                    ; preds = %8596
  %8601 = fmul fast float %8586, 0x3FF7154760000000
  %8602 = call float @dx.op.unary.f32(i32 21, float %8601)  ; Exp(value)
  %8603 = fsub fast float 1.000000e+00, %8602
  %8604 = fmul fast float %8583, %8603
  %8605 = fsub fast float -0.000000e+00, %8604
  %8606 = fdiv fast float %8605, %8586
  br label %8607

; <label>:8607                                    ; preds = %8600, %8596
  %8608 = phi float [ %8606, %8600 ], [ %8583, %8596 ]
  %8609 = phi float [ %8602, %8600 ], [ 1.000000e+00, %8596 ]
  %8610 = fcmp fast une float %8587, 0.000000e+00
  br i1 %8610, label %8611, label %8618, !dx.controlflow.hints !166

; <label>:8611                                    ; preds = %8607
  %8612 = fmul fast float %8587, 0x3FF7154760000000
  %8613 = call float @dx.op.unary.f32(i32 21, float %8612)  ; Exp(value)
  %8614 = fsub fast float 1.000000e+00, %8613
  %8615 = fmul fast float %8584, %8614
  %8616 = fsub fast float -0.000000e+00, %8615
  %8617 = fdiv fast float %8616, %8587
  br label %8618

; <label>:8618                                    ; preds = %8611, %8607, %8567, %8560
  %8619 = phi float [ %8617, %8611 ], [ %8579, %8567 ], [ %8564, %8560 ], [ %8584, %8607 ]
  %8620 = phi float [ %8608, %8611 ], [ %8578, %8567 ], [ %8563, %8560 ], [ %8608, %8607 ]
  %8621 = phi float [ %8597, %8611 ], [ %8577, %8567 ], [ %8562, %8560 ], [ %8597, %8607 ]
  %8622 = phi float [ %8613, %8611 ], [ %8569, %8567 ], [ 1.000000e+00, %8560 ], [ 1.000000e+00, %8607 ]
  %8623 = phi float [ %8609, %8611 ], [ %8569, %8567 ], [ 1.000000e+00, %8560 ], [ %8609, %8607 ]
  %8624 = phi float [ %8598, %8611 ], [ %8569, %8567 ], [ 1.000000e+00, %8560 ], [ %8598, %8607 ]
  %8625 = fmul fast float %8624, %8536
  %8626 = fmul fast float %8623, %8547
  %8627 = fmul fast float %8622, %8558
  %8628 = fadd fast float %8625, %8621
  %8629 = fadd fast float %8626, %8620
  %8630 = fadd fast float %8627, %8619
  %8631 = fmul fast float %8624, %8535
  %8632 = fmul fast float %8623, %8546
  %8633 = fmul fast float %8622, %8557
  br label %8634

; <label>:8634                                    ; preds = %8618, %8429
  %8635 = phi float [ %8633, %8618 ], [ %8435, %8429 ]
  %8636 = phi float [ %8632, %8618 ], [ %8434, %8429 ]
  %8637 = phi float [ %8631, %8618 ], [ %8433, %8429 ]
  %8638 = phi float [ %8630, %8618 ], [ %8432, %8429 ]
  %8639 = phi float [ %8629, %8618 ], [ %8431, %8429 ]
  %8640 = phi float [ %8628, %8618 ], [ %8430, %8429 ]
  %8641 = fmul fast float %8640, %7586
  %8642 = fmul fast float %8639, %7586
  %8643 = fmul fast float %8638, %7586
  %8644 = fmul fast float %8637, %7877
  %8645 = call float @dx.op.dot3.f32(i32 55, float %8637, float %8636, float %8635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = call float @dx.op.dot3.f32(i32 55, float %8641, float %8642, float %8643, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8647 = select i1 %223, float %8645, float %8637
  %8648 = select i1 %223, float %8645, float %8636
  %8649 = select i1 %223, float 1.000000e+00, float %8635
  %8650 = select i1 %223, float %8646, float %8641
  %8651 = select i1 %223, float 0.000000e+00, float %8642
  %8652 = select i1 %223, float 0.000000e+00, float %8643
  %8653 = fmul fast float %8647, %7871
  %8654 = fmul fast float %8648, %7872
  %8655 = fmul fast float %8649, %7873
  %8656 = fadd fast float %8653, %8650
  %8657 = fadd fast float %8654, %8651
  %8658 = fadd fast float %8652, %8655
  %8659 = fmul fast float %8647, %7874
  %8660 = fmul fast float %8648, %7875
  %8661 = fmul fast float %8649, %7876
  %8662 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.i32 %8662, 0
  %8664 = icmp eq i32 %8663, 0
  br i1 %8664, label %9032, label %8665, !dx.controlflow.hints !168

; <label>:8665                                    ; preds = %8634
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 2
  %8668 = extractvalue %dx.types.CBufRet.f32 %8666, 3
  %8669 = fmul fast float %8667, %102
  %8670 = fmul fast float %8668, %103
  %8671 = fmul fast float %8669, 2.000000e+00
  %8672 = fmul fast float %8670, 2.000000e+00
  %8673 = fsub fast float 1.000000e+00, %8671
  %8674 = fsub fast float 1.000000e+00, %8672
  %8675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8676 = extractvalue %dx.types.CBufRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.CBufRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.CBufRet.f32 %8675, 2
  %8679 = fmul fast float %8673, %8676
  %8680 = fmul fast float %8673, %8677
  %8681 = fmul fast float %8673, %8678
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 0
  %8684 = extractvalue %dx.types.CBufRet.f32 %8682, 1
  %8685 = extractvalue %dx.types.CBufRet.f32 %8682, 2
  %8686 = fmul fast float %8674, %8683
  %8687 = fmul fast float %8674, %8684
  %8688 = fmul fast float %8674, %8685
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8691 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8692 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8693 = fadd fast float %8686, %8690
  %8694 = fadd fast float %8693, %8679
  %8695 = fadd fast float %8687, %8691
  %8696 = fadd fast float %8695, %8680
  %8697 = fadd fast float %8688, %8692
  %8698 = fadd fast float %8697, %8681
  %8699 = fmul fast float %8694, %7870
  %8700 = fmul fast float %8696, %7870
  %8701 = fmul fast float %8698, %7870
  %8702 = fmul fast float %8699, %8699
  %8703 = fmul fast float %8700, %8700
  %8704 = fadd fast float %8702, %8703
  %8705 = fmul fast float %8701, %8701
  %8706 = fadd fast float %8704, %8705
  %8707 = call float @dx.op.unary.f32(i32 24, float %8706)  ; Sqrt(value)
  %8708 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %8709 = fsub fast float %8707, %8708
  %8710 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %8711 = fmul fast float %8709, %8710
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fadd fast float %8712, -5.000000e-01
  %8714 = fmul fast float %8713, 2.000000e+00
  %8715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.f32 %8715, 2
  %8717 = call float @dx.op.binary.f32(i32 36, float %8716, float %8714)  ; FMin(a,b)
  %8718 = fsub fast float -0.000000e+00, %8716
  %8719 = fcmp fast ogt float %8717, %8718
  br i1 %8719, label %8720, label %9032, !dx.controlflow.hints !169

; <label>:8720                                    ; preds = %8665
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 3
  %8723 = fcmp fast ogt float %8722, 0.000000e+00
  br i1 %8723, label %8724, label %8799, !dx.controlflow.hints !170

; <label>:8724                                    ; preds = %8720
  %8725 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %34, i32 0)  ; GetDimensions(handle,mipLevel)
  %8726 = extractvalue %dx.types.Dimensions %8725, 0
  %8727 = sitofp i32 %8726 to float
  %8728 = extractvalue %dx.types.Dimensions %8725, 1
  %8729 = sitofp i32 %8728 to float
  %8730 = fmul fast float %8669, %8727
  %8731 = fmul fast float %8670, %8729
  %8732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8733 = extractvalue %dx.types.CBufRet.f32 %8732, 1
  %8734 = fsub fast float -0.000000e+00, %8733
  %8735 = fptoui float %8734 to i32
  %8736 = fptoui float %8730 to i32
  %8737 = fptoui float %8731 to i32
  %8738 = and i32 %8735, 31
  %8739 = lshr i32 %8736, %8738
  %8740 = lshr i32 %8737, %8738
  %8741 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 %8735, i32 %8739, i32 %8740, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8742 = extractvalue %dx.types.ResRet.f32 %8741, 0
  %8743 = fcmp fast olt float %8742, -1.000000e+00
  %8744 = fcmp fast ogt float %8742, -1.000000e+00
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 1
  %8747 = select i1 %8744, float %8746, float 1.000000e+00
  %8748 = fadd fast float %8742, 1.000000e+00
  %8749 = fmul fast float %8747, %8748
  %8750 = call float @dx.op.unary.f32(i32 6, float %8749)  ; FAbs(value)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8745, 3
  %8752 = fcmp fast oge float %8750, %8751
  %8753 = select i1 %8752, float 0x4197782600000000, float %8750
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 0
  %8756 = extractvalue %dx.types.CBufRet.f32 %8754, 1
  %8757 = extractvalue %dx.types.CBufRet.f32 %8754, 2
  %8758 = select i1 %8743, float %8755, float %8676
  %8759 = select i1 %8743, float %8756, float %8677
  %8760 = select i1 %8743, float %8757, float %8678
  %8761 = fmul fast float %8758, %8673
  %8762 = fmul fast float %8759, %8673
  %8763 = fmul fast float %8760, %8673
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8764, 2
  %8768 = select i1 %8743, float %8765, float %8683
  %8769 = select i1 %8743, float %8766, float %8684
  %8770 = select i1 %8743, float %8767, float %8685
  %8771 = fmul fast float %8768, %8674
  %8772 = fmul fast float %8769, %8674
  %8773 = fmul fast float %8770, %8674
  %8774 = fadd fast float %8771, %8761
  %8775 = fadd fast float %8772, %8762
  %8776 = fadd fast float %8773, %8763
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 0
  %8779 = extractvalue %dx.types.CBufRet.f32 %8777, 1
  %8780 = extractvalue %dx.types.CBufRet.f32 %8777, 2
  %8781 = select i1 %8743, float %8778, float %8690
  %8782 = select i1 %8743, float %8779, float %8691
  %8783 = select i1 %8743, float %8780, float %8692
  %8784 = fadd fast float %8774, %8781
  %8785 = fadd fast float %8775, %8782
  %8786 = fadd fast float %8776, %8783
  %8787 = fmul fast float %8784, %8753
  %8788 = fmul fast float %8785, %8753
  %8789 = fmul fast float %8786, %8753
  %8790 = fmul fast float %8787, %8787
  %8791 = fmul fast float %8788, %8788
  %8792 = fadd fast float %8790, %8791
  %8793 = fmul fast float %8789, %8789
  %8794 = fadd fast float %8792, %8793
  %8795 = call float @dx.op.unary.f32(i32 24, float %8794)  ; Sqrt(value)
  %8796 = fsub fast float %8795, %8708
  %8797 = fmul fast float %8796, %8710
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  br label %8799

; <label>:8799                                    ; preds = %8724, %8720
  %8800 = phi float [ %8798, %8724 ], [ 1.000000e+00, %8720 ]
  %8801 = fmul fast float %8717, 5.000000e-01
  %8802 = fadd fast float %8801, 5.000000e-01
  %8803 = call float @dx.op.unary.f32(i32 22, float %8802)  ; Frc(value)
  %8804 = call float @dx.op.unary.f32(i32 27, float %8803)  ; Round_ni(value)
  %8805 = call float @dx.op.unary.f32(i32 22, float %8803)  ; Frc(value)
  %8806 = fmul fast float %8805, 2.000000e+00
  %8807 = fadd fast float %8806, -1.000000e+00
  %8808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %48, float %8669, float %8670, float %8804, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8809 = extractvalue %dx.types.ResRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.ResRet.f32 %8808, 1
  %8811 = extractvalue %dx.types.ResRet.f32 %8808, 2
  %8812 = extractvalue %dx.types.ResRet.f32 %8808, 3
  %8813 = fadd fast float %8809, -5.000000e-01
  %8814 = fadd fast float %8811, -5.000000e-01
  %8815 = fmul fast float %8813, 0xBFD5555560000000
  %8816 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8814, float %8815)  ; FMad(a,b,c)
  %8817 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8810, float 0.000000e+00)  ; FMad(a,b,c)
  %8818 = fadd fast float %8817, %8812
  %8819 = fmul fast float %8813, -7.500000e-01
  %8820 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8814, float %8819)  ; FMad(a,b,c)
  %8821 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8810, float 0.000000e+00)  ; FMad(a,b,c)
  %8822 = fadd fast float %8821, %8812
  %8823 = call float @dx.op.binary.f32(i32 35, float %8816, float -1.000000e+00)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 35, float %8818, float -1.000000e+00)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 35, float %8820, float -1.000000e+00)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 35, float %8822, float -1.000000e+00)  ; FMax(a,b)
  %8827 = call float @dx.op.binary.f32(i32 36, float %8823, float 1.000000e+00)  ; FMin(a,b)
  %8828 = call float @dx.op.binary.f32(i32 36, float %8824, float 1.000000e+00)  ; FMin(a,b)
  %8829 = call float @dx.op.binary.f32(i32 36, float %8825, float 1.000000e+00)  ; FMin(a,b)
  %8830 = call float @dx.op.binary.f32(i32 36, float %8826, float 1.000000e+00)  ; FMin(a,b)
  %8831 = fcmp fast olt float %8827, 0x3FEFFF8020000000
  br i1 %8831, label %8832, label %8947, !dx.controlflow.hints !171

; <label>:8832                                    ; preds = %8799
  %8833 = extractvalue %dx.types.CBufRet.f32 %8715, 3
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8838 = extractvalue %dx.types.CBufRet.f32 %8834, 3
  %8839 = fsub fast float %8835, %8827
  %8840 = fsub fast float %8836, %8828
  %8841 = fsub fast float %8837, %8829
  %8842 = fsub fast float %8838, %8830
  %8843 = fmul fast float %8839, %8833
  %8844 = fmul fast float %8840, %8833
  %8845 = fmul fast float %8841, %8833
  %8846 = fmul fast float %8842, %8833
  %8847 = fadd fast float %8843, %8827
  %8848 = fadd fast float %8844, %8828
  %8849 = fsub fast float -0.000000e+00, %8848
  %8850 = fadd fast float %8845, %8829
  %8851 = fadd fast float %8846, %8830
  %8852 = fmul fast float %8847, %8847
  %8853 = fsub fast float %8848, %8852
  %8854 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8853)  ; FMax(a,b)
  %8855 = fdiv fast float 1.000000e+00, %8854
  %8856 = fmul fast float %8848, %8847
  %8857 = fsub fast float %8850, %8856
  %8858 = fsub fast float %8807, %8847
  %8859 = fmul fast float %8807, %8807
  %8860 = fsub fast float %8859, %8848
  %8861 = fmul fast float %8858, %8855
  %8862 = fmul fast float %8861, %8857
  %8863 = fsub fast float %8860, %8862
  %8864 = fmul fast float %8848, %8848
  %8865 = fsub fast float %8851, %8864
  %8866 = fmul fast float %8857, %8857
  %8867 = fmul fast float %8866, %8855
  %8868 = fsub fast float %8865, %8867
  %8869 = fdiv fast float %8863, %8868
  %8870 = fmul fast float %8857, %8869
  %8871 = fsub fast float %8858, %8870
  %8872 = fmul fast float %8871, %8855
  %8873 = fmul fast float %8872, %8847
  %8874 = fsub fast float 1.000000e+00, %8873
  %8875 = fmul fast float %8848, %8869
  %8876 = fsub fast float %8874, %8875
  %8877 = fmul fast float %8872, %8872
  %8878 = fmul fast float %8869, 4.000000e+00
  %8879 = fmul fast float %8878, %8876
  %8880 = fsub fast float %8877, %8879
  %8881 = call float @dx.op.unary.f32(i32 24, float %8880)  ; Sqrt(value)
  %8882 = fcmp fast oge float %8872, 0.000000e+00
  %8883 = fsub fast float -0.000000e+00, %8881
  %8884 = select i1 %8882, float %8883, float %8881
  %8885 = fsub fast float %8884, %8872
  %8886 = fdiv fast float %8885, %8869
  %8887 = fdiv fast float %8876, %8885
  %8888 = fmul fast float %8886, 5.000000e-01
  %8889 = fmul fast float %8887, 2.000000e+00
  %8890 = select i1 %8882, float %8888, float %8889
  %8891 = select i1 %8882, float %8889, float %8888
  %8892 = call float @dx.op.binary.f32(i32 35, float %8890, float %8891)  ; FMax(a,b)
  %8893 = call float @dx.op.binary.f32(i32 36, float %8890, float %8891)  ; FMin(a,b)
  %8894 = fcmp fast ogt float %8807, %8893
  br i1 %8894, label %8895, label %8905

; <label>:8895                                    ; preds = %8832
  %8896 = fsub fast float %8807, %8893
  %8897 = fsub fast float %8892, %8893
  %8898 = fmul fast float %8896, %8897
  %8899 = fmul fast float %8892, %8807
  %8900 = fadd fast float %8892, %8807
  %8901 = fmul fast float %8900, %8847
  %8902 = fadd fast float %8899, %8848
  %8903 = fsub fast float %8902, %8901
  %8904 = fdiv fast float %8903, %8898
  br label %8905

; <label>:8905                                    ; preds = %8895, %8832
  %8906 = phi float [ %8904, %8895 ], [ 0.000000e+00, %8832 ]
  %8907 = fcmp fast ogt float %8807, %8892
  %8908 = fsub fast float %8807, %8892
  br i1 %8907, label %8909, label %8919

; <label>:8909                                    ; preds = %8905
  %8910 = fsub fast float %8892, %8893
  %8911 = fmul fast float %8910, %8908
  %8912 = fmul fast float %8893, %8807
  %8913 = fadd fast float %8893, %8807
  %8914 = fmul fast float %8913, %8847
  %8915 = fsub fast float %8849, %8912
  %8916 = fadd fast float %8915, %8914
  %8917 = fdiv fast float %8916, %8911
  %8918 = fadd fast float %8917, %8906
  br label %8919

; <label>:8919                                    ; preds = %8909, %8905
  %8920 = phi float [ %8918, %8909 ], [ %8906, %8905 ]
  %8921 = fsub fast float %8807, %8893
  %8922 = fmul fast float %8921, %8908
  %8923 = fmul fast float %8893, %8892
  %8924 = fadd fast float %8893, %8892
  %8925 = fmul fast float %8924, %8847
  %8926 = fadd fast float %8923, %8848
  %8927 = fsub fast float %8926, %8925
  %8928 = fdiv fast float %8927, %8922
  %8929 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8930 = fcmp fast oeq float %7598, 0.000000e+00
  %8931 = extractvalue %dx.types.CBufRet.f32 %8715, 0
  %8932 = fcmp fast oeq float %8931, 0.000000e+00
  %8933 = or i1 %8930, %8932
  %8934 = fmul fast float %8931, 2.000000e+00
  %8935 = fadd fast float %8716, %8717
  %8936 = fdiv fast float %8935, %8934
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fmul fast float %8937, 2.000000e+00
  %8939 = fsub fast float 3.000000e+00, %8938
  %8940 = fmul fast float %8937, %8937
  %8941 = fmul fast float %8940, %8939
  %8942 = select i1 %8933, float 1.000000e+00, float %8941
  %8943 = fmul fast float %8928, %7598
  %8944 = fadd fast float %8929, %8943
  %8945 = call float @dx.op.unary.f32(i32 7, float %8944)  ; Saturate(value)
  %8946 = fmul fast float %8942, %8945
  br label %8947

; <label>:8947                                    ; preds = %8919, %8799
  %8948 = phi float [ %8946, %8919 ], [ 0.000000e+00, %8799 ]
  %8949 = fsub fast float 1.000000e+00, %8948
  %8950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %48, float %8669, float %8670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8951 = extractvalue %dx.types.ResRet.f32 %8950, 0
  %8952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.i32 %8952, 2
  %8954 = icmp eq i32 %8953, 0
  br i1 %8954, label %8960, label %8955

; <label>:8955                                    ; preds = %8947
  %8956 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8957 = fadd fast float %8951, -1.000000e+00
  %8958 = fmul fast float %8956, %8957
  %8959 = fadd fast float %8958, 1.000000e+00
  br label %8960

; <label>:8960                                    ; preds = %8955, %8947
  %8961 = phi float [ %8959, %8955 ], [ %8949, %8947 ]
  br i1 %8723, label %8962, label %8980

; <label>:8962                                    ; preds = %8960
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 1
  %8965 = fsub fast float %8800, %8964
  %8966 = call float @dx.op.unary.f32(i32 7, float %8965)  ; Saturate(value)
  %8967 = fsub fast float %8800, %8722
  %8968 = call float @dx.op.unary.f32(i32 7, float %8967)  ; Saturate(value)
  %8969 = fsub fast float %8966, %8968
  %8970 = fsub fast float %8802, %8968
  %8971 = fdiv fast float %8970, %8969
  %8972 = call float @dx.op.unary.f32(i32 7, float %8971)  ; Saturate(value)
  %8973 = fmul fast float %8972, 2.000000e+00
  %8974 = fsub fast float 3.000000e+00, %8973
  %8975 = fsub fast float %8951, %8961
  %8976 = fmul fast float %8972, %8972
  %8977 = fmul fast float %8976, %8975
  %8978 = fmul fast float %8977, %8974
  %8979 = fadd fast float %8978, %8961
  br label %8980

; <label>:8980                                    ; preds = %8962, %8960
  %8981 = phi float [ %8979, %8962 ], [ %8961, %8960 ]
  %8982 = call float @dx.op.binary.f32(i32 35, float %8951, float %8981)  ; FMax(a,b)
  %8983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8984 = extractvalue %dx.types.CBufRet.i32 %8983, 2
  %8985 = and i32 %8984, 1
  %8986 = icmp eq i32 %8985, 0
  %8987 = fcmp fast une float %8982, 1.000000e+00
  %8988 = and i1 %8987, %8986
  br i1 %8988, label %8989, label %9008

; <label>:8989                                    ; preds = %8980
  %8990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %48, float %8669, float %8670, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8991 = extractvalue %dx.types.ResRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.ResRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.ResRet.f32 %8990, 2
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8996 = fmul fast float %8995, %8991
  %8997 = fmul fast float %8995, %8992
  %8998 = fmul fast float %8995, %8993
  %8999 = fcmp fast ogt float %8951, 0x3FEFFF2E40000000
  %9000 = fsub fast float 1.000000e+00, %8982
  %9001 = fsub fast float 1.000000e+00, %8951
  %9002 = fdiv fast float %9000, %9001
  %9003 = call float @dx.op.unary.f32(i32 7, float %9002)  ; Saturate(value)
  %9004 = select i1 %8999, float 0.000000e+00, float %9003
  %9005 = fmul fast float %8996, %9004
  %9006 = fmul fast float %8997, %9004
  %9007 = fmul fast float %8998, %9004
  br label %9008

; <label>:9008                                    ; preds = %8989, %8980
  %9009 = phi float [ 0.000000e+00, %8980 ], [ %9005, %8989 ]
  %9010 = phi float [ 0.000000e+00, %8980 ], [ %9006, %8989 ]
  %9011 = phi float [ 0.000000e+00, %8980 ], [ %9007, %8989 ]
  %9012 = fmul fast float %9009, %7586
  %9013 = fmul fast float %9010, %7586
  %9014 = fmul fast float %9011, %7586
  %9015 = fmul fast float %8982, %8644
  %9016 = call float @dx.op.dot3.f32(i32 55, float %8982, float %8982, float %8982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9017 = call float @dx.op.dot3.f32(i32 55, float %9012, float %9013, float %9014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9018 = select i1 %223, float %9016, float %8982
  %9019 = select i1 %223, float 1.000000e+00, float %8982
  %9020 = select i1 %223, float %9017, float %9012
  %9021 = select i1 %223, float 0.000000e+00, float %9013
  %9022 = select i1 %223, float 0.000000e+00, float %9014
  %9023 = fmul fast float %9018, %8656
  %9024 = fmul fast float %9018, %8657
  %9025 = fmul fast float %9019, %8658
  %9026 = fadd fast float %9023, %9020
  %9027 = fadd fast float %9024, %9021
  %9028 = fadd fast float %9022, %9025
  %9029 = fmul fast float %9018, %8659
  %9030 = fmul fast float %9018, %8660
  %9031 = fmul fast float %9019, %8661
  br label %9032

; <label>:9032                                    ; preds = %9008, %8665, %8634, %7866
  %9033 = phi float [ %7871, %7866 ], [ %8656, %8634 ], [ %9026, %9008 ], [ %8656, %8665 ]
  %9034 = phi float [ %7872, %7866 ], [ %8657, %8634 ], [ %9027, %9008 ], [ %8657, %8665 ]
  %9035 = phi float [ %7873, %7866 ], [ %8658, %8634 ], [ %9028, %9008 ], [ %8658, %8665 ]
  %9036 = phi float [ %7874, %7866 ], [ %8659, %8634 ], [ %9029, %9008 ], [ %8659, %8665 ]
  %9037 = phi float [ %7875, %7866 ], [ %8660, %8634 ], [ %9030, %9008 ], [ %8660, %8665 ]
  %9038 = phi float [ %7876, %7866 ], [ %8661, %8634 ], [ %9031, %9008 ], [ %8661, %8665 ]
  %9039 = phi float [ %7877, %7866 ], [ %8644, %8634 ], [ %9015, %9008 ], [ %8644, %8665 ]
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %51, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 3
  %9043 = fmul fast float %9041, %102
  %9044 = fmul fast float %9042, %103
  %9045 = call float @dx.op.unary.f32(i32 7, float %9043)  ; Saturate(value)
  %9046 = call float @dx.op.unary.f32(i32 7, float %9044)  ; Saturate(value)
  %9047 = select i1 %7608, i32 2, i32 0
  %9048 = or i32 %9047, 1
  %9049 = uitofp i32 %9048 to float
  %9050 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9045, float %9046, float %9049, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9051 = extractvalue %dx.types.ResRet.f32 %9050, 0
  %9052 = extractvalue %dx.types.ResRet.f32 %9050, 1
  %9053 = extractvalue %dx.types.ResRet.f32 %9050, 2
  %9054 = extractvalue %dx.types.ResRet.f32 %9050, 3
  %9055 = add nuw nsw i32 %9047, 2
  %9056 = uitofp i32 %9055 to float
  %9057 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %48, float %9045, float %9046, float %9056, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9058 = extractvalue %dx.types.ResRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.ResRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.ResRet.f32 %9057, 2
  %9061 = extractvalue %dx.types.ResRet.f32 %9057, 3
  %9062 = call float @dx.op.binary.f32(i32 35, float %9052, float %9053)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float %9051, float %9062)  ; FMax(a,b)
  %9064 = call float @dx.op.binary.f32(i32 35, float %9063, float %9054)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 36, float %9059, float %9060)  ; FMin(a,b)
  %9066 = call float @dx.op.binary.f32(i32 36, float %9058, float %9065)  ; FMin(a,b)
  %9067 = call float @dx.op.binary.f32(i32 36, float %9066, float %9061)  ; FMin(a,b)
  %9068 = fmul fast float %9064, 2.550000e+02
  %9069 = fadd fast float %9068, 0x3F70101020000000
  %9070 = fptoui float %9069 to i32
  %9071 = fmul fast float %9067, 2.550000e+02
  %9072 = fadd fast float %9071, 0x3F70101020000000
  %9073 = fptoui float %9072 to i32
  %9074 = icmp ult i32 %9070, %9073
  br i1 %9074, label %9075, label %9244

; <label>:9075                                    ; preds = %9032
  %9076 = fcmp fast ogt float %92, 9.843750e-01
  %9077 = fadd fast float %7870, -4.000000e+00
  %9078 = select i1 %9076, float -4.000000e+00, float %9077
  %9079 = call float @dx.op.binary.f32(i32 35, float %9078, float 0.000000e+00)  ; FMax(a,b)
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = fadd fast float %9081, %9079
  %9083 = extractvalue %dx.types.CBufRet.f32 %9080, 2
  %9084 = fmul fast float %9082, %9083
  %9085 = call float @dx.op.unary.f32(i32 23, float %9084)  ; Log(value)
  %9086 = extractvalue %dx.types.CBufRet.f32 %9080, 3
  %9087 = fmul fast float %9086, %9085
  %9088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9088, 2
  %9090 = fmul fast float %9087, %9089
  %9091 = call float @dx.op.unary.f32(i32 7, float %9090)  ; Saturate(value)
  %9092 = uitofp i32 %9070 to float
  %9093 = uitofp i32 %9073 to float
  %9094 = fadd fast float %9092, 5.000000e-01
  %9095 = fadd fast float %9093, 5.000000e-01
  %9096 = fmul fast float %9089, %9094
  %9097 = fmul fast float %9089, %9095
  %9098 = fadd fast float %9096, 0x3F0FFB4800000000
  %9099 = fadd fast float %9097, 0xBF0FFB4800000000
  %9100 = call float @dx.op.binary.f32(i32 35, float %9091, float %9098)  ; FMax(a,b)
  %9101 = call float @dx.op.binary.f32(i32 36, float %9100, float %9099)  ; FMin(a,b)
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 1
  %9104 = extractvalue %dx.types.CBufRet.f32 %9102, 2
  %9105 = extractvalue %dx.types.CBufRet.f32 %9102, 0
  %9106 = select i1 %7608, float %9105, float 0.000000e+00
  %9107 = fmul fast float %9103, %9101
  %9108 = fadd fast float %9106, %9107
  %9109 = fadd fast float %9106, %9104
  %9110 = fsub fast float %9103, %9104
  %9111 = fadd fast float %9110, %9106
  %9112 = call float @dx.op.binary.f32(i32 35, float %9108, float %9109)  ; FMax(a,b)
  %9113 = call float @dx.op.binary.f32(i32 36, float %9112, float %9111)  ; FMin(a,b)
  %9114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %46, float %9045, float %9046, float %9113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9115 = extractvalue %dx.types.ResRet.f32 %9114, 0
  %9116 = extractvalue %dx.types.ResRet.f32 %9114, 1
  %9117 = extractvalue %dx.types.ResRet.f32 %9114, 2
  %9118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.i32 %9118, 0
  %9120 = extractvalue %dx.types.CBufRet.i32 %9118, 1
  %9121 = uitofp i32 %9119 to float
  %9122 = uitofp i32 %9120 to float
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 0
  %9125 = extractvalue %dx.types.CBufRet.f32 %9123, 1
  %9126 = fmul fast float %9121, %9045
  %9127 = fmul fast float %9122, %9046
  %9128 = fadd fast float %9126, -5.000000e-01
  %9129 = fadd fast float %9127, -5.000000e-01
  %9130 = call float @dx.op.unary.f32(i32 22, float %9128)  ; Frc(value)
  %9131 = call float @dx.op.unary.f32(i32 22, float %9129)  ; Frc(value)
  %9132 = fmul fast float %9130, %9130
  %9133 = fmul fast float %9132, %9130
  %9134 = fsub fast float 3.000000e+00, %9130
  %9135 = fmul fast float %9132, %9134
  %9136 = fmul fast float %9130, 3.000000e+00
  %9137 = fmul fast float %9133, 3.000000e+00
  %9138 = fmul fast float %9132, 6.000000e+00
  %9139 = fsub fast float %9137, %9138
  %9140 = fadd fast float %9139, 4.000000e+00
  %9141 = fmul fast float %9140, 0x3FC5555560000000
  %9142 = fmul fast float %9133, -3.000000e+00
  %9143 = fadd fast float %9132, %9130
  %9144 = fmul fast float %9143, 3.000000e+00
  %9145 = fadd fast float %9142, 1.000000e+00
  %9146 = fadd fast float %9145, %9144
  %9147 = fmul fast float %9133, 0x3FC5555560000000
  %9148 = fmul fast float %9131, %9131
  %9149 = fmul fast float %9148, %9131
  %9150 = fsub fast float 3.000000e+00, %9131
  %9151 = fmul fast float %9148, %9150
  %9152 = fmul fast float %9131, 3.000000e+00
  %9153 = fmul fast float %9149, 3.000000e+00
  %9154 = fmul fast float %9148, 6.000000e+00
  %9155 = fsub fast float %9153, %9154
  %9156 = fadd fast float %9155, 4.000000e+00
  %9157 = fmul fast float %9156, 0x3FC5555560000000
  %9158 = fmul fast float %9149, -3.000000e+00
  %9159 = fadd fast float %9148, %9131
  %9160 = fmul fast float %9159, 3.000000e+00
  %9161 = fadd fast float %9158, 1.000000e+00
  %9162 = fadd fast float %9161, %9160
  %9163 = fmul fast float %9149, 0x3FC5555560000000
  %9164 = fadd fast float %9130, 1.000000e+00
  %9165 = fsub fast float 1.000000e+00, %9136
  %9166 = fadd fast float %9165, %9135
  %9167 = fadd fast float %9166, %9140
  %9168 = fmul fast float %9167, 0x3FC5555560000000
  %9169 = fdiv fast float %9141, %9168
  %9170 = fsub fast float %9164, %9169
  %9171 = fsub fast float 1.000000e+00, %9130
  %9172 = fadd fast float %9146, %9133
  %9173 = fmul fast float %9172, 0x3FC5555560000000
  %9174 = fdiv fast float %9147, %9173
  %9175 = fadd fast float %9171, %9174
  %9176 = fadd fast float %9131, 1.000000e+00
  %9177 = fsub fast float 1.000000e+00, %9152
  %9178 = fadd fast float %9177, %9151
  %9179 = fadd fast float %9178, %9156
  %9180 = fmul fast float %9179, 0x3FC5555560000000
  %9181 = fdiv fast float %9157, %9180
  %9182 = fsub fast float %9176, %9181
  %9183 = fsub fast float 1.000000e+00, %9131
  %9184 = fadd fast float %9162, %9149
  %9185 = fmul fast float %9184, 0x3FC5555560000000
  %9186 = fdiv fast float %9163, %9185
  %9187 = fadd fast float %9186, %9183
  %9188 = fmul fast float %9170, %9124
  %9189 = fsub fast float %9045, %9188
  %9190 = fmul fast float %9175, %9124
  %9191 = fadd fast float %9190, %9045
  %9192 = fmul fast float %9187, %9125
  %9193 = fadd fast float %9192, %9046
  %9194 = fmul fast float %9182, %9125
  %9195 = fsub fast float %9046, %9194
  %9196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9189, float %9195, float %9113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9197 = extractvalue %dx.types.ResRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.ResRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.ResRet.f32 %9196, 2
  %9200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9191, float %9195, float %9113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9201 = extractvalue %dx.types.ResRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.ResRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.ResRet.f32 %9200, 2
  %9204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9189, float %9193, float %9113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9205 = extractvalue %dx.types.ResRet.f32 %9204, 0
  %9206 = extractvalue %dx.types.ResRet.f32 %9204, 1
  %9207 = extractvalue %dx.types.ResRet.f32 %9204, 2
  %9208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %46, float %9191, float %9193, float %9113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9209 = extractvalue %dx.types.ResRet.f32 %9208, 0
  %9210 = extractvalue %dx.types.ResRet.f32 %9208, 1
  %9211 = extractvalue %dx.types.ResRet.f32 %9208, 2
  %9212 = fsub fast float %9205, %9197
  %9213 = fsub fast float %9206, %9198
  %9214 = fsub fast float %9207, %9199
  %9215 = fmul fast float %9212, %9185
  %9216 = fmul fast float %9213, %9185
  %9217 = fmul fast float %9214, %9185
  %9218 = fadd fast float %9215, %9197
  %9219 = fadd fast float %9216, %9198
  %9220 = fadd fast float %9217, %9199
  %9221 = fsub fast float %9209, %9201
  %9222 = fsub fast float %9210, %9202
  %9223 = fsub fast float %9211, %9203
  %9224 = fmul fast float %9221, %9185
  %9225 = fmul fast float %9222, %9185
  %9226 = fmul fast float %9223, %9185
  %9227 = fsub fast float %9201, %9218
  %9228 = fadd fast float %9227, %9224
  %9229 = fsub fast float %9202, %9219
  %9230 = fadd fast float %9229, %9225
  %9231 = fsub fast float %9203, %9220
  %9232 = fadd fast float %9231, %9226
  %9233 = fmul fast float %9228, %9173
  %9234 = fmul fast float %9230, %9173
  %9235 = fmul fast float %9232, %9173
  %9236 = fadd fast float %9233, %9218
  %9237 = fadd fast float %9234, %9219
  %9238 = fadd fast float %9235, %9220
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9241 = fmul fast float %9236, %9240
  %9242 = fmul fast float %9237, %9240
  %9243 = fmul fast float %9238, %9240
  br label %9244

; <label>:9244                                    ; preds = %9075, %9032
  %9245 = phi float [ %9115, %9075 ], [ 1.000000e+00, %9032 ]
  %9246 = phi float [ %9116, %9075 ], [ 1.000000e+00, %9032 ]
  %9247 = phi float [ %9117, %9075 ], [ 1.000000e+00, %9032 ]
  %9248 = phi float [ %9241, %9075 ], [ 0.000000e+00, %9032 ]
  %9249 = phi float [ %9242, %9075 ], [ 0.000000e+00, %9032 ]
  %9250 = phi float [ %9243, %9075 ], [ 0.000000e+00, %9032 ]
  %9251 = fmul fast float %9248, %7586
  %9252 = fmul fast float %9249, %7586
  %9253 = fmul fast float %9250, %7586
  %9254 = fmul fast float %9245, %9039
  %9255 = call float @dx.op.dot3.f32(i32 55, float %9245, float %9246, float %9247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9256 = call float @dx.op.dot3.f32(i32 55, float %9251, float %9252, float %9253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9257 = select i1 %223, float %9255, float %9245
  %9258 = select i1 %223, float %9255, float %9246
  %9259 = select i1 %223, float 1.000000e+00, float %9247
  %9260 = select i1 %223, float %9256, float %9251
  %9261 = select i1 %223, float 0.000000e+00, float %9252
  %9262 = select i1 %223, float 0.000000e+00, float %9253
  %9263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %52, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.i32 %9263, 3
  %9265 = and i32 %9264, 3
  %9266 = icmp ne i32 %9265, 0
  %9267 = and i32 %9264, 4
  %9268 = icmp ne i32 %9267, 0
  %9269 = and i1 %9266, %9268
  %9270 = and i1 %223, %9269
  br i1 %9270, label %9271, label %9277

; <label>:9271                                    ; preds = %9244
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 1
  %9274 = fadd fast float %9254, -1.000000e+00
  %9275 = fmul fast float %9273, %9274
  %9276 = fadd fast float %9275, 1.000000e+00
  br label %9277

; <label>:9277                                    ; preds = %9271, %9244
  %9278 = phi float [ %9276, %9271 ], [ %9254, %9244 ]
  %9279 = fadd fast float %9036, %9033
  %9280 = fmul fast float %9257, %9279
  %9281 = fadd fast float %9280, %9260
  %9282 = fadd fast float %9037, %9034
  %9283 = fmul fast float %9258, %9282
  %9284 = fadd fast float %9283, %9261
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  br i1 %223, label %9287, label %9311

; <label>:9287                                    ; preds = %9277
  %9288 = fadd fast float %9281, %9284
  %9289 = fmul fast float %9286, %9288
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 3
  %9292 = extractvalue %dx.types.CBufRet.f32 %7590, 1
  %9293 = fsub fast float %7595, %7589
  %9294 = fadd fast float %9293, %7596
  %9295 = fsub fast float %9294, %9292
  %9296 = extractvalue %dx.types.CBufRet.f32 %7590, 2
  %9297 = fmul fast float %9295, %9296
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fsub fast float %9298, %9291
  %9300 = fmul fast float %9299, %9278
  %9301 = fadd fast float %9300, %9291
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 0
  %9304 = fsub fast float %9301, %9303
  %9305 = fmul fast float %9304, 1.000000e+01
  %9306 = call float @dx.op.unary.f32(i32 7, float %9305)  ; Saturate(value)
  %9307 = fsub fast float %4847, %7586
  %9308 = fmul fast float %9306, %9307
  %9309 = fadd fast float %9308, %7586
  %9310 = fmul fast float %9309, %9301
  br label %9335

; <label>:9311                                    ; preds = %9277
  %9312 = fadd fast float %9038, %9035
  %9313 = fmul fast float %9259, %9312
  %9314 = fadd fast float %9313, %9262
  %9315 = fmul fast float %9286, %9281
  %9316 = fmul fast float %9286, %9284
  %9317 = fmul fast float %9286, %9314
  %9318 = call float @dx.op.binary.f32(i32 35, float %9316, float %9317)  ; FMax(a,b)
  %9319 = call float @dx.op.binary.f32(i32 35, float %9315, float %9318)  ; FMax(a,b)
  %9320 = call float @dx.op.binary.f32(i32 35, float %9319, float %7586)  ; FMax(a,b)
  %9321 = fcmp fast ugt float %9320, 0x3F10000000000000
  br i1 %9321, label %9323, label %9322

; <label>:9322                                    ; preds = %9311
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9323

; <label>:9323                                    ; preds = %9322, %9311
  %9324 = add i32 %56, 356
  %9325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %9324, i32 undef)  ; BufferLoad(srv,index,wot)
  %9326 = extractvalue %dx.types.ResRet.i32 %9325, 0
  %9327 = and i32 %9326, 32
  %9328 = icmp eq i32 %9327, 0
  br i1 %9328, label %9335, label %9329

; <label>:9329                                    ; preds = %9323
  %9330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %52, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9330, 0
  %9332 = fmul fast float %9331, 0x3FE99999A0000000
  %9333 = fadd fast float %9331, %9315
  %9334 = fadd fast float %9332, %9317
  br label %9335

; <label>:9335                                    ; preds = %9329, %9323, %9287
  %9336 = phi float [ %9289, %9287 ], [ %9333, %9329 ], [ %9315, %9323 ]
  %9337 = phi float [ %9310, %9287 ], [ %9316, %9329 ], [ %9316, %9323 ]
  %9338 = phi float [ %9309, %9287 ], [ %9334, %9329 ], [ %9317, %9323 ]
  %9339 = phi float [ %9309, %9287 ], [ %7586, %9329 ], [ %7586, %9323 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9340 = call float @dx.op.binary.f32(i32 36, float %9336, float 3.225500e+04)  ; FMin(a,b)
  %9341 = call float @dx.op.binary.f32(i32 36, float %9337, float 3.225500e+04)  ; FMin(a,b)
  %9342 = call float @dx.op.binary.f32(i32 36, float %9338, float 3.225500e+04)  ; FMin(a,b)
  %9343 = call float @dx.op.binary.f32(i32 36, float %9339, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9342)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!68}
!dx.entryPoints = !{!69}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !57, !60}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !42}
!42 = !{i32 0, i32 14}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!51 = !{i32 42, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !42}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!57 = !{!58, !59}
!58 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!59 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!62 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!63 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!64 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!65 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!66 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!67 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!68 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!69 = !{void ()* @ps_main, !"ps_main", !70, !4, !93}
!70 = !{!71, !91, null}
!71 = !{!72, !75, !76, !78, !80, !81, !82, !83, !84, !85, !86, !88, !90}
!72 = !{i32 0, !"SV_Position", i8 9, i8 3, !73, i8 4, i32 1, i8 4, i32 0, i8 0, !74}
!73 = !{i32 0}
!74 = !{i32 3, i32 15}
!75 = !{i32 1, !"COLOR", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 1, i8 0, !74}
!76 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 2, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 3, !"NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 3, i32 3, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 4, !"TANGENT", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!81 = !{i32 5, !"SH_RED", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 5, i8 0, !74}
!82 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!83 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 7, i8 0, !74}
!84 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !73, i8 2, i32 1, i8 2, i32 8, i8 0, !77}
!85 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 9, i8 0, !74}
!86 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !73, i8 1, i32 1, i8 4, i32 10, i8 0, !87}
!87 = !{i32 3, i32 13}
!88 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !73, i8 1, i32 1, i8 1, i32 11, i8 0, !89}
!89 = !{i32 3, i32 1}
!90 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !73, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!91 = !{!92}
!92 = !{i32 0, !"SV_Target", i8 9, i8 16, !73, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!93 = !{i32 0, i64 16}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !101, i64 0}
!125 = !{!126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!126 = distinct !{!126, !127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!127 = distinct !{!127, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!128 = distinct !{!128, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!129 = distinct !{!129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!130 = distinct !{!130, !129, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!140 = distinct !{!140, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"\01?sort@@YAXAIAM00@Z: %c"}
!143 = distinct !{!143, !"\01?sort@@YAXAIAM00@Z"}
!144 = !{!145, !146, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!145 = distinct !{!145, !143, !"\01?sort@@YAXAIAM00@Z: %a"}
!146 = distinct !{!146, !143, !"\01?sort@@YAXAIAM00@Z: %b"}
!147 = !{!146}
!148 = !{!145, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!149 = !{!145}
!150 = !{!146, !142, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!151 = !{!152}
!152 = distinct !{!152, !153, !"\01?sort@@YAXAIAM00@Z: %c"}
!153 = distinct !{!153, !"\01?sort@@YAXAIAM00@Z"}
!154 = !{!155, !156, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!155 = distinct !{!155, !153, !"\01?sort@@YAXAIAM00@Z: %a"}
!156 = distinct !{!156, !153, !"\01?sort@@YAXAIAM00@Z: %b"}
!157 = !{!156}
!158 = !{!155, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!159 = !{!155}
!160 = !{!156, !152, !126, !128, !130, !131, !133, !134, !135, !137, !138, !139}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 2}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}

